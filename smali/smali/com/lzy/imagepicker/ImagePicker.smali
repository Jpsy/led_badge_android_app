.class public Lcom/lzy/imagepicker/ImagePicker;
.super Ljava/lang/Object;
.source "ImagePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzy/imagepicker/ImagePicker$OnImageSelectedListener;
    }
.end annotation


# static fields
.field public static final EXTRA_FROM_ITEMS:Ljava/lang/String; = "extra_from_items"

.field public static final EXTRA_IMAGE_ITEMS:Ljava/lang/String; = "extra_image_items"

.field public static final EXTRA_RESULT_ITEMS:Ljava/lang/String; = "extra_result_items"

.field public static final EXTRA_SELECTED_IMAGE_POSITION:Ljava/lang/String; = "selected_image_position"

.field public static final REQUEST_CODE_CROP:I = 0x3ea

.field public static final REQUEST_CODE_PREVIEW:I = 0x3eb

.field public static final REQUEST_CODE_TAKE:I = 0x3e9

.field public static final RESULT_CODE_BACK:I = 0x3ed

.field public static final RESULT_CODE_ITEMS:I = 0x3ec

.field public static final TAG:Ljava/lang/String; = "ImagePicker"

.field private static mInstance:Lcom/lzy/imagepicker/ImagePicker;


# instance fields
.field private crop:Z

.field public cropBitmap:Landroid/graphics/Bitmap;

.field private cropCacheFolder:Ljava/io/File;

.field private focusHeight:I

.field private focusWidth:I

.field private imageLoader:Lcom/lzy/imagepicker/loader/ImageLoader;

.field private isSaveRectangle:Z

.field private mCurrentImageFolderPosition:I

.field private mImageFolders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lzy/imagepicker/bean/ImageFolder;",
            ">;"
        }
    .end annotation
.end field

.field private mImageSelectedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lzy/imagepicker/ImagePicker$OnImageSelectedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedImages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/lzy/imagepicker/bean/ImageItem;",
            ">;"
        }
    .end annotation
.end field

.field private multiMode:Z

.field private outPutX:I

.field private outPutY:I

.field private selectLimit:I

.field private showCamera:Z

.field private style:Lcom/lzy/imagepicker/view/CropImageView$Style;

.field private takeImageFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 59
    iput-boolean v0, p0, Lcom/lzy/imagepicker/ImagePicker;->multiMode:Z

    const/16 v1, 0x9

    .line 60
    iput v1, p0, Lcom/lzy/imagepicker/ImagePicker;->selectLimit:I

    .line 61
    iput-boolean v0, p0, Lcom/lzy/imagepicker/ImagePicker;->crop:Z

    .line 62
    iput-boolean v0, p0, Lcom/lzy/imagepicker/ImagePicker;->showCamera:Z

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lcom/lzy/imagepicker/ImagePicker;->isSaveRectangle:Z

    const/16 v1, 0x320

    .line 64
    iput v1, p0, Lcom/lzy/imagepicker/ImagePicker;->outPutX:I

    .line 65
    iput v1, p0, Lcom/lzy/imagepicker/ImagePicker;->outPutY:I

    const/16 v1, 0x118

    .line 66
    iput v1, p0, Lcom/lzy/imagepicker/ImagePicker;->focusWidth:I

    .line 67
    iput v1, p0, Lcom/lzy/imagepicker/ImagePicker;->focusHeight:I

    .line 69
    sget-object v1, Lcom/lzy/imagepicker/view/CropImageView$Style;->RECTANGLE:Lcom/lzy/imagepicker/view/CropImageView$Style;

    iput-object v1, p0, Lcom/lzy/imagepicker/ImagePicker;->style:Lcom/lzy/imagepicker/view/CropImageView$Style;

    .line 74
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/lzy/imagepicker/ImagePicker;->mSelectedImages:Ljava/util/ArrayList;

    .line 76
    iput v0, p0, Lcom/lzy/imagepicker/ImagePicker;->mCurrentImageFolderPosition:I

    return-void
.end method

.method public static createFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .line 297
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 298
    :cond_1
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v2, "yyyyMMdd_HHmmss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 299
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 300
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p2
.end method

