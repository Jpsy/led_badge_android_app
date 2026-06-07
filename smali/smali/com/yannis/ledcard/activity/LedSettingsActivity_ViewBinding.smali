.class public Lcom/yannis/ledcard/activity/LedSettingsActivity_ViewBinding;
.super Ljava/lang/Object;
.source "LedSettingsActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/yannis/ledcard/activity/LedSettingsActivity;

.field private view7f090079:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/yannis/ledcard/activity/LedSettingsActivity;)V
    .locals 1

    .line 28
    invoke-virtual {p1}, Lcom/yannis/ledcard/activity/LedSettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/yannis/ledcard/activity/LedSettingsActivity_ViewBinding;-><init>(Lcom/yannis/ledcard/activity/LedSettingsActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/yannis/ledcard/activity/LedSettingsActivity;Landroid/view/View;)V
    .locals 3

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity_ViewBinding;->target:Lcom/yannis/ledcard/activity/LedSettingsActivity;

    .line 36
    const-class v0, Landroid/widget/GridView;

    const v1, 0x7f09006b

    const-string v2, "field \'gridView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p1, Lcom/yannis/ledcard/activity/LedSettingsActivity;->gridView:Landroid/widget/GridView;

    .line 37
    const-class v0, Lcom/yannis/ledcard/widget/ItemView;

    const v1, 0x7f090076

    const-string v2, "field \'itemViewSpeed\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yannis/ledcard/widget/ItemView;

    iput-object v0, p1, Lcom/yannis/ledcard/activity/LedSettingsActivity;->itemViewSpeed:Lcom/yannis/ledcard/widget/ItemView;

    .line 38
    const-class v0, Lcom/yannis/ledcard/widget/ItemView;

    const v1, 0x7f090075

    const-string v2, "field \'itemViewMode\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yannis/ledcard/widget/ItemView;

    iput-object v0, p1, Lcom/yannis/ledcard/activity/LedSettingsActivity;->itemViewMode:Lcom/yannis/ledcard/widget/ItemView;

    .line 39
    const-class v0, Landroid/widget/CheckBox;

    const v1, 0x7f090039

    const-string v2, "field \'checkBoxReverse\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/yannis/ledcard/activity/LedSettingsActivity;->checkBoxReverse:Landroid/widget/CheckBox;

    .line 40
    const-class v0, Landroid/widget/CheckBox;

    const v1, 0x7f090037

    const-string v2, "field \'checkBoxMarquee\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/yannis/ledcard/activity/LedSettingsActivity;->checkBoxMarquee:Landroid/widget/CheckBox;

    .line 41
    const-class v0, Landroid/widget/CheckBox;

    const v1, 0x7f090035

    const-string v2, "field \'checkBoxFlash\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/yannis/ledcard/activity/LedSettingsActivity;->checkBoxFlash:Landroid/widget/CheckBox;

    .line 42
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f090057

    const-string v2, "field \'et_content\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/yannis/ledcard/activity/LedSettingsActivity;->et_content:Landroid/widget/EditText;

    .line 43
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0900bc

    const-string v2, "field \'rl_color\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/yannis/ledcard/activity/LedSettingsActivity;->rl_color:Landroid/widget/RelativeLayout;

    .line 44
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090118

    const-string v2, "field \'tvLeft\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/yannis/ledcard/activity/LedSettingsActivity;->tvLeft:Landroid/widget/TextView;

    .line 45
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090114

    const-string v2, "field \'tvRight\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/yannis/ledcard/activity/LedSettingsActivity;->tvRight:Landroid/widget/TextView;

    .line 46
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090117

    const-string v2, "field \'tvContext\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/yannis/ledcard/activity/LedSettingsActivity;->tvContext:Landroid/widget/TextView;

    .line 47
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f090023

    const-string v2, "field \'ivBmp\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/yannis/ledcard/activity/LedSettingsActivity;->ivBmp:Landroid/widget/ImageView;

    const v0, 0x7f090079

    const-string v1, "method \'onBack\'"

    .line 48
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 49
    iput-object p2, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity_ViewBinding;->view7f090079:Landroid/view/View;

    .line 50
    new-instance v0, Lcom/yannis/ledcard/activity/LedSettingsActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/yannis/ledcard/activity/LedSettingsActivity_ViewBinding$1;-><init>(Lcom/yannis/ledcard/activity/LedSettingsActivity_ViewBinding;Lcom/yannis/ledcard/activity/LedSettingsActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity_ViewBinding;->target:Lcom/yannis/ledcard/activity/LedSettingsActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 63
    iput-object v1, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity_ViewBinding;->target:Lcom/yannis/ledcard/activity/LedSettingsActivity;

    .line 65
    iput-object v1, v0, Lcom/yannis/ledcard/activity/LedSettingsActivity;->gridView:Landroid/widget/GridView;

    .line 66
    iput-object v1, v0, Lcom/yannis/ledcard/activity/LedSettingsActivity;->itemViewSpeed:Lcom/yannis/ledcard/widget/ItemView;

    .line 67
    iput-object v1, v0, Lcom/yannis/ledcard/activity/LedSettingsActivity;->itemViewMode:Lcom/yannis/ledcard/widget/ItemView;

    .line 68
    iput-object v1, v0, Lcom/yannis/ledcard/activity/LedSettingsActivity;->checkBoxReverse:Landroid/widget/CheckBox;

    .line 69
    iput-object v1, v0, Lcom/yannis/ledcard/activity/LedSettingsActivity;->checkBoxMarquee:Landroid/widget/CheckBox;

    .line 70
    iput-object v1, v0, Lcom/yannis/ledcard/activity/LedSettingsActivity;->checkBoxFlash:Landroid/widget/CheckBox;

    .line 71
    iput-object v1, v0, Lcom/yannis/ledcard/activity/LedSettingsActivity;->et_content:Landroid/widget/EditText;

    .line 72
    iput-object v1, v0, Lcom/yannis/ledcard/activity/LedSettingsActivity;->rl_color:Landroid/widget/RelativeLayout;

    .line 73
    iput-object v1, v0, Lcom/yannis/ledcard/activity/LedSettingsActivity;->tvLeft:Landroid/widget/TextView;

    .line 74
    iput-object v1, v0, Lcom/yannis/ledcard/activity/LedSettingsActivity;->tvRight:Landroid/widget/TextView;

    .line 75
    iput-object v1, v0, Lcom/yannis/ledcard/activity/LedSettingsActivity;->tvContext:Landroid/widget/TextView;

    .line 76
    iput-object v1, v0, Lcom/yannis/ledcard/activity/LedSettingsActivity;->ivBmp:Landroid/widget/ImageView;

    .line 78
    iget-object v0, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity_ViewBinding;->view7f090079:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iput-object v1, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity_ViewBinding;->view7f090079:Landroid/view/View;

    return-void

    .line 62
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
