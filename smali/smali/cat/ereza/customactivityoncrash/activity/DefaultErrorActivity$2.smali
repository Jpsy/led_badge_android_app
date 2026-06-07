.class Lcat/ereza/customactivityoncrash/activity/DefaultErrorActivity$2;
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

.field final synthetic val$config:Lcat/ereza/customactivityoncrash/config/CaocConfig;


# direct methods
.method constructor <init>(Lcat/ereza/customactivityoncrash/activity/DefaultErrorActivity;Lcat/ereza/customactivityoncrash/config/CaocConfig;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcat/ereza/customactivityoncrash/activity/DefaultErrorActivity$2;->this$0:Lcat/ereza/customactivityoncrash/activity/DefaultErrorActivity;

    iput-object p2, p0, Lcat/ereza/customactivityoncrash/activity/DefaultErrorActivity$2;->val$config:Lcat/ereza/customactivityoncrash/config/CaocConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 83
    iget-object p1, p0, Lcat/ereza/customactivityoncrash/activity/DefaultErrorActivity$2;->this$0:Lcat/ereza/customactivityoncrash/activity/DefaultErrorActivity;

    iget-object v0, p0, Lcat/ereza/customactivityoncrash/activity/DefaultErrorActivity$2;->val$config:Lcat/ereza/customactivityoncrash/config/CaocConfig;

    invoke-static {p1, v0}, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash;->closeApplication(Landroid/app/Activity;Lcat/ereza/customactivityoncrash/config/CaocConfig;)V

    return-void
.end method
