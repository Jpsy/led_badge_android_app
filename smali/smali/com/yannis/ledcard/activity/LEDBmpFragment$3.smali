.class Lcom/yannis/ledcard/activity/LEDBmpFragment$3;
.super Ljava/lang/Object;
.source "LEDBmpFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yannis/ledcard/activity/LEDBmpFragment;->getViewPagerItem(ILjava/util/ArrayList;)Landroid/widget/GridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yannis/ledcard/activity/LEDBmpFragment;

.field final synthetic val$subLEDBmpLists:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/yannis/ledcard/activity/LEDBmpFragment;Ljava/util/List;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/yannis/ledcard/activity/LEDBmpFragment$3;->this$0:Lcom/yannis/ledcard/activity/LEDBmpFragment;

    iput-object p2, p0, Lcom/yannis/ledcard/activity/LEDBmpFragment$3;->val$subLEDBmpLists:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .line 176
    iget-object p1, p0, Lcom/yannis/ledcard/activity/LEDBmpFragment$3;->val$subLEDBmpLists:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yannis/ledcard/bean/LEDBmp;

    if-eqz p1, :cond_0

    .line 177
    invoke-virtual {p1}, Lcom/yannis/ledcard/bean/LEDBmp;->getId()I

    move-result p2

    if-lez p2, :cond_0

    .line 178
    iget-object p2, p0, Lcom/yannis/ledcard/activity/LEDBmpFragment$3;->this$0:Lcom/yannis/ledcard/activity/LEDBmpFragment;

    invoke-static {p2, p1}, Lcom/yannis/ledcard/activity/LEDBmpFragment;->access$500(Lcom/yannis/ledcard/activity/LEDBmpFragment;Lcom/yannis/ledcard/bean/LEDBmp;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
