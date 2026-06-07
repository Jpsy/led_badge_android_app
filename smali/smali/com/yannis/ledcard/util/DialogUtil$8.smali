.class Lcom/yannis/ledcard/util/DialogUtil$8;
.super Ljava/lang/Object;
.source "DialogUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yannis/ledcard/util/DialogUtil;->showEidtLedViewDialog(Landroid/content/Context;Lcom/yannis/ledcard/bean/LEDBmp;Lcom/yannis/ledcard/util/DialogUtil$OnLEDBmpViewOptListener;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$ledView:Lcom/yannis/ledcard/widget/LEDView;


# direct methods
.method constructor <init>(Lcom/yannis/ledcard/widget/LEDView;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/yannis/ledcard/util/DialogUtil$8;->val$ledView:Lcom/yannis/ledcard/widget/LEDView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 208
    iget-object p1, p0, Lcom/yannis/ledcard/util/DialogUtil$8;->val$ledView:Lcom/yannis/ledcard/widget/LEDView;

    invoke-virtual {p1}, Lcom/yannis/ledcard/widget/LEDView;->reverse()V

    return-void
.end method
