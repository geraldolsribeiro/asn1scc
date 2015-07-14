-- Code automatically generated by asn1scc tool
WITH adaasn1rtl;
use type adaasn1rtl.Asn1UInt;
use type adaasn1rtl.Asn1Int;
use type adaasn1rtl.BIT;


PACKAGE BODY MOD1 IS



FUNCTION RGBCOLORS_Init return RGBCOLORS
IS 
BEGIN
    RETURN red;
END RGBCOLORS_Init;

FUNCTION RGBCOLORS_IsConstraintValid(val : in RGBCOLORS) return adaasn1rtl.ASN1_RESULT
IS
    ret : adaasn1rtl.ASN1_RESULT;
 
 
BEGIN
-- ENUMERATED {
--     red(0),
--     green(1),
--     blue(2)
-- } (((red) | (green)) | (blue))-------
-- ENUMERATED {
--     red(0),
--     green(1),
--     blue(2)
-- } (((red) | (green)) | (blue))


    ret := adaasn1rtl.ASN1_RESULT'(Success => (((val = red) OR (val = green)) OR (val = blue)), ErrorCode => ERR_RGBCOLORS);
    RETURN ret;
END RGBCOLORS_IsConstraintValid;

function RGBCOLORS_Equal(val1, val2: in RGBCOLORS) return Boolean
is
begin
    return val1 = val2;
end RGBCOLORS_Equal;

PROCEDURE RGBCOLORS_uPER_Encode_aux(val:in RGBCOLORS; S : in out adaasn1rtl.BitArray; K : in out Natural; result : OUT adaasn1rtl.ASN1_RESULT)
---# derives S from S , K, val & K from K, val & result from val ;
---# pre K+1>= S'First and K + RGBCOLORS_REQUIRED_BITS_FOR_ENCODING <= S'Last;
---# post K>=K~ and K<=K~+RGBCOLORS_REQUIRED_BITS_FOR_ENCODING;
IS
    intVal:adaasn1rtl.Asn1Int;
BEGIN
    result := RGBCOLORS_IsConstraintValid(val);
    IF result.success THEN
        --result.ErrorCode := 1342177281;
        case val is 
            when red    => intVal := 0;
            when green    => intVal := 1;
            when blue    => intVal := 2;
        end case;
        adaasn1rtl.UPER_Enc_ConstraintWholeNumber(S, K, intVal, 0, 2);
    END IF;
END RGBCOLORS_uPER_Encode_aux;

PROCEDURE RGBCOLORS_uPER_Encode(val:in RGBCOLORS; Stream : OUT RGBCOLORS_uPER_Stream; result : OUT adaasn1rtl.ASN1_RESULT)
IS
BEGIN
    Stream := RGBCOLORS_uPER_Stream'(K => 0, DataLen => 0, Data => RGBCOLORS_uPER_bit_array'(others => 0));
    RGBCOLORS_uPER_Encode_aux(val, Stream.Data, Stream.DataLen, result);
END RGBCOLORS_uPER_Encode;

PROCEDURE RGBCOLORS_uPER_Decode_aux(val:out RGBCOLORS; S : in adaasn1rtl.BitArray; K : in out adaasn1rtl.DECODE_PARAMS; result : OUT adaasn1rtl.ASN1_RESULT)
---# derives val from S , K &
---#         K from K  & result from K,S;
---# pre K.K+1>= S'First and K.K + RGBCOLORS_REQUIRED_BITS_FOR_ENCODING <= S'Last;
---# post K.K>=K~.K and K.K<=K~.K+RGBCOLORS_REQUIRED_BITS_FOR_ENCODING;
IS
    intVal:adaasn1rtl.Asn1Int;
BEGIN
    result.ErrorCode := 268435457;
    val := RGBCOLORS_Init;
    adaasn1rtl.UPER_Dec_ConstraintWholeNumber(S, K, intVal, 0, 2, 2, result.Success);
    IF result.Success THEN
        case RGBCOLORS_index_range(intVal) is
            when 0 => val := red;
            when 1 => val := green;
            when 2 => val := blue;
        end case;
    END IF;
END RGBCOLORS_uPER_Decode_aux;

PROCEDURE RGBCOLORS_uPER_Decode(val: out RGBCOLORS; Stream : IN RGBCOLORS_uPER_Stream; result : OUT adaasn1rtl.ASN1_RESULT)
IS
    iter:adaasn1rtl.DECODE_PARAMS;
BEGIN
    iter := adaasn1rtl.DECODE_PARAMS'(K => 0, DataLen => Stream.DataLen);
    RGBCOLORS_uPER_Decode_aux(val, Stream.Data, iter, result);
    result.Success := result.Success AND iter.K<=iter.DataLen;
END RGBCOLORS_uPER_Decode;

