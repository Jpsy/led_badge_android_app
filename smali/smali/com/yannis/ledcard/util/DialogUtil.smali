.class public Lcom/yannis/ledcard/util/DialogUtil;
.super Ljava/lang/Object;
.source "DialogUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yannis/ledcard/util/DialogUtil$OnLEDBmpViewOptListener;,
        Lcom/yannis/ledcard/util/DialogUtil$OnColorSelectListener;,
        Lcom/yannis/ledcard/util/DialogUtil$OnWheelViewSelectListener;,
        Lcom/yannis/ledcard/util/DialogUtil$DialogMode;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getChoiceColorDialog(Landroid/content/Context;Lcom/yannis/ledcard/util/DialogUtil$OnColorSelectListener;)Landroid/app/Dialog;
    .locals 3

    .line 112
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f0f01f9

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x1

    .line 113
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    const v1, 0x7f0c0039

    .line 114
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 115
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x50

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    .line 116
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x7f0f01fa

    invoke-virtual {v1, v2}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 117
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    move-object v2, p0

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const v1, 0x7f090097

    .line 118
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    .line 119
    new-instance v2, Lcom/yannis/ledcard/adapter/ColorChoiceAdapter;

    invoke-direct {v2, p0}, Lcom/yannis/ledcard/adapter/ColorChoiceAdapter;-><init>(Landroid/content/Context;)V

    .line 120
    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    const p0, 0x7f090032

    .line 121
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    new-instance v2, Lcom/yannis/ledcard/util/DialogUtil$3;

    invoke-direct {v2, v0}, Lcom/yannis/ledcard/util/DialogUtil$3;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    new-instance p0, Lcom/yannis/ledcard/util/DialogUtil$4;

    invoke-direct {p0, p1, v0}, Lcom/yannis/ledcard/util/DialogUtil$4;-><init>(Lcom/yannis/ledcard/util/DialogUtil$OnColorSelectListener;Landroid/app/Dialog;)V

    invoke-virtual {v1, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 138
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-object v0
.end method

.method public static getMsgDialog(Landroid/content/Context;)Landroid/app/Dialog;
    .locals 2

    .line 147
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f0f01f9

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 p0, 0x0

    .line 148
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setCancelable(Z)V

    const p0, 0x7f0c003c

    .line 149
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setContentView(I)V

    .line 150
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 151
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const v1, 0x7f0f01fa

    invoke-virtual {p0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    return-object v0
.end method

.method public static initDataByDialogMode(Lcom/yannis/ledcard/widget/WheelView;II)V
    .locals 3

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_1

    :cond_0
    const-string p1, "11"

    .line 95
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "12"

    .line 96
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "16"

    .line 97
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 84
    :cond_1
    invoke-virtual {p0}, Lcom/yannis/ledcard/widget/WheelView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/high16 v1, 0x7f030000

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge p1, v1, :cond_3

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 103
    :cond_3
    :goto_1
    invoke-virtual {p0, v0}, Lcom/yannis/ledcard/widget/WheelView;->setData(Ljava/util/ArrayList;)V

    .line 104
    invoke-virtual {p0, p2}, Lcom/yannis/ledcard/widget/WheelView;->setDefault(I)V

    return-void
.end method

.method public static showEidtLedViewDialog(Landroid/content/Context;Lcom/yannis/ledcard/bean/LEDBmp;Lcom/yannis/ledcard/util/DialogUtil$OnLEDBmpViewOptListener;)Landroid/app/Dialog;
    .locals 11

    .line 156
    new-instance v6, Landroid/app/Dialog;

    const v0, 0x7f0f01f9

    invoke-direct {v6, p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x1

    .line 157
    invoke-virtual {v6, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    const v1, 0x7f0c003b

    .line 158
    invoke-virtual {v6, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 159
    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    .line 160
    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    move-object v2, p0

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const v1, 0x7f09008a

    .line 162
    invoke-virtual {v6, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/yannis/ledcard/widget/LEDView;

    .line 163
    invoke-virtual {p1}, Lcom/yannis/ledcard/bean/LEDBmp;->getContent()Ljava/lang/String;

    move-result-object v8

    .line 164
    invoke-virtual {p1}, Lcom/yannis/ledcard/bean/LEDBmp;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/yannis/ledcard/widget/LEDView;->setLEDData(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v7, v0}, Lcom/yannis/ledcard/widget/LEDView;->setIsCanTouch(Z)V

    const v0, 0x7f09002c

    .line 166
    invoke-virtual {v6, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    new-instance v10, Lcom/yannis/ledcard/util/DialogUtil$5;

    move-object v0, v10

    move-object v1, p1

    move-object v2, v7

    move-object v3, p0

    move-object v4, p2

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/yannis/ledcard/util/DialogUtil$5;-><init>(Lcom/yannis/ledcard/bean/LEDBmp;Lcom/yannis/ledcard/widget/LEDView;Landroid/content/Context;Lcom/yannis/ledcard/util/DialogUtil$OnLEDBmpViewOptListener;Landroid/app/Dialog;)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p0, 0x7f090029

    .line 186
    invoke-virtual {v6, p0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    new-instance v0, Lcom/yannis/ledcard/util/DialogUtil$6;

    invoke-direct {v0, p1, p2, v6}, Lcom/yannis/ledcard/util/DialogUtil$6;-><init>(Lcom/yannis/ledcard/bean/LEDBmp;Lcom/yannis/ledcard/util/DialogUtil$OnLEDBmpViewOptListener;Landroid/app/Dialog;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p0, 0x7f090081

    .line 198
    invoke-virtual {v6, p0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    new-instance p1, Lcom/yannis/ledcard/util/DialogUtil$7;

    invoke-direct {p1, v7, v8}, Lcom/yannis/ledcard/util/DialogUtil$7;-><init>(Lcom/yannis/ledcard/widget/LEDView;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p0, 0x7f090082

    .line 205
    invoke-virtual {v6, p0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    new-instance p1, Lcom/yannis/ledcard/util/DialogUtil$8;

    invoke-direct {p1, v7}, Lcom/yannis/ledcard/util/DialogUtil$8;-><init>(Lcom/yannis/ledcard/widget/LEDView;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p0, 0x7f09007b

    .line 212
    invoke-virtual {v6, p0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    new-instance p1, Lcom/yannis/ledcard/util/DialogUtil$9;

    invoke-direct {p1, v7}, Lcom/yannis/ledcard/util/DialogUtil$9;-><init>(Lcom/yannis/ledcard/widget/LEDView;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    return-object v6
.end method

.method public static showWheelViewDialog(Landroid/content/Context;IILjava/lang/String;Lcom/yannis/ledcard/util/DialogUtil$OnWheelViewSelectListener;)V
    .locals 3

    .line 41
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f0f01f9

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x1

    .line 42
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    const v1, 0x7f0c003d

    .line 43
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 44
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x50

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    .line 45
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x7f0f01fa

    invoke-virtual {v1, v2}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 46
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getWidth()I

    move-result p0

    iput p0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const p0, 0x7f090126

    .line 47
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/yannis/ledcard/widget/WheelView;

    const v1, 0x7f090127

    .line 48
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 49
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 50
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/yannis/ledcard/util/DialogUtil;->initDataByDialogMode(Lcom/yannis/ledcard/widget/WheelView;II)V

    const p1, 0x7f090032

    .line 53
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/yannis/ledcard/util/DialogUtil$1;

    invoke-direct {p2, v0}, Lcom/yannis/ledcard/util/DialogUtil$1;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0900ad

    .line 61
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/yannis/ledcard/util/DialogUtil$2;

    invoke-direct {p2, p4, p0, v0}, Lcom/yannis/ledcard/util/DialogUtil$2;-><init>(Lcom/yannis/ledcard/util/DialogUtil$OnWheelViewSelectListener;Lcom/yannis/ledcard/widget/WheelView;Landroid/app/Dialog;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
