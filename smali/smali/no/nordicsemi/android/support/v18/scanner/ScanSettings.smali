.class public final Lno/nordicsemi/android/support/v18/scanner/ScanSettings;
.super Ljava/lang/Object;
.source "ScanSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lno/nordicsemi/android/support/v18/scanner/ScanSettings$Builder;
    }
.end annotation


# static fields
.field public static final CALLBACK_TYPE_ALL_MATCHES:I = 0x1

.field public static final CALLBACK_TYPE_FIRST_MATCH:I = 0x2

.field public static final CALLBACK_TYPE_MATCH_LOST:I = 0x4

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lno/nordicsemi/android/support/v18/scanner/ScanSettings;",
            ">;"
        }
    .end annotation
.end field

.field public static final MATCH_LOST_DEVICE_TIMEOUT_DEFAULT:J = 0x2710L

.field public static final MATCH_LOST_TASK_INTERVAL_DEFAULT:J = 0x2710L

.field public static final MATCH_MODE_AGGRESSIVE:I = 0x1

.field public static final MATCH_MODE_STICKY:I = 0x2

.field public static final MATCH_NUM_FEW_ADVERTISEMENT:I = 0x2

.field public static final MATCH_NUM_MAX_ADVERTISEMENT:I = 0x3

.field public static final MATCH_NUM_ONE_ADVERTISEMENT:I = 0x1

.field public static final PHY_LE_ALL_SUPPORTED:I = 0xff

.field public static final SCAN_MODE_BALANCED:I = 0x1

.field public static final SCAN_MODE_LOW_LATENCY:I = 0x2

.field public static final SCAN_MODE_LOW_POWER:I = 0x0

.field public static final SCAN_MODE_OPPORTUNISTIC:I = -0x1


# instance fields
.field private callbackType:I

.field private legacy:Z

.field private matchLostDeviceTimeout:J

.field private matchLostTaskInterval:J

.field private matchMode:I

.field private numOfMatchesPerFilter:I

.field private phy:I

.field private final powerSaveRestInterval:J

.field private final powerSaveScanInterval:J

.field private reportDelayMillis:J

.field private scanMode:I

.field private useHardwareBatchingIfSupported:Z

.field private useHardwareCallbackTypesIfSupported:Z

.field private useHardwareFilteringIfSupported:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 308
    new-instance v0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings$1;

    invoke-direct {v0}, Lno/nordicsemi/android/support/v18/scanner/ScanSettings$1;-><init>()V

    sput-object v0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(IIJIIZIZZZJJJJ)V
    .locals 3

    move-object v0, p0

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    .line 258
    iput v1, v0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->scanMode:I

    move v1, p2

    .line 259
    iput v1, v0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->callbackType:I

    move-wide v1, p3

    .line 260
    iput-wide v1, v0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->reportDelayMillis:J

    move v1, p6

    .line 261
    iput v1, v0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->numOfMatchesPerFilter:I

    move v1, p5

    .line 262
    iput v1, v0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->matchMode:I

    move v1, p7

    .line 263
    iput-boolean v1, v0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->legacy:Z

    move v1, p8

    .line 264
    iput v1, v0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->phy:I

    move v1, p9

    .line 265
    iput-boolean v1, v0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->useHardwareFilteringIfSupported:Z

    move v1, p10

    .line 266
    iput-boolean v1, v0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->useHardwareBatchingIfSupported:Z

    move v1, p11

    .line 267
    iput-boolean v1, v0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->useHardwareCallbackTypesIfSupported:Z

    const-wide/32 v1, 0xf4240

    mul-long v1, v1, p12

    .line 268
    iput-wide v1, v0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->matchLostDeviceTimeout:J

    move-wide/from16 v1, p14

    .line 269
    iput-wide v1, v0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->matchLostTaskInterval:J

    move-wide/from16 v1, p16

    .line 270
    iput-wide v1, v0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->powerSaveScanInterval:J

    move-wide/from16 v1, p18

    .line 271
    iput-wide v1, v0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->powerSaveRestInterval:J

    return-void
