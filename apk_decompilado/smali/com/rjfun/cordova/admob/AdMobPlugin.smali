.class public Lcom/rjfun/cordova/admob/AdMobPlugin;
.super Lcom/rjfun/cordova/ad/GenericAdPlugin;
.source "AdMobPlugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rjfun/cordova/admob/AdMobPlugin$RewardVideoListener;,
        Lcom/rjfun/cordova/admob/AdMobPlugin$InterstitialListener;,
        Lcom/rjfun/cordova/admob/AdMobPlugin$BannerListener;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "AdMobPlugin"

.field private static final OPT_ADCOLONY:Ljava/lang/String; = "AdColony"

.field public static final OPT_AD_EXTRAS:Ljava/lang/String; = "adExtras"

.field public static final OPT_CONTENTURL:Ljava/lang/String; = "contentUrl"

.field public static final OPT_CUSTOMTARGETING:Ljava/lang/String; = "customTargeting"

.field public static final OPT_EXCLUDE:Ljava/lang/String; = "exclude"

.field private static final OPT_FACEBOOK:Ljava/lang/String; = "Facebook"

.field private static final OPT_FLURRY:Ljava/lang/String; = "Flurry"

.field public static final OPT_FORCHILD:Ljava/lang/String; = "forChild"

.field public static final OPT_FORFAMILY:Ljava/lang/String; = "forFamily"

.field public static final OPT_GENDER:Ljava/lang/String; = "gender"

.field private static final OPT_INMOBI:Ljava/lang/String; = "InMobi"

.field public static final OPT_LOCATION:Ljava/lang/String; = "location"

.field private static final OPT_MMEDIA:Ljava/lang/String; = "mMedia"

.field private static final OPT_MOBFOX:Ljava/lang/String; = "MobFox"

.field private static final TEST_BANNER_ID:Ljava/lang/String; = "ca-app-pub-3940256099942544/6300978111"

.field private static final TEST_INTERSTITIAL_ID:Ljava/lang/String; = "ca-app-pub-3940256099942544/1033173712"

.field private static final TEST_REWARDVIDEO_ID:Ljava/lang/String; = "ca-app-pub-3940256099942544/1042454297"


# instance fields
.field private adExtras:Lorg/json/JSONObject;

.field private adSize:Lcom/google/android/gms/ads/AdSize;

.field protected mContentURL:Ljava/lang/String;

.field protected mCustomTargeting:Lorg/json/JSONObject;

.field protected mExclude:Lorg/json/JSONArray;

.field protected mForChild:Ljava/lang/String;

.field protected mForFamily:Ljava/lang/String;

.field protected mGender:Ljava/lang/String;

.field private mIsRewardedVideoLoading:Z

.field private mLocation:Landroid/location/Location;

.field private final mLock:Ljava/lang/Object;

