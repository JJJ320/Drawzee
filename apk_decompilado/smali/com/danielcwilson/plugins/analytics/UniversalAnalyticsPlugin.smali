.class public Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;
.super Lorg/apache/cordova/CordovaPlugin;
.source "UniversalAnalyticsPlugin.java"


# static fields
.field public static final ADD_DIMENSION:Ljava/lang/String; = "addCustomDimension"

.field public static final ADD_TRANSACTION:Ljava/lang/String; = "addTransaction"

.field public static final ADD_TRANSACTION_ITEM:Ljava/lang/String; = "addTransactionItem"

.field public static final DEBUG_MODE:Ljava/lang/String; = "debugMode"

.field public static final ENABLE_UNCAUGHT_EXCEPTION_REPORTING:Ljava/lang/String; = "enableUncaughtExceptionReporting"

.field public static final SET_ALLOW_IDFA_COLLECTION:Ljava/lang/String; = "setAllowIDFACollection"

.field public static final SET_ANONYMIZE_IP:Ljava/lang/String; = "setAnonymizeIp"

.field public static final SET_APP_VERSION:Ljava/lang/String; = "setAppVersion"

.field public static final SET_OPT_OUT:Ljava/lang/String; = "setOptOut"

.field public static final SET_USER_ID:Ljava/lang/String; = "setUserId"

.field public static final START_TRACKER:Ljava/lang/String; = "startTrackerWithId"

.field public static final TRACK_EVENT:Ljava/lang/String; = "trackEvent"

.field public static final TRACK_EXCEPTION:Ljava/lang/String; = "trackException"

.field public static final TRACK_METRIC:Ljava/lang/String; = "trackMetric"

.field public static final TRACK_TIMING:Ljava/lang/String; = "trackTiming"

.field public static final TRACK_VIEW:Ljava/lang/String; = "trackView"


# instance fields
.field public customDimensions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public debugModeEnabled:Ljava/lang/Boolean;

.field public tracker:Lcom/google/android/gms/analytics/Tracker;

.field public trackerStarted:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    .line 38
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->trackerStarted:Ljava/lang/Boolean;

    .line 39
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->debugModeEnabled:Ljava/lang/Boolean;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->customDimensions:Ljava/util/HashMap;

    return-void
.end method

