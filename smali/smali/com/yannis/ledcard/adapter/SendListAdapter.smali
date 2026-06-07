.class public Lcom/yannis/ledcard/adapter/SendListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SendListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yannis/ledcard/adapter/SendListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private inflater:Landroid/view/LayoutInflater;

.field private sendContentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yannis/ledcard/bean/SendContent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yannis/ledcard/bean/SendContent;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/yannis/ledcard/adapter/SendListAdapter;->sendContentList:Ljava/util/List;

    .line 38
    iput-object p2, p0, Lcom/yannis/ledcard/adapter/SendListAdapter;->context:Landroid/content/Context;

    .line 39
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/yannis/ledcard/adapter/SendListAdapter;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/yannis/ledcard/adapter/SendListAdapter;->sendContentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/yannis/ledcard/adapter/SendListAdapter;->sendContentList:Ljava/util/List;

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
    .locals 3

    if-nez p2, :cond_0

    .line 61
    iget-object p2, p0, Lcom/yannis/ledcard/adapter/SendListAdapter;->inflater:Landroid/view/LayoutInflater;

    const p3, 0x7f0c0044

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 62
    new-instance p3, Lcom/yannis/ledcard/adapter/SendListAdapter$ViewHolder;

    invoke-direct {p3, p0, p2}, Lcom/yannis/ledcard/adapter/SendListAdapter$ViewHolder;-><init>(Lcom/yannis/ledcard/adapter/SendListAdapter;Landroid/view/View;)V

    .line 63
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/yannis/ledcard/adapter/SendListAdapter$ViewHolder;

    .line 68
    :goto_0
    iget-object v0, p0, Lcom/yannis/ledcard/adapter/SendListAdapter;->sendContentList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yannis/ledcard/bean/SendContent;

    .line 69
    iget-object v1, p3, Lcom/yannis/ledcard/adapter/SendListAdapter$ViewHolder;->tvIndex:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object p1, p3, Lcom/yannis/ledcard/adapter/SendListAdapter$ViewHolder;->tvContext:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/yannis/ledcard/bean/SendContent;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_1

    move-object v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/yannis/ledcard/bean/SendContent;->getMessage()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    sget-object p1, Lcom/yannis/ledcard/LedBleApplication;->instance:Lcom/yannis/ledcard/LedBleApplication;

    invoke-virtual {v0}, Lcom/yannis/ledcard/bean/SendContent;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lcom/yannis/ledcard/bean/SendContent;->getMessage()Ljava/lang/String;

    move-result-object v2

    :goto_2
    iget-object v1, p3, Lcom/yannis/ledcard/adapter/SendListAdapter$ViewHolder;->tvContext:Landroid/widget/TextView;

    invoke-static {p1, v2, v1}, Lcom/yannis/ledcard/activity/LedSettingsActivity;->parseLEDBmp(Landroid/content/Context;Ljava/lang/String;Landroid/widget/TextView;)V

    .line 72
    iget-object p1, p3, Lcom/yannis/ledcard/adapter/SendListAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Lcom/yannis/ledcard/bean/SendContent;->isSelect()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 73
    iget-object p1, p3, Lcom/yannis/ledcard/adapter/SendListAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    new-instance p3, Lcom/yannis/ledcard/adapter/SendListAdapter$1;

    invoke-direct {p3, p0, v0}, Lcom/yannis/ledcard/adapter/SendListAdapter$1;-><init>(Lcom/yannis/ledcard/adapter/SendListAdapter;Lcom/yannis/ledcard/bean/SendContent;)V

    invoke-virtual {p1, p3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method
