.class public abstract Lcom/yannis/ledcard/base/BaseActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "BaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final EXTRA:Ljava/lang/String; = "Extra"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private steepStatusBar()V
    .locals 3

    .line 57
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/yannis/ledcard/base/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0xc000000

    .line 60
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 62
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x700

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/high16 v1, -0x80000000

    .line 65
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 67
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    .line 68
    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 69
    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract init()V
.end method

.method protected abstract initData()V
.end method

.method protected abstract initEvent()V
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 39
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    .line 40
    invoke-virtual {p0, v0}, Lcom/yannis/ledcard/base/BaseActivity;->requestWindowFeature(I)Z

    .line 41
    invoke-virtual {p0}, Lcom/yannis/ledcard/base/BaseActivity;->setLayoutResId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yannis/ledcard/base/BaseActivity;->setContentView(I)V

    .line 42
    invoke-direct {p0}, Lcom/yannis/ledcard/base/BaseActivity;->steepStatusBar()V

    .line 43
    invoke-static {p0}, Lcom/yannis/ledcard/util/StatusBarUtils;->statusBarLightMode(Landroid/app/Activity;)I

    .line 44
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 45
    invoke-virtual {p0}, Lcom/yannis/ledcard/base/BaseActivity;->init()V

    .line 46
    invoke-virtual {p0, p1}, Lcom/yannis/ledcard/base/BaseActivity;->initView(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lcom/yannis/ledcard/base/BaseActivity;->initEvent()V

    .line 48
    invoke-virtual {p0}, Lcom/yannis/ledcard/base/BaseActivity;->initData()V

    return-void
.end method

.method protected varargs registerClickEvent([Landroid/view/View;)V
    .locals 3

    .line 113
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    .line 115
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected abstract setLayoutResId()I
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 1

    const v0, 0x7f0c005c

    .line 126
    invoke-static {v0}, Lcom/hjq/toast/ToastUtils;->setView(I)V

    const/16 v0, 0x50

    .line 127
    invoke-static {v0}, Lcom/hjq/toast/ToastUtils;->setGravity(I)V

    .line 128
    invoke-static {p1}, Lcom/hjq/toast/ToastUtils;->show(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected switchTo(Landroid/os/Bundle;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .line 138
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x4000000

    .line 139
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    if-eqz p1, :cond_0

    const-string v1, "Extra"

    .line 141
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 143
    :cond_0
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 144
    invoke-virtual {p0, v0}, Lcom/yannis/ledcard/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected switchTo(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 153
    invoke-virtual {p0, v0, p1}, Lcom/yannis/ledcard/base/BaseActivity;->switchTo(Landroid/os/Bundle;Ljava/lang/Class;)V

    return-void
.end method

.method public switchToAndFinish(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .line 162
    invoke-virtual {p0, p1}, Lcom/yannis/ledcard/base/BaseActivity;->switchTo(Ljava/lang/Class;)V

    .line 163
    invoke-virtual {p0}, Lcom/yannis/ledcard/base/BaseActivity;->finish()V

    return-void
.end method
