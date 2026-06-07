.class Lcom/yannis/ledcard/util/DialogUtil$7;
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
.field final synthetic val$content:Ljava/lang/String;

.field final synthetic val$ledView:Lcom/yannis/ledcard/widget/LEDView;


# direct methods
.method constructor <init>(Lcom/yannis/ledcard/widget/LEDView;Ljava/lang/String;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/yannis/ledcard/util/DialogUtil$7;->val$ledView:Lcom/yannis/ledcard/widget/LEDView;

    iput-object p2, p0, Lcom/yannis/ledcard/util/DialogUtil$7;->val$content:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 201
    iget-object p1, p0, Lcom/yannis/ledcard/util/DialogUtil$7;->val$ledView:Lcom/yannis/ledcard/widget/LEDView;

    iget-object v0, p0, Lcom/yannis/ledcard/util/DialogUtil$7;->val$content:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/yannis/ledcard/widget/LEDView;->setLEDData(Ljava/lang/String;)V

    return-void
.end method
