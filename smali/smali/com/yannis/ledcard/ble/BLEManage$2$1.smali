.class Lcom/yannis/ledcard/ble/BLEManage$2$1;
.super Ljava/lang/Object;
.source "BLEManage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yannis/ledcard/ble/BLEManage$2;->onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yannis/ledcard/ble/BLEManage$2;

.field final synthetic val$device:Landroid/bluetooth/BluetoothDevice;

.field final synthetic val$rssi:I


# direct methods
.method constructor <init>(Lcom/yannis/ledcard/ble/BLEManage$2;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/yannis/ledcard/ble/BLEManage$2$1;->this$1:Lcom/yannis/ledcard/ble/BLEManage$2;

    iput-object p2, p0, Lcom/yannis/ledcard/ble/BLEManage$2$1;->val$device:Landroid/bluetooth/BluetoothDevice;

    iput p3, p0, Lcom/yannis/ledcard/ble/BLEManage$2$1;->val$rssi:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 86
    iget-object v0, p0, Lcom/yannis/ledcard/ble/BLEManage$2$1;->this$1:Lcom/yannis/ledcard/ble/BLEManage$2;

    iget-object v0, v0, Lcom/yannis/ledcard/ble/BLEManage$2;->this$0:Lcom/yannis/ledcard/ble/BLEManage;

    invoke-static {v0}, Lcom/yannis/ledcard/ble/BLEManage;->access$000(Lcom/yannis/ledcard/ble/BLEManage;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/yannis/ledcard/ble/BLEManage$2$1;->val$device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/yannis/ledcard/ble/BLEManage$2$1;->this$1:Lcom/yannis/ledcard/ble/BLEManage$2;

    iget-object v0, v0, Lcom/yannis/ledcard/ble/BLEManage$2;->this$0:Lcom/yannis/ledcard/ble/BLEManage;

    invoke-static {v0}, Lcom/yannis/ledcard/ble/BLEManage;->access$000(Lcom/yannis/ledcard/ble/BLEManage;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/yannis/ledcard/ble/BLEManage$2$1;->val$device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v0, p0, Lcom/yannis/ledcard/ble/BLEManage$2$1;->this$1:Lcom/yannis/ledcard/ble/BLEManage$2;

    iget-object v0, v0, Lcom/yannis/ledcard/ble/BLEManage$2;->this$0:Lcom/yannis/ledcard/ble/BLEManage;

    invoke-static {v0}, Lcom/yannis/ledcard/ble/BLEManage;->access$100(Lcom/yannis/ledcard/ble/BLEManage;)Lcom/yannis/ledcard/ble/BLEManage$BLEManageListener;

    move-result-object v0

    iget-object v1, p0, Lcom/yannis/ledcard/ble/BLEManage$2$1;->val$device:Landroid/bluetooth/BluetoothDevice;

    iget v2, p0, Lcom/yannis/ledcard/ble/BLEManage$2$1;->val$rssi:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/yannis/ledcard/ble/BLEManage$BLEManageListener;->BLEDeviceScanListener(Landroid/bluetooth/BluetoothDevice;I[BI)V

    :cond_0
    return-void
.end method
