.class Lcom/yannis/ledcard/presenter/MainPresenter$2$1;
.super Ljava/lang/Object;
.source "MainPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yannis/ledcard/presenter/MainPresenter$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yannis/ledcard/presenter/MainPresenter$2;


# direct methods
.method constructor <init>(Lcom/yannis/ledcard/presenter/MainPresenter$2;)V
    .locals 0

    .line 339
    iput-object p1, p0, Lcom/yannis/ledcard/presenter/MainPresenter$2$1;->this$1:Lcom/yannis/ledcard/presenter/MainPresenter$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 342
    iget-object v0, p0, Lcom/yannis/ledcard/presenter/MainPresenter$2$1;->this$1:Lcom/yannis/ledcard/presenter/MainPresenter$2;

    iget-object v0, v0, Lcom/yannis/ledcard/presenter/MainPresenter$2;->this$0:Lcom/yannis/ledcard/presenter/MainPresenter;

    invoke-static {v0}, Lcom/yannis/ledcard/presenter/MainPresenter;->access$1300(Lcom/yannis/ledcard/presenter/MainPresenter;)Lcom/yannis/ledcard/base/inter/IView;

    move-result-object v0

    check-cast v0, Lcom/yannis/ledcard/contract/MainContract$View;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/yannis/ledcard/contract/MainContract$View;->setSendBtnIsEnable(Z)V

    .line 343
    iget-object v0, p0, Lcom/yannis/ledcard/presenter/MainPresenter$2$1;->this$1:Lcom/yannis/ledcard/presenter/MainPresenter$2;

    iget-object v0, v0, Lcom/yannis/ledcard/presenter/MainPresenter$2;->this$0:Lcom/yannis/ledcard/presenter/MainPresenter;

    invoke-static {v0, v1}, Lcom/yannis/ledcard/presenter/MainPresenter;->access$102(Lcom/yannis/ledcard/presenter/MainPresenter;Z)Z

    .line 344
    sget-object v0, Lcom/yannis/ledcard/LedBleApplication;->instance:Lcom/yannis/ledcard/LedBleApplication;

    invoke-virtual {v0}, Lcom/yannis/ledcard/LedBleApplication;->disconnectDevice()V

    .line 345
    iget-object v0, p0, Lcom/yannis/ledcard/presenter/MainPresenter$2$1;->this$1:Lcom/yannis/ledcard/presenter/MainPresenter$2;

    iget-object v0, v0, Lcom/yannis/ledcard/presenter/MainPresenter$2;->this$0:Lcom/yannis/ledcard/presenter/MainPresenter;

    invoke-static {v0}, Lcom/yannis/ledcard/presenter/MainPresenter;->access$1400(Lcom/yannis/ledcard/presenter/MainPresenter;)Lcom/yannis/ledcard/base/inter/IView;

    move-result-object v0

    check-cast v0, Lcom/yannis/ledcard/contract/MainContract$View;

    invoke-interface {v0}, Lcom/yannis/ledcard/contract/MainContract$View;->sendFinished()V

    return-void
.end method
