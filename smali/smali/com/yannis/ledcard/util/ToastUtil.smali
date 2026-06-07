.class public Lcom/yannis/ledcard/util/ToastUtil;
.super Ljava/lang/Object;
.source "ToastUtil.java"


# static fields
.field private static mHandler:Landroid/os/Handler;

.field private static mToast:Landroid/widget/Toast;

.field private static r:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/yannis/ledcard/util/ToastUtil;->mHandler:Landroid/os/Handler;

    .line 49
    new-instance v0, Lcom/yannis/ledcard/util/ToastUtil$1;

    invoke-direct {v0}, Lcom/yannis/ledcard/util/ToastUtil$1;-><init>()V

    sput-object v0, Lcom/yannis/ledcard/util/ToastUtil;->r:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/widget/Toast;
    .locals 1

    .line 23
    sget-object v0, Lcom/yannis/ledcard/util/ToastUtil;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$002(Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    .line 23
    sput-object p0, Lcom/yannis/ledcard/util/ToastUtil;->mToast:Landroid/widget/Toast;

    return-object p0
.end method

.method public static final show(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;
    .locals 2

    .line 34
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 35
    sget-object p0, Lcom/yannis/ledcard/util/ToastUtil;->mToast:Landroid/widget/Toast;

    if-nez p0, :cond_0

    .line 36
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    sput-object p0, Lcom/yannis/ledcard/util/ToastUtil;->mToast:Landroid/widget/Toast;

    .line 37
    invoke-virtual {p0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object p0

    const v1, 0x7f0800b2

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 38
    sget-object p0, Lcom/yannis/ledcard/util/ToastUtil;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object p0

    const v1, 0x102000b

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const/high16 v1, -0x1000000

    .line 39
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 40
    sget-object p0, Lcom/yannis/ledcard/util/ToastUtil;->mToast:Landroid/widget/Toast;

    const/16 v1, 0x11

    invoke-virtual {p0, v1, v0, v0}, Landroid/widget/Toast;->setGravity(III)V

    .line 42
    :cond_0
    sget-object p0, Lcom/yannis/ledcard/util/ToastUtil;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 43
    sget-object p0, Lcom/yannis/ledcard/util/ToastUtil;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 44
    sget-object p0, Lcom/yannis/ledcard/util/ToastUtil;->mToast:Landroid/widget/Toast;

    return-object p0
.end method

.method public static showShortToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 63
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 64
    sget-object p0, Lcom/yannis/ledcard/util/ToastUtil;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/yannis/ledcard/util/ToastUtil;->r:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 65
    sget-object p0, Lcom/yannis/ledcard/util/ToastUtil;->mToast:Landroid/widget/Toast;

    if-nez p0, :cond_0

    .line 66
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    sput-object p0, Lcom/yannis/ledcard/util/ToastUtil;->mToast:Landroid/widget/Toast;

    const/16 v0, 0x50

    const/4 v1, 0x0

    const/16 v2, 0x96

    .line 67
    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 69
    :cond_0
    sget-object p0, Lcom/yannis/ledcard/util/ToastUtil;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 70
    sget-object p0, Lcom/yannis/ledcard/util/ToastUtil;->mHandler:Landroid/os/Handler;

    sget-object p1, Lcom/yannis/ledcard/util/ToastUtil;->r:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 71
    sget-object p0, Lcom/yannis/ledcard/util/ToastUtil;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method
