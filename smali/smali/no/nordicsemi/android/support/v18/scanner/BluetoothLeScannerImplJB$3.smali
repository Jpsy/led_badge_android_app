.class Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB$3;
.super Ljava/lang/Object;
.source "BluetoothLeScannerImplJB.java"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB;


# direct methods
.method constructor <init>(Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB$3;->this$0:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 7

    .line 236
    new-instance v6, Lno/nordicsemi/android/support/v18/scanner/ScanResult;

    invoke-static {p3}, Lno/nordicsemi/android/support/v18/scanner/ScanRecord;->parseFromBytes([B)Lno/nordicsemi/android/support/v18/scanner/ScanRecord;

    move-result-object v2

    .line 237
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    move-object v0, v6

    move-object v1, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lno/nordicsemi/android/support/v18/scanner/ScanResult;-><init>(Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/support/v18/scanner/ScanRecord;IJ)V

    .line 239
    iget-object p1, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB$3;->this$0:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB;

    invoke-static {p1}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB;->access$600(Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB;)Ljava/util/Map;

    move-result-object p1

    monitor-enter p1

    .line 240
    :try_start_0
    iget-object p2, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB$3;->this$0:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB;

    invoke-static {p2}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB;->access$600(Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    .line 241
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;

    .line 242
    iget-object v0, p3, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->handler:Landroid/os/Handler;

    new-instance v1, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB$3$1;

    invoke-direct {v1, p0, p3, v6}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB$3$1;-><init>(Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB$3;Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;Lno/nordicsemi/android/support/v18/scanner/ScanResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 249
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p2

    :goto_2
    goto :goto_1
.end method
