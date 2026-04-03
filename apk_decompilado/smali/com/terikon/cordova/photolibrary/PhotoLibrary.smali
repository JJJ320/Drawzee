.class public Lcom/terikon/cordova/photolibrary/PhotoLibrary;
.super Lorg/apache/cordova/CordovaPlugin;
.source "PhotoLibrary.java"


# static fields
.field public static final ACTION_GET_ALBUMS:Ljava/lang/String; = "getAlbums"

.field public static final ACTION_GET_LIBRARY:Ljava/lang/String; = "getLibrary"

.field public static final ACTION_GET_PHOTO:Ljava/lang/String; = "getPhoto"

.field public static final ACTION_GET_THUMBNAIL:Ljava/lang/String; = "getThumbnail"

.field public static final ACTION_REQUEST_AUTHORIZATION:Ljava/lang/String; = "requestAuthorization"

.field public static final ACTION_SAVE_IMAGE:Ljava/lang/String; = "saveImage"

.field public static final ACTION_SAVE_VIDEO:Ljava/lang/String; = "saveVideo"

.field public static final ACTION_STOP_CACHING:Ljava/lang/String; = "stopCaching"

.field public static final DEFAULT_HEIGHT:I = 0x180

.field public static final DEFAULT_QUALITY:D = 0.5

.field public static final DEFAULT_WIDTH:I = 0x200

.field public static final PHOTO_LIBRARY_PROTOCOL:Ljava/lang/String; = "cdvphotolibrary"

.field private static final READ_EXTERNAL_STORAGE:Ljava/lang/String; = "android.permission.READ_EXTERNAL_STORAGE"

.field private static final REQUEST_AUTHORIZATION_REQ_CODE:I = 0x0

.field private static final WRITE_EXTERNAL_STORAGE:Ljava/lang/String; = "android.permission.WRITE_EXTERNAL_STORAGE"


# instance fields
.field public callbackContext:Lorg/apache/cordova/CallbackContext;

.field private service:Lcom/terikon/cordova/photolibrary/PhotoLibraryService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/terikon/cordova/photolibrary/PhotoLibrary;)Lcom/terikon/cordova/photolibrary/PhotoLibraryService;
    .locals 1
    .param p0, "x0"    # Lcom/terikon/cordova/photolibrary/PhotoLibrary;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/terikon/cordova/photolibrary/PhotoLibrary;->service:Lcom/terikon/cordova/photolibrary/PhotoLibraryService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/terikon/cordova/photolibrary/PhotoLibrary;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/terikon/cordova/photolibrary/PhotoLibrary;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/terikon/cordova/photolibrary/PhotoLibrary;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Ljava/util/ArrayList;IZ)Lorg/json/JSONObject;
    .locals 1
    .param p0, "x0"    # Ljava/util/ArrayList;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 22
    invoke-static {p0, p1, p2}, Lcom/terikon/cordova/photolibrary/PhotoLibrary;->createGetLibraryResult(Ljava/util/ArrayList;IZ)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Ljava/util/ArrayList;)Lorg/json/JSONArray;
    .locals 1
    .param p0, "x0"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 22
    invoke-static {p0}, Lcom/terikon/cordova/photolibrary/PhotoLibrary;->createGetAlbumsResult(Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/terikon/cordova/photolibrary/PhotoLibrary;Lorg/apache/cordova/PluginResult$Status;Lcom/terikon/cordova/photolibrary/PhotoLibraryService$PictureData;)Lorg/apache/cordova/PluginResult;
    .locals 1
    .param p0, "x0"    # Lcom/terikon/cordova/photolibrary/PhotoLibrary;
    .param p1, "x1"    # Lorg/apache/cordova/PluginResult$Status;
    .param p2, "x2"    # Lcom/terikon/cordova/photolibrary/PhotoLibraryService$PictureData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/terikon/cordova/photolibrary/PhotoLibrary;->createMultipartPluginResult(Lorg/apache/cordova/PluginResult$Status;Lcom/terikon/cordova/photolibrary/PhotoLibraryService$PictureData;)Lorg/apache/cordova/PluginResult;

    move-result-object v0

    return-object v0
.end method

