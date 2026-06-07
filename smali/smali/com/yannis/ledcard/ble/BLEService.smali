.class public Lcom/yannis/ledcard/ble/BLEService;
.super Landroid/app/Service;
.source "BLEService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yannis/ledcard/ble/BLEService$LocalBinder;
    }
.end annotation


# static fields
.field public static final BROAD_MAC:Ljava/lang/String; = "broad_mac"

.field public static final BROAD_UUID:Ljava/lang/String; = "broad_uuid"

.field public static final BROAD_VALUE:Ljava/lang/String; = "broad_value"

.field public static final GATT_CHARACTERISTIC_CHANGED:Ljava/lang/String; = "com.yannis.ledcard.ble.GATT_CHARACTERISTIC_CHANGED"

.field public static final GATT_CONNECTED:Ljava/lang/String; = "com.yannis.ledcard.ble.GATT_CONNECTED"

.field public static final GATT_CONNECTING:Ljava/lang/String; = "com.yannis.ledcard.ble.GATT_CONNECTING"

.field public static final GATT_DESCRIPTOR_WRITE:Ljava/lang/String; = "com.yannis.ledcard.ble.GATT_DESCRIPTOR_WRITE"

.field public static final GATT_DISCONNECTED:Ljava/lang/String; = "com.yannis.ledcard.ble.GATT_DISCONNECTED"

.field public static final GATT_READ_FAIL:Ljava/lang/String; = "com.yannis.ledcard.ble.GATT_READ_FAIL"

.field public static final GATT_READ_SUCCESS:Ljava/lang/String; = "com.yannis.ledcard.ble.GATT_READ_SUCCESS"

.field public static final GATT_SERVICE_DISCOVERED_FAIL:Ljava/lang/String; = "com.yannis.ledcard.ble.GATT_SERVICE_DISCOVERED_FAIL"

.field public static final GATT_SERVICE_DISCOVERED_SUCCESS:Ljava/lang/String; = "com.yannis.ledcard.ble.GATT_SERVICE_DISCOVERED_SUCCESS"

.field public static final GATT_WRITE_FAIL:Ljava/lang/String; = "com.yannis.ledcard.ble.GATT_WRITE_FAIL"

.field public static final GATT_WRITE_FAIL_133:Ljava/lang/String; = "com.yannis.ledcard.ble.GATT_WRITE_FAIL_133"

.field public static final GATT_WRITE_SUCCESS:Ljava/lang/String; = "com.yannis.ledcard.ble.GATT_WRITE_SUCCESS"

.field public static final tag:Ljava/lang/String; = "led-card"


# instance fields
.field private final callback:Landroid/bluetooth/BluetoothGattCallback;

.field private final mBinder:Lcom/yannis/ledcard/ble/BLEService$LocalBinder;

.field private mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 43
    new-instance v0, Lcom/yannis/ledcard/ble/BLEService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/yannis/ledcard/ble/BLEService$LocalBinder;-><init>(Lcom/yannis/ledcard/ble/BLEService;)V

    iput-object v0, p0, Lcom/yannis/ledcard/ble/BLEService;->mBinder:Lcom/yannis/ledcard/ble/BLEService$LocalBinder;

    .line 57
    new-instance v0, Lcom/yannis/ledcard/ble/BLEService$1;

    invoke-direct {v0, p0}, Lcom/yannis/ledcard/ble/BLEService$1;-><init>(Lcom/yannis/ledcard/ble/BLEService;)V

    iput-object v0, p0, Lcom/yannis/ledcard/ble/BLEService;->callback:Landroid/bluetooth/BluetoothGattCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/yannis/ledcard/ble/BLEService;)Landroid/bluetooth/BluetoothGatt;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/yannis/ledcard/ble/BLEService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    return-object p0
.end method

