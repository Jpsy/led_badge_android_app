.class public Lcom/yannis/ledcard/bean/LedImg;
.super Ljava/lang/Object;
.source "LedImg.java"


# instance fields
.field private imgMsg:Ljava/lang/String;

.field private imgRes:I

.field private index:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lcom/yannis/ledcard/bean/LedImg;->index:I

    .line 19
    iput p2, p0, Lcom/yannis/ledcard/bean/LedImg;->imgRes:I

    .line 20
    iput-object p3, p0, Lcom/yannis/ledcard/bean/LedImg;->imgMsg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getImgMsg()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/yannis/ledcard/bean/LedImg;->imgMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getImgRes()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/yannis/ledcard/bean/LedImg;->imgRes:I

    return v0
.end method

.method public getIndex()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/yannis/ledcard/bean/LedImg;->index:I

    return v0
.end method

.method public setImgMsg(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/yannis/ledcard/bean/LedImg;->imgMsg:Ljava/lang/String;

    return-void
.end method

.method public setImgRes(I)V
    .locals 0

    .line 36
    iput p1, p0, Lcom/yannis/ledcard/bean/LedImg;->imgRes:I

    return-void
.end method

.method public setIndex(I)V
    .locals 0

    .line 28
    iput p1, p0, Lcom/yannis/ledcard/bean/LedImg;->index:I

    return-void
.end method
