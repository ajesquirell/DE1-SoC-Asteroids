///////////////////////////////////////
/// Austin Esquirell
/// ENGC401 Final Project Spring 2019 
///
/// 640x480 (This code will segfault the original)
/// DE1-SoC computer
///
/// compile with
/// gcc asteroids.c -o asteroids -O3 -lm
///////////////////////////////////////
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/types.h>
#include <sys/ipc.h> 
#include <sys/shm.h> 
#include <sys/mman.h>
#include <sys/time.h> 
#include <math.h>
#include <stdbool.h>
#include "vector.h"
#include "address_map_arm_br14.h"

// graphics primitives prototype functions used in this game
void VGA_text (int, int, char *);
void VGA_text_clear();
void VGA_box (int, int, int, int, short);
void VGA_line(int, int, int, int, short) ;
void VGA_disc (int, int, int, short);
void Draw(int, int, short);
void DrawWireFrameModel(vector, float, float, float, float, short);

//Other screen and graphics engine-y prototypes
void get_screen_specs(volatile int *);
void get_char_res(volatile int*);
int vsync(void);
void WrapCoordinates(int, int, int*, int*); //Create toroidal coordinate system for game space
bool IsPointInsideCircle(float, float, float, float, float);


// 8-bit primary colors
#define red 0xe0
#define dark_red 0x60
#define green 0x1c
#define dark_green 0x0c
#define blue 0x03
#define dark_blue 0x01
#define yellow 0xfc
#define cyan 0x1f
#define magenta 0xe3
#define black 0x00
#define gray (0x60 | 0x0c | 0x01)
#define white 0xff
short colors[] = {red, green, blue, yellow, cyan, magenta, gray, white};

// the light weight buss base
void *h2p_lw_virtual_base;

// pixel buffer
volatile unsigned int * vga_pixel_ptr = NULL ;
void *vga_pixel_virtual_base;
int screen_x, screen_y;
int color_bytes; //number of bytes of color: 1 (greyscale, 8-bit color), 2 (9-bit and 16-bit color), 3 (24-bit color) or 4 (30-bit and 32-bit color) 
int addressing_mode; //Addressing mode: 0 (X,Y), or 1 (consecutive) 
volatile unsigned int * pixel_ctrl_ptr; // virtual address of pixel buffer controller

// character buffer
volatile unsigned int * vga_char_ptr = NULL ;
void *vga_char_virtual_base;
int char_res_x, char_res_y; //For char resolutions
volatile unsigned int * char_ctrl_ptr; // virtual address of VGA character buffer controller

//Key
volatile int *KEY_ptr;     // virtual address for the KEY port

//RNG - ACCESS ALTERA RANDOM NUMBER GENERATOR VALUES THROUGH MEMORY MAPPED FIFO
volatile int *RNG_ptr;

// /dev/mem file id
int fd;

// measure time
struct timeval t1, t2;
double elapsedTime = 5;


