.class public Lcom/yannis/ledcard/adapter/ColorChoiceAdapter$LedColor;
.super Ljava/lang/Object;
.source "ColorChoiceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yannis/ledcard/adapter/ColorChoiceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LedColor"
.end annotation


# instance fields
.field public color:I

.field public pos:I

.field final synthetic this$0:Lcom/yannis/ledcard/adapter/ColorChoiceAdapter;


# direct methods
.method public constructor <init>(Lcom/yannis/ledcard/adapter/ColorChoiceAdapter;II)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/yannis/ledcard/adapter/ColorChoiceAdapter$LedColor;->this$0:Lcom/yannis/ledcard/adapter/ColorChoiceAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput p2, p0, Lcom/yannis/ledcard/adapter/ColorChoiceAdapter$LedColor;->pos:I

    .line 78
    iput p3, p0, Lcom/yannis/ledcard/adapter/ColorChoiceAdapter$LedColor;->color:I

    return-void
.end method
