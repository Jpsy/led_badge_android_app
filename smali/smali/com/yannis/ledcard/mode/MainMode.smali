.class public Lcom/yannis/ledcard/mode/MainMode;
.super Ljava/lang/Object;
.source "MainMode.java"

# interfaces
.implements Lcom/yannis/ledcard/contract/MainContract$Mode;


# static fields
.field public static picture11:[[B

.field public static picture11Content:[Ljava/lang/String;

.field public static picture12:[[B

.field public static picture12Content:[Ljava/lang/String;

.field public static picture16:[[B

.field public static picture16Content:[Ljava/lang/String;


# instance fields
.field private byteArrays:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation
.end field

.field private matrix:I

.field private msgByteLength:I

.field private sendPackageSizeCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 19

    const/16 v0, 0x10

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "0000111000000110001100010000000100101000101010101010101100000000011000000000101010001010010011100100011000110000001110000"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "0001110000000010100000000101111110010000000111000000111000000000010000000011100000000001000000001111110000000100011111111"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "0000001000000000100000000111111100010000010001000001000100000010001000000010010000000010010000000010010011101000011000100"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "1100000000111000000111110000111111100011111111011111111111111111111101111111111000111111110000111111100000011111000000001"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-string v2, "0011111110000100000100111111111110101010101001010101010010101010100101010101001010101010010101010100101010101001111111110"

    const/4 v7, 0x4

    aput-object v2, v1, v7

    const-string v2, "0000000000000000000000111111111111100000001110100000101100100010011010101010111000100011111111111110000000000000000000000"

    const/4 v8, 0x5

    aput-object v2, v1, v8

    const-string v2, "0000010010000001110100000111111000011111110001111111110111111111110011111110000110001100001100011000011000110000111111100"

    const/4 v9, 0x6

    aput-object v2, v1, v9

    const-string v2, "0000010000001000100010001011101000001000100000100000100111000001110010000010000010001000001011101000100010001000000100000"

    const/4 v10, 0x7

    aput-object v2, v1, v10

    const-string v2, "0000001000000000100000000011000000001100000000111000000011111111000000011100000000110000000011000000000100000000010000000"

    const/16 v11, 0x8

    aput-object v2, v1, v11

    const-string v2, "0000111000000110001100010001000100100010001010000100001100001110011000000000101000000010010000000100011000110000001110000"

    const/16 v12, 0x9

    aput-object v2, v1, v12

    const-string v2, "0111111111010000000001100000000011001101100110011011001100000000011000000000101111000110000010010000001011000000111000000"

    const/16 v13, 0xa

    aput-object v2, v1, v13

    const-string v2, "1100010000001000100001010001000100101010101001001110010001001001000010000010000011111000000000000000011000110000110001100"

    const/16 v14, 0xb

    aput-object v2, v1, v14

    const-string v2, "0010000010001010001010001000001000010000010000100000100111111111111111111111111110001111110000000111100000001110000000001"

    const/16 v15, 0xc

    aput-object v2, v1, v15

    const-string v2, "0000000000011111111000101000110001001010100011011001000100111010001010001100011111111000011111111000001111111100000000000"

    const/16 v16, 0xd

    aput-object v2, v1, v16

    const-string v2, "0001111100000100000100001000001000010000010000100000100001000001000010000010000100000100001111111000011101110000011111000"

    const/16 v17, 0xe

    aput-object v2, v1, v17

    const-string v2, "0011000110001001010010100001000011000000000110000000001100000000010100000001000100000100000100010000000101000000000100000"

    const/16 v18, 0xf

    aput-object v2, v1, v18

    .line 26
    sput-object v1, Lcom/yannis/ledcard/mode/MainMode;->picture11Content:[Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "000011110000001100001100010000000010010100001010101010010101100000000001100000000001100000000001010010010010010001100010001100001100000011110000"

    aput-object v2, v1, v3

    const-string v2, "000111000000000101000000000101000000001101111111111000000001000000001111000000000001000000001111000000000001000000001111111100000001000111111111"

    aput-object v2, v1, v4

    const-string v2, "000000010000000000100000000111111110011000000100010000001000100000001000100000001000100000000100010000000010010000000001001001110010000110001100"

    aput-object v2, v1, v5

    const-string v2, "110000000001110000000111110000011111110001111111110111111111111111111111110111111111110001111111110000011111110000000111110000000001000000000000"

    aput-object v2, v1, v6

    const-string v2, "001111111100001000000100001000000100111111111111010010010010010010010010010010010010010010010010010010010010010010010010010010010010011111111110"

    aput-object v2, v1, v7

    const-string v2, "000000000000000000000000111111111110110000000110101000001010100100010010100110110010101001001010110000000110111111111110000000000000000000000000"

    aput-object v2, v1, v8

    const-string v2, "000001001000000011101000000111111000001111111000011111111100111111111110011111111100011100011100011100011100011100011100011111111100011111111100"

    aput-object v2, v1, v9

    const-string v2, "000001000000010001000100001011101000000100010000001000001000111000001110001000001000000100010000001011101000010001000100000001000000000000000000"

    aput-object v2, v1, v10

    const-string v2, "000000001100000000011000000000111000000001110000000011110000000111111110001111111100000001111000000001110000000011100000000011000000000110000000"

    aput-object v2, v1, v11

    const-string v2, "000011100000001100011000010001000100010001000100100001000010100001110010100000000010010000000100010000000100001100011000000011100000000000000000"

    aput-object v2, v1, v12

    const-string v2, "011111111110100000000001100000000001101101101101101101101101100000000001100000000001011111110010000000100100000001011000000011100000000000000000"

    aput-object v2, v1, v13

    const-string v2, "000000000000110000100000010000100001010000100001001010101010001001110010000100100100000110001100000011111000000000000000000110001100000110001100"

    aput-object v2, v1, v14

    const-string v2, "001000001000010100010100001000001000001000001000111111111110101010101010111111111110111111111110100100010010101000001010110000000110100000000010"

    aput-object v2, v1, v15

    const-string v2, "111111111100100000000100101111110100101010110100101101010100101111110100100000000100111111111100011111111110011111111110001111111111000000000000"

    aput-object v2, v1, v16

    const-string v2, "001111111100010000000010010000000010010000000010010000000010011111111110011110011110011101101110011101101110011110011110011111111110001111111100"

    aput-object v2, v1, v17

    const-string v2, "001100011000011110111100111011101110110001000110110000000110110000000110011000001100001100011000000110110000000011100000000001000000000000000000"

    aput-object v2, v1, v18

    .line 45
    sput-object v1, Lcom/yannis/ledcard/mode/MainMode;->picture12Content:[Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "0000011111000000000110000011000000100000000010000100000000000100010010000010010010010100010100101000000000000010100000000000001010000000000000101000001110000010010001000100010001000011100001000010000000001000000110000011000000000111110000000000000000000000"

    aput-object v2, v1, v3

    const-string v2, "0000011100000000000001010000000000000101000000000000010111111100000010000000001000010000000000100010000011111110110000000000001000000000000000100000000011111110000000000000001000000000000000100000000011111110111000000000001000011100000000100000001111111100"

    aput-object v2, v1, v4

    const-string v2, "0000000001100000000000001110000000000001110000000000000110000000000111000011100000111111111111000011111111111000011111111111100001111111111110000111111111111000011111111111100000111111111111000011111111111110000111111111110000011111111110000000111001110000"

    aput-object v2, v1, v5

    const-string v2, "1100000000000010110000000000011011000000000111101100000001111110110000011111111011000111111111101101111111111110111111111111111011011111111111101100011111111110110000011111111011000000011111101100000000011110110000000000011011000000000000100000000000000000"

    aput-object v2, v1, v6

    const-string v2, "0001111111110000000100000001000000010000000100000001000000010000111111111111111000101010101010000010101010101000001010101010100000101010101010000010101010101000001010101010100000101010101010000010101010101000001010101010100000101010101010000011111111111000"

    aput-object v2, v1, v7

    const-string v2, "0000000000000000000000000000000000000000000000001111111111111110110000000000011010100000000010101001000000010010100010000010001010001100011000101001001010010010101000010000101011000000000001101111111111111110000000000000000000000000000000000000000000000000"

    aput-object v2, v1, v8

    const-string v2, "0000000100010000000000111001000000000111110100000000111111110000000111111111000000111111111110000111111111111100111111111111111000111111111110000011111111111000001111000111100000111100011110000011110001111000001111111111100000111111111110000011111111111000"

    aput-object v2, v1, v9

    const-string v2, "0000000100000000000000010000000000100001000010000001001110010000000011000110000000001000001000000001000000010000111100000001111000010000000100000000100000100000000011000110000000010011100100000010000100001000000000010000000000000001000000000000000000000000"

    aput-object v2, v1, v10

    const-string v2, "0000000000100000000000000110000000000000110000000000000111000000000000111000000000000111100000000000111100000000000111111111100000111111111100000000000111100000000000111100000000000011100000000000011100000000000001100000000000001100000000000000100000000000"

    aput-object v2, v1, v11

    const-string v2, "0000011111000000000110000011000000100001000010000100000100000100010000010000010010000001000000101000000100000010100000011111001010000000000000101000000000000010010000000000010001000000000001000010000000001000000110000011000000000111110000000000000000000000"

    aput-object v2, v1, v12

    const-string v2, "0000000000000000011111111111110010000000000000101000000000000010100000000000001010110110110110101011011011011010100000000000001010000000000000101000000000000010011111111000010000000001000110000000001000100000000001001100000000001011000000000001110000000000"

    aput-object v2, v1, v13

    const-string v2, "1100000000000000010000001000000001000000100000000010000010000010001000001000001000100000100000100001000010000100000100001000010000010010101001000000100111001000000010001000100000001000000010000000111111110000000000000000000000011000000110000001100000011000"

    aput-object v2, v1, v14

    const-string v2, "0001000000010000001010000010100000010000000100000001000000010000000100000001000000010000000100001111111111111110101010101010101011111111111111101111111111111110111110000011111011100000000011101100000000000110110000000000011010000000000000101000000000000010"

    aput-object v2, v1, v15

    const-string v2, "0000000000000000000000000000000011111111111110001000000000101000101111111010100010111111101010001010101010101000101111111010100011000000001010001111111111111000011111111111110000111111111111100001111111111111000000000000000000000000000000000000000000000000"

    aput-object v2, v1, v16

    const-string v2, "0000111111110000000100000000100000010000000010000001000000001000000100000000100000010000000010000001000000001000000100000000100000010000000010000001000000001000000100000000100000010000000010000001111111111000000111100111100000011110011110000000111111110000"

    aput-object v2, v1, v17

    const-string v2, "0001100000110000001001000100100001000010100001001000000100000010100000000000001010000000000000101000000000000010100000000000001010000000000000100100000000000100001000000000100000010000000100000000100000100000000001000100000000000010100000000000000100000000"

    aput-object v2, v1, v18

    .line 64
    sput-object v1, Lcom/yannis/ledcard/mode/MainMode;->picture16Content:[Ljava/lang/String;

    new-array v1, v0, [[B

    const/16 v2, 0x16

    new-array v0, v2, [B

    .line 83
    fill-array-data v0, :array_0

    aput-object v0, v1, v3

    new-array v0, v2, [B

    fill-array-data v0, :array_1

    aput-object v0, v1, v4

    new-array v0, v2, [B

    fill-array-data v0, :array_2

    aput-object v0, v1, v5

    new-array v0, v2, [B

    fill-array-data v0, :array_3

    aput-object v0, v1, v6

    new-array v0, v2, [B

    fill-array-data v0, :array_4

    aput-object v0, v1, v7

    new-array v0, v2, [B

    fill-array-data v0, :array_5

    aput-object v0, v1, v8

    new-array v0, v2, [B

    fill-array-data v0, :array_6

    aput-object v0, v1, v9

    new-array v0, v2, [B

    fill-array-data v0, :array_7

    aput-object v0, v1, v10

    new-array v0, v2, [B

    fill-array-data v0, :array_8

    aput-object v0, v1, v11

    new-array v0, v2, [B

    fill-array-data v0, :array_9

    aput-object v0, v1, v12

    new-array v0, v2, [B

    fill-array-data v0, :array_a

    aput-object v0, v1, v13

    new-array v0, v2, [B

    fill-array-data v0, :array_b

    aput-object v0, v1, v14

    new-array v0, v2, [B

    fill-array-data v0, :array_c

    aput-object v0, v1, v15

    new-array v0, v2, [B

    fill-array-data v0, :array_d

    aput-object v0, v1, v16

    new-array v0, v2, [B

    fill-array-data v0, :array_e

    aput-object v0, v1, v17

    new-array v0, v2, [B

    fill-array-data v0, :array_f

    aput-object v0, v1, v18

    sput-object v1, Lcom/yannis/ledcard/mode/MainMode;->picture11:[[B

    const/16 v0, 0x10

    new-array v1, v0, [[B

    const/16 v0, 0x18

    new-array v2, v0, [B

    .line 102
    fill-array-data v2, :array_10

    aput-object v2, v1, v3

    new-array v2, v0, [B

    fill-array-data v2, :array_11

    aput-object v2, v1, v4

    new-array v2, v0, [B

    fill-array-data v2, :array_12

    aput-object v2, v1, v5

    new-array v2, v0, [B

    fill-array-data v2, :array_13

    aput-object v2, v1, v6

    new-array v2, v0, [B

    fill-array-data v2, :array_14

    aput-object v2, v1, v7

    new-array v2, v0, [B

    fill-array-data v2, :array_15

    aput-object v2, v1, v8

    new-array v2, v0, [B

    fill-array-data v2, :array_16

    aput-object v2, v1, v9

    new-array v2, v0, [B

    fill-array-data v2, :array_17

    aput-object v2, v1, v10

    new-array v2, v0, [B

    fill-array-data v2, :array_18

    aput-object v2, v1, v11

    new-array v2, v0, [B

    fill-array-data v2, :array_19

    aput-object v2, v1, v12

    new-array v2, v0, [B

    fill-array-data v2, :array_1a

    aput-object v2, v1, v13

    new-array v2, v0, [B

    fill-array-data v2, :array_1b

    aput-object v2, v1, v14

    new-array v2, v0, [B

    fill-array-data v2, :array_1c

    aput-object v2, v1, v15

    new-array v2, v0, [B

    fill-array-data v2, :array_1d

    aput-object v2, v1, v16

    new-array v2, v0, [B

    fill-array-data v2, :array_1e

    aput-object v2, v1, v17

    new-array v0, v0, [B

    fill-array-data v0, :array_1f

    aput-object v0, v1, v18

    sput-object v1, Lcom/yannis/ledcard/mode/MainMode;->picture12:[[B

    const/16 v0, 0x10

    new-array v0, v0, [[B

    const/16 v1, 0x20

    new-array v2, v1, [B

    .line 120
    fill-array-data v2, :array_20

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_21

    aput-object v2, v0, v4

    new-array v2, v1, [B

    fill-array-data v2, :array_22

    aput-object v2, v0, v5

    new-array v2, v1, [B

    fill-array-data v2, :array_23

    aput-object v2, v0, v6

    new-array v2, v1, [B

    fill-array-data v2, :array_24

    aput-object v2, v0, v7

    new-array v2, v1, [B

    fill-array-data v2, :array_25

    aput-object v2, v0, v8

    new-array v2, v1, [B

    fill-array-data v2, :array_26

    aput-object v2, v0, v9

    new-array v2, v1, [B

    fill-array-data v2, :array_27

    aput-object v2, v0, v10

    new-array v2, v1, [B

    fill-array-data v2, :array_28

    aput-object v2, v0, v11

    new-array v2, v1, [B

    fill-array-data v2, :array_29

    aput-object v2, v0, v12

    new-array v2, v1, [B

    fill-array-data v2, :array_2a

    aput-object v2, v0, v13

    new-array v2, v1, [B

    fill-array-data v2, :array_2b

    aput-object v2, v0, v14

    new-array v2, v1, [B

    fill-array-data v2, :array_2c

    aput-object v2, v0, v15

    new-array v2, v1, [B

    fill-array-data v2, :array_2d

    aput-object v2, v0, v16

    new-array v2, v1, [B

    fill-array-data v2, :array_2e

    aput-object v2, v0, v17

    new-array v1, v1, [B

    fill-array-data v1, :array_2f

    aput-object v1, v0, v18

    sput-object v0, Lcom/yannis/ledcard/mode/MainMode;->picture16:[[B

    return-void

    nop

    :array_0
    .array-data 1
        0xet
        0x0t
        0x31t
        -0x80t
        0x40t
        0x40t
        0x51t
        0x40t
        -0x56t
        -0x60t
        -0x80t
        0x20t
        -0x80t
        0x20t
        0x51t
        0x40t
        0x4et
        0x40t
        0x31t
        -0x80t
        0xet
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x1ct
        0x0t
        0x14t
        0x0t
        0x17t
        -0x20t
        0x20t
        0x20t
        -0x40t
        -0x20t
        0x0t
        0x20t
        0x0t
        -0x20t
        0x0t
        0x20t
        0x0t
        -0x20t
        -0x20t
        0x20t
        0x1ft
        -0x20t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x2t
        0x0t
        0x4t
        0x0t
        0x1ft
        -0x40t
        0x20t
        -0x80t
        0x41t
        0x0t
        -0x7ft
        0x0t
        -0x80t
        -0x80t
        -0x80t
        0x40t
        0x40t
        0x20t
        0x27t
        0x40t
        0x18t
        -0x80t
    .end array-data

    nop

    :array_3
    .array-data 1
        -0x40t
        0x20t
        -0x40t
        -0x20t
        -0x3dt
        -0x20t
        -0x39t
        -0x20t
        -0x21t
        -0x20t
        -0x1t
        -0x20t
        -0x21t
        -0x20t
        -0x39t
        -0x20t
        -0x3dt
        -0x20t
        -0x40t
        -0x20t
        -0x40t
        0x20t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x3ft
        -0x80t
        0x20t
        -0x80t
        -0x1t
        -0x20t
        0x55t
        0x40t
        0x55t
        0x40t
        0x55t
        0x40t
        0x55t
        0x40t
        0x55t
        0x40t
        0x55t
        0x40t
        0x55t
        0x40t
        0x7ft
        -0x40t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        -0x1t
        -0x20t
        -0x40t
        0x60t
        -0x60t
        -0x60t
        -0x6ft
        0x20t
        -0x56t
        -0x60t
        -0x3ct
        0x60t
        -0x1t
        -0x20t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x4t
        -0x80t
        0xet
        -0x80t
        0x1ft
        -0x80t
        0x3ft
        -0x80t
        0x7ft
        -0x40t
        -0x1t
        -0x20t
        0x3ft
        -0x80t
        0x31t
        -0x80t
        0x31t
        -0x80t
        0x31t
        -0x80t
        0x3ft
        -0x80t
    .end array-data

    nop

    :array_7
    .array-data 1
        0x4t
        0x0t
        0x44t
        0x40t
        0x2et
        -0x80t
        0x11t
        0x0t
        0x20t
        -0x80t
        -0x20t
        -0x20t
        0x20t
        -0x80t
        0x11t
        0x0t
        0x2et
        -0x80t
        0x44t
        0x40t
        0x4t
        0x0t
    .end array-data

    nop

    :array_8
    .array-data 1
        0x2t
        0x0t
        0x4t
        0x0t
        0xct
        0x0t
        0x18t
        0x0t
        0x38t
        0x0t
        0x7ft
        -0x80t
        0x7t
        0x0t
        0x6t
        0x0t
        0xct
        0x0t
        0x8t
        0x0t
        0x10t
        0x0t
    .end array-data

    nop

    :array_9
    .array-data 1
        0xet
        0x0t
        0x31t
        -0x80t
        0x44t
        0x40t
        0x44t
        0x40t
        -0x7ct
        0x20t
        -0x79t
        0x20t
        -0x80t
        0x20t
        0x40t
        0x40t
        0x40t
        0x40t
        0x31t
        -0x80t
        0xet
        0x0t
    .end array-data

    nop

    :array_a
    .array-data 1
        0x7ft
        -0x40t
        -0x80t
        0x20t
        -0x80t
        0x20t
        -0x65t
        0x20t
        -0x65t
        0x20t
        -0x80t
        0x20t
        -0x80t
        0x20t
        0x78t
        -0x40t
        0x9t
        0x0t
        0x16t
        0x0t
        0x38t
        0x0t
    .end array-data

    nop

    :array_b
    .array-data 1
        -0x3ct
        0x0t
        0x44t
        0x20t
        0x44t
        0x40t
        0x55t
        0x40t
        0x4et
        0x40t
        0x24t
        -0x80t
        0x20t
        -0x80t
        0x1ft
        0x0t
        0x0t
        0x0t
        0x31t
        -0x80t
        0x31t
        -0x80t
    .end array-data

    nop

    :array_c
    .array-data 1
        0x20t
        -0x80t
        0x51t
        0x40t
        0x20t
        -0x80t
        0x20t
        -0x80t
        0x20t
        -0x80t
        -0x1t
        -0x20t
        -0x1t
        -0x20t
        -0xft
        -0x20t
        -0x40t
        0x60t
        -0x40t
        0x60t
        -0x80t
        0x20t
    .end array-data

    nop

    :array_d
    .array-data 1
        0x0t
        0x0t
        -0x1t
        0x0t
        -0x5dt
        0x0t
        -0x6bt
        0x0t
        -0x27t
        0x0t
        -0x63t
        0x0t
        -0x5dt
        0x0t
        -0x1t
        0x0t
        0x7ft
        -0x80t
        0x1ft
        -0x20t
        0x0t
        0x0t
    .end array-data

    nop

    :array_e
    .array-data 1
        0x1ft
        0x0t
        0x20t
        -0x80t
        0x20t
        -0x80t
        0x20t
        -0x80t
        0x20t
        -0x80t
        0x20t
        -0x80t
        0x20t
        -0x80t
        0x20t
        -0x80t
        0x3ft
        -0x80t
        0x3bt
        -0x80t
        0x1ft
        0x0t
    .end array-data

    nop

    :array_f
    .array-data 1
        0x31t
        -0x80t
        0x4at
        0x40t
        -0x7ct
        0x20t
        -0x80t
        0x20t
        -0x80t
        0x20t
        -0x80t
        0x20t
        0x40t
        0x40t
        0x20t
        -0x80t
        0x11t
        0x0t
        0xat
        0x0t
        0x4t
        0x0t
    .end array-data

    nop

    :array_10
    .array-data 1
        0xft
        0x0t
        0x30t
        -0x40t
        0x40t
        0x20t
        0x50t
        -0x60t
        -0x57t
        0x50t
        -0x80t
        0x10t
        -0x80t
        0x10t
        -0x80t
        0x10t
        0x49t
        0x20t
        0x46t
        0x20t
        0x30t
        -0x40t
        0xft
        0x0t
    .end array-data

    :array_11
    .array-data 1
        0x1ct
        0x0t
        0x14t
        0x0t
        0x14t
        0x0t
        0x37t
        -0x10t
        -0x20t
        0x10t
        0x0t
        -0x10t
        0x0t
        0x10t
        0x0t
        -0x10t
        0x0t
        0x10t
        0x0t
        -0x10t
        -0x10t
        0x10t
        0x1ft
        -0x10t
    .end array-data

    :array_12
    .array-data 1
        0x1t
        0x0t
        0x2t
        0x0t
        0x1ft
        -0x20t
        0x60t
        0x40t
        0x40t
        -0x80t
        -0x80t
        -0x80t
        -0x80t
        -0x80t
        -0x80t
        0x40t
        0x40t
        0x20t
        0x40t
        0x10t
        0x27t
        0x20t
        0x18t
        -0x40t
    .end array-data

    :array_13
    .array-data 1
        -0x40t
        0x10t
        -0x40t
        0x70t
        -0x3ft
        -0x10t
        -0x39t
        -0x10t
        -0x21t
        -0x10t
        -0x1t
        -0x10t
        -0x21t
        -0x10t
        -0x39t
        -0x10t
        -0x3ft
        -0x10t
        -0x40t
        0x70t
        -0x40t
        0x10t
        0x0t
        0x0t
    .end array-data

    :array_14
    .array-data 1
        0x3ft
        -0x40t
        0x20t
        0x40t
        0x20t
        0x40t
        -0x1t
        -0x10t
        0x49t
        0x20t
        0x49t
        0x20t
        0x49t
        0x20t
        0x49t
        0x20t
        0x49t
        0x20t
        0x49t
        0x20t
        0x49t
        0x20t
        0x7ft
        -0x20t
    .end array-data

    :array_15
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        -0x1t
        -0x20t
        -0x40t
        0x60t
        -0x60t
        -0x60t
        -0x6ft
        0x20t
        -0x65t
        0x20t
        -0x5ct
        -0x60t
        -0x40t
        0x60t
        -0x1t
        -0x20t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_16
    .array-data 1
        0x4t
        -0x80t
        0xet
        -0x80t
        0x1ft
        -0x80t
        0x3ft
        -0x80t
        0x7ft
        -0x40t
        -0x1t
        -0x20t
        0x7ft
        -0x40t
        0x71t
        -0x40t
        0x71t
        -0x40t
        0x71t
        -0x40t
        0x7ft
        -0x40t
        0x7ft
        -0x40t
    .end array-data

    :array_17
    .array-data 1
        0x4t
        0x0t
        0x44t
        0x40t
        0x2et
        -0x80t
        0x11t
        0x0t
        0x20t
        -0x80t
        -0x20t
        -0x20t
        0x20t
        -0x80t
        0x11t
        0x0t
        0x2et
        -0x80t
        0x44t
        0x40t
        0x4t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_18
    .array-data 1
        0x0t
        -0x40t
        0x1t
        -0x80t
        0x3t
        -0x80t
        0x7t
        0x0t
        0xft
        0x0t
        0x1ft
        -0x20t
        0x3ft
        -0x40t
        0x7t
        -0x80t
        0x7t
        0x0t
        0xet
        0x0t
        0xct
        0x0t
        0x18t
        0x0t
    .end array-data

    :array_19
    .array-data 1
        0xet
        0x0t
        0x31t
        -0x80t
        0x44t
        0x40t
        0x44t
        0x40t
        -0x7ct
        0x20t
        -0x79t
        0x20t
        -0x80t
        0x20t
        0x40t
        0x40t
        0x40t
        0x40t
        0x31t
        -0x80t
        0xet
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1a
    .array-data 1
        0x7ft
        -0x20t
        -0x80t
        0x10t
        -0x80t
        0x10t
        -0x4at
        -0x30t
        -0x4at
        -0x30t
        -0x80t
        0x10t
        -0x80t
        0x10t
        0x7ft
        0x20t
        0x2t
        0x40t
        0x5t
        -0x80t
        0xet
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1b
    .array-data 1
        0x0t
        0x0t
        -0x3et
        0x0t
        0x42t
        0x10t
        0x42t
        0x10t
        0x2at
        -0x60t
        0x27t
        0x20t
        0x12t
        0x40t
        0x18t
        -0x40t
        0xft
        -0x80t
        0x0t
        0x0t
        0x18t
        -0x40t
        0x18t
        -0x40t
    .end array-data

    :array_1c
    .array-data 1
        0x20t
        -0x80t
        0x51t
        0x40t
        0x20t
        -0x80t
        0x20t
        -0x80t
        -0x1t
        -0x20t
        -0x56t
        -0x60t
        -0x1t
        -0x20t
        -0x1t
        -0x20t
        -0x6ft
        0x20t
        -0x60t
        -0x60t
        -0x40t
        0x60t
        -0x80t
        0x20t
    .end array-data

    :array_1d
    .array-data 1
        -0x1t
        -0x40t
        -0x80t
        0x40t
        -0x41t
        0x40t
        -0x55t
        0x40t
        -0x4bt
        0x40t
        -0x41t
        0x40t
        -0x80t
        0x40t
        -0x1t
        -0x40t
        0x7ft
        -0x20t
        0x7ft
        -0x20t
        0x3ft
        -0x10t
        0x0t
        0x0t
    .end array-data

    :array_1e
    .array-data 1
        0x3ft
        -0x40t
        0x40t
        0x20t
        0x40t
        0x20t
        0x40t
        0x20t
        0x40t
        0x20t
        0x7ft
        -0x20t
        0x79t
        -0x20t
        0x76t
        -0x20t
        0x76t
        -0x20t
        0x79t
        -0x20t
        0x7ft
        -0x20t
        0x3ft
        -0x40t
    .end array-data

    :array_1f
    .array-data 1
        0x31t
        -0x80t
        0x7bt
        -0x40t
        -0x12t
        -0x20t
        -0x3ct
        0x60t
        -0x40t
        0x60t
        -0x40t
        0x60t
        0x60t
        -0x40t
        0x31t
        -0x80t
        0x1bt
        0x0t
        0xet
        0x0t
        0x4t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_20
    .array-data 1
        0x7t
        -0x40t
        0x18t
        0x30t
        0x20t
        0x8t
        0x40t
        0x4t
        0x48t
        0x24t
        -0x6ct
        0x52t
        -0x80t
        0x2t
        -0x80t
        0x2t
        -0x80t
        0x2t
        -0x7dt
        -0x7et
        0x44t
        0x44t
        0x43t
        -0x7ct
        0x20t
        0x8t
        0x18t
        0x30t
        0x7t
        -0x40t
        0x0t
        0x0t
    .end array-data

    :array_21
    .array-data 1
        0x7t
        0x0t
        0x5t
        0x0t
        0x5t
        0x0t
        0x5t
        -0x4t
        0x8t
        0x2t
        0x10t
        0x2t
        0x20t
        -0x2t
        -0x40t
        0x2t
        0x0t
        0x2t
        0x0t
        -0x2t
        0x0t
        0x2t
        0x0t
        0x2t
        0x0t
        -0x2t
        -0x20t
        0x2t
        0x1ct
        0x2t
        0x3t
        -0x4t
    .end array-data

    :array_22
    .array-data 1
        0x0t
        0x60t
        0x0t
        -0x20t
        0x1t
        -0x40t
        0x1t
        -0x80t
        0x1ct
        0x38t
        0x3ft
        -0x4t
        0x3ft
        -0x8t
        0x7ft
        -0x8t
        0x7ft
        -0x8t
        0x7ft
        -0x8t
        0x7ft
        -0x8t
        0x3ft
        -0x4t
        0x3ft
        -0x2t
        0x1ft
        -0x4t
        0x1ft
        -0x8t
        0xet
        0x70t
    .end array-data

    :array_23
    .array-data 1
        -0x40t
        0x2t
        -0x40t
        0x6t
        -0x40t
        0x1et
        -0x40t
        0x7et
        -0x3ft
        -0x2t
        -0x39t
        -0x2t
        -0x21t
        -0x2t
        -0x1t
        -0x2t
        -0x21t
        -0x2t
        -0x39t
        -0x2t
        -0x3ft
        -0x2t
        -0x40t
        0x7et
        -0x40t
        0x1et
        -0x40t
        0x6t
        -0x40t
        0x2t
        0x0t
        0x0t
    .end array-data

    :array_24
    .array-data 1
        0x1ft
        -0x10t
        0x10t
        0x10t
        0x10t
        0x10t
        0x10t
        0x10t
        -0x1t
        -0x2t
        0x2at
        -0x58t
        0x2at
        -0x58t
        0x2at
        -0x58t
        0x2at
        -0x58t
        0x2at
        -0x58t
        0x2at
        -0x58t
        0x2at
        -0x58t
        0x2at
        -0x58t
        0x2at
        -0x58t
        0x2at
        -0x58t
        0x3ft
        -0x8t
    .end array-data

    :array_25
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x1t
        -0x2t
        -0x40t
        0x6t
        -0x60t
        0xat
        -0x70t
        0x12t
        -0x78t
        0x22t
        -0x74t
        0x62t
        -0x6et
        -0x6et
        -0x5ft
        0xat
        -0x40t
        0x6t
        -0x1t
        -0x2t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_26
    .array-data 1
        0x1t
        0x10t
        0x3t
        -0x70t
        0x7t
        -0x30t
        0xft
        -0x10t
        0x1ft
        -0x10t
        0x3ft
        -0x8t
        0x7ft
        -0x4t
        -0x1t
        -0x2t
        0x3ft
        -0x8t
        0x3ft
        -0x8t
        0x3ct
        0x78t
        0x3ct
        0x78t
        0x3ct
        0x78t
        0x3ft
        -0x8t
        0x3ft
        -0x8t
        0x3ft
        -0x8t
    .end array-data

    :array_27
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x0t
        0x21t
        0x8t
        0x13t
        -0x70t
        0xct
        0x60t
        0x8t
        0x20t
        0x10t
        0x10t
        -0x10t
        0x1et
        0x10t
        0x10t
        0x8t
        0x20t
        0xct
        0x60t
        0x13t
        -0x70t
        0x21t
        0x8t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_28
    .array-data 1
        0x0t
        0x20t
        0x0t
        0x60t
        0x0t
        -0x40t
        0x1t
        -0x40t
        0x3t
        -0x80t
        0x7t
        -0x80t
        0xft
        0x0t
        0x1ft
        -0x8t
        0x3ft
        -0x10t
        0x1t
        -0x20t
        0x3t
        -0x40t
        0x3t
        -0x80t
        0x7t
        0x0t
        0x6t
        0x0t
        0xct
        0x0t
        0x8t
        0x0t
    .end array-data

    :array_29
    .array-data 1
        0x7t
        -0x40t
        0x18t
        0x30t
        0x21t
        0x8t
        0x41t
        0x4t
        0x41t
        0x4t
        -0x7ft
        0x2t
        -0x7ft
        0x2t
        -0x7ft
        -0xet
        -0x80t
        0x2t
        -0x80t
        0x2t
        0x40t
        0x4t
        0x40t
        0x4t
        0x20t
        0x8t
        0x18t
        0x30t
        0x7t
        -0x40t
        0x0t
        0x0t
    .end array-data

    :array_2a
    .array-data 1
        0x0t
        0x0t
        0x7ft
        -0x4t
        -0x80t
        0x2t
        -0x80t
        0x2t
        -0x80t
        0x2t
        -0x4at
        -0x26t
        -0x4at
        -0x26t
        -0x80t
        0x2t
        -0x80t
        0x2t
        -0x80t
        0x2t
        0x7ft
        -0x7ct
        0x1t
        0x18t
        0x2t
        0x20t
        0x4t
        -0x40t
        0xbt
        0x0t
        0x1ct
        0x0t
    .end array-data

    :array_2b
    .array-data 1
        -0x40t
        0x0t
        0x40t
        -0x80t
        0x40t
        -0x80t
        0x20t
        -0x7et
        0x20t
        -0x7et
        0x20t
        -0x7et
        0x10t
        -0x7ct
        0x10t
        -0x7ct
        0x12t
        -0x5ct
        0x9t
        -0x38t
        0x8t
        -0x78t
        0x8t
        0x8t
        0xft
        -0x10t
        0x0t
        0x0t
        0x18t
        0x18t
        0x18t
        0x18t
    .end array-data

    :array_2c
    .array-data 1
        0x10t
        0x10t
        0x28t
        0x28t
        0x10t
        0x10t
        0x10t
        0x10t
        0x10t
        0x10t
        0x10t
        0x10t
        -0x1t
        -0x2t
        -0x56t
        -0x56t
        -0x1t
        -0x2t
        -0x1t
        -0x2t
        -0x8t
        0x3et
        -0x20t
        0xet
        -0x40t
        0x6t
        -0x40t
        0x6t
        -0x80t
        0x2t
        -0x80t
        0x2t
    .end array-data

    :array_2d
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        -0x1t
        -0x8t
        -0x80t
        0x28t
        -0x41t
        -0x58t
        -0x41t
        -0x58t
        -0x56t
        -0x58t
        -0x41t
        -0x58t
        -0x40t
        0x28t
        -0x1t
        -0x8t
        0x7ft
        -0x4t
        0x3ft
        -0x2t
        0x1ft
        -0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_2e
    .array-data 1
        0xft
        -0x10t
        0x10t
        0x8t
        0x10t
        0x8t
        0x10t
        0x8t
        0x10t
        0x8t
        0x10t
        0x8t
        0x10t
        0x8t
        0x10t
        0x8t
        0x10t
        0x8t
        0x10t
        0x8t
        0x10t
        0x8t
        0x10t
        0x8t
        0x1ft
        -0x8t
        0x1et
        0x78t
        0x1et
        0x78t
        0xft
        -0x10t
    .end array-data

    :array_2f
    .array-data 1
        0x18t
        0x30t
        0x24t
        0x48t
        0x42t
        -0x7ct
        -0x7ft
        0x2t
        -0x80t
        0x2t
        -0x80t
        0x2t
        -0x80t
        0x2t
        -0x80t
        0x2t
        -0x80t
        0x2t
        0x40t
        0x4t
        0x20t
        0x8t
        0x10t
        0x10t
        0x8t
        0x20t
        0x4t
        0x40t
        0x2t
        -0x80t
        0x1t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 139
    iput v0, p0, Lcom/yannis/ledcard/mode/MainMode;->msgByteLength:I

    .line 149
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yannis/ledcard/mode/MainMode;->byteArrays:Ljava/util/HashMap;

    return-void
.end method

.method private addData64ToByteArray([B)V
    .locals 11

    const/16 v0, 0x10

    new-array v1, v0, [B

    new-array v2, v0, [B

    new-array v3, v0, [B

    new-array v4, v0, [B

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    const/16 v7, 0x40

    if-ge v6, v7, :cond_4

    if-ltz v6, :cond_0

    if-ge v6, v0, :cond_0

    .line 200
    aget-byte v8, p1, v6

    aput-byte v8, v1, v6

    :cond_0
    const/16 v8, 0x20

    if-lt v6, v0, :cond_1

    if-ge v6, v8, :cond_1

    add-int/lit8 v9, v6, -0x10

    .line 203
    aget-byte v10, p1, v6

    aput-byte v10, v2, v9

    :cond_1
    const/16 v9, 0x30

    if-lt v6, v8, :cond_2

    if-ge v6, v9, :cond_2

    add-int/lit8 v8, v6, -0x20

    .line 206
    aget-byte v10, p1, v6

    aput-byte v10, v3, v8

    :cond_2
    if-lt v6, v9, :cond_3

    if-ge v6, v7, :cond_3

    add-int/lit8 v7, v6, -0x30

    .line 209
    aget-byte v8, p1, v6

    aput-byte v8, v4, v7

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    const/4 p1, 0x4

    if-ge v5, p1, :cond_9

    if-nez v5, :cond_5

    .line 214
    iget-object p1, p0, Lcom/yannis/ledcard/mode/MainMode;->byteArrays:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    const/4 p1, 0x1

    if-ne v5, p1, :cond_6

    .line 216
    iget-object p1, p0, Lcom/yannis/ledcard/mode/MainMode;->byteArrays:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    const/4 p1, 0x2

    if-ne v5, p1, :cond_7

    .line 218
    iget-object p1, p0, Lcom/yannis/ledcard/mode/MainMode;->byteArrays:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_7
    const/4 p1, 0x3

    if-ne v5, p1, :cond_8

    .line 220
    iget-object p1, p0, Lcom/yannis/ledcard/mode/MainMode;->byteArrays:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_9
    return-void
.end method

.method private addMatrixData2ByteArray([B)V
    .locals 8

    .line 231
    array-length v0, p1

    .line 233
    div-int/lit8 v1, v0, 0x10

    mul-int/lit8 v2, v1, 0x10

    if-ge v2, v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v2, v1, 0x4

    .line 237
    iput v2, p0, Lcom/yannis/ledcard/mode/MainMode;->sendPackageSizeCount:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    const/16 v4, 0x10

    new-array v5, v4, [B

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v4, :cond_2

    mul-int/lit8 v7, v3, 0x10

    add-int/2addr v7, v6

    if-lt v7, v0, :cond_1

    .line 242
    aput-byte v2, v5, v6

    goto :goto_2

    .line 244
    :cond_1
    aget-byte v7, p1, v7

    aput-byte v7, v5, v6

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 247
    :cond_2
    iget-object v4, p0, Lcom/yannis/ledcard/mode/MainMode;->byteArrays:Ljava/util/HashMap;

    add-int/lit8 v6, v3, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 250
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " \u6570\u636e\u5b57\u8282\u6570 length = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u8bfb\u53d6\u5b57\u5e93\u6570\u636e"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private convertSendByteArray([[B)[B
    .locals 6

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "convertSendByteArray -- \u6570\u636e\u5b57\u8282\u6570 msgByteLength = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/yannis/ledcard/mode/MainMode;->msgByteLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u8bfb\u53d6\u5b57\u5e93\u6570\u636e"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget v0, p0, Lcom/yannis/ledcard/mode/MainMode;->msgByteLength:I

    iget v1, p0, Lcom/yannis/ledcard/mode/MainMode;->matrix:I

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v0, v2, v1

    const-class v0, B

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    const/4 v2, 0x0

    .line 263
    :goto_0
    iget v3, p0, Lcom/yannis/ledcard/mode/MainMode;->msgByteLength:I

    if-ge v2, v3, :cond_1

    const/4 v3, 0x0

    .line 264
    :goto_1
    iget v4, p0, Lcom/yannis/ledcard/mode/MainMode;->matrix:I

    if-ge v3, v4, :cond_0

    .line 265
    aget-object v4, v0, v2

    aget-object v5, p1, v3

    aget-byte v5, v5, v2

    aput-byte v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 268
    :cond_1
    iget p1, p0, Lcom/yannis/ledcard/mode/MainMode;->matrix:I

    mul-int v3, v3, p1

    .line 269
    new-array p1, v3, [B

    const/4 v2, 0x0

    .line 271
    :goto_2
    iget v3, p0, Lcom/yannis/ledcard/mode/MainMode;->msgByteLength:I

    if-ge v2, v3, :cond_3

    .line 272
    iget v3, p0, Lcom/yannis/ledcard/mode/MainMode;->matrix:I

    if-ltz v3, :cond_2

    aget-object v4, v0, v2

    mul-int v5, v2, v3

    invoke-static {v4, v1, p1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    return-object p1
.end method


# virtual methods
.method public getSendHeader(Ljava/util/List;I)[B
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yannis/ledcard/bean/SendContent;",
            ">;I)[B"
        }
    .end annotation

    .line 153
    invoke-static {p1, p2}, Lcom/yannis/ledcard/util/LedDataUtil;->get64(Ljava/util/List;I)[B

    move-result-object p1

    return-object p1
.end method

.method public getSendLedData(Ljava/util/List;I)Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yannis/ledcard/bean/SendContent;",
            ">;I)",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation

    .line 158
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yannis/ledcard/bean/SendContent;

    .line 159
    invoke-virtual {v1}, Lcom/yannis/ledcard/bean/SendContent;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 160
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " msg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u8bfb\u53d6\u5b57\u5e93\u6570\u636e"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x3000

    const/16 v5, 0x20

    .line 161
    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 162
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " length = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-virtual {v1, v2}, Lcom/yannis/ledcard/bean/SendContent;->setMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 166
    :cond_0
    iput p2, p0, Lcom/yannis/ledcard/mode/MainMode;->matrix:I

    .line 167
    iget-object v0, p0, Lcom/yannis/ledcard/mode/MainMode;->byteArrays:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 169
    invoke-static {p2, p1}, Lcom/yannis/ledcard/util/LedDataUtil;->getTotalMessageLength(ILjava/util/List;)I

    move-result v0

    iput v0, p0, Lcom/yannis/ledcard/mode/MainMode;->msgByteLength:I

    const/4 v0, 0x0

    .line 170
    iput v0, p0, Lcom/yannis/ledcard/mode/MainMode;->sendPackageSizeCount:I

    .line 172
    invoke-virtual {p0, p1, p2}, Lcom/yannis/ledcard/mode/MainMode;->getSendHeader(Ljava/util/List;I)[B

    move-result-object v1

    .line 173
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data64 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/yannis/ledcard/util/DataUtils;->byteArray2StringWithSpaces([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "data64"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    sget-object v2, Lcom/yannis/ledcard/LedBleApplication;->instance:Lcom/yannis/ledcard/LedBleApplication;

    invoke-static {v2, p2, p1}, Lcom/yannis/ledcard/util/LedDataUtil;->getMsgBytes1(Landroid/content/Context;ILjava/util/List;)[[B

    move-result-object p1

    .line 176
    aget-object p2, p1, v0

    array-length p2, p2

    iput p2, p0, Lcom/yannis/ledcard/mode/MainMode;->msgByteLength:I

    .line 177
    invoke-direct {p0, p1}, Lcom/yannis/ledcard/mode/MainMode;->convertSendByteArray([[B)[B

    move-result-object p1

    .line 178
    invoke-direct {p0, v1}, Lcom/yannis/ledcard/mode/MainMode;->addData64ToByteArray([B)V

    .line 179
    invoke-direct {p0, p1}, Lcom/yannis/ledcard/mode/MainMode;->addMatrixData2ByteArray([B)V

    .line 180
    iget-object p1, p0, Lcom/yannis/ledcard/mode/MainMode;->byteArrays:Ljava/util/HashMap;

    return-object p1
.end method

.method public getSendPackageSize()I
    .locals 1

    .line 185
    iget v0, p0, Lcom/yannis/ledcard/mode/MainMode;->sendPackageSizeCount:I

    return v0
.end method
