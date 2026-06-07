.class Lcom/yannis/ledcard/adapter/SendListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "SendListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yannis/ledcard/adapter/SendListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field checkBox:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090036
    .end annotation
.end field

.field final synthetic this$0:Lcom/yannis/ledcard/adapter/SendListAdapter;

.field tvContext:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09010b
    .end annotation
.end field

.field tvIndex:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090111
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yannis/ledcard/adapter/SendListAdapter;Landroid/view/View;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/yannis/ledcard/adapter/SendListAdapter$ViewHolder;->this$0:Lcom/yannis/ledcard/adapter/SendListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method
