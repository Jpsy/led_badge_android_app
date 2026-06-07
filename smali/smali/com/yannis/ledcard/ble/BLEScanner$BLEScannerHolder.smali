.class public final Lcom/yannis/ledcard/ble/BLEScanner$BLEScannerHolder;
.super Ljava/lang/Object;
.source "BLEScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yannis/ledcard/ble/BLEScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BLEScannerHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/yannis/ledcard/ble/BLEScanner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 70
    new-instance v0, Lcom/yannis/ledcard/ble/BLEScanner;

    invoke-direct {v0}, Lcom/yannis/ledcard/ble/BLEScanner;-><init>()V

    sput-object v0, Lcom/yannis/ledcard/ble/BLEScanner$BLEScannerHolder;->INSTANCE:Lcom/yannis/ledcard/ble/BLEScanner;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/yannis/ledcard/ble/BLEScanner;
    .locals 1

    .line 69
    sget-object v0, Lcom/yannis/ledcard/ble/BLEScanner$BLEScannerHolder;->INSTANCE:Lcom/yannis/ledcard/ble/BLEScanner;

    return-object v0
.end method
