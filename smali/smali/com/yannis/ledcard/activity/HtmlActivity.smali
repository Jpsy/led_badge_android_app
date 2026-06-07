.class public Lcom/yannis/ledcard/activity/HtmlActivity;
.super Lcom/yannis/ledcard/base/BaseActivity;
.source "HtmlActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mWebView:Landroid/webkit/WebView;

.field private tvCenter:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/yannis/ledcard/base/BaseActivity;-><init>()V

    return-void
.end method

.method static start(Landroid/content/Context;I)V
    .locals 2

    .line 23
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yannis/ledcard/activity/HtmlActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "_TYPE"

    .line 24
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 25
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected init()V
    .locals 0

    return-void
.end method

.method protected initData()V
    .locals 4

    .line 39
    invoke-virtual {p0}, Lcom/yannis/ledcard/activity/HtmlActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "_TYPE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const v1, 0x7f090079

    .line 40
    invoke-virtual {p0, v1}, Lcom/yannis/ledcard/activity/HtmlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090117

    .line 41
    invoke-virtual {p0, v1}, Lcom/yannis/ledcard/activity/HtmlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/yannis/ledcard/activity/HtmlActivity;->tvCenter:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const v2, 0x7f0e008c

    goto :goto_0

    :cond_0
    const v2, 0x7f0e006c

    .line 42
    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f090125

    .line 43
    invoke-virtual {p0, v1}, Lcom/yannis/ledcard/activity/HtmlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/yannis/ledcard/activity/HtmlActivity;->mWebView:Landroid/webkit/WebView;

    .line 44
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 45
    iget-object v1, p0, Lcom/yannis/ledcard/activity/HtmlActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 46
    iget-object v1, p0, Lcom/yannis/ledcard/activity/HtmlActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 47
    iget-object v1, p0, Lcom/yannis/ledcard/activity/HtmlActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v3, Landroid/webkit/WebChromeClient;

    invoke-direct {v3}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 48
    iget-object v1, p0, Lcom/yannis/ledcard/activity/HtmlActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v3, Landroid/webkit/WebViewClient;

    invoke-direct {v3}, Landroid/webkit/WebViewClient;-><init>()V

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 50
    iget-object v1, p0, Lcom/yannis/ledcard/activity/HtmlActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 52
    iget-object v1, p0, Lcom/yannis/ledcard/activity/HtmlActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 54
    iget-object v1, p0, Lcom/yannis/ledcard/activity/HtmlActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 58
    iget-object v1, p0, Lcom/yannis/ledcard/activity/HtmlActivity;->mWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_1

    const-string v0, "file:///android_asset/user_agreement.html"

    goto :goto_1

    :cond_1
    const-string v0, "file:///android_asset/privacy_policy.html"

    :goto_1
    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method protected initEvent()V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 73
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090079

    if-ne p1, v0, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/yannis/ledcard/activity/HtmlActivity;->finish()V

    :cond_0
    return-void
.end method

.method protected setLayoutResId()I
    .locals 1

    const v0, 0x7f0c0026

    return v0
.end method
