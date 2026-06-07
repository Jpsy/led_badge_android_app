.class public Lcom/yannis/ledcard/ble/BLEScanner;
.super Ljava/lang/Object;
.source "BLEScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yannis/ledcard/ble/BLEScanner$OnDeviceScanListener;,
        Lcom/yannis/ledcard/ble/BLEScanner$BLEScannerHolder;
    }
.end annotation


# static fields
.field private static REQUEST_CODE:I = 0x208

.field public static SCAN_TIME:I = 0x1388


# instance fields
.field private context:Landroid/app/Application;

.field private handler:Landroid/os/Handler;

.field isScanning:Z

.field private listener:Lcom/yannis/ledcard/ble/BLEScanner$OnDeviceScanListener;

.field mBAdapter:Landroid/bluetooth/BluetoothAdapter;

.field mBManager:Landroid/bluetooth/BluetoothManager;

.field mScanCallback:Lno/nordicsemi/android/support/v18/scanner/ScanCallback;

.field mScanFilter:Lno/nordicsemi/android/support/v18/scanner/ScanFilter;

.field mScanSettings:Lno/nordicsemi/android/support/v18/scanner/ScanSettings;

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

.field private scanDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yannis/ledcard/ble/ScanDevice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcom/yannis/ledcard/ble/BLEScanner;->context:Landroid/app/Application;

    .line 59
    iput-object v0, p0, Lcom/yannis/ledcard/ble/BLEScanner;->listener:Lcom/yannis/ledcard/ble/BLEScanner$OnDeviceScanListener;

    const/4 v1, 0x0

    .line 62
    iput-boolean v1, p0, Lcom/yannis/ledcard/ble/BLEScanner;->isScanning:Z

    .line 64
    iput-object v0, p0, Lcom/yannis/ledcard/ble/BLEScanner;->handler:Landroid/os/Handler;

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yannis/ledcard/ble/BLEScanner;->scanBlueDeviceArray:Ljava/util/ArrayList;

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yannis/ledcard/ble/BLEScanner;->scanDevices:Ljava/util/List;

    return-void
.end method

.method static synthetic access$100(Lcom/yannis/ledcard/ble/BLEScanner;)Ljava/util/List;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/yannis/ledcard/ble/BLEScanner;->scanDevices:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/yannis/ledcard/ble/BLEScanner;)Landroid/os/Handler;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/yannis/ledcard/ble/BLEScanner;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/yannis/ledcard/ble/BLEScanner;)Lcom/yannis/ledcard/ble/BLEScanner$OnDeviceScanListener;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/yannis/ledcard/ble/BLEScanner;->listener:Lcom/yannis/ledcard/ble/BLEScanner$OnDeviceScanListener;

    return-object p0
.end method

.method public static getInstance()Lcom/yannis/ledcard/ble/BLEScanner;
    .locals 1

    .line 74
    invoke-static {}, Lcom/yannis/ledcard/ble/BLEScanner$BLEScannerHolder;->access$000()Lcom/yannis/ledcard/ble/BLEScanner;

    move-result-object v0

    return-object v0
.end method

