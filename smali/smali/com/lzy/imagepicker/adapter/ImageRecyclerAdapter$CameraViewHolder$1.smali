.class Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$CameraViewHolder$1;
.super Ljava/lang/Object;
.source "ImageRecyclerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$CameraViewHolder;->bindCamera()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$CameraViewHolder;


# direct methods
.method constructor <init>(Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$CameraViewHolder;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$CameraViewHolder$1;->this$1:Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$CameraViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 200
    iget-object p1, p0, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$CameraViewHolder$1;->this$1:Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$CameraViewHolder;

    iget-object p1, p1, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$CameraViewHolder;->this$0:Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;

    invoke-static {p1}, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;->access$400(Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;)Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/lzy/imagepicker/ui/ImageBaseActivity;

    const-string v0, "android.permission.CAMERA"

    invoke-virtual {p1, v0}, Lcom/lzy/imagepicker/ui/ImageBaseActivity;->checkPermission(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 201
    iget-object p1, p0, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$CameraViewHolder$1;->this$1:Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$CameraViewHolder;

    iget-object p1, p1, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$CameraViewHolder;->this$0:Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;

    invoke-static {p1}, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;->access$400(Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;)Landroid/app/Activity;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x2

    invoke-static {p1, v1, v0}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .line 203
    :cond_0
    iget-object p1, p0, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$CameraViewHolder$1;->this$1:Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$CameraViewHolder;

    iget-object p1, p1, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$CameraViewHolder;->this$0:Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;

    invoke-static {p1}, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;->access$200(Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;)Lcom/lzy/imagepicker/ImagePicker;

    move-result-object p1

    iget-object v0, p0, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$CameraViewHolder$1;->this$1:Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$CameraViewHolder;

    iget-object v0, v0, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter$CameraViewHolder;->this$0:Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;

    invoke-static {v0}, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;->access$400(Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;)Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x3e9

    invoke-virtual {p1, v0, v1}, Lcom/lzy/imagepicker/ImagePicker;->takePicture(Landroid/app/Activity;I)V

    :goto_0
    return-void
.end method
