.class public Lcom/yannis/ledcard/activity/SavePictureActivity;
.super Lcom/yannis/ledcard/base/BaseActivity;
.source "SavePictureActivity.java"


# static fields
.field public static final LEDBMP_UNDER_EDITING:Ljava/lang/String; = "_led_under_editing"


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

.field public btnSave:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090083
    .end annotation
.end field

.field public hscrollview:Landroid/widget/HorizontalScrollView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09006e
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

.field public ivClear:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09007b
    .end annotation
.end field

.field public ivPic:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090080
    .end annotation
.end field

.field public ivReverse:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090082
    .end annotation
.end field

.field public ivScroll:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090084
    .end annotation
.end field

.field public ivWB:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090086
    .end annotation
.end field

.field public ledBig:Lcom/yannis/ledcard/widget/LEDView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09008b
    .end annotation
.end field

.field private ledBmp:Lcom/yannis/ledcard/bean/LEDBmp;

.field public llLEDs:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090087
    .end annotation
.end field

.field public llLeds:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090094
    .end annotation
.end field

.field public llParent:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090095
    .end annotation
.end field

.field public llSb:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090096
    .end annotation
.end field

.field public llpics:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900bd
    .end annotation
.end field

.field mImagePicker:Lcom/lzy/imagepicker/ImagePicker;

.field private matrix:I

.field public sb:Landroid/widget/SeekBar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900c1
    .end annotation
.end field

.field public titleBW:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900f9
    .end annotation
.end field

.field public titleOrigin:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900fa
    .end annotation
.end field

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


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Lcom/yannis/ledcard/base/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 98
    iput-object v0, p0, Lcom/yannis/ledcard/activity/SavePictureActivity;->images:Ljava/util/ArrayList;

    const/16 v0, 0xb

    .line 103
    iput v0, p0, Lcom/yannis/ledcard/activity/SavePictureActivity;->matrix:I

    return-void
.end method


# virtual methods
.method protected init()V
    .locals 0

    return-void
.end method

