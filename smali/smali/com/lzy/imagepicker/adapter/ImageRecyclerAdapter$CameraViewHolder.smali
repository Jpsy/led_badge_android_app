.class Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$CameraViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ImageRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraViewHolder"
.end annotation


# instance fields
.field mItemView:Landroid/view/View;

.field final synthetic this$0:Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;


# direct methods
.method constructor <init>(Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;Landroid/view/View;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$CameraViewHolder;->this$0:Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;

    .line 190
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 191
    iput-object p2, p0, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$CameraViewHolder;->mItemView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method bindCamera()V
    .locals 4

    .line 195
    iget-object v0, p0, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$CameraViewHolder;->mItemView:Landroid/view/View;

    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    iget-object v2, p0, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$CameraViewHolder;->this$0:Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;

    invoke-static {v2}, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;->access$000(Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;)I

    move-result v2

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 196
    iget-object v0, p0, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$CameraViewHolder;->mItemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 197
    iget-object v0, p0, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$CameraViewHolder;->mItemView:Landroid/view/View;

    new-instance v1, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$CameraViewHolder$1;

    invoke-direct {v1, p0}, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$CameraViewHolder$1;-><init>(Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$CameraViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