////////////////////////////////////////////////////////////////////////////
/*				Main Function											*/
////////////////////////////////////////////////////////////////////////////
int main(void)
{
	// Declare volatile pointers to I/O registers (volatile 	// means that IO load and store instructions will be used 	// to access these pointer locations, 
	// instead of regular memory loads and stores) 

	// === need to mmap: =======================
	// FPGA_CHAR_BASE
	// FPGA_ONCHIP_BASE      
	// HW_REGS_BASE        
  
	// === get FPGA addresses ==================
    // Open /dev/mem
	if( ( fd = open( "/dev/mem", ( O_RDWR | O_SYNC ) ) ) == -1 ) 	{
		printf( "ERROR: could not open \"/dev/mem\"...\n" );
		return( 1 );
	}
    
    // get virtual addr that maps to physical
	h2p_lw_virtual_base = mmap( NULL, HW_REGS_SPAN, ( PROT_READ | PROT_WRITE ), MAP_SHARED, fd, HW_REGS_BASE );	
	if( h2p_lw_virtual_base == MAP_FAILED ) {
		printf( "ERROR: mmap1() failed...\n" );
		close( fd );
		return(1);
	}
    

	// === get VGA char addr =====================
	// get virtual addr that maps to physical
	vga_char_virtual_base = mmap( NULL, FPGA_CHAR_SPAN, ( 	PROT_READ | PROT_WRITE ), MAP_SHARED, fd, FPGA_CHAR_BASE );	
	if( vga_char_virtual_base == MAP_FAILED ) {
		printf( "ERROR: mmap2() failed...\n" );
		close( fd );
		return(1);
	}
    
    // Get the address that maps to the FPGA character buffer 
	vga_char_ptr =(unsigned int *)(vga_char_virtual_base);

	// Create virtual memory access to the character buffer controller
	char_ctrl_ptr = (unsigned int *) (h2p_lw_virtual_base + CHAR_BUF_CTRL_BASE);
	get_char_res(char_ctrl_ptr); //Get x and y resolution, 

	// === get VGA pixel addr ====================
	// get virtual addr that maps to physical
	vga_pixel_virtual_base = mmap( NULL, FPGA_ONCHIP_SPAN, ( 	PROT_READ | PROT_WRITE ), MAP_SHARED, fd, 			FPGA_ONCHIP_BASE);	
	if( vga_pixel_virtual_base == MAP_FAILED ) {
		printf( "ERROR: mmap3() failed...\n" );
		close( fd );
		return(1);
	}
    
    // Get the address that maps to the FPGA pixel buffer
	vga_pixel_ptr =(unsigned int *)(vga_pixel_virtual_base);
	
	// Create virtual memory access to the pixel buffer controller
	pixel_ctrl_ptr = (unsigned int *) (h2p_lw_virtual_base + PIXEL_BUF_CTRL_BASE);
	get_screen_specs (pixel_ctrl_ptr); // determine X, Y screen size + other screen info


	KEY_ptr = h2p_lw_virtual_base + KEY_BASE;    // init virtual address for KEY port

	RNG_ptr = h2p_lw_virtual_base + RNG_FIFO_BASE;

////////////////////////////////////////////////////////////////////////////
/*				Game Logic											*/
////////////////////////////////////////////////////////////////////////////

	//See resolutions and other screen info in console
	printf("%d,%d\nColor Bytes: %d\nAddressing Mode(0-XY,1-Consecutive):%d\n", screen_x, screen_y, color_bytes, addressing_mode);
	printf("Character Resolution: %d,%d\n", char_res_x, char_res_y);

///////////////////////////////////
//=== Static Game Setup ==========
///////////////////////////////////
			struct sSpaceObject
			{
				int x;
				int y;
				float dx;
				float dy;
				int nSize;
				float angle;
			};

		// Vector to hold Asteroids (coordinates)
		vector vecAsteroids;
		vector_init(&vecAsteroids);

		// Vector to hold Bullets
		vector vecBullets;
		vector_init(&vecBullets);

		struct sSpaceObject player = {screen_x/2, screen_y/2, 0.0f, 0.0f, 0.0f, 0.0f};
		int nScore = 0;
		int prevScore = 0;
		int highScore = 0;
		bool bDead = false;

		vector vecModelShip;
		vector vecModelAsteroid;
		
		//Define Ship Model
		vector_init(&vecModelShip);
		float vert1[2] = {0.0f, -5.0f};
		float vert2[2] = {-2.5f, 2.5f};
		float vert3[2] = {2.5f,  2.5f};
		vector_add(&vecModelShip, vert1);
		vector_add(&vecModelShip, vert2);
		vector_add(&vecModelShip, vert3);  //Simple Isoceles Triangle{
	
	 	//Define Asteroid Model - Use random numbers to make jagged circle
		vector_init(&vecModelAsteroid);
		int verts = 20;
		int i;
		float thisVert[verts][2];
		for (i = 0; i < verts; i++) //Divide asteroid verticies as points around a circle (algorithmically define model with logic)
		{
			float radius = ((float)(*(RNG_ptr) & 0x1F) / 31.0f) * (1.2f - 0.8f) + (0.8f); //0.2 margin of radius error- look less circular
			//Divide up points around the circle - a=angle
			float a = ((float)i / (float)verts) * 6.28318f; //2*pi

			thisVert[i][0] = radius * sinf(a); //x
			thisVert[i][1] = radius * cosf(a); //y

			vector_add(&vecModelAsteroid, thisVert[i]); //Add vertex to astroid model
		}


		//Random numbers
		////////////////////////////////////////////////////////////////
		//===ALTERA RANDOM NUMBER GENERATOR + FIFO IP CORE USAGE======//
		////////////////////////////////////////////////////////////////

		//Scale down the random number to range [0,31] using "& 0x1F" - the one from IP Core is a bit large...
		//Then map [0,31] to range [-0.5,0.5]
		float scaledRand = ( (float)(*(RNG_ptr) & 0x1F) / (31.0f) ) * (0.5f - (-0.5f)) + (-0.5f);
		float scaledRand2 = ( (float)(*(RNG_ptr) & 0x1F) / (31.0f) ) * (0.5f - (-0.5f)) + (-0.5f);

		//Add Asteroids
		struct sSpaceObject a1 = { screen_x / 5, (4*screen_y) / 5, scaledRand, scaledRand2, (int)64, 0.0f };
		struct sSpaceObject a2 = { (3*screen_x / 4), screen_y / 4, scaledRand2, scaledRand, (int)64, 0.0f };
		vector_add(&vecAsteroids, &a1);
		vector_add(&vecAsteroids, &a2);



	/* create a message to be displayed on the VGA 
          and LCD displays */
	char text_top_row[40] = "Austin Esquirell\0";
	char text_bottom_row[40] = "Liberty University\0";
	char text_next[40] = "ENGC 401 Spring 2019\0";
	char text_test[40] = "X\0";
	char score_string[30], time_string[20], pscore_string[30], hscore_string[30];
	

	// clear the screen
	VGA_box (0, 0, 639, 479, 0x00);
	// clear the text
	VGA_text_clear();
	// write text
	VGA_text (10, 1, text_top_row);
	VGA_text (10, 2, text_bottom_row);
	VGA_text (10, 3, text_next);
	VGA_text (0, 0, text_test);
	VGA_text (0, 59, text_test);
	VGA_text (79, 59, text_test);
	VGA_text (79, 0, text_test);
	
	*(KEY_ptr + 3) = 0xF; //Clear edge capture register before game loop

///////////////////////////////////
//=== Game Loop ==================
///////////////////////////////////
	while(1) 
	{	
		if(bDead) //Reset Game
		{
			vector_free(&vecAsteroids);
			vector_free(&vecBullets);
			vector_init(&vecAsteroids);
			vector_init(&vecBullets);

			////////////////////////////////////////////////////////////////
			//===ALTERA RANDOM NUMBER GENERATOR + FIFO IP CORE USAGE======//
			////////////////////////////////////////////////////////////////

			//Scale down the random number to range [0,31] using "& 0x1F" - the one from IP Core is a bit large...
			//Then map [0,31] to range [-0.5,0.5]
			float scaledRand = ( (float)(*(RNG_ptr) & 0x1F) / 31.0f ) * (0.5f - (-0.5f)) + (-0.5f);
			float scaledRand2 = ( (float)(*(RNG_ptr) & 0x1F) / 31.0f ) * (0.5f - (-0.5f)) + (-0.5f);

			//Add Asteroids
			struct sSpaceObject a1 = { screen_x / 5, (4*screen_y) / 5, scaledRand, scaledRand2, (int)64, 0.0f };
			struct sSpaceObject a2 = { (3*screen_x / 4), screen_y / 4, scaledRand2, scaledRand, (int)64, 0.0f };
			vector_add(&vecAsteroids, &a1);
			vector_add(&vecAsteroids, &a2);


			//Initialize player position
			player.x = screen_x/2;
			player.y = screen_y/2;
			player.dx = 0.0f;
			player.dy = 0.0f;
			player.angle = 0.0f;

			//Update Scores
			prevScore = nScore;
			if (nScore > highScore)
				highScore = nScore;
			nScore = 0;

			sprintf(pscore_string, "LAST SCORE = %4u points", prevScore);
			sprintf(hscore_string, "HIGH SCORE = %4u points", highScore);
			VGA_text (45, 1, hscore_string);
			VGA_text (45, 2, pscore_string);

			bDead = false;
		}

		// clear the screen
		VGA_box (0, 0, 639, 479, 0x00);

		// start timer
    	gettimeofday(&t1, NULL);
		
		// Recognize key presses
		//Steer
		if ((*(KEY_ptr) & 0x04) == 0x04) //Key 2 -- Rotate Left
			player.angle -= 0.02f * elapsedTime;
		if ((*(KEY_ptr) & 0x01) == 0x01) //Key 0 --Rotate Right
			{player.angle += 0.02f * elapsedTime;
			}
	
		//Thrust
		if ((*(KEY_ptr) & 0x02) == 0x02) //Key 1 --Thrust forward
		{
			//ACCELERATION changes VELOCITY with respect to time
			player.dx += sin(player.angle) * 0.01f * elapsedTime;
			player.dy += -cos(player.angle) * 0.01f * elapsedTime;
		}
		//VELOCITY changes POSITION with respect to time
		player.x += player.dx * elapsedTime;
		player.y += player.dy * elapsedTime;
	
		//Keep ship in gamespace
		WrapCoordinates(player.x, player.y, &player.x, &player.y);
		
		//Check ship collision with asteroids
		for (i = 0; i < vector_count(&vecAsteroids); i++) //Cycle through all asteroids
			{
				struct sSpaceObject *a;			
				a = vector_get(&vecAsteroids, i);
				if (IsPointInsideCircle(a->x, a->y, a->nSize, player.x, player.y))
					bDead = true; //Uh-Oh
			}

		//Fire Bullet in direction player is facing (once per button pressed, implemented by edgecapture register)
		if ((*(KEY_ptr + 3) & 0x08) == 0x08) // Edgecapture register (falling edge)
		{
			//Use malloc, b/c when add to vector, we need to pass in a DIFFERENT address each for each object
			struct sSpaceObject *bullet = (struct sSpaceObject*) malloc(sizeof(struct sSpaceObject));	
			
			//Define bullet properties
			bullet->x = player.x;
			bullet->y = player.y;
			bullet->dx = 1.0f * sinf(player.angle);
			bullet->dy = 1.0f * -cosf(player.angle);
			bullet->nSize = 0; bullet->angle = 0;
			vector_add(&vecBullets, bullet);

			*(KEY_ptr + 3) = 0x08; //Clear edgecapture register
		}

		//Update and draw asteroids
		for (i = 0; i < vector_count(&vecAsteroids); i++) //Cycle through all asteroids
		{
			struct sSpaceObject *a;			
			a = vector_get(&vecAsteroids, i);

			a->x += a->dx * elapsedTime; //Using elapsed time between frames allows for consistent user experience
			a->y += a->dy * elapsedTime;		//No matter if system slows down/speeds up during gameplay - super important
			a->angle += 0.005f * elapsedTime; //Rotate
			WrapCoordinates(a->x, a->y, &a->x, &a->y);	

			DrawWireFrameModel(vecModelAsteroid, a->x, a->y, a->angle, a->nSize, colors[*(RNG_ptr) & 0x7]);
		}

		vector newAsteroids;
		vector_init(&newAsteroids);

		//Update and draw bullets/Remove offscreen bullets/Bullet collision detection
		for (i = 0; i < vector_count(&vecBullets); i++) //Cycle through all bullets
		{
			//Update bullets
			struct sSpaceObject *b;
			b = vector_get(&vecBullets, i);
			b->x += b->dx * elapsedTime; //Using elapsed time between frames allows for consistent user experience
			b->y += b->dy * elapsedTime;		//No matter if system slows down/speeds up during gameplay - super important
			

			//Check bullet collision with asteroids
			int j;
			int hitAsteroidCount;
			int hitAsteroidIndex;
			for (j = 0; j < vector_count(&vecAsteroids); j++) //Cycle through all asteroids
			{
				struct sSpaceObject *a;			
				a = vector_get(&vecAsteroids, j);

				if (IsPointInsideCircle(a->x, a->y, a->nSize, b->x, b->y))
				{
					//Asteroid Hit
					b->x = -100; //Force bullet offscreen, cleaned up later

					if (a->nSize > 16)
					{
						//Create 2 child asteroids
						int k;
						for (k = 0; k < 2; k++)
						{
							////////////////////////////////////////////////////////////////
							//===ALTERA RANDOM NUMBER GENERATOR + FIFO IP CORE USAGE======//
							////////////////////////////////////////////////////////////////

							//Scale down the random number to range [0,31] using "& 0x1F" - the one from IP Core is a bit large...
							//Then map [0,31] to range [-0.5,0.5]
							float scaledRand = ( (float)(*(RNG_ptr) & 0x1F - 0) / (31.0f - 0) ) * (0.5f - (-0.5f)) + (-0.5f);
							float scaledRand2 = ( (float)(*(RNG_ptr) & 0x1F - 0) / (31.0f - 0) ) * (0.5f - (-0.5f)) + (-0.5f);
							
							struct sSpaceObject *new = (struct sSpaceObject*) malloc(sizeof(struct sSpaceObject));	
			
							//Define asteroid properties
							new->x = a->x;
							new->y = a->y;
							new->dx = scaledRand;
							new->dy = scaledRand2;
							new->nSize = (int)a->nSize >> 1; new->angle = 0;
							vector_add(&newAsteroids, new);	
						}

					}
					//"Kill" asteroid
					vector_delete(&vecAsteroids, j);  //Can only delete from the same vector we're iterating through because vector gets restructured here,
				 										//and if we end up iterating over the bounds of the vector, okay, because we're using the loop index to access vectors only,
														//and the vector implementation checks to make sure we are not accessing past the vector bounds
					nScore += 100;
				 }
			}

			//Draw Bullets and remove off-screen bullets
			//Instead of wrapping bullet gamespace coordinates, check if bullets go off screen and remove them, else draw them
			if (b->x < 0 || b->y < 0 || b->x >= screen_x || b->y >= screen_y)
				vector_delete(&vecBullets, i);
			else			
				VGA_disc(b->x, b->y, 2, colors[*(RNG_ptr) & 0x7]); //Implements Draw()

		}
		//printf("total bullets: %u", vector_count(&vecBullets));

		//Append new asteroids to existing vector
		for (i = 0; i < vector_count(&newAsteroids); i++)
		{
			vector_add(&vecAsteroids, vector_get(&newAsteroids, i));
		}
		
		if(vector_count(&vecAsteroids) == 0) //WIN! Now there's more asteroids...
		{
			nScore += 500; //Big points for winning level
			
			vector_free(&vecAsteroids); //Clear asteroids and bullets
			vector_free(&vecBullets);
			vector_init(&vecAsteroids);
			vector_init(&vecBullets);

			// Add new asteroids out of way of player, we'll simply
			// add them 90 degrees left and right to the player, their coordinates will
			// be wrapped by the next asteroid update

			////////////////////////////////////////////////////////////////
			//===ALTERA RANDOM NUMBER GENERATOR + FIFO IP CORE USAGE======//
			////////////////////////////////////////////////////////////////

			//Scale down the random number to range [0,31] using "& 0x1F" - the one from IP Core is a bit large...
//Diff->    //Then map [0,31] to range [0.0,0.5]
			float scaledRand = ((float)(*(RNG_ptr) & 0x1F)) / 31.0f * 0.5f;
			float scaledRand2 = ((float)(*(RNG_ptr) & 0x1F)) / 31.0f * 0.5f;
			float scaledRand3 = ((float)(*(RNG_ptr) & 0x1F)) / 31.0f * 0.5f;
			float scaledRand4 = ((float)(*(RNG_ptr) & 0x1F)) / 31.0f * 0.5f;

			struct sSpaceObject a1 = {80.0f * sinf(player.angle - 3.14159f / 2.0f),
									  80.0f * cosf(player.angle - 3.14159f / 2.0f), //Guarenteed to not spawn on top of player
									  scaledRand * sinf(player.angle),
									  scaledRand2 * cosf(player.angle), //Speed still random, but won't be in direction on player
									  (int)64, 0.0f};
			struct sSpaceObject a2 = {80.0f * sinf(player.angle + 3.14159f / 2.0f),
									  80.0f * cosf(player.angle + 3.14159f / 2.0f), //Guarenteed to not spawn on top of player
									  scaledRand3 * sinf(-player.angle),
									  scaledRand4 * cosf(player.angle), //Speed still random, but won't be in direction on player
									  (int)64, 0.0f};

			vector_add(&vecAsteroids, &a1);
			vector_add(&vecAsteroids, &a2);
		}

		//Draw Ship
		DrawWireFrameModel(vecModelShip, player.x, player.y, player.angle, 3.0f, 0xff);
		
		//Screen Timing
		vsync(); // set frame rate
		gettimeofday(&t2, NULL); // stop timer
		elapsedTime = (t2.tv_sec - t1.tv_sec) * 1000.0;      // sec to ms
		elapsedTime += (t2.tv_usec - t1.tv_usec) / 1000.0;   // us to ms
		sprintf(time_string, "FPS = %3.0f  ", (1/elapsedTime)*1000);
		sprintf(score_string, "SCORE = %4u points", nScore);
		VGA_text (10, 4, time_string);
		VGA_text (50, 4, score_string);

		
		
	} // end while(1)
} // end main


