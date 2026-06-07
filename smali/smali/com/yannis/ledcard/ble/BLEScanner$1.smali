.class Lcom/yannis/ledcard/ble/BLEScanner$1;
.super Ljava/lang/Object;
.source "BLEScanner.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 167
    iput-object p1, p0, Lcom/yannis/ledcard/ble/BLEScanner$1;->this$0:Lcom/yannis/ledcard/ble/BLEScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/yannis/ledcard/ble/BLEScanner$1;->this$0:Lcom/yannis/ledcard/ble/BLEScanner;

    invoke-virtual {v0}, Lcom/yannis/ledcard/ble/BLEScanner;->stopScanBluetoothDevice()V

    return-void
.end method
