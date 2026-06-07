.class Lcom/lzy/imagepicker/adapter/ImagePageAdapter$1;
.super Ljava/lang/Object;
.source "ImagePageAdapter.java"

# interfaces
.implements Luk/co/senab/photoview/PhotoViewAttacher$OnPhotoTapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzy/imagepicker/adapter/ImagePageAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzy/imagepicker/adapter/ImagePageAdapter;


# direct methods
.method constructor <init>(Lcom/lzy/imagepicker/adapter/ImagePageAdapter;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/lzy/imagepicker/adapter/ImagePageAdapter$1;->this$0:Lcom/lzy/imagepicker/adapter/ImagePageAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPhotoTap(Landroid/view/View;FF)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/lzy/imagepicker/adapter/ImagePageAdapter$1;->this$0:Lcom/lzy/imagepicker/adapter/ImagePageAdapter;

    iget-object v0, v0, Lcom/lzy/imagepicker/adapter/ImagePageAdapter;->listener:Lcom/lzy/imagepicker/adapter/ImagePageAdapter$PhotoViewClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lzy/imagepicker/adapter/ImagePageAdapter$1;->this$0:Lcom/lzy/imagepicker/adapter/ImagePageAdapter;

    iget-object v0, v0, Lcom/lzy/imagepicker/adapter/ImagePageAdapter;->listener:Lcom/lzy/imagepicker/adapter/ImagePageAdapter$PhotoViewClickListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/lzy/imagepicker/adapter/ImagePageAdapter$PhotoViewClickListener;->OnPhotoTapListener(Landroid/view/View;FF)V

    :cond_0
    return-void
.end method
