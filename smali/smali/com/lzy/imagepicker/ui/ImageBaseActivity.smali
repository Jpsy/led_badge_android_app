.class public Lcom/lzy/imagepicker/ui/ImageBaseActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ImageBaseActivity.java"


# instance fields
.field protected tintManager:Lcom/lzy/imagepicker/view/SystemBarTintManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private setTranslucentStatus(Z)V
    .locals 3

    .line 44
    invoke-virtual {p0}, Lcom/lzy/imagepicker/ui/ImageBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    if-eqz p1, :cond_0

    .line 48
    iget p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x4000000

    or-int/2addr p1, v2

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 50
    :cond_0
    iget p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x4000001

    and-int/2addr p1, v2

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 52
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public checkPermission(Ljava/lang/String;)Z
    .locals 0

    .line 56
    invoke-static {p0, p1}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 33
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x1

    const/16 v1, 0x13

    if-lt p1, v1, :cond_0

    .line 35
    invoke-direct {p0, v0}, Lcom/lzy/imagepicker/ui/ImageBaseActivity;->setTranslucentStatus(Z)V

    .line 37
    :cond_0
    new-instance p1, Lcom/lzy/imagepicker/view/SystemBarTintManager;

    invoke-direct {p1, p0}, Lcom/lzy/imagepicker/view/SystemBarTintManager;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/lzy/imagepicker/ui/ImageBaseActivity;->tintManager:Lcom/lzy/imagepicker/view/SystemBarTintManager;

    .line 38
    invoke-virtual {p1, v0}, Lcom/lzy/imagepicker/view/SystemBarTintManager;->setStatusBarTintEnabled(Z)V

    .line 39
    iget-object p1, p0, Lcom/lzy/imagepicker/ui/ImageBaseActivity;->tintManager:Lcom/lzy/imagepicker/view/SystemBarTintManager;

    sget v0, Lcom/lzy/imagepicker/R$color;->ip_color_primary_dark:I

    invoke-virtual {p1, v0}, Lcom/lzy/imagepicker/view/SystemBarTintManager;->setStatusBarTintResource(I)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 65
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 66
    invoke-static {}, Lcom/lzy/imagepicker/ImagePicker;->getInstance()Lcom/lzy/imagepicker/ImagePicker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lzy/imagepicker/ImagePicker;->restoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 71
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 72
    invoke-static {}, Lcom/lzy/imagepicker/ImagePicker;->getInstance()Lcom/lzy/imagepicker/ImagePicker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lzy/imagepicker/ImagePicker;->saveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 2

    .line 60
    invoke-virtual {p0}, Lcom/lzy/imagepicker/ui/ImageBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
