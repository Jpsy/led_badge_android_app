.class Lcom/lzy/imagepicker/view/CropImageView$InnerHandler;
.super Landroid/os/Handler;
.source "CropImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzy/imagepicker/view/CropImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InnerHandler"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 591
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 596
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    .line 597
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e9

    if-eq p1, v1, :cond_1

    const/16 v1, 0x3ea

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 602
    :cond_0
    invoke-static {}, Lcom/lzy/imagepicker/view/CropImageView;->access$100()Lcom/lzy/imagepicker/view/CropImageView$OnBitmapSaveCompleteListener;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/lzy/imagepicker/view/CropImageView;->access$100()Lcom/lzy/imagepicker/view/CropImageView$OnBitmapSaveCompleteListener;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/lzy/imagepicker/view/CropImageView$OnBitmapSaveCompleteListener;->onBitmapSaveError(Ljava/io/File;)V

    goto :goto_0

    .line 599
    :cond_1
    invoke-static {}, Lcom/lzy/imagepicker/view/CropImageView;->access$100()Lcom/lzy/imagepicker/view/CropImageView$OnBitmapSaveCompleteListener;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/lzy/imagepicker/view/CropImageView;->access$100()Lcom/lzy/imagepicker/view/CropImageView$OnBitmapSaveCompleteListener;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/lzy/imagepicker/view/CropImageView$OnBitmapSaveCompleteListener;->onBitmapSaveSuccess(Ljava/io/File;)V

    :cond_2
    :goto_0
    return-void
.end method
