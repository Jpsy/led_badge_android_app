.class Lcom/lzy/imagepicker/ui/ImagePreviewActivity$4;
.super Ljava/lang/Object;
.source "ImagePreviewActivity.java"

# interfaces
.implements Lcom/lzy/imagepicker/util/NavigationBarChangeListener$OnSoftInputStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzy/imagepicker/ui/ImagePreviewActivity;


# direct methods
.method constructor <init>(Lcom/lzy/imagepicker/ui/ImagePreviewActivity;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity$4;->this$0:Lcom/lzy/imagepicker/ui/ImagePreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationBarHide(I)V
    .locals 1

    .line 119
    iget-object p1, p0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity$4;->this$0:Lcom/lzy/imagepicker/ui/ImagePreviewActivity;

    iget-object p1, p1, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->topBar:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 120
    iget-object p1, p0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity$4;->this$0:Lcom/lzy/imagepicker/ui/ImagePreviewActivity;

    invoke-static {p1}, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->access$200(Lcom/lzy/imagepicker/ui/ImagePreviewActivity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public onNavigationBarShow(II)V
    .locals 1

    .line 113
    iget-object p1, p0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity$4;->this$0:Lcom/lzy/imagepicker/ui/ImagePreviewActivity;

    iget-object p1, p1, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->topBar:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p2, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 114
    iget-object p1, p0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity$4;->this$0:Lcom/lzy/imagepicker/ui/ImagePreviewActivity;

    invoke-static {p1}, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->access$200(Lcom/lzy/imagepicker/ui/ImagePreviewActivity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0, v0, p2, v0}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method
