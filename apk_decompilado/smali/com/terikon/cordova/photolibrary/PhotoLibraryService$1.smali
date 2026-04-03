.class Lcom/terikon/cordova/photolibrary/PhotoLibraryService$1;
.super Lorg/json/JSONObject;
.source "PhotoLibraryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/terikon/cordova/photolibrary/PhotoLibraryService;->getAlbums(Landroid/content/Context;)Ljava/util/ArrayList;
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
    .line 76
    iput-object p1, p0, Lcom/terikon/cordova/photolibrary/PhotoLibraryService$1;->this$0:Lcom/terikon/cordova/photolibrary/PhotoLibraryService;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 77
    const-string v0, "id"

    const-string v1, "bucket_id"

    invoke-virtual {p0, v0, v1}, Lcom/terikon/cordova/photolibrary/PhotoLibraryService$1;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    const-string v0, "title"

    const-string v1, "bucket_display_name"

    invoke-virtual {p0, v0, v1}, Lcom/terikon/cordova/photolibrary/PhotoLibraryService$1;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    return-void
.end method
