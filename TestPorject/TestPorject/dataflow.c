

/*
void testFlow(char a[450] , char b[10]){
#pragma HLS INTERFACE s_axilite port=a
#pragma HLS INTERFACE s_axilite port=b
#pragma HLS INTERFACE s_axilite port=return

	for(int i = 0 ; i < 450 ; i ++){
		a[i] = a[i] +1;
	}
}
*/


//ColumnSize 150 times bytes per pixel = 450

//BGR

void greyScale(char pixelInput[512*3] , char pixelOutput[512*3]){
#pragma HLS INTERFACE s_axilite port=pixelInput
#pragma HLS INTERFACE s_axilite port=pixelOutput

//INTERNAL CLOCK THINGY
#pragma HLS INTERFACE s_axilite port=return


				int grey = 0;

	        	for(int pixelStart ; pixelStart < sizeof(pixelInput) ; pixelStart = pixelStart +3){
	        		int blueChannel = pixelInput[pixelStart];
	        		int greenChannel = pixelInput[pixelStart+1];
	        		int redChannel = pixelInput[pixelStart+2];
	        		grey = blueChannel * 0.11 + greenChannel * 0.59 + redChannel*0.3;
	        		pixelOutput[pixelStart] = grey;
	        		pixelOutput[pixelStart+1] = grey;
					pixelOutput[pixelStart+2] = grey;
	        	}



}