void get_screen_specs(volatile int * pixel_ctrl_ptr)
{
	//NOTE: The next 2 lines both access the same part of the register, I just did 2 ways of pointer
	//arithmetic just for the fun of doing it 2 ways
	screen_x = *(pixel_ctrl_ptr + 2) & 0x0000FFFF;
	screen_y = pixel_ctrl_ptr[2] >> 16;
	color_bytes = (*(pixel_ctrl_ptr + 3) & 0x000000F0) >> 4; //B in status register - bits 7 - 4
	addressing_mode = *(pixel_ctrl_ptr + 3) & 0x00000002;    //A in status register - bit 1
}

void get_char_res(volatile int* char_ctrl_ptr)
{
	char_res_x = *(char_ctrl_ptr + 1) & 0xFFFF;
	char_res_y = *(char_ctrl_ptr + 1) >> 16;
}

int vsync(void) //Function should return 0 when vertical synchronization happens - 1/60 second
{
	*pixel_ctrl_ptr = 1; //Write value 1 to the buffer register (0xFF203020) - set S bit to 1 according to lab instructions
	int time = 0;
	while ((*(pixel_ctrl_ptr + 3) & 0x1) == 1 && time < 100000) //Wait for S to be reset to 0, or timeout after 1 second
	{														  //*(pixel_ctrl_ptr + 3) & 0x1 is the location of the S bit
		usleep(10); //poll every 10 useconds
		time++;
	}
	return *(pixel_ctrl_ptr + 3) & 0x1; //Return S bit (should return 0 when vertical sync happens - swap occurred)
										//Returning 1 means timeout occurred
}

