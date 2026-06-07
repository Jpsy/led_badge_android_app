.class public Lcom/yannis/ledcard/activity/LEDBmpFragment;
.super Landroidx/fragment/app/Fragment;
.source "LEDBmpFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yannis/ledcard/activity/LEDBmpFragment$OnLEDBmpClickListener;
    }
.end annotation


# static fields
.field private static isEditMode:Z


# instance fields
.field private currentItem:I

.field dialog:Landroid/app/Dialog;

.field private editText:Landroid/widget/EditText;

.field gridViewLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/GridView;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lcom/yannis/ledcard/activity/LEDBmpFragment$OnLEDBmpClickListener;

.field private mCirclePointIndicatorView:Lcom/yannis/ledcard/widget/CirclePointIndicatorView;

.field private mColumns:I

.field private mLEDBmps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/yannis/ledcard/bean/LEDBmp;",
            ">;"
        }
    .end annotation
.end field

.field private mLastPosition:I

.field private mRows:I

.field private mViewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x3

    .line 47
    iput v0, p0, Lcom/yannis/ledcard/activity/LEDBmpFragment;->mRows:I

    const/16 v0, 0x8

    .line 48
    iput v0, p0, Lcom/yannis/ledcard/activity/LEDBmpFragment;->mColumns:I

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yannis/ledcard/activity/LEDBmpFragment;->gridViewLists:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 53
    iput v0, p0, Lcom/yannis/ledcard/activity/LEDBmpFragment;->currentItem:I

    return-void
.end method

.method static synthetic access$000(Lcom/yannis/ledcard/activity/LEDBmpFragment;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/yannis/ledcard/activity/LEDBmpFragment;->mLastPosition:I

    return p0
.end method

.method static synthetic access$002(Lcom/yannis/ledcard/activity/LEDBmpFragment;I)I
    .locals 0

    .line 44
    iput p1, p0, Lcom/yannis/ledcard/activity/LEDBmpFragment;->mLastPosition:I

    return p1
.end method

.method static synthetic access$100(Lcom/yannis/ledcard/activity/LEDBmpFragment;)Lcom/yannis/ledcard/widget/CirclePointIndicatorView;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/yannis/ledcard/activity/LEDBmpFragment;->mCirclePointIndicatorView:Lcom/yannis/ledcard/widget/CirclePointIndicatorView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/yannis/ledcard/activity/LEDBmpFragment;)Lcom/yannis/ledcard/activity/LEDBmpFragment$OnLEDBmpClickListener;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/yannis/ledcard/activity/LEDBmpFragment;->listener:Lcom/yannis/ledcard/activity/LEDBmpFragment$OnLEDBmpClickListener;

    return-object p0
.end method

.method static synthetic access$300()Z
    .locals 1

    .line 44
    sget-boolean v0, Lcom/yannis/ledcard/activity/LEDBmpFragment;->isEditMode:Z

    return v0
.end method

