.class public Lcom/yannis/ledcard/activity/AboutActivity;
.super Lcom/yannis/ledcard/base/BaseActivity;
.source "AboutActivity.java"


# instance fields
.field enduserAgmentTv:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09010e
    .end annotation
.end field

.field mTextView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090109
    .end annotation
.end field

.field privacyPolicyTv:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090113
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/yannis/ledcard/base/BaseActivity;-><init>()V

    return-void
.end method

.method public static getLocalVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    .line 74
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 75
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 76
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 77
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string p0, "TAG"

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u672c\u8f6f\u4ef6\u7684\u7248\u672c\u53f7\u3002\u3002"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lorg/litepal/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 80
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method


# virtual methods
.method protected init()V
    .locals 0

    return-void
.end method

.method protected initData()V
    .locals 4

    .line 38
    invoke-static {p0}, Lcom/yannis/ledcard/activity/AboutActivity;->getLocalVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/yannis/ledcard/activity/AboutActivity;->mTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VersionName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected initEvent()V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected setLayoutResId()I
    .locals 1

    const v0, 0x7f0c001c

    return v0
.end method

.method public showAgreement()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f09010e
        }
    .end annotation

    const/4 v0, 0x0

    .line 59
    invoke-static {p0, v0}, Lcom/yannis/ledcard/activity/HtmlActivity;->start(Landroid/content/Context;I)V

    return-void
.end method

.method public showPolicy()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f090113
        }
    .end annotation

    const/4 v0, 0x1

    .line 64
    invoke-static {p0, v0}, Lcom/yannis/ledcard/activity/HtmlActivity;->start(Landroid/content/Context;I)V

    return-void
.end method
