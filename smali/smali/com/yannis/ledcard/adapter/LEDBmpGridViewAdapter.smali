.class public Lcom/yannis/ledcard/adapter/LEDBmpGridViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "LEDBmpGridViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yannis/ledcard/adapter/LEDBmpGridViewAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final isEditMode:Z

.field private final mBmpList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yannis/ledcard/bean/LEDBmp;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/yannis/ledcard/bean/LEDBmp;",
            ">;Z)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/yannis/ledcard/adapter/LEDBmpGridViewAdapter;->context:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/yannis/ledcard/adapter/LEDBmpGridViewAdapter;->mBmpList:Ljava/util/List;

    .line 33
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/yannis/ledcard/adapter/LEDBmpGridViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 34
    iput-boolean p3, p0, Lcom/yannis/ledcard/adapter/LEDBmpGridViewAdapter;->isEditMode:Z

    return-void
.end method

.method public static getImageResourceId(Ljava/lang/String;)I
    .locals 3

    .line 93
    invoke-static {}, Lorg/litepal/LitePalApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-static {}, Lorg/litepal/LitePalApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "drawable"

    invoke-virtual {v1, p0, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getImageResourceIdById(I)I
    .locals 2

    const v0, 0x7f080094

    if-lez p0, :cond_0

    const/16 v1, 0x30

    if-gt p0, v1, :cond_0

    .line 100
    rem-int/lit8 p0, p0, 0x10

    add-int/lit8 p0, p0, -0x1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    return v0

    :pswitch_1
    const p0, 0x7f080092

    return p0

    :pswitch_2
    const p0, 0x7f080091

    return p0

    :pswitch_3
    const p0, 0x7f080090

    return p0

    :pswitch_4
    const p0, 0x7f08008f

    return p0

    :pswitch_5
    const p0, 0x7f08008e

    return p0

    :pswitch_6
    const p0, 0x7f08008d

    return p0

    :pswitch_7
    const p0, 0x7f08008c

    return p0

    :pswitch_8
    const p0, 0x7f08008b

    return p0

    :pswitch_9
    const p0, 0x7f08008a

    return p0

    :pswitch_a
    const p0, 0x7f080089

    return p0

    :pswitch_b
    const p0, 0x7f080098

    return p0

    :pswitch_c
    const p0, 0x7f080097

    return p0

    :pswitch_d
    const p0, 0x7f080096

    return p0

    :pswitch_e
    const p0, 0x7f080095

    return p0

    :pswitch_f
    const p0, 0x7f080093

    return p0

    :cond_0
    return v0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_f
        :pswitch_0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/yannis/ledcard/adapter/LEDBmpGridViewAdapter;->mBmpList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/yannis/ledcard/adapter/LEDBmpGridViewAdapter;->mBmpList:Ljava/util/List;

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
    .locals 4

    .line 55
    iget-object p3, p0, Lcom/yannis/ledcard/adapter/LEDBmpGridViewAdapter;->mBmpList:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/yannis/ledcard/bean/LEDBmp;

    if-nez p2, :cond_0

    .line 57
    iget-object p2, p0, Lcom/yannis/ledcard/adapter/LEDBmpGridViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0c0043

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 58
    new-instance v0, Lcom/yannis/ledcard/adapter/LEDBmpGridViewAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/yannis/ledcard/adapter/LEDBmpGridViewAdapter$ViewHolder;-><init>(Lcom/yannis/ledcard/adapter/LEDBmpGridViewAdapter;)V

    const v1, 0x7f09008c

    .line 59
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/yannis/ledcard/adapter/LEDBmpGridViewAdapter$ViewHolder;->ledBmp:Landroid/widget/ImageView;

    const v1, 0x7f090078

    .line 60
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/yannis/ledcard/adapter/LEDBmpGridViewAdapter$ViewHolder;->ivAdd:Landroid/widget/ImageView;

    const v1, 0x7f09007e

    .line 61
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/yannis/ledcard/adapter/LEDBmpGridViewAdapter$ViewHolder;->ivDelete:Landroid/widget/ImageView;

    .line 62
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yannis/ledcard/adapter/LEDBmpGridViewAdapter$ViewHolder;

    .line 66
    :goto_0
    iget-object v1, p0, Lcom/yannis/ledcard/adapter/LEDBmpGridViewAdapter;->mBmpList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-ne p1, v1, :cond_1

    invoke-virtual {p3}, Lcom/yannis/ledcard/bean/LEDBmp;->getId()I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 67
    iget-object p1, v0, Lcom/yannis/ledcard/adapter/LEDBmpGridViewAdapter$ViewHolder;->ledBmp:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 68
    iget-object p1, v0, Lcom/yannis/ledcard/adapter/LEDBmpGridViewAdapter$ViewHolder;->ivAdd:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 70
    :cond_1
    iget-boolean p1, p0, Lcom/yannis/ledcard/adapter/LEDBmpGridViewAdapter;->isEditMode:Z

    if-eqz p1, :cond_2

    .line 71
    iget-object p1, v0, Lcom/yannis/ledcard/adapter/LEDBmpGridViewAdapter$ViewHolder;->ivDelete:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 73
    :cond_2
    iget-object p1, v0, Lcom/yannis/ledcard/adapter/LEDBmpGridViewAdapter$ViewHolder;->ivDelete:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 74
    :goto_1
    iget-object p1, v0, Lcom/yannis/ledcard/adapter/LEDBmpGridViewAdapter$ViewHolder;->ivAdd:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 75
    iget-object p1, v0, Lcom/yannis/ledcard/adapter/LEDBmpGridViewAdapter$ViewHolder;->ledBmp:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 76
    invoke-virtual {p3}, Lcom/yannis/ledcard/bean/LEDBmp;->getFilePath()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 79
    invoke-static {p1}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_2

    .line 81
    :cond_3
    iget-object p1, p0, Lcom/yannis/ledcard/adapter/LEDBmpGridViewAdapter;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p3}, Lcom/yannis/ledcard/bean/LEDBmp;->getId()I

    move-result p3

    invoke-static {p3}, Lcom/yannis/ledcard/adapter/LEDBmpGridViewAdapter;->getImageResourceIdById(I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_2
    if-eqz p1, :cond_4

    .line 84
    iget-object p3, v0, Lcom/yannis/ledcard/adapter/LEDBmpGridViewAdapter$ViewHolder;->ledBmp:Landroid/widget/ImageView;

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    :goto_3
    return-object p2
.end method
