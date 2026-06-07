.class public abstract Lcom/lzy/imagepicker/ui/ImagePreviewBaseActivity;
.super Lcom/lzy/imagepicker/ui/ImageBaseActivity;
.source "ImagePreviewBaseActivity.java"


# instance fields
.field protected content:Landroid/view/View;

.field protected imagePicker:Lcom/lzy/imagepicker/ImagePicker;

.field protected isFromItems:Z

.field protected mAdapter:Lcom/lzy/imagepicker/adapter/ImagePageAdapter;

.field protected mCurrentPosition:I

.field protected mImageItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/lzy/imagepicker/bean/ImageItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mTitleCount:Landroid/widget/TextView;

.field protected mViewPager:Lcom/lzy/imagepicker/view/ViewPagerFixed;

.field protected selectedImages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/lzy/imagepicker/bean/ImageItem;",
            ">;"
        }
    .end annotation
.end field

.field protected topBar:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/lzy/imagepicker/ui/ImageBaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/lzy/imagepicker/ui/ImagePreviewBaseActivity;->mCurrentPosition:I

    .line 39
    iput-boolean v0, p0, Lcom/lzy/imagepicker/ui/ImagePreviewBaseActivity;->isFromItems:Z

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 43
    invoke-super {p0, p1}, Lcom/lzy/imagepicker/ui/ImageBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    sget p1, Lcom/lzy/imagepicker/R$layout;->activity_image_preview:I

    invoke-virtual {p0, p1}, Lcom/lzy/imagepicker/ui/ImagePreviewBaseActivity;->setContentView(I)V

    .line 46
    invoke-virtual {p0}, Lcom/lzy/imagepicker/ui/ImagePreviewBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "selected_image_position"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/lzy/imagepicker/ui/ImagePreviewBaseActivity;->mCurrentPosition:I

    .line 47
    invoke-virtual {p0}, Lcom/lzy/imagepicker/ui/ImagePreviewBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "extra_from_items"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/lzy/imagepicker/ui/ImagePreviewBaseActivity;->isFromItems:Z

    if-eqz p1, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/lzy/imagepicker/ui/ImagePreviewBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "extra_image_items"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/lzy/imagepicker/ui/ImagePreviewBaseActivity;->mImageItems:Ljava/util/ArrayList;

    goto :goto_0

    .line 54
    :cond_0
    invoke-static {}, Lcom/lzy/imagepicker/DataHolder;->getInstance()Lcom/lzy/imagepicker/DataHolder;

    move-result-object p1

    const-string v0, "dh_current_image_folder_items"

    invoke-virtual {p1, v0}, Lcom/lzy/imagepicker/DataHolder;->retrieve(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/lzy/imagepicker/ui/ImagePreviewBaseActivity;->mImageItems:Ljava/util/ArrayList;

    .line 57
    :goto_0
    invoke-static {}, Lcom/lzy/imagepicker/ImagePicker;->getInstance()Lcom/lzy/imagepicker/ImagePicker;

    move-result-object p1

    iput-object p1, p0, Lcom/lzy/imagepicker/ui/ImagePreviewBaseActivity;->imagePicker:Lcom/lzy/imagepicker/ImagePicker;

    .line 58
    invoke-virtual {p1}, Lcom/lzy/imagepicker/ImagePicker;->getSelectedImages()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/lzy/imagepicker/ui/ImagePreviewBaseActivity;->selectedImages:Ljava/util/ArrayList;

    .line 61
    sget p1, Lcom/lzy/imagepicker/R$id;->content:I

    invoke-virtual {p0, p1}, Lcom/lzy/imagepicker/ui/ImagePreviewBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/lzy/imagepicker/ui/ImagePreviewBaseActivity;->content:Landroid/view/View;

    .line 64
    sget p1, Lcom/lzy/imagepicker/R$id;->top_bar:I

    invoke-virtual {p0, p1}, Lcom/lzy/imagepicker/ui/ImagePreviewBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/lzy/imagepicker/ui/ImagePreviewBaseActivity;->topBar:Landroid/view/View;

    .line 65
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p1, v0, :cond_1

    .line 66
    iget-object p1, p0, Lcom/lzy/imagepicker/ui/ImagePreviewBaseActivity;->topBar:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 67
    invoke-static {p0}, Lcom/lzy/imagepicker/util/Utils;->getStatusHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 68
    iget-object v0, p0, Lcom/lzy/imagepicker/ui/ImagePreviewBaseActivity;->topBar:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    :cond_1
    iget-object p1, p0, Lcom/lzy/imagepicker/ui/ImagePreviewBaseActivity;->topBar:Landroid/view/View;

    sget v0, Lcom/lzy/imagepicker/R$id;->btn_ok:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 71
    iget-object p1, p0, Lcom/lzy/imagepicker/ui/ImagePreviewBaseActivity;->topBar:Landroid/view/View;

    sget v0, Lcom/lzy/imagepicker/R$id;->btn_back:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/lzy/imagepicker/ui/ImagePreviewBaseActivity$1;

    invoke-direct {v0, p0}, Lcom/lzy/imagepicker/ui/ImagePreviewBaseActivity$1;-><init>(Lcom/lzy/imagepicker/ui/ImagePreviewBaseActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    sget p1, Lcom/lzy/imagepicker/R$id;->tv_des:I

    invoke-virtual {p0, p1}, Lcom/lzy/imagepicker/ui/ImagePreviewBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/lzy/imagepicker/ui/ImagePreviewBaseActivity;->mTitleCount:Landroid/widget/TextView;

    .line 80
    sget p1, Lcom/lzy/imagepicker/R$id;->viewpager:I

    invoke-virtual {p0, p1}, Lcom/lzy/imagepicker/ui/ImagePreviewBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/lzy/imagepicker/view/ViewPagerFixed;

    iput-object p1, p0, Lcom/lzy/imagepicker/ui/ImagePreviewBaseActivity;->mViewPager:Lcom/lzy/imagepicker/view/ViewPagerFixed;

    .line 81
    new-instance p1, Lcom/lzy/imagepicker/adapter/ImagePageAdapter;

    iget-object v0, p0, Lcom/lzy/imagepicker/ui/ImagePreviewBaseActivity;->mImageItems:Ljava/util/ArrayList;

    invoke-direct {p1, p0, v0}, Lcom/lzy/imagepicker/adapter/ImagePageAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object p1, p0, Lcom/lzy/imagepicker/ui/ImagePreviewBaseActivity;->mAdapter:Lcom/lzy/imagepicker/adapter/ImagePageAdapter;

    .line 82
    new-instance v0, Lcom/lzy/imagepicker/ui/ImagePreviewBaseActivity$2;

    invoke-direct {v0, p0}, Lcom/lzy/imagepicker/ui/ImagePreviewBaseActivity$2;-><init>(Lcom/lzy/imagepicker/ui/ImagePreviewBaseActivity;)V

    invoke-virtual {p1, v0}, Lcom/lzy/imagepicker/adapter/ImagePageAdapter;->setPhotoViewClickListener(Lcom/lzy/imagepicker/adapter/ImagePageAdapter$PhotoViewClickListener;)V

    .line 88
    iget-object p1, p0, Lcom/lzy/imagepicker/ui/ImagePreviewBaseActivity;->mViewPager:Lcom/lzy/imagepicker/view/ViewPagerFixed;

    iget-object v0, p0, Lcom/lzy/imagepicker/ui/ImagePreviewBaseActivity;->mAdapter:Lcom/lzy/imagepicker/adapter/ImagePageAdapter;

    invoke-virtual {p1, v0}, Lcom/lzy/imagepicker/view/ViewPagerFixed;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 89
    iget-object p1, p0, Lcom/lzy/imagepicker/ui/ImagePreviewBaseActivity;->mViewPager:Lcom/lzy/imagepicker/view/ViewPagerFixed;

    iget v0, p0, Lcom/lzy/imagepicker/ui/ImagePreviewBaseActivity;->mCurrentPosition:I

    invoke-virtual {p1, v0, v1}, Lcom/lzy/imagepicker/view/ViewPagerFixed;->setCurrentItem(IZ)V

    .line 92
    iget-object p1, p0, Lcom/lzy/imagepicker/ui/ImagePreviewBaseActivity;->mTitleCount:Landroid/widget/TextView;

    sget v0, Lcom/lzy/imagepicker/R$string;->ip_preview_image_count:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/lzy/imagepicker/ui/ImagePreviewBaseActivity;->mCurrentPosition:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    iget-object v1, p0, Lcom/lzy/imagepicker/ui/ImagePreviewBaseActivity;->mImageItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v4

    invoke-virtual {p0, v0, v2}, Lcom/lzy/imagepicker/ui/ImagePreviewBaseActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public abstract onImageSingleTap()V
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 100
    invoke-super {p0, p1}, Lcom/lzy/imagepicker/ui/ImageBaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 101
    invoke-static {}, Lcom/lzy/imagepicker/ImagePicker;->getInstance()Lcom/lzy/imagepicker/ImagePicker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lzy/imagepicker/ImagePicker;->restoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 106
    invoke-super {p0, p1}, Lcom/lzy/imagepicker/ui/ImageBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 107
    invoke-static {}, Lcom/lzy/imagepicker/ImagePicker;->getInstance()Lcom/lzy/imagepicker/ImagePicker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lzy/imagepicker/ImagePicker;->saveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
