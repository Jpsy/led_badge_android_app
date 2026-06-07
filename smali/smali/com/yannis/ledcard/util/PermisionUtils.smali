.class public Lcom/yannis/ledcard/util/PermisionUtils;
.super Ljava/lang/Object;
.source "PermisionUtils.java"


# static fields
.field private static PERMISSIONS_STORAGE:[Ljava/lang/String; = null

.field private static final REQUEST_EXTERNAL_STORAGE:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    .line 17
    sput-object v0, Lcom/yannis/ledcard/util/PermisionUtils;->PERMISSIONS_STORAGE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static verifyStoragePermissions(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 30
    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    sget-object v0, Lcom/yannis/ledcard/util/PermisionUtils;->PERMISSIONS_STORAGE:[Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
