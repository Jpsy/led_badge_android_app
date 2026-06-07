.class public Lcom/yannis/ledcard/ble/ScanDevice;
.super Ljava/lang/Object;
.source "ScanDevice.java"

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


# instance fields
.field private address:Ljava/lang/String;

.field private device:Landroid/bluetooth/BluetoothDevice;

.field private name:Ljava/lang/String;

.field private rssi:I


# direct methods
.method public constructor <init>(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/yannis/ledcard/ble/ScanDevice;->rssi:I

    .line 14
    iput-object p2, p0, Lcom/yannis/ledcard/ble/ScanDevice;->device:Landroid/bluetooth/BluetoothDevice;

    .line 15
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yannis/ledcard/ble/ScanDevice;->name:Ljava/lang/String;

    .line 16
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yannis/ledcard/ble/ScanDevice;->address:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 3

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    return v1

    .line 71
    :cond_1
    instance-of v2, p1, Lcom/yannis/ledcard/ble/ScanDevice;

    if-eqz v2, :cond_3

    .line 72
    check-cast p1, Lcom/yannis/ledcard/ble/ScanDevice;

    .line 73
    iget p1, p1, Lcom/yannis/ledcard/ble/ScanDevice;->rssi:I

    iget v1, p0, Lcom/yannis/ledcard/ble/ScanDevice;->rssi:I

    if-le p1, v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0

    :cond_3
    return v1
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/yannis/ledcard/ble/ScanDevice;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/yannis/ledcard/ble/ScanDevice;->device:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/yannis/ledcard/ble/ScanDevice;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRssi()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/yannis/ledcard/ble/ScanDevice;->rssi:I

    return v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/yannis/ledcard/ble/ScanDevice;->address:Ljava/lang/String;

    return-void
.end method

.method public setDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/yannis/ledcard/ble/ScanDevice;->device:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/yannis/ledcard/ble/ScanDevice;->name:Ljava/lang/String;

    return-void
.end method

.method public setRssi(I)V
    .locals 0

    .line 25
    iput p1, p0, Lcom/yannis/ledcard/ble/ScanDevice;->rssi:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScanDevice{name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yannis/ledcard/ble/ScanDevice;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", address=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yannis/ledcard/ble/ScanDevice;->address:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", rssi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/yannis/ledcard/ble/ScanDevice;->rssi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
