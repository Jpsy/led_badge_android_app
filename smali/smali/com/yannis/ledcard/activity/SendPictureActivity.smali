.class public Lcom/yannis/ledcard/activity/SendPictureActivity;
.super Lcom/yannis/ledcard/base/BaseMVPActivity;
.source "SendPictureActivity.java"

# interfaces
.implements Lcom/yannis/ledcard/contract/MainContract$View;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yannis/ledcard/base/BaseMVPActivity<",
        "Lcom/yannis/ledcard/contract/MainContract$Presenter;",
        ">;",
        "Lcom/yannis/ledcard/contract/MainContract$View;"
    }
.end annotation


# instance fields
.field bitmap:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field bleBitmap:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public btnSend:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09002d
    .end annotation
.end field

.field public checkBoxFlash:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090035
    .end annotation
.end field

.field public checkBoxMarquee:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090037
    .end annotation
.end field

.field images:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/lzy/imagepicker/bean/ImageItem;",
            ">;"
        }
    .end annotation
.end field

.field public itemViewMode:Lcom/yannis/ledcard/widget/ItemView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090075
    .end annotation
.end field

.field public itemViewSpeed:Lcom/yannis/ledcard/widget/ItemView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090076
    .end annotation
.end field

.field public ivBle:Lcom/yannis/ledcard/widget/LEDView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09007a
    .end annotation
.end field

.field public ivPic:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090080
    .end annotation
.end field

.field public ivWB:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090086
    .end annotation
.end field

.field mImagePicker:Lcom/lzy/imagepicker/ImagePicker;

.field private pix:I

.field public sb:Landroid/widget/SeekBar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900c1
    .end annotation
.end field

.field private sendContent:Lcom/yannis/ledcard/bean/SendContent;

.field public tvContext:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090117
    .end annotation
.end field

.field public tvRight:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090114
    .end annotation
.end field

.field public tvTmp:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090116
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Lcom/yannis/ledcard/base/BaseMVPActivity;-><init>()V

    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lcom/yannis/ledcard/activity/SendPictureActivity;->images:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/yannis/ledcard/activity/SendPictureActivity;)Lcom/yannis/ledcard/bean/SendContent;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/yannis/ledcard/activity/SendPictureActivity;->sendContent:Lcom/yannis/ledcard/bean/SendContent;

    return-object p0
.end method

