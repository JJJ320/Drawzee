.class Lcom/terikon/cordova/photolibrary/PhotoLibrary$1;
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
    .line 57
    iput-object p1, p0, Lcom/terikon/cordova/photolibrary/PhotoLibrary$1;->this$0:Lcom/terikon/cordova/photolibrary/PhotoLibrary;

    iput-object p2, p0, Lcom/terikon/cordova/photolibrary/PhotoLibrary$1;->val$args:Lorg/json/JSONArray;

    iput-object p3, p0, Lcom/terikon/cordova/photolibrary/PhotoLibrary$1;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 61
    :try_start_0
    iget-object v7, p0, Lcom/terikon/cordova/photolibrary/PhotoLibrary$1;->val$args:Lorg/json/JSONArray;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 62
    .local v6, "options":Lorg/json/JSONObject;
    const-string v7, "itemsInChunk"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 63
    .local v5, "itemsInChunk":I
    const-string v7, "chunkTimeSec"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 64
    .local v0, "chunkTimeSec":D
    const-string v7, "includeAlbumData"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 66
    .local v4, "includeAlbumData":Z
    iget-object v7, p0, Lcom/terikon/cordova/photolibrary/PhotoLibrary$1;->this$0:Lcom/terikon/cordova/photolibrary/PhotoLibrary;

    iget-object v7, v7, Lcom/terikon/cordova/photolibrary/PhotoLibrary;->cordova:Lorg/apache/cordova/CordovaInterface;

    const-string v8, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-interface {v7, v8}, Lorg/apache/cordova/CordovaInterface;->hasPermission(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 67
    iget-object v7, p0, Lcom/terikon/cordova/photolibrary/PhotoLibrary$1;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    iget-object v8, p0, Lcom/terikon/cordova/photolibrary/PhotoLibrary$1;->this$0:Lcom/terikon/cordova/photolibrary/PhotoLibrary;

    invoke-static {v8}, Lcom/terikon/cordova/photolibrary/PhotoLibrary;->access$000(Lcom/terikon/cordova/photolibrary/PhotoLibrary;)Lcom/terikon/cordova/photolibrary/PhotoLibraryService;

    const-string v8, "Permission Denial: This application is not allowed to access Photo data."

    invoke-virtual {v7, v8}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    .line 94
    .end local v0    # "chunkTimeSec":D
    .end local v4    # "includeAlbumData":Z
    .end local v5    # "itemsInChunk":I
    .end local v6    # "options":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 71
    .restart local v0    # "chunkTimeSec":D
    .restart local v4    # "includeAlbumData":Z
    .restart local v5    # "itemsInChunk":I
    .restart local v6    # "options":Lorg/json/JSONObject;
    :cond_0
    new-instance v3, Lcom/terikon/cordova/photolibrary/PhotoLibraryGetLibraryOptions;

    invoke-direct {v3, v5, v0, v1, v4}, Lcom/terikon/cordova/photolibrary/PhotoLibraryGetLibraryOptions;-><init>(IDZ)V

    .line 73
    .local v3, "getLibraryOptions":Lcom/terikon/cordova/photolibrary/PhotoLibraryGetLibraryOptions;
    iget-object v7, p0, Lcom/terikon/cordova/photolibrary/PhotoLibrary$1;->this$0:Lcom/terikon/cordova/photolibrary/PhotoLibrary;

    invoke-static {v7}, Lcom/terikon/cordova/photolibrary/PhotoLibrary;->access$000(Lcom/terikon/cordova/photolibrary/PhotoLibrary;)Lcom/terikon/cordova/photolibrary/PhotoLibraryService;

    move-result-object v7

    iget-object v8, p0, Lcom/terikon/cordova/photolibrary/PhotoLibrary$1;->this$0:Lcom/terikon/cordova/photolibrary/PhotoLibrary;

    invoke-static {v8}, Lcom/terikon/cordova/photolibrary/PhotoLibrary;->access$100(Lcom/terikon/cordova/photolibrary/PhotoLibrary;)Landroid/content/Context;

    move-result-object v8

    new-instance v9, Lcom/terikon/cordova/photolibrary/PhotoLibrary$1$1;

    invoke-direct {v9, p0}, Lcom/terikon/cordova/photolibrary/PhotoLibrary$1$1;-><init>(Lcom/terikon/cordova/photolibrary/PhotoLibrary$1;)V

    invoke-virtual {v7, v8, v3, v9}, Lcom/terikon/cordova/photolibrary/PhotoLibraryService;->getLibrary(Landroid/content/Context;Lcom/terikon/cordova/photolibrary/PhotoLibraryGetLibraryOptions;Lcom/terikon/cordova/photolibrary/PhotoLibraryService$ChunkResultRunnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 90
    .end local v0    # "chunkTimeSec":D
    .end local v3    # "getLibraryOptions":Lcom/terikon/cordova/photolibrary/PhotoLibraryGetLibraryOptions;
    .end local v4    # "includeAlbumData":Z
    .end local v5    # "itemsInChunk":I
    .end local v6    # "options":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 91
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 92
    iget-object v7, p0, Lcom/terikon/cordova/photolibrary/PhotoLibrary$1;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_0
.end method
