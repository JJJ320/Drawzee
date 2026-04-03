.class public Lcom/adobe/phonegap/push/PushPlugin;
.super Lorg/apache/cordova/CordovaPlugin;
.source "PushPlugin.java"

# interfaces
.implements Lcom/adobe/phonegap/push/PushConstants;


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "PushPlugin"

.field private static gCachedExtras:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private static gForeground:Z

.field private static gWebView:Lorg/apache/cordova/CordovaWebView;

.field private static pushContext:Lorg/apache/cordova/CallbackContext;

.field private static registration_id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/adobe/phonegap/push/PushPlugin;->gCachedExtras:Ljava/util/List;

    .line 37
    const/4 v0, 0x0

    sput-boolean v0, Lcom/adobe/phonegap/push/PushPlugin;->gForeground:Z

    .line 39
    const-string v0, ""

    sput-object v0, Lcom/adobe/phonegap/push/PushPlugin;->registration_id:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/CallbackContext;
    .locals 0
    .param p0, "x0"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 30
    sput-object p0, Lcom/adobe/phonegap/push/PushPlugin;->pushContext:Lorg/apache/cordova/CallbackContext;

    return-object p0
.end method

.method static synthetic access$100(Lcom/adobe/phonegap/push/PushPlugin;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/adobe/phonegap/push/PushPlugin;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/adobe/phonegap/push/PushPlugin;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/adobe/phonegap/push/PushPlugin;->registration_id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 30
    sput-object p0, Lcom/adobe/phonegap/push/PushPlugin;->registration_id:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/adobe/phonegap/push/PushPlugin;Lorg/json/JSONArray;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/adobe/phonegap/push/PushPlugin;
    .param p1, "x1"    # Lorg/json/JSONArray;
    .param p2, "x2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/adobe/phonegap/push/PushPlugin;->subscribeToTopics(Lorg/json/JSONArray;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400()Ljava/util/List;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/adobe/phonegap/push/PushPlugin;->gCachedExtras:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/adobe/phonegap/push/PushPlugin;Lorg/json/JSONArray;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/adobe/phonegap/push/PushPlugin;
    .param p1, "x1"    # Lorg/json/JSONArray;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/adobe/phonegap/push/PushPlugin;->unsubscribeFromTopics(Lorg/json/JSONArray;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/adobe/phonegap/push/PushPlugin;)V
    .locals 0
    .param p0, "x0"    # Lcom/adobe/phonegap/push/PushPlugin;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/adobe/phonegap/push/PushPlugin;->clearAllNotifications()V

    return-void
.end method

.method static synthetic access$700(Lcom/adobe/phonegap/push/PushPlugin;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/adobe/phonegap/push/PushPlugin;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/adobe/phonegap/push/PushPlugin;->subscribeToTopic(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/adobe/phonegap/push/PushPlugin;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/adobe/phonegap/push/PushPlugin;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/adobe/phonegap/push/PushPlugin;->unsubscribeFromTopic(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private clearAllNotifications()V
    .locals 3

    .prologue
    .line 314
    iget-object v1, p0, Lcom/adobe/phonegap/push/PushPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 315
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 316
    return-void
.end method

.method private static convertBundleToJson(Landroid/os/Bundle;)Lorg/json/JSONObject;
    .locals 12
    .param p0, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 398
    const-string v9, "PushPlugin"

    const-string v10, "convert extras to json"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 401
    .local v4, "json":Lorg/json/JSONObject;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 404
    .local v1, "additionalData":Lorg/json/JSONObject;
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 405
    .local v5, "jsonKeySet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "title"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "message"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "count"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-string v11, "sound"

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string v11, "image"

    aput-object v11, v9, v10

    invoke-static {v5, v9}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 407
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 408
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 409
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 410
    .local v6, "key":Ljava/lang/String;
    invoke-virtual {p0, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 412
    .local v8, "value":Ljava/lang/Object;
    const-string v9, "PushPlugin"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "key = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 415
    invoke-virtual {v4, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 448
    .end local v1    # "additionalData":Lorg/json/JSONObject;
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v4    # "json":Lorg/json/JSONObject;
    .end local v5    # "jsonKeySet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v6    # "key":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 449
    .local v2, "e":Lorg/json/JSONException;
    const-string v9, "PushPlugin"

    const-string v10, "extrasToJSON: JSON exception"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    const/4 v4, 0x0

    .end local v2    # "e":Lorg/json/JSONException;
    :goto_1
    return-object v4

    .line 417
    .restart local v1    # "additionalData":Lorg/json/JSONObject;
    .restart local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v4    # "json":Lorg/json/JSONObject;
    .restart local v5    # "jsonKeySet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v6    # "key":Ljava/lang/String;
    .restart local v8    # "value":Ljava/lang/Object;
    :cond_1
    :try_start_1
    const-string v9, "coldstart"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 418
    const-string v9, "coldstart"

    invoke-virtual {p0, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    invoke-virtual {v1, v6, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_0

    .line 420
    :cond_2
    const-string v9, "foreground"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 421
    const-string v9, "foreground"

    invoke-virtual {p0, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    invoke-virtual {v1, v6, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_0

    .line 423
    :cond_3
    instance-of v9, v8, Ljava/lang/String;

    if-eqz v9, :cond_0

    .line 424
    move-object v0, v8

    check-cast v0, Ljava/lang/String;

    move-object v7, v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 427
    .local v7, "strValue":Ljava/lang/String;
    :try_start_2
    const-string v9, "{"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 428
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 437
    :catch_1
    move-exception v2

    .line 438
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v1, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 431
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_4
    const-string v9, "["

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 432
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9, v7}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 435
    :cond_5
    invoke-virtual {v1, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 443
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "strValue":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/Object;
    :cond_6
    :try_start_5
    const-string v9, "additionalData"

    invoke-virtual {v4, v9, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 444
    const-string v9, "PushPlugin"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "extrasToJSON: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1
.end method

.method private getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/adobe/phonegap/push/PushPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private getTopicPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "topic"    # Ljava/lang/String;

    .prologue
    .line 330
    const-string v0, "/topics/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    .end local p1    # "topic":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 332
    .restart local p1    # "topic":Ljava/lang/String;
    :cond_0
    const-string v0, "/topic/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 333
    const-string v0, "/topic/"

    const-string v1, "/topics/"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 335
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/topics/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static isActive()Z
    .locals 1

    .prologue
    .line 459
    sget-object v0, Lcom/adobe/phonegap/push/PushPlugin;->gWebView:Lorg/apache/cordova/CordovaWebView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isInForeground()Z
    .locals 1

    .prologue
    .line 455
    sget-boolean v0, Lcom/adobe/phonegap/push/PushPlugin;->gForeground:Z

    return v0
.end method

.method public static sendError(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 253
    new-instance v0, Lorg/apache/cordova/PluginResult;

    sget-object v1, Lorg/apache/cordova/PluginResult$Status;->ERROR:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v0, v1, p0}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Ljava/lang/String;)V

    .line 254
    .local v0, "pluginResult":Lorg/apache/cordova/PluginResult;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    .line 255
    sget-object v1, Lcom/adobe/phonegap/push/PushPlugin;->pushContext:Lorg/apache/cordova/CallbackContext;

    if-eqz v1, :cond_0

    .line 256
    sget-object v1, Lcom/adobe/phonegap/push/PushPlugin;->pushContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 258
    :cond_0
    return-void
.end method

.method public static sendEvent(Lorg/json/JSONObject;)V
    .locals 2
    .param p0, "_json"    # Lorg/json/JSONObject;

    .prologue
    .line 245
    new-instance v0, Lorg/apache/cordova/PluginResult;

    sget-object v1, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v0, v1, p0}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    .line 246
    .local v0, "pluginResult":Lorg/apache/cordova/PluginResult;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    .line 247
    sget-object v1, Lcom/adobe/phonegap/push/PushPlugin;->pushContext:Lorg/apache/cordova/CallbackContext;

    if-eqz v1, :cond_0

    .line 248
    sget-object v1, Lcom/adobe/phonegap/push/PushPlugin;->pushContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 250
    :cond_0
    return-void
.end method

.method public static sendExtras(Landroid/os/Bundle;)V
    .locals 2
    .param p0, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 265
    if-eqz p0, :cond_0

    .line 266
    sget-object v0, Lcom/adobe/phonegap/push/PushPlugin;->gWebView:Lorg/apache/cordova/CordovaWebView;

    if-eqz v0, :cond_1

    .line 267
    invoke-static {p0}, Lcom/adobe/phonegap/push/PushPlugin;->convertBundleToJson(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/phonegap/push/PushPlugin;->sendEvent(Lorg/json/JSONObject;)V

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 269
    :cond_1
    const-string v0, "PushPlugin"

    const-string v1, "sendExtras: caching extras to send at a later time."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    sget-object v0, Lcom/adobe/phonegap/push/PushPlugin;->gCachedExtras:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static setApplicationIconBadgeNumber(Landroid/content/Context;I)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "badgeCount"    # I

    .prologue
    .line 276
    if-lez p1, :cond_0

    .line 277
    invoke-static {p0, p1}, Lme/leolin/shortcutbadger/ShortcutBadger;->applyCount(Landroid/content/Context;I)Z

    .line 281
    :goto_0
    return-void

    .line 279
    :cond_0
    invoke-static {p0}, Lme/leolin/shortcutbadger/ShortcutBadger;->removeCount(Landroid/content/Context;)Z

    goto :goto_0
.end method

.method protected static setRegistrationID(Ljava/lang/String;)V
    .locals 0
    .param p0, "token"    # Ljava/lang/String;

    .prologue
    .line 463
    sput-object p0, Lcom/adobe/phonegap/push/PushPlugin;->registration_id:Ljava/lang/String;

    .line 464
    return-void
.end method

.method private subscribeToTopic(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "topic"    # Ljava/lang/String;
    .param p2, "registrationToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 352
    if-eqz p1, :cond_0

    .line 353
    :try_start_0
    const-string v2, "PushPlugin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Subscribing to topic: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    invoke-direct {p0}, Lcom/adobe/phonegap/push/PushPlugin;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/gcm/GcmPubSub;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GcmPubSub;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/adobe/phonegap/push/PushPlugin;->getTopicPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, p2, v3, v4}, Lcom/google/android/gms/gcm/GcmPubSub;->subscribe(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 362
    :cond_0
    :goto_0
    return-void

    .line 356
    :catch_0
    move-exception v1

    .line 357
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "PushPlugin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to subscribe to topic: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 358
    throw v1

    .line 359
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 360
    .local v0, "argException":Ljava/lang/IllegalArgumentException;
    const-string v2, "PushPlugin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot subscribe to topic ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], illegal topic name"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private subscribeToTopics(Lorg/json/JSONArray;Ljava/lang/String;)V
    .locals 3
    .param p1, "topics"    # Lorg/json/JSONArray;
    .param p2, "registrationToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 340
    if-eqz p1, :cond_0

    .line 341
    const/4 v1, 0x0

    .line 342
    .local v1, "topic":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 343
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 344
    invoke-direct {p0, v1, p2}, Lcom/adobe/phonegap/push/PushPlugin;->subscribeToTopic(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 347
    .end local v0    # "i":I
    .end local v1    # "topic":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private unsubscribeFromTopic(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "topic"    # Ljava/lang/String;
    .param p2, "registrationToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 384
    if-eqz p1, :cond_0

    .line 385
    :try_start_0
    const-string v1, "PushPlugin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsubscribing to topic: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    invoke-direct {p0}, Lcom/adobe/phonegap/push/PushPlugin;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/gcm/GcmPubSub;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GcmPubSub;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/adobe/phonegap/push/PushPlugin;->getTopicPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lcom/google/android/gms/gcm/GcmPubSub;->unsubscribe(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    :cond_0
    return-void

    .line 388
    :catch_0
    move-exception v0

    .line 389
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "PushPlugin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to unsubscribe to topic: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 390
    throw v0
.end method

.method private unsubscribeFromTopics(Lorg/json/JSONArray;Ljava/lang/String;)V
    .locals 6
    .param p1, "topics"    # Lorg/json/JSONArray;
    .param p2, "registrationToken"    # Ljava/lang/String;

    .prologue
    .line 365
    if-eqz p1, :cond_1

    .line 366
    const/4 v2, 0x0

    .line 367
    .local v2, "topic":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 369
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1, v1, v3}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 370
    if-eqz v2, :cond_0

    .line 371
    const-string v3, "PushPlugin"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsubscribing to topic: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    invoke-direct {p0}, Lcom/adobe/phonegap/push/PushPlugin;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/gcm/GcmPubSub;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GcmPubSub;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/adobe/phonegap/push/PushPlugin;->getTopicPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p2, v4}, Lcom/google/android/gms/gcm/GcmPubSub;->unsubscribe(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 374
    :catch_0
    move-exception v0

    .line 375
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "PushPlugin"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to unsubscribe to topic: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 379
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "i":I
    .end local v2    # "topic":Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Lorg/json/JSONArray;
    .param p3, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 51
    const-string v0, "PushPlugin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "execute: action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v0, p0, Lcom/adobe/phonegap/push/PushPlugin;->webView:Lorg/apache/cordova/CordovaWebView;

    sput-object v0, Lcom/adobe/phonegap/push/PushPlugin;->gWebView:Lorg/apache/cordova/CordovaWebView;

    .line 54
    const-string v0, "init"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/adobe/phonegap/push/PushPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/adobe/phonegap/push/PushPlugin$1;

    invoke-direct {v1, p0, p3, p2}, Lcom/adobe/phonegap/push/PushPlugin$1;-><init>(Lcom/adobe/phonegap/push/PushPlugin;Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 241
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 137
    :cond_0
    const-string v0, "unregister"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/adobe/phonegap/push/PushPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/adobe/phonegap/push/PushPlugin$2;

    invoke-direct {v1, p0, p2, p3}, Lcom/adobe/phonegap/push/PushPlugin$2;-><init>(Lcom/adobe/phonegap/push/PushPlugin;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 167
    :cond_1
    const-string v0, "finish"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 168
    invoke-virtual {p3}, Lorg/apache/cordova/CallbackContext;->success()V

    goto :goto_0

    .line 169
    :cond_2
    const-string v0, "hasPermission"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 170
    iget-object v0, p0, Lcom/adobe/phonegap/push/PushPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/adobe/phonegap/push/PushPlugin$3;

    invoke-direct {v1, p0, p3}, Lcom/adobe/phonegap/push/PushPlugin$3;-><init>(Lcom/adobe/phonegap/push/PushPlugin;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 185
    :cond_3
    const-string v0, "setApplicationIconBadgeNumber"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 186
    iget-object v0, p0, Lcom/adobe/phonegap/push/PushPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/adobe/phonegap/push/PushPlugin$4;

    invoke-direct {v1, p0, p2, p3}, Lcom/adobe/phonegap/push/PushPlugin$4;-><init>(Lcom/adobe/phonegap/push/PushPlugin;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 197
    :cond_4
    const-string v0, "clearAllNotifications"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 198
    iget-object v0, p0, Lcom/adobe/phonegap/push/PushPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/adobe/phonegap/push/PushPlugin$5;

    invoke-direct {v1, p0, p3}, Lcom/adobe/phonegap/push/PushPlugin$5;-><init>(Lcom/adobe/phonegap/push/PushPlugin;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 205
    :cond_5
    const-string v0, "subscribe"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 207
    iget-object v0, p0, Lcom/adobe/phonegap/push/PushPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/adobe/phonegap/push/PushPlugin$6;

    invoke-direct {v1, p0, p2, p3}, Lcom/adobe/phonegap/push/PushPlugin$6;-><init>(Lcom/adobe/phonegap/push/PushPlugin;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 220
    :cond_6
    const-string v0, "unsubscribe"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 222
    iget-object v0, p0, Lcom/adobe/phonegap/push/PushPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/adobe/phonegap/push/PushPlugin$7;

    invoke-direct {v1, p0, p2, p3}, Lcom/adobe/phonegap/push/PushPlugin$7;-><init>(Lcom/adobe/phonegap/push/PushPlugin;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 236
    :cond_7
    const-string v0, "PushPlugin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid action : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    new-instance v0, Lorg/apache/cordova/PluginResult;

    sget-object v1, Lorg/apache/cordova/PluginResult$Status;->INVALID_ACTION:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v0, v1}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;)V

    invoke-virtual {p3, v0}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 238
    const/4 v0, 0x0

    goto/16 :goto_1
.end method

.method public initialize(Lorg/apache/cordova/CordovaInterface;Lorg/apache/cordova/CordovaWebView;)V
    .locals 1
    .param p1, "cordova"    # Lorg/apache/cordova/CordovaInterface;
    .param p2, "webView"    # Lorg/apache/cordova/CordovaWebView;

    .prologue
    .line 285
    invoke-super {p0, p1, p2}, Lorg/apache/cordova/CordovaPlugin;->initialize(Lorg/apache/cordova/CordovaInterface;Lorg/apache/cordova/CordovaWebView;)V

    .line 286
    const/4 v0, 0x1

    sput-boolean v0, Lcom/adobe/phonegap/push/PushPlugin;->gForeground:Z

    .line 287
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 308
    invoke-super {p0}, Lorg/apache/cordova/CordovaPlugin;->onDestroy()V

    .line 309
    const/4 v0, 0x0

    sput-boolean v0, Lcom/adobe/phonegap/push/PushPlugin;->gForeground:Z

    .line 310
    const/4 v0, 0x0

    sput-object v0, Lcom/adobe/phonegap/push/PushPlugin;->gWebView:Lorg/apache/cordova/CordovaWebView;

    .line 311
    return-void
.end method

.method public onPause(Z)V
    .locals 4
    .param p1, "multitasking"    # Z

    .prologue
    const/4 v3, 0x0

    .line 291
    invoke-super {p0, p1}, Lorg/apache/cordova/CordovaPlugin;->onPause(Z)V

    .line 292
    sput-boolean v3, Lcom/adobe/phonegap/push/PushPlugin;->gForeground:Z

    .line 294
    invoke-direct {p0}, Lcom/adobe/phonegap/push/PushPlugin;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.adobe.phonegap.push"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 295
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "clearNotifications"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 296
    invoke-direct {p0}, Lcom/adobe/phonegap/push/PushPlugin;->clearAllNotifications()V

    .line 298
    :cond_0
    return-void
.end method

.method public onResume(Z)V
    .locals 1
    .param p1, "multitasking"    # Z

    .prologue
    .line 302
    invoke-super {p0, p1}, Lorg/apache/cordova/CordovaPlugin;->onResume(Z)V

    .line 303
    const/4 v0, 0x1

    sput-boolean v0, Lcom/adobe/phonegap/push/PushPlugin;->gForeground:Z

    .line 304
    return-void
.end method
