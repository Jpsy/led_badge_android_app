.class Lcom/lzy/imagepicker/adapter/ImageFolderAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ImageFolderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzy/imagepicker/adapter/ImageFolderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field cover:Landroid/widget/ImageView;

.field folderCheck:Landroid/widget/ImageView;

.field folderName:Landroid/widget/TextView;

.field imageCount:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/lzy/imagepicker/adapter/ImageFolderAdapter;


# direct methods
.method public constructor <init>(Lcom/lzy/imagepicker/adapter/ImageFolderAdapter;Landroid/view/View;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/lzy/imagepicker/adapter/ImageFolderAdapter$ViewHolder;->this$0:Lcom/lzy/imagepicker/adapter/ImageFolderAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    sget p1, Lcom/lzy/imagepicker/R$id;->iv_cover:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/lzy/imagepicker/adapter/ImageFolderAdapter$ViewHolder;->cover:Landroid/widget/ImageView;

    .line 114
    sget p1, Lcom/lzy/imagepicker/R$id;->tv_folder_name:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/lzy/imagepicker/adapter/ImageFolderAdapter$ViewHolder;->folderName:Landroid/widget/TextView;

    .line 115
    sget p1, Lcom/lzy/imagepicker/R$id;->tv_image_count:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/lzy/imagepicker/adapter/ImageFolderAdapter$ViewHolder;->imageCount:Landroid/widget/TextView;

    .line 116
    sget p1, Lcom/lzy/imagepicker/R$id;->iv_folder_check:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/lzy/imagepicker/adapter/ImageFolderAdapter$ViewHolder;->folderCheck:Landroid/widget/ImageView;

    .line 117
    invoke-virtual {p2, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method
