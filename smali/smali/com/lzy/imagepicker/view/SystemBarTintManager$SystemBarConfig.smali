.class public Lcom/lzy/imagepicker/view/SystemBarTintManager$SystemBarConfig;
.super Ljava/lang/Object;
.source "SystemBarTintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzy/imagepicker/view/SystemBarTintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SystemBarConfig"
.end annotation


# static fields
.field private static final NAV_BAR_HEIGHT_LANDSCAPE_RES_NAME:Ljava/lang/String; = "navigation_bar_height_landscape"

.field private static final NAV_BAR_HEIGHT_RES_NAME:Ljava/lang/String; = "navigation_bar_height"

.field private static final NAV_BAR_WIDTH_RES_NAME:Ljava/lang/String; = "navigation_bar_width"

.field private static final SHOW_NAV_BAR_RES_NAME:Ljava/lang/String; = "config_showNavigationBar"

.field private static final STATUS_BAR_HEIGHT_RES_NAME:Ljava/lang/String; = "status_bar_height"


# instance fields
.field private final mActionBarHeight:I

.field private final mHasNavigationBar:Z

.field private final mInPortrait:Z

.field private final mNavigationBarHeight:I

.field private final mNavigationBarWidth:I

.field private final mSmallestWidthDp:F

.field private final mStatusBarHeight:I

.field private final mTranslucentNavBar:Z

.field private final mTranslucentStatusBar:Z


