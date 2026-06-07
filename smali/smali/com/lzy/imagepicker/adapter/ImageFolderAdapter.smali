.class public Lcom/lzy/imagepicker/adapter/ImageFolderAdapter;
.super Landroid/widget/BaseAdapter;
.source "ImageFolderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzy/imagepicker/adapter/ImageFolderAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private imageFolders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lzy/imagepicker/bean/ImageFolder;",
            ">;"
        }
    .end annotation
.end field

.field private imagePicker:Lcom/lzy/imagepicker/ImagePicker;

.field private lastSelected:I

.field private mActivity:Landroid/app/Activity;

.field private mImageSize:I

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/lzy/imagepicker/bean/ImageFolder;",
            ">;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lcom/lzy/imagepicker/adapter/ImageFolderAdapter;->lastSelected:I

    .line 40
    iput-object p1, p0, Lcom/lzy/imagepicker/adapter/ImageFolderAdapter;->mActivity:Landroid/app/Activity;

    if-eqz p2, :cond_0

    .line 41
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iput-object p2, p0, Lcom/lzy/imagepicker/adapter/ImageFolderAdapter;->imageFolders:Ljava/util/List;

    goto :goto_0

    .line 42
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/lzy/imagepicker/adapter/ImageFolderAdapter;->imageFolders:Ljava/util/List;

    .line 44
    :goto_0
    invoke-static {}, Lcom/lzy/imagepicker/ImagePicker;->getInstance()Lcom/lzy/imagepicker/ImagePicker;

    move-result-object p2

    iput-object p2, p0, Lcom/lzy/imagepicker/adapter/ImageFolderAdapter;->imagePicker:Lcom/lzy/imagepicker/ImagePicker;

    .line 45
    iget-object p2, p0, Lcom/lzy/imagepicker/adapter/ImageFolderAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {p2}, Lcom/lzy/imagepicker/util/Utils;->getImageItemWidth(Landroid/app/Activity;)I

    move-result p2

    iput p2, p0, Lcom/lzy/imagepicker/adapter/ImageFolderAdapter;->mImageSize:I

    const-string p2, "layout_inflater"

    .line 46
    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/lzy/imagepicker/adapter/ImageFolderAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/lzy/imagepicker/adapter/ImageFolderAdapter;->imageFolders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/lzy/imagepicker/bean/ImageFolder;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/lzy/imagepicker/adapter/ImageFolderAdapter;->imageFolders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lzy/imagepicker/bean/ImageFolder;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lcom/lzy/imagepicker/adapter/ImageFolderAdapter;->getItem(I)Lcom/lzy/imagepicker/bean/ImageFolder;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getSelectIndex()I
    .locals 1

    .line 103
    iget v0, p0, Lcom/lzy/imagepicker/adapter/ImageFolderAdapter;->lastSelected:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 74
    iget-object p2, p0, Lcom/lzy/imagepicker/adapter/ImageFolderAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/lzy/imagepicker/R$layout;->adapter_folder_list_item:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 75
    new-instance p3, Lcom/lzy/imagepicker/adapter/ImageFolderAdapter$ViewHolder;

    invoke-direct {p3, p0, p2}, Lcom/lzy/imagepicker/adapter/ImageFolderAdapter$ViewHolder;-><init>(Lcom/lzy/imagepicker/adapter/ImageFolderAdapter;Landroid/view/View;)V

    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/lzy/imagepicker/adapter/ImageFolderAdapter$ViewHolder;

    .line 80
    :goto_0
    invoke-virtual {p0, p1}, Lcom/lzy/imagepicker/adapter/ImageFolderAdapter;->getItem(I)Lcom/lzy/imagepicker/bean/ImageFolder;

    move-result-object v1

    .line 81
    iget-object v2, p3, Lcom/lzy/imagepicker/adapter/ImageFolderAdapter$ViewHolder;->folderName:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/lzy/imagepicker/bean/ImageFolder;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v2, p3, Lcom/lzy/imagepicker/adapter/ImageFolderAdapter$ViewHolder;->imageCount:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lzy/imagepicker/adapter/ImageFolderAdapter;->mActivity:Landroid/app/Activity;

    sget v4, Lcom/lzy/imagepicker/R$string;->ip_folder_image_count:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, v1, Lcom/lzy/imagepicker/bean/ImageFolder;->images:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v2, p0, Lcom/lzy/imagepicker/adapter/ImageFolderAdapter;->imagePicker:Lcom/lzy/imagepicker/ImagePicker;

    invoke-virtual {v2}, Lcom/lzy/imagepicker/ImagePicker;->getImageLoader()Lcom/lzy/imagepicker/loader/ImageLoader;

    move-result-object v3

    iget-object v4, p0, Lcom/lzy/imagepicker/adapter/ImageFolderAdapter;->mActivity:Landroid/app/Activity;

    iget-object v1, v1, Lcom/lzy/imagepicker/bean/ImageFolder;->cover:Lcom/lzy/imagepicker/bean/ImageItem;

    iget-object v5, v1, Lcom/lzy/imagepicker/bean/ImageItem;->path:Ljava/lang/String;

    iget-object v6, p3, Lcom/lzy/imagepicker/adapter/ImageFolderAdapter$ViewHolder;->cover:Landroid/widget/ImageView;

    iget v8, p0, Lcom/lzy/imagepicker/adapter/ImageFolderAdapter;->mImageSize:I

    move v7, v8

    invoke-interface/range {v3 .. v8}, Lcom/lzy/imagepicker/loader/ImageLoader;->displayImage(Landroid/app/Activity;Ljava/lang/String;Landroid/widget/ImageView;II)V

    .line 85
    iget v1, p0, Lcom/lzy/imagepicker/adapter/ImageFolderAdapter;->lastSelected:I

    if-ne v1, p1, :cond_1

    .line 86
    iget-object p1, p3, Lcom/lzy/imagepicker/adapter/ImageFolderAdapter$ViewHolder;->folderCheck:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 88
    :cond_1
    iget-object p1, p3, Lcom/lzy/imagepicker/adapter/ImageFolderAdapter$ViewHolder;->folderCheck:Landroid/widget/ImageView;

    const/4 p3, 0x4

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-object p2
.end method

.method public refreshData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lzy/imagepicker/bean/ImageFolder;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 50
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iput-object p1, p0, Lcom/lzy/imagepicker/adapter/ImageFolderAdapter;->imageFolders:Ljava/util/List;

    goto :goto_0

    .line 51
    :cond_0
    iget-object p1, p0, Lcom/lzy/imagepicker/adapter/ImageFolderAdapter;->imageFolders:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 52
    :goto_0
    invoke-virtual {p0}, Lcom/lzy/imagepicker/adapter/ImageFolderAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setSelectIndex(I)V
    .locals 1

    .line 95
    iget v0, p0, Lcom/lzy/imagepicker/adapter/ImageFolderAdapter;->lastSelected:I

    if-ne v0, p1, :cond_0

    return-void

    .line 98
    :cond_0
    iput p1, p0, Lcom/lzy/imagepicker/adapter/ImageFolderAdapter;->lastSelected:I

    .line 99
    invoke-virtual {p0}, Lcom/lzy/imagepicker/adapter/ImageFolderAdapter;->notifyDataSetChanged()V

    return-void
.end method
