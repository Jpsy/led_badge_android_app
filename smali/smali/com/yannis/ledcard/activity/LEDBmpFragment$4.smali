.class Lcom/yannis/ledcard/activity/LEDBmpFragment$4;
.super Ljava/lang/Object;
.source "LEDBmpFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yannis/ledcard/activity/LEDBmpFragment;->showNormalDialog(Lcom/yannis/ledcard/bean/LEDBmp;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yannis/ledcard/activity/LEDBmpFragment;

.field final synthetic val$ledBmp:Lcom/yannis/ledcard/bean/LEDBmp;


# direct methods
.method constructor <init>(Lcom/yannis/ledcard/activity/LEDBmpFragment;Lcom/yannis/ledcard/bean/LEDBmp;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/yannis/ledcard/activity/LEDBmpFragment$4;->this$0:Lcom/yannis/ledcard/activity/LEDBmpFragment;

    iput-object p2, p0, Lcom/yannis/ledcard/activity/LEDBmpFragment$4;->val$ledBmp:Lcom/yannis/ledcard/bean/LEDBmp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 201
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/yannis/ledcard/activity/LEDBmpFragment$4;->this$0:Lcom/yannis/ledcard/activity/LEDBmpFragment;

    invoke-virtual {p2}, Lcom/yannis/ledcard/activity/LEDBmpFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const-class v0, Lcom/yannis/ledcard/activity/SavePictureActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 202
    iget-object p2, p0, Lcom/yannis/ledcard/activity/LEDBmpFragment$4;->val$ledBmp:Lcom/yannis/ledcard/bean/LEDBmp;

    const-string v0, "_led_under_editing"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 203
    iget-object p2, p0, Lcom/yannis/ledcard/activity/LEDBmpFragment$4;->this$0:Lcom/yannis/ledcard/activity/LEDBmpFragment;

    invoke-virtual {p2}, Lcom/yannis/ledcard/activity/LEDBmpFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