.field private mediations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/rjfun/cordova/admob/AdMobMediation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Lcom/rjfun/cordova/ad/GenericAdPlugin;-><init>()V

    .line 54
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->SMART_BANNER:Lcom/google/android/gms/ads/AdSize;

    iput-object v0, p0, Lcom/rjfun/cordova/admob/AdMobPlugin;->adSize:Lcom/google/android/gms/ads/AdSize;

    .line 57
    iput-object v1, p0, Lcom/rjfun/cordova/admob/AdMobPlugin;->adExtras:Lorg/json/JSONObject;

    .line 60
    iput-object v1, p0, Lcom/rjfun/cordova/admob/AdMobPlugin;->mLocation:Landroid/location/Location;

    .line 69
    iput-object v1, p0, Lcom/rjfun/cordova/admob/AdMobPlugin;->mGender:Ljava/lang/String;

    .line 70
    iput-object v1, p0, Lcom/rjfun/cordova/admob/AdMobPlugin;->mForChild:Ljava/lang/String;

    .line 71
    iput-object v1, p0, Lcom/rjfun/cordova/admob/AdMobPlugin;->mForFamily:Ljava/lang/String;

    .line 72
    iput-object v1, p0, Lcom/rjfun/cordova/admob/AdMobPlugin;->mContentURL:Ljava/lang/String;

    .line 73
    iput-object v1, p0, Lcom/rjfun/cordova/admob/AdMobPlugin;->mCustomTargeting:Lorg/json/JSONObject;

    .line 74
    iput-object v1, p0, Lcom/rjfun/cordova/admob/AdMobPlugin;->mExclude:Lorg/json/JSONArray;

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rjfun/cordova/admob/AdMobPlugin;->mIsRewardedVideoLoading:Z

    .line 77
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/rjfun/cordova/admob/AdMobPlugin;->mLock:Ljava/lang/Object;

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/rjfun/cordova/admob/AdMobPlugin;->mediations:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$1000(Lcom/rjfun/cordova/admob/AdMobPlugin;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/rjfun/cordova/admob/AdMobPlugin;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/rjfun/cordova/admob/AdMobPlugin;->fireAdEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/rjfun/cordova/admob/AdMobPlugin;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/rjfun/cordova/admob/AdMobPlugin;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/rjfun/cordova/admob/AdMobPlugin;->fireAdEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/rjfun/cordova/admob/AdMobPlugin;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/rjfun/cordova/admob/AdMobPlugin;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/rjfun/cordova/admob/AdMobPlugin;->fireAdEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/rjfun/cordova/admob/AdMobPlugin;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/rjfun/cordova/admob/AdMobPlugin;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/rjfun/cordova/admob/AdMobPlugin;->fireAdErrorEvent(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/rjfun/cordova/admob/AdMobPlugin;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/rjfun/cordova/admob/AdMobPlugin;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/rjfun/cordova/admob/AdMobPlugin;->fireAdEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1502(Lcom/rjfun/cordova/admob/AdMobPlugin;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/rjfun/cordova/admob/AdMobPlugin;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/rjfun/cordova/admob/AdMobPlugin;->interstitialReady:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/rjfun/cordova/admob/AdMobPlugin;)Z
    .locals 1
    .param p0, "x0"    # Lcom/rjfun/cordova/admob/AdMobPlugin;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/rjfun/cordova/admob/AdMobPlugin;->autoShowInterstitial:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/rjfun/cordova/admob/AdMobPlugin;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/rjfun/cordova/admob/AdMobPlugin;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/rjfun/cordova/admob/AdMobPlugin;->fireAdEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/rjfun/cordova/admob/AdMobPlugin;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/rjfun/cordova/admob/AdMobPlugin;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/rjfun/cordova/admob/AdMobPlugin;->fireAdEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/rjfun/cordova/admob/AdMobPlugin;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/rjfun/cordova/admob/AdMobPlugin;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/rjfun/cordova/admob/AdMobPlugin;->fireAdEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/rjfun/cordova/admob/AdMobPlugin;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/rjfun/cordova/admob/AdMobPlugin;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/rjfun/cordova/admob/AdMobPlugin;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/rjfun/cordova/admob/AdMobPlugin;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/rjfun/cordova/admob/AdMobPlugin;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/rjfun/cordova/admob/AdMobPlugin;->mIsRewardedVideoLoading:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/rjfun/cordova/admob/AdMobPlugin;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/rjfun/cordova/admob/AdMobPlugin;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/rjfun/cordova/admob/AdMobPlugin;->fireAdErrorEvent(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/rjfun/cordova/admob/AdMobPlugin;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/rjfun/cordova/admob/AdMobPlugin;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/rjfun/cordova/admob/AdMobPlugin;->fireAdEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/rjfun/cordova/admob/AdMobPlugin;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/rjfun/cordova/admob/AdMobPlugin;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/rjfun/cordova/admob/AdMobPlugin;->fireAdEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/rjfun/cordova/admob/AdMobPlugin;)Z
    .locals 1
    .param p0, "x0"    # Lcom/rjfun/cordova/admob/AdMobPlugin;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/rjfun/cordova/admob/AdMobPlugin;->autoShowRewardVideo:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/rjfun/cordova/admob/AdMobPlugin;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/rjfun/cordova/admob/AdMobPlugin;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/rjfun/cordova/admob/AdMobPlugin;->fireAdEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/rjfun/cordova/admob/AdMobPlugin;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/rjfun/cordova/admob/AdMobPlugin;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/rjfun/cordova/admob/AdMobPlugin;->fireAdEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/rjfun/cordova/admob/AdMobPlugin;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/rjfun/cordova/admob/AdMobPlugin;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/rjfun/cordova/admob/AdMobPlugin;->fireAdEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/rjfun/cordova/admob/AdMobPlugin;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/rjfun/cordova/admob/AdMobPlugin;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/rjfun/cordova/admob/AdMobPlugin;->fireAdErrorEvent(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/rjfun/cordova/admob/AdMobPlugin;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/rjfun/cordova/admob/AdMobPlugin;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/rjfun/cordova/admob/AdMobPlugin;->fireAdEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/rjfun/cordova/admob/AdMobPlugin;)Z
    .locals 1
    .param p0, "x0"    # Lcom/rjfun/cordova/admob/AdMobPlugin;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/rjfun/cordova/admob/AdMobPlugin;->autoShowBanner:Z

    return v0
.end method

.method static synthetic access$600(Lcom/rjfun/cordova/admob/AdMobPlugin;)Z
    .locals 1
    .param p0, "x0"    # Lcom/rjfun/cordova/admob/AdMobPlugin;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/rjfun/cordova/admob/AdMobPlugin;->bannerVisible:Z

    return v0
.end method

.method static synthetic access$700(Lcom/rjfun/cordova/admob/AdMobPlugin;)I
    .locals 1
    .param p0, "x0"    # Lcom/rjfun/cordova/admob/AdMobPlugin;

    .prologue
    .line 39
    iget v0, p0, Lcom/rjfun/cordova/admob/AdMobPlugin;->adPosition:I

    return v0
.end method

.method static synthetic access$800(Lcom/rjfun/cordova/admob/AdMobPlugin;)I
    .locals 1
    .param p0, "x0"    # Lcom/rjfun/cordova/admob/AdMobPlugin;

    .prologue
    .line 39
    iget v0, p0, Lcom/rjfun/cordova/admob/AdMobPlugin;->posX:I

    return v0
.end method

.method static synthetic access$900(Lcom/rjfun/cordova/admob/AdMobPlugin;)I
    .locals 1
    .param p0, "x0"    # Lcom/rjfun/cordova/admob/AdMobPlugin;

    .prologue
    .line 39
    iget v0, p0, Lcom/rjfun/cordova/admob/AdMobPlugin;->posY:I

    return v0
.end method

.method public static adSizeFromString(Ljava/lang/String;)Lcom/google/android/gms/ads/AdSize;
    .locals 1
    .param p0, "size"    # Ljava/lang/String;

    .prologue
    .line 532
    const-string v0, "BANNER"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 533
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    .line 547
    :goto_0
    return-object v0

    .line 534
    :cond_0
    const-string v0, "SMART_BANNER"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 535
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->SMART_BANNER:Lcom/google/android/gms/ads/AdSize;

    goto :goto_0

    .line 536
    :cond_1
    const-string v0, "MEDIUM_RECTANGLE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 537
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->MEDIUM_RECTANGLE:Lcom/google/android/gms/ads/AdSize;

    goto :goto_0

    .line 538
    :cond_2
    const-string v0, "FULL_BANNER"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 539
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->FULL_BANNER:Lcom/google/android/gms/ads/AdSize;

    goto :goto_0

    .line 540
    :cond_3
    const-string v0, "LEADERBOARD"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 541
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->LEADERBOARD:Lcom/google/android/gms/ads/AdSize;

    goto :goto_0

    .line 542
    :cond_4
    const-string v0, "SKYSCRAPER"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 543
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->WIDE_SKYSCRAPER:Lcom/google/android/gms/ads/AdSize;

    goto :goto_0

    .line 544
    :cond_5
    const-string v0, "LARGE_BANNER"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 545
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->LARGE_BANNER:Lcom/google/android/gms/ads/AdSize;

    goto :goto_0

    .line 547
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private buildAdRequest()Lcom/google/android/gms/ads/AdRequest;
    .locals 15
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/rjfun/cordova/admob/AdMobPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 341
    .local v1, "activity":Landroid/app/Activity;
    new-instance v2, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v2}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    .line 343
    .local v2, "builder":Lcom/google/android/gms/ads/AdRequest$Builder;
    iget-boolean v10, p0, Lcom/rjfun/cordova/admob/AdMobPlugin;->isTesting:Z

    if-eqz v10, :cond_0

    .line 345
    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "android_id"

    invoke-static {v10, v11}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 346
    .local v0, "ANDROID_ID":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/rjfun/cordova/admob/AdMobPlugin;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 347
    .local v4, "deviceId":Ljava/lang/String;
    invoke-virtual {v2, v4}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v10

    const-string v11, "B3EEABB8EE11C2BE770B684D95219ECB"

    invoke-virtual {v10, v11}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v2

    .line 350
    .end local v0    # "ANDROID_ID":Ljava/lang/String;
    .end local v4    # "deviceId":Ljava/lang/String;
    :cond_0
    iget-object v10, p0, Lcom/rjfun/cordova/admob/AdMobPlugin;->adExtras:Lorg/json/JSONObject;

    if-eqz v10, :cond_2

    .line 351
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 352
    .local v3, "bundle":Landroid/os/Bundle;
    const-string v10, "cordova"

    const/4 v11, 0x1

    invoke-virtual {v3, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 353
    iget-object v10, p0, Lcom/rjfun/cordova/admob/AdMobPlugin;->adExtras:Lorg/json/JSONObject;

    invoke-virtual {v10}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v7

    .line 354
    .local v7, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 355
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 357
    .local v8, "key":Ljava/lang/String;
    :try_start_0
    iget-object v10, p0, Lcom/rjfun/cordova/admob/AdMobPlugin;->adExtras:Lorg/json/JSONObject;

    invoke-virtual {v10, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v8, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 358
    :catch_0
    move-exception v5

    .line 359
    .local v5, "exception":Lorg/json/JSONException;
    const-string v10, "AdMobPlugin"

    const-string v11, "Caught JSON Exception: %s"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual {v5}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 362
    .end local v5    # "exception":Lorg/json/JSONException;
    .end local v8    # "key":Ljava/lang/String;
    :cond_1
    new-instance v10, Lcom/google/android/gms/ads/mediation/admob/AdMobExtras;

    invoke-direct {v10, v3}, Lcom/google/android/gms/ads/mediation/admob/AdMobExtras;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v2, v10}, Lcom/google/android/gms/ads/AdRequest$Builder;->addNetworkExtras(Lcom/google/android/gms/ads/mediation/NetworkExtras;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v2

    .line 365
    .end local v3    # "bundle":Landroid/os/Bundle;
    .end local v7    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    iget-object v10, p0, Lcom/rjfun/cordova/admob/AdMobPlugin;->mediations:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 366
    .restart local v7    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 367
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 368
    .restart local v8    # "key":Ljava/lang/String;
    iget-object v10, p0, Lcom/rjfun/cordova/admob/AdMobPlugin;->mediations:Ljava/util/HashMap;

    invoke-virtual {v10, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/rjfun/cordova/admob/AdMobMediation;

    .line 369
    .local v9, "m":Lcom/rjfun/cordova/admob/AdMobMediation;
    if-eqz v9, :cond_3

    .line 370
    invoke-virtual {v9, v2}, Lcom/rjfun/cordova/admob/AdMobMediation;->joinAdRequest(Lcom/google/android/gms/ads/AdRequest$Builder;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v2

    goto :goto_1

    .line 374
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "m":Lcom/rjfun/cordova/admob/AdMobMediation;
    :cond_4
    iget-object v10, p0, Lcom/rjfun/cordova/admob/AdMobPlugin;->mGender:Ljava/lang/String;

    if-eqz v10, :cond_5

    .line 375
    const-string v10, "male"

    iget-object v11, p0, Lcom/rjfun/cordova/admob/AdMobPlugin;->mGender:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_a

    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Lcom/google/android/gms/ads/AdRequest$Builder;->setGender(I)Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 379
    :cond_5
    :goto_2
    iget-object v10, p0, Lcom/rjfun/cordova/admob/AdMobPlugin;->mLocation:Landroid/location/Location;

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/rjfun/cordova/admob/AdMobPlugin;->mLocation:Landroid/location/Location;

    invoke-virtual {v2, v10}, Lcom/google/android/gms/ads/AdRequest$Builder;->setLocation(Landroid/location/Location;)Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 380
    :cond_6
    iget-object v10, p0, Lcom/rjfun/cordova/admob/AdMobPlugin;->mForFamily:Ljava/lang/String;

    if-eqz v10, :cond_7

    .line 381
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 382
    .local v6, "extras":Landroid/os/Bundle;
    const-string v10, "is_designed_for_families"

    const/4 v11, 0x1

    invoke-virtual {v6, v10, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 383
    const-class v10, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {v2, v10, v6}, Lcom/google/android/gms/ads/AdRequest$Builder;->addNetworkExtrasBundle(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 385
    .end local v6    # "extras":Landroid/os/Bundle;
    :cond_7
    iget-object v10, p0, Lcom/rjfun/cordova/admob/AdMobPlugin;->mForChild:Ljava/lang/String;

    if-eqz v10, :cond_8

    .line 386
    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Lcom/google/android/gms/ads/AdRequest$Builder;->tagForChildDirectedTreatment(Z)Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 388
    :cond_8
    iget-object v10, p0, Lcom/rjfun/cordova/admob/AdMobPlugin;->mContentURL:Ljava/lang/String;

    if-eqz v10, :cond_9

    .line 389
    iget-object v10, p0, Lcom/rjfun/cordova/admob/AdMobPlugin;->mContentURL:Ljava/lang/String;

    invoke-virtual {v2, v10}, Lcom/google/android/gms/ads/AdRequest$Builder;->setContentUrl(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 392
    :cond_9
    invoke-virtual {v2}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v10

    return-object v10

    .line 376
    :cond_a
    const-string v10, "female"

    iget-object v11, p0, Lcom/rjfun/cordova/admob/AdMobPlugin;->mGender:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_b

    const/4 v10, 0x2

    invoke-virtual {v2, v10}, Lcom/google/android/gms/ads/AdRequest$Builder;->setGender(I)Lcom/google/android/gms/ads/AdRequest$Builder;

    goto :goto_2

    .line 377
    :cond_b
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lcom/google/android/gms/ads/AdRequest$Builder;->setGender(I)Lcom/google/android/gms/ads/AdRequest$Builder;

    goto :goto_2
.end method

.method private buildPublisherAdRequest()Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;
    .locals 24
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    .line 397
    invoke-virtual/range {p0 .. p0}, Lcom/rjfun/cordova/admob/AdMobPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 398
    .local v3, "activity":Landroid/app/Activity;
    new-instance v4, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;

    invoke-direct {v4}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;-><init>()V

    .line 400
    .local v4, "builder":Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/rjfun/cordova/admob/AdMobPlugin;->isTesting:Z

    move/from16 v19, v0

    if-eqz v19, :cond_0

    .line 402
    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "android_id"

    invoke-static/range {v19 .. v20}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 403
    .local v2, "ANDROID_ID":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/rjfun/cordova/admob/AdMobPlugin;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    .line 404
    .local v6, "deviceId":Ljava/lang/String;
    invoke-virtual {v4, v6}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;

    move-result-object v19

    const-string v20, "B3EEABB8EE11C2BE770B684D95219ECB"

    invoke-virtual/range {v19 .. v20}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;

    move-result-object v4

    .line 407
    .end local v2    # "ANDROID_ID":Ljava/lang/String;
    .end local v6    # "deviceId":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rjfun/cordova/admob/AdMobPlugin;->adExtras:Lorg/json/JSONObject;

    move-object/from16 v19, v0

    if-eqz v19, :cond_2

    .line 408
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 409
    .local v5, "bundle":Landroid/os/Bundle;
    const-string v19, "cordova"

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rjfun/cordova/admob/AdMobPlugin;->adExtras:Lorg/json/JSONObject;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v11

    .line 411
    .local v11, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_1

    .line 412
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 414
    .local v13, "key":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rjfun/cordova/admob/AdMobPlugin;->adExtras:Lorg/json/JSONObject;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v13, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 415
    :catch_0
    move-exception v8

    .line 416
    .local v8, "exception":Lorg/json/JSONException;
    const-string v19, "AdMobPlugin"

    const-string v20, "Caught JSON Exception: %s"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual {v8}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 419
    .end local v8    # "exception":Lorg/json/JSONException;
    .end local v13    # "key":Ljava/lang/String;
    :cond_1
    new-instance v19, Lcom/google/android/gms/ads/mediation/admob/AdMobExtras;

    move-object/from16 v0, v19

    invoke-direct {v0, v5}, Lcom/google/android/gms/ads/mediation/admob/AdMobExtras;-><init>(Landroid/os/Bundle;)V

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->addNetworkExtras(Lcom/google/android/gms/ads/mediation/NetworkExtras;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;

    move-result-object v4

    .line 422
    .end local v5    # "bundle":Landroid/os/Bundle;
    .end local v11    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rjfun/cordova/admob/AdMobPlugin;->mGender:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_3

    .line 423
    const-string v19, "male"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rjfun/cordova/admob/AdMobPlugin;->mGender:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v19

    if-eqz v19, :cond_9

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->setGender(I)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;

    .line 427
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rjfun/cordova/admob/AdMobPlugin;->mLocation:Landroid/location/Location;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rjfun/cordova/admob/AdMobPlugin;->mLocation:Landroid/location/Location;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->setLocation(Landroid/location/Location;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;

    .line 428
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rjfun/cordova/admob/AdMobPlugin;->mForFamily:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_5

    .line 429
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 430
    .local v9, "extras":Landroid/os/Bundle;
    const-string v20, "is_designed_for_families"

    const-string v19, "yes"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rjfun/cordova/admob/AdMobPlugin;->mForChild:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v19

    if-nez v19, :cond_b

    const/16 v19, 0x1

    :goto_2
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 431
    const-class v19, Lcom/google/ads/mediation/admob/AdMobAdapter;

    move-object/from16 v0, v19

    invoke-virtual {v4, v0, v9}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->addNetworkExtrasBundle(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;

    .line 433
    .end local v9    # "extras":Landroid/os/Bundle;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rjfun/cordova/admob/AdMobPlugin;->mForChild:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_6

    .line 434
    const-string v19, "yes"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rjfun/cordova/admob/AdMobPlugin;->mForChild:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v19

    if-nez v19, :cond_c

    const/16 v19, 0x1

    :goto_3
    move/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->tagForChildDirectedTreatment(Z)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;

    .line 436
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rjfun/cordova/admob/AdMobPlugin;->mContentURL:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_7

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rjfun/cordova/admob/AdMobPlugin;->mContentURL:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->setContentUrl(Ljava/lang/String;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;

    .line 441
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rjfun/cordova/admob/AdMobPlugin;->mCustomTargeting:Lorg/json/JSONObject;

    move-object/from16 v19, v0

    if-eqz v19, :cond_f

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rjfun/cordova/admob/AdMobPlugin;->mCustomTargeting:Lorg/json/JSONObject;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v12

    .line 443
    .local v12, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_8
    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_f

    .line 444
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 445
    .restart local v13    # "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rjfun/cordova/admob/AdMobPlugin;->mCustomTargeting:Lorg/json/JSONObject;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 446
    .local v16, "str":Ljava/lang/String;
    if-eqz v16, :cond_d

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_d

    .line 447
    move-object/from16 v0, v16

    invoke-virtual {v4, v13, v0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->addCustomTargeting(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;

    goto :goto_4

    .line 424
    .end local v12    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v13    # "key":Ljava/lang/String;
    .end local v16    # "str":Ljava/lang/String;
    :cond_9
    const-string v19, "female"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rjfun/cordova/admob/AdMobPlugin;->mGender:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v19

    if-eqz v19, :cond_a

    const/16 v19, 0x2

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->setGender(I)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;

    goto/16 :goto_1

    .line 425
    :cond_a
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->setGender(I)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;

    goto/16 :goto_1

    .line 430
    .restart local v9    # "extras":Landroid/os/Bundle;
    :cond_b
    const/16 v19, 0x0

    goto/16 :goto_2

    .line 434
    .end local v9    # "extras":Landroid/os/Bundle;
    :cond_c
    const/16 v19, 0x0

    goto :goto_3

    .line 449
    .restart local v12    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v13    # "key":Ljava/lang/String;
    .restart local v16    # "str":Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rjfun/cordova/admob/AdMobPlugin;->mCustomTargeting:Lorg/json/JSONObject;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v18

    .line 450
    .local v18, "strs":Lorg/json/JSONArray;
    if-eqz v18, :cond_8

    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONArray;->length()I

    move-result v19

    if-lez v19, :cond_8

    .line 451
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 452
    .local v17, "strlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_5
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONArray;->length()I

    move-result v19

    move/from16 v0, v19

    if-ge v10, v0, :cond_e

    .line 453
    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 452
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 454
    :cond_e
    move-object/from16 v0, v17

    invoke-virtual {v4, v13, v0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->addCustomTargeting(Ljava/lang/String;Ljava/util/List;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;

    goto/16 :goto_4

    .line 459
    .end local v10    # "i":I
    .end local v12    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v13    # "key":Ljava/lang/String;
    .end local v16    # "str":Ljava/lang/String;
    .end local v17    # "strlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v18    # "strs":Lorg/json/JSONArray;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rjfun/cordova/admob/AdMobPlugin;->mExclude:Lorg/json/JSONArray;

    move-object/from16 v19, v0

    if-eqz v19, :cond_12

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rjfun/cordova/admob/AdMobPlugin;->mExclude:Lorg/json/JSONArray;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONArray;->length()I

    move-result v15

    .line 461
    .local v15, "n":I
    if-lez v15, :cond_12

    .line 463
    const/4 v14, 0x0

    .line 464
    .local v14, "method":Ljava/lang/reflect/Method;
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    const-string v20, "addCategoryExclusion"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-class v23, Ljava/lang/String;

    aput-object v23, v21, v22

    invoke-virtual/range {v19 .. v21}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v14

    .line 465
    if-eqz v14, :cond_12

    .line 467
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_6
    if-ge v10, v15, :cond_12

    .line 468
    const/16 v19, 0x1

    :try_start_2
    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rjfun/cordova/admob/AdMobPlugin;->mExclude:Lorg/json/JSONArray;

    move-object/from16 v21, v0

    const-string v22, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v10, v1}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, v19

    invoke-virtual {v14, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1

    .line 467
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 473
    .end local v10    # "i":I
    :catch_1
    move-exception v7

    .line 475
    .local v7, "e":Ljava/lang/NoSuchMethodException;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 476
    .restart local v5    # "bundle":Landroid/os/Bundle;
    const-string v16, ""

    .line 477
    .restart local v16    # "str":Ljava/lang/String;
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_7
    if-ge v10, v15, :cond_11

    .line 478
    if-lez v10, :cond_10

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 479
    :cond_10
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rjfun/cordova/admob/AdMobPlugin;->mExclude:Lorg/json/JSONArray;

    move-object/from16 v20, v0

    const-string v21, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v10, v1}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 477
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 481
    :cond_11
    const-string v19, "excl_cat"

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    new-instance v19, Lcom/google/android/gms/ads/mediation/admob/AdMobExtras;

    move-object/from16 v0, v19

    invoke-direct {v0, v5}, Lcom/google/android/gms/ads/mediation/admob/AdMobExtras;-><init>(Landroid/os/Bundle;)V

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->addNetworkExtras(Lcom/google/android/gms/ads/mediation/NetworkExtras;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;

    .line 487
    .end local v5    # "bundle":Landroid/os/Bundle;
    .end local v7    # "e":Ljava/lang/NoSuchMethodException;
    .end local v10    # "i":I
    .end local v14    # "method":Ljava/lang/reflect/Method;
    .end local v15    # "n":I
    .end local v16    # "str":Ljava/lang/String;
    :cond_12
    :goto_8
    invoke-virtual {v4}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->build()Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;

    move-result-object v19

    return-object v19

    .line 470
    .restart local v10    # "i":I
    .restart local v14    # "method":Ljava/lang/reflect/Method;
    .restart local v15    # "n":I
    :catch_2
    move-exception v19

    goto :goto_8
.end method


# virtual methods
.method protected __createAdView(Ljava/lang/String;)Landroid/view/View;
    .locals 5
    .param p1, "adId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 149
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string p1, "ca-app-pub-3940256099942544/6300978111"

    .line 153
    :cond_1
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_2

    .line 154
    new-instance v0, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    invoke-virtual {p0}, Lcom/rjfun/cordova/admob/AdMobPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;-><init>(Landroid/content/Context;)V

    .line 155
    .local v0, "ad":Lcom/google/android/gms/ads/doubleclick/PublisherAdView;
    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->setAdUnitId(Ljava/lang/String;)V

    .line 156
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/gms/ads/AdSize;

    iget-object v2, p0, Lcom/rjfun/cordova/admob/AdMobPlugin;->adSize:Lcom/google/android/gms/ads/AdSize;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->setAdSizes([Lcom/google/android/gms/ads/AdSize;)V

    .line 157
    new-instance v1, Lcom/rjfun/cordova/admob/AdMobPlugin$BannerListener;

    invoke-direct {v1, p0, v4}, Lcom/rjfun/cordova/admob/AdMobPlugin$BannerListener;-><init>(Lcom/rjfun/cordova/admob/AdMobPlugin;Lcom/rjfun/cordova/admob/AdMobPlugin$1;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 164
    .end local v0    # "ad":Lcom/google/android/gms/ads/doubleclick/PublisherAdView;
    :goto_0
    return-object v0

    .line 160
    :cond_2
    new-instance v0, Lcom/google/android/gms/ads/AdView;

    invoke-virtual {p0}, Lcom/rjfun/cordova/admob/AdMobPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    .line 161
    .local v0, "ad":Lcom/google/android/gms/ads/AdView;
    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/AdView;->setAdUnitId(Ljava/lang/String;)V

    .line 162
    iget-object v1, p0, Lcom/rjfun/cordova/admob/AdMobPlugin;->adSize:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    .line 163
    new-instance v1, Lcom/rjfun/cordova/admob/AdMobPlugin$BannerListener;

    invoke-direct {v1, p0, v4}, Lcom/rjfun/cordova/admob/AdMobPlugin$BannerListener;-><init>(Lcom/rjfun/cordova/admob/AdMobPlugin;Lcom/rjfun/cordova/admob/AdMobPlugin$1;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    goto :goto_0
.end method

.method protected __createInterstitial(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "adId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 244
    iput-boolean v2, p0, Lcom/rjfun/cordova/admob/AdMobPlugin;->interstitialReady:Z

    .line 246
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string p1, "ca-app-pub-3940256099942544/1033173712"

    .line 248
    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_2

    .line 249
    new-instance v0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;

    invoke-virtual {p0}, Lcom/rjfun/cordova/admob/AdMobPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;-><init>(Landroid/content/Context;)V

    .line 250
    .local v0, "ad":Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;
    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    .line 251
    new-instance v1, Lcom/rjfun/cordova/admob/AdMobPlugin$InterstitialListener;

    invoke-direct {v1, p0, v3}, Lcom/rjfun/cordova/admob/AdMobPlugin$InterstitialListener;-><init>(Lcom/rjfun/cordova/admob/AdMobPlugin;Lcom/rjfun/cordova/admob/AdMobPlugin$1;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 257
    .end local v0    # "ad":Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;
    :goto_0
    return-object v0

    .line 254
    :cond_2
    new-instance v0, Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {p0}, Lcom/rjfun/cordova/admob/AdMobPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    .line 255
    .local v0, "ad":Lcom/google/android/gms/ads/InterstitialAd;
    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/InterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    .line 256
    new-instance v1, Lcom/rjfun/cordova/admob/AdMobPlugin$InterstitialListener;

    invoke-direct {v1, p0, v3}, Lcom/rjfun/cordova/admob/AdMobPlugin$InterstitialListener;-><init>(Lcom/rjfun/cordova/admob/AdMobPlugin;Lcom/rjfun/cordova/admob/AdMobPlugin$1;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    goto :goto_0
.end method

.method protected __destroyAdView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 229
    if-nez p1, :cond_0

    .line 240
    :goto_0
    return-void

    .line 231
    :cond_0
    instance-of v2, p1, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    if-eqz v2, :cond_1

    move-object v1, p1

    .line 232
    check-cast v1, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    .line 233
    .local v1, "dfpView":Lcom/google/android/gms/ads/doubleclick/PublisherAdView;
    invoke-virtual {v1, v3}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 234
    invoke-virtual {v1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->destroy()V

    goto :goto_0

    .end local v1    # "dfpView":Lcom/google/android/gms/ads/doubleclick/PublisherAdView;
    :cond_1
    move-object v0, p1

    .line 236
    check-cast v0, Lcom/google/android/gms/ads/AdView;

    .line 237
    .local v0, "admobView":Lcom/google/android/gms/ads/AdView;
    invoke-virtual {v0, v3}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 238
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->destroy()V

    goto :goto_0
.end method

.method protected __destroyInterstitial(Ljava/lang/Object;)V
    .locals 2
    .param p1, "interstitial"    # Ljava/lang/Object;

    .prologue
    .line 295
    if-nez p1, :cond_1

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 297
    :cond_1
    instance-of v1, p1, Lcom/google/android/gms/ads/InterstitialAd;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 298
    check-cast v0, Lcom/google/android/gms/ads/InterstitialAd;

    .line 299
    .local v0, "ad":Lcom/google/android/gms/ads/InterstitialAd;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    goto :goto_0
.end method

.method protected __getAdViewHeight(Landroid/view/View;)I
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 197
    invoke-virtual {p0, p1}, Lcom/rjfun/cordova/admob/AdMobPlugin;->getAdViewSize(Landroid/view/View;)Lcom/google/android/gms/ads/AdSize;

    move-result-object v0

    .line 198
    .local v0, "sz":Lcom/google/android/gms/ads/AdSize;
    invoke-virtual {p0}, Lcom/rjfun/cordova/admob/AdMobPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdSize;->getHeightInPixels(Landroid/content/Context;)I

    move-result v1

    return v1
.end method

.method protected __getAdViewWidth(Landroid/view/View;)I
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 191
    invoke-virtual {p0, p1}, Lcom/rjfun/cordova/admob/AdMobPlugin;->getAdViewSize(Landroid/view/View;)Lcom/google/android/gms/ads/AdSize;

    move-result-object v0

    .line 192
    .local v0, "sz":Lcom/google/android/gms/ads/AdSize;
    invoke-virtual {p0}, Lcom/rjfun/cordova/admob/AdMobPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdSize;->getWidthInPixels(Landroid/content/Context;)I

    move-result v1

    return v1
.end method

.method protected __getProductShortName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    const-string v0, "AdMob"

    return-object v0
.end method

.method protected __getTestBannerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    const-string v0, "ca-app-pub-3940256099942544/6300978111"

    return-object v0
.end method

.method protected __getTestInterstitialId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    const-string v0, "ca-app-pub-3940256099942544/1033173712"

    return-object v0
.end method

.method protected __getTestRewardVideoId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    const-string v0, "ca-app-pub-3940256099942544/1042454297"

    return-object v0
.end method

.method protected __loadAdView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 170
    instance-of v1, p1, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 171
    check-cast v0, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    .line 172
    .local v0, "ad":Lcom/google/android/gms/ads/doubleclick/PublisherAdView;
    invoke-direct {p0}, Lcom/rjfun/cordova/admob/AdMobPlugin;->buildPublisherAdRequest()Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->loadAd(Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;)V

    .line 177
    .end local v0    # "ad":Lcom/google/android/gms/ads/doubleclick/PublisherAdView;
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 174
    check-cast v0, Lcom/google/android/gms/ads/AdView;

    .line 175
    .local v0, "ad":Lcom/google/android/gms/ads/AdView;
    invoke-direct {p0}, Lcom/rjfun/cordova/admob/AdMobPlugin;->buildAdRequest()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    goto :goto_0
.end method

.method protected __loadInterstitial(Ljava/lang/Object;)V
    .locals 2
    .param p1, "interstitial"    # Ljava/lang/Object;

    .prologue
    .line 263
    if-nez p1, :cond_1

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    instance-of v1, p1, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;

    if-eqz v1, :cond_2

    move-object v0, p1

    .line 266
    check-cast v0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;

    .line 267
    .local v0, "ad":Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;
    invoke-direct {p0}, Lcom/rjfun/cordova/admob/AdMobPlugin;->buildPublisherAdRequest()Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->loadAd(Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;)V

    goto :goto_0

    .line 268
    .end local v0    # "ad":Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;
    :cond_2
    instance-of v1, p1, Lcom/google/android/gms/ads/InterstitialAd;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 269
    check-cast v0, Lcom/google/android/gms/ads/InterstitialAd;

    .line 270
    .local v0, "ad":Lcom/google/android/gms/ads/InterstitialAd;
    invoke-direct {p0}, Lcom/rjfun/cordova/admob/AdMobPlugin;->buildAdRequest()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    goto :goto_0
.end method

.method protected __pauseAdView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 203
    if-nez p1, :cond_0

    .line 212
    :goto_0
    return-void

    .line 205
    :cond_0
    instance-of v2, p1, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    if-eqz v2, :cond_1

    move-object v1, p1

    .line 206
    check-cast v1, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    .line 207
    .local v1, "dfpView":Lcom/google/android/gms/ads/doubleclick/PublisherAdView;
    invoke-virtual {v1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->pause()V

    goto :goto_0

    .end local v1    # "dfpView":Lcom/google/android/gms/ads/doubleclick/PublisherAdView;
    :cond_1
    move-object v0, p1

    .line 209
    check-cast v0, Lcom/google/android/gms/ads/AdView;

    .line 210
    .local v0, "admobView":Lcom/google/android/gms/ads/AdView;
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->pause()V

    goto :goto_0
.end method

.method protected __prepareRewardVideoAd(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .param p1, "adId"    # Ljava/lang/String;

    .prologue
    .line 306
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    const-string p1, "ca-app-pub-3940256099942544/1042454297"

    .line 308
    :cond_1
    invoke-virtual {p0}, Lcom/rjfun/cordova/admob/AdMobPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/ads/MobileAds;->getRewardedVideoAdInstance(Landroid/content/Context;)Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    move-result-object v0

    .line 309
    .local v0, "ad":Lcom/google/android/gms/ads/reward/RewardedVideoAd;
    new-instance v3, Lcom/rjfun/cordova/admob/AdMobPlugin$RewardVideoListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/rjfun/cordova/admob/AdMobPlugin$RewardVideoListener;-><init>(Lcom/rjfun/cordova/admob/AdMobPlugin;Lcom/rjfun/cordova/admob/AdMobPlugin$1;)V

    invoke-interface {v0, v3}, Lcom/google/android/gms/ads/reward/RewardedVideoAd;->setRewardedVideoAdListener(Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;)V

    .line 311
    iget-object v4, p0, Lcom/rjfun/cordova/admob/AdMobPlugin;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 312
    :try_start_0
    iget-boolean v3, p0, Lcom/rjfun/cordova/admob/AdMobPlugin;->mIsRewardedVideoLoading:Z

    if-nez v3, :cond_2

    .line 313
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/rjfun/cordova/admob/AdMobPlugin;->mIsRewardedVideoLoading:Z

    .line 314
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 315
    .local v2, "extras":Landroid/os/Bundle;
    const-string v3, "_noRefresh"

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 316
    new-instance v3, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v3}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    const-class v5, Lcom/google/ads/mediation/admob/AdMobAdapter;

    .line 317
    invoke-virtual {v3, v5, v2}, Lcom/google/android/gms/ads/AdRequest$Builder;->addNetworkExtrasBundle(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v3

    .line 318
    invoke-virtual {v3}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    .line 319
    .local v1, "adRequest":Lcom/google/android/gms/ads/AdRequest;
    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/ads/reward/RewardedVideoAd;->loadAd(Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;)V

    .line 321
    .end local v1    # "adRequest":Lcom/google/android/gms/ads/AdRequest;
    .end local v2    # "extras":Landroid/os/Bundle;
    :cond_2
    monitor-exit v4

    .line 323
    return-object v0

    .line 321
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method protected __resumeAdView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 216
    if-nez p1, :cond_0

    .line 225
    :goto_0
    return-void

    .line 218
    :cond_0
    instance-of v2, p1, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    if-eqz v2, :cond_1

    move-object v1, p1

    .line 219
    check-cast v1, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    .line 220
    .local v1, "dfpView":Lcom/google/android/gms/ads/doubleclick/PublisherAdView;
    invoke-virtual {v1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->resume()V

    goto :goto_0

    .end local v1    # "dfpView":Lcom/google/android/gms/ads/doubleclick/PublisherAdView;
    :cond_1
    move-object v0, p1

    .line 222
    check-cast v0, Lcom/google/android/gms/ads/AdView;

    .line 223
    .local v0, "admobView":Lcom/google/android/gms/ads/AdView;
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->resume()V

    goto :goto_0
.end method

.method protected __showInterstitial(Ljava/lang/Object;)V
    .locals 2
    .param p1, "interstitial"    # Ljava/lang/Object;

    .prologue
    .line 276
    if-nez p1, :cond_1

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    instance-of v1, p1, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;

    if-eqz v1, :cond_2

    move-object v0, p1

    .line 279
    check-cast v0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;

    .line 280
    .local v0, "ad":Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;
    invoke-virtual {v0}, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->isLoaded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 281
    invoke-virtual {v0}, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->show()V

    goto :goto_0

    .line 284
    .end local v0    # "ad":Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;
    :cond_2
    instance-of v1, p1, Lcom/google/android/gms/ads/InterstitialAd;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 285
    check-cast v0, Lcom/google/android/gms/ads/InterstitialAd;

    .line 286
    .local v0, "ad":Lcom/google/android/gms/ads/InterstitialAd;
    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->isLoaded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 287
    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->show()V

    goto :goto_0
.end method

.method protected __showRewardVideoAd(Ljava/lang/Object;)V
    .locals 2
    .param p1, "rewardvideo"    # Ljava/lang/Object;

    .prologue
    .line 328
    if-nez p1, :cond_1

    .line 336
    :cond_0
    :goto_0
    return-void

    .line 330
    :cond_1
    instance-of v1, p1, Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 331
    check-cast v0, Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    .line 332
    .local v0, "ad":Lcom/google/android/gms/ads/reward/RewardedVideoAd;
    invoke-interface {v0}, Lcom/google/android/gms/ads/reward/RewardedVideoAd;->isLoaded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 333
    invoke-interface {v0}, Lcom/google/android/gms/ads/reward/RewardedVideoAd;->show()V

    goto :goto_0
.end method

.method protected getAdViewSize(Landroid/view/View;)Lcom/google/android/gms/ads/AdSize;
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 180
    instance-of v2, p1, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 181
    check-cast v1, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    .line 182
    .local v1, "dfpView":Lcom/google/android/gms/ads/doubleclick/PublisherAdView;
    invoke-virtual {v1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->getAdSize()Lcom/google/android/gms/ads/AdSize;

    move-result-object v2

    .line 185
    .end local v1    # "dfpView":Lcom/google/android/gms/ads/doubleclick/PublisherAdView;
    :goto_0
    return-object v2

    :cond_0
    move-object v0, p1

    .line 184
    check-cast v0, Lcom/google/android/gms/ads/AdView;

    .line 185
    .local v0, "admobView":Lcom/google/android/gms/ads/AdView;
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->getAdSize()Lcom/google/android/gms/ads/AdSize;

    move-result-object v2

    goto :goto_0
.end method

.method public getErrorReason(I)Ljava/lang/String;
    .locals 1
    .param p1, "errorCode"    # I

    .prologue
    .line 704
    const-string v0, ""

    .line 705
    .local v0, "errorReason":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 719
    :goto_0
    return-object v0

    .line 707
    :pswitch_0
    const-string v0, "Internal error"

    .line 708
    goto :goto_0

    .line 710
    :pswitch_1
    const-string v0, "Invalid request"

    .line 711
    goto :goto_0

    .line 713
    :pswitch_2
    const-string v0, "Network Error"

    .line 714
    goto :goto_0

    .line 716
    :pswitch_3
    const-string v0, "No fill"

    goto :goto_0

    .line 705
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 515
    iget-object v3, p0, Lcom/rjfun/cordova/admob/AdMobPlugin;->mediations:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 516
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 517
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 518
    .local v1, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/rjfun/cordova/admob/AdMobPlugin;->mediations:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/rjfun/cordova/admob/AdMobMediation;

    .line 519
    .local v2, "m":Lcom/rjfun/cordova/admob/AdMobMediation;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/rjfun/cordova/admob/AdMobMediation;->onDestroy()V

    goto :goto_0

    .line 521
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "m":Lcom/rjfun/cordova/admob/AdMobMediation;
    :cond_1
    invoke-super {p0}, Lcom/rjfun/cordova/ad/GenericAdPlugin;->onDestroy()V

    .line 522
    return-void
.end method

.method public onPause(Z)V
    .locals 4
    .param p1, "multitasking"    # Z

    .prologue
    .line 492
    iget-object v3, p0, Lcom/rjfun/cordova/admob/AdMobPlugin;->mediations:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 493
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 494
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 495
    .local v1, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/rjfun/cordova/admob/AdMobPlugin;->mediations:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/rjfun/cordova/admob/AdMobMediation;

    .line 496
    .local v2, "m":Lcom/rjfun/cordova/admob/AdMobMediation;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/rjfun/cordova/admob/AdMobMediation;->onPause()V

    goto :goto_0

    .line 499
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "m":Lcom/rjfun/cordova/admob/AdMobMediation;
    :cond_1
    invoke-super {p0, p1}, Lcom/rjfun/cordova/ad/GenericAdPlugin;->onPause(Z)V

    .line 500
    return-void
.end method

.method public onResume(Z)V
    .locals 4
    .param p1, "multitasking"    # Z

    .prologue
    .line 504
    invoke-super {p0, p1}, Lcom/rjfun/cordova/ad/GenericAdPlugin;->onResume(Z)V

    .line 505
    iget-object v3, p0, Lcom/rjfun/cordova/admob/AdMobPlugin;->mediations:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 506
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 507
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 508
    .local v1, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/rjfun/cordova/admob/AdMobPlugin;->mediations:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/rjfun/cordova/admob/AdMobMediation;

    .line 509
    .local v2, "m":Lcom/rjfun/cordova/admob/AdMobMediation;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/rjfun/cordova/admob/AdMobMediation;->onResume()V

    goto :goto_0

    .line 511
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "m":Lcom/rjfun/cordova/admob/AdMobMediation;
    :cond_1
    return-void
.end method

.method protected pluginInitialize()V
    .locals 0

    .prologue
    .line 83
    invoke-super {p0}, Lcom/rjfun/cordova/ad/GenericAdPlugin;->pluginInitialize()V

    .line 86
    return-void
.end method

.method public setOptions(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "options"    # Lorg/json/JSONObject;

    .prologue
    const-wide/16 v4, 0x0

    .line 108
    invoke-super {p0, p1}, Lcom/rjfun/cordova/ad/GenericAdPlugin;->setOptions(Lorg/json/JSONObject;)V

    .line 110
    const-string v1, "adSize"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "adSize"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/rjfun/cordova/admob/AdMobPlugin;->adSizeFromString(Ljava/lang/String;)Lcom/google/android/gms/ads/AdSize;

    move-result-object v1

    iput-object v1, p0, Lcom/rjfun/cordova/admob/AdMobPlugin;->adSize:Lcom/google/android/gms/ads/AdSize;

    .line 111
    :cond_0
    iget-object v1, p0, Lcom/rjfun/cordova/admob/AdMobPlugin;->adSize:Lcom/google/android/gms/ads/AdSize;

    if-nez v1, :cond_1

    .line 112
    new-instance v1, Lcom/google/android/gms/ads/AdSize;

    iget v2, p0, Lcom/rjfun/cordova/admob/AdMobPlugin;->adWidth:I

    iget v3, p0, Lcom/rjfun/cordova/admob/AdMobPlugin;->adHeight:I

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    iput-object v1, p0, Lcom/rjfun/cordova/admob/AdMobPlugin;->adSize:Lcom/google/android/gms/ads/AdSize;

    .line 115
    :cond_1
    const-string v1, "adExtras"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "adExtras"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, p0, Lcom/rjfun/cordova/admob/AdMobPlugin;->adExtras:Lorg/json/JSONObject;

    .line 117
    :cond_2
    const-string v1, "location"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 118
    const-string v1, "location"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 119
    .local v0, "location":Lorg/json/JSONArray;
    if-eqz v0, :cond_3

    .line 120
    new-instance v1, Landroid/location/Location;

    const-string v2, "dummyprovider"

    invoke-direct {v1, v2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/rjfun/cordova/admob/AdMobPlugin;->mLocation:Landroid/location/Location;

    .line 121
    iget-object v1, p0, Lcom/rjfun/cordova/admob/AdMobPlugin;->mLocation:Landroid/location/Location;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    .line 122
    iget-object v1, p0, Lcom/rjfun/cordova/admob/AdMobPlugin;->mLocation:Landroid/location/Location;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    .line 126
    .end local v0    # "location":Lorg/json/JSONArray;
    :cond_3
    const-string v1, "gender"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 127
    const-string v1, "gender"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/rjfun/cordova/admob/AdMobPlugin;->mGender:Ljava/lang/String;

    .line 129
    :cond_4
    const-string v1, "forChild"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 130
    const-string v1, "forChild"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/rjfun/cordova/admob/AdMobPlugin;->mForChild:Ljava/lang/String;

    .line 132
    :cond_5
    const-string v1, "forFamily"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 133
    const-string v1, "forFamily"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/rjfun/cordova/admob/AdMobPlugin;->mForFamily:Ljava/lang/String;

    .line 135
    :cond_6
    const-string v1, "contentUrl"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 136
    const-string v1, "contentUrl"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/rjfun/cordova/admob/AdMobPlugin;->mContentURL:Ljava/lang/String;

    .line 138
    :cond_7
    const-string v1, "customTargeting"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 139
    const-string v1, "customTargeting"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, p0, Lcom/rjfun/cordova/admob/AdMobPlugin;->mCustomTargeting:Lorg/json/JSONObject;

    .line 141
    :cond_8
    const-string v1, "exclude"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 142
    const-string v1, "exclude"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    iput-object v1, p0, Lcom/rjfun/cordova/admob/AdMobPlugin;->mExclude:Lorg/json/JSONArray;

    .line 144
    :cond_9
    return-void
.end method
