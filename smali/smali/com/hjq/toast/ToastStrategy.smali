.class public Lcom/hjq/toast/ToastStrategy;
.super Ljava/lang/Object;
.source "ToastStrategy.java"

# interfaces
.implements Lcom/hjq/toast/config/IToastStrategy;


# static fields
.field private static final DELAY_TIMEOUT:I = 0xc8

.field private static final HANDLER:Landroid/os/Handler;


# instance fields
.field private mActivityStack:Lcom/hjq/toast/ActivityStack;

.field private mApplication:Landroid/app/Application;

.field private final mCancelRunnable:Ljava/lang/Runnable;

.field private volatile mLatestText:Ljava/lang/CharSequence;

.field private final mShowRunnable:Ljava/lang/Runnable;

.field private mToastReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/hjq/toast/config/IToast;",
            ">;"
        }
    .end annotation
.end field

.field private mToastStyle:Lcom/hjq/toast/config/IToastStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hjq/toast/config/IToastStyle<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/hjq/toast/ToastStrategy;->HANDLER:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v0, Lcom/hjq/toast/ToastStrategy$1;

    invoke-direct {v0, p0}, Lcom/hjq/toast/ToastStrategy$1;-><init>(Lcom/hjq/toast/ToastStrategy;)V

    iput-object v0, p0, Lcom/hjq/toast/ToastStrategy;->mShowRunnable:Ljava/lang/Runnable;

    .line 151
    new-instance v0, Lcom/hjq/toast/ToastStrategy$2;

    invoke-direct {v0, p0}, Lcom/hjq/toast/ToastStrategy$2;-><init>(Lcom/hjq/toast/ToastStrategy;)V

    iput-object v0, p0, Lcom/hjq/toast/ToastStrategy;->mCancelRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/hjq/toast/ToastStrategy;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/hjq/toast/ToastStrategy;->mToastReference:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$002(Lcom/hjq/toast/ToastStrategy;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/hjq/toast/ToastStrategy;->mToastReference:Ljava/lang/ref/WeakReference;

    return-object p1
.end method

.method static synthetic access$100(Lcom/hjq/toast/ToastStrategy;)Landroid/app/Application;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/hjq/toast/ToastStrategy;->mApplication:Landroid/app/Application;

    return-object p0
.end method

.method static synthetic access$200(Lcom/hjq/toast/ToastStrategy;)Ljava/lang/CharSequence;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/hjq/toast/ToastStrategy;->mLatestText:Ljava/lang/CharSequence;

    return-object p0
.end method


# virtual methods
.method protected areNotificationsEnabled(Landroid/content/Context;)Z
    .locals 9

    .line 180
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 181
    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    invoke-virtual {p1}, Landroid/app/NotificationManager;->areNotificationsEnabled()Z

    move-result p1

    return p1

    .line 184
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    const/4 v2, 0x1

    if-lt v0, v1, :cond_2

    const-string v0, "appops"

    .line 186
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 188
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "checkOpNoThrow"

    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v2

    const-class v6, Ljava/lang/String;

    const/4 v8, 0x2

    aput-object v6, v5, v8

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 190
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v5, "OP_POST_NOTIFICATION"

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 191
    const-class v5, Ljava/lang/Integer;

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    new-array v4, v4, [Ljava/lang/Object;

    .line 192
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v7

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v2

    .line 193
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v8

    .line 192
    invoke-virtual {v1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    goto :goto_1

    :catch_3
    move-exception p1

    goto :goto_1

    :catch_4
    move-exception p1

    .line 196
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return v2
.end method

.method public bindStyle(Lcom/hjq/toast/config/IToastStyle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hjq/toast/config/IToastStyle<",
            "*>;)V"
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lcom/hjq/toast/ToastStrategy;->mToastStyle:Lcom/hjq/toast/config/IToastStyle;

    return-void
.end method

.method public cancelToast()V
    .locals 2

    .line 117
    sget-object v0, Lcom/hjq/toast/ToastStrategy;->HANDLER:Landroid/os/Handler;

    iget-object v1, p0, Lcom/hjq/toast/ToastStrategy;->mCancelRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 118
    iget-object v1, p0, Lcom/hjq/toast/ToastStrategy;->mCancelRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public createToast(Landroid/app/Application;)Lcom/hjq/toast/config/IToast;
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/hjq/toast/ToastStrategy;->mActivityStack:Lcom/hjq/toast/ActivityStack;

    invoke-virtual {v0}, Lcom/hjq/toast/ActivityStack;->getForegroundActivity()Landroid/app/Activity;

    move-result-object v0

    .line 69
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 70
    invoke-static {p1}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    new-instance v0, Lcom/hjq/toast/WindowToast;

    invoke-direct {v0, p1}, Lcom/hjq/toast/WindowToast;-><init>(Landroid/app/Application;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 75
    new-instance v1, Lcom/hjq/toast/ActivityToast;

    invoke-direct {v1, v0}, Lcom/hjq/toast/ActivityToast;-><init>(Landroid/app/Activity;)V

    move-object v0, v1

    goto :goto_0

    .line 76
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-ne v0, v1, :cond_2

    .line 78
    new-instance v0, Lcom/hjq/toast/SafeToast;

    invoke-direct {v0, p1}, Lcom/hjq/toast/SafeToast;-><init>(Landroid/app/Application;)V

    goto :goto_0

    .line 79
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_3

    .line 80
    invoke-virtual {p0, p1}, Lcom/hjq/toast/ToastStrategy;->areNotificationsEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 87
    new-instance v0, Lcom/hjq/toast/NotificationToast;

    invoke-direct {v0, p1}, Lcom/hjq/toast/NotificationToast;-><init>(Landroid/app/Application;)V

    goto :goto_0

    .line 89
    :cond_3
    new-instance v0, Lcom/hjq/toast/SystemToast;

    invoke-direct {v0, p1}, Lcom/hjq/toast/SystemToast;-><init>(Landroid/app/Application;)V

    .line 96
    :goto_0
    instance-of v1, v0, Lcom/hjq/toast/CustomToast;

    if-nez v1, :cond_4

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_4

    .line 97
    invoke-virtual {p1}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-ge v1, v2, :cond_5

    .line 98
    :cond_4
    iget-object v1, p0, Lcom/hjq/toast/ToastStrategy;->mToastStyle:Lcom/hjq/toast/config/IToastStyle;

    invoke-interface {v1, p1}, Lcom/hjq/toast/config/IToastStyle;->createView(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/hjq/toast/config/IToast;->setView(Landroid/view/View;)V

    .line 99
    iget-object p1, p0, Lcom/hjq/toast/ToastStrategy;->mToastStyle:Lcom/hjq/toast/config/IToastStyle;

    invoke-interface {p1}, Lcom/hjq/toast/config/IToastStyle;->getGravity()I

    move-result p1

    iget-object v1, p0, Lcom/hjq/toast/ToastStrategy;->mToastStyle:Lcom/hjq/toast/config/IToastStyle;

    invoke-interface {v1}, Lcom/hjq/toast/config/IToastStyle;->getXOffset()I

    move-result v1

    iget-object v2, p0, Lcom/hjq/toast/ToastStrategy;->mToastStyle:Lcom/hjq/toast/config/IToastStyle;

    invoke-interface {v2}, Lcom/hjq/toast/config/IToastStyle;->getYOffset()I

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Lcom/hjq/toast/config/IToast;->setGravity(III)V

    .line 100
    iget-object p1, p0, Lcom/hjq/toast/ToastStrategy;->mToastStyle:Lcom/hjq/toast/config/IToastStyle;

    invoke-interface {p1}, Lcom/hjq/toast/config/IToastStyle;->getHorizontalMargin()F

    move-result p1

    iget-object v1, p0, Lcom/hjq/toast/ToastStrategy;->mToastStyle:Lcom/hjq/toast/config/IToastStyle;

    invoke-interface {v1}, Lcom/hjq/toast/config/IToastStyle;->getVerticalMargin()F

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/hjq/toast/config/IToast;->setMargin(FF)V

    :cond_5
    return-object v0
.end method

.method protected getToastDuration(Ljava/lang/CharSequence;)I
    .locals 1

    .line 171
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/16 v0, 0x14

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public registerStrategy(Landroid/app/Application;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/hjq/toast/ToastStrategy;->mApplication:Landroid/app/Application;

    .line 57
    invoke-static {p1}, Lcom/hjq/toast/ActivityStack;->register(Landroid/app/Application;)Lcom/hjq/toast/ActivityStack;

    move-result-object p1

    iput-object p1, p0, Lcom/hjq/toast/ToastStrategy;->mActivityStack:Lcom/hjq/toast/ActivityStack;

    return-void
.end method

.method public showToast(Ljava/lang/CharSequence;J)V
    .locals 3

    .line 107
    iput-object p1, p0, Lcom/hjq/toast/ToastStrategy;->mLatestText:Ljava/lang/CharSequence;

    .line 108
    sget-object p1, Lcom/hjq/toast/ToastStrategy;->HANDLER:Landroid/os/Handler;

    iget-object v0, p0, Lcom/hjq/toast/ToastStrategy;->mShowRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 112
    iget-object v0, p0, Lcom/hjq/toast/ToastStrategy;->mShowRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xc8

    add-long/2addr p2, v1

    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
