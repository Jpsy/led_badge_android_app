.class Lcom/yannis/ledcard/presenter/MainPresenter$2;
.super Landroid/content/BroadcastReceiver;
.source "MainPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yannis/ledcard/presenter/MainPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field action:Ljava/lang/String;

.field macAddress:Ljava/lang/String;

.field final synthetic this$0:Lcom/yannis/ledcard/presenter/MainPresenter;

.field uuid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/yannis/ledcard/presenter/MainPresenter;)V
    .locals 0

    .line 291
    iput-object p1, p0, Lcom/yannis/ledcard/presenter/MainPresenter$2;->this$0:Lcom/yannis/ledcard/presenter/MainPresenter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 p1, 0x0

    .line 294
    iput-object p1, p0, Lcom/yannis/ledcard/presenter/MainPresenter$2;->uuid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 298
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yannis/ledcard/presenter/MainPresenter$2;->action:Ljava/lang/String;

    const-string p1, "broad_mac"

    .line 299
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yannis/ledcard/presenter/MainPresenter$2;->macAddress:Ljava/lang/String;

    .line 300
    iget-object p1, p0, Lcom/yannis/ledcard/presenter/MainPresenter$2;->action:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "com.yannis.ledcard.ble.GATT_DISCONNECTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x5

    goto :goto_0

    :sswitch_1
    const-string v0, "com.yannis.ledcard.ble.GATT_WRITE_FAIL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x4

    goto :goto_0

    :sswitch_2
    const-string v0, "com.yannis.ledcard.ble.GATT_CONNECTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_3
    const-string v0, "com.yannis.ledcard.ble.GATT_WRITE_SUCCESS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_4
    const-string v0, "com.yannis.ledcard.ble.GATT_SERVICE_DISCOVERED_SUCCESS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v4, 0x1

    goto :goto_0

    :sswitch_5
    const-string v0, "com.yannis.ledcard.ble.GATT_SERVICE_DISCOVERED_FAIL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    :goto_0
    const-string p1, "broad_uuid"

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_1

    .line 306
    :pswitch_0
    sget-object p1, Lcom/yannis/ledcard/LedBleApplication;->instance:Lcom/yannis/ledcard/LedBleApplication;

    iput-boolean v3, p1, Lcom/yannis/ledcard/LedBleApplication;->isConnected:Z

    .line 312
    iget-object p1, p0, Lcom/yannis/ledcard/presenter/MainPresenter$2;->this$0:Lcom/yannis/ledcard/presenter/MainPresenter;

    invoke-static {p1, v2}, Lcom/yannis/ledcard/presenter/MainPresenter;->access$102(Lcom/yannis/ledcard/presenter/MainPresenter;Z)Z

    .line 313
    iget-object p1, p0, Lcom/yannis/ledcard/presenter/MainPresenter$2;->this$0:Lcom/yannis/ledcard/presenter/MainPresenter;

    invoke-static {p1}, Lcom/yannis/ledcard/presenter/MainPresenter;->access$200(Lcom/yannis/ledcard/presenter/MainPresenter;)Lcom/yannis/ledcard/base/inter/IView;

    move-result-object p1

    check-cast p1, Lcom/yannis/ledcard/contract/MainContract$View;

    invoke-interface {p1, v2}, Lcom/yannis/ledcard/contract/MainContract$View;->setSendBtnIsEnable(Z)V

    goto/16 :goto_1

    .line 323
    :pswitch_1
    iget-object v0, p0, Lcom/yannis/ledcard/presenter/MainPresenter$2;->this$0:Lcom/yannis/ledcard/presenter/MainPresenter;

    invoke-static {v0}, Lcom/yannis/ledcard/presenter/MainPresenter;->access$600(Lcom/yannis/ledcard/presenter/MainPresenter;)Lcom/yannis/ledcard/base/inter/IView;

    move-result-object v0

    check-cast v0, Lcom/yannis/ledcard/contract/MainContract$View;

    const v1, 0x7f0e0081

    invoke-static {v1}, Lcom/yannis/ledcard/presenter/MainPresenter;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/yannis/ledcard/contract/MainContract$View;->showMsg(Ljava/lang/String;)V

    .line 324
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yannis/ledcard/presenter/MainPresenter$2;->uuid:Ljava/lang/String;

    .line 325
    iget-object p1, p0, Lcom/yannis/ledcard/presenter/MainPresenter$2;->this$0:Lcom/yannis/ledcard/presenter/MainPresenter;

    invoke-virtual {p1}, Lcom/yannis/ledcard/presenter/MainPresenter;->stopTimer()V

    .line 326
    iget-object p1, p0, Lcom/yannis/ledcard/presenter/MainPresenter$2;->this$0:Lcom/yannis/ledcard/presenter/MainPresenter;

    invoke-static {p1}, Lcom/yannis/ledcard/presenter/MainPresenter;->access$700(Lcom/yannis/ledcard/presenter/MainPresenter;)Lcom/yannis/ledcard/base/inter/IView;

    move-result-object p1

    check-cast p1, Lcom/yannis/ledcard/contract/MainContract$View;

    invoke-interface {p1, v2}, Lcom/yannis/ledcard/contract/MainContract$View;->setSendBtnIsEnable(Z)V

    goto/16 :goto_1

    .line 329
    :pswitch_2
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yannis/ledcard/presenter/MainPresenter$2;->uuid:Ljava/lang/String;

    .line 330
    iget-object p1, p0, Lcom/yannis/ledcard/presenter/MainPresenter$2;->this$0:Lcom/yannis/ledcard/presenter/MainPresenter;

    invoke-static {p1}, Lcom/yannis/ledcard/presenter/MainPresenter;->access$800(Lcom/yannis/ledcard/presenter/MainPresenter;)I

    move-result p1

    if-nez p1, :cond_6

    .line 331
    iget-object p1, p0, Lcom/yannis/ledcard/presenter/MainPresenter$2;->this$0:Lcom/yannis/ledcard/presenter/MainPresenter;

    invoke-static {p1}, Lcom/yannis/ledcard/presenter/MainPresenter;->access$900(Lcom/yannis/ledcard/presenter/MainPresenter;)Lcom/yannis/ledcard/base/inter/IView;

    move-result-object p1

    check-cast p1, Lcom/yannis/ledcard/contract/MainContract$View;

    invoke-interface {p1}, Lcom/yannis/ledcard/contract/MainContract$View;->startSend()V

    .line 333
    :cond_6
    iget-object p1, p0, Lcom/yannis/ledcard/presenter/MainPresenter$2;->this$0:Lcom/yannis/ledcard/presenter/MainPresenter;

    invoke-static {p1}, Lcom/yannis/ledcard/presenter/MainPresenter;->access$800(Lcom/yannis/ledcard/presenter/MainPresenter;)I

    move-result p1

    iget-object p2, p0, Lcom/yannis/ledcard/presenter/MainPresenter$2;->this$0:Lcom/yannis/ledcard/presenter/MainPresenter;

    invoke-static {p2}, Lcom/yannis/ledcard/presenter/MainPresenter;->access$1000(Lcom/yannis/ledcard/presenter/MainPresenter;)I

    move-result p2

    sub-int/2addr p2, v2

    if-ne p1, p2, :cond_7

    .line 334
    iget-object p1, p0, Lcom/yannis/ledcard/presenter/MainPresenter$2;->this$0:Lcom/yannis/ledcard/presenter/MainPresenter;

    invoke-virtual {p1}, Lcom/yannis/ledcard/presenter/MainPresenter;->stopTimer()V

    .line 335
    iget-object p1, p0, Lcom/yannis/ledcard/presenter/MainPresenter$2;->this$0:Lcom/yannis/ledcard/presenter/MainPresenter;

    invoke-static {p1}, Lcom/yannis/ledcard/presenter/MainPresenter;->access$1100(Lcom/yannis/ledcard/presenter/MainPresenter;)Lcom/yannis/ledcard/base/inter/IView;

    move-result-object p1

    check-cast p1, Lcom/yannis/ledcard/contract/MainContract$View;

    const p2, 0x7f0e0080

    invoke-static {p2}, Lcom/yannis/ledcard/presenter/MainPresenter;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/yannis/ledcard/contract/MainContract$View;->showMsg(Ljava/lang/String;)V

    .line 336
    iget-object p1, p0, Lcom/yannis/ledcard/presenter/MainPresenter$2;->this$0:Lcom/yannis/ledcard/presenter/MainPresenter;

    invoke-static {p1, v3}, Lcom/yannis/ledcard/presenter/MainPresenter;->access$802(Lcom/yannis/ledcard/presenter/MainPresenter;I)I

    .line 337
    iget-object p1, p0, Lcom/yannis/ledcard/presenter/MainPresenter$2;->this$0:Lcom/yannis/ledcard/presenter/MainPresenter;

    invoke-static {p1, v3}, Lcom/yannis/ledcard/presenter/MainPresenter;->access$1002(Lcom/yannis/ledcard/presenter/MainPresenter;I)I

    .line 338
    iget-object p1, p0, Lcom/yannis/ledcard/presenter/MainPresenter$2;->this$0:Lcom/yannis/ledcard/presenter/MainPresenter;

    invoke-static {p1, v3}, Lcom/yannis/ledcard/presenter/MainPresenter;->access$1202(Lcom/yannis/ledcard/presenter/MainPresenter;Z)Z

    .line 339
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/yannis/ledcard/presenter/MainPresenter$2$1;

    invoke-direct {p2, p0}, Lcom/yannis/ledcard/presenter/MainPresenter$2$1;-><init>(Lcom/yannis/ledcard/presenter/MainPresenter$2;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 349
    :cond_7
    iget-object p1, p0, Lcom/yannis/ledcard/presenter/MainPresenter$2;->this$0:Lcom/yannis/ledcard/presenter/MainPresenter;

    invoke-static {p1}, Lcom/yannis/ledcard/presenter/MainPresenter;->access$1500(Lcom/yannis/ledcard/presenter/MainPresenter;)Lcom/yannis/ledcard/base/inter/IView;

    move-result-object p1

    check-cast p1, Lcom/yannis/ledcard/contract/MainContract$View;

    const p2, 0x7f0e0084

    invoke-static {p2}, Lcom/yannis/ledcard/presenter/MainPresenter;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/yannis/ledcard/contract/MainContract$View;->showMsg(Ljava/lang/String;)V

    .line 350
    iget-object p1, p0, Lcom/yannis/ledcard/presenter/MainPresenter$2;->this$0:Lcom/yannis/ledcard/presenter/MainPresenter;

    invoke-static {p1}, Lcom/yannis/ledcard/presenter/MainPresenter;->access$800(Lcom/yannis/ledcard/presenter/MainPresenter;)I

    move-result p1

    const-string p2, "---"

    const-string v0, "\u53d1\u9001\u6570\u636e---------> No."

    const-string v2, "MainPresenter"

    if-ne p1, v1, :cond_8

    .line 351
    iget-object p1, p0, Lcom/yannis/ledcard/presenter/MainPresenter$2;->this$0:Lcom/yannis/ledcard/presenter/MainPresenter;

    invoke-static {p1}, Lcom/yannis/ledcard/presenter/MainPresenter;->access$808(Lcom/yannis/ledcard/presenter/MainPresenter;)I

    const-wide/16 v3, 0x12c

    .line 352
    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 353
    iget-object p1, p0, Lcom/yannis/ledcard/presenter/MainPresenter$2;->this$0:Lcom/yannis/ledcard/presenter/MainPresenter;

    invoke-virtual {p1}, Lcom/yannis/ledcard/presenter/MainPresenter;->startNewTimer()V

    .line 354
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/yannis/ledcard/presenter/MainPresenter$2;->this$0:Lcom/yannis/ledcard/presenter/MainPresenter;

    invoke-static {v0}, Lcom/yannis/ledcard/presenter/MainPresenter;->access$800(Lcom/yannis/ledcard/presenter/MainPresenter;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    sget-object p1, Lcom/yannis/ledcard/LedBleApplication;->instance:Lcom/yannis/ledcard/LedBleApplication;

    iget-object p2, p0, Lcom/yannis/ledcard/presenter/MainPresenter$2;->this$0:Lcom/yannis/ledcard/presenter/MainPresenter;

    invoke-static {p2}, Lcom/yannis/ledcard/presenter/MainPresenter;->access$1600(Lcom/yannis/ledcard/presenter/MainPresenter;)Ljava/util/HashMap;

    move-result-object p2

    iget-object v0, p0, Lcom/yannis/ledcard/presenter/MainPresenter$2;->this$0:Lcom/yannis/ledcard/presenter/MainPresenter;

    invoke-static {v0}, Lcom/yannis/ledcard/presenter/MainPresenter;->access$800(Lcom/yannis/ledcard/presenter/MainPresenter;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    invoke-virtual {p1, p2}, Lcom/yannis/ledcard/LedBleApplication;->write([B)V

    goto/16 :goto_1

    .line 357
    :cond_8
    iget-object p1, p0, Lcom/yannis/ledcard/presenter/MainPresenter$2;->this$0:Lcom/yannis/ledcard/presenter/MainPresenter;

    invoke-static {p1}, Lcom/yannis/ledcard/presenter/MainPresenter;->access$808(Lcom/yannis/ledcard/presenter/MainPresenter;)I

    .line 358
    iget-object p1, p0, Lcom/yannis/ledcard/presenter/MainPresenter$2;->this$0:Lcom/yannis/ledcard/presenter/MainPresenter;

    invoke-virtual {p1}, Lcom/yannis/ledcard/presenter/MainPresenter;->startNewTimer()V

    const-wide/16 v3, 0x19

    .line 359
    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 360
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/yannis/ledcard/presenter/MainPresenter$2;->this$0:Lcom/yannis/ledcard/presenter/MainPresenter;

    invoke-static {v0}, Lcom/yannis/ledcard/presenter/MainPresenter;->access$800(Lcom/yannis/ledcard/presenter/MainPresenter;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    sget-object p1, Lcom/yannis/ledcard/LedBleApplication;->instance:Lcom/yannis/ledcard/LedBleApplication;

    iget-object p2, p0, Lcom/yannis/ledcard/presenter/MainPresenter$2;->this$0:Lcom/yannis/ledcard/presenter/MainPresenter;

    invoke-static {p2}, Lcom/yannis/ledcard/presenter/MainPresenter;->access$1600(Lcom/yannis/ledcard/presenter/MainPresenter;)Ljava/util/HashMap;

    move-result-object p2

    iget-object v0, p0, Lcom/yannis/ledcard/presenter/MainPresenter$2;->this$0:Lcom/yannis/ledcard/presenter/MainPresenter;

    invoke-static {v0}, Lcom/yannis/ledcard/presenter/MainPresenter;->access$800(Lcom/yannis/ledcard/presenter/MainPresenter;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    invoke-virtual {p1, p2}, Lcom/yannis/ledcard/LedBleApplication;->write([B)V

    goto :goto_1

    .line 316
    :pswitch_3
    sget-object p1, Lcom/yannis/ledcard/LedBleApplication;->instance:Lcom/yannis/ledcard/LedBleApplication;

    iput-boolean v2, p1, Lcom/yannis/ledcard/LedBleApplication;->isConnected:Z

    .line 317
    iget-object p1, p0, Lcom/yannis/ledcard/presenter/MainPresenter$2;->this$0:Lcom/yannis/ledcard/presenter/MainPresenter;

    invoke-static {p1}, Lcom/yannis/ledcard/presenter/MainPresenter;->access$300(Lcom/yannis/ledcard/presenter/MainPresenter;)Lcom/yannis/ledcard/base/inter/IView;

    move-result-object p1

    check-cast p1, Lcom/yannis/ledcard/contract/MainContract$View;

    const p2, 0x7f0e0033

    invoke-static {p2}, Lcom/yannis/ledcard/presenter/MainPresenter;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/yannis/ledcard/contract/MainContract$View;->showMsg(Ljava/lang/String;)V

    .line 318
    iget-object p1, p0, Lcom/yannis/ledcard/presenter/MainPresenter$2;->this$0:Lcom/yannis/ledcard/presenter/MainPresenter;

    invoke-static {p1}, Lcom/yannis/ledcard/presenter/MainPresenter;->access$400(Lcom/yannis/ledcard/presenter/MainPresenter;)Lcom/yannis/ledcard/base/inter/IView;

    move-result-object p1

    check-cast p1, Lcom/yannis/ledcard/contract/MainContract$View;

    invoke-interface {p1}, Lcom/yannis/ledcard/contract/MainContract$View;->scanSuccess()V

    .line 319
    sget-object p1, Lcom/yannis/ledcard/LedBleApplication;->instance:Lcom/yannis/ledcard/LedBleApplication;

    invoke-virtual {p1}, Lcom/yannis/ledcard/LedBleApplication;->initDevice()V

    .line 320
    iget-object p1, p0, Lcom/yannis/ledcard/presenter/MainPresenter$2;->this$0:Lcom/yannis/ledcard/presenter/MainPresenter;

    invoke-static {p1}, Lcom/yannis/ledcard/presenter/MainPresenter;->access$500(Lcom/yannis/ledcard/presenter/MainPresenter;)V

    goto :goto_1

    .line 303
    :pswitch_4
    sget-object p1, Lcom/yannis/ledcard/LedBleApplication;->instance:Lcom/yannis/ledcard/LedBleApplication;

    iput-boolean v3, p1, Lcom/yannis/ledcard/LedBleApplication;->isConnected:Z

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7da6e1a5 -> :sswitch_5
        -0x6db2287a -> :sswitch_4
        -0x6cd6534d -> :sswitch_3
        -0x306bcbc7 -> :sswitch_2
        0x2d00204e -> :sswitch_1
        0x6af122eb -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
