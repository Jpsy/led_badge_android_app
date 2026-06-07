.class public Lcat/ereza/customactivityoncrash/config/CaocConfig$Builder;
.super Ljava/lang/Object;
.source "CaocConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcat/ereza/customactivityoncrash/config/CaocConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private config:Lcat/ereza/customactivityoncrash/config/CaocConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcat/ereza/customactivityoncrash/config/CaocConfig$Builder;
    .locals 4

    .line 155
    new-instance v0, Lcat/ereza/customactivityoncrash/config/CaocConfig$Builder;

    invoke-direct {v0}, Lcat/ereza/customactivityoncrash/config/CaocConfig$Builder;-><init>()V

    .line 156
    invoke-static {}, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash;->getConfig()Lcat/ereza/customactivityoncrash/config/CaocConfig;

    move-result-object v1

    .line 158
    new-instance v2, Lcat/ereza/customactivityoncrash/config/CaocConfig;

    invoke-direct {v2}, Lcat/ereza/customactivityoncrash/config/CaocConfig;-><init>()V

    .line 159
    invoke-static {v1}, Lcat/ereza/customactivityoncrash/config/CaocConfig;->access$000(Lcat/ereza/customactivityoncrash/config/CaocConfig;)I

    move-result v3

    invoke-static {v2, v3}, Lcat/ereza/customactivityoncrash/config/CaocConfig;->access$002(Lcat/ereza/customactivityoncrash/config/CaocConfig;I)I

    .line 160
    invoke-static {v1}, Lcat/ereza/customactivityoncrash/config/CaocConfig;->access$100(Lcat/ereza/customactivityoncrash/config/CaocConfig;)Z

    move-result v3

    invoke-static {v2, v3}, Lcat/ereza/customactivityoncrash/config/CaocConfig;->access$102(Lcat/ereza/customactivityoncrash/config/CaocConfig;Z)Z

    .line 161
    invoke-static {v1}, Lcat/ereza/customactivityoncrash/config/CaocConfig;->access$200(Lcat/ereza/customactivityoncrash/config/CaocConfig;)Z

    move-result v3

    invoke-static {v2, v3}, Lcat/ereza/customactivityoncrash/config/CaocConfig;->access$202(Lcat/ereza/customactivityoncrash/config/CaocConfig;Z)Z

    .line 162
    invoke-static {v1}, Lcat/ereza/customactivityoncrash/config/CaocConfig;->access$300(Lcat/ereza/customactivityoncrash/config/CaocConfig;)Z

    move-result v3

    invoke-static {v2, v3}, Lcat/ereza/customactivityoncrash/config/CaocConfig;->access$302(Lcat/ereza/customactivityoncrash/config/CaocConfig;Z)Z

    .line 163
    invoke-static {v1}, Lcat/ereza/customactivityoncrash/config/CaocConfig;->access$400(Lcat/ereza/customactivityoncrash/config/CaocConfig;)Z

    move-result v3

    invoke-static {v2, v3}, Lcat/ereza/customactivityoncrash/config/CaocConfig;->access$402(Lcat/ereza/customactivityoncrash/config/CaocConfig;Z)Z

    .line 164
    invoke-static {v1}, Lcat/ereza/customactivityoncrash/config/CaocConfig;->access$500(Lcat/ereza/customactivityoncrash/config/CaocConfig;)Z

    move-result v3

    invoke-static {v2, v3}, Lcat/ereza/customactivityoncrash/config/CaocConfig;->access$502(Lcat/ereza/customactivityoncrash/config/CaocConfig;Z)Z

    .line 165
    invoke-static {v1}, Lcat/ereza/customactivityoncrash/config/CaocConfig;->access$600(Lcat/ereza/customactivityoncrash/config/CaocConfig;)I

    move-result v3

    invoke-static {v2, v3}, Lcat/ereza/customactivityoncrash/config/CaocConfig;->access$602(Lcat/ereza/customactivityoncrash/config/CaocConfig;I)I

    .line 166
    invoke-static {v1}, Lcat/ereza/customactivityoncrash/config/CaocConfig;->access$700(Lcat/ereza/customactivityoncrash/config/CaocConfig;)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcat/ereza/customactivityoncrash/config/CaocConfig;->access$702(Lcat/ereza/customactivityoncrash/config/CaocConfig;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 167
    invoke-static {v1}, Lcat/ereza/customactivityoncrash/config/CaocConfig;->access$800(Lcat/ereza/customactivityoncrash/config/CaocConfig;)Ljava/lang/Class;

    move-result-object v3

    invoke-static {v2, v3}, Lcat/ereza/customactivityoncrash/config/CaocConfig;->access$802(Lcat/ereza/customactivityoncrash/config/CaocConfig;Ljava/lang/Class;)Ljava/lang/Class;

    .line 168
    invoke-static {v1}, Lcat/ereza/customactivityoncrash/config/CaocConfig;->access$900(Lcat/ereza/customactivityoncrash/config/CaocConfig;)Ljava/lang/Class;

    move-result-object v3

    invoke-static {v2, v3}, Lcat/ereza/customactivityoncrash/config/CaocConfig;->access$902(Lcat/ereza/customactivityoncrash/config/CaocConfig;Ljava/lang/Class;)Ljava/lang/Class;

    .line 169
    invoke-static {v1}, Lcat/ereza/customactivityoncrash/config/CaocConfig;->access$1000(Lcat/ereza/customactivityoncrash/config/CaocConfig;)Lcat/ereza/customactivityoncrash/CustomActivityOnCrash$EventListener;

    move-result-object v1

    invoke-static {v2, v1}, Lcat/ereza/customactivityoncrash/config/CaocConfig;->access$1002(Lcat/ereza/customactivityoncrash/config/CaocConfig;Lcat/ereza/customactivityoncrash/CustomActivityOnCrash$EventListener;)Lcat/ereza/customactivityoncrash/CustomActivityOnCrash$EventListener;

    .line 171
    iput-object v2, v0, Lcat/ereza/customactivityoncrash/config/CaocConfig$Builder;->config:Lcat/ereza/customactivityoncrash/config/CaocConfig;

    return-object v0
.end method


# virtual methods
.method public apply()V
    .locals 1

    .line 322
    iget-object v0, p0, Lcat/ereza/customactivityoncrash/config/CaocConfig$Builder;->config:Lcat/ereza/customactivityoncrash/config/CaocConfig;

    invoke-static {v0}, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash;->setConfig(Lcat/ereza/customactivityoncrash/config/CaocConfig;)V

    return-void
.end method

.method public backgroundMode(I)Lcat/ereza/customactivityoncrash/config/CaocConfig$Builder;
    .locals 1

    .line 185
    iget-object v0, p0, Lcat/ereza/customactivityoncrash/config/CaocConfig$Builder;->config:Lcat/ereza/customactivityoncrash/config/CaocConfig;

    invoke-static {v0, p1}, Lcat/ereza/customactivityoncrash/config/CaocConfig;->access$002(Lcat/ereza/customactivityoncrash/config/CaocConfig;I)I

    return-object p0
.end method

.method public enabled(Z)Lcat/ereza/customactivityoncrash/config/CaocConfig$Builder;
    .locals 1

    .line 197
    iget-object v0, p0, Lcat/ereza/customactivityoncrash/config/CaocConfig$Builder;->config:Lcat/ereza/customactivityoncrash/config/CaocConfig;

    invoke-static {v0, p1}, Lcat/ereza/customactivityoncrash/config/CaocConfig;->access$102(Lcat/ereza/customactivityoncrash/config/CaocConfig;Z)Z

    return-object p0
.end method

.method public errorActivity(Ljava/lang/Class;)Lcat/ereza/customactivityoncrash/config/CaocConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;)",
            "Lcat/ereza/customactivityoncrash/config/CaocConfig$Builder;"
        }
    .end annotation

    .line 283
    iget-object v0, p0, Lcat/ereza/customactivityoncrash/config/CaocConfig$Builder;->config:Lcat/ereza/customactivityoncrash/config/CaocConfig;

    invoke-static {v0, p1}, Lcat/ereza/customactivityoncrash/config/CaocConfig;->access$802(Lcat/ereza/customactivityoncrash/config/CaocConfig;Ljava/lang/Class;)Ljava/lang/Class;

    return-object p0
