.class Lcom/yannis/ledcard/ble/BLEManage$1;
.super Ljava/lang/Object;
.source "BLEManage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yannis/ledcard/ble/BLEManage;->startScanBluetoothDevice()V
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

    .line 62
    iput-object p1, p0, Lcom/yannis/ledcard/ble/BLEManage$1;->this$0:Lcom/yannis/ledcard/ble/BLEManage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/yannis/ledcard/ble/BLEManage$1;->this$0:Lcom/yannis/ledcard/ble/BLEManage;

    invoke-virtual {v0}, Lcom/yannis/ledcard/ble/BLEManage;->stopScanBluetoothDevice()V

    return-void
.end method
