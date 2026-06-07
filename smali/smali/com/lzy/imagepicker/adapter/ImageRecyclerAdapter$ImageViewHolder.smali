.class Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$ImageViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ImageRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageViewHolder"
.end annotation


# instance fields
.field cbCheck:Lcom/lzy/imagepicker/view/SuperCheckBox;

.field checkView:Landroid/view/View;

.field ivThumb:Landroid/widget/ImageView;

.field mask:Landroid/view/View;

.field rootView:Landroid/view/View;

.field final synthetic this$0:Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;


# direct methods
.method constructor <init>(Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;Landroid/view/View;)V
    .locals 2

    .line 133
    iput-object p1, p0, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$ImageViewHolder;->this$0:Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;

    .line 134
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 135
    iput-object p2, p0, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$ImageViewHolder;->rootView:Landroid/view/View;

    .line 136
    sget v0, Lcom/lzy/imagepicker/R$id;->iv_thumb:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$ImageViewHolder;->ivThumb:Landroid/widget/ImageView;

    .line 137
    sget v0, Lcom/lzy/imagepicker/R$id;->mask:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$ImageViewHolder;->mask:Landroid/view/View;

    .line 138
    sget v0, Lcom/lzy/imagepicker/R$id;->checkView:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$ImageViewHolder;->checkView:Landroid/view/View;

    .line 139
    sget v0, Lcom/lzy/imagepicker/R$id;->cb_check:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lzy/imagepicker/view/SuperCheckBox;

    iput-object v0, p0, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$ImageViewHolder;->cbCheck:Lcom/lzy/imagepicker/view/SuperCheckBox;

    .line 140
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-static {p1}, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;->access$000(Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;)I

    move-result p1

    const/4 v1, -0x1

    invoke-direct {v0, v1, p1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method bind(I)V
    .locals 7

    .line 144
    iget-object v0, p0, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$ImageViewHolder;->this$0:Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;

    invoke-virtual {v0, p1}, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;->getItem(I)Lcom/lzy/imagepicker/bean/ImageItem;

    move-result-object v0

    .line 145
    iget-object v1, p0, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$ImageViewHolder;->ivThumb:Landroid/widget/ImageView;

    new-instance v2, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$ImageViewHolder$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$ImageViewHolder$1;-><init>(Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$ImageViewHolder;Lcom/lzy/imagepicker/bean/ImageItem;I)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v1, p0, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$ImageViewHolder;->checkView:Landroid/view/View;

    new-instance v2, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$ImageViewHolder$2;

    invoke-direct {v2, p0, p1, v0}, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$ImageViewHolder$2;-><init>(Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$ImageViewHolder;ILcom/lzy/imagepicker/bean/ImageItem;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object p1, p0, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$ImageViewHolder;->this$0:Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;

    invoke-static {p1}, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;->access$200(Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;)Lcom/lzy/imagepicker/ImagePicker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lzy/imagepicker/ImagePicker;->isMultiMode()Z

    move-result p1

    const/16 v1, 0x8

    if-eqz p1, :cond_1

    .line 168
    iget-object p1, p0, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$ImageViewHolder;->cbCheck:Lcom/lzy/imagepicker/view/SuperCheckBox;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/lzy/imagepicker/view/SuperCheckBox;->setVisibility(I)V

    .line 169
    iget-object p1, p0, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$ImageViewHolder;->this$0:Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;

    invoke-static {p1}, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;->access$300(Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 171
    iget-object p1, p0, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$ImageViewHolder;->mask:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 172
    iget-object p1, p0, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$ImageViewHolder;->cbCheck:Lcom/lzy/imagepicker/view/SuperCheckBox;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/lzy/imagepicker/view/SuperCheckBox;->setChecked(Z)V

    goto :goto_0

    .line 174
    :cond_0
    iget-object p1, p0, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$ImageViewHolder;->mask:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 175
    iget-object p1, p0, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$ImageViewHolder;->cbCheck:Lcom/lzy/imagepicker/view/SuperCheckBox;

    invoke-virtual {p1, v2}, Lcom/lzy/imagepicker/view/SuperCheckBox;->setChecked(Z)V

    goto :goto_0

    .line 178
    :cond_1
    iget-object p1, p0, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$ImageViewHolder;->cbCheck:Lcom/lzy/imagepicker/view/SuperCheckBox;

    invoke-virtual {p1, v1}, Lcom/lzy/imagepicker/view/SuperCheckBox;->setVisibility(I)V

    .line 180
    :goto_0
    iget-object p1, p0, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$ImageViewHolder;->this$0:Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;

    invoke-static {p1}, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;->access$200(Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;)Lcom/lzy/imagepicker/ImagePicker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lzy/imagepicker/ImagePicker;->getImageLoader()Lcom/lzy/imagepicker/loader/ImageLoader;

    move-result-object v1

    iget-object p1, p0, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$ImageViewHolder;->this$0:Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;

    invoke-static {p1}, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;->access$400(Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, v0, Lcom/lzy/imagepicker/bean/ImageItem;->path:Ljava/lang/String;

    iget-object v4, p0, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$ImageViewHolder;->ivThumb:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$ImageViewHolder;->this$0:Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;

    invoke-static {p1}, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;->access$000(Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;)I

    move-result v5

    iget-object p1, p0, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$ImageViewHolder;->this$0:Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;

    invoke-static {p1}, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;->access$000(Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;)I

    move-result v6

    invoke-interface/range {v1 .. v6}, Lcom/lzy/imagepicker/loader/ImageLoader;->displayImage(Landroid/app/Activity;Ljava/lang/String;Landroid/widget/ImageView;II)V

    return-void
.end method
