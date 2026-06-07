.class public Lcom/yannis/ledcard/widget/ItemView;
.super Landroid/view/View;
.source "ItemView.java"


# static fields
.field private static final MARGIN_LEFT_RIGHT_OF_WIDTH:F = 0.05f

.field private static final TEXT_SIZE_OF_HEIGHT_SCALE:F = 0.2857143f


# instance fields
.field private hasBottomLine:Z

.field private hasTopLine:Z

.field private height:I

.field private label:Ljava/lang/String;

.field private labelColor:I

.field private lineColor:I

.field private marginLR:F

.field private paint:Landroid/graphics/Paint;

.field private strokeWidth:F

.field private textSize:F

.field private value:Ljava/lang/String;

.field private valueColor:I

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x40800000    # 4.0f

    .line 38
    iput p1, p0, Lcom/yannis/ledcard/widget/ItemView;->strokeWidth:F

    .line 46
    invoke-direct {p0}, Lcom/yannis/ledcard/widget/ItemView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x40800000    # 4.0f

    .line 38
    iput v0, p0, Lcom/yannis/ledcard/widget/ItemView;->strokeWidth:F

    .line 51
    sget-object v0, Lcom/yannis/ledcard/R$styleable;->ItemView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x2

    .line 52
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/yannis/ledcard/widget/ItemView;->label:Ljava/lang/String;

    const/4 p2, 0x5

    .line 53
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/yannis/ledcard/widget/ItemView;->value:Ljava/lang/String;

    const/4 p2, 0x0

    .line 54
    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yannis/ledcard/widget/ItemView;->hasBottomLine:Z

    const/4 v0, 0x1

    .line 55
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/yannis/ledcard/widget/ItemView;->hasTopLine:Z

    const-string p2, "#D9D9D9"

    .line 56
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    const/4 v0, 0x4

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/yannis/ledcard/widget/ItemView;->lineColor:I

    const-string p2, "#FFFFFF"

    .line 57
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    const/4 v0, 0x3

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/yannis/ledcard/widget/ItemView;->labelColor:I

    const-string p2, "#F0F3F3"

    .line 58
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    const/4 v0, 0x6

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/yannis/ledcard/widget/ItemView;->valueColor:I

    .line 59
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 61
    iget-object p1, p0, Lcom/yannis/ledcard/widget/ItemView;->label:Ljava/lang/String;

    const-string p2, ""

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/yannis/ledcard/widget/ItemView;->label:Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    move-object p1, p2

    :goto_1
    iput-object p1, p0, Lcom/yannis/ledcard/widget/ItemView;->label:Ljava/lang/String;

    .line 62
    iget-object p1, p0, Lcom/yannis/ledcard/widget/ItemView;->value:Ljava/lang/String;

    if-eqz p1, :cond_3

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    iget-object p2, p0, Lcom/yannis/ledcard/widget/ItemView;->value:Ljava/lang/String;

    :cond_3
    :goto_2
    iput-object p2, p0, Lcom/yannis/ledcard/widget/ItemView;->value:Ljava/lang/String;

    .line 63
    invoke-direct {p0}, Lcom/yannis/ledcard/widget/ItemView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, 0x40800000    # 4.0f

    .line 38
    iput p1, p0, Lcom/yannis/ledcard/widget/ItemView;->strokeWidth:F

    .line 69
    invoke-direct {p0}, Lcom/yannis/ledcard/widget/ItemView;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    .line 74
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/yannis/ledcard/widget/ItemView;->paint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/yannis/ledcard/widget/ItemView;->value:Ljava/lang/String;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 89
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 90
    iget-object v0, p0, Lcom/yannis/ledcard/widget/ItemView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/yannis/ledcard/widget/ItemView;->lineColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 91
    iget-object v0, p0, Lcom/yannis/ledcard/widget/ItemView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/yannis/ledcard/widget/ItemView;->strokeWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 92
    iget-boolean v0, p0, Lcom/yannis/ledcard/widget/ItemView;->hasBottomLine:Z

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    .line 93
    iget v0, p0, Lcom/yannis/ledcard/widget/ItemView;->height:I

    int-to-float v3, v0

    iget v1, p0, Lcom/yannis/ledcard/widget/ItemView;->width:I

    int-to-float v4, v1

    int-to-float v5, v0

    iget-object v6, p0, Lcom/yannis/ledcard/widget/ItemView;->paint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 96
    :cond_0
    iget-boolean v0, p0, Lcom/yannis/ledcard/widget/ItemView;->hasTopLine:Z

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 97
    iget v0, p0, Lcom/yannis/ledcard/widget/ItemView;->width:I

    int-to-float v4, v0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/yannis/ledcard/widget/ItemView;->paint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/yannis/ledcard/widget/ItemView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/yannis/ledcard/widget/ItemView;->textSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 100
    iget-object v0, p0, Lcom/yannis/ledcard/widget/ItemView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/yannis/ledcard/widget/ItemView;->labelColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 101
    iget-object v0, p0, Lcom/yannis/ledcard/widget/ItemView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 102
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v0, :cond_2

    .line 104
    iget-object v0, p0, Lcom/yannis/ledcard/widget/ItemView;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 105
    iget-object v0, p0, Lcom/yannis/ledcard/widget/ItemView;->label:Ljava/lang/String;

    iget v3, p0, Lcom/yannis/ledcard/widget/ItemView;->width:I

    int-to-float v3, v3

    iget v4, p0, Lcom/yannis/ledcard/widget/ItemView;->marginLR:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/yannis/ledcard/widget/ItemView;->height:I

    int-to-float v4, v4

    div-float/2addr v4, v2

    iget-object v5, p0, Lcom/yannis/ledcard/widget/ItemView;->paint:Landroid/graphics/Paint;

    invoke-static {v4, v5}, Lcom/yannis/ledcard/util/ViewUtils;->correctTextY(FLandroid/graphics/Paint;)F

    move-result v4

    iget-object v5, p0, Lcom/yannis/ledcard/widget/ItemView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 107
    :cond_2
    iget-object v0, p0, Lcom/yannis/ledcard/widget/ItemView;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 108
    iget-object v0, p0, Lcom/yannis/ledcard/widget/ItemView;->label:Ljava/lang/String;

    iget v3, p0, Lcom/yannis/ledcard/widget/ItemView;->marginLR:F

    iget v4, p0, Lcom/yannis/ledcard/widget/ItemView;->height:I

    int-to-float v4, v4

    div-float/2addr v4, v2

    iget-object v5, p0, Lcom/yannis/ledcard/widget/ItemView;->paint:Landroid/graphics/Paint;

    invoke-static {v4, v5}, Lcom/yannis/ledcard/util/ViewUtils;->correctTextY(FLandroid/graphics/Paint;)F

    move-result v4

    iget-object v5, p0, Lcom/yannis/ledcard/widget/ItemView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 110
    :goto_0
    iget-object v0, p0, Lcom/yannis/ledcard/widget/ItemView;->paint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/yannis/ledcard/widget/ItemView;->textSize:F

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 111
    iget-object v0, p0, Lcom/yannis/ledcard/widget/ItemView;->paint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/yannis/ledcard/widget/ItemView;->valueColor:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 112
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 114
    iget-object v0, p0, Lcom/yannis/ledcard/widget/ItemView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 115
    iget-object v0, p0, Lcom/yannis/ledcard/widget/ItemView;->value:Ljava/lang/String;

    iget v1, p0, Lcom/yannis/ledcard/widget/ItemView;->marginLR:F

    iget v3, p0, Lcom/yannis/ledcard/widget/ItemView;->height:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    iget-object v2, p0, Lcom/yannis/ledcard/widget/ItemView;->paint:Landroid/graphics/Paint;

    invoke-static {v3, v2}, Lcom/yannis/ledcard/util/ViewUtils;->correctTextY(FLandroid/graphics/Paint;)F

    move-result v2

    iget-object v3, p0, Lcom/yannis/ledcard/widget/ItemView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 117
    :cond_3
    iget-object v0, p0, Lcom/yannis/ledcard/widget/ItemView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 118
    iget-object v0, p0, Lcom/yannis/ledcard/widget/ItemView;->value:Ljava/lang/String;

    iget v1, p0, Lcom/yannis/ledcard/widget/ItemView;->width:I

    int-to-float v1, v1

    iget v3, p0, Lcom/yannis/ledcard/widget/ItemView;->marginLR:F

    sub-float/2addr v1, v3

    iget v3, p0, Lcom/yannis/ledcard/widget/ItemView;->height:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    iget-object v2, p0, Lcom/yannis/ledcard/widget/ItemView;->paint:Landroid/graphics/Paint;

    invoke-static {v3, v2}, Lcom/yannis/ledcard/util/ViewUtils;->correctTextY(FLandroid/graphics/Paint;)F

    move-result v2

    iget-object v3, p0, Lcom/yannis/ledcard/widget/ItemView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 79
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 80
    iput p1, p0, Lcom/yannis/ledcard/widget/ItemView;->width:I

    .line 81
    iput p2, p0, Lcom/yannis/ledcard/widget/ItemView;->height:I

    int-to-float p2, p2

    const p3, 0x3e924925

    mul-float p2, p2, p3

    .line 82
    iput p2, p0, Lcom/yannis/ledcard/widget/ItemView;->textSize:F

    int-to-float p1, p1

    const p2, 0x3d4ccccd    # 0.05f

    mul-float p1, p1, p2

    .line 83
    iput p1, p0, Lcom/yannis/ledcard/widget/ItemView;->marginLR:F

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/yannis/ledcard/widget/ItemView;->value:Ljava/lang/String;

    .line 124
    invoke-virtual {p0}, Lcom/yannis/ledcard/widget/ItemView;->invalidate()V

    return-void
.end method
