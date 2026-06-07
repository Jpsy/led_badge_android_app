.class public interface abstract Lcom/lzy/imagepicker/ImageDataSource$OnImagesLoadedListener;
.super Ljava/lang/Object;
.source "ImageDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzy/imagepicker/ImageDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnImagesLoadedListener"
.end annotation


# virtual methods
.method public abstract onImagesLoaded(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lzy/imagepicker/bean/ImageFolder;",
            ">;)V"
        }
    .end annotation
.end method
