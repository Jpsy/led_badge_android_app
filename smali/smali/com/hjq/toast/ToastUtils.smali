.class public final Lcom/hjq/toast/ToastUtils;
.super Ljava/lang/Object;
.source "ToastUtils.java"


# static fields
.field private static sApplication:Landroid/app/Application;

.field private static sDebugMode:Ljava/lang/Boolean;

.field private static sToastInterceptor:Lcom/hjq/toast/config/IToastInterceptor;

.field private static sToastStrategy:Lcom/hjq/toast/config/IToastStrategy;

.field private static sToastStyle:Lcom/hjq/toast/config/IToastStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hjq/toast/config/IToastStyle<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancel()V
    .locals 1

    .line 183
    sget-object v0, Lcom/hjq/toast/ToastUtils;->sToastStrategy:Lcom/hjq/toast/config/IToastStrategy;

    invoke-interface {v0}, Lcom/hjq/toast/config/IToastStrategy;->cancelToast()V

    return-void
.end method

.method public static debugShow(I)V
    .locals 2

    .line 112
    invoke-static {}, Lcom/hjq/toast/ToastUtils;->isDebugMode()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    .line 115
    invoke-static {p0, v0, v1}, Lcom/hjq/toast/ToastUtils;->show(IJ)V

    return-void
.end method

.method public static debugShow(Ljava/lang/CharSequence;)V
    .locals 2

    .line 119
    invoke-static {}, Lcom/hjq/toast/ToastUtils;->isDebugMode()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    .line 122
    invoke-static {p0, v0, v1}, Lcom/hjq/toast/ToastUtils;->show(Ljava/lang/CharSequence;J)V

    return-void
.end method

.method public static debugShow(Ljava/lang/Object;)V
    .locals 2

    .line 126
    invoke-static {}, Lcom/hjq/toast/ToastUtils;->isDebugMode()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    .line 129
    invoke-static {p0, v0, v1}, Lcom/hjq/toast/ToastUtils;->show(Ljava/lang/Object;J)V

    return-void
.end method

.method public static delayedShow(IJ)V
    .locals 0

    .line 96
    invoke-static {p0, p1, p2}, Lcom/hjq/toast/ToastUtils;->show(IJ)V

    return-void
.end method

.method public static delayedShow(Ljava/lang/CharSequence;J)V
    .locals 0

    .line 100
    invoke-static {p0, p1, p2}, Lcom/hjq/toast/ToastUtils;->show(Ljava/lang/CharSequence;J)V

    return-void
.end method

.method public static delayedShow(Ljava/lang/Object;J)V
    .locals 0

    .line 104
    invoke-static {p0, p1, p2}, Lcom/hjq/toast/ToastUtils;->show(Ljava/lang/Object;J)V

    return-void
.end method

.method public static getInterceptor()Lcom/hjq/toast/config/IToastInterceptor;
    .locals 1

    .line 250
    sget-object v0, Lcom/hjq/toast/ToastUtils;->sToastInterceptor:Lcom/hjq/toast/config/IToastInterceptor;

    return-object v0
.end method

.method public static getStrategy()Lcom/hjq/toast/config/IToastStrategy;
    .locals 1

    .line 238
    sget-object v0, Lcom/hjq/toast/ToastUtils;->sToastStrategy:Lcom/hjq/toast/config/IToastStrategy;

    return-object v0
.end method

.method public static getStyle()Lcom/hjq/toast/config/IToastStyle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hjq/toast/config/IToastStyle<",
            "*>;"
        }
    .end annotation

    .line 226
    sget-object v0, Lcom/hjq/toast/ToastUtils;->sToastStyle:Lcom/hjq/toast/config/IToastStyle;

    return-object v0
.end method

.method public static init(Landroid/app/Application;)V
    .locals 1

    .line 50
    sget-object v0, Lcom/hjq/toast/ToastUtils;->sToastStyle:Lcom/hjq/toast/config/IToastStyle;

    invoke-static {p0, v0}, Lcom/hjq/toast/ToastUtils;->init(Landroid/app/Application;Lcom/hjq/toast/config/IToastStyle;)V

    return-void
.end method

.method public static init(Landroid/app/Application;Lcom/hjq/toast/config/IToastStrategy;)V
    .locals 1

    const/4 v0, 0x0

    .line 54
    invoke-static {p0, p1, v0}, Lcom/hjq/toast/ToastUtils;->init(Landroid/app/Application;Lcom/hjq/toast/config/IToastStrategy;Lcom/hjq/toast/config/IToastStyle;)V

    return-void
