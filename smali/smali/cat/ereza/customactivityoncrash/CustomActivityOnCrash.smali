.class public final Lcat/ereza/customactivityoncrash/CustomActivityOnCrash;
.super Ljava/lang/Object;
.source "CustomActivityOnCrash.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcat/ereza/customactivityoncrash/CustomActivityOnCrash$EventListener;
    }
.end annotation


# static fields
.field private static final CAOC_HANDLER_PACKAGE_NAME:Ljava/lang/String; = "cat.ereza.customactivityoncrash"

.field private static final DEFAULT_HANDLER_PACKAGE_NAME:Ljava/lang/String; = "com.android.internal.os"

.field private static final EXTRA_ACTIVITY_LOG:Ljava/lang/String; = "cat.ereza.customactivityoncrash.EXTRA_ACTIVITY_LOG"

.field private static final EXTRA_CONFIG:Ljava/lang/String; = "cat.ereza.customactivityoncrash.EXTRA_CONFIG"

.field private static final EXTRA_STACK_TRACE:Ljava/lang/String; = "cat.ereza.customactivityoncrash.EXTRA_STACK_TRACE"

.field private static final INTENT_ACTION_ERROR_ACTIVITY:Ljava/lang/String; = "cat.ereza.customactivityoncrash.ERROR"

.field private static final INTENT_ACTION_RESTART_ACTIVITY:Ljava/lang/String; = "cat.ereza.customactivityoncrash.RESTART"

.field private static final MAX_ACTIVITIES_IN_LOG:I = 0x32

.field private static final MAX_STACK_TRACE_SIZE:I = 0x1ffff

.field private static final SHARED_PREFERENCES_FIELD_TIMESTAMP:Ljava/lang/String; = "last_crash_timestamp"

.field private static final SHARED_PREFERENCES_FILE:Ljava/lang/String; = "custom_activity_on_crash"

.field private static final TAG:Ljava/lang/String; = "CustomActivityOnCrash"

.field private static final activityLog:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static application:Landroid/app/Application;

.field private static config:Lcat/ereza/customactivityoncrash/config/CaocConfig;

.field private static isInBackground:Z

.field private static lastActivityCreated:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 76
    new-instance v0, Lcat/ereza/customactivityoncrash/config/CaocConfig;

    invoke-direct {v0}, Lcat/ereza/customactivityoncrash/config/CaocConfig;-><init>()V

    sput-object v0, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash;->config:Lcat/ereza/customactivityoncrash/config/CaocConfig;

    .line 77
    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    sput-object v0, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash;->activityLog:Ljava/util/Deque;

    .line 78
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash;->lastActivityCreated:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x1

    .line 79
    sput-boolean v0, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash;->isInBackground:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcat/ereza/customactivityoncrash/config/CaocConfig;
    .locals 1

    .line 52
    sget-object v0, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash;->config:Lcat/ereza/customactivityoncrash/config/CaocConfig;

    return-object v0
.end method

.method static synthetic access$100()Landroid/app/Application;
    .locals 1

    .line 52
    sget-object v0, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash;->application:Landroid/app/Application;

    return-object v0
.end method

.method static synthetic access$1000()V
    .locals 0

    .line 52
    invoke-static {}, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash;->killCurrentProcess()V

    return-void
.end method

.method static synthetic access$200(Landroid/content/Context;)Z
    .locals 0

    .line 52
    invoke-static {p0}, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash;->hasCrashedInTheLastSeconds(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Landroid/content/Context;J)V
    .locals 0

    .line 52
    invoke-static {p0, p1, p2}, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash;->setLastCrashTimestamp(Landroid/content/Context;J)V

    return-void
.end method

