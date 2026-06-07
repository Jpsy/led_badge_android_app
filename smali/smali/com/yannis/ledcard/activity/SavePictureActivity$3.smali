.class Lcom/yannis/ledcard/activity/SavePictureActivity$3;
.super Ljava/lang/Object;
.source "SavePictureActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yannis/ledcard/activity/SavePictureActivity;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yannis/ledcard/activity/SavePictureActivity;


# direct methods
.method constructor <init>(Lcom/yannis/ledcard/activity/SavePictureActivity;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/yannis/ledcard/activity/SavePictureActivity$3;->this$0:Lcom/yannis/ledcard/activity/SavePictureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    .line 184
    iget-object p1, p0, Lcom/yannis/ledcard/activity/SavePictureActivity$3;->this$0:Lcom/yannis/ledcard/activity/SavePictureActivity;

    iget-object p1, p1, Lcom/yannis/ledcard/activity/SavePictureActivity;->bitmap:Ljava/lang/ref/SoftReference;

    if-eqz p1, :cond_2

    if-nez p3, :cond_0

    goto/16 :goto_0

    .line 188
    :cond_0
    iget-object p1, p0, Lcom/yannis/ledcard/activity/SavePictureActivity$3;->this$0:Lcom/yannis/ledcard/activity/SavePictureActivity;

    iget-object p1, p1, Lcom/yannis/ledcard/activity/SavePictureActivity;->bitmap:Ljava/lang/ref/SoftReference;

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    .line 189
    iget-object p3, p0, Lcom/yannis/ledcard/activity/SavePictureActivity$3;->this$0:Lcom/yannis/ledcard/activity/SavePictureActivity;

    iget-object p3, p3, Lcom/yannis/ledcard/activity/SavePictureActivity;->bitmap:Ljava/lang/ref/SoftReference;

    invoke-virtual {p3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Bitmap;

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    iget-object v0, p0, Lcom/yannis/ledcard/activity/SavePictureActivity$3;->this$0:Lcom/yannis/ledcard/activity/SavePictureActivity;

    iget-object v0, v0, Lcom/yannis/ledcard/activity/SavePictureActivity;->bitmap:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-static {p1, p3, v0, p2}, Lcom/yannis/ledcard/util/BitmapUtils;->convertToBMW(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 190
    iget-object p2, p0, Lcom/yannis/ledcard/activity/SavePictureActivity$3;->this$0:Lcom/yannis/ledcard/activity/SavePictureActivity;

    iget-object p2, p2, Lcom/yannis/ledcard/activity/SavePictureActivity;->ivWB:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 191
    iget-object p2, p0, Lcom/yannis/ledcard/activity/SavePictureActivity$3;->this$0:Lcom/yannis/ledcard/activity/SavePictureActivity;

    const/16 p3, 0xb

    const-string v0, "_pix"

    invoke-static {p2, v0, p3}, Lcom/yannis/ledcard/util/PrefUtils;->getIntFromPrefs(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p2

    .line 192
    iget-object p3, p0, Lcom/yannis/ledcard/activity/SavePictureActivity$3;->this$0:Lcom/yannis/ledcard/activity/SavePictureActivity;

    iget-object p3, p3, Lcom/yannis/ledcard/activity/SavePictureActivity;->bitmap:Ljava/lang/ref/SoftReference;

    invoke-virtual {p3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Bitmap;

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    iget-object v0, p0, Lcom/yannis/ledcard/activity/SavePictureActivity$3;->this$0:Lcom/yannis/ledcard/activity/SavePictureActivity;

    iget-object v0, v0, Lcom/yannis/ledcard/activity/SavePictureActivity;->bitmap:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-le p3, v0, :cond_1

    .line 193
    iget-object p3, p0, Lcom/yannis/ledcard/activity/SavePictureActivity$3;->this$0:Lcom/yannis/ledcard/activity/SavePictureActivity;

    new-instance v0, Ljava/lang/ref/SoftReference;

    iget-object v1, p0, Lcom/yannis/ledcard/activity/SavePictureActivity$3;->this$0:Lcom/yannis/ledcard/activity/SavePictureActivity;

    iget-object v1, v1, Lcom/yannis/ledcard/activity/SavePictureActivity;->bitmap:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-static {p1, v1, p2}, Lcom/yannis/ledcard/util/BitmapUtils;->scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p3, Lcom/yannis/ledcard/activity/SavePictureActivity;->bleBitmap:Ljava/lang/ref/SoftReference;

    goto :goto_0

    .line 196
    :cond_1
    iget-object p3, p0, Lcom/yannis/ledcard/activity/SavePictureActivity$3;->this$0:Lcom/yannis/ledcard/activity/SavePictureActivity;

    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-static {p1, p2, p2}, Lcom/yannis/ledcard/util/BitmapUtils;->scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p3, Lcom/yannis/ledcard/activity/SavePictureActivity;->bleBitmap:Ljava/lang/ref/SoftReference;

    :cond_2
    :goto_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 205
    iget-object p1, p0, Lcom/yannis/ledcard/activity/SavePictureActivity$3;->this$0:Lcom/yannis/ledcard/activity/SavePictureActivity;

    iget-object p1, p1, Lcom/yannis/ledcard/activity/SavePictureActivity;->bleBitmap:Ljava/lang/ref/SoftReference;

    if-eqz p1, :cond_0

    .line 206
    iget-object p1, p0, Lcom/yannis/ledcard/activity/SavePictureActivity$3;->this$0:Lcom/yannis/ledcard/activity/SavePictureActivity;

    iget-object p1, p1, Lcom/yannis/ledcard/activity/SavePictureActivity;->ledBig:Lcom/yannis/ledcard/widget/LEDView;

    iget-object v0, p0, Lcom/yannis/ledcard/activity/SavePictureActivity$3;->this$0:Lcom/yannis/ledcard/activity/SavePictureActivity;

    iget-object v0, v0, Lcom/yannis/ledcard/activity/SavePictureActivity;->bleBitmap:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/yannis/ledcard/util/LedDataUtil;->getLedData(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yannis/ledcard/widget/LEDView;->setLEDData(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
