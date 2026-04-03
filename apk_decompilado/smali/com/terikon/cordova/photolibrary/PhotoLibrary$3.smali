.class Lcom/terikon/cordova/photolibrary/PhotoLibrary$3;
.super Ljava/lang/Object;
.source "PhotoLibrary.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/terikon/cordova/photolibrary/PhotoLibrary;->execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/terikon/cordova/photolibrary/PhotoLibrary;

.field final synthetic val$args:Lorg/json/JSONArray;

.field final synthetic val$callbackContext:Lorg/apache/cordova/CallbackContext;


# direct methods
.method constructor <init>(Lcom/terikon/cordova/photolibrary/PhotoLibrary;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 0
    .param p1, "this$0"    # Lcom/terikon/cordova/photolibrary/PhotoLibrary;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/terikon/cordova/photolibrary/PhotoLibrary$3;->this$0:Lcom/terikon/cordova/photolibrary/PhotoLibrary;

    iput-object p2, p0, Lcom/terikon/cordova/photolibrary/PhotoLibrary$3;->val$args:Lorg/json/JSONArray;

    iput-object p3, p0, Lcom/terikon/cordova/photolibrary/PhotoLibrary$3;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 125
    :try_start_0
    iget-object v1, p0, Lcom/terikon/cordova/photolibrary/PhotoLibrary$3;->val$args:Lorg/json/JSONArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 126
    .local v3, "photoId":Ljava/lang/String;
    iget-object v1, p0, Lcom/terikon/cordova/photolibrary/PhotoLibrary$3;->val$args:Lorg/json/JSONArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 127
    .local v8, "options":Lorg/json/JSONObject;
    const-string v1, "thumbnailWidth"

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 128
    .local v4, "thumbnailWidth":I
    const-string v1, "thumbnailHeight"

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 129
    .local v5, "thumbnailHeight":I
    const-string v1, "quality"

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 131
    .local v6, "quality":D
    iget-object v1, p0, Lcom/terikon/cordova/photolibrary/PhotoLibrary$3;->this$0:Lcom/terikon/cordova/photolibrary/PhotoLibrary;

    iget-object v1, v1, Lcom/terikon/cordova/photolibrary/PhotoLibrary;->cordova:Lorg/apache/cordova/CordovaInterface;

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-interface {v1, v2}, Lorg/apache/cordova/CordovaInterface;->hasPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 132
    iget-object v1, p0, Lcom/terikon/cordova/photolibrary/PhotoLibrary$3;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    iget-object v2, p0, Lcom/terikon/cordova/photolibrary/PhotoLibrary$3;->this$0:Lcom/terikon/cordova/photolibrary/PhotoLibrary;

    invoke-static {v2}, Lcom/terikon/cordova/photolibrary/PhotoLibrary;->access$000(Lcom/terikon/cordova/photolibrary/PhotoLibrary;)Lcom/terikon/cordova/photolibrary/PhotoLibraryService;

    const-string v2, "Permission Denial: This application is not allowed to access Photo data."

    invoke-virtual {v1, v2}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    .line 143
    .end local v3    # "photoId":Ljava/lang/String;
    .end local v4    # "thumbnailWidth":I
    .end local v5    # "thumbnailHeight":I
    .end local v6    # "quality":D
    .end local v8    # "options":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 136
    .restart local v3    # "photoId":Ljava/lang/String;
    .restart local v4    # "thumbnailWidth":I
    .restart local v5    # "thumbnailHeight":I
    .restart local v6    # "quality":D
    .restart local v8    # "options":Lorg/json/JSONObject;
    :cond_0
    iget-object v1, p0, Lcom/terikon/cordova/photolibrary/PhotoLibrary$3;->this$0:Lcom/terikon/cordova/photolibrary/PhotoLibrary;

    invoke-static {v1}, Lcom/terikon/cordova/photolibrary/PhotoLibrary;->access$000(Lcom/terikon/cordova/photolibrary/PhotoLibrary;)Lcom/terikon/cordova/photolibrary/PhotoLibraryService;

    move-result-object v1

    iget-object v2, p0, Lcom/terikon/cordova/photolibrary/PhotoLibrary$3;->this$0:Lcom/terikon/cordova/photolibrary/PhotoLibrary;

    invoke-static {v2}, Lcom/terikon/cordova/photolibrary/PhotoLibrary;->access$100(Lcom/terikon/cordova/photolibrary/PhotoLibrary;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {v1 .. v7}, Lcom/terikon/cordova/photolibrary/PhotoLibraryService;->getThumbnail(Landroid/content/Context;Ljava/lang/String;IID)Lcom/terikon/cordova/photolibrary/PhotoLibraryService$PictureData;

    move-result-object v9

    .line 137
    .local v9, "thumbnail":Lcom/terikon/cordova/photolibrary/PhotoLibraryService$PictureData;
    iget-object v1, p0, Lcom/terikon/cordova/photolibrary/PhotoLibrary$3;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    iget-object v2, p0, Lcom/terikon/cordova/photolibrary/PhotoLibrary$3;->this$0:Lcom/terikon/cordova/photolibrary/PhotoLibrary;

    sget-object v10, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-static {v2, v10, v9}, Lcom/terikon/cordova/photolibrary/PhotoLibrary;->access$400(Lcom/terikon/cordova/photolibrary/PhotoLibrary;Lorg/apache/cordova/PluginResult$Status;Lcom/terikon/cordova/photolibrary/PhotoLibraryService$PictureData;)Lorg/apache/cordova/PluginResult;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 139
    .end local v3    # "photoId":Ljava/lang/String;
    .end local v4    # "thumbnailWidth":I
    .end local v5    # "thumbnailHeight":I
    .end local v6    # "quality":D
    .end local v8    # "options":Lorg/json/JSONObject;
    .end local v9    # "thumbnail":Lcom/terikon/cordova/photolibrary/PhotoLibraryService$PictureData;
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 141
    iget-object v1, p0, Lcom/terikon/cordova/photolibrary/PhotoLibrary$3;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_0
.end method
