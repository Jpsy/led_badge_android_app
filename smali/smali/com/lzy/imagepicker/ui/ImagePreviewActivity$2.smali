.class Lcom/lzy/imagepicker/ui/ImagePreviewActivity$2;
.super Ljava/lang/Object;
.source "ImagePreviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 80
    iput-object p1, p0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity$2;->this$0:Lcom/lzy/imagepicker/ui/ImagePreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 83
    iget-object p1, p0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity$2;->this$0:Lcom/lzy/imagepicker/ui/ImagePreviewActivity;

    iget-object p1, p1, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->mImageItems:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity$2;->this$0:Lcom/lzy/imagepicker/ui/ImagePreviewActivity;

    iget v0, v0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->mCurrentPosition:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lzy/imagepicker/bean/ImageItem;

    .line 84
    iget-object v0, p0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity$2;->this$0:Lcom/lzy/imagepicker/ui/ImagePreviewActivity;

    iget-object v0, v0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->imagePicker:Lcom/lzy/imagepicker/ImagePicker;

    invoke-virtual {v0}, Lcom/lzy/imagepicker/ImagePicker;->getSelectLimit()I

    move-result v0

    .line 85
    iget-object v1, p0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity$2;->this$0:Lcom/lzy/imagepicker/ui/ImagePreviewActivity;

    invoke-static {v1}, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->access$000(Lcom/lzy/imagepicker/ui/ImagePreviewActivity;)Lcom/lzy/imagepicker/view/SuperCheckBox;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lzy/imagepicker/view/SuperCheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity$2;->this$0:Lcom/lzy/imagepicker/ui/ImagePreviewActivity;

    iget-object v1, v1, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->selectedImages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v1, v0, :cond_0

    .line 86
    iget-object p1, p0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity$2;->this$0:Lcom/lzy/imagepicker/ui/ImagePreviewActivity;

    sget v1, Lcom/lzy/imagepicker/R$string;->ip_select_limit:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p1, v1, v2}, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 87
    iget-object p1, p0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity$2;->this$0:Lcom/lzy/imagepicker/ui/ImagePreviewActivity;

    invoke-static {p1}, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->access$000(Lcom/lzy/imagepicker/ui/ImagePreviewActivity;)Lcom/lzy/imagepicker/view/SuperCheckBox;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/lzy/imagepicker/view/SuperCheckBox;->setChecked(Z)V

    goto :goto_0

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity$2;->this$0:Lcom/lzy/imagepicker/ui/ImagePreviewActivity;

    iget-object v0, v0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->imagePicker:Lcom/lzy/imagepicker/ImagePicker;

    iget-object v1, p0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity$2;->this$0:Lcom/lzy/imagepicker/ui/ImagePreviewActivity;

    iget v1, v1, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->mCurrentPosition:I

    iget-object v2, p0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity$2;->this$0:Lcom/lzy/imagepicker/ui/ImagePreviewActivity;

    invoke-static {v2}, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->access$000(Lcom/lzy/imagepicker/ui/ImagePreviewActivity;)Lcom/lzy/imagepicker/view/SuperCheckBox;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lzy/imagepicker/view/SuperCheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/lzy/imagepicker/ImagePicker;->addSelectedImageItem(ILcom/lzy/imagepicker/bean/ImageItem;Z)V

    :goto_0
    return-void
.end method
