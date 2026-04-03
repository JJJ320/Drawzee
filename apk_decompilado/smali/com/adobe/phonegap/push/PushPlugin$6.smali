.class Lcom/adobe/phonegap/push/PushPlugin$6;
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
    .line 207
    iput-object p1, p0, Lcom/adobe/phonegap/push/PushPlugin$6;->this$0:Lcom/adobe/phonegap/push/PushPlugin;

    iput-object p2, p0, Lcom/adobe/phonegap/push/PushPlugin$6;->val$data:Lorg/json/JSONArray;

    iput-object p3, p0, Lcom/adobe/phonegap/push/PushPlugin$6;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 210
    :try_start_0
    iget-object v2, p0, Lcom/adobe/phonegap/push/PushPlugin$6;->val$data:Lorg/json/JSONArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 211
    .local v1, "topic":Ljava/lang/String;
    iget-object v2, p0, Lcom/adobe/phonegap/push/PushPlugin$6;->this$0:Lcom/adobe/phonegap/push/PushPlugin;

    invoke-static {}, Lcom/adobe/phonegap/push/PushPlugin;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/adobe/phonegap/push/PushPlugin;->access$700(Lcom/adobe/phonegap/push/PushPlugin;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v2, p0, Lcom/adobe/phonegap/push/PushPlugin$6;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v2}, Lorg/apache/cordova/CallbackContext;->success()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 218
    .end local v1    # "topic":Ljava/lang/String;
    :goto_0
    return-void

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Lorg/json/JSONException;
    iget-object v2, p0, Lcom/adobe/phonegap/push/PushPlugin$6;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 215
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 216
    .local v0, "e":Ljava/io/IOException;
    iget-object v2, p0, Lcom/adobe/phonegap/push/PushPlugin$6;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_0
.end method
