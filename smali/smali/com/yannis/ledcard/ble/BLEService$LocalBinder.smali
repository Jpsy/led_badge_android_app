.class public Lcom/yannis/ledcard/ble/BLEService$LocalBinder;
.super Landroid/os/Binder;
.source "BLEService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yannis/ledcard/ble/BLEService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yannis/ledcard/ble/BLEService;


# direct methods
.method public constructor <init>(Lcom/yannis/ledcard/ble/BLEService;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/yannis/ledcard/ble/BLEService$LocalBinder;->this$0:Lcom/yannis/ledcard/ble/BLEService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/yannis/ledcard/ble/BLEService;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/yannis/ledcard/ble/BLEService$LocalBinder;->this$0:Lcom/yannis/ledcard/ble/BLEService;

    return-object v0
.end method
