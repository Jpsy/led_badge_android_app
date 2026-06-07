.class public Lcom/yannis/ledcard/widget/WheelView;
.super Landroid/view/View;
.source "WheelView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yannis/ledcard/widget/WheelView$OnSelectListener;,
        Lcom/yannis/ledcard/widget/WheelView$ItemObject;
    }
.end annotation


# static fields
.field private static final MOVE_NUMBER:I = 0x5

.field private static final REFRESH_VIEW:I = 0x1


# instance fields
.field private controlHeight:F

.field private controlWidth:F

.field private dataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private downTime:J

.field private downY:I

.field private goonDistance:I

.field private goonTime:J

.field handler:Landroid/os/Handler;

.field private isClearing:Z

.field private isEnable:Z

.field private isScrolling:Z

.field private itemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/yannis/ledcard/widget/WheelView$ItemObject;",
            ">;"
        }
    .end annotation
.end field

.field private itemNumber:I

.field private lineColor:I

.field private lineHeight:F

.field private linePaint:Landroid/graphics/Paint;

.field private maskHeight:F

.field private noEmpty:Z

.field private normalColor:I

.field private normalFont:F

.field private onSelectListener:Lcom/yannis/ledcard/widget/WheelView$OnSelectListener;

.field private selectedColor:I

.field private selectedFont:F

