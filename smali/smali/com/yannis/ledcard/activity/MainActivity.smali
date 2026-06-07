.class public Lcom/yannis/ledcard/activity/MainActivity;
.super Lcom/yannis/ledcard/base/BaseMVPActivity;
.source "MainActivity.java"

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


# static fields
.field public static final IS_AGREEMENT_PRIVACY:Ljava/lang/String; = "_is_agreement_privacy"

.field public static final IS_FIRST_IN_APP:Ljava/lang/String; = "_is_first_in_app"

.field public static final LED_SEND_CONTENT:Ljava/lang/String; = "_led_send_content"

.field public static final LED_SEND_CONTENT_INDEX:Ljava/lang/String; = "_led_send_content_index"

.field public static final PERMISSIONS_REQUEST_ACCESS_COARSE_LOCATION:I = 0x6e

.field public static final PERMISSIONS_REQUEST_BLUETOOTH_SCAN_CONNECT:I = 0x6f

.field public static final PIX:Ljava/lang/String; = "_pix"

.field public static SDF:Ljava/text/SimpleDateFormat; = null

.field private static final SP_IS_FIRST_ENTER_APP:Ljava/lang/String; = "SP_IS_FIRST_ENTER_APP"

.field public static final TAG:Ljava/lang/String; = "MainActivity"


# instance fields
.field private adapter:Lcom/yannis/ledcard/adapter/SendListAdapter;

.field public btnAdd:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090026
    .end annotation
.end field

.field public btnSend:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09002d
    .end annotation
.end field

.field public btnSettings:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09002e
    .end annotation
.end field

.field public btnSub:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09002f
    .end annotation
.end field

.field clickCount:I

.field private context:Landroid/content/Context;

.field public dialog:Landroid/app/AlertDialog;

.field isTest:Z

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

.field public listView:Landroid/widget/ListView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090098
    .end annotation
.end field

.field msgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pix:I

.field private sendContentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yannis/ledcard/bean/SendContent;",
            ">;"
        }
    .end annotation
.end field

.field public tvContext:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090117
    .end annotation
.end field

.field public tvTextSize:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090105
    .end annotation
.end field

.field public vTextSize:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09011e
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 493
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy\u5e74MM\u6708dd\u65e5 HH\u65f6mm\u5206ss\u79d2SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yannis/ledcard/activity/MainActivity;->SDF:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Lcom/yannis/ledcard/base/BaseMVPActivity;-><init>()V

    const/4 v0, 0x0

    .line 108
    iput v0, p0, Lcom/yannis/ledcard/activity/MainActivity;->clickCount:I

    .line 362
    iput-boolean v0, p0, Lcom/yannis/ledcard/activity/MainActivity;->isTest:Z

    return-void
.end method

.method static synthetic access$000(Lcom/yannis/ledcard/activity/MainActivity;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/yannis/ledcard/activity/MainActivity;->startFinish()V

    return-void
.end method

.method static synthetic access$100(Lcom/yannis/ledcard/activity/MainActivity;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/yannis/ledcard/activity/MainActivity;->enterApp()V

    return-void
.end method

.method static synthetic access$200(Lcom/yannis/ledcard/activity/MainActivity;)Landroid/content/Context;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/yannis/ledcard/activity/MainActivity;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/yannis/ledcard/activity/MainActivity;)Ljava/util/List;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/yannis/ledcard/activity/MainActivity;->sendContentList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/yannis/ledcard/activity/MainActivity;)I
    .locals 0

    .line 72
    iget p0, p0, Lcom/yannis/ledcard/activity/MainActivity;->pix:I

    return p0
.end method

.method static synthetic access$402(Lcom/yannis/ledcard/activity/MainActivity;I)I
    .locals 0

    .line 72
    iput p1, p0, Lcom/yannis/ledcard/activity/MainActivity;->pix:I

    return p1
.end method

