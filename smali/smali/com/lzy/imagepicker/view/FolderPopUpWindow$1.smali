.class Lcom/lzy/imagepicker/view/FolderPopUpWindow$1;
.super Ljava/lang/Object;
.source "FolderPopUpWindow.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzy/imagepicker/view/FolderPopUpWindow;-><init>(Landroid/content/Context;Landroid/widget/BaseAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzy/imagepicker/view/FolderPopUpWindow;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/lzy/imagepicker/view/FolderPopUpWindow;Landroid/view/View;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/lzy/imagepicker/view/FolderPopUpWindow$1;->this$0:Lcom/lzy/imagepicker/view/FolderPopUpWindow;

    iput-object p2, p0, Lcom/lzy/imagepicker/view/FolderPopUpWindow$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 58
    iget-object v0, p0, Lcom/lzy/imagepicker/view/FolderPopUpWindow$1;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 59
    iget-object v0, p0, Lcom/lzy/imagepicker/view/FolderPopUpWindow$1;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0x8

    .line 60
    iget-object v1, p0, Lcom/lzy/imagepicker/view/FolderPopUpWindow$1;->this$0:Lcom/lzy/imagepicker/view/FolderPopUpWindow;

    invoke-static {v1}, Lcom/lzy/imagepicker/view/FolderPopUpWindow;->access$000(Lcom/lzy/imagepicker/view/FolderPopUpWindow;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    .line 61
    iget-object v2, p0, Lcom/lzy/imagepicker/view/FolderPopUpWindow$1;->this$0:Lcom/lzy/imagepicker/view/FolderPopUpWindow;

    invoke-static {v2}, Lcom/lzy/imagepicker/view/FolderPopUpWindow;->access$000(Lcom/lzy/imagepicker/view/FolderPopUpWindow;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-le v1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 62
    :goto_0
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 63
    iget-object v0, p0, Lcom/lzy/imagepicker/view/FolderPopUpWindow$1;->this$0:Lcom/lzy/imagepicker/view/FolderPopUpWindow;

    invoke-static {v0}, Lcom/lzy/imagepicker/view/FolderPopUpWindow;->access$000(Lcom/lzy/imagepicker/view/FolderPopUpWindow;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    iget-object v0, p0, Lcom/lzy/imagepicker/view/FolderPopUpWindow$1;->this$0:Lcom/lzy/imagepicker/view/FolderPopUpWindow;

    invoke-static {v0}, Lcom/lzy/imagepicker/view/FolderPopUpWindow;->access$100(Lcom/lzy/imagepicker/view/FolderPopUpWindow;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 65
    iget-object v1, p0, Lcom/lzy/imagepicker/view/FolderPopUpWindow$1;->this$0:Lcom/lzy/imagepicker/view/FolderPopUpWindow;

    invoke-static {v1}, Lcom/lzy/imagepicker/view/FolderPopUpWindow;->access$200(Lcom/lzy/imagepicker/view/FolderPopUpWindow;)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 66
    iget-object v1, p0, Lcom/lzy/imagepicker/view/FolderPopUpWindow$1;->this$0:Lcom/lzy/imagepicker/view/FolderPopUpWindow;

    invoke-static {v1}, Lcom/lzy/imagepicker/view/FolderPopUpWindow;->access$100(Lcom/lzy/imagepicker/view/FolderPopUpWindow;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    iget-object v0, p0, Lcom/lzy/imagepicker/view/FolderPopUpWindow$1;->this$0:Lcom/lzy/imagepicker/view/FolderPopUpWindow;

    invoke-static {v0}, Lcom/lzy/imagepicker/view/FolderPopUpWindow;->access$300(Lcom/lzy/imagepicker/view/FolderPopUpWindow;)V

    return-void
.end method
