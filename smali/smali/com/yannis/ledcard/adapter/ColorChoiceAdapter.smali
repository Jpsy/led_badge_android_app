.class public Lcom/yannis/ledcard/adapter/ColorChoiceAdapter;
.super Landroid/widget/BaseAdapter;
.source "ColorChoiceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yannis/ledcard/adapter/ColorChoiceAdapter$ViewHolder;,
        Lcom/yannis/ledcard/adapter/ColorChoiceAdapter$LedColor;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private inflater:Landroid/view/LayoutInflater;

.field private ledColorList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yannis/ledcard/adapter/ColorChoiceAdapter$LedColor;",
            ">;"
        }
    .end annotation
.end field

.field private pos:I

.field private rmaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/widget/RadioButton;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yannis/ledcard/adapter/ColorChoiceAdapter;->rmaps:Ljava/util/Map;

    .line 33
    iput-object p1, p0, Lcom/yannis/ledcard/adapter/ColorChoiceAdapter;->context:Landroid/content/Context;

    .line 34
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/yannis/ledcard/adapter/ColorChoiceAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 35
    invoke-virtual {p0}, Lcom/yannis/ledcard/adapter/ColorChoiceAdapter;->getLedColorList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/yannis/ledcard/adapter/ColorChoiceAdapter;->ledColorList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getLedColor()Lcom/yannis/ledcard/adapter/ColorChoiceAdapter$LedColor;
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/yannis/ledcard/adapter/ColorChoiceAdapter;->ledColorList:Ljava/util/List;

    iget v1, p0, Lcom/yannis/ledcard/adapter/ColorChoiceAdapter;->pos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yannis/ledcard/adapter/ColorChoiceAdapter$LedColor;

    return-object v0
.end method

.method public getLedColorList()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yannis/ledcard/adapter/ColorChoiceAdapter$LedColor;",
            ">;"
        }
    .end annotation

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 116
    new-instance v1, Lcom/yannis/ledcard/adapter/ColorChoiceAdapter$LedColor;

    const-string v2, "#FF0000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3, v2}, Lcom/yannis/ledcard/adapter/ColorChoiceAdapter$LedColor;-><init>(Lcom/yannis/ledcard/adapter/ColorChoiceAdapter;II)V

    .line 117
    new-instance v2, Lcom/yannis/ledcard/adapter/ColorChoiceAdapter$LedColor;

    const-string v3, "#00FF00"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    invoke-direct {v2, p0, v4, v3}, Lcom/yannis/ledcard/adapter/ColorChoiceAdapter$LedColor;-><init>(Lcom/yannis/ledcard/adapter/ColorChoiceAdapter;II)V

    .line 118
    new-instance v3, Lcom/yannis/ledcard/adapter/ColorChoiceAdapter$LedColor;

    const-string v4, "#0000FF"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x2

    invoke-direct {v3, p0, v5, v4}, Lcom/yannis/ledcard/adapter/ColorChoiceAdapter$LedColor;-><init>(Lcom/yannis/ledcard/adapter/ColorChoiceAdapter;II)V

    .line 119
    new-instance v4, Lcom/yannis/ledcard/adapter/ColorChoiceAdapter$LedColor;

    const-string v5, "#FEFE04"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x3

    invoke-direct {v4, p0, v6, v5}, Lcom/yannis/ledcard/adapter/ColorChoiceAdapter$LedColor;-><init>(Lcom/yannis/ledcard/adapter/ColorChoiceAdapter;II)V

    .line 120
    new-instance v5, Lcom/yannis/ledcard/adapter/ColorChoiceAdapter$LedColor;

    const-string v6, "#FF00FF"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x4

    invoke-direct {v5, p0, v7, v6}, Lcom/yannis/ledcard/adapter/ColorChoiceAdapter$LedColor;-><init>(Lcom/yannis/ledcard/adapter/ColorChoiceAdapter;II)V

    .line 121
    new-instance v6, Lcom/yannis/ledcard/adapter/ColorChoiceAdapter$LedColor;

    const-string v7, "#00FFFF"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x5

    invoke-direct {v6, p0, v8, v7}, Lcom/yannis/ledcard/adapter/ColorChoiceAdapter$LedColor;-><init>(Lcom/yannis/ledcard/adapter/ColorChoiceAdapter;II)V

    .line 122
    new-instance v7, Lcom/yannis/ledcard/adapter/ColorChoiceAdapter$LedColor;

    const-string v8, "#FFFFFF"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x6

    invoke-direct {v7, p0, v9, v8}, Lcom/yannis/ledcard/adapter/ColorChoiceAdapter$LedColor;-><init>(Lcom/yannis/ledcard/adapter/ColorChoiceAdapter;II)V

    .line 123
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getResBitmap(I)I
    .locals 1

    const v0, 0x7f080060

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const v0, 0x7f080066

    goto :goto_0

    :pswitch_1
    const v0, 0x7f080065

    goto :goto_0

    :pswitch_2
    const v0, 0x7f080064

    goto :goto_0

    :pswitch_3
    const v0, 0x7f080063

    goto :goto_0

    :pswitch_4
    const v0, 0x7f080062

    goto :goto_0

    :pswitch_5
    const v0, 0x7f080061

    :goto_0
    :pswitch_6
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    if-nez p2, :cond_0

    .line 58
    iget-object p2, p0, Lcom/yannis/ledcard/adapter/ColorChoiceAdapter;->inflater:Landroid/view/LayoutInflater;

    const p3, 0x7f0c0041

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 59
    new-instance p3, Lcom/yannis/ledcard/adapter/ColorChoiceAdapter$ViewHolder;

    invoke-direct {p3, p0}, Lcom/yannis/ledcard/adapter/ColorChoiceAdapter$ViewHolder;-><init>(Lcom/yannis/ledcard/adapter/ColorChoiceAdapter;)V

    const v0, 0x7f09007c

    .line 60
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yannis/ledcard/widget/CircleImageView;

    iput-object v0, p3, Lcom/yannis/ledcard/adapter/ColorChoiceAdapter$ViewHolder;->ivColor:Lcom/yannis/ledcard/widget/CircleImageView;

    .line 61
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/yannis/ledcard/adapter/ColorChoiceAdapter$ViewHolder;

    .line 65
    :goto_0
    iget-object v0, p0, Lcom/yannis/ledcard/adapter/ColorChoiceAdapter;->ledColorList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yannis/ledcard/adapter/ColorChoiceAdapter$LedColor;

    .line 68
    iget-object p3, p3, Lcom/yannis/ledcard/adapter/ColorChoiceAdapter$ViewHolder;->ivColor:Lcom/yannis/ledcard/widget/CircleImageView;

    iget-object v0, p0, Lcom/yannis/ledcard/adapter/ColorChoiceAdapter;->context:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/yannis/ledcard/adapter/ColorChoiceAdapter;->getResBitmap(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/yannis/ledcard/widget/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object p2
.end method
