.class public Lcom/yannis/ledcard/widget/CirclePointIndicatorView;
.super Landroid/widget/LinearLayout;
.source "CirclePointIndicatorView.java"


# instance fields
.field private final context:Landroid/content/Context;

.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field private final mHeight:I

.field private mImageViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mLastImageAnimSet:Landroid/animation/AnimatorSet;

.field private mMaxHeight:I

.field private mNextImageAnimSet:Landroid/animation/AnimatorSet;

.field private mNormalBitmap:Landroid/graphics/Bitmap;

.field private mSelectBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, v0}, Lcom/yannis/ledcard/widget/CirclePointIndicatorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2, v0}, Lcom/yannis/ledcard/widget/CirclePointIndicatorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p2, 0x10

    .line 26
    iput p2, p0, Lcom/yannis/ledcard/widget/CirclePointIndicatorView;->mHeight:I

    .line 45
    iput-object p1, p0, Lcom/yannis/ledcard/widget/CirclePointIndicatorView;->context:Landroid/content/Context;

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/yannis/ledcard/widget/CirclePointIndicatorView;->dpToPx(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/yannis/ledcard/widget/CirclePointIndicatorView;->mMaxHeight:I

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f080099

    invoke-static {p2, p3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/yannis/ledcard/widget/CirclePointIndicatorView;->mNormalBitmap:Landroid/graphics/Bitmap;

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f08009a

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/yannis/ledcard/widget/CirclePointIndicatorView;->mSelectBitmap:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public dpToPx(Landroid/content/Context;I)I
    .locals 0

    .line 150
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    int-to-float p2, p2

    mul-float p1, p1, p2

    const/high16 p2, 0x3f000000    # 0.5f

    add-float/2addr p1, p2

    float-to-int p1, p1

    return p1
.end method

.method public init(I)V
    .locals 6

    .line 52
    invoke-virtual {p0}, Lcom/yannis/ledcard/widget/CirclePointIndicatorView;->removeAllViews()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yannis/ledcard/widget/CirclePointIndicatorView;->mImageViews:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/yannis/ledcard/widget/CirclePointIndicatorView;->mMaxHeight:I

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 55
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    .line 56
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_1

    .line 58
    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/yannis/ledcard/widget/CirclePointIndicatorView;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    if-nez v2, :cond_0

    .line 60
    iget-object v4, p0, Lcom/yannis/ledcard/widget/CirclePointIndicatorView;->mSelectBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 62
    :cond_0
    iget-object v4, p0, Lcom/yannis/ledcard/widget/CirclePointIndicatorView;->mNormalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 64
    :goto_1
    new-instance v4, Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/yannis/ledcard/widget/CirclePointIndicatorView;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 65
    invoke-virtual {v4, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    invoke-virtual {p0, v4, v0}, Lcom/yannis/ledcard/widget/CirclePointIndicatorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    iget-object v4, p0, Lcom/yannis/ledcard/widget/CirclePointIndicatorView;->mImageViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public playBy(II)V
    .locals 10

    if-ltz p1, :cond_0

    if-gez p2, :cond_1

    :cond_0
    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/yannis/ledcard/widget/CirclePointIndicatorView;->mImageViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 93
    iget-object v2, p0, Lcom/yannis/ledcard/widget/CirclePointIndicatorView;->mNormalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 95
    :cond_2
    iget-object v0, p0, Lcom/yannis/ledcard/widget/CirclePointIndicatorView;->mImageViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 96
    iget-object v1, p0, Lcom/yannis/ledcard/widget/CirclePointIndicatorView;->mImageViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 97
    iget-object v2, p0, Lcom/yannis/ledcard/widget/CirclePointIndicatorView;->mSelectBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x2

    new-array v3, v2, [F

    .line 98
    fill-array-data v3, :array_0

    const-string v4, "scaleX"

    invoke-static {v1, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-array v5, v2, [F

    .line 99
    fill-array-data v5, :array_1

    const-string v6, "scaleY"

    invoke-static {v1, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 100
    iget-object v5, p0, Lcom/yannis/ledcard/widget/CirclePointIndicatorView;->mNextImageAnimSet:Landroid/animation/AnimatorSet;

    const/4 v7, 0x0

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 101
    iget-object v5, p0, Lcom/yannis/ledcard/widget/CirclePointIndicatorView;->mNextImageAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->cancel()V

    .line 102
    iput-object v7, p0, Lcom/yannis/ledcard/widget/CirclePointIndicatorView;->mNextImageAnimSet:Landroid/animation/AnimatorSet;

    .line 104
    :cond_3
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lcom/yannis/ledcard/widget/CirclePointIndicatorView;->mNextImageAnimSet:Landroid/animation/AnimatorSet;

    .line 105
    invoke-virtual {v5, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 106
    iget-object v1, p0, Lcom/yannis/ledcard/widget/CirclePointIndicatorView;->mNextImageAnimSet:Landroid/animation/AnimatorSet;

    const-wide/16 v8, 0x12c

    invoke-virtual {v1, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    if-ne p1, p2, :cond_4

    .line 108
    iget-object p1, p0, Lcom/yannis/ledcard/widget/CirclePointIndicatorView;->mNextImageAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :cond_4
    new-array p1, v2, [F

    .line 111
    fill-array-data p1, :array_2

    invoke-static {v0, v4, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    new-array p2, v2, [F

    .line 112
    fill-array-data p2, :array_3

    invoke-static {v0, v6, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 113
    iget-object v1, p0, Lcom/yannis/ledcard/widget/CirclePointIndicatorView;->mLastImageAnimSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 114
    iget-object v1, p0, Lcom/yannis/ledcard/widget/CirclePointIndicatorView;->mLastImageAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 115
    iput-object v7, p0, Lcom/yannis/ledcard/widget/CirclePointIndicatorView;->mLastImageAnimSet:Landroid/animation/AnimatorSet;

    .line 117
    :cond_5
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/yannis/ledcard/widget/CirclePointIndicatorView;->mLastImageAnimSet:Landroid/animation/AnimatorSet;

    .line 118
    invoke-virtual {v1, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 119
    iget-object p1, p0, Lcom/yannis/ledcard/widget/CirclePointIndicatorView;->mLastImageAnimSet:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 120
    iget-object p1, p0, Lcom/yannis/ledcard/widget/CirclePointIndicatorView;->mLastImageAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 121
    iget-object p1, p0, Lcom/yannis/ledcard/widget/CirclePointIndicatorView;->mLastImageAnimSet:Landroid/animation/AnimatorSet;

    new-instance p2, Lcom/yannis/ledcard/widget/CirclePointIndicatorView$1;

    invoke-direct {p2, p0, v0}, Lcom/yannis/ledcard/widget/CirclePointIndicatorView$1;-><init>(Lcom/yannis/ledcard/widget/CirclePointIndicatorView;Landroid/widget/ImageView;)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 146
    iget-object p1, p0, Lcom/yannis/ledcard/widget/CirclePointIndicatorView;->mNextImageAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x3e800000    # 0.25f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3e800000    # 0.25f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3e800000    # 0.25f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x3e800000    # 0.25f
    .end array-data
.end method

.method public playTo(I)V
    .locals 3

    .line 72
    iget-object v0, p0, Lcom/yannis/ledcard/widget/CirclePointIndicatorView;->mImageViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 73
    iget-object v2, p0, Lcom/yannis/ledcard/widget/CirclePointIndicatorView;->mNormalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/yannis/ledcard/widget/CirclePointIndicatorView;->mImageViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 76
    iget-object v0, p0, Lcom/yannis/ledcard/widget/CirclePointIndicatorView;->mSelectBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 77
    fill-array-data v1, :array_0

    const-string v2, "scaleX"

    invoke-static {p1, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-array v0, v0, [F

    .line 78
    fill-array-data v0, :array_1

    const-string v2, "scaleY"

    invoke-static {p1, v2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 79
    iget-object v0, p0, Lcom/yannis/ledcard/widget/CirclePointIndicatorView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/yannis/ledcard/widget/CirclePointIndicatorView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lcom/yannis/ledcard/widget/CirclePointIndicatorView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 83
    :cond_1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/yannis/ledcard/widget/CirclePointIndicatorView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 84
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 85
    iget-object p1, p0, Lcom/yannis/ledcard/widget/CirclePointIndicatorView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 86
    iget-object p1, p0, Lcom/yannis/ledcard/widget/CirclePointIndicatorView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3e800000    # 0.25f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3e800000    # 0.25f
        0x3f800000    # 1.0f
    .end array-data
.end method