.method protected initData()V
    .locals 5

    .line 113
    invoke-virtual {p0}, Lcom/yannis/ledcard/activity/SavePictureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "_led_under_editing"

    .line 114
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/yannis/ledcard/bean/LEDBmp;

    iput-object v0, p0, Lcom/yannis/ledcard/activity/SavePictureActivity;->ledBmp:Lcom/yannis/ledcard/bean/LEDBmp;

    .line 117
    iget-object v0, p0, Lcom/yannis/ledcard/activity/SavePictureActivity;->ivScroll:Landroid/widget/Button;

    const v1, 0x7f0e007b

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 118
    iget-object v0, p0, Lcom/yannis/ledcard/activity/SavePictureActivity;->ledBig:Lcom/yannis/ledcard/widget/LEDView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yannis/ledcard/widget/LEDView;->setIsCanTouch(Z)V

    .line 119
    iget-object v0, p0, Lcom/yannis/ledcard/activity/SavePictureActivity;->ledBig:Lcom/yannis/ledcard/widget/LEDView;

    new-instance v2, Lcom/yannis/ledcard/activity/SavePictureActivity$1;

    invoke-direct {v2, p0}, Lcom/yannis/ledcard/activity/SavePictureActivity$1;-><init>(Lcom/yannis/ledcard/activity/SavePictureActivity;)V

    invoke-virtual {v0, v2}, Lcom/yannis/ledcard/widget/LEDView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 130
    iget-object v0, p0, Lcom/yannis/ledcard/activity/SavePictureActivity;->tvRight:Landroid/widget/TextView;

    const v2, 0x7f0e0069

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 131
    iget-object v0, p0, Lcom/yannis/ledcard/activity/SavePictureActivity;->tvRight:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcom/yannis/ledcard/activity/SavePictureActivity;->tvContext:Landroid/widget/TextView;

    const v3, 0x7f0e0046

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 133
    iget-object v0, p0, Lcom/yannis/ledcard/activity/SavePictureActivity;->sb:Landroid/widget/SeekBar;

    const/16 v3, 0xff

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 134
    invoke-static {}, Lcom/lzy/imagepicker/ImagePicker;->getInstance()Lcom/lzy/imagepicker/ImagePicker;

    move-result-object v0

    iput-object v0, p0, Lcom/yannis/ledcard/activity/SavePictureActivity;->mImagePicker:Lcom/lzy/imagepicker/ImagePicker;

    .line 135
    new-instance v3, Lcom/yannis/ledcard/util/GlideImageLoader;

    invoke-direct {v3}, Lcom/yannis/ledcard/util/GlideImageLoader;-><init>()V

    invoke-virtual {v0, v3}, Lcom/lzy/imagepicker/ImagePicker;->setImageLoader(Lcom/lzy/imagepicker/loader/ImageLoader;)V

    .line 136
    iget-object v0, p0, Lcom/yannis/ledcard/activity/SavePictureActivity;->mImagePicker:Lcom/lzy/imagepicker/ImagePicker;

    invoke-virtual {v0, v2}, Lcom/lzy/imagepicker/ImagePicker;->setMultiMode(Z)V

    .line 137
    iget-object v0, p0, Lcom/yannis/ledcard/activity/SavePictureActivity;->mImagePicker:Lcom/lzy/imagepicker/ImagePicker;

    invoke-virtual {v0, v2}, Lcom/lzy/imagepicker/ImagePicker;->setCrop(Z)V

    .line 138
    iget-object v0, p0, Lcom/yannis/ledcard/activity/SavePictureActivity;->mImagePicker:Lcom/lzy/imagepicker/ImagePicker;

    invoke-virtual {v0, v2}, Lcom/lzy/imagepicker/ImagePicker;->setShowCamera(Z)V

    .line 139
    iget-object v0, p0, Lcom/yannis/ledcard/activity/SavePictureActivity;->mImagePicker:Lcom/lzy/imagepicker/ImagePicker;

    sget-object v3, Lcom/lzy/imagepicker/view/CropImageView$Style;->RECTANGLE:Lcom/lzy/imagepicker/view/CropImageView$Style;

    invoke-virtual {v0, v3}, Lcom/lzy/imagepicker/ImagePicker;->setStyle(Lcom/lzy/imagepicker/view/CropImageView$Style;)V

    const/16 v0, 0x118

    .line 140
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "_pix"

    const/16 v4, 0xb

    .line 142
    invoke-static {p0, v3, v4}, Lcom/yannis/ledcard/util/PrefUtils;->getIntFromPrefs(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/yannis/ledcard/activity/SavePictureActivity;->matrix:I

    .line 143
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/yannis/ledcard/activity/SavePictureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v1, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 144
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/yannis/ledcard/activity/SavePictureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v1, v0, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 145
    iget-object v1, p0, Lcom/yannis/ledcard/activity/SavePictureActivity;->mImagePicker:Lcom/lzy/imagepicker/ImagePicker;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/lzy/imagepicker/ImagePicker;->setFocusWidth(I)V

    .line 146
    iget-object v1, p0, Lcom/yannis/ledcard/activity/SavePictureActivity;->mImagePicker:Lcom/lzy/imagepicker/ImagePicker;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/lzy/imagepicker/ImagePicker;->setFocusHeight(I)V

    .line 147
    iget-object v0, p0, Lcom/yannis/ledcard/activity/SavePictureActivity;->ledBmp:Lcom/yannis/ledcard/bean/LEDBmp;

    if-nez v0, :cond_1

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    :goto_0
    iget v1, p0, Lcom/yannis/ledcard/activity/SavePictureActivity;->matrix:I

    mul-int v1, v1, v1

    if-ge v2, v1, :cond_0

    const-string v1, "0"

    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 152
    :cond_0
    iget-object v1, p0, Lcom/yannis/ledcard/activity/SavePictureActivity;->ledBig:Lcom/yannis/ledcard/widget/LEDView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yannis/ledcard/widget/LEDView;->setLEDData(Ljava/lang/String;)V

    goto :goto_1

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/yannis/ledcard/activity/SavePictureActivity;->tvRight:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lcom/yannis/ledcard/activity/SavePictureActivity;->llSb:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 161
    iget-object v0, p0, Lcom/yannis/ledcard/activity/SavePictureActivity;->llpics:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 163
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x64

    .line 164
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 165
    iget-object v1, p0, Lcom/yannis/ledcard/activity/SavePictureActivity;->llLEDs:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    iget-object v0, p0, Lcom/yannis/ledcard/activity/SavePictureActivity;->ledBig:Lcom/yannis/ledcard/widget/LEDView;

    iget-object v1, p0, Lcom/yannis/ledcard/activity/SavePictureActivity;->ledBmp:Lcom/yannis/ledcard/bean/LEDBmp;

    invoke-virtual {v1}, Lcom/yannis/ledcard/bean/LEDBmp;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yannis/ledcard/widget/LEDView;->setLEDData(Ljava/lang/String;)V

    .line 169
    :goto_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/yannis/ledcard/activity/SavePictureActivity$2;

    invoke-direct {v1, p0}, Lcom/yannis/ledcard/activity/SavePictureActivity$2;-><init>(Lcom/yannis/ledcard/activity/SavePictureActivity;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected initEvent()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Landroid/view/View;

    .line 180
    iget-object v1, p0, Lcom/yannis/ledcard/activity/SavePictureActivity;->tvRight:Landroid/widget/TextView;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/yannis/ledcard/activity/SavePictureActivity;->btnSave:Landroid/widget/Button;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/yannis/ledcard/activity/SavePictureActivity;->ivClear:Landroid/widget/Button;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/yannis/ledcard/activity/SavePictureActivity;->ivReverse:Landroid/widget/Button;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/yannis/ledcard/activity/SavePictureActivity;->ivScroll:Landroid/widget/Button;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/yannis/ledcard/activity/SavePictureActivity;->registerClickEvent([Landroid/view/View;)V

    .line 181
    iget-object v0, p0, Lcom/yannis/ledcard/activity/SavePictureActivity;->sb:Landroid/widget/SeekBar;

    new-instance v1, Lcom/yannis/ledcard/activity/SavePictureActivity$3;

    invoke-direct {v1, p0}, Lcom/yannis/ledcard/activity/SavePictureActivity$3;-><init>(Lcom/yannis/ledcard/activity/SavePictureActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .line 316
    invoke-super {p0, p1, p2, p3}, Lcom/yannis/ledcard/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x3ec

    if-ne p2, v0, :cond_2

    const/4 p2, 0x0

    if-eqz p3, :cond_1

    const/16 v0, 0x64

    if-ne p1, v0, :cond_1

    const-string p1, "extra_result_items"

    .line 319
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/yannis/ledcard/activity/SavePictureActivity;->images:Ljava/util/ArrayList;

    .line 320
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lzy/imagepicker/bean/ImageItem;

    .line 321
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

    .line 322
    iget-object p3, p0, Lcom/yannis/ledcard/activity/SavePictureActivity;->mImagePicker:Lcom/lzy/imagepicker/ImagePicker;

    invoke-virtual {p3}, Lcom/lzy/imagepicker/ImagePicker;->getImageLoader()Lcom/lzy/imagepicker/loader/ImageLoader;

    move-result-object v0

    iget-object p3, p0, Lcom/yannis/ledcard/activity/SavePictureActivity;->images:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/lzy/imagepicker/bean/ImageItem;

    iget-object v2, p2, Lcom/lzy/imagepicker/bean/ImageItem;->path:Ljava/lang/String;

    iget-object v3, p0, Lcom/yannis/ledcard/activity/SavePictureActivity;->ivPic:Landroid/widget/ImageView;

    const/16 v4, 0x118

    const/16 v5, 0x118

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/lzy/imagepicker/loader/ImageLoader;->displayImage(Landroid/app/Activity;Ljava/lang/String;Landroid/widget/ImageView;II)V

    .line 323
    new-instance p2, Ljava/lang/ref/SoftReference;

    iget-object p1, p1, Lcom/lzy/imagepicker/bean/ImageItem;->path:Ljava/lang/String;

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/yannis/ledcard/activity/SavePictureActivity;->bitmap:Ljava/lang/ref/SoftReference;

    .line 324
    iget-object p1, p0, Lcom/yannis/ledcard/activity/SavePictureActivity;->sb:Landroid/widget/SeekBar;

    const/16 p2, 0x50

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 327
    iget-object p1, p0, Lcom/yannis/ledcard/activity/SavePictureActivity;->bitmap:Ljava/lang/ref/SoftReference;

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    iget-object p3, p0, Lcom/yannis/ledcard/activity/SavePictureActivity;->bitmap:Ljava/lang/ref/SoftReference;

    invoke-virtual {p3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Bitmap;

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    iget-object v0, p0, Lcom/yannis/ledcard/activity/SavePictureActivity;->bitmap:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-static {p1, p3, v0, p2}, Lcom/yannis/ledcard/util/BitmapUtils;->convertToBMW(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 328
    iget-object p2, p0, Lcom/yannis/ledcard/activity/SavePictureActivity;->ivWB:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/16 p2, 0xb

    const-string p3, "_pix"

    .line 329
    invoke-static {p0, p3, p2}, Lcom/yannis/ledcard/util/PrefUtils;->getIntFromPrefs(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p2

    .line 330
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DETECTED width : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yannis/ledcard/activity/SavePictureActivity;->bitmap:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  height : "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yannis/ledcard/activity/SavePictureActivity;->bitmap:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v1, "Long Pic"

    invoke-static {v1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    iget-object p3, p0, Lcom/yannis/ledcard/activity/SavePictureActivity;->bitmap:Ljava/lang/ref/SoftReference;

    invoke-virtual {p3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Bitmap;

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    iget-object v2, p0, Lcom/yannis/ledcard/activity/SavePictureActivity;->bitmap:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-le p3, v2, :cond_0

    .line 332
    iget-object p3, p0, Lcom/yannis/ledcard/activity/SavePictureActivity;->bitmap:Ljava/lang/ref/SoftReference;

    invoke-virtual {p3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Bitmap;

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    mul-int p3, p3, p2

    iget-object v2, p0, Lcom/yannis/ledcard/activity/SavePictureActivity;->bitmap:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/2addr p3, v2

    int-to-double v2, p3

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int p3, v2

    .line 333
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-static {p1, p3, p2}, Lcom/yannis/ledcard/util/BitmapUtils;->scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/yannis/ledcard/activity/SavePictureActivity;->bleBitmap:Ljava/lang/ref/SoftReference;

    .line 335
    iget-object p1, p0, Lcom/yannis/ledcard/activity/SavePictureActivity;->llLeds:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/yannis/ledcard/activity/SavePictureActivity;->ledBig:Lcom/yannis/ledcard/widget/LEDView;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 338
    :cond_0
    new-instance p3, Ljava/lang/ref/SoftReference;

    invoke-static {p1, p2, p2}, Lcom/yannis/ledcard/util/BitmapUtils;->scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/yannis/ledcard/activity/SavePictureActivity;->bleBitmap:Ljava/lang/ref/SoftReference;

    .line 339
    iget-object p1, p0, Lcom/yannis/ledcard/activity/SavePictureActivity;->llLeds:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/yannis/ledcard/activity/SavePictureActivity;->ledBig:Lcom/yannis/ledcard/widget/LEDView;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 341
    :goto_0
    iget-object p1, p0, Lcom/yannis/ledcard/activity/SavePictureActivity;->ledBig:Lcom/yannis/ledcard/widget/LEDView;

    iget-object p2, p0, Lcom/yannis/ledcard/activity/SavePictureActivity;->bleBitmap:Ljava/lang/ref/SoftReference;

    invoke-virtual {p2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-static {p2}, Lcom/yannis/ledcard/util/LedDataUtil;->getLedData(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/yannis/ledcard/widget/LEDView;->setLEDData(Ljava/lang/String;)V

    .line 342
    iget-object p1, p0, Lcom/yannis/ledcard/activity/SavePictureActivity;->llLeds:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/yannis/ledcard/activity/SavePictureActivity;->ledBig:Lcom/yannis/ledcard/widget/LEDView;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 344
    :cond_1
    invoke-virtual {p0}, Lcom/yannis/ledcard/activity/SavePictureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f0e005d

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_2
    :goto_1
    return-void
.end method

.method public onBack()V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f090079
        }
    .end annotation

    .line 351
    invoke-virtual {p0}, Lcom/yannis/ledcard/activity/SavePictureActivity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 220
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f09007b

    if-eq p1, v0, :cond_6

    const v0, 0x7f090114

    if-eq p1, v0, :cond_5

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_3

    .line 272
    :pswitch_0
    iget-object p1, p0, Lcom/yannis/ledcard/activity/SavePictureActivity;->ivScroll:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/yannis/ledcard/activity/SavePictureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e007b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-ne p1, v2, :cond_0

    .line 273
    iget-object p1, p0, Lcom/yannis/ledcard/activity/SavePictureActivity;->ivScroll:Landroid/widget/Button;

    const v0, 0x7f0e0044

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 274
    iget-object p1, p0, Lcom/yannis/ledcard/activity/SavePictureActivity;->ledBig:Lcom/yannis/ledcard/widget/LEDView;

    invoke-virtual {p1, v1}, Lcom/yannis/ledcard/widget/LEDView;->setIsCanTouch(Z)V

    .line 275
    iget-object p1, p0, Lcom/yannis/ledcard/activity/SavePictureActivity;->ledBig:Lcom/yannis/ledcard/widget/LEDView;

    new-instance v0, Lcom/yannis/ledcard/activity/SavePictureActivity$4;

    invoke-direct {v0, p0}, Lcom/yannis/ledcard/activity/SavePictureActivity$4;-><init>(Lcom/yannis/ledcard/activity/SavePictureActivity;)V

    invoke-virtual {p1, v0}, Lcom/yannis/ledcard/widget/LEDView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_3

    .line 288
    :cond_0
    iget-object p1, p0, Lcom/yannis/ledcard/activity/SavePictureActivity;->ivScroll:Landroid/widget/Button;

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setText(I)V

    .line 289
    iget-object p1, p0, Lcom/yannis/ledcard/activity/SavePictureActivity;->ledBig:Lcom/yannis/ledcard/widget/LEDView;

    invoke-virtual {p1, v0}, Lcom/yannis/ledcard/widget/LEDView;->setIsCanTouch(Z)V

    .line 290
    iget-object p1, p0, Lcom/yannis/ledcard/activity/SavePictureActivity;->ledBig:Lcom/yannis/ledcard/widget/LEDView;

    new-instance v0, Lcom/yannis/ledcard/activity/SavePictureActivity$5;

    invoke-direct {v0, p0}, Lcom/yannis/ledcard/activity/SavePictureActivity$5;-><init>(Lcom/yannis/ledcard/activity/SavePictureActivity;)V

    invoke-virtual {p1, v0}, Lcom/yannis/ledcard/widget/LEDView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_3

    .line 227
    :pswitch_1
    iget-object p1, p0, Lcom/yannis/ledcard/activity/SavePictureActivity;->ledBig:Lcom/yannis/ledcard/widget/LEDView;

    invoke-virtual {p1}, Lcom/yannis/ledcard/widget/LEDView;->getLedData()Ljava/lang/String;

    move-result-object p1

    .line 228
    invoke-virtual {p0}, Lcom/yannis/ledcard/activity/SavePictureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 229
    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 230
    iget-object v3, p0, Lcom/yannis/ledcard/activity/SavePictureActivity;->ledBig:Lcom/yannis/ledcard/widget/LEDView;

    invoke-virtual {v3}, Lcom/yannis/ledcard/widget/LEDView;->getWidth()I

    move-result v3

    if-le v3, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "content = ? and matrix = ?"

    aput-object v4, v3, v1

    aput-object p1, v3, v0

    const/4 v0, 0x2

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/yannis/ledcard/activity/SavePictureActivity;->matrix:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-static {v3}, Lorg/litepal/crud/DataSupport;->where([Ljava/lang/String;)Lorg/litepal/crud/ClusterQuery;

    move-result-object v0

    const-class v1, Lcom/yannis/ledcard/bean/LEDBmp;

    invoke-virtual {v0, v1}, Lorg/litepal/crud/ClusterQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 232
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 233
    invoke-virtual {p0}, Lcom/yannis/ledcard/activity/SavePictureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0e0073

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yannis/ledcard/activity/SavePictureActivity;->showToast(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 234
    :cond_2
    iget-object v0, p0, Lcom/yannis/ledcard/activity/SavePictureActivity;->ledBmp:Lcom/yannis/ledcard/bean/LEDBmp;

    const v1, 0x7f0e0078

    const/16 v3, 0x21

    if-nez v0, :cond_3

    .line 235
    invoke-static {}, Lcom/yannis/ledcard/util/BitmapUtils;->generateFileName()Ljava/lang/String;

    move-result-object v0

    .line 236
    invoke-static {}, Lcom/yannis/ledcard/util/BitmapUtils;->getBmpDir()Ljava/lang/String;

    move-result-object v4

    .line 237
    new-instance v5, Lcom/yannis/ledcard/bean/LEDBmp;

    iget v6, p0, Lcom/yannis/ledcard/activity/SavePictureActivity;->matrix:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, p1, v6, v4}, Lcom/yannis/ledcard/bean/LEDBmp;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 238
    invoke-virtual {v5}, Lcom/yannis/ledcard/bean/LEDBmp;->save()Z

    .line 239
    iget-object p1, p0, Lcom/yannis/ledcard/activity/SavePictureActivity;->ledBig:Lcom/yannis/ledcard/widget/LEDView;

    .line 240
    invoke-static {p0, v3}, Lcom/yannis/ledcard/util/ViewUtils;->dp2px(Landroid/content/Context;I)I

    move-result v4

    invoke-static {p0, v3}, Lcom/yannis/ledcard/util/ViewUtils;->dp2px(Landroid/content/Context;I)I

    move-result v3

    .line 239
    invoke-static {p1, v4, v3, v2}, Lcom/yannis/ledcard/util/BitmapUtils;->loadBitmapFromView(Landroid/view/View;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/yannis/ledcard/util/BitmapUtils;->saveBitmapToBmpFile(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 242
    invoke-virtual {p0}, Lcom/yannis/ledcard/activity/SavePictureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yannis/ledcard/activity/SavePictureActivity;->showToast(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const-string v0, "SAVING..."

    const-string v5, "here"

    .line 244
    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-static {}, Lcom/yannis/ledcard/util/BitmapUtils;->getBmpDir()Ljava/lang/String;

    move-result-object v0

    .line 247
    iget-object v5, p0, Lcom/yannis/ledcard/activity/SavePictureActivity;->ledBmp:Lcom/yannis/ledcard/bean/LEDBmp;

    invoke-virtual {v5}, Lcom/yannis/ledcard/bean/LEDBmp;->getFilePath()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 248
    iget-object v5, p0, Lcom/yannis/ledcard/activity/SavePictureActivity;->ledBmp:Lcom/yannis/ledcard/bean/LEDBmp;

    invoke-virtual {v5}, Lcom/yannis/ledcard/bean/LEDBmp;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 251
    :cond_4
    invoke-static {}, Lcom/yannis/ledcard/util/BitmapUtils;->generateFileName()Ljava/lang/String;

    move-result-object v4

    .line 253
    :goto_1
    iget-object v5, p0, Lcom/yannis/ledcard/activity/SavePictureActivity;->ledBig:Lcom/yannis/ledcard/widget/LEDView;

    .line 254
    invoke-static {p0, v3}, Lcom/yannis/ledcard/util/ViewUtils;->dp2px(Landroid/content/Context;I)I

    move-result v6

    invoke-static {p0, v3}, Lcom/yannis/ledcard/util/ViewUtils;->dp2px(Landroid/content/Context;I)I

    move-result v3

    .line 253
    invoke-static {v5, v6, v3, v2}, Lcom/yannis/ledcard/util/BitmapUtils;->loadBitmapFromView(Landroid/view/View;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/yannis/ledcard/util/BitmapUtils;->saveBitmapToBmpFile(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 256
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "content"

    .line 257
    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "filePath"

    invoke-virtual {v2, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const-class p1, Lcom/yannis/ledcard/bean/LEDBmp;

    iget-object v0, p0, Lcom/yannis/ledcard/activity/SavePictureActivity;->ledBmp:Lcom/yannis/ledcard/bean/LEDBmp;

    invoke-virtual {v0}, Lcom/yannis/ledcard/bean/LEDBmp;->getId()I

    move-result v0

    int-to-long v3, v0

    invoke-static {p1, v2, v3, v4}, Lorg/litepal/crud/DataSupport;->update(Ljava/lang/Class;Landroid/content/ContentValues;J)I

    .line 260
    invoke-virtual {p0}, Lcom/yannis/ledcard/activity/SavePictureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yannis/ledcard/activity/SavePictureActivity;->showToast(Ljava/lang/String;)V

    .line 262
    :goto_2
    sget-object p1, Lcom/yannis/ledcard/LedBleApplication;->instance:Lcom/yannis/ledcard/LedBleApplication;

    invoke-virtual {p1}, Lcom/yannis/ledcard/LedBleApplication;->loadLEDBmpFromDB()V

    goto :goto_3

    .line 307
    :pswitch_2
    iget-object p1, p0, Lcom/yannis/ledcard/activity/SavePictureActivity;->ledBig:Lcom/yannis/ledcard/widget/LEDView;

    invoke-virtual {p1}, Lcom/yannis/ledcard/widget/LEDView;->reverse()V

    goto :goto_3

    .line 222
    :cond_5
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/lzy/imagepicker/ui/ImageGridActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 223
    iget-object v0, p0, Lcom/yannis/ledcard/activity/SavePictureActivity;->images:Ljava/util/ArrayList;

    const-string v1, "IMAGES"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/16 v0, 0x64

    .line 224
    invoke-virtual {p0, p1, v0}, Lcom/yannis/ledcard/activity/SavePictureActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_3

    .line 265
    :cond_6
    iget-object p1, p0, Lcom/yannis/ledcard/activity/SavePictureActivity;->ledBmp:Lcom/yannis/ledcard/bean/LEDBmp;

    if-nez p1, :cond_7

    .line 266
    iget-object p1, p0, Lcom/yannis/ledcard/activity/SavePictureActivity;->ledBig:Lcom/yannis/ledcard/widget/LEDView;

    invoke-virtual {p1}, Lcom/yannis/ledcard/widget/LEDView;->clear()V

    goto :goto_3

    .line 268
    :cond_7
    iget-object v0, p0, Lcom/yannis/ledcard/activity/SavePictureActivity;->ledBig:Lcom/yannis/ledcard/widget/LEDView;

    invoke-virtual {p1}, Lcom/yannis/ledcard/bean/LEDBmp;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/yannis/ledcard/widget/LEDView;->setLEDData(Ljava/lang/String;)V

    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x7f090082
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected setLayoutResId()I
    .locals 1

    const v0, 0x7f0c0023

    return v0
.end method
