.class public Lcom/yannis/ledcard/widget/LEDView;
.super Landroid/view/View;
.source "LEDView.java"


# instance fields
.field private backgroundColor:I

.field private bias:F

.field private h:I

.field private isCanTouch:Z

.field private ledBeadRadius:F

.field private ledBrightColor:I

.field private ledColSize:I

.field private ledData:Ljava/lang/String;

.field private ledSize:I

.field private lightOffColor:I

.field private mPaint:Landroid/graphics/Paint;

.field private startTouchTime:J

.field private startX:F

.field private startY:F

.field private w:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, "#F8171D"

    .line 32
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/yannis/ledcard/widget/LEDView;->ledBrightColor:I

    const-string p1, "#ABADA8"

    .line 36
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/yannis/ledcard/widget/LEDView;->lightOffColor:I

    const-string p1, "#FFFFFF"

    .line 40
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/yannis/ledcard/widget/LEDView;->backgroundColor:I

    const/16 p1, 0xb

    .line 45
    iput p1, p0, Lcom/yannis/ledcard/widget/LEDView;->ledSize:I

    .line 49
    iput p1, p0, Lcom/yannis/ledcard/widget/LEDView;->ledColSize:I

    const/4 p1, 0x0

    .line 63
    iput p1, p0, Lcom/yannis/ledcard/widget/LEDView;->startX:F

    .line 64
    iput p1, p0, Lcom/yannis/ledcard/widget/LEDView;->startY:F

    const/4 v0, 0x1

    .line 65
    iput-boolean v0, p0, Lcom/yannis/ledcard/widget/LEDView;->isCanTouch:Z

    .line 66
    iput p1, p0, Lcom/yannis/ledcard/widget/LEDView;->bias:F

    .line 73
    invoke-direct {p0}, Lcom/yannis/ledcard/widget/LEDView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, p1, p2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, "#F8171D"

    .line 32
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/yannis/ledcard/widget/LEDView;->ledBrightColor:I

    const-string p1, "#ABADA8"

    .line 36
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/yannis/ledcard/widget/LEDView;->lightOffColor:I

    const-string p1, "#FFFFFF"

    .line 40
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/yannis/ledcard/widget/LEDView;->backgroundColor:I

    const/16 p1, 0xb

    .line 45
    iput p1, p0, Lcom/yannis/ledcard/widget/LEDView;->ledSize:I

    .line 49
    iput p1, p0, Lcom/yannis/ledcard/widget/LEDView;->ledColSize:I

    const/4 p1, 0x0

    .line 63
    iput p1, p0, Lcom/yannis/ledcard/widget/LEDView;->startX:F

    .line 64
    iput p1, p0, Lcom/yannis/ledcard/widget/LEDView;->startY:F

    const/4 p2, 0x1

    .line 65
    iput-boolean p2, p0, Lcom/yannis/ledcard/widget/LEDView;->isCanTouch:Z

    .line 66
    iput p1, p0, Lcom/yannis/ledcard/widget/LEDView;->bias:F

    .line 78
    invoke-direct {p0}, Lcom/yannis/ledcard/widget/LEDView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 82
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, "#F8171D"

    .line 32
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/yannis/ledcard/widget/LEDView;->ledBrightColor:I

    const-string p1, "#ABADA8"

    .line 36
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/yannis/ledcard/widget/LEDView;->lightOffColor:I

    const-string p1, "#FFFFFF"

    .line 40
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/yannis/ledcard/widget/LEDView;->backgroundColor:I

    const/16 p1, 0xb

    .line 45
    iput p1, p0, Lcom/yannis/ledcard/widget/LEDView;->ledSize:I

    .line 49
    iput p1, p0, Lcom/yannis/ledcard/widget/LEDView;->ledColSize:I

    const/4 p1, 0x0

    .line 63
    iput p1, p0, Lcom/yannis/ledcard/widget/LEDView;->startX:F

    .line 64
    iput p1, p0, Lcom/yannis/ledcard/widget/LEDView;->startY:F

    const/4 p2, 0x1

    .line 65
    iput-boolean p2, p0, Lcom/yannis/ledcard/widget/LEDView;->isCanTouch:Z

    .line 66
    iput p1, p0, Lcom/yannis/ledcard/widget/LEDView;->bias:F

    .line 83
    invoke-direct {p0}, Lcom/yannis/ledcard/widget/LEDView;->init()V

    return-void