.method public static galleryAddPic(Landroid/content/Context;Ljava/io/File;)V
    .locals 2

    .line 307
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 308
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 309
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 310
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static getInstance()Lcom/lzy/imagepicker/ImagePicker;
    .locals 2

    .line 85
    sget-object v0, Lcom/lzy/imagepicker/ImagePicker;->mInstance:Lcom/lzy/imagepicker/ImagePicker;

    if-nez v0, :cond_1

    .line 86
    const-class v0, Lcom/lzy/imagepicker/ImagePicker;

    monitor-enter v0

    .line 87
    :try_start_0
    sget-object v1, Lcom/lzy/imagepicker/ImagePicker;->mInstance:Lcom/lzy/imagepicker/ImagePicker;

    if-nez v1, :cond_0

    .line 88
    new-instance v1, Lcom/lzy/imagepicker/ImagePicker;

    invoke-direct {v1}, Lcom/lzy/imagepicker/ImagePicker;-><init>()V

    sput-object v1, Lcom/lzy/imagepicker/ImagePicker;->mInstance:Lcom/lzy/imagepicker/ImagePicker;

    .line 90
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 92
    :cond_1
    :goto_0
    sget-object v0, Lcom/lzy/imagepicker/ImagePicker;->mInstance:Lcom/lzy/imagepicker/ImagePicker;

    return-object v0
.end method

