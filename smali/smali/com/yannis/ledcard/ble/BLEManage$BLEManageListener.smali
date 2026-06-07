.class public interface abstract Lcom/yannis/ledcard/ble/BLEManage$BLEManageListener;
.super Ljava/lang/Object;
.source "BLEManage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yannis/ledcard/ble/BLEManage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BLEManageListener"
.end annotation


# virtual methods
.method public abstract BLEDeviceScanListener(Landroid/bluetooth/BluetoothDevice;I[BI)V
.end method

.method public abstract BLEManageStarScan()V
.end method

.method public abstract BLEManageStopScan()V
.end method
