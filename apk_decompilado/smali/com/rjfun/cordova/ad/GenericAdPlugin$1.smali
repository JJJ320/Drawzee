.class Lcom/rjfun/cordova/ad/GenericAdPlugin$1;
.super Ljava/lang/Object;
.source "GenericAdPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rjfun/cordova/ad/GenericAdPlugin;->getAdSettings(Lorg/apache/cordova/CallbackContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rjfun/cordova/ad/GenericAdPlugin;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$callbackContext:Lorg/apache/cordova/CallbackContext;


# direct methods
.method constructor <init>(Lcom/rjfun/cordova/ad/GenericAdPlugin;Landroid/app/Activity;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/rjfun/cordova/ad/GenericAdPlugin$1;->this$0:Lcom/rjfun/cordova/ad/GenericAdPlugin;

    iput-object p2, p0, Lcom/rjfun/cordova/ad/GenericAdPlugin$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/rjfun/cordova/ad/GenericAdPlugin$1;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 254
    const/4 v0, 0x0

    .line 256
    .local v0, "adInfo":Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :try_start_0
    iget-object v3, p0, Lcom/rjfun/cordova/ad/GenericAdPlugin$1;->val$activity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    .line 257
    if-eqz v0, :cond_1

    .line 258
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 259
    .local v1, "json":Lorg/json/JSONObject;
    const-string v3, "adId"

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 260
    const-string v4, "adTrackingEnabled"

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 261
    new-instance v2, Lorg/apache/cordova/PluginResult;

    sget-object v3, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v2, v3, v1}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    .line 262
    .local v2, "result":Lorg/apache/cordova/PluginResult;
    iget-object v3, p0, Lcom/rjfun/cordova/ad/GenericAdPlugin$1;->this$0:Lcom/rjfun/cordova/ad/GenericAdPlugin;

    iget-object v4, p0, Lcom/rjfun/cordova/ad/GenericAdPlugin$1;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v3, v2, v4}, Lcom/rjfun/cordova/ad/GenericAdPlugin;->sendPluginResult(Lorg/apache/cordova/PluginResult;Lorg/apache/cordova/CallbackContext;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v2    # "result":Lorg/apache/cordova/PluginResult;
    :goto_1
    return-void

    .line 260
    .restart local v1    # "json":Lorg/json/JSONObject;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 265
    .end local v1    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v3

    .line 267
    :cond_1
    iget-object v3, p0, Lcom/rjfun/cordova/ad/GenericAdPlugin$1;->this$0:Lcom/rjfun/cordova/ad/GenericAdPlugin;

    new-instance v4, Lorg/apache/cordova/PluginResult;

    sget-object v5, Lorg/apache/cordova/PluginResult$Status;->ERROR:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v4, v5}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;)V

    iget-object v5, p0, Lcom/rjfun/cordova/ad/GenericAdPlugin$1;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v3, v4, v5}, Lcom/rjfun/cordova/ad/GenericAdPlugin;->sendPluginResult(Lorg/apache/cordova/PluginResult;Lorg/apache/cordova/CallbackContext;)V

    goto :goto_1
.end method
