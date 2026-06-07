.class Lcom/yannis/ledcard/util/DialogUtil$3;
.super Ljava/lang/Object;
.source "DialogUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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


# direct methods
.method constructor <init>(Landroid/app/Dialog;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/yannis/ledcard/util/DialogUtil$3;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 125
    iget-object p1, p0, Lcom/yannis/ledcard/util/DialogUtil$3;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
