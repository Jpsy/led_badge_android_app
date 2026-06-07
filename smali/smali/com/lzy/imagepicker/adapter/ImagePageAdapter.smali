.class public Lcom/lzy/imagepicker/adapter/ImagePageAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "ImagePageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzy/imagepicker/adapter/ImagePageAdapter$PhotoViewClickListener;
    }
.end annotation


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

.field public listener:Lcom/lzy/imagepicker/adapter/ImagePageAdapter$PhotoViewClickListener;

.field private mActivity:Landroid/app/Activity;

.field private screenHeight:I

.field private screenWidth:I


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

    .line 36
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzy/imagepicker/adapter/ImagePageAdapter;->images:Ljava/util/ArrayList;

    .line 37
    iput-object p1, p0, Lcom/lzy/imagepicker/adapter/ImagePageAdapter;->mActivity:Landroid/app/Activity;

    .line 38
    iput-object p2, p0, Lcom/lzy/imagepicker/adapter/ImagePageAdapter;->images:Ljava/util/ArrayList;

    .line 40
    invoke-static {p1}, Lcom/lzy/imagepicker/util/Utils;->getScreenPix(Landroid/app/Activity;)Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 41
    iget p2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p2, p0, Lcom/lzy/imagepicker/adapter/ImagePageAdapter;->screenWidth:I

    .line 42
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Lcom/lzy/imagepicker/adapter/ImagePageAdapter;->screenHeight:I

    .line 43
    invoke-static {}, Lcom/lzy/imagepicker/ImagePicker;->getInstance()Lcom/lzy/imagepicker/ImagePicker;

    move-result-object p1

    iput-object p1, p0, Lcom/lzy/imagepicker/adapter/ImagePageAdapter;->imagePicker:Lcom/lzy/imagepicker/ImagePicker;

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 81
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/lzy/imagepicker/adapter/ImagePageAdapter;->images:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, -0x2

    return p1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 7

    .line 56
    new-instance v6, Luk/co/senab/photoview/PhotoView;

    iget-object v0, p0, Lcom/lzy/imagepicker/adapter/ImagePageAdapter;->mActivity:Landroid/app/Activity;

    invoke-direct {v6, v0}, Luk/co/senab/photoview/PhotoView;-><init>(Landroid/content/Context;)V

    .line 57
    iget-object v0, p0, Lcom/lzy/imagepicker/adapter/ImagePageAdapter;->images:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/lzy/imagepicker/bean/ImageItem;

    .line 58
    iget-object v0, p0, Lcom/lzy/imagepicker/adapter/ImagePageAdapter;->imagePicker:Lcom/lzy/imagepicker/ImagePicker;

    invoke-virtual {v0}, Lcom/lzy/imagepicker/ImagePicker;->getImageLoader()Lcom/lzy/imagepicker/loader/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/lzy/imagepicker/adapter/ImagePageAdapter;->mActivity:Landroid/app/Activity;

    iget-object v2, p2, Lcom/lzy/imagepicker/bean/ImageItem;->path:Ljava/lang/String;

    iget v4, p0, Lcom/lzy/imagepicker/adapter/ImagePageAdapter;->screenWidth:I

    iget v5, p0, Lcom/lzy/imagepicker/adapter/ImagePageAdapter;->screenHeight:I

    move-object v3, v6

    invoke-interface/range {v0 .. v5}, Lcom/lzy/imagepicker/loader/ImageLoader;->displayImagePreview(Landroid/app/Activity;Ljava/lang/String;Landroid/widget/ImageView;II)V

    .line 59
    new-instance p2, Lcom/lzy/imagepicker/adapter/ImagePageAdapter$1;

    invoke-direct {p2, p0}, Lcom/lzy/imagepicker/adapter/ImagePageAdapter$1;-><init>(Lcom/lzy/imagepicker/adapter/ImagePageAdapter;)V

    invoke-virtual {v6, p2}, Luk/co/senab/photoview/PhotoView;->setOnPhotoTapListener(Luk/co/senab/photoview/PhotoViewAttacher$OnPhotoTapListener;)V

    .line 65
    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v6
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setData(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/lzy/imagepicker/bean/ImageItem;",
            ">;)V"
        }
    .end annotation

    .line 47
    iput-object p1, p0, Lcom/lzy/imagepicker/adapter/ImagePageAdapter;->images:Ljava/util/ArrayList;

    return-void
.end method

.method public setPhotoViewClickListener(Lcom/lzy/imagepicker/adapter/ImagePageAdapter$PhotoViewClickListener;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/lzy/imagepicker/adapter/ImagePageAdapter;->listener:Lcom/lzy/imagepicker/adapter/ImagePageAdapter$PhotoViewClickListener;

    return-void
.end method