//====================
//Plot pixel on screen
//====================
void Draw(int x, int y, short color)
{
	int outputx, outputy;
	char *pixel_ptr;
	WrapCoordinates(x, y, &outputx, &outputy);
	//640x480
	pixel_ptr = (char *)vga_pixel_ptr + (outputy<<10) + outputx ;
	// set pixel color
	*(char *)pixel_ptr = color;
}


/****************************************************************************************
 * Subroutine to send a string of text to the VGA monitor 
****************************************************************************************/
void VGA_text(int x, int y, char * text_ptr)
{
  	volatile char * character_buffer = (char *) vga_char_ptr ;	// VGA character buffer
	int offset;
	/* assume that the text string fits on one line */
	offset = (y << 7) + x;
	while ( *(text_ptr) )
	{
		// write to the character buffer
		*(character_buffer + offset) = *(text_ptr);	
		++text_ptr;
		++offset;
	}
}

/****************************************************************************************
 * Subroutine to clear text to the VGA monitor 
****************************************************************************************/
void VGA_text_clear()
{
  	volatile char * character_buffer = (char *) vga_char_ptr ;	// VGA character buffer
	int offset, x, y;
	for (x=0; x<79; x++){
		for (y=0; y<59; y++){
	/* assume that the text string fits on one line */
			offset = (y << 7) + x;
			// write to the character buffer
			*(character_buffer + offset) = ' ';		
		}
	}
}

