.class public interface abstract Lcom/yannis/ledcard/contract/MainContract$View;
.super Ljava/lang/Object;
.source "MainContract.java"

# interfaces
.implements Lcom/yannis/ledcard/base/inter/IView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yannis/ledcard/contract/MainContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation


# virtual methods
.method public abstract logTv(Ljava/lang/String;)V
.end method

.method public abstract scanSuccess()V
.end method

.method public abstract sendFinished()V
.end method

.method public abstract setSendBtnIsEnable(Z)V
.end method

.method public abstract showMsg(Ljava/lang/String;)V
.end method

.method public abstract startScan()V
.end method

.method public abstract startSend()V
.end method