.end method

.method public static init(Landroid/app/Application;Lcom/hjq/toast/config/IToastStrategy;Lcom/hjq/toast/config/IToastStyle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Lcom/hjq/toast/config/IToastStrategy;",
            "Lcom/hjq/toast/config/IToastStyle<",
            "*>;)V"
        }
    .end annotation

    .line 69
    sput-object p0, Lcom/hjq/toast/ToastUtils;->sApplication:Landroid/app/Application;

    if-nez p1, :cond_0

    .line 73
    new-instance p1, Lcom/hjq/toast/ToastStrategy;

    invoke-direct {p1}, Lcom/hjq/toast/ToastStrategy;-><init>()V

    .line 75
    :cond_0
    invoke-static {p1}, Lcom/hjq/toast/ToastUtils;->setStrategy(Lcom/hjq/toast/config/IToastStrategy;)V

    if-nez p2, :cond_1

    .line 79
    new-instance p2, Lcom/hjq/toast/style/BlackToastStyle;

    invoke-direct {p2}, Lcom/hjq/toast/style/BlackToastStyle;-><init>()V

    .line 81
    :cond_1
    invoke-static {p2}, Lcom/hjq/toast/ToastUtils;->setStyle(Lcom/hjq/toast/config/IToastStyle;)V

    return-void
.end method