/****************************************************************************************
 * Draw a filled rectangle on the VGA monitor 
****************************************************************************************/
#define SWAP(X,Y) do{int temp=X; X=Y; Y=temp;}while(0) 

void VGA_box(int x1, int y1, int x2, int y2, short pixel_color)
{
	char  *pixel_ptr ; 
	int row, col;

	/* check and fix box coordinates to be valid */
	if (x1>639) x1 = 639;
	if (y1>479) y1 = 479;
	if (x2>639) x2 = 639;
	if (y2>479) y2 = 479;
	if (x1<0) x1 = 0;
	if (y1<0) y1 = 0;
	if (x2<0) x2 = 0;
	if (y2<0) y2 = 0;
	if (x1>x2) SWAP(x1,x2);
	if (y1>y2) SWAP(y1,y2);
	for (row = y1; row <= y2; row++)
		for (col = x1; col <= x2; ++col)
		{
			//640x480
			pixel_ptr = (char *)vga_pixel_ptr + (row<<10)    + col ;
			// set pixel color
			*(char *)pixel_ptr = pixel_color;		
		}
}



/****************************************************************************************
 * Draw a filled circle on the VGA monitor 
****************************************************************************************/

void VGA_disc(int x, int y, int r, short pixel_color)
{
	int row, col, rsqr, xc, yc;
	
	rsqr = r*r;
	
	for (yc = -r; yc <= r; yc++)
		for (xc = -r; xc <= r; xc++)
		{
			col = xc;
			row = yc;
			// add the r to make the edge smoother
			if(col*col+row*row <= rsqr+r){
				col += x; // add the center point
				row += y; // add the center point

				Draw(col, row, pixel_color);
			}
					
		}
}


