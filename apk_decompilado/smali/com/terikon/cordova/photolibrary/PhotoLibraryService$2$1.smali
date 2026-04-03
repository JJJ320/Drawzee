.class Lcom/terikon/cordova/photolibrary/PhotoLibraryService$2$1;
.super Ljava/lang/Object;
.source "PhotoLibraryService.java"

# interfaces
.implements Lcom/terikon/cordova/photolibrary/PhotoLibraryService$ChunkResultRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/terikon/cordova/photolibrary/PhotoLibraryService$2;->run(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/terikon/cordova/photolibrary/PhotoLibraryService$2;


# direct methods
.method constructor <init>(Lcom/terikon/cordova/photolibrary/PhotoLibraryService$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/terikon/cordova/photolibrary/PhotoLibraryService$2;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/terikon/cordova/photolibrary/PhotoLibraryService$2$1;->this$1:Lcom/terikon/cordova/photolibrary/PhotoLibraryService$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Ljava/util/ArrayList;IZ)V
    .locals 3
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
    .line 207
    .local p1, "chunk":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    iget-object v0, p0, Lcom/terikon/cordova/photolibrary/PhotoLibraryService$2$1;->this$1:Lcom/terikon/cordova/photolibrary/PhotoLibraryService$2;

    iget-object v1, v0, Lcom/terikon/cordova/photolibrary/PhotoLibraryService$2;->val$completion:Lcom/terikon/cordova/photolibrary/PhotoLibraryService$JSONObjectRunnable;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    :goto_0
    invoke-interface {v1, v0}, Lcom/terikon/cordova/photolibrary/PhotoLibraryService$JSONObjectRunnable;->run(Lorg/json/JSONObject;)V

    .line 208
    return-void

    .line 207
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
