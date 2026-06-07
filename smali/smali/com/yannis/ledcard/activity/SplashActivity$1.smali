.class Lcom/yannis/ledcard/activity/SplashActivity$1;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yannis/ledcard/activity/SplashActivity;->toMainActivity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yannis/ledcard/activity/SplashActivity;


# direct methods
.method constructor <init>(Lcom/yannis/ledcard/activity/SplashActivity;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/yannis/ledcard/activity/SplashActivity$1;->this$0:Lcom/yannis/ledcard/activity/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onAnimationEnd$0$com-yannis-ledcard-activity-SplashActivity$1()V
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/yannis/ledcard/activity/SplashActivity$1;->this$0:Lcom/yannis/ledcard/activity/SplashActivity;

    const-class v1, Lcom/yannis/ledcard/activity/MainActivity;

    invoke-static {v0, v1}, Lcom/yannis/ledcard/activity/SplashActivity;->access$000(Lcom/yannis/ledcard/activity/SplashActivity;Ljava/lang/Class;)V

    .line 163
    iget-object v0, p0, Lcom/yannis/ledcard/activity/SplashActivity$1;->this$0:Lcom/yannis/ledcard/activity/SplashActivity;

    invoke-virtual {v0}, Lcom/yannis/ledcard/activity/SplashActivity;->finish()V

    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 161
    iget-object p1, p0, Lcom/yannis/ledcard/activity/SplashActivity$1;->this$0:Lcom/yannis/ledcard/activity/SplashActivity;

    new-instance v0, Lcom/yannis/ledcard/activity/SplashActivity$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/yannis/ledcard/activity/SplashActivity$1$$ExternalSyntheticLambda0;-><init>(Lcom/yannis/ledcard/activity/SplashActivity$1;)V

    invoke-virtual {p1, v0}, Lcom/yannis/ledcard/activity/SplashActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
