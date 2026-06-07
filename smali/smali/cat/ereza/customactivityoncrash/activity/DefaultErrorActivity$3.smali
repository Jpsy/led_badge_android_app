.class Lcat/ereza/customactivityoncrash/activity/DefaultErrorActivity$3;
.super Ljava/lang/Object;
.source "DefaultErrorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcat/ereza/customactivityoncrash/activity/DefaultErrorActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcat/ereza/customactivityoncrash/activity/DefaultErrorActivity;


# direct methods
.method constructor <init>(Lcat/ereza/customactivityoncrash/activity/DefaultErrorActivity;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcat/ereza/customactivityoncrash/activity/DefaultErrorActivity$3;->this$0:Lcat/ereza/customactivityoncrash/activity/DefaultErrorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 96
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v0, p0, Lcat/ereza/customactivityoncrash/activity/DefaultErrorActivity$3;->this$0:Lcat/ereza/customactivityoncrash/activity/DefaultErrorActivity;

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v0, Lcat/ereza/customactivityoncrash/R$string;->customactivityoncrash_error_activity_error_details_title:I

    .line 97
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcat/ereza/customactivityoncrash/activity/DefaultErrorActivity$3;->this$0:Lcat/ereza/customactivityoncrash/activity/DefaultErrorActivity;

    .line 98
    invoke-virtual {v0}, Lcat/ereza/customactivityoncrash/activity/DefaultErrorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v1}, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash;->getAllErrorDetailsFromIntent(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcat/ereza/customactivityoncrash/R$string;->customactivityoncrash_error_activity_error_details_close:I

    const/4 v1, 0x0

    .line 99
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcat/ereza/customactivityoncrash/R$string;->customactivityoncrash_error_activity_error_details_copy:I

    new-instance v1, Lcat/ereza/customactivityoncrash/activity/DefaultErrorActivity$3$1;

    invoke-direct {v1, p0}, Lcat/ereza/customactivityoncrash/activity/DefaultErrorActivity$3$1;-><init>(Lcat/ereza/customactivityoncrash/activity/DefaultErrorActivity$3;)V

    .line 100
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 107
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const v0, 0x102000b

    .line 108
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 110
    iget-object v1, p0, Lcat/ereza/customactivityoncrash/activity/DefaultErrorActivity$3;->this$0:Lcat/ereza/customactivityoncrash/activity/DefaultErrorActivity;

    invoke-virtual {v1}, Lcat/ereza/customactivityoncrash/activity/DefaultErrorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcat/ereza/customactivityoncrash/R$dimen;->customactivityoncrash_error_activity_error_details_text_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    return-void
.end method
