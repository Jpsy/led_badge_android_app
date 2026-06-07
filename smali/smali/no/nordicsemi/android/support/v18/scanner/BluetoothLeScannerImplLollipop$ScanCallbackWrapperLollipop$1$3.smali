.class Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop$1$3;
.super Ljava/lang/Object;
.source "BluetoothLeScannerImplLollipop.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop$1;->onScanFailed(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop$1;

.field final synthetic val$errorCode:I


# direct methods
.method constructor <init>(Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop$1;I)V
    .locals 0

    .line 278
    iput-object p1, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop$1$3;->this$1:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop$1;

    iput p2, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop$1$3;->val$errorCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 285
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop$1$3;->this$1:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop$1;

    iget-object v0, v0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop$1;->this$0:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop;

    iget-object v0, v0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop;->scanSettings:Lno/nordicsemi/android/support/v18/scanner/ScanSettings;

    invoke-virtual {v0}, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->getUseHardwareCallbackTypesIfSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop$1$3;->this$1:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop$1;

    iget-object v0, v0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop$1;->this$0:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop;

    iget-object v0, v0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop;->scanSettings:Lno/nordicsemi/android/support/v18/scanner/ScanSettings;

    .line 286
    invoke-virtual {v0}, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->getCallbackType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 292
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop$1$3;->this$1:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop$1;

    iget-object v0, v0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop$1;->this$0:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop;

    iget-object v0, v0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop;->scanSettings:Lno/nordicsemi/android/support/v18/scanner/ScanSettings;

    invoke-virtual {v0}, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->disableUseHardwareCallbackTypes()V

    .line 294
    invoke-static {}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat;->getScanner()Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat;

    move-result-object v0

    .line 296
    :try_start_0
    iget-object v1, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop$1$3;->this$1:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop$1;

    iget-object v1, v1, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop$1;->this$0:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop;

    iget-object v1, v1, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop;->scanCallback:Lno/nordicsemi/android/support/v18/scanner/ScanCallback;

    invoke-virtual {v0, v1}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat;->stopScan(Lno/nordicsemi/android/support/v18/scanner/ScanCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    :catch_0
    :try_start_1
    iget-object v1, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop$1$3;->this$1:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop$1;

    iget-object v1, v1, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop$1;->this$0:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop;

    iget-object v1, v1, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop;->filters:Ljava/util/List;

    iget-object v2, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop$1$3;->this$1:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop$1;

    iget-object v2, v2, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop$1;->this$0:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop;

    iget-object v2, v2, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop;->scanSettings:Lno/nordicsemi/android/support/v18/scanner/ScanSettings;

    iget-object v3, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop$1$3;->this$1:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop$1;

    iget-object v3, v3, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop$1;->this$0:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop;

    iget-object v3, v3, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop;->scanCallback:Lno/nordicsemi/android/support/v18/scanner/ScanCallback;

    iget-object v4, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop$1$3;->this$1:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop$1;

    iget-object v4, v4, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop$1;->this$0:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop;

    iget-object v4, v4, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3, v4}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat;->startScanInternal(Ljava/util/List;Lno/nordicsemi/android/support/v18/scanner/ScanSettings;Lno/nordicsemi/android/support/v18/scanner/ScanCallback;Landroid/os/Handler;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void

    .line 309
    :cond_0
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop$1$3;->this$1:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop$1;

    iget-object v0, v0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop$1;->this$0:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop;

    iget v1, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop$1$3;->val$errorCode:I

    invoke-virtual {v0, v1}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackWrapperLollipop;->handleScanError(I)V

    return-void
.end method
