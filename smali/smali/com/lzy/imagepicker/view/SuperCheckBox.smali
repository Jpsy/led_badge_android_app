.class public Lcom/lzy/imagepicker/view/SuperCheckBox;
.super Landroidx/appcompat/widget/AppCompatCheckBox;
.source "SuperCheckBox.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public performClick()Z
    .locals 2

    .line 33
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatCheckBox;->performClick()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 37
    invoke-virtual {p0, v1}, Lcom/lzy/imagepicker/view/SuperCheckBox;->playSoundEffect(I)V

    :cond_0
    return v0
.end method
