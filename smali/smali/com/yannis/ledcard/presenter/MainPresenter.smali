.class public Lcom/yannis/ledcard/presenter/MainPresenter;
.super Lcom/yannis/ledcard/base/BasePresenter;
.source "MainPresenter.java"

# interfaces
.implements Lcom/yannis/ledcard/contract/MainContract$Presenter;
.implements Lcom/yannis/ledcard/ble/BLEScanner$OnDeviceScanListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yannis/ledcard/base/BasePresenter<",
        "Lcom/yannis/ledcard/contract/MainContract$View;",
        "Lcom/yannis/ledcard/contract/MainContract$Mode;",
        ">;",
        "Lcom/yannis/ledcard/contract/MainContract$Presenter;",
        "Lcom/yannis/ledcard/ble/BLEScanner$OnDeviceScanListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MainPresenter"


# instance fields
.field private bleScanner:Lcom/yannis/ledcard/ble/BLEScanner;

.field private byteArrays:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation
.end field

.field private count:I

.field private isBtnScanAndSendData:Z

.field private isCalculateFinished:Z

.field private isScanDeviceSuccess:Z

.field private isSendFinished:Z

.field private isSending:Z

.field private mReceiverTag:Z

.field private matrix:I

.field private receiver:Landroid/content/BroadcastReceiver;

.field private sendContentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yannis/ledcard/bean/SendContent;",
            ">;"
        }
    .end annotation
.end field

.field private sendPackageSizeCount:I

.field private timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Lcom/yannis/ledcard/contract/MainContract$View;)V
    .locals 1

    .line 96
    invoke-direct {p0, p1}, Lcom/yannis/ledcard/base/BasePresenter;-><init>(Lcom/yannis/ledcard/base/inter/IView;)V

    const/4 p1, 0x0

    .line 56
    iput p1, p0, Lcom/yannis/ledcard/presenter/MainPresenter;->count:I

    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p0, Lcom/yannis/ledcard/presenter/MainPresenter;->isSendFinished:Z

    .line 58
    iput-boolean p1, p0, Lcom/yannis/ledcard/presenter/MainPresenter;->mReceiverTag:Z

    .line 63
    iput-boolean p1, p0, Lcom/yannis/ledcard/presenter/MainPresenter;->isBtnScanAndSendData:Z

    .line 64
    iput-boolean p1, p0, Lcom/yannis/ledcard/presenter/MainPresenter;->isScanDeviceSuccess:Z

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yannis/ledcard/presenter/MainPresenter;->byteArrays:Ljava/util/HashMap;

    .line 70
    iput p1, p0, Lcom/yannis/ledcard/presenter/MainPresenter;->sendPackageSizeCount:I

    .line 74
    iput-boolean p1, p0, Lcom/yannis/ledcard/presenter/MainPresenter;->isSending:Z

    .line 93
    iput-boolean p1, p0, Lcom/yannis/ledcard/presenter/MainPresenter;->isCalculateFinished:Z

    .line 291
    new-instance p1, Lcom/yannis/ledcard/presenter/MainPresenter$2;

    invoke-direct {p1, p0}, Lcom/yannis/ledcard/presenter/MainPresenter$2;-><init>(Lcom/yannis/ledcard/presenter/MainPresenter;)V

    iput-object p1, p0, Lcom/yannis/ledcard/presenter/MainPresenter;->receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/yannis/ledcard/presenter/MainPresenter;)Lcom/yannis/ledcard/base/inter/IView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/yannis/ledcard/presenter/MainPresenter;->view:Lcom/yannis/ledcard/base/inter/IView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/yannis/ledcard/presenter/MainPresenter;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/yannis/ledcard/presenter/MainPresenter;->sendPackageSizeCount:I

    return p0
.end method

.method static synthetic access$1002(Lcom/yannis/ledcard/presenter/MainPresenter;I)I
    .locals 0

    .line 52
    iput p1, p0, Lcom/yannis/ledcard/presenter/MainPresenter;->sendPackageSizeCount:I

    return p1
