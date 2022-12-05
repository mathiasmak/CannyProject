/*
 * Empty C++ Application
 */

#include "platform.h"
#include "XScuTimer.h"
#include <stdio.h>
#include "xil_printf.h"
#include "xparameters.h"
#include "xtestflow.h"
#include "FileSDCard.h"
#include "math.h"

//#include "utilFunctions.h"
//#include "constants.cpp"

#include <iostream>
#include <typeinfo>
using namespace std;

char in[10] = {1,2,3,4,5,6,7,8,9,10};
char out[10];
char sdTest[400] = {1};


static const char writeText[] = "This is a read me file\r\nWith more lines\r\n";
static char readText[786486];
static char readText2[786486];
static char readText3[786486];

int main()
{

	//utilFunctions* util = new utilFunctions();


    	//printf("Demonstration of writing and reading files from SD card\r\n\r\n");
    	//TestFileSDCard();


    int result = 0;
    FileSDCard file((char*)"0:/");
    int size = sizeof(readText);


    printf("Demonstration of writing and reading files from SD card\r\n\r\n");
    result = file.mount();
    	if (result != XST_SUCCESS) printf("Failed to mount SD card\r\n");

    	// Open created test file
    	result = file.open((char*)"lenna.bmp", FA_READ);
    	if (result != XST_SUCCESS) printf("Failed open file for reading\r\n");

    	// Read contents of test file
    	// readText is where the data should go in our example it was the (in) list
    	result = file.read((void *)readText, sizeof(readText));
    	if (result != XST_SUCCESS) printf("Failed reading from file\r\n");

    	result = file.close();
    	if (result != XST_SUCCESS) printf("Failed closing file\r\n");

    	printf(readText);
    	int inti = 255;
    	std::string str{0xff, 0x00, 0x32, 0xFE, 0x88, 0x10, 0x34, 0x6F, 0x54};

    	//first byte = blue
    	//second byte = red
    	//third byte = green


    	/*readText[54] = 255; //WHITE
    	readText[55] = 255;
    	readText[56] = 255;

    	readText[58] = str[1];
    	    	readText[59] = str[1]; //BLACK
    	    	readText[60] = str[1];

    	    	readText[62] = str[0]; //light blue (turkish)
    	    	    	readText[63] = str[0];
    	    	    	readText[64] = str[1];

    	    	    	readText[66] = str[1]; //blue
    	    	    	    	readText[67] = str[1];
    	    	    	    	readText[68] = str[0];

    	*/


    	 int offset = 54;
    	 int amountOfRows = 512;
    	 int amountOfColumns = 512;
    	 int bytesPerPixel = 3;
    	 int bytesPerRow = amountOfRows * bytesPerPixel;
    	 int padding = bytesPerRow%4;

    	//MAKE VARIABLES HERE AND MAYBE READ FROM HEADER ONE DAY

    	//width of each row + bytePerRow%4(padding) up to 4 byte, hence modulo 4
    	 int informationPerRow = amountOfRows*bytesPerPixel + padding; // = 452

    	 int sizeOfFile = amountOfRows*amountOfColumns*bytesPerPixel + (amountOfRows*padding) + offset;


    	 for(int i = 0 ; i < 54 ; i++){
    		 readText2[i] = readText[i];
    		 readText3[i] = readText[i];
    	 }


    	//GREY SCALE
    		int grey = 0;
        	for(int j = 0 ; j < amountOfRows ; j++){

        	for(int i = 0 ; i < informationPerRow ; i = i + 3){
        		grey=((int)readText[(offset+i)+j*informationPerRow]*0.3 + (int)readText[(offset+i+1)+j*informationPerRow]*0.59 + (int)readText[(offset+i+2)+j*informationPerRow]*0.11);

        		readText[(offset+i)+j*informationPerRow] = grey;
        		readText[(offset+i+1)+j*informationPerRow] = grey;
        		readText[(offset+i+2)+j*informationPerRow] = grey;

        		if(i == informationPerRow - padding - bytesPerPixel){
        			i = 10000000;
        			continue;
        		}

        		}
        	}


        	double blurValue = 1;


        	double finalFilter[3][3] = {0.0275 , 0.1102,0.0275, 0.1102 , 0.4421 , 0.1102 , 0.0275 , 0.1102 , 0.0275};

        	int xKernel[3][3] = {-1 , 0 , 1 , -1 ,0 , 1 , -1 , 0 , 1};
        	int yKernel[3][3]= {-1 , -1 , -1 , 0 , 0 ,0 , 1 , 1 ,1};

        	int pixelBlur = 0;
        	//GAUSSIAN FILTER
        	for(int j = 0 ; j < amountOfRows ; j++){

        	        	for(int i = 0 ; i < informationPerRow ; i = i + 3){


        	        		int pixelBlur = (finalFilter[0][0]*readText[offset+(i-3)+j-1*informationPerRow])
        	        				+ (finalFilter[0][1]*readText[(offset+i)+(j-1)*informationPerRow])
        	        				+ (finalFilter[0][2]*readText[(offset+i+3)+(j-1)*informationPerRow])
									+ (finalFilter[1][0]*readText[(offset+i-3)+(j)*informationPerRow])
									+ (finalFilter[1][1]*readText[(offset+i)+(j)*informationPerRow])
									+ (finalFilter[1][2]*readText[(offset+i+3)+(j)*informationPerRow])
									+ (finalFilter[2][0]*readText[(offset+i-3)+(j+1)*informationPerRow])
									+ (finalFilter[2][1]*readText[(offset+i)+(j+1)*informationPerRow])
									+ (finalFilter[2][2]*readText[(offset+i+3)+(j+1)*informationPerRow]);

        	        		readText2[(offset+i)+j*informationPerRow] = pixelBlur;
        	        		readText2[(offset+i+1)+j*informationPerRow] = pixelBlur;
        	        		readText2[(offset+i+2)+j*informationPerRow] = pixelBlur;

        	        		if(i == informationPerRow - padding - bytesPerPixel){
        	        			i = 10000000;
        	        			continue;
        	        		}

        	        		}
        	        	}



        	// SOBER

    	 	 int Gx = 0;
    	 	 int Gy = 0;
    	 	 int finalValue = 0;

        	for(int j = 0 ; j < amountOfRows ; j++){
        	for(int i = 0 ; i < informationPerRow ; i = i + 3){

        		/*
        		//IF WE ARE IN THE LEFT SIDE top corner
        		if(j<1 && i<1){

        		}
        		//IF WE ARE IN ONLY TOP
        		if(j<1){

        		}

        		//if we are in the button row
        		if(j = amountOfRows-1){

        		}

        		//if we are in the left low cornor
        		if(j = amountOfRows-1 && i < 1){

        		 }

        		//if we are first column
        		if(i < 1){

        		}
        		*/

        		//
        		if(j < 1 || i < 1 || j == amountOfRows-1 || i > informationPerRow-padding-bytesPerPixel){
        			continue;
        		}

        		 Gx = (1*readText2[offset+(i-3)+j-1*informationPerRow])
        			+(-1*readText2[(offset+i+3)+(j-1)*informationPerRow])
					+ (2*readText2[(offset+i-3)+(j)*informationPerRow])
					+ (-2*readText2[(offset+i+3)+(j)*informationPerRow])
					+ (1*readText2[(offset+i-3)+(j+1)*informationPerRow])
					+ (-1*readText2[(offset+i+3)+(j+1)*informationPerRow]);

        		 Gy = (1*readText2[offset+(i-3)+j-1*informationPerRow])
        			+(2*readText2[(offset+i)+(j-1)*informationPerRow])
					+ (1*readText2[(offset+i+3)+(j-1)*informationPerRow])
					+ (-1*readText2[(offset+i-3)+(j+1)*informationPerRow])
					+ (-2*readText2[(offset+i)+(j+1)*informationPerRow])
					+ (-1*readText2[(offset+i+3)+(j+1)*informationPerRow]);

        		 finalValue = abs(Gx)+abs(Gy);

        		readText3[(offset+i)+j*informationPerRow] = finalValue;
        		readText3[(offset+i+1)+j*informationPerRow] = finalValue;
        		readText3[(offset+i+2)+j*informationPerRow] = finalValue;

        		if(i == informationPerRow - padding - bytesPerPixel){
        			i = 10000000;
        			continue;
        		}

        		}
        	}






        result = file.mount();
        if (result != XST_SUCCESS) printf("Failed to mount SD card\r\n");

    	// Create a new file if doesn't exist
    	result = file.open((char*)"README.txt", FA_WRITE);
    	if (result != XST_SUCCESS) printf("Failed open file for writing\r\n");

    	// Write to start of file
    	result = file.write((void *)readText3, sizeof(readText3));
    	if (result != XST_SUCCESS) printf("Failed writing to file\r\n");

    	result = file.close();
    	if (result != XST_SUCCESS) printf("Failed closing file\r\n");

    return 0;
}

/*

#include "platform.h"
#include "XScuTimer.h"
#include <stdio.h>
#include "xil_printf.h"
#include "xparameters.h"
#include "xtestflow.h"
#include "FileSDCard.h"

char in[10] = {1,2,3,4,5,6,7,8,9,10};
char out[10];
char sdTest[400] = {1};

static const char writeText[] = "This is a read me file\r\nWith more lines\r\n";
static char readText[256];

void TestFileSDCard(void);

int main()
{
    init_platform();

    XTestflow test;

    XTestflow_Initialize(&test, 0);

    XTestflow_Read_a_Bytes(&test , 0 , in , 10);
    //XTestflow_Read_a_Bytes(&test , 0 , in , 450);
    XTestflow_Start(&test);
    print("Hello World\n\r");

    for(int i = 0 ; i < 400 ; i++){
    	printf("%c" , sdTest[i]);
    }

    XTestflow_Read_b_Bytes(&test, 0, out, 10);

	print("hello world\n");
	xil_printf("-- Start of the Program --bing\r\n");
	while(1){
		//xil_printf("-- loop of the Program --\r\n");
	}
    cleanup_platform();
    return 0;
}*/







