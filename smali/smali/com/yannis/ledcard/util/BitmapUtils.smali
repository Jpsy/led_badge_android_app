.class public Lcom/yannis/ledcard/util/BitmapUtils;
.super Ljava/lang/Object;
.source "BitmapUtils.java"


# static fields
.field private static final APP_DIR:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "BitmapUtils"

.field private static final sdCardDirPath:Ljava/lang/String;

.field private static sdf:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yannis/ledcard/util/BitmapUtils;->sdCardDirPath:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LED_BMP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yannis/ledcard/util/BitmapUtils;->APP_DIR:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v2, "yyyyMMddHHmmss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/yannis/ledcard/util/BitmapUtils;->sdf:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertToBMW(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 12

    .line 54
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 56
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    mul-int v0, v8, v9

    .line 58
    new-array v10, v0, [I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v10

    move v3, v8

    move v6, v8

    move v7, v9

    .line 60
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 p0, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v9, :cond_5

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v8, :cond_4

    mul-int v2, v8, v0

    add-int/2addr v2, v1

    .line 64
    aget v3, v10, v2

    const/high16 v4, -0x1000000

    and-int v5, v3, v4

    shr-int/lit8 v5, v5, 0x18

    const/high16 v6, 0xff0000

    and-int/2addr v6, v3

    shr-int/lit8 v6, v6, 0x10

    const v7, 0xff00

    and-int/2addr v7, v3

    shr-int/lit8 v7, v7, 0x8

    const/16 v11, 0xff

    and-int/2addr v3, v11

    if-le v6, p1, :cond_0

    const/16 v6, 0xff

    goto :goto_2

    :cond_0
    const/4 v6, 0x0

    :goto_2
    if-le v3, p1, :cond_1

    const/16 v3, 0xff

    goto :goto_3

    :cond_1
    const/4 v3, 0x0

    :goto_3
    if-le v7, p1, :cond_2

    goto :goto_4

    :cond_2
    const/4 v11, 0x0

    :goto_4
    shl-int/lit8 v5, v5, 0x18

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    shl-int/lit8 v6, v11, 0x8

    or-int/2addr v5, v6

    or-int/2addr v3, v5

    .line 85
    aput v3, v10, v2

    .line 87
    aget v3, v10, v2

    const/4 v5, -0x1

    if-ne v3, v5, :cond_3

    .line 88
    aput v5, v10, v2

    goto :goto_5

    .line 90
    :cond_3
    aput v4, v10, v2

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
    :cond_5
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v10

    move v3, v8

    move v6, v8

    move v7, v9

    .line 97
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 98
    invoke-static {p0, v8, v9}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static convertToBMW(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .locals 12

    .line 111
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 113
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    mul-int v0, v8, v9

    .line 115
    new-array v10, v0, [I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v10

    move v3, v8

    move v6, v8

    move v7, v9

    .line 118
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 p0, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v9, :cond_5

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v8, :cond_4

    mul-int v2, v8, v0

    add-int/2addr v2, v1

    .line 122
    aget v3, v10, v2

    const/high16 v4, -0x1000000

    and-int v5, v3, v4

    shr-int/lit8 v5, v5, 0x18

    const/high16 v6, 0xff0000

    and-int/2addr v6, v3

    shr-int/lit8 v6, v6, 0x10

    const v7, 0xff00

    and-int/2addr v7, v3

    shr-int/lit8 v7, v7, 0x8

    const/16 v11, 0xff

    and-int/2addr v3, v11

    if-le v6, p3, :cond_0

    const/16 v6, 0xff

    goto :goto_2

    :cond_0
    const/4 v6, 0x0

    :goto_2
    if-le v3, p3, :cond_1

    const/16 v3, 0xff

    goto :goto_3

    :cond_1
    const/4 v3, 0x0

    :goto_3
    if-le v7, p3, :cond_2

    goto :goto_4

    :cond_2
    const/4 v11, 0x0

    :goto_4
    shl-int/lit8 v5, v5, 0x18

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    shl-int/lit8 v6, v11, 0x8

    or-int/2addr v5, v6

    or-int/2addr v3, v5

    .line 143
    aput v3, v10, v2

    .line 145
    aget v3, v10, v2

    const/4 v5, -0x1

    if-ne v3, v5, :cond_3

    .line 146
    aput v5, v10, v2

    goto :goto_5

    .line 148
    :cond_3
    aput v4, v10, v2

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 153
    :cond_5
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v10

    move v3, v8

    move v6, v8

    move v7, v9

    .line 155
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 156
    invoke-static {p0, p1, p2}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static deleteFile(Ljava/lang/String;)Z
    .locals 1

    .line 208
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 210
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static generateFileName()Ljava/lang/String;
    .locals 3

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LEDBmp_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/yannis/ledcard/util/BitmapUtils;->sdf:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static generateFilePath()Ljava/lang/String;
    .locals 2

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/yannis/ledcard/util/BitmapUtils;->sdCardDirPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/yannis/ledcard/util/BitmapUtils;->APP_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/yannis/ledcard/util/BitmapUtils;->generateFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBitmapSaveDir()Ljava/lang/String;
    .locals 2

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/yannis/ledcard/util/BitmapUtils;->sdCardDirPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/yannis/ledcard/util/BitmapUtils;->APP_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBitmapWithName(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 4

    const-string v0, "[LED"

    .line 354
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v1, "]"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, ""

    .line 355
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 356
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 357
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 358
    sget-object v1, Lcom/yannis/ledcard/LedBleApplication;->instance:Lcom/yannis/ledcard/LedBleApplication;

    const/16 v3, 0xb

    invoke-virtual {v1, v0, v3}, Lcom/yannis/ledcard/LedBleApplication;->getLEDBmpById(II)Lcom/yannis/ledcard/bean/LEDBmp;

    move-result-object v0

    .line 360
    invoke-virtual {v0}, Lcom/yannis/ledcard/bean/LEDBmp;->getFilePath()Ljava/lang/String;

    move-result-object v0

    .line 361
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 362
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 363
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBitmapWithName --- name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " width = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " ---- height = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "BitmapUtils"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    invoke-static {v0, p1, p2}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v2
.end method

.method public static getBmpDir()Ljava/lang/String;
    .locals 2

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/yannis/ledcard/util/BitmapUtils;->sdCardDirPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/yannis/ledcard/util/BitmapUtils;->APP_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static loadBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 3

    .line 181
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 182
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 183
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 184
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v2, -0x1

    .line 185
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 186
    invoke-virtual {p0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method public static loadBitmapFromView(Landroid/view/View;IIZ)Landroid/graphics/Bitmap;
    .locals 2

    .line 191
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 192
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-eqz p3, :cond_0

    .line 196
    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p3

    goto :goto_0

    .line 199
    :cond_0
    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 201
    :goto_0
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, -0x1

    .line 202
    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 203
    invoke-virtual {p0, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 204
    invoke-static {p3, p1, p2}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private parseMessage(Landroid/content/Context;Ljava/lang/String;Landroid/widget/EditText;)V
    .locals 6

    .line 374
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v1, "\\[(\\S+?)\\]"

    .line 375
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 376
    invoke-virtual {v1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    .line 377
    :goto_0
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 378
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    .line 379
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    .line 380
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    .line 381
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "399"

    .line 382
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    new-instance v3, Lcom/yannis/ledcard/widget/LEDView;

    invoke-direct {v3, p1}, Lcom/yannis/ledcard/widget/LEDView;-><init>(Landroid/content/Context;)V

    .line 384
    new-instance v4, Landroid/text/style/ImageSpan;

    invoke-static {v3}, Lcom/yannis/ledcard/util/BitmapUtils;->loadBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v4, p1, v3}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    const/16 v3, 0x21

    .line 385
    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 387
    :cond_0
    sget-object p1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p3, v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method

.method public static saveBitmapToBmpFile(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 177
    invoke-static {}, Lcom/yannis/ledcard/util/BitmapUtils;->generateFileName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yannis/ledcard/util/BitmapUtils;->saveBitmapToBmpFile(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-void
.end method

.method public static saveBitmapToBmpFile(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 13

    if-nez p0, :cond_0

    return-void

    .line 227
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 228
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/lit8 v2, v0, 0x3

    .line 230
    rem-int/lit8 v3, v0, 0x4

    add-int/2addr v3, v2

    mul-int v3, v3, v1

    .line 233
    :try_start_0
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/yannis/ledcard/util/BitmapUtils;->sdCardDirPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/yannis/ledcard/util/BitmapUtils;->APP_DIR:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 234
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    const-string v6, "mounted"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 236
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 237
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v5

    const-string v6, "BitmapUtils"

    .line 238
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u65b0\u5efa\u6587\u4ef6 dir = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " fileName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " isOK = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_1
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 242
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_2

    .line 243
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 245
    :cond_2
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v4, 0x4d42

    add-int/lit8 v5, v3, 0x36

    int-to-long v5, v5

    const-wide/16 v7, 0x36

    .line 253
    invoke-static {p1, v4}, Lcom/yannis/ledcard/util/BitmapUtils;->writeWord(Ljava/io/FileOutputStream;I)V

    .line 254
    invoke-static {p1, v5, v6}, Lcom/yannis/ledcard/util/BitmapUtils;->writeDWord(Ljava/io/FileOutputStream;J)V

    const/4 v4, 0x0

    .line 255
    invoke-static {p1, v4}, Lcom/yannis/ledcard/util/BitmapUtils;->writeWord(Ljava/io/FileOutputStream;I)V

    .line 256
    invoke-static {p1, v4}, Lcom/yannis/ledcard/util/BitmapUtils;->writeWord(Ljava/io/FileOutputStream;I)V

    .line 257
    invoke-static {p1, v7, v8}, Lcom/yannis/ledcard/util/BitmapUtils;->writeDWord(Ljava/io/FileOutputStream;J)V

    const-wide/16 v5, 0x28

    const/16 v7, 0x18

    .line 269
    invoke-static {p1, v5, v6}, Lcom/yannis/ledcard/util/BitmapUtils;->writeDWord(Ljava/io/FileOutputStream;J)V

    int-to-long v5, v0

    .line 270
    invoke-static {p1, v5, v6}, Lcom/yannis/ledcard/util/BitmapUtils;->writeLong(Ljava/io/FileOutputStream;J)V

    int-to-long v5, v1

    .line 271
    invoke-static {p1, v5, v6}, Lcom/yannis/ledcard/util/BitmapUtils;->writeLong(Ljava/io/FileOutputStream;J)V

    const/4 v5, 0x1

    .line 272
    invoke-static {p1, v5}, Lcom/yannis/ledcard/util/BitmapUtils;->writeWord(Ljava/io/FileOutputStream;I)V

    .line 273
    invoke-static {p1, v7}, Lcom/yannis/ledcard/util/BitmapUtils;->writeWord(Ljava/io/FileOutputStream;I)V

    const-wide/16 v5, 0x0

    .line 274
    invoke-static {p1, v5, v6}, Lcom/yannis/ledcard/util/BitmapUtils;->writeDWord(Ljava/io/FileOutputStream;J)V

    .line 275
    invoke-static {p1, v5, v6}, Lcom/yannis/ledcard/util/BitmapUtils;->writeDWord(Ljava/io/FileOutputStream;J)V

    .line 276
    invoke-static {p1, v5, v6}, Lcom/yannis/ledcard/util/BitmapUtils;->writeLong(Ljava/io/FileOutputStream;J)V

    .line 277
    invoke-static {p1, v5, v6}, Lcom/yannis/ledcard/util/BitmapUtils;->writeLong(Ljava/io/FileOutputStream;J)V

    .line 278
    invoke-static {p1, v5, v6}, Lcom/yannis/ledcard/util/BitmapUtils;->writeDWord(Ljava/io/FileOutputStream;J)V

    .line 279
    invoke-static {p1, v5, v6}, Lcom/yannis/ledcard/util/BitmapUtils;->writeDWord(Ljava/io/FileOutputStream;J)V

    .line 281
    new-array v3, v3, [B

    .line 282
    rem-int/lit8 v5, v0, 0x4

    add-int/2addr v2, v5

    add-int/lit8 v5, v1, -0x1

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v1, :cond_4

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1
    if-ge v7, v0, :cond_3

    .line 285
    invoke-virtual {p0, v7, v6}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v9

    mul-int v10, v5, v2

    add-int/2addr v10, v8

    .line 286
    invoke-static {v9}, Landroid/graphics/Color;->blue(I)I

    move-result v11

    int-to-byte v11, v11

    aput-byte v11, v3, v10

    add-int/lit8 v11, v10, 0x1

    .line 287
    invoke-static {v9}, Landroid/graphics/Color;->green(I)I

    move-result v12

    int-to-byte v12, v12

    aput-byte v12, v3, v11

    add-int/lit8 v10, v10, 0x2

    .line 288
    invoke-static {v9}, Landroid/graphics/Color;->red(I)I

    move-result v9

    int-to-byte v9, v9

    aput-byte v9, v3, v10

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v8, 0x3

    goto :goto_1

    :cond_3
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 292
    :cond_4
    invoke-virtual {p1, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 293
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V

    .line 294
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 296
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public static scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 0

    .line 168
    invoke-static {p0, p1, p2}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static writeDWord(Ljava/io/FileOutputStream;J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [B

    const-wide/16 v1, 0xff

    and-long v3, p1, v1

    long-to-int v4, v3

    int-to-byte v3, v4

    const/4 v4, 0x0

    aput-byte v3, v0, v4

    const/16 v3, 0x8

    shr-long v3, p1, v3

    and-long/2addr v3, v1

    long-to-int v4, v3

    int-to-byte v3, v4

    const/4 v4, 0x1

    aput-byte v3, v0, v4

    const/16 v3, 0x10

    shr-long v3, p1, v3

    and-long/2addr v3, v1

    long-to-int v4, v3

    int-to-byte v3, v4

    const/4 v4, 0x2

    aput-byte v3, v0, v4

    const/16 v3, 0x18

    shr-long/2addr p1, v3

    and-long/2addr p1, v1

    long-to-int p2, p1

    int-to-byte p1, p2

    const/4 p2, 0x3

    aput-byte p1, v0, p2

    .line 313
    invoke-virtual {p0, v0}, Ljava/io/FileOutputStream;->write([B)V

    return-void
.end method

.method private static writeLong(Ljava/io/FileOutputStream;J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [B

    const-wide/16 v1, 0xff

    and-long v3, p1, v1

    long-to-int v4, v3

    int-to-byte v3, v4

    const/4 v4, 0x0

    aput-byte v3, v0, v4

    const/16 v3, 0x8

    shr-long v3, p1, v3

    and-long/2addr v3, v1

    long-to-int v4, v3

    int-to-byte v3, v4

    const/4 v4, 0x1

    aput-byte v3, v0, v4

    const/16 v3, 0x10

    shr-long v3, p1, v3

    and-long/2addr v3, v1

    long-to-int v4, v3

    int-to-byte v3, v4

    const/4 v4, 0x2

    aput-byte v3, v0, v4

    const/16 v3, 0x18

    shr-long/2addr p1, v3

    and-long/2addr p1, v1

    long-to-int p2, p1

    int-to-byte p1, p2

    const/4 p2, 0x3

    aput-byte p1, v0, p2

    .line 322
    invoke-virtual {p0, v0}, Ljava/io/FileOutputStream;->write([B)V

    return-void
.end method

.method private static writeWord(Ljava/io/FileOutputStream;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [B

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    shr-int/lit8 p1, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v1, 0x1

    aput-byte p1, v0, v1

    .line 304
    invoke-virtual {p0, v0}, Ljava/io/FileOutputStream;->write([B)V

    return-void
.end method
