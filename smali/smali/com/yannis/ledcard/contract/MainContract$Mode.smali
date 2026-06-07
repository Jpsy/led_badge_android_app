.class public interface abstract Lcom/yannis/ledcard/contract/MainContract$Mode;
.super Ljava/lang/Object;
.source "MainContract.java"

# interfaces
.implements Lcom/yannis/ledcard/base/inter/IMode;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yannis/ledcard/contract/MainContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Mode"
.end annotation


# virtual methods
.method public abstract getSendHeader(Ljava/util/List;I)[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yannis/ledcard/bean/SendContent;",
            ">;I)[B"
        }
    .end annotation
.end method

.method public abstract getSendLedData(Ljava/util/List;I)Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yannis/ledcard/bean/SendContent;",
            ">;I)",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation
.end method

.method public abstract getSendPackageSize()I
.end method
