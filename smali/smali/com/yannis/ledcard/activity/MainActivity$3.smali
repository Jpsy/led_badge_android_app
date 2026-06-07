.class Lcom/yannis/ledcard/activity/MainActivity$3;
.super Landroid/text/style/ClickableSpan;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yannis/ledcard/activity/MainActivity;->showPrivacyDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yannis/ledcard/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/yannis/ledcard/activity/MainActivity;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/yannis/ledcard/activity/MainActivity$3;->this$0:Lcom/yannis/ledcard/activity/MainActivity;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 256
    iget-object p1, p0, Lcom/yannis/ledcard/activity/MainActivity$3;->this$0:Lcom/yannis/ledcard/activity/MainActivity;

    invoke-static {p1}, Lcom/yannis/ledcard/activity/MainActivity;->access$200(Lcom/yannis/ledcard/activity/MainActivity;)Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/yannis/ledcard/activity/HtmlActivity;->start(Landroid/content/Context;I)V

    .line 257
    iget-object p1, p0, Lcom/yannis/ledcard/activity/MainActivity$3;->this$0:Lcom/yannis/ledcard/activity/MainActivity;

    const-string v0, "_is_agreement_privacy"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/yannis/ledcard/util/PrefUtils;->saveBooleanToPrefs(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .line 263
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    const/4 v0, 0x0

    .line 265
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method
