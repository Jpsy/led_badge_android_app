.class public interface abstract Lcom/yannis/ledcard/ble/BLEScanner$OnDeviceScanListener;
.super Ljava/lang/Object;
.source "BLEScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yannis/ledcard/ble/BLEScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnDeviceScanListener"
.end annotation


# virtual methods
.method public abstract logInfo(Ljava/lang/String;)V
.end method

.method public abstract onDeviceScan(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yannis/ledcard/ble/ScanDevice;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onStartScan()V
.end method

.method public abstract onStopScan(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yannis/ledcard/ble/ScanDevice;",
            ">;)V"
        }
    .end annotation
.end method
