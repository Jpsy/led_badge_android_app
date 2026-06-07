.class public Lno/nordicsemi/android/support/v18/scanner/ScannerService;
.super Landroid/app/Service;
.source "ScannerService.java"


# static fields
.field static final EXTRA_FILTERS:Ljava/lang/String; = "no.nordicsemi.android.support.v18.EXTRA_FILTERS"

.field static final EXTRA_PENDING_INTENT:Ljava/lang/String; = "no.nordicsemi.android.support.v18.EXTRA_PENDING_INTENT"

.field static final EXTRA_SETTINGS:Ljava/lang/String; = "no.nordicsemi.android.support.v18.EXTRA_SETTINGS"

.field static final EXTRA_START:Ljava/lang/String; = "no.nordicsemi.android.support.v18.EXTRA_START"

.field private static final TAG:Ljava/lang/String; = "ScannerService"


# instance fields
.field private final LOCK:Ljava/lang/Object;

.field private callbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/app/PendingIntent;",
            "Lno/nordicsemi/android/support/v18/scanner/ScanCallback;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScannerService;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method private startScan(Ljava/util/List;Lno/nordicsemi/android/support/v18/scanner/ScanSettings;Landroid/app/PendingIntent;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lno/nordicsemi/android/support/v18/scanner/ScanFilter;",
            ">;",
            "Lno/nordicsemi/android/support/v18/scanner/ScanSettings;",
            "Landroid/app/PendingIntent;",
            ")V"
        }
    .end annotation

    .line 131
    new-instance v0, Lno/nordicsemi/android/support/v18/scanner/PendingIntentExecutor;

    invoke-direct {v0, p3, p2, p0}, Lno/nordicsemi/android/support/v18/scanner/PendingIntentExecutor;-><init>(Landroid/app/PendingIntent;Lno/nordicsemi/android/support/v18/scanner/ScanSettings;Landroid/app/Service;)V

    .line 133
    iget-object v1, p0, Lno/nordicsemi/android/support/v18/scanner/ScannerService;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 134
    :try_start_0
    iget-object v2, p0, Lno/nordicsemi/android/support/v18/scanner/ScannerService;->callbacks:Ljava/util/HashMap;

    invoke-virtual {v2, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    :try_start_1
    invoke-static {}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat;->getScanner()Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat;

    move-result-object p3

    .line 139
    iget-object v1, p0, Lno/nordicsemi/android/support/v18/scanner/ScannerService;->handler:Landroid/os/Handler;

    invoke-virtual {p3, p1, p2, v0, v1}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat;->startScanInternal(Ljava/util/List;Lno/nordicsemi/android/support/v18/scanner/ScanSettings;Lno/nordicsemi/android/support/v18/scanner/ScanCallback;Landroid/os/Handler;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "ScannerService"

    const-string p3, "Starting scanning failed"

    .line 141
    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 135
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private stopScan(Landroid/app/PendingIntent;)V
    .locals 3

    .line 149
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScannerService;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 150
    :try_start_0
    iget-object v1, p0, Lno/nordicsemi/android/support/v18/scanner/ScannerService;->callbacks:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lno/nordicsemi/android/support/v18/scanner/ScanCallback;

    .line 151
    iget-object v1, p0, Lno/nordicsemi/android/support/v18/scanner/ScannerService;->callbacks:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    .line 152
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    return-void

    .line 157
    :cond_0
    :try_start_1
    invoke-static {}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat;->getScanner()Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat;

    move-result-object v0

    .line 158
    invoke-virtual {v0, p1}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat;->stopScan(Lno/nordicsemi/android/support/v18/scanner/ScanCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "ScannerService"

    const-string v2, "Stopping scanning failed"

    .line 160
    invoke-static {v0, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    if-eqz v1, :cond_1

    .line 164
    invoke-virtual {p0}, Lno/nordicsemi/android/support/v18/scanner/ScannerService;->stopSelf()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 152
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 1

    .line 49
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScannerService;->callbacks:Ljava/util/HashMap;

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScannerService;->handler:Landroid/os/Handler;

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 113
    invoke-static {}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat;->getScanner()Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat;

    move-result-object v0

    .line 114
    iget-object v1, p0, Lno/nordicsemi/android/support/v18/scanner/ScannerService;->callbacks:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lno/nordicsemi/android/support/v18/scanner/ScanCallback;

    .line 116
    :try_start_0
    invoke-virtual {v0, v2}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat;->stopScan(Lno/nordicsemi/android/support/v18/scanner/ScanCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    .line 121
    :cond_0
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScannerService;->callbacks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    .line 122
    iput-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScannerService;->callbacks:Ljava/util/HashMap;

    .line 123
    iput-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScannerService;->handler:Landroid/os/Handler;

    .line 124
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4

    const-string p2, "no.nordicsemi.android.support.v18.EXTRA_PENDING_INTENT"

    .line 57
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/app/PendingIntent;

    const-string p3, "no.nordicsemi.android.support.v18.EXTRA_START"

    const/4 v0, 0x0

    .line 58
    invoke-virtual {p1, p3, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p3

    xor-int/lit8 v0, p3, 0x1

    const/4 v1, 0x2

    if-nez p2, :cond_1

    .line 63
    iget-object v2, p0, Lno/nordicsemi/android/support/v18/scanner/ScannerService;->LOCK:Ljava/lang/Object;

    monitor-enter v2

    .line 64
    :try_start_0
    iget-object p1, p0, Lno/nordicsemi/android/support/v18/scanner/ScannerService;->callbacks:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    .line 65
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 67
    invoke-virtual {p0}, Lno/nordicsemi/android/support/v18/scanner/ScannerService;->stopSelf()V

    :cond_0
    return v1

    :catchall_0
    move-exception p1

    .line 65
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 72
    :cond_1
    iget-object v2, p0, Lno/nordicsemi/android/support/v18/scanner/ScannerService;->LOCK:Ljava/lang/Object;

    monitor-enter v2

    .line 73
    :try_start_2
    iget-object v3, p0, Lno/nordicsemi/android/support/v18/scanner/ScannerService;->callbacks:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    .line 74
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p3, :cond_4

    if-nez v3, :cond_4

    const-string p3, "no.nordicsemi.android.support.v18.EXTRA_FILTERS"

    .line 77
    invoke-virtual {p1, p3}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p3

    const-string v0, "no.nordicsemi.android.support.v18.EXTRA_SETTINGS"

    .line 78
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;

    if-eqz p3, :cond_2

    goto :goto_0

    .line 79
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p3

    :goto_0
    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Lno/nordicsemi/android/support/v18/scanner/ScanSettings$Builder;

    invoke-direct {p1}, Lno/nordicsemi/android/support/v18/scanner/ScanSettings$Builder;-><init>()V

    .line 80
    invoke-virtual {p1}, Lno/nordicsemi/android/support/v18/scanner/ScanSettings$Builder;->build()Lno/nordicsemi/android/support/v18/scanner/ScanSettings;

    move-result-object p1

    .line 79
    :goto_1
    invoke-direct {p0, p3, p1, p2}, Lno/nordicsemi/android/support/v18/scanner/ScannerService;->startScan(Ljava/util/List;Lno/nordicsemi/android/support/v18/scanner/ScanSettings;Landroid/app/PendingIntent;)V

    goto :goto_2

    :cond_4
    if-eqz v0, :cond_5

    if-eqz v3, :cond_5

    .line 83
    invoke-direct {p0, p2}, Lno/nordicsemi/android/support/v18/scanner/ScannerService;->stopScan(Landroid/app/PendingIntent;)V

    :cond_5
    :goto_2
    return v1

    :catchall_1
    move-exception p1

    .line 74
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 0

    .line 98
    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    return-void
.end method
