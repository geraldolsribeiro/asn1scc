#ifndef _INC_A_H
#define _INC_A_H
/*
Code automatically generated by asn1scc tool
*/
#include "asn1crt.h"

#ifdef  __cplusplus
extern "C" {
#endif



typedef enum {
    red = 0,
    green = 1,
    blue = 2
} RGBCOLORS;

#define RGBCOLORS_REQUIRED_BYTES_FOR_ENCODING       1 
#define RGBCOLORS_REQUIRED_BITS_FOR_ENCODING        2
#define RGBCOLORS_REQUIRED_BYTES_FOR_ACN_ENCODING   1 
#define RGBCOLORS_REQUIRED_BITS_FOR_ACN_ENCODING    2
#define RGBCOLORS_REQUIRED_BYTES_FOR_XER_ENCODING   32

void RGBCOLORS_Initialize(RGBCOLORS* pVal);
flag RGBCOLORS_IsConstraintValid(const RGBCOLORS* val, int* pErrCode);
flag RGBCOLORS_Equal(const RGBCOLORS* val1, const RGBCOLORS* val2);

#ifndef ERR_RGBCOLORS_unknown_enumeration_value 
#define ERR_RGBCOLORS_unknown_enumeration_value		1002  /**/
#endif
#ifndef ERR_RGBCOLORS 
#define ERR_RGBCOLORS		1001  /*(((red) | (green)) | (blue))*/
#endif

typedef asn1SccSint CH1_left;

#define CH1_left_REQUIRED_BYTES_FOR_ENCODING       1 
#define CH1_left_REQUIRED_BITS_FOR_ENCODING        4
#define CH1_left_REQUIRED_BYTES_FOR_ACN_ENCODING   1 
#define CH1_left_REQUIRED_BITS_FOR_ACN_ENCODING    4
#define CH1_left_REQUIRED_BYTES_FOR_XER_ENCODING   41

void CH1_left_Initialize(CH1_left* pVal);
flag CH1_left_IsConstraintValid(const CH1_left* val, int* pErrCode);
flag CH1_left_Equal(const CH1_left* val1, const CH1_left* val2);

#ifndef ERR_CH1_left 
#define ERR_CH1_left		1003  /*(1 .. 10)*/
#endif

typedef struct {
    enum {
        CH1_NONE,
        left_PRESENT,
        right_PRESENT 
    } kind;
    union {
        CH1_left left;
        RGBCOLORS right;
    } u; 
} CH1;

#define CH1_REQUIRED_BYTES_FOR_ENCODING       1 
#define CH1_REQUIRED_BITS_FOR_ENCODING        6
#define CH1_REQUIRED_BYTES_FOR_ACN_ENCODING   1 
#define CH1_REQUIRED_BITS_FOR_ACN_ENCODING    6
#define CH1_REQUIRED_BYTES_FOR_XER_ENCODING   44

void CH1_Initialize(CH1* pVal);
flag CH1_IsConstraintValid(const CH1* val, int* pErrCode);
flag CH1_Equal(const CH1* val1, const CH1* val2);

#ifndef ERR_CH1_unknown_choice_index 
#define ERR_CH1_unknown_choice_index		1004  /**/
#endif

 

/* ================= Encoding/Decoding function prototypes =================
 * These functions are placed at the end of the file to make sure all types
 * have been declared first, in case of parameterized ACN encodings
 * ========================================================================= */

flag RGBCOLORS_Encode(const RGBCOLORS* val, BitStream* pBitStrm, int* pErrCode, flag bCheckConstraints);
flag RGBCOLORS_Decode(RGBCOLORS* pVal, BitStream* pBitStrm, int* pErrCode);
flag CH1_left_Encode(const CH1_left* val, BitStream* pBitStrm, int* pErrCode, flag bCheckConstraints);
flag CH1_left_Decode(CH1_left* pVal, BitStream* pBitStrm, int* pErrCode);
flag CH1_Encode(const CH1* val, BitStream* pBitStrm, int* pErrCode, flag bCheckConstraints);
flag CH1_Decode(CH1* pVal, BitStream* pBitStrm, int* pErrCode); 


#ifdef  __cplusplus
}
#define ENUM_red	red
#define ENUM_green	green
#define ENUM_blue	blue
#define CHOICE_left_PRESENT	CH1::left_PRESENT
#define CHOICE_right_PRESENT	CH1::right_PRESENT

#endif

#endif
