.class Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop$1$2;
.super Ljava/lang/Object;
.source "BluetoothLeScannerImplLollipop.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop$1;->onBatchScanResults(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop$1;

.field final synthetic val$nativeScanResults:Ljava/util/List;


# direct methods
.method constructor <init>(Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop$1;Ljava/util/List;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop$1$2;->this$1:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop$1;

    iput-object p2, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop$1$2;->val$nativeScanResults:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 262
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 263
    iget-object v2, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop$1$2;->this$1:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop$1;

    invoke-static {v2}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop$1;->access$200(Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop$1;)J

    move-result-wide v2

    iget-object v4, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop$1$2;->this$1:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop$1;

    iget-object v4, v4, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop$1;->this$0:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop;

    iget-object v4, v4, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop;->scanSettings:Lno/nordicsemi/android/support/v18/scanner/ScanSettings;

    invoke-virtual {v4}, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->getReportDelayMillis()J

    move-result-wide v4

    sub-long v4, v0, v4

    const-wide/16 v6, 0x5

    add-long/2addr v4, v6

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    return-void

    .line 266
    :cond_0
    iget-object v2, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop$1$2;->this$1:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop$1;

    invoke-static {v2, v0, v1}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop$1;->access$202(Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop$1;J)J

    .line 269
    invoke-static {}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat;->getScanner()Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat;

    move-result-object v0

    check-cast v0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop;

    .line 270
    iget-object v1, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop$1$2;->val$nativeScanResults:Ljava/util/List;

    invoke-virtual {v0, v1}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop;->fromNativeScanResults(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    .line 271
    iget-object v1, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop$1$2;->this$1:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop$1;

    iget-object v1, v1, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop$1;->this$0:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop;

    invoke-virtual {v1, v0}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop;->handleScanResults(Ljava/util/List;)V

    return-void
.end method
