.class Lcom/lzy/imagepicker/view/CropImageView$1;
.super Ljava/lang/Thread;
.source "CropImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzy/imagepicker/view/CropImageView;->saveBitmapToFile(Ljava/io/File;IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzy/imagepicker/view/CropImageView;

.field final synthetic val$croppedImage:Landroid/graphics/Bitmap;

.field final synthetic val$finalOutputFormat:Landroid/graphics/Bitmap$CompressFormat;

.field final synthetic val$finalSaveFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/lzy/imagepicker/view/CropImageView;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/io/File;)V
    .locals 0

    .line 544
    iput-object p1, p0, Lcom/lzy/imagepicker/view/CropImageView$1;->this$0:Lcom/lzy/imagepicker/view/CropImageView;

    iput-object p2, p0, Lcom/lzy/imagepicker/view/CropImageView$1;->val$croppedImage:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/lzy/imagepicker/view/CropImageView$1;->val$finalOutputFormat:Landroid/graphics/Bitmap$CompressFormat;

    iput-object p4, p0, Lcom/lzy/imagepicker/view/CropImageView$1;->val$finalSaveFile:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 547
    iget-object v0, p0, Lcom/lzy/imagepicker/view/CropImageView$1;->this$0:Lcom/lzy/imagepicker/view/CropImageView;

    iget-object v1, p0, Lcom/lzy/imagepicker/view/CropImageView$1;->val$croppedImage:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/lzy/imagepicker/view/CropImageView$1;->val$finalOutputFormat:Landroid/graphics/Bitmap$CompressFormat;

    iget-object v3, p0, Lcom/lzy/imagepicker/view/CropImageView$1;->val$finalSaveFile:Ljava/io/File;

    invoke-static {v0, v1, v2, v3}, Lcom/lzy/imagepicker/view/CropImageView;->access$000(Lcom/lzy/imagepicker/view/CropImageView;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/io/File;)V

    return-void
.end method
