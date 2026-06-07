.class Lcom/yannis/ledcard/util/DialogUtil$6;
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
.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$ledBmp:Lcom/yannis/ledcard/bean/LEDBmp;

.field final synthetic val$listener:Lcom/yannis/ledcard/util/DialogUtil$OnLEDBmpViewOptListener;


# direct methods
.method constructor <init>(Lcom/yannis/ledcard/bean/LEDBmp;Lcom/yannis/ledcard/util/DialogUtil$OnLEDBmpViewOptListener;Landroid/app/Dialog;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/yannis/ledcard/util/DialogUtil$6;->val$ledBmp:Lcom/yannis/ledcard/bean/LEDBmp;

    iput-object p2, p0, Lcom/yannis/ledcard/util/DialogUtil$6;->val$listener:Lcom/yannis/ledcard/util/DialogUtil$OnLEDBmpViewOptListener;

    iput-object p3, p0, Lcom/yannis/ledcard/util/DialogUtil$6;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 189
    iget-object p1, p0, Lcom/yannis/ledcard/util/DialogUtil$6;->val$ledBmp:Lcom/yannis/ledcard/bean/LEDBmp;

    invoke-virtual {p1}, Lcom/yannis/ledcard/bean/LEDBmp;->getFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/yannis/ledcard/util/BitmapUtils;->deleteFile(Ljava/lang/String;)Z

    .line 190
    iget-object p1, p0, Lcom/yannis/ledcard/util/DialogUtil$6;->val$ledBmp:Lcom/yannis/ledcard/bean/LEDBmp;

    invoke-virtual {p1}, Lcom/yannis/ledcard/bean/LEDBmp;->delete()I

    move-result p1

    if-lez p1, :cond_0

    .line 191
    iget-object v0, p0, Lcom/yannis/ledcard/util/DialogUtil$6;->val$listener:Lcom/yannis/ledcard/util/DialogUtil$OnLEDBmpViewOptListener;

    if-eqz v0, :cond_0

    .line 192
    iget-object v1, p0, Lcom/yannis/ledcard/util/DialogUtil$6;->val$ledBmp:Lcom/yannis/ledcard/bean/LEDBmp;

    invoke-interface {v0, v1, p1}, Lcom/yannis/ledcard/util/DialogUtil$OnLEDBmpViewOptListener;->onLEDBmpDelete(Lcom/yannis/ledcard/bean/LEDBmp;I)V

    .line 194
    :cond_0
    iget-object p1, p0, Lcom/yannis/ledcard/util/DialogUtil$6;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
