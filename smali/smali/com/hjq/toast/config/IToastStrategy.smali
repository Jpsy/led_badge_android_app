.class public interface abstract Lcom/hjq/toast/config/IToastStrategy;
.super Ljava/lang/Object;
.source "IToastStrategy.java"


# virtual methods
.method public abstract bindStyle(Lcom/hjq/toast/config/IToastStyle;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hjq/toast/config/IToastStyle<",
            "*>;)V"
        }
    .end annotation
.end method

.method public abstract cancelToast()V
.end method

.method public abstract createToast(Landroid/app/Application;)Lcom/hjq/toast/config/IToast;
.end method

.method public abstract registerStrategy(Landroid/app/Application;)V
.end method

.method public abstract showToast(Ljava/lang/CharSequence;J)V
.end method
