.class public final synthetic Lcom/yannis/ledcard/ble/BLEScanner$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/yannis/ledcard/ble/BLEScanner$2;


# direct methods
.method public synthetic constructor <init>(Lcom/yannis/ledcard/ble/BLEScanner$2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yannis/ledcard/ble/BLEScanner$2$$ExternalSyntheticLambda0;->f$0:Lcom/yannis/ledcard/ble/BLEScanner$2;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/yannis/ledcard/ble/BLEScanner$2$$ExternalSyntheticLambda0;->f$0:Lcom/yannis/ledcard/ble/BLEScanner$2;

    invoke-virtual {v0}, Lcom/yannis/ledcard/ble/BLEScanner$2;->lambda$onBatchScanResults$0$com-yannis-ledcard-ble-BLEScanner$2()V

    return-void
.end method
