.class public Lcom/yannis/ledcard/util/StatusBarUtils;
.super Ljava/lang/Object;
.source "StatusBarUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static FlymeSetStatusBarLightMode(Landroid/view/Window;Z)Z
    .locals 5

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    .line 154
    :try_start_0
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 155
    const-class v2, Landroid/view/WindowManager$LayoutParams;

    const-string v3, "MEIZU_FLAG_DARK_STATUS_BAR_ICON"

    .line 156
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 157
    const-class v3, Landroid/view/WindowManager$LayoutParams;

    const-string v4, "meizuFlags"

    .line 158
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 159
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 160
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v4, 0x0

    .line 161
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    .line 162
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    if-eqz p1, :cond_0

    or-int p1, v4, v2

    goto :goto_0

    :cond_0
    xor-int/lit8 p1, v2, -0x1

    and-int/2addr p1, v4

    .line 168
    :goto_0
    invoke-virtual {v3, v1, p1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 169
    invoke-virtual {p0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public static MIUISetStatusBarLightMode(Landroid/view/Window;Z)Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    .line 188
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    :try_start_0
    const-string v3, "android.view.MiuiWindowManager$LayoutParams"

    .line 191
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "EXTRA_FLAG_STATUS_BAR_DARK_MODE"

    .line 192
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 193
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    const-string v4, "setExtraFlags"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    .line 194
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v0

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz p1, :cond_0

    new-array p1, v5, [Ljava/lang/Object;

    .line 196
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, p1, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p1, v0

    invoke-virtual {v2, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-array p1, v5, [Ljava/lang/Object;

    .line 198
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, p1, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p1, v0

    invoke-virtual {v2, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static StatusBarDarkMode(Landroid/app/Activity;I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 132
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/yannis/ledcard/util/StatusBarUtils;->MIUISetStatusBarLightMode(Landroid/view/Window;Z)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 134
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/yannis/ledcard/util/StatusBarUtils;->FlymeSetStatusBarLightMode(Landroid/view/Window;Z)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 136
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static setStatusBarColor(Landroid/app/Activity;I)V
    .locals 2

    .line 51
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 52
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 54
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_0

    .line 55
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 57
    invoke-static {p0}, Lcom/yannis/ledcard/util/StatusBarUtils;->transparencyBar(Landroid/app/Activity;)V

    .line 58
    new-instance v0, Lcom/yannis/ledcard/util/SystemBarTintManager;

    invoke-direct {v0, p0}, Lcom/yannis/ledcard/util/SystemBarTintManager;-><init>(Landroid/app/Activity;)V

    const/4 p0, 0x1

    .line 59
    invoke-virtual {v0, p0}, Lcom/yannis/ledcard/util/SystemBarTintManager;->setStatusBarTintEnabled(Z)V

    .line 60
    invoke-virtual {v0, p1}, Lcom/yannis/ledcard/util/SystemBarTintManager;->setStatusBarTintResource(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static statusBarDarkMode(Landroid/app/Activity;)I
    .locals 3

    .line 96
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x13

    if-lt v0, v2, :cond_2

    .line 97
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/yannis/ledcard/util/StatusBarUtils;->MIUISetStatusBarLightMode(Landroid/view/Window;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/yannis/ledcard/util/StatusBarUtils;->FlymeSetStatusBarLightMode(Landroid/view/Window;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    .line 101
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    .line 102
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x500

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/4 v1, 0x3

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static statusBarLightMode(Landroid/app/Activity;)I
    .locals 3

    .line 73
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x13

    if-lt v0, v2, :cond_2

    .line 74
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/yannis/ledcard/util/StatusBarUtils;->MIUISetStatusBarLightMode(Landroid/view/Window;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/yannis/ledcard/util/StatusBarUtils;->FlymeSetStatusBarLightMode(Landroid/view/Window;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    .line 78
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    .line 79
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x2400

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/4 v1, 0x3

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static statusBarLightMode(Landroid/app/Activity;I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 118
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/yannis/ledcard/util/StatusBarUtils;->MIUISetStatusBarLightMode(Landroid/view/Window;Z)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 120
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/yannis/ledcard/util/StatusBarUtils;->FlymeSetStatusBarLightMode(Landroid/view/Window;Z)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 122
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/16 p1, 0x2400

    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static transparencyBar(Landroid/app/Activity;)V
    .locals 3

    .line 28
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/high16 v1, 0x4000000

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    .line 29
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    .line 30
    invoke-virtual {p0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 31
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x500

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/high16 v0, -0x80000000

    .line 33
    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    const/4 v0, 0x0

    .line 34
    invoke-virtual {p0, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_0

    .line 36
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v0, v2, :cond_1

    .line 37
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    .line 38
    invoke-virtual {p0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    :cond_1
    :goto_0
    return-void
.end method
