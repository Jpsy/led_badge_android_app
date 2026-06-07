.class Lcom/yannis/ledcard/activity/LedSettingsActivity$3;
.super Ljava/lang/Object;
.source "LedSettingsActivity.java"

# interfaces
.implements Lcom/yannis/ledcard/util/DialogUtil$OnWheelViewSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yannis/ledcard/activity/LedSettingsActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yannis/ledcard/activity/LedSettingsActivity;


# direct methods
.method constructor <init>(Lcom/yannis/ledcard/activity/LedSettingsActivity;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity$3;->this$0:Lcom/yannis/ledcard/activity/LedSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnWheelViewSelect(Ljava/lang/Object;I)V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity$3;->this$0:Lcom/yannis/ledcard/activity/LedSettingsActivity;

    iget-object v0, v0, Lcom/yannis/ledcard/activity/LedSettingsActivity;->itemViewMode:Lcom/yannis/ledcard/widget/ItemView;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/yannis/ledcard/widget/ItemView;->setValue(Ljava/lang/String;)V

    .line 163
    iget-object p1, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity$3;->this$0:Lcom/yannis/ledcard/activity/LedSettingsActivity;

    invoke-static {p1}, Lcom/yannis/ledcard/activity/LedSettingsActivity;->access$100(Lcom/yannis/ledcard/activity/LedSettingsActivity;)Lcom/yannis/ledcard/bean/SendContent;

    move-result-object p1

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lcom/yannis/ledcard/bean/SendContent;->setMode(I)V

    return-void
.end method
