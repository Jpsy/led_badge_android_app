.class public Lcom/yannis/ledcard/util/DialogUtil$DialogMode;
.super Ljava/lang/Object;
.source "DialogUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yannis/ledcard/util/DialogUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DialogMode"
.end annotation


# static fields
.field public static final MODE:I = 0x2

.field public static final PIX:I = 0x3

.field public static final SPEED:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/yannis/ledcard/util/DialogUtil;


# direct methods
.method public constructor <init>(Lcom/yannis/ledcard/util/DialogUtil;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/yannis/ledcard/util/DialogUtil$DialogMode;->this$0:Lcom/yannis/ledcard/util/DialogUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