.method static synthetic access$002(Lcom/yannis/ledcard/ble/BLEService;Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGatt;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/yannis/ledcard/ble/BLEService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    return-object p1
.end method

.method public static getRegisterIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .line 359
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.yannis.ledcard.ble.GATT_CONNECTED"

    .line 360
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.yannis.ledcard.ble.GATT_CONNECTING"

    .line 361
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.yannis.ledcard.ble.GATT_DISCONNECTED"

    .line 362
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.yannis.ledcard.ble.GATT_READ_FAIL"

    .line 363
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.yannis.ledcard.ble.GATT_READ_SUCCESS"

    .line 364
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.yannis.ledcard.ble.GATT_WRITE_FAIL"

    .line 365
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.yannis.ledcard.ble.GATT_WRITE_SUCCESS"

    .line 366
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.yannis.ledcard.ble.GATT_SERVICE_DISCOVERED_FAIL"

    .line 367
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.yannis.ledcard.ble.GATT_SERVICE_DISCOVERED_SUCCESS"

    .line 368
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.yannis.ledcard.ble.GATT_CHARACTERISTIC_CHANGED"

    .line 369
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.yannis.ledcard.ble.GATT_DESCRIPTOR_WRITE"

    .line 370
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/yannis/ledcard/ble/BLEService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {p0, v0}, Lcom/yannis/ledcard/ble/BLEService;->refreshDeviceCache(Landroid/bluetooth/BluetoothGatt;)Z

    .line 169
    iget-object v0, p0, Lcom/yannis/ledcard/ble/BLEService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p0, v0}, Lcom/yannis/ledcard/ble/BLEService;->destroyGatt(Landroid/bluetooth/BluetoothGatt;)V

    :cond_0
    const/4 v0, 0x0

    .line 171
    iget-object v1, p0, Lcom/yannis/ledcard/ble/BLEService;->callback:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {p1, p0, v0, v1}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    iput-object p1, p0, Lcom/yannis/ledcard/ble/BLEService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 172
    invoke-virtual {p0, p1}, Lcom/yannis/ledcard/ble/BLEService;->refreshDeviceCache(Landroid/bluetooth/BluetoothGatt;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public destroyGatt(Landroid/bluetooth/BluetoothGatt;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 224
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 225
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 227
    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method public disconnect()V
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/yannis/ledcard/ble/BLEService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_0

    const-string v0, "yannis"

    const-string v1, "gatt = null"

    .line 199
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 202
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    return-void
.end method

.method public getCharacteristicByMacAndName(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 3

    .line 240
    iget-object v0, p0, Lcom/yannis/ledcard/ble/BLEService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_2

    .line 241
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 242
    iget-object p1, p0, Lcom/yannis/ledcard/ble/BLEService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattService;

    .line 243
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 244
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCharacteristicByMacAndName(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Ljava/lang/String;)Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 6

    .line 257
    iget-object v0, p0, Lcom/yannis/ledcard/ble/BLEService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_2

    .line 258
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 259
    iget-object p1, p0, Lcom/yannis/ledcard/ble/BLEService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattService;

    .line 260
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 261
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 262
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " uuid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "yannis"

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 264
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\u627e\u5230---- uid = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSupportedGattServices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;"
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lcom/yannis/ledcard/ble/BLEService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 213
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isNotificationEnabled(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 2

    const-string v0, "00002902-0000-1000-8000-00805f9b34fb"

    .line 350
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 354
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getValue()[B

    move-result-object p1

    sget-object v1, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    if-ne p1, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 48
    iget-object p1, p0, Lcom/yannis/ledcard/ble/BLEService;->mBinder:Lcom/yannis/ledcard/ble/BLEService$LocalBinder;

    return-object p1
.end method

.method public readValue(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/yannis/ledcard/ble/BLEService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    .line 296
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    goto :goto_0

    :cond_0
    const-string p1, "led-card"

    const-string v0, "the gatt is null,you cann\'t read the Characteristic"

    .line 298
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public refreshDeviceCache(Landroid/bluetooth/BluetoothGatt;)Z
    .locals 4

    const/4 v0, 0x0

    .line 180
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "refresh"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_0

    new-array v2, v0, [Ljava/lang/Object;

    .line 182
    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 189
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 187
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 185
    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :cond_0
    :goto_0
    return v0
.end method

.method public sendBroadCastToUI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 1

    .line 309
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p1, "broad_mac"

    .line 310
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p4, :cond_0

    const-string p1, "broad_value"

    .line 312
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    :cond_0
    if-eqz p3, :cond_1

    const-string p1, "broad_uuid"

    .line 315
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 317
    :cond_1
    invoke-virtual {p0, v0}, Lcom/yannis/ledcard/ble/BLEService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public setCharacteristicNotification(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z
    .locals 1

    .line 328
    iget-object p1, p0, Lcom/yannis/ledcard/ble/BLEService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 329
    invoke-virtual {p1, p2, p3}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    move-result p1

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string p1, "00002902-0000-1000-8000-00805f9b34fb"

    .line 334
    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    if-eqz p3, :cond_2

    .line 339
    sget-object p2, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    goto :goto_0

    .line 341
    :cond_2
    sget-object p2, Landroid/bluetooth/BluetoothGattDescriptor;->DISABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 344
    :goto_0
    iget-object p2, p0, Lcom/yannis/ledcard/ble/BLEService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result p1

    return p1
.end method

.method public writValue(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/yannis/ledcard/ble/BLEService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    goto :goto_0

    :cond_0
    const-string p1, "led-card"

    const-string v0, "the gatt is null,you cann\'t writer the Characteristic"

    .line 286
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
