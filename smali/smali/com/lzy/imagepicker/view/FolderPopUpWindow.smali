.class public Lcom/lzy/imagepicker/view/FolderPopUpWindow;
.super Landroid/widget/PopupWindow;
.source "FolderPopUpWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzy/imagepicker/view/FolderPopUpWindow$OnItemClickListener;
    }
.end annotation


# instance fields
.field private listView:Landroid/widget/ListView;

.field private marginPx:I

.field private final marginView:Landroid/view/View;

.field private final masker:Landroid/view/View;

.field private onItemClickListener:Lcom/lzy/imagepicker/view/FolderPopUpWindow$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/BaseAdapter;)V
    .locals 2

    .line 38
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 40
    sget v0, Lcom/lzy/imagepicker/R$layout;->pop_folder:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 41
    sget v0, Lcom/lzy/imagepicker/R$id;->masker:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lzy/imagepicker/view/FolderPopUpWindow;->masker:Landroid/view/View;

    .line 42
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    sget v0, Lcom/lzy/imagepicker/R$id;->margin:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lzy/imagepicker/view/FolderPopUpWindow;->marginView:Landroid/view/View;

    .line 44
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    sget v0, Lcom/lzy/imagepicker/R$id;->listView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/lzy/imagepicker/view/FolderPopUpWindow;->listView:Landroid/widget/ListView;

    .line 46
    invoke-virtual {v0, p2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 48
    invoke-virtual {p0, p1}, Lcom/lzy/imagepicker/view/FolderPopUpWindow;->setContentView(Landroid/view/View;)V

    const/4 p2, -0x1

    .line 49
    invoke-virtual {p0, p2}, Lcom/lzy/imagepicker/view/FolderPopUpWindow;->setWidth(I)V

    .line 50
    invoke-virtual {p0, p2}, Lcom/lzy/imagepicker/view/FolderPopUpWindow;->setHeight(I)V

    const/4 p2, 0x1

    .line 51
    invoke-virtual {p0, p2}, Lcom/lzy/imagepicker/view/FolderPopUpWindow;->setFocusable(Z)V

    .line 52
    invoke-virtual {p0, p2}, Lcom/lzy/imagepicker/view/FolderPopUpWindow;->setOutsideTouchable(Z)V

    .line 53
    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, p2}, Lcom/lzy/imagepicker/view/FolderPopUpWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 54
    invoke-virtual {p0, v0}, Lcom/lzy/imagepicker/view/FolderPopUpWindow;->setAnimationStyle(I)V

    .line 55
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p2

    new-instance v0, Lcom/lzy/imagepicker/view/FolderPopUpWindow$1;

    invoke-direct {v0, p0, p1}, Lcom/lzy/imagepicker/view/FolderPopUpWindow$1;-><init>(Lcom/lzy/imagepicker/view/FolderPopUpWindow;Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 70
    iget-object p1, p0, Lcom/lzy/imagepicker/view/FolderPopUpWindow;->listView:Landroid/widget/ListView;

    new-instance p2, Lcom/lzy/imagepicker/view/FolderPopUpWindow$2;

    invoke-direct {p2, p0}, Lcom/lzy/imagepicker/view/FolderPopUpWindow$2;-><init>(Lcom/lzy/imagepicker/view/FolderPopUpWindow;)V

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/lzy/imagepicker/view/FolderPopUpWindow;)Landroid/widget/ListView;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/lzy/imagepicker/view/FolderPopUpWindow;->listView:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/lzy/imagepicker/view/FolderPopUpWindow;)Landroid/view/View;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/lzy/imagepicker/view/FolderPopUpWindow;->marginView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcom/lzy/imagepicker/view/FolderPopUpWindow;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/lzy/imagepicker/view/FolderPopUpWindow;->marginPx:I

    return p0
.end method

.method static synthetic access$300(Lcom/lzy/imagepicker/view/FolderPopUpWindow;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/lzy/imagepicker/view/FolderPopUpWindow;->enterAnimator()V

    return-void
.end method

.method static synthetic access$400(Lcom/lzy/imagepicker/view/FolderPopUpWindow;)Lcom/lzy/imagepicker/view/FolderPopUpWindow$OnItemClickListener;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/lzy/imagepicker/view/FolderPopUpWindow;->onItemClickListener:Lcom/lzy/imagepicker/view/FolderPopUpWindow$OnItemClickListener;

    return-object p0
.end method

.method static synthetic access$501(Lcom/lzy/imagepicker/view/FolderPopUpWindow;)V
    .locals 0

    .line 29
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method private enterAnimator()V
    .locals 9

    .line 79
    iget-object v0, p0, Lcom/lzy/imagepicker/view/FolderPopUpWindow;->masker:Landroid/view/View;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const-string v3, "alpha"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 80
    iget-object v2, p0, Lcom/lzy/imagepicker/view/FolderPopUpWindow;->listView:Landroid/widget/ListView;

    new-array v3, v1, [F

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    aput v4, v3, v5

    const/4 v4, 0x0

    const/4 v6, 0x1

    aput v4, v3, v6

    const-string v4, "translationY"

    invoke-static {v2, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 81
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v7, 0x190

    .line 82
    invoke-virtual {v3, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v0, v1, v5

    aput-object v2, v1, v6

    .line 83
    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 84
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 85
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private exitAnimator()V
    .locals 9

    .line 94
    iget-object v0, p0, Lcom/lzy/imagepicker/view/FolderPopUpWindow;->masker:Landroid/view/View;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const-string v3, "alpha"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 95
    iget-object v2, p0, Lcom/lzy/imagepicker/view/FolderPopUpWindow;->listView:Landroid/widget/ListView;

    new-array v3, v1, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v4, v3, v5

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/4 v6, 0x1

    aput v4, v3, v6

    const-string v4, "translationY"

    invoke-static {v2, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 96
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v7, 0x12c

    .line 97
    invoke-virtual {v3, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v0, v1, v5

    aput-object v2, v1, v6

    .line 98
    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 99
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 100
    new-instance v0, Lcom/lzy/imagepicker/view/FolderPopUpWindow$3;

    invoke-direct {v0, p0}, Lcom/lzy/imagepicker/view/FolderPopUpWindow$3;-><init>(Lcom/lzy/imagepicker/view/FolderPopUpWindow;)V

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 119
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .line 90
    invoke-direct {p0}, Lcom/lzy/imagepicker/view/FolderPopUpWindow;->exitAnimator()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 136
    invoke-virtual {p0}, Lcom/lzy/imagepicker/view/FolderPopUpWindow;->dismiss()V

    return-void
.end method

.method public setMargin(I)V
    .locals 0

    .line 131
    iput p1, p0, Lcom/lzy/imagepicker/view/FolderPopUpWindow;->marginPx:I

    return-void
.end method

.method public setOnItemClickListener(Lcom/lzy/imagepicker/view/FolderPopUpWindow$OnItemClickListener;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/lzy/imagepicker/view/FolderPopUpWindow;->onItemClickListener:Lcom/lzy/imagepicker/view/FolderPopUpWindow$OnItemClickListener;

    return-void
.end method

.method public setSelection(I)V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/lzy/imagepicker/view/FolderPopUpWindow;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setSelection(I)V

    return-void
.end method
