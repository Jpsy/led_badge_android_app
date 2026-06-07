.class Lcom/yannis/ledcard/presenter/MainPresenter$3;
.super Ljava/util/TimerTask;
.source "MainPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yannis/ledcard/presenter/MainPresenter;->startTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yannis/ledcard/presenter/MainPresenter;


# direct methods
.method constructor <init>(Lcom/yannis/ledcard/presenter/MainPresenter;)V
    .locals 0

    .line 378
    iput-object p1, p0, Lcom/yannis/ledcard/presenter/MainPresenter$3;->this$0:Lcom/yannis/ledcard/presenter/MainPresenter;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 382
    iget-object v0, p0, Lcom/yannis/ledcard/presenter/MainPresenter$3;->this$0:Lcom/yannis/ledcard/presenter/MainPresenter;

    invoke-static {v0}, Lcom/yannis/ledcard/presenter/MainPresenter;->access$1700(Lcom/yannis/ledcard/presenter/MainPresenter;)Lcom/yannis/ledcard/base/inter/IView;

    move-result-object v0

    check-cast v0, Lcom/yannis/ledcard/contract/MainContract$View;

    const v1, 0x7f0e0083

    invoke-static {v1}, Lcom/yannis/ledcard/presenter/MainPresenter;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/yannis/ledcard/contract/MainContract$View;->showMsg(Ljava/lang/String;)V

    .line 383
    iget-object v0, p0, Lcom/yannis/ledcard/presenter/MainPresenter$3;->this$0:Lcom/yannis/ledcard/presenter/MainPresenter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yannis/ledcard/presenter/MainPresenter;->access$802(Lcom/yannis/ledcard/presenter/MainPresenter;I)I

    .line 384
    iget-object v0, p0, Lcom/yannis/ledcard/presenter/MainPresenter$3;->this$0:Lcom/yannis/ledcard/presenter/MainPresenter;

    invoke-static {v0, v1}, Lcom/yannis/ledcard/presenter/MainPresenter;->access$1002(Lcom/yannis/ledcard/presenter/MainPresenter;I)I

    .line 385
    iget-object v0, p0, Lcom/yannis/ledcard/presenter/MainPresenter$3;->this$0:Lcom/yannis/ledcard/presenter/MainPresenter;

    invoke-static {v0}, Lcom/yannis/ledcard/presenter/MainPresenter;->access$1800(Lcom/yannis/ledcard/presenter/MainPresenter;)Lcom/yannis/ledcard/base/inter/IView;

    move-result-object v0

    check-cast v0, Lcom/yannis/ledcard/contract/MainContract$View;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/yannis/ledcard/contract/MainContract$View;->setSendBtnIsEnable(Z)V

    return-void
.end method