.field private unitHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 147
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 43
    iput-boolean p1, p0, Lcom/yannis/ledcard/widget/WheelView;->isScrolling:Z

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yannis/ledcard/widget/WheelView;->itemList:Ljava/util/ArrayList;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yannis/ledcard/widget/WheelView;->dataList:Ljava/util/ArrayList;

    const-wide/16 v0, 0x0

    .line 59
    iput-wide v0, p0, Lcom/yannis/ledcard/widget/WheelView;->downTime:J

    const-wide/16 v0, 0xc8

    .line 63
    iput-wide v0, p0, Lcom/yannis/ledcard/widget/WheelView;->goonTime:J

    const/16 v0, 0x64

    .line 67
    iput v0, p0, Lcom/yannis/ledcard/widget/WheelView;->goonDistance:I

    const/high16 v0, -0x1000000

    .line 75
    iput v0, p0, Lcom/yannis/ledcard/widget/WheelView;->lineColor:I

    const/high16 v1, 0x40000000    # 2.0f

    .line 79
    iput v1, p0, Lcom/yannis/ledcard/widget/WheelView;->lineHeight:F

    const/high16 v1, 0x41600000    # 14.0f

    .line 83
    iput v1, p0, Lcom/yannis/ledcard/widget/WheelView;->normalFont:F

    const/high16 v1, 0x41b00000    # 22.0f

    .line 87
    iput v1, p0, Lcom/yannis/ledcard/widget/WheelView;->selectedFont:F

    const/16 v1, 0x32

    .line 91
    iput v1, p0, Lcom/yannis/ledcard/widget/WheelView;->unitHeight:I

    const/4 v1, 0x7

    .line 95
    iput v1, p0, Lcom/yannis/ledcard/widget/WheelView;->itemNumber:I

    .line 99
    iput v0, p0, Lcom/yannis/ledcard/widget/WheelView;->normalColor:I

    const/high16 v0, -0x10000

    .line 103
    iput v0, p0, Lcom/yannis/ledcard/widget/WheelView;->selectedColor:I

    const/high16 v0, 0x42400000    # 48.0f

    .line 107
    iput v0, p0, Lcom/yannis/ledcard/widget/WheelView;->maskHeight:F

    const/4 v0, 0x1

    .line 115
    iput-boolean v0, p0, Lcom/yannis/ledcard/widget/WheelView;->isEnable:Z

    .line 127
    iput-boolean v0, p0, Lcom/yannis/ledcard/widget/WheelView;->noEmpty:Z

    .line 132
    iput-boolean p1, p0, Lcom/yannis/ledcard/widget/WheelView;->isClearing:Z

    .line 616
    new-instance p1, Lcom/yannis/ledcard/widget/WheelView$3;

    invoke-direct {p1, p0}, Lcom/yannis/ledcard/widget/WheelView$3;-><init>(Lcom/yannis/ledcard/widget/WheelView;)V

    iput-object p1, p0, Lcom/yannis/ledcard/widget/WheelView;->handler:Landroid/os/Handler;

    .line 148
    invoke-direct {p0}, Lcom/yannis/ledcard/widget/WheelView;->initData()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 141
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/yannis/ledcard/widget/WheelView;->isScrolling:Z

    .line 47
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/yannis/ledcard/widget/WheelView;->itemList:Ljava/util/ArrayList;

    .line 51
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/yannis/ledcard/widget/WheelView;->dataList:Ljava/util/ArrayList;

    const-wide/16 v1, 0x0

    .line 59
    iput-wide v1, p0, Lcom/yannis/ledcard/widget/WheelView;->downTime:J

    const-wide/16 v1, 0xc8

    .line 63
    iput-wide v1, p0, Lcom/yannis/ledcard/widget/WheelView;->goonTime:J

    const/16 v1, 0x64

    .line 67
    iput v1, p0, Lcom/yannis/ledcard/widget/WheelView;->goonDistance:I

    const/high16 v1, -0x1000000

    .line 75
    iput v1, p0, Lcom/yannis/ledcard/widget/WheelView;->lineColor:I

    const/high16 v2, 0x40000000    # 2.0f

    .line 79
    iput v2, p0, Lcom/yannis/ledcard/widget/WheelView;->lineHeight:F

    const/high16 v2, 0x41600000    # 14.0f

    .line 83
    iput v2, p0, Lcom/yannis/ledcard/widget/WheelView;->normalFont:F

    const/high16 v2, 0x41b00000    # 22.0f

    .line 87
    iput v2, p0, Lcom/yannis/ledcard/widget/WheelView;->selectedFont:F

    const/16 v2, 0x32

    .line 91
    iput v2, p0, Lcom/yannis/ledcard/widget/WheelView;->unitHeight:I

    const/4 v2, 0x7

    .line 95
    iput v2, p0, Lcom/yannis/ledcard/widget/WheelView;->itemNumber:I

    .line 99
    iput v1, p0, Lcom/yannis/ledcard/widget/WheelView;->normalColor:I

    const/high16 v1, -0x10000

    .line 103
    iput v1, p0, Lcom/yannis/ledcard/widget/WheelView;->selectedColor:I

    const/high16 v1, 0x42400000    # 48.0f

    .line 107
    iput v1, p0, Lcom/yannis/ledcard/widget/WheelView;->maskHeight:F

    const/4 v1, 0x1

    .line 115
    iput-boolean v1, p0, Lcom/yannis/ledcard/widget/WheelView;->isEnable:Z

    .line 127
    iput-boolean v1, p0, Lcom/yannis/ledcard/widget/WheelView;->noEmpty:Z

    .line 132
    iput-boolean v0, p0, Lcom/yannis/ledcard/widget/WheelView;->isClearing:Z

    .line 616
    new-instance v0, Lcom/yannis/ledcard/widget/WheelView$3;

    invoke-direct {v0, p0}, Lcom/yannis/ledcard/widget/WheelView$3;-><init>(Lcom/yannis/ledcard/widget/WheelView;)V

    iput-object v0, p0, Lcom/yannis/ledcard/widget/WheelView;->handler:Landroid/os/Handler;

    .line 142
    invoke-direct {p0, p1, p2}, Lcom/yannis/ledcard/widget/WheelView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 143
    invoke-direct {p0}, Lcom/yannis/ledcard/widget/WheelView;->initData()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 135
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 43
    iput-boolean p3, p0, Lcom/yannis/ledcard/widget/WheelView;->isScrolling:Z

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yannis/ledcard/widget/WheelView;->itemList:Ljava/util/ArrayList;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yannis/ledcard/widget/WheelView;->dataList:Ljava/util/ArrayList;

    const-wide/16 v0, 0x0

    .line 59
    iput-wide v0, p0, Lcom/yannis/ledcard/widget/WheelView;->downTime:J

    const-wide/16 v0, 0xc8

    .line 63
    iput-wide v0, p0, Lcom/yannis/ledcard/widget/WheelView;->goonTime:J

    const/16 v0, 0x64

    .line 67
    iput v0, p0, Lcom/yannis/ledcard/widget/WheelView;->goonDistance:I

    const/high16 v0, -0x1000000

    .line 75
    iput v0, p0, Lcom/yannis/ledcard/widget/WheelView;->lineColor:I

    const/high16 v1, 0x40000000    # 2.0f

    .line 79
    iput v1, p0, Lcom/yannis/ledcard/widget/WheelView;->lineHeight:F

    const/high16 v1, 0x41600000    # 14.0f

    .line 83
    iput v1, p0, Lcom/yannis/ledcard/widget/WheelView;->normalFont:F

    const/high16 v1, 0x41b00000    # 22.0f

    .line 87
    iput v1, p0, Lcom/yannis/ledcard/widget/WheelView;->selectedFont:F

    const/16 v1, 0x32

    .line 91
    iput v1, p0, Lcom/yannis/ledcard/widget/WheelView;->unitHeight:I

    const/4 v1, 0x7

    .line 95
    iput v1, p0, Lcom/yannis/ledcard/widget/WheelView;->itemNumber:I

    .line 99
    iput v0, p0, Lcom/yannis/ledcard/widget/WheelView;->normalColor:I

    const/high16 v0, -0x10000

    .line 103
    iput v0, p0, Lcom/yannis/ledcard/widget/WheelView;->selectedColor:I

    const/high16 v0, 0x42400000    # 48.0f

    .line 107
    iput v0, p0, Lcom/yannis/ledcard/widget/WheelView;->maskHeight:F

    const/4 v0, 0x1

    .line 115
    iput-boolean v0, p0, Lcom/yannis/ledcard/widget/WheelView;->isEnable:Z

    .line 127
    iput-boolean v0, p0, Lcom/yannis/ledcard/widget/WheelView;->noEmpty:Z

    .line 132
    iput-boolean p3, p0, Lcom/yannis/ledcard/widget/WheelView;->isClearing:Z

    .line 616
    new-instance p3, Lcom/yannis/ledcard/widget/WheelView$3;

    invoke-direct {p3, p0}, Lcom/yannis/ledcard/widget/WheelView$3;-><init>(Lcom/yannis/ledcard/widget/WheelView;)V

    iput-object p3, p0, Lcom/yannis/ledcard/widget/WheelView;->handler:Landroid/os/Handler;

    .line 136
    invoke-direct {p0, p1, p2}, Lcom/yannis/ledcard/widget/WheelView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 137
    invoke-direct {p0}, Lcom/yannis/ledcard/widget/WheelView;->initData()V

    return-void
