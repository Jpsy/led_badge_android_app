.class public Lcom/yannis/ledcard/thread/HBThreadPools;
.super Lcom/yannis/ledcard/thread/AbsThreadPoolManager;
.source "HBThreadPools.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yannis/ledcard/thread/HBThreadPools$HBThreadPoolsHandler;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/yannis/ledcard/thread/AbsThreadPoolManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/yannis/ledcard/thread/AbsThreadPoolManager;
    .locals 1

    .line 11
    invoke-static {}, Lcom/yannis/ledcard/thread/HBThreadPools$HBThreadPoolsHandler;->access$000()Lcom/yannis/ledcard/thread/HBThreadPools;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected getThreadPoolName()Ljava/lang/String;
    .locals 1

    const-string v0, "HB-ThreadPools"

    return-object v0
.end method
