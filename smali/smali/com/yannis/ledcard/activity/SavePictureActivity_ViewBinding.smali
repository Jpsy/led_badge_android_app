.class public Lcom/yannis/ledcard/activity/SavePictureActivity_ViewBinding;
.super Ljava/lang/Object;
.source "SavePictureActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/yannis/ledcard/activity/SavePictureActivity;

.field private view7f090079:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/yannis/ledcard/activity/SavePictureActivity;)V
    .locals 1

    .line 28
    invoke-virtual {p1}, Lcom/yannis/ledcard/activity/SavePictureActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/yannis/ledcard/activity/SavePictureActivity_ViewBinding;-><init>(Lcom/yannis/ledcard/activity/SavePictureActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/yannis/ledcard/activity/SavePictureActivity;Landroid/view/View;)V
    .locals 3

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/yannis/ledcard/activity/SavePictureActivity_ViewBinding;->target:Lcom/yannis/ledcard/activity/SavePictureActivity;

    .line 36
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f090080

    const-string v2, "field \'ivPic\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/yannis/ledcard/activity/SavePictureActivity;->ivPic:Landroid/widget/ImageView;

    .line 37
    const-class v0, Landroid/widget/Button;

    const v1, 0x7f090082

    const-string v2, "field \'ivReverse\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/yannis/ledcard/activity/SavePictureActivity;->ivReverse:Landroid/widget/Button;

    .line 38
    const-class v0, Landroid/widget/Button;

    const v1, 0x7f09007b

    const-string v2, "field \'ivClear\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/yannis/ledcard/activity/SavePictureActivity;->ivClear:Landroid/widget/Button;

    .line 39
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f090086

    const-string v2, "field \'ivWB\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/yannis/ledcard/activity/SavePictureActivity;->ivWB:Landroid/widget/ImageView;

    .line 40
    const-class v0, Lcom/yannis/ledcard/widget/LEDView;

    const v1, 0x7f09008b

    const-string v2, "field \'ledBig\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yannis/ledcard/widget/LEDView;

    iput-object v0, p1, Lcom/yannis/ledcard/activity/SavePictureActivity;->ledBig:Lcom/yannis/ledcard/widget/LEDView;

    .line 41
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090094

    const-string v2, "field \'llLeds\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/yannis/ledcard/activity/SavePictureActivity;->llLeds:Landroid/widget/LinearLayout;

    .line 42
    const-class v0, Landroid/widget/SeekBar;

    const v1, 0x7f0900c1

    const-string v2, "field \'sb\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p1, Lcom/yannis/ledcard/activity/SavePictureActivity;->sb:Landroid/widget/SeekBar;

    .line 43
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090117

    const-string v2, "field \'tvContext\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/yannis/ledcard/activity/SavePictureActivity;->tvContext:Landroid/widget/TextView;

    .line 44
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090114

    const-string v2, "field \'tvRight\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/yannis/ledcard/activity/SavePictureActivity;->tvRight:Landroid/widget/TextView;

    .line 45
    const-class v0, Landroid/widget/HorizontalScrollView;

    const v1, 0x7f09006e

    const-string v2, "field \'hscrollview\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p1, Lcom/yannis/ledcard/activity/SavePictureActivity;->hscrollview:Landroid/widget/HorizontalScrollView;

    .line 46
    const-class v0, Landroid/widget/Button;

    const v1, 0x7f090083

    const-string v2, "field \'btnSave\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/yannis/ledcard/activity/SavePictureActivity;->btnSave:Landroid/widget/Button;

    .line 47
    const-class v0, Landroid/widget/Button;

    const v1, 0x7f090084

    const-string v2, "field \'ivScroll\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/yannis/ledcard/activity/SavePictureActivity;->ivScroll:Landroid/widget/Button;

    .line 48
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0900fa

    const-string v2, "field \'titleOrigin\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/yannis/ledcard/activity/SavePictureActivity;->titleOrigin:Landroid/widget/TextView;

    .line 49
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0900f9

    const-string v2, "field \'titleBW\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/yannis/ledcard/activity/SavePictureActivity;->titleBW:Landroid/widget/TextView;

    .line 50
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090096

    const-string v2, "field \'llSb\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/yannis/ledcard/activity/SavePictureActivity;->llSb:Landroid/widget/LinearLayout;

    .line 51
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0900bd

    const-string v2, "field \'llpics\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/yannis/ledcard/activity/SavePictureActivity;->llpics:Landroid/widget/LinearLayout;

    .line 52
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090087

    const-string v2, "field \'llLEDs\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/yannis/ledcard/activity/SavePictureActivity;->llLEDs:Landroid/widget/LinearLayout;

    .line 53
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090095

    const-string v2, "field \'llParent\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/yannis/ledcard/activity/SavePictureActivity;->llParent:Landroid/widget/LinearLayout;

    const v0, 0x7f090079

    const-string v1, "method \'onBack\'"

    .line 54
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 55
    iput-object p2, p0, Lcom/yannis/ledcard/activity/SavePictureActivity_ViewBinding;->view7f090079:Landroid/view/View;

    .line 56
    new-instance v0, Lcom/yannis/ledcard/activity/SavePictureActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/yannis/ledcard/activity/SavePictureActivity_ViewBinding$1;-><init>(Lcom/yannis/ledcard/activity/SavePictureActivity_ViewBinding;Lcom/yannis/ledcard/activity/SavePictureActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/yannis/ledcard/activity/SavePictureActivity_ViewBinding;->target:Lcom/yannis/ledcard/activity/SavePictureActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 69
    iput-object v1, p0, Lcom/yannis/ledcard/activity/SavePictureActivity_ViewBinding;->target:Lcom/yannis/ledcard/activity/SavePictureActivity;

    .line 71
    iput-object v1, v0, Lcom/yannis/ledcard/activity/SavePictureActivity;->ivPic:Landroid/widget/ImageView;

    .line 72
    iput-object v1, v0, Lcom/yannis/ledcard/activity/SavePictureActivity;->ivReverse:Landroid/widget/Button;

    .line 73
    iput-object v1, v0, Lcom/yannis/ledcard/activity/SavePictureActivity;->ivClear:Landroid/widget/Button;

    .line 74
    iput-object v1, v0, Lcom/yannis/ledcard/activity/SavePictureActivity;->ivWB:Landroid/widget/ImageView;

    .line 75
    iput-object v1, v0, Lcom/yannis/ledcard/activity/SavePictureActivity;->ledBig:Lcom/yannis/ledcard/widget/LEDView;

    .line 76
    iput-object v1, v0, Lcom/yannis/ledcard/activity/SavePictureActivity;->llLeds:Landroid/widget/LinearLayout;

    .line 77
    iput-object v1, v0, Lcom/yannis/ledcard/activity/SavePictureActivity;->sb:Landroid/widget/SeekBar;

    .line 78
    iput-object v1, v0, Lcom/yannis/ledcard/activity/SavePictureActivity;->tvContext:Landroid/widget/TextView;

    .line 79
    iput-object v1, v0, Lcom/yannis/ledcard/activity/SavePictureActivity;->tvRight:Landroid/widget/TextView;

    .line 80
    iput-object v1, v0, Lcom/yannis/ledcard/activity/SavePictureActivity;->hscrollview:Landroid/widget/HorizontalScrollView;

    .line 81
    iput-object v1, v0, Lcom/yannis/ledcard/activity/SavePictureActivity;->btnSave:Landroid/widget/Button;

    .line 82
    iput-object v1, v0, Lcom/yannis/ledcard/activity/SavePictureActivity;->ivScroll:Landroid/widget/Button;

    .line 83
    iput-object v1, v0, Lcom/yannis/ledcard/activity/SavePictureActivity;->titleOrigin:Landroid/widget/TextView;

    .line 84
    iput-object v1, v0, Lcom/yannis/ledcard/activity/SavePictureActivity;->titleBW:Landroid/widget/TextView;

    .line 85
    iput-object v1, v0, Lcom/yannis/ledcard/activity/SavePictureActivity;->llSb:Landroid/widget/LinearLayout;

    .line 86
    iput-object v1, v0, Lcom/yannis/ledcard/activity/SavePictureActivity;->llpics:Landroid/widget/LinearLayout;

    .line 87
    iput-object v1, v0, Lcom/yannis/ledcard/activity/SavePictureActivity;->llLEDs:Landroid/widget/LinearLayout;

    .line 88
    iput-object v1, v0, Lcom/yannis/ledcard/activity/SavePictureActivity;->llParent:Landroid/widget/LinearLayout;

    .line 90
    iget-object v0, p0, Lcom/yannis/ledcard/activity/SavePictureActivity_ViewBinding;->view7f090079:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iput-object v1, p0, Lcom/yannis/ledcard/activity/SavePictureActivity_ViewBinding;->view7f090079:Landroid/view/View;

    return-void

    .line 68
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
