.class Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper$2$1;
.super Ljava/lang/Object;
.source "BluetoothLeScannerCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper$2;

.field final synthetic val$result:Lno/nordicsemi/android/support/v18/scanner/ScanResult;


# direct methods
.method constructor <init>(Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper$2;Lno/nordicsemi/android/support/v18/scanner/ScanResult;)V
    .locals 0

    .line 381
    iput-object p1, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper$2$1;->this$1:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper$2;

    iput-object p2, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper$2$1;->val$result:Lno/nordicsemi/android/support/v18/scanner/ScanResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 384
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper$2$1;->this$1:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper$2;

    iget-object v0, v0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper$2;->this$0:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;

    iget-object v0, v0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->scanCallback:Lno/nordicsemi/android/support/v18/scanner/ScanCallback;

    iget-object v1, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper$2$1;->val$result:Lno/nordicsemi/android/support/v18/scanner/ScanResult;

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Lno/nordicsemi/android/support/v18/scanner/ScanCallback;->onScanResult(ILno/nordicsemi/android/support/v18/scanner/ScanResult;)V

    return-void
.end method
