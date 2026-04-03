.class Lcom/terikon/cordova/photolibrary/PhotoLibraryService$4;
.super Lorg/json/JSONObject;
.source "PhotoLibraryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/terikon/cordova/photolibrary/PhotoLibraryService;->queryLibrary(Landroid/content/Context;IDZLjava/lang/String;Lcom/terikon/cordova/photolibrary/PhotoLibraryService$ChunkResultRunnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/terikon/cordova/photolibrary/PhotoLibraryService;


# direct methods
.method constructor <init>(Lcom/terikon/cordova/photolibrary/PhotoLibraryService;)V
    .locals 2
    .param p1, "this$0"    # Lcom/terikon/cordova/photolibrary/PhotoLibraryService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 332
    iput-object p1, p0, Lcom/terikon/cordova/photolibrary/PhotoLibraryService$4;->this$0:Lcom/terikon/cordova/photolibrary/PhotoLibraryService;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 333
    const-string v0, "int.id"

    const-string v1, "_id"

    invoke-virtual {p0, v0, v1}, Lcom/terikon/cordova/photolibrary/PhotoLibraryService$4;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 334
    const-string v0, "fileName"

    const-string v1, "_display_name"

    invoke-virtual {p0, v0, v1}, Lcom/terikon/cordova/photolibrary/PhotoLibraryService$4;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 335
    const-string v0, "int.width"

    const-string v1, "width"

    invoke-virtual {p0, v0, v1}, Lcom/terikon/cordova/photolibrary/PhotoLibraryService$4;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 336
    const-string v0, "int.height"

    const-string v1, "height"

    invoke-virtual {p0, v0, v1}, Lcom/terikon/cordova/photolibrary/PhotoLibraryService$4;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 337
    const-string v0, "albumId"

    const-string v1, "bucket_id"

    invoke-virtual {p0, v0, v1}, Lcom/terikon/cordova/photolibrary/PhotoLibraryService$4;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 338
    const-string v0, "date.creationDate"

    const-string v1, "datetaken"

    invoke-virtual {p0, v0, v1}, Lcom/terikon/cordova/photolibrary/PhotoLibraryService$4;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 339
    const-string v0, "float.latitude"

    const-string v1, "latitude"

    invoke-virtual {p0, v0, v1}, Lcom/terikon/cordova/photolibrary/PhotoLibraryService$4;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 340
    const-string v0, "float.longitude"

    const-string v1, "longitude"

    invoke-virtual {p0, v0, v1}, Lcom/terikon/cordova/photolibrary/PhotoLibraryService$4;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 341
    const-string v0, "nativeURL"

    const-string v1, "_data"

    invoke-virtual {p0, v0, v1}, Lcom/terikon/cordova/photolibrary/PhotoLibraryService$4;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 342
    return-void
.end method
