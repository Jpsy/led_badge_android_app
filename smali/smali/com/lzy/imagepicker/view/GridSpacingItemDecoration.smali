.class public Lcom/lzy/imagepicker/view/GridSpacingItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "GridSpacingItemDecoration.java"


# instance fields
.field private includeEdge:Z

.field private spacing:I

.field private spanCount:I


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 20
    iput p1, p0, Lcom/lzy/imagepicker/view/GridSpacingItemDecoration;->spanCount:I

    .line 21
    iput p2, p0, Lcom/lzy/imagepicker/view/GridSpacingItemDecoration;->spacing:I

    .line 22
    iput-boolean p3, p0, Lcom/lzy/imagepicker/view/GridSpacingItemDecoration;->includeEdge:Z

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 2

    .line 27
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    .line 28
    iget p3, p0, Lcom/lzy/imagepicker/view/GridSpacingItemDecoration;->spanCount:I

    rem-int p4, p2, p3

    .line 30
    iget-boolean v0, p0, Lcom/lzy/imagepicker/view/GridSpacingItemDecoration;->includeEdge:Z

    if-eqz v0, :cond_1

    .line 31
    iget v0, p0, Lcom/lzy/imagepicker/view/GridSpacingItemDecoration;->spacing:I

    mul-int v1, p4, v0

    div-int/2addr v1, p3

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 p4, p4, 0x1

    .line 32
    iget p3, p0, Lcom/lzy/imagepicker/view/GridSpacingItemDecoration;->spacing:I

    mul-int p4, p4, p3

    iget p3, p0, Lcom/lzy/imagepicker/view/GridSpacingItemDecoration;->spanCount:I

    div-int/2addr p4, p3

    iput p4, p1, Landroid/graphics/Rect;->right:I

    .line 34
    iget p3, p0, Lcom/lzy/imagepicker/view/GridSpacingItemDecoration;->spanCount:I

    if-ge p2, p3, :cond_0

    .line 35
    iget p2, p0, Lcom/lzy/imagepicker/view/GridSpacingItemDecoration;->spacing:I

    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 37
    :cond_0
    iget p2, p0, Lcom/lzy/imagepicker/view/GridSpacingItemDecoration;->spacing:I

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 39
    :cond_1
    iget v0, p0, Lcom/lzy/imagepicker/view/GridSpacingItemDecoration;->spacing:I

    mul-int v0, v0, p4

    div-int/2addr v0, p3

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 40
    iget p3, p0, Lcom/lzy/imagepicker/view/GridSpacingItemDecoration;->spacing:I

    add-int/lit8 p4, p4, 0x1

    mul-int p4, p4, p3

    iget v0, p0, Lcom/lzy/imagepicker/view/GridSpacingItemDecoration;->spanCount:I

    div-int/2addr p4, v0

    sub-int/2addr p3, p4

    iput p3, p1, Landroid/graphics/Rect;->right:I

    .line 41
    iget p3, p0, Lcom/lzy/imagepicker/view/GridSpacingItemDecoration;->spanCount:I

    if-lt p2, p3, :cond_2

    .line 42
    iget p2, p0, Lcom/lzy/imagepicker/view/GridSpacingItemDecoration;->spacing:I

    iput p2, p1, Landroid/graphics/Rect;->top:I

    :cond_2
    :goto_0
    return-void
.end method
