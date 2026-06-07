.class Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$ImageViewHolder$2;
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
.method constructor <init>(Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$ImageViewHolder;ILcom/lzy/imagepicker/bean/ImageItem;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$ImageViewHolder$2;->this$1:Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$ImageViewHolder;

    iput p2, p0, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$ImageViewHolder$2;->val$position:I

    iput-object p3, p0, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$ImageViewHolder$2;->val$imageItem:Lcom/lzy/imagepicker/bean/ImageItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 154
    iget-object p1, p0, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$ImageViewHolder$2;->this$1:Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$ImageViewHolder;

    iget-object p1, p1, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$ImageViewHolder;->cbCheck:Lcom/lzy/imagepicker/view/SuperCheckBox;

    iget-object v0, p0, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$ImageViewHolder$2;->this$1:Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$ImageViewHolder;

    iget-object v0, v0, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$ImageViewHolder;->cbCheck:Lcom/lzy/imagepicker/view/SuperCheckBox;

    invoke-virtual {v0}, Lcom/lzy/imagepicker/view/SuperCheckBox;->isChecked()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/lzy/imagepicker/view/SuperCheckBox;->setChecked(Z)V

    .line 155
    iget-object p1, p0, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$ImageViewHolder$2;->this$1:Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$ImageViewHolder;

    iget-object p1, p1, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$ImageViewHolder;->this$0:Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;

    invoke-static {p1}, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;->access$200(Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;)Lcom/lzy/imagepicker/ImagePicker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lzy/imagepicker/ImagePicker;->getSelectLimit()I

    move-result p1

    .line 156
    iget-object v0, p0, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$ImageViewHolder$2;->this$1:Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$ImageViewHolder;

    iget-object v0, v0, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$ImageViewHolder;->cbCheck:Lcom/lzy/imagepicker/view/SuperCheckBox;

    invoke-virtual {v0}, Lcom/lzy/imagepicker/view/SuperCheckBox;->isChecked()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$ImageViewHolder$2;->this$1:Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$ImageViewHolder;

    iget-object v0, v0, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$ImageViewHolder;->this$0:Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;

    invoke-static {v0}, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;->access$300(Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, p1, :cond_0

    .line 157
    iget-object v0, p0, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$ImageViewHolder$2;->this$1:Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$ImageViewHolder;

    iget-object v0, v0, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$ImageViewHolder;->this$0:Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;

    invoke-static {v0}, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;->access$400(Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$ImageViewHolder$2;->this$1:Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$ImageViewHolder;

    iget-object v3, v3, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$ImageViewHolder;->this$0:Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;

    invoke-static {v3}, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;->access$400(Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;)Landroid/app/Activity;

    move-result-object v3

    sget v4, Lcom/lzy/imagepicker/R$string;->ip_select_limit:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {v3, v4, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 158
    iget-object p1, p0, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$ImageViewHolder$2;->this$1:Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$ImageViewHolder;

    iget-object p1, p1, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$ImageViewHolder;->cbCheck:Lcom/lzy/imagepicker/view/SuperCheckBox;

    invoke-virtual {p1, v2}, Lcom/lzy/imagepicker/view/SuperCheckBox;->setChecked(Z)V

    .line 159
    iget-object p1, p0, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$ImageViewHolder$2;->this$1:Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$ImageViewHolder;

    iget-object p1, p1, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$ImageViewHolder;->mask:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 161
    :cond_0
    iget-object p1, p0, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$ImageViewHolder$2;->this$1:Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$ImageViewHolder;

    iget-object p1, p1, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$ImageViewHolder;->this$0:Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;

    invoke-static {p1}, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;->access$200(Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;)Lcom/lzy/imagepicker/ImagePicker;

    move-result-object p1

    iget v0, p0, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$ImageViewHolder$2;->val$position:I

    iget-object v1, p0, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$ImageViewHolder$2;->val$imageItem:Lcom/lzy/imagepicker/bean/ImageItem;

    iget-object v3, p0, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$ImageViewHolder$2;->this$1:Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$ImageViewHolder;

    iget-object v3, v3, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$ImageViewHolder;->cbCheck:Lcom/lzy/imagepicker/view/SuperCheckBox;

    invoke-virtual {v3}, Lcom/lzy/imagepicker/view/SuperCheckBox;->isChecked()Z

    move-result v3

    invoke-virtual {p1, v0, v1, v3}, Lcom/lzy/imagepicker/ImagePicker;->addSelectedImageItem(ILcom/lzy/imagepicker/bean/ImageItem;Z)V

    .line 162
    iget-object p1, p0, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$ImageViewHolder$2;->this$1:Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$ImageViewHolder;

    iget-object p1, p1, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$ImageViewHolder;->mask:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method
