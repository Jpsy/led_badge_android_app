.class Lcom/yannis/ledcard/activity/LEDBmpFragment$2;
.super Ljava/lang/Object;
.source "LEDBmpFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

    .line 146
    iput-object p1, p0, Lcom/yannis/ledcard/activity/LEDBmpFragment$2;->this$0:Lcom/yannis/ledcard/activity/LEDBmpFragment;

    iput-object p2, p0, Lcom/yannis/ledcard/activity/LEDBmpFragment$2;->val$subLEDBmpLists:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 149
    iget-object p1, p0, Lcom/yannis/ledcard/activity/LEDBmpFragment$2;->this$0:Lcom/yannis/ledcard/activity/LEDBmpFragment;

    invoke-static {p1}, Lcom/yannis/ledcard/activity/LEDBmpFragment;->access$200(Lcom/yannis/ledcard/activity/LEDBmpFragment;)Lcom/yannis/ledcard/activity/LEDBmpFragment$OnLEDBmpClickListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 150
    iget-object p1, p0, Lcom/yannis/ledcard/activity/LEDBmpFragment$2;->val$subLEDBmpLists:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-ne p3, p1, :cond_0

    .line 151
    iget-object p1, p0, Lcom/yannis/ledcard/activity/LEDBmpFragment$2;->this$0:Lcom/yannis/ledcard/activity/LEDBmpFragment;

    invoke-static {p1}, Lcom/yannis/ledcard/activity/LEDBmpFragment;->access$200(Lcom/yannis/ledcard/activity/LEDBmpFragment;)Lcom/yannis/ledcard/activity/LEDBmpFragment$OnLEDBmpClickListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/yannis/ledcard/activity/LEDBmpFragment$OnLEDBmpClickListener;->onLEDBmpAdd()V

    goto/16 :goto_0

    :cond_0
    const p1, 0x7f09008c

    .line 153
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 154
    iget-object p2, p0, Lcom/yannis/ledcard/activity/LEDBmpFragment$2;->val$subLEDBmpLists:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/yannis/ledcard/bean/LEDBmp;

    .line 155
    invoke-static {}, Lcom/yannis/ledcard/activity/LEDBmpFragment;->access$300()Z

    move-result p3

    if-nez p3, :cond_1

    if-eqz p2, :cond_2

    .line 156
    invoke-virtual {p2}, Lcom/yannis/ledcard/bean/LEDBmp;->getId()I

    move-result p3

    if-lez p3, :cond_2

    .line 157
    iget-object p3, p0, Lcom/yannis/ledcard/activity/LEDBmpFragment$2;->this$0:Lcom/yannis/ledcard/activity/LEDBmpFragment;

    invoke-static {p3}, Lcom/yannis/ledcard/activity/LEDBmpFragment;->access$200(Lcom/yannis/ledcard/activity/LEDBmpFragment;)Lcom/yannis/ledcard/activity/LEDBmpFragment$OnLEDBmpClickListener;

    move-result-object p3

    iget-object p4, p0, Lcom/yannis/ledcard/activity/LEDBmpFragment$2;->this$0:Lcom/yannis/ledcard/activity/LEDBmpFragment;

    invoke-virtual {p4}, Lcom/yannis/ledcard/activity/LEDBmpFragment;->getContext()Landroid/content/Context;

    move-result-object p4

    const/16 p5, 0x21

    invoke-static {p4, p5}, Lcom/yannis/ledcard/util/ViewUtils;->dp2px(Landroid/content/Context;I)I

    move-result p4

    iget-object v0, p0, Lcom/yannis/ledcard/activity/LEDBmpFragment$2;->this$0:Lcom/yannis/ledcard/activity/LEDBmpFragment;

    invoke-virtual {v0}, Lcom/yannis/ledcard/activity/LEDBmpFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p5}, Lcom/yannis/ledcard/util/ViewUtils;->dp2px(Landroid/content/Context;I)I

    move-result p5

    const/4 v0, 0x0

    invoke-static {p1, p4, p5, v0}, Lcom/yannis/ledcard/util/BitmapUtils;->loadBitmapFromView(Landroid/view/View;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-interface {p3, p2, p1}, Lcom/yannis/ledcard/activity/LEDBmpFragment$OnLEDBmpClickListener;->onLEDBmpChoice(Lcom/yannis/ledcard/bean/LEDBmp;Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 160
    invoke-virtual {p2}, Lcom/yannis/ledcard/bean/LEDBmp;->getId()I

    move-result p1

    if-lez p1, :cond_2

    .line 161
    iget-object p1, p0, Lcom/yannis/ledcard/activity/LEDBmpFragment$2;->this$0:Lcom/yannis/ledcard/activity/LEDBmpFragment;

    invoke-static {p1}, Lcom/yannis/ledcard/activity/LEDBmpFragment;->access$200(Lcom/yannis/ledcard/activity/LEDBmpFragment;)Lcom/yannis/ledcard/activity/LEDBmpFragment$OnLEDBmpClickListener;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/yannis/ledcard/activity/LEDBmpFragment$OnLEDBmpClickListener;->onLEDBmpDelete(Lcom/yannis/ledcard/bean/LEDBmp;)V

    .line 162
    iget-object p1, p0, Lcom/yannis/ledcard/activity/LEDBmpFragment$2;->this$0:Lcom/yannis/ledcard/activity/LEDBmpFragment;

    invoke-static {}, Lcom/yannis/ledcard/activity/LEDBmpFragment;->access$300()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/yannis/ledcard/activity/LEDBmpFragment;->refreshLEDBmpView(Z)V

    .line 163
    iget-object p1, p0, Lcom/yannis/ledcard/activity/LEDBmpFragment$2;->this$0:Lcom/yannis/ledcard/activity/LEDBmpFragment;

    invoke-static {p1}, Lcom/yannis/ledcard/activity/LEDBmpFragment;->access$400(Lcom/yannis/ledcard/activity/LEDBmpFragment;)Landroid/widget/EditText;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 164
    iget-object p1, p0, Lcom/yannis/ledcard/activity/LEDBmpFragment$2;->this$0:Lcom/yannis/ledcard/activity/LEDBmpFragment;

    invoke-virtual {p1}, Lcom/yannis/ledcard/activity/LEDBmpFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/yannis/ledcard/activity/LEDBmpFragment$2;->this$0:Lcom/yannis/ledcard/activity/LEDBmpFragment;

    invoke-static {p2}, Lcom/yannis/ledcard/activity/LEDBmpFragment;->access$400(Lcom/yannis/ledcard/activity/LEDBmpFragment;)Landroid/widget/EditText;

    move-result-object p2

    const-string p3, ""

    invoke-static {p1, p3, p2}, Lcom/yannis/ledcard/activity/LedSettingsActivity;->parseLEDBmp(Landroid/content/Context;Ljava/lang/String;Landroid/widget/TextView;)V

    :cond_2
    :goto_0
    return-void
.end method