.method private notifyImageSelectedChanged(ILcom/lzy/imagepicker/bean/ImageItem;Z)V
    .locals 2

    .line 344
    iget-object v0, p0, Lcom/lzy/imagepicker/ImagePicker;->mImageSelectedListeners:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 345
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lzy/imagepicker/ImagePicker$OnImageSelectedListener;

    .line 346
    invoke-interface {v1, p1, p2, p3}, Lcom/lzy/imagepicker/ImagePicker$OnImageSelectedListener;->onImageSelected(ILcom/lzy/imagepicker/bean/ImageItem;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public addOnImageSelectedListener(Lcom/lzy/imagepicker/ImagePicker$OnImageSelectedListener;)V
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/lzy/imagepicker/ImagePicker;->mImageSelectedListeners:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzy/imagepicker/ImagePicker;->mImageSelectedListeners:Ljava/util/List;

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/lzy/imagepicker/ImagePicker;->mImageSelectedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addSelectedImageItem(ILcom/lzy/imagepicker/bean/ImageItem;Z)V
    .locals 1

    if-eqz p3, :cond_0

    .line 331
    iget-object v0, p0, Lcom/lzy/imagepicker/ImagePicker;->mSelectedImages:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/lzy/imagepicker/ImagePicker;->mSelectedImages:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 333
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/lzy/imagepicker/ImagePicker;->notifyImageSelectedChanged(ILcom/lzy/imagepicker/bean/ImageItem;Z)V

    return-void
.end method

.method public clear()V
    .locals 2

    .line 238
    iget-object v0, p0, Lcom/lzy/imagepicker/ImagePicker;->mImageSelectedListeners:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 239
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 240
    iput-object v1, p0, Lcom/lzy/imagepicker/ImagePicker;->mImageSelectedListeners:Ljava/util/List;

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/lzy/imagepicker/ImagePicker;->mImageFolders:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 243
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 244
    iput-object v1, p0, Lcom/lzy/imagepicker/ImagePicker;->mImageFolders:Ljava/util/List;

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/lzy/imagepicker/ImagePicker;->mSelectedImages:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 247
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_2
    const/4 v0, 0x0

    .line 249
    iput v0, p0, Lcom/lzy/imagepicker/ImagePicker;->mCurrentImageFolderPosition:I

    return-void
.end method

.method public clearSelectedImages()V
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/lzy/imagepicker/ImagePicker;->mSelectedImages:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method public getCropCacheFolder(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/lzy/imagepicker/ImagePicker;->cropCacheFolder:Ljava/io/File;

    if-nez v0, :cond_0

    .line 173
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "/ImagePicker/cropTemp/"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lzy/imagepicker/ImagePicker;->cropCacheFolder:Ljava/io/File;

    .line 175
    :cond_0
    iget-object p1, p0, Lcom/lzy/imagepicker/ImagePicker;->cropCacheFolder:Ljava/io/File;

    return-object p1
.end method

.method public getCurrentImageFolderItems()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/lzy/imagepicker/bean/ImageItem;",
            ">;"
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lcom/lzy/imagepicker/ImagePicker;->mImageFolders:Ljava/util/List;

    iget v1, p0, Lcom/lzy/imagepicker/ImagePicker;->mCurrentImageFolderPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzy/imagepicker/bean/ImageFolder;

    iget-object v0, v0, Lcom/lzy/imagepicker/bean/ImageFolder;->images:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCurrentImageFolderPosition()I
    .locals 1

    .line 207
    iget v0, p0, Lcom/lzy/imagepicker/ImagePicker;->mCurrentImageFolderPosition:I

    return v0
.end method

.method public getFocusHeight()I
    .locals 1

    .line 160
    iget v0, p0, Lcom/lzy/imagepicker/ImagePicker;->focusHeight:I

    return v0
.end method

.method public getFocusWidth()I
    .locals 1

    .line 152
    iget v0, p0, Lcom/lzy/imagepicker/ImagePicker;->focusWidth:I

    return v0
.end method

.method public getImageFolders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/lzy/imagepicker/bean/ImageFolder;",
            ">;"
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/lzy/imagepicker/ImagePicker;->mImageFolders:Ljava/util/List;

    return-object v0
.end method

.method public getImageLoader()Lcom/lzy/imagepicker/loader/ImageLoader;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/lzy/imagepicker/ImagePicker;->imageLoader:Lcom/lzy/imagepicker/loader/ImageLoader;

    return-object v0
.end method

.method public getOutPutX()I
    .locals 1

    .line 136
    iget v0, p0, Lcom/lzy/imagepicker/ImagePicker;->outPutX:I

    return v0
.end method

.method public getOutPutY()I
    .locals 1

    .line 144
    iget v0, p0, Lcom/lzy/imagepicker/ImagePicker;->outPutY:I

    return v0
.end method

.method public getSelectImageCount()I
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/lzy/imagepicker/ImagePicker;->mSelectedImages:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 226
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getSelectLimit()I
    .locals 1

    .line 104
    iget v0, p0, Lcom/lzy/imagepicker/ImagePicker;->selectLimit:I

    return v0
.end method

.method public getSelectedImages()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/lzy/imagepicker/bean/ImageItem;",
            ">;"
        }
    .end annotation

    .line 230
    iget-object v0, p0, Lcom/lzy/imagepicker/ImagePicker;->mSelectedImages:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getStyle()Lcom/lzy/imagepicker/view/CropImageView$Style;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/lzy/imagepicker/ImagePicker;->style:Lcom/lzy/imagepicker/view/CropImageView$Style;

    return-object v0
.end method

.method public getTakeImageFile()Ljava/io/File;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/lzy/imagepicker/ImagePicker;->takeImageFile:Ljava/io/File;

    return-object v0
.end method

.method public isCrop()Z
    .locals 1

    .line 112
    iget-boolean v0, p0, Lcom/lzy/imagepicker/ImagePicker;->crop:Z

    return v0
.end method

.method public isMultiMode()Z
    .locals 1

    .line 96
    iget-boolean v0, p0, Lcom/lzy/imagepicker/ImagePicker;->multiMode:Z

    return v0
.end method

.method public isSaveRectangle()Z
    .locals 1

    .line 128
    iget-boolean v0, p0, Lcom/lzy/imagepicker/ImagePicker;->isSaveRectangle:Z

    return v0
.end method

.method public isSelect(Lcom/lzy/imagepicker/bean/ImageItem;)Z
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/lzy/imagepicker/ImagePicker;->mSelectedImages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isShowCamera()Z
    .locals 1

    .line 120
    iget-boolean v0, p0, Lcom/lzy/imagepicker/ImagePicker;->showCamera:Z

    return v0
.end method

.method public removeOnImageSelectedListener(Lcom/lzy/imagepicker/ImagePicker$OnImageSelectedListener;)V
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/lzy/imagepicker/ImagePicker;->mImageSelectedListeners:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 327
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public restoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "cropCacheFolder"

    .line 354
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iput-object v0, p0, Lcom/lzy/imagepicker/ImagePicker;->cropCacheFolder:Ljava/io/File;

    const-string v0, "takeImageFile"

    .line 355
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iput-object v0, p0, Lcom/lzy/imagepicker/ImagePicker;->takeImageFile:Ljava/io/File;

    const-string v0, "imageLoader"

    .line 356
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/lzy/imagepicker/loader/ImageLoader;

    iput-object v0, p0, Lcom/lzy/imagepicker/ImagePicker;->imageLoader:Lcom/lzy/imagepicker/loader/ImageLoader;

    const-string v0, "style"

    .line 357
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/lzy/imagepicker/view/CropImageView$Style;

    iput-object v0, p0, Lcom/lzy/imagepicker/ImagePicker;->style:Lcom/lzy/imagepicker/view/CropImageView$Style;

    const-string v0, "multiMode"

    .line 358
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lzy/imagepicker/ImagePicker;->multiMode:Z

    const-string v0, "crop"

    .line 359
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lzy/imagepicker/ImagePicker;->crop:Z

    const-string v0, "showCamera"

    .line 360
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lzy/imagepicker/ImagePicker;->showCamera:Z

    const-string v0, "isSaveRectangle"

    .line 361
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lzy/imagepicker/ImagePicker;->isSaveRectangle:Z

    const-string v0, "selectLimit"

    .line 362
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lzy/imagepicker/ImagePicker;->selectLimit:I

    const-string v0, "outPutX"

    .line 363
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lzy/imagepicker/ImagePicker;->outPutX:I

    const-string v0, "outPutY"

    .line 364
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lzy/imagepicker/ImagePicker;->outPutY:I

    const-string v0, "focusWidth"

    .line 365
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lzy/imagepicker/ImagePicker;->focusWidth:I

    const-string v0, "focusHeight"

    .line 366
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/lzy/imagepicker/ImagePicker;->focusHeight:I

    return-void
.end method

.method public saveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 373
    iget-object v0, p0, Lcom/lzy/imagepicker/ImagePicker;->cropCacheFolder:Ljava/io/File;

    const-string v1, "cropCacheFolder"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 374
    iget-object v0, p0, Lcom/lzy/imagepicker/ImagePicker;->takeImageFile:Ljava/io/File;

    const-string v1, "takeImageFile"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 375
    iget-object v0, p0, Lcom/lzy/imagepicker/ImagePicker;->imageLoader:Lcom/lzy/imagepicker/loader/ImageLoader;

    const-string v1, "imageLoader"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 376
    iget-object v0, p0, Lcom/lzy/imagepicker/ImagePicker;->style:Lcom/lzy/imagepicker/view/CropImageView$Style;

    const-string v1, "style"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 377
    iget-boolean v0, p0, Lcom/lzy/imagepicker/ImagePicker;->multiMode:Z

    const-string v1, "multiMode"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 378
    iget-boolean v0, p0, Lcom/lzy/imagepicker/ImagePicker;->crop:Z

    const-string v1, "crop"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 379
    iget-boolean v0, p0, Lcom/lzy/imagepicker/ImagePicker;->showCamera:Z

    const-string v1, "showCamera"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 380
    iget-boolean v0, p0, Lcom/lzy/imagepicker/ImagePicker;->isSaveRectangle:Z

    const-string v1, "isSaveRectangle"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 381
    iget v0, p0, Lcom/lzy/imagepicker/ImagePicker;->selectLimit:I

    const-string v1, "selectLimit"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 382
    iget v0, p0, Lcom/lzy/imagepicker/ImagePicker;->outPutX:I

    const-string v1, "outPutX"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 383
    iget v0, p0, Lcom/lzy/imagepicker/ImagePicker;->outPutY:I

    const-string v1, "outPutY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 384
    iget v0, p0, Lcom/lzy/imagepicker/ImagePicker;->focusWidth:I

    const-string v1, "focusWidth"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 385
    iget v0, p0, Lcom/lzy/imagepicker/ImagePicker;->focusHeight:I

    const-string v1, "focusHeight"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setCrop(Z)V
    .locals 0

    .line 116
    iput-boolean p1, p0, Lcom/lzy/imagepicker/ImagePicker;->crop:Z

    return-void
.end method

.method public setCropCacheFolder(Ljava/io/File;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/lzy/imagepicker/ImagePicker;->cropCacheFolder:Ljava/io/File;

    return-void
.end method

.method public setCurrentImageFolderPosition(I)V
    .locals 0

    .line 211
    iput p1, p0, Lcom/lzy/imagepicker/ImagePicker;->mCurrentImageFolderPosition:I

    return-void
.end method

.method public setFocusHeight(I)V
    .locals 0

    .line 164
    iput p1, p0, Lcom/lzy/imagepicker/ImagePicker;->focusHeight:I

    return-void
.end method

.method public setFocusWidth(I)V
    .locals 0

    .line 156
    iput p1, p0, Lcom/lzy/imagepicker/ImagePicker;->focusWidth:I

    return-void
.end method

.method public setImageFolders(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lzy/imagepicker/bean/ImageFolder;",
            ">;)V"
        }
    .end annotation

    .line 203
    iput-object p1, p0, Lcom/lzy/imagepicker/ImagePicker;->mImageFolders:Ljava/util/List;

    return-void
.end method

.method public setImageLoader(Lcom/lzy/imagepicker/loader/ImageLoader;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/lzy/imagepicker/ImagePicker;->imageLoader:Lcom/lzy/imagepicker/loader/ImageLoader;

    return-void
.end method

.method public setMultiMode(Z)V
    .locals 0

    .line 100
    iput-boolean p1, p0, Lcom/lzy/imagepicker/ImagePicker;->multiMode:Z

    return-void
.end method

.method public setOutPutX(I)V
    .locals 0

    .line 140
    iput p1, p0, Lcom/lzy/imagepicker/ImagePicker;->outPutX:I

    return-void
.end method

.method public setOutPutY(I)V
    .locals 0

    .line 148
    iput p1, p0, Lcom/lzy/imagepicker/ImagePicker;->outPutY:I

    return-void
.end method

.method public setSaveRectangle(Z)V
    .locals 0

    .line 132
    iput-boolean p1, p0, Lcom/lzy/imagepicker/ImagePicker;->isSaveRectangle:Z

    return-void
.end method

.method public setSelectLimit(I)V
    .locals 0

    .line 108
    iput p1, p0, Lcom/lzy/imagepicker/ImagePicker;->selectLimit:I

    return-void
.end method

.method public setSelectedImages(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/lzy/imagepicker/bean/ImageItem;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 340
    :cond_0
    iput-object p1, p0, Lcom/lzy/imagepicker/ImagePicker;->mSelectedImages:Ljava/util/ArrayList;

    return-void
.end method

.method public setShowCamera(Z)V
    .locals 0

    .line 124
    iput-boolean p1, p0, Lcom/lzy/imagepicker/ImagePicker;->showCamera:Z

    return-void
.end method

.method public setStyle(Lcom/lzy/imagepicker/view/CropImageView$Style;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/lzy/imagepicker/ImagePicker;->style:Lcom/lzy/imagepicker/view/CropImageView$Style;

    return-void
.end method

.method public takePicture(Landroid/app/Activity;I)V
    .locals 5

    .line 256
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x4000000

    .line 257
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 258
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 259
    invoke-static {}, Lcom/lzy/imagepicker/util/Utils;->existSDCard()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "/DCIM/camera/"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/lzy/imagepicker/ImagePicker;->takeImageFile:Ljava/io/File;

    goto :goto_0

    .line 260
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/lzy/imagepicker/ImagePicker;->takeImageFile:Ljava/io/File;

    .line 261
    :goto_0
    iget-object v1, p0, Lcom/lzy/imagepicker/ImagePicker;->takeImageFile:Ljava/io/File;

    const-string v2, "IMG_"

    const-string v3, ".jpg"

    invoke-static {v1, v2, v3}, Lcom/lzy/imagepicker/ImagePicker;->createFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/lzy/imagepicker/ImagePicker;->takeImageFile:Ljava/io/File;

    if-eqz v1, :cond_3

    .line 269
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-gt v1, v2, :cond_1

    .line 270
    iget-object v1, p0, Lcom/lzy/imagepicker/ImagePicker;->takeImageFile:Ljava/io/File;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_2

    .line 277
    :cond_1
    invoke-static {p1}, Lcom/lzy/imagepicker/util/ProviderUtil;->getFileProviderName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lzy/imagepicker/ImagePicker;->takeImageFile:Ljava/io/File;

    invoke-static {p1, v1, v2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 279
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x10000

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 280
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 281
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x3

    .line 282
    invoke-virtual {p1, v3, v1, v4}, Landroid/app/Activity;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    goto :goto_1

    .line 286
    :cond_2
    :goto_2
    invoke-static {p1}, Lcom/lzy/imagepicker/util/ProviderUtil;->getFileProviderName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "nanchen"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "output"

    .line 287
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 290
    :cond_3
    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
