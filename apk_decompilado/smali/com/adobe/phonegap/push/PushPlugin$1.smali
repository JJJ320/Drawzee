.class Lcom/adobe/phonegap/push/PushPlugin$1;
.super Ljava/lang/Object;
.source "PushPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/phonegap/push/PushPlugin;->execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/phonegap/push/PushPlugin;

.field final synthetic val$callbackContext:Lorg/apache/cordova/CallbackContext;

.field final synthetic val$data:Lorg/json/JSONArray;


# direct methods
.method constructor <init>(Lcom/adobe/phonegap/push/PushPlugin;Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V
    .locals 0
    .param p1, "this$0"    # Lcom/adobe/phonegap/push/PushPlugin;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/adobe/phonegap/push/PushPlugin$1;->this$0:Lcom/adobe/phonegap/push/PushPlugin;

    iput-object p2, p0, Lcom/adobe/phonegap/push/PushPlugin$1;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    iput-object p3, p0, Lcom/adobe/phonegap/push/PushPlugin$1;->val$data:Lorg/json/JSONArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 57
    iget-object v10, p0, Lcom/adobe/phonegap/push/PushPlugin$1;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v10}, Lcom/adobe/phonegap/push/PushPlugin;->access$002(Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/CallbackContext;

    .line 58
    const/4 v4, 0x0

    .line 60
    .local v4, "jo":Lorg/json/JSONObject;
    const-string v10, "PushPlugin"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "execute: data="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/adobe/phonegap/push/PushPlugin$1;->val$data:Lorg/json/JSONArray;

    invoke-virtual {v12}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v10, p0, Lcom/adobe/phonegap/push/PushPlugin$1;->this$0:Lcom/adobe/phonegap/push/PushPlugin;

    invoke-static {v10}, Lcom/adobe/phonegap/push/PushPlugin;->access$100(Lcom/adobe/phonegap/push/PushPlugin;)Landroid/content/Context;

    move-result-object v10

    const-string v11, "com.adobe.phonegap.push"

    invoke-virtual {v10, v11, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 62
    .local v8, "sharedPref":Landroid/content/SharedPreferences;
    const/4 v7, 0x0

    .line 65
    .local v7, "senderID":Ljava/lang/String;
    :try_start_0
    iget-object v10, p0, Lcom/adobe/phonegap/push/PushPlugin$1;->val$data:Lorg/json/JSONArray;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "android"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 67
    const-string v10, "PushPlugin"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "execute: jo="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const-string v10, "senderID"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 71
    const-string v10, "PushPlugin"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "execute: senderID="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const-string v10, "senderID"

    const-string v11, ""

    invoke-interface {v8, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 74
    .local v6, "savedSenderID":Ljava/lang/String;
    iget-object v10, p0, Lcom/adobe/phonegap/push/PushPlugin$1;->this$0:Lcom/adobe/phonegap/push/PushPlugin;

    invoke-static {v10}, Lcom/adobe/phonegap/push/PushPlugin;->access$100(Lcom/adobe/phonegap/push/PushPlugin;)Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/google/android/gms/iid/InstanceID;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/iid/InstanceID;

    move-result-object v10

    const-string v11, "GCM"

    invoke-virtual {v10, v7, v11}, Lcom/google/android/gms/iid/InstanceID;->getToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/adobe/phonegap/push/PushPlugin;->access$202(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    const-string v10, ""

    invoke-static {}, Lcom/adobe/phonegap/push/PushPlugin;->access$200()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 77
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    const-string v11, "registrationId"

    invoke-static {}, Lcom/adobe/phonegap/push/PushPlugin;->access$200()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    .line 79
    .local v5, "json":Lorg/json/JSONObject;
    const-string v10, "PushPlugin"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onRegistered: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const-string v10, "topics"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 82
    .local v9, "topics":Lorg/json/JSONArray;
    iget-object v10, p0, Lcom/adobe/phonegap/push/PushPlugin$1;->this$0:Lcom/adobe/phonegap/push/PushPlugin;

    invoke-static {}, Lcom/adobe/phonegap/push/PushPlugin;->access$200()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v9, v11}, Lcom/adobe/phonegap/push/PushPlugin;->access$300(Lcom/adobe/phonegap/push/PushPlugin;Lorg/json/JSONArray;Ljava/lang/String;)V

    .line 84
    invoke-static {v5}, Lcom/adobe/phonegap/push/PushPlugin;->sendEvent(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 97
    .end local v5    # "json":Lorg/json/JSONObject;
    .end local v6    # "savedSenderID":Ljava/lang/String;
    .end local v9    # "topics":Lorg/json/JSONArray;
    :goto_0
    if-eqz v4, :cond_1

    .line 98
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 100
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    :try_start_1
    const-string v10, "icon"

    const-string v11, "icon"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v2, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 105
    :goto_1
    :try_start_2
    const-string v10, "iconColor"

    const-string v11, "iconColor"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v2, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3

    .line 110
    :goto_2
    const-string v10, "clearBadge"

    invoke-virtual {v4, v10, v13}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 111
    .local v0, "clearBadge":Z
    if-eqz v0, :cond_0

    .line 112
    iget-object v10, p0, Lcom/adobe/phonegap/push/PushPlugin$1;->this$0:Lcom/adobe/phonegap/push/PushPlugin;

    invoke-static {v10}, Lcom/adobe/phonegap/push/PushPlugin;->access$100(Lcom/adobe/phonegap/push/PushPlugin;)Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v13}, Lcom/adobe/phonegap/push/PushPlugin;->setApplicationIconBadgeNumber(Landroid/content/Context;I)V

    .line 115
    :cond_0
    const-string v10, "sound"

    const-string v11, "sound"

    invoke-virtual {v4, v11, v14}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v11

    invoke-interface {v2, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 116
    const-string v10, "vibrate"

    const-string v11, "vibrate"

    invoke-virtual {v4, v11, v14}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v11

    invoke-interface {v2, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 117
    const-string v10, "clearBadge"

    invoke-interface {v2, v10, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 118
    const-string v10, "clearNotifications"

    const-string v11, "clearNotifications"

    invoke-virtual {v4, v11, v14}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v11

    invoke-interface {v2, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 119
    const-string v10, "forceShow"

    const-string v11, "forceShow"

    invoke-virtual {v4, v11, v13}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v11

    invoke-interface {v2, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 120
    const-string v10, "senderID"

    invoke-interface {v2, v10, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 121
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 125
    .end local v0    # "clearBadge":Z
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    invoke-static {}, Lcom/adobe/phonegap/push/PushPlugin;->access$400()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_3

    .line 126
    const-string v10, "PushPlugin"

    const-string v11, "sending cached extras"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-static {}, Lcom/adobe/phonegap/push/PushPlugin;->access$400()Ljava/util/List;

    move-result-object v11

    monitor-enter v11

    .line 128
    :try_start_3
    invoke-static {}, Lcom/adobe/phonegap/push/PushPlugin;->access$400()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 129
    .local v3, "gCachedExtrasIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/Bundle;>;"
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 130
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/Bundle;

    invoke-static {v10}, Lcom/adobe/phonegap/push/PushPlugin;->sendExtras(Landroid/os/Bundle;)V

    goto :goto_3

    .line 132
    .end local v3    # "gCachedExtrasIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/Bundle;>;"
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v10

    .line 86
    .restart local v6    # "savedSenderID":Ljava/lang/String;
    :cond_2
    :try_start_4
    iget-object v10, p0, Lcom/adobe/phonegap/push/PushPlugin$1;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    const-string v11, "Empty registration ID received from GCM"

    invoke-virtual {v10, v11}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 135
    .end local v6    # "savedSenderID":Ljava/lang/String;
    :cond_3
    :goto_4
    return-void

    .line 89
    :catch_0
    move-exception v1

    .line 90
    .local v1, "e":Lorg/json/JSONException;
    const-string v10, "PushPlugin"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "execute: Got JSON Exception "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v10, p0, Lcom/adobe/phonegap/push/PushPlugin$1;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 92
    .end local v1    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v1

    .line 93
    .local v1, "e":Ljava/io/IOException;
    const-string v10, "PushPlugin"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "execute: Got JSON Exception "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v10, p0, Lcom/adobe/phonegap/push/PushPlugin$1;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 101
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    :catch_2
    move-exception v1

    .line 102
    .local v1, "e":Lorg/json/JSONException;
    const-string v10, "PushPlugin"

    const-string v11, "no icon option"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 106
    .end local v1    # "e":Lorg/json/JSONException;
    :catch_3
    move-exception v1

    .line 107
    .restart local v1    # "e":Lorg/json/JSONException;
    const-string v10, "PushPlugin"

    const-string v11, "no iconColor option"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 132
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v3    # "gCachedExtrasIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/Bundle;>;"
    :cond_4
    :try_start_5
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 133
    invoke-static {}, Lcom/adobe/phonegap/push/PushPlugin;->access$400()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->clear()V

    goto :goto_4
.end method
