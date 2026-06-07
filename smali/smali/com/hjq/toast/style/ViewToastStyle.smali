.class public Lcom/hjq/toast/style/ViewToastStyle;
.super Ljava/lang/Object;
.source "ViewToastStyle.java"

# interfaces
.implements Lcom/hjq/toast/config/IToastStyle;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/hjq/toast/config/IToastStyle<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private final mLayoutId:I

.field private final mStyle:Lcom/hjq/toast/config/IToastStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hjq/toast/config/IToastStyle<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/hjq/toast/config/IToastStyle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/hjq/toast/config/IToastStyle<",
            "*>;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lcom/hjq/toast/style/ViewToastStyle;->mLayoutId:I

    .line 23
    iput-object p2, p0, Lcom/hjq/toast/style/ViewToastStyle;->mStyle:Lcom/hjq/toast/config/IToastStyle;

    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 2

    .line 28
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iget v0, p0, Lcom/hjq/toast/style/ViewToastStyle;->mLayoutId:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getGravity()I
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/hjq/toast/style/ViewToastStyle;->mStyle:Lcom/hjq/toast/config/IToastStyle;

    if-nez v0, :cond_0

    const/16 v0, 0x11

    return v0

    .line 36
    :cond_0
    invoke-interface {v0}, Lcom/hjq/toast/config/IToastStyle;->getGravity()I

    move-result v0

    return v0
.end method

.method public getHorizontalMargin()F
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/hjq/toast/style/ViewToastStyle;->mStyle:Lcom/hjq/toast/config/IToastStyle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 60
    :cond_0
    invoke-interface {v0}, Lcom/hjq/toast/config/IToastStyle;->getHorizontalMargin()F

    move-result v0

    return v0
.end method

.method public getVerticalMargin()F
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/hjq/toast/style/ViewToastStyle;->mStyle:Lcom/hjq/toast/config/IToastStyle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 68
    :cond_0
    invoke-interface {v0}, Lcom/hjq/toast/config/IToastStyle;->getVerticalMargin()F

    move-result v0

    return v0
.end method

.method public getXOffset()I
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/hjq/toast/style/ViewToastStyle;->mStyle:Lcom/hjq/toast/config/IToastStyle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 44
    :cond_0
    invoke-interface {v0}, Lcom/hjq/toast/config/IToastStyle;->getXOffset()I

    move-result v0

    return v0
.end method

.method public getYOffset()I
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/hjq/toast/style/ViewToastStyle;->mStyle:Lcom/hjq/toast/config/IToastStyle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 52
    :cond_0
    invoke-interface {v0}, Lcom/hjq/toast/config/IToastStyle;->getYOffset()I

    move-result v0

    return v0
.end method