.end method

.method private drawAllLedBead(Landroid/graphics/Canvas;I)V
    .locals 7

    .line 165
    invoke-virtual {p0}, Lcom/yannis/ledcard/widget/LEDView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "_pix"

    const/16 v2, 0xb

    invoke-static {v0, v1, v2}, Lcom/yannis/ledcard/util/PrefUtils;->getIntFromPrefs(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yannis/ledcard/widget/LEDView;->ledSize:I

    .line 166
    invoke-virtual {p0}, Lcom/yannis/ledcard/widget/LEDView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 167
    iget v1, p0, Lcom/yannis/ledcard/widget/LEDView;->ledSize:I

    if-ne p2, v1, :cond_0

    .line 168
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, p0, Lcom/yannis/ledcard/widget/LEDView;->w:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/yannis/ledcard/widget/LEDView;->bias:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 170
    iput v0, p0, Lcom/yannis/ledcard/widget/LEDView;->bias:F

    .line 171
    :goto_0
    iget-object v0, p0, Lcom/yannis/ledcard/widget/LEDView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/yannis/ledcard/widget/LEDView;->lightOffColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 172
    :goto_1
    iget v2, p0, Lcom/yannis/ledcard/widget/LEDView;->ledSize:I

    if-ge v1, v2, :cond_2

    const/4 v2, 0x0

    :goto_2
    if-ge v2, p2, :cond_1

    int-to-float v3, v2

    .line 174
    iget v4, p0, Lcom/yannis/ledcard/widget/LEDView;->ledBeadRadius:F

    mul-float v3, v3, v4

    const/high16 v5, 0x40000000    # 2.0f

    mul-float v3, v3, v5

    add-float/2addr v3, v4

    iget v6, p0, Lcom/yannis/ledcard/widget/LEDView;->bias:F

    add-float/2addr v3, v6

    int-to-float v6, v1

    mul-float v6, v6, v4

    mul-float v6, v6, v5

    add-float/2addr v6, v4

    .line 177
    iget-object v5, p0, Lcom/yannis/ledcard/widget/LEDView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v6, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private drawBrightLedBead(Landroid/graphics/Canvas;Ljava/lang/String;)V
    .locals 7

    .line 190
    iget-object v0, p0, Lcom/yannis/ledcard/widget/LEDView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/yannis/ledcard/widget/LEDView;->ledBrightColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 191
    invoke-virtual {p0}, Lcom/yannis/ledcard/widget/LEDView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "_pix"

    const/16 v2, 0xb

    invoke-static {v0, v1, v2}, Lcom/yannis/ledcard/util/PrefUtils;->getIntFromPrefs(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yannis/ledcard/widget/LEDView;->ledSize:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 192
    :goto_0
    iget v2, p0, Lcom/yannis/ledcard/widget/LEDView;->ledSize:I

    if-ge v1, v2, :cond_2

    const/4 v2, 0x0

    .line 193
    :goto_1
    iget v3, p0, Lcom/yannis/ledcard/widget/LEDView;->ledColSize:I

    if-ge v2, v3, :cond_1

    .line 194
    invoke-direct {p0, p2, v1, v2}, Lcom/yannis/ledcard/widget/LEDView;->isLEDBeadBright(Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_0

    int-to-float v3, v2

    .line 196
    iget v4, p0, Lcom/yannis/ledcard/widget/LEDView;->ledBeadRadius:F

    mul-float v3, v3, v4

    const/high16 v5, 0x40000000    # 2.0f

    mul-float v3, v3, v5

    add-float/2addr v3, v4

    iget v6, p0, Lcom/yannis/ledcard/widget/LEDView;->bias:F

    add-float/2addr v3, v6

    int-to-float v6, v1

    mul-float v6, v6, v4

    mul-float v6, v6, v5

    add-float/2addr v6, v4

    .line 198
    iget-object v5, p0, Lcom/yannis/ledcard/widget/LEDView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v6, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private drawMoveDot(ZFF)V
    .locals 8

    const/4 v0, 0x0

    .line 300
    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 301
    invoke-static {v0, p3}, Ljava/lang/Math;->max(FF)F

    move-result p3

    .line 302
    iget v0, p0, Lcom/yannis/ledcard/widget/LEDView;->ledBeadRadius:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v2, v0, v1

    div-float v2, p3, v2

    float-to-int v2, v2

    .line 303
    iget v3, p0, Lcom/yannis/ledcard/widget/LEDView;->bias:F

    sub-float v3, p2, v3

    mul-float v0, v0, v1

    div-float/2addr v3, v0

    float-to-int v0, v3

    add-int/lit8 v3, v2, 0x1

    .line 304
    iget v4, p0, Lcom/yannis/ledcard/widget/LEDView;->ledSize:I

    if-gt v3, v4, :cond_4

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lcom/yannis/ledcard/widget/LEDView;->ledColSize:I

    if-le v3, v4, :cond_0

    goto/16 :goto_2

    :cond_0
    mul-int v4, v4, v2

    add-int/2addr v4, v0

    .line 307
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\n "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\u70b9\u51fb\u4e8b\u4ef6 "

    const-string v6, "\u89e6\u6478\u4e8b\u4ef6"

    if-eqz p1, :cond_1

    move-object v7, v5

    goto :goto_0

    :cond_1
    move-object v7, v6

    :goto_0
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " \u683c\u5b50Size = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/yannis/ledcard/widget/LEDView;->ledBeadRadius:F

    mul-float v7, v7, v1

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",\u6b63\u5728\u6ed1\u52a8  [ x = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ", y = "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, " ] -- Index [ X = "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", Y = "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " ] index = "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "PY"

    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    new-instance p2, Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/yannis/ledcard/widget/LEDView;->ledData:Ljava/lang/String;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lcom/yannis/ledcard/widget/LEDView;->ledData:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt v4, v0, :cond_4

    const-string v0, "1"

    if-eqz p1, :cond_2

    .line 310
    iget-object v1, p0, Lcom/yannis/ledcard/widget/LEDView;->ledData:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x31

    if-ne v1, v2, :cond_2

    const-string v0, "0"

    .line 311
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move-object v5, v6

    :goto_1
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " \u5750\u6807 = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " \u72b6\u6001 = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 p1, v4, 0x1

    .line 312
    invoke-virtual {p2, v4, p1, v0}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yannis/ledcard/widget/LEDView;->ledData:Ljava/lang/String;

    .line 314
    invoke-virtual {p0}, Lcom/yannis/ledcard/widget/LEDView;->invalidate()V

    :cond_4
    :goto_2
    return-void
.end method

.method public static getDefaultSize(II)I
    .locals 2

    .line 116
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 117
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move p0, p1

    :goto_0
    return p0
.end method

.method private init()V
    .locals 2

    .line 134
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/yannis/ledcard/widget/LEDView;->mPaint:Landroid/graphics/Paint;

    .line 135
    invoke-direct {p0}, Lcom/yannis/ledcard/widget/LEDView;->initLEDData()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yannis/ledcard/widget/LEDView;->ledData:Ljava/lang/String;

    return-void
.end method

.method private initLEDData()Ljava/lang/String;
    .locals 4

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    invoke-virtual {p0}, Lcom/yannis/ledcard/widget/LEDView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "_pix"

    const/16 v3, 0xb

    invoke-static {v1, v2, v3}, Lcom/yannis/ledcard/util/PrefUtils;->getIntFromPrefs(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/yannis/ledcard/widget/LEDView;->ledSize:I

    const/4 v1, 0x0

    .line 142
    :goto_0
    iget v2, p0, Lcom/yannis/ledcard/widget/LEDView;->ledSize:I

    mul-int v2, v2, v2

    if-ge v1, v2, :cond_0

    const-string v2, "0"

    .line 143
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 145
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isLEDBeadBright(Ljava/lang/String;II)Z
    .locals 2

    .line 214
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 217
    :cond_0
    iget v0, p0, Lcom/yannis/ledcard/widget/LEDView;->ledColSize:I

    mul-int p2, p2, v0

    add-int/2addr p2, p3

    .line 218
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 p2, 0x31

    if-ne p1, p2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method


# virtual methods
.method public clear()V
    .locals 3

    .line 245
    invoke-direct {p0}, Lcom/yannis/ledcard/widget/LEDView;->initLEDData()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yannis/ledcard/widget/LEDView;->ledData:Ljava/lang/String;

    .line 246
    invoke-virtual {p0}, Lcom/yannis/ledcard/widget/LEDView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "_pix"

    const/16 v2, 0xb

    invoke-static {v0, v1, v2}, Lcom/yannis/ledcard/util/PrefUtils;->getIntFromPrefs(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yannis/ledcard/widget/LEDView;->ledSize:I

    .line 247
    iget v1, p0, Lcom/yannis/ledcard/widget/LEDView;->w:I

    int-to-float v1, v1

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v0, v0, v2

    div-float/2addr v1, v0

    iput v1, p0, Lcom/yannis/ledcard/widget/LEDView;->ledBeadRadius:F

    .line 248
    invoke-virtual {p0}, Lcom/yannis/ledcard/widget/LEDView;->invalidate()V

    return-void
.end method

.method public getLedData()Ljava/lang/String;
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/yannis/ledcard/widget/LEDView;->ledData:Ljava/lang/String;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 150
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 151
    invoke-virtual {p0}, Lcom/yannis/ledcard/widget/LEDView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "_pix"

    const/16 v2, 0xb

    invoke-static {v0, v1, v2}, Lcom/yannis/ledcard/util/PrefUtils;->getIntFromPrefs(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yannis/ledcard/widget/LEDView;->ledSize:I

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ledColSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/yannis/ledcard/widget/LEDView;->ledColSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ledData = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yannis/ledcard/widget/LEDView;->ledData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "888888"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget v0, p0, Lcom/yannis/ledcard/widget/LEDView;->ledColSize:I

    invoke-direct {p0, p1, v0}, Lcom/yannis/ledcard/widget/LEDView;->drawAllLedBead(Landroid/graphics/Canvas;I)V

    .line 154
    iget-object v0, p0, Lcom/yannis/ledcard/widget/LEDView;->ledData:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/yannis/ledcard/widget/LEDView;->ledSize:I

    iget v2, p0, Lcom/yannis/ledcard/widget/LEDView;->ledColSize:I

    mul-int v1, v1, v2

    if-ne v0, v1, :cond_0

    .line 155
    iget-object v0, p0, Lcom/yannis/ledcard/widget/LEDView;->ledData:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/yannis/ledcard/widget/LEDView;->drawBrightLedBead(Landroid/graphics/Canvas;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 99
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 100
    invoke-virtual {p0}, Lcom/yannis/ledcard/widget/LEDView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "col size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/yannis/ledcard/widget/LEDView;->ledColSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LEDView OnMeasure"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget v1, p0, Lcom/yannis/ledcard/widget/LEDView;->ledColSize:I

    int-to-float v1, v1

    iget v2, p0, Lcom/yannis/ledcard/widget/LEDView;->ledBeadRadius:F

    mul-float v1, v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v1, v1, v2

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    const/16 v4, 0xb

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_0

    .line 103
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0, p1}, Lcom/yannis/ledcard/widget/LEDView;->getDefaultSize(II)I

    move-result p1

    invoke-virtual {p0}, Lcom/yannis/ledcard/widget/LEDView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/yannis/ledcard/util/ViewUtils;->dp2px(Landroid/content/Context;I)I

    move-result v0

    invoke-static {v0, p2}, Lcom/yannis/ledcard/widget/LEDView;->getDefaultSize(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/yannis/ledcard/widget/LEDView;->setMeasuredDimension(II)V

    goto :goto_0

    :cond_0
    const-string v0, "LONG PIC"

    const-string v1, ">>>>>>>>>IS A LONG PIC"

    .line 105
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget v0, p0, Lcom/yannis/ledcard/widget/LEDView;->ledColSize:I

    int-to-float v0, v0

    iget v1, p0, Lcom/yannis/ledcard/widget/LEDView;->ledBeadRadius:F

    mul-float v0, v0, v1

    mul-float v0, v0, v2

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0, p1}, Lcom/yannis/ledcard/widget/LEDView;->getDefaultSize(II)I

    move-result p1

    invoke-virtual {p0}, Lcom/yannis/ledcard/widget/LEDView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/yannis/ledcard/util/ViewUtils;->dp2px(Landroid/content/Context;I)I

    move-result v0

    invoke-static {v0, p2}, Lcom/yannis/ledcard/widget/LEDView;->getDefaultSize(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/yannis/ledcard/widget/LEDView;->setMeasuredDimension(II)V

    :goto_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .line 88
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/yannis/ledcard/widget/LEDView;->h:I

    .line 89
    invoke-virtual {p0}, Lcom/yannis/ledcard/widget/LEDView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "_pix"

    const/16 v0, 0xb

    invoke-static {p1, p2, v0}, Lcom/yannis/ledcard/util/PrefUtils;->getIntFromPrefs(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/yannis/ledcard/widget/LEDView;->ledSize:I

    .line 90
    iget p2, p0, Lcom/yannis/ledcard/widget/LEDView;->h:I

    int-to-float v0, p2

    int-to-float p1, p1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float p1, p1, v1

    div-float/2addr v0, p1

    iput v0, p0, Lcom/yannis/ledcard/widget/LEDView;->ledBeadRadius:F

    .line 91
    iput p2, p0, Lcom/yannis/ledcard/widget/LEDView;->w:I

    .line 92
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\u521d\u59cb\u5316\u6570\u636e  \u5bbd\u9ad8[ width = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/yannis/ledcard/widget/LEDView;->w:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", height = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/yannis/ledcard/widget/LEDView;->h:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " ]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PY"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u521d\u59cb\u5316\u6570\u636e  \u76f4\u5f84 = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/yannis/ledcard/widget/LEDView;->ledBeadRadius:F

    mul-float v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", \u534a\u5f84 = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/yannis/ledcard/widget/LEDView;->ledBeadRadius:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget p1, p0, Lcom/yannis/ledcard/widget/LEDView;->w:I

    iget p2, p0, Lcom/yannis/ledcard/widget/LEDView;->h:I

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 263
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const-string v1, "PY"

    if-eqz v0, :cond_4

    const/4 v2, 0x1

    const/high16 v3, 0x41200000    # 10.0f

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto/16 :goto_0

    .line 272
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 273
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 274
    iget v2, p0, Lcom/yannis/ledcard/widget/LEDView;->startX:F

    sub-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1

    iget v2, p0, Lcom/yannis/ledcard/widget/LEDView;->startY:F

    sub-float v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1

    goto/16 :goto_0

    .line 277
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start  [ x = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/yannis/ledcard/widget/LEDView;->startX:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", y = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/yannis/ledcard/widget/LEDView;->startY:F

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " ] Move  [ x = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " ] \u89e6\u6478\u5dee  [ x = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/yannis/ledcard/widget/LEDView;->startX:F

    sub-float v4, v0, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/yannis/ledcard/widget/LEDView;->startY:F

    sub-float v3, p1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " ] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 278
    invoke-direct {p0, v1, v0, p1}, Lcom/yannis/ledcard/widget/LEDView;->drawMoveDot(ZFF)V

    goto/16 :goto_0

    .line 281
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 282
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 283
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 284
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u677e\u5f00-------startTouchTime = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lcom/yannis/ledcard/widget/LEDView;->startTouchTime:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " -- endTouchTime = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " \u65f6\u5dee = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lcom/yannis/ledcard/widget/LEDView;->startTouchTime:J

    sub-long v7, v4, v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u677e\u5f00 startX = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/yannis/ledcard/widget/LEDView;->startX:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ", startY = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/yannis/ledcard/widget/LEDView;->startY:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u677e\u5f00 endX = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ", endY = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-wide v6, p0, Lcom/yannis/ledcard/widget/LEDView;->startTouchTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x1f4

    cmp-long v8, v4, v6

    if-gtz v8, :cond_3

    .line 288
    iget v4, p0, Lcom/yannis/ledcard/widget/LEDView;->startX:F

    sub-float v4, v0, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v3

    if-gtz v4, :cond_3

    iget v4, p0, Lcom/yannis/ledcard/widget/LEDView;->startY:F

    sub-float v4, p1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v3, v4, v3

    if-gtz v3, :cond_3

    const-string v3, "\u70b9\u51fb\u4e8b\u4ef6"

    .line 289
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-direct {p0, v2, v0, p1}, Lcom/yannis/ledcard/widget/LEDView;->drawMoveDot(ZFF)V

    :cond_3
    const-string p1, "\u677e\u5f00"

    .line 293
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 265
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/yannis/ledcard/widget/LEDView;->startTouchTime:J

    const-string v0, "\u6309\u4e0b"

    .line 266
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/yannis/ledcard/widget/LEDView;->startX:F

    .line 269
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/yannis/ledcard/widget/LEDView;->startY:F

    .line 296
    :goto_0
    iget-boolean p1, p0, Lcom/yannis/ledcard/widget/LEDView;->isCanTouch:Z

    return p1
.end method

.method public reverse()V
    .locals 5

    .line 252
    iget-object v0, p0, Lcom/yannis/ledcard/widget/LEDView;->ledData:Ljava/lang/String;

    const/16 v1, 0x30

    const/16 v2, 0x32

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yannis/ledcard/widget/LEDView;->ledData:Ljava/lang/String;

    const/16 v3, 0x31

    const/16 v4, 0x33

    .line 253
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yannis/ledcard/widget/LEDView;->ledData:Ljava/lang/String;

    .line 254
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yannis/ledcard/widget/LEDView;->ledData:Ljava/lang/String;

    .line 255
    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yannis/ledcard/widget/LEDView;->ledData:Ljava/lang/String;

    .line 256
    invoke-virtual {p0}, Lcom/yannis/ledcard/widget/LEDView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "_pix"

    const/16 v2, 0xb

    invoke-static {v0, v1, v2}, Lcom/yannis/ledcard/util/PrefUtils;->getIntFromPrefs(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yannis/ledcard/widget/LEDView;->ledSize:I

    .line 257
    iget v1, p0, Lcom/yannis/ledcard/widget/LEDView;->w:I

    int-to-float v1, v1

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v0, v0, v2

    div-float/2addr v1, v0

    iput v1, p0, Lcom/yannis/ledcard/widget/LEDView;->ledBeadRadius:F

    .line 258
    invoke-virtual {p0}, Lcom/yannis/ledcard/widget/LEDView;->invalidate()V

    return-void
.end method

.method public setIsCanTouch(Z)V
    .locals 0

    .line 237
    iput-boolean p1, p0, Lcom/yannis/ledcard/widget/LEDView;->isCanTouch:Z

    return-void
.end method

.method public setLEDData(Ljava/lang/String;)V
    .locals 3

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLEDData - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "888888"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    invoke-direct {p0}, Lcom/yannis/ledcard/widget/LEDView;->initLEDData()Ljava/lang/String;

    move-result-object p1

    .line 229
    :cond_0
    invoke-virtual {p0}, Lcom/yannis/ledcard/widget/LEDView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xb

    const-string v2, "_pix"

    invoke-static {v0, v2, v1}, Lcom/yannis/ledcard/util/PrefUtils;->getIntFromPrefs(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yannis/ledcard/widget/LEDView;->ledSize:I

    .line 230
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/yannis/ledcard/widget/LEDView;->ledSize:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/yannis/ledcard/widget/LEDView;->ledColSize:I

    .line 231
    iget v0, p0, Lcom/yannis/ledcard/widget/LEDView;->w:I

    int-to-float v0, v0

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v1, v1, v2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/yannis/ledcard/widget/LEDView;->ledBeadRadius:F

    .line 232
    iput-object p1, p0, Lcom/yannis/ledcard/widget/LEDView;->ledData:Ljava/lang/String;

    .line 233
    invoke-virtual {p0}, Lcom/yannis/ledcard/widget/LEDView;->invalidate()V

    return-void
.end method
