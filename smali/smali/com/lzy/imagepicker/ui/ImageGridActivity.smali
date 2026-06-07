.class public Lcom/lzy/imagepicker/ui/ImageGridActivity;
.super Lcom/lzy/imagepicker/ui/ImageBaseActivity;
.source "ImageGridActivity.java"

# interfaces
.implements Lcom/lzy/imagepicker/ImageDataSource$OnImagesLoadedListener;
.implements Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$OnImageItemClickListener;
.implements Lcom/lzy/imagepicker/ImagePicker$OnImageSelectedListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final EXTRAS_IMAGES:Ljava/lang/String; = "IMAGES"

.field public static final EXTRAS_TAKE_PICKERS:Ljava/lang/String; = "TAKE"

.field public static final REQUEST_PERMISSION_CAMERA:I = 0x2

.field public static final REQUEST_PERMISSION_STORAGE:I = 0x1


# instance fields
.field private directPhoto:Z

.field private imagePicker:Lcom/lzy/imagepicker/ImagePicker;

.field private isOrigin:Z

.field private mBtnOk:Landroid/widget/Button;

.field private mBtnPre:Landroid/widget/TextView;

.field private mFolderPopupWindow:Lcom/lzy/imagepicker/view/FolderPopUpWindow;

.field private mFooterBar:Landroid/view/View;

.field private mImageFolderAdapter:Lcom/lzy/imagepicker/adapter/ImageFolderAdapter;

.field private mImageFolders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lzy/imagepicker/bean/ImageFolder;",
            ">;"
        }
    .end annotation
.end field

.field private mRecyclerAdapter:Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mllDir:Landroid/view/View;

.field private mtvDir:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Lcom/lzy/imagepicker/ui/ImageBaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/lzy/imagepicker/ui/ImageGridActivity;->isOrigin:Z

    .line 69
    iput-boolean v0, p0, Lcom/lzy/imagepicker/ui/ImageGridActivity;->directPhoto:Z

    return-void
.end method

.method static synthetic access$000(Lcom/lzy/imagepicker/ui/ImageGridActivity;)Lcom/lzy/imagepicker/adapter/ImageFolderAdapter;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/lzy/imagepicker/ui/ImageGridActivity;->mImageFolderAdapter:Lcom/lzy/imagepicker/adapter/ImageFolderAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/lzy/imagepicker/ui/ImageGridActivity;)Lcom/lzy/imagepicker/ImagePicker;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/lzy/imagepicker/ui/ImageGridActivity;->imagePicker:Lcom/lzy/imagepicker/ImagePicker;

    return-object p0
.end method

.method static synthetic access$200(Lcom/lzy/imagepicker/ui/ImageGridActivity;)Lcom/lzy/imagepicker/view/FolderPopUpWindow;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/lzy/imagepicker/ui/ImageGridActivity;->mFolderPopupWindow:Lcom/lzy/imagepicker/view/FolderPopUpWindow;

    return-object p0
.end method

.method static synthetic access$300(Lcom/lzy/imagepicker/ui/ImageGridActivity;)Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/lzy/imagepicker/ui/ImageGridActivity;->mRecyclerAdapter:Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/lzy/imagepicker/ui/ImageGridActivity;)Landroid/widget/TextView;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/lzy/imagepicker/ui/ImageGridActivity;->mtvDir:Landroid/widget/TextView;

    return-object p0
.end method

