.class Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;
.super Ljava/lang/Object;
.source "BluetoothLeScannerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ScanCallbackWrapper"
.end annotation


# instance fields
.field private final LOCK:Ljava/lang/Object;

.field private final devicesInBatch:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final devicesInRange:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lno/nordicsemi/android/support/v18/scanner/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private final emulateBatching:Z

.field private final emulateFiltering:Z

.field private final emulateFoundOrLostCallbackType:Z

.field final filters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lno/nordicsemi/android/support/v18/scanner/ScanFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final flushPendingScanResultsTask:Ljava/lang/Runnable;

.field final handler:Landroid/os/Handler;

.field private final matchLostNotifierTask:Ljava/lang/Runnable;

.field final scanCallback:Lno/nordicsemi/android/support/v18/scanner/ScanCallback;

.field private final scanResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lno/nordicsemi/android/support/v18/scanner/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field final scanSettings:Lno/nordicsemi/android/support/v18/scanner/ScanSettings;

.field private scanningStopped:Z


# direct methods
.method constructor <init>(ZZLjava/util/List;Lno/nordicsemi/android/support/v18/scanner/ScanSettings;Lno/nordicsemi/android/support/v18/scanner/ScanCallback;Landroid/os/Handler;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/List<",
            "Lno/nordicsemi/android/support/v18/scanner/ScanFilter;",
            ">;",
            "Lno/nordicsemi/android/support/v18/scanner/ScanSettings;",
            "Lno/nordicsemi/android/support/v18/scanner/ScanCallback;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->LOCK:Ljava/lang/Object;

    .line 350
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->scanResults:Ljava/util/List;

    .line 352
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->devicesInBatch:Ljava/util/Set;

    .line 355
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->devicesInRange:Ljava/util/Map;

    .line 357
    new-instance v0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper$1;

    invoke-direct {v0, p0}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper$1;-><init>(Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;)V

    iput-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->flushPendingScanResultsTask:Ljava/lang/Runnable;

    .line 369
    new-instance v1, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper$2;

    invoke-direct {v1, p0}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper$2;-><init>(Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;)V

    iput-object v1, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->matchLostNotifierTask:Ljava/lang/Runnable;

    .line 403
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->filters:Ljava/util/List;

    .line 404
    iput-object p4, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->scanSettings:Lno/nordicsemi/android/support/v18/scanner/ScanSettings;

    .line 405
    iput-object p5, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->scanCallback:Lno/nordicsemi/android/support/v18/scanner/ScanCallback;

    .line 406
    iput-object p6, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->handler:Landroid/os/Handler;

    const/4 p5, 0x0

    .line 407
    iput-boolean p5, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->scanningStopped:Z

    .line 410
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x1

    const/16 v3, 0x17

    if-lt v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 411
    :goto_0
    invoke-virtual {p4}, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->getCallbackType()I

    move-result v3

    if-eq v3, v2, :cond_2

    if-eqz v1, :cond_1

    .line 412
    invoke-virtual {p4}, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->getUseHardwareCallbackTypesIfSupported()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->emulateFoundOrLostCallbackType:Z

    .line 415
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_4

    if-eqz p2, :cond_3

    invoke-virtual {p4}, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->getUseHardwareFilteringIfSupported()Z

    move-result p2

    if-nez p2, :cond_4

    :cond_3
    const/4 p2, 0x1

    goto :goto_2

    :cond_4
    const/4 p2, 0x0

    :goto_2
    iput-boolean p2, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->emulateFiltering:Z

    .line 418
    invoke-virtual {p4}, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->getReportDelayMillis()J

    move-result-wide p2

    const-wide/16 v3, 0x0

    cmp-long v1, p2, v3

    if-lez v1, :cond_6

    if-eqz p1, :cond_5

    .line 419
    invoke-virtual {p4}, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->getUseHardwareBatchingIfSupported()Z

    move-result p1

    if-nez p1, :cond_6

    :cond_5
    const/4 p5, 0x1

    :cond_6
    iput-boolean p5, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->emulateBatching:Z

    if-eqz p5, :cond_7

    .line 421
    invoke-virtual {p6, v0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    return-void
.end method

.method static synthetic access$000(Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;)Z
    .locals 0

    .line 336
    iget-boolean p0, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->scanningStopped:Z

    return p0
.end method

.method static synthetic access$100(Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;)Ljava/lang/Object;
    .locals 0

    .line 336
    iget-object p0, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->LOCK:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$200(Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;)Ljava/util/Map;
    .locals 0

    .line 336
    iget-object p0, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->devicesInRange:Ljava/util/Map;

    return-object p0
.end method

.method private matches(Lno/nordicsemi/android/support/v18/scanner/ScanResult;)Z
    .locals 2

    .line 516
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->filters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;

    .line 517
    invoke-virtual {v1, p1}, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->matches(Lno/nordicsemi/android/support/v18/scanner/ScanResult;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method close()V
    .locals 2

    const/4 v0, 0x1

    .line 426
    iput-boolean v0, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->scanningStopped:Z

    .line 427
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 428
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 429
    :try_start_0
    iget-object v1, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->devicesInRange:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 430
    iget-object v1, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->devicesInBatch:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 431
    iget-object v1, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->scanResults:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 432
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method flushPendingScanResults()V
    .locals 4

    .line 436
    iget-boolean v0, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->emulateBatching:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->scanningStopped:Z

    if-nez v0, :cond_0

    .line 437
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 438
    :try_start_0
    iget-object v1, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->scanCallback:Lno/nordicsemi/android/support/v18/scanner/ScanCallback;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->scanResults:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Lno/nordicsemi/android/support/v18/scanner/ScanCallback;->onBatchScanResults(Ljava/util/List;)V

    .line 439
    iget-object v1, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->scanResults:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 440
    iget-object v1, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->devicesInBatch:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 441
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method handleScanError(I)V
    .locals 1

    .line 512
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->scanCallback:Lno/nordicsemi/android/support/v18/scanner/ScanCallback;

    invoke-virtual {v0, p1}, Lno/nordicsemi/android/support/v18/scanner/ScanCallback;->onScanFailed(I)V

    return-void
.end method

.method handleScanResult(ILno/nordicsemi/android/support/v18/scanner/ScanResult;)V
    .locals 3

    .line 447
    iget-boolean v0, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->scanningStopped:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->filters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->matches(Lno/nordicsemi/android/support/v18/scanner/ScanResult;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 450
    :cond_0
    invoke-virtual {p2}, Lno/nordicsemi/android/support/v18/scanner/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 453
    iget-boolean v1, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->emulateFoundOrLostCallbackType:Z

    if-eqz v1, :cond_2

    .line 456
    iget-object v1, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->devicesInRange:Ljava/util/Map;

    monitor-enter v1

    .line 458
    :try_start_0
    iget-object p1, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->devicesInRange:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    .line 460
    iget-object v2, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->devicesInRange:Ljava/util/Map;

    invoke-interface {v2, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lno/nordicsemi/android/support/v18/scanner/ScanResult;

    .line 461
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 464
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->scanSettings:Lno/nordicsemi/android/support/v18/scanner/ScanSettings;

    invoke-virtual {v0}, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->getCallbackType()I

    move-result v0

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-lez v0, :cond_1

    .line 465
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->scanCallback:Lno/nordicsemi/android/support/v18/scanner/ScanCallback;

    invoke-virtual {v0, v1, p2}, Lno/nordicsemi/android/support/v18/scanner/ScanCallback;->onScanResult(ILno/nordicsemi/android/support/v18/scanner/ScanResult;)V

    :cond_1
    if-eqz p1, :cond_5

    .line 472
    iget-object p1, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->scanSettings:Lno/nordicsemi/android/support/v18/scanner/ScanSettings;

    invoke-virtual {p1}, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->getCallbackType()I

    move-result p1

    and-int/lit8 p1, p1, 0x4

    if-lez p1, :cond_5

    .line 473
    iget-object p1, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->matchLostNotifierTask:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 474
    iget-object p1, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->matchLostNotifierTask:Ljava/lang/Runnable;

    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->scanSettings:Lno/nordicsemi/android/support/v18/scanner/ScanSettings;

    invoke-virtual {v0}, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->getMatchLostTaskInterval()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 461
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 481
    :cond_2
    iget-boolean v1, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->emulateBatching:Z

    if-eqz v1, :cond_4

    .line 482
    iget-object v1, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 483
    :try_start_2
    iget-object p1, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->devicesInBatch:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 484
    iget-object p1, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->scanResults:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 485
    iget-object p1, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->devicesInBatch:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 487
    :cond_3
    monitor-exit v1

    return-void

    :catchall_1
    move-exception p1

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    .line 491
    :cond_4
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->scanCallback:Lno/nordicsemi/android/support/v18/scanner/ScanCallback;

    invoke-virtual {v0, p1, p2}, Lno/nordicsemi/android/support/v18/scanner/ScanCallback;->onScanResult(ILno/nordicsemi/android/support/v18/scanner/ScanResult;)V

    :cond_5
    :goto_0
    return-void
.end method

.method handleScanResults(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lno/nordicsemi/android/support/v18/scanner/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 496
    iget-boolean v0, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->scanningStopped:Z

    if-eqz v0, :cond_0

    return-void

    .line 501
    :cond_0
    iget-boolean v0, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->emulateFiltering:Z

    if-eqz v0, :cond_3

    .line 502
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 503
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lno/nordicsemi/android/support/v18/scanner/ScanResult;

    .line 504
    invoke-direct {p0, v1}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->matches(Lno/nordicsemi/android/support/v18/scanner/ScanResult;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 505
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move-object p1, v0

    .line 508
    :cond_3
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->scanCallback:Lno/nordicsemi/android/support/v18/scanner/ScanCallback;

    invoke-virtual {v0, p1}, Lno/nordicsemi/android/support/v18/scanner/ScanCallback;->onBatchScanResults(Ljava/util/List;)V

    return-void
.end method
