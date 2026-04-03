.class Lcom/adobe/phonegap/push/PushPlugin$2;
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
.method constructor <init>(Lcom/adobe/phonegap/push/PushPlugin;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 0
    .param p1, "this$0"    # Lcom/adobe/phonegap/push/PushPlugin;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/adobe/phonegap/push/PushPlugin$2;->this$0:Lcom/adobe/phonegap/push/PushPlugin;

    iput-object p2, p0, Lcom/adobe/phonegap/push/PushPlugin$2;->val$data:Lorg/json/JSONArray;

    iput-object p3, p0, Lcom/adobe/phonegap/push/PushPlugin$2;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 141
    :try_start_0
    iget-object v4, p0, Lcom/adobe/phonegap/push/PushPlugin$2;->this$0:Lcom/adobe/phonegap/push/PushPlugin;

    invoke-static {v4}, Lcom/adobe/phonegap/push/PushPlugin;->access$100(Lcom/adobe/phonegap/push/PushPlugin;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "com.adobe.phonegap.push"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 142
    .local v2, "sharedPref":Landroid/content/SharedPreferences;
    iget-object v4, p0, Lcom/adobe/phonegap/push/PushPlugin$2;->val$data:Lorg/json/JSONArray;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->optJSONArray(I)Lorg/json/JSONArray;

    move-result-object v3

    .line 143
    .local v3, "topics":Lorg/json/JSONArray;
    if-eqz v3, :cond_0

    const-string v4, ""

    invoke-static {}, Lcom/adobe/phonegap/push/PushPlugin;->access$200()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 144
    iget-object v4, p0, Lcom/adobe/phonegap/push/PushPlugin$2;->this$0:Lcom/adobe/phonegap/push/PushPlugin;

    invoke-static {}, Lcom/adobe/phonegap/push/PushPlugin;->access$200()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v3, v5}, Lcom/adobe/phonegap/push/PushPlugin;->access$500(Lcom/adobe/phonegap/push/PushPlugin;Lorg/json/JSONArray;Ljava/lang/String;)V

    .line 160
    :goto_0
    iget-object v4, p0, Lcom/adobe/phonegap/push/PushPlugin$2;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v4}, Lorg/apache/cordova/CallbackContext;->success()V

    .line 165
    .end local v2    # "sharedPref":Landroid/content/SharedPreferences;
    .end local v3    # "topics":Lorg/json/JSONArray;
    :goto_1
    return-void

    .line 146
    .restart local v2    # "sharedPref":Landroid/content/SharedPreferences;
    .restart local v3    # "topics":Lorg/json/JSONArray;
    :cond_0
    iget-object v4, p0, Lcom/adobe/phonegap/push/PushPlugin$2;->this$0:Lcom/adobe/phonegap/push/PushPlugin;

    invoke-static {v4}, Lcom/adobe/phonegap/push/PushPlugin;->access$100(Lcom/adobe/phonegap/push/PushPlugin;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/iid/InstanceID;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/iid/InstanceID;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/iid/InstanceID;->deleteInstanceID()V

    .line 147
    const-string v4, "PushPlugin"

    const-string v5, "UNREGISTER"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 151
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "sound"

    invoke-interface {v1, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 152
    const-string v4, "vibrate"

    invoke-interface {v1, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 153
    const-string v4, "clearBadge"

    invoke-interface {v1, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 154
    const-string v4, "clearNotifications"

    invoke-interface {v1, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 155
    const-string v4, "forceShow"

    invoke-interface {v1, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 156
    const-string v4, "senderID"

    invoke-interface {v1, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 157
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 161
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "sharedPref":Landroid/content/SharedPreferences;
    .end local v3    # "topics":Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "PushPlugin"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "execute: Got JSON Exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v4, p0, Lcom/adobe/phonegap/push/PushPlugin$2;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_1
.end method
