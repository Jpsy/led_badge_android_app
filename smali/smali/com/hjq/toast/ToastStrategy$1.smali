.class Lcom/hjq/toast/ToastStrategy$1;
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

    .line 124
    iput-object p1, p0, Lcom/hjq/toast/ToastStrategy$1;->this$0:Lcom/hjq/toast/ToastStrategy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 129
    iget-object v0, p0, Lcom/hjq/toast/ToastStrategy$1;->this$0:Lcom/hjq/toast/ToastStrategy;

    invoke-static {v0}, Lcom/hjq/toast/ToastStrategy;->access$000(Lcom/hjq/toast/ToastStrategy;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/hjq/toast/ToastStrategy$1;->this$0:Lcom/hjq/toast/ToastStrategy;

    invoke-static {v0}, Lcom/hjq/toast/ToastStrategy;->access$000(Lcom/hjq/toast/ToastStrategy;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hjq/toast/config/IToast;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 135
    invoke-interface {v0}, Lcom/hjq/toast/config/IToast;->cancel()V

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/hjq/toast/ToastStrategy$1;->this$0:Lcom/hjq/toast/ToastStrategy;

    invoke-static {v0}, Lcom/hjq/toast/ToastStrategy;->access$100(Lcom/hjq/toast/ToastStrategy;)Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hjq/toast/ToastStrategy;->createToast(Landroid/app/Application;)Lcom/hjq/toast/config/IToast;

    move-result-object v0

    .line 141
    iget-object v1, p0, Lcom/hjq/toast/ToastStrategy$1;->this$0:Lcom/hjq/toast/ToastStrategy;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v1, v2}, Lcom/hjq/toast/ToastStrategy;->access$002(Lcom/hjq/toast/ToastStrategy;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 142
    iget-object v1, p0, Lcom/hjq/toast/ToastStrategy$1;->this$0:Lcom/hjq/toast/ToastStrategy;

    invoke-static {v1}, Lcom/hjq/toast/ToastStrategy;->access$200(Lcom/hjq/toast/ToastStrategy;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hjq/toast/ToastStrategy;->getToastDuration(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/hjq/toast/config/IToast;->setDuration(I)V

    .line 143
    iget-object v1, p0, Lcom/hjq/toast/ToastStrategy$1;->this$0:Lcom/hjq/toast/ToastStrategy;

    invoke-static {v1}, Lcom/hjq/toast/ToastStrategy;->access$200(Lcom/hjq/toast/ToastStrategy;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/hjq/toast/config/IToast;->setText(Ljava/lang/CharSequence;)V

    .line 144
    invoke-interface {v0}, Lcom/hjq/toast/config/IToast;->show()V

    return-void
.end method
