.class public Lcom/lzy/imagepicker/ui/ImagePreviewActivity;
.super Lcom/lzy/imagepicker/ui/ImagePreviewBaseActivity;
.source "ImagePreviewActivity.java"

# interfaces
.implements Lcom/lzy/imagepicker/ImagePicker$OnImageSelectedListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field public static final ISORIGIN:Ljava/lang/String; = "isOrigin"


# instance fields
.field private bottomBar:Landroid/view/View;

.field private isOrigin:Z

.field private mBtnOk:Landroid/widget/Button;

.field private mCbCheck:Lcom/lzy/imagepicker/view/SuperCheckBox;

.field private mCbOrigin:Lcom/lzy/imagepicker/view/SuperCheckBox;

.field private marginView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/lzy/imagepicker/ui/ImagePreviewBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/lzy/imagepicker/ui/ImagePreviewActivity;)Lcom/lzy/imagepicker/view/SuperCheckBox;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->mCbCheck:Lcom/lzy/imagepicker/view/SuperCheckBox;

    return-object p0
.end method

.method static synthetic access$100(Lcom/lzy/imagepicker/ui/ImagePreviewActivity;)Landroid/view/View;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->marginView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcom/lzy/imagepicker/ui/ImagePreviewActivity;)Landroid/view/View;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->bottomBar:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .line 172
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 173
    iget-boolean v1, p0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->isOrigin:Z

    const-string v2, "isOrigin"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v1, 0x3ed

    .line 174
    invoke-virtual {p0, v1, v0}, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->setResult(ILandroid/content/Intent;)V

    .line 175
    invoke-virtual {p0}, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->finish()V

    .line 176
    invoke-super {p0}, Lcom/lzy/imagepicker/ui/ImagePreviewBaseActivity;->onBackPressed()V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    .line 181
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result p1

    .line 182
    sget v0, Lcom/lzy/imagepicker/R$id;->cb_origin:I

    if-ne p1, v0, :cond_2

    const/4 p1, 0x0

    if-eqz p2, :cond_1

    const-wide/16 v0, 0x0

    .line 185
    iget-object p2, p0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->selectedImages:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lzy/imagepicker/bean/ImageItem;

    .line 186
    iget-wide v2, v2, Lcom/lzy/imagepicker/bean/ImageItem;->size:J

    add-long/2addr v0, v2

    goto :goto_0

    .line 187
    :cond_0
    invoke-static {p0, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    .line 188
    iput-boolean v0, p0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->isOrigin:Z

    .line 189
    iget-object v1, p0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->mCbOrigin:Lcom/lzy/imagepicker/view/SuperCheckBox;

    sget v2, Lcom/lzy/imagepicker/R$string;->ip_origin_size:I

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, p1

    invoke-virtual {p0, v2, v0}, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/lzy/imagepicker/view/SuperCheckBox;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 191
    :cond_1
    iput-boolean p1, p0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->isOrigin:Z

    .line 192
    iget-object p1, p0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->mCbOrigin:Lcom/lzy/imagepicker/view/SuperCheckBox;

    sget p2, Lcom/lzy/imagepicker/R$string;->ip_origin:I

    invoke-virtual {p0, p2}, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/lzy/imagepicker/view/SuperCheckBox;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 150
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 151
    sget v0, Lcom/lzy/imagepicker/R$id;->btn_ok:I

    if-ne p1, v0, :cond_1

    .line 152
    iget-object p1, p0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->imagePicker:Lcom/lzy/imagepicker/ImagePicker;

    invoke-virtual {p1}, Lcom/lzy/imagepicker/ImagePicker;->getSelectedImages()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 153
    iget-object p1, p0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->mCbCheck:Lcom/lzy/imagepicker/view/SuperCheckBox;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/lzy/imagepicker/view/SuperCheckBox;->setChecked(Z)V

    .line 154
    iget-object p1, p0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->mImageItems:Ljava/util/ArrayList;

    iget v0, p0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->mCurrentPosition:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lzy/imagepicker/bean/ImageItem;

    .line 155
    iget-object v0, p0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->imagePicker:Lcom/lzy/imagepicker/ImagePicker;

    iget v1, p0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->mCurrentPosition:I

    iget-object v2, p0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->mCbCheck:Lcom/lzy/imagepicker/view/SuperCheckBox;

    invoke-virtual {v2}, Lcom/lzy/imagepicker/view/SuperCheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/lzy/imagepicker/ImagePicker;->addSelectedImageItem(ILcom/lzy/imagepicker/bean/ImageItem;Z)V

    .line 157
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 158
    iget-object v0, p0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->imagePicker:Lcom/lzy/imagepicker/ImagePicker;

    invoke-virtual {v0}, Lcom/lzy/imagepicker/ImagePicker;->getSelectedImages()Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "extra_result_items"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/16 v0, 0x3ec

    .line 159
    invoke-virtual {p0, v0, p1}, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->setResult(ILandroid/content/Intent;)V

    .line 160
    invoke-virtual {p0}, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->finish()V

    goto :goto_0

    .line 162
    :cond_1
    sget v0, Lcom/lzy/imagepicker/R$id;->btn_back:I

    if-ne p1, v0, :cond_2

    .line 163
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 164
    iget-boolean v0, p0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->isOrigin:Z

    const-string v1, "isOrigin"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v0, 0x3ed

    .line 165
    invoke-virtual {p0, v0, p1}, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->setResult(ILandroid/content/Intent;)V

    .line 166
    invoke-virtual {p0}, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->finish()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 44
    invoke-super {p0, p1}, Lcom/lzy/imagepicker/ui/ImagePreviewBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "isOrigin"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->isOrigin:Z

    .line 47
    iget-object p1, p0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->imagePicker:Lcom/lzy/imagepicker/ImagePicker;

    invoke-virtual {p1, p0}, Lcom/lzy/imagepicker/ImagePicker;->addOnImageSelectedListener(Lcom/lzy/imagepicker/ImagePicker$OnImageSelectedListener;)V

    .line 48
    sget p1, Lcom/lzy/imagepicker/R$id;->btn_ok:I

    invoke-virtual {p0, p1}, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->mBtnOk:Landroid/widget/Button;

    .line 49
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 50
    iget-object p1, p0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->mBtnOk:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    sget p1, Lcom/lzy/imagepicker/R$id;->bottom_bar:I

    invoke-virtual {p0, p1}, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->bottomBar:Landroid/view/View;

    .line 53
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 55
    sget p1, Lcom/lzy/imagepicker/R$id;->cb_check:I

    invoke-virtual {p0, p1}, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/lzy/imagepicker/view/SuperCheckBox;

    iput-object p1, p0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->mCbCheck:Lcom/lzy/imagepicker/view/SuperCheckBox;

    .line 56
    sget p1, Lcom/lzy/imagepicker/R$id;->cb_origin:I

    invoke-virtual {p0, p1}, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/lzy/imagepicker/view/SuperCheckBox;

    iput-object p1, p0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->mCbOrigin:Lcom/lzy/imagepicker/view/SuperCheckBox;

    .line 57
    sget p1, Lcom/lzy/imagepicker/R$id;->margin_bottom:I

    invoke-virtual {p0, p1}, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->marginView:Landroid/view/View;

    .line 58
    iget-object p1, p0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->mCbOrigin:Lcom/lzy/imagepicker/view/SuperCheckBox;

    sget v0, Lcom/lzy/imagepicker/R$string;->ip_origin:I

    invoke-virtual {p0, v0}, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/lzy/imagepicker/view/SuperCheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object p1, p0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->mCbOrigin:Lcom/lzy/imagepicker/view/SuperCheckBox;

    invoke-virtual {p1, p0}, Lcom/lzy/imagepicker/view/SuperCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 60
    iget-object p1, p0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->mCbOrigin:Lcom/lzy/imagepicker/view/SuperCheckBox;

    iget-boolean v0, p0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->isOrigin:Z

    invoke-virtual {p1, v0}, Lcom/lzy/imagepicker/view/SuperCheckBox;->setChecked(Z)V

    const/4 p1, 0x0

    .line 63
    invoke-virtual {p0, v1, p1, v1}, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->onImageSelected(ILcom/lzy/imagepicker/bean/ImageItem;Z)V

    .line 64
    iget-object p1, p0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->mImageItems:Ljava/util/ArrayList;

    iget v0, p0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->mCurrentPosition:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lzy/imagepicker/bean/ImageItem;

    .line 65
    iget-object v0, p0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->imagePicker:Lcom/lzy/imagepicker/ImagePicker;

    invoke-virtual {v0, p1}, Lcom/lzy/imagepicker/ImagePicker;->isSelect(Lcom/lzy/imagepicker/bean/ImageItem;)Z

    move-result p1

    .line 66
    iget-object v0, p0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->mTitleCount:Landroid/widget/TextView;

    sget v2, Lcom/lzy/imagepicker/R$string;->ip_preview_image_count:I

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    iget v5, p0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->mCurrentPosition:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    iget-object v1, p0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->mImageItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v6

    invoke-virtual {p0, v2, v4}, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v0, p0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->mCbCheck:Lcom/lzy/imagepicker/view/SuperCheckBox;

    invoke-virtual {v0, p1}, Lcom/lzy/imagepicker/view/SuperCheckBox;->setChecked(Z)V

    .line 69
    iget-object p1, p0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->mViewPager:Lcom/lzy/imagepicker/view/ViewPagerFixed;

    new-instance v0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity$1;

    invoke-direct {v0, p0}, Lcom/lzy/imagepicker/ui/ImagePreviewActivity$1;-><init>(Lcom/lzy/imagepicker/ui/ImagePreviewActivity;)V

    invoke-virtual {p1, v0}, Lcom/lzy/imagepicker/view/ViewPagerFixed;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 80
    iget-object p1, p0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->mCbCheck:Lcom/lzy/imagepicker/view/SuperCheckBox;

    new-instance v0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity$2;

    invoke-direct {v0, p0}, Lcom/lzy/imagepicker/ui/ImagePreviewActivity$2;-><init>(Lcom/lzy/imagepicker/ui/ImagePreviewActivity;)V

    invoke-virtual {p1, v0}, Lcom/lzy/imagepicker/view/SuperCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    invoke-static {p0}, Lcom/lzy/imagepicker/util/NavigationBarChangeListener;->with(Landroid/app/Activity;)Lcom/lzy/imagepicker/util/NavigationBarChangeListener;

    move-result-object p1

    new-instance v0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity$3;

    invoke-direct {v0, p0}, Lcom/lzy/imagepicker/ui/ImagePreviewActivity$3;-><init>(Lcom/lzy/imagepicker/ui/ImagePreviewActivity;)V

    invoke-virtual {p1, v0}, Lcom/lzy/imagepicker/util/NavigationBarChangeListener;->setListener(Lcom/lzy/imagepicker/util/NavigationBarChangeListener$OnSoftInputStateChangeListener;)V

    .line 109
    invoke-static {p0, v3}, Lcom/lzy/imagepicker/util/NavigationBarChangeListener;->with(Landroid/app/Activity;I)Lcom/lzy/imagepicker/util/NavigationBarChangeListener;

    move-result-object p1

    new-instance v0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity$4;

    invoke-direct {v0, p0}, Lcom/lzy/imagepicker/ui/ImagePreviewActivity$4;-><init>(Lcom/lzy/imagepicker/ui/ImagePreviewActivity;)V

    .line 110
    invoke-virtual {p1, v0}, Lcom/lzy/imagepicker/util/NavigationBarChangeListener;->setListener(Lcom/lzy/imagepicker/util/NavigationBarChangeListener$OnSoftInputStateChangeListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->imagePicker:Lcom/lzy/imagepicker/ImagePicker;

    invoke-virtual {v0, p0}, Lcom/lzy/imagepicker/ImagePicker;->removeOnImageSelectedListener(Lcom/lzy/imagepicker/ImagePicker$OnImageSelectedListener;)V

    .line 200
    invoke-super {p0}, Lcom/lzy/imagepicker/ui/ImagePreviewBaseActivity;->onDestroy()V

    return-void
.end method

.method public onImageSelected(ILcom/lzy/imagepicker/bean/ImageItem;Z)V
    .locals 4

    .line 133
    iget-object p1, p0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->imagePicker:Lcom/lzy/imagepicker/ImagePicker;

    invoke-virtual {p1}, Lcom/lzy/imagepicker/ImagePicker;->getSelectImageCount()I

    move-result p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-lez p1, :cond_0

    .line 134
    iget-object p1, p0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->mBtnOk:Landroid/widget/Button;

    sget v0, Lcom/lzy/imagepicker/R$string;->ip_select_complete:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->imagePicker:Lcom/lzy/imagepicker/ImagePicker;

    invoke-virtual {v2}, Lcom/lzy/imagepicker/ImagePicker;->getSelectImageCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, p3

    iget-object v2, p0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->imagePicker:Lcom/lzy/imagepicker/ImagePicker;

    invoke-virtual {v2}, Lcom/lzy/imagepicker/ImagePicker;->getSelectLimit()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 136
    :cond_0
    iget-object p1, p0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->mBtnOk:Landroid/widget/Button;

    sget v0, Lcom/lzy/imagepicker/R$string;->ip_complete:I

    invoke-virtual {p0, v0}, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 139
    :goto_0
    iget-object p1, p0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->mCbOrigin:Lcom/lzy/imagepicker/view/SuperCheckBox;

    invoke-virtual {p1}, Lcom/lzy/imagepicker/view/SuperCheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_2

    const-wide/16 v0, 0x0

    .line 141
    iget-object p1, p0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->selectedImages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lzy/imagepicker/bean/ImageItem;

    .line 142
    iget-wide v2, v2, Lcom/lzy/imagepicker/bean/ImageItem;->size:J

    add-long/2addr v0, v2

    goto :goto_1

    .line 143
    :cond_1
    invoke-static {p0, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    .line 144
    iget-object v0, p0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->mCbOrigin:Lcom/lzy/imagepicker/view/SuperCheckBox;

    sget v1, Lcom/lzy/imagepicker/R$string;->ip_origin_size:I

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p1, p2, p3

    invoke-virtual {p0, v1, p2}, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/lzy/imagepicker/view/SuperCheckBox;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public onImageSingleTap()V
    .locals 3

    .line 208
    iget-object v0, p0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->topBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->topBar:Landroid/view/View;

    sget v2, Lcom/lzy/imagepicker/R$anim;->top_out:I

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 210
    iget-object v0, p0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->bottomBar:Landroid/view/View;

    sget v2, Lcom/lzy/imagepicker/R$anim;->fade_out:I

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 211
    iget-object v0, p0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->topBar:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 212
    iget-object v0, p0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->bottomBar:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 213
    iget-object v0, p0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->tintManager:Lcom/lzy/imagepicker/view/SystemBarTintManager;

    invoke-virtual {v0, v1}, Lcom/lzy/imagepicker/view/SystemBarTintManager;->setStatusBarTintResource(I)V

    goto :goto_0

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->topBar:Landroid/view/View;

    sget v2, Lcom/lzy/imagepicker/R$anim;->top_in:I

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 218
    iget-object v0, p0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->bottomBar:Landroid/view/View;

    sget v2, Lcom/lzy/imagepicker/R$anim;->fade_in:I

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 219
    iget-object v0, p0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->topBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->bottomBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 221
    iget-object v0, p0, Lcom/lzy/imagepicker/ui/ImagePreviewActivity;->tintManager:Lcom/lzy/imagepicker/view/SystemBarTintManager;

    sget v1, Lcom/lzy/imagepicker/R$color;->ip_color_primary_dark:I

    invoke-virtual {v0, v1}, Lcom/lzy/imagepicker/view/SystemBarTintManager;->setStatusBarTintResource(I)V

    :goto_0
    return-void
.end method