.method public static convertToBMW(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .locals 12

    .line 221
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 223
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    mul-int v0, v8, v9

    .line 225
    new-array v10, v0, [I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v10

    move v3, v8

    move v6, v8

    move v7, v9

    .line 228
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 p0, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v9, :cond_5

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v8, :cond_4

    mul-int v2, v8, v0

    add-int/2addr v2, v1

    .line 232
    aget v3, v10, v2

    const/high16 v4, -0x1000000

    and-int v5, v3, v4

    shr-int/lit8 v5, v5, 0x18

    const/high16 v6, 0xff0000

    and-int/2addr v6, v3

    shr-int/lit8 v6, v6, 0x10

    const v7, 0xff00

    and-int/2addr v7, v3

    shr-int/lit8 v7, v7, 0x8

    const/16 v11, 0xff

    and-int/2addr v3, v11

    if-le v6, p3, :cond_0

    const/16 v6, 0xff

    goto :goto_2

    :cond_0
    const/4 v6, 0x0

    :goto_2
    if-le v3, p3, :cond_1

    const/16 v3, 0xff

    goto :goto_3

    :cond_1
    const/4 v3, 0x0

    :goto_3
    if-le v7, p3, :cond_2

    goto :goto_4

    :cond_2
    const/4 v11, 0x0

    :goto_4
    shl-int/lit8 v5, v5, 0x18

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    shl-int/lit8 v6, v11, 0x8

    or-int/2addr v5, v6

    or-int/2addr v3, v5

    .line 253
    aput v3, v10, v2

    .line 255
    aget v3, v10, v2

    const/4 v5, -0x1

    if-ne v3, v5, :cond_3

    .line 256
    aput v5, v10, v2

    goto :goto_5

    .line 258
    :cond_3
    aput v4, v10, v2

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 263
    :cond_5
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v10

    move v3, v8

    move v6, v8

    move v7, v9

    .line 265
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 266
    invoke-static {p0, p1, p2}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public convertBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2

    .line 202
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 203
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    const-string v0, "_pix"

    const/16 v1, 0xb

    .line 204
    invoke-static {p0, v0, v1}, Lcom/yannis/ledcard/util/PrefUtils;->getIntFromPrefs(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 205
    invoke-static {p1, v0, v0}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    .line 207
    invoke-static {p1, v0, v0}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createPresenter()Lcom/yannis/ledcard/base/inter/IPresenter;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lcom/yannis/ledcard/activity/SendPictureActivity;->createPresenter()Lcom/yannis/ledcard/contract/MainContract$Presenter;

    move-result-object v0

    return-object v0
.end method

.method public createPresenter()Lcom/yannis/ledcard/contract/MainContract$Presenter;
    .locals 1

    .line 271
    new-instance v0, Lcom/yannis/ledcard/presenter/MainPresenter;

    invoke-direct {v0, p0}, Lcom/yannis/ledcard/presenter/MainPresenter;-><init>(Lcom/yannis/ledcard/contract/MainContract$View;)V

    return-object v0
.end method

.method public getSendContentList(Lcom/yannis/ledcard/bean/SendContent;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yannis/ledcard/bean/SendContent;",
            ")",
            "Ljava/util/List<",
            "Lcom/yannis/ledcard/bean/SendContent;",
            ">;"
        }
    .end annotation

    .line 334
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x8

    if-ge v2, v3, :cond_1

    if-nez v2, :cond_0

    .line 337
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 339
    :cond_0
    new-instance v3, Lcom/yannis/ledcard/bean/SendContent;

    invoke-direct {v3}, Lcom/yannis/ledcard/bean/SendContent;-><init>()V

    .line 340
    invoke-virtual {v3, v1}, Lcom/yannis/ledcard/bean/SendContent;->setMarquee(Z)V

    const-string v4, ""

    .line 341
    invoke-virtual {v3, v4}, Lcom/yannis/ledcard/bean/SendContent;->setMessage(Ljava/lang/String;)V

    .line 342
    invoke-virtual {v3, v1}, Lcom/yannis/ledcard/bean/SendContent;->setSelect(Z)V

    .line 343
    invoke-virtual {v3, v1}, Lcom/yannis/ledcard/bean/SendContent;->setFlash(Z)V

    .line 344
    invoke-virtual {v3, v1}, Lcom/yannis/ledcard/bean/SendContent;->setReverse(Z)V

    const/4 v4, 0x1

    .line 345
    invoke-virtual {v3, v4}, Lcom/yannis/ledcard/bean/SendContent;->setMode(I)V

    .line 346
    invoke-virtual {v3, v4}, Lcom/yannis/ledcard/bean/SendContent;->setSpeed(I)V

    .line 347
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method protected init()V
    .locals 0

    return-void
.end method

.method protected initData()V
    .locals 4

    const-string v0, "_pix"

    const/16 v1, 0xb

    .line 91
    invoke-static {p0, v0, v1}, Lcom/yannis/ledcard/util/PrefUtils;->getIntFromPrefs(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yannis/ledcard/activity/SendPictureActivity;->pix:I

    .line 92
    new-instance v0, Lcom/yannis/ledcard/bean/SendContent;

    invoke-direct {v0}, Lcom/yannis/ledcard/bean/SendContent;-><init>()V

    iput-object v0, p0, Lcom/yannis/ledcard/activity/SendPictureActivity;->sendContent:Lcom/yannis/ledcard/bean/SendContent;

    const/4 v1, 0x1

    .line 93
    invoke-virtual {v0, v1}, Lcom/yannis/ledcard/bean/SendContent;->setMode(I)V

    .line 94
    iget-object v0, p0, Lcom/yannis/ledcard/activity/SendPictureActivity;->sendContent:Lcom/yannis/ledcard/bean/SendContent;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/yannis/ledcard/bean/SendContent;->setSpeed(I)V

    .line 95
    iget-object v0, p0, Lcom/yannis/ledcard/activity/SendPictureActivity;->itemViewSpeed:Lcom/yannis/ledcard/widget/ItemView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/yannis/ledcard/activity/SendPictureActivity;->sendContent:Lcom/yannis/ledcard/bean/SendContent;

    invoke-virtual {v3}, Lcom/yannis/ledcard/bean/SendContent;->getSpeed()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yannis/ledcard/widget/ItemView;->setValue(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/yannis/ledcard/activity/SendPictureActivity;->itemViewMode:Lcom/yannis/ledcard/widget/ItemView;

    invoke-virtual {p0}, Lcom/yannis/ledcard/activity/SendPictureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f030000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yannis/ledcard/activity/SendPictureActivity;->sendContent:Lcom/yannis/ledcard/bean/SendContent;

    invoke-virtual {v3}, Lcom/yannis/ledcard/bean/SendContent;->getMode()I

    move-result v3

    sub-int/2addr v3, v1

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Lcom/yannis/ledcard/widget/ItemView;->setValue(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/yannis/ledcard/activity/SendPictureActivity;->tvRight:Landroid/widget/TextView;

    const-string v2, "\u9009\u62e9\u56fe\u7247"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v0, p0, Lcom/yannis/ledcard/activity/SendPictureActivity;->tvRight:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcom/yannis/ledcard/activity/SendPictureActivity;->tvContext:Landroid/widget/TextView;

    const-string v3, "\u53d1\u9001\u56fe\u7247"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, p0, Lcom/yannis/ledcard/activity/SendPictureActivity;->sb:Landroid/widget/SeekBar;

    const/16 v3, 0xff

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 101
    invoke-static {}, Lcom/lzy/imagepicker/ImagePicker;->getInstance()Lcom/lzy/imagepicker/ImagePicker;

    move-result-object v0

    iput-object v0, p0, Lcom/yannis/ledcard/activity/SendPictureActivity;->mImagePicker:Lcom/lzy/imagepicker/ImagePicker;

    .line 102
    new-instance v3, Lcom/yannis/ledcard/util/GlideImageLoader;

    invoke-direct {v3}, Lcom/yannis/ledcard/util/GlideImageLoader;-><init>()V

    invoke-virtual {v0, v3}, Lcom/lzy/imagepicker/ImagePicker;->setImageLoader(Lcom/lzy/imagepicker/loader/ImageLoader;)V

    .line 103
    iget-object v0, p0, Lcom/yannis/ledcard/activity/SendPictureActivity;->mImagePicker:Lcom/lzy/imagepicker/ImagePicker;

    invoke-virtual {v0, v2}, Lcom/lzy/imagepicker/ImagePicker;->setMultiMode(Z)V

    .line 105
    iget-object v0, p0, Lcom/yannis/ledcard/activity/SendPictureActivity;->mImagePicker:Lcom/lzy/imagepicker/ImagePicker;

    sget-object v2, Lcom/lzy/imagepicker/view/CropImageView$Style;->RECTANGLE:Lcom/lzy/imagepicker/view/CropImageView$Style;

    invoke-virtual {v0, v2}, Lcom/lzy/imagepicker/ImagePicker;->setStyle(Lcom/lzy/imagepicker/view/CropImageView$Style;)V

    const/16 v0, 0x118

    .line 106
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/yannis/ledcard/activity/SendPictureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 109
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/yannis/ledcard/activity/SendPictureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v1, v0, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 110
    iget-object v1, p0, Lcom/yannis/ledcard/activity/SendPictureActivity;->mImagePicker:Lcom/lzy/imagepicker/ImagePicker;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lzy/imagepicker/ImagePicker;->setFocusWidth(I)V

    .line 111
    iget-object v1, p0, Lcom/yannis/ledcard/activity/SendPictureActivity;->mImagePicker:Lcom/lzy/imagepicker/ImagePicker;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/lzy/imagepicker/ImagePicker;->setFocusHeight(I)V

    return-void
.end method

.method protected initEvent()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/view/View;

    .line 116
    iget-object v1, p0, Lcom/yannis/ledcard/activity/SendPictureActivity;->itemViewSpeed:Lcom/yannis/ledcard/widget/ItemView;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/yannis/ledcard/activity/SendPictureActivity;->itemViewMode:Lcom/yannis/ledcard/widget/ItemView;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/yannis/ledcard/activity/SendPictureActivity;->tvRight:Landroid/widget/TextView;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/yannis/ledcard/activity/SendPictureActivity;->registerClickEvent([Landroid/view/View;)V

    .line 117
    iget-object v0, p0, Lcom/yannis/ledcard/activity/SendPictureActivity;->sb:Landroid/widget/SeekBar;

    new-instance v1, Lcom/yannis/ledcard/activity/SendPictureActivity$1;

    invoke-direct {v1, p0}, Lcom/yannis/ledcard/activity/SendPictureActivity$1;-><init>(Lcom/yannis/ledcard/activity/SendPictureActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method public logTv(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .line 181
    invoke-super {p0, p1, p2, p3}, Lcom/yannis/ledcard/base/BaseMVPActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x3ec

    if-ne p2, v0, :cond_1

    const/4 p2, 0x0

    if-eqz p3, :cond_0

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    const-string p1, "extra_result_items"

    .line 184
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/yannis/ledcard/activity/SendPictureActivity;->images:Ljava/util/ArrayList;

    .line 185
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lzy/imagepicker/bean/ImageItem;

    .line 186
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " w = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Lcom/lzy/imagepicker/bean/ImageItem;->width:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " h = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Lcom/lzy/imagepicker/bean/ImageItem;->height:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " path = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/lzy/imagepicker/bean/ImageItem;->path:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "SendPictureActivity"

    invoke-static {v0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object p3, p0, Lcom/yannis/ledcard/activity/SendPictureActivity;->mImagePicker:Lcom/lzy/imagepicker/ImagePicker;

    invoke-virtual {p3}, Lcom/lzy/imagepicker/ImagePicker;->getImageLoader()Lcom/lzy/imagepicker/loader/ImageLoader;

    move-result-object v0

    iget-object p3, p0, Lcom/yannis/ledcard/activity/SendPictureActivity;->images:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/lzy/imagepicker/bean/ImageItem;

    iget-object v2, p2, Lcom/lzy/imagepicker/bean/ImageItem;->path:Ljava/lang/String;

    iget-object v3, p0, Lcom/yannis/ledcard/activity/SendPictureActivity;->ivPic:Landroid/widget/ImageView;

    const/16 v4, 0x118

    const/16 v5, 0x118

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/lzy/imagepicker/loader/ImageLoader;->displayImage(Landroid/app/Activity;Ljava/lang/String;Landroid/widget/ImageView;II)V

    .line 188
    new-instance p2, Ljava/lang/ref/SoftReference;

    iget-object p1, p1, Lcom/lzy/imagepicker/bean/ImageItem;->path:Ljava/lang/String;

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/yannis/ledcard/activity/SendPictureActivity;->bitmap:Ljava/lang/ref/SoftReference;

    .line 189
    iget-object p1, p0, Lcom/yannis/ledcard/activity/SendPictureActivity;->sb:Landroid/widget/SeekBar;

    const/16 p2, 0x50

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 190
    iget-object p1, p0, Lcom/yannis/ledcard/activity/SendPictureActivity;->tvTmp:Landroid/widget/TextView;

    const-string p3, "80"

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object p1, p0, Lcom/yannis/ledcard/activity/SendPictureActivity;->bitmap:Ljava/lang/ref/SoftReference;

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    iget-object p3, p0, Lcom/yannis/ledcard/activity/SendPictureActivity;->bitmap:Ljava/lang/ref/SoftReference;

    invoke-virtual {p3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Bitmap;

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    iget-object v0, p0, Lcom/yannis/ledcard/activity/SendPictureActivity;->bitmap:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-static {p1, p3, v0, p2}, Lcom/yannis/ledcard/activity/SendPictureActivity;->convertToBMW(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 192
    iget-object p2, p0, Lcom/yannis/ledcard/activity/SendPictureActivity;->ivWB:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 193
    new-instance p2, Ljava/lang/ref/SoftReference;

    invoke-virtual {p0, p1}, Lcom/yannis/ledcard/activity/SendPictureActivity;->convertBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/yannis/ledcard/activity/SendPictureActivity;->bleBitmap:Ljava/lang/ref/SoftReference;

    .line 194
    iget-object p1, p0, Lcom/yannis/ledcard/activity/SendPictureActivity;->ivBle:Lcom/yannis/ledcard/widget/LEDView;

    invoke-virtual {p2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-static {p2}, Lcom/yannis/ledcard/util/LedDataUtil;->getLedData(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/yannis/ledcard/widget/LEDView;->setLEDData(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "\u6ca1\u6709\u6570\u636e"

    .line 196
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onBtnSendData()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f09002d
        }
    .end annotation

    .line 317
    iget-object v0, p0, Lcom/yannis/ledcard/activity/SendPictureActivity;->bleBitmap:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 321
    :cond_0
    new-instance v0, Lcom/yannis/ledcard/bean/SendContent;

    invoke-direct {v0}, Lcom/yannis/ledcard/bean/SendContent;-><init>()V

    iput-object v0, p0, Lcom/yannis/ledcard/activity/SendPictureActivity;->sendContent:Lcom/yannis/ledcard/bean/SendContent;

    .line 322
    iget-object v1, p0, Lcom/yannis/ledcard/activity/SendPictureActivity;->checkBoxMarquee:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yannis/ledcard/bean/SendContent;->setMarquee(Z)V

    .line 323
    iget-object v0, p0, Lcom/yannis/ledcard/activity/SendPictureActivity;->sendContent:Lcom/yannis/ledcard/bean/SendContent;

    iget-object v1, p0, Lcom/yannis/ledcard/activity/SendPictureActivity;->checkBoxFlash:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yannis/ledcard/bean/SendContent;->setFlash(Z)V

    .line 324
    iget-object v0, p0, Lcom/yannis/ledcard/activity/SendPictureActivity;->sendContent:Lcom/yannis/ledcard/bean/SendContent;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yannis/ledcard/bean/SendContent;->setSelect(Z)V

    .line 325
    iget-object v0, p0, Lcom/yannis/ledcard/activity/SendPictureActivity;->sendContent:Lcom/yannis/ledcard/bean/SendContent;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/yannis/ledcard/bean/SendContent;->setMessage(Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Lcom/yannis/ledcard/activity/SendPictureActivity;->presenter:Lcom/yannis/ledcard/base/inter/IPresenter;

    if-eqz v0, :cond_1

    .line 327
    iget-object v0, p0, Lcom/yannis/ledcard/activity/SendPictureActivity;->presenter:Lcom/yannis/ledcard/base/inter/IPresenter;

    check-cast v0, Lcom/yannis/ledcard/contract/MainContract$Presenter;

    iget-object v1, p0, Lcom/yannis/ledcard/activity/SendPictureActivity;->sendContent:Lcom/yannis/ledcard/bean/SendContent;

    invoke-virtual {p0, v1}, Lcom/yannis/ledcard/activity/SendPictureActivity;->getSendContentList(Lcom/yannis/ledcard/bean/SendContent;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/yannis/ledcard/activity/SendPictureActivity;->pix:I

    invoke-interface {v0, v1, v2}, Lcom/yannis/ledcard/contract/MainContract$Presenter;->sendData(Ljava/util/List;I)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    const-string v0, "\u8bf7\u8bbe\u7f6e\u53d1\u9001\u56fe\u7247"

    .line 318
    invoke-virtual {p0, v0}, Lcom/yannis/ledcard/activity/SendPictureActivity;->showMsg(Ljava/lang/String;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 144
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 164
    :sswitch_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/lzy/imagepicker/ui/ImageGridActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 165
    iget-object v0, p0, Lcom/yannis/ledcard/activity/SendPictureActivity;->images:Ljava/util/ArrayList;

    const-string v1, "IMAGES"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/16 v0, 0x64

    .line 166
    invoke-virtual {p0, p1, v0}, Lcom/yannis/ledcard/activity/SendPictureActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 155
    :sswitch_1
    iget-object p1, p0, Lcom/yannis/ledcard/activity/SendPictureActivity;->sendContent:Lcom/yannis/ledcard/bean/SendContent;

    invoke-virtual {p1}, Lcom/yannis/ledcard/bean/SendContent;->getSpeed()I

    move-result p1

    sub-int/2addr p1, v0

    const v1, 0x7f0e0086

    invoke-virtual {p0, v1}, Lcom/yannis/ledcard/activity/SendPictureActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/yannis/ledcard/activity/SendPictureActivity$3;

    invoke-direct {v2, p0}, Lcom/yannis/ledcard/activity/SendPictureActivity$3;-><init>(Lcom/yannis/ledcard/activity/SendPictureActivity;)V

    invoke-static {p0, v0, p1, v1, v2}, Lcom/yannis/ledcard/util/DialogUtil;->showWheelViewDialog(Landroid/content/Context;IILjava/lang/String;Lcom/yannis/ledcard/util/DialogUtil$OnWheelViewSelectListener;)V

    goto :goto_0

    :sswitch_2
    const/4 p1, 0x2

    .line 146
    iget-object v1, p0, Lcom/yannis/ledcard/activity/SendPictureActivity;->sendContent:Lcom/yannis/ledcard/bean/SendContent;

    invoke-virtual {v1}, Lcom/yannis/ledcard/bean/SendContent;->getMode()I

    move-result v1

    sub-int/2addr v1, v0

    const v0, 0x7f0e0059

    invoke-virtual {p0, v0}, Lcom/yannis/ledcard/activity/SendPictureActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/yannis/ledcard/activity/SendPictureActivity$2;

    invoke-direct {v2, p0}, Lcom/yannis/ledcard/activity/SendPictureActivity$2;-><init>(Lcom/yannis/ledcard/activity/SendPictureActivity;)V

    invoke-static {p0, p1, v1, v0, v2}, Lcom/yannis/ledcard/util/DialogUtil;->showWheelViewDialog(Landroid/content/Context;IILjava/lang/String;Lcom/yannis/ledcard/util/DialogUtil$OnWheelViewSelectListener;)V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f090075 -> :sswitch_2
        0x7f090076 -> :sswitch_1
        0x7f090114 -> :sswitch_0
    .end sparse-switch
.end method

.method public scanSuccess()V
    .locals 0

    return-void
.end method

.method public sendFinished()V
    .locals 0

    return-void
.end method

.method protected setLayoutResId()I
    .locals 1

    const v0, 0x7f0c0024

    return v0
.end method

.method public setSendBtnIsEnable(Z)V
    .locals 1

    .line 306
    new-instance v0, Lcom/yannis/ledcard/activity/SendPictureActivity$4;

    invoke-direct {v0, p0, p1}, Lcom/yannis/ledcard/activity/SendPictureActivity$4;-><init>(Lcom/yannis/ledcard/activity/SendPictureActivity;Z)V

    invoke-virtual {p0, v0}, Lcom/yannis/ledcard/activity/SendPictureActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showMsg(Ljava/lang/String;)V
    .locals 0

    .line 281
    invoke-virtual {p0, p1}, Lcom/yannis/ledcard/activity/SendPictureActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public startScan()V
    .locals 0

    return-void
.end method

.method public startSend()V
    .locals 0

    return-void
.end method
