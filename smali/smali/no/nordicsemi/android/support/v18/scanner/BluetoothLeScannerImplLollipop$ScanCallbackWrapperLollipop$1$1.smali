.class Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop$1$1;
.super Ljava/lang/Object;
.source "BluetoothLeScannerImplLollipop.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop$1;->onScanResult(ILandroid/bluetooth/le/ScanResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop$1;

.field final synthetic val$callbackType:I

.field final synthetic val$nativeScanResult:Landroid/bluetooth/le/ScanResult;


# direct methods
.method constructor <init>(Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop$1;Landroid/bluetooth/le/ScanResult;I)V
    .locals 0

    .line 244
    iput-object p1, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop$1$1;->this$1:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop$1;

    iput-object p2, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop$1$1;->val$nativeScanResult:Landroid/bluetooth/le/ScanResult;

    iput p3, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop$1$1;->val$callbackType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 248
    invoke-static {}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat;->getScanner()Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat;

    move-result-object v0

    check-cast v0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop;

    .line 249
    iget-object v1, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop$1$1;->val$nativeScanResult:Landroid/bluetooth/le/ScanResult;

    invoke-virtual {v0, v1}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop;->fromNativeScanResult(Landroid/bluetooth/le/ScanResult;)Lno/nordicsemi/android/support/v18/scanner/ScanResult;

    move-result-object v0

    .line 250
    iget-object v1, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop$1$1;->this$1:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop$1;

    iget-object v1, v1, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop$1;->this$0:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop;

    iget v2, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop$1$1;->val$callbackType:I

    invoke-virtual {v1, v2, v0}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop;->handleScanResult(ILno/nordicsemi/android/support/v18/scanner/ScanResult;)V

    return-void
.end method
