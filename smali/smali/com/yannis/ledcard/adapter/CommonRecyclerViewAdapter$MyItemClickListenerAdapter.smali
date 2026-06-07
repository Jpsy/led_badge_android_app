.class Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter$MyItemClickListenerAdapter;
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
    name = "MyItemClickListenerAdapter"
.end annotation


# instance fields
.field private h:Lcom/yannis/ledcard/adapter/CommonRecyclerViewHolder;

.field final synthetic this$0:Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter;


# direct methods
.method public constructor <init>(Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter;Lcom/yannis/ledcard/adapter/CommonRecyclerViewHolder;)V
    .locals 0

    .line 348
    iput-object p1, p0, Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter$MyItemClickListenerAdapter;->this$0:Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 349
    iput-object p2, p0, Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter$MyItemClickListenerAdapter;->h:Lcom/yannis/ledcard/adapter/CommonRecyclerViewHolder;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 354
    iget-object v0, p0, Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter$MyItemClickListenerAdapter;->this$0:Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter;

    invoke-static {v0}, Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter;->access$000(Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter;)Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter$OnRecyclerViewItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter$MyItemClickListenerAdapter;->this$0:Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter;

    invoke-static {v0}, Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter;->access$000(Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter;)Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter$OnRecyclerViewItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter$MyItemClickListenerAdapter;->h:Lcom/yannis/ledcard/adapter/CommonRecyclerViewHolder;

    invoke-virtual {v1}, Lcom/yannis/ledcard/adapter/CommonRecyclerViewHolder;->getAdapterPosition()I

    move-result v1

    iget-object v2, p0, Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter$MyItemClickListenerAdapter;->this$0:Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter;

    invoke-static {v2}, Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter;->access$100(Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-interface {v0, p1, v1}, Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter$OnRecyclerViewItemClickListener;->onItemClick(Landroid/view/View;I)V

    :cond_0
    return-void
.end method
