.class public Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ImageRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$CameraViewHolder;,
        Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$ImageViewHolder;,
        Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$OnImageItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final ITEM_TYPE_CAMERA:I = 0x0

.field private static final ITEM_TYPE_NORMAL:I = 0x1


# instance fields
.field private imagePicker:Lcom/lzy/imagepicker/ImagePicker;

.field private images:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/lzy/imagepicker/bean/ImageItem;",
            ">;"
        }
    .end annotation
.end field

.field private isShowCamera:Z

.field private listener:Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$OnImageItemClickListener;

.field private mActivity:Landroid/app/Activity;

.field private mImageSize:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mSelectedImages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/lzy/imagepicker/bean/ImageItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList<",
            "Lcom/lzy/imagepicker/bean/ImageItem;",
            ">;)V"
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;->mActivity:Landroid/app/Activity;

    if-eqz p2, :cond_1

    .line 72
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    iput-object p2, p0, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;->images:Ljava/util/ArrayList;

    goto :goto_1

    .line 72
    :cond_1
    :goto_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;->images:Ljava/util/ArrayList;

    .line 75
    :goto_1
    iget-object p2, p0, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {p2}, Lcom/lzy/imagepicker/util/Utils;->getImageItemWidth(Landroid/app/Activity;)I

    move-result p2

    iput p2, p0, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;->mImageSize:I

    .line 76
    invoke-static {}, Lcom/lzy/imagepicker/ImagePicker;->getInstance()Lcom/lzy/imagepicker/ImagePicker;

    move-result-object p2

    iput-object p2, p0, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;->imagePicker:Lcom/lzy/imagepicker/ImagePicker;

    .line 77
    invoke-virtual {p2}, Lcom/lzy/imagepicker/ImagePicker;->isShowCamera()Z

    move-result p2

    iput-boolean p2, p0, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;->isShowCamera:Z

    .line 78
    iget-object p2, p0, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;->imagePicker:Lcom/lzy/imagepicker/ImagePicker;

    invoke-virtual {p2}, Lcom/lzy/imagepicker/ImagePicker;->getSelectedImages()Ljava/util/ArrayList;

    move-result-object p2

    iput-object p2, p0, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;->mSelectedImages:Ljava/util/ArrayList;

    .line 79
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic access$000(Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;->mImageSize:I

    return p0
.end method

.method static synthetic access$100(Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;)Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$OnImageItemClickListener;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;->listener:Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$OnImageItemClickListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;)Lcom/lzy/imagepicker/ImagePicker;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;->imagePicker:Lcom/lzy/imagepicker/ImagePicker;

    return-object p0
.end method

.method static synthetic access$300(Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;->mSelectedImages:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$400(Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;)Landroid/app/Activity;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;->mActivity:Landroid/app/Activity;

    return-object p0
.end method


# virtual methods
.method public getItem(I)Lcom/lzy/imagepicker/bean/ImageItem;
    .locals 1

    .line 116
    iget-boolean v0, p0, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;->isShowCamera:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;->images:Ljava/util/ArrayList;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lzy/imagepicker/bean/ImageItem;

    return-object p1

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;->images:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lzy/imagepicker/bean/ImageItem;

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 112
    iget-boolean v0, p0, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;->isShowCamera:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;->images:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;->images:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 101
    iget-boolean v0, p0, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;->isShowCamera:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    :cond_0
    return v1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 92
    instance-of v0, p1, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$CameraViewHolder;

    if-eqz v0, :cond_0

    .line 93
    check-cast p1, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$CameraViewHolder;

    invoke-virtual {p1}, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$CameraViewHolder;->bindCamera()V

    goto :goto_0

    .line 94
    :cond_0
    instance-of v0, p1, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$ImageViewHolder;

    if-eqz v0, :cond_1

    .line 95
    check-cast p1, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$ImageViewHolder;

    invoke-virtual {p1, p2}, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$ImageViewHolder;->bind(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 85
    new-instance p2, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$CameraViewHolder;

    iget-object v1, p0, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/lzy/imagepicker/R$layout;->adapter_camera_item:I

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$CameraViewHolder;-><init>(Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;Landroid/view/View;)V

    return-object p2

    .line 87
    :cond_0
    new-instance p2, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$ImageViewHolder;

    iget-object v1, p0, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/lzy/imagepicker/R$layout;->adapter_image_list_item:I

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$ImageViewHolder;-><init>(Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public refreshData(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/lzy/imagepicker/bean/ImageItem;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 62
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    iput-object p1, p0, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;->images:Ljava/util/ArrayList;

    goto :goto_1

    .line 62
    :cond_1
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;->images:Ljava/util/ArrayList;

    .line 64
    :goto_1
    invoke-virtual {p0}, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnImageItemClickListener(Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$OnImageItemClickListener;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;->listener:Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$OnImageItemClickListener;

    return-void
.end method
