.class Lcom/yannis/ledcard/ble/BLEService$1;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "BLEService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yannis/ledcard/ble/BLEService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private action:Ljava/lang/String;

.field private mac:Ljava/lang/String;

.field final synthetic this$0:Lcom/yannis/ledcard/ble/BLEService;

.field private uuid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/yannis/ledcard/ble/BLEService;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/yannis/ledcard/ble/BLEService$1;->this$0:Lcom/yannis/ledcard/ble/BLEService;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    const-string p1, ""

    .line 58
    iput-object p1, p0, Lcom/yannis/ledcard/ble/BLEService$1;->mac:Ljava/lang/String;

    .line 59
    iput-object p1, p0, Lcom/yannis/ledcard/ble/BLEService$1;->action:Ljava/lang/String;

    .line 60
    iput-object p1, p0, Lcom/yannis/ledcard/ble/BLEService$1;->uuid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 3

    .line 140
    invoke-super {p0, p1, p2}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 141
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yannis/ledcard/ble/BLEService$1;->mac:Ljava/lang/String;

    .line 142
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yannis/ledcard/ble/BLEService$1;->uuid:Ljava/lang/String;

    .line 144
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    const-string p2, "com.yannis.ledcard.ble.GATT_CHARACTERISTIC_CHANGED"

    .line 145
    iput-object p2, p0, Lcom/yannis/ledcard/ble/BLEService$1;->action:Ljava/lang/String;

    .line 146
    iget-object v0, p0, Lcom/yannis/ledcard/ble/BLEService$1;->this$0:Lcom/yannis/ledcard/ble/BLEService;

    iget-object v1, p0, Lcom/yannis/ledcard/ble/BLEService$1;->mac:Ljava/lang/String;

    iget-object v2, p0, Lcom/yannis/ledcard/ble/BLEService$1;->uuid:Ljava/lang/String;

    invoke-virtual {v0, p2, v1, v2, p1}, Lcom/yannis/ledcard/ble/BLEService;->sendBroadCastToUI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 2

    .line 105
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    .line 106
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yannis/ledcard/ble/BLEService$1;->mac:Ljava/lang/String;

    .line 107
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yannis/ledcard/ble/BLEService$1;->uuid:Ljava/lang/String;

    .line 109
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCharacteristicRead \u8bfb\u7279\u5f81\u503c  mac:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/yannis/ledcard/ble/BLEService$1;->mac:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "led-card"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_0

    const-string p1, "com.yannis.ledcard.ble.GATT_READ_SUCCESS"

    .line 111
    iput-object p1, p0, Lcom/yannis/ledcard/ble/BLEService$1;->action:Ljava/lang/String;

    .line 112
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "com.yannis.ledcard.ble.GATT_READ_FAIL"

    .line 114
    iput-object p1, p0, Lcom/yannis/ledcard/ble/BLEService$1;->action:Ljava/lang/String;

    const/4 p1, 0x0

    .line 116
    :goto_0
    iget-object p2, p0, Lcom/yannis/ledcard/ble/BLEService$1;->this$0:Lcom/yannis/ledcard/ble/BLEService;

    iget-object p3, p0, Lcom/yannis/ledcard/ble/BLEService$1;->action:Ljava/lang/String;

    iget-object v0, p0, Lcom/yannis/ledcard/ble/BLEService$1;->mac:Ljava/lang/String;

    iget-object v1, p0, Lcom/yannis/ledcard/ble/BLEService$1;->uuid:Ljava/lang/String;

    invoke-virtual {p2, p3, v0, v1, p1}, Lcom/yannis/ledcard/ble/BLEService;->sendBroadCastToUI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 2

    .line 123
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    .line 124
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yannis/ledcard/ble/BLEService$1;->mac:Ljava/lang/String;

    .line 125
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yannis/ledcard/ble/BLEService$1;->uuid:Ljava/lang/String;

    .line 126
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onCharacteristicWrite mac:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/yannis/ledcard/ble/BLEService$1;->mac:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " status:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "led-card"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_0

    const-string p1, "com.yannis.ledcard.ble.GATT_WRITE_SUCCESS"

    .line 128
    iput-object p1, p0, Lcom/yannis/ledcard/ble/BLEService$1;->action:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/16 p1, 0x85

    if-ne p3, p1, :cond_1

    .line 131
    iget-object p1, p0, Lcom/yannis/ledcard/ble/BLEService$1;->this$0:Lcom/yannis/ledcard/ble/BLEService;

    invoke-static {p1}, Lcom/yannis/ledcard/ble/BLEService;->access$000(Lcom/yannis/ledcard/ble/BLEService;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/yannis/ledcard/ble/BLEService;->destroyGatt(Landroid/bluetooth/BluetoothGatt;)V

    :cond_1
    const-string p1, "com.yannis.ledcard.ble.GATT_WRITE_FAIL"

    .line 133
    iput-object p1, p0, Lcom/yannis/ledcard/ble/BLEService$1;->action:Ljava/lang/String;

    .line 135
    :goto_0
    iget-object p1, p0, Lcom/yannis/ledcard/ble/BLEService$1;->this$0:Lcom/yannis/ledcard/ble/BLEService;

    iget-object p2, p0, Lcom/yannis/ledcard/ble/BLEService$1;->action:Ljava/lang/String;

    iget-object p3, p0, Lcom/yannis/ledcard/ble/BLEService$1;->mac:Ljava/lang/String;

    iget-object v0, p0, Lcom/yannis/ledcard/ble/BLEService$1;->uuid:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, p2, p3, v0, v1}, Lcom/yannis/ledcard/ble/BLEService;->sendBroadCastToUI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 2

    .line 66
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V

    .line 67
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yannis/ledcard/ble/BLEService$1;->mac:Ljava/lang/String;

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConnectionStateChange mac:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yannis/ledcard/ble/BLEService$1;->mac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " newState:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "led-card"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x2

    if-ne p3, p2, :cond_0

    .line 70
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/yannis/ledcard/ble/BLEService$1;->mac:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "gatt \u8fde\u63a5\u6210\u529f\u3002\u3002\u3002\u6b63\u524d\u5f80\u53d1\u73b0\u670d\u52a1"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    const-string p1, "com.yannis.ledcard.ble.GATT_CONNECTED"

    .line 72
    iput-object p1, p0, Lcom/yannis/ledcard/ble/BLEService$1;->action:Ljava/lang/String;

    goto :goto_0

    .line 74
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/yannis/ledcard/ble/BLEService$1;->mac:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "gatt \u8fde\u63a5\u5931\u8d25\u3002\u3002\u3002\u5173\u95ed\u670d\u52a1"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "com.yannis.ledcard.ble.GATT_DISCONNECTED"

    .line 75
    iput-object p2, p0, Lcom/yannis/ledcard/ble/BLEService$1;->action:Ljava/lang/String;

    .line 76
    iget-object p2, p0, Lcom/yannis/ledcard/ble/BLEService$1;->this$0:Lcom/yannis/ledcard/ble/BLEService;

    invoke-virtual {p2, p1}, Lcom/yannis/ledcard/ble/BLEService;->destroyGatt(Landroid/bluetooth/BluetoothGatt;)V

    .line 78
    :goto_0
    iget-object p1, p0, Lcom/yannis/ledcard/ble/BLEService$1;->this$0:Lcom/yannis/ledcard/ble/BLEService;

    iget-object p2, p0, Lcom/yannis/ledcard/ble/BLEService$1;->action:Ljava/lang/String;

    iget-object p3, p0, Lcom/yannis/ledcard/ble/BLEService$1;->mac:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0, v0}, Lcom/yannis/ledcard/ble/BLEService;->sendBroadCastToUI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method