.method private static createGetAlbumsResult(Ljava/util/ArrayList;)Lorg/json/JSONArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/json/JSONObject;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 395
    .local p0, "albums":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method private static createGetLibraryResult(Ljava/util/ArrayList;IZ)Lorg/json/JSONObject;
    .locals 3
    .param p1, "chunkNum"    # I
    .param p2, "isLastChunk"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/json/JSONObject;",
            ">;IZ)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 399
    .local p0, "library":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 400
    .local v0, "result":Lorg/json/JSONObject;
    const-string v1, "chunkNum"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 401
    const-string v1, "isLastChunk"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 402
    const-string v1, "library"

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 403
    return-object v0
.end method

.method private createMultipartPluginResult(Lorg/apache/cordova/PluginResult$Status;Lcom/terikon/cordova/photolibrary/PhotoLibraryService$PictureData;)Lorg/apache/cordova/PluginResult;
    .locals 4
    .param p1, "status"    # Lorg/apache/cordova/PluginResult$Status;
    .param p2, "pictureData"    # Lcom/terikon/cordova/photolibrary/PhotoLibraryService$PictureData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 365
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 366
    .local v0, "resultJSON":Lorg/json/JSONObject;
    const-string v1, "data"

    iget-object v2, p2, Lcom/terikon/cordova/photolibrary/PhotoLibraryService$PictureData;->bytes:[B

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 367
    const-string v1, "mimeType"

    iget-object v2, p2, Lcom/terikon/cordova/photolibrary/PhotoLibraryService$PictureData;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 369
    new-instance v1, Lorg/apache/cordova/PluginResult;

    invoke-direct {v1, p1, v0}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    return-object v1
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/terikon/cordova/photolibrary/PhotoLibrary;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private requestAuthorization(ZZ)V
    .locals 4
    .param p1, "read"    # Z
    .param p2, "write"    # Z

    .prologue
    const/4 v3, 0x0

    .line 381
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 383
    .local v0, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 384
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 387
    :cond_0
    if-eqz p2, :cond_1

    .line 388
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 391
    :cond_1
    iget-object v2, p0, Lcom/terikon/cordova/photolibrary/PhotoLibrary;->cordova:Lorg/apache/cordova/CordovaInterface;

    new-array v1, v3, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-interface {v2, p0, v3, v1}, Lorg/apache/cordova/CordovaInterface;->requestPermissions(Lorg/apache/cordova/CordovaPlugin;I[Ljava/lang/String;)V

    .line 392
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z
    .locals 8
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/json/JSONArray;
    .param p3, "callbackContext"    # Lorg/apache/cordova/CallbackContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 52
    iput-object p3, p0, Lcom/terikon/cordova/photolibrary/PhotoLibrary;->callbackContext:Lorg/apache/cordova/CallbackContext;

    .line 56
    :try_start_0
    const-string v6, "getLibrary"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 57
    iget-object v6, p0, Lcom/terikon/cordova/photolibrary/PhotoLibrary;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v6}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    new-instance v7, Lcom/terikon/cordova/photolibrary/PhotoLibrary$1;

    invoke-direct {v7, p0, p2, p3}, Lcom/terikon/cordova/photolibrary/PhotoLibrary$1;-><init>(Lcom/terikon/cordova/photolibrary/PhotoLibrary;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 256
    :goto_0
    return v4

    .line 98
    :cond_0
    const-string v6, "getAlbums"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 99
    iget-object v6, p0, Lcom/terikon/cordova/photolibrary/PhotoLibrary;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v6}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    new-instance v7, Lcom/terikon/cordova/photolibrary/PhotoLibrary$2;

    invoke-direct {v7, p0, p3}, Lcom/terikon/cordova/photolibrary/PhotoLibrary$2;-><init>(Lcom/terikon/cordova/photolibrary/PhotoLibrary;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 253
    :catch_0
    move-exception v0

    .line 254
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 255
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    move v4, v5

    .line 256
    goto :goto_0

    .line 120
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    const-string v6, "getThumbnail"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 121
    iget-object v6, p0, Lcom/terikon/cordova/photolibrary/PhotoLibrary;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v6}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    new-instance v7, Lcom/terikon/cordova/photolibrary/PhotoLibrary$3;

    invoke-direct {v7, p0, p2, p3}, Lcom/terikon/cordova/photolibrary/PhotoLibrary$3;-><init>(Lcom/terikon/cordova/photolibrary/PhotoLibrary;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 147
    :cond_2
    const-string v6, "getPhoto"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 149
    iget-object v6, p0, Lcom/terikon/cordova/photolibrary/PhotoLibrary;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v6}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    new-instance v7, Lcom/terikon/cordova/photolibrary/PhotoLibrary$4;

    invoke-direct {v7, p0, p2, p3}, Lcom/terikon/cordova/photolibrary/PhotoLibrary$4;-><init>(Lcom/terikon/cordova/photolibrary/PhotoLibrary;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 171
    :cond_3
    const-string v6, "stopCaching"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 174
    invoke-virtual {p3}, Lorg/apache/cordova/CallbackContext;->success()V

    goto :goto_0

    .line 177
    :cond_4
    const-string v6, "requestAuthorization"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v6

    if-eqz v6, :cond_8

    .line 180
    const/4 v6, 0x0

    :try_start_2
    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 181
    .local v1, "options":Lorg/json/JSONObject;
    const-string v6, "read"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 182
    .local v2, "read":Z
    const-string v6, "write"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 184
    .local v3, "write":Z
    if-eqz v2, :cond_5

    iget-object v6, p0, Lcom/terikon/cordova/photolibrary/PhotoLibrary;->cordova:Lorg/apache/cordova/CordovaInterface;

    const-string v7, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-interface {v6, v7}, Lorg/apache/cordova/CordovaInterface;->hasPermission(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_5
    if-eqz v3, :cond_7

    iget-object v6, p0, Lcom/terikon/cordova/photolibrary/PhotoLibrary;->cordova:Lorg/apache/cordova/CordovaInterface;

    const-string v7, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 185
    invoke-interface {v6, v7}, Lorg/apache/cordova/CordovaInterface;->hasPermission(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 186
    :cond_6
    invoke-direct {p0, v2, v3}, Lcom/terikon/cordova/photolibrary/PhotoLibrary;->requestAuthorization(ZZ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 190
    .end local v1    # "options":Lorg/json/JSONObject;
    .end local v2    # "read":Z
    .end local v3    # "write":Z
    :catch_1
    move-exception v0

    .line 191
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 192
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 188
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "options":Lorg/json/JSONObject;
    .restart local v2    # "read":Z
    .restart local v3    # "write":Z
    :cond_7
    :try_start_4
    invoke-virtual {p3}, Lorg/apache/cordova/CallbackContext;->success()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 196
    .end local v1    # "options":Lorg/json/JSONObject;
    .end local v2    # "read":Z
    .end local v3    # "write":Z
    :cond_8
    :try_start_5
    const-string v6, "saveImage"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 197
    iget-object v6, p0, Lcom/terikon/cordova/photolibrary/PhotoLibrary;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v6}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    new-instance v7, Lcom/terikon/cordova/photolibrary/PhotoLibrary$5;

    invoke-direct {v7, p0, p2, p3}, Lcom/terikon/cordova/photolibrary/PhotoLibrary$5;-><init>(Lcom/terikon/cordova/photolibrary/PhotoLibrary;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 224
    :cond_9
    const-string v6, "saveVideo"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 225
    iget-object v6, p0, Lcom/terikon/cordova/photolibrary/PhotoLibrary;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v6}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    new-instance v7, Lcom/terikon/cordova/photolibrary/PhotoLibrary$6;

    invoke-direct {v7, p0, p2, p3}, Lcom/terikon/cordova/photolibrary/PhotoLibrary$6;-><init>(Lcom/terikon/cordova/photolibrary/PhotoLibrary;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    :cond_a
    move v4, v5

    .line 251
    goto/16 :goto_0
.end method

.method public handleOpenForRead(Landroid/net/Uri;)Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;
    .locals 25
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 273
    invoke-virtual/range {p0 .. p1}, Lcom/terikon/cordova/photolibrary/PhotoLibrary;->fromPluginUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v20

    .line 275
    .local v20, "origUri":Landroid/net/Uri;
    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "thumbnail"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v19, 0x1

    .line 276
    .local v19, "isThumbnail":Z
    :goto_0
    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "photo"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v18, 0x1

    .line 278
    .local v18, "isPhoto":Z
    :goto_1
    if-nez v19, :cond_2

    if-nez v18, :cond_2

    .line 279
    new-instance v3, Ljava/io/FileNotFoundException;

    const-string v4, "URI not supported by PhotoLibrary"

    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 275
    .end local v18    # "isPhoto":Z
    .end local v19    # "isThumbnail":Z
    :cond_0
    const/16 v19, 0x0

    goto :goto_0

    .line 276
    .restart local v19    # "isThumbnail":Z
    :cond_1
    const/16 v18, 0x0

    goto :goto_1

    .line 282
    .restart local v18    # "isPhoto":Z
    :cond_2
    const-string v3, "photoId"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 283
    .local v5, "photoId":Ljava/lang/String;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 284
    :cond_3
    new-instance v3, Ljava/io/FileNotFoundException;

    const-string v4, "Missing \'photoId\' query parameter"

    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 287
    :cond_4
    if-eqz v19, :cond_c

    .line 289
    const-string v3, "width"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 292
    .local v24, "widthStr":Ljava/lang/String;
    if-eqz v24, :cond_5

    :try_start_0
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_8

    :cond_5
    const/16 v6, 0x200

    .line 297
    .local v6, "width":I
    :goto_2
    const-string v3, "height"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 300
    .local v17, "heightStr":Ljava/lang/String;
    if-eqz v17, :cond_6

    :try_start_1
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->isEmpty()Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    if-eqz v3, :cond_9

    :cond_6
    const/16 v7, 0x180

    .line 305
    .local v7, "height":I
    :goto_3
    const-string v3, "quality"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 308
    .local v22, "qualityStr":Ljava/lang/String;
    if-eqz v22, :cond_7

    :try_start_2
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->isEmpty()Z
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v3

    if-eqz v3, :cond_a

    :cond_7
    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    .line 313
    .local v8, "quality":D
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/terikon/cordova/photolibrary/PhotoLibrary;->service:Lcom/terikon/cordova/photolibrary/PhotoLibraryService;

    invoke-direct/range {p0 .. p0}, Lcom/terikon/cordova/photolibrary/PhotoLibrary;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual/range {v3 .. v9}, Lcom/terikon/cordova/photolibrary/PhotoLibraryService;->getThumbnail(Landroid/content/Context;Ljava/lang/String;IID)Lcom/terikon/cordova/photolibrary/PhotoLibraryService$PictureData;

    move-result-object v23

    .line 315
    .local v23, "thumbnailData":Lcom/terikon/cordova/photolibrary/PhotoLibraryService$PictureData;
    if-nez v23, :cond_b

    .line 316
    new-instance v3, Ljava/io/FileNotFoundException;

    const-string v4, "Could not create thumbnail"

    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 292
    .end local v6    # "width":I
    .end local v7    # "height":I
    .end local v8    # "quality":D
    .end local v17    # "heightStr":Ljava/lang/String;
    .end local v22    # "qualityStr":Ljava/lang/String;
    .end local v23    # "thumbnailData":Lcom/terikon/cordova/photolibrary/PhotoLibraryService$PictureData;
    :cond_8
    :try_start_3
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0

    move-result v6

    goto :goto_2

    .line 293
    :catch_0
    move-exception v2

    .line 294
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/io/FileNotFoundException;

    const-string v4, "Incorrect \'width\' query parameter"

    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 300
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .restart local v6    # "width":I
    .restart local v17    # "heightStr":Ljava/lang/String;
    :cond_9
    :try_start_4
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1

    move-result v7

    goto :goto_3

    .line 301
    :catch_1
    move-exception v2

    .line 302
    .restart local v2    # "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/io/FileNotFoundException;

    const-string v4, "Incorrect \'height\' query parameter"

    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 308
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .restart local v7    # "height":I
    .restart local v22    # "qualityStr":Ljava/lang/String;
    :cond_a
    :try_start_5
    invoke-static/range {v22 .. v22}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_2

    move-result-wide v8

    goto :goto_4

    .line 309
    :catch_2
    move-exception v2

    .line 310
    .restart local v2    # "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/io/FileNotFoundException;

    const-string v4, "Incorrect \'quality\' query parameter"

    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 319
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .restart local v8    # "quality":D
    .restart local v23    # "thumbnailData":Lcom/terikon/cordova/photolibrary/PhotoLibraryService$PictureData;
    :cond_b
    new-instance v12, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/terikon/cordova/photolibrary/PhotoLibraryService$PictureData;->bytes:[B

    invoke-direct {v12, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 321
    .local v12, "is":Ljava/io/InputStream;
    new-instance v10, Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;

    move-object/from16 v0, v23

    iget-object v13, v0, Lcom/terikon/cordova/photolibrary/PhotoLibraryService$PictureData;->mimeType:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/io/InputStream;->available()I

    move-result v3

    int-to-long v14, v3

    const/16 v16, 0x0

    move-object/from16 v11, p1

    invoke-direct/range {v10 .. v16}, Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;-><init>(Landroid/net/Uri;Ljava/io/InputStream;Ljava/lang/String;JLandroid/content/res/AssetFileDescriptor;)V

    .line 328
    .end local v6    # "width":I
    .end local v7    # "height":I
    .end local v8    # "quality":D
    .end local v17    # "heightStr":Ljava/lang/String;
    .end local v22    # "qualityStr":Ljava/lang/String;
    .end local v23    # "thumbnailData":Lcom/terikon/cordova/photolibrary/PhotoLibraryService$PictureData;
    .end local v24    # "widthStr":Ljava/lang/String;
    :goto_5
    return-object v10

    .line 325
    .end local v12    # "is":Ljava/io/InputStream;
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/terikon/cordova/photolibrary/PhotoLibrary;->service:Lcom/terikon/cordova/photolibrary/PhotoLibraryService;

    invoke-direct/range {p0 .. p0}, Lcom/terikon/cordova/photolibrary/PhotoLibrary;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v5}, Lcom/terikon/cordova/photolibrary/PhotoLibraryService;->getPhotoAsStream(Landroid/content/Context;Ljava/lang/String;)Lcom/terikon/cordova/photolibrary/PhotoLibraryService$PictureAsStream;

    move-result-object v21

    .line 326
    .local v21, "pictureAsStream":Lcom/terikon/cordova/photolibrary/PhotoLibraryService$PictureAsStream;
    invoke-virtual/range {v21 .. v21}, Lcom/terikon/cordova/photolibrary/PhotoLibraryService$PictureAsStream;->getStream()Ljava/io/InputStream;

    move-result-object v12

    .line 328
    .restart local v12    # "is":Ljava/io/InputStream;
    new-instance v10, Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;

    invoke-virtual/range {v21 .. v21}, Lcom/terikon/cordova/photolibrary/PhotoLibraryService$PictureAsStream;->getMimeType()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12}, Ljava/io/InputStream;->available()I

    move-result v3

    int-to-long v14, v3

    const/16 v16, 0x0

    move-object/from16 v11, p1

    invoke-direct/range {v10 .. v16}, Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;-><init>(Landroid/net/Uri;Ljava/io/InputStream;Ljava/lang/String;JLandroid/content/res/AssetFileDescriptor;)V

    goto :goto_5
.end method

.method public onRequestPermissionResult(I[Ljava/lang/String;[I)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 336
    invoke-super {p0, p1, p2, p3}, Lorg/apache/cordova/CordovaPlugin;->onRequestPermissionResult(I[Ljava/lang/String;[I)V

    .line 338
    array-length v2, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget v0, p3, v1

    .line 339
    .local v0, "r":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 340
    iget-object v1, p0, Lcom/terikon/cordova/photolibrary/PhotoLibrary;->callbackContext:Lorg/apache/cordova/CallbackContext;

    const-string v2, "Permission Denial: This application is not allowed to access Photo data."

    invoke-virtual {v1, v2}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    .line 346
    .end local v0    # "r":I
    :goto_1
    return-void

    .line 338
    .restart local v0    # "r":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 345
    .end local v0    # "r":I
    :cond_1
    iget-object v1, p0, Lcom/terikon/cordova/photolibrary/PhotoLibrary;->callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v1}, Lorg/apache/cordova/CallbackContext;->success()V

    goto :goto_1
.end method

.method protected pluginInitialize()V
    .locals 1

    .prologue
    .line 43
    invoke-super {p0}, Lorg/apache/cordova/CordovaPlugin;->pluginInitialize()V

    .line 45
    invoke-static {}, Lcom/terikon/cordova/photolibrary/PhotoLibraryService;->getInstance()Lcom/terikon/cordova/photolibrary/PhotoLibraryService;

    move-result-object v0

    iput-object v0, p0, Lcom/terikon/cordova/photolibrary/PhotoLibrary;->service:Lcom/terikon/cordova/photolibrary/PhotoLibraryService;

    .line 47
    return-void
.end method

.method public remapUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 263
    const-string v0, "cdvphotolibrary"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 264
    const/4 v0, 0x0

    .line 266
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/terikon/cordova/photolibrary/PhotoLibrary;->toPluginUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method
