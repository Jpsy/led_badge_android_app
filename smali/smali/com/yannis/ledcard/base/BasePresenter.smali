.class public abstract Lcom/yannis/ledcard/base/BasePresenter;
.super Ljava/lang/Object;
.source "BasePresenter.java"

# interfaces
.implements Lcom/yannis/ledcard/base/inter/IPresenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V::",
        "Lcom/yannis/ledcard/base/inter/IView;",
        "M::",
        "Lcom/yannis/ledcard/base/inter/IMode;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/yannis/ledcard/base/inter/IPresenter;"
    }
.end annotation


# instance fields
.field protected mode:Lcom/yannis/ledcard/base/inter/IMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TM;"
        }
    .end annotation
.end field

.field protected view:Lcom/yannis/ledcard/base/inter/IView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yannis/ledcard/base/inter/IView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 25
    iput-object p1, p0, Lcom/yannis/ledcard/base/BasePresenter;->view:Lcom/yannis/ledcard/base/inter/IView;

    .line 26
    invoke-virtual {p0}, Lcom/yannis/ledcard/base/BasePresenter;->createMode()Lcom/yannis/ledcard/base/inter/IMode;

    move-result-object p1

    iput-object p1, p0, Lcom/yannis/ledcard/base/BasePresenter;->mode:Lcom/yannis/ledcard/base/inter/IMode;

    return-void

    .line 23
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "The view must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected abstract createMode()Lcom/yannis/ledcard/base/inter/IMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/yannis/ledcard/base/BasePresenter;->view:Lcom/yannis/ledcard/base/inter/IView;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 51
    check-cast v0, Landroid/app/Activity;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMode()Lcom/yannis/ledcard/base/inter/IMode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/yannis/ledcard/base/BasePresenter;->mode:Lcom/yannis/ledcard/base/inter/IMode;

    return-object v0
.end method

.method public getView()Lcom/yannis/ledcard/base/inter/IView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/yannis/ledcard/base/BasePresenter;->view:Lcom/yannis/ledcard/base/inter/IView;

    return-object v0
.end method

.method public onAttach()V
    .locals 0

    return-void
.end method

.method public onDetach()V
    .locals 1

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/yannis/ledcard/base/BasePresenter;->view:Lcom/yannis/ledcard/base/inter/IView;

    return-void
.end method
