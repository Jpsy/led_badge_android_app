.class public final Lcat/ereza/customactivityoncrash/activity/DefaultErrorActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "DefaultErrorActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcat/ereza/customactivityoncrash/activity/DefaultErrorActivity;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcat/ereza/customactivityoncrash/activity/DefaultErrorActivity;->copyErrorToClipboard()V

    return-void
.end method

.method private copyErrorToClipboard()V
    .locals 3

    .line 127
    invoke-virtual {p0}, Lcat/ereza/customactivityoncrash/activity/DefaultErrorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash;->getAllErrorDetailsFromIntent(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "clipboard"

    .line 129
    invoke-virtual {p0, v1}, Lcat/ereza/customactivityoncrash/activity/DefaultErrorActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    if-eqz v1, :cond_0

    .line 133
    sget v2, Lcat/ereza/customactivityoncrash/R$string;->customactivityoncrash_error_activity_error_details_clipboard_label:I

    invoke-virtual {p0, v2}, Lcat/ereza/customactivityoncrash/activity/DefaultErrorActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 134
    invoke-virtual {v1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 135
    sget v0, Lcat/ereza/customactivityoncrash/R$string;->customactivityoncrash_error_activity_error_details_copied:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 45
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    sget-object p1, Lcat/ereza/customactivityoncrash/R$styleable;->AppCompatTheme:[I

    invoke-virtual {p0, p1}, Lcat/ereza/customactivityoncrash/activity/DefaultErrorActivity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 50
    sget v0, Lcat/ereza/customactivityoncrash/R$styleable;->AppCompatTheme_windowActionBar:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    sget v0, Lcat/ereza/customactivityoncrash/R$style;->Theme_AppCompat_Light_DarkActionBar:I

    invoke-virtual {p0, v0}, Lcat/ereza/customactivityoncrash/activity/DefaultErrorActivity;->setTheme(I)V

    .line 53
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 55
    sget p1, Lcat/ereza/customactivityoncrash/R$layout;->customactivityoncrash_default_error_activity:I

    invoke-virtual {p0, p1}, Lcat/ereza/customactivityoncrash/activity/DefaultErrorActivity;->setContentView(I)V

    .line 61
    sget p1, Lcat/ereza/customactivityoncrash/R$id;->customactivityoncrash_error_activity_restart_button:I

    invoke-virtual {p0, p1}, Lcat/ereza/customactivityoncrash/activity/DefaultErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 63
    invoke-virtual {p0}, Lcat/ereza/customactivityoncrash/activity/DefaultErrorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash;->getConfigFromIntent(Landroid/content/Intent;)Lcat/ereza/customactivityoncrash/config/CaocConfig;

    move-result-object v0

    if-nez v0, :cond_1

    .line 67
    invoke-virtual {p0}, Lcat/ereza/customactivityoncrash/activity/DefaultErrorActivity;->finish()V

    return-void

    .line 71
    :cond_1
    invoke-virtual {v0}, Lcat/ereza/customactivityoncrash/config/CaocConfig;->isShowRestartButton()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcat/ereza/customactivityoncrash/config/CaocConfig;->getRestartActivityClass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 72
    sget v1, Lcat/ereza/customactivityoncrash/R$string;->customactivityoncrash_error_activity_restart_app:I

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(I)V

    .line 73
    new-instance v1, Lcat/ereza/customactivityoncrash/activity/DefaultErrorActivity$1;

    invoke-direct {v1, p0, v0}, Lcat/ereza/customactivityoncrash/activity/DefaultErrorActivity$1;-><init>(Lcat/ereza/customactivityoncrash/activity/DefaultErrorActivity;Lcat/ereza/customactivityoncrash/config/CaocConfig;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 80
    :cond_2
    new-instance v1, Lcat/ereza/customactivityoncrash/activity/DefaultErrorActivity$2;

    invoke-direct {v1, p0, v0}, Lcat/ereza/customactivityoncrash/activity/DefaultErrorActivity$2;-><init>(Lcat/ereza/customactivityoncrash/activity/DefaultErrorActivity;Lcat/ereza/customactivityoncrash/config/CaocConfig;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    :goto_0
    sget p1, Lcat/ereza/customactivityoncrash/R$id;->customactivityoncrash_error_activity_more_info_button:I

    invoke-virtual {p0, p1}, Lcat/ereza/customactivityoncrash/activity/DefaultErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 90
    invoke-virtual {v0}, Lcat/ereza/customactivityoncrash/config/CaocConfig;->isShowErrorDetails()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 91
    new-instance v1, Lcat/ereza/customactivityoncrash/activity/DefaultErrorActivity$3;

    invoke-direct {v1, p0}, Lcat/ereza/customactivityoncrash/activity/DefaultErrorActivity$3;-><init>(Lcat/ereza/customactivityoncrash/activity/DefaultErrorActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_3
    const/16 v1, 0x8

    .line 115
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 118
    :goto_1
    invoke-virtual {v0}, Lcat/ereza/customactivityoncrash/config/CaocConfig;->getErrorDrawable()Ljava/lang/Integer;

    move-result-object p1

    .line 119
    sget v0, Lcat/ereza/customactivityoncrash/R$id;->customactivityoncrash_error_activity_image:I

    invoke-virtual {p0, v0}, Lcat/ereza/customactivityoncrash/activity/DefaultErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz p1, :cond_4

    .line 122
    invoke-virtual {p0}, Lcat/ereza/customactivityoncrash/activity/DefaultErrorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0}, Lcat/ereza/customactivityoncrash/activity/DefaultErrorActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-static {v1, p1, v2}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    return-void
.end method