// =============================================
// === Draw a line
// =============================================
//plot a line 
//at x1,y1 to x2,y2 with color 
//Code is from David Rodgers,
//"Procedural Elements of Computer Graphics",1985
void VGA_line(int x1, int y1, int x2, int y2, short c) {
	int e;
	signed int dx,dy,j, temp;
	signed int s1,s2, xchange;
     signed int x,y;
	
	/* No need to check and fix line coordinates to be valid - handled in Draw function to allow Toroidal coordinates*/

        
	x = x1;
	y = y1;
	
	//take absolute value
	if (x2 < x1) {
		dx = x1 - x2;
		s1 = -1;
	}

	else if (x2 == x1) {
		dx = 0;
		s1 = 0;
	}

	else {
		dx = x2 - x1;
		s1 = 1;
	}

	if (y2 < y1) {
		dy = y1 - y2;
		s2 = -1;
	}

	else if (y2 == y1) {
		dy = 0;
		s2 = 0;
	}

	else {
		dy = y2 - y1;
		s2 = 1;
	}

	xchange = 0;   

	if (dy>dx) {
		temp = dx;
		dx = dy;
		dy = temp;
		xchange = 1;
	} 

	e = ((int)dy<<1) - dx;  
	 
	for (j=0; j<=dx; j++) {
		//video_pt(x,y,c); //640x480
		//pixel_ptr = (char *)vga_pixel_ptr + (y<<10)+ x; 
		// set pixel color
		//*(char *)pixel_ptr = c;	
		Draw(x, y, c); 
		if (e>=0) {
			if (xchange==1) x = x + s1;
			else y = y + s2;
			e = e - ((int)dx<<1);
		}

		if (xchange==1) y = y + s2;
		else x = x + s1;

		e = e + ((int)dy<<1);
	}
}

