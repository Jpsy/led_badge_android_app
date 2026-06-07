.class Lcom/yannis/ledcard/ble/BLEScanner$2;
.super Lno/nordicsemi/android/support/v18/scanner/ScanCallback;
.source "BLEScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yannis/ledcard/ble/BLEScanner;->startScanBluetoothDevice()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yannis/ledcard/ble/BLEScanner;


# direct methods
.method constructor <init>(Lcom/yannis/ledcard/ble/BLEScanner;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/yannis/ledcard/ble/BLEScanner$2;->this$0:Lcom/yannis/ledcard/ble/BLEScanner;

    invoke-direct {p0}, Lno/nordicsemi/android/support/v18/scanner/ScanCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onBatchScanResults$0$com-yannis-ledcard-ble-BLEScanner$2()V
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/yannis/ledcard/ble/BLEScanner$2;->this$0:Lcom/yannis/ledcard/ble/BLEScanner;

    invoke-static {v0}, Lcom/yannis/ledcard/ble/BLEScanner;->access$300(Lcom/yannis/ledcard/ble/BLEScanner;)Lcom/yannis/ledcard/ble/BLEScanner$OnDeviceScanListener;

    move-result-object v0

    iget-object v1, p0, Lcom/yannis/ledcard/ble/BLEScanner$2;->this$0:Lcom/yannis/ledcard/ble/BLEScanner;

    invoke-static {v1}, Lcom/yannis/ledcard/ble/BLEScanner;->access$100(Lcom/yannis/ledcard/ble/BLEScanner;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/yannis/ledcard/ble/BLEScanner$OnDeviceScanListener;->onDeviceScan(Ljava/util/List;)V

    return-void
.end method

.method public onBatchScanResults(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lno/nordicsemi/android/support/v18/scanner/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 187
    invoke-super {p0, p1}, Lno/nordicsemi/android/support/v18/scanner/ScanCallback;->onBatchScanResults(Ljava/util/List;)V

    .line 188
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lno/nordicsemi/android/support/v18/scanner/ScanResult;

    .line 189
    invoke-virtual {v0}, Lno/nordicsemi/android/support/v18/scanner/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    .line 190
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "LS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    iget-object v1, p0, Lcom/yannis/ledcard/ble/BLEScanner$2;->this$0:Lcom/yannis/ledcard/ble/BLEScanner;

    invoke-static {v1}, Lcom/yannis/ledcard/ble/BLEScanner;->access$100(Lcom/yannis/ledcard/ble/BLEScanner;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/yannis/ledcard/ble/ScanDevice;

    invoke-virtual {v0}, Lno/nordicsemi/android/support/v18/scanner/ScanResult;->getRssi()I

    move-result v3

    invoke-virtual {v0}, Lno/nordicsemi/android/support/v18/scanner/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/yannis/ledcard/ble/ScanDevice;-><init>(ILandroid/bluetooth/BluetoothDevice;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 194
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 195
    iget-object v0, p0, Lcom/yannis/ledcard/ble/BLEScanner$2;->this$0:Lcom/yannis/ledcard/ble/BLEScanner;

    invoke-static {v0}, Lcom/yannis/ledcard/ble/BLEScanner;->access$100(Lcom/yannis/ledcard/ble/BLEScanner;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const/4 v0, 0x0

    .line 196
    :goto_1
    iget-object v1, p0, Lcom/yannis/ledcard/ble/BLEScanner$2;->this$0:Lcom/yannis/ledcard/ble/BLEScanner;

    invoke-static {v1}, Lcom/yannis/ledcard/ble/BLEScanner;->access$100(Lcom/yannis/ledcard/ble/BLEScanner;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yannis/ledcard/ble/BLEScanner$2;->this$0:Lcom/yannis/ledcard/ble/BLEScanner;

    invoke-static {v2}, Lcom/yannis/ledcard/ble/BLEScanner;->access$100(Lcom/yannis/ledcard/ble/BLEScanner;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yannis/ledcard/ble/ScanDevice;

    invoke-virtual {v2}, Lcom/yannis/ledcard/ble/ScanDevice;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "*********>>>"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/yannis/ledcard/ble/BLEScanner$2;->this$0:Lcom/yannis/ledcard/ble/BLEScanner;

    invoke-static {v2}, Lcom/yannis/ledcard/ble/BLEScanner;->access$100(Lcom/yannis/ledcard/ble/BLEScanner;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yannis/ledcard/ble/ScanDevice;

    invoke-virtual {v2}, Lcom/yannis/ledcard/ble/ScanDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yannis/ledcard/ble/BLEScanner$2;->this$0:Lcom/yannis/ledcard/ble/BLEScanner;

    invoke-static {v2}, Lcom/yannis/ledcard/ble/BLEScanner;->access$100(Lcom/yannis/ledcard/ble/BLEScanner;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yannis/ledcard/ble/ScanDevice;

    invoke-virtual {v2}, Lcom/yannis/ledcard/ble/ScanDevice;->getRssi()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 200
    :cond_2
    iget-object v0, p0, Lcom/yannis/ledcard/ble/BLEScanner$2;->this$0:Lcom/yannis/ledcard/ble/BLEScanner;

    invoke-static {v0}, Lcom/yannis/ledcard/ble/BLEScanner;->access$100(Lcom/yannis/ledcard/ble/BLEScanner;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 201
    iget-object v0, p0, Lcom/yannis/ledcard/ble/BLEScanner$2;->this$0:Lcom/yannis/ledcard/ble/BLEScanner;

    invoke-static {v0}, Lcom/yannis/ledcard/ble/BLEScanner;->access$200(Lcom/yannis/ledcard/ble/BLEScanner;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/yannis/ledcard/ble/BLEScanner$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/yannis/ledcard/ble/BLEScanner$2$$ExternalSyntheticLambda0;-><init>(Lcom/yannis/ledcard/ble/BLEScanner$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 202
    iget-object v0, p0, Lcom/yannis/ledcard/ble/BLEScanner$2;->this$0:Lcom/yannis/ledcard/ble/BLEScanner;

    invoke-static {v0}, Lcom/yannis/ledcard/ble/BLEScanner;->access$300(Lcom/yannis/ledcard/ble/BLEScanner;)Lcom/yannis/ledcard/ble/BLEScanner$OnDeviceScanListener;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/yannis/ledcard/ble/BLEScanner$OnDeviceScanListener;->logInfo(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public onScanFailed(I)V
    .locals 0

    .line 208
    invoke-super {p0, p1}, Lno/nordicsemi/android/support/v18/scanner/ScanCallback;->onScanFailed(I)V

    return-void
.end method

.method public onScanResult(ILno/nordicsemi/android/support/v18/scanner/ScanResult;)V
    .locals 0

    .line 181
    invoke-super {p0, p1, p2}, Lno/nordicsemi/android/support/v18/scanner/ScanCallback;->onScanResult(ILno/nordicsemi/android/support/v18/scanner/ScanResult;)V

    return-void
.end method
