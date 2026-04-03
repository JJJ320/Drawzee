.class Lcom/terikon/cordova/photolibrary/PhotoLibrary$1$1;
.super Ljava/lang/Object;
.source "PhotoLibrary.java"

# interfaces
.implements Lcom/terikon/cordova/photolibrary/PhotoLibraryService$ChunkResultRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/terikon/cordova/photolibrary/PhotoLibrary$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/terikon/cordova/photolibrary/PhotoLibrary$1;


# direct methods
.method constructor <init>(Lcom/terikon/cordova/photolibrary/PhotoLibrary$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/terikon/cordova/photolibrary/PhotoLibrary$1;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/terikon/cordova/photolibrary/PhotoLibrary$1$1;->this$1:Lcom/terikon/cordova/photolibrary/PhotoLibrary$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Ljava/util/ArrayList;IZ)V
    .locals 5
    .param p2, "chunkNum"    # I
    .param p3, "isLastChunk"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/json/JSONObject;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, "library":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/terikon/cordova/photolibrary/PhotoLibrary;->access$200(Ljava/util/ArrayList;IZ)Lorg/json/JSONObject;

    move-result-object v2

    .line 79
    .local v2, "result":Lorg/json/JSONObject;
    new-instance v1, Lorg/apache/cordova/PluginResult;

    sget-object v3, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v1, v3, v2}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    .line 80
    .local v1, "pluginResult":Lorg/apache/cordova/PluginResult;
    if-nez p3, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v1, v3}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    .line 81
    iget-object v3, p0, Lcom/terikon/cordova/photolibrary/PhotoLibrary$1$1;->this$1:Lcom/terikon/cordova/photolibrary/PhotoLibrary$1;

    iget-object v3, v3, Lcom/terikon/cordova/photolibrary/PhotoLibrary$1;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v3, v1}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .end local v1    # "pluginResult":Lorg/apache/cordova/PluginResult;
    .end local v2    # "result":Lorg/json/JSONObject;
    :goto_1
    return-void

    .line 80
    .restart local v1    # "pluginResult":Lorg/apache/cordova/PluginResult;
    .restart local v2    # "result":Lorg/json/JSONObject;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 83
    .end local v1    # "pluginResult":Lorg/apache/cordova/PluginResult;
    .end local v2    # "result":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 85
    iget-object v3, p0, Lcom/terikon/cordova/photolibrary/PhotoLibrary$1$1;->this$1:Lcom/terikon/cordova/photolibrary/PhotoLibrary$1;

    iget-object v3, v3, Lcom/terikon/cordova/photolibrary/PhotoLibrary$1;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_1
.end method