.end method

.method static synthetic access$102(Lcom/yannis/ledcard/presenter/MainPresenter;Z)Z
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/yannis/ledcard/presenter/MainPresenter;->isSendFinished:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/yannis/ledcard/presenter/MainPresenter;)Lcom/yannis/ledcard/base/inter/IView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/yannis/ledcard/presenter/MainPresenter;->view:Lcom/yannis/ledcard/base/inter/IView;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/yannis/ledcard/presenter/MainPresenter;Z)Z
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/yannis/ledcard/presenter/MainPresenter;->isSending:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/yannis/ledcard/presenter/MainPresenter;)Lcom/yannis/ledcard/base/inter/IView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/yannis/ledcard/presenter/MainPresenter;->view:Lcom/yannis/ledcard/base/inter/IView;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/yannis/ledcard/presenter/MainPresenter;)Lcom/yannis/ledcard/base/inter/IView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/yannis/ledcard/presenter/MainPresenter;->view:Lcom/yannis/ledcard/base/inter/IView;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/yannis/ledcard/presenter/MainPresenter;)Lcom/yannis/ledcard/base/inter/IView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/yannis/ledcard/presenter/MainPresenter;->view:Lcom/yannis/ledcard/base/inter/IView;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/yannis/ledcard/presenter/MainPresenter;)Ljava/util/HashMap;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/yannis/ledcard/presenter/MainPresenter;->byteArrays:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/yannis/ledcard/presenter/MainPresenter;)Lcom/yannis/ledcard/base/inter/IView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/yannis/ledcard/presenter/MainPresenter;->view:Lcom/yannis/ledcard/base/inter/IView;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/yannis/ledcard/presenter/MainPresenter;)Lcom/yannis/ledcard/base/inter/IView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/yannis/ledcard/presenter/MainPresenter;->view:Lcom/yannis/ledcard/base/inter/IView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/yannis/ledcard/presenter/MainPresenter;)Lcom/yannis/ledcard/base/inter/IView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/yannis/ledcard/presenter/MainPresenter;->view:Lcom/yannis/ledcard/base/inter/IView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/yannis/ledcard/presenter/MainPresenter;)Lcom/yannis/ledcard/base/inter/IView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/yannis/ledcard/presenter/MainPresenter;->view:Lcom/yannis/ledcard/base/inter/IView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/yannis/ledcard/presenter/MainPresenter;)Lcom/yannis/ledcard/base/inter/IView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/yannis/ledcard/presenter/MainPresenter;->view:Lcom/yannis/ledcard/base/inter/IView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/yannis/ledcard/presenter/MainPresenter;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/yannis/ledcard/presenter/MainPresenter;->sendDataWithResponse()V

    return-void
.end method

.method static synthetic access$600(Lcom/yannis/ledcard/presenter/MainPresenter;)Lcom/yannis/ledcard/base/inter/IView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/yannis/ledcard/presenter/MainPresenter;->view:Lcom/yannis/ledcard/base/inter/IView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/yannis/ledcard/presenter/MainPresenter;)Lcom/yannis/ledcard/base/inter/IView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/yannis/ledcard/presenter/MainPresenter;->view:Lcom/yannis/ledcard/base/inter/IView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/yannis/ledcard/presenter/MainPresenter;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/yannis/ledcard/presenter/MainPresenter;->count:I

    return p0
.end method

.method static synthetic access$802(Lcom/yannis/ledcard/presenter/MainPresenter;I)I
    .locals 0

    .line 52
    iput p1, p0, Lcom/yannis/ledcard/presenter/MainPresenter;->count:I

    return p1
.end method

.method static synthetic access$808(Lcom/yannis/ledcard/presenter/MainPresenter;)I
    .locals 2

    .line 52
    iget v0, p0, Lcom/yannis/ledcard/presenter/MainPresenter;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/yannis/ledcard/presenter/MainPresenter;->count:I

    return v0
