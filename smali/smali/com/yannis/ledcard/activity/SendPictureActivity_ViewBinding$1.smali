.class Lcom/yannis/ledcard/activity/SendPictureActivity_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "SendPictureActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yannis/ledcard/activity/SendPictureActivity_ViewBinding;-><init>(Lcom/yannis/ledcard/activity/SendPictureActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yannis/ledcard/activity/SendPictureActivity_ViewBinding;

.field final synthetic val$target:Lcom/yannis/ledcard/activity/SendPictureActivity;


# direct methods
.method constructor <init>(Lcom/yannis/ledcard/activity/SendPictureActivity_ViewBinding;Lcom/yannis/ledcard/activity/SendPictureActivity;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/yannis/ledcard/activity/SendPictureActivity_ViewBinding$1;->this$0:Lcom/yannis/ledcard/activity/SendPictureActivity_ViewBinding;

    iput-object p2, p0, Lcom/yannis/ledcard/activity/SendPictureActivity_ViewBinding$1;->val$target:Lcom/yannis/ledcard/activity/SendPictureActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 53
    iget-object p1, p0, Lcom/yannis/ledcard/activity/SendPictureActivity_ViewBinding$1;->val$target:Lcom/yannis/ledcard/activity/SendPictureActivity;

    invoke-virtual {p1}, Lcom/yannis/ledcard/activity/SendPictureActivity;->onBtnSendData()V

    return-void
.end method
