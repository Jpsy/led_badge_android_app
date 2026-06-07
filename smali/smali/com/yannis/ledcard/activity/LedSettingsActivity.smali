.class public Lcom/yannis/ledcard/activity/LedSettingsActivity;
.super Lcom/yannis/ledcard/base/BaseActivity;
.source "LedSettingsActivity.java"

# interfaces
.implements Lcom/yannis/ledcard/activity/LEDBmpFragment$OnLEDBmpClickListener;


# instance fields
.field private adapter:Lcom/yannis/ledcard/adapter/ImgAdapter;

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

.field public checkBoxReverse:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090039
    .end annotation
.end field

.field public et_content:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090057
    .end annotation
.end field

.field public gridView:Landroid/widget/GridView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09006b
    .end annotation
.end field

.field private index:I

.field private isEditMode:Z

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

.field public ivBmp:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090023
    .end annotation
.end field

.field ledBmpList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ledImgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yannis/ledcard/bean/LedImg;",
            ">;"
        }
    .end annotation
.end field

.field private mLEDBmpFragment:Lcom/yannis/ledcard/activity/LEDBmpFragment;

.field msgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public rl_color:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900bc
    .end annotation
.end field

.field private sendContent:Lcom/yannis/ledcard/bean/SendContent;

.field public tvContext:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090117
    .end annotation
.end field

.field public tvLeft:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090118
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

    .line 89
    iput-boolean v0, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity;->isEditMode:Z

    return-void
.end method

.method static synthetic access$000(Lcom/yannis/ledcard/activity/LedSettingsActivity;)Ljava/util/List;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity;->ledImgList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/yannis/ledcard/activity/LedSettingsActivity;)Lcom/yannis/ledcard/bean/SendContent;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity;->sendContent:Lcom/yannis/ledcard/bean/SendContent;

    return-object p0
.end method