.end method

.method synthetic constructor <init>(IIJIIZIZZZJJJJLno/nordicsemi/android/support/v18/scanner/ScanSettings$1;)V
    .locals 0

    .line 38
    invoke-direct/range {p0 .. p19}, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;-><init>(IIJIIZIZZZJJJJ)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->scanMode:I

    .line 276
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->callbackType:I

    .line 277
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->reportDelayMillis:J

    .line 278
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->matchMode:I

    .line 279
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->numOfMatchesPerFilter:I

    .line 280
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->legacy:Z

    .line 281
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->phy:I

    .line 282
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->useHardwareFilteringIfSupported:Z

    .line 283
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    iput-boolean v1, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->useHardwareBatchingIfSupported:Z

    .line 284
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->powerSaveScanInterval:J

    .line 285
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->powerSaveRestInterval:J

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lno/nordicsemi/android/support/v18/scanner/ScanSettings$1;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method disableUseHardwareCallbackTypes()V
    .locals 1

    const/4 v0, 0x0

    .line 217
    iput-boolean v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->useHardwareCallbackTypesIfSupported:Z

    return-void
.end method

.method public getCallbackType()I
    .locals 1

    .line 187
    iget v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->callbackType:I

    return v0
.end method

.method public getLegacy()Z
    .locals 1

    .line 234
    iget-boolean v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->legacy:Z

    return v0
.end method

.method public getMatchLostDeviceTimeout()J
    .locals 2

    .line 221
    iget-wide v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->matchLostDeviceTimeout:J

    return-wide v0
.end method

.method public getMatchLostTaskInterval()J
    .locals 2

    .line 225
    iget-wide v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->matchLostTaskInterval:J

    return-wide v0
.end method

.method public getMatchMode()I
    .locals 1

    .line 191
    iget v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->matchMode:I

    return v0
.end method

.method public getNumOfMatches()I
    .locals 1

    .line 195
    iget v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->numOfMatchesPerFilter:I

    return v0
.end method

.method public getPhy()I
    .locals 1

    .line 241
    iget v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->phy:I

    return v0
.end method

.method public getPowerSaveRest()J
    .locals 2

    .line 328
    iget-wide v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->powerSaveRestInterval:J

    return-wide v0
.end method

.method public getPowerSaveScan()J
    .locals 2

    .line 332
    iget-wide v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->powerSaveScanInterval:J

    return-wide v0
.end method

.method public getReportDelayMillis()J
    .locals 2

    .line 248
    iget-wide v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->reportDelayMillis:J

    return-wide v0
.end method

.method public getScanMode()I
    .locals 1

    .line 183
    iget v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->scanMode:I

    return v0
.end method

.method public getUseHardwareBatchingIfSupported()Z
    .locals 1

    .line 203
    iget-boolean v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->useHardwareBatchingIfSupported:Z

    return v0
.end method

.method public getUseHardwareCallbackTypesIfSupported()Z
    .locals 1

    .line 207
    iget-boolean v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->useHardwareCallbackTypesIfSupported:Z

    return v0
.end method

.method public getUseHardwareFilteringIfSupported()Z
    .locals 1

    .line 199
    iget-boolean v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->useHardwareFilteringIfSupported:Z

    return v0
.end method

.method public hasPowerSaveMode()Z
    .locals 5

    .line 324
    iget-wide v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->powerSaveRestInterval:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-wide v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->powerSaveScanInterval:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 290
    iget p2, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->scanMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 291
    iget p2, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->callbackType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 292
    iget-wide v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->reportDelayMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 293
    iget p2, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->matchMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    iget p2, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->numOfMatchesPerFilter:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 295
    iget-boolean p2, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->legacy:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 296
    iget p2, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->phy:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 297
    iget-boolean p2, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->useHardwareFilteringIfSupported:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 298
    iget-boolean p2, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->useHardwareBatchingIfSupported:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 299
    iget-wide v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->powerSaveScanInterval:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 300
    iget-wide v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->powerSaveRestInterval:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