// =============================================
// === Wrap Coordinates Toroidal Coordinate System
// =============================================

void WrapCoordinates(int ix, int iy, int *ox, int *oy)
{
	*ox = ix;
	*oy = iy;
	if (ix < 0)
		*ox = ix + screen_x;
	if (ix >= screen_x)
		*ox = ix - screen_x;
	if (iy < 0)
		*oy = iy + screen_y;
	if (iy >= screen_y)
		*oy = iy - screen_y;
}

// =============================================
// === Draw Wireframe Model for space objects
// =============================================

void DrawWireFrameModel(vector vecModelCoordinates, float x, float y, float r, float s, short color)
{
	//Create translated model vector of coordinate pairs
	vector vecTransformedCoordinates;
	vector_init(&vecTransformedCoordinates);
	int verts = vector_count(&vecModelCoordinates);

	float transformedVert[verts][2]; // X coord: [Vertex number][0], Y coord: [Vertex number][1]
	float *modelVert;
	int i;
	for (i = 0; i < verts; i++) //Loop through all the verticies
	{
		//Change the transform properties of the x and y coordinates of each vertex
		modelVert = vector_get(&vecModelCoordinates, i);

//TEST Logic/math Accuracy
//printf("modelVertX = %f, modelVertY = %f\n", *(modelVert + 0), *(modelVert + 1));

		//Rotate
		*(transformedVert[i] + 0) = *(modelVert + 0) * cosf(r) - *(modelVert + 1) * sinf(r); //modelVert[x] or transformedVert[x] probably works in some way too but this is good pointer arithmetic pracice
		*(transformedVert[i] + 1) = *(modelVert + 0) * sinf(r) + *(modelVert + 1) * cosf(r);
	
		//Scale
		*(transformedVert[i] + 0) = *(transformedVert[i] + 0) * s;
		*(transformedVert[i] + 1) = *(transformedVert[i] + 1) * s;

		//Translate
		*(transformedVert[i] + 0) = *(transformedVert[i] + 0) + x;
		*(transformedVert[i] + 1) = *(transformedVert[i] + 1) + y;
//TEST Logic/math Accuracy
//printf("TransformX = %f, TransformY = %f\n", *(transformedVert[i] + 0), *(transformedVert[i] + 1));
	
	}

	//Draw Closed Polygon
	for (i = 0; i < verts + 1; i++)
	{
		int j;
		j = (i + 1);

		VGA_line(*(transformedVert[i % verts] + 0), *(transformedVert[i % verts] + 1), *(transformedVert[j % verts] + 0), *(transformedVert[j % verts] + 1), color);
	}
}

// =============================================
// === Collision Detection System
// =============================================

bool IsPointInsideCircle(float cx, float cy, float radius, float x, float y)
{	
	if (sqrt((x - cx)*(x - cx) + (y - cy)*(y - cy)) < radius)
		return true;
	else
		return false;
}




