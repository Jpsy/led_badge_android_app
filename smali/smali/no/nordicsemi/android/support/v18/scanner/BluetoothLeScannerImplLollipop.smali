.class Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop;
.super Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat;
.source "BluetoothLeScannerImplLollipop.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop;
    }
.end annotation


# instance fields
.field private final wrappers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lno/nordicsemi/android/support/v18/scanner/ScanCallback;",
            "Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat;-><init>()V

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop;->wrappers:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public flushPendingScanResults(Lno/nordicsemi/android/support/v18/scanner/ScanCallback;)V
    .locals 3

    .line 137
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz p1, :cond_3

    .line 144
    iget-object v1, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop;->wrappers:Ljava/util/Map;

    monitor-enter v1

    .line 145
    :try_start_0
    iget-object v2, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop;->wrappers:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop;

    .line 146
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    .line 152
    iget-object v1, p1, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop;->scanSettings:Lno/nordicsemi/android/support/v18/scanner/ScanSettings;

    .line 153
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isOffloadedScanBatchingSupported()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->getUseHardwareBatchingIfSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 154
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 157
    :cond_0
    invoke-static {p1}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop;->access$100(Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop;)Landroid/bluetooth/le/ScanCallback;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/bluetooth/le/BluetoothLeScanner;->flushPendingScanResults(Landroid/bluetooth/le/ScanCallback;)V

    goto :goto_0

    .line 159
    :cond_1
    invoke-virtual {p1}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop;->flushPendingScanResults()V

    :goto_0
    return-void

    .line 149
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "callback not registered!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 146
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 140
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "callback cannot be null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method fromNativeScanResult(Landroid/bluetooth/le/ScanResult;)Lno/nordicsemi/android/support/v18/scanner/ScanResult;
    .locals 8

    .line 210
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanRecord;->getBytes()[B

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 212
    :goto_0
    new-instance v7, Lno/nordicsemi/android/support/v18/scanner/ScanResult;

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-static {v0}, Lno/nordicsemi/android/support/v18/scanner/ScanRecord;->parseFromBytes([B)Lno/nordicsemi/android/support/v18/scanner/ScanRecord;

    move-result-object v3

    .line 213
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getRssi()I

    move-result v4

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getTimestampNanos()J

    move-result-wide v5

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lno/nordicsemi/android/support/v18/scanner/ScanResult;-><init>(Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/support/v18/scanner/ScanRecord;IJ)V

    return-object v7
.end method

.method fromNativeScanResults(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanResult;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lno/nordicsemi/android/support/v18/scanner/ScanResult;",
            ">;"
        }
    .end annotation

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 219
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/le/ScanResult;

    .line 220
    invoke-virtual {p0, v1}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop;->fromNativeScanResult(Landroid/bluetooth/le/ScanResult;)Lno/nordicsemi/android/support/v18/scanner/ScanResult;

    move-result-object v1

    .line 221
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
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

    .line 111
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lno/nordicsemi/android/support/v18/scanner/ScannerService;

    invoke-direct {v0, p3, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 117
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p1, "no.nordicsemi.android.support.v18.EXTRA_FILTERS"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string p1, "no.nordicsemi.android.support.v18.EXTRA_SETTINGS"

    .line 118
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "no.nordicsemi.android.support.v18.EXTRA_PENDING_INTENT"

    .line 119
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p1, 0x1

    const-string p2, "no.nordicsemi.android.support.v18.EXTRA_START"

    .line 120
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 121
    invoke-virtual {p3, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    .line 114
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "BT le scanner not available"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method startScanInternal(Ljava/util/List;Lno/nordicsemi/android/support/v18/scanner/ScanSettings;Lno/nordicsemi/android/support/v18/scanner/ScanCallback;Landroid/os/Handler;)V
    .locals 15
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

    move-object v1, p0

    move-object/from16 v0, p3

    .line 58
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v10

    .line 59
    invoke-virtual {v10}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 63
    invoke-virtual {v10}, Landroid/bluetooth/BluetoothAdapter;->isOffloadedScanBatchingSupported()Z

    move-result v3

    .line 64
    invoke-virtual {v10}, Landroid/bluetooth/BluetoothAdapter;->isOffloadedFilteringSupported()Z

    move-result v12

    .line 68
    iget-object v13, v1, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop;->wrappers:Ljava/util/Map;

    monitor-enter v13

    .line 69
    :try_start_0
    iget-object v2, v1, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop;->wrappers:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 72
    new-instance v14, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop;

    const/4 v9, 0x0

    move-object v2, v14

    move v4, v12

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-direct/range {v2 .. v9}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop;-><init>(ZZLjava/util/List;Lno/nordicsemi/android/support/v18/scanner/ScanSettings;Lno/nordicsemi/android/support/v18/scanner/ScanCallback;Landroid/os/Handler;Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$1;)V

    .line 74
    iget-object v2, v1, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop;->wrappers:Ljava/util/Map;

    invoke-interface {v2, v0, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    move-object/from16 v2, p2

    .line 77
    invoke-virtual {p0, v10, v2, v0}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop;->toNativeScanSettings(Landroid/bluetooth/BluetoothAdapter;Lno/nordicsemi/android/support/v18/scanner/ScanSettings;Z)Landroid/bluetooth/le/ScanSettings;

    move-result-object v0

    const/4 v3, 0x0

    .line 79
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v12, :cond_0

    invoke-virtual/range {p2 .. p2}, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->getUseHardwareFilteringIfSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 80
    invoke-virtual/range {p0 .. p1}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop;->toNativeScanFilters(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v3

    .line 82
    :cond_0
    invoke-static {v14}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop;->access$100(Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop;)Landroid/bluetooth/le/ScanCallback;

    move-result-object v2

    invoke-virtual {v11, v3, v0, v2}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V

    return-void

    .line 70
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "scanner already started with given callback"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 75
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 61
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "BT le scanner not available"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method stopScanInternal(Landroid/content/Context;Landroid/app/PendingIntent;)V
    .locals 2

    .line 128
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lno/nordicsemi/android/support/v18/scanner/ScannerService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "no.nordicsemi.android.support.v18.EXTRA_PENDING_INTENT"

    .line 129
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p2, "no.nordicsemi.android.support.v18.EXTRA_START"

    const/4 v1, 0x0

    .line 130
    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 131
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method stopScanInternal(Lno/nordicsemi/android/support/v18/scanner/ScanCallback;)V
    .locals 2

    .line 89
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop;->wrappers:Ljava/util/Map;

    monitor-enter v0

    .line 90
    :try_start_0
    iget-object v1, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop;->wrappers:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop;

    .line 91
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    return-void

    .line 95
    :cond_0
    invoke-virtual {p1}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop;->close()V

    .line 97
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 99
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 101
    invoke-static {p1}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop;->access$100(Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop;)Landroid/bluetooth/le/ScanCallback;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 91
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method toNativeScanFilter(Lno/nordicsemi/android/support/v18/scanner/ScanFilter;)Landroid/bluetooth/le/ScanFilter;
    .locals 5

    .line 196
    new-instance v0, Landroid/bluetooth/le/ScanFilter$Builder;

    invoke-direct {v0}, Landroid/bluetooth/le/ScanFilter$Builder;-><init>()V

    .line 197
    invoke-virtual {p1}, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->getDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/ScanFilter$Builder;->setDeviceAddress(Ljava/lang/String;)Landroid/bluetooth/le/ScanFilter$Builder;

    move-result-object v1

    .line 198
    invoke-virtual {p1}, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/bluetooth/le/ScanFilter$Builder;->setDeviceName(Ljava/lang/String;)Landroid/bluetooth/le/ScanFilter$Builder;

    move-result-object v1

    .line 199
    invoke-virtual {p1}, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->getServiceUuid()Landroid/os/ParcelUuid;

    move-result-object v2

    invoke-virtual {p1}, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->getServiceUuidMask()Landroid/os/ParcelUuid;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/le/ScanFilter$Builder;->setServiceUuid(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Landroid/bluetooth/le/ScanFilter$Builder;

    move-result-object v1

    .line 200
    invoke-virtual {p1}, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->getManufacturerId()I

    move-result v2

    invoke-virtual {p1}, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->getManufacturerData()[B

    move-result-object v3

    invoke-virtual {p1}, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->getManufacturerDataMask()[B

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/bluetooth/le/ScanFilter$Builder;->setManufacturerData(I[B[B)Landroid/bluetooth/le/ScanFilter$Builder;

    .line 202
    invoke-virtual {p1}, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->getServiceDataUuid()Landroid/os/ParcelUuid;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 203
    invoke-virtual {p1}, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->getServiceDataUuid()Landroid/os/ParcelUuid;

    move-result-object v1

    invoke-virtual {p1}, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->getServiceData()[B

    move-result-object v2

    invoke-virtual {p1}, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->getServiceDataMask()[B

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Landroid/bluetooth/le/ScanFilter$Builder;->setServiceData(Landroid/os/ParcelUuid;[B[B)Landroid/bluetooth/le/ScanFilter$Builder;

    .line 205
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/le/ScanFilter$Builder;->build()Landroid/bluetooth/le/ScanFilter;

    move-result-object p1

    return-object p1
.end method

.method toNativeScanFilters(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lno/nordicsemi/android/support/v18/scanner/ScanFilter;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;"
        }
    .end annotation

    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 189
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;

    .line 190
    invoke-virtual {p0, v1}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop;->toNativeScanFilter(Lno/nordicsemi/android/support/v18/scanner/ScanFilter;)Landroid/bluetooth/le/ScanFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method toNativeScanSettings(Landroid/bluetooth/BluetoothAdapter;Lno/nordicsemi/android/support/v18/scanner/ScanSettings;Z)Landroid/bluetooth/le/ScanSettings;
    .locals 3

    .line 167
    new-instance v0, Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-direct {v0}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    if-nez p3, :cond_0

    .line 170
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->isOffloadedScanBatchingSupported()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->getUseHardwareBatchingIfSupported()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 171
    :cond_0
    invoke-virtual {p2}, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->getReportDelayMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/le/ScanSettings$Builder;->setReportDelay(J)Landroid/bluetooth/le/ScanSettings$Builder;

    .line 173
    :cond_1
    invoke-virtual {p2}, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->getScanMode()I

    move-result p1

    const/4 p3, -0x1

    if-eq p1, p3, :cond_2

    .line 174
    invoke-virtual {p2}, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->getScanMode()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 178
    invoke-virtual {v0, p1}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    .line 181
    :goto_0
    invoke-virtual {p2}, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->disableUseHardwareCallbackTypes()V

    .line 183
    invoke-virtual {v0}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    move-result-object p1

    return-object p1
.end method
