.class public Lcom/lzy/imagepicker/util/NavigationBarChangeListener;
.super Ljava/lang/Object;
.source "NavigationBarChangeListener.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzy/imagepicker/util/NavigationBarChangeListener$OnSoftInputStateChangeListener;
    }
.end annotation


# static fields
.field public static final ORIENTATION_HORIZONTAL:I = 0x2

.field public static final ORIENTATION_VERTICAL:I = 0x1


# instance fields
.field private isShowNavigationBar:Z

.field private listener:Lcom/lzy/imagepicker/util/NavigationBarChangeListener$OnSoftInputStateChangeListener;

.field private orientation:I

.field private rect:Landroid/graphics/Rect;

.field private rootView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/lzy/imagepicker/util/NavigationBarChangeListener;->isShowNavigationBar:Z

    .line 24
    iput-object p1, p0, Lcom/lzy/imagepicker/util/NavigationBarChangeListener;->rootView:Landroid/view/View;

    .line 25
    iput p2, p0, Lcom/lzy/imagepicker/util/NavigationBarChangeListener;->orientation:I

    .line 26
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/lzy/imagepicker/util/NavigationBarChangeListener;->rect:Landroid/graphics/Rect;

    return-void
.end method

.method public static with(Landroid/app/Activity;)Lcom/lzy/imagepicker/util/NavigationBarChangeListener;
    .locals 1

    const v0, 0x1020002

    .line 68
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/lzy/imagepicker/util/NavigationBarChangeListener;->with(Landroid/view/View;I)Lcom/lzy/imagepicker/util/NavigationBarChangeListener;

    move-result-object p0

    return-object p0
.end method

.method public static with(Landroid/app/Activity;I)Lcom/lzy/imagepicker/util/NavigationBarChangeListener;
    .locals 1

    const v0, 0x1020002

    .line 78
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/lzy/imagepicker/util/NavigationBarChangeListener;->with(Landroid/view/View;I)Lcom/lzy/imagepicker/util/NavigationBarChangeListener;

    move-result-object p0

    return-object p0
.end method

.method public static with(Landroid/view/View;)Lcom/lzy/imagepicker/util/NavigationBarChangeListener;
    .locals 1

    const/4 v0, 0x1

    .line 64
    invoke-static {p0, v0}, Lcom/lzy/imagepicker/util/NavigationBarChangeListener;->with(Landroid/view/View;I)Lcom/lzy/imagepicker/util/NavigationBarChangeListener;

    move-result-object p0

    return-object p0
.end method

.method public static with(Landroid/view/View;I)Lcom/lzy/imagepicker/util/NavigationBarChangeListener;
    .locals 1

    .line 72
    new-instance v0, Lcom/lzy/imagepicker/util/NavigationBarChangeListener;

    invoke-direct {v0, p0, p1}, Lcom/lzy/imagepicker/util/NavigationBarChangeListener;-><init>(Landroid/view/View;I)V

    .line 73
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-object v0
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 6

    .line 31
    iget-object v0, p0, Lcom/lzy/imagepicker/util/NavigationBarChangeListener;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 32
    iget-object v0, p0, Lcom/lzy/imagepicker/util/NavigationBarChangeListener;->rootView:Landroid/view/View;

    iget-object v1, p0, Lcom/lzy/imagepicker/util/NavigationBarChangeListener;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 34
    iget v0, p0, Lcom/lzy/imagepicker/util/NavigationBarChangeListener;->orientation:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    .line 35
    iget-object v0, p0, Lcom/lzy/imagepicker/util/NavigationBarChangeListener;->rootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v4, p0, Lcom/lzy/imagepicker/util/NavigationBarChangeListener;->rect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/lzy/imagepicker/util/NavigationBarChangeListener;->rect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    :goto_0
    sub-int/2addr v4, v5

    sub-int/2addr v0, v4

    goto :goto_1

    :cond_0
    if-ne v0, v1, :cond_1

    .line 37
    iget-object v0, p0, Lcom/lzy/imagepicker/util/NavigationBarChangeListener;->rootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v4, p0, Lcom/lzy/imagepicker/util/NavigationBarChangeListener;->rect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/lzy/imagepicker/util/NavigationBarChangeListener;->rect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 39
    :goto_1
    iget-object v4, p0, Lcom/lzy/imagepicker/util/NavigationBarChangeListener;->rootView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/lzy/imagepicker/util/Utils;->hasVirtualNavigationBar(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/lzy/imagepicker/util/NavigationBarChangeListener;->rootView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/lzy/imagepicker/util/Utils;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v4

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    if-lt v0, v4, :cond_4

    mul-int/lit8 v4, v4, 0x2

    if-ge v0, v4, :cond_4

    .line 41
    iget-boolean v1, p0, Lcom/lzy/imagepicker/util/NavigationBarChangeListener;->isShowNavigationBar:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/lzy/imagepicker/util/NavigationBarChangeListener;->listener:Lcom/lzy/imagepicker/util/NavigationBarChangeListener$OnSoftInputStateChangeListener;

    if-eqz v1, :cond_3

    .line 42
    iget v3, p0, Lcom/lzy/imagepicker/util/NavigationBarChangeListener;->orientation:I

    invoke-interface {v1, v3, v0}, Lcom/lzy/imagepicker/util/NavigationBarChangeListener$OnSoftInputStateChangeListener;->onNavigationBarShow(II)V

    .line 44
    :cond_3
    iput-boolean v2, p0, Lcom/lzy/imagepicker/util/NavigationBarChangeListener;->isShowNavigationBar:Z

    goto :goto_3

    .line 46
    :cond_4
    iget-boolean v0, p0, Lcom/lzy/imagepicker/util/NavigationBarChangeListener;->isShowNavigationBar:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/lzy/imagepicker/util/NavigationBarChangeListener;->listener:Lcom/lzy/imagepicker/util/NavigationBarChangeListener$OnSoftInputStateChangeListener;

    if-eqz v0, :cond_5

    .line 47
    iget v1, p0, Lcom/lzy/imagepicker/util/NavigationBarChangeListener;->orientation:I

    invoke-interface {v0, v1}, Lcom/lzy/imagepicker/util/NavigationBarChangeListener$OnSoftInputStateChangeListener;->onNavigationBarHide(I)V

    .line 49
    :cond_5
    iput-boolean v3, p0, Lcom/lzy/imagepicker/util/NavigationBarChangeListener;->isShowNavigationBar:Z

    :goto_3
    return-void
.end method

.method public setListener(Lcom/lzy/imagepicker/util/NavigationBarChangeListener$OnSoftInputStateChangeListener;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/lzy/imagepicker/util/NavigationBarChangeListener;->listener:Lcom/lzy/imagepicker/util/NavigationBarChangeListener$OnSoftInputStateChangeListener;

    return-void
.end method
