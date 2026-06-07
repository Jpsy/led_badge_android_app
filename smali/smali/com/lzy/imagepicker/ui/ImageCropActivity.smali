.class public Lcom/lzy/imagepicker/ui/ImageCropActivity;
.super Lcom/lzy/imagepicker/ui/ImageBaseActivity;
.source "ImageCropActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/lzy/imagepicker/view/CropImageView$OnBitmapSaveCompleteListener;


# instance fields
.field private imagePicker:Lcom/lzy/imagepicker/ImagePicker;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCropImageView:Lcom/lzy/imagepicker/view/CropImageView;

.field private mImageItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/lzy/imagepicker/bean/ImageItem;",
            ">;"
        }
    .end annotation
.end field

.field private mIsSaveRectangle:Z

.field private mOutputX:I

.field private mOutputY:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/lzy/imagepicker/ui/ImageBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 1

    .line 84
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 85
    iget p1, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gt p1, p3, :cond_1

    if-le v0, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    if-le v0, p1, :cond_2

    .line 89
    div-int p1, v0, p2

    goto :goto_1

    .line 91
    :cond_2
    div-int/2addr p1, p3

    :goto_1
    return p1
.end method

.method public onBitmapSaveError(Ljava/io/File;)V
    .locals 0

    return-void
.end method