.method static synthetic access$400(Landroid/content/Context;)Ljava/lang/Class;
    .locals 0

    .line 52
    invoke-static {p0}, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash;->guessErrorActivityClass(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Ljava/lang/Throwable;Ljava/lang/Class;)Z
    .locals 0

    .line 52
    invoke-static {p0, p1}, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash;->isStackTraceLikelyConflictive(Ljava/lang/Throwable;Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$600()Z
    .locals 1

    .line 52
    sget-boolean v0, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash;->isInBackground:Z

    return v0
.end method

.method static synthetic access$602(Z)Z
    .locals 0

    .line 52
    sput-boolean p0, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash;->isInBackground:Z

    return p0
.end method

.method static synthetic access$700()Ljava/util/Deque;
    .locals 1

    .line 52
    sget-object v0, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash;->activityLog:Ljava/util/Deque;

    return-object v0
.end method

.method static synthetic access$800(Landroid/content/Context;)Ljava/lang/Class;
    .locals 0

    .line 52
    invoke-static {p0}, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash;->guessRestartActivityClass(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900()Ljava/lang/ref/WeakReference;
    .locals 1

    .line 52
    sget-object v0, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash;->lastActivityCreated:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$902(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 52
    sput-object p0, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash;->lastActivityCreated:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private static capitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_2

    .line 513
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 516
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 517
    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p0

    .line 520
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public static closeApplication(Landroid/app/Activity;Lcat/ereza/customactivityoncrash/config/CaocConfig;)V
    .locals 1

    .line 388
    invoke-virtual {p1}, Lcat/ereza/customactivityoncrash/config/CaocConfig;->getEventListener()Lcat/ereza/customactivityoncrash/CustomActivityOnCrash$EventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 389
    invoke-virtual {p1}, Lcat/ereza/customactivityoncrash/config/CaocConfig;->getEventListener()Lcat/ereza/customactivityoncrash/CustomActivityOnCrash$EventListener;

    move-result-object p1

    invoke-interface {p1}, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash$EventListener;->onCloseAppFromErrorActivity()V

    .line 391
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 392
    invoke-static {}, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash;->killCurrentProcess()V

    return-void
.end method

.method public static getActivityLogFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    const-string v0, "cat.ereza.customactivityoncrash.EXTRA_ACTIVITY_LOG"

    .line 298
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAllErrorDetailsFromIntent(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;
    .locals 5

    .line 312
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 313
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 316
    invoke-static {p0, v1}, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash;->getBuildDateAsString(Landroid/content/Context;Ljava/text/DateFormat;)Ljava/lang/String;

    move-result-object v2

    .line 319
    invoke-static {p0}, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 323
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Build version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " \n"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_0

    .line 325
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Build date: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 327
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Current date: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "Device: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash;->getDeviceModelName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " \n \n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "Stack trace:  \n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash;->getStackTraceFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 335
    invoke-static {p1}, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash;->getActivityLogFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\nUser actions: \n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method private static getBuildDateAsString(Landroid/content/Context;Ljava/text/DateFormat;)Ljava/lang/String;
    .locals 5

    .line 452
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 453
    new-instance v0, Ljava/util/zip/ZipFile;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    const-string p0, "classes.dex"

    .line 456
    invoke-virtual {v0, p0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object p0

    .line 457
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getTime()J

    move-result-wide v1

    .line 460
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-wide/16 v1, 0x0

    :goto_0
    const-wide v3, 0x48d2360180L

    cmp-long p0, v1, v3

    if-lez p0, :cond_0

    .line 466
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getConfig()Lcat/ereza/customactivityoncrash/config/CaocConfig;
    .locals 1

    .line 406
    sget-object v0, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash;->config:Lcat/ereza/customactivityoncrash/config/CaocConfig;

    return-object v0
.end method

.method public static getConfigFromIntent(Landroid/content/Intent;)Lcat/ereza/customactivityoncrash/config/CaocConfig;
    .locals 3

    const-string v0, "cat.ereza.customactivityoncrash.EXTRA_CONFIG"

    .line 279
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcat/ereza/customactivityoncrash/config/CaocConfig;

    .line 280
    invoke-virtual {v0}, Lcat/ereza/customactivityoncrash/config/CaocConfig;->isLogErrorOnRestart()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 281
    invoke-static {p0}, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash;->getStackTraceFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 283
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The previous app process crashed. This is the stack trace of the crash:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash;->getStackTraceFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "CustomActivityOnCrash"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method private static getDeviceModelName()Ljava/lang/String;
    .locals 3

    .line 496
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 497
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 498
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 499
    invoke-static {v1}, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 501
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getErrorActivityClassWithIntentFilter(Landroid/content/Context;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .line 631
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "cat.ereza.customactivityoncrash.ERROR"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 632
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v1, 0x40

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 635
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 636
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    .line 638
    :try_start_0
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "CustomActivityOnCrash"

    const-string v1, "Failed when resolving the error activity class via intent filter, stack trace follows!"

    .line 641
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getLastCrashTimestamp(Landroid/content/Context;)J
    .locals 3

    const-string v0, "custom_activity_on_crash"

    const/4 v1, 0x0

    .line 673
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "last_crash_timestamp"

    const-wide/16 v1, -0x1

    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getLauncherActivity(Landroid/content/Context;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .line 585
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 586
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 588
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "CustomActivityOnCrash"

    const-string v1, "Failed when resolving the restart activity class via getLaunchIntentForPackage, stack trace follows!"

    .line 591
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getRestartActivityClassWithIntentFilter(Landroid/content/Context;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .line 558
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "cat.ereza.customactivityoncrash.RESTART"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 559
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v1, 0x40

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 562
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 563
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    .line 565
    :try_start_0
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "CustomActivityOnCrash"

    const-string v1, "Failed when resolving the restart activity class via intent filter, stack trace follows!"

    .line 568
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getStackTraceFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    const-string v0, "cat.ereza.customactivityoncrash.EXTRA_STACK_TRACE"

    .line 268
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 481
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 482
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "Unknown"

    return-object p0
.end method

.method private static guessErrorActivityClass(Landroid/content/Context;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .line 611
    invoke-static {p0}, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash;->getErrorActivityClassWithIntentFilter(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object p0

    if-nez p0, :cond_0

    .line 615
    const-class p0, Lcat/ereza/customactivityoncrash/activity/DefaultErrorActivity;

    :cond_0
    return-object p0
.end method

.method private static guessRestartActivityClass(Landroid/content/Context;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .line 538
    invoke-static {p0}, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash;->getRestartActivityClassWithIntentFilter(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    .line 542
    invoke-static {p0}, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash;->getLauncherActivity(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private static hasCrashedInTheLastSeconds(Landroid/content/Context;)Z
    .locals 4

    .line 683
    invoke-static {p0}, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash;->getLastCrashTimestamp(Landroid/content/Context;)J

    move-result-wide v0

    .line 684
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-gtz p0, :cond_0

    sub-long/2addr v2, v0

    .line 686
    sget-object p0, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash;->config:Lcat/ereza/customactivityoncrash/config/CaocConfig;

    invoke-virtual {p0}, Lcat/ereza/customactivityoncrash/config/CaocConfig;->getMinTimeBetweenCrashesMs()I

    move-result p0

    int-to-long v0, p0

    cmp-long p0, v2, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static install(Landroid/content/Context;)V
    .locals 4

    const-string v0, "CustomActivityOnCrash"

    if-nez p0, :cond_0

    :try_start_0
    const-string p0, "Install failed: context is null!"

    .line 91
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 94
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 96
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "cat.ereza.customactivityoncrash"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p0, "CustomActivityOnCrash was already installed, doing nothing!"

    .line 97
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 99
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.internal.os"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "IMPORTANT WARNING! You already have an UncaughtExceptionHandler, are you sure this is correct? If you use a custom UncaughtExceptionHandler, you must initialize it AFTER CustomActivityOnCrash! Installing anyway, but your original handler will not be called."

    .line 100
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Application;

    sput-object p0, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash;->application:Landroid/app/Application;

    .line 106
    new-instance p0, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash$1;

    invoke-direct {p0, v1}, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash$1;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 193
    sget-object p0, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash;->application:Landroid/app/Application;

    new-instance v1, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash$2;

    invoke-direct {v1}, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash$2;-><init>()V

    invoke-virtual {p0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :goto_0
    const-string p0, "CustomActivityOnCrash has been installed."

    .line 253
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    const-string v1, "An unknown error occurred while installing CustomActivityOnCrash, it may not have been properly initialized. Please report this as a bug if needed."

    .line 256
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method private static isStackTraceLikelyConflictive(Ljava/lang/Throwable;Ljava/lang/Class;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;)Z"
        }
    .end annotation

    .line 431
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 432
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    aget-object v4, v0, v3

    .line 433
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.app.ActivityThread"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "handleBindApplication"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 437
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_0

    return v2
.end method

.method private static killCurrentProcess()V
    .locals 1

    .line 653
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    const/16 v0, 0xa

    .line 654
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public static restartApplication(Landroid/app/Activity;Lcat/ereza/customactivityoncrash/config/CaocConfig;)V
    .locals 2

    .line 375
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Lcat/ereza/customactivityoncrash/config/CaocConfig;->getRestartActivityClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 376
    invoke-static {p0, v0, p1}, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash;->restartApplicationWithIntent(Landroid/app/Activity;Landroid/content/Intent;Lcat/ereza/customactivityoncrash/config/CaocConfig;)V

    return-void
.end method

.method public static restartApplicationWithIntent(Landroid/app/Activity;Landroid/content/Intent;Lcat/ereza/customactivityoncrash/config/CaocConfig;)V
    .locals 1

    const v0, 0x10208000

    .line 356
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 357
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "android.intent.action.MAIN"

    .line 363
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.category.LAUNCHER"

    .line 364
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 366
    :cond_0
    invoke-virtual {p2}, Lcat/ereza/customactivityoncrash/config/CaocConfig;->getEventListener()Lcat/ereza/customactivityoncrash/CustomActivityOnCrash$EventListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 367
    invoke-virtual {p2}, Lcat/ereza/customactivityoncrash/config/CaocConfig;->getEventListener()Lcat/ereza/customactivityoncrash/CustomActivityOnCrash$EventListener;

    move-result-object p2

    invoke-interface {p2}, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash$EventListener;->onRestartAppFromErrorActivity()V

    .line 369
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 370
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 371
    invoke-static {}, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash;->killCurrentProcess()V

    return-void
.end method

.method public static setConfig(Lcat/ereza/customactivityoncrash/config/CaocConfig;)V
    .locals 0

    .line 417
    sput-object p0, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash;->config:Lcat/ereza/customactivityoncrash/config/CaocConfig;

    return-void
.end method

.method private static setLastCrashTimestamp(Landroid/content/Context;J)V
    .locals 2

    const-string v0, "custom_activity_on_crash"

    const/4 v1, 0x0

    .line 664
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "last_crash_timestamp"

    invoke-interface {p0, v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
