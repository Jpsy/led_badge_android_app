.class Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$ImageViewHolder$1;
.super Ljava/lang/Object;
.source "ImageRecyclerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$ImageViewHolder;->bind(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$ImageViewHolder;

.field final synthetic val$imageItem:Lcom/lzy/imagepicker/bean/ImageItem;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$ImageViewHolder;Lcom/lzy/imagepicker/bean/ImageItem;I)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$ImageViewHolder$1;->this$1:Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$ImageViewHolder;

    iput-object p2, p0, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$ImageViewHolder$1;->val$imageItem:Lcom/lzy/imagepicker/bean/ImageItem;

    iput p3, p0, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$ImageViewHolder$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 148
    iget-object p1, p0, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$ImageViewHolder$1;->this$1:Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$ImageViewHolder;

    iget-object p1, p1, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$ImageViewHolder;->this$0:Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;

    invoke-static {p1}, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;->access$100(Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;)Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$OnImageItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$ImageViewHolder$1;->this$1:Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$ImageViewHolder;

    iget-object p1, p1, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$ImageViewHolder;->this$0:Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;

    invoke-static {p1}, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;->access$100(Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;)Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$OnImageItemClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$ImageViewHolder$1;->this$1:Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$ImageViewHolder;

    iget-object v0, v0, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$ImageViewHolder;->rootView:Landroid/view/View;

    iget-object v1, p0, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$ImageViewHolder$1;->val$imageItem:Lcom/lzy/imagepicker/bean/ImageItem;

    iget v2, p0, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$ImageViewHolder$1;->val$position:I

    invoke-interface {p1, v0, v1, v2}, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$OnImageItemClickListener;->onImageItemClick(Landroid/view/View;Lcom/lzy/imagepicker/bean/ImageItem;I)V

    :cond_0
    return-void
.end method
