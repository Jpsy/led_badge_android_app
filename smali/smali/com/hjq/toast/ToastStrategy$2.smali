.class Lcom/hjq/toast/ToastStrategy$2;
.super Ljava/lang/Object;
.source "ToastStrategy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hjq/toast/ToastStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hjq/toast/ToastStrategy;


# direct methods
.method constructor <init>(Lcom/hjq/toast/ToastStrategy;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/hjq/toast/ToastStrategy$2;->this$0:Lcom/hjq/toast/ToastStrategy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/hjq/toast/ToastStrategy$2;->this$0:Lcom/hjq/toast/ToastStrategy;

    invoke-static {v0}, Lcom/hjq/toast/ToastStrategy;->access$000(Lcom/hjq/toast/ToastStrategy;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/hjq/toast/ToastStrategy$2;->this$0:Lcom/hjq/toast/ToastStrategy;

    invoke-static {v0}, Lcom/hjq/toast/ToastStrategy;->access$000(Lcom/hjq/toast/ToastStrategy;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hjq/toast/config/IToast;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 163
    :cond_1
    invoke-interface {v0}, Lcom/hjq/toast/config/IToast;->cancel()V

    return-void
.end method
