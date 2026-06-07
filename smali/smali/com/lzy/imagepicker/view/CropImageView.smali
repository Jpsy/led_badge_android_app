.class public Lcom/lzy/imagepicker/view/CropImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "CropImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzy/imagepicker/view/CropImageView$OnBitmapSaveCompleteListener;,
        Lcom/lzy/imagepicker/view/CropImageView$InnerHandler;,
        Lcom/lzy/imagepicker/view/CropImageView$Style;
    }
.end annotation


# static fields
.field private static final DRAG:I = 0x1

.field private static final MAX_SCALE:F = 4.0f

.field private static final NONE:I = 0x0

.field private static final ROTATE:I = 0x3

.field private static final SAVE_ERROR:I = 0x3ea

.field private static final SAVE_SUCCESS:I = 0x3e9

.field private static final ZOOM:I = 0x2

.field private static final ZOOM_OR_ROTATE:I = 0x4

.field private static mHandler:Landroid/os/Handler;

.field private static mListener:Lcom/lzy/imagepicker/view/CropImageView$OnBitmapSaveCompleteListener;


# instance fields
.field private doubleClickPos:Landroid/graphics/PointF;

.field private doubleClickTime:J

.field private isInited:Z

.field private mBorderColor:I

.field private mBorderPaint:Landroid/graphics/Paint;

.field private mBorderWidth:I

.field private mDefaultStyleIndex:I

.field private mFocusHeight:I

.field private mFocusMidPoint:Landroid/graphics/PointF;

.field private mFocusPath:Landroid/graphics/Path;

.field private mFocusRect:Landroid/graphics/RectF;

.field private mFocusWidth:I

.field private mImageHeight:I

.field private mImageWidth:I

.field private mMaskColor:I

.field private mMaxScale:F

.field private mRotatedImageHeight:I

.field private mRotatedImageWidth:I

.field private mSaving:Z

.field private mStyle:Lcom/lzy/imagepicker/view/CropImageView$Style;

.field private matrix:Landroid/graphics/Matrix;

.field private midPoint:Landroid/graphics/PointF;

.field private mode:I

.field private oldDist:F

.field private pA:Landroid/graphics/PointF;

.field private pB:Landroid/graphics/PointF;

.field private rotation:D

.field private savedMatrix:Landroid/graphics/Matrix;

