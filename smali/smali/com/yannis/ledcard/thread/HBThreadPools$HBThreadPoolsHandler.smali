.class public final Lcom/yannis/ledcard/thread/HBThreadPools$HBThreadPoolsHandler;
.super Ljava/lang/Object;
.source "HBThreadPools.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yannis/ledcard/thread/HBThreadPools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HBThreadPoolsHandler"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/yannis/ledcard/thread/HBThreadPools;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lcom/yannis/ledcard/thread/HBThreadPools;

    invoke-direct {v0}, Lcom/yannis/ledcard/thread/HBThreadPools;-><init>()V

    sput-object v0, Lcom/yannis/ledcard/thread/HBThreadPools$HBThreadPoolsHandler;->INSTANCE:Lcom/yannis/ledcard/thread/HBThreadPools;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/yannis/ledcard/thread/HBThreadPools;
    .locals 1

    .line 19
    sget-object v0, Lcom/yannis/ledcard/thread/HBThreadPools$HBThreadPoolsHandler;->INSTANCE:Lcom/yannis/ledcard/thread/HBThreadPools;

    return-object v0
.end method
