.class public Lcom/yannis/ledcard/activity/AboutActivity_ViewBinding;
.super Ljava/lang/Object;
.source "AboutActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/yannis/ledcard/activity/AboutActivity;

.field private view7f09010e:Landroid/view/View;

.field private view7f090113:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/yannis/ledcard/activity/AboutActivity;)V
    .locals 1

    .line 24
    invoke-virtual {p1}, Lcom/yannis/ledcard/activity/AboutActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/yannis/ledcard/activity/AboutActivity_ViewBinding;-><init>(Lcom/yannis/ledcard/activity/AboutActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/yannis/ledcard/activity/AboutActivity;Landroid/view/View;)V
    .locals 4

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/yannis/ledcard/activity/AboutActivity_ViewBinding;->target:Lcom/yannis/ledcard/activity/AboutActivity;

    .line 32
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090109

    const-string v2, "field \'mTextView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/yannis/ledcard/activity/AboutActivity;->mTextView:Landroid/widget/TextView;

    const v0, 0x7f09010e

    const-string v1, "field \'enduserAgmentTv\' and method \'showAgreement\'"

    .line 33
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 34
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'enduserAgmentTv\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/yannis/ledcard/activity/AboutActivity;->enduserAgmentTv:Landroid/widget/TextView;

    .line 35
    iput-object v1, p0, Lcom/yannis/ledcard/activity/AboutActivity_ViewBinding;->view7f09010e:Landroid/view/View;

    .line 36
    new-instance v0, Lcom/yannis/ledcard/activity/AboutActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/yannis/ledcard/activity/AboutActivity_ViewBinding$1;-><init>(Lcom/yannis/ledcard/activity/AboutActivity_ViewBinding;Lcom/yannis/ledcard/activity/AboutActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090113

    const-string v1, "field \'privacyPolicyTv\' and method \'showPolicy\'"

    .line 42
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 43
    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'privacyPolicyTv\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/yannis/ledcard/activity/AboutActivity;->privacyPolicyTv:Landroid/widget/TextView;

    .line 44
    iput-object p2, p0, Lcom/yannis/ledcard/activity/AboutActivity_ViewBinding;->view7f090113:Landroid/view/View;

    .line 45
    new-instance v0, Lcom/yannis/ledcard/activity/AboutActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/yannis/ledcard/activity/AboutActivity_ViewBinding$2;-><init>(Lcom/yannis/ledcard/activity/AboutActivity_ViewBinding;Lcom/yannis/ledcard/activity/AboutActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/yannis/ledcard/activity/AboutActivity_ViewBinding;->target:Lcom/yannis/ledcard/activity/AboutActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 58
    iput-object v1, p0, Lcom/yannis/ledcard/activity/AboutActivity_ViewBinding;->target:Lcom/yannis/ledcard/activity/AboutActivity;

    .line 60
    iput-object v1, v0, Lcom/yannis/ledcard/activity/AboutActivity;->mTextView:Landroid/widget/TextView;

    .line 61
    iput-object v1, v0, Lcom/yannis/ledcard/activity/AboutActivity;->enduserAgmentTv:Landroid/widget/TextView;

    .line 62
    iput-object v1, v0, Lcom/yannis/ledcard/activity/AboutActivity;->privacyPolicyTv:Landroid/widget/TextView;

    .line 64
    iget-object v0, p0, Lcom/yannis/ledcard/activity/AboutActivity_ViewBinding;->view7f09010e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iput-object v1, p0, Lcom/yannis/ledcard/activity/AboutActivity_ViewBinding;->view7f09010e:Landroid/view/View;

    .line 66
    iget-object v0, p0, Lcom/yannis/ledcard/activity/AboutActivity_ViewBinding;->view7f090113:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iput-object v1, p0, Lcom/yannis/ledcard/activity/AboutActivity_ViewBinding;->view7f090113:Landroid/view/View;

    return-void

    .line 57
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
