.class Lcom/yannis/ledcard/widget/CirclePointIndicatorView$1;
.super Ljava/lang/Object;
.source "CirclePointIndicatorView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yannis/ledcard/widget/CirclePointIndicatorView;->playBy(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yannis/ledcard/widget/CirclePointIndicatorView;

.field final synthetic val$lastImageView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/yannis/ledcard/widget/CirclePointIndicatorView;Landroid/widget/ImageView;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/yannis/ledcard/widget/CirclePointIndicatorView$1;->this$0:Lcom/yannis/ledcard/widget/CirclePointIndicatorView;

    iput-object p2, p0, Lcom/yannis/ledcard/widget/CirclePointIndicatorView$1;->val$lastImageView:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    .line 128
    iget-object p1, p0, Lcom/yannis/ledcard/widget/CirclePointIndicatorView$1;->val$lastImageView:Landroid/widget/ImageView;

    const/4 v0, 0x1

    new-array v1, v0, [F

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, v2

    const-string v4, "scaleX"

    invoke-static {p1, v4, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 129
    iget-object v1, p0, Lcom/yannis/ledcard/widget/CirclePointIndicatorView$1;->val$lastImageView:Landroid/widget/ImageView;

    new-array v0, v0, [F

    aput v3, v0, v2

    const-string v2, "scaleY"

    invoke-static {v1, v2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 130
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 131
    invoke-virtual {v1, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const-wide/16 v2, 0x64

    .line 132
    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 133
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