FUNCTION CH1_left_Init return CH1_left
IS 
BEGIN
    RETURN 1;
END CH1_left_Init;

FUNCTION CH1_left_IsConstraintValid(val : in CH1_left) return adaasn1rtl.ASN1_RESULT
IS
    ret : adaasn1rtl.ASN1_RESULT;
 
 
BEGIN
-- INTEGER (1 .. 10)-------
-- INTEGER (1 .. 10)


    ret := adaasn1rtl.ASN1_RESULT'(Success => (1 <= val AND val <= 10), ErrorCode => ERR_CH1_left);
    RETURN ret;
END CH1_left_IsConstraintValid;

function CH1_left_Equal(val1, val2: in CH1_left) return Boolean
is
begin
    return val1 = val2;
end CH1_left_Equal;

PROCEDURE CH1_left_uPER_Encode_aux(val:in CH1_left; S : in out adaasn1rtl.BitArray; K : in out Natural; result : OUT adaasn1rtl.ASN1_RESULT)
---# derives S from S , K, val & K from K, val & result from val ;
---# pre K+1>= S'First and K + CH1_left_REQUIRED_BITS_FOR_ENCODING <= S'Last;
---# post K>=K~ and K<=K~+CH1_left_REQUIRED_BITS_FOR_ENCODING;
IS
BEGIN
    result := CH1_left_IsConstraintValid(val);
    IF result.success THEN
        --result.ErrorCode := 1342177282;
        adaasn1rtl.UPER_Enc_ConstraintWholeNumber(S, K, val, 1, 4);
    END IF;
END CH1_left_uPER_Encode_aux;

PROCEDURE CH1_left_uPER_Encode(val:in CH1_left; Stream : OUT CH1_left_uPER_Stream; result : OUT adaasn1rtl.ASN1_RESULT)
IS
BEGIN
    Stream := CH1_left_uPER_Stream'(K => 0, DataLen => 0, Data => CH1_left_uPER_bit_array'(others => 0));
    CH1_left_uPER_Encode_aux(val, Stream.Data, Stream.DataLen, result);
END CH1_left_uPER_Encode;

PROCEDURE CH1_left_uPER_Decode_aux(val:out CH1_left; S : in adaasn1rtl.BitArray; K : in out adaasn1rtl.DECODE_PARAMS; result : OUT adaasn1rtl.ASN1_RESULT)
---# derives val from S , K &
---#         K from K  & result from K,S;
---# pre K.K+1>= S'First and K.K + CH1_left_REQUIRED_BITS_FOR_ENCODING <= S'Last;
---# post K.K>=K~.K and K.K<=K~.K+CH1_left_REQUIRED_BITS_FOR_ENCODING;
IS
BEGIN
    result.ErrorCode := 268435458;
    adaasn1rtl.UPER_Dec_ConstraintWholeNumber(S, K, val, 1, 10, 4, result.Success);
END CH1_left_uPER_Decode_aux;

PROCEDURE CH1_left_uPER_Decode(val: out CH1_left; Stream : IN CH1_left_uPER_Stream; result : OUT adaasn1rtl.ASN1_RESULT)
IS
    iter:adaasn1rtl.DECODE_PARAMS;
BEGIN
    iter := adaasn1rtl.DECODE_PARAMS'(K => 0, DataLen => Stream.DataLen);
    CH1_left_uPER_Decode_aux(val, Stream.Data, iter, result);
    result.Success := result.Success AND iter.K<=iter.DataLen;
END CH1_left_uPER_Decode;

FUNCTION CH1_kind(val:CH1) RETURN CH1_selection 
IS --# hide CH1_kind;
BEGIN
    return val.kind;
END CH1_kind;

FUNCTION CH1_left_get(val:CH1) RETURN CH1_left
IS --# hide CH1_left_get;
BEGIN
    RETURN val.left;
END CH1_left_get;

FUNCTION CH1_left_set(itm:CH1_left) RETURN CH1
IS --# hide CH1_left_set;
BEGIN
    RETURN CH1'(kind => left_PRESENT, left => itm);
END CH1_left_set;
FUNCTION CH1_right_get(val:CH1) RETURN RGBCOLORS
IS --# hide CH1_right_get;
BEGIN
    RETURN val.right;
END CH1_right_get;

FUNCTION CH1_right_set(itm:RGBCOLORS) RETURN CH1
IS --# hide CH1_right_set;
BEGIN
    RETURN CH1'(kind => right_PRESENT, right => itm);
END CH1_right_set;

FUNCTION CH1_Init return CH1
IS --#hide CH1_Init;
BEGIN
    RETURN CH1_left_set(1);
END CH1_Init;

FUNCTION CH1_IsConstraintValid(val : in CH1) return adaasn1rtl.ASN1_RESULT
IS
    ret : adaasn1rtl.ASN1_RESULT;
 
 
