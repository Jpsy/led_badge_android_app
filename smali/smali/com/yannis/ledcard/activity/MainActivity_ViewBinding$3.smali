.class Lcom/yannis/ledcard/activity/MainActivity_ViewBinding$3;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "MainActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yannis/ledcard/activity/MainActivity_ViewBinding;-><init>(Lcom/yannis/ledcard/activity/MainActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yannis/ledcard/activity/MainActivity_ViewBinding;

.field final synthetic val$target:Lcom/yannis/ledcard/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/yannis/ledcard/activity/MainActivity_ViewBinding;Lcom/yannis/ledcard/activity/MainActivity;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/yannis/ledcard/activity/MainActivity_ViewBinding$3;->this$0:Lcom/yannis/ledcard/activity/MainActivity_ViewBinding;

    iput-object p2, p0, Lcom/yannis/ledcard/activity/MainActivity_ViewBinding$3;->val$target:Lcom/yannis/ledcard/activity/MainActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 65
    iget-object p1, p0, Lcom/yannis/ledcard/activity/MainActivity_ViewBinding$3;->val$target:Lcom/yannis/ledcard/activity/MainActivity;

    invoke-virtual {p1}, Lcom/yannis/ledcard/activity/MainActivity;->toAbout()V

    return-void
.end method
