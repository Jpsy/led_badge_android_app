.class public abstract Lcom/yannis/ledcard/thread/AbsThreadPoolManager;
.super Ljava/lang/Object;
.source "AbsThreadPoolManager.java"


# instance fields
.field private executor:Lcom/yannis/ledcard/thread/ThreadPoolsUtil;


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/yannis/ledcard/thread/AbsThreadPoolManager;->executor:Lcom/yannis/ledcard/thread/ThreadPoolsUtil;

    .line 15
    new-instance v0, Lcom/yannis/ledcard/thread/ThreadPoolsUtil;

    invoke-virtual {p0}, Lcom/yannis/ledcard/thread/AbsThreadPoolManager;->getThreadPoolName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/yannis/ledcard/thread/AbsThreadPoolManager;->corePoolSize()I

    move-result v3

    invoke-virtual {p0}, Lcom/yannis/ledcard/thread/AbsThreadPoolManager;->maximumPoolSize()I

    move-result v4

    invoke-virtual {p0}, Lcom/yannis/ledcard/thread/AbsThreadPoolManager;->keepAliveTime()J

    move-result-wide v5

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0}, Lcom/yannis/ledcard/thread/AbsThreadPoolManager;->waitingCount()I

    move-result v8

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/yannis/ledcard/thread/ThreadPoolsUtil;-><init>(Ljava/lang/String;IIJLjava/util/concurrent/TimeUnit;I)V

    iput-object v0, p0, Lcom/yannis/ledcard/thread/AbsThreadPoolManager;->executor:Lcom/yannis/ledcard/thread/ThreadPoolsUtil;

    return-void
.end method


# virtual methods
.method protected corePoolSize()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/yannis/ledcard/thread/AbsThreadPoolManager;->executor:Lcom/yannis/ledcard/thread/ThreadPoolsUtil;

    invoke-virtual {v0, p1}, Lcom/yannis/ledcard/thread/ThreadPoolsUtil;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public executeWithCall(Ljava/lang/Runnable;Lcom/yannis/ledcard/thread/ThreadPoolsUtil$Call;)V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/yannis/ledcard/thread/AbsThreadPoolManager;->executor:Lcom/yannis/ledcard/thread/ThreadPoolsUtil;

    invoke-virtual {v0, p1, p2}, Lcom/yannis/ledcard/thread/ThreadPoolsUtil;->executeWithCallback(Ljava/lang/Runnable;Lcom/yannis/ledcard/thread/ThreadPoolsUtil$Call;)V

    return-void
.end method

.method protected abstract getThreadPoolName()Ljava/lang/String;
.end method

.method protected keepAliveTime()J
    .locals 2

    const-wide/16 v0, 0xa

    return-wide v0
.end method

.method protected maximumPoolSize()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method protected waitingCount()I
    .locals 1

    const v0, 0x30d40

    return v0
.end method
