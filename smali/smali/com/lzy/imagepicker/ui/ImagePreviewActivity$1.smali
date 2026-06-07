.class Lcom/lzy/imagepicker/ui/ImagePreviewActivity$1;
.super Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;
.source "ImagePreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzy/imagepicker/ui/ImagePreviewActivity;


# direct methods
.method constructor <init>(Lcom/lzy/imagepicker/ui/ImagePreviewActivity;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity$1;->this$0:Lcom/lzy/imagepicker/ui/ImagePreviewActivity;

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 6

    .line 72
    iget-object v0, p0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity$1;->this$0:Lcom/lzy/imagepicker/ui/ImagePreviewActivity;

    iput p1, v0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->mCurrentPosition:I

    .line 73
    iget-object p1, p0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity$1;->this$0:Lcom/lzy/imagepicker/ui/ImagePreviewActivity;

    iget-object p1, p1, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->mImageItems:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity$1;->this$0:Lcom/lzy/imagepicker/ui/ImagePreviewActivity;

    iget v0, v0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->mCurrentPosition:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lzy/imagepicker/bean/ImageItem;

    .line 74
    iget-object v0, p0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity$1;->this$0:Lcom/lzy/imagepicker/ui/ImagePreviewActivity;

    iget-object v0, v0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->imagePicker:Lcom/lzy/imagepicker/ImagePicker;

    invoke-virtual {v0, p1}, Lcom/lzy/imagepicker/ImagePicker;->isSelect(Lcom/lzy/imagepicker/bean/ImageItem;)Z

    move-result p1

    .line 75
    iget-object v0, p0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity$1;->this$0:Lcom/lzy/imagepicker/ui/ImagePreviewActivity;

    invoke-static {v0}, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->access$000(Lcom/lzy/imagepicker/ui/ImagePreviewActivity;)Lcom/lzy/imagepicker/view/SuperCheckBox;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lzy/imagepicker/view/SuperCheckBox;->setChecked(Z)V

    .line 76
    iget-object p1, p0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity$1;->this$0:Lcom/lzy/imagepicker/ui/ImagePreviewActivity;

    iget-object p1, p1, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->mTitleCount:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity$1;->this$0:Lcom/lzy/imagepicker/ui/ImagePreviewActivity;

    sget v1, Lcom/lzy/imagepicker/R$string;->ip_preview_image_count:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity$1;->this$0:Lcom/lzy/imagepicker/ui/ImagePreviewActivity;

    iget v3, v3, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->mCurrentPosition:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity$1;->this$0:Lcom/lzy/imagepicker/ui/ImagePreviewActivity;

    iget-object v3, v3, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->mImageItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
