.class public Lcom/yannis/ledcard/widget/CircleImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "CircleImageView.java"


# static fields
.field private static final BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

.field private static final COLORDRAWABLE_DIMENSION:I = 0x2

.field private static final DEFAULT_BORDER_COLOR:I = -0x1000000

.field private static final DEFAULT_BORDER_WIDTH:I

.field private static final SCALE_TYPE:Landroid/widget/ImageView$ScaleType;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapHeight:I

.field private final mBitmapPaint:Landroid/graphics/Paint;

.field private mBitmapShader:Landroid/graphics/BitmapShader;

.field private mBitmapWidth:I

.field private mBorderColor:I

.field private final mBorderPaint:Landroid/graphics/Paint;

.field private mBorderRadius:F

.field private final mBorderRect:Landroid/graphics/RectF;

.field private mBorderWidth:I

.field private mDrawableRadius:F

.field private final mDrawableRect:Landroid/graphics/RectF;

.field private mReady:Z

.field private mSetupPending:Z

.field private final mShaderMatrix:Landroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    sput-object v0, Lcom/yannis/ledcard/widget/CircleImageView;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    .line 25
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lcom/yannis/ledcard/widget/CircleImageView;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    .line 29
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/yannis/ledcard/widget/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    .line 30
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/yannis/ledcard/widget/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    .line 31
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/yannis/ledcard/widget/CircleImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 32
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/yannis/ledcard/widget/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 33
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/yannis/ledcard/widget/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    const/high16 p1, -0x1000000

    .line 34
    iput p1, p0, Lcom/yannis/ledcard/widget/CircleImageView;->mBorderColor:I

    const/4 p1, 0x0

    .line 35
    iput p1, p0, Lcom/yannis/ledcard/widget/CircleImageView;->mBorderWidth:I

    .line 47
    invoke-direct {p0}, Lcom/yannis/ledcard/widget/CircleImageView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, p2, v0}, Lcom/yannis/ledcard/widget/CircleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/yannis/ledcard/widget/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    .line 30
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/yannis/ledcard/widget/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    .line 31
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/yannis/ledcard/widget/CircleImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 32
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/yannis/ledcard/widget/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 33
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/yannis/ledcard/widget/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    const/high16 v0, -0x1000000

    .line 34
    iput v0, p0, Lcom/yannis/ledcard/widget/CircleImageView;->mBorderColor:I

    const/4 v1, 0x0

    .line 35
    iput v1, p0, Lcom/yannis/ledcard/widget/CircleImageView;->mBorderWidth:I

    .line 56
    sget-object v2, Lcom/yannis/ledcard/R$styleable;->CircleImageView:[I

    invoke-virtual {p1, p2, v2, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    .line 58
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/yannis/ledcard/widget/CircleImageView;->mBorderWidth:I

    .line 60
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/yannis/ledcard/widget/CircleImageView;->mBorderColor:I

    .line 62
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 63
    invoke-direct {p0}, Lcom/yannis/ledcard/widget/CircleImageView;->init()V

    return-void
.end method

.method private getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 172
    :cond_0
    instance-of v1, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1

    .line 173
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 177
    :cond_1
    :try_start_0
    instance-of v1, p1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_2

    .line 178
    sget-object v1, Lcom/yannis/ledcard/widget/CircleImageView;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x2

    invoke-static {v2, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    .line 181
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 182
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sget-object v3, Lcom/yannis/ledcard/widget/CircleImageView;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    .line 181
    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 184
    :goto_0
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 185
    invoke-virtual {v2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 186
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method

.method private init()V
    .locals 1

    .line 67
    sget-object v0, Lcom/yannis/ledcard/widget/CircleImageView;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v0, 0x1

    .line 68
    iput-boolean v0, p0, Lcom/yannis/ledcard/widget/CircleImageView;->mReady:Z

    .line 69
    iget-boolean v0, p0, Lcom/yannis/ledcard/widget/CircleImageView;->mSetupPending:Z

    if-eqz v0, :cond_0

    .line 70
    invoke-direct {p0}, Lcom/yannis/ledcard/widget/CircleImageView;->setup()V

    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Lcom/yannis/ledcard/widget/CircleImageView;->mSetupPending:Z

    :cond_0
    return-void
.end method

.method private setup()V
    .locals 7

    .line 194
    iget-boolean v0, p0, Lcom/yannis/ledcard/widget/CircleImageView;->mReady:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 195
    iput-boolean v1, p0, Lcom/yannis/ledcard/widget/CircleImageView;->mSetupPending:Z

    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/yannis/ledcard/widget/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    return-void

    .line 201
    :cond_1
    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v2, p0, Lcom/yannis/ledcard/widget/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v2, v3, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/yannis/ledcard/widget/CircleImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    .line 203
    iget-object v0, p0, Lcom/yannis/ledcard/widget/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 204
    iget-object v0, p0, Lcom/yannis/ledcard/widget/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/yannis/ledcard/widget/CircleImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 205
    iget-object v0, p0, Lcom/yannis/ledcard/widget/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 206
    iget-object v0, p0, Lcom/yannis/ledcard/widget/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 207
    iget-object v0, p0, Lcom/yannis/ledcard/widget/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/yannis/ledcard/widget/CircleImageView;->mBorderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 208
    iget-object v0, p0, Lcom/yannis/ledcard/widget/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/yannis/ledcard/widget/CircleImageView;->mBorderWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 209
    iget-object v0, p0, Lcom/yannis/ledcard/widget/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/yannis/ledcard/widget/CircleImageView;->mBitmapHeight:I

    .line 210
    iget-object v0, p0, Lcom/yannis/ledcard/widget/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/yannis/ledcard/widget/CircleImageView;->mBitmapWidth:I

    .line 211
    iget-object v0, p0, Lcom/yannis/ledcard/widget/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/yannis/ledcard/widget/CircleImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/yannis/ledcard/widget/CircleImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 212
    iget-object v0, p0, Lcom/yannis/ledcard/widget/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget v1, p0, Lcom/yannis/ledcard/widget/CircleImageView;->mBorderWidth:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v2, p0, Lcom/yannis/ledcard/widget/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    .line 213
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget v3, p0, Lcom/yannis/ledcard/widget/CircleImageView;->mBorderWidth:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v1

    .line 212
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/yannis/ledcard/widget/CircleImageView;->mBorderRadius:F

    .line 214
    iget-object v0, p0, Lcom/yannis/ledcard/widget/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    iget v2, p0, Lcom/yannis/ledcard/widget/CircleImageView;->mBorderWidth:I

    int-to-float v3, v2

    int-to-float v2, v2

    iget-object v4, p0, Lcom/yannis/ledcard/widget/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget v5, p0, Lcom/yannis/ledcard/widget/CircleImageView;->mBorderWidth:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/yannis/ledcard/widget/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    .line 215
    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    iget v6, p0, Lcom/yannis/ledcard/widget/CircleImageView;->mBorderWidth:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    .line 214
    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 216
    iget-object v0, p0, Lcom/yannis/ledcard/widget/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr v0, v1

    iget-object v2, p0, Lcom/yannis/ledcard/widget/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    .line 217
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v2, v1

    .line 216
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/yannis/ledcard/widget/CircleImageView;->mDrawableRadius:F

    .line 218
    invoke-direct {p0}, Lcom/yannis/ledcard/widget/CircleImageView;->updateShaderMatrix()V

    .line 219
    invoke-virtual {p0}, Lcom/yannis/ledcard/widget/CircleImageView;->invalidate()V

    return-void
.end method

.method private updateShaderMatrix()V
    .locals 5

    .line 226
    iget-object v0, p0, Lcom/yannis/ledcard/widget/CircleImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 227
    iget v0, p0, Lcom/yannis/ledcard/widget/CircleImageView;->mBitmapWidth:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/yannis/ledcard/widget/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float v0, v0, v1

    iget-object v1, p0, Lcom/yannis/ledcard/widget/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v2, p0, Lcom/yannis/ledcard/widget/CircleImageView;->mBitmapHeight:I

    int-to-float v2, v2

    mul-float v1, v1, v2

    const/4 v2, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/yannis/ledcard/widget/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget v1, p0, Lcom/yannis/ledcard/widget/CircleImageView;->mBitmapHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 230
    iget-object v1, p0, Lcom/yannis/ledcard/widget/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v4, p0, Lcom/yannis/ledcard/widget/CircleImageView;->mBitmapWidth:I

    int-to-float v4, v4

    mul-float v4, v4, v0

    sub-float/2addr v1, v4

    mul-float v1, v1, v3

    move v2, v1

    const/4 v1, 0x0

    goto :goto_0

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/yannis/ledcard/widget/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v1, p0, Lcom/yannis/ledcard/widget/CircleImageView;->mBitmapWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 233
    iget-object v1, p0, Lcom/yannis/ledcard/widget/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget v4, p0, Lcom/yannis/ledcard/widget/CircleImageView;->mBitmapHeight:I

    int-to-float v4, v4

    mul-float v4, v4, v0

    sub-float/2addr v1, v4

    mul-float v1, v1, v3

    .line 235
    :goto_0
    iget-object v4, p0, Lcom/yannis/ledcard/widget/CircleImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 236
    iget-object v0, p0, Lcom/yannis/ledcard/widget/CircleImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    add-float/2addr v2, v3

    float-to-int v2, v2

    iget v4, p0, Lcom/yannis/ledcard/widget/CircleImageView;->mBorderWidth:I

    add-int/2addr v2, v4

    int-to-float v2, v2

    add-float/2addr v1, v3

    float-to-int v1, v1

    add-int/2addr v1, v4

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 238
    iget-object v0, p0, Lcom/yannis/ledcard/widget/CircleImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/yannis/ledcard/widget/CircleImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method


# virtual methods
.method public getBorderColor()I
    .locals 1

    .line 116
    iget v0, p0, Lcom/yannis/ledcard/widget/CircleImageView;->mBorderColor:I

    return v0
.end method

.method public getBorderWidth()I
    .locals 1

    .line 129
    iget v0, p0, Lcom/yannis/ledcard/widget/CircleImageView;->mBorderWidth:I

    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .line 77
    sget-object v0, Lcom/yannis/ledcard/widget/CircleImageView;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 98
    invoke-virtual {p0}, Lcom/yannis/ledcard/widget/CircleImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/yannis/ledcard/widget/CircleImageView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/yannis/ledcard/widget/CircleImageView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/yannis/ledcard/widget/CircleImageView;->mDrawableRadius:F

    iget-object v3, p0, Lcom/yannis/ledcard/widget/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 103
    iget v0, p0, Lcom/yannis/ledcard/widget/CircleImageView;->mBorderWidth:I

    if-eqz v0, :cond_1

    .line 104
    invoke-virtual {p0}, Lcom/yannis/ledcard/widget/CircleImageView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/yannis/ledcard/widget/CircleImageView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/yannis/ledcard/widget/CircleImageView;->mBorderRadius:F

    iget-object v3, p0, Lcom/yannis/ledcard/widget/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 111
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatImageView;->onSizeChanged(IIII)V

    .line 112
    invoke-direct {p0}, Lcom/yannis/ledcard/widget/CircleImageView;->setup()V

    return-void
.end method

.method public setAdjustViewBounds(Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 91
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "adjustViewBounds not supported."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBorderColor(I)V
    .locals 1

    .line 120
    iget v0, p0, Lcom/yannis/ledcard/widget/CircleImageView;->mBorderColor:I

    if-ne p1, v0, :cond_0

    return-void

    .line 123
    :cond_0
    iput p1, p0, Lcom/yannis/ledcard/widget/CircleImageView;->mBorderColor:I

    .line 124
    iget-object v0, p0, Lcom/yannis/ledcard/widget/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 125
    invoke-virtual {p0}, Lcom/yannis/ledcard/widget/CircleImageView;->invalidate()V

    return-void
.end method

.method public setBorderWidth(I)V
    .locals 1

    .line 133
    iget v0, p0, Lcom/yannis/ledcard/widget/CircleImageView;->mBorderWidth:I

    if-ne p1, v0, :cond_0

    return-void

    .line 136
    :cond_0
    iput p1, p0, Lcom/yannis/ledcard/widget/CircleImageView;->mBorderWidth:I

    .line 137
    invoke-direct {p0}, Lcom/yannis/ledcard/widget/CircleImageView;->setup()V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 142
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 143
    iput-object p1, p0, Lcom/yannis/ledcard/widget/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 144
    invoke-direct {p0}, Lcom/yannis/ledcard/widget/CircleImageView;->setup()V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 149
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 150
    invoke-direct {p0, p1}, Lcom/yannis/ledcard/widget/CircleImageView;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/yannis/ledcard/widget/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 151
    invoke-direct {p0}, Lcom/yannis/ledcard/widget/CircleImageView;->setup()V

    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    .line 156
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 157
    invoke-virtual {p0}, Lcom/yannis/ledcard/widget/CircleImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/yannis/ledcard/widget/CircleImageView;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/yannis/ledcard/widget/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 158
    invoke-direct {p0}, Lcom/yannis/ledcard/widget/CircleImageView;->setup()V

    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0

    .line 163
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageURI(Landroid/net/Uri;)V

    .line 164
    invoke-virtual {p0}, Lcom/yannis/ledcard/widget/CircleImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/yannis/ledcard/widget/CircleImageView;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/yannis/ledcard/widget/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 165
    invoke-direct {p0}, Lcom/yannis/ledcard/widget/CircleImageView;->setup()V

    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 3

    .line 82
    sget-object v0, Lcom/yannis/ledcard/widget/CircleImageView;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    if-ne p1, v0, :cond_0

    return-void

    .line 83
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "ScaleType %s not supported."

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
