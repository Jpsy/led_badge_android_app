.class Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop$1;
.super Landroid/bluetooth/le/ScanCallback;
.source "BluetoothLeScannerImplLollipop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private lastBatchTimestamp:J

.field final synthetic this$0:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop;


# direct methods
.method constructor <init>(Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop$1;->this$0:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop;

    invoke-direct {p0}, Landroid/bluetooth/le/ScanCallback;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop$1;)J
    .locals 2

    .line 239
    iget-wide v0, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop$1;->lastBatchTimestamp:J

    return-wide v0
.end method

.method static synthetic access$202(Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop$1;J)J
    .locals 0

    .line 239
    iput-wide p1, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop$1;->lastBatchTimestamp:J

    return-wide p1
.end method


# virtual methods
.method public onBatchScanResults(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 257
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop$1;->this$0:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop;

    iget-object v0, v0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop;->handler:Landroid/os/Handler;

    new-instance v1, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop$1$2;

    invoke-direct {v1, p0, p1}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop$1$2;-><init>(Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop$1;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onScanFailed(I)V
    .locals 2

    .line 278
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop$1;->this$0:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop;

    iget-object v0, v0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop;->handler:Landroid/os/Handler;

    new-instance v1, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop$1$3;

    invoke-direct {v1, p0, p1}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop$1$3;-><init>(Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop$1;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onScanResult(ILandroid/bluetooth/le/ScanResult;)V
    .locals 2

    .line 244
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop$1;->this$0:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop;

    iget-object v0, v0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop;->handler:Landroid/os/Handler;

    new-instance v1, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop$1$1;

    invoke-direct {v1, p0, p2, p1}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop$1$1;-><init>(Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop$1;Landroid/bluetooth/le/ScanResult;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
