.class public Lcom/yannis/ledcard/adapter/ColorChoiceAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ColorChoiceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yannis/ledcard/adapter/ColorChoiceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field ivColor:Lcom/yannis/ledcard/widget/CircleImageView;

.field final synthetic this$0:Lcom/yannis/ledcard/adapter/ColorChoiceAdapter;


# direct methods
.method public constructor <init>(Lcom/yannis/ledcard/adapter/ColorChoiceAdapter;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/yannis/ledcard/adapter/ColorChoiceAdapter$ViewHolder;->this$0:Lcom/yannis/ledcard/adapter/ColorChoiceAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
