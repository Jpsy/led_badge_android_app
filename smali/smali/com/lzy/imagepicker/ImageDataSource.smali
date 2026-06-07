.class public Lcom/lzy/imagepicker/ImageDataSource;
.super Ljava/lang/Object;
.source "ImageDataSource.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzy/imagepicker/ImageDataSource$OnImagesLoadedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field public static final LOADER_ALL:I = 0x0

.field public static final LOADER_CATEGORY:I = 0x1


# instance fields
.field private final IMAGE_PROJECTION:[Ljava/lang/String;

.field private activity:Landroidx/fragment/app/FragmentActivity;

.field private imageFolders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/lzy/imagepicker/bean/ImageFolder;",
            ">;"
        }
    .end annotation
.end field

.field private loadedListener:Lcom/lzy/imagepicker/ImageDataSource$OnImagesLoadedListener;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Lcom/lzy/imagepicker/ImageDataSource$OnImagesLoadedListener;)V
    .locals 5

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_display_name"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "_data"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v4, "_size"

    aput-object v4, v0, v1

    const/4 v1, 0x3

    const-string v4, "width"

    aput-object v4, v0, v1

    const/4 v1, 0x4

    const-string v4, "height"

    aput-object v4, v0, v1

    const/4 v1, 0x5

    const-string v4, "mime_type"

    aput-object v4, v0, v1

    const/4 v1, 0x6

    const-string v4, "date_added"

    aput-object v4, v0, v1

    .line 31
    iput-object v0, p0, Lcom/lzy/imagepicker/ImageDataSource;->IMAGE_PROJECTION:[Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzy/imagepicker/ImageDataSource;->imageFolders:Ljava/util/ArrayList;

    .line 50
    iput-object p1, p0, Lcom/lzy/imagepicker/ImageDataSource;->activity:Landroidx/fragment/app/FragmentActivity;

    .line 51
    iput-object p3, p0, Lcom/lzy/imagepicker/ImageDataSource;->loadedListener:Lcom/lzy/imagepicker/ImageDataSource$OnImagesLoadedListener;

    .line 53
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object p1

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 55
    invoke-virtual {p1, v2, p2, p0}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    goto :goto_0

    .line 58
    :cond_0
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string v0, "path"

    .line 59
    invoke-virtual {p3, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p1, v3, p3, p0}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    :goto_0
    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/loader/content/Loader<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    const-string v2, " DESC"

    const/4 v3, 0x6

    if-nez v1, :cond_0

    .line 69
    new-instance v11, Landroidx/loader/content/CursorLoader;

    iget-object v5, v0, Lcom/lzy/imagepicker/ImageDataSource;->activity:Landroidx/fragment/app/FragmentActivity;

    sget-object v6, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v7, v0, Lcom/lzy/imagepicker/ImageDataSource;->IMAGE_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v0, Lcom/lzy/imagepicker/ImageDataSource;->IMAGE_PROJECTION:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v4, v11

    invoke-direct/range {v4 .. v10}, Landroidx/loader/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    .line 72
    new-instance v11, Landroidx/loader/content/CursorLoader;

    iget-object v13, v0, Lcom/lzy/imagepicker/ImageDataSource;->activity:Landroidx/fragment/app/FragmentActivity;

    sget-object v14, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v15, v0, Lcom/lzy/imagepicker/ImageDataSource;->IMAGE_PROJECTION:[Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/lzy/imagepicker/ImageDataSource;->IMAGE_PROJECTION:[Ljava/lang/String;

    aget-object v4, v5, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " like \'%"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "path"

    move-object/from16 v5, p2

    invoke-virtual {v5, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "%\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/lzy/imagepicker/ImageDataSource;->IMAGE_PROJECTION:[Ljava/lang/String;

    aget-object v3, v4, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object v12, v11

    invoke-direct/range {v12 .. v18}, Landroidx/loader/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v11
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .line 79
    iget-object p1, p0, Lcom/lzy/imagepicker/ImageDataSource;->imageFolders:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    if-eqz p2, :cond_4

    .line 81
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 82
    :cond_0
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 84
    iget-object v0, p0, Lcom/lzy/imagepicker/ImageDataSource;->IMAGE_PROJECTION:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/lzy/imagepicker/ImageDataSource;->IMAGE_PROJECTION:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 87
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    goto :goto_0

    .line 92
    :cond_1
    iget-object v2, p0, Lcom/lzy/imagepicker/ImageDataSource;->IMAGE_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 93
    iget-object v4, p0, Lcom/lzy/imagepicker/ImageDataSource;->IMAGE_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 94
    iget-object v5, p0, Lcom/lzy/imagepicker/ImageDataSource;->IMAGE_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x4

    aget-object v5, v5, v6

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 95
    iget-object v6, p0, Lcom/lzy/imagepicker/ImageDataSource;->IMAGE_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x5

    aget-object v6, v6, v7

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 96
    iget-object v7, p0, Lcom/lzy/imagepicker/ImageDataSource;->IMAGE_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x6

    aget-object v7, v7, v8

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 98
    new-instance v9, Lcom/lzy/imagepicker/bean/ImageItem;

    invoke-direct {v9}, Lcom/lzy/imagepicker/bean/ImageItem;-><init>()V

    .line 99
    iput-object v0, v9, Lcom/lzy/imagepicker/bean/ImageItem;->name:Ljava/lang/String;

    .line 100
    iput-object v1, v9, Lcom/lzy/imagepicker/bean/ImageItem;->path:Ljava/lang/String;

    .line 101
    iput-wide v2, v9, Lcom/lzy/imagepicker/bean/ImageItem;->size:J

    .line 102
    iput v4, v9, Lcom/lzy/imagepicker/bean/ImageItem;->width:I

    .line 103
    iput v5, v9, Lcom/lzy/imagepicker/bean/ImageItem;->height:I

    .line 104
    iput-object v6, v9, Lcom/lzy/imagepicker/bean/ImageItem;->mimeType:Ljava/lang/String;

    .line 105
    iput-wide v7, v9, Lcom/lzy/imagepicker/bean/ImageItem;->addTime:J

    .line 106
    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 110
    new-instance v1, Lcom/lzy/imagepicker/bean/ImageFolder;

    invoke-direct {v1}, Lcom/lzy/imagepicker/bean/ImageFolder;-><init>()V

    .line 111
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/lzy/imagepicker/bean/ImageFolder;->name:Ljava/lang/String;

    .line 112
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/lzy/imagepicker/bean/ImageFolder;->path:Ljava/lang/String;

    .line 114
    iget-object v0, p0, Lcom/lzy/imagepicker/ImageDataSource;->imageFolders:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 116
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    iput-object v9, v1, Lcom/lzy/imagepicker/bean/ImageFolder;->cover:Lcom/lzy/imagepicker/bean/ImageItem;

    .line 118
    iput-object v0, v1, Lcom/lzy/imagepicker/bean/ImageFolder;->images:Ljava/util/ArrayList;

    .line 119
    iget-object v0, p0, Lcom/lzy/imagepicker/ImageDataSource;->imageFolders:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 121
    :cond_2
    iget-object v0, p0, Lcom/lzy/imagepicker/ImageDataSource;->imageFolders:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzy/imagepicker/bean/ImageFolder;

    iget-object v0, v0, Lcom/lzy/imagepicker/bean/ImageFolder;->images:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 125
    :cond_3
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result p2

    if-lez p2, :cond_4

    .line 127
    new-instance p2, Lcom/lzy/imagepicker/bean/ImageFolder;

    invoke-direct {p2}, Lcom/lzy/imagepicker/bean/ImageFolder;-><init>()V

    .line 128
    iget-object v0, p0, Lcom/lzy/imagepicker/ImageDataSource;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/lzy/imagepicker/R$string;->ip_all_images:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/lzy/imagepicker/bean/ImageFolder;->name:Ljava/lang/String;

    const-string v0, "/"

    .line 129
    iput-object v0, p2, Lcom/lzy/imagepicker/bean/ImageFolder;->path:Ljava/lang/String;

    .line 130
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzy/imagepicker/bean/ImageItem;

    iput-object v0, p2, Lcom/lzy/imagepicker/bean/ImageFolder;->cover:Lcom/lzy/imagepicker/bean/ImageItem;

    .line 131
    iput-object p1, p2, Lcom/lzy/imagepicker/bean/ImageFolder;->images:Ljava/util/ArrayList;

    .line 132
    iget-object p1, p0, Lcom/lzy/imagepicker/ImageDataSource;->imageFolders:Ljava/util/ArrayList;

    invoke-virtual {p1, v1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 137
    :cond_4
    invoke-static {}, Lcom/lzy/imagepicker/ImagePicker;->getInstance()Lcom/lzy/imagepicker/ImagePicker;

    move-result-object p1

    iget-object p2, p0, Lcom/lzy/imagepicker/ImageDataSource;->imageFolders:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Lcom/lzy/imagepicker/ImagePicker;->setImageFolders(Ljava/util/List;)V

    .line 138
    iget-object p1, p0, Lcom/lzy/imagepicker/ImageDataSource;->loadedListener:Lcom/lzy/imagepicker/ImageDataSource$OnImagesLoadedListener;

    iget-object p2, p0, Lcom/lzy/imagepicker/ImageDataSource;->imageFolders:Ljava/util/ArrayList;

    invoke-interface {p1, p2}, Lcom/lzy/imagepicker/ImageDataSource$OnImagesLoadedListener;->onImagesLoaded(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 27
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/lzy/imagepicker/ImageDataSource;->onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .line 143
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "--------"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
