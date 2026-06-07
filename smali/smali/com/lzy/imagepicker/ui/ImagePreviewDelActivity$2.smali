.class Lcom/lzy/imagepicker/ui/ImagePreviewDelActivity$2;
.super Ljava/lang/Object;
.source "ImagePreviewDelActivity.java"

# interfaces
.implements Lcom/lzy/imagepicker/util/NavigationBarChangeListener$OnSoftInputStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzy/imagepicker/ui/ImagePreviewDelActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzy/imagepicker/ui/ImagePreviewDelActivity;


# direct methods
.method constructor <init>(Lcom/lzy/imagepicker/ui/ImagePreviewDelActivity;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/lzy/imagepicker/ui/ImagePreviewDelActivity$2;->this$0:Lcom/lzy/imagepicker/ui/ImagePreviewDelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationBarHide(I)V
    .locals 1

    .line 55
    iget-object p1, p0, Lcom/lzy/imagepicker/ui/ImagePreviewDelActivity$2;->this$0:Lcom/lzy/imagepicker/ui/ImagePreviewDelActivity;

    iget-object p1, p1, Lcom/lzy/imagepicker/ui/ImagePreviewDelActivity;->topBar:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public onNavigationBarShow(II)V
    .locals 1

    .line 50
    iget-object p1, p0, Lcom/lzy/imagepicker/ui/ImagePreviewDelActivity$2;->this$0:Lcom/lzy/imagepicker/ui/ImagePreviewDelActivity;

    iget-object p1, p1, Lcom/lzy/imagepicker/ui/ImagePreviewDelActivity;->topBar:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p2, v0}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method