.method public static parseLEDBmp(Landroid/content/Context;Ljava/lang/String;Landroid/widget/TextView;)V
    .locals 7

    .line 295
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v1, "\\[(\\S+?)\\]"

    .line 296
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 297
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 298
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 299
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    .line 300
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    .line 301
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    const-string v4, "[LED"

    .line 302
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "]"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, ""

    .line 303
    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 304
    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 305
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 306
    const-class v4, Lcom/yannis/ledcard/bean/LEDBmp;

    int-to-long v5, v3

    invoke-static {v4, v5, v6}, Lorg/litepal/crud/DataSupport;->find(Ljava/lang/Class;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yannis/ledcard/bean/LEDBmp;

    if-eqz v3, :cond_0

    .line 308
    invoke-virtual {v3}, Lcom/yannis/ledcard/bean/LEDBmp;->getFilePath()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 311
    invoke-static {v4}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_1

    .line 314
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v3}, Lcom/yannis/ledcard/bean/LEDBmp;->getResourceID()I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 316
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_0

    const/high16 v4, 0x42040000    # 33.0f

    .line 321
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    mul-float v5, v5, v4

    float-to-int v4, v5

    const/4 v5, 0x0

    .line 322
    invoke-virtual {v3, v5, v5, v4, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 323
    new-instance v4, Landroid/text/style/ImageSpan;

    invoke-direct {v4, v3}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/16 v3, 0x21

    .line 324
    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 329
    :cond_2
    sget-object p0, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p2, v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method

.method private putLEDViewToEditText(Lcom/yannis/ledcard/bean/LEDBmp;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 2

    .line 363
    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1, p3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 364
    new-instance v0, Landroid/text/style/ImageSpan;

    invoke-direct {v0, p0, p2}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    .line 365
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    const/4 p3, 0x0

    const/16 v1, 0x21

    invoke-virtual {p1, v0, p3, p2, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 366
    iget-object p2, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity;->et_content:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    .line 367
    iget-object p3, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity;->et_content:Landroid/widget/EditText;

    invoke-virtual {p3}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result p3

    .line 368
    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result v0

    if-ge p3, v0, :cond_0

    .line 369
    invoke-interface {p2, p3, p1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 371
    :cond_0
    invoke-interface {p2, p1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    :goto_0
    return-void
.end method


# virtual methods
.method protected init()V
    .locals 0

    return-void
.end method

.method protected initData()V
    .locals 4

    .line 99
    invoke-static {p0}, Lcom/yannis/ledcard/util/PermisionUtils;->verifyStoragePermissions(Landroid/app/Activity;)V

    .line 100
    iget-object v0, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity;->tvRight:Landroid/widget/TextView;

    const-string v1, "\u5220\u9664\u56fe\u7247"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v0, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity;->tvRight:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity;->tvLeft:Landroid/widget/TextView;

    const v2, 0x7f0e0071

    invoke-virtual {p0, v2}, Lcom/yannis/ledcard/activity/LedSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    invoke-virtual {p0}, Lcom/yannis/ledcard/activity/LedSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "_led_send_content_index"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity;->index:I

    .line 108
    invoke-virtual {p0}, Lcom/yannis/ledcard/activity/LedSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Extra"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "_led_send_content"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/yannis/ledcard/bean/SendContent;

    iput-object v0, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity;->sendContent:Lcom/yannis/ledcard/bean/SendContent;

    .line 109
    iget-object v1, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity;->checkBoxFlash:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Lcom/yannis/ledcard/bean/SendContent;->isFlash()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 110
    iget-object v0, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity;->checkBoxMarquee:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity;->sendContent:Lcom/yannis/ledcard/bean/SendContent;

    invoke-virtual {v1}, Lcom/yannis/ledcard/bean/SendContent;->isMarquee()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 111
    iget-object v0, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity;->checkBoxReverse:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity;->sendContent:Lcom/yannis/ledcard/bean/SendContent;

    invoke-virtual {v1}, Lcom/yannis/ledcard/bean/SendContent;->isReverse()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 112
    iget-object v0, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity;->et_content:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity;->sendContent:Lcom/yannis/ledcard/bean/SendContent;

    invoke-virtual {v1}, Lcom/yannis/ledcard/bean/SendContent;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity;->sendContent:Lcom/yannis/ledcard/bean/SendContent;

    invoke-virtual {v1}, Lcom/yannis/ledcard/bean/SendContent;->getMessage()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 113
    sget-object v0, Lcom/yannis/ledcard/LedBleApplication;->instance:Lcom/yannis/ledcard/LedBleApplication;

    iget-object v1, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity;->sendContent:Lcom/yannis/ledcard/bean/SendContent;

    invoke-virtual {v1}, Lcom/yannis/ledcard/bean/SendContent;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v2

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity;->sendContent:Lcom/yannis/ledcard/bean/SendContent;

    invoke-virtual {v1}, Lcom/yannis/ledcard/bean/SendContent;->getMessage()Ljava/lang/String;

    move-result-object v1

    :goto_1
    iget-object v3, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity;->et_content:Landroid/widget/EditText;

    invoke-static {v0, v1, v3}, Lcom/yannis/ledcard/activity/LedSettingsActivity;->parseLEDBmp(Landroid/content/Context;Ljava/lang/String;Landroid/widget/TextView;)V

    .line 114
    iget-object v0, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity;->itemViewSpeed:Lcom/yannis/ledcard/widget/ItemView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity;->sendContent:Lcom/yannis/ledcard/bean/SendContent;

    invoke-virtual {v3}, Lcom/yannis/ledcard/bean/SendContent;->getSpeed()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yannis/ledcard/widget/ItemView;->setValue(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity;->itemViewMode:Lcom/yannis/ledcard/widget/ItemView;

    invoke-virtual {p0}, Lcom/yannis/ledcard/activity/LedSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f030000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity;->sendContent:Lcom/yannis/ledcard/bean/SendContent;

    invoke-virtual {v2}, Lcom/yannis/ledcard/bean/SendContent;->getMode()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/yannis/ledcard/widget/ItemView;->setValue(Ljava/lang/String;)V

    .line 117
    invoke-static {}, Lcom/yannis/ledcard/activity/LEDBmpFragment;->newInstance()Lcom/yannis/ledcard/activity/LEDBmpFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity;->mLEDBmpFragment:Lcom/yannis/ledcard/activity/LEDBmpFragment;

    .line 118
    invoke-virtual {p0}, Lcom/yannis/ledcard/activity/LedSettingsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f090065

    .line 119
    iget-object v2, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity;->mLEDBmpFragment:Lcom/yannis/ledcard/activity/LEDBmpFragment;

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 120
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 121
    iget-object v0, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity;->mLEDBmpFragment:Lcom/yannis/ledcard/activity/LEDBmpFragment;

    iget-object v1, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity;->et_content:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Lcom/yannis/ledcard/activity/LEDBmpFragment;->setEditText(Landroid/widget/EditText;)V

    return-void
.end method

.method protected initEvent()V
    .locals 3

    .line 133
    iget-object v0, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity;->gridView:Landroid/widget/GridView;

    new-instance v1, Lcom/yannis/ledcard/activity/LedSettingsActivity$1;

    invoke-direct {v1, p0}, Lcom/yannis/ledcard/activity/LedSettingsActivity$1;-><init>(Lcom/yannis/ledcard/activity/LedSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const/4 v0, 0x5

    new-array v0, v0, [Landroid/view/View;

    .line 140
    iget-object v1, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity;->itemViewSpeed:Lcom/yannis/ledcard/widget/ItemView;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity;->itemViewMode:Lcom/yannis/ledcard/widget/ItemView;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity;->tvLeft:Landroid/widget/TextView;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity;->tvRight:Landroid/widget/TextView;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity;->rl_color:Landroid/widget/RelativeLayout;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/yannis/ledcard/activity/LedSettingsActivity;->registerClickEvent([Landroid/view/View;)V

    const v0, 0x7f090117

    .line 141
    invoke-virtual {p0, v0}, Lcom/yannis/ledcard/activity/LedSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/yannis/ledcard/activity/LedSettingsActivity$2;

    invoke-direct {v1, p0}, Lcom/yannis/ledcard/activity/LedSettingsActivity$2;-><init>(Lcom/yannis/ledcard/activity/LedSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onBack()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f090079
        }
    .end annotation

    .line 226
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 227
    iget-object v1, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity;->sendContent:Lcom/yannis/ledcard/bean/SendContent;

    iget-object v2, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity;->et_content:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yannis/ledcard/bean/SendContent;->setMessage(Ljava/lang/String;)V

    .line 228
    iget-object v1, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity;->sendContent:Lcom/yannis/ledcard/bean/SendContent;

    iget-object v2, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity;->checkBoxMarquee:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/yannis/ledcard/bean/SendContent;->setMarquee(Z)V

    .line 229
    iget-object v1, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity;->sendContent:Lcom/yannis/ledcard/bean/SendContent;

    iget-object v2, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity;->checkBoxFlash:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/yannis/ledcard/bean/SendContent;->setFlash(Z)V

    .line 230
    iget-object v1, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity;->sendContent:Lcom/yannis/ledcard/bean/SendContent;

    iget-object v2, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity;->checkBoxReverse:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/yannis/ledcard/bean/SendContent;->setReverse(Z)V

    .line 231
    iget-object v1, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity;->sendContent:Lcom/yannis/ledcard/bean/SendContent;

    const-string v2, "_led_send_content"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 232
    iget v1, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity;->index:I

    const-string v2, "_led_send_content_index"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 233
    invoke-virtual {p0, v1, v0}, Lcom/yannis/ledcard/activity/LedSettingsActivity;->setResult(ILandroid/content/Intent;)V

    .line 234
    invoke-virtual {p0}, Lcom/yannis/ledcard/activity/LedSettingsActivity;->finish()V

    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 213
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 214
    iget-object v1, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity;->sendContent:Lcom/yannis/ledcard/bean/SendContent;

    iget-object v2, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity;->et_content:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yannis/ledcard/bean/SendContent;->setMessage(Ljava/lang/String;)V

    .line 215
    iget-object v1, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity;->sendContent:Lcom/yannis/ledcard/bean/SendContent;

    iget-object v2, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity;->checkBoxMarquee:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/yannis/ledcard/bean/SendContent;->setMarquee(Z)V

    .line 216
    iget-object v1, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity;->sendContent:Lcom/yannis/ledcard/bean/SendContent;

    iget-object v2, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity;->checkBoxFlash:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/yannis/ledcard/bean/SendContent;->setFlash(Z)V

    .line 217
    iget-object v1, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity;->sendContent:Lcom/yannis/ledcard/bean/SendContent;

    iget-object v2, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity;->checkBoxReverse:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/yannis/ledcard/bean/SendContent;->setReverse(Z)V

    .line 218
    iget-object v1, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity;->sendContent:Lcom/yannis/ledcard/bean/SendContent;

    const-string v2, "_led_send_content"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 219
    iget v1, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity;->index:I

    const-string v2, "_led_send_content_index"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 220
    invoke-virtual {p0, v1, v0}, Lcom/yannis/ledcard/activity/LedSettingsActivity;->setResult(ILandroid/content/Intent;)V

    .line 221
    invoke-virtual {p0}, Lcom/yannis/ledcard/activity/LedSettingsActivity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 157
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 177
    :sswitch_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 178
    iget-object v0, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity;->sendContent:Lcom/yannis/ledcard/bean/SendContent;

    iget-object v1, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity;->et_content:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yannis/ledcard/bean/SendContent;->setMessage(Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity;->sendContent:Lcom/yannis/ledcard/bean/SendContent;

    iget-object v1, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity;->checkBoxMarquee:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yannis/ledcard/bean/SendContent;->setMarquee(Z)V

    .line 180
    iget-object v0, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity;->sendContent:Lcom/yannis/ledcard/bean/SendContent;

    iget-object v1, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity;->checkBoxFlash:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yannis/ledcard/bean/SendContent;->setFlash(Z)V

    .line 181
    iget-object v0, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity;->sendContent:Lcom/yannis/ledcard/bean/SendContent;

    iget-object v1, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity;->checkBoxReverse:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yannis/ledcard/bean/SendContent;->setReverse(Z)V

    .line 182
    iget-object v0, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity;->sendContent:Lcom/yannis/ledcard/bean/SendContent;

    const-string v1, "_led_send_content"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 183
    iget v0, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity;->index:I

    const-string v1, "_led_send_content_index"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v0, -0x1

    .line 184
    invoke-virtual {p0, v0, p1}, Lcom/yannis/ledcard/activity/LedSettingsActivity;->setResult(ILandroid/content/Intent;)V

    .line 185
    invoke-virtual {p0}, Lcom/yannis/ledcard/activity/LedSettingsActivity;->finish()V

    goto :goto_1

    :sswitch_1
    const-string p1, "Edit Touched Down"

    const-string v1, "111111111"

    .line 188
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-boolean p1, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity;->isEditMode:Z

    if-nez p1, :cond_0

    .line 190
    iget-object p1, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity;->tvRight:Landroid/widget/TextView;

    const-string v1, "\u5b8c\u6210"

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 192
    :cond_0
    iget-object p1, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity;->tvRight:Landroid/widget/TextView;

    const-string v1, "\u5220\u9664\u56fe\u7247"

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    :goto_0
    iget-boolean p1, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity;->isEditMode:Z

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity;->isEditMode:Z

    .line 195
    iget-object v0, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity;->mLEDBmpFragment:Lcom/yannis/ledcard/activity/LEDBmpFragment;

    invoke-virtual {v0, p1}, Lcom/yannis/ledcard/activity/LEDBmpFragment;->refreshLEDBmpView(Z)V

    goto :goto_1

    .line 168
    :sswitch_2
    iget-object p1, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity;->sendContent:Lcom/yannis/ledcard/bean/SendContent;

    invoke-virtual {p1}, Lcom/yannis/ledcard/bean/SendContent;->getSpeed()I

    move-result p1

    sub-int/2addr p1, v0

    const v1, 0x7f0e0086

    invoke-virtual {p0, v1}, Lcom/yannis/ledcard/activity/LedSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/yannis/ledcard/activity/LedSettingsActivity$4;

    invoke-direct {v2, p0}, Lcom/yannis/ledcard/activity/LedSettingsActivity$4;-><init>(Lcom/yannis/ledcard/activity/LedSettingsActivity;)V

    invoke-static {p0, v0, p1, v1, v2}, Lcom/yannis/ledcard/util/DialogUtil;->showWheelViewDialog(Landroid/content/Context;IILjava/lang/String;Lcom/yannis/ledcard/util/DialogUtil$OnWheelViewSelectListener;)V

    goto :goto_1

    :sswitch_3
    const/4 p1, 0x2

    .line 159
    iget-object v1, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity;->sendContent:Lcom/yannis/ledcard/bean/SendContent;

    invoke-virtual {v1}, Lcom/yannis/ledcard/bean/SendContent;->getMode()I

    move-result v1

    sub-int/2addr v1, v0

    const v0, 0x7f0e0059

    invoke-virtual {p0, v0}, Lcom/yannis/ledcard/activity/LedSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/yannis/ledcard/activity/LedSettingsActivity$3;

    invoke-direct {v2, p0}, Lcom/yannis/ledcard/activity/LedSettingsActivity$3;-><init>(Lcom/yannis/ledcard/activity/LedSettingsActivity;)V

    invoke-static {p0, p1, v1, v0, v2}, Lcom/yannis/ledcard/util/DialogUtil;->showWheelViewDialog(Landroid/content/Context;IILjava/lang/String;Lcom/yannis/ledcard/util/DialogUtil$OnWheelViewSelectListener;)V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090075 -> :sswitch_3
        0x7f090076 -> :sswitch_2
        0x7f090114 -> :sswitch_1
        0x7f090118 -> :sswitch_0
    .end sparse-switch
.end method

.method public onLEDBmpAdd()V
    .locals 2

    .line 378
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yannis/ledcard/activity/SavePictureActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/yannis/ledcard/activity/LedSettingsActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onLEDBmpChoice(Lcom/yannis/ledcard/bean/LEDBmp;Landroid/graphics/Bitmap;)V
    .locals 3

    if-nez p1, :cond_0

    const-string p1, "\u70b9\u51fb\u4e3a\u7a7a"

    .line 279
    invoke-virtual {p0, p1}, Lcom/yannis/ledcard/activity/LedSettingsActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 281
    :cond_0
    invoke-virtual {p1}, Lcom/yannis/ledcard/bean/LEDBmp;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "alvin"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LED"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/yannis/ledcard/bean/LEDBmp;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 283
    invoke-direct {p0, p1, p2, v0}, Lcom/yannis/ledcard/activity/LedSettingsActivity;->putLEDViewToEditText(Lcom/yannis/ledcard/bean/LEDBmp;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 284
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u53d1\u9001\u5185\u5bb9 = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity;->et_content:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :goto_0
    iget-object p1, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity;->ivBmp:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onLEDBmpDelete(Lcom/yannis/ledcard/bean/LEDBmp;)V
    .locals 1

    .line 270
    invoke-virtual {p1}, Lcom/yannis/ledcard/bean/LEDBmp;->getFilePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {p1}, Lcom/yannis/ledcard/bean/LEDBmp;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yannis/ledcard/util/BitmapUtils;->deleteFile(Ljava/lang/String;)Z

    .line 272
    invoke-virtual {p1}, Lcom/yannis/ledcard/bean/LEDBmp;->delete()I

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 126
    invoke-super {p0}, Lcom/yannis/ledcard/base/BaseActivity;->onResume()V

    const/4 v0, 0x0

    .line 127
    iput-boolean v0, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity;->isEditMode:Z

    .line 128
    iget-object v1, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity;->mLEDBmpFragment:Lcom/yannis/ledcard/activity/LEDBmpFragment;

    invoke-virtual {v1, v0}, Lcom/yannis/ledcard/activity/LEDBmpFragment;->refreshLEDBmpView(Z)V

    return-void
.end method

.method public parseMessage(Ljava/lang/String;)V
    .locals 7

    .line 333
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity;->ledBmpList:Ljava/util/List;

    .line 334
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity;->msgList:Ljava/util/List;

    const-string v0, "\\[(\\S+?)\\]"

    .line 335
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 336
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 337
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 338
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    .line 339
    iget-object v2, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity;->ledBmpList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 342
    :goto_1
    iget-object v2, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity;->ledBmpList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 343
    iget-object v2, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity;->ledBmpList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 344
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 345
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v3

    .line 346
    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    if-nez v3, :cond_1

    .line 348
    iget-object v3, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity;->msgList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    if-lez v3, :cond_2

    .line 350
    iget-object v6, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity;->msgList:Ljava/util/List;

    invoke-virtual {v5, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    iget-object v3, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity;->msgList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    :cond_2
    :goto_2
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 354
    iget-object v2, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity;->ledBmpList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_3

    .line 355
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 356
    iget-object v2, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity;->msgList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method protected setLayoutResId()I
    .locals 1

    const v0, 0x7f0c0020

    return v0
.end method
