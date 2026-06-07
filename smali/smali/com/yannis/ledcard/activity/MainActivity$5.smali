.class Lcom/yannis/ledcard/activity/MainActivity$5;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yannis/ledcard/activity/MainActivity;->initEvent()V
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

    .line 311
    iput-object p1, p0, Lcom/yannis/ledcard/activity/MainActivity$5;->this$0:Lcom/yannis/ledcard/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 314
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/yannis/ledcard/activity/MainActivity$5;->this$0:Lcom/yannis/ledcard/activity/MainActivity;

    const-class p4, Lcom/yannis/ledcard/activity/LedSettingsActivity;

    invoke-direct {p1, p2, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 315
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 316
    iget-object p4, p0, Lcom/yannis/ledcard/activity/MainActivity$5;->this$0:Lcom/yannis/ledcard/activity/MainActivity;

    invoke-static {p4}, Lcom/yannis/ledcard/activity/MainActivity;->access$300(Lcom/yannis/ledcard/activity/MainActivity;)Ljava/util/List;

    move-result-object p4

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/io/Serializable;

    const-string p5, "_led_send_content"

    invoke-virtual {p2, p5, p4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p4, "Extra"

    .line 317
    invoke-virtual {p1, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const-string p2, "_led_send_content_index"

    .line 318
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 319
    iget-object p2, p0, Lcom/yannis/ledcard/activity/MainActivity$5;->this$0:Lcom/yannis/ledcard/activity/MainActivity;

    const/16 p3, 0xf

    invoke-virtual {p2, p1, p3}, Lcom/yannis/ledcard/activity/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
