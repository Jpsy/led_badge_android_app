.class Lcom/yannis/ledcard/util/DialogUtil$4;
.super Ljava/lang/Object;
.source "DialogUtil.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yannis/ledcard/util/DialogUtil;->getChoiceColorDialog(Landroid/content/Context;Lcom/yannis/ledcard/util/DialogUtil$OnColorSelectListener;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$listener:Lcom/yannis/ledcard/util/DialogUtil$OnColorSelectListener;


# direct methods
.method constructor <init>(Lcom/yannis/ledcard/util/DialogUtil$OnColorSelectListener;Landroid/app/Dialog;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/yannis/ledcard/util/DialogUtil$4;->val$listener:Lcom/yannis/ledcard/util/DialogUtil$OnColorSelectListener;

    iput-object p2, p0, Lcom/yannis/ledcard/util/DialogUtil$4;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 131
    iget-object p1, p0, Lcom/yannis/ledcard/util/DialogUtil$4;->val$listener:Lcom/yannis/ledcard/util/DialogUtil$OnColorSelectListener;

    if-eqz p1, :cond_0

    .line 132
    invoke-interface {p1, p3}, Lcom/yannis/ledcard/util/DialogUtil$OnColorSelectListener;->OnColorSelect(I)V

    .line 133
    iget-object p1, p0, Lcom/yannis/ledcard/util/DialogUtil$4;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method