.method public onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 2

    .line 152
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V

    .line 153
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yannis/ledcard/ble/BLEService$1;->mac:Ljava/lang/String;

    .line 154
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yannis/ledcard/ble/BLEService$1;->uuid:Ljava/lang/String;

    const-string p2, "com.yannis.ledcard.ble.GATT_DESCRIPTOR_WRITE"

    .line 155
    iput-object p2, p0, Lcom/yannis/ledcard/ble/BLEService$1;->action:Ljava/lang/String;

    .line 156
    iget-object p3, p0, Lcom/yannis/ledcard/ble/BLEService$1;->this$0:Lcom/yannis/ledcard/ble/BLEService;

    iget-object v0, p0, Lcom/yannis/ledcard/ble/BLEService$1;->mac:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p3, p2, v0, p1, v1}, Lcom/yannis/ledcard/ble/BLEService;->sendBroadCastToUI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 3

    .line 85
    invoke-super {p0, p1, p2}, Landroid/bluetooth/BluetoothGattCallback;->onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V

    const-string v0, "led-card"

    const-string v1, "++++++++++++++++++++++++onServicesDiscovered"

    .line 86
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yannis/ledcard/ble/BLEService$1;->mac:Ljava/lang/String;

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServicesDiscovered mac"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yannis/ledcard/ble/BLEService$1;->mac:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    const-string p2, "com.yannis.ledcard.ble.GATT_SERVICE_DISCOVERED_SUCCESS"

    .line 91
    iput-object p2, p0, Lcom/yannis/ledcard/ble/BLEService$1;->action:Ljava/lang/String;

    .line 92
    iget-object p2, p0, Lcom/yannis/ledcard/ble/BLEService$1;->this$0:Lcom/yannis/ledcard/ble/BLEService;

    invoke-static {p2, p1}, Lcom/yannis/ledcard/ble/BLEService;->access$002(Lcom/yannis/ledcard/ble/BLEService;Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGatt;

    const-string p1, "onServicesDiscovered \u670d\u52a1\u8fde\u63a5\u6210\u529f\uff01"

    .line 93
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p2, "com.yannis.ledcard.ble.GATT_SERVICE_DISCOVERED_FAIL"

    .line 95
    iput-object p2, p0, Lcom/yannis/ledcard/ble/BLEService$1;->action:Ljava/lang/String;

    .line 96
    iget-object p2, p0, Lcom/yannis/ledcard/ble/BLEService$1;->this$0:Lcom/yannis/ledcard/ble/BLEService;

    invoke-virtual {p2, p1}, Lcom/yannis/ledcard/ble/BLEService;->destroyGatt(Landroid/bluetooth/BluetoothGatt;)V

    .line 98
    :goto_0
    iget-object p1, p0, Lcom/yannis/ledcard/ble/BLEService$1;->this$0:Lcom/yannis/ledcard/ble/BLEService;

    iget-object p2, p0, Lcom/yannis/ledcard/ble/BLEService$1;->action:Ljava/lang/String;

    iget-object v0, p0, Lcom/yannis/ledcard/ble/BLEService$1;->mac:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Lcom/yannis/ledcard/ble/BLEService;->sendBroadCastToUI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method
