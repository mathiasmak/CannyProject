/*
 * constants.cpp
 *
 *  Created on: 26 Nov 2022
 *      Author: mathi
 */



#include "constants.h"

namespace constants{

//GET THIS INFORMATION FROM OVERALL HEADERFILE
extern const int offset = 54;
extern const int amountOfRows = 150;
extern const int amountOfColumns = 150;
extern const int bytesPerPixel = 3;
extern const int bytesPerRow = amountOfRows * bytesPerPixel;
extern const int padding = bytesPerRow%4;

//MAKE VARIABLES HERE AND MAYBE READ FROM HEADER ONE DAY

//width of each row + bytePerRow%4(padding) up to 4 byte, hence modulo 4
extern const int informationPerRow = amountOfRows*bytesPerPixel + padding; // = 452

extern const int sizeOfFile = amountOfRows*amountOfColumns*bytesPerPixel + (amountOfRows*padding) + offset;

}
