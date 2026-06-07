.class Lcom/yannis/ledcard/util/DialogUtil$2;
.super Ljava/lang/Object;
.source "DialogUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yannis/ledcard/util/DialogUtil;->showWheelViewDialog(Landroid/content/Context;IILjava/lang/String;Lcom/yannis/ledcard/util/DialogUtil$OnWheelViewSelectListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$listener:Lcom/yannis/ledcard/util/DialogUtil$OnWheelViewSelectListener;

.field final synthetic val$wheelView:Lcom/yannis/ledcard/widget/WheelView;


# direct methods
.method constructor <init>(Lcom/yannis/ledcard/util/DialogUtil$OnWheelViewSelectListener;Lcom/yannis/ledcard/widget/WheelView;Landroid/app/Dialog;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/yannis/ledcard/util/DialogUtil$2;->val$listener:Lcom/yannis/ledcard/util/DialogUtil$OnWheelViewSelectListener;

    iput-object p2, p0, Lcom/yannis/ledcard/util/DialogUtil$2;->val$wheelView:Lcom/yannis/ledcard/widget/WheelView;

    iput-object p3, p0, Lcom/yannis/ledcard/util/DialogUtil$2;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 65
    iget-object p1, p0, Lcom/yannis/ledcard/util/DialogUtil$2;->val$listener:Lcom/yannis/ledcard/util/DialogUtil$OnWheelViewSelectListener;

    if-eqz p1, :cond_0

    .line 66
    iget-object v0, p0, Lcom/yannis/ledcard/util/DialogUtil$2;->val$wheelView:Lcom/yannis/ledcard/widget/WheelView;

    invoke-virtual {v0}, Lcom/yannis/ledcard/widget/WheelView;->getSelectedText()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yannis/ledcard/util/DialogUtil$2;->val$wheelView:Lcom/yannis/ledcard/widget/WheelView;

    invoke-virtual {v1}, Lcom/yannis/ledcard/widget/WheelView;->getSelected()I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/yannis/ledcard/util/DialogUtil$OnWheelViewSelectListener;->OnWheelViewSelect(Ljava/lang/Object;I)V

    .line 68
    :cond_0
    iget-object p1, p0, Lcom/yannis/ledcard/util/DialogUtil$2;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
