.class Lcom/yannis/ledcard/widget/WheelView$ItemObject;
.super Ljava/lang/Object;
.source "WheelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yannis/ledcard/widget/WheelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemObject"
.end annotation


# instance fields
.field public id:I

.field public itemText:Ljava/lang/String;

.field public move:I

.field private textPaint:Landroid/text/TextPaint;

.field private textRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/yannis/ledcard/widget/WheelView;

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(Lcom/yannis/ledcard/widget/WheelView;)V
    .locals 1

    .line 668
    iput-object p1, p0, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->this$0:Lcom/yannis/ledcard/widget/WheelView;

    .line 669
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 642
    iput p1, p0, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->id:I

    const-string v0, ""

    .line 646
    iput-object v0, p0, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->itemText:Ljava/lang/String;

    .line 650
    iput p1, p0, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->x:I

    .line 654
    iput p1, p0, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->y:I

    .line 658
    iput p1, p0, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->move:I

    return-void
.end method


# virtual methods
.method public drawSelf(Landroid/graphics/Canvas;I)V
    .locals 5

    .line 680
    iget-object v0, p0, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->textPaint:Landroid/text/TextPaint;

    if-nez v0, :cond_0

    .line 681
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->textPaint:Landroid/text/TextPaint;

    const/4 v1, 0x1

    .line 682
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 685
    :cond_0
    iget-object v0, p0, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->textRect:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    .line 686
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->textRect:Landroid/graphics/Rect;

    .line 689
    :cond_1
    invoke-virtual {p0}, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 690
    iget-object v0, p0, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->textPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->this$0:Lcom/yannis/ledcard/widget/WheelView;

    invoke-static {v1}, Lcom/yannis/ledcard/widget/WheelView;->access$600(Lcom/yannis/ledcard/widget/WheelView;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 692
    invoke-virtual {p0}, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->moveToSelected()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    goto :goto_0

    :cond_2
    const/high16 v1, -0x40800000    # -1.0f

    mul-float v0, v0, v1

    .line 695
    :goto_0
    iget-object v1, p0, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->this$0:Lcom/yannis/ledcard/widget/WheelView;

    invoke-static {v1}, Lcom/yannis/ledcard/widget/WheelView;->access$700(Lcom/yannis/ledcard/widget/WheelView;)F

    move-result v1

    iget-object v2, p0, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->this$0:Lcom/yannis/ledcard/widget/WheelView;

    .line 696
    invoke-static {v2}, Lcom/yannis/ledcard/widget/WheelView;->access$800(Lcom/yannis/ledcard/widget/WheelView;)F

    move-result v2

    iget-object v3, p0, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->this$0:Lcom/yannis/ledcard/widget/WheelView;

    invoke-static {v3}, Lcom/yannis/ledcard/widget/WheelView;->access$700(Lcom/yannis/ledcard/widget/WheelView;)F

    move-result v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    iget-object v4, p0, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->this$0:Lcom/yannis/ledcard/widget/WheelView;

    invoke-static {v4}, Lcom/yannis/ledcard/widget/WheelView;->access$000(Lcom/yannis/ledcard/widget/WheelView;)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v0, v4

    sub-float/2addr v3, v0

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    .line 697
    iget-object v0, p0, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    goto :goto_1

    .line 699
    :cond_3
    iget-object v0, p0, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->textPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->this$0:Lcom/yannis/ledcard/widget/WheelView;

    invoke-static {v1}, Lcom/yannis/ledcard/widget/WheelView;->access$900(Lcom/yannis/ledcard/widget/WheelView;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 700
    iget-object v0, p0, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->textPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->this$0:Lcom/yannis/ledcard/widget/WheelView;

    invoke-static {v1}, Lcom/yannis/ledcard/widget/WheelView;->access$700(Lcom/yannis/ledcard/widget/WheelView;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 704
    :goto_1
    iget-object v0, p0, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->itemText:Ljava/lang/String;

    iget-object v1, p0, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->textPaint:Landroid/text/TextPaint;

    int-to-float p2, p2

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, v1, p2, v2}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->itemText:Ljava/lang/String;

    .line 705
    iget-object v0, p0, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->textPaint:Landroid/text/TextPaint;

    const/4 v1, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->textRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 707
    invoke-virtual {p0}, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->isInView()Z

    move-result p2

    if-nez p2, :cond_4

    return-void

    .line 711
    :cond_4
    iget-object p2, p0, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->itemText:Ljava/lang/String;

    iget v0, p0, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->x:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->this$0:Lcom/yannis/ledcard/widget/WheelView;

    invoke-static {v1}, Lcom/yannis/ledcard/widget/WheelView;->access$1000(Lcom/yannis/ledcard/widget/WheelView;)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->textRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->y:I

    iget v2, p0, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->move:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->this$0:Lcom/yannis/ledcard/widget/WheelView;

    .line 712
    invoke-static {v2}, Lcom/yannis/ledcard/widget/WheelView;->access$000(Lcom/yannis/ledcard/widget/WheelView;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->textRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->textPaint:Landroid/text/TextPaint;

    .line 711
    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public isInView()Z
    .locals 2

    .line 722
    iget v0, p0, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->y:I

    iget v1, p0, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->move:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->this$0:Lcom/yannis/ledcard/widget/WheelView;

    invoke-static {v1}, Lcom/yannis/ledcard/widget/WheelView;->access$1100(Lcom/yannis/ledcard/widget/WheelView;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->y:I

    iget v1, p0, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->move:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->this$0:Lcom/yannis/ledcard/widget/WheelView;

    invoke-static {v1}, Lcom/yannis/ledcard/widget/WheelView;->access$000(Lcom/yannis/ledcard/widget/WheelView;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->textRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSelected()Z
    .locals 5

    .line 752
    iget v0, p0, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->y:I

    iget v1, p0, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->move:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->this$0:Lcom/yannis/ledcard/widget/WheelView;

    invoke-static {v1}, Lcom/yannis/ledcard/widget/WheelView;->access$1100(Lcom/yannis/ledcard/widget/WheelView;)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget-object v3, p0, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->this$0:Lcom/yannis/ledcard/widget/WheelView;

    invoke-static {v3}, Lcom/yannis/ledcard/widget/WheelView;->access$000(Lcom/yannis/ledcard/widget/WheelView;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v1, v3

    iget-object v3, p0, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->this$0:Lcom/yannis/ledcard/widget/WheelView;

    invoke-static {v3}, Lcom/yannis/ledcard/widget/WheelView;->access$1200(Lcom/yannis/ledcard/widget/WheelView;)F

    move-result v3

    add-float/2addr v1, v3

    const/4 v3, 0x1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->y:I

    iget v1, p0, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->move:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->this$0:Lcom/yannis/ledcard/widget/WheelView;

    .line 753
    invoke-static {v1}, Lcom/yannis/ledcard/widget/WheelView;->access$1100(Lcom/yannis/ledcard/widget/WheelView;)F

    move-result v1

    div-float/2addr v1, v2

    iget-object v4, p0, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->this$0:Lcom/yannis/ledcard/widget/WheelView;

    invoke-static {v4}, Lcom/yannis/ledcard/widget/WheelView;->access$000(Lcom/yannis/ledcard/widget/WheelView;)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v1, v4

    iget-object v4, p0, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->this$0:Lcom/yannis/ledcard/widget/WheelView;

    invoke-static {v4}, Lcom/yannis/ledcard/widget/WheelView;->access$1200(Lcom/yannis/ledcard/widget/WheelView;)F

    move-result v4

    sub-float/2addr v1, v4

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    return v3

    .line 756
    :cond_0
    iget v0, p0, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->y:I

    iget v1, p0, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->move:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->this$0:Lcom/yannis/ledcard/widget/WheelView;

    invoke-static {v1}, Lcom/yannis/ledcard/widget/WheelView;->access$000(Lcom/yannis/ledcard/widget/WheelView;)I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->this$0:Lcom/yannis/ledcard/widget/WheelView;

    invoke-static {v1}, Lcom/yannis/ledcard/widget/WheelView;->access$1100(Lcom/yannis/ledcard/widget/WheelView;)F

    move-result v1

    div-float/2addr v1, v2

    iget-object v4, p0, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->this$0:Lcom/yannis/ledcard/widget/WheelView;

    invoke-static {v4}, Lcom/yannis/ledcard/widget/WheelView;->access$000(Lcom/yannis/ledcard/widget/WheelView;)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v1, v4

    iget-object v4, p0, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->this$0:Lcom/yannis/ledcard/widget/WheelView;

    invoke-static {v4}, Lcom/yannis/ledcard/widget/WheelView;->access$1200(Lcom/yannis/ledcard/widget/WheelView;)F

    move-result v4

    add-float/2addr v1, v4

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->y:I

    iget v1, p0, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->move:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->this$0:Lcom/yannis/ledcard/widget/WheelView;

    .line 757
    invoke-static {v1}, Lcom/yannis/ledcard/widget/WheelView;->access$000(Lcom/yannis/ledcard/widget/WheelView;)I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->this$0:Lcom/yannis/ledcard/widget/WheelView;

    invoke-static {v1}, Lcom/yannis/ledcard/widget/WheelView;->access$1100(Lcom/yannis/ledcard/widget/WheelView;)F

    move-result v1

    div-float/2addr v1, v2

    iget-object v4, p0, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->this$0:Lcom/yannis/ledcard/widget/WheelView;

    invoke-static {v4}, Lcom/yannis/ledcard/widget/WheelView;->access$000(Lcom/yannis/ledcard/widget/WheelView;)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v1, v4

    iget-object v4, p0, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->this$0:Lcom/yannis/ledcard/widget/WheelView;

    invoke-static {v4}, Lcom/yannis/ledcard/widget/WheelView;->access$1200(Lcom/yannis/ledcard/widget/WheelView;)F

    move-result v4

    sub-float/2addr v1, v4

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    return v3

    .line 760
    :cond_1
    iget v0, p0, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->y:I

    iget v1, p0, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->move:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->this$0:Lcom/yannis/ledcard/widget/WheelView;

    invoke-static {v1}, Lcom/yannis/ledcard/widget/WheelView;->access$1100(Lcom/yannis/ledcard/widget/WheelView;)F

    move-result v1

    div-float/2addr v1, v2

    iget-object v4, p0, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->this$0:Lcom/yannis/ledcard/widget/WheelView;

    invoke-static {v4}, Lcom/yannis/ledcard/widget/WheelView;->access$000(Lcom/yannis/ledcard/widget/WheelView;)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v1, v4

    iget-object v4, p0, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->this$0:Lcom/yannis/ledcard/widget/WheelView;

    invoke-static {v4}, Lcom/yannis/ledcard/widget/WheelView;->access$1200(Lcom/yannis/ledcard/widget/WheelView;)F

    move-result v4

    add-float/2addr v1, v4

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2

    iget v0, p0, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->y:I

    iget v1, p0, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->move:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->this$0:Lcom/yannis/ledcard/widget/WheelView;

    .line 761
    invoke-static {v1}, Lcom/yannis/ledcard/widget/WheelView;->access$000(Lcom/yannis/ledcard/widget/WheelView;)I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->this$0:Lcom/yannis/ledcard/widget/WheelView;

    invoke-static {v1}, Lcom/yannis/ledcard/widget/WheelView;->access$1100(Lcom/yannis/ledcard/widget/WheelView;)F

    move-result v1

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->this$0:Lcom/yannis/ledcard/widget/WheelView;

    invoke-static {v2}, Lcom/yannis/ledcard/widget/WheelView;->access$000(Lcom/yannis/ledcard/widget/WheelView;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->this$0:Lcom/yannis/ledcard/widget/WheelView;

    invoke-static {v2}, Lcom/yannis/ledcard/widget/WheelView;->access$1200(Lcom/yannis/ledcard/widget/WheelView;)F

    move-result v2

    sub-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    return v3

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public move(I)V
    .locals 0

    .line 733
    iput p1, p0, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->move:I

    return-void
.end method

.method public moveToSelected()F
    .locals 3

    .line 771
    iget-object v0, p0, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->this$0:Lcom/yannis/ledcard/widget/WheelView;

    invoke-static {v0}, Lcom/yannis/ledcard/widget/WheelView;->access$1100(Lcom/yannis/ledcard/widget/WheelView;)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->this$0:Lcom/yannis/ledcard/widget/WheelView;

    invoke-static {v1}, Lcom/yannis/ledcard/widget/WheelView;->access$000(Lcom/yannis/ledcard/widget/WheelView;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->y:I

    iget v2, p0, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->move:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    return v0
.end method

.method public newY(I)V
    .locals 1

    const/4 v0, 0x0

    .line 742
    iput v0, p0, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->move:I

    .line 743
    iget v0, p0, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->y:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->y:I

    return-void
.end method