.end method

.method public errorDrawable(Ljava/lang/Integer;)Lcat/ereza/customactivityoncrash/config/CaocConfig$Builder;
    .locals 1

    .line 273
    iget-object v0, p0, Lcat/ereza/customactivityoncrash/config/CaocConfig$Builder;->config:Lcat/ereza/customactivityoncrash/config/CaocConfig;

    invoke-static {v0, p1}, Lcat/ereza/customactivityoncrash/config/CaocConfig;->access$702(Lcat/ereza/customactivityoncrash/config/CaocConfig;Ljava/lang/Integer;)Ljava/lang/Integer;

    return-object p0
.end method

.method public eventListener(Lcat/ereza/customactivityoncrash/CustomActivityOnCrash$EventListener;)Lcat/ereza/customactivityoncrash/config/CaocConfig$Builder;
    .locals 1

    if-eqz p1, :cond_1

    .line 308
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 309
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The event listener cannot be an inner or anonymous class, because it will need to be serialized. Change it to a class of its own, or make it a static inner class."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 311
    :cond_1
    :goto_0
    iget-object v0, p0, Lcat/ereza/customactivityoncrash/config/CaocConfig$Builder;->config:Lcat/ereza/customactivityoncrash/config/CaocConfig;

    invoke-static {v0, p1}, Lcat/ereza/customactivityoncrash/config/CaocConfig;->access$1002(Lcat/ereza/customactivityoncrash/config/CaocConfig;Lcat/ereza/customactivityoncrash/CustomActivityOnCrash$EventListener;)Lcat/ereza/customactivityoncrash/CustomActivityOnCrash$EventListener;

    return-object p0
