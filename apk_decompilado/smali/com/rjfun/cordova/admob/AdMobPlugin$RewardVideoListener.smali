.class Lcom/rjfun/cordova/admob/AdMobPlugin$RewardVideoListener;
.super Ljava/lang/Object;
.source "AdMobPlugin.java"

# interfaces
.implements Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rjfun/cordova/admob/AdMobPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RewardVideoListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rjfun/cordova/admob/AdMobPlugin;


# direct methods
.method private constructor <init>(Lcom/rjfun/cordova/admob/AdMobPlugin;)V
    .locals 0

    .prologue
    .line 644
    iput-object p1, p0, Lcom/rjfun/cordova/admob/AdMobPlugin$RewardVideoListener;->this$0:Lcom/rjfun/cordova/admob/AdMobPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/rjfun/cordova/admob/AdMobPlugin;Lcom/rjfun/cordova/admob/AdMobPlugin$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/rjfun/cordova/admob/AdMobPlugin;
    .param p2, "x1"    # Lcom/rjfun/cordova/admob/AdMobPlugin$1;

    .prologue
    .line 644
    invoke-direct {p0, p1}, Lcom/rjfun/cordova/admob/AdMobPlugin$RewardVideoListener;-><init>(Lcom/rjfun/cordova/admob/AdMobPlugin;)V

    return-void
.end method


# virtual methods
.method public onRewarded(Lcom/google/android/gms/ads/reward/RewardItem;)V
    .locals 6
    .param p1, "reward"    # Lcom/google/android/gms/ads/reward/RewardItem;

    .prologue
    .line 695
    iget-object v2, p0, Lcom/rjfun/cordova/admob/AdMobPlugin$RewardVideoListener;->this$0:Lcom/rjfun/cordova/admob/AdMobPlugin;

    invoke-virtual {v2}, Lcom/rjfun/cordova/admob/AdMobPlugin;->__getProductShortName()Ljava/lang/String;

    move-result-object v1

    .line 696
    .local v1, "obj":Ljava/lang/String;
    const-string v2, "{\'adNetwork\':\'%s\',\'adType\':\'%s\',\'adEvent\':\'%s\',\'rewardType\':\'%s\',\'rewardAmount\':%d}"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    const-string v5, "rewardvideo"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "onAdPresent"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    .line 697
    invoke-interface {p1}, Lcom/google/android/gms/ads/reward/RewardItem;->getType()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-interface {p1}, Lcom/google/android/gms/ads/reward/RewardItem;->getAmount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 696
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 698
    .local v0, "json":Ljava/lang/String;
    iget-object v2, p0, Lcom/rjfun/cordova/admob/AdMobPlugin$RewardVideoListener;->this$0:Lcom/rjfun/cordova/admob/AdMobPlugin;

    const-string v3, "onAdPresent"

    invoke-virtual {v2, v1, v3, v0}, Lcom/rjfun/cordova/admob/AdMobPlugin;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    return-void
.end method

