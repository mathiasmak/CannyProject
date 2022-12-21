/*
 * Empty C++ Application
 */

#include "platform.h"
#include "XScuTimer.h"
#include <stdio.h>
#include "xil_printf.h"
#include "xparameters.h"
#include "FileSDCard.h"
#include "math.h"


/*
int main()
{
	return 0;
}*/

/*
 * Empty C++ Application
 */



//#include "utilFunctions.h"
//#include "constants.cpp"

#include <iostream>

using namespace std;

char in[10] = {1,2,3,4,5,6,7,8,9,10};
char out[10];
char sdTest[400] = {1};


static const char writeText[] = "This is a read me file\r\nWith more lines\r\n";
static char readText[786486];
static char readText2[786486];
static char readText3[786486];

#include "xgreyscale.h"

int main()
{





	init_platform();
	XGreyscale greyInstance;
	int status;
	status = XGreyscale_Initialize(&greyInstance , 0);
	if(status != XST_SUCCESS){
		return 0;
	}

	//utilFunctions* util = new utilFunctions();


    	//printf("Demonstration of writing and reading files from SD card\r\n\r\n");
    	//TestFileSDCard();


    int result = 0;
    FileSDCard file((char*)"0:/");


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



    	int amountOfColumns = 512;
    	int amountOfRows = 512;
    	int offset = 54;

    	char inputArray[512*3];
    	char outputArray[512*3];

    	bool allProcessed = false;
    	bool dataReady = false;
    	bool outputProcessed = true;
    	bool outputReadyToBeProcessed = true;

    	int column = 0;




      	 int bytesPerPixel = 3;
      	 int bytesPerRow = amountOfRows * bytesPerPixel;
      	 int padding = bytesPerRow%4;

      	//MAKE VARIABLES HERE AND MAYBE READ FROM HEADER ONE DAY

      	//width of each row + bytePerRow%4(padding) up to 4 byte, hence modulo 4
      	 int informationPerRow = amountOfRows*bytesPerPixel + padding; // = 452

   		int grey = 0;
       	for(int j = 0 ; j < amountOfRows ; j++){

       		while(XGreyscale_IsReady(&greyInstance) != 1){

       		}

       	for(int i = 100 ; i < informationPerRow ; i = i + 3){

       		inputArray[i] = readText[(offset+i)+j*informationPerRow];
       		inputArray[i+1] = readText[(offset+i+1)+j*informationPerRow];
       		inputArray[i+2] = readText[(offset+i+2)+j*informationPerRow];


       		if(i == informationPerRow - padding - bytesPerPixel){
       			i = 10000000;
       			continue;
       		}

       		}

      		XGreyscale_Write_pixelInput_Bytes(&greyInstance , 0 , inputArray , 1536);
      		XGreyscale_Start(&greyInstance);
      		while(XGreyscale_IsDone(&greyInstance) != 1){

      		}
      		XGreyscale_Read_pixelOutput_Bytes(&greyInstance , 0 , outputArray , 1536);



       	for(int i = 100 ; i < informationPerRow ; i = i + 3){


       	       		readText3[(offset+i)+j*informationPerRow] = outputArray[i];
       	       		readText3[(offset+i+1)+j*informationPerRow] = outputArray[i+1];
       	       		readText3[(offset+i+2)+j*informationPerRow] = outputArray[i+2];


       	       		if(i == informationPerRow - padding - bytesPerPixel){
       	       			i = 10000000;
       	       			continue;
       	       		}

       	       		}



       	}








   	 for(int i = 0 ; i < 54 ; i++){
   		 readText2[i] = readText[i];
   		 readText3[i] = readText[i];
   	 }

   	 //RGB values are stored backwards i.e. BGR.
   	//GREY SCALE

       	for(int j = 0 ; j < amountOfRows ; j++){

       	for(int i = 0 ; i < informationPerRow ; i = i + 3){
       		grey=((int)readText[(offset+i)+j*informationPerRow]*0.11 + (int)readText[(offset+i+1)+j*informationPerRow]*0.59 + (int)readText[(offset+i+2)+j*informationPerRow]*0.30);

       		readText2[(offset+i)+j*informationPerRow] = grey;
       		readText2[(offset+i+1)+j*informationPerRow] = grey;
       		readText2[(offset+i+2)+j*informationPerRow] = grey;

       		if(i == informationPerRow - padding - bytesPerPixel){
       			i = 10000000;
       			continue;
       		}

       		}
       	}




/*
    	while(!allProcessed){





    		if(XGreyscale_IsReady(&greyInstance) == 1 && dataReady && outputProcessed){
    		dataReady = false;
    		XGreyscale_Write_pixelInput_Bytes(&greyInstance , 0 , inputArray , 512*3);
    		XGreyscale_Start(&greyInstance);

    		while(XGreyscale_IsDone(&greyInstance) != 1){

    		}
    		XGreyscale_Read_pixelOutput_Bytes(&greyInstance , 0 , outputArray , 512*3);
    		outputProcessed = false;


    		}


    		if(XGreyscale_IsDone(&greyInstance) == 0){
    		    			outputReadyToBeProcessed = true;
    		    		}




    		if(!dataReady && outputReadyToBeProcessed){
    			outputReadyToBeProcessed = false;


    			if(column == amountOfColumns){
    				allProcessed = true;
    			}

    			//this is how many bytes
    			else{
    	    		for(int row = 0 ; row < amountOfRows*3  ; row = row +1){

    	    			// offset is 54. row is how far in a row and column*amountOfRows is how far we are in the 1d array
    	    			// could be turned to a 2d array for easier access
    	    			inputArray[row] = readText[(offset+row)+column*amountOfRows];
    	    			readText[(offset+row)+column*amountOfRows] = outputArray[row];
    	    		}
    			}

    			column = column + 1;
    			outputProcessed = true;
    			dataReady = true;


    		}


    	}

    	*/











            result = file.mount();
            if (result != XST_SUCCESS) printf("Failed to mount SD card\r\n");

        	// Create a new file if doesn't exist
        	result = file.open((char*)"README.txt", FA_WRITE);
        	if (result != XST_SUCCESS) printf("Failed open file for writing\r\n");

        	// Write to start of file
        	result = file.write((void *)readText, sizeof(readText));
        	if (result != XST_SUCCESS) printf("Failed writing to file\r\n");

        	result = file.close();
        	if (result != XST_SUCCESS) printf("Failed closing file\r\n");




            result = file.mount();
            if (result != XST_SUCCESS) printf("Failed to mount SD card\r\n");

        	// Create a new file if doesn't exist
        	result = file.open((char*)"README2.txt", FA_WRITE);
        	if (result != XST_SUCCESS) printf("Failed open file for writing\r\n");

        	// Write to start of file
        	result = file.write((void *)readText2, sizeof(readText2));
        	if (result != XST_SUCCESS) printf("Failed writing to file\r\n");

        	result = file.close();
        	if (result != XST_SUCCESS) printf("Failed closing file\r\n");

            result = file.mount();
            if (result != XST_SUCCESS) printf("Failed to mount SD card\r\n");

        	// Create a new file if doesn't exist
        	result = file.open((char*)"README3.txt", FA_WRITE);
        	if (result != XST_SUCCESS) printf("Failed open file for writing\r\n");

        	// Write to start of file
        	result = file.write((void *)readText3, sizeof(readText2));
        	if (result != XST_SUCCESS) printf("Failed writing to file\r\n");

        	result = file.close();
        	if (result != XST_SUCCESS) printf("Failed closing file\r\n");


    return 0;
}

/*

 void EqHLS::filterSample(unsigned long sample)

{

            // send samples after shifting least significant 8 bits as the filter

            // requires 16 bit input sample

            while (XEq_IsReady(&mHlsEq) == 0); // Polling ready register

            XEq_Set_band(&mHlsEq, 0xff); // Ensure EQ filtering samples

            XEq_Set_sampleIn(&mHlsEq, sample >> 8);

            XEq_Start(&mHlsEq);

}



unsigned long EqHLS::getFiltered(void)

{

            unsigned long u32Data;



            while (XEq_IsDone(&mHlsEq) == 0); // Polling done register

            u32Data = XEq_Get_sampleOut(&mHlsEq);

            // shift left by 8 bits as output sample is 16 bit whereas CODEC requires 24 bits

    return u32Data << 8;

}

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

