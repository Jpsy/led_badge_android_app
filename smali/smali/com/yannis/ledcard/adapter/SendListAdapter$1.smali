.class Lcom/yannis/ledcard/adapter/SendListAdapter$1;
.super Ljava/lang/Object;
.source "SendListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yannis/ledcard/adapter/SendListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yannis/ledcard/adapter/SendListAdapter;

.field final synthetic val$sendContent:Lcom/yannis/ledcard/bean/SendContent;


# direct methods
.method constructor <init>(Lcom/yannis/ledcard/adapter/SendListAdapter;Lcom/yannis/ledcard/bean/SendContent;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/yannis/ledcard/adapter/SendListAdapter$1;->this$0:Lcom/yannis/ledcard/adapter/SendListAdapter;

    iput-object p2, p0, Lcom/yannis/ledcard/adapter/SendListAdapter$1;->val$sendContent:Lcom/yannis/ledcard/bean/SendContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 76
    iget-object p1, p0, Lcom/yannis/ledcard/adapter/SendListAdapter$1;->val$sendContent:Lcom/yannis/ledcard/bean/SendContent;

    invoke-virtual {p1}, Lcom/yannis/ledcard/bean/SendContent;->isSelect()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/yannis/ledcard/bean/SendContent;->setSelect(Z)V

    .line 77
    iget-object p1, p0, Lcom/yannis/ledcard/adapter/SendListAdapter$1;->val$sendContent:Lcom/yannis/ledcard/bean/SendContent;

    invoke-virtual {p1}, Lcom/yannis/ledcard/bean/SendContent;->getId()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/yannis/ledcard/bean/SendContent;->update(J)I

    return-void
.end method
