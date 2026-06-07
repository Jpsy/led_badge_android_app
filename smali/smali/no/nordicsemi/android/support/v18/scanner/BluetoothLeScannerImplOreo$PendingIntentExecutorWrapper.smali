.class Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplOreo$PendingIntentExecutorWrapper;
.super Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;
.source "BluetoothLeScannerImplOreo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplOreo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PendingIntentExecutorWrapper"
.end annotation


# instance fields
.field final executor:Lno/nordicsemi/android/support/v18/scanner/PendingIntentExecutor;


# direct methods
.method constructor <init>(ZZLjava/util/List;Lno/nordicsemi/android/support/v18/scanner/ScanSettings;Landroid/app/PendingIntent;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/List<",
            "Lno/nordicsemi/android/support/v18/scanner/ScanFilter;",
            ">;",
            "Lno/nordicsemi/android/support/v18/scanner/ScanSettings;",
            "Landroid/app/PendingIntent;",
            ")V"
        }
    .end annotation

    .line 291
    new-instance v5, Lno/nordicsemi/android/support/v18/scanner/PendingIntentExecutor;

    invoke-direct {v5, p5, p4}, Lno/nordicsemi/android/support/v18/scanner/PendingIntentExecutor;-><init>(Landroid/app/PendingIntent;Lno/nordicsemi/android/support/v18/scanner/ScanSettings;)V

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;-><init>(ZZLjava/util/List;Lno/nordicsemi/android/support/v18/scanner/ScanSettings;Lno/nordicsemi/android/support/v18/scanner/ScanCallback;Landroid/os/Handler;)V

    .line 293
    iget-object p1, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplOreo$PendingIntentExecutorWrapper;->scanCallback:Lno/nordicsemi/android/support/v18/scanner/ScanCallback;

    check-cast p1, Lno/nordicsemi/android/support/v18/scanner/PendingIntentExecutor;

    iput-object p1, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplOreo$PendingIntentExecutorWrapper;->executor:Lno/nordicsemi/android/support/v18/scanner/PendingIntentExecutor;

    return-void
.end method