.method public onBitmapSaveSuccess(Ljava/io/File;)V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/lzy/imagepicker/ui/ImageCropActivity;->mImageItems:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 114
    new-instance v0, Lcom/lzy/imagepicker/bean/ImageItem;

    invoke-direct {v0}, Lcom/lzy/imagepicker/bean/ImageItem;-><init>()V

    .line 115
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/lzy/imagepicker/bean/ImageItem;->path:Ljava/lang/String;

    .line 116
    iget-object p1, p0, Lcom/lzy/imagepicker/ui/ImageCropActivity;->mImageItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 119
    iget-object v0, p0, Lcom/lzy/imagepicker/ui/ImageCropActivity;->mImageItems:Ljava/util/ArrayList;

    const-string v1, "extra_result_items"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/16 v0, 0x3ec

    .line 120
    invoke-virtual {p0, v0, p1}, Lcom/lzy/imagepicker/ui/ImageCropActivity;->setResult(ILandroid/content/Intent;)V

    .line 121
    invoke-virtual {p0}, Lcom/lzy/imagepicker/ui/ImageCropActivity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 99
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 100
    sget v0, Lcom/lzy/imagepicker/R$id;->btn_back:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 101
    invoke-virtual {p0, p1}, Lcom/lzy/imagepicker/ui/ImageCropActivity;->setResult(I)V

    .line 102
    invoke-virtual {p0}, Lcom/lzy/imagepicker/ui/ImageCropActivity;->finish()V

    goto :goto_0

    .line 103
    :cond_0
    sget v0, Lcom/lzy/imagepicker/R$id;->btn_ok:I

    if-ne p1, v0, :cond_1

    .line 104
    iget-object p1, p0, Lcom/lzy/imagepicker/ui/ImageCropActivity;->mCropImageView:Lcom/lzy/imagepicker/view/CropImageView;

    iget-object v0, p0, Lcom/lzy/imagepicker/ui/ImageCropActivity;->imagePicker:Lcom/lzy/imagepicker/ImagePicker;

    invoke-virtual {v0, p0}, Lcom/lzy/imagepicker/ImagePicker;->getCropCacheFolder(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    iget v1, p0, Lcom/lzy/imagepicker/ui/ImageCropActivity;->mOutputX:I

    iget v2, p0, Lcom/lzy/imagepicker/ui/ImageCropActivity;->mOutputY:I

    iget-boolean v3, p0, Lcom/lzy/imagepicker/ui/ImageCropActivity;->mIsSaveRectangle:Z

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/lzy/imagepicker/view/CropImageView;->saveBitmapToFile(Ljava/io/File;IIZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 42
    invoke-super {p0, p1}, Lcom/lzy/imagepicker/ui/ImageBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    sget p1, Lcom/lzy/imagepicker/R$layout;->activity_image_crop:I

    invoke-virtual {p0, p1}, Lcom/lzy/imagepicker/ui/ImageCropActivity;->setContentView(I)V

    .line 45
    invoke-static {}, Lcom/lzy/imagepicker/ImagePicker;->getInstance()Lcom/lzy/imagepicker/ImagePicker;

    move-result-object p1

    iput-object p1, p0, Lcom/lzy/imagepicker/ui/ImageCropActivity;->imagePicker:Lcom/lzy/imagepicker/ImagePicker;

    .line 48
    sget p1, Lcom/lzy/imagepicker/R$id;->btn_back:I

    invoke-virtual {p0, p1}, Lcom/lzy/imagepicker/ui/ImageCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    sget p1, Lcom/lzy/imagepicker/R$id;->btn_ok:I

    invoke-virtual {p0, p1}, Lcom/lzy/imagepicker/ui/ImageCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 50
    sget v0, Lcom/lzy/imagepicker/R$string;->ip_complete:I

    invoke-virtual {p0, v0}, Lcom/lzy/imagepicker/ui/ImageCropActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 51
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    sget p1, Lcom/lzy/imagepicker/R$id;->tv_des:I

    invoke-virtual {p0, p1}, Lcom/lzy/imagepicker/ui/ImageCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 53
    sget v0, Lcom/lzy/imagepicker/R$string;->ip_photo_crop:I

    invoke-virtual {p0, v0}, Lcom/lzy/imagepicker/ui/ImageCropActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    sget p1, Lcom/lzy/imagepicker/R$id;->cv_crop_image:I

    invoke-virtual {p0, p1}, Lcom/lzy/imagepicker/ui/ImageCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/lzy/imagepicker/view/CropImageView;

    iput-object p1, p0, Lcom/lzy/imagepicker/ui/ImageCropActivity;->mCropImageView:Lcom/lzy/imagepicker/view/CropImageView;

    .line 55
    invoke-virtual {p1, p0}, Lcom/lzy/imagepicker/view/CropImageView;->setOnBitmapSaveCompleteListener(Lcom/lzy/imagepicker/view/CropImageView$OnBitmapSaveCompleteListener;)V

    .line 58
    iget-object p1, p0, Lcom/lzy/imagepicker/ui/ImageCropActivity;->imagePicker:Lcom/lzy/imagepicker/ImagePicker;

    invoke-virtual {p1}, Lcom/lzy/imagepicker/ImagePicker;->getOutPutX()I

    move-result p1

    iput p1, p0, Lcom/lzy/imagepicker/ui/ImageCropActivity;->mOutputX:I

    .line 59
    iget-object p1, p0, Lcom/lzy/imagepicker/ui/ImageCropActivity;->imagePicker:Lcom/lzy/imagepicker/ImagePicker;

    invoke-virtual {p1}, Lcom/lzy/imagepicker/ImagePicker;->getOutPutY()I

    move-result p1

    iput p1, p0, Lcom/lzy/imagepicker/ui/ImageCropActivity;->mOutputY:I

    .line 60
    iget-object p1, p0, Lcom/lzy/imagepicker/ui/ImageCropActivity;->imagePicker:Lcom/lzy/imagepicker/ImagePicker;

    invoke-virtual {p1}, Lcom/lzy/imagepicker/ImagePicker;->isSaveRectangle()Z

    move-result p1

    iput-boolean p1, p0, Lcom/lzy/imagepicker/ui/ImageCropActivity;->mIsSaveRectangle:Z

    .line 61
    iget-object p1, p0, Lcom/lzy/imagepicker/ui/ImageCropActivity;->imagePicker:Lcom/lzy/imagepicker/ImagePicker;

    invoke-virtual {p1}, Lcom/lzy/imagepicker/ImagePicker;->getSelectedImages()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/lzy/imagepicker/ui/ImageCropActivity;->mImageItems:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 62
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lzy/imagepicker/bean/ImageItem;

    iget-object p1, p1, Lcom/lzy/imagepicker/bean/ImageItem;->path:Ljava/lang/String;

    .line 64
    iget-object v1, p0, Lcom/lzy/imagepicker/ui/ImageCropActivity;->mCropImageView:Lcom/lzy/imagepicker/view/CropImageView;

    iget-object v2, p0, Lcom/lzy/imagepicker/ui/ImageCropActivity;->imagePicker:Lcom/lzy/imagepicker/ImagePicker;

    invoke-virtual {v2}, Lcom/lzy/imagepicker/ImagePicker;->getStyle()Lcom/lzy/imagepicker/view/CropImageView$Style;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lzy/imagepicker/view/CropImageView;->setFocusStyle(Lcom/lzy/imagepicker/view/CropImageView$Style;)V

    .line 65
    iget-object v1, p0, Lcom/lzy/imagepicker/ui/ImageCropActivity;->mCropImageView:Lcom/lzy/imagepicker/view/CropImageView;

    iget-object v2, p0, Lcom/lzy/imagepicker/ui/ImageCropActivity;->imagePicker:Lcom/lzy/imagepicker/ImagePicker;

    invoke-virtual {v2}, Lcom/lzy/imagepicker/ImagePicker;->getFocusWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lzy/imagepicker/view/CropImageView;->setFocusWidth(I)V

    .line 66
    iget-object v1, p0, Lcom/lzy/imagepicker/ui/ImageCropActivity;->mCropImageView:Lcom/lzy/imagepicker/view/CropImageView;

    iget-object v2, p0, Lcom/lzy/imagepicker/ui/ImageCropActivity;->imagePicker:Lcom/lzy/imagepicker/ImagePicker;

    invoke-virtual {v2}, Lcom/lzy/imagepicker/ImagePicker;->getFocusHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lzy/imagepicker/view/CropImageView;->setFocusHeight(I)V

    .line 69
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    .line 70
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 71
    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 72
    invoke-virtual {p0}, Lcom/lzy/imagepicker/ui/ImageCropActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 73
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p0, v1, v3, v2}, Lcom/lzy/imagepicker/ui/ImageCropActivity;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v2

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 74
    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 75
    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lzy/imagepicker/ui/ImageCropActivity;->mBitmap:Landroid/graphics/Bitmap;

    .line 78
    iget-object v1, p0, Lcom/lzy/imagepicker/ui/ImageCropActivity;->mCropImageView:Lcom/lzy/imagepicker/view/CropImageView;

    invoke-static {p1}, Lcom/lzy/imagepicker/util/BitmapUtil;->getBitmapDegree(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, v0, p1}, Lcom/lzy/imagepicker/view/CropImageView;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/lzy/imagepicker/view/CropImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 131
    invoke-super {p0}, Lcom/lzy/imagepicker/ui/ImageBaseActivity;->onDestroy()V

    .line 132
    iget-object v0, p0, Lcom/lzy/imagepicker/ui/ImageCropActivity;->mCropImageView:Lcom/lzy/imagepicker/view/CropImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lzy/imagepicker/view/CropImageView;->setOnBitmapSaveCompleteListener(Lcom/lzy/imagepicker/view/CropImageView$OnBitmapSaveCompleteListener;)V

    .line 133
    iget-object v0, p0, Lcom/lzy/imagepicker/ui/ImageCropActivity;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/lzy/imagepicker/ui/ImageCropActivity;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 135
    iput-object v1, p0, Lcom/lzy/imagepicker/ui/ImageCropActivity;->mBitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method
