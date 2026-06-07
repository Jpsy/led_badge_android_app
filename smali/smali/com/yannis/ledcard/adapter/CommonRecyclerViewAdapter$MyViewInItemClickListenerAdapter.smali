.class Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter$MyViewInItemClickListenerAdapter;
.super Ljava/lang/Object;
.source "CommonRecyclerViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyViewInItemClickListenerAdapter"
.end annotation


# instance fields
.field private h:Lcom/yannis/ledcard/adapter/CommonRecyclerViewHolder;

.field final synthetic this$0:Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter;

.field private viewId:I


# direct methods
.method public constructor <init>(Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter;Lcom/yannis/ledcard/adapter/CommonRecyclerViewHolder;I)V
    .locals 0

    .line 374
    iput-object p1, p0, Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter$MyViewInItemClickListenerAdapter;->this$0:Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 375
    iput-object p2, p0, Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter$MyViewInItemClickListenerAdapter;->h:Lcom/yannis/ledcard/adapter/CommonRecyclerViewHolder;

    .line 376
    iput p3, p0, Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter$MyViewInItemClickListenerAdapter;->viewId:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 381
    iget-object v0, p0, Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter$MyViewInItemClickListenerAdapter;->this$0:Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter;

    invoke-static {v0}, Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter;->access$200(Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter;)Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter$OnViewInItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter$MyViewInItemClickListenerAdapter;->this$0:Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter;

    invoke-static {v0}, Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter;->access$200(Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter;)Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter$OnViewInItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter$MyViewInItemClickListenerAdapter;->h:Lcom/yannis/ledcard/adapter/CommonRecyclerViewHolder;

    invoke-virtual {v1}, Lcom/yannis/ledcard/adapter/CommonRecyclerViewHolder;->getAdapterPosition()I

    move-result v1

    iget-object v2, p0, Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter$MyViewInItemClickListenerAdapter;->this$0:Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter;

    invoke-static {v2}, Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter;->access$100(Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-interface {v0, p1, v1}, Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter$OnViewInItemClickListener;->onViewInItemClick(Landroid/view/View;I)V

    :cond_0
    return-void
.end method
