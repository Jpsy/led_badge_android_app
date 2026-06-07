.class Lcom/yannis/ledcard/activity/SavePictureActivity_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "SavePictureActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yannis/ledcard/activity/SavePictureActivity_ViewBinding;-><init>(Lcom/yannis/ledcard/activity/SavePictureActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yannis/ledcard/activity/SavePictureActivity_ViewBinding;

.field final synthetic val$target:Lcom/yannis/ledcard/activity/SavePictureActivity;


# direct methods
.method constructor <init>(Lcom/yannis/ledcard/activity/SavePictureActivity_ViewBinding;Lcom/yannis/ledcard/activity/SavePictureActivity;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/yannis/ledcard/activity/SavePictureActivity_ViewBinding$1;->this$0:Lcom/yannis/ledcard/activity/SavePictureActivity_ViewBinding;

    iput-object p2, p0, Lcom/yannis/ledcard/activity/SavePictureActivity_ViewBinding$1;->val$target:Lcom/yannis/ledcard/activity/SavePictureActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 59
    iget-object p1, p0, Lcom/yannis/ledcard/activity/SavePictureActivity_ViewBinding$1;->val$target:Lcom/yannis/ledcard/activity/SavePictureActivity;

    invoke-virtual {p1}, Lcom/yannis/ledcard/activity/SavePictureActivity;->onBack()V

    return-void
.end method
