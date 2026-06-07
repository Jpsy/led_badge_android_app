.class Lcom/yannis/ledcard/ble/BLEManage$2;
.super Ljava/lang/Object;
.source "BLEManage.java"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yannis/ledcard/ble/BLEManage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yannis/ledcard/ble/BLEManage;


# direct methods
.method constructor <init>(Lcom/yannis/ledcard/ble/BLEManage;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/yannis/ledcard/ble/BLEManage$2;->this$0:Lcom/yannis/ledcard/ble/BLEManage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 1

    .line 83
    iget-object p3, p0, Lcom/yannis/ledcard/ble/BLEManage$2;->this$0:Lcom/yannis/ledcard/ble/BLEManage;

    invoke-static {p3}, Lcom/yannis/ledcard/ble/BLEManage;->access$200(Lcom/yannis/ledcard/ble/BLEManage;)Landroid/os/Handler;

    move-result-object p3

    new-instance v0, Lcom/yannis/ledcard/ble/BLEManage$2$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/yannis/ledcard/ble/BLEManage$2$1;-><init>(Lcom/yannis/ledcard/ble/BLEManage$2;Landroid/bluetooth/BluetoothDevice;I)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
