/*
 * constants.h
 *
 *  Created on: 26 Nov 2022
 *      Author: mathi
 */

#ifndef SRC_CONSTANTS_H_
#define SRC_CONSTANTS_H_

namespace constants{
//GET THIS INFORMATION FROM OVERALL HEADERFILE
extern const int offset;
extern const int amountOfRows;
extern const int amountOfColumn;
extern const int bytesPerPixel;
extern const int bytesPerRow;
extern const int padding;

//MAKE VARIABLES HERE AND MAYBE READ FROM HEADER ONE DAY

//width of each row + bytePerRow%4(padding) up to 4 byte, hence modulo 4
extern const int informationPerRow; // = 452

extern const int sizeOfFile;

}






#endif /* SRC_CONSTANTS_H_ */