.class Lcom/lzy/imagepicker/ui/ImagePreviewBaseActivity$1;
.super Ljava/lang/Object;
.source "ImagePreviewBaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzy/imagepicker/ui/ImagePreviewBaseActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzy/imagepicker/ui/ImagePreviewBaseActivity;


# direct methods
.method constructor <init>(Lcom/lzy/imagepicker/ui/ImagePreviewBaseActivity;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/lzy/imagepicker/ui/ImagePreviewBaseActivity$1;->this$0:Lcom/lzy/imagepicker/ui/ImagePreviewBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 74
    iget-object p1, p0, Lcom/lzy/imagepicker/ui/ImagePreviewBaseActivity$1;->this$0:Lcom/lzy/imagepicker/ui/ImagePreviewBaseActivity;

    invoke-virtual {p1}, Lcom/lzy/imagepicker/ui/ImagePreviewBaseActivity;->finish()V

    return-void
.end method