.end method

.method static synthetic access$000(Lcom/yannis/ledcard/widget/WheelView;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/yannis/ledcard/widget/WheelView;->unitHeight:I

    return p0
.end method

.method static synthetic access$100(Lcom/yannis/ledcard/widget/WheelView;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/yannis/ledcard/widget/WheelView;->actionThreadMove(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/yannis/ledcard/widget/WheelView;)F
    .locals 0

    .line 31
    iget p0, p0, Lcom/yannis/ledcard/widget/WheelView;->controlWidth:F

    return p0
.end method

.method static synthetic access$1100(Lcom/yannis/ledcard/widget/WheelView;)F
    .locals 0

    .line 31
    iget p0, p0, Lcom/yannis/ledcard/widget/WheelView;->controlHeight:F

    return p0
.end method

.method static synthetic access$1200(Lcom/yannis/ledcard/widget/WheelView;)F
    .locals 0

    .line 31
    iget p0, p0, Lcom/yannis/ledcard/widget/WheelView;->lineHeight:F

    return p0
.end method

.method static synthetic access$200(Lcom/yannis/ledcard/widget/WheelView;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/yannis/ledcard/widget/WheelView;->actionUp(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/yannis/ledcard/widget/WheelView;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/yannis/ledcard/widget/WheelView;->noEmpty()V

    return-void
.end method

.method static synthetic access$400(Lcom/yannis/ledcard/widget/WheelView;)Ljava/util/ArrayList;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/yannis/ledcard/widget/WheelView;->itemList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$500(Lcom/yannis/ledcard/widget/WheelView;)Lcom/yannis/ledcard/widget/WheelView$OnSelectListener;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/yannis/ledcard/widget/WheelView;->onSelectListener:Lcom/yannis/ledcard/widget/WheelView$OnSelectListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/yannis/ledcard/widget/WheelView;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/yannis/ledcard/widget/WheelView;->selectedColor:I

    return p0
.end method

.method static synthetic access$700(Lcom/yannis/ledcard/widget/WheelView;)F
    .locals 0

    .line 31
    iget p0, p0, Lcom/yannis/ledcard/widget/WheelView;->normalFont:F

    return p0
.end method

.method static synthetic access$800(Lcom/yannis/ledcard/widget/WheelView;)F
    .locals 0

    .line 31
    iget p0, p0, Lcom/yannis/ledcard/widget/WheelView;->selectedFont:F

    return p0
.end method

.method static synthetic access$900(Lcom/yannis/ledcard/widget/WheelView;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/yannis/ledcard/widget/WheelView;->normalColor:I

    return p0
.end method

.method private actionMove(I)V
    .locals 2

    .line 355
    iget-object v0, p0, Lcom/yannis/ledcard/widget/WheelView;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yannis/ledcard/widget/WheelView$ItemObject;

    .line 356
    invoke-virtual {v1, p1}, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->move(I)V

    goto :goto_0

    .line 358
    :cond_0
    invoke-virtual {p0}, Lcom/yannis/ledcard/widget/WheelView;->invalidate()V

    return-void
.end method

.method private actionThreadMove(I)V
    .locals 2

    .line 367
    iget-object v0, p0, Lcom/yannis/ledcard/widget/WheelView;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yannis/ledcard/widget/WheelView$ItemObject;

    .line 368
    invoke-virtual {v1, p1}, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->move(I)V

    goto :goto_0

    .line 370
    :cond_0
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/4 v0, 0x1

    .line 371
    iput v0, p1, Landroid/os/Message;->what:I

    .line 372
    iget-object v0, p0, Lcom/yannis/ledcard/widget/WheelView;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private actionUp(I)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_1

    const/4 v2, 0x0

    .line 383
    :goto_0
    iget-object v3, p0, Lcom/yannis/ledcard/widget/WheelView;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 384
    iget-object v3, p0, Lcom/yannis/ledcard/widget/WheelView;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yannis/ledcard/widget/WheelView$ItemObject;

    invoke-virtual {v3}, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 385
    iget-object v3, p0, Lcom/yannis/ledcard/widget/WheelView;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yannis/ledcard/widget/WheelView$ItemObject;

    invoke-virtual {v3}, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->moveToSelected()F

    move-result v3

    float-to-int v3, v3

    .line 386
    iget-object v4, p0, Lcom/yannis/ledcard/widget/WheelView;->onSelectListener:Lcom/yannis/ledcard/widget/WheelView$OnSelectListener;

    if-eqz v4, :cond_4

    .line 387
    iget-object v5, p0, Lcom/yannis/ledcard/widget/WheelView;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yannis/ledcard/widget/WheelView$ItemObject;

    iget v5, v5, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->id:I

    iget-object v6, p0, Lcom/yannis/ledcard/widget/WheelView;->itemList:Ljava/util/ArrayList;

    .line 388
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yannis/ledcard/widget/WheelView$ItemObject;

    iget-object v2, v2, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->itemText:Ljava/lang/String;

    .line 387
    invoke-interface {v4, v5, v2}, Lcom/yannis/ledcard/widget/WheelView$OnSelectListener;->endSelect(ILjava/lang/String;)V

    goto :goto_2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 393
    :cond_1
    iget-object v2, p0, Lcom/yannis/ledcard/widget/WheelView;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v0

    :goto_1
    if-ltz v2, :cond_3

    .line 394
    iget-object v3, p0, Lcom/yannis/ledcard/widget/WheelView;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yannis/ledcard/widget/WheelView$ItemObject;

    invoke-virtual {v3}, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 395
    iget-object v3, p0, Lcom/yannis/ledcard/widget/WheelView;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yannis/ledcard/widget/WheelView$ItemObject;

    invoke-virtual {v3}, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->moveToSelected()F

    move-result v3

    float-to-int v3, v3

    .line 396
    iget-object v4, p0, Lcom/yannis/ledcard/widget/WheelView;->onSelectListener:Lcom/yannis/ledcard/widget/WheelView$OnSelectListener;

    if-eqz v4, :cond_4

    .line 397
    iget-object v5, p0, Lcom/yannis/ledcard/widget/WheelView;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yannis/ledcard/widget/WheelView$ItemObject;

    iget v5, v5, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->id:I

    iget-object v6, p0, Lcom/yannis/ledcard/widget/WheelView;->itemList:Ljava/util/ArrayList;

    .line 398
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yannis/ledcard/widget/WheelView$ItemObject;

    iget-object v2, v2, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->itemText:Ljava/lang/String;

    .line 397
    invoke-interface {v4, v5, v2}, Lcom/yannis/ledcard/widget/WheelView$OnSelectListener;->endSelect(ILjava/lang/String;)V

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    .line 403
    :cond_4
    :goto_2
    iget-object v2, p0, Lcom/yannis/ledcard/widget/WheelView;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yannis/ledcard/widget/WheelView$ItemObject;

    add-int/lit8 v5, p1, 0x0

    .line 404
    invoke-virtual {v4, v5}, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->newY(I)V

    goto :goto_3

    .line 406
    :cond_5
    invoke-direct {p0, v3}, Lcom/yannis/ledcard/widget/WheelView;->slowMove(I)V

    .line 407
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 408
    iput v0, p1, Landroid/os/Message;->what:I

    .line 409
    iget-object v0, p0, Lcom/yannis/ledcard/widget/WheelView;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private defaultMove(I)V
    .locals 2

    .line 474
    iget-object v0, p0, Lcom/yannis/ledcard/widget/WheelView;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yannis/ledcard/widget/WheelView$ItemObject;

    .line 475
    invoke-virtual {v1, p1}, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->newY(I)V

    goto :goto_0

    .line 477
    :cond_0
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/4 v0, 0x1

    .line 478
    iput v0, p1, Landroid/os/Message;->what:I

    .line 479
    iget-object v0, p0, Lcom/yannis/ledcard/widget/WheelView;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private drawLine(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    .line 222
    iget-object v1, v0, Lcom/yannis/ledcard/widget/WheelView;->linePaint:Landroid/graphics/Paint;

    if-nez v1, :cond_0

    .line 223
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, v0, Lcom/yannis/ledcard/widget/WheelView;->linePaint:Landroid/graphics/Paint;

    .line 224
    iget v2, v0, Lcom/yannis/ledcard/widget/WheelView;->lineColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 225
    iget-object v1, v0, Lcom/yannis/ledcard/widget/WheelView;->linePaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 226
    iget-object v1, v0, Lcom/yannis/ledcard/widget/WheelView;->linePaint:Landroid/graphics/Paint;

    iget v2, v0, Lcom/yannis/ledcard/widget/WheelView;->lineHeight:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_0
    const/4 v4, 0x0

    .line 229
    iget v1, v0, Lcom/yannis/ledcard/widget/WheelView;->controlHeight:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v1, v2

    iget v5, v0, Lcom/yannis/ledcard/widget/WheelView;->unitHeight:I

    div-int/lit8 v6, v5, 0x2

    int-to-float v6, v6

    sub-float/2addr v3, v6

    iget v6, v0, Lcom/yannis/ledcard/widget/WheelView;->lineHeight:F

    add-float v7, v3, v6

    iget v8, v0, Lcom/yannis/ledcard/widget/WheelView;->controlWidth:F

    div-float/2addr v1, v2

    div-int/lit8 v5, v5, 0x2

    int-to-float v3, v5

    sub-float/2addr v1, v3

    add-float/2addr v1, v6

    iget-object v9, v0, Lcom/yannis/ledcard/widget/WheelView;->linePaint:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    move v5, v7

    move v6, v8

    move v7, v1

    move-object v8, v9

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/4 v11, 0x0

    .line 231
    iget v1, v0, Lcom/yannis/ledcard/widget/WheelView;->controlHeight:F

    div-float v3, v1, v2

    iget v4, v0, Lcom/yannis/ledcard/widget/WheelView;->unitHeight:I

    div-int/lit8 v5, v4, 0x2

    int-to-float v5, v5

    add-float/2addr v3, v5

    iget v5, v0, Lcom/yannis/ledcard/widget/WheelView;->lineHeight:F

    sub-float v12, v3, v5

    iget v13, v0, Lcom/yannis/ledcard/widget/WheelView;->controlWidth:F

    div-float/2addr v1, v2

    div-int/lit8 v4, v4, 0x2

    int-to-float v2, v4

    add-float/2addr v1, v2

    sub-float v14, v1, v5

    iget-object v15, v0, Lcom/yannis/ledcard/widget/WheelView;->linePaint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private declared-synchronized drawList(Landroid/graphics/Canvas;)V
    .locals 3

    monitor-enter p0

    .line 236
    :try_start_0
    iget-boolean v0, p0, Lcom/yannis/ledcard/widget/WheelView;->isClearing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 237
    monitor-exit p0

    return-void

    .line 239
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/yannis/ledcard/widget/WheelView;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yannis/ledcard/widget/WheelView$ItemObject;

    .line 240
    invoke-virtual {p0}, Lcom/yannis/ledcard/widget/WheelView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->drawSelf(Landroid/graphics/Canvas;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 244
    :catch_0
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private drawMask(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    .line 252
    new-instance v9, Landroid/graphics/LinearGradient;

    iget v5, v0, Lcom/yannis/ledcard/widget/WheelView;->maskHeight:F

    sget-object v8, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v6, 0xf2f2f2

    const v7, 0xf2f2f2

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 254
    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    .line 255
    invoke-virtual {v15, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 256
    iget v13, v0, Lcom/yannis/ledcard/widget/WheelView;->controlWidth:F

    iget v14, v0, Lcom/yannis/ledcard/widget/WheelView;->maskHeight:F

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 258
    new-instance v9, Landroid/graphics/LinearGradient;

    iget v5, v0, Lcom/yannis/ledcard/widget/WheelView;->controlHeight:F

    iget v1, v0, Lcom/yannis/ledcard/widget/WheelView;->maskHeight:F

    sub-float v3, v5, v1

    sget-object v8, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 260
    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    .line 261
    invoke-virtual {v15, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 262
    iget v14, v0, Lcom/yannis/ledcard/widget/WheelView;->controlHeight:F

    iget v1, v0, Lcom/yannis/ledcard/widget/WheelView;->maskHeight:F

    sub-float v12, v14, v1

    iget v13, v0, Lcom/yannis/ledcard/widget/WheelView;->controlWidth:F

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private declared-synchronized goonMove(I)V
    .locals 2

    monitor-enter p0

    .line 302
    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/yannis/ledcard/widget/WheelView$1;

    invoke-direct {v1, p0, p1}, Lcom/yannis/ledcard/widget/WheelView$1;-><init>(Lcom/yannis/ledcard/widget/WheelView;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 320
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 159
    sget-object v0, Lcom/yannis/ledcard/R$styleable;->WheelView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 160
    iget p2, p0, Lcom/yannis/ledcard/widget/WheelView;->unitHeight:I

    int-to-float p2, p2

    const/16 v0, 0xa

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/yannis/ledcard/widget/WheelView;->unitHeight:I

    .line 161
    iget p2, p0, Lcom/yannis/ledcard/widget/WheelView;->itemNumber:I

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/yannis/ledcard/widget/WheelView;->itemNumber:I

    .line 163
    iget p2, p0, Lcom/yannis/ledcard/widget/WheelView;->normalFont:F

    const/4 v1, 0x7

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/yannis/ledcard/widget/WheelView;->normalFont:F

    .line 164
    iget p2, p0, Lcom/yannis/ledcard/widget/WheelView;->selectedFont:F

    const/16 v1, 0x9

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/yannis/ledcard/widget/WheelView;->selectedFont:F

    .line 165
    iget p2, p0, Lcom/yannis/ledcard/widget/WheelView;->normalColor:I

    const/4 v1, 0x6

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/yannis/ledcard/widget/WheelView;->normalColor:I

    .line 166
    iget p2, p0, Lcom/yannis/ledcard/widget/WheelView;->selectedColor:I

    const/16 v1, 0x8

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/yannis/ledcard/widget/WheelView;->selectedColor:I

    .line 168
    iget p2, p0, Lcom/yannis/ledcard/widget/WheelView;->lineColor:I

    const/4 v1, 0x2

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/yannis/ledcard/widget/WheelView;->lineColor:I

    .line 169
    iget p2, p0, Lcom/yannis/ledcard/widget/WheelView;->lineHeight:F

    const/4 v1, 0x3

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/yannis/ledcard/widget/WheelView;->lineHeight:F

    .line 171
    iget p2, p0, Lcom/yannis/ledcard/widget/WheelView;->maskHeight:F

    const/4 v1, 0x4

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/yannis/ledcard/widget/WheelView;->maskHeight:F

    const/4 p2, 0x5

    .line 172
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/yannis/ledcard/widget/WheelView;->noEmpty:Z

    const/4 p2, 0x0

    .line 173
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/yannis/ledcard/widget/WheelView;->isEnable:Z

    .line 175
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 177
    iget p1, p0, Lcom/yannis/ledcard/widget/WheelView;->itemNumber:I

    iget p2, p0, Lcom/yannis/ledcard/widget/WheelView;->unitHeight:I

    mul-int p1, p1, p2

    int-to-float p1, p1

    iput p1, p0, Lcom/yannis/ledcard/widget/WheelView;->controlHeight:F

    return-void
.end method

.method private initData()V
    .locals 4

    const/4 v0, 0x1

    .line 184
    iput-boolean v0, p0, Lcom/yannis/ledcard/widget/WheelView;->isClearing:Z

    .line 185
    iget-object v0, p0, Lcom/yannis/ledcard/widget/WheelView;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 186
    :goto_0
    iget-object v2, p0, Lcom/yannis/ledcard/widget/WheelView;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 187
    new-instance v2, Lcom/yannis/ledcard/widget/WheelView$ItemObject;

    invoke-direct {v2, p0}, Lcom/yannis/ledcard/widget/WheelView$ItemObject;-><init>(Lcom/yannis/ledcard/widget/WheelView;)V

    .line 188
    iput v1, v2, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->id:I

    .line 189
    iget-object v3, p0, Lcom/yannis/ledcard/widget/WheelView;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->itemText:Ljava/lang/String;

    .line 190
    iput v0, v2, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->x:I

    .line 191
    iget v3, p0, Lcom/yannis/ledcard/widget/WheelView;->unitHeight:I

    mul-int v3, v3, v1

    iput v3, v2, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->y:I

    .line 192
    iget-object v3, p0, Lcom/yannis/ledcard/widget/WheelView;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 194
    :cond_0
    iput-boolean v0, p0, Lcom/yannis/ledcard/widget/WheelView;->isClearing:Z

    return-void
.end method

.method private noEmpty()V
    .locals 3

    .line 327
    iget-boolean v0, p0, Lcom/yannis/ledcard/widget/WheelView;->noEmpty:Z

    if-nez v0, :cond_0

    return-void

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/yannis/ledcard/widget/WheelView;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yannis/ledcard/widget/WheelView$ItemObject;

    .line 330
    invoke-virtual {v1}, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 333
    :cond_2
    iget-object v0, p0, Lcom/yannis/ledcard/widget/WheelView;->itemList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yannis/ledcard/widget/WheelView$ItemObject;

    invoke-virtual {v0}, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->moveToSelected()F

    move-result v0

    float-to-int v0, v0

    if-gez v0, :cond_3

    .line 335
    invoke-direct {p0, v0}, Lcom/yannis/ledcard/widget/WheelView;->defaultMove(I)V

    goto :goto_0

    .line 337
    :cond_3
    iget-object v0, p0, Lcom/yannis/ledcard/widget/WheelView;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yannis/ledcard/widget/WheelView$ItemObject;

    .line 338
    invoke-virtual {v0}, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->moveToSelected()F

    move-result v0

    float-to-int v0, v0

    .line 337
    invoke-direct {p0, v0}, Lcom/yannis/ledcard/widget/WheelView;->defaultMove(I)V

    .line 340
    :goto_0
    iget-object v0, p0, Lcom/yannis/ledcard/widget/WheelView;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yannis/ledcard/widget/WheelView$ItemObject;

    .line 341
    invoke-virtual {v1}, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 342
    iget-object v0, p0, Lcom/yannis/ledcard/widget/WheelView;->onSelectListener:Lcom/yannis/ledcard/widget/WheelView$OnSelectListener;

    if-eqz v0, :cond_5

    .line 343
    iget v2, v1, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->id:I

    iget-object v1, v1, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->itemText:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/yannis/ledcard/widget/WheelView$OnSelectListener;->endSelect(ILjava/lang/String;)V

    :cond_5
    return-void
.end method

.method private onSelectListener()V
    .locals 4

    .line 486
    iget-object v0, p0, Lcom/yannis/ledcard/widget/WheelView;->onSelectListener:Lcom/yannis/ledcard/widget/WheelView$OnSelectListener;

    if-nez v0, :cond_0

    return-void

    .line 488
    :cond_0
    iget-object v0, p0, Lcom/yannis/ledcard/widget/WheelView;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yannis/ledcard/widget/WheelView$ItemObject;

    .line 489
    invoke-virtual {v1}, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 490
    iget-object v2, p0, Lcom/yannis/ledcard/widget/WheelView;->onSelectListener:Lcom/yannis/ledcard/widget/WheelView$OnSelectListener;

    iget v3, v1, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->id:I

    iget-object v1, v1, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->itemText:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Lcom/yannis/ledcard/widget/WheelView$OnSelectListener;->selecting(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private declared-synchronized slowMove(I)V
    .locals 2

    monitor-enter p0

    .line 419
    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/yannis/ledcard/widget/WheelView$2;

    invoke-direct {v1, p0, p1}, Lcom/yannis/ledcard/widget/WheelView$2;-><init>(Lcom/yannis/ledcard/widget/WheelView;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 465
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 466
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public getItemText(I)Ljava/lang/String;
    .locals 1

    .line 602
    iget-object v0, p0, Lcom/yannis/ledcard/widget/WheelView;->itemList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 604
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yannis/ledcard/widget/WheelView$ItemObject;

    iget-object p1, p1, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->itemText:Ljava/lang/String;

    return-object p1
.end method

.method public getListSize()I
    .locals 1

    .line 590
    iget-object v0, p0, Lcom/yannis/ledcard/widget/WheelView;->itemList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 592
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getSelected()I
    .locals 3

    .line 521
    iget-object v0, p0, Lcom/yannis/ledcard/widget/WheelView;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yannis/ledcard/widget/WheelView$ItemObject;

    .line 522
    invoke-virtual {v1}, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 523
    iget v0, v1, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->id:I

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getSelectedText()Ljava/lang/String;
    .locals 3

    .line 534
    iget-object v0, p0, Lcom/yannis/ledcard/widget/WheelView;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yannis/ledcard/widget/WheelView$ItemObject;

    .line 535
    invoke-virtual {v1}, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 536
    iget-object v0, v1, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->itemText:Ljava/lang/String;

    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public isEnable()Z
    .locals 1

    .line 556
    iget-boolean v0, p0, Lcom/yannis/ledcard/widget/WheelView;->isEnable:Z

    return v0
.end method

.method public isScrolling()Z
    .locals 1

    .line 547
    iget-boolean v0, p0, Lcom/yannis/ledcard/widget/WheelView;->isScrolling:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 208
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 210
    invoke-direct {p0, p1}, Lcom/yannis/ledcard/widget/WheelView;->drawLine(Landroid/graphics/Canvas;)V

    .line 211
    invoke-direct {p0, p1}, Lcom/yannis/ledcard/widget/WheelView;->drawList(Landroid/graphics/Canvas;)V

    .line 212
    invoke-direct {p0, p1}, Lcom/yannis/ledcard/widget/WheelView;->drawMask(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 199
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 200
    invoke-virtual {p0}, Lcom/yannis/ledcard/widget/WheelView;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/yannis/ledcard/widget/WheelView;->controlWidth:F

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_0

    .line 202
    invoke-virtual {p0}, Lcom/yannis/ledcard/widget/WheelView;->getMeasuredWidth()I

    move-result p1

    iget p2, p0, Lcom/yannis/ledcard/widget/WheelView;->itemNumber:I

    iget v0, p0, Lcom/yannis/ledcard/widget/WheelView;->unitHeight:I

    mul-int p2, p2, v0

    invoke-virtual {p0, p1, p2}, Lcom/yannis/ledcard/widget/WheelView;->setMeasuredDimension(II)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 268
    iget-boolean v0, p0, Lcom/yannis/ledcard/widget/WheelView;->isEnable:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 270
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    .line 271
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eqz v2, :cond_4

    if-eq v2, v1, :cond_2

    const/4 p1, 0x2

    if-eq v2, p1, :cond_1

    goto :goto_0

    .line 278
    :cond_1
    iget p1, p0, Lcom/yannis/ledcard/widget/WheelView;->downY:I

    sub-int/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/yannis/ledcard/widget/WheelView;->actionMove(I)V

    .line 279
    invoke-direct {p0}, Lcom/yannis/ledcard/widget/WheelView;->onSelectListener()V

    goto :goto_0

    .line 282
    :cond_2
    iget p1, p0, Lcom/yannis/ledcard/widget/WheelView;->downY:I

    sub-int p1, v0, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 284
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/yannis/ledcard/widget/WheelView;->downTime:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/yannis/ledcard/widget/WheelView;->goonTime:J

    cmp-long v6, v2, v4

    if-gez v6, :cond_3

    iget v2, p0, Lcom/yannis/ledcard/widget/WheelView;->goonDistance:I

    if-le p1, v2, :cond_3

    .line 285
    iget p1, p0, Lcom/yannis/ledcard/widget/WheelView;->downY:I

    sub-int/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/yannis/ledcard/widget/WheelView;->goonMove(I)V

    goto :goto_0

    .line 287
    :cond_3
    iget p1, p0, Lcom/yannis/ledcard/widget/WheelView;->downY:I

    sub-int/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/yannis/ledcard/widget/WheelView;->actionUp(I)V

    .line 288
    invoke-direct {p0}, Lcom/yannis/ledcard/widget/WheelView;->noEmpty()V

    const/4 p1, 0x0

    .line 289
    iput-boolean p1, p0, Lcom/yannis/ledcard/widget/WheelView;->isScrolling:Z

    goto :goto_0

    .line 273
    :cond_4
    iput-boolean v1, p0, Lcom/yannis/ledcard/widget/WheelView;->isScrolling:Z

    .line 274
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/yannis/ledcard/widget/WheelView;->downY:I

    .line 275
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/yannis/ledcard/widget/WheelView;->downTime:J

    :goto_0
    return v1
.end method

.method public refreshData(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 511
    invoke-virtual {p0, p1}, Lcom/yannis/ledcard/widget/WheelView;->setData(Ljava/util/ArrayList;)V

    .line 512
    invoke-virtual {p0}, Lcom/yannis/ledcard/widget/WheelView;->invalidate()V

    return-void
.end method

.method public setData(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 501
    iput-object p1, p0, Lcom/yannis/ledcard/widget/WheelView;->dataList:Ljava/util/ArrayList;

    .line 502
    invoke-direct {p0}, Lcom/yannis/ledcard/widget/WheelView;->initData()V

    return-void
.end method

.method public setDefault(I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 577
    :cond_0
    iget-object v0, p0, Lcom/yannis/ledcard/widget/WheelView;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_1

    return-void

    .line 580
    :cond_1
    iget-object v0, p0, Lcom/yannis/ledcard/widget/WheelView;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yannis/ledcard/widget/WheelView$ItemObject;

    invoke-virtual {p1}, Lcom/yannis/ledcard/widget/WheelView$ItemObject;->moveToSelected()F

    move-result p1

    float-to-int p1, p1

    .line 581
    invoke-direct {p0, p1}, Lcom/yannis/ledcard/widget/WheelView;->defaultMove(I)V

    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    .line 565
    iput-boolean p1, p0, Lcom/yannis/ledcard/widget/WheelView;->isEnable:Z

    return-void
.end method

.method public setOnSelectListener(Lcom/yannis/ledcard/widget/WheelView$OnSelectListener;)V
    .locals 0

    .line 613
    iput-object p1, p0, Lcom/yannis/ledcard/widget/WheelView;->onSelectListener:Lcom/yannis/ledcard/widget/WheelView$OnSelectListener;

    return-void
.end method
