.class Lcom/rjfun/cordova/ad/GenericAdPlugin$11;
.super Ljava/lang/Object;
.source "GenericAdPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rjfun/cordova/ad/GenericAdPlugin;->showRewardVideoAd()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rjfun/cordova/ad/GenericAdPlugin;


# direct methods
.method constructor <init>(Lcom/rjfun/cordova/ad/GenericAdPlugin;)V
    .locals 0

    .prologue
    .line 795
    iput-object p1, p0, Lcom/rjfun/cordova/ad/GenericAdPlugin$11;->this$0:Lcom/rjfun/cordova/ad/GenericAdPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 798
    iget-object v0, p0, Lcom/rjfun/cordova/ad/GenericAdPlugin$11;->this$0:Lcom/rjfun/cordova/ad/GenericAdPlugin;

    iget-object v1, p0, Lcom/rjfun/cordova/ad/GenericAdPlugin$11;->this$0:Lcom/rjfun/cordova/ad/GenericAdPlugin;

    iget-object v1, v1, Lcom/rjfun/cordova/ad/GenericAdPlugin;->rewardVideoAd:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/rjfun/cordova/ad/GenericAdPlugin;->__showRewardVideoAd(Ljava/lang/Object;)V

    .line 799
    return-void
.end method