.method private createPopupFolderList()V
    .locals 2

    .line 211
    new-instance v0, Lcom/lzy/imagepicker/view/FolderPopUpWindow;

    iget-object v1, p0, Lcom/lzy/imagepicker/ui/ImageGridActivity;->mImageFolderAdapter:Lcom/lzy/imagepicker/adapter/ImageFolderAdapter;

    invoke-direct {v0, p0, v1}, Lcom/lzy/imagepicker/view/FolderPopUpWindow;-><init>(Landroid/content/Context;Landroid/widget/BaseAdapter;)V

    iput-object v0, p0, Lcom/lzy/imagepicker/ui/ImageGridActivity;->mFolderPopupWindow:Lcom/lzy/imagepicker/view/FolderPopUpWindow;

    .line 212
    new-instance v1, Lcom/lzy/imagepicker/ui/ImageGridActivity$1;

    invoke-direct {v1, p0}, Lcom/lzy/imagepicker/ui/ImageGridActivity$1;-><init>(Lcom/lzy/imagepicker/ui/ImageGridActivity;)V

    invoke-virtual {v0, v1}, Lcom/lzy/imagepicker/view/FolderPopUpWindow;->setOnItemClickListener(Lcom/lzy/imagepicker/view/FolderPopUpWindow$OnItemClickListener;)V

    .line 226
    iget-object v0, p0, Lcom/lzy/imagepicker/ui/ImageGridActivity;->mFolderPopupWindow:Lcom/lzy/imagepicker/view/FolderPopUpWindow;

    iget-object v1, p0, Lcom/lzy/imagepicker/ui/ImageGridActivity;->mFooterBar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lzy/imagepicker/view/FolderPopUpWindow;->setMargin(I)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .line 315
    invoke-super {p0, p1, p2, p3}, Lcom/lzy/imagepicker/ui/ImageBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x3ec

    const-string v1, "extra_result_items"

    const/4 v2, 0x0

    if-eqz p3, :cond_2

    .line 316
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_2

    const/16 p1, 0x3ed

    if-ne p2, p1, :cond_0

    const-string p1, "isOrigin"

    .line 318
    invoke-virtual {p3, p1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/lzy/imagepicker/ui/ImageGridActivity;->isOrigin:Z

    goto :goto_1

    .line 322
    :cond_0
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 326
    :cond_1
    invoke-virtual {p0, v0, p3}, Lcom/lzy/imagepicker/ui/ImageGridActivity;->setResult(ILandroid/content/Intent;)V

    .line 328
    :goto_0
    invoke-virtual {p0}, Lcom/lzy/imagepicker/ui/ImageGridActivity;->finish()V

    goto :goto_1

    :cond_2
    const/4 p3, -0x1

    if-ne p2, p3, :cond_4

    const/16 p2, 0x3e9

    if-ne p1, p2, :cond_4

    .line 334
    iget-object p1, p0, Lcom/lzy/imagepicker/ui/ImageGridActivity;->imagePicker:Lcom/lzy/imagepicker/ImagePicker;

    invoke-virtual {p1}, Lcom/lzy/imagepicker/ImagePicker;->getTakeImageFile()Ljava/io/File;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/lzy/imagepicker/ImagePicker;->galleryAddPic(Landroid/content/Context;Ljava/io/File;)V

    .line 339
    iget-object p1, p0, Lcom/lzy/imagepicker/ui/ImageGridActivity;->imagePicker:Lcom/lzy/imagepicker/ImagePicker;

    invoke-virtual {p1}, Lcom/lzy/imagepicker/ImagePicker;->getTakeImageFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 356
    new-instance p2, Lcom/lzy/imagepicker/bean/ImageItem;

    invoke-direct {p2}, Lcom/lzy/imagepicker/bean/ImageItem;-><init>()V

    .line 357
    iput-object p1, p2, Lcom/lzy/imagepicker/bean/ImageItem;->path:Ljava/lang/String;

    .line 358
    iget-object p1, p0, Lcom/lzy/imagepicker/ui/ImageGridActivity;->imagePicker:Lcom/lzy/imagepicker/ImagePicker;

    invoke-virtual {p1}, Lcom/lzy/imagepicker/ImagePicker;->clearSelectedImages()V

    .line 359
    iget-object p1, p0, Lcom/lzy/imagepicker/ui/ImageGridActivity;->imagePicker:Lcom/lzy/imagepicker/ImagePicker;

    const/4 p3, 0x1

    invoke-virtual {p1, v2, p2, p3}, Lcom/lzy/imagepicker/ImagePicker;->addSelectedImageItem(ILcom/lzy/imagepicker/bean/ImageItem;Z)V

    .line 360
    iget-object p1, p0, Lcom/lzy/imagepicker/ui/ImageGridActivity;->imagePicker:Lcom/lzy/imagepicker/ImagePicker;

    invoke-virtual {p1}, Lcom/lzy/imagepicker/ImagePicker;->isCrop()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 361
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/lzy/imagepicker/ui/ImageCropActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 p2, 0x3ea

    .line 362
    invoke-virtual {p0, p1, p2}, Lcom/lzy/imagepicker/ui/ImageGridActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 364
    :cond_3
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 365
    iget-object p2, p0, Lcom/lzy/imagepicker/ui/ImageGridActivity;->imagePicker:Lcom/lzy/imagepicker/ImagePicker;

    invoke-virtual {p2}, Lcom/lzy/imagepicker/ImagePicker;->getSelectedImages()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 366
    invoke-virtual {p0, v0, p1}, Lcom/lzy/imagepicker/ui/ImageGridActivity;->setResult(ILandroid/content/Intent;)V

    .line 367
    invoke-virtual {p0}, Lcom/lzy/imagepicker/ui/ImageGridActivity;->finish()V

    goto :goto_1

    .line 369
    :cond_4
    iget-boolean p1, p0, Lcom/lzy/imagepicker/ui/ImageGridActivity;->directPhoto:Z

    if-eqz p1, :cond_5

    .line 370
    invoke-virtual {p0}, Lcom/lzy/imagepicker/ui/ImageGridActivity;->finish()V

    :cond_5
    :goto_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 171
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 172
    sget v0, Lcom/lzy/imagepicker/R$id;->btn_ok:I

    if-ne p1, v0, :cond_0

    .line 173
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 174
    iget-object v0, p0, Lcom/lzy/imagepicker/ui/ImageGridActivity;->imagePicker:Lcom/lzy/imagepicker/ImagePicker;

    invoke-virtual {v0}, Lcom/lzy/imagepicker/ImagePicker;->getSelectedImages()Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "extra_result_items"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/16 v0, 0x3ec

    .line 175
    invoke-virtual {p0, v0, p1}, Lcom/lzy/imagepicker/ui/ImageGridActivity;->setResult(ILandroid/content/Intent;)V

    .line 176
    invoke-virtual {p0}, Lcom/lzy/imagepicker/ui/ImageGridActivity;->finish()V

    goto/16 :goto_1

    .line 177
    :cond_0
    sget v0, Lcom/lzy/imagepicker/R$id;->ll_dir:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_4

    .line 178
    iget-object p1, p0, Lcom/lzy/imagepicker/ui/ImageGridActivity;->mImageFolders:Ljava/util/List;

    if-nez p1, :cond_1

    const-string p1, "ImageGridActivity"

    const-string v0, "\u60a8\u7684\u624b\u673a\u6ca1\u6709\u56fe\u7247"

    .line 179
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 183
    :cond_1
    invoke-direct {p0}, Lcom/lzy/imagepicker/ui/ImageGridActivity;->createPopupFolderList()V

    .line 184
    iget-object p1, p0, Lcom/lzy/imagepicker/ui/ImageGridActivity;->mImageFolderAdapter:Lcom/lzy/imagepicker/adapter/ImageFolderAdapter;

    iget-object v0, p0, Lcom/lzy/imagepicker/ui/ImageGridActivity;->mImageFolders:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/lzy/imagepicker/adapter/ImageFolderAdapter;->refreshData(Ljava/util/List;)V

    .line 185
    iget-object p1, p0, Lcom/lzy/imagepicker/ui/ImageGridActivity;->mFolderPopupWindow:Lcom/lzy/imagepicker/view/FolderPopUpWindow;

    invoke-virtual {p1}, Lcom/lzy/imagepicker/view/FolderPopUpWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 186
    iget-object p1, p0, Lcom/lzy/imagepicker/ui/ImageGridActivity;->mFolderPopupWindow:Lcom/lzy/imagepicker/view/FolderPopUpWindow;

    invoke-virtual {p1}, Lcom/lzy/imagepicker/view/FolderPopUpWindow;->dismiss()V

    goto :goto_1

    .line 188
    :cond_2
    iget-object p1, p0, Lcom/lzy/imagepicker/ui/ImageGridActivity;->mFolderPopupWindow:Lcom/lzy/imagepicker/view/FolderPopUpWindow;

    iget-object v0, p0, Lcom/lzy/imagepicker/ui/ImageGridActivity;->mFooterBar:Landroid/view/View;

    invoke-virtual {p1, v0, v1, v1, v1}, Lcom/lzy/imagepicker/view/FolderPopUpWindow;->showAtLocation(Landroid/view/View;III)V

    .line 190
    iget-object p1, p0, Lcom/lzy/imagepicker/ui/ImageGridActivity;->mImageFolderAdapter:Lcom/lzy/imagepicker/adapter/ImageFolderAdapter;

    invoke-virtual {p1}, Lcom/lzy/imagepicker/adapter/ImageFolderAdapter;->getSelectIndex()I

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    add-int/lit8 p1, p1, -0x1

    .line 192
    :goto_0
    iget-object v0, p0, Lcom/lzy/imagepicker/ui/ImageGridActivity;->mFolderPopupWindow:Lcom/lzy/imagepicker/view/FolderPopUpWindow;

    invoke-virtual {v0, p1}, Lcom/lzy/imagepicker/view/FolderPopUpWindow;->setSelection(I)V

    goto :goto_1

    .line 194
    :cond_4
    sget v0, Lcom/lzy/imagepicker/R$id;->btn_preview:I

    if-ne p1, v0, :cond_5

    .line 195
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "selected_image_position"

    .line 196
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 197
    iget-object v0, p0, Lcom/lzy/imagepicker/ui/ImageGridActivity;->imagePicker:Lcom/lzy/imagepicker/ImagePicker;

    invoke-virtual {v0}, Lcom/lzy/imagepicker/ImagePicker;->getSelectedImages()Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "extra_image_items"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 198
    iget-boolean v0, p0, Lcom/lzy/imagepicker/ui/ImageGridActivity;->isOrigin:Z

    const-string v1, "isOrigin"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "extra_from_items"

    const/4 v1, 0x1

    .line 199
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v0, 0x3eb

    .line 200
    invoke-virtual {p0, p1, v0}, Lcom/lzy/imagepicker/ui/ImageGridActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 201
    :cond_5
    sget v0, Lcom/lzy/imagepicker/R$id;->btn_back:I

    if-ne p1, v0, :cond_6

    .line 203
    invoke-virtual {p0}, Lcom/lzy/imagepicker/ui/ImageGridActivity;->finish()V

    :cond_6
    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 87
    invoke-super {p0, p1}, Lcom/lzy/imagepicker/ui/ImageBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    sget p1, Lcom/lzy/imagepicker/R$layout;->activity_image_grid:I

    invoke-virtual {p0, p1}, Lcom/lzy/imagepicker/ui/ImageGridActivity;->setContentView(I)V

    .line 90
    invoke-static {}, Lcom/lzy/imagepicker/ImagePicker;->getInstance()Lcom/lzy/imagepicker/ImagePicker;

    move-result-object p1

    iput-object p1, p0, Lcom/lzy/imagepicker/ui/ImageGridActivity;->imagePicker:Lcom/lzy/imagepicker/ImagePicker;

    .line 91
    invoke-virtual {p1}, Lcom/lzy/imagepicker/ImagePicker;->clear()V

    .line 92
    iget-object p1, p0, Lcom/lzy/imagepicker/ui/ImageGridActivity;->imagePicker:Lcom/lzy/imagepicker/ImagePicker;

    invoke-virtual {p1, p0}, Lcom/lzy/imagepicker/ImagePicker;->addOnImageSelectedListener(Lcom/lzy/imagepicker/ImagePicker$OnImageSelectedListener;)V

    .line 94
    invoke-virtual {p0}, Lcom/lzy/imagepicker/ui/ImageGridActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 96
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v2, "TAKE"

    .line 97
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/lzy/imagepicker/ui/ImageGridActivity;->directPhoto:Z

    if-eqz v2, :cond_1

    const-string v2, "android.permission.CAMERA"

    .line 99
    invoke-virtual {p0, v2}, Lcom/lzy/imagepicker/ui/ImageGridActivity;->checkPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    new-array v3, v0, [Ljava/lang/String;

    aput-object v2, v3, v1

    const/4 v2, 0x2

    .line 100
    invoke-static {p0, v3, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .line 102
    :cond_0
    iget-object v2, p0, Lcom/lzy/imagepicker/ui/ImageGridActivity;->imagePicker:Lcom/lzy/imagepicker/ImagePicker;

    const/16 v3, 0x3e9

    invoke-virtual {v2, p0, v3}, Lcom/lzy/imagepicker/ImagePicker;->takePicture(Landroid/app/Activity;I)V

    :cond_1
    :goto_0
    const-string v2, "IMAGES"

    .line 105
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 106
    iget-object v2, p0, Lcom/lzy/imagepicker/ui/ImageGridActivity;->imagePicker:Lcom/lzy/imagepicker/ImagePicker;

    invoke-virtual {v2, p1}, Lcom/lzy/imagepicker/ImagePicker;->setSelectedImages(Ljava/util/ArrayList;)V

    .line 109
    :cond_2
    sget p1, Lcom/lzy/imagepicker/R$id;->recycler:I

    invoke-virtual {p0, p1}, Lcom/lzy/imagepicker/ui/ImageGridActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/lzy/imagepicker/ui/ImageGridActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 111
    sget p1, Lcom/lzy/imagepicker/R$id;->btn_back:I

    invoke-virtual {p0, p1}, Lcom/lzy/imagepicker/ui/ImageGridActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    sget p1, Lcom/lzy/imagepicker/R$id;->btn_ok:I

    invoke-virtual {p0, p1}, Lcom/lzy/imagepicker/ui/ImageGridActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/lzy/imagepicker/ui/ImageGridActivity;->mBtnOk:Landroid/widget/Button;

    .line 113
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    sget p1, Lcom/lzy/imagepicker/R$id;->btn_preview:I

    invoke-virtual {p0, p1}, Lcom/lzy/imagepicker/ui/ImageGridActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/lzy/imagepicker/ui/ImageGridActivity;->mBtnPre:Landroid/widget/TextView;

    .line 115
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    sget p1, Lcom/lzy/imagepicker/R$id;->footer_bar:I

    invoke-virtual {p0, p1}, Lcom/lzy/imagepicker/ui/ImageGridActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/lzy/imagepicker/ui/ImageGridActivity;->mFooterBar:Landroid/view/View;

    .line 117
    sget p1, Lcom/lzy/imagepicker/R$id;->ll_dir:I

    invoke-virtual {p0, p1}, Lcom/lzy/imagepicker/ui/ImageGridActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/lzy/imagepicker/ui/ImageGridActivity;->mllDir:Landroid/view/View;

    .line 118
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    sget p1, Lcom/lzy/imagepicker/R$id;->tv_dir:I

    invoke-virtual {p0, p1}, Lcom/lzy/imagepicker/ui/ImageGridActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/lzy/imagepicker/ui/ImageGridActivity;->mtvDir:Landroid/widget/TextView;

    .line 120
    iget-object p1, p0, Lcom/lzy/imagepicker/ui/ImageGridActivity;->imagePicker:Lcom/lzy/imagepicker/ImagePicker;

    invoke-virtual {p1}, Lcom/lzy/imagepicker/ImagePicker;->isMultiMode()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 121
    iget-object p1, p0, Lcom/lzy/imagepicker/ui/ImageGridActivity;->mBtnOk:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 122
    iget-object p1, p0, Lcom/lzy/imagepicker/ui/ImageGridActivity;->mBtnPre:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 124
    :cond_3
    iget-object p1, p0, Lcom/lzy/imagepicker/ui/ImageGridActivity;->mBtnOk:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 125
    iget-object p1, p0, Lcom/lzy/imagepicker/ui/ImageGridActivity;->mBtnPre:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 129
    :goto_1
    new-instance p1, Lcom/lzy/imagepicker/adapter/ImageFolderAdapter;

    const/4 v2, 0x0

    invoke-direct {p1, p0, v2}, Lcom/lzy/imagepicker/adapter/ImageFolderAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    iput-object p1, p0, Lcom/lzy/imagepicker/ui/ImageGridActivity;->mImageFolderAdapter:Lcom/lzy/imagepicker/adapter/ImageFolderAdapter;

    .line 130
    new-instance p1, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;

    invoke-direct {p1, p0, v2}, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object p1, p0, Lcom/lzy/imagepicker/ui/ImageGridActivity;->mRecyclerAdapter:Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;

    .line 132
    invoke-virtual {p0, v1, v2, v1}, Lcom/lzy/imagepicker/ui/ImageGridActivity;->onImageSelected(ILcom/lzy/imagepicker/bean/ImageItem;Z)V

    .line 134
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-le p1, v3, :cond_5

    const-string p1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 135
    invoke-virtual {p0, p1}, Lcom/lzy/imagepicker/ui/ImageGridActivity;->checkPermission(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 136
    new-instance p1, Lcom/lzy/imagepicker/ImageDataSource;

    invoke-direct {p1, p0, v2, p0}, Lcom/lzy/imagepicker/ImageDataSource;-><init>(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Lcom/lzy/imagepicker/ImageDataSource$OnImagesLoadedListener;)V

    goto :goto_2

    :cond_4
    new-array v2, v0, [Ljava/lang/String;

    aput-object p1, v2, v1

    .line 138
    invoke-static {p0, v2, v0}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_2

    .line 141
    :cond_5
    new-instance p1, Lcom/lzy/imagepicker/ImageDataSource;

    invoke-direct {p1, p0, v2, p0}, Lcom/lzy/imagepicker/ImageDataSource;-><init>(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Lcom/lzy/imagepicker/ImageDataSource$OnImagesLoadedListener;)V

    :goto_2
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/lzy/imagepicker/ui/ImageGridActivity;->imagePicker:Lcom/lzy/imagepicker/ImagePicker;

    invoke-virtual {v0, p0}, Lcom/lzy/imagepicker/ImagePicker;->removeOnImageSelectedListener(Lcom/lzy/imagepicker/ImagePicker$OnImageSelectedListener;)V

    .line 166
    invoke-super {p0}, Lcom/lzy/imagepicker/ui/ImageBaseActivity;->onDestroy()V

    return-void
.end method

.method public onImageItemClick(Landroid/view/View;Lcom/lzy/imagepicker/bean/ImageItem;I)V
    .locals 1

    .line 251
    iget-object p1, p0, Lcom/lzy/imagepicker/ui/ImageGridActivity;->imagePicker:Lcom/lzy/imagepicker/ImagePicker;

    invoke-virtual {p1}, Lcom/lzy/imagepicker/ImagePicker;->isShowCamera()Z

    move-result p1

    if-eqz p1, :cond_0

    add-int/lit8 p3, p3, -0x1

    .line 252
    :cond_0
    iget-object p1, p0, Lcom/lzy/imagepicker/ui/ImageGridActivity;->imagePicker:Lcom/lzy/imagepicker/ImagePicker;

    invoke-virtual {p1}, Lcom/lzy/imagepicker/ImagePicker;->isMultiMode()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 253
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "selected_image_position"

    .line 254
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 266
    invoke-static {}, Lcom/lzy/imagepicker/DataHolder;->getInstance()Lcom/lzy/imagepicker/DataHolder;

    move-result-object p2

    iget-object p3, p0, Lcom/lzy/imagepicker/ui/ImageGridActivity;->imagePicker:Lcom/lzy/imagepicker/ImagePicker;

    invoke-virtual {p3}, Lcom/lzy/imagepicker/ImagePicker;->getCurrentImageFolderItems()Ljava/util/ArrayList;

    move-result-object p3

    const-string v0, "dh_current_image_folder_items"

    invoke-virtual {p2, v0, p3}, Lcom/lzy/imagepicker/DataHolder;->save(Ljava/lang/String;Ljava/util/List;)V

    .line 267
    iget-boolean p2, p0, Lcom/lzy/imagepicker/ui/ImageGridActivity;->isOrigin:Z

    const-string p3, "isOrigin"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 p2, 0x3eb

    .line 268
    invoke-virtual {p0, p1, p2}, Lcom/lzy/imagepicker/ui/ImageGridActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 270
    :cond_1
    iget-object p1, p0, Lcom/lzy/imagepicker/ui/ImageGridActivity;->imagePicker:Lcom/lzy/imagepicker/ImagePicker;

    invoke-virtual {p1}, Lcom/lzy/imagepicker/ImagePicker;->clearSelectedImages()V

    .line 271
    iget-object p1, p0, Lcom/lzy/imagepicker/ui/ImageGridActivity;->imagePicker:Lcom/lzy/imagepicker/ImagePicker;

    invoke-virtual {p1}, Lcom/lzy/imagepicker/ImagePicker;->getCurrentImageFolderItems()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/lzy/imagepicker/bean/ImageItem;

    const/4 v0, 0x1

    invoke-virtual {p1, p3, p2, v0}, Lcom/lzy/imagepicker/ImagePicker;->addSelectedImageItem(ILcom/lzy/imagepicker/bean/ImageItem;Z)V

    .line 272
    iget-object p1, p0, Lcom/lzy/imagepicker/ui/ImageGridActivity;->imagePicker:Lcom/lzy/imagepicker/ImagePicker;

    invoke-virtual {p1}, Lcom/lzy/imagepicker/ImagePicker;->isCrop()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 273
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/lzy/imagepicker/ui/ImageCropActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 p2, 0x3ea

    .line 274
    invoke-virtual {p0, p1, p2}, Lcom/lzy/imagepicker/ui/ImageGridActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 276
    :cond_2
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 277
    iget-object p2, p0, Lcom/lzy/imagepicker/ui/ImageGridActivity;->imagePicker:Lcom/lzy/imagepicker/ImagePicker;

    invoke-virtual {p2}, Lcom/lzy/imagepicker/ImagePicker;->getSelectedImages()Ljava/util/ArrayList;

    move-result-object p2

    const-string p3, "extra_result_items"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/16 p2, 0x3ec

    .line 278
    invoke-virtual {p0, p2, p1}, Lcom/lzy/imagepicker/ui/ImageGridActivity;->setResult(ILandroid/content/Intent;)V

    .line 279
    invoke-virtual {p0}, Lcom/lzy/imagepicker/ui/ImageGridActivity;->finish()V

    :goto_0
    return-void
.end method

.method public onImageSelected(ILcom/lzy/imagepicker/bean/ImageItem;Z)V
    .locals 4

    .line 287
    iget-object p1, p0, Lcom/lzy/imagepicker/ui/ImageGridActivity;->imagePicker:Lcom/lzy/imagepicker/ImagePicker;

    invoke-virtual {p1}, Lcom/lzy/imagepicker/ImagePicker;->getSelectImageCount()I

    move-result p1

    const/4 p3, 0x0

    if-lez p1, :cond_0

    .line 288
    iget-object p1, p0, Lcom/lzy/imagepicker/ui/ImageGridActivity;->mBtnOk:Landroid/widget/Button;

    sget v0, Lcom/lzy/imagepicker/R$string;->ip_select_complete:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/lzy/imagepicker/ui/ImageGridActivity;->imagePicker:Lcom/lzy/imagepicker/ImagePicker;

    invoke-virtual {v2}, Lcom/lzy/imagepicker/ImagePicker;->getSelectImageCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, p3

    iget-object v2, p0, Lcom/lzy/imagepicker/ui/ImageGridActivity;->imagePicker:Lcom/lzy/imagepicker/ImagePicker;

    invoke-virtual {v2}, Lcom/lzy/imagepicker/ImagePicker;->getSelectLimit()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/lzy/imagepicker/ui/ImageGridActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 289
    iget-object p1, p0, Lcom/lzy/imagepicker/ui/ImageGridActivity;->mBtnOk:Landroid/widget/Button;

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 290
    iget-object p1, p0, Lcom/lzy/imagepicker/ui/ImageGridActivity;->mBtnPre:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 291
    iget-object p1, p0, Lcom/lzy/imagepicker/ui/ImageGridActivity;->mBtnPre:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lzy/imagepicker/ui/ImageGridActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/lzy/imagepicker/R$string;->ip_preview_count:I

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/lzy/imagepicker/ui/ImageGridActivity;->imagePicker:Lcom/lzy/imagepicker/ImagePicker;

    invoke-virtual {v3}, Lcom/lzy/imagepicker/ImagePicker;->getSelectImageCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    iget-object p1, p0, Lcom/lzy/imagepicker/ui/ImageGridActivity;->mBtnPre:Landroid/widget/TextView;

    sget p3, Lcom/lzy/imagepicker/R$color;->ip_text_primary_inverted:I

    invoke-static {p0, p3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 293
    iget-object p1, p0, Lcom/lzy/imagepicker/ui/ImageGridActivity;->mBtnOk:Landroid/widget/Button;

    sget p3, Lcom/lzy/imagepicker/R$color;->ip_text_primary_inverted:I

    invoke-static {p0, p3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0

    .line 295
    :cond_0
    iget-object p1, p0, Lcom/lzy/imagepicker/ui/ImageGridActivity;->mBtnOk:Landroid/widget/Button;

    sget v0, Lcom/lzy/imagepicker/R$string;->ip_complete:I

    invoke-virtual {p0, v0}, Lcom/lzy/imagepicker/ui/ImageGridActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 296
    iget-object p1, p0, Lcom/lzy/imagepicker/ui/ImageGridActivity;->mBtnOk:Landroid/widget/Button;

    invoke-virtual {p1, p3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 297
    iget-object p1, p0, Lcom/lzy/imagepicker/ui/ImageGridActivity;->mBtnPre:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 298
    iget-object p1, p0, Lcom/lzy/imagepicker/ui/ImageGridActivity;->mBtnPre:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lzy/imagepicker/ui/ImageGridActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/lzy/imagepicker/R$string;->ip_preview:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    iget-object p1, p0, Lcom/lzy/imagepicker/ui/ImageGridActivity;->mBtnPre:Landroid/widget/TextView;

    sget p3, Lcom/lzy/imagepicker/R$color;->ip_text_secondary_inverted:I

    invoke-static {p0, p3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 300
    iget-object p1, p0, Lcom/lzy/imagepicker/ui/ImageGridActivity;->mBtnOk:Landroid/widget/Button;

    sget p3, Lcom/lzy/imagepicker/R$color;->ip_text_secondary_inverted:I

    invoke-static {p0, p3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/Button;->setTextColor(I)V

    .line 305
    :goto_0
    iget-object p1, p0, Lcom/lzy/imagepicker/ui/ImageGridActivity;->imagePicker:Lcom/lzy/imagepicker/ImagePicker;

    invoke-virtual {p1}, Lcom/lzy/imagepicker/ImagePicker;->isShowCamera()Z

    move-result p1

    :goto_1
    iget-object p3, p0, Lcom/lzy/imagepicker/ui/ImageGridActivity;->mRecyclerAdapter:Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;

    invoke-virtual {p3}, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;->getItemCount()I

    move-result p3

    if-ge p1, p3, :cond_2

    .line 306
    iget-object p3, p0, Lcom/lzy/imagepicker/ui/ImageGridActivity;->mRecyclerAdapter:Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;

    invoke-virtual {p3, p1}, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;->getItem(I)Lcom/lzy/imagepicker/bean/ImageItem;

    move-result-object p3

    iget-object p3, p3, Lcom/lzy/imagepicker/bean/ImageItem;->path:Ljava/lang/String;

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/lzy/imagepicker/ui/ImageGridActivity;->mRecyclerAdapter:Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;

    invoke-virtual {p3, p1}, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;->getItem(I)Lcom/lzy/imagepicker/bean/ImageItem;

    move-result-object p3

    iget-object p3, p3, Lcom/lzy/imagepicker/bean/ImageItem;->path:Ljava/lang/String;

    iget-object v0, p2, Lcom/lzy/imagepicker/bean/ImageItem;->path:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 307
    iget-object p2, p0, Lcom/lzy/imagepicker/ui/ImageGridActivity;->mRecyclerAdapter:Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;

    invoke-virtual {p2, p1}, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;->notifyItemChanged(I)V

    return-void

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public onImagesLoaded(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lzy/imagepicker/bean/ImageFolder;",
            ">;)V"
        }
    .end annotation

    .line 231
    iput-object p1, p0, Lcom/lzy/imagepicker/ui/ImageGridActivity;->mImageFolders:Ljava/util/List;

    .line 232
    iget-object v0, p0, Lcom/lzy/imagepicker/ui/ImageGridActivity;->imagePicker:Lcom/lzy/imagepicker/ImagePicker;

    invoke-virtual {v0, p1}, Lcom/lzy/imagepicker/ImagePicker;->setImageFolders(Ljava/util/List;)V

    .line 233
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/lzy/imagepicker/ui/ImageGridActivity;->mRecyclerAdapter:Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;->refreshData(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/lzy/imagepicker/ui/ImageGridActivity;->mRecyclerAdapter:Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lzy/imagepicker/bean/ImageFolder;

    iget-object v2, v2, Lcom/lzy/imagepicker/bean/ImageFolder;->images:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;->refreshData(Ljava/util/ArrayList;)V

    .line 241
    :goto_0
    iget-object v0, p0, Lcom/lzy/imagepicker/ui/ImageGridActivity;->mRecyclerAdapter:Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;

    invoke-virtual {v0, p0}, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;->setOnImageItemClickListener(Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$OnImageItemClickListener;)V

    .line 242
    iget-object v0, p0, Lcom/lzy/imagepicker/ui/ImageGridActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 243
    iget-object v0, p0, Lcom/lzy/imagepicker/ui/ImageGridActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/lzy/imagepicker/view/GridSpacingItemDecoration;

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {p0, v4}, Lcom/lzy/imagepicker/util/Utils;->dp2px(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v2, v3, v4, v1}, Lcom/lzy/imagepicker/view/GridSpacingItemDecoration;-><init>(IIZ)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 244
    iget-object v0, p0, Lcom/lzy/imagepicker/ui/ImageGridActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/lzy/imagepicker/ui/ImageGridActivity;->mRecyclerAdapter:Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 245
    iget-object v0, p0, Lcom/lzy/imagepicker/ui/ImageGridActivity;->mImageFolderAdapter:Lcom/lzy/imagepicker/adapter/ImageFolderAdapter;

    invoke-virtual {v0, p1}, Lcom/lzy/imagepicker/adapter/ImageFolderAdapter;->refreshData(Ljava/util/List;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 147
    invoke-super {p0, p1, p2, p3}, Lcom/lzy/imagepicker/ui/ImageBaseActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 149
    array-length p1, p3

    if-lez p1, :cond_0

    aget p1, p3, p2

    if-nez p1, :cond_0

    .line 150
    new-instance p1, Lcom/lzy/imagepicker/ImageDataSource;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2, p0}, Lcom/lzy/imagepicker/ImageDataSource;-><init>(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Lcom/lzy/imagepicker/ImageDataSource$OnImagesLoadedListener;)V

    goto :goto_0

    :cond_0
    const-string p1, "\u6743\u9650\u88ab\u7981\u6b62\uff0c\u65e0\u6cd5\u9009\u62e9\u672c\u5730\u56fe\u7247"

    .line 152
    invoke-virtual {p0, p1}, Lcom/lzy/imagepicker/ui/ImageGridActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 155
    array-length p1, p3

    if-lez p1, :cond_2

    aget p1, p3, p2

    if-nez p1, :cond_2

    .line 156
    iget-object p1, p0, Lcom/lzy/imagepicker/ui/ImageGridActivity;->imagePicker:Lcom/lzy/imagepicker/ImagePicker;

    const/16 p2, 0x3e9

    invoke-virtual {p1, p0, p2}, Lcom/lzy/imagepicker/ImagePicker;->takePicture(Landroid/app/Activity;I)V

    goto :goto_0

    :cond_2
    const-string p1, "\u6743\u9650\u88ab\u7981\u6b62\uff0c\u65e0\u6cd5\u6253\u5f00\u76f8\u673a"

    .line 158
    invoke-virtual {p0, p1}, Lcom/lzy/imagepicker/ui/ImageGridActivity;->showToast(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 75
    invoke-super {p0, p1}, Lcom/lzy/imagepicker/ui/ImageBaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "TAKE"

    const/4 v1, 0x0

    .line 76
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/lzy/imagepicker/ui/ImageGridActivity;->directPhoto:Z

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 81
    invoke-super {p0, p1}, Lcom/lzy/imagepicker/ui/ImageBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 82
    iget-boolean v0, p0, Lcom/lzy/imagepicker/ui/ImageGridActivity;->directPhoto:Z

    const-string v1, "TAKE"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
