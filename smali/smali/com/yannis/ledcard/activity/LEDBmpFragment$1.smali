.class Lcom/yannis/ledcard/activity/LEDBmpFragment$1;
.super Ljava/lang/Object;
.source "LEDBmpFragment.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yannis/ledcard/activity/LEDBmpFragment;->initViewPager(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yannis/ledcard/activity/LEDBmpFragment;


# direct methods
.method constructor <init>(Lcom/yannis/ledcard/activity/LEDBmpFragment;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/yannis/ledcard/activity/LEDBmpFragment$1;->this$0:Lcom/yannis/ledcard/activity/LEDBmpFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/yannis/ledcard/activity/LEDBmpFragment$1;->this$0:Lcom/yannis/ledcard/activity/LEDBmpFragment;

    invoke-static {v0}, Lcom/yannis/ledcard/activity/LEDBmpFragment;->access$100(Lcom/yannis/ledcard/activity/LEDBmpFragment;)Lcom/yannis/ledcard/widget/CirclePointIndicatorView;

    move-result-object v0

    iget-object v1, p0, Lcom/yannis/ledcard/activity/LEDBmpFragment$1;->this$0:Lcom/yannis/ledcard/activity/LEDBmpFragment;

    invoke-static {v1}, Lcom/yannis/ledcard/activity/LEDBmpFragment;->access$000(Lcom/yannis/ledcard/activity/LEDBmpFragment;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/yannis/ledcard/widget/CirclePointIndicatorView;->playBy(II)V

    .line 116
    iget-object v0, p0, Lcom/yannis/ledcard/activity/LEDBmpFragment$1;->this$0:Lcom/yannis/ledcard/activity/LEDBmpFragment;

    invoke-static {v0, p1}, Lcom/yannis/ledcard/activity/LEDBmpFragment;->access$002(Lcom/yannis/ledcard/activity/LEDBmpFragment;I)I

    return-void
.end method
