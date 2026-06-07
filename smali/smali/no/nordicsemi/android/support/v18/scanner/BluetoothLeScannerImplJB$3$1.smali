.class Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB$3$1;
.super Ljava/lang/Object;
.source "BluetoothLeScannerImplJB.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB$3;->onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB$3;

.field final synthetic val$scanResult:Lno/nordicsemi/android/support/v18/scanner/ScanResult;

.field final synthetic val$wrapper:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;


# direct methods
.method constructor <init>(Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB$3;Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;Lno/nordicsemi/android/support/v18/scanner/ScanResult;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB$3$1;->this$1:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB$3;

    iput-object p2, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB$3$1;->val$wrapper:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;

    iput-object p3, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB$3$1;->val$scanResult:Lno/nordicsemi/android/support/v18/scanner/ScanResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 245
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB$3$1;->val$wrapper:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;

    iget-object v1, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB$3$1;->val$scanResult:Lno/nordicsemi/android/support/v18/scanner/ScanResult;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->handleScanResult(ILno/nordicsemi/android/support/v18/scanner/ScanResult;)V

    return-void
.end method
