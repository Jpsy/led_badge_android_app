.class public Lcom/yannis/ledcard/ble/BLEManage;
.super Ljava/lang/Object;
.source "BLEManage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yannis/ledcard/ble/BLEManage$BLEManageListener;
    }
.end annotation


# static fields
.field private static REQUEST_CODE:I = 0x208

.field public static SCAN_TIME:I = 0x1388

.field private static bleAdapter:Landroid/bluetooth/BluetoothAdapter;


# instance fields
.field private context:Landroid/content/Context;

.field private handler:Landroid/os/Handler;

.field private isScanning:Z

.field private leScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

.field private listener:Lcom/yannis/ledcard/ble/BLEManage$BLEManageListener;

.field mScanCallback:Landroid/bluetooth/le/ScanCallback;

.field mScanner:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat;

.field private scanBlueDeviceArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/yannis/ledcard/ble/BLEManage;->context:Landroid/content/Context;

    .line 29
    iput-object v0, p0, Lcom/yannis/ledcard/ble/BLEManage;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    .line 30
    iput-boolean v1, p0, Lcom/yannis/ledcard/ble/BLEManage;->isScanning:Z

    .line 31
    iput-object v0, p0, Lcom/yannis/ledcard/ble/BLEManage;->listener:Lcom/yannis/ledcard/ble/BLEManage$BLEManageListener;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yannis/ledcard/ble/BLEManage;->scanBlueDeviceArray:Ljava/util/ArrayList;

    .line 80
    new-instance v0, Lcom/yannis/ledcard/ble/BLEManage$2;

    invoke-direct {v0, p0}, Lcom/yannis/ledcard/ble/BLEManage$2;-><init>(Lcom/yannis/ledcard/ble/BLEManage;)V

    iput-object v0, p0, Lcom/yannis/ledcard/ble/BLEManage;->leScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .line 35
    iput-object p1, p0, Lcom/yannis/ledcard/ble/BLEManage;->context:Landroid/content/Context;

    .line 36
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/yannis/ledcard/ble/BLEManage;->handler:Landroid/os/Handler;

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "android.hardware.bluetooth_le"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SORRY!BLE NOT SUPPORTED!"

    .line 39
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 41
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 43
    :cond_0
    iput-object p1, p0, Lcom/yannis/ledcard/ble/BLEManage;->context:Landroid/content/Context;

    const-string v0, "bluetooth"

    .line 45
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    .line 46
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    sput-object v0, Lcom/yannis/ledcard/ble/BLEManage;->bleAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_1

    const-string v0, "SORRY!YOU PHONE IS NOT SUPPORTED!"

    .line 48
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 50
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/yannis/ledcard/ble/BLEManage;)Ljava/util/ArrayList;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/yannis/ledcard/ble/BLEManage;->scanBlueDeviceArray:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$100(Lcom/yannis/ledcard/ble/BLEManage;)Lcom/yannis/ledcard/ble/BLEManage$BLEManageListener;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/yannis/ledcard/ble/BLEManage;->listener:Lcom/yannis/ledcard/ble/BLEManage$BLEManageListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/yannis/ledcard/ble/BLEManage;)Landroid/os/Handler;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/yannis/ledcard/ble/BLEManage;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method public static byte2Hex([B)Ljava/lang/String;
    .locals 6

    if-eqz p0, :cond_1

    .line 156
    array-length v0, p0

    if-lez v0, :cond_1

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 158
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-byte v4, p0, v3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 159
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v5, v2

    const-string v4, "%02X "

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 161
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "no data"

    return-object p0
.end method

.method public static setScanTime(I)V
    .locals 0

    .line 130
    sput p0, Lcom/yannis/ledcard/ble/BLEManage;->SCAN_TIME:I

    return-void
.end method


# virtual methods
.method public getScanningState()Z
    .locals 1

    .line 134
    iget-boolean v0, p0, Lcom/yannis/ledcard/ble/BLEManage;->isScanning:Z

    return v0
.end method

.method public initNewScanner()V
    .locals 1

    .line 170
    invoke-static {}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat;->getScanner()Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/yannis/ledcard/ble/BLEManage;->mScanner:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat;

    return-void
.end method

.method public isBluetoothEnable(Landroid/app/Activity;)Z
    .locals 2

    .line 102
    sget-object v0, Lcom/yannis/ledcard/ble/BLEManage;->bleAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 103
    sget-object v0, Lcom/yannis/ledcard/ble/BLEManage;->bleAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 106
    sget v1, Lcom/yannis/ledcard/ble/BLEManage;->REQUEST_CODE:I

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onRequestResult(IILandroid/content/Intent;)V
    .locals 0

    .line 122
    sget p3, Lcom/yannis/ledcard/ble/BLEManage;->REQUEST_CODE:I

    if-ne p1, p3, :cond_0

    if-nez p2, :cond_0

    .line 124
    iget-object p1, p0, Lcom/yannis/ledcard/ble/BLEManage;->context:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public setListener(Lcom/yannis/ledcard/ble/BLEManage$BLEManageListener;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/yannis/ledcard/ble/BLEManage;->listener:Lcom/yannis/ledcard/ble/BLEManage$BLEManageListener;

    return-void
.end method

.method public startScanBluetoothDevice()V
    .locals 4

    .line 58
    iget-object v0, p0, Lcom/yannis/ledcard/ble/BLEManage;->scanBlueDeviceArray:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/yannis/ledcard/ble/BLEManage;->scanBlueDeviceArray:Ljava/util/ArrayList;

    .line 61
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yannis/ledcard/ble/BLEManage;->scanBlueDeviceArray:Ljava/util/ArrayList;

    .line 62
    iget-object v0, p0, Lcom/yannis/ledcard/ble/BLEManage;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/yannis/ledcard/ble/BLEManage$1;

    invoke-direct {v1, p0}, Lcom/yannis/ledcard/ble/BLEManage$1;-><init>(Lcom/yannis/ledcard/ble/BLEManage;)V

    sget v2, Lcom/yannis/ledcard/ble/BLEManage;->SCAN_TIME:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    .line 68
    iput-boolean v0, p0, Lcom/yannis/ledcard/ble/BLEManage;->isScanning:Z

    .line 69
    sget-object v0, Lcom/yannis/ledcard/ble/BLEManage;->bleAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/yannis/ledcard/ble/BLEManage;->leScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    return-void
.end method

.method public stopScanBluetoothDevice()V
    .locals 2

    .line 73
    iget-boolean v0, p0, Lcom/yannis/ledcard/ble/BLEManage;->isScanning:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lcom/yannis/ledcard/ble/BLEManage;->isScanning:Z

    .line 75
    sget-object v0, Lcom/yannis/ledcard/ble/BLEManage;->bleAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/yannis/ledcard/ble/BLEManage;->leScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    .line 76
    iget-object v0, p0, Lcom/yannis/ledcard/ble/BLEManage;->listener:Lcom/yannis/ledcard/ble/BLEManage$BLEManageListener;

    invoke-interface {v0}, Lcom/yannis/ledcard/ble/BLEManage$BLEManageListener;->BLEManageStopScan()V

    :cond_0
    return-void
.end method
