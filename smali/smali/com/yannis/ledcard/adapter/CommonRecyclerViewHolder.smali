.class public Lcom/yannis/ledcard/adapter/CommonRecyclerViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "CommonRecyclerViewHolder.java"


# instance fields
.field private mViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Lcom/yannis/ledcard/adapter/CommonRecyclerViewHolder;->mViews:Landroid/util/SparseArray;

    .line 30
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/yannis/ledcard/adapter/CommonRecyclerViewHolder;->mViews:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public getView(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)TT;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/yannis/ledcard/adapter/CommonRecyclerViewHolder;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/yannis/ledcard/adapter/CommonRecyclerViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 47
    iget-object v1, p0, Lcom/yannis/ledcard/adapter/CommonRecyclerViewHolder;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public setImage(II)V
    .locals 0

    .line 81
    invoke-virtual {p0, p1}, Lcom/yannis/ledcard/adapter/CommonRecyclerViewHolder;->getView(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setImage(Landroid/widget/ImageView;I)V
    .locals 0

    .line 71
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setText(ILjava/lang/String;)V
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Lcom/yannis/ledcard/adapter/CommonRecyclerViewHolder;->getView(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
