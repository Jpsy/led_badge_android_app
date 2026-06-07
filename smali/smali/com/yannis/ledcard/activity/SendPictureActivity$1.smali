.class Lcom/yannis/ledcard/activity/SendPictureActivity$1;
.super Ljava/lang/Object;
.source "SendPictureActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yannis/ledcard/activity/SendPictureActivity;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yannis/ledcard/activity/SendPictureActivity;


# direct methods
.method constructor <init>(Lcom/yannis/ledcard/activity/SendPictureActivity;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/yannis/ledcard/activity/SendPictureActivity$1;->this$0:Lcom/yannis/ledcard/activity/SendPictureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 120
    iget-object p1, p0, Lcom/yannis/ledcard/activity/SendPictureActivity$1;->this$0:Lcom/yannis/ledcard/activity/SendPictureActivity;

    iget-object p1, p1, Lcom/yannis/ledcard/activity/SendPictureActivity;->bitmap:Ljava/lang/ref/SoftReference;

    if-eqz p1, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 123
    :cond_0
    iget-object p1, p0, Lcom/yannis/ledcard/activity/SendPictureActivity$1;->this$0:Lcom/yannis/ledcard/activity/SendPictureActivity;

    iget-object p1, p1, Lcom/yannis/ledcard/activity/SendPictureActivity;->tvTmp:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object p1, p0, Lcom/yannis/ledcard/activity/SendPictureActivity$1;->this$0:Lcom/yannis/ledcard/activity/SendPictureActivity;

    iget-object p1, p1, Lcom/yannis/ledcard/activity/SendPictureActivity;->bitmap:Ljava/lang/ref/SoftReference;

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    .line 125
    iget-object p3, p0, Lcom/yannis/ledcard/activity/SendPictureActivity$1;->this$0:Lcom/yannis/ledcard/activity/SendPictureActivity;

    iget-object p3, p3, Lcom/yannis/ledcard/activity/SendPictureActivity;->bitmap:Ljava/lang/ref/SoftReference;

    invoke-virtual {p3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Bitmap;

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    iget-object v0, p0, Lcom/yannis/ledcard/activity/SendPictureActivity$1;->this$0:Lcom/yannis/ledcard/activity/SendPictureActivity;

    iget-object v0, v0, Lcom/yannis/ledcard/activity/SendPictureActivity;->bitmap:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-static {p1, p3, v0, p2}, Lcom/yannis/ledcard/activity/SendPictureActivity;->convertToBMW(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 126
    iget-object p2, p0, Lcom/yannis/ledcard/activity/SendPictureActivity$1;->this$0:Lcom/yannis/ledcard/activity/SendPictureActivity;

    iget-object p2, p2, Lcom/yannis/ledcard/activity/SendPictureActivity;->ivWB:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 127
    iget-object p2, p0, Lcom/yannis/ledcard/activity/SendPictureActivity$1;->this$0:Lcom/yannis/ledcard/activity/SendPictureActivity;

    new-instance p3, Ljava/lang/ref/SoftReference;

    iget-object v0, p0, Lcom/yannis/ledcard/activity/SendPictureActivity$1;->this$0:Lcom/yannis/ledcard/activity/SendPictureActivity;

    invoke-virtual {v0, p1}, Lcom/yannis/ledcard/activity/SendPictureActivity;->convertBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object p3, p2, Lcom/yannis/ledcard/activity/SendPictureActivity;->bleBitmap:Ljava/lang/ref/SoftReference;

    .line 128
    iget-object p1, p0, Lcom/yannis/ledcard/activity/SendPictureActivity$1;->this$0:Lcom/yannis/ledcard/activity/SendPictureActivity;

    iget-object p1, p1, Lcom/yannis/ledcard/activity/SendPictureActivity;->ivBle:Lcom/yannis/ledcard/widget/LEDView;

    iget-object p2, p0, Lcom/yannis/ledcard/activity/SendPictureActivity$1;->this$0:Lcom/yannis/ledcard/activity/SendPictureActivity;

    iget-object p2, p2, Lcom/yannis/ledcard/activity/SendPictureActivity;->bleBitmap:Ljava/lang/ref/SoftReference;

    invoke-virtual {p2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-static {p2}, Lcom/yannis/ledcard/util/LedDataUtil;->getLedData(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/yannis/ledcard/widget/LEDView;->setLEDData(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
