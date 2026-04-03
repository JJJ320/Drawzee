.class Lcom/terikon/cordova/photolibrary/PhotoLibrary$2;
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

.field final synthetic val$callbackContext:Lorg/apache/cordova/CallbackContext;


# direct methods
.method constructor <init>(Lcom/terikon/cordova/photolibrary/PhotoLibrary;Lorg/apache/cordova/CallbackContext;)V
    .locals 0
    .param p1, "this$0"    # Lcom/terikon/cordova/photolibrary/PhotoLibrary;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/terikon/cordova/photolibrary/PhotoLibrary$2;->this$0:Lcom/terikon/cordova/photolibrary/PhotoLibrary;

    iput-object p2, p0, Lcom/terikon/cordova/photolibrary/PhotoLibrary$2;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 103
    :try_start_0
    iget-object v2, p0, Lcom/terikon/cordova/photolibrary/PhotoLibrary$2;->this$0:Lcom/terikon/cordova/photolibrary/PhotoLibrary;

    iget-object v2, v2, Lcom/terikon/cordova/photolibrary/PhotoLibrary;->cordova:Lorg/apache/cordova/CordovaInterface;

    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-interface {v2, v3}, Lorg/apache/cordova/CordovaInterface;->hasPermission(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 104
    iget-object v2, p0, Lcom/terikon/cordova/photolibrary/PhotoLibrary$2;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    iget-object v3, p0, Lcom/terikon/cordova/photolibrary/PhotoLibrary$2;->this$0:Lcom/terikon/cordova/photolibrary/PhotoLibrary;

    invoke-static {v3}, Lcom/terikon/cordova/photolibrary/PhotoLibrary;->access$000(Lcom/terikon/cordova/photolibrary/PhotoLibrary;)Lcom/terikon/cordova/photolibrary/PhotoLibraryService;

    const-string v3, "Permission Denial: This application is not allowed to access Photo data."

    invoke-virtual {v2, v3}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    .line 116
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v2, p0, Lcom/terikon/cordova/photolibrary/PhotoLibrary$2;->this$0:Lcom/terikon/cordova/photolibrary/PhotoLibrary;

    invoke-static {v2}, Lcom/terikon/cordova/photolibrary/PhotoLibrary;->access$000(Lcom/terikon/cordova/photolibrary/PhotoLibrary;)Lcom/terikon/cordova/photolibrary/PhotoLibraryService;

    move-result-object v2

    iget-object v3, p0, Lcom/terikon/cordova/photolibrary/PhotoLibrary$2;->this$0:Lcom/terikon/cordova/photolibrary/PhotoLibrary;

    invoke-static {v3}, Lcom/terikon/cordova/photolibrary/PhotoLibrary;->access$100(Lcom/terikon/cordova/photolibrary/PhotoLibrary;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/terikon/cordova/photolibrary/PhotoLibraryService;->getAlbums(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 110
    .local v0, "albums":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    iget-object v2, p0, Lcom/terikon/cordova/photolibrary/PhotoLibrary$2;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0}, Lcom/terikon/cordova/photolibrary/PhotoLibrary;->access$300(Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONArray;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 112
    .end local v0    # "albums":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    :catch_0
    move-exception v1

    .line 113
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 114
    iget-object v2, p0, Lcom/terikon/cordova/photolibrary/PhotoLibrary$2;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_0
.end method
