.class public abstract Lcom/yannis/ledcard/base/BaseMVPActivity;
.super Lcom/yannis/ledcard/base/BaseActivity;
.source "BaseMVPActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P::",
        "Lcom/yannis/ledcard/base/inter/IPresenter;",
        ">",
        "Lcom/yannis/ledcard/base/BaseActivity;"
    }
.end annotation


# instance fields
.field protected presenter:Lcom/yannis/ledcard/base/inter/IPresenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TP;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/yannis/ledcard/base/BaseActivity;-><init>()V

    return-void
.end method

.method private bindMVP()V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/yannis/ledcard/base/BaseMVPActivity;->presenter:Lcom/yannis/ledcard/base/inter/IPresenter;

    if-nez v0, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/yannis/ledcard/base/BaseMVPActivity;->createPresenter()Lcom/yannis/ledcard/base/inter/IPresenter;

    move-result-object v0

    iput-object v0, p0, Lcom/yannis/ledcard/base/BaseMVPActivity;->presenter:Lcom/yannis/ledcard/base/inter/IPresenter;

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/yannis/ledcard/base/BaseMVPActivity;->presenter:Lcom/yannis/ledcard/base/inter/IPresenter;

    invoke-interface {v0}, Lcom/yannis/ledcard/base/inter/IPresenter;->onAttach()V

    return-void
.end method


# virtual methods
.method public abstract createPresenter()Lcom/yannis/ledcard/base/inter/IPresenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 21
    invoke-super {p0, p1}, Lcom/yannis/ledcard/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    invoke-direct {p0}, Lcom/yannis/ledcard/base/BaseMVPActivity;->bindMVP()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 27
    invoke-super {p0}, Lcom/yannis/ledcard/base/BaseActivity;->onDestroy()V

    .line 28
    iget-object v0, p0, Lcom/yannis/ledcard/base/BaseMVPActivity;->presenter:Lcom/yannis/ledcard/base/inter/IPresenter;

    if-eqz v0, :cond_0

    .line 29
    invoke-interface {v0}, Lcom/yannis/ledcard/base/inter/IPresenter;->onDetach()V

    :cond_0
    return-void
.end method
