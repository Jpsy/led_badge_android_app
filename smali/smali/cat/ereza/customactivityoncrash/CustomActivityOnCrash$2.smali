.class final Lcat/ereza/customactivityoncrash/CustomActivityOnCrash$2;
.super Ljava/lang/Object;
.source "CustomActivityOnCrash.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcat/ereza/customactivityoncrash/CustomActivityOnCrash;->install(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field currentlyStartedActivities:I

.field final dateFormat:Ljava/text/DateFormat;


# direct methods
.method constructor <init>()V
    .locals 3

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 194
    iput v0, p0, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash$2;->currentlyStartedActivities:I

    .line 195
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash$2;->dateFormat:Ljava/text/DateFormat;

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3

    .line 199
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-static {}, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash;->access$000()Lcat/ereza/customactivityoncrash/config/CaocConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcat/ereza/customactivityoncrash/config/CaocConfig;->getErrorActivityClass()Ljava/lang/Class;

    move-result-object v0

    if-eq p2, v0, :cond_0

    .line 204
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {p2}, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash;->access$902(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 206
    :cond_0
    invoke-static {}, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash;->access$000()Lcat/ereza/customactivityoncrash/config/CaocConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcat/ereza/customactivityoncrash/config/CaocConfig;->isTrackActivities()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 207
    invoke-static {}, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash;->access$700()Ljava/util/Deque;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash$2;->dateFormat:Ljava/text/DateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " created\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 4

    .line 246
    invoke-static {}, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash;->access$000()Lcat/ereza/customactivityoncrash/config/CaocConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcat/ereza/customactivityoncrash/config/CaocConfig;->isTrackActivities()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    invoke-static {}, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash;->access$700()Ljava/util/Deque;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash$2;->dateFormat:Ljava/text/DateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " destroyed\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 4

    .line 227
    invoke-static {}, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash;->access$000()Lcat/ereza/customactivityoncrash/config/CaocConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcat/ereza/customactivityoncrash/config/CaocConfig;->isTrackActivities()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    invoke-static {}, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash;->access$700()Ljava/util/Deque;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash$2;->dateFormat:Ljava/text/DateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " paused\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 4

    .line 220
    invoke-static {}, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash;->access$000()Lcat/ereza/customactivityoncrash/config/CaocConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcat/ereza/customactivityoncrash/config/CaocConfig;->isTrackActivities()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    invoke-static {}, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash;->access$700()Ljava/util/Deque;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash$2;->dateFormat:Ljava/text/DateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " resumed\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .line 213
    iget p1, p0, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash$2;->currentlyStartedActivities:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash$2;->currentlyStartedActivities:I

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 214
    :goto_0
    invoke-static {v0}, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash;->access$602(Z)Z

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    .line 235
    iget p1, p0, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash$2;->currentlyStartedActivities:I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    iput p1, p0, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash$2;->currentlyStartedActivities:I

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 236
    :goto_0
    invoke-static {v0}, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash;->access$602(Z)Z

    return-void
.end method
