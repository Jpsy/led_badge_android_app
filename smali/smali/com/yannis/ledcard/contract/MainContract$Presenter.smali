.class public interface abstract Lcom/yannis/ledcard/contract/MainContract$Presenter;
.super Ljava/lang/Object;
.source "MainContract.java"

# interfaces
.implements Lcom/yannis/ledcard/base/inter/IPresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yannis/ledcard/contract/MainContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Presenter"
.end annotation


# virtual methods
.method public abstract registerBroadcastReceiver()V
.end method

.method public abstract sendData(Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yannis/ledcard/bean/SendContent;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract startScanDevice()V
.end method

.method public abstract testParseData(Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yannis/ledcard/bean/SendContent;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract unregisterReceiver()V
.end method
