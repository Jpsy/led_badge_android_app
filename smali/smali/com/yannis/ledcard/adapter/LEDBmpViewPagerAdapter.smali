.class public Lcom/yannis/ledcard/adapter/LEDBmpViewPagerAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "LEDBmpViewPagerAdapter.java"


# instance fields
.field private final context:Landroid/content/Context;

.field private final itemViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/GridView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Landroid/widget/GridView;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/yannis/ledcard/adapter/LEDBmpViewPagerAdapter;->context:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lcom/yannis/ledcard/adapter/LEDBmpViewPagerAdapter;->itemViews:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 46
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/yannis/ledcard/adapter/LEDBmpViewPagerAdapter;->itemViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/yannis/ledcard/adapter/LEDBmpViewPagerAdapter;->itemViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    .line 30
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object p2
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
