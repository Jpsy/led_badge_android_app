.class Lcom/lzy/imagepicker/ui/ImagePreviewActivity$3;
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

    .line 93
    iput-object p1, p0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity$3;->this$0:Lcom/lzy/imagepicker/ui/ImagePreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationBarHide(I)V
    .locals 1

    .line 106
    iget-object p1, p0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity$3;->this$0:Lcom/lzy/imagepicker/ui/ImagePreviewActivity;

    invoke-static {p1}, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->access$100(Lcom/lzy/imagepicker/ui/ImagePreviewActivity;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onNavigationBarShow(II)V
    .locals 0

    .line 96
    iget-object p1, p0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity$3;->this$0:Lcom/lzy/imagepicker/ui/ImagePreviewActivity;

    invoke-static {p1}, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->access$100(Lcom/lzy/imagepicker/ui/ImagePreviewActivity;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 97
    iget-object p1, p0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity$3;->this$0:Lcom/lzy/imagepicker/ui/ImagePreviewActivity;

    invoke-static {p1}, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->access$100(Lcom/lzy/imagepicker/ui/ImagePreviewActivity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 98
    iget p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-nez p2, :cond_0

    .line 99
    iget-object p2, p0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity$3;->this$0:Lcom/lzy/imagepicker/ui/ImagePreviewActivity;

    invoke-static {p2}, Lcom/lzy/imagepicker/util/Utils;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 100
    iget-object p1, p0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity$3;->this$0:Lcom/lzy/imagepicker/ui/ImagePreviewActivity;

    invoke-static {p1}, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->access$100(Lcom/lzy/imagepicker/ui/ImagePreviewActivity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method
