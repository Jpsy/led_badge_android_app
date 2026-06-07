.class public abstract Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "CommonRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter$MyViewInItemClickListenerAdapter;,
        Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter$MyItemClickListenerAdapter;,
        Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter$OnRecyclerViewItemClickListener;,
        Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter$OnViewInItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/yannis/ledcard/adapter/CommonRecyclerViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field protected context:Landroid/content/Context;

.field protected data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private headers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private itemTypesForItem:[I

.field private itemTypesForViewInItem:[I

.field private mCurrentPosition:I

.field private onRecyclerViewItemClickListener:Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter$OnRecyclerViewItemClickListener;

.field private onViewInItemClickListener:Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter$OnViewInItemClickListener;

.field private viewIdsInItem:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 120
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, -0x1

    .line 58
    iput v0, p0, Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter;->mCurrentPosition:I

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter;->headers:Ljava/util/ArrayList;

    .line 121
    iput-object p2, p0, Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter;->data:Ljava/util/List;

    .line 122
    iput-object p1, p0, Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter;)Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter$OnRecyclerViewItemClickListener;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter;->onRecyclerViewItemClickListener:Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter$OnRecyclerViewItemClickListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter;->headers:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter;)Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter$OnViewInItemClickListener;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter;->onViewInItemClickListener:Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter$OnViewInItemClickListener;

    return-object p0
.end method

