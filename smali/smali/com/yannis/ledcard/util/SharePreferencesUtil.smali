.class public Lcom/yannis/ledcard/util/SharePreferencesUtil;
.super Ljava/lang/Object;
.source "SharePreferencesUtil.java"


# static fields
.field private static instance:Lcom/yannis/ledcard/util/SharePreferencesUtil;

.field private static lock:Ljava/util/concurrent/locks/Lock;

.field static wc:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/yannis/ledcard/util/SharePreferencesUtil;->lock:Ljava/util/concurrent/locks/Lock;

    const/4 v0, 0x0

    .line 21
    sput-object v0, Lcom/yannis/ledcard/util/SharePreferencesUtil;->wc:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_1

    .line 44
    sget-object v0, Lcom/yannis/ledcard/util/SharePreferencesUtil;->wc:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "the context can not be null or you must init "

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 47
    :cond_1
    :goto_0
    sget-object v0, Lcom/yannis/ledcard/util/SharePreferencesUtil;->wc:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    .line 48
    :cond_2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/yannis/ledcard/util/SharePreferencesUtil;->wc:Ljava/lang/ref/WeakReference;

    .line 50
    :cond_3
    sget-object p1, Lcom/yannis/ledcard/util/SharePreferencesUtil;->wc:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    const/4 v0, 0x0

    const-string v1, "UStorage"

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/yannis/ledcard/util/SharePreferencesUtil;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 51
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lcom/yannis/ledcard/util/SharePreferencesUtil;->mEditor:Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public static getBoolean(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 131
    invoke-static {p0}, Lcom/yannis/ledcard/util/SharePreferencesUtil;->getInstance(Landroid/content/Context;)Lcom/yannis/ledcard/util/SharePreferencesUtil;

    move-result-object p0

    iget-object p0, p0, Lcom/yannis/ledcard/util/SharePreferencesUtil;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 0

    .line 143
    invoke-static {p0}, Lcom/yannis/ledcard/util/SharePreferencesUtil;->getInstance(Landroid/content/Context;)Lcom/yannis/ledcard/util/SharePreferencesUtil;

    move-result-object p0

    iget-object p0, p0, Lcom/yannis/ledcard/util/SharePreferencesUtil;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getFloat(Landroid/content/Context;Ljava/lang/String;)F
    .locals 1

    .line 199
    invoke-static {p0}, Lcom/yannis/ledcard/util/SharePreferencesUtil;->getInstance(Landroid/content/Context;)Lcom/yannis/ledcard/util/SharePreferencesUtil;

    move-result-object p0

    iget-object p0, p0, Lcom/yannis/ledcard/util/SharePreferencesUtil;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p0

    return p0
.end method

.method public static getFloat(Landroid/content/Context;Ljava/lang/String;F)F
    .locals 0

    .line 211
    invoke-static {p0}, Lcom/yannis/ledcard/util/SharePreferencesUtil;->getInstance(Landroid/content/Context;)Lcom/yannis/ledcard/util/SharePreferencesUtil;

    move-result-object p0

    iget-object p0, p0, Lcom/yannis/ledcard/util/SharePreferencesUtil;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p0

    return p0
.end method

.method private static getInstance(Landroid/content/Context;)Lcom/yannis/ledcard/util/SharePreferencesUtil;
    .locals 1

    .line 33
    sget-object v0, Lcom/yannis/ledcard/util/SharePreferencesUtil;->instance:Lcom/yannis/ledcard/util/SharePreferencesUtil;

    if-nez v0, :cond_1

    .line 34
    sget-object v0, Lcom/yannis/ledcard/util/SharePreferencesUtil;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 35
    sget-object v0, Lcom/yannis/ledcard/util/SharePreferencesUtil;->instance:Lcom/yannis/ledcard/util/SharePreferencesUtil;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/yannis/ledcard/util/SharePreferencesUtil;

    invoke-direct {v0, p0}, Lcom/yannis/ledcard/util/SharePreferencesUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/yannis/ledcard/util/SharePreferencesUtil;->instance:Lcom/yannis/ledcard/util/SharePreferencesUtil;

    .line 38
    :cond_0
    sget-object p0, Lcom/yannis/ledcard/util/SharePreferencesUtil;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 40
    :cond_1
    sget-object p0, Lcom/yannis/ledcard/util/SharePreferencesUtil;->instance:Lcom/yannis/ledcard/util/SharePreferencesUtil;

    return-object p0
.end method

.method public static getInt(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    .line 62
    invoke-static {p0}, Lcom/yannis/ledcard/util/SharePreferencesUtil;->getInstance(Landroid/content/Context;)Lcom/yannis/ledcard/util/SharePreferencesUtil;

    move-result-object p0

    iget-object p0, p0, Lcom/yannis/ledcard/util/SharePreferencesUtil;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v0, -0x1

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getInt(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 0

    .line 74
    invoke-static {p0}, Lcom/yannis/ledcard/util/SharePreferencesUtil;->getInstance(Landroid/content/Context;)Lcom/yannis/ledcard/util/SharePreferencesUtil;

    move-result-object p0

    iget-object p0, p0, Lcom/yannis/ledcard/util/SharePreferencesUtil;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getLong(Landroid/content/Context;Ljava/lang/String;)J
    .locals 2

    .line 165
    invoke-static {p0}, Lcom/yannis/ledcard/util/SharePreferencesUtil;->getInstance(Landroid/content/Context;)Lcom/yannis/ledcard/util/SharePreferencesUtil;

    move-result-object p0

    iget-object p0, p0, Lcom/yannis/ledcard/util/SharePreferencesUtil;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-wide/16 v0, -0x1

    invoke-interface {p0, p1, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getLong(Landroid/content/Context;Ljava/lang/String;J)J
    .locals 0

    .line 177
    invoke-static {p0}, Lcom/yannis/ledcard/util/SharePreferencesUtil;->getInstance(Landroid/content/Context;)Lcom/yannis/ledcard/util/SharePreferencesUtil;

    move-result-object p0

    iget-object p0, p0, Lcom/yannis/ledcard/util/SharePreferencesUtil;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 97
    invoke-static {p0}, Lcom/yannis/ledcard/util/SharePreferencesUtil;->getInstance(Landroid/content/Context;)Lcom/yannis/ledcard/util/SharePreferencesUtil;

    move-result-object p0

    iget-object p0, p0, Lcom/yannis/ledcard/util/SharePreferencesUtil;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 109
    invoke-static {p0}, Lcom/yannis/ledcard/util/SharePreferencesUtil;->getInstance(Landroid/content/Context;)Lcom/yannis/ledcard/util/SharePreferencesUtil;

    move-result-object p0

    iget-object p0, p0, Lcom/yannis/ledcard/util/SharePreferencesUtil;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    .line 29
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/yannis/ledcard/util/SharePreferencesUtil;->wc:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static putBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 0

    .line 154
    invoke-static {p0}, Lcom/yannis/ledcard/util/SharePreferencesUtil;->getInstance(Landroid/content/Context;)Lcom/yannis/ledcard/util/SharePreferencesUtil;

    move-result-object p0

    iget-object p0, p0, Lcom/yannis/ledcard/util/SharePreferencesUtil;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p0

    return p0
.end method

.method public static putFloat(Landroid/content/Context;Ljava/lang/String;F)Z
    .locals 0

    .line 222
    invoke-static {p0}, Lcom/yannis/ledcard/util/SharePreferencesUtil;->getInstance(Landroid/content/Context;)Lcom/yannis/ledcard/util/SharePreferencesUtil;

    move-result-object p0

    iget-object p0, p0, Lcom/yannis/ledcard/util/SharePreferencesUtil;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p0

    return p0
.end method

.method public static putInt(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 0

    .line 86
    invoke-static {p0}, Lcom/yannis/ledcard/util/SharePreferencesUtil;->getInstance(Landroid/content/Context;)Lcom/yannis/ledcard/util/SharePreferencesUtil;

    move-result-object p0

    iget-object p0, p0, Lcom/yannis/ledcard/util/SharePreferencesUtil;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p0

    return p0
.end method

.method public static putLong(Landroid/content/Context;Ljava/lang/String;J)Z
    .locals 0

    .line 188
    invoke-static {p0}, Lcom/yannis/ledcard/util/SharePreferencesUtil;->getInstance(Landroid/content/Context;)Lcom/yannis/ledcard/util/SharePreferencesUtil;

    move-result-object p0

    iget-object p0, p0, Lcom/yannis/ledcard/util/SharePreferencesUtil;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p0

    return p0
.end method

.method public static putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 120
    invoke-static {p0}, Lcom/yannis/ledcard/util/SharePreferencesUtil;->getInstance(Landroid/content/Context;)Lcom/yannis/ledcard/util/SharePreferencesUtil;

    move-result-object p0

    iget-object p0, p0, Lcom/yannis/ledcard/util/SharePreferencesUtil;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p0

    return p0
.end method
