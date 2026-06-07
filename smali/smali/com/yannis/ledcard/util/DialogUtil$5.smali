.class Lcom/yannis/ledcard/util/DialogUtil$5;
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
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$ledBmp:Lcom/yannis/ledcard/bean/LEDBmp;

.field final synthetic val$ledView:Lcom/yannis/ledcard/widget/LEDView;

.field final synthetic val$listener:Lcom/yannis/ledcard/util/DialogUtil$OnLEDBmpViewOptListener;


# direct methods
.method constructor <init>(Lcom/yannis/ledcard/bean/LEDBmp;Lcom/yannis/ledcard/widget/LEDView;Landroid/content/Context;Lcom/yannis/ledcard/util/DialogUtil$OnLEDBmpViewOptListener;Landroid/app/Dialog;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/yannis/ledcard/util/DialogUtil$5;->val$ledBmp:Lcom/yannis/ledcard/bean/LEDBmp;

    iput-object p2, p0, Lcom/yannis/ledcard/util/DialogUtil$5;->val$ledView:Lcom/yannis/ledcard/widget/LEDView;

    iput-object p3, p0, Lcom/yannis/ledcard/util/DialogUtil$5;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/yannis/ledcard/util/DialogUtil$5;->val$listener:Lcom/yannis/ledcard/util/DialogUtil$OnLEDBmpViewOptListener;

    iput-object p5, p0, Lcom/yannis/ledcard/util/DialogUtil$5;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 170
    invoke-static {}, Lcom/yannis/ledcard/util/BitmapUtils;->generateFileName()Ljava/lang/String;

    move-result-object p1

    .line 171
    invoke-static {}, Lcom/yannis/ledcard/util/BitmapUtils;->getBmpDir()Ljava/lang/String;

    move-result-object v0

    .line 172
    iget-object v1, p0, Lcom/yannis/ledcard/util/DialogUtil$5;->val$ledBmp:Lcom/yannis/ledcard/bean/LEDBmp;

    invoke-virtual {v1}, Lcom/yannis/ledcard/bean/LEDBmp;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yannis/ledcard/util/BitmapUtils;->deleteFile(Ljava/lang/String;)Z

    .line 173
    iget-object v1, p0, Lcom/yannis/ledcard/util/DialogUtil$5;->val$ledBmp:Lcom/yannis/ledcard/bean/LEDBmp;

    iget-object v2, p0, Lcom/yannis/ledcard/util/DialogUtil$5;->val$ledView:Lcom/yannis/ledcard/widget/LEDView;

    invoke-virtual {v2}, Lcom/yannis/ledcard/widget/LEDView;->getLedData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yannis/ledcard/bean/LEDBmp;->setContent(Ljava/lang/String;)V

    .line 174
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 175
    iget-object v2, p0, Lcom/yannis/ledcard/util/DialogUtil$5;->val$ledBmp:Lcom/yannis/ledcard/bean/LEDBmp;

    invoke-virtual {v2}, Lcom/yannis/ledcard/bean/LEDBmp;->getContent()Ljava/lang/String;

    move-result-object v2

    const-string v3, "content"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "filePath"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-class v0, Lcom/yannis/ledcard/bean/LEDBmp;

    iget-object v2, p0, Lcom/yannis/ledcard/util/DialogUtil$5;->val$ledBmp:Lcom/yannis/ledcard/bean/LEDBmp;

    invoke-virtual {v2}, Lcom/yannis/ledcard/bean/LEDBmp;->getId()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lorg/litepal/crud/DataSupport;->update(Ljava/lang/Class;Landroid/content/ContentValues;J)I

    move-result v0

    .line 178
    iget-object v1, p0, Lcom/yannis/ledcard/util/DialogUtil$5;->val$ledView:Lcom/yannis/ledcard/widget/LEDView;

    iget-object v2, p0, Lcom/yannis/ledcard/util/DialogUtil$5;->val$context:Landroid/content/Context;

    const/16 v3, 0x21

    invoke-static {v2, v3}, Lcom/yannis/ledcard/util/ViewUtils;->dp2px(Landroid/content/Context;I)I

    move-result v2

    iget-object v4, p0, Lcom/yannis/ledcard/util/DialogUtil$5;->val$context:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/yannis/ledcard/util/ViewUtils;->dp2px(Landroid/content/Context;I)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/yannis/ledcard/util/BitmapUtils;->loadBitmapFromView(Landroid/view/View;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/yannis/ledcard/util/BitmapUtils;->saveBitmapToBmpFile(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    if-lez v0, :cond_0

    .line 179
    iget-object p1, p0, Lcom/yannis/ledcard/util/DialogUtil$5;->val$listener:Lcom/yannis/ledcard/util/DialogUtil$OnLEDBmpViewOptListener;

    if-eqz p1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/yannis/ledcard/util/DialogUtil$5;->val$ledBmp:Lcom/yannis/ledcard/bean/LEDBmp;

    invoke-interface {p1, v1, v0}, Lcom/yannis/ledcard/util/DialogUtil$OnLEDBmpViewOptListener;->onLEDBmpModify(Lcom/yannis/ledcard/bean/LEDBmp;I)V

    .line 182
    :cond_0
    iget-object p1, p0, Lcom/yannis/ledcard/util/DialogUtil$5;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
