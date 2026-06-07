.class public Lcom/yannis/ledcard/util/GlideImageLoader;
.super Ljava/lang/Object;
.source "GlideImageLoader.java"

# interfaces
.implements Lcom/lzy/imagepicker/loader/ImageLoader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearMemoryCache()V
    .locals 0

    return-void
.end method

.method public displayImage(Landroid/app/Activity;Ljava/lang/String;Landroid/widget/ImageView;II)V
    .locals 0

    .line 28
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    new-instance p4, Ljava/io/File;

    invoke-direct {p4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-static {p4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestManager;->load(Landroid/net/Uri;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object p1

    const p2, 0x7f080077

    .line 30
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/DrawableTypeRequest;->error(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p1

    .line 31
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/DrawableRequestBuilder;->placeholder(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p1

    sget-object p2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 32
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/DrawableRequestBuilder;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p1

    .line 33
    invoke-virtual {p1, p3}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    return-void
.end method

.method public displayImagePreview(Landroid/app/Activity;Ljava/lang/String;Landroid/widget/ImageView;II)V
    .locals 0

    .line 38
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    new-instance p4, Ljava/io/File;

    invoke-direct {p4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-static {p4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestManager;->load(Landroid/net/Uri;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object p1

    sget-object p2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 40
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p1

    .line 41
    invoke-virtual {p1, p3}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    return-void
.end method