.method private addCustomDimension(Ljava/lang/Integer;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/Integer;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 152
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_0

    .line 153
    const-string v0, "Expected positive integer argument for key."

    invoke-virtual {p3, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    .line 164
    :goto_0
    return-void

    .line 157
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 158
    :cond_1
    const-string v0, "Expected non-empty string argument for value."

    invoke-virtual {p3, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 162
    :cond_2
    iget-object v0, p0, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->customDimensions:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const-string v0, "custom dimension started"

    invoke-virtual {p3, v0}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private addCustomDimensionsToHitBuilder(Ljava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .line 170
    .local p1, "builder":Ljava/lang/Object;, "TT;"
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "setCustomDimension"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 172
    .local v0, "builderMethod":Ljava/lang/reflect/Method;
    iget-object v4, p0, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->customDimensions:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 173
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 174
    .local v2, "key":Ljava/lang/Integer;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 176
    .local v3, "value":Ljava/lang/String;
    const/4 v5, 0x2

    :try_start_1
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v6, 0x1

    aput-object v3, v5, v6

    invoke-virtual {v0, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 177
    :catch_0
    move-exception v5

    goto :goto_0

    .line 183
    .end local v0    # "builderMethod":Ljava/lang/reflect/Method;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v2    # "key":Ljava/lang/Integer;
    .end local v3    # "value":Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 185
    :cond_0
    :goto_1
    return-void

    .line 182
    :catch_2
    move-exception v4

    goto :goto_1

    .line 179
    .restart local v0    # "builderMethod":Ljava/lang/reflect/Method;
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v2    # "key":Ljava/lang/Integer;
    .restart local v3    # "value":Ljava/lang/String;
    :catch_3
    move-exception v5

    goto :goto_0

    .line 178
    :catch_4
    move-exception v5

    goto :goto_0
.end method

.method private addTransaction(Ljava/lang/String;Ljava/lang/String;DDDLjava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "affiliation"    # Ljava/lang/String;
    .param p3, "revenue"    # D
    .param p5, "tax"    # D
    .param p7, "shipping"    # D
    .param p9, "currencyCode"    # Ljava/lang/String;
    .param p10, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 311
    iget-object v1, p0, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->trackerStarted:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 312
    const-string v1, "Tracker not started"

    invoke-virtual {p10, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    .line 332
    :goto_0
    return-void

    .line 316
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 317
    new-instance v0, Lcom/google/android/gms/analytics/HitBuilders$TransactionBuilder;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/HitBuilders$TransactionBuilder;-><init>()V

    .line 318
    .local v0, "hitBuilder":Lcom/google/android/gms/analytics/HitBuilders$TransactionBuilder;
    invoke-direct {p0, v0}, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->addCustomDimensionsToHitBuilder(Ljava/lang/Object;)V

    .line 320
    iget-object v1, p0, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->tracker:Lcom/google/android/gms/analytics/Tracker;

    .line 321
    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/HitBuilders$TransactionBuilder;->setTransactionId(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$TransactionBuilder;

    move-result-object v2

    .line 322
    invoke-virtual {v2, p2}, Lcom/google/android/gms/analytics/HitBuilders$TransactionBuilder;->setAffiliation(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$TransactionBuilder;

    move-result-object v2

    .line 323
    invoke-virtual {v2, p3, p4}, Lcom/google/android/gms/analytics/HitBuilders$TransactionBuilder;->setRevenue(D)Lcom/google/android/gms/analytics/HitBuilders$TransactionBuilder;

    move-result-object v2

    invoke-virtual {v2, p5, p6}, Lcom/google/android/gms/analytics/HitBuilders$TransactionBuilder;->setTax(D)Lcom/google/android/gms/analytics/HitBuilders$TransactionBuilder;

    move-result-object v2

    .line 324
    invoke-virtual {v2, p7, p8}, Lcom/google/android/gms/analytics/HitBuilders$TransactionBuilder;->setShipping(D)Lcom/google/android/gms/analytics/HitBuilders$TransactionBuilder;

    move-result-object v2

    .line 325
    invoke-virtual {v2, p9}, Lcom/google/android/gms/analytics/HitBuilders$TransactionBuilder;->setCurrencyCode(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$TransactionBuilder;

    move-result-object v2

    .line 326
    invoke-virtual {v2}, Lcom/google/android/gms/analytics/HitBuilders$TransactionBuilder;->build()Ljava/util/Map;

    move-result-object v2

    .line 320
    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 328
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Add Transaction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p10, v1}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    goto :goto_0

    .line 330
    .end local v0    # "hitBuilder":Lcom/google/android/gms/analytics/HitBuilders$TransactionBuilder;
    :cond_1
    const-string v1, "Expected non-empty ID."

    invoke-virtual {p10, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private addTransactionItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DJLjava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "sku"    # Ljava/lang/String;
    .param p4, "category"    # Ljava/lang/String;
    .param p5, "price"    # D
    .param p7, "quantity"    # J
    .param p9, "currencyCode"    # Ljava/lang/String;
    .param p10, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 335
    iget-object v1, p0, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->trackerStarted:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 336
    const-string v1, "Tracker not started"

    invoke-virtual {p10, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    .line 358
    :goto_0
    return-void

    .line 340
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 341
    new-instance v0, Lcom/google/android/gms/analytics/HitBuilders$ItemBuilder;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/HitBuilders$ItemBuilder;-><init>()V

    .line 342
    .local v0, "hitBuilder":Lcom/google/android/gms/analytics/HitBuilders$ItemBuilder;
    invoke-direct {p0, v0}, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->addCustomDimensionsToHitBuilder(Ljava/lang/Object;)V

    .line 344
    iget-object v1, p0, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->tracker:Lcom/google/android/gms/analytics/Tracker;

    .line 345
    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/HitBuilders$ItemBuilder;->setTransactionId(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$ItemBuilder;

    move-result-object v2

    .line 346
    invoke-virtual {v2, p2}, Lcom/google/android/gms/analytics/HitBuilders$ItemBuilder;->setName(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$ItemBuilder;

    move-result-object v2

    .line 347
    invoke-virtual {v2, p3}, Lcom/google/android/gms/analytics/HitBuilders$ItemBuilder;->setSku(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$ItemBuilder;

    move-result-object v2

    .line 348
    invoke-virtual {v2, p4}, Lcom/google/android/gms/analytics/HitBuilders$ItemBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$ItemBuilder;

    move-result-object v2

    .line 349
    invoke-virtual {v2, p5, p6}, Lcom/google/android/gms/analytics/HitBuilders$ItemBuilder;->setPrice(D)Lcom/google/android/gms/analytics/HitBuilders$ItemBuilder;

    move-result-object v2

    .line 350
    invoke-virtual {v2, p7, p8}, Lcom/google/android/gms/analytics/HitBuilders$ItemBuilder;->setQuantity(J)Lcom/google/android/gms/analytics/HitBuilders$ItemBuilder;

    move-result-object v2

    .line 351
    invoke-virtual {v2, p9}, Lcom/google/android/gms/analytics/HitBuilders$ItemBuilder;->setCurrencyCode(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$ItemBuilder;

    move-result-object v2

    .line 352
    invoke-virtual {v2}, Lcom/google/android/gms/analytics/HitBuilders$ItemBuilder;->build()Ljava/util/Map;

    move-result-object v2

    .line 344
    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 354
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Add Transaction Item: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p10, v1}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    goto :goto_0

    .line 356
    .end local v0    # "hitBuilder":Lcom/google/android/gms/analytics/HitBuilders$ItemBuilder;
    :cond_1
    const-string v1, "Expected non-empty ID."

    invoke-virtual {p10, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private debugMode(Lorg/apache/cordova/CallbackContext;)V
    .locals 2
    .param p1, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 371
    iget-object v0, p0, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getLogger()Lcom/google/android/gms/analytics/Logger;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/analytics/Logger;->setLogLevel(I)V

    .line 373
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->debugModeEnabled:Ljava/lang/Boolean;

    .line 374
    const-string v0, "debugMode enabled"

    invoke-virtual {p1, v0}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    .line 375
    return-void
.end method

.method private enableUncaughtExceptionReporting(Ljava/lang/Boolean;Lorg/apache/cordova/CallbackContext;)V
    .locals 2
    .param p1, "enable"    # Ljava/lang/Boolean;
    .param p2, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 418
    iget-object v0, p0, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->trackerStarted:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 419
    const-string v0, "Tracker not started"

    invoke-virtual {p2, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    .line 425
    :goto_0
    return-void

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->tracker:Lcom/google/android/gms/analytics/Tracker;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->enableExceptionReporting(Z)V

    .line 424
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Enabled"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " uncaught exception reporting"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "Disabled"

    goto :goto_1
.end method

.method private setAllowIDFACollection(Ljava/lang/Boolean;Lorg/apache/cordova/CallbackContext;)V
    .locals 2
    .param p1, "enable"    # Ljava/lang/Boolean;
    .param p2, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 361
    iget-object v0, p0, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->trackerStarted:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 362
    const-string v0, "Tracker not started"

    invoke-virtual {p2, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    .line 368
    :goto_0
    return-void

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->tracker:Lcom/google/android/gms/analytics/Tracker;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->enableAdvertisingIdCollection(Z)V

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enable Advertising Id Collection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setAnonymizeIp(ZLorg/apache/cordova/CallbackContext;)V
    .locals 2
    .param p1, "anonymize"    # Z
    .param p2, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 378
    iget-object v0, p0, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->trackerStarted:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 379
    const-string v0, "Tracker not started"

    invoke-virtual {p2, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    .line 385
    :goto_0
    return-void

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->tracker:Lcom/google/android/gms/analytics/Tracker;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/Tracker;->setAnonymizeIp(Z)V

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set AnonymizeIp "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setAppVersion(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 2
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 408
    iget-object v0, p0, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->trackerStarted:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 409
    const-string v0, "Tracker not started"

    invoke-virtual {p2, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    .line 415
    :goto_0
    return-void

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->tracker:Lcom/google/android/gms/analytics/Tracker;

    const-string v1, "&av"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set app version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setOptOut(ZLorg/apache/cordova/CallbackContext;)V
    .locals 2
    .param p1, "optout"    # Z
    .param p2, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 388
    iget-object v0, p0, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->trackerStarted:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 389
    const-string v0, "Tracker not started"

    invoke-virtual {p2, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    .line 395
    :goto_0
    return-void

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->setAppOptOut(Z)V

    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set Opt-Out "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setUserId(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 2
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 398
    iget-object v0, p0, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->trackerStarted:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 399
    const-string v0, "Tracker not started"

    invoke-virtual {p2, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    .line 405
    :goto_0
    return-void

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->tracker:Lcom/google/android/gms/analytics/Tracker;

    const-string v1, "&uid"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set user id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startTracker(Ljava/lang/String;ILorg/apache/cordova/CallbackContext;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "dispatchPeriod"    # I
    .param p3, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 141
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->newTracker(Ljava/lang/String;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    iput-object v0, p0, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->tracker:Lcom/google/android/gms/analytics/Tracker;

    .line 143
    const-string v0, "tracker started"

    invoke-virtual {p3, v0}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    .line 144
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->trackerStarted:Ljava/lang/Boolean;

    .line 145
    iget-object v0, p0, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/analytics/GoogleAnalytics;->setLocalDispatchPeriod(I)V

    .line 149
    :goto_0
    return-void

    .line 147
    :cond_0
    const-string v0, "tracker id is not valid"

    invoke-virtual {p3, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZLorg/apache/cordova/CallbackContext;)V
    .locals 4
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "value"    # J
    .param p6, "newSession"    # Z
    .param p7, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 216
    iget-object v1, p0, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->trackerStarted:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 217
    const-string v1, "Tracker not started"

    invoke-virtual {p7, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    .line 246
    :goto_0
    return-void

    .line 221
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 222
    new-instance v0, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    .line 223
    .local v0, "hitBuilder":Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;
    invoke-direct {p0, v0}, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->addCustomDimensionsToHitBuilder(Ljava/lang/Object;)V

    .line 225
    if-nez p6, :cond_1

    .line 226
    iget-object v1, p0, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->tracker:Lcom/google/android/gms/analytics/Tracker;

    .line 227
    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    .line 228
    invoke-virtual {v2, p2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    .line 229
    invoke-virtual {v2, p3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    .line 230
    invoke-virtual {v2, p4, p5}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setValue(J)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    .line 231
    invoke-virtual {v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v2

    .line 226
    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 242
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Track Event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p7, v1}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    goto :goto_0

    .line 233
    :cond_1
    iget-object v2, p0, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->tracker:Lcom/google/android/gms/analytics/Tracker;

    .line 234
    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    .line 235
    invoke-virtual {v1, p2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    .line 236
    invoke-virtual {v1, p3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    .line 237
    invoke-virtual {v1, p4, p5}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setValue(J)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    .line 238
    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setNewSession()Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    .line 239
    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v1

    .line 233
    invoke-virtual {v2, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    goto :goto_1

    .line 244
    .end local v0    # "hitBuilder":Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;
    :cond_2
    const-string v1, "Expected non-empty string arguments."

    invoke-virtual {p7, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private trackException(Ljava/lang/String;Ljava/lang/Boolean;Lorg/apache/cordova/CallbackContext;)V
    .locals 4
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "fatal"    # Ljava/lang/Boolean;
    .param p3, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 267
    iget-object v1, p0, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->trackerStarted:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 268
    const-string v1, "Tracker not started"

    invoke-virtual {p3, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    .line 285
    :goto_0
    return-void

    .line 272
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 273
    new-instance v0, Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;-><init>()V

    .line 274
    .local v0, "hitBuilder":Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;
    invoke-direct {p0, v0}, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->addCustomDimensionsToHitBuilder(Ljava/lang/Object;)V

    .line 276
    iget-object v1, p0, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->tracker:Lcom/google/android/gms/analytics/Tracker;

    .line 277
    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;->setDescription(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;

    move-result-object v2

    .line 278
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;->setFatal(Z)Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;

    move-result-object v2

    .line 279
    invoke-virtual {v2}, Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;->build()Ljava/util/Map;

    move-result-object v2

    .line 276
    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 281
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Track Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    goto :goto_0

    .line 283
    .end local v0    # "hitBuilder":Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;
    :cond_1
    const-string v1, "Expected non-empty string arguments."

    invoke-virtual {p3, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private trackMetric(Ljava/lang/Integer;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/Integer;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 249
    iget-object v1, p0, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->trackerStarted:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 250
    const-string v1, "Tracker not started"

    invoke-virtual {p3, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    .line 264
    :goto_0
    return-void

    .line 254
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_1

    .line 255
    new-instance v0, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;-><init>()V

    .line 256
    .local v0, "hitBuilder":Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;
    iget-object v2, p0, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->tracker:Lcom/google/android/gms/analytics/Tracker;

    .line 257
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;->setCustomMetric(IF)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;

    .line 258
    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;->build()Ljava/util/Map;

    move-result-object v1

    .line 256
    invoke-virtual {v2, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Track Metric: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    goto :goto_0

    .line 262
    .end local v0    # "hitBuilder":Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected integer key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", and string value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private trackTiming(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 4
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "intervalInMilliseconds"    # J
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "label"    # Ljava/lang/String;
    .param p6, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 288
    iget-object v1, p0, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->trackerStarted:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 289
    const-string v1, "Tracker not started"

    invoke-virtual {p6, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    .line 308
    :goto_0
    return-void

    .line 293
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 294
    new-instance v0, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;-><init>()V

    .line 295
    .local v0, "hitBuilder":Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;
    invoke-direct {p0, v0}, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->addCustomDimensionsToHitBuilder(Ljava/lang/Object;)V

    .line 297
    iget-object v1, p0, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->tracker:Lcom/google/android/gms/analytics/Tracker;

    .line 298
    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;

    move-result-object v2

    .line 299
    invoke-virtual {v2, p2, p3}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;->setValue(J)Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;

    move-result-object v2

    .line 300
    invoke-virtual {v2, p4}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;->setVariable(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;

    move-result-object v2

    .line 301
    invoke-virtual {v2, p5}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;

    move-result-object v2

    .line 302
    invoke-virtual {v2}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;->build()Ljava/util/Map;

    move-result-object v2

    .line 297
    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Track Timing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p6, v1}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    goto :goto_0

    .line 306
    .end local v0    # "hitBuilder":Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;
    :cond_1
    const-string v1, "Expected non-empty string arguments."

    invoke-virtual {p6, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private trackView(Ljava/lang/String;Ljava/lang/String;ZLorg/apache/cordova/CallbackContext;)V
    .locals 3
    .param p1, "screenname"    # Ljava/lang/String;
    .param p2, "campaignUrl"    # Ljava/lang/String;
    .param p3, "newSession"    # Z
    .param p4, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 188
    iget-object v1, p0, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->trackerStarted:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 189
    const-string v1, "Tracker not started"

    invoke-virtual {p4, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    .line 213
    :goto_0
    return-void

    .line 193
    :cond_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 194
    iget-object v1, p0, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->tracker:Lcom/google/android/gms/analytics/Tracker;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 196
    new-instance v0, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;-><init>()V

    .line 197
    .local v0, "hitBuilder":Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;
    invoke-direct {p0, v0}, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->addCustomDimensionsToHitBuilder(Ljava/lang/Object;)V

    .line 199
    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 200
    invoke-virtual {v0, p2}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;->setCampaignParamsFromUrl(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    .line 203
    :cond_1
    if-nez p3, :cond_2

    .line 204
    iget-object v1, p0, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->tracker:Lcom/google/android/gms/analytics/Tracker;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;->build()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 209
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Track Screen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    goto :goto_0

    .line 206
    :cond_2
    iget-object v2, p0, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->tracker:Lcom/google/android/gms/analytics/Tracker;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;->setNewSession()Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    goto :goto_1

    .line 211
    .end local v0    # "hitBuilder":Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;
    :cond_3
    const-string v1, "Expected one non-empty string argument."

    invoke-virtual {p4, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z
    .locals 29
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/json/JSONArray;
    .param p3, "callbackContext"    # Lorg/apache/cordova/CallbackContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 46
    const-string v4, "startTrackerWithId"

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 47
    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 48
    .local v21, "id":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v18

    .line 49
    .local v18, "dispatchPeriod":I
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v18

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->startTracker(Ljava/lang/String;ILorg/apache/cordova/CallbackContext;)V

    .line 50
    const/4 v4, 0x1

    .line 137
    .end local v18    # "dispatchPeriod":I
    .end local v21    # "id":Ljava/lang/String;
    :goto_1
    return v4

    .line 48
    .restart local v21    # "id":Ljava/lang/String;
    :cond_0
    const/16 v18, 0x1e

    goto :goto_0

    .line 51
    .end local v21    # "id":Ljava/lang/String;
    :cond_1
    const-string v4, "trackView"

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 52
    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONArray;->length()I

    move-result v23

    .line 53
    .local v23, "length":I
    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 54
    .local v25, "screen":Ljava/lang/String;
    const/4 v4, 0x1

    move/from16 v0, v23

    if-le v0, v4, :cond_2

    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    :goto_2
    const/4 v4, 0x2

    move/from16 v0, v23

    if-le v0, v4, :cond_3

    const/4 v4, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v4

    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v5, v4, v2}, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->trackView(Ljava/lang/String;Ljava/lang/String;ZLorg/apache/cordova/CallbackContext;)V

    .line 55
    const/4 v4, 0x1

    goto :goto_1

    .line 54
    :cond_2
    const-string v4, ""

    move-object v5, v4

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    .line 56
    .end local v23    # "length":I
    .end local v25    # "screen":Ljava/lang/String;
    :cond_4
    const-string v4, "trackEvent"

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 57
    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONArray;->length()I

    move-result v23

    .line 58
    .restart local v23    # "length":I
    if-lez v23, :cond_5

    .line 59
    const/4 v4, 0x0

    .line 60
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x1

    move/from16 v0, v23

    if-le v0, v4, :cond_6

    const/4 v4, 0x1

    .line 61
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_4
    const/4 v4, 0x2

    move/from16 v0, v23

    if-le v0, v4, :cond_7

    const/4 v4, 0x2

    .line 62
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_5
    const/4 v4, 0x3

    move/from16 v0, v23

    if-le v0, v4, :cond_8

    const/4 v4, 0x3

    .line 63
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v8

    :goto_6
    const/4 v4, 0x4

    move/from16 v0, v23

    if-le v0, v4, :cond_9

    const/4 v4, 0x4

    .line 64
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v10

    :goto_7
    move-object/from16 v4, p0

    move-object/from16 v11, p3

    .line 59
    invoke-direct/range {v4 .. v11}, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZLorg/apache/cordova/CallbackContext;)V

    .line 67
    :cond_5
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 61
    :cond_6
    const-string v6, ""

    goto :goto_4

    .line 62
    :cond_7
    const-string v7, ""

    goto :goto_5

    .line 63
    :cond_8
    const-wide/16 v8, 0x0

    goto :goto_6

    .line 64
    :cond_9
    const/4 v10, 0x0

    goto :goto_7

    .line 68
    .end local v23    # "length":I
    :cond_a
    const-string v4, "trackException"

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 69
    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 70
    .local v17, "description":Ljava/lang/String;
    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    .line 71
    .local v20, "fatal":Ljava/lang/Boolean;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v20

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->trackException(Ljava/lang/String;Ljava/lang/Boolean;Lorg/apache/cordova/CallbackContext;)V

    .line 72
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 73
    .end local v17    # "description":Ljava/lang/String;
    .end local v20    # "fatal":Ljava/lang/Boolean;
    :cond_b
    const-string v4, "trackTiming"

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 74
    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONArray;->length()I

    move-result v23

    .line 75
    .restart local v23    # "length":I
    if-lez v23, :cond_c

    .line 76
    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x1

    move/from16 v0, v23

    if-le v0, v4, :cond_d

    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v6

    :goto_8
    const/4 v4, 0x2

    move/from16 v0, v23

    if-le v0, v4, :cond_e

    const/4 v4, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    :goto_9
    const/4 v4, 0x3

    move/from16 v0, v23

    if-le v0, v4, :cond_f

    const/4 v4, 0x3

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    :goto_a
    move-object/from16 v4, p0

    move-object/from16 v10, p3

    invoke-direct/range {v4 .. v10}, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->trackTiming(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    .line 78
    :cond_c
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 76
    :cond_d
    const-wide/16 v6, 0x0

    goto :goto_8

    :cond_e
    const-string v8, ""

    goto :goto_9

    :cond_f
    const-string v9, ""

    goto :goto_a

    .line 79
    .end local v23    # "length":I
    :cond_10
    const-string v4, "trackMetric"

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 80
    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONArray;->length()I

    move-result v23

    .line 81
    .restart local v23    # "length":I
    if-lez v23, :cond_11

    .line 82
    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v4, 0x1

    move/from16 v0, v23

    if-le v0, v4, :cond_12

    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_b
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v5, v4, v1}, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->trackMetric(Ljava/lang/Integer;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    .line 84
    :cond_11
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 82
    :cond_12
    const-string v4, ""

    goto :goto_b

    .line 85
    .end local v23    # "length":I
    :cond_13
    const-string v4, "addCustomDimension"

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 86
    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    .line 87
    .local v22, "key":Ljava/lang/Integer;
    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 88
    .local v27, "value":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v27

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->addCustomDimension(Ljava/lang/Integer;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    .line 89
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 90
    .end local v22    # "key":Ljava/lang/Integer;
    .end local v27    # "value":Ljava/lang/String;
    :cond_14
    const-string v4, "addTransaction"

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 91
    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONArray;->length()I

    move-result v23

    .line 92
    .restart local v23    # "length":I
    if-lez v23, :cond_15

    .line 93
    const/4 v4, 0x0

    .line 94
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x1

    move/from16 v0, v23

    if-le v0, v4, :cond_16

    const/4 v4, 0x1

    .line 95
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_c
    const/4 v4, 0x2

    move/from16 v0, v23

    if-le v0, v4, :cond_17

    const/4 v4, 0x2

    .line 96
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v8

    :goto_d
    const/4 v4, 0x3

    move/from16 v0, v23

    if-le v0, v4, :cond_18

    const/4 v4, 0x3

    .line 97
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v10

    :goto_e
    const/4 v4, 0x4

    move/from16 v0, v23

    if-le v0, v4, :cond_19

    const/4 v4, 0x4

    .line 98
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v12

    :goto_f
    const/4 v4, 0x5

    move/from16 v0, v23

    if-le v0, v4, :cond_1a

    const/4 v4, 0x5

    .line 99
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    :goto_10
    move-object/from16 v5, p0

    move-object/from16 v15, p3

    .line 93
    invoke-direct/range {v5 .. v15}, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->addTransaction(Ljava/lang/String;Ljava/lang/String;DDDLjava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    .line 102
    :cond_15
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 95
    :cond_16
    const-string v7, ""

    goto :goto_c

    .line 96
    :cond_17
    const-wide/16 v8, 0x0

    goto :goto_d

    .line 97
    :cond_18
    const-wide/16 v10, 0x0

    goto :goto_e

    .line 98
    :cond_19
    const-wide/16 v12, 0x0

    goto :goto_f

    .line 99
    :cond_1a
    const/4 v14, 0x0

    goto :goto_10

    .line 103
    .end local v23    # "length":I
    :cond_1b
    const-string v4, "addTransactionItem"

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 104
    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONArray;->length()I

    move-result v23

    .line 105
    .restart local v23    # "length":I
    if-lez v23, :cond_1c

    .line 106
    const/4 v4, 0x0

    .line 107
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x1

    move/from16 v0, v23

    if-le v0, v4, :cond_1d

    const/4 v4, 0x1

    .line 108
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_11
    const/4 v4, 0x2

    move/from16 v0, v23

    if-le v0, v4, :cond_1e

    const/4 v4, 0x2

    .line 109
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    :goto_12
    const/4 v4, 0x3

    move/from16 v0, v23

    if-le v0, v4, :cond_1f

    const/4 v4, 0x3

    .line 110
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    :goto_13
    const/4 v4, 0x4

    move/from16 v0, v23

    if-le v0, v4, :cond_20

    const/4 v4, 0x4

    .line 111
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v10

    :goto_14
    const/4 v4, 0x5

    move/from16 v0, v23

    if-le v0, v4, :cond_21

    const/4 v4, 0x5

    .line 112
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v12

    :goto_15
    const/4 v4, 0x6

    move/from16 v0, v23

    if-le v0, v4, :cond_22

    const/4 v4, 0x6

    .line 113
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    :goto_16
    move-object/from16 v5, p0

    move-object/from16 v15, p3

    .line 106
    invoke-direct/range {v5 .. v15}, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->addTransactionItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DJLjava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    .line 116
    :cond_1c
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 108
    :cond_1d
    const-string v7, ""

    goto :goto_11

    .line 109
    :cond_1e
    const-string v8, ""

    goto :goto_12

    .line 110
    :cond_1f
    const-string v9, ""

    goto :goto_13

    .line 111
    :cond_20
    const-wide/16 v10, 0x0

    goto :goto_14

    .line 112
    :cond_21
    const-wide/16 v12, 0x0

    goto :goto_15

    .line 113
    :cond_22
    const/4 v14, 0x0

    goto :goto_16

    .line 117
    .end local v23    # "length":I
    :cond_23
    const-string v4, "setAllowIDFACollection"

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 118
    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v4, v1}, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->setAllowIDFACollection(Ljava/lang/Boolean;Lorg/apache/cordova/CallbackContext;)V

    .line 137
    :cond_24
    :goto_17
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 119
    :cond_25
    const-string v4, "setUserId"

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 120
    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 121
    .local v26, "userId":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->setUserId(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    goto :goto_17

    .line 122
    .end local v26    # "userId":Ljava/lang/String;
    :cond_26
    const-string v4, "setAnonymizeIp"

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 123
    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v16

    .line 124
    .local v16, "anonymize":Z
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->setAnonymizeIp(ZLorg/apache/cordova/CallbackContext;)V

    goto :goto_17

    .line 125
    .end local v16    # "anonymize":Z
    :cond_27
    const-string v4, "setOptOut"

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 126
    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v24

    .line 127
    .local v24, "optout":Z
    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->setOptOut(ZLorg/apache/cordova/CallbackContext;)V

    goto :goto_17

    .line 128
    .end local v24    # "optout":Z
    :cond_28
    const-string v4, "setAppVersion"

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 129
    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 130
    .local v28, "version":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->setAppVersion(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    goto :goto_17

    .line 131
    .end local v28    # "version":Ljava/lang/String;
    :cond_29
    const-string v4, "debugMode"

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 132
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->debugMode(Lorg/apache/cordova/CallbackContext;)V

    goto :goto_17

    .line 133
    :cond_2a
    const-string v4, "enableUncaughtExceptionReporting"

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 134
    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    .line 135
    .local v19, "enable":Ljava/lang/Boolean;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->enableUncaughtExceptionReporting(Ljava/lang/Boolean;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_17
.end method
