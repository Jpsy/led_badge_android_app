.class public Lcom/yannis/ledcard/thread/ThreadPoolsUtil;
.super Ljava/lang/Object;
.source "ThreadPoolsUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yannis/ledcard/thread/ThreadPoolsUtil$Call;
    }
.end annotation


# static fields
.field private static map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ThreadPoolExecutor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private executor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private name:Ljava/lang/String;

.field private uiThreadHandler:Landroid/os/Handler;

.field private waitingCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/yannis/ledcard/thread/ThreadPoolsUtil;->map:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIJLjava/util/concurrent/TimeUnit;I)V
    .locals 11

    move-object v10, p0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    monitor-enter p0

    move-object v0, p1

    .line 81
    :try_start_0
    iput-object v0, v10, Lcom/yannis/ledcard/thread/ThreadPoolsUtil;->name:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v8, p7

    int-to-double v1, v8

    const-wide/high16 v3, 0x3ff8000000000000L    # 1.5

    .line 82
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    double-to-int v1, v1

    :try_start_1
    iput v1, v10, Lcom/yannis/ledcard/thread/ThreadPoolsUtil;->waitingCount:I

    .line 83
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, v10, Lcom/yannis/ledcard/thread/ThreadPoolsUtil;->uiThreadHandler:Landroid/os/Handler;

    const-string v9, "#"

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    move-object/from16 v7, p6

    move/from16 v8, p7

    .line 84
    invoke-direct/range {v1 .. v9}, Lcom/yannis/ledcard/thread/ThreadPoolsUtil;->buildKey(Ljava/lang/String;IIJLjava/util/concurrent/TimeUnit;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    sget-object v1, Lcom/yannis/ledcard/thread/ThreadPoolsUtil;->map:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    sget-object v1, Lcom/yannis/ledcard/thread/ThreadPoolsUtil;->map:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    iput-object v0, v10, Lcom/yannis/ledcard/thread/ThreadPoolsUtil;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    goto :goto_0

    .line 88
    :cond_0
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    iget v1, v10, Lcom/yannis/ledcard/thread/ThreadPoolsUtil;->waitingCount:I

    invoke-direct {v7, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    move-object v1, v8

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v8, v10, Lcom/yannis/ledcard/thread/ThreadPoolsUtil;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 90
    sget-object v1, Lcom/yannis/ledcard/thread/ThreadPoolsUtil;->map:Ljava/util/Map;

    invoke-interface {v1, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    move-object v10, p0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    monitor-enter p0

    move-object v0, p1

    .line 51
    :try_start_0
    iput-object v0, v10, Lcom/yannis/ledcard/thread/ThreadPoolsUtil;->name:Ljava/lang/String;

    .line 52
    invoke-interface/range {p7 .. p7}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v1

    iput v1, v10, Lcom/yannis/ledcard/thread/ThreadPoolsUtil;->waitingCount:I

    .line 53
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, v10, Lcom/yannis/ledcard/thread/ThreadPoolsUtil;->uiThreadHandler:Landroid/os/Handler;

    .line 54
    invoke-interface/range {p7 .. p7}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v8

    const-string v9, "#"

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v9}, Lcom/yannis/ledcard/thread/ThreadPoolsUtil;->buildKey(Ljava/lang/String;IIJLjava/util/concurrent/TimeUnit;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    sget-object v1, Lcom/yannis/ledcard/thread/ThreadPoolsUtil;->map:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    sget-object v1, Lcom/yannis/ledcard/thread/ThreadPoolsUtil;->map:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    iput-object v0, v10, Lcom/yannis/ledcard/thread/ThreadPoolsUtil;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    goto :goto_0

    .line 58
    :cond_0
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    move-object v1, v8

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v8, v10, Lcom/yannis/ledcard/thread/ThreadPoolsUtil;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 59
    sget-object v1, Lcom/yannis/ledcard/thread/ThreadPoolsUtil;->map:Ljava/util/Map;

    invoke-interface {v1, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private buildKey(Ljava/lang/String;IIJLjava/util/concurrent/TimeUnit;ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {p6}, Ljava/util/concurrent/TimeUnit;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private checkQueneSize()V
    .locals 2

    .line 153
    :goto_0
    invoke-virtual {p0}, Lcom/yannis/ledcard/thread/ThreadPoolsUtil;->getTaskSize()I

    move-result v0

    iget v1, p0, Lcom/yannis/ledcard/thread/ThreadPoolsUtil;->waitingCount:I

    if-lt v0, v1, :cond_0

    const-wide/16 v0, 0x64

    .line 155
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 157
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic lambda$executeWithCallback$0(Lcom/yannis/ledcard/thread/ThreadPoolsUtil$Call;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 146
    invoke-interface {p0}, Lcom/yannis/ledcard/thread/ThreadPoolsUtil$Call;->runOnForeground()V

    :cond_0
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 130
    invoke-direct {p0}, Lcom/yannis/ledcard/thread/ThreadPoolsUtil;->checkQueneSize()V

    .line 131
    iget-object v0, p0, Lcom/yannis/ledcard/thread/ThreadPoolsUtil;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public executeWithCallback(Ljava/lang/Runnable;Lcom/yannis/ledcard/thread/ThreadPoolsUtil$Call;)V
    .locals 2

    .line 141
    invoke-direct {p0}, Lcom/yannis/ledcard/thread/ThreadPoolsUtil;->checkQueneSize()V

    .line 142
    iget-object v0, p0, Lcom/yannis/ledcard/thread/ThreadPoolsUtil;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/yannis/ledcard/thread/ThreadPoolsUtil$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/yannis/ledcard/thread/ThreadPoolsUtil$$ExternalSyntheticLambda1;-><init>(Lcom/yannis/ledcard/thread/ThreadPoolsUtil;Ljava/lang/Runnable;Lcom/yannis/ledcard/thread/ThreadPoolsUtil$Call;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getTaskSize()I
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/yannis/ledcard/thread/ThreadPoolsUtil;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    return v0
.end method

.method public synthetic lambda$executeWithCallback$1$com-yannis-ledcard-thread-ThreadPoolsUtil(Ljava/lang/Runnable;Lcom/yannis/ledcard/thread/ThreadPoolsUtil$Call;)V
    .locals 1

    .line 143
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 144
    iget-object p1, p0, Lcom/yannis/ledcard/thread/ThreadPoolsUtil;->uiThreadHandler:Landroid/os/Handler;

    new-instance v0, Lcom/yannis/ledcard/thread/ThreadPoolsUtil$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lcom/yannis/ledcard/thread/ThreadPoolsUtil$$ExternalSyntheticLambda0;-><init>(Lcom/yannis/ledcard/thread/ThreadPoolsUtil$Call;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
