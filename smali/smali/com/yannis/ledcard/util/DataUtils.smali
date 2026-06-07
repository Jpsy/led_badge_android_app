.class public Lcom/yannis/ledcard/util/DataUtils;
.super Ljava/lang/Object;
.source "DataUtils.java"


# static fields
.field private static final BINARY_ARRAY:[Ljava/lang/String;

.field private static final HEX_ARRAY:[C

.field private static final HEX_STRING:Ljava/lang/String; = "0123456789ABCDEF"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x10

    new-array v1, v0, [C

    .line 15
    fill-array-data v1, :array_0

    sput-object v1, Lcom/yannis/ledcard/util/DataUtils;->HEX_ARRAY:[C

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "0000"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "0001"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "0010"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "0011"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "0100"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "0101"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "0110"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "0111"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "1000"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "1001"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "1010"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "1011"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "1100"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "1101"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "1110"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "1111"

    aput-object v2, v0, v1

    .line 17
    sput-object v0, Lcom/yannis/ledcard/util/DataUtils;->BINARY_ARRAY:[Ljava/lang/String;

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static binaryString2ByteArray(Ljava/lang/String;)[B
    .locals 5

    .line 191
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 192
    rem-int/lit8 v1, v0, 0x8

    if-nez v1, :cond_1

    .line 193
    div-int/lit8 v0, v0, 0x8

    .line 194
    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    mul-int/lit8 v3, v2, 0x8

    add-int/lit8 v4, v3, 0x8

    .line 196
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/yannis/ledcard/util/DataUtils;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static binaryString2ByteArrayByDot(Ljava/lang/String;)[B
    .locals 6

    const-string v0, ","

    .line 167
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 168
    array-length v1, v0

    new-array v2, v1, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    .line 170
    aget-object v5, v0, v4

    invoke-static {v5}, Lcom/yannis/ledcard/util/DataUtils;->parseInt(Ljava/lang/String;)I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 172
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 173
    rem-int/lit8 v1, v0, 0x8

    if-nez v1, :cond_1

    .line 174
    div-int/lit8 v0, v0, 0x8

    new-array v1, v0, [Ljava/lang/String;

    :goto_1
    if-ge v3, v0, :cond_1

    mul-int/lit8 v4, v3, 0x8

    add-int/lit8 v5, v4, 0x8

    .line 176
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-object v2
.end method

.method public static binaryString2hexString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    if-eqz p0, :cond_3

    const-string v0, ""

    .line 285
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    goto :goto_2

    .line 288
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 290
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    const/4 v5, 0x4

    if-ge v3, v5, :cond_1

    add-int v5, v2, v3

    add-int/lit8 v6, v5, 0x1

    .line 293
    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    rsub-int/lit8 v6, v3, 0x4

    add-int/lit8 v6, v6, -0x1

    shl-int/2addr v5, v6

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 295
    :cond_1
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x4

    goto :goto_0

    .line 297
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static byteArray2BinaryString([B)Ljava/lang/String;
    .locals 6

    .line 126
    array-length v0, p0

    const-string v1, ""

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-byte v3, p0, v2

    and-int/lit16 v4, v3, 0xf0

    shr-int/lit8 v4, v4, 0x4

    .line 129
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/yannis/ledcard/util/DataUtils;->BINARY_ARRAY:[Ljava/lang/String;

    aget-object v4, v1, v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    and-int/lit8 v3, v3, 0xf

    .line 132
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v1, v3

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static byteArray2Bitmap([BLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 2

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 339
    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 341
    :cond_0
    array-length p1, p0

    invoke-static {p0, v0, p1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static byteArray2HexString([BI)Ljava/lang/String;
    .locals 5

    .line 85
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    .line 86
    new-array v1, p1, [B

    const/4 v2, 0x0

    .line 87
    invoke-static {p0, v2, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p0, 0x0

    :goto_0
    if-ge p0, p1, :cond_0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 90
    aget-byte v4, v1, p0

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v2

    const-string v4, "0x%02X"

    invoke-virtual {v0, v4, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 92
    :cond_0
    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    .line 93
    invoke-virtual {v0}, Ljava/util/Formatter;->close()V

    return-object p0
.end method

.method public static byteArray2HexStringWithSpaces([BI)Ljava/lang/String;
    .locals 5

    .line 105
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    .line 106
    new-array v1, p1, [B

    const/4 v2, 0x0

    .line 107
    invoke-static {p0, v2, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p0, 0x0

    :goto_0
    if-ge p0, p1, :cond_0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 110
    aget-byte v4, v1, p0

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v2

    const-string v4, "0x%02X "

    invoke-virtual {v0, v4, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 112
    :cond_0
    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    .line 113
    invoke-virtual {v0}, Ljava/util/Formatter;->close()V

    return-object p0
.end method

.method public static byteArray2Int([BIIZ)I
    .locals 4

    .line 258
    array-length v0, p0

    sub-int/2addr v0, p2

    const/4 v1, 0x0

    if-le p1, v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v1, p2, :cond_3

    add-int v2, v1, p1

    .line 264
    aget-byte v2, p0, v2

    if-gez v2, :cond_1

    add-int/lit16 v2, v2, 0x100

    :cond_1
    if-eqz p3, :cond_2

    mul-int/lit8 v3, v1, 0x8

    goto :goto_1

    :cond_2
    sub-int v3, p2, v1

    add-int/lit8 v3, v3, -0x1

    mul-int/lit8 v3, v3, 0x8

    :goto_1
    shl-int/2addr v2, v3

    or-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method public static byteArray2String([B)Ljava/lang/String;
    .locals 6

    .line 41
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 42
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 43
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 44
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_0

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 47
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static byteArray2StringWithSpaces([B)Ljava/lang/String;
    .locals 7

    .line 59
    array-length v0, p0

    .line 60
    new-array v1, v0, [I

    .line 61
    new-array v2, v0, [Ljava/lang/String;

    .line 62
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_1

    .line 66
    aget-byte v5, p0, v4

    and-int/lit16 v5, v5, 0xff

    aput v5, v1, v4

    .line 67
    aget v5, v1, v4

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 68
    :goto_1
    aget-object v5, v2, v4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_0

    .line 69
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v2, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    goto :goto_1

    .line 71
    :cond_0
    aget-object v5, v2, v4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    .line 72
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 74
    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static byteArrayReverse([B)[B
    .locals 3

    const/4 v0, 0x0

    .line 26
    :goto_0
    array-length v1, p0

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_0

    .line 27
    aget-byte v1, p0, v0

    .line 28
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v0

    aget-byte v2, p0, v2

    aput-byte v2, p0, v0

    .line 29
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v0

    aput-byte v1, p0, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static getNubmerLength(J)I
    .locals 0

    long-to-double p0, p0

    .line 354
    invoke-static {p0, p1}, Ljava/lang/Math;->log10(D)D

    move-result-wide p0

    double-to-int p0, p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static hexString2BinaryString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    if-eqz p0, :cond_2

    .line 307
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    const-string v1, ""

    .line 311
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 312
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0000"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v0, 0x1

    .line 314
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x10

    .line 313
    invoke-static {v0, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 315
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move v0, v3

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static int2ByteArray(ILjava/nio/ByteOrder;)[B
    .locals 1

    const/4 v0, 0x4

    .line 242
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 243
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 244
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 245
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method public static int2ByteArrayLSB(I)[B
    .locals 5

    shr-int/lit8 v0, p0, 0x18

    int-to-byte v0, v0

    shl-int/lit8 v1, p0, 0x8

    shr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    shl-int/lit8 v2, p0, 0x10

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    shl-int/lit8 p0, p0, 0x18

    shr-int/lit8 p0, p0, 0x18

    int-to-byte p0, p0

    const/4 v3, 0x4

    new-array v3, v3, [B

    const/4 v4, 0x0

    aput-byte p0, v3, v4

    const/4 p0, 0x1

    aput-byte v2, v3, p0

    const/4 p0, 0x2

    aput-byte v1, v3, p0

    const/4 p0, 0x3

    aput-byte v0, v3, p0

    return-object v3
.end method

.method public static int2ByteArrayLSB2(I)[B
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [B

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const v1, 0xff00

    and-int/2addr p0, v1

    shr-int/lit8 p0, p0, 0x8

    int-to-byte p0, p0

    const/4 v1, 0x1

    aput-byte p0, v0, v1

    return-object v0
.end method

.method private static parseInt(Ljava/lang/String;)I
    .locals 3

    .line 322
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    const/16 v2, 0x20

    if-ne v2, v0, :cond_0

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 324
    invoke-static {p0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    const v0, 0x7fffffff

    add-int/2addr p0, v0

    add-int/2addr p0, v2

    neg-int p0, p0

    return p0

    .line 326
    :cond_0
    invoke-static {p0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static string2ByteArray(Ljava/lang/String;)[B
    .locals 5

    const-string v0, " "

    const-string v1, ""

    .line 144
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 145
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 146
    div-int/lit8 v1, v0, 0x2

    .line 147
    rem-int/lit8 v0, v0, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    add-int/lit8 v1, v1, 0x1

    .line 152
    :cond_0
    new-array v0, v1, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    mul-int/lit8 v3, v2, 0x2

    add-int/lit8 v4, v3, 0x2

    .line 154
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method
