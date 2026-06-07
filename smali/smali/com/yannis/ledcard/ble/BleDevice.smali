.class public Lcom/yannis/ledcard/ble/BleDevice;
.super Ljava/lang/Object;
.source "BleDevice.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEVICE_NAME:Ljava/lang/String; = "LS"

.field public static final UUID_CHARACTERISTICS_NOTIFICATION:Ljava/lang/String; = "2af0"

.field public static final UUID_CHARACTERISTICS_WRITE:Ljava/lang/String; = "fee1"

.field public static final UUID_SERVICE:Ljava/lang/String; = "fee0"

.field public static final characteristicsUUID:Ljava/util/UUID;

.field public static final serviceUUID:Ljava/util/UUID;


# instance fields
.field private bleNotification:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private bleWrite:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private device:Landroid/bluetooth/BluetoothDevice;

.field private rssi:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "0000fee0-0000-1000-8000-00805f9b34fb"

    .line 18
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/yannis/ledcard/ble/BleDevice;->serviceUUID:Ljava/util/UUID;

    const-string v0, "0000fee1-0000-1000-8000-00805f9b34fb"

    .line 20
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/yannis/ledcard/ble/BleDevice;->characteristicsUUID:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/yannis/ledcard/ble/BleDevice;->device:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getBleNotification()Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/yannis/ledcard/ble/BleDevice;->bleNotification:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-object v0
.end method

.method public getBleWrite()Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/yannis/ledcard/ble/BleDevice;->bleWrite:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-object v0
.end method

.method public getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/yannis/ledcard/ble/BleDevice;->device:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public setBleNotification(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/yannis/ledcard/ble/BleDevice;->bleNotification:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-void
.end method

.method public setBleWrite(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/yannis/ledcard/ble/BleDevice;->bleWrite:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-void
.end method

.method public setDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/yannis/ledcard/ble/BleDevice;->device:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method