.method static synthetic access$400(Lcom/yannis/ledcard/activity/LEDBmpFragment;)Landroid/widget/EditText;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/yannis/ledcard/activity/LEDBmpFragment;->editText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$500(Lcom/yannis/ledcard/activity/LEDBmpFragment;Lcom/yannis/ledcard/bean/LEDBmp;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/yannis/ledcard/activity/LEDBmpFragment;->showNormalDialog(Lcom/yannis/ledcard/bean/LEDBmp;)V

    return-void
.end method

.method private getViewPagerCount(Ljava/util/ArrayList;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/yannis/ledcard/bean/LEDBmp;",
            ">;)I"
        }
    .end annotation

    .line 128
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 129
    iget v0, p0, Lcom/yannis/ledcard/activity/LEDBmpFragment;->mRows:I

    iget v1, p0, Lcom/yannis/ledcard/activity/LEDBmpFragment;->mColumns:I

    mul-int v2, v0, v1

    add-int/lit8 v2, v2, -0x1

    rem-int v2, p1, v2

    mul-int v0, v0, v1

    add-int/lit8 v0, v0, -0x1

    div-int/2addr p1, v0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    :goto_0
    return p1
.end method

.method private getViewPagerItem(ILjava/util/ArrayList;)Landroid/widget/GridView;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/yannis/ledcard/bean/LEDBmp;",
            ">;)",
            "Landroid/widget/GridView;"
        }
    .end annotation

    .line 133
    invoke-virtual {p0}, Lcom/yannis/ledcard/activity/LEDBmpFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0c003f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    .line 134
    new-instance v1, Ljava/util/ArrayList;

    iget v2, p0, Lcom/yannis/ledcard/activity/LEDBmpFragment;->mRows:I

    iget v3, p0, Lcom/yannis/ledcard/activity/LEDBmpFragment;->mColumns:I

    mul-int v4, v2, v3

    add-int/lit8 v4, v4, -0x1

    mul-int v4, v4, p1

    add-int/lit8 p1, p1, 0x1

    mul-int v2, v2, v3

    add-int/lit8 v2, v2, -0x1

    mul-int v2, v2, p1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v2, v3, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/yannis/ledcard/activity/LEDBmpFragment;->mRows:I

    iget v3, p0, Lcom/yannis/ledcard/activity/LEDBmpFragment;->mColumns:I

    mul-int v2, v2, v3

    add-int/lit8 v2, v2, -0x1

    mul-int p1, p1, v2

    :goto_0
    invoke-virtual {p2, v4, p1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 138
    new-instance p1, Lcom/yannis/ledcard/bean/LEDBmp;

    const/4 p2, -0x1

    invoke-direct {p1, p2}, Lcom/yannis/ledcard/bean/LEDBmp;-><init>(I)V

    .line 139
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const-string v2, "====getViewPagerItem"

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/yannis/ledcard/bean/LEDBmp;

    .line 141
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  id = \u300b\u300b\u300b "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/yannis/ledcard/bean/LEDBmp;->getId()I

    move-result p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 143
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "  "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p2, Lcom/yannis/ledcard/activity/LEDBmpFragment;->isEditMode:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    new-instance p1, Lcom/yannis/ledcard/adapter/LEDBmpGridViewAdapter;

    invoke-virtual {p0}, Lcom/yannis/ledcard/activity/LEDBmpFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    sget-boolean v2, Lcom/yannis/ledcard/activity/LEDBmpFragment;->isEditMode:Z

    invoke-direct {p1, p2, v1, v2}, Lcom/yannis/ledcard/adapter/LEDBmpGridViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 145
    iget p1, p0, Lcom/yannis/ledcard/activity/LEDBmpFragment;->mColumns:I

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 146
    new-instance p1, Lcom/yannis/ledcard/activity/LEDBmpFragment$2;

    invoke-direct {p1, p0, v1}, Lcom/yannis/ledcard/activity/LEDBmpFragment$2;-><init>(Lcom/yannis/ledcard/activity/LEDBmpFragment;Ljava/util/List;)V

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 173
    new-instance p1, Lcom/yannis/ledcard/activity/LEDBmpFragment$3;

    invoke-direct {p1, p0, v1}, Lcom/yannis/ledcard/activity/LEDBmpFragment$3;-><init>(Lcom/yannis/ledcard/activity/LEDBmpFragment;Ljava/util/List;)V

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-object v0
.end method

.method private initViewPager(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/yannis/ledcard/bean/LEDBmp;",
            ">;)V"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/yannis/ledcard/activity/LEDBmpFragment;->gridViewLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 100
    invoke-direct {p0, p1}, Lcom/yannis/ledcard/activity/LEDBmpFragment;->getViewPagerCount(Ljava/util/ArrayList;)I

    move-result v0

    .line 101
    iget-object v1, p0, Lcom/yannis/ledcard/activity/LEDBmpFragment;->mCirclePointIndicatorView:Lcom/yannis/ledcard/widget/CirclePointIndicatorView;

    invoke-virtual {v1, v0}, Lcom/yannis/ledcard/widget/CirclePointIndicatorView;->init(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 103
    invoke-direct {p0, v1, p1}, Lcom/yannis/ledcard/activity/LEDBmpFragment;->getViewPagerItem(ILjava/util/ArrayList;)Landroid/widget/GridView;

    move-result-object v2

    .line 104
    iget-object v3, p0, Lcom/yannis/ledcard/activity/LEDBmpFragment;->gridViewLists:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 106
    :cond_0
    iget-object p1, p0, Lcom/yannis/ledcard/activity/LEDBmpFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v0, Lcom/yannis/ledcard/adapter/LEDBmpViewPagerAdapter;

    invoke-virtual {p0}, Lcom/yannis/ledcard/activity/LEDBmpFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/yannis/ledcard/activity/LEDBmpFragment;->gridViewLists:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/yannis/ledcard/adapter/LEDBmpViewPagerAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 107
    iget-object p1, p0, Lcom/yannis/ledcard/activity/LEDBmpFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v0, Lcom/yannis/ledcard/activity/LEDBmpFragment$1;

    invoke-direct {v0, p0}, Lcom/yannis/ledcard/activity/LEDBmpFragment$1;-><init>(Lcom/yannis/ledcard/activity/LEDBmpFragment;)V

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 124
    iget-object p1, p0, Lcom/yannis/ledcard/activity/LEDBmpFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    iget v0, p0, Lcom/yannis/ledcard/activity/LEDBmpFragment;->currentItem:I

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method

.method public static newInstance()Lcom/yannis/ledcard/activity/LEDBmpFragment;
    .locals 1

    .line 57
    new-instance v0, Lcom/yannis/ledcard/activity/LEDBmpFragment;

    invoke-direct {v0}, Lcom/yannis/ledcard/activity/LEDBmpFragment;-><init>()V

    return-object v0
.end method

.method private showNormalDialog(Lcom/yannis/ledcard/bean/LEDBmp;)V
    .locals 3

    .line 193
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 194
    invoke-virtual {p0}, Lcom/yannis/ledcard/activity/LEDBmpFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080081

    .line 195
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 196
    invoke-virtual {p0}, Lcom/yannis/ledcard/activity/LEDBmpFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0045

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 197
    invoke-virtual {p0}, Lcom/yannis/ledcard/activity/LEDBmpFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0089

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/yannis/ledcard/activity/LEDBmpFragment$4;

    invoke-direct {v2, p0, p1}, Lcom/yannis/ledcard/activity/LEDBmpFragment$4;-><init>(Lcom/yannis/ledcard/activity/LEDBmpFragment;Lcom/yannis/ledcard/bean/LEDBmp;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 206
    invoke-virtual {p0}, Lcom/yannis/ledcard/activity/LEDBmpFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0e0047

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    new-instance v1, Lcom/yannis/ledcard/activity/LEDBmpFragment$5;

    invoke-direct {v1, p0}, Lcom/yannis/ledcard/activity/LEDBmpFragment$5;-><init>(Lcom/yannis/ledcard/activity/LEDBmpFragment;)V

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 214
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 62
    instance-of v0, p1, Lcom/yannis/ledcard/activity/LEDBmpFragment$OnLEDBmpClickListener;

    if-eqz v0, :cond_0

    .line 63
    move-object v0, p1

    check-cast v0, Lcom/yannis/ledcard/activity/LEDBmpFragment$OnLEDBmpClickListener;

    iput-object v0, p0, Lcom/yannis/ledcard/activity/LEDBmpFragment;->listener:Lcom/yannis/ledcard/activity/LEDBmpFragment$OnLEDBmpClickListener;

    .line 65
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 70
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const p2, 0x7f0c003e

    const/4 p3, 0x0

    .line 75
    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090041

    .line 76
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/yannis/ledcard/widget/CirclePointIndicatorView;

    iput-object p2, p0, Lcom/yannis/ledcard/activity/LEDBmpFragment;->mCirclePointIndicatorView:Lcom/yannis/ledcard/widget/CirclePointIndicatorView;

    const p2, 0x7f090124

    .line 77
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/viewpager/widget/ViewPager;

    iput-object p2, p0, Lcom/yannis/ledcard/activity/LEDBmpFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    const-string p2, "=======onCreateView"

    const-string p3, "false"

    .line 78
    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    .line 79
    invoke-virtual {p0, p2}, Lcom/yannis/ledcard/activity/LEDBmpFragment;->refreshLEDBmpView(Z)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 0

    .line 95
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public refreshLEDBmpView(Z)V
    .locals 4

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yannis/ledcard/activity/LEDBmpFragment;->mLEDBmps:Ljava/util/ArrayList;

    .line 85
    sput-boolean p1, Lcom/yannis/ledcard/activity/LEDBmpFragment;->isEditMode:Z

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "=======refreshLED"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-virtual {p0}, Lcom/yannis/ledcard/activity/LEDBmpFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "_pix"

    const/16 v1, 0xb

    invoke-static {p1, v0, v1}, Lcom/yannis/ledcard/util/PrefUtils;->getIntFromPrefs(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    .line 88
    iget-object v0, p0, Lcom/yannis/ledcard/activity/LEDBmpFragment;->mLEDBmps:Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "matrix = ?"

    aput-object v3, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v1}, Lorg/litepal/crud/DataSupport;->where([Ljava/lang/String;)Lorg/litepal/crud/ClusterQuery;

    move-result-object p1

    const-class v1, Lcom/yannis/ledcard/bean/LEDBmp;

    invoke-virtual {p1, v1}, Lorg/litepal/crud/ClusterQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 90
    iget-object p1, p0, Lcom/yannis/ledcard/activity/LEDBmpFragment;->mLEDBmps:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/yannis/ledcard/activity/LEDBmpFragment;->initViewPager(Ljava/util/ArrayList;)V

    return-void
.end method

.method public setEditText(Landroid/widget/EditText;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/yannis/ledcard/activity/LEDBmpFragment;->editText:Landroid/widget/EditText;

    return-void
.end method

.method public setOnLEDBmpClickListener(Lcom/yannis/ledcard/activity/LEDBmpFragment$OnLEDBmpClickListener;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/yannis/ledcard/activity/LEDBmpFragment;->listener:Lcom/yannis/ledcard/activity/LEDBmpFragment$OnLEDBmpClickListener;

    return-void
.end method
