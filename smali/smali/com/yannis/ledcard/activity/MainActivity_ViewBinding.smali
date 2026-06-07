.class public Lcom/yannis/ledcard/activity/MainActivity_ViewBinding;
.super Ljava/lang/Object;
.source "MainActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/yannis/ledcard/activity/MainActivity;

.field private view7f09002d:Landroid/view/View;

.field private view7f09002e:Landroid/view/View;

.field private view7f090114:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/yannis/ledcard/activity/MainActivity;)V
    .locals 1

    .line 28
    invoke-virtual {p1}, Lcom/yannis/ledcard/activity/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/yannis/ledcard/activity/MainActivity_ViewBinding;-><init>(Lcom/yannis/ledcard/activity/MainActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/yannis/ledcard/activity/MainActivity;Landroid/view/View;)V
    .locals 4

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/yannis/ledcard/activity/MainActivity_ViewBinding;->target:Lcom/yannis/ledcard/activity/MainActivity;

    .line 36
    const-class v0, Landroid/widget/ListView;

    const v1, 0x7f090098

    const-string v2, "field \'listView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p1, Lcom/yannis/ledcard/activity/MainActivity;->listView:Landroid/widget/ListView;

    const v0, 0x7f09002d

    const-string v1, "field \'btnSend\' and method \'onBtnSendData\'"

    .line 37
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 38
    const-class v2, Landroid/widget/Button;

    const-string v3, "field \'btnSend\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/yannis/ledcard/activity/MainActivity;->btnSend:Landroid/widget/Button;

    .line 39
    iput-object v1, p0, Lcom/yannis/ledcard/activity/MainActivity_ViewBinding;->view7f09002d:Landroid/view/View;

    .line 40
    new-instance v0, Lcom/yannis/ledcard/activity/MainActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/yannis/ledcard/activity/MainActivity_ViewBinding$1;-><init>(Lcom/yannis/ledcard/activity/MainActivity_ViewBinding;Lcom/yannis/ledcard/activity/MainActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09002e

    const-string v1, "field \'btnSettings\' and method \'onBtnSettings\'"

    .line 46
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 47
    const-class v2, Landroid/widget/Button;

    const-string v3, "field \'btnSettings\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/yannis/ledcard/activity/MainActivity;->btnSettings:Landroid/widget/Button;

    .line 48
    iput-object v1, p0, Lcom/yannis/ledcard/activity/MainActivity_ViewBinding;->view7f09002e:Landroid/view/View;

    .line 49
    new-instance v0, Lcom/yannis/ledcard/activity/MainActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/yannis/ledcard/activity/MainActivity_ViewBinding$2;-><init>(Lcom/yannis/ledcard/activity/MainActivity_ViewBinding;Lcom/yannis/ledcard/activity/MainActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090117

    const-string v2, "field \'tvContext\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/yannis/ledcard/activity/MainActivity;->tvContext:Landroid/widget/TextView;

    .line 56
    const-class v0, Landroid/widget/Button;

    const v1, 0x7f09002f

    const-string v2, "field \'btnSub\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/yannis/ledcard/activity/MainActivity;->btnSub:Landroid/widget/Button;

    .line 57
    const-class v0, Landroid/widget/Button;

    const v1, 0x7f090026

    const-string v2, "field \'btnAdd\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/yannis/ledcard/activity/MainActivity;->btnAdd:Landroid/widget/Button;

    .line 58
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090105

    const-string v2, "field \'tvTextSize\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/yannis/ledcard/activity/MainActivity;->tvTextSize:Landroid/widget/TextView;

    const v0, 0x7f09011e

    const-string v1, "field \'vTextSize\'"

    .line 59
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/yannis/ledcard/activity/MainActivity;->vTextSize:Landroid/view/View;

    const v0, 0x7f090114

    const-string v1, "method \'toAbout\'"

    .line 60
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 61
    iput-object p2, p0, Lcom/yannis/ledcard/activity/MainActivity_ViewBinding;->view7f090114:Landroid/view/View;

    .line 62
    new-instance v0, Lcom/yannis/ledcard/activity/MainActivity_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcom/yannis/ledcard/activity/MainActivity_ViewBinding$3;-><init>(Lcom/yannis/ledcard/activity/MainActivity_ViewBinding;Lcom/yannis/ledcard/activity/MainActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/yannis/ledcard/activity/MainActivity_ViewBinding;->target:Lcom/yannis/ledcard/activity/MainActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 75
    iput-object v1, p0, Lcom/yannis/ledcard/activity/MainActivity_ViewBinding;->target:Lcom/yannis/ledcard/activity/MainActivity;

    .line 77
    iput-object v1, v0, Lcom/yannis/ledcard/activity/MainActivity;->listView:Landroid/widget/ListView;

    .line 78
    iput-object v1, v0, Lcom/yannis/ledcard/activity/MainActivity;->btnSend:Landroid/widget/Button;

    .line 79
    iput-object v1, v0, Lcom/yannis/ledcard/activity/MainActivity;->btnSettings:Landroid/widget/Button;

    .line 80
    iput-object v1, v0, Lcom/yannis/ledcard/activity/MainActivity;->tvContext:Landroid/widget/TextView;

    .line 81
    iput-object v1, v0, Lcom/yannis/ledcard/activity/MainActivity;->btnSub:Landroid/widget/Button;

    .line 82
    iput-object v1, v0, Lcom/yannis/ledcard/activity/MainActivity;->btnAdd:Landroid/widget/Button;

    .line 83
    iput-object v1, v0, Lcom/yannis/ledcard/activity/MainActivity;->tvTextSize:Landroid/widget/TextView;

    .line 84
    iput-object v1, v0, Lcom/yannis/ledcard/activity/MainActivity;->vTextSize:Landroid/view/View;

    .line 86
    iget-object v0, p0, Lcom/yannis/ledcard/activity/MainActivity_ViewBinding;->view7f09002d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iput-object v1, p0, Lcom/yannis/ledcard/activity/MainActivity_ViewBinding;->view7f09002d:Landroid/view/View;

    .line 88
    iget-object v0, p0, Lcom/yannis/ledcard/activity/MainActivity_ViewBinding;->view7f09002e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iput-object v1, p0, Lcom/yannis/ledcard/activity/MainActivity_ViewBinding;->view7f09002e:Landroid/view/View;

    .line 90
    iget-object v0, p0, Lcom/yannis/ledcard/activity/MainActivity_ViewBinding;->view7f090114:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iput-object v1, p0, Lcom/yannis/ledcard/activity/MainActivity_ViewBinding;->view7f090114:Landroid/view/View;

    return-void

    .line 74
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
