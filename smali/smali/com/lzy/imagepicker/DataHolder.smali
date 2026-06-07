.class public Lcom/lzy/imagepicker/DataHolder;
.super Ljava/lang/Object;
.source "DataHolder.java"


# static fields
.field public static final DH_CURRENT_IMAGE_FOLDER_ITEMS:Ljava/lang/String; = "dh_current_image_folder_items"

.field private static mInstance:Lcom/lzy/imagepicker/DataHolder;


# instance fields
.field private data:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/lzy/imagepicker/bean/ImageItem;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lzy/imagepicker/DataHolder;->data:Ljava/util/Map;

    return-void
.end method

.method public static getInstance()Lcom/lzy/imagepicker/DataHolder;
    .locals 2

    .line 24
    sget-object v0, Lcom/lzy/imagepicker/DataHolder;->mInstance:Lcom/lzy/imagepicker/DataHolder;

    if-nez v0, :cond_1

    .line 25
    const-class v0, Lcom/lzy/imagepicker/DataHolder;

    monitor-enter v0

    .line 26
    :try_start_0
    sget-object v1, Lcom/lzy/imagepicker/DataHolder;->mInstance:Lcom/lzy/imagepicker/DataHolder;

    if-nez v1, :cond_0

    .line 27
    new-instance v1, Lcom/lzy/imagepicker/DataHolder;

    invoke-direct {v1}, Lcom/lzy/imagepicker/DataHolder;-><init>()V

    sput-object v1, Lcom/lzy/imagepicker/DataHolder;->mInstance:Lcom/lzy/imagepicker/DataHolder;

    .line 29
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 31
    :cond_1
    :goto_0
    sget-object v0, Lcom/lzy/imagepicker/DataHolder;->mInstance:Lcom/lzy/imagepicker/DataHolder;

    return-object v0
.end method


# virtual methods
.method public retrieve(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/lzy/imagepicker/DataHolder;->data:Ljava/util/Map;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/lzy/imagepicker/DataHolder;->mInstance:Lcom/lzy/imagepicker/DataHolder;

    if-eqz v1, :cond_0

    .line 48
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 46
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "\u4f60\u5fc5\u987b\u5148\u521d\u59cb\u5316"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public save(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/lzy/imagepicker/bean/ImageItem;",
            ">;)V"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/lzy/imagepicker/DataHolder;->data:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 40
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
