.class public Lcom/adobe/phonegap/push/RegistrationIntentService;
.super Landroid/app/IntentService;
.source "RegistrationIntentService.java"

# interfaces
.implements Lcom/adobe/phonegap/push/PushConstants;


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "PushPlugin_RegistrationIntentService"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "PushPlugin_RegistrationIntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 20
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/adobe/phonegap/push/RegistrationIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "com.adobe.phonegap.push"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 27
    .local v3, "sharedPreferences":Landroid/content/SharedPreferences;
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/iid/InstanceID;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/iid/InstanceID;

    move-result-object v1

    .line 28
    .local v1, "instanceID":Lcom/google/android/gms/iid/InstanceID;
    const-string v5, "senderID"

    const-string v6, ""

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 29
    .local v2, "senderID":Ljava/lang/String;
    const-string v5, "GCM"

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v5, v6}, Lcom/google/android/gms/iid/InstanceID;->getToken(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v4

    .line 31
    .local v4, "token":Ljava/lang/String;
    invoke-static {v4}, Lcom/adobe/phonegap/push/PushPlugin;->setRegistrationID(Ljava/lang/String;)V

    .line 32
    const-string v5, "PushPlugin_RegistrationIntentService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "new GCM Registration Token: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .end local v1    # "instanceID":Lcom/google/android/gms/iid/InstanceID;
    .end local v2    # "senderID":Ljava/lang/String;
    .end local v4    # "token":Ljava/lang/String;
    :goto_0
    return-void

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "PushPlugin_RegistrationIntentService"

    const-string v6, "Failed to complete token refresh"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
