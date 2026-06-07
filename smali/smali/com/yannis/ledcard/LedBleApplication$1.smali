.class Lcom/yannis/ledcard/LedBleApplication$1;
.super Ljava/lang/Object;
.source "LedBleApplication.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yannis/ledcard/LedBleApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yannis/ledcard/LedBleApplication;


# direct methods
.method constructor <init>(Lcom/yannis/ledcard/LedBleApplication;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/yannis/ledcard/LedBleApplication$1;->this$0:Lcom/yannis/ledcard/LedBleApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "App-ble"

    const-string v0, "\uff1a\u670d\u52a1\u7ed1\u5b9a\u6210\u529f"

    .line 78
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :try_start_0
    iget-object p1, p0, Lcom/yannis/ledcard/LedBleApplication$1;->this$0:Lcom/yannis/ledcard/LedBleApplication;

    check-cast p2, Lcom/yannis/ledcard/ble/BLEService$LocalBinder;

    invoke-virtual {p2}, Lcom/yannis/ledcard/ble/BLEService$LocalBinder;->getService()Lcom/yannis/ledcard/ble/BLEService;

    move-result-object p2

    iput-object p2, p1, Lcom/yannis/ledcard/LedBleApplication;->bleService:Lcom/yannis/ledcard/ble/BLEService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 82
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "App-ble"

    const-string v0, "\uff1a\u670d\u52a1\u7ed1\u5b9a\u5931\u8d25"

    .line 88
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object p1, p0, Lcom/yannis/ledcard/LedBleApplication$1;->this$0:Lcom/yannis/ledcard/LedBleApplication;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/yannis/ledcard/LedBleApplication;->bleService:Lcom/yannis/ledcard/ble/BLEService;

    return-void
.end method
