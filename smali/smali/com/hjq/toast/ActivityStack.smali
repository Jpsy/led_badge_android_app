.class final Lcom/hjq/toast/ActivityStack;
.super Ljava/lang/Object;
.source "ActivityStack.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field private mForegroundActivity:Landroid/app/Activity;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static register(Landroid/app/Application;)Lcom/hjq/toast/ActivityStack;
    .locals 1

    .line 19
    new-instance v0, Lcom/hjq/toast/ActivityStack;

    invoke-direct {v0}, Lcom/hjq/toast/ActivityStack;-><init>()V

    .line 20
    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-object v0
.end method


# virtual methods
.method public getForegroundActivity()Landroid/app/Activity;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/hjq/toast/ActivityStack;->mForegroundActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/hjq/toast/ActivityStack;->mForegroundActivity:Landroid/app/Activity;

    if-eq v0, p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 47
    iput-object p1, p0, Lcom/hjq/toast/ActivityStack;->mForegroundActivity:Landroid/app/Activity;

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/hjq/toast/ActivityStack;->mForegroundActivity:Landroid/app/Activity;

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