.field private styles:[Lcom/lzy/imagepicker/view/CropImageView$Style;

.field private sumRotateLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 101
    new-instance v0, Lcom/lzy/imagepicker/view/CropImageView$InnerHandler;

    invoke-direct {v0}, Lcom/lzy/imagepicker/view/CropImageView$InnerHandler;-><init>()V

    sput-object v0, Lcom/lzy/imagepicker/view/CropImageView;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 104
    invoke-direct {p0, p1, v0}, Lcom/lzy/imagepicker/view/CropImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 108
    invoke-direct {p0, p1, p2, v0}, Lcom/lzy/imagepicker/view/CropImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 112
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x2

    new-array p3, p3, [Lcom/lzy/imagepicker/view/CropImageView$Style;

    .line 57
    sget-object v0, Lcom/lzy/imagepicker/view/CropImageView$Style;->RECTANGLE:Lcom/lzy/imagepicker/view/CropImageView$Style;

    const/4 v1, 0x0

    aput-object v0, p3, v1

    sget-object v0, Lcom/lzy/imagepicker/view/CropImageView$Style;->CIRCLE:Lcom/lzy/imagepicker/view/CropImageView$Style;

    const/4 v2, 0x1

    aput-object v0, p3, v2

    iput-object p3, p0, Lcom/lzy/imagepicker/view/CropImageView;->styles:[Lcom/lzy/imagepicker/view/CropImageView$Style;

    const/high16 v0, -0x51000000

    .line 59
    iput v0, p0, Lcom/lzy/imagepicker/view/CropImageView;->mMaskColor:I

    const v0, -0x557f7f80

    .line 60
    iput v0, p0, Lcom/lzy/imagepicker/view/CropImageView;->mBorderColor:I

    .line 61
    iput v2, p0, Lcom/lzy/imagepicker/view/CropImageView;->mBorderWidth:I

    const/16 v0, 0xfa

    .line 62
    iput v0, p0, Lcom/lzy/imagepicker/view/CropImageView;->mFocusWidth:I

    .line 63
    iput v0, p0, Lcom/lzy/imagepicker/view/CropImageView;->mFocusHeight:I

    .line 64
    iput v1, p0, Lcom/lzy/imagepicker/view/CropImageView;->mDefaultStyleIndex:I

    .line 66
    aget-object p3, p3, v1

    iput-object p3, p0, Lcom/lzy/imagepicker/view/CropImageView;->mStyle:Lcom/lzy/imagepicker/view/CropImageView$Style;

    .line 67
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/lzy/imagepicker/view/CropImageView;->mBorderPaint:Landroid/graphics/Paint;

    .line 68
    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    iput-object p3, p0, Lcom/lzy/imagepicker/view/CropImageView;->mFocusPath:Landroid/graphics/Path;

    .line 69
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcom/lzy/imagepicker/view/CropImageView;->mFocusRect:Landroid/graphics/RectF;

    .line 86
    new-instance p3, Landroid/graphics/Matrix;

    invoke-direct {p3}, Landroid/graphics/Matrix;-><init>()V

    iput-object p3, p0, Lcom/lzy/imagepicker/view/CropImageView;->matrix:Landroid/graphics/Matrix;

    .line 87
    new-instance p3, Landroid/graphics/Matrix;

    invoke-direct {p3}, Landroid/graphics/Matrix;-><init>()V

    iput-object p3, p0, Lcom/lzy/imagepicker/view/CropImageView;->savedMatrix:Landroid/graphics/Matrix;

    .line 88
    new-instance p3, Landroid/graphics/PointF;

    invoke-direct {p3}, Landroid/graphics/PointF;-><init>()V

    iput-object p3, p0, Lcom/lzy/imagepicker/view/CropImageView;->pA:Landroid/graphics/PointF;

    .line 89
    new-instance p3, Landroid/graphics/PointF;

    invoke-direct {p3}, Landroid/graphics/PointF;-><init>()V

    iput-object p3, p0, Lcom/lzy/imagepicker/view/CropImageView;->pB:Landroid/graphics/PointF;

    .line 90
    new-instance p3, Landroid/graphics/PointF;

    invoke-direct {p3}, Landroid/graphics/PointF;-><init>()V

    iput-object p3, p0, Lcom/lzy/imagepicker/view/CropImageView;->midPoint:Landroid/graphics/PointF;

    .line 91
    new-instance p3, Landroid/graphics/PointF;

    invoke-direct {p3}, Landroid/graphics/PointF;-><init>()V

    iput-object p3, p0, Lcom/lzy/imagepicker/view/CropImageView;->doubleClickPos:Landroid/graphics/PointF;

    .line 92
    new-instance p3, Landroid/graphics/PointF;

    invoke-direct {p3}, Landroid/graphics/PointF;-><init>()V

    iput-object p3, p0, Lcom/lzy/imagepicker/view/CropImageView;->mFocusMidPoint:Landroid/graphics/PointF;

    .line 93
    iput v1, p0, Lcom/lzy/imagepicker/view/CropImageView;->mode:I

    const-wide/16 v3, 0x0

    .line 94
    iput-wide v3, p0, Lcom/lzy/imagepicker/view/CropImageView;->doubleClickTime:J

    const-wide/16 v3, 0x0

    .line 95
    iput-wide v3, p0, Lcom/lzy/imagepicker/view/CropImageView;->rotation:D

    const/high16 p3, 0x3f800000    # 1.0f

    .line 96
    iput p3, p0, Lcom/lzy/imagepicker/view/CropImageView;->oldDist:F

    .line 97
    iput v1, p0, Lcom/lzy/imagepicker/view/CropImageView;->sumRotateLevel:I

    const/high16 p3, 0x40800000    # 4.0f

    .line 98
    iput p3, p0, Lcom/lzy/imagepicker/view/CropImageView;->mMaxScale:F

    .line 99
    iput-boolean v1, p0, Lcom/lzy/imagepicker/view/CropImageView;->isInited:Z

    .line 100
    iput-boolean v1, p0, Lcom/lzy/imagepicker/view/CropImageView;->mSaving:Z

    .line 113
    iget p3, p0, Lcom/lzy/imagepicker/view/CropImageView;->mFocusWidth:I

    int-to-float p3, p3

    invoke-virtual {p0}, Lcom/lzy/imagepicker/view/CropImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {v2, p3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Lcom/lzy/imagepicker/view/CropImageView;->mFocusWidth:I

    .line 114
    iget p3, p0, Lcom/lzy/imagepicker/view/CropImageView;->mFocusHeight:I

    int-to-float p3, p3

    invoke-virtual {p0}, Lcom/lzy/imagepicker/view/CropImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {v2, p3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Lcom/lzy/imagepicker/view/CropImageView;->mFocusHeight:I

    .line 115
    iget p3, p0, Lcom/lzy/imagepicker/view/CropImageView;->mBorderWidth:I

    int-to-float p3, p3

    invoke-virtual {p0}, Lcom/lzy/imagepicker/view/CropImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {v2, p3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Lcom/lzy/imagepicker/view/CropImageView;->mBorderWidth:I

    .line 117
    sget-object p3, Lcom/lzy/imagepicker/R$styleable;->CropImageView:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 118
    sget p2, Lcom/lzy/imagepicker/R$styleable;->CropImageView_cropMaskColor:I

    iget p3, p0, Lcom/lzy/imagepicker/view/CropImageView;->mMaskColor:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/lzy/imagepicker/view/CropImageView;->mMaskColor:I

    .line 119
    sget p2, Lcom/lzy/imagepicker/R$styleable;->CropImageView_cropBorderColor:I

    iget p3, p0, Lcom/lzy/imagepicker/view/CropImageView;->mBorderColor:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/lzy/imagepicker/view/CropImageView;->mBorderColor:I

    .line 120
    sget p2, Lcom/lzy/imagepicker/R$styleable;->CropImageView_cropBorderWidth:I

    iget p3, p0, Lcom/lzy/imagepicker/view/CropImageView;->mBorderWidth:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/lzy/imagepicker/view/CropImageView;->mBorderWidth:I

    .line 121
    sget p2, Lcom/lzy/imagepicker/R$styleable;->CropImageView_cropFocusWidth:I

    iget p3, p0, Lcom/lzy/imagepicker/view/CropImageView;->mFocusWidth:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/lzy/imagepicker/view/CropImageView;->mFocusWidth:I

    .line 122
    sget p2, Lcom/lzy/imagepicker/R$styleable;->CropImageView_cropFocusHeight:I

    iget p3, p0, Lcom/lzy/imagepicker/view/CropImageView;->mFocusHeight:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/lzy/imagepicker/view/CropImageView;->mFocusHeight:I

    .line 123
    sget p2, Lcom/lzy/imagepicker/R$styleable;->CropImageView_cropStyle:I

    iget p3, p0, Lcom/lzy/imagepicker/view/CropImageView;->mDefaultStyleIndex:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/lzy/imagepicker/view/CropImageView;->mDefaultStyleIndex:I

    .line 124
    iget-object p3, p0, Lcom/lzy/imagepicker/view/CropImageView;->styles:[Lcom/lzy/imagepicker/view/CropImageView$Style;

    aget-object p2, p3, p2

    iput-object p2, p0, Lcom/lzy/imagepicker/view/CropImageView;->mStyle:Lcom/lzy/imagepicker/view/CropImageView$Style;

    .line 125
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 128
    sget-object p1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1}, Lcom/lzy/imagepicker/view/CropImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method static synthetic access$000(Lcom/lzy/imagepicker/view/CropImageView;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/io/File;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/lzy/imagepicker/view/CropImageView;->saveOutput(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$100()Lcom/lzy/imagepicker/view/CropImageView$OnBitmapSaveCompleteListener;
    .locals 1

    .line 50
    sget-object v0, Lcom/lzy/imagepicker/view/CropImageView;->mListener:Lcom/lzy/imagepicker/view/CropImageView$OnBitmapSaveCompleteListener;

    return-object v0
.end method

.method private createFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .line 554
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 556
    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, ".nomedia"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 557
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 559
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 561
    :cond_2
    :goto_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v2, "yyyyMMdd_HHmmss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 562
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p2, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 563
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p3
.end method

.method private doubleClick(FF)V
    .locals 8

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 419
    iget-object v1, p0, Lcom/lzy/imagepicker/view/CropImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v1, 0x0

    .line 420
    aget v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    add-float/2addr v1, v0

    .line 421
    iget v3, p0, Lcom/lzy/imagepicker/view/CropImageView;->mRotatedImageWidth:I

    iget v4, p0, Lcom/lzy/imagepicker/view/CropImageView;->mRotatedImageHeight:I

    iget v5, p0, Lcom/lzy/imagepicker/view/CropImageView;->mFocusWidth:I

    iget v6, p0, Lcom/lzy/imagepicker/view/CropImageView;->mFocusHeight:I

    const/4 v7, 0x1

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/lzy/imagepicker/view/CropImageView;->getScale(IIIIZ)F

    move-result v0

    .line 422
    iget v2, p0, Lcom/lzy/imagepicker/view/CropImageView;->mMaxScale:F

    cmpg-float v3, v1, v2

    if-gez v3, :cond_0

    add-float/2addr v0, v1

    .line 424
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    div-float/2addr v0, v1

    .line 425
    iget-object v1, p0, Lcom/lzy/imagepicker/view/CropImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, v0, p1, p2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    goto :goto_0

    :cond_0
    div-float/2addr v0, v1

    .line 428
    iget-object v1, p0, Lcom/lzy/imagepicker/view/CropImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, v0, p1, p2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 429
    invoke-direct {p0}, Lcom/lzy/imagepicker/view/CropImageView;->fixTranslation()V

    .line 431
    :goto_0
    iget-object p1, p0, Lcom/lzy/imagepicker/view/CropImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1}, Lcom/lzy/imagepicker/view/CropImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method private fixScale()V
    .locals 8

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 363
    iget-object v1, p0, Lcom/lzy/imagepicker/view/CropImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v1, 0x0

    .line 364
    aget v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    add-float/2addr v1, v0

    .line 365
    iget v3, p0, Lcom/lzy/imagepicker/view/CropImageView;->mRotatedImageWidth:I

    iget v4, p0, Lcom/lzy/imagepicker/view/CropImageView;->mRotatedImageHeight:I

    iget v5, p0, Lcom/lzy/imagepicker/view/CropImageView;->mFocusWidth:I

    iget v6, p0, Lcom/lzy/imagepicker/view/CropImageView;->mFocusHeight:I

    const/4 v7, 0x1

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/lzy/imagepicker/view/CropImageView;->getScale(IIIIZ)F

    move-result v0

    const/high16 v2, 0x40800000    # 4.0f

    mul-float v2, v2, v0

    .line 366
    iput v2, p0, Lcom/lzy/imagepicker/view/CropImageView;->mMaxScale:F

    cmpg-float v3, v1, v0

    if-gez v3, :cond_0

    div-float/2addr v0, v1

    .line 371
    iget-object v1, p0, Lcom/lzy/imagepicker/view/CropImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_0

    :cond_0
    cmpl-float v0, v1, v2

    if-lez v0, :cond_1

    div-float/2addr v2, v1

    .line 374
    iget-object v0, p0, Lcom/lzy/imagepicker/view/CropImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private fixTranslation()V
    .locals 5

    .line 380
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/lzy/imagepicker/view/CropImageView;->mImageWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/lzy/imagepicker/view/CropImageView;->mImageHeight:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 381
    iget-object v1, p0, Lcom/lzy/imagepicker/view/CropImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 383
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/lzy/imagepicker/view/CropImageView;->mFocusRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 384
    iget v1, v0, Landroid/graphics/RectF;->left:F

    neg-float v1, v1

    iget-object v2, p0, Lcom/lzy/imagepicker/view/CropImageView;->mFocusRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    :goto_0
    add-float/2addr v1, v2

    goto :goto_1

    .line 385
    :cond_0
    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/lzy/imagepicker/view/CropImageView;->mFocusRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 386
    iget v1, v0, Landroid/graphics/RectF;->right:F

    neg-float v1, v1

    iget-object v2, p0, Lcom/lzy/imagepicker/view/CropImageView;->mFocusRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 388
    :goto_1
    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/lzy/imagepicker/view/CropImageView;->mFocusRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    cmpl-float v2, v2, v4

    if-lez v2, :cond_2

    .line 389
    iget v0, v0, Landroid/graphics/RectF;->top:F

    neg-float v0, v0

    iget-object v2, p0, Lcom/lzy/imagepicker/view/CropImageView;->mFocusRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    :goto_2
    add-float v3, v0, v2

    goto :goto_3

    .line 390
    :cond_2
    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/lzy/imagepicker/view/CropImageView;->mFocusRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    cmpg-float v2, v2, v4

    if-gez v2, :cond_3

    .line 391
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    neg-float v0, v0

    iget-object v2, p0, Lcom/lzy/imagepicker/view/CropImageView;->mFocusRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    goto :goto_2

    .line 393
    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/lzy/imagepicker/view/CropImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method private getImageMatrixRect()Landroid/graphics/RectF;
    .locals 4

    .line 473
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 474
    invoke-virtual {p0}, Lcom/lzy/imagepicker/view/CropImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/lzy/imagepicker/view/CropImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 475
    iget-object v1, p0, Lcom/lzy/imagepicker/view/CropImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    return-object v0
.end method

.method private getScale(IIIIZ)F
    .locals 0

    int-to-float p3, p3

    int-to-float p1, p1

    div-float/2addr p3, p1

    int-to-float p1, p4

    int-to-float p2, p2

    div-float/2addr p1, p2

    if-eqz p5, :cond_1

    cmpl-float p2, p3, p1

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    move p3, p1

    goto :goto_0

    :cond_1
    cmpg-float p2, p3, p1

    if-gez p2, :cond_0

    :goto_0
    return p3
.end method

.method private initImage()V
    .locals 15

    .line 164
    invoke-virtual {p0}, Lcom/lzy/imagepicker/view/CropImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 165
    iget-boolean v1, p0, Lcom/lzy/imagepicker/view/CropImageView;->isInited:Z

    if-eqz v1, :cond_3

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 167
    iput v1, p0, Lcom/lzy/imagepicker/view/CropImageView;->mode:I

    .line 168
    invoke-virtual {p0}, Lcom/lzy/imagepicker/view/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    iput-object v2, p0, Lcom/lzy/imagepicker/view/CropImageView;->matrix:Landroid/graphics/Matrix;

    .line 169
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, p0, Lcom/lzy/imagepicker/view/CropImageView;->mRotatedImageWidth:I

    iput v2, p0, Lcom/lzy/imagepicker/view/CropImageView;->mImageWidth:I

    .line 170
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/lzy/imagepicker/view/CropImageView;->mRotatedImageHeight:I

    iput v0, p0, Lcom/lzy/imagepicker/view/CropImageView;->mImageHeight:I

    .line 172
    invoke-virtual {p0}, Lcom/lzy/imagepicker/view/CropImageView;->getWidth()I

    move-result v5

    .line 173
    invoke-virtual {p0}, Lcom/lzy/imagepicker/view/CropImageView;->getHeight()I

    move-result v6

    .line 174
    div-int/lit8 v0, v5, 0x2

    int-to-float v0, v0

    .line 175
    div-int/lit8 v2, v6, 0x2

    int-to-float v2, v2

    .line 176
    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, v0, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v3, p0, Lcom/lzy/imagepicker/view/CropImageView;->mFocusMidPoint:Landroid/graphics/PointF;

    .line 178
    iget-object v0, p0, Lcom/lzy/imagepicker/view/CropImageView;->mStyle:Lcom/lzy/imagepicker/view/CropImageView$Style;

    sget-object v2, Lcom/lzy/imagepicker/view/CropImageView$Style;->CIRCLE:Lcom/lzy/imagepicker/view/CropImageView$Style;

    if-ne v0, v2, :cond_1

    .line 179
    iget v0, p0, Lcom/lzy/imagepicker/view/CropImageView;->mFocusWidth:I

    iget v2, p0, Lcom/lzy/imagepicker/view/CropImageView;->mFocusHeight:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 180
    iput v0, p0, Lcom/lzy/imagepicker/view/CropImageView;->mFocusWidth:I

    .line 181
    iput v0, p0, Lcom/lzy/imagepicker/view/CropImageView;->mFocusHeight:I

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/lzy/imagepicker/view/CropImageView;->mFocusRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/lzy/imagepicker/view/CropImageView;->mFocusMidPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget v3, p0, Lcom/lzy/imagepicker/view/CropImageView;->mFocusWidth:I

    const/4 v8, 0x2

    div-int/2addr v3, v8

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 184
    iget-object v0, p0, Lcom/lzy/imagepicker/view/CropImageView;->mFocusRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/lzy/imagepicker/view/CropImageView;->mFocusMidPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget v3, p0, Lcom/lzy/imagepicker/view/CropImageView;->mFocusWidth:I

    div-int/2addr v3, v8

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 185
    iget-object v0, p0, Lcom/lzy/imagepicker/view/CropImageView;->mFocusRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/lzy/imagepicker/view/CropImageView;->mFocusMidPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/lzy/imagepicker/view/CropImageView;->mFocusHeight:I

    div-int/2addr v3, v8

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 186
    iget-object v0, p0, Lcom/lzy/imagepicker/view/CropImageView;->mFocusRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/lzy/imagepicker/view/CropImageView;->mFocusMidPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/lzy/imagepicker/view/CropImageView;->mFocusHeight:I

    div-int/2addr v3, v8

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    .line 189
    iget v10, p0, Lcom/lzy/imagepicker/view/CropImageView;->mImageWidth:I

    iget v11, p0, Lcom/lzy/imagepicker/view/CropImageView;->mImageHeight:I

    iget v12, p0, Lcom/lzy/imagepicker/view/CropImageView;->mFocusWidth:I

    iget v13, p0, Lcom/lzy/imagepicker/view/CropImageView;->mFocusHeight:I

    const/4 v14, 0x1

    move-object v9, p0

    invoke-direct/range {v9 .. v14}, Lcom/lzy/imagepicker/view/CropImageView;->getScale(IIIIZ)F

    move-result v0

    const/high16 v2, 0x40800000    # 4.0f

    mul-float v2, v2, v0

    .line 190
    iput v2, p0, Lcom/lzy/imagepicker/view/CropImageView;->mMaxScale:F

    .line 192
    iget v3, p0, Lcom/lzy/imagepicker/view/CropImageView;->mImageWidth:I

    iget v4, p0, Lcom/lzy/imagepicker/view/CropImageView;->mImageHeight:I

    const/4 v7, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/lzy/imagepicker/view/CropImageView;->getScale(IIIIZ)F

    move-result v2

    cmpl-float v3, v2, v0

    if-lez v3, :cond_2

    move v0, v2

    .line 198
    :cond_2
    iget-object v2, p0, Lcom/lzy/imagepicker/view/CropImageView;->matrix:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/lzy/imagepicker/view/CropImageView;->mImageWidth:I

    div-int/2addr v3, v8

    int-to-float v3, v3

    iget v4, p0, Lcom/lzy/imagepicker/view/CropImageView;->mImageHeight:I

    div-int/2addr v4, v8

    int-to-float v4, v4

    invoke-virtual {v2, v0, v0, v3, v4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 200
    iget-object v2, p0, Lcom/lzy/imagepicker/view/CropImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 201
    iget-object v2, p0, Lcom/lzy/imagepicker/view/CropImageView;->mFocusMidPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    aget v3, v0, v8

    iget v4, p0, Lcom/lzy/imagepicker/view/CropImageView;->mImageWidth:I

    int-to-float v4, v4

    aget v1, v0, v1

    mul-float v4, v4, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v4, v1

    add-float/2addr v3, v4

    sub-float/2addr v2, v3

    .line 202
    iget-object v3, p0, Lcom/lzy/imagepicker/view/CropImageView;->mFocusMidPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    const/4 v4, 0x5

    aget v4, v0, v4

    iget v5, p0, Lcom/lzy/imagepicker/view/CropImageView;->mImageHeight:I

    int-to-float v5, v5

    const/4 v6, 0x4

    aget v0, v0, v6

    mul-float v5, v5, v0

    div-float/2addr v5, v1

    add-float/2addr v4, v5

    sub-float/2addr v3, v4

    .line 203
    iget-object v0, p0, Lcom/lzy/imagepicker/view/CropImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 204
    iget-object v0, p0, Lcom/lzy/imagepicker/view/CropImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/lzy/imagepicker/view/CropImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 205
    invoke-virtual {p0}, Lcom/lzy/imagepicker/view/CropImageView;->invalidate()V

    :cond_3
    :goto_0
    return-void
.end method

.method private makeCropBitmap(Landroid/graphics/Bitmap;Landroid/graphics/RectF;Landroid/graphics/RectF;IIZ)Landroid/graphics/Bitmap;
    .locals 4

    if-eqz p3, :cond_7

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 492
    :cond_0
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 493
    iget v1, p2, Landroid/graphics/RectF;->left:F

    iget v2, p3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v0

    float-to-int v1, v1

    .line 494
    iget v2, p2, Landroid/graphics/RectF;->top:F

    iget p3, p3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, p3

    div-float/2addr v2, v0

    float-to-int p3, v2

    .line 495
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v2, v0

    float-to-int v2, v2

    .line 496
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    div-float/2addr p2, v0

    float-to-int p2, p2

    const/4 v0, 0x0

    if-gez v1, :cond_1

    const/4 v1, 0x0

    :cond_1
    if-gez p3, :cond_2

    const/4 p3, 0x0

    :cond_2
    add-int v0, v1, v2

    .line 500
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-le v0, v3, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sub-int v2, v0, v1

    :cond_3
    add-int v0, p3, p2

    .line 501
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-le v0, v3, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    sub-int/2addr p2, p3

    .line 504
    :cond_4
    :try_start_0
    invoke-static {p1, v1, p3, v2, p2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    if-ne p4, v2, :cond_5

    if-eq p5, p2, :cond_6

    :cond_5
    const/4 p2, 0x1

    .line 506
    invoke-static {p1, p4, p5, p2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 507
    iget-object p2, p0, Lcom/lzy/imagepicker/view/CropImageView;->mStyle:Lcom/lzy/imagepicker/view/CropImageView$Style;

    sget-object p3, Lcom/lzy/imagepicker/view/CropImageView$Style;->CIRCLE:Lcom/lzy/imagepicker/view/CropImageView$Style;

    if-ne p2, p3, :cond_6

    if-nez p6, :cond_6

    .line 509
    invoke-static {p4, p5}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 510
    div-int/lit8 p3, p2, 0x2

    .line 511
    sget-object p6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p2, p6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 512
    new-instance p6, Landroid/graphics/Canvas;

    invoke-direct {p6, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 513
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p1, v1, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 514
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 515
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    int-to-float p4, p4

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p4, v0

    int-to-float p5, p5

    div-float/2addr p5, v0

    int-to-float p3, p3

    .line 516
    invoke-virtual {p6, p4, p5, p3, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, p2

    goto :goto_0

    :catch_0
    move-exception p2

    .line 521
    invoke-virtual {p2}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    :cond_6
    :goto_0
    return-object p1

    :cond_7
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private maxPostScale()F
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 399
    iget-object v1, p0, Lcom/lzy/imagepicker/view/CropImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v1, 0x0

    .line 400
    aget v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    add-float/2addr v1, v0

    .line 401
    iget v0, p0, Lcom/lzy/imagepicker/view/CropImageView;->mMaxScale:F

    div-float/2addr v0, v1

    return v0
.end method

.method private saveOutput(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/io/File;)V
    .locals 3

    const/4 v0, 0x0

    .line 570
    :try_start_0
    invoke-virtual {p0}, Lcom/lzy/imagepicker/view/CropImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x5a

    .line 571
    invoke-virtual {p1, p2, v1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 572
    :cond_0
    sget-object p2, Lcom/lzy/imagepicker/view/CropImageView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-static {p2, v1, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 579
    :try_start_1
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p2

    .line 574
    :try_start_2
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 575
    sget-object p2, Lcom/lzy/imagepicker/view/CropImageView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-static {p2, v1, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    .line 579
    :try_start_3
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception p2

    .line 581
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_0
    const/4 p2, 0x0

    .line 585
    iput-boolean p2, p0, Lcom/lzy/imagepicker/view/CropImageView;->mSaving:Z

    .line 586
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-void

    :goto_1
    if-eqz v0, :cond_2

    .line 579
    :try_start_4
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception p2

    .line 581
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 582
    :cond_2
    :goto_2
    throw p1
.end method

.method private spacing(FFFF)F
    .locals 0

    sub-float/2addr p1, p3

    sub-float/2addr p2, p4

    mul-float p1, p1, p1

    mul-float p2, p2, p2

    add-float/2addr p1, p2

    float-to-double p1, p1

    .line 408
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    return p1
.end method

.method private spacing(Landroid/graphics/PointF;Landroid/graphics/PointF;)F
    .locals 2

    .line 413
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget v1, p2, Landroid/graphics/PointF;->x:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, v0, p1, v1, p2}, Lcom/lzy/imagepicker/view/CropImageView;->spacing(FFFF)F

    move-result p1

    return p1
.end method


# virtual methods
.method public getBorderWidth()F
    .locals 1

    .line 667
    iget v0, p0, Lcom/lzy/imagepicker/view/CropImageView;->mBorderWidth:I

    int-to-float v0, v0

    return v0
.end method

.method public getCropBitmap(IIZ)Landroid/graphics/Bitmap;
    .locals 9

    if-lez p1, :cond_1

    if-gez p2, :cond_0

    goto :goto_0

    .line 442
    :cond_0
    invoke-virtual {p0}, Lcom/lzy/imagepicker/view/CropImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 443
    iget v1, p0, Lcom/lzy/imagepicker/view/CropImageView;->sumRotateLevel:I

    mul-int/lit8 v1, v1, 0x5a

    invoke-virtual {p0, v0, v1}, Lcom/lzy/imagepicker/view/CropImageView;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 444
    iget-object v4, p0, Lcom/lzy/imagepicker/view/CropImageView;->mFocusRect:Landroid/graphics/RectF;

    invoke-direct {p0}, Lcom/lzy/imagepicker/view/CropImageView;->getImageMatrixRect()Landroid/graphics/RectF;

    move-result-object v5

    move-object v2, p0

    move v6, p1

    move v7, p2

    move v8, p3

    invoke-direct/range {v2 .. v8}, Lcom/lzy/imagepicker/view/CropImageView;->makeCropBitmap(Landroid/graphics/Bitmap;Landroid/graphics/RectF;Landroid/graphics/RectF;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getFocusColor()I
    .locals 1

    .line 656
    iget v0, p0, Lcom/lzy/imagepicker/view/CropImageView;->mBorderColor:I

    return v0
.end method

.method public getFocusHeight()I
    .locals 1

    .line 634
    iget v0, p0, Lcom/lzy/imagepicker/view/CropImageView;->mFocusHeight:I

    return v0
.end method

.method public getFocusStyle()Lcom/lzy/imagepicker/view/CropImageView$Style;
    .locals 1

    .line 684
    iget-object v0, p0, Lcom/lzy/imagepicker/view/CropImageView;->mStyle:Lcom/lzy/imagepicker/view/CropImageView$Style;

    return-object v0
.end method

.method public getFocusWidth()I
    .locals 1

    .line 623
    iget v0, p0, Lcom/lzy/imagepicker/view/CropImageView;->mFocusWidth:I

    return v0
.end method

.method public getMaskColor()I
    .locals 1

    .line 645
    iget v0, p0, Lcom/lzy/imagepicker/view/CropImageView;->mMaskColor:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 224
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 225
    sget-object v0, Lcom/lzy/imagepicker/view/CropImageView$Style;->RECTANGLE:Lcom/lzy/imagepicker/view/CropImageView$Style;

    iget-object v1, p0, Lcom/lzy/imagepicker/view/CropImageView;->mStyle:Lcom/lzy/imagepicker/view/CropImageView$Style;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 226
    iget-object v0, p0, Lcom/lzy/imagepicker/view/CropImageView;->mFocusPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/lzy/imagepicker/view/CropImageView;->mFocusRect:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 227
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 228
    invoke-virtual {p0}, Lcom/lzy/imagepicker/view/CropImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/lzy/imagepicker/view/CropImageView;->getHeight()I

    move-result v1

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 229
    iget-object v0, p0, Lcom/lzy/imagepicker/view/CropImageView;->mFocusPath:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 230
    iget v0, p0, Lcom/lzy/imagepicker/view/CropImageView;->mMaskColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 231
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 232
    :cond_0
    sget-object v0, Lcom/lzy/imagepicker/view/CropImageView$Style;->CIRCLE:Lcom/lzy/imagepicker/view/CropImageView$Style;

    iget-object v1, p0, Lcom/lzy/imagepicker/view/CropImageView;->mStyle:Lcom/lzy/imagepicker/view/CropImageView$Style;

    if-ne v0, v1, :cond_1

    .line 233
    iget-object v0, p0, Lcom/lzy/imagepicker/view/CropImageView;->mFocusRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/lzy/imagepicker/view/CropImageView;->mFocusRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v3, p0, Lcom/lzy/imagepicker/view/CropImageView;->mFocusRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/lzy/imagepicker/view/CropImageView;->mFocusRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v1

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 234
    iget-object v1, p0, Lcom/lzy/imagepicker/view/CropImageView;->mFocusPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/lzy/imagepicker/view/CropImageView;->mFocusMidPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/lzy/imagepicker/view/CropImageView;->mFocusMidPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sget-object v5, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v3, v4, v0, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 235
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 236
    invoke-virtual {p0}, Lcom/lzy/imagepicker/view/CropImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/lzy/imagepicker/view/CropImageView;->getHeight()I

    move-result v1

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 237
    iget-object v0, p0, Lcom/lzy/imagepicker/view/CropImageView;->mFocusPath:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 238
    iget v0, p0, Lcom/lzy/imagepicker/view/CropImageView;->mMaskColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 239
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 241
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/lzy/imagepicker/view/CropImageView;->mBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/lzy/imagepicker/view/CropImageView;->mBorderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 242
    iget-object v0, p0, Lcom/lzy/imagepicker/view/CropImageView;->mBorderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 243
    iget-object v0, p0, Lcom/lzy/imagepicker/view/CropImageView;->mBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/lzy/imagepicker/view/CropImageView;->mBorderWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 244
    iget-object v0, p0, Lcom/lzy/imagepicker/view/CropImageView;->mBorderPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 245
    iget-object v0, p0, Lcom/lzy/imagepicker/view/CropImageView;->mFocusPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/lzy/imagepicker/view/CropImageView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 246
    iget-object p1, p0, Lcom/lzy/imagepicker/view/CropImageView;->mFocusPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 157
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatImageView;->onSizeChanged(IIII)V

    const/4 p1, 0x1

    .line 158
    iput-boolean p1, p0, Lcom/lzy/imagepicker/view/CropImageView;->isInited:Z

    .line 159
    invoke-direct {p0}, Lcom/lzy/imagepicker/view/CropImageView;->initImage()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 251
    iget-boolean v2, v0, Lcom/lzy/imagepicker/view/CropImageView;->mSaving:Z

    if-nez v2, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/lzy/imagepicker/view/CropImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_0

    goto/16 :goto_4

    .line 254
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x1

    if-eqz v2, :cond_11

    const-wide v4, 0x3fe921fb54442d18L    # 0.7853981633974483

    const/4 v6, 0x4

    const/4 v8, 0x0

    if-eq v2, v3, :cond_a

    const/high16 v9, 0x41200000    # 10.0f

    const/4 v10, 0x2

    if-eq v2, v10, :cond_4

    const/4 v10, 0x5

    if-eq v2, v10, :cond_2

    const/4 v1, 0x6

    if-eq v2, v1, :cond_a

    :cond_1
    :goto_0
    const/4 v1, 0x1

    goto/16 :goto_3

    .line 262
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    if-le v2, v3, :cond_3

    goto :goto_0

    .line 263
    :cond_3
    iget-object v2, v0, Lcom/lzy/imagepicker/view/CropImageView;->pA:Landroid/graphics/PointF;

    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/PointF;->set(FF)V

    .line 264
    iget-object v2, v0, Lcom/lzy/imagepicker/view/CropImageView;->pB:Landroid/graphics/PointF;

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    invoke-virtual {v2, v4, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 265
    iget-object v1, v0, Lcom/lzy/imagepicker/view/CropImageView;->midPoint:Landroid/graphics/PointF;

    iget-object v2, v0, Lcom/lzy/imagepicker/view/CropImageView;->pA:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v4, v0, Lcom/lzy/imagepicker/view/CropImageView;->pB:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    add-float/2addr v2, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    iget-object v5, v0, Lcom/lzy/imagepicker/view/CropImageView;->pA:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget-object v7, v0, Lcom/lzy/imagepicker/view/CropImageView;->pB:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    add-float/2addr v5, v7

    div-float/2addr v5, v4

    invoke-virtual {v1, v2, v5}, Landroid/graphics/PointF;->set(FF)V

    .line 266
    iget-object v1, v0, Lcom/lzy/imagepicker/view/CropImageView;->pA:Landroid/graphics/PointF;

    iget-object v2, v0, Lcom/lzy/imagepicker/view/CropImageView;->pB:Landroid/graphics/PointF;

    invoke-direct {v0, v1, v2}, Lcom/lzy/imagepicker/view/CropImageView;->spacing(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v1

    iput v1, v0, Lcom/lzy/imagepicker/view/CropImageView;->oldDist:F

    .line 267
    iget-object v1, v0, Lcom/lzy/imagepicker/view/CropImageView;->savedMatrix:Landroid/graphics/Matrix;

    iget-object v2, v0, Lcom/lzy/imagepicker/view/CropImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 268
    iget v1, v0, Lcom/lzy/imagepicker/view/CropImageView;->oldDist:F

    cmpl-float v1, v1, v9

    if-lez v1, :cond_1

    iput v6, v0, Lcom/lzy/imagepicker/view/CropImageView;->mode:I

    goto :goto_0

    .line 271
    :cond_4
    iget v2, v0, Lcom/lzy/imagepicker/view/CropImageView;->mode:I

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    const-wide/high16 v13, 0x4024000000000000L    # 10.0

    if-ne v2, v6, :cond_6

    .line 272
    new-instance v2, Landroid/graphics/PointF;

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v15

    sub-float/2addr v6, v15

    iget-object v15, v0, Lcom/lzy/imagepicker/view/CropImageView;->pA:Landroid/graphics/PointF;

    iget v15, v15, Landroid/graphics/PointF;->x:F

    add-float/2addr v6, v15

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v15

    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v16

    sub-float v15, v15, v16

    iget-object v9, v0, Lcom/lzy/imagepicker/view/CropImageView;->pA:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->y:F

    add-float/2addr v15, v9

    invoke-direct {v2, v6, v15}, Landroid/graphics/PointF;-><init>(FF)V

    .line 273
    iget-object v6, v0, Lcom/lzy/imagepicker/view/CropImageView;->pB:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iget-object v9, v0, Lcom/lzy/imagepicker/view/CropImageView;->pB:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->y:F

    iget v15, v2, Landroid/graphics/PointF;->x:F

    iget v8, v2, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v6, v9, v15, v8}, Lcom/lzy/imagepicker/view/CropImageView;->spacing(FFFF)F

    move-result v6

    float-to-double v8, v6

    .line 274
    iget-object v6, v0, Lcom/lzy/imagepicker/view/CropImageView;->pA:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iget-object v15, v0, Lcom/lzy/imagepicker/view/CropImageView;->pA:Landroid/graphics/PointF;

    iget v15, v15, Landroid/graphics/PointF;->y:F

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v6, v15, v3, v2}, Lcom/lzy/imagepicker/view/CropImageView;->spacing(FFFF)F

    move-result v2

    float-to-double v2, v2

    .line 275
    iget-object v6, v0, Lcom/lzy/imagepicker/view/CropImageView;->pA:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iget-object v15, v0, Lcom/lzy/imagepicker/view/CropImageView;->pA:Landroid/graphics/PointF;

    iget v15, v15, Landroid/graphics/PointF;->y:F

    iget-object v10, v0, Lcom/lzy/imagepicker/view/CropImageView;->pB:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->x:F

    iget-object v7, v0, Lcom/lzy/imagepicker/view/CropImageView;->pB:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v6, v15, v10, v7}, Lcom/lzy/imagepicker/view/CropImageView;->spacing(FFFF)F

    move-result v6

    float-to-double v6, v6

    cmpl-double v10, v8, v13

    if-ltz v10, :cond_6

    .line 277
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v17, v8, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v19, v6, v6

    add-double v17, v17, v19

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v2

    sub-double v17, v17, v2

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v11

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v6

    div-double v17, v17, v8

    .line 278
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->acos(D)D

    move-result-wide v2

    cmpl-double v6, v2, v4

    if-lez v6, :cond_5

    const-wide v4, 0x4002d97c7f3321d2L    # 2.356194490192345

    cmpg-double v6, v2, v4

    if-gez v6, :cond_5

    const/4 v2, 0x3

    .line 281
    iput v2, v0, Lcom/lzy/imagepicker/view/CropImageView;->mode:I

    goto :goto_1

    :cond_5
    const/4 v2, 0x2

    .line 282
    iput v2, v0, Lcom/lzy/imagepicker/view/CropImageView;->mode:I

    .line 285
    :cond_6
    :goto_1
    iget v2, v0, Lcom/lzy/imagepicker/view/CropImageView;->mode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 286
    iget-object v2, v0, Lcom/lzy/imagepicker/view/CropImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v3, v0, Lcom/lzy/imagepicker/view/CropImageView;->savedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 287
    iget-object v2, v0, Lcom/lzy/imagepicker/view/CropImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v4, v0, Lcom/lzy/imagepicker/view/CropImageView;->pA:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v4, v0, Lcom/lzy/imagepicker/view/CropImageView;->pA:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v4

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 288
    invoke-direct/range {p0 .. p0}, Lcom/lzy/imagepicker/view/CropImageView;->fixTranslation()V

    .line 289
    iget-object v1, v0, Lcom/lzy/imagepicker/view/CropImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Lcom/lzy/imagepicker/view/CropImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto/16 :goto_0

    :cond_7
    const/4 v3, 0x2

    if-ne v2, v3, :cond_8

    const/4 v3, 0x0

    .line 291
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    invoke-direct {v0, v2, v3, v5, v1}, Lcom/lzy/imagepicker/view/CropImageView;->spacing(FFFF)F

    move-result v1

    const/high16 v2, 0x41200000    # 10.0f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    .line 293
    iget-object v2, v0, Lcom/lzy/imagepicker/view/CropImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v3, v0, Lcom/lzy/imagepicker/view/CropImageView;->savedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 295
    iget v2, v0, Lcom/lzy/imagepicker/view/CropImageView;->oldDist:F

    div-float/2addr v1, v2

    invoke-direct/range {p0 .. p0}, Lcom/lzy/imagepicker/view/CropImageView;->maxPostScale()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_1

    .line 297
    iget-object v2, v0, Lcom/lzy/imagepicker/view/CropImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v3, v0, Lcom/lzy/imagepicker/view/CropImageView;->midPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, v0, Lcom/lzy/imagepicker/view/CropImageView;->midPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 298
    invoke-direct/range {p0 .. p0}, Lcom/lzy/imagepicker/view/CropImageView;->fixScale()V

    .line 299
    invoke-direct/range {p0 .. p0}, Lcom/lzy/imagepicker/view/CropImageView;->fixTranslation()V

    .line 300
    iget-object v1, v0, Lcom/lzy/imagepicker/view/CropImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Lcom/lzy/imagepicker/view/CropImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto/16 :goto_0

    :cond_8
    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 304
    new-instance v2, Landroid/graphics/PointF;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    sub-float/2addr v4, v6

    iget-object v6, v0, Lcom/lzy/imagepicker/view/CropImageView;->pA:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    add-float/2addr v4, v6

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    sub-float/2addr v6, v1

    iget-object v1, v0, Lcom/lzy/imagepicker/view/CropImageView;->pA:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v6, v1

    invoke-direct {v2, v4, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 305
    iget-object v1, v0, Lcom/lzy/imagepicker/view/CropImageView;->pB:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v3, v0, Lcom/lzy/imagepicker/view/CropImageView;->pB:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget v4, v2, Landroid/graphics/PointF;->x:F

    iget v5, v2, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/lzy/imagepicker/view/CropImageView;->spacing(FFFF)F

    move-result v1

    float-to-double v3, v1

    .line 306
    iget-object v1, v0, Lcom/lzy/imagepicker/view/CropImageView;->pA:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v5, v0, Lcom/lzy/imagepicker/view/CropImageView;->pA:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget v6, v2, Landroid/graphics/PointF;->x:F

    iget v7, v2, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v1, v5, v6, v7}, Lcom/lzy/imagepicker/view/CropImageView;->spacing(FFFF)F

    move-result v1

    float-to-double v5, v1

    .line 307
    iget-object v1, v0, Lcom/lzy/imagepicker/view/CropImageView;->pA:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v7, v0, Lcom/lzy/imagepicker/view/CropImageView;->pA:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    iget-object v8, v0, Lcom/lzy/imagepicker/view/CropImageView;->pB:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    iget-object v9, v0, Lcom/lzy/imagepicker/view/CropImageView;->pB:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v1, v7, v8, v9}, Lcom/lzy/imagepicker/view/CropImageView;->spacing(FFFF)F

    move-result v1

    float-to-double v7, v1

    cmpl-double v1, v5, v13

    if-lez v1, :cond_1

    .line 309
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v9, v5, v5

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v13, v7, v7

    add-double/2addr v9, v13

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v3

    sub-double/2addr v9, v3

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v11

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v7

    div-double/2addr v9, v5

    .line 310
    invoke-static {v9, v10}, Ljava/lang/Math;->acos(D)D

    move-result-wide v3

    .line 311
    iget-object v1, v0, Lcom/lzy/imagepicker/view/CropImageView;->pB:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v5, v0, Lcom/lzy/imagepicker/view/CropImageView;->pA:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v5

    float-to-double v5, v1

    .line 312
    iget-object v1, v0, Lcom/lzy/imagepicker/view/CropImageView;->pA:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v7, v0, Lcom/lzy/imagepicker/view/CropImageView;->pB:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v7

    float-to-double v7, v1

    .line 313
    iget-object v1, v0, Lcom/lzy/imagepicker/view/CropImageView;->pB:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v9, v0, Lcom/lzy/imagepicker/view/CropImageView;->pA:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->y:F

    mul-float v1, v1, v9

    iget-object v9, v0, Lcom/lzy/imagepicker/view/CropImageView;->pA:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->x:F

    iget-object v10, v0, Lcom/lzy/imagepicker/view/CropImageView;->pB:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->y:F

    mul-float v9, v9, v10

    sub-float/2addr v1, v9

    float-to-double v9, v1

    .line 314
    iget v1, v2, Landroid/graphics/PointF;->x:F

    float-to-double v11, v1

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v11

    iget v1, v2, Landroid/graphics/PointF;->y:F

    float-to-double v1, v1

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v1

    add-double/2addr v5, v7

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v5, v9

    const-wide/16 v1, 0x0

    cmpl-double v7, v5, v1

    if-lez v7, :cond_9

    const-wide v1, 0x401921fb54442d18L    # 6.283185307179586

    sub-double v3, v1, v3

    .line 318
    :cond_9
    iput-wide v3, v0, Lcom/lzy/imagepicker/view/CropImageView;->rotation:D

    .line 319
    iget-object v1, v0, Lcom/lzy/imagepicker/view/CropImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v2, v0, Lcom/lzy/imagepicker/view/CropImageView;->savedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 320
    iget-object v1, v0, Lcom/lzy/imagepicker/view/CropImageView;->matrix:Landroid/graphics/Matrix;

    iget-wide v2, v0, Lcom/lzy/imagepicker/view/CropImageView;->rotation:D

    const-wide v4, 0x4066800000000000L    # 180.0

    mul-double v2, v2, v4

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v2, v4

    double-to-float v2, v2

    iget-object v3, v0, Lcom/lzy/imagepicker/view/CropImageView;->midPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, v0, Lcom/lzy/imagepicker/view/CropImageView;->midPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 321
    iget-object v1, v0, Lcom/lzy/imagepicker/view/CropImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Lcom/lzy/imagepicker/view/CropImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto/16 :goto_0

    .line 327
    :cond_a
    iget v1, v0, Lcom/lzy/imagepicker/view/CropImageView;->mode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_c

    .line 328
    iget-object v1, v0, Lcom/lzy/imagepicker/view/CropImageView;->pA:Landroid/graphics/PointF;

    iget-object v2, v0, Lcom/lzy/imagepicker/view/CropImageView;->pB:Landroid/graphics/PointF;

    invoke-direct {v0, v1, v2}, Lcom/lzy/imagepicker/view/CropImageView;->spacing(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v1

    const/high16 v2, 0x42480000    # 50.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_10

    .line 329
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 330
    iget-wide v5, v0, Lcom/lzy/imagepicker/view/CropImageView;->doubleClickTime:J

    sub-long v5, v3, v5

    const-wide/16 v7, 0x1f4

    cmp-long v1, v5, v7

    if-gez v1, :cond_b

    iget-object v1, v0, Lcom/lzy/imagepicker/view/CropImageView;->pA:Landroid/graphics/PointF;

    iget-object v5, v0, Lcom/lzy/imagepicker/view/CropImageView;->doubleClickPos:Landroid/graphics/PointF;

    invoke-direct {v0, v1, v5}, Lcom/lzy/imagepicker/view/CropImageView;->spacing(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v1

    cmpg-float v1, v1, v2

    if-gez v1, :cond_b

    .line 331
    iget-object v1, v0, Lcom/lzy/imagepicker/view/CropImageView;->pA:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, v0, Lcom/lzy/imagepicker/view/CropImageView;->pA:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v1, v2}, Lcom/lzy/imagepicker/view/CropImageView;->doubleClick(FF)V

    const-wide/16 v3, 0x0

    .line 334
    :cond_b
    iget-object v1, v0, Lcom/lzy/imagepicker/view/CropImageView;->doubleClickPos:Landroid/graphics/PointF;

    iget-object v2, v0, Lcom/lzy/imagepicker/view/CropImageView;->pA:Landroid/graphics/PointF;

    invoke-virtual {v1, v2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 335
    iput-wide v3, v0, Lcom/lzy/imagepicker/view/CropImageView;->doubleClickTime:J

    goto :goto_2

    :cond_c
    const/4 v2, 0x3

    if-ne v1, v2, :cond_10

    .line 338
    iget-wide v1, v0, Lcom/lzy/imagepicker/view/CropImageView;->rotation:D

    add-double/2addr v1, v4

    const-wide v3, 0x3ff921fb54442d18L    # 1.5707963267948966

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v3, v1

    if-ne v3, v6, :cond_d

    const/4 v3, 0x0

    .line 340
    :cond_d
    iget-object v1, v0, Lcom/lzy/imagepicker/view/CropImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v2, v0, Lcom/lzy/imagepicker/view/CropImageView;->savedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 341
    iget-object v1, v0, Lcom/lzy/imagepicker/view/CropImageView;->matrix:Landroid/graphics/Matrix;

    mul-int/lit8 v2, v3, 0x5a

    int-to-float v2, v2

    iget-object v4, v0, Lcom/lzy/imagepicker/view/CropImageView;->midPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v5, v0, Lcom/lzy/imagepicker/view/CropImageView;->midPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v4, v5}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    const/4 v1, 0x1

    if-eq v3, v1, :cond_e

    const/4 v1, 0x3

    if-ne v3, v1, :cond_f

    .line 343
    :cond_e
    iget v1, v0, Lcom/lzy/imagepicker/view/CropImageView;->mRotatedImageWidth:I

    .line 344
    iget v2, v0, Lcom/lzy/imagepicker/view/CropImageView;->mRotatedImageHeight:I

    iput v2, v0, Lcom/lzy/imagepicker/view/CropImageView;->mRotatedImageWidth:I

    .line 345
    iput v1, v0, Lcom/lzy/imagepicker/view/CropImageView;->mRotatedImageHeight:I

    .line 347
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/lzy/imagepicker/view/CropImageView;->fixScale()V

    .line 348
    invoke-direct/range {p0 .. p0}, Lcom/lzy/imagepicker/view/CropImageView;->fixTranslation()V

    .line 349
    iget-object v1, v0, Lcom/lzy/imagepicker/view/CropImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Lcom/lzy/imagepicker/view/CropImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 350
    iget v1, v0, Lcom/lzy/imagepicker/view/CropImageView;->sumRotateLevel:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/lzy/imagepicker/view/CropImageView;->sumRotateLevel:I

    :cond_10
    :goto_2
    const/4 v1, 0x0

    .line 352
    iput v1, v0, Lcom/lzy/imagepicker/view/CropImageView;->mode:I

    goto/16 :goto_0

    .line 256
    :cond_11
    iget-object v2, v0, Lcom/lzy/imagepicker/view/CropImageView;->savedMatrix:Landroid/graphics/Matrix;

    iget-object v3, v0, Lcom/lzy/imagepicker/view/CropImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 257
    iget-object v2, v0, Lcom/lzy/imagepicker/view/CropImageView;->pA:Landroid/graphics/PointF;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 258
    iget-object v2, v0, Lcom/lzy/imagepicker/view/CropImageView;->pB:Landroid/graphics/PointF;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {v2, v3, v1}, Landroid/graphics/PointF;->set(FF)V

    const/4 v1, 0x1

    .line 259
    iput v1, v0, Lcom/lzy/imagepicker/view/CropImageView;->mode:I

    .line 356
    :goto_3
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return v1

    .line 252
    :cond_12
    :goto_4
    invoke-super/range {p0 .. p1}, Landroidx/appcompat/widget/AppCompatImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 454
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p2, p2

    .line 455
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-virtual {v5, p2, v0, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 457
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    if-eq p1, p2, :cond_0

    return-object p2

    :catch_0
    move-exception p2

    .line 463
    invoke-virtual {p2}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    :cond_0
    return-object p1
.end method

.method public saveBitmapToFile(Ljava/io/File;IIZ)V
    .locals 4

    .line 533
    iget-boolean v0, p0, Lcom/lzy/imagepicker/view/CropImageView;->mSaving:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 534
    iput-boolean v0, p0, Lcom/lzy/imagepicker/view/CropImageView;->mSaving:Z

    .line 535
    invoke-virtual {p0, p2, p3, p4}, Lcom/lzy/imagepicker/view/CropImageView;->getCropBitmap(IIZ)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 536
    sget-object p3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const-string v0, "IMG_"

    const-string v1, ".jpg"

    .line 537
    invoke-direct {p0, p1, v0, v1}, Lcom/lzy/imagepicker/view/CropImageView;->createFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 538
    iget-object v2, p0, Lcom/lzy/imagepicker/view/CropImageView;->mStyle:Lcom/lzy/imagepicker/view/CropImageView$Style;

    sget-object v3, Lcom/lzy/imagepicker/view/CropImageView$Style;->CIRCLE:Lcom/lzy/imagepicker/view/CropImageView$Style;

    if-ne v2, v3, :cond_1

    if-nez p4, :cond_1

    .line 539
    sget-object p3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const-string p4, ".png"

    .line 540
    invoke-direct {p0, p1, v0, p4}, Lcom/lzy/imagepicker/view/CropImageView;->createFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 544
    :cond_1
    new-instance p1, Lcom/lzy/imagepicker/view/CropImageView$1;

    invoke-direct {p1, p0, p2, p3, v1}, Lcom/lzy/imagepicker/view/CropImageView$1;-><init>(Lcom/lzy/imagepicker/view/CropImageView;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/io/File;)V

    .line 549
    invoke-virtual {p1}, Lcom/lzy/imagepicker/view/CropImageView$1;->start()V

    return-void
.end method

.method public setBorderColor(I)V
    .locals 0

    .line 661
    iput p1, p0, Lcom/lzy/imagepicker/view/CropImageView;->mBorderColor:I

    .line 662
    invoke-virtual {p0}, Lcom/lzy/imagepicker/view/CropImageView;->invalidate()V

    return-void
.end method

.method public setBorderWidth(I)V
    .locals 0

    .line 672
    iput p1, p0, Lcom/lzy/imagepicker/view/CropImageView;->mBorderWidth:I

    .line 673
    invoke-virtual {p0}, Lcom/lzy/imagepicker/view/CropImageView;->invalidate()V

    return-void
.end method

.method public setFocusHeight(I)V
    .locals 0

    .line 639
    iput p1, p0, Lcom/lzy/imagepicker/view/CropImageView;->mFocusHeight:I

    .line 640
    invoke-direct {p0}, Lcom/lzy/imagepicker/view/CropImageView;->initImage()V

    return-void
.end method

.method public setFocusStyle(Lcom/lzy/imagepicker/view/CropImageView$Style;)V
    .locals 0

    .line 678
    iput-object p1, p0, Lcom/lzy/imagepicker/view/CropImageView;->mStyle:Lcom/lzy/imagepicker/view/CropImageView$Style;

    .line 679
    invoke-virtual {p0}, Lcom/lzy/imagepicker/view/CropImageView;->invalidate()V

    return-void
.end method

.method public setFocusWidth(I)V
    .locals 0

    .line 628
    iput p1, p0, Lcom/lzy/imagepicker/view/CropImageView;->mFocusWidth:I

    .line 629
    invoke-direct {p0}, Lcom/lzy/imagepicker/view/CropImageView;->initImage()V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 133
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 134
    invoke-direct {p0}, Lcom/lzy/imagepicker/view/CropImageView;->initImage()V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 139
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 140
    invoke-direct {p0}, Lcom/lzy/imagepicker/view/CropImageView;->initImage()V

    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    .line 145
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 146
    invoke-direct {p0}, Lcom/lzy/imagepicker/view/CropImageView;->initImage()V

    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0

    .line 151
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageURI(Landroid/net/Uri;)V

    .line 152
    invoke-direct {p0}, Lcom/lzy/imagepicker/view/CropImageView;->initImage()V

    return-void
.end method

.method public setMaskColor(I)V
    .locals 0

    .line 650
    iput p1, p0, Lcom/lzy/imagepicker/view/CropImageView;->mMaskColor:I

    .line 651
    invoke-virtual {p0}, Lcom/lzy/imagepicker/view/CropImageView;->invalidate()V

    return-void
.end method

.method public setOnBitmapSaveCompleteListener(Lcom/lzy/imagepicker/view/CropImageView$OnBitmapSaveCompleteListener;)V
    .locals 0

    .line 618
    sput-object p1, Lcom/lzy/imagepicker/view/CropImageView;->mListener:Lcom/lzy/imagepicker/view/CropImageView$OnBitmapSaveCompleteListener;

    return-void
.end method