.method public static init(Landroid/app/Application;Lcom/hjq/toast/config/IToastStyle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Lcom/hjq/toast/config/IToastStyle<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 58
    invoke-static {p0, v0, p1}, Lcom/hjq/toast/ToastUtils;->init(Landroid/app/Application;Lcom/hjq/toast/config/IToastStrategy;Lcom/hjq/toast/config/IToastStyle;)V

    return-void
.end method

.method static isDebugMode()Z
    .locals 1

    .line 261
    sget-object v0, Lcom/hjq/toast/ToastUtils;->sDebugMode:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 262
    sget-object v0, Lcom/hjq/toast/ToastUtils;->sApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/hjq/toast/ToastUtils;->sDebugMode:Ljava/lang/Boolean;

    .line 264
    :cond_1
    sget-object v0, Lcom/hjq/toast/ToastUtils;->sDebugMode:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isInit()Z
    .locals 1

    .line 88
    sget-object v0, Lcom/hjq/toast/ToastUtils;->sApplication:Landroid/app/Application;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hjq/toast/ToastUtils;->sToastStrategy:Lcom/hjq/toast/config/IToastStrategy;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hjq/toast/ToastUtils;->sToastStyle:Lcom/hjq/toast/config/IToastStyle;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static setDebugMode(Z)V
    .locals 0

    .line 257
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/hjq/toast/ToastUtils;->sDebugMode:Ljava/lang/Boolean;

    return-void
.end method

.method public static setGravity(I)V
    .locals 1

    const/4 v0, 0x0

    .line 192
    invoke-static {p0, v0, v0}, Lcom/hjq/toast/ToastUtils;->setGravity(III)V

    return-void
.end method

.method public static setGravity(III)V
    .locals 1

    const/4 v0, 0x0

    .line 196
    invoke-static {p0, p1, p2, v0, v0}, Lcom/hjq/toast/ToastUtils;->setGravity(IIIFF)V

    return-void
.end method

.method public static setGravity(IIIFF)V
    .locals 9

    .line 200
    sget-object v0, Lcom/hjq/toast/ToastUtils;->sToastStrategy:Lcom/hjq/toast/config/IToastStrategy;

    new-instance v8, Lcom/hjq/toast/style/LocationToastStyle;

    sget-object v2, Lcom/hjq/toast/ToastUtils;->sToastStyle:Lcom/hjq/toast/config/IToastStyle;

    move-object v1, v8

    move v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/hjq/toast/style/LocationToastStyle;-><init>(Lcom/hjq/toast/config/IToastStyle;IIIFF)V

    invoke-interface {v0, v8}, Lcom/hjq/toast/config/IToastStrategy;->bindStyle(Lcom/hjq/toast/config/IToastStyle;)V

    return-void
.end method

.method public static setInterceptor(Lcom/hjq/toast/config/IToastInterceptor;)V
    .locals 0

    .line 246
    sput-object p0, Lcom/hjq/toast/ToastUtils;->sToastInterceptor:Lcom/hjq/toast/config/IToastInterceptor;

    return-void
.end method

.method public static setStrategy(Lcom/hjq/toast/config/IToastStrategy;)V
    .locals 1

    .line 233
    sput-object p0, Lcom/hjq/toast/ToastUtils;->sToastStrategy:Lcom/hjq/toast/config/IToastStrategy;

    .line 234
    sget-object v0, Lcom/hjq/toast/ToastUtils;->sApplication:Landroid/app/Application;

    invoke-interface {p0, v0}, Lcom/hjq/toast/config/IToastStrategy;->registerStrategy(Landroid/app/Application;)V

    return-void
.end method

.method public static setStyle(Lcom/hjq/toast/config/IToastStyle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hjq/toast/config/IToastStyle<",
            "*>;)V"
        }
    .end annotation

    .line 221
    sput-object p0, Lcom/hjq/toast/ToastUtils;->sToastStyle:Lcom/hjq/toast/config/IToastStyle;

    .line 222
    sget-object v0, Lcom/hjq/toast/ToastUtils;->sToastStrategy:Lcom/hjq/toast/config/IToastStrategy;

    invoke-interface {v0, p0}, Lcom/hjq/toast/config/IToastStrategy;->bindStyle(Lcom/hjq/toast/config/IToastStyle;)V

    return-void
.end method

.method public static setView(I)V
    .locals 2

    if-gtz p0, :cond_0

    return-void

    .line 210
    :cond_0
    new-instance v0, Lcom/hjq/toast/style/ViewToastStyle;

    sget-object v1, Lcom/hjq/toast/ToastUtils;->sToastStyle:Lcom/hjq/toast/config/IToastStyle;

    invoke-direct {v0, p0, v1}, Lcom/hjq/toast/style/ViewToastStyle;-><init>(ILcom/hjq/toast/config/IToastStyle;)V

    invoke-static {v0}, Lcom/hjq/toast/ToastUtils;->setStyle(Lcom/hjq/toast/config/IToastStyle;)V

    return-void
.end method

.method public static show(I)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 137
    invoke-static {p0, v0, v1}, Lcom/hjq/toast/ToastUtils;->show(IJ)V

    return-void
.end method

.method private static show(IJ)V
    .locals 0

    .line 151
    :try_start_0
    sget-object p1, Lcom/hjq/toast/ToastUtils;->sApplication:Landroid/app/Application;

    invoke-virtual {p1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Lcom/hjq/toast/ToastUtils;->show(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 154
    :catch_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/hjq/toast/ToastUtils;->show(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public static show(Ljava/lang/CharSequence;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 145
    invoke-static {p0, v0, v1}, Lcom/hjq/toast/ToastUtils;->show(Ljava/lang/CharSequence;J)V

    return-void
.end method

.method private static show(Ljava/lang/CharSequence;J)V
    .locals 1

    if-eqz p0, :cond_3

    .line 164
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 168
    :cond_0
    sget-object v0, Lcom/hjq/toast/ToastUtils;->sToastInterceptor:Lcom/hjq/toast/config/IToastInterceptor;

    if-nez v0, :cond_1

    .line 169
    new-instance v0, Lcom/hjq/toast/ToastLogInterceptor;

    invoke-direct {v0}, Lcom/hjq/toast/ToastLogInterceptor;-><init>()V

    sput-object v0, Lcom/hjq/toast/ToastUtils;->sToastInterceptor:Lcom/hjq/toast/config/IToastInterceptor;

    .line 172
    :cond_1
    sget-object v0, Lcom/hjq/toast/ToastUtils;->sToastInterceptor:Lcom/hjq/toast/config/IToastInterceptor;

    invoke-interface {v0, p0}, Lcom/hjq/toast/config/IToastInterceptor;->intercept(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 176
    :cond_2
    sget-object v0, Lcom/hjq/toast/ToastUtils;->sToastStrategy:Lcom/hjq/toast/config/IToastStrategy;

    invoke-interface {v0, p0, p1, p2}, Lcom/hjq/toast/config/IToastStrategy;->showToast(Ljava/lang/CharSequence;J)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static show(Ljava/lang/Object;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 141
    invoke-static {p0, v0, v1}, Lcom/hjq/toast/ToastUtils;->show(Ljava/lang/Object;J)V

    return-void
.end method

.method private static show(Ljava/lang/Object;J)V
    .locals 0

    if-eqz p0, :cond_0

    .line 159
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "null"

    :goto_0
    invoke-static {p0, p1, p2}, Lcom/hjq/toast/ToastUtils;->show(Ljava/lang/CharSequence;J)V

    return-void
.end method
