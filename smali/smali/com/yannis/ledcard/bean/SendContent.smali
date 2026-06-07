.class public Lcom/yannis/ledcard/bean/SendContent;
.super Lorg/litepal/crud/DataSupport;
.source "SendContent.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private id:I

.field private isFlash:Z

.field private isMarquee:Z

.field private isReverse:Z

.field private isSelect:Z

.field private message:Ljava/lang/String;

.field private mode:I

.field private speed:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lorg/litepal/crud/DataSupport;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIZZZ)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lorg/litepal/crud/DataSupport;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/yannis/ledcard/bean/SendContent;->message:Ljava/lang/String;

    .line 31
    iput p2, p0, Lcom/yannis/ledcard/bean/SendContent;->speed:I

    .line 32
    iput p3, p0, Lcom/yannis/ledcard/bean/SendContent;->mode:I

    .line 33
    iput-boolean p4, p0, Lcom/yannis/ledcard/bean/SendContent;->isFlash:Z

    .line 34
    iput-boolean p5, p0, Lcom/yannis/ledcard/bean/SendContent;->isReverse:Z

    .line 35
    iput-boolean p6, p0, Lcom/yannis/ledcard/bean/SendContent;->isMarquee:Z

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/yannis/ledcard/bean/SendContent;->id:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/yannis/ledcard/bean/SendContent;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getMode()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/yannis/ledcard/bean/SendContent;->mode:I

    return v0
.end method

.method public getSpeed()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/yannis/ledcard/bean/SendContent;->speed:I

    return v0
.end method

.method public isFlash()Z
    .locals 1

    .line 71
    iget-boolean v0, p0, Lcom/yannis/ledcard/bean/SendContent;->isFlash:Z

    return v0
.end method

.method public isMarquee()Z
    .locals 1

    .line 87
    iget-boolean v0, p0, Lcom/yannis/ledcard/bean/SendContent;->isMarquee:Z

    return v0
.end method

.method public isReverse()Z
    .locals 1

    .line 79
    iget-boolean v0, p0, Lcom/yannis/ledcard/bean/SendContent;->isReverse:Z

    return v0
.end method

.method public isSelect()Z
    .locals 1

    .line 95
    iget-boolean v0, p0, Lcom/yannis/ledcard/bean/SendContent;->isSelect:Z

    return v0
.end method

.method public setFlash(Z)V
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcom/yannis/ledcard/bean/SendContent;->isFlash:Z

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 43
    iput p1, p0, Lcom/yannis/ledcard/bean/SendContent;->id:I

    return-void
.end method

.method public setMarquee(Z)V
    .locals 0

    .line 91
    iput-boolean p1, p0, Lcom/yannis/ledcard/bean/SendContent;->isMarquee:Z

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/yannis/ledcard/bean/SendContent;->message:Ljava/lang/String;

    return-void
.end method

.method public setMode(I)V
    .locals 0

    .line 67
    iput p1, p0, Lcom/yannis/ledcard/bean/SendContent;->mode:I

    return-void
.end method

.method public setReverse(Z)V
    .locals 0

    .line 83
    iput-boolean p1, p0, Lcom/yannis/ledcard/bean/SendContent;->isReverse:Z

    return-void
.end method

.method public setSelect(Z)V
    .locals 0

    .line 99
    iput-boolean p1, p0, Lcom/yannis/ledcard/bean/SendContent;->isSelect:Z

    return-void
.end method

.method public setSpeed(I)V
    .locals 0

    .line 59
    iput p1, p0, Lcom/yannis/ledcard/bean/SendContent;->speed:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SendContent{message=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yannis/ledcard/bean/SendContent;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", speed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/yannis/ledcard/bean/SendContent;->speed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/yannis/ledcard/bean/SendContent;->mode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isFlash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/yannis/ledcard/bean/SendContent;->isFlash:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isReverse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/yannis/ledcard/bean/SendContent;->isReverse:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isMarquee="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/yannis/ledcard/bean/SendContent;->isMarquee:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isSelect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/yannis/ledcard/bean/SendContent;->isSelect:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
