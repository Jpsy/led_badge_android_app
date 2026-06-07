.class Lcom/yannis/ledcard/util/ToastUtil$1;
.super Ljava/lang/Object;
.source "ToastUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yannis/ledcard/util/ToastUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 51
    invoke-static {}, Lcom/yannis/ledcard/util/ToastUtil;->access$000()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    const/4 v0, 0x0

    .line 52
    invoke-static {v0}, Lcom/yannis/ledcard/util/ToastUtil;->access$002(Landroid/widget/Toast;)Landroid/widget/Toast;

    return-void
.end method
