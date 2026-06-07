.class Lcom/yannis/ledcard/activity/LedSettingsActivity$2;
.super Ljava/lang/Object;
.source "LedSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yannis/ledcard/activity/LedSettingsActivity;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yannis/ledcard/activity/LedSettingsActivity;


# direct methods
.method constructor <init>(Lcom/yannis/ledcard/activity/LedSettingsActivity;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity$2;->this$0:Lcom/yannis/ledcard/activity/LedSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 144
    iget-object p1, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity$2;->this$0:Lcom/yannis/ledcard/activity/LedSettingsActivity;

    iget-object v0, p1, Lcom/yannis/ledcard/activity/LedSettingsActivity;->et_content:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yannis/ledcard/activity/LedSettingsActivity;->parseMessage(Ljava/lang/String;)V

    return-void
.end method
