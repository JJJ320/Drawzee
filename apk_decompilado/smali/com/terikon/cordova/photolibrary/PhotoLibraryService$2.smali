.class Lcom/terikon/cordova/photolibrary/PhotoLibraryService$2;
.super Ljava/lang/Object;
.source "PhotoLibraryService.java"

# interfaces
.implements Lcom/terikon/cordova/photolibrary/PhotoLibraryService$FilePathRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/terikon/cordova/photolibrary/PhotoLibraryService;->saveImage(Landroid/content/Context;Lorg/apache/cordova/CordovaInterface;Ljava/lang/String;Ljava/lang/String;Lcom/terikon/cordova/photolibrary/PhotoLibraryService$JSONObjectRunnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/terikon/cordova/photolibrary/PhotoLibraryService;

.field final synthetic val$completion:Lcom/terikon/cordova/photolibrary/PhotoLibraryService$JSONObjectRunnable;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/terikon/cordova/photolibrary/PhotoLibraryService;Landroid/content/Context;Lcom/terikon/cordova/photolibrary/PhotoLibraryService$JSONObjectRunnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/terikon/cordova/photolibrary/PhotoLibraryService;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/terikon/cordova/photolibrary/PhotoLibraryService$2;->this$0:Lcom/terikon/cordova/photolibrary/PhotoLibraryService;

    iput-object p2, p0, Lcom/terikon/cordova/photolibrary/PhotoLibraryService$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/terikon/cordova/photolibrary/PhotoLibraryService$2;->val$completion:Lcom/terikon/cordova/photolibrary/PhotoLibraryService$JSONObjectRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Ljava/lang/String;)V
    .locals 5
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 203
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_data = \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 204
    .local v1, "whereClause":Ljava/lang/String;
    iget-object v2, p0, Lcom/terikon/cordova/photolibrary/PhotoLibraryService$2;->this$0:Lcom/terikon/cordova/photolibrary/PhotoLibraryService;

    iget-object v3, p0, Lcom/terikon/cordova/photolibrary/PhotoLibraryService$2;->val$context:Landroid/content/Context;

    new-instance v4, Lcom/terikon/cordova/photolibrary/PhotoLibraryService$2$1;

    invoke-direct {v4, p0}, Lcom/terikon/cordova/photolibrary/PhotoLibraryService$2$1;-><init>(Lcom/terikon/cordova/photolibrary/PhotoLibraryService$2;)V

    invoke-static {v2, v3, v1, v4}, Lcom/terikon/cordova/photolibrary/PhotoLibraryService;->access$000(Lcom/terikon/cordova/photolibrary/PhotoLibraryService;Landroid/content/Context;Ljava/lang/String;Lcom/terikon/cordova/photolibrary/PhotoLibraryService$ChunkResultRunnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    .end local v1    # "whereClause":Ljava/lang/String;
    :goto_0
    return-void

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/terikon/cordova/photolibrary/PhotoLibraryService$2;->val$completion:Lcom/terikon/cordova/photolibrary/PhotoLibraryService$JSONObjectRunnable;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/terikon/cordova/photolibrary/PhotoLibraryService$JSONObjectRunnable;->run(Lorg/json/JSONObject;)V

    goto :goto_0
.end method