.method private checkBluetoothAndStoragePermission()V
    .locals 10

    .line 565
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    const-string v2, "Request permission"

    const-string v3, "=====================\u6743\u9650\u90fd\u5df2\u7ecf\u83b7\u53d6"

    const-string v4, "MainActivity"

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x17

    if-lt v0, v8, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v1, :cond_3

    .line 567
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    const/16 v8, 0x6e

    const-string v9, "android.permission.ACCESS_COARSE_LOCATION"

    if-lt v0, v1, :cond_1

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v1, v0, v7

    aput-object v9, v0, v6

    .line 568
    invoke-direct {p0, v0}, Lcom/yannis/ledcard/activity/MainActivity;->isPermissionGranted([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 569
    invoke-virtual {p0, v2}, Lcom/yannis/ledcard/activity/MainActivity;->showToast(Ljava/lang/String;)V

    new-array v0, v5, [Ljava/lang/String;

    aput-object v1, v0, v7

    aput-object v9, v0, v6

    .line 570
    invoke-virtual {p0, v0, v8}, Lcom/yannis/ledcard/activity/MainActivity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    .line 573
    :cond_0
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    invoke-direct {p0}, Lcom/yannis/ledcard/activity/MainActivity;->sendData()V

    goto :goto_0

    :cond_1
    new-array v0, v6, [Ljava/lang/String;

    aput-object v9, v0, v7

    .line 577
    invoke-direct {p0, v0}, Lcom/yannis/ledcard/activity/MainActivity;->isPermissionGranted([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 578
    invoke-virtual {p0, v2}, Lcom/yannis/ledcard/activity/MainActivity;->showToast(Ljava/lang/String;)V

    new-array v0, v6, [Ljava/lang/String;

    aput-object v9, v0, v7

    .line 579
    invoke-virtual {p0, v0, v8}, Lcom/yannis/ledcard/activity/MainActivity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    .line 582
    :cond_2
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    invoke-direct {p0}, Lcom/yannis/ledcard/activity/MainActivity;->sendData()V

    goto :goto_0

    .line 586
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_5

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "android.permission.BLUETOOTH_SCAN"

    aput-object v1, v0, v7

    const-string v8, "android.permission.BLUETOOTH_CONNECT"

    aput-object v8, v0, v6

    .line 587
    invoke-direct {p0, v0}, Lcom/yannis/ledcard/activity/MainActivity;->isPermissionGranted([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 588
    invoke-virtual {p0, v2}, Lcom/yannis/ledcard/activity/MainActivity;->showToast(Ljava/lang/String;)V

    new-array v0, v5, [Ljava/lang/String;

    aput-object v1, v0, v7

    aput-object v8, v0, v6

    const/16 v1, 0x6f

    .line 589
    invoke-virtual {p0, v0, v1}, Lcom/yannis/ledcard/activity/MainActivity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    .line 592
    :cond_4
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    invoke-direct {p0}, Lcom/yannis/ledcard/activity/MainActivity;->sendData()V

    goto :goto_0

    .line 597
    :cond_5
    invoke-direct {p0}, Lcom/yannis/ledcard/activity/MainActivity;->sendData()V

    :goto_0
    return-void
.end method

.method private enterApp()V
    .locals 2

    .line 295
    iget-object v0, p0, Lcom/yannis/ledcard/activity/MainActivity;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    const-string v0, "_is_agreement_privacy"

    const/4 v1, 0x1

    .line 296
    invoke-static {p0, v0, v1}, Lcom/yannis/ledcard/util/PrefUtils;->saveBooleanToPrefs(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 297
    invoke-direct {p0}, Lcom/yannis/ledcard/activity/MainActivity;->ifIsNeedShowPixDialog()V

    return-void
.end method

.method private ifIsNeedShowPixDialog()V
    .locals 2

    .line 190
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/yannis/ledcard/activity/MainActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/yannis/ledcard/activity/MainActivity$$ExternalSyntheticLambda1;-><init>(Lcom/yannis/ledcard/activity/MainActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 201
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private isGetBLEPermission()Z
    .locals 4

    .line 610
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x16

    if-gt v0, v2, :cond_0

    goto :goto_0

    .line 612
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    const/4 v3, 0x0

    if-lt v0, v2, :cond_2

    const-string v0, "android.permission.BLUETOOTH_SCAN"

    .line 613
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 616
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return v1
.end method

.method private varargs isPermissionGranted([Ljava/lang/String;)Z
    .locals 4

    .line 526
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    .line 527
    invoke-virtual {p0, v3}, Lcom/yannis/ledcard/activity/MainActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method private resetTextSizeShow()V
    .locals 7

    const-string v0, "_pix"

    const/16 v1, 0xb

    .line 181
    invoke-static {p0, v0, v1}, Lcom/yannis/ledcard/util/PrefUtils;->getIntFromPrefs(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 182
    iget-object v1, p0, Lcom/yannis/ledcard/activity/MainActivity;->tvTextSize:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " + "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    sget v5, Lcom/yannis/ledcard/LedBleApplication;->_TEXT_SIZE:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "%.1f"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    int-to-float v0, v0

    sget v2, Lcom/yannis/ledcard/LedBleApplication;->_TEXT_SIZE:F

    add-float/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u5b57\u4f53\u5927\u5c0f"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private sendData()V
    .locals 3

    .line 375
    iget-object v0, p0, Lcom/yannis/ledcard/activity/MainActivity;->sendContentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yannis/ledcard/bean/SendContent;

    .line 376
    invoke-virtual {v1}, Lcom/yannis/ledcard/bean/SendContent;->isSelect()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    const v0, 0x7f0e002d

    .line 382
    invoke-virtual {p0, v0}, Lcom/yannis/ledcard/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yannis/ledcard/activity/MainActivity;->showMsg(Ljava/lang/String;)V

    return-void

    .line 385
    :cond_2
    iget-object v0, p0, Lcom/yannis/ledcard/activity/MainActivity;->presenter:Lcom/yannis/ledcard/base/inter/IPresenter;

    check-cast v0, Lcom/yannis/ledcard/contract/MainContract$Presenter;

    invoke-interface {v0}, Lcom/yannis/ledcard/contract/MainContract$Presenter;->registerBroadcastReceiver()V

    .line 386
    iget-object v0, p0, Lcom/yannis/ledcard/activity/MainActivity;->presenter:Lcom/yannis/ledcard/base/inter/IPresenter;

    if-eqz v0, :cond_3

    .line 387
    iget-object v0, p0, Lcom/yannis/ledcard/activity/MainActivity;->presenter:Lcom/yannis/ledcard/base/inter/IPresenter;

    check-cast v0, Lcom/yannis/ledcard/contract/MainContract$Presenter;

    iget-object v1, p0, Lcom/yannis/ledcard/activity/MainActivity;->sendContentList:Ljava/util/List;

    iget v2, p0, Lcom/yannis/ledcard/activity/MainActivity;->pix:I

    invoke-interface {v0, v1, v2}, Lcom/yannis/ledcard/contract/MainContract$Presenter;->sendData(Ljava/util/List;I)V

    :cond_3
    return-void
.end method

.method private showPrivacyDialog()V
    .locals 8

    .line 206
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/yannis/ledcard/activity/MainActivity;->dialog:Landroid/app/AlertDialog;

    .line 207
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 209
    iget-object v0, p0, Lcom/yannis/ledcard/activity/MainActivity;->dialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 211
    iget-object v0, p0, Lcom/yannis/ledcard/activity/MainActivity;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const v2, 0x7f0c003a

    .line 213
    invoke-virtual {v0, v2}, Landroid/view/Window;->setContentView(I)V

    const/16 v2, 0x11

    .line 214
    invoke-virtual {v0, v2}, Landroid/view/Window;->setGravity(I)V

    .line 215
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 217
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    const/4 v3, -0x1

    .line 218
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v3, 0x2

    .line 219
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x3f000000    # 0.5f

    .line 220
    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 221
    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const v2, 0x7f090106

    .line 222
    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v4, 0x7f09010a

    .line 223
    invoke-virtual {v0, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f090107

    .line 224
    invoke-virtual {v0, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 225
    new-instance v5, Lcom/yannis/ledcard/activity/MainActivity$1;

    invoke-direct {v5, p0}, Lcom/yannis/ledcard/activity/MainActivity$1;-><init>(Lcom/yannis/ledcard/activity/MainActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    new-instance v4, Lcom/yannis/ledcard/activity/MainActivity$2;

    invoke-direct {v4, p0}, Lcom/yannis/ledcard/activity/MainActivity$2;-><init>(Lcom/yannis/ledcard/activity/MainActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    invoke-virtual {p0}, Lcom/yannis/ledcard/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0e006b

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 238
    invoke-virtual {p0}, Lcom/yannis/ledcard/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e006e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 239
    invoke-virtual {p0}, Lcom/yannis/ledcard/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e008d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v4, v3, v1

    const/4 v6, 0x1

    aput-object v5, v3, v6

    .line 240
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 248
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 251
    invoke-virtual {v3, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 252
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 253
    new-instance v7, Lcom/yannis/ledcard/activity/MainActivity$3;

    invoke-direct {v7, p0}, Lcom/yannis/ledcard/activity/MainActivity$3;-><init>(Lcom/yannis/ledcard/activity/MainActivity;)V

    .line 268
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v6

    .line 253
    invoke-virtual {v3, v7, v6, v4, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 270
    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 272
    new-instance v4, Lcom/yannis/ledcard/activity/MainActivity$4;

    invoke-direct {v4, p0}, Lcom/yannis/ledcard/activity/MainActivity$4;-><init>(Lcom/yannis/ledcard/activity/MainActivity;)V

    .line 287
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v0

    .line 272
    invoke-virtual {v3, v4, v0, v5, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 289
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 290
    sget-object v0, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v2, v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    :cond_0
    return-void
.end method

.method private startFinish()V
    .locals 2

    const-string v0, "_is_agreement_privacy"

    const/4 v1, 0x0

    .line 301
    invoke-static {p0, v0, v1}, Lcom/yannis/ledcard/util/PrefUtils;->saveBooleanToPrefs(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 302
    iget-object v0, p0, Lcom/yannis/ledcard/activity/MainActivity;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 303
    invoke-virtual {p0}, Lcom/yannis/ledcard/activity/MainActivity;->finish()V

    return-void
.end method

.method private toCheckStoragePermissions()V
    .locals 0

    .line 602
    invoke-static {p0}, Lcom/yannis/ledcard/util/PermisionUtils;->verifyStoragePermissions(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createPresenter()Lcom/yannis/ledcard/base/inter/IPresenter;
    .locals 1

    .line 72
    invoke-virtual {p0}, Lcom/yannis/ledcard/activity/MainActivity;->createPresenter()Lcom/yannis/ledcard/contract/MainContract$Presenter;

    move-result-object v0

    return-object v0
.end method

.method public createPresenter()Lcom/yannis/ledcard/contract/MainContract$Presenter;
    .locals 1

    .line 121
    new-instance v0, Lcom/yannis/ledcard/presenter/MainPresenter;

    invoke-direct {v0, p0}, Lcom/yannis/ledcard/presenter/MainPresenter;-><init>(Lcom/yannis/ledcard/contract/MainContract$View;)V

    return-object v0
.end method

.method protected hideBottomUIMenu()V
    .locals 3

    .line 350
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    const/16 v2, 0xb

    if-le v0, v2, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v1, :cond_0

    .line 351
    invoke-virtual {p0}, Lcom/yannis/ledcard/activity/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    .line 352
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 353
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_1

    .line 355
    invoke-virtual {p0}, Lcom/yannis/ledcard/activity/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1006

    .line 358
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected init()V
    .locals 2

    .line 126
    iput-object p0, p0, Lcom/yannis/ledcard/activity/MainActivity;->context:Landroid/content/Context;

    const-string v0, "_pix"

    const/16 v1, 0xb

    .line 127
    invoke-static {p0, v0, v1}, Lcom/yannis/ledcard/util/PrefUtils;->getIntFromPrefs(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yannis/ledcard/activity/MainActivity;->pix:I

    return-void
.end method

.method protected initData()V
    .locals 3

    .line 133
    :try_start_0
    invoke-static {}, Lcom/yannis/ledcard/ble/BLEScanner;->getInstance()Lcom/yannis/ledcard/ble/BLEScanner;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yannis/ledcard/ble/BLEScanner;->checkBluetooth(Landroid/app/Activity;)V

    const v0, 0x7f090114

    .line 134
    invoke-virtual {p0, v0}, Lcom/yannis/ledcard/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f090079

    .line 135
    invoke-virtual {p0, v0}, Lcom/yannis/ledcard/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/yannis/ledcard/activity/MainActivity;->tvContext:Landroid/widget/TextView;

    const v2, 0x7f0e008b

    invoke-virtual {p0, v2}, Lcom/yannis/ledcard/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    const-class v0, Lcom/yannis/ledcard/bean/SendContent;

    new-array v2, v1, [J

    invoke-static {v0, v2}, Lorg/litepal/crud/DataSupport;->findAll(Ljava/lang/Class;[J)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yannis/ledcard/activity/MainActivity;->sendContentList:Ljava/util/List;

    const-string v2, "MainActivity"

    .line 138
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    new-instance v0, Lcom/yannis/ledcard/adapter/SendListAdapter;

    iget-object v2, p0, Lcom/yannis/ledcard/activity/MainActivity;->sendContentList:Ljava/util/List;

    invoke-direct {v0, v2, p0}, Lcom/yannis/ledcard/adapter/SendListAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yannis/ledcard/activity/MainActivity;->adapter:Lcom/yannis/ledcard/adapter/SendListAdapter;

    .line 140
    iget-object v2, p0, Lcom/yannis/ledcard/activity/MainActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const-string v0, "_is_agreement_privacy"

    .line 141
    invoke-static {p0, v0, v1}, Lcom/yannis/ledcard/util/PrefUtils;->getBooleanFromPrefs(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    invoke-direct {p0}, Lcom/yannis/ledcard/activity/MainActivity;->showPrivacyDialog()V

    goto :goto_0

    .line 145
    :cond_0
    invoke-direct {p0}, Lcom/yannis/ledcard/activity/MainActivity;->ifIsNeedShowPixDialog()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 175
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected initEvent()V
    .locals 2

    .line 311
    iget-object v0, p0, Lcom/yannis/ledcard/activity/MainActivity;->listView:Landroid/widget/ListView;

    new-instance v1, Lcom/yannis/ledcard/activity/MainActivity$5;

    invoke-direct {v1, p0}, Lcom/yannis/ledcard/activity/MainActivity$5;-><init>(Lcom/yannis/ledcard/activity/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public synthetic lambda$ifIsNeedShowPixDialog$0$com-yannis-ledcard-activity-MainActivity()V
    .locals 1

    const/4 v0, 0x0

    .line 199
    invoke-virtual {p0, v0}, Lcom/yannis/ledcard/activity/MainActivity;->showSetPixDialog(I)V

    return-void
.end method

.method public synthetic lambda$ifIsNeedShowPixDialog$1$com-yannis-ledcard-activity-MainActivity()V
    .locals 2

    const-string v0, "_is_first_in_app"

    const/4 v1, 0x1

    .line 191
    invoke-static {p0, v0, v1}, Lcom/yannis/ledcard/util/PrefUtils;->getBooleanFromPrefs(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 193
    invoke-static {p0, v0, v1}, Lcom/yannis/ledcard/util/PrefUtils;->saveBooleanToPrefs(Landroid/content/Context;Ljava/lang/String;Z)V

    const/16 v0, 0xb

    .line 195
    invoke-static {v0}, Lcom/yannis/ledcard/util/LedDataUtil;->configureDefaultPics(I)V

    const/16 v0, 0xc

    .line 196
    invoke-static {v0}, Lcom/yannis/ledcard/util/LedDataUtil;->configureDefaultPics(I)V

    const/16 v0, 0x10

    .line 197
    invoke-static {v0}, Lcom/yannis/ledcard/util/LedDataUtil;->configureDefaultPics(I)V

    .line 198
    sget-object v0, Lcom/yannis/ledcard/LedBleApplication;->instance:Lcom/yannis/ledcard/LedBleApplication;

    invoke-virtual {v0}, Lcom/yannis/ledcard/LedBleApplication;->loadLEDBmpFromDB()V

    .line 199
    new-instance v0, Lcom/yannis/ledcard/activity/MainActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/yannis/ledcard/activity/MainActivity$$ExternalSyntheticLambda0;-><init>(Lcom/yannis/ledcard/activity/MainActivity;)V

    invoke-virtual {p0, v0}, Lcom/yannis/ledcard/activity/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$setSendBtnIsEnable$2$com-yannis-ledcard-activity-MainActivity(Z)V
    .locals 1

    .line 517
    iget-object v0, p0, Lcom/yannis/ledcard/activity/MainActivity;->btnSend:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public logTv(Ljava/lang/String;)V
    .locals 2

    .line 485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "logTv:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MainActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    .line 410
    invoke-super {p0, p1, p2, p3}, Lcom/yannis/ledcard/base/BaseMVPActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x208

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    if-eq p1, v0, :cond_0

    const-string v1, "_led_send_content"

    .line 412
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/yannis/ledcard/bean/SendContent;

    const/4 v2, 0x0

    const-string v3, "_led_send_content_index"

    .line 413
    invoke-virtual {p3, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p3

    .line 414
    iget-object v2, p0, Lcom/yannis/ledcard/activity/MainActivity;->sendContentList:Ljava/util/List;

    invoke-interface {v2, p3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 415
    iget-object v2, p0, Lcom/yannis/ledcard/activity/MainActivity;->sendContentList:Ljava/util/List;

    invoke-interface {v2, p3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 416
    iget-object p3, p0, Lcom/yannis/ledcard/activity/MainActivity;->adapter:Lcom/yannis/ledcard/adapter/SendListAdapter;

    invoke-virtual {p3}, Lcom/yannis/ledcard/adapter/SendListAdapter;->notifyDataSetChanged()V

    .line 417
    new-instance p3, Landroid/content/ContentValues;

    invoke-direct {p3}, Landroid/content/ContentValues;-><init>()V

    .line 418
    invoke-virtual {v1}, Lcom/yannis/ledcard/bean/SendContent;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "message"

    invoke-virtual {p3, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    invoke-virtual {v1}, Lcom/yannis/ledcard/bean/SendContent;->getSpeed()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "speed"

    invoke-virtual {p3, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 420
    invoke-virtual {v1}, Lcom/yannis/ledcard/bean/SendContent;->getMode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "mode"

    invoke-virtual {p3, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 421
    invoke-virtual {v1}, Lcom/yannis/ledcard/bean/SendContent;->isFlash()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "isFlash"

    invoke-virtual {p3, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 422
    invoke-virtual {v1}, Lcom/yannis/ledcard/bean/SendContent;->isReverse()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "isReverse"

    invoke-virtual {p3, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 423
    invoke-virtual {v1}, Lcom/yannis/ledcard/bean/SendContent;->isMarquee()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "isMarquee"

    invoke-virtual {p3, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 424
    invoke-virtual {v1}, Lcom/yannis/ledcard/bean/SendContent;->isSelect()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "isSelect"

    invoke-virtual {p3, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 425
    const-class v2, Lcom/yannis/ledcard/bean/SendContent;

    invoke-virtual {v1}, Lcom/yannis/ledcard/bean/SendContent;->getId()I

    move-result v1

    int-to-long v3, v1

    invoke-static {v2, p3, v3, v4}, Lorg/litepal/crud/DataSupport;->update(Ljava/lang/Class;Landroid/content/ContentValues;J)I

    :cond_0
    if-ne p1, v0, :cond_1

    if-nez p2, :cond_1

    const p1, 0x7f0e0061

    .line 429
    invoke-virtual {p0, p1}, Lcom/yannis/ledcard/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yannis/ledcard/activity/MainActivity;->showMsg(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onBtnSendData()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f09002d
        }
    .end annotation

    .line 366
    iget-boolean v0, p0, Lcom/yannis/ledcard/activity/MainActivity;->isTest:Z

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/yannis/ledcard/activity/MainActivity;->presenter:Lcom/yannis/ledcard/base/inter/IPresenter;

    check-cast v0, Lcom/yannis/ledcard/contract/MainContract$Presenter;

    iget-object v1, p0, Lcom/yannis/ledcard/activity/MainActivity;->sendContentList:Ljava/util/List;

    iget v2, p0, Lcom/yannis/ledcard/activity/MainActivity;->pix:I

    invoke-interface {v0, v1, v2}, Lcom/yannis/ledcard/contract/MainContract$Presenter;->testParseData(Ljava/util/List;I)V

    goto :goto_0

    .line 369
    :cond_0
    invoke-direct {p0}, Lcom/yannis/ledcard/activity/MainActivity;->checkBluetoothAndStoragePermission()V

    :goto_0
    return-void
.end method

.method public onBtnSettings()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f09002e
        }
    .end annotation

    .line 399
    iget v0, p0, Lcom/yannis/ledcard/activity/MainActivity;->pix:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x10

    if-ne v0, v2, :cond_1

    const/4 v1, 0x2

    .line 405
    :cond_1
    invoke-virtual {p0, v1}, Lcom/yannis/ledcard/activity/MainActivity;->showSetPixDialog(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/yannis/ledcard/activity/MainActivity;->presenter:Lcom/yannis/ledcard/base/inter/IPresenter;

    check-cast v0, Lcom/yannis/ledcard/contract/MainContract$Presenter;

    invoke-interface {v0}, Lcom/yannis/ledcard/contract/MainContract$Presenter;->unregisterReceiver()V

    .line 332
    invoke-super {p0}, Lcom/yannis/ledcard/base/BaseMVPActivity;->onPause()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3

    .line 535
    invoke-super {p0, p1, p2, p3}, Lcom/yannis/ledcard/base/BaseMVPActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 536
    array-length p2, p3

    if-lez p2, :cond_3

    const/16 p2, 0x6e

    const-string v0, "Permission granted"

    const-string v1, "Permission denied"

    const/4 v2, 0x0

    if-ne p1, p2, :cond_1

    .line 538
    aget p1, p3, v2

    if-nez p1, :cond_0

    .line 540
    invoke-virtual {p0, v0}, Lcom/yannis/ledcard/activity/MainActivity;->showToast(Ljava/lang/String;)V

    .line 541
    invoke-direct {p0}, Lcom/yannis/ledcard/activity/MainActivity;->sendData()V

    goto :goto_0

    .line 545
    :cond_0
    invoke-virtual {p0, v1}, Lcom/yannis/ledcard/activity/MainActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/16 p2, 0x6f

    if-ne p1, p2, :cond_3

    .line 548
    aget p1, p3, v2

    if-nez p1, :cond_2

    .line 550
    invoke-virtual {p0, v0}, Lcom/yannis/ledcard/activity/MainActivity;->showToast(Ljava/lang/String;)V

    .line 551
    invoke-direct {p0}, Lcom/yannis/ledcard/activity/MainActivity;->sendData()V

    goto :goto_0

    .line 555
    :cond_2
    invoke-virtual {p0, v1}, Lcom/yannis/ledcard/activity/MainActivity;->showToast(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 326
    invoke-super {p0}, Lcom/yannis/ledcard/base/BaseMVPActivity;->onResume()V

    return-void
.end method

.method public scanSuccess()V
    .locals 3

    .line 502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u53d1\u9001\u8ba1\u7b97:\u641c\u7d22\u6210\u529f = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/yannis/ledcard/activity/MainActivity;->SDF:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public sendFinished()V
    .locals 3

    .line 512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u53d1\u9001\u8ba1\u7b97:\u53d1\u9001\u5b8c\u6210 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/yannis/ledcard/activity/MainActivity;->SDF:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected setLayoutResId()I
    .locals 1

    const v0, 0x7f0c0021

    return v0
.end method

.method public setSendBtnIsEnable(Z)V
    .locals 1

    .line 517
    new-instance v0, Lcom/yannis/ledcard/activity/MainActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/yannis/ledcard/activity/MainActivity$$ExternalSyntheticLambda2;-><init>(Lcom/yannis/ledcard/activity/MainActivity;Z)V

    invoke-virtual {p0, v0}, Lcom/yannis/ledcard/activity/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showMsg(Ljava/lang/String;)V
    .locals 0

    .line 490
    invoke-virtual {p0, p1}, Lcom/yannis/ledcard/activity/MainActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public showSetPixDialog(I)V
    .locals 3

    const v0, 0x7f0e006a

    .line 439
    invoke-virtual {p0, v0}, Lcom/yannis/ledcard/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/yannis/ledcard/activity/MainActivity$6;

    invoke-direct {v1, p0}, Lcom/yannis/ledcard/activity/MainActivity$6;-><init>(Lcom/yannis/ledcard/activity/MainActivity;)V

    const/4 v2, 0x3

    invoke-static {p0, v2, p1, v0, v1}, Lcom/yannis/ledcard/util/DialogUtil;->showWheelViewDialog(Landroid/content/Context;IILjava/lang/String;Lcom/yannis/ledcard/util/DialogUtil$OnWheelViewSelectListener;)V

    return-void
.end method

.method public startScan()V
    .locals 3

    .line 497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u53d1\u9001\u8ba1\u7b97:\u5f00\u59cb\u641c\u7d22 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/yannis/ledcard/activity/MainActivity;->SDF:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startSend()V
    .locals 3

    .line 507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u53d1\u9001\u8ba1\u7b97:\u5f00\u59cb\u53d1\u9001 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/yannis/ledcard/activity/MainActivity;->SDF:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public toAbout()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f090114
        }
    .end annotation

    .line 393
    const-class v0, Lcom/yannis/ledcard/activity/AboutActivity;

    invoke-virtual {p0, v0}, Lcom/yannis/ledcard/activity/MainActivity;->switchTo(Ljava/lang/Class;)V

    return-void
.end method
