.class public final synthetic Lcom/yannis/ledcard/thread/ThreadPoolsUtil$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/yannis/ledcard/thread/ThreadPoolsUtil;

.field public final synthetic f$1:Ljava/lang/Runnable;

.field public final synthetic f$2:Lcom/yannis/ledcard/thread/ThreadPoolsUtil$Call;


# direct methods
.method public synthetic constructor <init>(Lcom/yannis/ledcard/thread/ThreadPoolsUtil;Ljava/lang/Runnable;Lcom/yannis/ledcard/thread/ThreadPoolsUtil$Call;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yannis/ledcard/thread/ThreadPoolsUtil$$ExternalSyntheticLambda1;->f$0:Lcom/yannis/ledcard/thread/ThreadPoolsUtil;

    iput-object p2, p0, Lcom/yannis/ledcard/thread/ThreadPoolsUtil$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/yannis/ledcard/thread/ThreadPoolsUtil$$ExternalSyntheticLambda1;->f$2:Lcom/yannis/ledcard/thread/ThreadPoolsUtil$Call;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/yannis/ledcard/thread/ThreadPoolsUtil$$ExternalSyntheticLambda1;->f$0:Lcom/yannis/ledcard/thread/ThreadPoolsUtil;

    iget-object v1, p0, Lcom/yannis/ledcard/thread/ThreadPoolsUtil$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/yannis/ledcard/thread/ThreadPoolsUtil$$ExternalSyntheticLambda1;->f$2:Lcom/yannis/ledcard/thread/ThreadPoolsUtil$Call;

    invoke-virtual {v0, v1, v2}, Lcom/yannis/ledcard/thread/ThreadPoolsUtil;->lambda$executeWithCallback$1$com-yannis-ledcard-thread-ThreadPoolsUtil(Ljava/lang/Runnable;Lcom/yannis/ledcard/thread/ThreadPoolsUtil$Call;)V

    return-void
.end method
