.class Lcom/yannis/ledcard/activity/SavePictureActivity$2;
.super Ljava/lang/Object;
.source "SavePictureActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yannis/ledcard/activity/SavePictureActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yannis/ledcard/activity/SavePictureActivity;


# direct methods
.method constructor <init>(Lcom/yannis/ledcard/activity/SavePictureActivity;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/yannis/ledcard/activity/SavePictureActivity$2;->this$0:Lcom/yannis/ledcard/activity/SavePictureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u83b7\u53d6\u5bbd\u9ad8[ width = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yannis/ledcard/activity/SavePictureActivity$2;->this$0:Lcom/yannis/ledcard/activity/SavePictureActivity;

    iget-object v1, v1, Lcom/yannis/ledcard/activity/SavePictureActivity;->ledBig:Lcom/yannis/ledcard/widget/LEDView;

    invoke-virtual {v1}, Lcom/yannis/ledcard/widget/LEDView;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yannis/ledcard/activity/SavePictureActivity$2;->this$0:Lcom/yannis/ledcard/activity/SavePictureActivity;

    iget-object v1, v1, Lcom/yannis/ledcard/activity/SavePictureActivity;->ledBig:Lcom/yannis/ledcard/widget/LEDView;

    invoke-virtual {v1}, Lcom/yannis/ledcard/widget/LEDView;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PY"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