.method public static openBluetooth(Landroid/app/Activity;)V
    .locals 3

    const-string v0, "bluetooth"

    .line 238
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    .line 239
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 240
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 241
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_0

    .line 242
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p0

    .line 243
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    goto :goto_1

    :cond_0
    const-string v0, "android.permission.BLUETOOTH_SCAN"

    .line 245
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 248
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 250
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 253
    :cond_2
    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "BLUETOOTH_SCAN permission is denied"

    .line 257
    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 259
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 260
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.BLUETOOTH_ADVERTISE"

    .line 261
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.BLUETOOTH_CONNECT"

    .line 262
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    invoke-static {p0}, Lcom/karumi/dexter/Dexter;->withContext(Landroid/content/Context;)Lcom/karumi/dexter/DexterBuilder$Permission;

    move-result-object p0

    .line 264
    invoke-interface {p0, v1}, Lcom/karumi/dexter/DexterBuilder$Permission;->withPermissions(Ljava/util/Collection;)Lcom/karumi/dexter/DexterBuilder$MultiPermissionListener;

    move-result-object p0

    new-instance v0, Lcom/yannis/ledcard/ble/BLEScanner$3;

    invoke-direct {v0}, Lcom/yannis/ledcard/ble/BLEScanner$3;-><init>()V

    .line 265
    invoke-interface {p0, v0}, Lcom/karumi/dexter/DexterBuilder$MultiPermissionListener;->withListener(Lcom/karumi/dexter/listener/multi/MultiplePermissionsListener;)Lcom/karumi/dexter/DexterBuilder;

    move-result-object p0

    .line 287
    invoke-interface {p0}, Lcom/karumi/dexter/DexterBuilder;->check()V

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public checkBluetooth(Landroid/app/Activity;)V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/yannis/ledcard/ble/BLEScanner;->mBAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    invoke-static {p1}, Lcom/yannis/ledcard/ble/BLEScanner;->openBluetooth(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public initBLE(Landroid/app/Application;)V
    .locals 3

    .line 84
    invoke-static {}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat;->getScanner()Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/yannis/ledcard/ble/BLEScanner;->mScanner:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat;

    .line 85
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/yannis/ledcard/ble/BLEScanner;->handler:Landroid/os/Handler;

    .line 86
    iput-object p1, p0, Lcom/yannis/ledcard/ble/BLEScanner;->context:Landroid/app/Application;

    .line 87
    invoke-virtual {p1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "android.hardware.bluetooth_le"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 89
    iget-object p1, p0, Lcom/yannis/ledcard/ble/BLEScanner;->context:Landroid/app/Application;

    const-string v1, "SORRY!BLE NOT SUPPORTED!"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 90
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 93
    :cond_0
    iget-object p1, p0, Lcom/yannis/ledcard/ble/BLEScanner;->context:Landroid/app/Application;

    const-string v1, "bluetooth"

    invoke-virtual {p1, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothManager;

    iput-object p1, p0, Lcom/yannis/ledcard/ble/BLEScanner;->mBManager:Landroid/bluetooth/BluetoothManager;

    if-eqz p1, :cond_1

    .line 95
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/yannis/ledcard/ble/BLEScanner;->mBAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez p1, :cond_1

    .line 97
    iget-object p1, p0, Lcom/yannis/ledcard/ble/BLEScanner;->context:Landroid/app/Application;

    const-string v1, "SORRY!YOU PHONE IS NOT SUPPORTED!"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 98
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 106
    :cond_1
    new-instance p1, Lno/nordicsemi/android/support/v18/scanner/ScanSettings$Builder;

    invoke-direct {p1}, Lno/nordicsemi/android/support/v18/scanner/ScanSettings$Builder;-><init>()V

    .line 107
    invoke-virtual {p1, v0}, Lno/nordicsemi/android/support/v18/scanner/ScanSettings$Builder;->setLegacy(Z)Lno/nordicsemi/android/support/v18/scanner/ScanSettings$Builder;

    move-result-object p1

    const/4 v1, 0x2

    .line 108
    invoke-virtual {p1, v1}, Lno/nordicsemi/android/support/v18/scanner/ScanSettings$Builder;->setScanMode(I)Lno/nordicsemi/android/support/v18/scanner/ScanSettings$Builder;

    move-result-object p1

    const-wide/16 v1, 0x3e8

    .line 109
    invoke-virtual {p1, v1, v2}, Lno/nordicsemi/android/support/v18/scanner/ScanSettings$Builder;->setReportDelay(J)Lno/nordicsemi/android/support/v18/scanner/ScanSettings$Builder;

    move-result-object p1

    .line 110
    invoke-virtual {p1, v0}, Lno/nordicsemi/android/support/v18/scanner/ScanSettings$Builder;->setUseHardwareBatchingIfSupported(Z)Lno/nordicsemi/android/support/v18/scanner/ScanSettings$Builder;

    move-result-object p1

    .line 111
    invoke-virtual {p1}, Lno/nordicsemi/android/support/v18/scanner/ScanSettings$Builder;->build()Lno/nordicsemi/android/support/v18/scanner/ScanSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/yannis/ledcard/ble/BLEScanner;->mScanSettings:Lno/nordicsemi/android/support/v18/scanner/ScanSettings;

    .line 112
    new-instance p1, Lno/nordicsemi/android/support/v18/scanner/ScanFilter$Builder;

    invoke-direct {p1}, Lno/nordicsemi/android/support/v18/scanner/ScanFilter$Builder;-><init>()V

    .line 115
    invoke-virtual {p1}, Lno/nordicsemi/android/support/v18/scanner/ScanFilter$Builder;->build()Lno/nordicsemi/android/support/v18/scanner/ScanFilter;

    move-result-object p1

    iput-object p1, p0, Lcom/yannis/ledcard/ble/BLEScanner;->mScanFilter:Lno/nordicsemi/android/support/v18/scanner/ScanFilter;

    return-void
.end method

.method public isBluetoothEnable(Landroid/app/Activity;)Z
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/yannis/ledcard/ble/BLEScanner;->mBAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/yannis/ledcard/ble/BLEScanner;->mBAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 130
    sget v1, Lcom/yannis/ledcard/ble/BLEScanner;->REQUEST_CODE:I

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public setListener(Lcom/yannis/ledcard/ble/BLEScanner$OnDeviceScanListener;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/yannis/ledcard/ble/BLEScanner;->listener:Lcom/yannis/ledcard/ble/BLEScanner$OnDeviceScanListener;

    return-void
.end method

.method public startScanBluetoothDevice()V
    .locals 4

    .line 162
    iget-object v0, p0, Lcom/yannis/ledcard/ble/BLEScanner;->scanBlueDeviceArray:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yannis/ledcard/ble/BLEScanner;->scanBlueDeviceArray:Ljava/util/ArrayList;

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/yannis/ledcard/ble/BLEScanner;->scanBlueDeviceArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 166
    iget-object v0, p0, Lcom/yannis/ledcard/ble/BLEScanner;->scanDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 167
    iget-object v0, p0, Lcom/yannis/ledcard/ble/BLEScanner;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/yannis/ledcard/ble/BLEScanner$1;

    invoke-direct {v1, p0}, Lcom/yannis/ledcard/ble/BLEScanner$1;-><init>(Lcom/yannis/ledcard/ble/BLEScanner;)V

    sget v2, Lcom/yannis/ledcard/ble/BLEScanner;->SCAN_TIME:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    .line 173
    iput-boolean v0, p0, Lcom/yannis/ledcard/ble/BLEScanner;->isScanning:Z

    .line 175
    iget-object v0, p0, Lcom/yannis/ledcard/ble/BLEScanner;->mScanCallback:Lno/nordicsemi/android/support/v18/scanner/ScanCallback;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 176
    iput-object v0, p0, Lcom/yannis/ledcard/ble/BLEScanner;->mScanCallback:Lno/nordicsemi/android/support/v18/scanner/ScanCallback;

    .line 178
    :cond_1
    new-instance v0, Lcom/yannis/ledcard/ble/BLEScanner$2;

    invoke-direct {v0, p0}, Lcom/yannis/ledcard/ble/BLEScanner$2;-><init>(Lcom/yannis/ledcard/ble/BLEScanner;)V

    iput-object v0, p0, Lcom/yannis/ledcard/ble/BLEScanner;->mScanCallback:Lno/nordicsemi/android/support/v18/scanner/ScanCallback;

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 212
    new-instance v1, Lno/nordicsemi/android/support/v18/scanner/ScanFilter$Builder;

    invoke-direct {v1}, Lno/nordicsemi/android/support/v18/scanner/ScanFilter$Builder;-><init>()V

    invoke-virtual {v1}, Lno/nordicsemi/android/support/v18/scanner/ScanFilter$Builder;->build()Lno/nordicsemi/android/support/v18/scanner/ScanFilter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    iget-object v1, p0, Lcom/yannis/ledcard/ble/BLEScanner;->listener:Lcom/yannis/ledcard/ble/BLEScanner$OnDeviceScanListener;

    invoke-interface {v1}, Lcom/yannis/ledcard/ble/BLEScanner$OnDeviceScanListener;->onStartScan()V

    const-string v1, "*********"

    const-string v2, "\u5f00\u59cb\u641c\u7d22............"

    .line 214
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v1, p0, Lcom/yannis/ledcard/ble/BLEScanner;->mScanner:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat;

    iget-object v2, p0, Lcom/yannis/ledcard/ble/BLEScanner;->mScanSettings:Lno/nordicsemi/android/support/v18/scanner/ScanSettings;

    iget-object v3, p0, Lcom/yannis/ledcard/ble/BLEScanner;->mScanCallback:Lno/nordicsemi/android/support/v18/scanner/ScanCallback;

    invoke-virtual {v1, v0, v2, v3}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat;->startScan(Ljava/util/List;Lno/nordicsemi/android/support/v18/scanner/ScanSettings;Lno/nordicsemi/android/support/v18/scanner/ScanCallback;)V

    return-void
.end method

.method public stopScanBluetoothDevice()V
    .locals 2

    const/4 v0, 0x0

    .line 219
    iput-boolean v0, p0, Lcom/yannis/ledcard/ble/BLEScanner;->isScanning:Z

    .line 220
    iget-object v0, p0, Lcom/yannis/ledcard/ble/BLEScanner;->mScanner:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/yannis/ledcard/ble/BLEScanner;->mScanCallback:Lno/nordicsemi/android/support/v18/scanner/ScanCallback;

    if-eqz v1, :cond_0

    .line 221
    invoke-virtual {v0, v1}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat;->stopScan(Lno/nordicsemi/android/support/v18/scanner/ScanCallback;)V

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/yannis/ledcard/ble/BLEScanner;->listener:Lcom/yannis/ledcard/ble/BLEScanner$OnDeviceScanListener;

    iget-object v1, p0, Lcom/yannis/ledcard/ble/BLEScanner;->scanDevices:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/yannis/ledcard/ble/BLEScanner$OnDeviceScanListener;->onStopScan(Ljava/util/List;)V

    return-void
.end method
