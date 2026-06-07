.class public Lcom/yannis/ledcard/activity/SplashActivity_ViewBinding;
.super Ljava/lang/Object;
.source "SplashActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/yannis/ledcard/activity/SplashActivity;


# direct methods
.method public constructor <init>(Lcom/yannis/ledcard/activity/SplashActivity;)V
    .locals 1

    .line 19
    invoke-virtual {p1}, Lcom/yannis/ledcard/activity/SplashActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/yannis/ledcard/activity/SplashActivity_ViewBinding;-><init>(Lcom/yannis/ledcard/activity/SplashActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/yannis/ledcard/activity/SplashActivity;Landroid/view/View;)V
    .locals 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/yannis/ledcard/activity/SplashActivity_ViewBinding;->target:Lcom/yannis/ledcard/activity/SplashActivity;

    .line 26
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0900e3

    const-string v2, "field \'startView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p1, Lcom/yannis/ledcard/activity/SplashActivity;->startView:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/yannis/ledcard/activity/SplashActivity_ViewBinding;->target:Lcom/yannis/ledcard/activity/SplashActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 34
    iput-object v1, p0, Lcom/yannis/ledcard/activity/SplashActivity_ViewBinding;->target:Lcom/yannis/ledcard/activity/SplashActivity;

    .line 36
    iput-object v1, v0, Lcom/yannis/ledcard/activity/SplashActivity;->startView:Landroid/widget/ImageView;

    return-void

    .line 33
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
