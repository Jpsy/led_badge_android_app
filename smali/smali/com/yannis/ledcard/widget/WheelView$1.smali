.class Lcom/yannis/ledcard/widget/WheelView$1;
.super Ljava/lang/Object;
.source "WheelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yannis/ledcard/widget/WheelView;->goonMove(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yannis/ledcard/widget/WheelView;

.field final synthetic val$move:I


# direct methods
.method constructor <init>(Lcom/yannis/ledcard/widget/WheelView;I)V
    .locals 0

    .line 302
    iput-object p1, p0, Lcom/yannis/ledcard/widget/WheelView$1;->this$0:Lcom/yannis/ledcard/widget/WheelView;

    iput p2, p0, Lcom/yannis/ledcard/widget/WheelView$1;->val$move:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x0

    .line 307
    :goto_0
    iget-object v1, p0, Lcom/yannis/ledcard/widget/WheelView$1;->this$0:Lcom/yannis/ledcard/widget/WheelView;

    invoke-static {v1}, Lcom/yannis/ledcard/widget/WheelView;->access$000(Lcom/yannis/ledcard/widget/WheelView;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x5

    if-ge v0, v1, :cond_1

    const-wide/16 v1, 0x5

    .line 309
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 311
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 313
    :goto_1
    iget-object v1, p0, Lcom/yannis/ledcard/widget/WheelView$1;->this$0:Lcom/yannis/ledcard/widget/WheelView;

    iget v2, p0, Lcom/yannis/ledcard/widget/WheelView$1;->val$move:I

    if-lez v2, :cond_0

    move v2, v0

    goto :goto_2

    :cond_0
    mul-int/lit8 v2, v0, -0x1

    :goto_2
    invoke-static {v1, v2}, Lcom/yannis/ledcard/widget/WheelView;->access$100(Lcom/yannis/ledcard/widget/WheelView;I)V

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 317
    :cond_1
    iget-object v1, p0, Lcom/yannis/ledcard/widget/WheelView$1;->this$0:Lcom/yannis/ledcard/widget/WheelView;

    iget v2, p0, Lcom/yannis/ledcard/widget/WheelView$1;->val$move:I

    if-lez v2, :cond_2

    add-int/lit8 v0, v0, -0xa

    goto :goto_3

    :cond_2
    mul-int/lit8 v0, v0, -0x1

    add-int/lit8 v0, v0, 0xa

    :goto_3
    invoke-static {v1, v0}, Lcom/yannis/ledcard/widget/WheelView;->access$200(Lcom/yannis/ledcard/widget/WheelView;I)V

    .line 318
    iget-object v0, p0, Lcom/yannis/ledcard/widget/WheelView$1;->this$0:Lcom/yannis/ledcard/widget/WheelView;

    invoke-static {v0}, Lcom/yannis/ledcard/widget/WheelView;->access$300(Lcom/yannis/ledcard/widget/WheelView;)V

    return-void
.end method
