.class public final enum Lcom/lzy/imagepicker/view/CropImageView$Style;
.super Ljava/lang/Enum;
.source "CropImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzy/imagepicker/view/CropImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Style"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/lzy/imagepicker/view/CropImageView$Style;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lzy/imagepicker/view/CropImageView$Style;

.field public static final enum CIRCLE:Lcom/lzy/imagepicker/view/CropImageView$Style;

.field public static final enum RECTANGLE:Lcom/lzy/imagepicker/view/CropImageView$Style;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 54
    new-instance v0, Lcom/lzy/imagepicker/view/CropImageView$Style;

    const-string v1, "RECTANGLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/lzy/imagepicker/view/CropImageView$Style;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lzy/imagepicker/view/CropImageView$Style;->RECTANGLE:Lcom/lzy/imagepicker/view/CropImageView$Style;

    new-instance v1, Lcom/lzy/imagepicker/view/CropImageView$Style;

    const-string v3, "CIRCLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/lzy/imagepicker/view/CropImageView$Style;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/lzy/imagepicker/view/CropImageView$Style;->CIRCLE:Lcom/lzy/imagepicker/view/CropImageView$Style;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/lzy/imagepicker/view/CropImageView$Style;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 53
    sput-object v3, Lcom/lzy/imagepicker/view/CropImageView$Style;->$VALUES:[Lcom/lzy/imagepicker/view/CropImageView$Style;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lzy/imagepicker/view/CropImageView$Style;
    .locals 1

    .line 53
    const-class v0, Lcom/lzy/imagepicker/view/CropImageView$Style;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/lzy/imagepicker/view/CropImageView$Style;

    return-object p0
.end method

.method public static values()[Lcom/lzy/imagepicker/view/CropImageView$Style;
    .locals 1

    .line 53
    sget-object v0, Lcom/lzy/imagepicker/view/CropImageView$Style;->$VALUES:[Lcom/lzy/imagepicker/view/CropImageView$Style;

    invoke-virtual {v0}, [Lcom/lzy/imagepicker/view/CropImageView$Style;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lzy/imagepicker/view/CropImageView$Style;

    return-object v0
.end method
