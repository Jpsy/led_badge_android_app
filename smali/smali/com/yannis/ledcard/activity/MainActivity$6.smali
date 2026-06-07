.class Lcom/yannis/ledcard/activity/MainActivity$6;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/yannis/ledcard/util/DialogUtil$OnWheelViewSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yannis/ledcard/activity/MainActivity;->showSetPixDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yannis/ledcard/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/yannis/ledcard/activity/MainActivity;)V
    .locals 0

    .line 439
    iput-object p1, p0, Lcom/yannis/ledcard/activity/MainActivity$6;->this$0:Lcom/yannis/ledcard/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnWheelViewSelect(Ljava/lang/Object;I)V
    .locals 2

    .line 442
    iget-object p1, p0, Lcom/yannis/ledcard/activity/MainActivity$6;->this$0:Lcom/yannis/ledcard/activity/MainActivity;

    invoke-static {p1}, Lcom/yannis/ledcard/activity/MainActivity;->access$400(Lcom/yannis/ledcard/activity/MainActivity;)I

    move-result p1

    if-nez p2, :cond_0

    .line 444
    iget-object v0, p0, Lcom/yannis/ledcard/activity/MainActivity$6;->this$0:Lcom/yannis/ledcard/activity/MainActivity;

    const/16 v1, 0xb

    invoke-static {v0, v1}, Lcom/yannis/ledcard/activity/MainActivity;->access$402(Lcom/yannis/ledcard/activity/MainActivity;I)I

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 447
    iget-object v0, p0, Lcom/yannis/ledcard/activity/MainActivity$6;->this$0:Lcom/yannis/ledcard/activity/MainActivity;

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lcom/yannis/ledcard/activity/MainActivity;->access$402(Lcom/yannis/ledcard/activity/MainActivity;I)I

    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 450
    iget-object p2, p0, Lcom/yannis/ledcard/activity/MainActivity$6;->this$0:Lcom/yannis/ledcard/activity/MainActivity;

    const/16 v0, 0x10

    invoke-static {p2, v0}, Lcom/yannis/ledcard/activity/MainActivity;->access$402(Lcom/yannis/ledcard/activity/MainActivity;I)I

    .line 452
    :cond_2
    iget-object p2, p0, Lcom/yannis/ledcard/activity/MainActivity$6;->this$0:Lcom/yannis/ledcard/activity/MainActivity;

    invoke-static {p2}, Lcom/yannis/ledcard/activity/MainActivity;->access$400(Lcom/yannis/ledcard/activity/MainActivity;)I

    move-result p2

    if-eq p1, p2, :cond_3

    .line 476
    iget-object p1, p0, Lcom/yannis/ledcard/activity/MainActivity$6;->this$0:Lcom/yannis/ledcard/activity/MainActivity;

    invoke-static {p1}, Lcom/yannis/ledcard/activity/MainActivity;->access$400(Lcom/yannis/ledcard/activity/MainActivity;)I

    move-result p2

    const-string v0, "_pix"

    invoke-static {p1, v0, p2}, Lcom/yannis/ledcard/util/PrefUtils;->saveIntToPrefs(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_3
    return-void
.end method