.method private isNeedSetClickListener(I)Z
    .locals 5

    .line 201
    iget-object v0, p0, Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter;->itemTypesForItem:[I

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 204
    :cond_0
    invoke-virtual {p0, p1}, Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter;->getItemType(I)I

    move-result p1

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 205
    :goto_0
    iget-object v3, p0, Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter;->itemTypesForItem:[I

    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 206
    aget v3, v3, v2

    if-ne p1, v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method private isNeedSetViewInItemClickListener(I)Z
    .locals 5

    .line 220
    iget-object v0, p0, Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter;->itemTypesForViewInItem:[I

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 223
    :cond_0
    invoke-virtual {p0, p1}, Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter;->getItemType(I)I

    move-result p1

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 224
    :goto_0
    iget-object v3, p0, Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter;->itemTypesForViewInItem:[I

    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 225
    aget v3, v3, v2

    if-ne p1, v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    :goto_1
    return v1
.end method


# virtual methods
.method public addHeaderView(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 71
    invoke-virtual {p0, p1, v0}, Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter;->addHeaderView(Landroid/view/View;Z)V

    return-void
.end method

.method public addHeaderView(Landroid/view/View;Z)V
    .locals 1

    if-eqz p1, :cond_1

    .line 84
    iget-object v0, p0, Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter;->headers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    .line 86
    iget-object p1, p0, Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter;->headers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter;->notifyItemInserted(I)V

    :cond_0
    return-void

    .line 82
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "the header view can not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract convert(Lcom/yannis/ledcard/adapter/CommonRecyclerViewHolder;Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yannis/ledcard/adapter/CommonRecyclerViewHolder;",
            "TT;I)V"
        }
    .end annotation
.end method

.method public getHeaderCounts()I
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter;->headers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemCount()I
    .locals 2

    .line 264
    iget-object v0, p0, Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter;->headers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemType(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 155
    iput p1, p0, Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter;->mCurrentPosition:I

    .line 156
    iget-object v0, p0, Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter;->headers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    sub-int/2addr p1, v0

    .line 160
    invoke-virtual {p0, p1}, Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter;->getItemType(I)I

    move-result p1

    return p1
.end method

.method public abstract getLayoutViewId(I)I
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 18
    check-cast p1, Lcom/yannis/ledcard/adapter/CommonRecyclerViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter;->onBindViewHolder(Lcom/yannis/ledcard/adapter/CommonRecyclerViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/yannis/ledcard/adapter/CommonRecyclerViewHolder;I)V
    .locals 4

    .line 174
    iget-object v0, p0, Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter;->headers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    goto :goto_1

    :cond_0
    sub-int/2addr p2, v0

    .line 179
    invoke-direct {p0, p2}, Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter;->isNeedSetClickListener(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p1, Lcom/yannis/ledcard/adapter/CommonRecyclerViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter$MyItemClickListenerAdapter;

    invoke-direct {v1, p0, p1}, Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter$MyItemClickListenerAdapter;-><init>(Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter;Lcom/yannis/ledcard/adapter/CommonRecyclerViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter;->viewIdsInItem:[I

    if-eqz v0, :cond_3

    array-length v0, v0

    if-lez v0, :cond_3

    invoke-direct {p0, p2}, Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter;->isNeedSetViewInItemClickListener(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 183
    :goto_0
    iget-object v1, p0, Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter;->viewIdsInItem:[I

    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 184
    aget v1, v1, v0

    invoke-virtual {p1, v1}, Lcom/yannis/ledcard/adapter/CommonRecyclerViewHolder;->getView(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_2

    .line 186
    new-instance v2, Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter$MyViewInItemClickListenerAdapter;

    iget-object v3, p0, Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter;->viewIdsInItem:[I

    aget v3, v3, v0

    invoke-direct {v2, p0, p1, v3}, Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter$MyViewInItemClickListenerAdapter;-><init>(Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter;Lcom/yannis/ledcard/adapter/CommonRecyclerViewHolder;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 190
    :cond_3
    iget-object v0, p0, Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter;->convert(Lcom/yannis/ledcard/adapter/CommonRecyclerViewHolder;Ljava/lang/Object;I)V

    :goto_1
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/yannis/ledcard/adapter/CommonRecyclerViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/yannis/ledcard/adapter/CommonRecyclerViewHolder;
    .locals 2

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 135
    iget v0, p0, Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter;->mCurrentPosition:I

    if-eq v0, p1, :cond_0

    iget-object p1, p0, Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter;->headers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v0, p1, :cond_0

    .line 136
    iget-object p1, p0, Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter;->headers:Ljava/util/ArrayList;

    iget v0, p0, Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter;->mCurrentPosition:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    goto :goto_0

    .line 138
    :cond_0
    iget-object p1, p0, Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter;->context:Landroid/content/Context;

    invoke-virtual {p0, p2}, Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter;->getLayoutViewId(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 141
    :goto_0
    new-instance v0, Lcom/yannis/ledcard/adapter/CommonRecyclerViewHolder;

    invoke-direct {v0, p1}, Lcom/yannis/ledcard/adapter/CommonRecyclerViewHolder;-><init>(Landroid/view/View;)V

    .line 143
    invoke-virtual {p0, v0, p2}, Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter;->viewCreated(Lcom/yannis/ledcard/adapter/CommonRecyclerViewHolder;I)V

    return-object v0
.end method

.method public removeHeaderView(I)V
    .locals 1

    const/4 v0, 0x0

    .line 96
    invoke-virtual {p0, p1, v0}, Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter;->removeHeaderView(IZ)V

    return-void
.end method

.method public removeHeaderView(IZ)V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter;->headers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    if-eqz p2, :cond_0

    .line 107
    invoke-virtual {p0, p1}, Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter;->notifyItemRemoved(I)V

    :cond_0
    return-void
.end method

.method public varargs setItemTypesInItem([I)V
    .locals 0

    .line 320
    iput-object p1, p0, Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter;->itemTypesForViewInItem:[I

    return-void
.end method

.method public setOnRecyclerViewItemClickListener(Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter$OnRecyclerViewItemClickListener;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter;->onRecyclerViewItemClickListener:Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter$OnRecyclerViewItemClickListener;

    return-void
.end method

.method public varargs setOnRecyclerViewItemClickListener(Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter$OnRecyclerViewItemClickListener;[I)V
    .locals 0

    .line 284
    iput-object p1, p0, Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter;->onRecyclerViewItemClickListener:Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter$OnRecyclerViewItemClickListener;

    .line 285
    iput-object p2, p0, Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter;->itemTypesForItem:[I

    return-void
.end method

.method public varargs setOnViewInItemClickListener(Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter$OnViewInItemClickListener;[I)V
    .locals 0

    .line 310
    iput-object p2, p0, Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter;->viewIdsInItem:[I

    .line 311
    iput-object p1, p0, Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter;->onViewInItemClickListener:Lcom/yannis/ledcard/adapter/CommonRecyclerViewAdapter$OnViewInItemClickListener;

    return-void
.end method

.method public viewCreated(Lcom/yannis/ledcard/adapter/CommonRecyclerViewHolder;I)V
    .locals 0

    return-void
.end method
