.class public Lcom/yannis/ledcard/bean/LEDBmp;
.super Lorg/litepal/crud/DataSupport;
.source "LEDBmp.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private content:Ljava/lang/String;

.field private filePath:Ljava/lang/String;

.field private id:I

.field private matrix:I

.field private resourceID:I

.field private resourceName:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lorg/litepal/crud/DataSupport;-><init>()V

    .line 57
    iput p1, p0, Lcom/yannis/ledcard/bean/LEDBmp;->id:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lorg/litepal/crud/DataSupport;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/yannis/ledcard/bean/LEDBmp;->content:Ljava/lang/String;

    .line 43
    iput p2, p0, Lcom/yannis/ledcard/bean/LEDBmp;->matrix:I

    const/4 p1, 0x0

    .line 44
    iput-object p1, p0, Lcom/yannis/ledcard/bean/LEDBmp;->filePath:Ljava/lang/String;

    .line 45
    iput p3, p0, Lcom/yannis/ledcard/bean/LEDBmp;->resourceID:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lorg/litepal/crud/DataSupport;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/yannis/ledcard/bean/LEDBmp;->content:Ljava/lang/String;

    .line 36
    iput p2, p0, Lcom/yannis/ledcard/bean/LEDBmp;->matrix:I

    .line 37
    iput-object p3, p0, Lcom/yannis/ledcard/bean/LEDBmp;->filePath:Ljava/lang/String;

    const/4 p1, -0x1

    .line 38
    iput p1, p0, Lcom/yannis/ledcard/bean/LEDBmp;->resourceID:I

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/yannis/ledcard/bean/LEDBmp;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/yannis/ledcard/bean/LEDBmp;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/yannis/ledcard/bean/LEDBmp;->id:I

    return v0
.end method

.method public getMatrix()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/yannis/ledcard/bean/LEDBmp;->matrix:I

    return v0
.end method

.method public getResourceID()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/yannis/ledcard/bean/LEDBmp;->resourceID:I

    return v0
.end method

.method public getResourceName()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/yannis/ledcard/bean/LEDBmp;->resourceName:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/yannis/ledcard/bean/LEDBmp;->content:Ljava/lang/String;

    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/yannis/ledcard/bean/LEDBmp;->filePath:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 65
    iput p1, p0, Lcom/yannis/ledcard/bean/LEDBmp;->id:I

    return-void
.end method

.method public setMatrix(I)V
    .locals 0

    .line 81
    iput p1, p0, Lcom/yannis/ledcard/bean/LEDBmp;->matrix:I

    return-void
.end method

.method public setResourceID(I)V
    .locals 0

    .line 53
    iput p1, p0, Lcom/yannis/ledcard/bean/LEDBmp;->resourceID:I

    return-void
.end method

.method public setResourceName(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/yannis/ledcard/bean/LEDBmp;->resourceName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LEDBmp{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/yannis/ledcard/bean/LEDBmp;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", content=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yannis/ledcard/bean/LEDBmp;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", matrix="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/yannis/ledcard/bean/LEDBmp;->matrix:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", filePath=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yannis/ledcard/bean/LEDBmp;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", resourceID =\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/yannis/ledcard/bean/LEDBmp;->resourceID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
