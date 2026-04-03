.class Lcom/terikon/cordova/photolibrary/PhotoLibrary$6;
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
    .line 225
    iput-object p1, p0, Lcom/terikon/cordova/photolibrary/PhotoLibrary$6;->this$0:Lcom/terikon/cordova/photolibrary/PhotoLibrary;

    iput-object p2, p0, Lcom/terikon/cordova/photolibrary/PhotoLibrary$6;->val$args:Lorg/json/JSONArray;

    iput-object p3, p0, Lcom/terikon/cordova/photolibrary/PhotoLibrary$6;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 229
    :try_start_0
    iget-object v3, p0, Lcom/terikon/cordova/photolibrary/PhotoLibrary$6;->val$args:Lorg/json/JSONArray;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 230
    .local v2, "url":Ljava/lang/String;
    iget-object v3, p0, Lcom/terikon/cordova/photolibrary/PhotoLibrary$6;->val$args:Lorg/json/JSONArray;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, "album":Ljava/lang/String;
    iget-object v3, p0, Lcom/terikon/cordova/photolibrary/PhotoLibrary$6;->this$0:Lcom/terikon/cordova/photolibrary/PhotoLibrary;

    iget-object v3, v3, Lcom/terikon/cordova/photolibrary/PhotoLibrary;->cordova:Lorg/apache/cordova/CordovaInterface;

    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {v3, v4}, Lorg/apache/cordova/CordovaInterface;->hasPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 233
    iget-object v3, p0, Lcom/terikon/cordova/photolibrary/PhotoLibrary$6;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    iget-object v4, p0, Lcom/terikon/cordova/photolibrary/PhotoLibrary$6;->this$0:Lcom/terikon/cordova/photolibrary/PhotoLibrary;

    invoke-static {v4}, Lcom/terikon/cordova/photolibrary/PhotoLibrary;->access$000(Lcom/terikon/cordova/photolibrary/PhotoLibrary;)Lcom/terikon/cordova/photolibrary/PhotoLibraryService;

    const-string v4, "Permission Denial: This application is not allowed to access Photo data."

    invoke-virtual {v3, v4}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    .line 245
    .end local v0    # "album":Ljava/lang/String;
    .end local v2    # "url":Ljava/lang/String;
    :goto_0
    return-void

    .line 237
    .restart local v0    # "album":Ljava/lang/String;
    .restart local v2    # "url":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/terikon/cordova/photolibrary/PhotoLibrary$6;->this$0:Lcom/terikon/cordova/photolibrary/PhotoLibrary;

    invoke-static {v3}, Lcom/terikon/cordova/photolibrary/PhotoLibrary;->access$000(Lcom/terikon/cordova/photolibrary/PhotoLibrary;)Lcom/terikon/cordova/photolibrary/PhotoLibraryService;

    move-result-object v3

    iget-object v4, p0, Lcom/terikon/cordova/photolibrary/PhotoLibrary$6;->this$0:Lcom/terikon/cordova/photolibrary/PhotoLibrary;

    invoke-static {v4}, Lcom/terikon/cordova/photolibrary/PhotoLibrary;->access$100(Lcom/terikon/cordova/photolibrary/PhotoLibrary;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/terikon/cordova/photolibrary/PhotoLibrary$6;->this$0:Lcom/terikon/cordova/photolibrary/PhotoLibrary;

    iget-object v5, v5, Lcom/terikon/cordova/photolibrary/PhotoLibrary;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-virtual {v3, v4, v5, v2, v0}, Lcom/terikon/cordova/photolibrary/PhotoLibraryService;->saveVideo(Landroid/content/Context;Lorg/apache/cordova/CordovaInterface;Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v3, p0, Lcom/terikon/cordova/photolibrary/PhotoLibrary$6;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v3}, Lorg/apache/cordova/CallbackContext;->success()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 241
    .end local v0    # "album":Ljava/lang/String;
    .end local v2    # "url":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 242
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 243
    iget-object v3, p0, Lcom/terikon/cordova/photolibrary/PhotoLibrary$6;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_0
.end method
