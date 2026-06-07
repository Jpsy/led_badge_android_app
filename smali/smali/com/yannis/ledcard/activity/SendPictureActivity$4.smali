.class Lcom/yannis/ledcard/activity/SendPictureActivity$4;
.super Ljava/lang/Object;
.source "SendPictureActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yannis/ledcard/activity/SendPictureActivity;->setSendBtnIsEnable(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yannis/ledcard/activity/SendPictureActivity;

.field final synthetic val$isEnable:Z


# direct methods
.method constructor <init>(Lcom/yannis/ledcard/activity/SendPictureActivity;Z)V
    .locals 0

    .line 306
    iput-object p1, p0, Lcom/yannis/ledcard/activity/SendPictureActivity$4;->this$0:Lcom/yannis/ledcard/activity/SendPictureActivity;

    iput-boolean p2, p0, Lcom/yannis/ledcard/activity/SendPictureActivity$4;->val$isEnable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 309
    iget-object v0, p0, Lcom/yannis/ledcard/activity/SendPictureActivity$4;->this$0:Lcom/yannis/ledcard/activity/SendPictureActivity;

    iget-object v0, v0, Lcom/yannis/ledcard/activity/SendPictureActivity;->btnSend:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/yannis/ledcard/activity/SendPictureActivity$4;->val$isEnable:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method
