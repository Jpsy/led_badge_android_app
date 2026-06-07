.class Lcom/lzy/imagepicker/view/FolderPopUpWindow$3;
.super Ljava/lang/Object;
.source "FolderPopUpWindow.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzy/imagepicker/view/FolderPopUpWindow;->exitAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzy/imagepicker/view/FolderPopUpWindow;


# direct methods
.method constructor <init>(Lcom/lzy/imagepicker/view/FolderPopUpWindow;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/lzy/imagepicker/view/FolderPopUpWindow$3;->this$0:Lcom/lzy/imagepicker/view/FolderPopUpWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 108
    iget-object p1, p0, Lcom/lzy/imagepicker/view/FolderPopUpWindow$3;->this$0:Lcom/lzy/imagepicker/view/FolderPopUpWindow;

    invoke-static {p1}, Lcom/lzy/imagepicker/view/FolderPopUpWindow;->access$501(Lcom/lzy/imagepicker/view/FolderPopUpWindow;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 103
    iget-object p1, p0, Lcom/lzy/imagepicker/view/FolderPopUpWindow$3;->this$0:Lcom/lzy/imagepicker/view/FolderPopUpWindow;

    invoke-static {p1}, Lcom/lzy/imagepicker/view/FolderPopUpWindow;->access$000(Lcom/lzy/imagepicker/view/FolderPopUpWindow;)Landroid/widget/ListView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setVisibility(I)V

    return-void
.end method
