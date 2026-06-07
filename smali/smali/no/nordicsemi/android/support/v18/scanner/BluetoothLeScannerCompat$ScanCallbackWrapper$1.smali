.class Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper$1;
.super Ljava/lang/Object;
.source "BluetoothLeScannerCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;


# direct methods
.method constructor <init>(Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;)V
    .locals 0

    .line 358
    iput-object p1, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper$1;->this$0:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 361
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper$1;->this$0:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;

    invoke-static {v0}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->access$000(Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 362
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper$1;->this$0:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;

    invoke-virtual {v0}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->flushPendingScanResults()V

    .line 363
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper$1;->this$0:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;

    iget-object v0, v0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper$1;->this$0:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;

    iget-object v1, v1, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->scanSettings:Lno/nordicsemi/android/support/v18/scanner/ScanSettings;

    invoke-virtual {v1}, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->getReportDelayMillis()J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