.method public onRewardedVideoAdClosed()V
    .locals 4

    .prologue
    .line 683
    iget-object v1, p0, Lcom/rjfun/cordova/admob/AdMobPlugin$RewardVideoListener;->this$0:Lcom/rjfun/cordova/admob/AdMobPlugin;

    const-string v2, "onAdDismiss"

    const-string v3, "rewardvideo"

    invoke-static {v1, v2, v3}, Lcom/rjfun/cordova/admob/AdMobPlugin;->access$2800(Lcom/rjfun/cordova/admob/AdMobPlugin;Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    iget-object v1, p0, Lcom/rjfun/cordova/admob/AdMobPlugin$RewardVideoListener;->this$0:Lcom/rjfun/cordova/admob/AdMobPlugin;

    invoke-virtual {v1}, Lcom/rjfun/cordova/admob/AdMobPlugin;->getView()Landroid/view/View;

    move-result-object v0

    .line 688
    .local v0, "mainView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 689
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 691
    :cond_0
    return-void
.end method

.method public onRewardedVideoAdFailedToLoad(I)V
    .locals 4
    .param p1, "errorCode"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    .line 648
    iget-object v0, p0, Lcom/rjfun/cordova/admob/AdMobPlugin$RewardVideoListener;->this$0:Lcom/rjfun/cordova/admob/AdMobPlugin;

    invoke-static {v0}, Lcom/rjfun/cordova/admob/AdMobPlugin;->access$2000(Lcom/rjfun/cordova/admob/AdMobPlugin;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 649
    :try_start_0
    iget-object v0, p0, Lcom/rjfun/cordova/admob/AdMobPlugin$RewardVideoListener;->this$0:Lcom/rjfun/cordova/admob/AdMobPlugin;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/rjfun/cordova/admob/AdMobPlugin;->access$2102(Lcom/rjfun/cordova/admob/AdMobPlugin;Z)Z

    .line 650
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 651
    iget-object v0, p0, Lcom/rjfun/cordova/admob/AdMobPlugin$RewardVideoListener;->this$0:Lcom/rjfun/cordova/admob/AdMobPlugin;

    const-string v1, "onAdFailLoad"

    iget-object v2, p0, Lcom/rjfun/cordova/admob/AdMobPlugin$RewardVideoListener;->this$0:Lcom/rjfun/cordova/admob/AdMobPlugin;

    invoke-virtual {v2, p1}, Lcom/rjfun/cordova/admob/AdMobPlugin;->getErrorReason(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "rewardvideo"

    invoke-static {v0, v1, p1, v2, v3}, Lcom/rjfun/cordova/admob/AdMobPlugin;->access$2200(Lcom/rjfun/cordova/admob/AdMobPlugin;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 652
    return-void

    .line 650
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onRewardedVideoAdLeftApplication()V
    .locals 3

    .prologue
    .line 656
    iget-object v0, p0, Lcom/rjfun/cordova/admob/AdMobPlugin$RewardVideoListener;->this$0:Lcom/rjfun/cordova/admob/AdMobPlugin;

    const-string v1, "onAdLeaveApp"

    const-string v2, "rewardvideo"

    invoke-static {v0, v1, v2}, Lcom/rjfun/cordova/admob/AdMobPlugin;->access$2300(Lcom/rjfun/cordova/admob/AdMobPlugin;Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    return-void
.end method

.method public onRewardedVideoAdLoaded()V
    .locals 3

    .prologue
    .line 661
    iget-object v0, p0, Lcom/rjfun/cordova/admob/AdMobPlugin$RewardVideoListener;->this$0:Lcom/rjfun/cordova/admob/AdMobPlugin;

    invoke-static {v0}, Lcom/rjfun/cordova/admob/AdMobPlugin;->access$2000(Lcom/rjfun/cordova/admob/AdMobPlugin;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 662
    :try_start_0
    iget-object v0, p0, Lcom/rjfun/cordova/admob/AdMobPlugin$RewardVideoListener;->this$0:Lcom/rjfun/cordova/admob/AdMobPlugin;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/rjfun/cordova/admob/AdMobPlugin;->access$2102(Lcom/rjfun/cordova/admob/AdMobPlugin;Z)Z

    .line 663
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 664
    iget-object v0, p0, Lcom/rjfun/cordova/admob/AdMobPlugin$RewardVideoListener;->this$0:Lcom/rjfun/cordova/admob/AdMobPlugin;

    const-string v1, "onAdLoaded"

    const-string v2, "rewardvideo"

    invoke-static {v0, v1, v2}, Lcom/rjfun/cordova/admob/AdMobPlugin;->access$2400(Lcom/rjfun/cordova/admob/AdMobPlugin;Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    iget-object v0, p0, Lcom/rjfun/cordova/admob/AdMobPlugin$RewardVideoListener;->this$0:Lcom/rjfun/cordova/admob/AdMobPlugin;

    invoke-static {v0}, Lcom/rjfun/cordova/admob/AdMobPlugin;->access$2500(Lcom/rjfun/cordova/admob/AdMobPlugin;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 667
    iget-object v0, p0, Lcom/rjfun/cordova/admob/AdMobPlugin$RewardVideoListener;->this$0:Lcom/rjfun/cordova/admob/AdMobPlugin;

    invoke-virtual {v0}, Lcom/rjfun/cordova/admob/AdMobPlugin;->showRewardVideoAd()Z

    .line 669
    :cond_0
    return-void

    .line 663
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onRewardedVideoAdOpened()V
    .locals 3

    .prologue
    .line 673
    iget-object v0, p0, Lcom/rjfun/cordova/admob/AdMobPlugin$RewardVideoListener;->this$0:Lcom/rjfun/cordova/admob/AdMobPlugin;

    const-string v1, "onAdWillPresent"

    const-string v2, "rewardvideo"

    invoke-static {v0, v1, v2}, Lcom/rjfun/cordova/admob/AdMobPlugin;->access$2600(Lcom/rjfun/cordova/admob/AdMobPlugin;Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    return-void
.end method

.method public onRewardedVideoStarted()V
    .locals 3

    .prologue
    .line 678
    iget-object v0, p0, Lcom/rjfun/cordova/admob/AdMobPlugin$RewardVideoListener;->this$0:Lcom/rjfun/cordova/admob/AdMobPlugin;

    const-string v1, "onAdWillPresent"

    const-string v2, "rewardvideo"

    invoke-static {v0, v1, v2}, Lcom/rjfun/cordova/admob/AdMobPlugin;->access$2700(Lcom/rjfun/cordova/admob/AdMobPlugin;Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    return-void
.end method
