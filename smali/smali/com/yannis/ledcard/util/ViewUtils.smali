.class public Lcom/yannis/ledcard/util/ViewUtils;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blur(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 2

    .line 48
    invoke-static {p1}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object p1

    .line 49
    invoke-static {p1, p0}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object p1

    .line 51
    invoke-virtual {p1, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    const/high16 v1, 0x41c80000    # 25.0f

    .line 52
    invoke-virtual {p1, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 53
    invoke-virtual {p1, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 54
    invoke-virtual {v0, p0}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    return-object p0
.end method

.method public static correctTextY(FLandroid/graphics/Paint;)F
    .locals 1

    .line 102
    invoke-virtual {p1}, Landroid/graphics/Paint;->ascent()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Paint;->descent()F

    move-result p1

    add-float/2addr v0, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v0, p1

    sub-float/2addr p0, v0

    return p0
.end method

.method public static dp2px(Landroid/content/Context;I)I
    .locals 1

    int-to-float p1, p1

    .line 122
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    .line 121
    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public static getColorBetweenAB(IIFI)I
    .locals 3

    const/high16 v0, 0xff0000

    and-int v1, p1, v0

    shr-int/lit8 v1, v1, 0x10

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x10

    sub-int/2addr v1, v0

    int-to-float v1, v1

    div-float/2addr v1, p2

    int-to-float p3, p3

    mul-float v1, v1, p3

    int-to-float v0, v0

    add-float/2addr v1, v0

    const v0, 0xff00

    and-int v2, p1, v0

    and-int/2addr v0, p0

    sub-int/2addr v2, v0

    shr-int/lit8 v2, v2, 0x8

    int-to-float v2, v2

    div-float/2addr v2, p2

    mul-float v2, v2, p3

    shr-int/lit8 v0, v0, 0x8

    int-to-float v0, v0

    add-float/2addr v2, v0

    and-int/lit16 p1, p1, 0xff

    and-int/lit16 p0, p0, 0xff

    sub-int/2addr p1, p0

    int-to-float p1, p1

    div-float/2addr p1, p2

    mul-float p1, p1, p3

    int-to-float p0, p0

    add-float/2addr p1, p0

    float-to-int p0, v1

    float-to-int p2, v2

    float-to-int p1, p1

    .line 39
    invoke-static {p0, p2, p1}, Landroid/graphics/Color;->rgb(III)I

    move-result p0

    return p0
.end method

.method public static getTextHeight(Landroid/graphics/Paint;)F
    .locals 1

    .line 64
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p0

    .line 65
    iget v0, p0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget p0, p0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v0, p0

    return v0
.end method

.method public static getTextRectHeight(Landroid/graphics/Paint;Ljava/lang/String;)F
    .locals 3

    .line 85
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 86
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v1, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 87
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public static getTextRectWidth(Landroid/graphics/Paint;Ljava/lang/String;)F
    .locals 3

    .line 74
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 75
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v1, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 76
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method public static pixelsToDp(Landroid/content/Context;F)F
    .locals 1

    .line 114
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 115
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 116
    iget p0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p0, p0

    const/high16 v0, 0x43200000    # 160.0f

    div-float/2addr p0, v0

    div-float/2addr p1, p0

    return p1
.end method

.method public static px2Dp(ILandroid/content/Context;)F
    .locals 0

    int-to-float p0, p0

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float p0, p0, p1

    return p0
.end method
