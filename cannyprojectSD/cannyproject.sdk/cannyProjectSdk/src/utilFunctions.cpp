/*
 * utilFunctions.cpp
 *
 *  Created on: 26 Nov 2022
 *      Author: mathi
 */
/*#include "utilFunctions.h"
#include "constants.h"

		int amountOfRows = constants::amountOfRows;
		int informationPerRow = constants::informationPerRow;
		int offset = constants::offset;
		int padding = constants::padding;
		int bytesPerPixel = constants::bytesPerPixel;

    	char utilFunctions::greyScaleImage(char input){
    		int grey = 0;
        	for(int j = 0 ; j < amountOfRows ; j++){
        	for(int i = 0 ; i < informationPerRow ; i = i + 3){
        		grey=((int)input[(offset+i)+j*informationPerRow]*0.3 + (int)input[(offset+i+1)+j*informationPerRow]*0.59 + (int)input[(offset+i+2)+j*informationPerRow]*0.11);
        		input[(offset+i)+j*informationPerRow] = grey;
        		input[(offset+i+1)+j*informationPerRow] = grey;
        		input[(offset+i+2)+j*informationPerRow] = grey;

        		if(i == informationPerRow - padding - bytesPerPixel){
        			i = 10000000;
        			continue;
        		}

        		}
        	}
        	return input;
    	}

*/