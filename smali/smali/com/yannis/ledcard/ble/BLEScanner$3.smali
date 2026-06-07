.class Lcom/yannis/ledcard/ble/BLEScanner$3;
.super Ljava/lang/Object;
.source "BLEScanner.java"

# interfaces
.implements Lcom/karumi/dexter/listener/multi/MultiplePermissionsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yannis/ledcard/ble/BLEScanner;->openBluetooth(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionRationaleShouldBeShown(Ljava/util/List;Lcom/karumi/dexter/PermissionToken;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/karumi/dexter/listener/PermissionRequest;",
            ">;",
            "Lcom/karumi/dexter/PermissionToken;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public onPermissionsChecked(Lcom/karumi/dexter/MultiplePermissionsReport;)V
    .locals 1

    .line 274
    invoke-virtual {p1}, Lcom/karumi/dexter/MultiplePermissionsReport;->getGrantedPermissionResponses()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 275
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    .line 276
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    :cond_0
    return-void
.end method
