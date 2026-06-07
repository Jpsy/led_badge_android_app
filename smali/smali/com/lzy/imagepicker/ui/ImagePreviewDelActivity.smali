.class public Lcom/lzy/imagepicker/ui/ImagePreviewDelActivity;
.super Lcom/lzy/imagepicker/ui/ImagePreviewBaseActivity;
.source "ImagePreviewDelActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/lzy/imagepicker/ui/ImagePreviewBaseActivity;-><init>()V

    return-void
.end method

.method private showDeleteDialog()V
    .locals 3

    .line 72
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u63d0\u793a"

    .line 73
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    const-string v1, "\u8981\u5220\u9664\u8fd9\u5f20\u7167\u7247\u5417\uff1f"

    .line 74
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    const-string v1, "\u53d6\u6d88"

    const/4 v2, 0x0

    .line 75
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 76
    new-instance v1, Lcom/lzy/imagepicker/ui/ImagePreviewDelActivity$3;

    invoke-direct {v1, p0}, Lcom/lzy/imagepicker/ui/ImagePreviewDelActivity$3;-><init>(Lcom/lzy/imagepicker/ui/ImagePreviewDelActivity;)V

    const-string v2, "\u786e\u5b9a"

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 90
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .line 95
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 97
    iget-object v1, p0, Lcom/lzy/imagepicker/ui/ImagePreviewDelActivity;->mImageItems:Ljava/util/ArrayList;

    const-string v2, "extra_image_items"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/16 v1, 0x3ed

    .line 98
    invoke-virtual {p0, v1, v0}, Lcom/lzy/imagepicker/ui/ImagePreviewDelActivity;->setResult(ILandroid/content/Intent;)V

    .line 99
    invoke-virtual {p0}, Lcom/lzy/imagepicker/ui/ImagePreviewDelActivity;->finish()V

    .line 100
    invoke-super {p0}, Lcom/lzy/imagepicker/ui/ImagePreviewBaseActivity;->onBackPressed()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 63
    sget v0, Lcom/lzy/imagepicker/R$id;->btn_del:I

    if-ne p1, v0, :cond_0

    .line 64
    invoke-direct {p0}, Lcom/lzy/imagepicker/ui/ImagePreviewDelActivity;->showDeleteDialog()V

    goto :goto_0

    .line 65
    :cond_0
    sget v0, Lcom/lzy/imagepicker/R$id;->btn_back:I

    if-ne p1, v0, :cond_1

    .line 66
    invoke-virtual {p0}, Lcom/lzy/imagepicker/ui/ImagePreviewDelActivity;->onBackPressed()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 30
    invoke-super {p0, p1}, Lcom/lzy/imagepicker/ui/ImagePreviewBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    sget p1, Lcom/lzy/imagepicker/R$id;->btn_del:I

    invoke-virtual {p0, p1}, Lcom/lzy/imagepicker/ui/ImagePreviewDelActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 33
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    .line 34
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 35
    iget-object p1, p0, Lcom/lzy/imagepicker/ui/ImagePreviewDelActivity;->topBar:Landroid/view/View;

    sget v1, Lcom/lzy/imagepicker/R$id;->btn_back:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    iget-object p1, p0, Lcom/lzy/imagepicker/ui/ImagePreviewDelActivity;->mTitleCount:Landroid/widget/TextView;

    sget v1, Lcom/lzy/imagepicker/R$string;->ip_preview_image_count:I

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    iget v4, p0, Lcom/lzy/imagepicker/ui/ImagePreviewDelActivity;->mCurrentPosition:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    iget-object v0, p0, Lcom/lzy/imagepicker/ui/ImagePreviewDelActivity;->mImageItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-virtual {p0, v1, v3}, Lcom/lzy/imagepicker/ui/ImagePreviewDelActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    iget-object p1, p0, Lcom/lzy/imagepicker/ui/ImagePreviewDelActivity;->mViewPager:Lcom/lzy/imagepicker/view/ViewPagerFixed;

    new-instance v0, Lcom/lzy/imagepicker/ui/ImagePreviewDelActivity$1;

    invoke-direct {v0, p0}, Lcom/lzy/imagepicker/ui/ImagePreviewDelActivity$1;-><init>(Lcom/lzy/imagepicker/ui/ImagePreviewDelActivity;)V

    invoke-virtual {p1, v0}, Lcom/lzy/imagepicker/view/ViewPagerFixed;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 46
    invoke-static {p0, v2}, Lcom/lzy/imagepicker/util/NavigationBarChangeListener;->with(Landroid/app/Activity;I)Lcom/lzy/imagepicker/util/NavigationBarChangeListener;

    move-result-object p1

    new-instance v0, Lcom/lzy/imagepicker/ui/ImagePreviewDelActivity$2;

    invoke-direct {v0, p0}, Lcom/lzy/imagepicker/ui/ImagePreviewDelActivity$2;-><init>(Lcom/lzy/imagepicker/ui/ImagePreviewDelActivity;)V

    .line 47
    invoke-virtual {p1, v0}, Lcom/lzy/imagepicker/util/NavigationBarChangeListener;->setListener(Lcom/lzy/imagepicker/util/NavigationBarChangeListener$OnSoftInputStateChangeListener;)V

    return-void
.end method

.method public onImageSingleTap()V
    .locals 3

    .line 106
    iget-object v0, p0, Lcom/lzy/imagepicker/ui/ImagePreviewDelActivity;->topBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/lzy/imagepicker/ui/ImagePreviewDelActivity;->topBar:Landroid/view/View;

    sget v2, Lcom/lzy/imagepicker/R$anim;->top_out:I

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 108
    iget-object v0, p0, Lcom/lzy/imagepicker/ui/ImagePreviewDelActivity;->topBar:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lcom/lzy/imagepicker/ui/ImagePreviewDelActivity;->tintManager:Lcom/lzy/imagepicker/view/SystemBarTintManager;

    invoke-virtual {v0, v1}, Lcom/lzy/imagepicker/view/SystemBarTintManager;->setStatusBarTintResource(I)V

    goto :goto_0

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/lzy/imagepicker/ui/ImagePreviewDelActivity;->topBar:Landroid/view/View;

    sget v2, Lcom/lzy/imagepicker/R$anim;->top_in:I

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 114
    iget-object v0, p0, Lcom/lzy/imagepicker/ui/ImagePreviewDelActivity;->topBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lcom/lzy/imagepicker/ui/ImagePreviewDelActivity;->tintManager:Lcom/lzy/imagepicker/view/SystemBarTintManager;

    sget v1, Lcom/lzy/imagepicker/R$color;->ip_color_primary_dark:I

    invoke-virtual {v0, v1}, Lcom/lzy/imagepicker/view/SystemBarTintManager;->setStatusBarTintResource(I)V

    :goto_0
    return-void
.end method
