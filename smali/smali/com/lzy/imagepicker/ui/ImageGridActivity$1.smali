.class Lcom/lzy/imagepicker/ui/ImageGridActivity$1;
.super Ljava/lang/Object;
.source "ImageGridActivity.java"

# interfaces
.implements Lcom/lzy/imagepicker/view/FolderPopUpWindow$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzy/imagepicker/ui/ImageGridActivity;->createPopupFolderList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzy/imagepicker/ui/ImageGridActivity;


# direct methods
.method constructor <init>(Lcom/lzy/imagepicker/ui/ImageGridActivity;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/lzy/imagepicker/ui/ImageGridActivity$1;->this$0:Lcom/lzy/imagepicker/ui/ImageGridActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 215
    iget-object p2, p0, Lcom/lzy/imagepicker/ui/ImageGridActivity$1;->this$0:Lcom/lzy/imagepicker/ui/ImageGridActivity;

    invoke-static {p2}, Lcom/lzy/imagepicker/ui/ImageGridActivity;->access$000(Lcom/lzy/imagepicker/ui/ImageGridActivity;)Lcom/lzy/imagepicker/adapter/ImageFolderAdapter;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/lzy/imagepicker/adapter/ImageFolderAdapter;->setSelectIndex(I)V

    .line 216
    iget-object p2, p0, Lcom/lzy/imagepicker/ui/ImageGridActivity$1;->this$0:Lcom/lzy/imagepicker/ui/ImageGridActivity;

    invoke-static {p2}, Lcom/lzy/imagepicker/ui/ImageGridActivity;->access$100(Lcom/lzy/imagepicker/ui/ImageGridActivity;)Lcom/lzy/imagepicker/ImagePicker;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/lzy/imagepicker/ImagePicker;->setCurrentImageFolderPosition(I)V

    .line 217
    iget-object p2, p0, Lcom/lzy/imagepicker/ui/ImageGridActivity$1;->this$0:Lcom/lzy/imagepicker/ui/ImageGridActivity;

    invoke-static {p2}, Lcom/lzy/imagepicker/ui/ImageGridActivity;->access$200(Lcom/lzy/imagepicker/ui/ImageGridActivity;)Lcom/lzy/imagepicker/view/FolderPopUpWindow;

    move-result-object p2

    invoke-virtual {p2}, Lcom/lzy/imagepicker/view/FolderPopUpWindow;->dismiss()V

    .line 218
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    invoke-interface {p1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lzy/imagepicker/bean/ImageFolder;

    if-eqz p1, :cond_0

    .line 221
    iget-object p2, p0, Lcom/lzy/imagepicker/ui/ImageGridActivity$1;->this$0:Lcom/lzy/imagepicker/ui/ImageGridActivity;

    invoke-static {p2}, Lcom/lzy/imagepicker/ui/ImageGridActivity;->access$300(Lcom/lzy/imagepicker/ui/ImageGridActivity;)Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;

    move-result-object p2

    iget-object p3, p1, Lcom/lzy/imagepicker/bean/ImageFolder;->images:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Lcom/lzy/imagepicker/adapter/ImageRecyclerAdapter;->refreshData(Ljava/util/ArrayList;)V

    .line 222
    iget-object p2, p0, Lcom/lzy/imagepicker/ui/ImageGridActivity$1;->this$0:Lcom/lzy/imagepicker/ui/ImageGridActivity;

    invoke-static {p2}, Lcom/lzy/imagepicker/ui/ImageGridActivity;->access$400(Lcom/lzy/imagepicker/ui/ImageGridActivity;)Landroid/widget/TextView;

    move-result-object p2

    iget-object p1, p1, Lcom/lzy/imagepicker/bean/ImageFolder;->name:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
