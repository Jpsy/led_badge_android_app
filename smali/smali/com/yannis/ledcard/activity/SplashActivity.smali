.class public Lcom/yannis/ledcard/activity/SplashActivity;
.super Lcom/yannis/ledcard/base/BaseActivity;
.source "SplashActivity.java"


# static fields
.field public static final PERMISSIONS_REQUEST_ACCESS_COARSE_LOCATION:I = 0x6e


# instance fields
.field public startView:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900e3
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/yannis/ledcard/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/yannis/ledcard/activity/SplashActivity;Ljava/lang/Class;)V
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lcom/yannis/ledcard/activity/SplashActivity;->switchTo(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method protected init()V
    .locals 0

    return-void
.end method

.method protected initData()V
    .locals 6

    .line 46
    const-class v0, Lcom/yannis/ledcard/bean/SendContent;

    invoke-static {v0}, Lorg/litepal/crud/DataSupport;->count(Ljava/lang/Class;)I

    move-result v0

    if-nez v0, :cond_2

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x8

    if-ge v2, v3, :cond_1

    .line 50
    new-instance v3, Lcom/yannis/ledcard/bean/SendContent;

    invoke-direct {v3}, Lcom/yannis/ledcard/bean/SendContent;-><init>()V

    .line 51
    invoke-virtual {v3, v1}, Lcom/yannis/ledcard/bean/SendContent;->setMarquee(Z)V

    const-string v4, ""

    .line 52
    invoke-virtual {v3, v4}, Lcom/yannis/ledcard/bean/SendContent;->setMessage(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v3, v1}, Lcom/yannis/ledcard/bean/SendContent;->setSelect(Z)V

    .line 54
    invoke-virtual {v3, v1}, Lcom/yannis/ledcard/bean/SendContent;->setFlash(Z)V

    .line 55
    invoke-virtual {v3, v1}, Lcom/yannis/ledcard/bean/SendContent;->setReverse(Z)V

    const/4 v4, 0x1

    .line 56
    invoke-virtual {v3, v4}, Lcom/yannis/ledcard/bean/SendContent;->setMode(I)V

    const/4 v5, 0x4

    .line 57
    invoke-virtual {v3, v5}, Lcom/yannis/ledcard/bean/SendContent;->setSpeed(I)V

    if-nez v2, :cond_0

    const-string v5, "Welcome"

    .line 59
    invoke-virtual {v3, v5}, Lcom/yannis/ledcard/bean/SendContent;->setMessage(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v3, v4}, Lcom/yannis/ledcard/bean/SendContent;->setSelect(Z)V

    .line 66
    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 68
    :cond_1
    invoke-static {v0}, Lorg/litepal/crud/DataSupport;->saveAll(Ljava/util/Collection;)V

    .line 70
    :cond_2
    invoke-virtual {p0}, Lcom/yannis/ledcard/activity/SplashActivity;->toMainActivity()V

    return-void
.end method

.method protected initEvent()V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected setLayoutResId()I
    .locals 1

    const v0, 0x7f0c0025

    return v0
.end method

.method public toMainActivity()V
    .locals 3

    .line 150
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x7d0

    .line 151
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 152
    iget-object v1, p0, Lcom/yannis/ledcard/activity/SplashActivity;->startView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 153
    new-instance v1, Lcom/yannis/ledcard/activity/SplashActivity$1;

    invoke-direct {v1, p0}, Lcom/yannis/ledcard/activity/SplashActivity$1;-><init>(Lcom/yannis/ledcard/activity/SplashActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method
