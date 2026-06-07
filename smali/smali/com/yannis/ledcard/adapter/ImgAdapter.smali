.class public Lcom/yannis/ledcard/adapter/ImgAdapter;
.super Landroid/widget/BaseAdapter;
.source "ImgAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yannis/ledcard/adapter/ImgAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private inflater:Landroid/view/LayoutInflater;

.field private ledImgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yannis/ledcard/bean/LedImg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/yannis/ledcard/bean/LedImg;",
            ">;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 29
    iput-object p2, p0, Lcom/yannis/ledcard/adapter/ImgAdapter;->ledImgList:Ljava/util/List;

    .line 30
    iput-object p1, p0, Lcom/yannis/ledcard/adapter/ImgAdapter;->context:Landroid/content/Context;

    .line 31
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/yannis/ledcard/adapter/ImgAdapter;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/yannis/ledcard/adapter/ImgAdapter;->ledImgList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/yannis/ledcard/adapter/ImgAdapter;->ledImgList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    .line 53
    iget-object p2, p0, Lcom/yannis/ledcard/adapter/ImgAdapter;->inflater:Landroid/view/LayoutInflater;

    const p3, 0x7f0c0042

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 54
    new-instance p3, Lcom/yannis/ledcard/adapter/ImgAdapter$ViewHolder;

    invoke-direct {p3, p0}, Lcom/yannis/ledcard/adapter/ImgAdapter$ViewHolder;-><init>(Lcom/yannis/ledcard/adapter/ImgAdapter;)V

    const v0, 0x7f09008c

    .line 55
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/yannis/ledcard/adapter/ImgAdapter$ViewHolder;->img:Landroid/widget/ImageView;

    .line 56
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/yannis/ledcard/adapter/ImgAdapter$ViewHolder;

    .line 60
    :goto_0
    iget-object p3, p3, Lcom/yannis/ledcard/adapter/ImgAdapter$ViewHolder;->img:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/yannis/ledcard/adapter/ImgAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/yannis/ledcard/adapter/ImgAdapter;->ledImgList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yannis/ledcard/bean/LedImg;

    invoke-virtual {p1}, Lcom/yannis/ledcard/bean/LedImg;->getImgRes()I

    move-result p1

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-object p2
.end method
