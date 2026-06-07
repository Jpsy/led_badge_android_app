.class Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB;
.super Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat;
.source "BluetoothLeScannerImplJB.java"


# instance fields
.field private handlerThread:Landroid/os/HandlerThread;

.field private powerSaveHandler:Landroid/os/Handler;

.field private powerSaveRestInterval:J

.field private powerSaveScanInterval:J

.field private final powerSaveScanTask:Ljava/lang/Runnable;

.field private final powerSaveSleepTask:Ljava/lang/Runnable;

.field private final scanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

.field private final wrappers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lno/nordicsemi/android/support/v18/scanner/ScanCallback;",
            "Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 85
    invoke-direct {p0}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat;-><init>()V

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB;->wrappers:Ljava/util/Map;

    .line 61
    new-instance v0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB$1;

    invoke-direct {v0, p0}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB$1;-><init>(Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB;)V

    iput-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB;->powerSaveSleepTask:Ljava/lang/Runnable;

    .line 73
    new-instance v0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB$2;

    invoke-direct {v0, p0}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB$2;-><init>(Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB;)V

    iput-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB;->powerSaveScanTask:Ljava/lang/Runnable;

    .line 233
    new-instance v0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB$3;

    invoke-direct {v0, p0}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB$3;-><init>(Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB;)V

    iput-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB;->scanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    return-void
.end method

.method static synthetic access$000(Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB;)J
    .locals 2

    .line 47
    iget-wide v0, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB;->powerSaveRestInterval:J

    return-wide v0
.end method

.method static synthetic access$100(Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB;)J
    .locals 2

    .line 47
    iget-wide v0, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB;->powerSaveScanInterval:J

    return-wide v0
.end method

.method static synthetic access$200(Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB;)Landroid/bluetooth/BluetoothAdapter$LeScanCallback;
    .locals 0

    .line 47
    iget-object p0, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB;->scanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    return-object p0
.end method

.method static synthetic access$300(Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB;)Ljava/lang/Runnable;
    .locals 0

    .line 47
    iget-object p0, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB;->powerSaveScanTask:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$400(Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB;)Landroid/os/Handler;
    .locals 0

    .line 47
    iget-object p0, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB;->powerSaveHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$500(Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB;)Ljava/lang/Runnable;
    .locals 0

    .line 47
    iget-object p0, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB;->powerSaveSleepTask:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$600(Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB;)Ljava/util/Map;
    .locals 0

    .line 47
    iget-object p0, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB;->wrappers:Ljava/util/Map;

    return-object p0
.end method