BEGIN
-- CHOICE {
--     left            CH1-left,
--     right           RGBCOLORS
-- } -------
-- CHOICE {
--     left            CH1-left,
--     right           RGBCOLORS
-- } 


    CASE CH1_kind(val) IS
        WHEN left_PRESENT =>
            ret := CH1_left_IsConstraintValid(CH1_left_get(val));
        WHEN right_PRESENT =>
            ret := RGBCOLORS_IsConstraintValid(CH1_right_get(val));
    END CASE;
    RETURN ret;
END CH1_IsConstraintValid;

function CH1_Equal(val1, val2: in CH1) return Boolean
is
begin
    return CH1_kind(val1) = CH1_kind(val2) and then
    ((if CH1_kind(val1) = left_PRESENT then
 CH1_left_Equal(CH1_left_get(val1), CH1_left_get(val2)) else False) or 
(if CH1_kind(val1) = right_PRESENT then
 RGBCOLORS_Equal(CH1_right_get(val1), CH1_right_get(val2)) else False));

end CH1_Equal;

PROCEDURE CH1_uPER_Encode_aux(val:in CH1; S : in out adaasn1rtl.BitArray; K : in out Natural; result : OUT adaasn1rtl.ASN1_RESULT)
---# derives S from S , K, val & K from K, val & result from val ;
---# pre K+1>= S'First and K + CH1_REQUIRED_BITS_FOR_ENCODING <= S'Last;
---# post K>=K~ and K<=K~+CH1_REQUIRED_BITS_FOR_ENCODING;
IS
BEGIN
    result := CH1_IsConstraintValid(val);
    IF result.success THEN
        --result.ErrorCode := 1342177283;
        CASE CH1_kind(val) IS
            WHEN left_PRESENT =>
                adaasn1rtl.UPER_Enc_ConstraintWholeNumber(S, K, 0, 0, 1);
                CH1_left_uPER_Encode_aux(CH1_left_get(val), S, K, result);
            WHEN right_PRESENT =>
                adaasn1rtl.UPER_Enc_ConstraintWholeNumber(S, K, 1, 0, 1);
                RGBCOLORS_uPER_Encode_aux(CH1_right_get(val), S, K, result);
        END CASE;
    END IF;
END CH1_uPER_Encode_aux;

PROCEDURE CH1_uPER_Encode(val:in CH1; Stream : OUT CH1_uPER_Stream; result : OUT adaasn1rtl.ASN1_RESULT)
IS
BEGIN
    Stream := CH1_uPER_Stream'(K => 0, DataLen => 0, Data => CH1_uPER_bit_array'(others => 0));
    CH1_uPER_Encode_aux(val, Stream.Data, Stream.DataLen, result);
END CH1_uPER_Encode;

PROCEDURE CH1_uPER_Decode_aux(val:out CH1; S : in adaasn1rtl.BitArray; K : in out adaasn1rtl.DECODE_PARAMS; result : OUT adaasn1rtl.ASN1_RESULT)
---# derives val from S , K &
---#         K from K ,S & result from K,S;
---# pre K.K+1>= S'First and K.K + CH1_REQUIRED_BITS_FOR_ENCODING <= S'Last;
---# post K.K>=K~.K and K.K<=K~.K+CH1_REQUIRED_BITS_FOR_ENCODING;
IS
    index:adaasn1rtl.Asn1Int;
    left_tmp:CH1_left;
    right_tmp:RGBCOLORS;
BEGIN
    val := CH1_Init;
    result.ErrorCode := 268435459;
    adaasn1rtl.UPER_Dec_ConstraintWholeNumber(S, K, index, 0, 1, 1, result.Success);
    IF result.Success THEN
        CASE CH1_index_range(index) IS
            WHEN 0 =>
                CH1_left_uPER_Decode_aux(left_tmp, S, K, result);
                IF result.Success THEN
                    val := CH1_left_set(left_tmp);
                END IF;
            WHEN 1 =>
                RGBCOLORS_uPER_Decode_aux(right_tmp, S, K, result);
                IF result.Success THEN
                    val := CH1_right_set(right_tmp);
                END IF;
        END CASE;
    END IF;
END CH1_uPER_Decode_aux;

PROCEDURE CH1_uPER_Decode(val: out CH1; Stream : IN CH1_uPER_Stream; result : OUT adaasn1rtl.ASN1_RESULT)
IS
    iter:adaasn1rtl.DECODE_PARAMS;
BEGIN
    iter := adaasn1rtl.DECODE_PARAMS'(K => 0, DataLen => Stream.DataLen);
    CH1_uPER_Decode_aux(val, Stream.Data, iter, result);
    result.Success := result.Success AND iter.K<=iter.DataLen;
END CH1_uPER_Decode;

 

END MOD1;