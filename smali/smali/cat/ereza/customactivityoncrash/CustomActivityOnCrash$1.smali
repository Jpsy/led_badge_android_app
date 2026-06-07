.class final Lcat/ereza/customactivityoncrash/CustomActivityOnCrash$1;
.super Ljava/lang/Object;
.source "CustomActivityOnCrash.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcat/ereza/customactivityoncrash/CustomActivityOnCrash;->install(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$oldHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method constructor <init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash$1;->val$oldHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4

    .line 109
    invoke-static {}, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash;->access$000()Lcat/ereza/customactivityoncrash/config/CaocConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcat/ereza/customactivityoncrash/config/CaocConfig;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "CustomActivityOnCrash"

    const-string v1, "App has crashed, executing CustomActivityOnCrash\'s UncaughtExceptionHandler"

    .line 110
    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    invoke-static {}, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash;->access$100()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash;->access$200(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "App already crashed recently, not starting custom error activity because we could enter a restart loop. Are you sure that your app does not crash directly on init?"

    .line 113
    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    iget-object v0, p0, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash$1;->val$oldHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_a

    .line 115
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void

    .line 119
    :cond_0
    invoke-static {}, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash;->access$100()Landroid/app/Application;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash;->access$300(Landroid/content/Context;J)V

    .line 121
    invoke-static {}, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash;->access$000()Lcat/ereza/customactivityoncrash/config/CaocConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcat/ereza/customactivityoncrash/config/CaocConfig;->getErrorActivityClass()Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_1

    .line 124
    invoke-static {}, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash;->access$100()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash;->access$400(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v1

    .line 127
    :cond_1
    invoke-static {p2, v1}, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash;->access$500(Ljava/lang/Throwable;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, "Your application class or your error activity have crashed, the custom activity will not be launched!"

    .line 128
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v0, p0, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash$1;->val$oldHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_a

    .line 130
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void

    .line 133
    :cond_2
    invoke-static {}, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash;->access$000()Lcat/ereza/customactivityoncrash/config/CaocConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcat/ereza/customactivityoncrash/config/CaocConfig;->getBackgroundMode()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    invoke-static {}, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash;->access$600()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 171
    :cond_3
    invoke-static {}, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash;->access$000()Lcat/ereza/customactivityoncrash/config/CaocConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcat/ereza/customactivityoncrash/config/CaocConfig;->getBackgroundMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    .line 172
    iget-object v0, p0, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash$1;->val$oldHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_a

    .line 173
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void

    .line 135
    :cond_4
    :goto_0
    new-instance p1, Landroid/content/Intent;

    invoke-static {}, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash;->access$100()Landroid/app/Application;

    move-result-object v0

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 136
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 137
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 138
    invoke-virtual {p2, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 139
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p2

    .line 145
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const v1, 0x1ffff

    if-le v0, v1, :cond_5

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const v2, 0x1ffe7

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " [stack trace too large]"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_5
    const-string v0, "cat.ereza.customactivityoncrash.EXTRA_STACK_TRACE"

    .line 149
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    invoke-static {}, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash;->access$000()Lcat/ereza/customactivityoncrash/config/CaocConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcat/ereza/customactivityoncrash/config/CaocConfig;->isTrackActivities()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 152
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    :goto_1
    invoke-static {}, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash;->access$700()Ljava/util/Deque;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 154
    invoke-static {}, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash;->access$700()Ljava/util/Deque;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 156
    :cond_6
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "cat.ereza.customactivityoncrash.EXTRA_ACTIVITY_LOG"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    :cond_7
    invoke-static {}, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash;->access$000()Lcat/ereza/customactivityoncrash/config/CaocConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcat/ereza/customactivityoncrash/config/CaocConfig;->isShowRestartButton()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-static {}, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash;->access$000()Lcat/ereza/customactivityoncrash/config/CaocConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcat/ereza/customactivityoncrash/config/CaocConfig;->getRestartActivityClass()Ljava/lang/Class;

    move-result-object p2

    if-nez p2, :cond_8

    .line 162
    invoke-static {}, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash;->access$000()Lcat/ereza/customactivityoncrash/config/CaocConfig;

    move-result-object p2

    invoke-static {}, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash;->access$100()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash;->access$800(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcat/ereza/customactivityoncrash/config/CaocConfig;->setRestartActivityClass(Ljava/lang/Class;)V

    .line 165
    :cond_8
    invoke-static {}, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash;->access$000()Lcat/ereza/customactivityoncrash/config/CaocConfig;

    move-result-object p2

    const-string v0, "cat.ereza.customactivityoncrash.EXTRA_CONFIG"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const p2, 0x10008000

    .line 166
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 167
    invoke-static {}, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash;->access$000()Lcat/ereza/customactivityoncrash/config/CaocConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcat/ereza/customactivityoncrash/config/CaocConfig;->getEventListener()Lcat/ereza/customactivityoncrash/CustomActivityOnCrash$EventListener;

    move-result-object p2

    if-eqz p2, :cond_9

    .line 168
    invoke-static {}, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash;->access$000()Lcat/ereza/customactivityoncrash/config/CaocConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcat/ereza/customactivityoncrash/config/CaocConfig;->getEventListener()Lcat/ereza/customactivityoncrash/CustomActivityOnCrash$EventListener;

    move-result-object p2

    invoke-interface {p2}, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash$EventListener;->onLaunchErrorActivity()V

    .line 170
    :cond_9
    invoke-static {}, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash;->access$100()Landroid/app/Application;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    .line 180
    :cond_a
    invoke-static {}, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash;->access$900()Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    if-eqz p1, :cond_b

    .line 184
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 185
    invoke-static {}, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash;->access$900()Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->clear()V

    .line 187
    :cond_b
    invoke-static {}, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash;->access$1000()V

    goto :goto_2

    .line 188
    :cond_c
    iget-object v0, p0, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash$1;->val$oldHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_d

    .line 189
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_d
    :goto_2
    return-void
.end method
