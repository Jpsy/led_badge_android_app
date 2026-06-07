.class Lcom/yannis/ledcard/activity/LedSettingsActivity$1;
.super Ljava/lang/Object;
.source "LedSettingsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yannis/ledcard/activity/LedSettingsActivity;->initEvent()V
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

    .line 133
    iput-object p1, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity$1;->this$0:Lcom/yannis/ledcard/activity/LedSettingsActivity;

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

    .line 136
    iget-object p1, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity$1;->this$0:Lcom/yannis/ledcard/activity/LedSettingsActivity;

    iget-object p1, p1, Lcom/yannis/ledcard/activity/LedSettingsActivity;->et_content:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result p1

    .line 137
    iget-object p2, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity$1;->this$0:Lcom/yannis/ledcard/activity/LedSettingsActivity;

    iget-object p2, p2, Lcom/yannis/ledcard/activity/LedSettingsActivity;->et_content:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    iget-object p4, p0, Lcom/yannis/ledcard/activity/LedSettingsActivity$1;->this$0:Lcom/yannis/ledcard/activity/LedSettingsActivity;

    invoke-static {p4}, Lcom/yannis/ledcard/activity/LedSettingsActivity;->access$000(Lcom/yannis/ledcard/activity/LedSettingsActivity;)Ljava/util/List;

    move-result-object p4

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/yannis/ledcard/bean/LedImg;

    invoke-virtual {p3}, Lcom/yannis/ledcard/bean/LedImg;->getImgMsg()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    return-void
.end method
