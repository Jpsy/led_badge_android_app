.class public Lcom/yannis/ledcard/activity/SendPictureActivity_ViewBinding;
.super Ljava/lang/Object;
.source "SendPictureActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/yannis/ledcard/activity/SendPictureActivity;

.field private view7f09002d:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/yannis/ledcard/activity/SendPictureActivity;)V
    .locals 1

    .line 28
    invoke-virtual {p1}, Lcom/yannis/ledcard/activity/SendPictureActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/yannis/ledcard/activity/SendPictureActivity_ViewBinding;-><init>(Lcom/yannis/ledcard/activity/SendPictureActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/yannis/ledcard/activity/SendPictureActivity;Landroid/view/View;)V
    .locals 3

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/yannis/ledcard/activity/SendPictureActivity_ViewBinding;->target:Lcom/yannis/ledcard/activity/SendPictureActivity;

    .line 36
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f090080

    const-string v2, "field \'ivPic\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/yannis/ledcard/activity/SendPictureActivity;->ivPic:Landroid/widget/ImageView;

    .line 37
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f090086

    const-string v2, "field \'ivWB\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/yannis/ledcard/activity/SendPictureActivity;->ivWB:Landroid/widget/ImageView;

    .line 38
    const-class v0, Lcom/yannis/ledcard/widget/LEDView;

    const v1, 0x7f09007a

    const-string v2, "field \'ivBle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yannis/ledcard/widget/LEDView;

    iput-object v0, p1, Lcom/yannis/ledcard/activity/SendPictureActivity;->ivBle:Lcom/yannis/ledcard/widget/LEDView;

    .line 39
    const-class v0, Landroid/widget/SeekBar;

    const v1, 0x7f0900c1

    const-string v2, "field \'sb\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p1, Lcom/yannis/ledcard/activity/SendPictureActivity;->sb:Landroid/widget/SeekBar;

    .line 40
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090116

    const-string v2, "field \'tvTmp\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/yannis/ledcard/activity/SendPictureActivity;->tvTmp:Landroid/widget/TextView;

    .line 41
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090117

    const-string v2, "field \'tvContext\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/yannis/ledcard/activity/SendPictureActivity;->tvContext:Landroid/widget/TextView;

    .line 42
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090114

    const-string v2, "field \'tvRight\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/yannis/ledcard/activity/SendPictureActivity;->tvRight:Landroid/widget/TextView;

    .line 43
    const-class v0, Lcom/yannis/ledcard/widget/ItemView;

    const v1, 0x7f090076

    const-string v2, "field \'itemViewSpeed\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yannis/ledcard/widget/ItemView;

    iput-object v0, p1, Lcom/yannis/ledcard/activity/SendPictureActivity;->itemViewSpeed:Lcom/yannis/ledcard/widget/ItemView;

    .line 44
    const-class v0, Lcom/yannis/ledcard/widget/ItemView;

    const v1, 0x7f090075

    const-string v2, "field \'itemViewMode\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yannis/ledcard/widget/ItemView;

    iput-object v0, p1, Lcom/yannis/ledcard/activity/SendPictureActivity;->itemViewMode:Lcom/yannis/ledcard/widget/ItemView;

    .line 45
    const-class v0, Landroid/widget/CheckBox;

    const v1, 0x7f090037

    const-string v2, "field \'checkBoxMarquee\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/yannis/ledcard/activity/SendPictureActivity;->checkBoxMarquee:Landroid/widget/CheckBox;

    .line 46
    const-class v0, Landroid/widget/CheckBox;

    const v1, 0x7f090035

    const-string v2, "field \'checkBoxFlash\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/yannis/ledcard/activity/SendPictureActivity;->checkBoxFlash:Landroid/widget/CheckBox;

    const v0, 0x7f09002d

    const-string v1, "field \'btnSend\' and method \'onBtnSendData\'"

    .line 47
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 48
    const-class v1, Landroid/widget/Button;

    const-string v2, "field \'btnSend\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/yannis/ledcard/activity/SendPictureActivity;->btnSend:Landroid/widget/Button;

    .line 49
    iput-object p2, p0, Lcom/yannis/ledcard/activity/SendPictureActivity_ViewBinding;->view7f09002d:Landroid/view/View;

    .line 50
    new-instance v0, Lcom/yannis/ledcard/activity/SendPictureActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/yannis/ledcard/activity/SendPictureActivity_ViewBinding$1;-><init>(Lcom/yannis/ledcard/activity/SendPictureActivity_ViewBinding;Lcom/yannis/ledcard/activity/SendPictureActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/yannis/ledcard/activity/SendPictureActivity_ViewBinding;->target:Lcom/yannis/ledcard/activity/SendPictureActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 63
    iput-object v1, p0, Lcom/yannis/ledcard/activity/SendPictureActivity_ViewBinding;->target:Lcom/yannis/ledcard/activity/SendPictureActivity;

    .line 65
    iput-object v1, v0, Lcom/yannis/ledcard/activity/SendPictureActivity;->ivPic:Landroid/widget/ImageView;

    .line 66
    iput-object v1, v0, Lcom/yannis/ledcard/activity/SendPictureActivity;->ivWB:Landroid/widget/ImageView;

    .line 67
    iput-object v1, v0, Lcom/yannis/ledcard/activity/SendPictureActivity;->ivBle:Lcom/yannis/ledcard/widget/LEDView;

    .line 68
    iput-object v1, v0, Lcom/yannis/ledcard/activity/SendPictureActivity;->sb:Landroid/widget/SeekBar;

    .line 69
    iput-object v1, v0, Lcom/yannis/ledcard/activity/SendPictureActivity;->tvTmp:Landroid/widget/TextView;

    .line 70
    iput-object v1, v0, Lcom/yannis/ledcard/activity/SendPictureActivity;->tvContext:Landroid/widget/TextView;

    .line 71
    iput-object v1, v0, Lcom/yannis/ledcard/activity/SendPictureActivity;->tvRight:Landroid/widget/TextView;

    .line 72
    iput-object v1, v0, Lcom/yannis/ledcard/activity/SendPictureActivity;->itemViewSpeed:Lcom/yannis/ledcard/widget/ItemView;

    .line 73
    iput-object v1, v0, Lcom/yannis/ledcard/activity/SendPictureActivity;->itemViewMode:Lcom/yannis/ledcard/widget/ItemView;

    .line 74
    iput-object v1, v0, Lcom/yannis/ledcard/activity/SendPictureActivity;->checkBoxMarquee:Landroid/widget/CheckBox;

    .line 75
    iput-object v1, v0, Lcom/yannis/ledcard/activity/SendPictureActivity;->checkBoxFlash:Landroid/widget/CheckBox;

    .line 76
    iput-object v1, v0, Lcom/yannis/ledcard/activity/SendPictureActivity;->btnSend:Landroid/widget/Button;

    .line 78
    iget-object v0, p0, Lcom/yannis/ledcard/activity/SendPictureActivity_ViewBinding;->view7f09002d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iput-object v1, p0, Lcom/yannis/ledcard/activity/SendPictureActivity_ViewBinding;->view7f09002d:Landroid/view/View;

    return-void

    .line 62
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