.end method

.method public get()Lcat/ereza/customactivityoncrash/config/CaocConfig;
    .locals 1

    .line 318
    iget-object v0, p0, Lcat/ereza/customactivityoncrash/config/CaocConfig$Builder;->config:Lcat/ereza/customactivityoncrash/config/CaocConfig;

    return-object v0
.end method

.method public logErrorOnRestart(Z)Lcat/ereza/customactivityoncrash/config/CaocConfig$Builder;
    .locals 1

    .line 239
    iget-object v0, p0, Lcat/ereza/customactivityoncrash/config/CaocConfig$Builder;->config:Lcat/ereza/customactivityoncrash/config/CaocConfig;

    invoke-static {v0, p1}, Lcat/ereza/customactivityoncrash/config/CaocConfig;->access$402(Lcat/ereza/customactivityoncrash/config/CaocConfig;Z)Z

    return-object p0
.end method

.method public minTimeBetweenCrashesMs(I)Lcat/ereza/customactivityoncrash/config/CaocConfig$Builder;
    .locals 1

    .line 262
    iget-object v0, p0, Lcat/ereza/customactivityoncrash/config/CaocConfig$Builder;->config:Lcat/ereza/customactivityoncrash/config/CaocConfig;

    invoke-static {v0, p1}, Lcat/ereza/customactivityoncrash/config/CaocConfig;->access$602(Lcat/ereza/customactivityoncrash/config/CaocConfig;I)I

    return-object p0
.end method

.method public restartActivity(Ljava/lang/Class;)Lcat/ereza/customactivityoncrash/config/CaocConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;)",
            "Lcat/ereza/customactivityoncrash/config/CaocConfig$Builder;"
        }
    .end annotation

    .line 294
    iget-object v0, p0, Lcat/ereza/customactivityoncrash/config/CaocConfig$Builder;->config:Lcat/ereza/customactivityoncrash/config/CaocConfig;

    invoke-static {v0, p1}, Lcat/ereza/customactivityoncrash/config/CaocConfig;->access$902(Lcat/ereza/customactivityoncrash/config/CaocConfig;Ljava/lang/Class;)Ljava/lang/Class;

    return-object p0
.end method

.method public showErrorDetails(Z)Lcat/ereza/customactivityoncrash/config/CaocConfig$Builder;
    .locals 1

    .line 209
    iget-object v0, p0, Lcat/ereza/customactivityoncrash/config/CaocConfig$Builder;->config:Lcat/ereza/customactivityoncrash/config/CaocConfig;

    invoke-static {v0, p1}, Lcat/ereza/customactivityoncrash/config/CaocConfig;->access$202(Lcat/ereza/customactivityoncrash/config/CaocConfig;Z)Z

    return-object p0
.end method

.method public showRestartButton(Z)Lcat/ereza/customactivityoncrash/config/CaocConfig$Builder;
    .locals 1

    .line 223
    iget-object v0, p0, Lcat/ereza/customactivityoncrash/config/CaocConfig$Builder;->config:Lcat/ereza/customactivityoncrash/config/CaocConfig;

    invoke-static {v0, p1}, Lcat/ereza/customactivityoncrash/config/CaocConfig;->access$302(Lcat/ereza/customactivityoncrash/config/CaocConfig;Z)Z

    return-object p0
.end method

.method public trackActivities(Z)Lcat/ereza/customactivityoncrash/config/CaocConfig$Builder;
    .locals 1

    .line 250
    iget-object v0, p0, Lcat/ereza/customactivityoncrash/config/CaocConfig$Builder;->config:Lcat/ereza/customactivityoncrash/config/CaocConfig;

    invoke-static {v0, p1}, Lcat/ereza/customactivityoncrash/config/CaocConfig;->access$502(Lcat/ereza/customactivityoncrash/config/CaocConfig;Z)Z

    return-object p0
.end method
