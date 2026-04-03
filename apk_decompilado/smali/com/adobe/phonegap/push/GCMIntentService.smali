.class public Lcom/adobe/phonegap/push/GCMIntentService;
.super Lcom/google/android/gms/gcm/GcmListenerService;
.source "GCMIntentService.java"

# interfaces
.implements Lcom/adobe/phonegap/push/PushConstants;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PushPlugin_GCMIntentService"

.field private static messageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/adobe/phonegap/push/GCMIntentService;->messageMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/android/gms/gcm/GcmListenerService;-><init>()V

    return-void
.end method

.method private createActions(Landroid/os/Bundle;Landroid/support/v4/app/NotificationCompat$Builder;Landroid/content/res/Resources;Ljava/lang/String;I)V
    .locals 23
    .param p1, "extras"    # Landroid/os/Bundle;
    .param p2, "mBuilder"    # Landroid/support/v4/app/NotificationCompat$Builder;
    .param p3, "resources"    # Landroid/content/res/Resources;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "notId"    # I

    .prologue
    .line 443
    const-string v2, "PushPlugin_GCMIntentService"

    const-string v4, "create actions: with in-line"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    const-string v2, "actions"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 445
    .local v10, "actions":Ljava/lang/String;
    if-eqz v10, :cond_6

    .line 447
    :try_start_0
    new-instance v11, Lorg/json/JSONArray;

    invoke-direct {v11, v10}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 448
    .local v11, "actionsArray":Lorg/json/JSONArray;
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 449
    .local v22, "wActions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/NotificationCompat$Action;>;"
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v12, v2, :cond_7

    .line 450
    const/4 v15, 0x1

    .line 451
    .local v15, "min":I
    const v14, 0x77359400

    .line 452
    .local v14, "max":I
    new-instance v17, Ljava/util/Random;

    invoke-direct/range {v17 .. v17}, Ljava/util/Random;-><init>()V

    .line 453
    .local v17, "random":Ljava/util/Random;
    const v2, 0x77359400

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int v20, v2, v15

    .line 454
    .local v20, "uniquePendingIntentRequestCode":I
    const-string v2, "PushPlugin_GCMIntentService"

    const-string v4, "adding action"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    invoke-virtual {v11, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 456
    .local v8, "action":Lorg/json/JSONObject;
    const-string v2, "PushPlugin_GCMIntentService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adding callback = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "callback"

    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    const-string v2, "foreground"

    const/4 v4, 0x1

    invoke-virtual {v8, v2, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 458
    .local v6, "foreground":Z
    const-string v2, "inline"

    const/4 v4, 0x0

    invoke-virtual {v8, v2, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v13

    .line 459
    .local v13, "inline":Z
    const/4 v3, 0x0

    .line 460
    .local v3, "intent":Landroid/content/Intent;
    const/16 v16, 0x0

    .line 461
    .local v16, "pIntent":Landroid/app/PendingIntent;
    if-eqz v13, :cond_3

    .line 462
    const-string v2, "PushPlugin_GCMIntentService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x17

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-gt v2, v4, :cond_1

    .line 464
    const-string v2, "PushPlugin_GCMIntentService"

    const-string v4, "push activity"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "intent":Landroid/content/Intent;
    const-class v2, Lcom/adobe/phonegap/push/PushHandlerActivity;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 471
    .restart local v3    # "intent":Landroid/content/Intent;
    :goto_1
    const-string v2, "callback"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move/from16 v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/adobe/phonegap/push/GCMIntentService;->updateIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;ZI)V

    .line 473
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-gt v2, v4, :cond_2

    .line 474
    const-string v2, "PushPlugin_GCMIntentService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "push activity for notId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    const/high16 v2, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-static {v0, v1, v3, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v16

    .line 490
    :goto_2
    new-instance v9, Landroid/support/v4/app/NotificationCompat$Action$Builder;

    const-string v2, "icon"

    const-string v4, ""

    .line 491
    invoke-virtual {v8, v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "drawable"

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v0, v2, v4, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v4, "title"

    .line 492
    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-direct {v9, v2, v4, v0}, Landroid/support/v4/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 494
    .local v9, "actionBuilder":Landroid/support/v4/app/NotificationCompat$Action$Builder;
    const/16 v18, 0x0

    .line 495
    .local v18, "remoteInput":Landroid/support/v4/app/RemoteInput;
    if-eqz v13, :cond_0

    .line 496
    const-string v2, "PushPlugin_GCMIntentService"

    const-string v4, "create remote input"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    const-string v19, "Enter your reply here"

    .line 498
    .local v19, "replyLabel":Ljava/lang/String;
    new-instance v2, Landroid/support/v4/app/RemoteInput$Builder;

    const-string v4, "inlineReply"

    invoke-direct {v2, v4}, Landroid/support/v4/app/RemoteInput$Builder;-><init>(Ljava/lang/String;)V

    .line 500
    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/support/v4/app/RemoteInput$Builder;->setLabel(Ljava/lang/CharSequence;)Landroid/support/v4/app/RemoteInput$Builder;

    move-result-object v2

    .line 501
    invoke-virtual {v2}, Landroid/support/v4/app/RemoteInput$Builder;->build()Landroid/support/v4/app/RemoteInput;

    move-result-object v18

    .line 502
    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/support/v4/app/NotificationCompat$Action$Builder;->addRemoteInput(Landroid/support/v4/app/RemoteInput;)Landroid/support/v4/app/NotificationCompat$Action$Builder;

    .line 505
    .end local v19    # "replyLabel":Ljava/lang/String;
    :cond_0
    invoke-virtual {v9}, Landroid/support/v4/app/NotificationCompat$Action$Builder;->build()Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object v21

    .line 506
    .local v21, "wAction":Landroid/support/v4/app/NotificationCompat$Action;
    invoke-virtual {v9}, Landroid/support/v4/app/NotificationCompat$Action$Builder;->build()Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 508
    if-eqz v13, :cond_5

    .line 509
    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 514
    :goto_3
    const/16 v21, 0x0

    .line 449
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 467
    .end local v9    # "actionBuilder":Landroid/support/v4/app/NotificationCompat$Action$Builder;
    .end local v18    # "remoteInput":Landroid/support/v4/app/RemoteInput;
    .end local v21    # "wAction":Landroid/support/v4/app/NotificationCompat$Action;
    :cond_1
    const-string v2, "PushPlugin_GCMIntentService"

    const-string v4, "push receiver"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "intent":Landroid/content/Intent;
    const-class v2, Lcom/adobe/phonegap/push/BackgroundActionButtonHandler;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v3    # "intent":Landroid/content/Intent;
    goto/16 :goto_1

    .line 477
    :cond_2
    const-string v2, "PushPlugin_GCMIntentService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "push receiver for notId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    const/high16 v2, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-static {v0, v1, v3, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v16

    goto/16 :goto_2

    .line 480
    :cond_3
    if-eqz v6, :cond_4

    .line 481
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "intent":Landroid/content/Intent;
    const-class v2, Lcom/adobe/phonegap/push/PushHandlerActivity;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 482
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string v2, "callback"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move/from16 v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/adobe/phonegap/push/GCMIntentService;->updateIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;ZI)V

    .line 483
    const/high16 v2, 0x8000000

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-static {v0, v1, v3, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v16

    goto/16 :goto_2

    .line 485
    :cond_4
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "intent":Landroid/content/Intent;
    const-class v2, Lcom/adobe/phonegap/push/BackgroundActionButtonHandler;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 486
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string v2, "callback"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move/from16 v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/adobe/phonegap/push/GCMIntentService;->updateIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;ZI)V

    .line 487
    const/high16 v2, 0x8000000

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-static {v0, v1, v3, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v16

    goto/16 :goto_2

    .line 511
    .restart local v9    # "actionBuilder":Landroid/support/v4/app/NotificationCompat$Action$Builder;
    .restart local v18    # "remoteInput":Landroid/support/v4/app/RemoteInput;
    .restart local v21    # "wAction":Landroid/support/v4/app/NotificationCompat$Action;
    :cond_5
    const-string v2, "icon"

    const-string v4, ""

    invoke-virtual {v8, v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "drawable"

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v0, v2, v4, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v4, "title"

    .line 512
    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 511
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v2, v4, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto/16 :goto_3

    .line 519
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v6    # "foreground":Z
    .end local v8    # "action":Lorg/json/JSONObject;
    .end local v9    # "actionBuilder":Landroid/support/v4/app/NotificationCompat$Action$Builder;
    .end local v11    # "actionsArray":Lorg/json/JSONArray;
    .end local v12    # "i":I
    .end local v13    # "inline":Z
    .end local v14    # "max":I
    .end local v15    # "min":I
    .end local v16    # "pIntent":Landroid/app/PendingIntent;
    .end local v17    # "random":Ljava/util/Random;
    .end local v18    # "remoteInput":Landroid/support/v4/app/RemoteInput;
    .end local v20    # "uniquePendingIntentRequestCode":I
    .end local v21    # "wAction":Landroid/support/v4/app/NotificationCompat$Action;
    .end local v22    # "wActions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/NotificationCompat$Action;>;"
    :catch_0
    move-exception v2

    .line 523
    :cond_6
    :goto_4
    return-void

    .line 517
    .restart local v11    # "actionsArray":Lorg/json/JSONArray;
    .restart local v12    # "i":I
    .restart local v22    # "wActions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/NotificationCompat$Action;>;"
    :cond_7
    new-instance v2, Landroid/support/v4/app/NotificationCompat$WearableExtender;

    invoke-direct {v2}, Landroid/support/v4/app/NotificationCompat$WearableExtender;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->addActions(Ljava/util/List;)Landroid/support/v4/app/NotificationCompat$WearableExtender;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->extend(Landroid/support/v4/app/NotificationCompat$Extender;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 518
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4
.end method

.method private extractBadgeCount(Landroid/os/Bundle;)I
    .locals 5
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 260
    const/4 v0, -0x1

    .line 261
    .local v0, "count":I
    const-string v3, "count"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 264
    .local v2, "msgcnt":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 265
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 271
    :cond_0
    :goto_0
    return v0

    .line 267
    :catch_0
    move-exception v1

    .line 268
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v3, "PushPlugin_GCMIntentService"

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    .locals 1
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 798
    if-eqz p1, :cond_0

    .line 799
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    .line 801
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getAppName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 777
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 778
    .local v0, "appName":Ljava/lang/CharSequence;
    check-cast v0, Ljava/lang/String;

    .end local v0    # "appName":Ljava/lang/CharSequence;
    return-object v0
.end method

.method private localizeKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 128
    const-string v11, "title"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "message"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "summaryText"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 130
    :cond_0
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    move-object/from16 v0, p3

    invoke-direct {v7, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 132
    .local v7, "localeObject":Lorg/json/JSONObject;
    const-string v11, "locKey"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 134
    .local v6, "localeKey":Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 135
    .local v5, "localeFormatData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v11, "locData"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 136
    const-string v11, "locData"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 137
    .local v3, "localeData":Ljava/lang/String;
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 138
    .local v4, "localeDataArray":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v2, v11, :cond_1

    .line 139
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 143
    .end local v2    # "i":I
    .end local v3    # "localeData":Ljava/lang/String;
    .end local v4    # "localeDataArray":Lorg/json/JSONArray;
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 144
    .local v8, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 146
    .local v10, "resources":Landroid/content/res/Resources;
    const-string v11, "string"

    invoke-virtual {v10, v6, v11, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 148
    .local v9, "resourceId":I
    if-eqz v9, :cond_3

    .line 149
    invoke-virtual {v5}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v9, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 164
    .end local v5    # "localeFormatData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "localeKey":Ljava/lang/String;
    .end local v7    # "localeObject":Lorg/json/JSONObject;
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "resourceId":I
    .end local v10    # "resources":Landroid/content/res/Resources;
    .end local p3    # "value":Ljava/lang/String;
    :cond_2
    :goto_1
    return-object p3

    .line 152
    .restart local v5    # "localeFormatData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6    # "localeKey":Ljava/lang/String;
    .restart local v7    # "localeObject":Lorg/json/JSONObject;
    .restart local v8    # "packageName":Ljava/lang/String;
    .restart local v9    # "resourceId":I
    .restart local v10    # "resources":Landroid/content/res/Resources;
    .restart local p3    # "value":Ljava/lang/String;
    :cond_3
    const-string v11, "PushPlugin_GCMIntentService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "can\'t find resource for locale key = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 157
    .end local v5    # "localeFormatData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "localeKey":Ljava/lang/String;
    .end local v7    # "localeObject":Lorg/json/JSONObject;
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "resourceId":I
    .end local v10    # "resources":Landroid/content/res/Resources;
    :catch_0
    move-exception v1

    .line 158
    .local v1, "e":Lorg/json/JSONException;
    const-string v11, "PushPlugin_GCMIntentService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "no locale found for key = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", error "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private normalizeExtras(Landroid/content/Context;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 195
    const-string v3, "PushPlugin_GCMIntentService"

    const-string v4, "normalize extras"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-virtual/range {p2 .. p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 197
    .local v11, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 199
    .local v8, "newExtras":Landroid/os/Bundle;
    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 200
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 202
    .local v5, "key":Ljava/lang/String;
    const-string v3, "PushPlugin_GCMIntentService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "key = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const-string v3, "data"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "message"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 207
    :cond_1
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .line 209
    .local v13, "json":Ljava/lang/Object;
    instance-of v3, v13, Ljava/lang/String;

    if-eqz v3, :cond_3

    move-object v3, v13

    check-cast v3, Ljava/lang/String;

    const-string v4, "{"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 210
    const-string v3, "PushPlugin_GCMIntentService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "extracting nested message data from key = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :try_start_0
    new-instance v9, Lorg/json/JSONObject;

    check-cast v13, Ljava/lang/String;

    .end local v13    # "json":Ljava/lang/Object;
    invoke-direct {v9, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 214
    .local v9, "data":Lorg/json/JSONObject;
    const-string v3, "alert"

    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "message"

    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "body"

    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "title"

    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 215
    :cond_2
    invoke-virtual {v9}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v14

    .line 216
    .local v14, "jsonIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 217
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 219
    .local v15, "jsonKey":Ljava/lang/String;
    const-string v3, "PushPlugin_GCMIntentService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "key = data/"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-virtual {v9, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 222
    .local v17, "value":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/adobe/phonegap/push/GCMIntentService;->normalizeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 223
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v15, v2}, Lcom/adobe/phonegap/push/GCMIntentService;->localizeKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 225
    move-object/from16 v0, v17

    invoke-virtual {v8, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 228
    .end local v9    # "data":Lorg/json/JSONObject;
    .end local v14    # "jsonIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v15    # "jsonKey":Ljava/lang/String;
    .end local v17    # "value":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 229
    .local v10, "e":Lorg/json/JSONException;
    const-string v3, "PushPlugin_GCMIntentService"

    const-string v4, "normalizeExtras: JSON exception"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    .end local v10    # "e":Lorg/json/JSONException;
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/adobe/phonegap/push/GCMIntentService;->normalizeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 251
    .local v6, "newKey":Ljava/lang/String;
    const-string v3, "PushPlugin_GCMIntentService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "replace key "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " with "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v7, p2

    .line 252
    invoke-direct/range {v3 .. v8}, Lcom/adobe/phonegap/push/GCMIntentService;->replaceKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 232
    .end local v6    # "newKey":Ljava/lang/String;
    :cond_4
    const-string v3, "notification"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 233
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v17

    .line 234
    .local v17, "value":Landroid/os/Bundle;
    invoke-virtual/range {v17 .. v17}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 235
    .local v12, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 236
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 238
    .local v16, "notifkey":Ljava/lang/String;
    const-string v3, "PushPlugin_GCMIntentService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "notifkey = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/adobe/phonegap/push/GCMIntentService;->normalizeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 240
    .restart local v6    # "newKey":Ljava/lang/String;
    const-string v3, "PushPlugin_GCMIntentService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "replace key "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " with "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 243
    .local v18, "valueData":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v6, v2}, Lcom/adobe/phonegap/push/GCMIntentService;->localizeKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 245
    move-object/from16 v0, v18

    invoke-virtual {v8, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 256
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "newKey":Ljava/lang/String;
    .end local v12    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v16    # "notifkey":Ljava/lang/String;
    .end local v17    # "value":Landroid/os/Bundle;
    .end local v18    # "valueData":Ljava/lang/String;
    :cond_5
    return-object v8
.end method

.method private normalizeKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 171
    const-string v0, "body"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "alert"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mp_message"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "gcm.notification.body"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "twi_body"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    :cond_0
    const-string v0, "message"

    .line 187
    :goto_0
    return-object v0

    .line 173
    :cond_1
    const-string v0, "twi_title"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 174
    const-string v0, "title"

    goto :goto_0

    .line 175
    :cond_2
    const-string v0, "msgcnt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "badge"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 176
    :cond_3
    const-string v0, "count"

    goto :goto_0

    .line 177
    :cond_4
    const-string v0, "soundname"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "twi_sound"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 178
    :cond_5
    const-string v0, "sound"

    goto :goto_0

    .line 179
    :cond_6
    const-string v0, "gcm.notification"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 180
    const-string v0, "gcm.notification"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 181
    :cond_7
    const-string v0, "gcm.n."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 182
    const-string v0, "gcm.n."

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 183
    :cond_8
    const-string v0, "com.urbanairship.push"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 184
    const-string v0, "com.urbanairship.push"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 185
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_9
    move-object v0, p1

    .line 187
    goto/16 :goto_0
.end method

.method private parseInt(Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 5
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 782
    const/4 v1, 0x0

    .line 785
    .local v1, "retval":I
    :try_start_0
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 794
    :goto_0
    return v1

    .line 787
    :catch_0
    move-exception v0

    .line 788
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v2, "PushPlugin_GCMIntentService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Number format exception - Error parsing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 790
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    .line 791
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "PushPlugin_GCMIntentService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Number format exception - Error parsing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private replaceKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "oldKey"    # Ljava/lang/String;
    .param p3, "newKey"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;
    .param p5, "newExtras"    # Landroid/os/Bundle;

    .prologue
    .line 108
    invoke-virtual {p4, p2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 109
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 110
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 111
    check-cast v0, Ljava/lang/String;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-direct {p0, p1, p3, v0}, Lcom/adobe/phonegap/push/GCMIntentService;->localizeKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "value":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .end local v0    # "value":Ljava/lang/String;
    invoke-virtual {p5, p3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 114
    .local v0, "value":Ljava/lang/Object;
    :cond_1
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 115
    check-cast v0, Ljava/lang/Boolean;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p5, p3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 116
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_3

    .line 117
    check-cast v0, Ljava/lang/Number;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p5, p3, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_0

    .line 119
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_3
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p5, p3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setNotificationCount(Landroid/content/Context;Landroid/os/Bundle;Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "mBuilder"    # Landroid/support/v4/app/NotificationCompat$Builder;

    .prologue
    .line 526
    invoke-direct {p0, p2}, Lcom/adobe/phonegap/push/GCMIntentService;->extractBadgeCount(Landroid/os/Bundle;)I

    move-result v0

    .line 527
    .local v0, "count":I
    if-ltz v0, :cond_0

    .line 528
    const-string v1, "PushPlugin_GCMIntentService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "count =["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    invoke-virtual {p3, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setNumber(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 531
    :cond_0
    return-void
.end method

.method private setNotificationIconColor(Ljava/lang/String;Landroid/support/v4/app/NotificationCompat$Builder;Ljava/lang/String;)V
    .locals 4
    .param p1, "color"    # Ljava/lang/String;
    .param p2, "mBuilder"    # Landroid/support/v4/app/NotificationCompat$Builder;
    .param p3, "localIconColor"    # Ljava/lang/String;

    .prologue
    .line 741
    const/4 v1, 0x0

    .line 742
    .local v1, "iconColor":I
    if-eqz p1, :cond_2

    const-string v2, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 744
    :try_start_0
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 756
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 757
    invoke-virtual {p2, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 759
    :cond_1
    return-void

    .line 745
    :catch_0
    move-exception v0

    .line 746
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "PushPlugin_GCMIntentService"

    const-string v3, "couldn\'t parse color from android options"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 749
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_2
    if-eqz p3, :cond_0

    const-string v2, ""

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 751
    :try_start_1
    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    goto :goto_0

    .line 752
    :catch_1
    move-exception v0

    .line 753
    .restart local v0    # "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "PushPlugin_GCMIntentService"

    const-string v3, "couldn\'t parse color from android options"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setNotificationLargeIcon(Landroid/os/Bundle;Ljava/lang/String;Landroid/content/res/Resources;Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 9
    .param p1, "extras"    # Landroid/os/Bundle;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "resources"    # Landroid/content/res/Resources;
    .param p4, "mBuilder"    # Landroid/support/v4/app/NotificationCompat$Builder;

    .prologue
    .line 694
    const-string v7, "image"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 695
    .local v3, "gcmLargeIcon":Ljava/lang/String;
    if-eqz v3, :cond_1

    const-string v7, ""

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 696
    const-string v7, "http://"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "https://"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 697
    :cond_0
    invoke-virtual {p0, v3}, Lcom/adobe/phonegap/push/GCMIntentService;->getBitmapFromURL(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {p4, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 698
    const-string v7, "PushPlugin_GCMIntentService"

    const-string v8, "using remote large-icon from gcm"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    :cond_1
    :goto_0
    return-void

    .line 700
    :cond_2
    invoke-virtual {p0}, Lcom/adobe/phonegap/push/GCMIntentService;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 703
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    :try_start_0
    invoke-virtual {v0, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 704
    .local v4, "istr":Ljava/io/InputStream;
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 705
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p4, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 706
    const-string v7, "PushPlugin_GCMIntentService"

    const-string v8, "using assets large-icon from gcm"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 707
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "istr":Ljava/io/InputStream;
    :catch_0
    move-exception v2

    .line 708
    .local v2, "e":Ljava/io/IOException;
    const/4 v6, 0x0

    .line 709
    .local v6, "largeIconId":I
    const-string v7, "drawable"

    invoke-virtual {p3, v3, v7, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 710
    if-eqz v6, :cond_3

    .line 711
    invoke-static {p3, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 712
    .local v5, "largeIconBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 713
    const-string v7, "PushPlugin_GCMIntentService"

    const-string v8, "using resources large-icon from gcm"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 715
    .end local v5    # "largeIconBitmap":Landroid/graphics/Bitmap;
    :cond_3
    const-string v7, "PushPlugin_GCMIntentService"

    const-string v8, "Not setting large icon"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setNotificationLedColor(Landroid/os/Bundle;Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 9
    .param p1, "extras"    # Landroid/os/Bundle;
    .param p2, "mBuilder"    # Landroid/support/v4/app/NotificationCompat$Builder;

    .prologue
    const/16 v8, 0x1f4

    .line 659
    const-string v4, "ledColor"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 660
    .local v2, "ledColor":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 662
    const-string v4, "\\["

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\]"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 663
    .local v1, "items":[Ljava/lang/String;
    array-length v4, v1

    new-array v3, v4, [I

    .line 664
    .local v3, "results":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_0

    .line 666
    :try_start_0
    aget-object v4, v1, v0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 664
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 669
    :cond_0
    array-length v4, v3

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    .line 670
    const/4 v4, 0x0

    aget v4, v3, v4

    const/4 v5, 0x1

    aget v5, v3, v5

    const/4 v6, 0x2

    aget v6, v3, v6

    const/4 v7, 0x3

    aget v7, v3, v7

    invoke-static {v4, v5, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {p2, v4, v8, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setLights(III)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 675
    .end local v0    # "i":I
    .end local v1    # "items":[Ljava/lang/String;
    .end local v3    # "results":[I
    :cond_1
    :goto_2
    return-void

    .line 672
    .restart local v0    # "i":I
    .restart local v1    # "items":[Ljava/lang/String;
    .restart local v3    # "results":[I
    :cond_2
    const-string v4, "PushPlugin_GCMIntentService"

    const-string v5, "ledColor parameter must be an array of length == 4 (ARGB)"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 667
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private setNotificationMessage(ILandroid/os/Bundle;Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 14
    .param p1, "notId"    # I
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "mBuilder"    # Landroid/support/v4/app/NotificationCompat$Builder;

    .prologue
    .line 569
    const-string v12, "message"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 571
    .local v4, "message":Ljava/lang/String;
    const-string v12, "style"

    const-string v13, "text"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 572
    .local v10, "style":Ljava/lang/String;
    const-string v12, "inbox"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 573
    invoke-virtual {p0, p1, v4}, Lcom/adobe/phonegap/push/GCMIntentService;->setNotification(ILjava/lang/String;)V

    .line 575
    invoke-direct {p0, v4}, Lcom/adobe/phonegap/push/GCMIntentService;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 577
    sget-object v12, Lcom/adobe/phonegap/push/GCMIntentService;->messageMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 578
    .local v5, "messageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 579
    .local v7, "sizeList":Ljava/lang/Integer;
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/4 v13, 0x1

    if-le v12, v13, :cond_3

    .line 580
    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v8

    .line 581
    .local v8, "sizeListMessage":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " more"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 582
    .local v9, "stacking":Ljava/lang/String;
    const-string v12, "summaryText"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 583
    const-string v12, "summaryText"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 584
    const-string v12, "%n%"

    invoke-virtual {v9, v12, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 586
    :cond_0
    new-instance v12, Landroid/support/v4/app/NotificationCompat$InboxStyle;

    invoke-direct {v12}, Landroid/support/v4/app/NotificationCompat$InboxStyle;-><init>()V

    const-string v13, "title"

    .line 587
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v13}, Lcom/adobe/phonegap/push/GCMIntentService;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    move-result-object v12

    .line 588
    invoke-direct {p0, v9}, Lcom/adobe/phonegap/push/GCMIntentService;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    move-result-object v6

    .line 590
    .local v6, "notificationInbox":Landroid/support/v4/app/NotificationCompat$InboxStyle;
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v3, v12, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 591
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-direct {p0, v12}, Lcom/adobe/phonegap/push/GCMIntentService;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v12

    invoke-virtual {v6, v12}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    .line 590
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 594
    :cond_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 639
    .end local v3    # "i":I
    .end local v5    # "messageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "notificationInbox":Landroid/support/v4/app/NotificationCompat$InboxStyle;
    .end local v7    # "sizeList":Ljava/lang/Integer;
    .end local v8    # "sizeListMessage":Ljava/lang/String;
    .end local v9    # "stacking":Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 596
    .restart local v5    # "messageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v7    # "sizeList":Ljava/lang/Integer;
    :cond_3
    new-instance v2, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v2}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 597
    .local v2, "bigText":Landroid/support/v4/app/NotificationCompat$BigTextStyle;
    if-eqz v4, :cond_2

    .line 598
    invoke-direct {p0, v4}, Lcom/adobe/phonegap/push/GCMIntentService;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    .line 599
    const-string v12, "title"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/adobe/phonegap/push/GCMIntentService;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    .line 600
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_1

    .line 603
    .end local v2    # "bigText":Landroid/support/v4/app/NotificationCompat$BigTextStyle;
    .end local v5    # "messageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "sizeList":Ljava/lang/Integer;
    :cond_4
    const-string v12, "picture"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 604
    const-string v12, ""

    invoke-virtual {p0, p1, v12}, Lcom/adobe/phonegap/push/GCMIntentService;->setNotification(ILjava/lang/String;)V

    .line 606
    new-instance v1, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    invoke-direct {v1}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;-><init>()V

    .line 607
    .local v1, "bigPicture":Landroid/support/v4/app/NotificationCompat$BigPictureStyle;
    const-string v12, "picture"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Lcom/adobe/phonegap/push/GCMIntentService;->getBitmapFromURL(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v12

    invoke-virtual {v1, v12}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    .line 608
    const-string v12, "title"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/adobe/phonegap/push/GCMIntentService;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v12

    invoke-virtual {v1, v12}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    .line 609
    const-string v12, "summaryText"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/adobe/phonegap/push/GCMIntentService;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v12

    invoke-virtual {v1, v12}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    .line 611
    const-string v12, "title"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/adobe/phonegap/push/GCMIntentService;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 612
    invoke-direct {p0, v4}, Lcom/adobe/phonegap/push/GCMIntentService;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 614
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto/16 :goto_1

    .line 616
    .end local v1    # "bigPicture":Landroid/support/v4/app/NotificationCompat$BigPictureStyle;
    :cond_5
    const-string v12, ""

    invoke-virtual {p0, p1, v12}, Lcom/adobe/phonegap/push/GCMIntentService;->setNotification(ILjava/lang/String;)V

    .line 618
    new-instance v2, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v2}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 620
    .restart local v2    # "bigText":Landroid/support/v4/app/NotificationCompat$BigTextStyle;
    if-eqz v4, :cond_2

    .line 621
    invoke-direct {p0, v4}, Lcom/adobe/phonegap/push/GCMIntentService;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 623
    invoke-direct {p0, v4}, Lcom/adobe/phonegap/push/GCMIntentService;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    .line 624
    const-string v12, "title"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/adobe/phonegap/push/GCMIntentService;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    .line 626
    const-string v12, "summaryText"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 627
    .local v11, "summaryText":Ljava/lang/String;
    if-eqz v11, :cond_6

    .line 628
    invoke-direct {p0, v11}, Lcom/adobe/phonegap/push/GCMIntentService;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    .line 631
    :cond_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto/16 :goto_1
.end method

.method private setNotificationPriority(Landroid/os/Bundle;Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 5
    .param p1, "extras"    # Landroid/os/Bundle;
    .param p2, "mBuilder"    # Landroid/support/v4/app/NotificationCompat$Builder;

    .prologue
    .line 678
    const-string v3, "priority"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 679
    .local v2, "priorityStr":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 681
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 682
    .local v1, "priority":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, -0x2

    if-lt v3, v4, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    if-gt v3, v4, :cond_1

    .line 683
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 691
    .end local v1    # "priority":Ljava/lang/Integer;
    :cond_0
    :goto_0
    return-void

    .line 685
    .restart local v1    # "priority":Ljava/lang/Integer;
    :cond_1
    const-string v3, "PushPlugin_GCMIntentService"

    const-string v4, "Priority parameter must be between -2 and 2"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 687
    .end local v1    # "priority":Ljava/lang/Integer;
    :catch_0
    move-exception v0

    .line 688
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method private setNotificationSmallIcon(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/res/Resources;Landroid/support/v4/app/NotificationCompat$Builder;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "resources"    # Landroid/content/res/Resources;
    .param p5, "mBuilder"    # Landroid/support/v4/app/NotificationCompat$Builder;
    .param p6, "localIcon"    # Ljava/lang/String;

    .prologue
    .line 723
    const/4 v1, 0x0

    .line 724
    .local v1, "iconId":I
    const-string v2, "icon"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 725
    .local v0, "icon":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 726
    const-string v2, "drawable"

    invoke-virtual {p4, v0, v2, p3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 727
    const-string v2, "PushPlugin_GCMIntentService"

    const-string v3, "using icon from plugin options"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 734
    const-string v2, "PushPlugin_GCMIntentService"

    const-string v3, "no icon resource found - using application icon"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v1, v2, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 737
    :cond_1
    invoke-virtual {p5, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 738
    return-void

    .line 729
    :cond_2
    if-eqz p6, :cond_0

    const-string v2, ""

    invoke-virtual {v2, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 730
    const-string v2, "drawable"

    invoke-virtual {p4, p6, v2, p3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 731
    const-string v2, "PushPlugin_GCMIntentService"

    const-string v3, "using icon from plugin options"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setNotificationSound(Landroid/content/Context;Landroid/os/Bundle;Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "mBuilder"    # Landroid/support/v4/app/NotificationCompat$Builder;

    .prologue
    .line 642
    const-string v2, "soundname"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 643
    .local v1, "soundname":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 644
    const-string v2, "sound"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 646
    :cond_0
    const-string v2, "ringtone"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 647
    sget-object v2, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {p3, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 656
    :goto_0
    return-void

    .line 648
    :cond_1
    if-eqz v1, :cond_2

    const-string v2, "default"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 649
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android.resource://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 650
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/raw/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 649
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 651
    .local v0, "sound":Landroid/net/Uri;
    const-string v2, "PushPlugin_GCMIntentService"

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    invoke-virtual {p3, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_0

    .line 654
    .end local v0    # "sound":Landroid/net/Uri;
    :cond_2
    sget-object v2, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {p3, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_0
.end method

.method private setNotificationVibration(Landroid/os/Bundle;Ljava/lang/Boolean;Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 7
    .param p1, "extras"    # Landroid/os/Bundle;
    .param p2, "vibrateOption"    # Ljava/lang/Boolean;
    .param p3, "mBuilder"    # Landroid/support/v4/app/NotificationCompat$Builder;

    .prologue
    .line 551
    const-string v4, "vibrationPattern"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 552
    .local v3, "vibrationPattern":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 553
    const-string v4, "\\["

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\]"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 554
    .local v1, "items":[Ljava/lang/String;
    array-length v4, v1

    new-array v2, v4, [J

    .line 555
    .local v2, "results":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_0

    .line 557
    :try_start_0
    aget-object v4, v1, v0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    aput-wide v4, v2, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 555
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 560
    :cond_0
    invoke-virtual {p3, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setVibrate([J)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 566
    .end local v0    # "i":I
    .end local v1    # "items":[Ljava/lang/String;
    .end local v2    # "results":[J
    :cond_1
    :goto_2
    return-void

    .line 562
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 563
    const/4 v4, 0x2

    invoke-virtual {p3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_2

    .line 558
    .restart local v0    # "i":I
    .restart local v1    # "items":[Ljava/lang/String;
    .restart local v2    # "results":[J
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private setVisibility(Landroid/content/Context;Landroid/os/Bundle;Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "mBuilder"    # Landroid/support/v4/app/NotificationCompat$Builder;

    .prologue
    .line 535
    const-string v3, "visibility"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 536
    .local v2, "visibilityStr":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 538
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 539
    .local v1, "visibility":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, -0x1

    if-lt v3, v4, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_1

    .line 540
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p3, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setVisibility(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 548
    .end local v1    # "visibility":Ljava/lang/Integer;
    :cond_0
    :goto_0
    return-void

    .line 542
    .restart local v1    # "visibility":Ljava/lang/Integer;
    :cond_1
    const-string v3, "PushPlugin_GCMIntentService"

    const-string v4, "Visibility parameter must be between -1 and 1"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 544
    .end local v1    # "visibility":Ljava/lang/Integer;
    :catch_0
    move-exception v0

    .line 545
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method private showNotificationIfPossible(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 277
    const-string v6, "message"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 278
    .local v4, "message":Ljava/lang/String;
    const-string v6, "title"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 279
    .local v5, "title":Ljava/lang/String;
    const-string v6, "content-available"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 280
    .local v1, "contentAvailable":Ljava/lang/String;
    const-string v6, "force-start"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 281
    .local v2, "forceStart":Ljava/lang/String;
    invoke-direct {p0, p2}, Lcom/adobe/phonegap/push/GCMIntentService;->extractBadgeCount(Landroid/os/Bundle;)I

    move-result v0

    .line 282
    .local v0, "badgeCount":I
    if-ltz v0, :cond_0

    .line 283
    const-string v6, "PushPlugin_GCMIntentService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "count =["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-static {p1, v0}, Lcom/adobe/phonegap/push/PushPlugin;->setApplicationIconBadgeNumber(Landroid/content/Context;I)V

    .line 287
    :cond_0
    const-string v6, "PushPlugin_GCMIntentService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "message =["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    const-string v6, "PushPlugin_GCMIntentService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "title =["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    const-string v6, "PushPlugin_GCMIntentService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "contentAvailable =["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    const-string v6, "PushPlugin_GCMIntentService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "forceStart =["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    :cond_1
    if-eqz v5, :cond_5

    .line 293
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_5

    .line 295
    :cond_2
    const-string v6, "PushPlugin_GCMIntentService"

    const-string v7, "create notification"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 298
    :cond_3
    const-string v6, "title"

    invoke-static {p0}, Lcom/adobe/phonegap/push/GCMIntentService;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/adobe/phonegap/push/GCMIntentService;->createNotification(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 304
    :cond_5
    invoke-static {}, Lcom/adobe/phonegap/push/PushPlugin;->isActive()Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "1"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 305
    const-string v6, "PushPlugin_GCMIntentService"

    const-string v7, "app is not running but we should start it and put in background"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    new-instance v3, Landroid/content/Intent;

    const-class v6, Lcom/adobe/phonegap/push/PushHandlerActivity;

    invoke-direct {v3, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 307
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v6, 0x10000000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 308
    const-string v6, "pushBundle"

    invoke-virtual {v3, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 309
    const-string v6, "cdvStartInBackground"

    const/4 v7, 0x1

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 310
    const-string v6, "foreground"

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 311
    invoke-virtual {p0, v3}, Lcom/adobe/phonegap/push/GCMIntentService;->startActivity(Landroid/content/Intent;)V

    .line 317
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_6
    :goto_0
    return-void

    .line 312
    :cond_7
    const-string v6, "1"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 313
    const-string v6, "PushPlugin_GCMIntentService"

    const-string v7, "app is not running and content available true"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const-string v6, "PushPlugin_GCMIntentService"

    const-string v7, "send notification event"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-static {p2}, Lcom/adobe/phonegap/push/PushPlugin;->sendExtras(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private updateIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;ZI)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "callback"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "foreground"    # Z
    .param p5, "notId"    # I

    .prologue
    .line 436
    const-string v0, "callback"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 437
    const-string v0, "pushBundle"

    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 438
    const-string v0, "foreground"

    invoke-virtual {p1, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 439
    const-string v0, "notId"

    invoke-virtual {p1, v0, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 440
    return-void
.end method


# virtual methods
.method public createNotification(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 26
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 320
    const-string v4, "notification"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/adobe/phonegap/push/GCMIntentService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/app/NotificationManager;

    .line 321
    .local v20, "mNotificationManager":Landroid/app/NotificationManager;
    invoke-static/range {p0 .. p0}, Lcom/adobe/phonegap/push/GCMIntentService;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v17

    .line 322
    .local v17, "appName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 323
    .local v7, "packageName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 325
    .local v8, "resources":Landroid/content/res/Resources;
    const-string v4, "notId"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v4, v1}, Lcom/adobe/phonegap/push/GCMIntentService;->parseInt(Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v16

    .line 326
    .local v16, "notId":I
    new-instance v21, Landroid/content/Intent;

    const-class v4, Lcom/adobe/phonegap/push/PushHandlerActivity;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 327
    .local v21, "notificationIntent":Landroid/content/Intent;
    const/high16 v4, 0x24000000

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 328
    const-string v4, "pushBundle"

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 329
    const-string v4, "notId"

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 331
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v23

    .line 332
    .local v23, "requestCode":I
    const/high16 v4, 0x8000000

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v18

    .line 334
    .local v18, "contentIntent":Landroid/app/PendingIntent;
    new-instance v4, Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 336
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v4, v12, v13}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    const-string v5, "title"

    .line 337
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/adobe/phonegap/push/GCMIntentService;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    const-string v5, "title"

    .line 338
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/adobe/phonegap/push/GCMIntentService;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    .line 339
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    const/4 v5, 0x1

    .line 340
    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    .line 342
    .local v9, "mBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    const-string v4, "com.adobe.phonegap.push"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v22

    .line 343
    .local v22, "prefs":Landroid/content/SharedPreferences;
    const-string v4, "icon"

    const/4 v5, 0x0

    move-object/from16 v0, v22

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 344
    .local v10, "localIcon":Ljava/lang/String;
    const-string v4, "iconColor"

    const/4 v5, 0x0

    move-object/from16 v0, v22

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 345
    .local v19, "localIconColor":Ljava/lang/String;
    const-string v4, "sound"

    const/4 v5, 0x1

    move-object/from16 v0, v22

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v24

    .line 346
    .local v24, "soundOption":Z
    const-string v4, "vibrate"

    const/4 v5, 0x1

    move-object/from16 v0, v22

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v25

    .line 347
    .local v25, "vibrateOption":Z
    const-string v4, "PushPlugin_GCMIntentService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "stored icon="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    const-string v4, "PushPlugin_GCMIntentService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "stored iconColor="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    const-string v4, "PushPlugin_GCMIntentService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "stored sound="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    const-string v4, "PushPlugin_GCMIntentService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "stored vibrate="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v4, v9}, Lcom/adobe/phonegap/push/GCMIntentService;->setNotificationVibration(Landroid/os/Bundle;Ljava/lang/Boolean;Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 365
    const-string v4, "color"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v4, v9, v1}, Lcom/adobe/phonegap/push/GCMIntentService;->setNotificationIconColor(Ljava/lang/String;Landroid/support/v4/app/NotificationCompat$Builder;Ljava/lang/String;)V

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    .line 379
    invoke-direct/range {v4 .. v10}, Lcom/adobe/phonegap/push/GCMIntentService;->setNotificationSmallIcon(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/res/Resources;Landroid/support/v4/app/NotificationCompat$Builder;Ljava/lang/String;)V

    .line 393
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v7, v8, v9}, Lcom/adobe/phonegap/push/GCMIntentService;->setNotificationLargeIcon(Landroid/os/Bundle;Ljava/lang/String;Landroid/content/res/Resources;Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 398
    if-eqz v24, :cond_0

    .line 399
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v9}, Lcom/adobe/phonegap/push/GCMIntentService;->setNotificationSound(Landroid/content/Context;Landroid/os/Bundle;Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 405
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v9}, Lcom/adobe/phonegap/push/GCMIntentService;->setNotificationLedColor(Landroid/os/Bundle;Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 410
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v9}, Lcom/adobe/phonegap/push/GCMIntentService;->setNotificationPriority(Landroid/os/Bundle;Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 415
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v9}, Lcom/adobe/phonegap/push/GCMIntentService;->setNotificationMessage(ILandroid/os/Bundle;Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 420
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v9}, Lcom/adobe/phonegap/push/GCMIntentService;->setNotificationCount(Landroid/content/Context;Landroid/os/Bundle;Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 425
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v9}, Lcom/adobe/phonegap/push/GCMIntentService;->setVisibility(Landroid/content/Context;Landroid/os/Bundle;Landroid/support/v4/app/NotificationCompat$Builder;)V

    move-object/from16 v11, p0

    move-object/from16 v12, p2

    move-object v13, v9

    move-object v14, v8

    move-object v15, v7

    .line 430
    invoke-direct/range {v11 .. v16}, Lcom/adobe/phonegap/push/GCMIntentService;->createActions(Landroid/os/Bundle;Landroid/support/v4/app/NotificationCompat$Builder;Landroid/content/res/Resources;Ljava/lang/String;I)V

    .line 432
    invoke-virtual {v9}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2, v4}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 433
    return-void
.end method

.method public getBitmapFromURL(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "strURL"    # Ljava/lang/String;

    .prologue
    .line 763
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 764
    .local v3, "url":Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 765
    .local v0, "connection":Ljava/net/HttpURLConnection;
    const/16 v4, 0x3a98

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 766
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 767
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 768
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 769
    .local v2, "input":Ljava/io/InputStream;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 772
    .end local v0    # "connection":Ljava/net/HttpURLConnection;
    .end local v2    # "input":Ljava/io/InputStream;
    .end local v3    # "url":Ljava/net/URL;
    :goto_0
    return-object v4

    .line 770
    :catch_0
    move-exception v1

    .line 771
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 772
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public onMessageReceived(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 9
    .param p1, "from"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 63
    const-string v4, "PushPlugin_GCMIntentService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onMessage - from: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    if-eqz p2, :cond_1

    .line 66
    invoke-virtual {p0}, Lcom/adobe/phonegap/push/GCMIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 68
    .local v0, "applicationContext":Landroid/content/Context;
    const-string v4, "com.adobe.phonegap.push"

    invoke-virtual {v0, v4, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 69
    .local v3, "prefs":Landroid/content/SharedPreferences;
    const-string v4, "forceShow"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 70
    .local v2, "forceShow":Z
    const-string v4, "clearBadge"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 72
    .local v1, "clearBadge":Z
    invoke-direct {p0, v0, p2}, Lcom/adobe/phonegap/push/GCMIntentService;->normalizeExtras(Landroid/content/Context;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    .line 74
    if-eqz v1, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/adobe/phonegap/push/GCMIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v7}, Lcom/adobe/phonegap/push/PushPlugin;->setApplicationIconBadgeNumber(Landroid/content/Context;I)V

    .line 79
    :cond_0
    if-nez v2, :cond_2

    invoke-static {}, Lcom/adobe/phonegap/push/PushPlugin;->isInForeground()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 80
    const-string v4, "PushPlugin_GCMIntentService"

    const-string v5, "foreground"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const-string v4, "foreground"

    invoke-virtual {p2, v4, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 82
    const-string v4, "coldstart"

    invoke-virtual {p2, v4, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 83
    invoke-static {p2}, Lcom/adobe/phonegap/push/PushPlugin;->sendExtras(Landroid/os/Bundle;)V

    .line 102
    .end local v0    # "applicationContext":Landroid/content/Context;
    .end local v1    # "clearBadge":Z
    .end local v2    # "forceShow":Z
    .end local v3    # "prefs":Landroid/content/SharedPreferences;
    :cond_1
    :goto_0
    return-void

    .line 86
    .restart local v0    # "applicationContext":Landroid/content/Context;
    .restart local v1    # "clearBadge":Z
    .restart local v2    # "forceShow":Z
    .restart local v3    # "prefs":Landroid/content/SharedPreferences;
    :cond_2
    if-eqz v2, :cond_3

    invoke-static {}, Lcom/adobe/phonegap/push/PushPlugin;->isInForeground()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 87
    const-string v4, "PushPlugin_GCMIntentService"

    const-string v5, "foreground force"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const-string v4, "foreground"

    invoke-virtual {p2, v4, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 89
    const-string v4, "coldstart"

    invoke-virtual {p2, v4, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 91
    invoke-direct {p0, v0, p2}, Lcom/adobe/phonegap/push/GCMIntentService;->showNotificationIfPossible(Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_0

    .line 95
    :cond_3
    const-string v4, "PushPlugin_GCMIntentService"

    const-string v5, "background"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const-string v4, "foreground"

    invoke-virtual {p2, v4, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 97
    const-string v4, "coldstart"

    invoke-static {}, Lcom/adobe/phonegap/push/PushPlugin;->isActive()Z

    move-result v5

    invoke-virtual {p2, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 99
    invoke-direct {p0, v0, p2}, Lcom/adobe/phonegap/push/GCMIntentService;->showNotificationIfPossible(Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public setNotification(ILjava/lang/String;)V
    .locals 3
    .param p1, "notId"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 48
    sget-object v1, Lcom/adobe/phonegap/push/GCMIntentService;->messageMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 49
    .local v0, "messageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "messageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .restart local v0    # "messageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v1, Lcom/adobe/phonegap/push/GCMIntentService;->messageMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 55
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 59
    :goto_0
    return-void

    .line 57
    :cond_1
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
