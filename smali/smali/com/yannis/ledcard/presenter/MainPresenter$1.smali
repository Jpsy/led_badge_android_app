.class Lcom/yannis/ledcard/presenter/MainPresenter$1;
.super Ljava/lang/Object;
.source "MainPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yannis/ledcard/presenter/MainPresenter;->connectDevice()V
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

    .line 252
    iput-object p1, p0, Lcom/yannis/ledcard/presenter/MainPresenter$1;->this$0:Lcom/yannis/ledcard/presenter/MainPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 255
    iget-object v0, p0, Lcom/yannis/ledcard/presenter/MainPresenter$1;->this$0:Lcom/yannis/ledcard/presenter/MainPresenter;

    invoke-static {v0}, Lcom/yannis/ledcard/presenter/MainPresenter;->access$000(Lcom/yannis/ledcard/presenter/MainPresenter;)Lcom/yannis/ledcard/base/inter/IView;

    move-result-object v0

    check-cast v0, Lcom/yannis/ledcard/contract/MainContract$View;

    const v1, 0x7f0e0034

    invoke-static {v1}, Lcom/yannis/ledcard/presenter/MainPresenter;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/yannis/ledcard/contract/MainContract$View;->showMsg(Ljava/lang/String;)V

    .line 256
    sget-object v0, Lcom/yannis/ledcard/LedBleApplication;->instance:Lcom/yannis/ledcard/LedBleApplication;

    invoke-virtual {v0}, Lcom/yannis/ledcard/LedBleApplication;->connectDevice()V

    return-void
.end method
