.class public Lcom/adobe/phonegap/push/PushHandlerActivity;
.super Landroid/app/Activity;
.source "PushHandlerActivity.java"

# interfaces
.implements Lcom/adobe/phonegap/push/PushConstants;


# static fields
.field private static LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "PushPlugin_PushHandlerActivity"

    sput-object v0, Lcom/adobe/phonegap/push/PushHandlerActivity;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private forceMainActivityReload(Z)V
    .locals 5
    .param p1, "startOnBackground"    # Z

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/adobe/phonegap/push/PushHandlerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 98
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Lcom/adobe/phonegap/push/PushHandlerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 100
    .local v1, "launchIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/adobe/phonegap/push/PushHandlerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 101
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 102
    const-string v4, "pushBundle"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 103
    .local v2, "originalExtras":Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 104
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 106
    :cond_0
    const/high16 v4, 0x4000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 107
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 108
    const-string v4, "cdvStartInBackground"

    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 111
    .end local v2    # "originalExtras":Landroid/os/Bundle;
    :cond_1
    invoke-virtual {p0, v1}, Lcom/adobe/phonegap/push/PushHandlerActivity;->startActivity(Landroid/content/Intent;)V

    .line 112
    return-void
.end method

.method private processPushBundle(ZLandroid/content/Intent;)Z
    .locals 9
    .param p1, "isPushPluginActive"    # Z
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 71
    invoke-virtual {p0}, Lcom/adobe/phonegap/push/PushHandlerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 72
    .local v0, "extras":Landroid/os/Bundle;
    const/4 v3, 0x0

    .line 74
    .local v3, "remoteInput":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 75
    const-string v4, "pushBundle"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 77
    .local v2, "originalExtras":Landroid/os/Bundle;
    const-string v4, "foreground"

    invoke-virtual {v2, v4, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 78
    const-string v7, "coldstart"

    if-nez p1, :cond_2

    move v4, v5

    :goto_0
    invoke-virtual {v2, v7, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 79
    const-string v4, "actionCallback"

    const-string v7, "callback"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v4, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-static {p2}, Landroid/support/v4/app/RemoteInput;->getResultsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v3

    .line 82
    if-eqz v3, :cond_0

    .line 83
    const-string v4, "inlineReply"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "inputString":Ljava/lang/String;
    sget-object v4, Lcom/adobe/phonegap/push/PushHandlerActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "response: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const-string v4, "inlineReply"

    invoke-virtual {v2, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .end local v1    # "inputString":Ljava/lang/String;
    :cond_0
    invoke-static {v2}, Lcom/adobe/phonegap/push/PushPlugin;->sendExtras(Landroid/os/Bundle;)V

    .line 90
    .end local v2    # "originalExtras":Landroid/os/Bundle;
    :cond_1
    if-nez v3, :cond_3

    :goto_1
    return v5

    .restart local v2    # "originalExtras":Landroid/os/Bundle;
    :cond_2
    move v4, v6

    .line 78
    goto :goto_0

    .end local v2    # "originalExtras":Landroid/os/Bundle;
    :cond_3
    move v5, v6

    .line 90
    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 24
    new-instance v2, Lcom/adobe/phonegap/push/GCMIntentService;

    invoke-direct {v2}, Lcom/adobe/phonegap/push/GCMIntentService;-><init>()V

    .line 26
    .local v2, "gcm":Lcom/adobe/phonegap/push/GCMIntentService;
    invoke-virtual {p0}, Lcom/adobe/phonegap/push/PushHandlerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 28
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "notId"

    invoke-virtual {v9, v10, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 29
    .local v6, "notId":I
    sget-object v9, Lcom/adobe/phonegap/push/PushHandlerActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "not id = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    const-string v9, ""

    invoke-virtual {v2, v6, v9}, Lcom/adobe/phonegap/push/GCMIntentService;->setNotification(ILjava/lang/String;)V

    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    sget-object v9, Lcom/adobe/phonegap/push/PushHandlerActivity;->LOG_TAG:Ljava/lang/String;

    const-string v10, "onCreate"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-virtual {p0}, Lcom/adobe/phonegap/push/PushHandlerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "callback"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "callback":Ljava/lang/String;
    sget-object v9, Lcom/adobe/phonegap/push/PushHandlerActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "callback = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-virtual {p0}, Lcom/adobe/phonegap/push/PushHandlerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "foreground"

    invoke-virtual {v9, v10, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 36
    .local v1, "foreground":Z
    invoke-virtual {p0}, Lcom/adobe/phonegap/push/PushHandlerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "cdvStartInBackground"

    invoke-virtual {v9, v10, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 38
    .local v8, "startOnBackground":Z
    if-nez v8, :cond_0

    .line 39
    const-string v9, "notification"

    invoke-virtual {p0, v9}, Lcom/adobe/phonegap/push/PushHandlerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    .line 40
    .local v7, "notificationManager":Landroid/app/NotificationManager;
    invoke-static {p0}, Lcom/adobe/phonegap/push/GCMIntentService;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9, v6}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 43
    .end local v7    # "notificationManager":Landroid/app/NotificationManager;
    :cond_0
    invoke-static {}, Lcom/adobe/phonegap/push/PushPlugin;->isActive()Z

    move-result v5

    .line 44
    .local v5, "isPushPluginActive":Z
    invoke-direct {p0, v5, v4}, Lcom/adobe/phonegap/push/PushHandlerActivity;->processPushBundle(ZLandroid/content/Intent;)Z

    move-result v3

    .line 46
    .local v3, "inline":Z
    if-eqz v3, :cond_1

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x18

    if-ge v9, v10, :cond_1

    if-nez v8, :cond_1

    .line 47
    const/4 v1, 0x1

    .line 50
    :cond_1
    sget-object v9, Lcom/adobe/phonegap/push/PushHandlerActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bringToForeground = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-virtual {p0}, Lcom/adobe/phonegap/push/PushHandlerActivity;->finish()V

    .line 54
    sget-object v9, Lcom/adobe/phonegap/push/PushHandlerActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isPushPluginActive = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    if-nez v5, :cond_2

    if-eqz v1, :cond_2

    if-eqz v3, :cond_2

    .line 56
    sget-object v9, Lcom/adobe/phonegap/push/PushHandlerActivity;->LOG_TAG:Ljava/lang/String;

    const-string v10, "forceMainActivityReload"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-direct {p0, v12}, Lcom/adobe/phonegap/push/PushHandlerActivity;->forceMainActivityReload(Z)V

    .line 64
    :goto_0
    return-void

    .line 58
    :cond_2
    if-eqz v8, :cond_3

    .line 59
    sget-object v9, Lcom/adobe/phonegap/push/PushHandlerActivity;->LOG_TAG:Ljava/lang/String;

    const-string v10, "startOnBackgroundTrue"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-direct {p0, v13}, Lcom/adobe/phonegap/push/PushHandlerActivity;->forceMainActivityReload(Z)V

    goto :goto_0

    .line 62
    :cond_3
    sget-object v9, Lcom/adobe/phonegap/push/PushHandlerActivity;->LOG_TAG:Ljava/lang/String;

    const-string v10, "don\'t want main activity"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 116
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 117
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/adobe/phonegap/push/PushHandlerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 118
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 119
    return-void
.end method