.method private setPowerSaveSettings()V
    .locals 12

    .line 203
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB;->wrappers:Ljava/util/Map;

    monitor-enter v0

    .line 204
    :try_start_0
    iget-object v1, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB;->wrappers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide v2, 0x7fffffffffffffffL

    move-wide v4, v2

    move-wide v6, v4

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;

    .line 205
    iget-object v8, v8, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->scanSettings:Lno/nordicsemi/android/support/v18/scanner/ScanSettings;

    .line 206
    invoke-virtual {v8}, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->hasPowerSaveMode()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 207
    invoke-virtual {v8}, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->getPowerSaveRest()J

    move-result-wide v9

    cmp-long v11, v4, v9

    if-lez v11, :cond_1

    .line 208
    invoke-virtual {v8}, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->getPowerSaveRest()J

    move-result-wide v4

    .line 210
    :cond_1
    invoke-virtual {v8}, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->getPowerSaveScan()J

    move-result-wide v9

    cmp-long v11, v6, v9

    if-lez v11, :cond_0

    .line 211
    invoke-virtual {v8}, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->getPowerSaveScan()J

    move-result-wide v6

    goto :goto_0

    .line 215
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, v4, v2

    if-gez v0, :cond_3

    cmp-long v0, v6, v2

    if-gez v0, :cond_3

    .line 217
    iput-wide v4, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB;->powerSaveRestInterval:J

    .line 218
    iput-wide v6, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB;->powerSaveScanInterval:J

    .line 219
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB;->powerSaveHandler:Landroid/os/Handler;

    if-eqz v0, :cond_4

    .line 220
    iget-object v1, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB;->powerSaveScanTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 221
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB;->powerSaveHandler:Landroid/os/Handler;

    iget-object v1, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB;->powerSaveSleepTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 222
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB;->powerSaveHandler:Landroid/os/Handler;

    iget-object v1, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB;->powerSaveSleepTask:Ljava/lang/Runnable;

    iget-wide v2, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB;->powerSaveScanInterval:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_3
    const-wide/16 v0, 0x0

    .line 225
    iput-wide v0, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB;->powerSaveScanInterval:J

    iput-wide v0, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB;->powerSaveRestInterval:J

    .line 226
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB;->powerSaveHandler:Landroid/os/Handler;

    if-eqz v0, :cond_4

    .line 227
    iget-object v1, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB;->powerSaveScanTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 228
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB;->powerSaveHandler:Landroid/os/Handler;

    iget-object v1, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB;->powerSaveSleepTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_4
    :goto_1
    return-void

    :catchall_0
    move-exception v1

    .line 215
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public flushPendingScanResults(Lno/nordicsemi/android/support/v18/scanner/ScanCallback;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 186
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB;->wrappers:Ljava/util/Map;

    monitor-enter v0

    .line 187
    :try_start_0
    iget-object v1, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB;->wrappers:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;

    .line 188
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 194
    invoke-virtual {p1}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->flushPendingScanResults()V

    return-void

    .line 191
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "callback not registered!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 188
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 182
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "callback cannot be null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method startScanInternal(Ljava/util/List;Lno/nordicsemi/android/support/v18/scanner/ScanSettings;Landroid/content/Context;Landroid/app/PendingIntent;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lno/nordicsemi/android/support/v18/scanner/ScanFilter;",
            ">;",
            "Lno/nordicsemi/android/support/v18/scanner/ScanSettings;",
            "Landroid/content/Context;",
            "Landroid/app/PendingIntent;",
            ")V"
        }
    .end annotation

    .line 159
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lno/nordicsemi/android/support/v18/scanner/ScannerService;

    invoke-direct {v0, p3, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 160
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p1, "no.nordicsemi.android.support.v18.EXTRA_FILTERS"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string p1, "no.nordicsemi.android.support.v18.EXTRA_SETTINGS"

    .line 161
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "no.nordicsemi.android.support.v18.EXTRA_PENDING_INTENT"

    .line 162
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "no.nordicsemi.android.support.v18.EXTRA_START"

    const/4 p2, 0x1

    .line 163
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 164
    invoke-virtual {p3, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method startScanInternal(Ljava/util/List;Lno/nordicsemi/android/support/v18/scanner/ScanSettings;Lno/nordicsemi/android/support/v18/scanner/ScanCallback;Landroid/os/Handler;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lno/nordicsemi/android/support/v18/scanner/ScanFilter;",
            ">;",
            "Lno/nordicsemi/android/support/v18/scanner/ScanSettings;",
            "Lno/nordicsemi/android/support/v18/scanner/ScanCallback;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 93
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB;->wrappers:Ljava/util/Map;

    monitor-enter v1

    .line 98
    :try_start_0
    iget-object v2, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB;->wrappers:Ljava/util/Map;

    invoke-interface {v2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 101
    new-instance v2, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v2

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    invoke-direct/range {v3 .. v9}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;-><init>(ZZLjava/util/List;Lno/nordicsemi/android/support/v18/scanner/ScanSettings;Lno/nordicsemi/android/support/v18/scanner/ScanCallback;Landroid/os/Handler;)V

    .line 104
    iget-object p1, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB;->wrappers:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    .line 105
    iget-object p2, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB;->wrappers:Ljava/util/Map;

    invoke-interface {p2, p3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    iget-object p2, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB;->handlerThread:Landroid/os/HandlerThread;

    if-nez p2, :cond_0

    .line 109
    new-instance p2, Landroid/os/HandlerThread;

    const-class p3, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB;

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB;->handlerThread:Landroid/os/HandlerThread;

    .line 110
    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    .line 111
    new-instance p2, Landroid/os/Handler;

    iget-object p3, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB;->powerSaveHandler:Landroid/os/Handler;

    .line 114
    :cond_0
    invoke-direct {p0}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB;->setPowerSaveSettings()V

    if-eqz p1, :cond_1

    .line 117
    iget-object p1, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB;->scanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    :cond_1
    return-void

    .line 99
    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "scanner already started with given scanCallback"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 106
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method stopScanInternal(Landroid/content/Context;Landroid/app/PendingIntent;)V
    .locals 2

    .line 171
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lno/nordicsemi/android/support/v18/scanner/ScannerService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "no.nordicsemi.android.support.v18.EXTRA_PENDING_INTENT"

    .line 172
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p2, "no.nordicsemi.android.support.v18.EXTRA_START"

    const/4 v1, 0x0

    .line 173
    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 174
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method stopScanInternal(Lno/nordicsemi/android/support/v18/scanner/ScanCallback;)V
    .locals 3

    .line 124
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 128
    iget-object v1, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB;->wrappers:Ljava/util/Map;

    monitor-enter v1

    .line 129
    :try_start_0
    iget-object v2, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB;->wrappers:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;

    .line 130
    iget-object v2, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB;->wrappers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    .line 131
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    return-void

    .line 135
    :cond_0
    invoke-virtual {p1}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->close()V

    .line 137
    invoke-direct {p0}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB;->setPowerSaveSettings()V

    if-eqz v2, :cond_2

    .line 140
    iget-object p1, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB;->scanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    .line 142
    iget-object p1, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB;->powerSaveHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 143
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 146
    :cond_1
    iget-object p1, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB;->handlerThread:Landroid/os/HandlerThread;

    if-eqz p1, :cond_2

    .line 147
    invoke-virtual {p1}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 148
    iput-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB;->handlerThread:Landroid/os/HandlerThread;

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 131
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