# direct methods
.method private constructor <init>(Landroid/app/Activity;ZZ)V
    .locals 4

    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 370
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 371
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/lzy/imagepicker/view/SystemBarTintManager$SystemBarConfig;->mInPortrait:Z

    .line 372
    invoke-direct {p0, p1}, Lcom/lzy/imagepicker/view/SystemBarTintManager$SystemBarConfig;->getSmallestWidthDp(Landroid/app/Activity;)F

    move-result v1

    iput v1, p0, Lcom/lzy/imagepicker/view/SystemBarTintManager$SystemBarConfig;->mSmallestWidthDp:F

    const-string v1, "status_bar_height"

    .line 373
    invoke-direct {p0, v0, v1}, Lcom/lzy/imagepicker/view/SystemBarTintManager$SystemBarConfig;->getInternalDimensionSize(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lzy/imagepicker/view/SystemBarTintManager$SystemBarConfig;->mStatusBarHeight:I

    .line 374
    invoke-direct {p0, p1}, Lcom/lzy/imagepicker/view/SystemBarTintManager$SystemBarConfig;->getActionBarHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/lzy/imagepicker/view/SystemBarTintManager$SystemBarConfig;->mActionBarHeight:I

    .line 375
    invoke-direct {p0, p1}, Lcom/lzy/imagepicker/view/SystemBarTintManager$SystemBarConfig;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/lzy/imagepicker/view/SystemBarTintManager$SystemBarConfig;->mNavigationBarHeight:I

    .line 376
    invoke-direct {p0, p1}, Lcom/lzy/imagepicker/view/SystemBarTintManager$SystemBarConfig;->getNavigationBarWidth(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/lzy/imagepicker/view/SystemBarTintManager$SystemBarConfig;->mNavigationBarWidth:I

    if-lez v0, :cond_1

    const/4 v2, 0x1

    .line 377
    :cond_1
    iput-boolean v2, p0, Lcom/lzy/imagepicker/view/SystemBarTintManager$SystemBarConfig;->mHasNavigationBar:Z

    .line 378
    iput-boolean p2, p0, Lcom/lzy/imagepicker/view/SystemBarTintManager$SystemBarConfig;->mTranslucentStatusBar:Z

    .line 379
    iput-boolean p3, p0, Lcom/lzy/imagepicker/view/SystemBarTintManager$SystemBarConfig;->mTranslucentNavBar:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/Activity;ZZLcom/lzy/imagepicker/view/SystemBarTintManager$1;)V
    .locals 0

    .line 351
    invoke-direct {p0, p1, p2, p3}, Lcom/lzy/imagepicker/view/SystemBarTintManager$SystemBarConfig;-><init>(Landroid/app/Activity;ZZ)V

    return-void
.end method

.method private getActionBarHeight(Landroid/content/Context;)I
    .locals 4

    .line 385
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 386
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 387
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x10102eb

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 388
    iget v0, v0, Landroid/util/TypedValue;->data:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private getInternalDimensionSize(Landroid/content/res/Resources;Ljava/lang/String;)I
    .locals 2

    const-string v0, "dimen"

    const-string v1, "android"

    .line 443
    invoke-virtual {p1, p2, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    if-lez p2, :cond_0

    .line 445
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private getNavigationBarHeight(Landroid/content/Context;)I
    .locals 3

    .line 395
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 397
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_1

    .line 398
    invoke-direct {p0, p1}, Lcom/lzy/imagepicker/view/SystemBarTintManager$SystemBarConfig;->hasNavBar(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 400
    iget-boolean p1, p0, Lcom/lzy/imagepicker/view/SystemBarTintManager$SystemBarConfig;->mInPortrait:Z

    if-eqz p1, :cond_0

    const-string p1, "navigation_bar_height"

    goto :goto_0

    :cond_0
    const-string p1, "navigation_bar_height_landscape"

    .line 405
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/lzy/imagepicker/view/SystemBarTintManager$SystemBarConfig;->getInternalDimensionSize(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private getNavigationBarWidth(Landroid/content/Context;)I
    .locals 3

    .line 413
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 415
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 416
    invoke-direct {p0, p1}, Lcom/lzy/imagepicker/view/SystemBarTintManager$SystemBarConfig;->hasNavBar(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "navigation_bar_width"

    .line 417
    invoke-direct {p0, v0, p1}, Lcom/lzy/imagepicker/view/SystemBarTintManager$SystemBarConfig;->getInternalDimensionSize(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private getSmallestWidthDp(Landroid/app/Activity;)F
    .locals 3

    .line 452
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 453
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 454
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    goto :goto_0

    .line 457
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 459
    :goto_0
    iget p1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p1, p1

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p1, v1

    .line 460
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v0

    .line 461
    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1
.end method

.method private hasNavBar(Landroid/content/Context;)Z
    .locals 4

    .line 425
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "config_showNavigationBar"

    const-string v2, "bool"

    const-string v3, "android"

    .line 426
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 428
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    .line 430
    invoke-static {}, Lcom/lzy/imagepicker/view/SystemBarTintManager;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 432
    :cond_0
    invoke-static {}, Lcom/lzy/imagepicker/view/SystemBarTintManager;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v2, p1

    :goto_0
    return v2

    .line 437
    :cond_2
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result p1

    xor-int/2addr p1, v2

    return p1
.end method


# virtual methods
.method public getActionBarHeight()I
    .locals 1

    .line 490
    iget v0, p0, Lcom/lzy/imagepicker/view/SystemBarTintManager$SystemBarConfig;->mActionBarHeight:I

    return v0
.end method

.method public getNavigationBarHeight()I
    .locals 1

    .line 509
    iget v0, p0, Lcom/lzy/imagepicker/view/SystemBarTintManager$SystemBarConfig;->mNavigationBarHeight:I

    return v0
.end method

.method public getNavigationBarWidth()I
    .locals 1

    .line 519
    iget v0, p0, Lcom/lzy/imagepicker/view/SystemBarTintManager$SystemBarConfig;->mNavigationBarWidth:I

    return v0
.end method

.method public getPixelInsetBottom()I
    .locals 1

    .line 538
    iget-boolean v0, p0, Lcom/lzy/imagepicker/view/SystemBarTintManager$SystemBarConfig;->mTranslucentNavBar:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lzy/imagepicker/view/SystemBarTintManager$SystemBarConfig;->isNavigationAtBottom()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 539
    iget v0, p0, Lcom/lzy/imagepicker/view/SystemBarTintManager$SystemBarConfig;->mNavigationBarHeight:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getPixelInsetRight()I
    .locals 1

    .line 551
    iget-boolean v0, p0, Lcom/lzy/imagepicker/view/SystemBarTintManager$SystemBarConfig;->mTranslucentNavBar:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lzy/imagepicker/view/SystemBarTintManager$SystemBarConfig;->isNavigationAtBottom()Z

    move-result v0

    if-nez v0, :cond_0

    .line 552
    iget v0, p0, Lcom/lzy/imagepicker/view/SystemBarTintManager$SystemBarConfig;->mNavigationBarWidth:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getPixelInsetTop(Z)I
    .locals 2

    .line 529
    iget-boolean v0, p0, Lcom/lzy/imagepicker/view/SystemBarTintManager$SystemBarConfig;->mTranslucentStatusBar:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/lzy/imagepicker/view/SystemBarTintManager$SystemBarConfig;->mStatusBarHeight:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    iget v1, p0, Lcom/lzy/imagepicker/view/SystemBarTintManager$SystemBarConfig;->mActionBarHeight:I

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public getStatusBarHeight()I
    .locals 1

    .line 481
    iget v0, p0, Lcom/lzy/imagepicker/view/SystemBarTintManager$SystemBarConfig;->mStatusBarHeight:I

    return v0
.end method

.method public hasNavigtionBar()Z
    .locals 1

    .line 499
    iget-boolean v0, p0, Lcom/lzy/imagepicker/view/SystemBarTintManager$SystemBarConfig;->mHasNavigationBar:Z

    return v0
.end method

.method public isNavigationAtBottom()Z
    .locals 2

    .line 472
    iget v0, p0, Lcom/lzy/imagepicker/view/SystemBarTintManager$SystemBarConfig;->mSmallestWidthDp:F

    const/high16 v1, 0x44160000    # 600.0f

    cmpl-float v0, v0, v1

    if-gez v0, :cond_1

    iget-boolean v0, p0, Lcom/lzy/imagepicker/view/SystemBarTintManager$SystemBarConfig;->mInPortrait:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
