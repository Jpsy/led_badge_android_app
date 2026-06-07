.class Lcom/yannis/ledcard/adapter/LEDBmpGridViewAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "LEDBmpGridViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yannis/ledcard/adapter/LEDBmpGridViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field ivAdd:Landroid/widget/ImageView;

.field ivDelete:Landroid/widget/ImageView;

.field ledBmp:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/yannis/ledcard/adapter/LEDBmpGridViewAdapter;


# direct methods
.method constructor <init>(Lcom/yannis/ledcard/adapter/LEDBmpGridViewAdapter;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/yannis/ledcard/adapter/LEDBmpGridViewAdapter$ViewHolder;->this$0:Lcom/yannis/ledcard/adapter/LEDBmpGridViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