.end method

.method static synthetic access$900(Lcom/yannis/ledcard/presenter/MainPresenter;)Lcom/yannis/ledcard/base/inter/IView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/yannis/ledcard/presenter/MainPresenter;->view:Lcom/yannis/ledcard/base/inter/IView;

    return-object p0
.end method

.method private connectDevice()V
    .locals 4

    const/4 v0, 0x0

    .line 249
    iput-boolean v0, p0, Lcom/yannis/ledcard/presenter/MainPresenter;->isSendFinished:Z

    .line 250
    sget-object v0, Lcom/yannis/ledcard/LedBleApplication;->instance:Lcom/yannis/ledcard/LedBleApplication;

    iget-boolean v0, v0, Lcom/yannis/ledcard/LedBleApplication;->isConnected:Z

    if-eqz v0, :cond_0

    .line 251
    sget-object v0, Lcom/yannis/ledcard/LedBleApplication;->instance:Lcom/yannis/ledcard/LedBleApplication;

    invoke-virtual {v0}, Lcom/yannis/ledcard/LedBleApplication;->disconnectDevice()V

    .line 252
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/yannis/ledcard/presenter/MainPresenter$1;

    invoke-direct {v1, p0}, Lcom/yannis/ledcard/presenter/MainPresenter$1;-><init>(Lcom/yannis/ledcard/presenter/MainPresenter;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/yannis/ledcard/presenter/MainPresenter;->view:Lcom/yannis/ledcard/base/inter/IView;

    check-cast v0, Lcom/yannis/ledcard/contract/MainContract$View;

    const v1, 0x7f0e0034

    invoke-static {v1}, Lcom/yannis/ledcard/presenter/MainPresenter;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/yannis/ledcard/contract/MainContract$View;->showMsg(Ljava/lang/String;)V

    .line 261
    sget-object v0, Lcom/yannis/ledcard/LedBleApplication;->instance:Lcom/yannis/ledcard/LedBleApplication;

    invoke-virtual {v0}, Lcom/yannis/ledcard/LedBleApplication;->connectDevice()V

    :goto_0
    return-void
.end method

.method public static getString(I)Ljava/lang/String;
    .locals 1

    .line 370
    invoke-static {}, Lcom/yannis/ledcard/LedBleApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initBle()V
    .locals 1

    .line 202
    invoke-static {}, Lcom/yannis/ledcard/ble/BLEScanner;->getInstance()Lcom/yannis/ledcard/ble/BLEScanner;

    move-result-object v0

    iput-object v0, p0, Lcom/yannis/ledcard/presenter/MainPresenter;->bleScanner:Lcom/yannis/ledcard/ble/BLEScanner;

    .line 203
    invoke-virtual {v0, p0}, Lcom/yannis/ledcard/ble/BLEScanner;->setListener(Lcom/yannis/ledcard/ble/BLEScanner$OnDeviceScanListener;)V

    return-void
.end method

.method private sendDataWithResponse()V
    .locals 2

    .line 269
    invoke-static {}, Lcom/yannis/ledcard/thread/HBThreadPools;->getInstance()Lcom/yannis/ledcard/thread/AbsThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/yannis/ledcard/presenter/MainPresenter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/yannis/ledcard/presenter/MainPresenter$$ExternalSyntheticLambda0;-><init>(Lcom/yannis/ledcard/presenter/MainPresenter;)V

    invoke-virtual {v0, v1}, Lcom/yannis/ledcard/thread/AbsThreadPoolManager;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private startTimer()V
    .locals 4

    .line 376
    iget-object v0, p0, Lcom/yannis/ledcard/presenter/MainPresenter;->timer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 377
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/yannis/ledcard/presenter/MainPresenter;->timer:Ljava/util/Timer;

    .line 378
    new-instance v1, Lcom/yannis/ledcard/presenter/MainPresenter$3;

    invoke-direct {v1, p0}, Lcom/yannis/ledcard/presenter/MainPresenter$3;-><init>(Lcom/yannis/ledcard/presenter/MainPresenter;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected bridge synthetic createMode()Lcom/yannis/ledcard/base/inter/IMode;
    .locals 1

    .line 52
    invoke-virtual {p0}, Lcom/yannis/ledcard/presenter/MainPresenter;->createMode()Lcom/yannis/ledcard/contract/MainContract$Mode;

    move-result-object v0

    return-object v0
.end method

.method protected createMode()Lcom/yannis/ledcard/contract/MainContract$Mode;
    .locals 1

    .line 101
    new-instance v0, Lcom/yannis/ledcard/mode/MainMode;

    invoke-direct {v0}, Lcom/yannis/ledcard/mode/MainMode;-><init>()V

    return-object v0
.end method

.method public synthetic lambda$sendData$0$com-yannis-ledcard-presenter-MainPresenter(Ljava/util/List;I)V
    .locals 5

    const/4 v0, 0x0

    .line 109
    iput-boolean v0, p0, Lcom/yannis/ledcard/presenter/MainPresenter;->isCalculateFinished:Z

    .line 110
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u53d1\u9001\u8ba1\u7b97:\u5f00\u59cb\u8ba1\u7b97 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/yannis/ledcard/activity/MainActivity;->SDF:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MainPresenter"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :try_start_0
    iget-object v1, p0, Lcom/yannis/ledcard/presenter/MainPresenter;->byteArrays:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 114
    iget-object v1, p0, Lcom/yannis/ledcard/presenter/MainPresenter;->byteArrays:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/yannis/ledcard/presenter/MainPresenter;->mode:Lcom/yannis/ledcard/base/inter/IMode;

    check-cast v3, Lcom/yannis/ledcard/contract/MainContract$Mode;

    invoke-interface {v3, p1, p2}, Lcom/yannis/ledcard/contract/MainContract$Mode;->getSendLedData(Ljava/util/List;I)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 116
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 118
    :goto_0
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    .line 119
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sub-long/2addr p1, v0

    .line 120
    iget-object v0, p0, Lcom/yannis/ledcard/presenter/MainPresenter;->view:Lcom/yannis/ledcard/base/inter/IView;

    check-cast v0, Lcom/yannis/ledcard/contract/MainContract$View;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u8ba1\u7b97\u8017\u65f6 = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/yannis/ledcard/contract/MainContract$View;->logTv(Ljava/lang/String;)V

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u53d1\u9001\u8ba1\u7b97:\u7ed3\u675f\u8ba1\u7b97 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/yannis/ledcard/activity/MainActivity;->SDF:Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 122
    iput-boolean p1, p0, Lcom/yannis/ledcard/presenter/MainPresenter;->isCalculateFinished:Z

    return-void
.end method

.method public synthetic lambda$sendDataWithResponse$1$com-yannis-ledcard-presenter-MainPresenter()V
    .locals 3

    .line 270
    :goto_0
    iget-boolean v0, p0, Lcom/yannis/ledcard/presenter/MainPresenter;->isCalculateFinished:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x1e

    .line 271
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 273
    iput-boolean v0, p0, Lcom/yannis/ledcard/presenter/MainPresenter;->isSending:Z

    .line 274
    iget-object v0, p0, Lcom/yannis/ledcard/presenter/MainPresenter;->view:Lcom/yannis/ledcard/base/inter/IView;

    check-cast v0, Lcom/yannis/ledcard/contract/MainContract$View;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/yannis/ledcard/contract/MainContract$View;->setSendBtnIsEnable(Z)V

    .line 275
    invoke-virtual {p0}, Lcom/yannis/ledcard/presenter/MainPresenter;->startNewTimer()V

    .line 276
    iput v1, p0, Lcom/yannis/ledcard/presenter/MainPresenter;->count:I

    .line 277
    iget-object v0, p0, Lcom/yannis/ledcard/presenter/MainPresenter;->byteArrays:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 278
    iget-object v0, p0, Lcom/yannis/ledcard/presenter/MainPresenter;->mode:Lcom/yannis/ledcard/base/inter/IMode;

    check-cast v0, Lcom/yannis/ledcard/contract/MainContract$Mode;

    invoke-interface {v0}, Lcom/yannis/ledcard/contract/MainContract$Mode;->getSendPackageSize()I

    move-result v0

    iput v0, p0, Lcom/yannis/ledcard/presenter/MainPresenter;->sendPackageSizeCount:I

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u53d1\u9001\u6570\u636e---------> No."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/yannis/ledcard/presenter/MainPresenter;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "---"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainPresenter"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v0, p0, Lcom/yannis/ledcard/presenter/MainPresenter;->view:Lcom/yannis/ledcard/base/inter/IView;

    check-cast v0, Lcom/yannis/ledcard/contract/MainContract$View;

    const v1, 0x7f0e0084

    invoke-static {v1}, Lcom/yannis/ledcard/presenter/MainPresenter;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/yannis/ledcard/contract/MainContract$View;->showMsg(Ljava/lang/String;)V

    .line 281
    sget-object v0, Lcom/yannis/ledcard/LedBleApplication;->instance:Lcom/yannis/ledcard/LedBleApplication;

    iget-object v1, p0, Lcom/yannis/ledcard/presenter/MainPresenter;->byteArrays:Ljava/util/HashMap;

    iget v2, p0, Lcom/yannis/ledcard/presenter/MainPresenter;->count:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-virtual {v0, v1}, Lcom/yannis/ledcard/LedBleApplication;->write([B)V

    goto :goto_1

    .line 283
    :cond_1
    iget-object v0, p0, Lcom/yannis/ledcard/presenter/MainPresenter;->view:Lcom/yannis/ledcard/base/inter/IView;

    check-cast v0, Lcom/yannis/ledcard/contract/MainContract$View;

    const-string v1, "\u53d1\u9001\u5185\u5bb9\u6709\u8bef\uff0c\u65e0\u6cd5\u8bc6\u522b"

    invoke-interface {v0, v1}, Lcom/yannis/ledcard/contract/MainContract$View;->showMsg(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public logInfo(Ljava/lang/String;)V
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/yannis/ledcard/presenter/MainPresenter;->view:Lcom/yannis/ledcard/base/inter/IView;

    check-cast v0, Lcom/yannis/ledcard/contract/MainContract$View;

    invoke-interface {v0, p1}, Lcom/yannis/ledcard/contract/MainContract$View;->logTv(Ljava/lang/String;)V

    return-void
.end method

.method public onAttach()V
    .locals 0

    .line 82
    invoke-super {p0}, Lcom/yannis/ledcard/base/BasePresenter;->onAttach()V

    .line 83
    invoke-direct {p0}, Lcom/yannis/ledcard/presenter/MainPresenter;->initBle()V

    .line 84
    invoke-virtual {p0}, Lcom/yannis/ledcard/presenter/MainPresenter;->registerBroadcastReceiver()V

    return-void
.end method

.method public onDetach()V
    .locals 0

    .line 89
    invoke-virtual {p0}, Lcom/yannis/ledcard/presenter/MainPresenter;->unregisterReceiver()V

    .line 90
    invoke-super {p0}, Lcom/yannis/ledcard/base/BasePresenter;->onDetach()V

    return-void
.end method

.method public onDeviceScan(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yannis/ledcard/ble/ScanDevice;",
            ">;)V"
        }
    .end annotation

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "===================================>onDeviceScan size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainPresenter"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 209
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yannis/ledcard/ble/ScanDevice;

    invoke-virtual {p1}, Lcom/yannis/ledcard/ble/ScanDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    .line 210
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 211
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 212
    sget-object v1, Lcom/yannis/ledcard/LedBleApplication;->instance:Lcom/yannis/ledcard/LedBleApplication;

    invoke-virtual {v1, p1}, Lcom/yannis/ledcard/LedBleApplication;->setDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 213
    sget-object p1, Lcom/yannis/ledcard/LedBleApplication;->instance:Lcom/yannis/ledcard/LedBleApplication;

    iput-boolean v0, p1, Lcom/yannis/ledcard/LedBleApplication;->isConnected:Z

    const/4 p1, 0x1

    .line 214
    iput-boolean p1, p0, Lcom/yannis/ledcard/presenter/MainPresenter;->isScanDeviceSuccess:Z

    .line 215
    iget-object p1, p0, Lcom/yannis/ledcard/presenter/MainPresenter;->bleScanner:Lcom/yannis/ledcard/ble/BLEScanner;

    invoke-virtual {p1}, Lcom/yannis/ledcard/ble/BLEScanner;->stopScanBluetoothDevice()V

    .line 216
    iget-boolean p1, p0, Lcom/yannis/ledcard/presenter/MainPresenter;->isBtnScanAndSendData:Z

    if-eqz p1, :cond_0

    .line 218
    invoke-direct {p0}, Lcom/yannis/ledcard/presenter/MainPresenter;->connectDevice()V

    :cond_0
    return-void
.end method

.method public onStartScan()V
    .locals 2

    const-string v0, "MainPresenter"

    const-string v1, "===================================>onStartScan"

    .line 231
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v0, p0, Lcom/yannis/ledcard/presenter/MainPresenter;->view:Lcom/yannis/ledcard/base/inter/IView;

    check-cast v0, Lcom/yannis/ledcard/contract/MainContract$View;

    const v1, 0x7f0e007d

    invoke-static {v1}, Lcom/yannis/ledcard/presenter/MainPresenter;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/yannis/ledcard/contract/MainContract$View;->showMsg(Ljava/lang/String;)V

    return-void
.end method

.method public onStopScan(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yannis/ledcard/ble/ScanDevice;",
            ">;)V"
        }
    .end annotation

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "===================================>onStopScan size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainPresenter"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/yannis/ledcard/presenter/MainPresenter;->isScanDeviceSuccess:Z

    if-nez p1, :cond_1

    .line 240
    iget-object p1, p0, Lcom/yannis/ledcard/presenter/MainPresenter;->view:Lcom/yannis/ledcard/base/inter/IView;

    check-cast p1, Lcom/yannis/ledcard/contract/MainContract$View;

    invoke-interface {p1, v0}, Lcom/yannis/ledcard/contract/MainContract$View;->setSendBtnIsEnable(Z)V

    .line 241
    iget-object p1, p0, Lcom/yannis/ledcard/presenter/MainPresenter;->view:Lcom/yannis/ledcard/base/inter/IView;

    check-cast p1, Lcom/yannis/ledcard/contract/MainContract$View;

    const v0, 0x7f0e005e

    invoke-static {v0}, Lcom/yannis/ledcard/presenter/MainPresenter;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/yannis/ledcard/contract/MainContract$View;->showMsg(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public registerBroadcastReceiver()V
    .locals 3

    .line 163
    iget-boolean v0, p0, Lcom/yannis/ledcard/presenter/MainPresenter;->mReceiverTag:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 164
    iput-boolean v0, p0, Lcom/yannis/ledcard/presenter/MainPresenter;->mReceiverTag:Z

    .line 165
    invoke-virtual {p0}, Lcom/yannis/ledcard/presenter/MainPresenter;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/yannis/ledcard/presenter/MainPresenter;->receiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lcom/yannis/ledcard/ble/BLEService;->getRegisterIntentFilter()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public sendData(Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yannis/ledcard/bean/SendContent;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 107
    iput-boolean v0, p0, Lcom/yannis/ledcard/presenter/MainPresenter;->isCalculateFinished:Z

    .line 108
    invoke-static {}, Lcom/yannis/ledcard/thread/HBThreadPools;->getInstance()Lcom/yannis/ledcard/thread/AbsThreadPoolManager;

    move-result-object v1

    new-instance v2, Lcom/yannis/ledcard/presenter/MainPresenter$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1, p2}, Lcom/yannis/ledcard/presenter/MainPresenter$$ExternalSyntheticLambda1;-><init>(Lcom/yannis/ledcard/presenter/MainPresenter;Ljava/util/List;I)V

    invoke-virtual {v1, v2}, Lcom/yannis/ledcard/thread/AbsThreadPoolManager;->execute(Ljava/lang/Runnable;)V

    .line 124
    iget-object v1, p0, Lcom/yannis/ledcard/presenter/MainPresenter;->view:Lcom/yannis/ledcard/base/inter/IView;

    check-cast v1, Lcom/yannis/ledcard/contract/MainContract$View;

    invoke-interface {v1, v0}, Lcom/yannis/ledcard/contract/MainContract$View;->setSendBtnIsEnable(Z)V

    .line 125
    iget-object v1, p0, Lcom/yannis/ledcard/presenter/MainPresenter;->bleScanner:Lcom/yannis/ledcard/ble/BLEScanner;

    invoke-virtual {p0}, Lcom/yannis/ledcard/presenter/MainPresenter;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yannis/ledcard/ble/BLEScanner;->isBluetoothEnable(Landroid/app/Activity;)Z

    .line 127
    iput-object p1, p0, Lcom/yannis/ledcard/presenter/MainPresenter;->sendContentList:Ljava/util/List;

    .line 128
    iput p2, p0, Lcom/yannis/ledcard/presenter/MainPresenter;->matrix:I

    .line 129
    sget-object p2, Lcom/yannis/ledcard/LedBleApplication;->instance:Lcom/yannis/ledcard/LedBleApplication;

    invoke-virtual {p2}, Lcom/yannis/ledcard/LedBleApplication;->disconnectDevice()V

    .line 130
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    const/16 v2, 0x17

    if-lt p2, v2, :cond_0

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge p2, v1, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/yannis/ledcard/presenter/MainPresenter;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p2, v1}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_1

    .line 133
    iget-object p1, p0, Lcom/yannis/ledcard/presenter/MainPresenter;->view:Lcom/yannis/ledcard/base/inter/IView;

    check-cast p1, Lcom/yannis/ledcard/contract/MainContract$View;

    const p2, 0x7f0e0062

    invoke-static {p2}, Lcom/yannis/ledcard/presenter/MainPresenter;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/yannis/ledcard/contract/MainContract$View;->showMsg(Ljava/lang/String;)V

    return-void

    .line 136
    :cond_0
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v1, :cond_1

    .line 137
    invoke-virtual {p0}, Lcom/yannis/ledcard/presenter/MainPresenter;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const-string v1, "android.permission.BLUETOOTH_SCAN"

    invoke-virtual {p2, v1}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_1

    .line 138
    iget-object p1, p0, Lcom/yannis/ledcard/presenter/MainPresenter;->view:Lcom/yannis/ledcard/base/inter/IView;

    check-cast p1, Lcom/yannis/ledcard/contract/MainContract$View;

    const-string p2, "Please enable bluetooth permissions manually"

    invoke-interface {p1, p2}, Lcom/yannis/ledcard/contract/MainContract$View;->showMsg(Ljava/lang/String;)V

    return-void

    .line 144
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const/4 v1, 0x1

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/yannis/ledcard/bean/SendContent;

    .line 145
    invoke-virtual {p2}, Lcom/yannis/ledcard/bean/SendContent;->isSelect()Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    :cond_3
    if-eqz v0, :cond_4

    .line 151
    iget-object p1, p0, Lcom/yannis/ledcard/presenter/MainPresenter;->view:Lcom/yannis/ledcard/base/inter/IView;

    check-cast p1, Lcom/yannis/ledcard/contract/MainContract$View;

    invoke-interface {p1}, Lcom/yannis/ledcard/contract/MainContract$View;->startScan()V

    .line 152
    iget-object p1, p0, Lcom/yannis/ledcard/presenter/MainPresenter;->view:Lcom/yannis/ledcard/base/inter/IView;

    check-cast p1, Lcom/yannis/ledcard/contract/MainContract$View;

    const p2, 0x7f0e007d

    invoke-static {p2}, Lcom/yannis/ledcard/presenter/MainPresenter;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/yannis/ledcard/contract/MainContract$View;->showMsg(Ljava/lang/String;)V

    .line 153
    iget-object p1, p0, Lcom/yannis/ledcard/presenter/MainPresenter;->bleScanner:Lcom/yannis/ledcard/ble/BLEScanner;

    invoke-virtual {p1}, Lcom/yannis/ledcard/ble/BLEScanner;->startScanBluetoothDevice()V

    .line 154
    iput-boolean v1, p0, Lcom/yannis/ledcard/presenter/MainPresenter;->isBtnScanAndSendData:Z

    goto :goto_0

    .line 156
    :cond_4
    iget-object p1, p0, Lcom/yannis/ledcard/presenter/MainPresenter;->view:Lcom/yannis/ledcard/base/inter/IView;

    check-cast p1, Lcom/yannis/ledcard/contract/MainContract$View;

    invoke-virtual {p0}, Lcom/yannis/ledcard/presenter/MainPresenter;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const v0, 0x7f0e002d

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/yannis/ledcard/contract/MainContract$View;->showMsg(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public startNewTimer()V
    .locals 0

    .line 400
    invoke-virtual {p0}, Lcom/yannis/ledcard/presenter/MainPresenter;->stopTimer()V

    .line 401
    invoke-direct {p0}, Lcom/yannis/ledcard/presenter/MainPresenter;->startTimer()V

    return-void
.end method

.method public startScanDevice()V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/yannis/ledcard/presenter/MainPresenter;->bleScanner:Lcom/yannis/ledcard/ble/BLEScanner;

    invoke-virtual {v0}, Lcom/yannis/ledcard/ble/BLEScanner;->startScanBluetoothDevice()V

    return-void
.end method

.method public stopTimer()V
    .locals 1

    .line 393
    iget-object v0, p0, Lcom/yannis/ledcard/presenter/MainPresenter;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 394
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 395
    iput-object v0, p0, Lcom/yannis/ledcard/presenter/MainPresenter;->timer:Ljava/util/Timer;

    :cond_0
    return-void
.end method

.method public testParseData(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yannis/ledcard/bean/SendContent;",
            ">;I)V"
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lcom/yannis/ledcard/presenter/MainPresenter;->mode:Lcom/yannis/ledcard/base/inter/IMode;

    check-cast v0, Lcom/yannis/ledcard/contract/MainContract$Mode;

    invoke-interface {v0, p1, p2}, Lcom/yannis/ledcard/contract/MainContract$Mode;->getSendLedData(Ljava/util/List;I)Ljava/util/HashMap;

    return-void
.end method

.method public unregisterReceiver()V
    .locals 3

    .line 171
    iget-boolean v0, p0, Lcom/yannis/ledcard/presenter/MainPresenter;->mReceiverTag:Z

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/yannis/ledcard/presenter/MainPresenter;->receiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 174
    :try_start_0
    iput-boolean v0, p0, Lcom/yannis/ledcard/presenter/MainPresenter;->mReceiverTag:Z

    .line 175
    invoke-virtual {p0}, Lcom/yannis/ledcard/presenter/MainPresenter;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/yannis/ledcard/presenter/MainPresenter;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 177
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Receiver not registered"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 181
    :cond_0
    throw v0

    :cond_1
    :goto_0
    return-void
.end method
