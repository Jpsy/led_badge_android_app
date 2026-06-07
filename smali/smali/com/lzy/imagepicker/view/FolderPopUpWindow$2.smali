.class Lcom/lzy/imagepicker/view/FolderPopUpWindow$2;
.super Ljava/lang/Object;
.source "FolderPopUpWindow.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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


# direct methods
.method constructor <init>(Lcom/lzy/imagepicker/view/FolderPopUpWindow;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/lzy/imagepicker/view/FolderPopUpWindow$2;->this$0:Lcom/lzy/imagepicker/view/FolderPopUpWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/lzy/imagepicker/view/FolderPopUpWindow$2;->this$0:Lcom/lzy/imagepicker/view/FolderPopUpWindow;

    invoke-static {v0}, Lcom/lzy/imagepicker/view/FolderPopUpWindow;->access$400(Lcom/lzy/imagepicker/view/FolderPopUpWindow;)Lcom/lzy/imagepicker/view/FolderPopUpWindow$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lzy/imagepicker/view/FolderPopUpWindow$2;->this$0:Lcom/lzy/imagepicker/view/FolderPopUpWindow;

    invoke-static {v0}, Lcom/lzy/imagepicker/view/FolderPopUpWindow;->access$400(Lcom/lzy/imagepicker/view/FolderPopUpWindow;)Lcom/lzy/imagepicker/view/FolderPopUpWindow$OnItemClickListener;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Lcom/lzy/imagepicker/view/FolderPopUpWindow$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_0
    return-void
.end method
