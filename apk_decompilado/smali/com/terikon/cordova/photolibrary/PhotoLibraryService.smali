.class public Lcom/terikon/cordova/photolibrary/PhotoLibraryService;
.super Ljava/lang/Object;
.source "PhotoLibraryService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/terikon/cordova/photolibrary/PhotoLibraryService$JSONObjectRunnable;,
        Lcom/terikon/cordova/photolibrary/PhotoLibraryService$FilePathRunnable;,
        Lcom/terikon/cordova/photolibrary/PhotoLibraryService$ChunkResultRunnable;,
        Lcom/terikon/cordova/photolibrary/PhotoLibraryService$PictureAsStream;,
        Lcom/terikon/cordova/photolibrary/PhotoLibraryService$PictureData;
    }
.end annotation


# static fields
.field public static final PERMISSION_ERROR:Ljava/lang/String; = "Permission Denial: This application is not allowed to access Photo data."

.field private static instance:Lcom/terikon/cordova/photolibrary/PhotoLibraryService;


# instance fields
.field private dataURLPattern:Ljava/util/regex/Pattern;

.field private dateFormatter:Ljava/text/SimpleDateFormat;

.field private imageMimeToExtension:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private videMimeToExtension:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 258
    const/4 v0, 0x0

    sput-object v0, Lcom/terikon/cordova/photolibrary/PhotoLibraryService;->instance:Lcom/terikon/cordova/photolibrary/PhotoLibraryService;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    const-string v0, "^data:(.+?)/(.+?);base64,"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/terikon/cordova/photolibrary/PhotoLibraryService;->dataURLPattern:Ljava/util/regex/Pattern;

    .line 582
    new-instance v0, Lcom/terikon/cordova/photolibrary/PhotoLibraryService$6;

    invoke-direct {v0, p0}, Lcom/terikon/cordova/photolibrary/PhotoLibraryService$6;-><init>(Lcom/terikon/cordova/photolibrary/PhotoLibraryService;)V

    iput-object v0, p0, Lcom/terikon/cordova/photolibrary/PhotoLibraryService;->imageMimeToExtension:Ljava/util/Map;

    .line 586
    new-instance v0, Lcom/terikon/cordova/photolibrary/PhotoLibraryService$7;

    invoke-direct {v0, p0}, Lcom/terikon/cordova/photolibrary/PhotoLibraryService$7;-><init>(Lcom/terikon/cordova/photolibrary/PhotoLibraryService;)V

    iput-object v0, p0, Lcom/terikon/cordova/photolibrary/PhotoLibraryService;->videMimeToExtension:Ljava/util/Map;

    .line 49
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/terikon/cordova/photolibrary/PhotoLibraryService;->dateFormatter:Ljava/text/SimpleDateFormat;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/terikon/cordova/photolibrary/PhotoLibraryService;Landroid/content/Context;Ljava/lang/String;Lcom/terikon/cordova/photolibrary/PhotoLibraryService$ChunkResultRunnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/terikon/cordova/photolibrary/PhotoLibraryService;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lcom/terikon/cordova/photolibrary/PhotoLibraryService$ChunkResultRunnable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/terikon/cordova/photolibrary/PhotoLibraryService;->queryLibrary(Landroid/content/Context;Ljava/lang/String;Lcom/terikon/cordova/photolibrary/PhotoLibraryService$ChunkResultRunnable;)V

    return-void
.end method

.method private addFileToMediaLibrary(Landroid/content/Context;Ljava/io/File;Lcom/terikon/cordova/photolibrary/PhotoLibraryService$FilePathRunnable;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "completion"    # Lcom/terikon/cordova/photolibrary/PhotoLibraryService$FilePathRunnable;

    .prologue
    .line 571
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 573
    .local v0, "filePath":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v2, 0x0

    new-instance v3, Lcom/terikon/cordova/photolibrary/PhotoLibraryService$5;

    invoke-direct {v3, p0, p3}, Lcom/terikon/cordova/photolibrary/PhotoLibraryService$5;-><init>(Lcom/terikon/cordova/photolibrary/PhotoLibraryService;Lcom/terikon/cordova/photolibrary/PhotoLibraryService$FilePathRunnable;)V

    invoke-static {p1, v1, v2, v3}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 580
    return-void
.end method

.method private static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 6
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .prologue
    .line 421
    iget v2, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 422
    .local v2, "height":I
    iget v4, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 423
    .local v4, "width":I
    const/4 v3, 0x1

    .line 425
    .local v3, "inSampleSize":I
    if-gt v2, p2, :cond_0

    if-le v4, p1, :cond_1

    .line 427
    :cond_0
    div-int/lit8 v0, v2, 0x2

    .line 428
    .local v0, "halfHeight":I
    div-int/lit8 v1, v4, 0x2

    .line 432
    .local v1, "halfWidth":I
    :goto_0
    div-int v5, v0, v3

    if-lt v5, p2, :cond_1

    div-int v5, v1, v3

    if-lt v5, p1, :cond_1

    .line 434
    mul-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 438
    .end local v0    # "halfHeight":I
    .end local v1    # "halfWidth":I
    :cond_1
    return v3
.end method

.method private static copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 4
    .param p0, "source"    # Ljava/io/InputStream;
    .param p1, "target"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 453
    const/16 v1, 0x400

    .line 454
    .local v1, "bufferSize":I
    new-array v0, v1, [B

    .line 457
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "len":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 458
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 461
    :cond_0
    return-void
.end method

.method private getImageFileName(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 7
    .param p1, "albumDirectory"    # Ljava/io/File;
    .param p2, "extension"    # Ljava/lang/String;

    .prologue
    .line 555
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 556
    .local v0, "calendar":Ljava/util/Calendar;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x2

    .line 557
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x5

    .line 558
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 559
    .local v1, "dateStr":Ljava/lang/String;
    const/4 v3, 0x1

    .line 562
    .local v3, "i":I
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 563
    .local v2, "fileName":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    .line 564
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 565
    .local v4, "result":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 566
    return-object v4
.end method

.method private static getImageId(Ljava/lang/String;)I
    .locals 2
    .param p0, "photoId"    # Ljava/lang/String;

    .prologue
    .line 481
    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static getImageOrientation(Ljava/io/File;)I
    .locals 4
    .param p0, "imageFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 491
    new-instance v0, Landroid/media/ExifInterface;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 492
    .local v0, "exif":Landroid/media/ExifInterface;
    const-string v2, "Orientation"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v1

    .line 494
    .local v1, "orientation":I
    return v1
.end method

.method private static getImageURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "photoId"    # Ljava/lang/String;

    .prologue
    .line 486
    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getInstance()Lcom/terikon/cordova/photolibrary/PhotoLibraryService;
    .locals 2

    .prologue
    .line 55
    sget-object v0, Lcom/terikon/cordova/photolibrary/PhotoLibraryService;->instance:Lcom/terikon/cordova/photolibrary/PhotoLibraryService;

    if-nez v0, :cond_1

    .line 56
    const-class v1, Lcom/terikon/cordova/photolibrary/PhotoLibraryService;

    monitor-enter v1

    .line 57
    :try_start_0
    sget-object v0, Lcom/terikon/cordova/photolibrary/PhotoLibraryService;->instance:Lcom/terikon/cordova/photolibrary/PhotoLibraryService;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/terikon/cordova/photolibrary/PhotoLibraryService;

    invoke-direct {v0}, Lcom/terikon/cordova/photolibrary/PhotoLibraryService;-><init>()V

    sput-object v0, Lcom/terikon/cordova/photolibrary/PhotoLibraryService;->instance:Lcom/terikon/cordova/photolibrary/PhotoLibraryService;

    .line 60
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :cond_1
    sget-object v0, Lcom/terikon/cordova/photolibrary/PhotoLibraryService;->instance:Lcom/terikon/cordova/photolibrary/PhotoLibraryService;

    return-object v0

    .line 60
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static getJpegBytesFromBitmap(Landroid/graphics/Bitmap;D)[B
    .locals 5
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "quality"    # D

    .prologue
    .line 444
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 445
    .local v0, "stream":Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, p1

    double-to-int v2, v2

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 447
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method private static isOrientationSwapsDimensions(I)Z
    .locals 1
    .param p0, "orientation"    # I

    .prologue
    .line 540
    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static makeAlbumInPhotoLibrary(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p0, "album"    # Ljava/lang/String;

    .prologue
    .line 547
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 548
    .local v0, "albumDirectory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 549
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 551
    :cond_0
    return-object v0
.end method

.method private queryContentProvider(Landroid/content/Context;Landroid/net/Uri;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "collection"    # Landroid/net/Uri;
    .param p3, "columns"    # Lorg/json/JSONObject;
    .param p4, "whereClause"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 266
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 267
    .local v11, "columnNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 269
    .local v12, "columnValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v18

    .line 271
    .local v18, "iteratorFields":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 272
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 274
    .local v9, "column":Ljava/lang/String;
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 278
    .end local v9    # "column":Ljava/lang/String;
    :cond_0
    const-string v19, "datetaken"

    .line 280
    .local v19, "sortOrder":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 282
    invoke-virtual/range {p3 .. p3}, Lorg/json/JSONObject;->length()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "datetaken"

    move-object/from16 v3, p2

    move-object/from16 v5, p4

    .line 280
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 285
    .local v13, "cursor":Landroid/database/Cursor;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 287
    .local v8, "buffer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 289
    :cond_1
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    .line 291
    .local v15, "item":Lorg/json/JSONObject;
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 292
    .restart local v9    # "column":Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 294
    .local v10, "columnIndex":I
    const-string v3, "int."

    invoke-virtual {v9, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 295
    const/4 v3, 0x4

    invoke-virtual {v9, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v13, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v15, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 296
    const/4 v3, 0x4

    invoke-virtual {v9, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "width"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "width"

    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    .line 297
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cursor: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v13, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 299
    :cond_3
    const-string v3, "float."

    invoke-virtual {v9, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 300
    const/4 v3, 0x6

    invoke-virtual {v9, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v13, v10}, Landroid/database/Cursor;->getFloat(I)F

    move-result v4

    float-to-double v4, v4

    invoke-virtual {v15, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    goto :goto_1

    .line 301
    :cond_4
    const-string v3, "date."

    invoke-virtual {v9, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 302
    invoke-interface {v13, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 303
    .local v16, "intDate":J
    new-instance v14, Ljava/util/Date;

    move-wide/from16 v0, v16

    invoke-direct {v14, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 304
    .local v14, "date":Ljava/util/Date;
    const/4 v3, 0x5

    invoke-virtual {v9, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/terikon/cordova/photolibrary/PhotoLibraryService;->dateFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 306
    .end local v14    # "date":Ljava/util/Date;
    .end local v16    # "intDate":J
    :cond_5
    invoke-interface {v13, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v9, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 309
    .end local v9    # "column":Ljava/lang/String;
    .end local v10    # "columnIndex":I
    :cond_6
    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 317
    .end local v15    # "item":Lorg/json/JSONObject;
    :cond_7
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 319
    return-object v8
.end method

.method private queryLibrary(Landroid/content/Context;IDZLjava/lang/String;Lcom/terikon/cordova/photolibrary/PhotoLibraryService$ChunkResultRunnable;)V
    .locals 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "itemsInChunk"    # I
    .param p3, "chunkTimeSec"    # D
    .param p5, "includeAlbumData"    # Z
    .param p6, "whereClause"    # Ljava/lang/String;
    .param p7, "completion"    # Lcom/terikon/cordova/photolibrary/PhotoLibraryService$ChunkResultRunnable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 332
    new-instance v10, Lcom/terikon/cordova/photolibrary/PhotoLibraryService$4;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/terikon/cordova/photolibrary/PhotoLibraryService$4;-><init>(Lcom/terikon/cordova/photolibrary/PhotoLibraryService;)V

    .line 344
    .local v10, "columns":Lorg/json/JSONObject;
    sget-object v16, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    move-object/from16 v3, p6

    invoke-direct {v0, v1, v2, v10, v3}, Lcom/terikon/cordova/photolibrary/PhotoLibraryService;->queryContentProvider(Landroid/content/Context;Landroid/net/Uri;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v14

    .line 346
    .local v14, "queryResults":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 348
    .local v6, "chunk":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 349
    .local v8, "chunkStartTime":J
    const/4 v7, 0x0

    .line 351
    .local v7, "chunkNum":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v11, v0, :cond_6

    .line 352
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/json/JSONObject;

    .line 356
    .local v13, "queryResult":Lorg/json/JSONObject;
    :try_start_0
    new-instance v16, Ljava/io/File;

    const-string v17, "nativeURL"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v16 .. v16}, Lcom/terikon/cordova/photolibrary/PhotoLibraryService;->getImageOrientation(Ljava/io/File;)I

    move-result v12

    .line 357
    .local v12, "orientation":I
    invoke-static {v12}, Lcom/terikon/cordova/photolibrary/PhotoLibraryService;->isOrientationSwapsDimensions(I)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 358
    const-string v16, "width"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    .line 359
    .local v15, "tempWidth":I
    const-string v16, "width"

    const-string v17, "height"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 360
    const-string v16, "height"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    .end local v12    # "orientation":I
    .end local v15    # "tempWidth":I
    :cond_0
    :goto_1
    const-string v16, "id"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "id"

    .line 368
    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ";"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "nativeURL"

    .line 369
    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 367
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 371
    const-string v16, "nativeURL"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 373
    const-string v16, "albumId"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 374
    .local v4, "albumId":Ljava/lang/String;
    const-string v16, "albumId"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 375
    if-eqz p5, :cond_1

    .line 376
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 377
    .local v5, "albumsArray":Lorg/json/JSONArray;
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 378
    const-string v16, "albumIds"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 381
    .end local v5    # "albumsArray":Lorg/json/JSONArray;
    :cond_1
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    if-ne v11, v0, :cond_3

    .line 384
    const/16 v16, 0x1

    move-object/from16 v0, p7

    move/from16 v1, v16

    invoke-interface {v0, v6, v7, v1}, Lcom/terikon/cordova/photolibrary/PhotoLibraryService$ChunkResultRunnable;->run(Ljava/util/ArrayList;IZ)V

    .line 351
    :cond_2
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 385
    :cond_3
    if-lez p2, :cond_4

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    move/from16 v1, p2

    if-eq v0, v1, :cond_5

    :cond_4
    const-wide/16 v16, 0x0

    cmpl-double v16, p3, v16

    if-lez v16, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    sub-long v16, v16, v8

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide v18, 0x408f400000000000L    # 1000.0

    mul-double v18, v18, p3

    cmpl-double v16, v16, v18

    if-ltz v16, :cond_2

    .line 386
    :cond_5
    const/16 v16, 0x0

    move-object/from16 v0, p7

    move/from16 v1, v16

    invoke-interface {v0, v6, v7, v1}, Lcom/terikon/cordova/photolibrary/PhotoLibraryService$ChunkResultRunnable;->run(Ljava/util/ArrayList;IZ)V

    .line 387
    add-int/lit8 v7, v7, 0x1

    .line 388
    new-instance v6, Ljava/util/ArrayList;

    .end local v6    # "chunk":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 389
    .restart local v6    # "chunk":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    goto :goto_2

    .line 394
    .end local v4    # "albumId":Ljava/lang/String;
    .end local v13    # "queryResult":Lorg/json/JSONObject;
    :cond_6
    return-void

    .line 362
    .restart local v13    # "queryResult":Lorg/json/JSONObject;
    :catch_0
    move-exception v16

    goto/16 :goto_1
.end method

.method private queryLibrary(Landroid/content/Context;Ljava/lang/String;Lcom/terikon/cordova/photolibrary/PhotoLibraryService$ChunkResultRunnable;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "whereClause"    # Ljava/lang/String;
    .param p3, "completion"    # Lcom/terikon/cordova/photolibrary/PhotoLibraryService$ChunkResultRunnable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 324
    const-wide/16 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move v6, v3

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/terikon/cordova/photolibrary/PhotoLibraryService;->queryLibrary(Landroid/content/Context;IDZLjava/lang/String;Lcom/terikon/cordova/photolibrary/PhotoLibraryService$ChunkResultRunnable;)V

    .line 325
    return-void
.end method

.method private queryMimeType(Landroid/content/Context;I)Ljava/lang/String;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageId"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v9, 0x0

    .line 398
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "mime_type"

    aput-object v3, v2, v9

    const-string v3, "_id=?"

    new-array v4, v4, [Ljava/lang/String;

    .line 402
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v9

    .line 398
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 404
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    const-string v0, "mime_type"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 406
    .local v7, "mimeType":Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 413
    .end local v7    # "mimeType":Ljava/lang/String;
    :goto_0
    return-object v7

    .line 412
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v7, v5

    .line 413
    goto :goto_0
.end method

.method private static readBytes(Ljava/io/InputStream;)[B
    .locals 5
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 465
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 467
    .local v2, "byteBuffer":Ljava/io/ByteArrayOutputStream;
    const/16 v1, 0x400

    .line 468
    .local v1, "bufferSize":I
    new-array v0, v1, [B

    .line 471
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, "len":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 472
    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 475
    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    return-object v4
.end method

.method private static rotateImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "source"    # Landroid/graphics/Bitmap;
    .param p1, "orientation"    # I

    .prologue
    const/high16 v4, 0x42b40000    # 90.0f

    const/high16 v0, -0x3d4c0000    # -90.0f

    const/4 v1, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    .line 501
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 503
    .local v5, "matrix":Landroid/graphics/Matrix;
    packed-switch p1, :pswitch_data_0

    .line 534
    .end local p0    # "source":Landroid/graphics/Bitmap;
    :goto_0
    :pswitch_0
    return-object p0

    .line 507
    .restart local p0    # "source":Landroid/graphics/Bitmap;
    :pswitch_1
    invoke-virtual {v5, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 534
    :goto_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v0, p0

    move v2, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    .line 510
    :pswitch_2
    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_1

    .line 513
    :pswitch_3
    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 514
    invoke-virtual {v5, v2, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_1

    .line 517
    :pswitch_4
    invoke-virtual {v5, v4}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 518
    invoke-virtual {v5, v2, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_1

    .line 521
    :pswitch_5
    invoke-virtual {v5, v4}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_1

    .line 524
    :pswitch_6
    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 525
    invoke-virtual {v5, v2, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_1

    .line 528
    :pswitch_7
    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_1

    .line 503
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private saveMedia(Landroid/content/Context;Lorg/apache/cordova/CordovaInterface;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/terikon/cordova/photolibrary/PhotoLibraryService$FilePathRunnable;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cordova"    # Lorg/apache/cordova/CordovaInterface;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "album"    # Ljava/lang/String;
    .param p6, "completion"    # Lcom/terikon/cordova/photolibrary/PhotoLibraryService$FilePathRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/apache/cordova/CordovaInterface;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/terikon/cordova/photolibrary/PhotoLibraryService$FilePathRunnable;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 594
    .local p5, "mimeToExtension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static/range {p4 .. p4}, Lcom/terikon/cordova/photolibrary/PhotoLibraryService;->makeAlbumInPhotoLibrary(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 597
    .local v3, "albumDirectory":Ljava/io/File;
    const-string v15, "data:"

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 599
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/terikon/cordova/photolibrary/PhotoLibraryService;->dataURLPattern:Ljava/util/regex/Pattern;

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 600
    .local v10, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v15

    if-nez v15, :cond_0

    .line 601
    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string v16, "The dataURL is in incorrect format"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 603
    :cond_0
    const/4 v15, 0x2

    invoke-virtual {v10, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    .line 604
    .local v11, "mime":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->end()I

    move-result v6

    .line 606
    .local v6, "dataPos":I
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 607
    .local v5, "base64":Ljava/lang/String;
    const/4 v15, 0x0

    invoke-static {v5, v15}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v7

    .line 609
    .local v7, "decoded":[B
    if-nez v7, :cond_1

    .line 610
    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string v16, "The dataURL could not be decoded"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 613
    :cond_1
    move-object/from16 v0, p5

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 614
    .local v8, "extension":Ljava/lang/String;
    if-nez v8, :cond_2

    .line 615
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 618
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v8}, Lcom/terikon/cordova/photolibrary/PhotoLibraryService;->getImageFileName(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v14

    .line 620
    .local v14, "targetFile":Ljava/io/File;
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 622
    .local v12, "os":Ljava/io/FileOutputStream;
    invoke-virtual {v12, v7}, Ljava/io/FileOutputStream;->write([B)V

    .line 624
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->flush()V

    .line 625
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V

    .line 651
    .end local v5    # "base64":Ljava/lang/String;
    .end local v6    # "dataPos":I
    .end local v7    # "decoded":[B
    .end local v10    # "matcher":Ljava/util/regex/Matcher;
    .end local v11    # "mime":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    invoke-direct {v0, v1, v14, v2}, Lcom/terikon/cordova/photolibrary/PhotoLibraryService;->addFileToMediaLibrary(Landroid/content/Context;Ljava/io/File;Lcom/terikon/cordova/photolibrary/PhotoLibraryService$FilePathRunnable;)V

    .line 653
    return-void

    .line 629
    .end local v8    # "extension":Ljava/lang/String;
    .end local v12    # "os":Ljava/io/FileOutputStream;
    .end local v14    # "targetFile":Ljava/io/File;
    :cond_3
    const-string v15, "."

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_4

    const-string v15, "."

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 630
    .restart local v8    # "extension":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v8}, Lcom/terikon/cordova/photolibrary/PhotoLibraryService;->getImageFileName(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v14

    .line 633
    .restart local v14    # "targetFile":Ljava/io/File;
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 635
    .restart local v12    # "os":Ljava/io/FileOutputStream;
    const-string v15, "file:///android_asset/"

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 636
    const-string v15, "file:///android_asset/"

    const-string v16, ""

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 637
    .local v4, "assetUrl":Ljava/lang/String;
    invoke-interface/range {p2 .. p2}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v15

    invoke-virtual {v15, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v9

    .line 643
    .end local v4    # "assetUrl":Ljava/lang/String;
    .local v9, "is":Ljava/io/InputStream;
    :goto_2
    invoke-static {v9, v12}, Lcom/terikon/cordova/photolibrary/PhotoLibraryService;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 645
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->flush()V

    .line 646
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V

    .line 647
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 629
    .end local v8    # "extension":Ljava/lang/String;
    .end local v9    # "is":Ljava/io/InputStream;
    .end local v12    # "os":Ljava/io/FileOutputStream;
    .end local v14    # "targetFile":Ljava/io/File;
    :cond_4
    const-string v8, ""

    goto :goto_1

    .line 639
    .restart local v8    # "extension":Ljava/lang/String;
    .restart local v12    # "os":Ljava/io/FileOutputStream;
    .restart local v14    # "targetFile":Ljava/io/File;
    :cond_5
    new-instance v13, Ljava/io/File;

    new-instance v15, Ljava/net/URI;

    move-object/from16 v0, p3

    invoke-direct {v15, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v13, v15}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    .line 640
    .local v13, "sourceFile":Ljava/io/File;
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .restart local v9    # "is":Ljava/io/InputStream;
    goto :goto_2
.end method


# virtual methods
.method public getAlbums(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 76
    new-instance v0, Lcom/terikon/cordova/photolibrary/PhotoLibraryService$1;

    invoke-direct {v0, p0}, Lcom/terikon/cordova/photolibrary/PhotoLibraryService$1;-><init>(Lcom/terikon/cordova/photolibrary/PhotoLibraryService;)V

    .line 81
    .local v0, "columns":Lorg/json/JSONObject;
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "1) GROUP BY 1,(2"

    invoke-direct {p0, p1, v2, v0, v3}, Lcom/terikon/cordova/photolibrary/PhotoLibraryService;->queryContentProvider(Landroid/content/Context;Landroid/net/Uri;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 83
    .local v1, "queryResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    return-object v1
.end method

.method public getLibrary(Landroid/content/Context;Lcom/terikon/cordova/photolibrary/PhotoLibraryGetLibraryOptions;Lcom/terikon/cordova/photolibrary/PhotoLibraryService$ChunkResultRunnable;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "options"    # Lcom/terikon/cordova/photolibrary/PhotoLibraryGetLibraryOptions;
    .param p3, "completion"    # Lcom/terikon/cordova/photolibrary/PhotoLibraryService$ChunkResultRunnable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 67
    const-string v7, ""

    .line 68
    .local v7, "whereClause":Ljava/lang/String;
    iget v3, p2, Lcom/terikon/cordova/photolibrary/PhotoLibraryGetLibraryOptions;->itemsInChunk:I

    iget-wide v4, p2, Lcom/terikon/cordova/photolibrary/PhotoLibraryGetLibraryOptions;->chunkTimeSec:D

    iget-boolean v6, p2, Lcom/terikon/cordova/photolibrary/PhotoLibraryGetLibraryOptions;->includeAlbumData:Z

    move-object v1, p0

    move-object v2, p1

    move-object v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/terikon/cordova/photolibrary/PhotoLibraryService;->queryLibrary(Landroid/content/Context;IDZLjava/lang/String;Lcom/terikon/cordova/photolibrary/PhotoLibraryService$ChunkResultRunnable;)V

    .line 70
    return-void
.end method

.method public getPhoto(Landroid/content/Context;Ljava/lang/String;)Lcom/terikon/cordova/photolibrary/PhotoLibraryService$PictureData;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "photoId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    invoke-virtual {p0, p1, p2}, Lcom/terikon/cordova/photolibrary/PhotoLibraryService;->getPhotoAsStream(Landroid/content/Context;Ljava/lang/String;)Lcom/terikon/cordova/photolibrary/PhotoLibraryService$PictureAsStream;

    move-result-object v1

    .line 188
    .local v1, "pictureAsStream":Lcom/terikon/cordova/photolibrary/PhotoLibraryService$PictureAsStream;
    invoke-virtual {v1}, Lcom/terikon/cordova/photolibrary/PhotoLibraryService$PictureAsStream;->getStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lcom/terikon/cordova/photolibrary/PhotoLibraryService;->readBytes(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 189
    .local v0, "bytes":[B
    invoke-virtual {v1}, Lcom/terikon/cordova/photolibrary/PhotoLibraryService$PictureAsStream;->getStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 191
    new-instance v2, Lcom/terikon/cordova/photolibrary/PhotoLibraryService$PictureData;

    invoke-virtual {v1}, Lcom/terikon/cordova/photolibrary/PhotoLibraryService$PictureAsStream;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v0, v3}, Lcom/terikon/cordova/photolibrary/PhotoLibraryService$PictureData;-><init>(Lcom/terikon/cordova/photolibrary/PhotoLibraryService;[BLjava/lang/String;)V

    return-object v2
.end method

.method public getPhotoAsStream(Landroid/content/Context;Ljava/lang/String;)Lcom/terikon/cordova/photolibrary/PhotoLibraryService$PictureAsStream;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "photoId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 152
    invoke-static {p2}, Lcom/terikon/cordova/photolibrary/PhotoLibraryService;->getImageId(Ljava/lang/String;)I

    move-result v3

    .line 153
    .local v3, "imageId":I
    invoke-static {p2}, Lcom/terikon/cordova/photolibrary/PhotoLibraryService;->getImageURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 154
    .local v4, "imageURL":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 155
    .local v2, "imageFile":Ljava/io/File;
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    .line 157
    .local v5, "imageUri":Landroid/net/Uri;
    invoke-direct {p0, p1, v3}, Lcom/terikon/cordova/photolibrary/PhotoLibraryService;->queryMimeType(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    .line 159
    .local v7, "mimeType":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-virtual {v10, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v6

    .line 161
    .local v6, "is":Ljava/io/InputStream;
    const-string v10, "image/jpeg"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 162
    invoke-static {v2}, Lcom/terikon/cordova/photolibrary/PhotoLibraryService;->getImageOrientation(Ljava/io/File;)I

    move-result v8

    .line 163
    .local v8, "orientation":I
    const/4 v10, 0x1

    if-le v8, v10, :cond_0

    .line 165
    invoke-static {v6, v11, v11}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 166
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 168
    invoke-static {v0, v8}, Lcom/terikon/cordova/photolibrary/PhotoLibraryService;->rotateImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 170
    .local v9, "rotatedBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 174
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    invoke-static {v9, v10, v11}, Lcom/terikon/cordova/photolibrary/PhotoLibraryService;->getJpegBytesFromBitmap(Landroid/graphics/Bitmap;D)[B

    move-result-object v1

    .line 176
    .local v1, "bytes":[B
    new-instance v6, Ljava/io/ByteArrayInputStream;

    .end local v6    # "is":Ljava/io/InputStream;
    invoke-direct {v6, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 180
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "bytes":[B
    .end local v8    # "orientation":I
    .end local v9    # "rotatedBitmap":Landroid/graphics/Bitmap;
    .restart local v6    # "is":Ljava/io/InputStream;
    :cond_0
    new-instance v10, Lcom/terikon/cordova/photolibrary/PhotoLibraryService$PictureAsStream;

    invoke-direct {v10, p0, v6, v7}, Lcom/terikon/cordova/photolibrary/PhotoLibraryService$PictureAsStream;-><init>(Lcom/terikon/cordova/photolibrary/PhotoLibraryService;Ljava/io/InputStream;Ljava/lang/String;)V

    return-object v10
.end method

.method public getThumbnail(Landroid/content/Context;Ljava/lang/String;IID)Lcom/terikon/cordova/photolibrary/PhotoLibraryService$PictureData;
    .locals 23
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "photoId"    # Ljava/lang/String;
    .param p3, "thumbnailWidth"    # I
    .param p4, "thumbnailHeight"    # I
    .param p5, "quality"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    const/4 v6, 0x0

    .line 91
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    invoke-static/range {p2 .. p2}, Lcom/terikon/cordova/photolibrary/PhotoLibraryService;->getImageURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 92
    .local v10, "imageURL":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 95
    .local v8, "imageFile":Ljava/io/File;
    const/16 v18, 0x200

    move/from16 v0, p3

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    const/16 v18, 0x180

    move/from16 v0, p4

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 96
    invoke-static/range {p2 .. p2}, Lcom/terikon/cordova/photolibrary/PhotoLibraryService;->getImageId(Ljava/lang/String;)I

    move-result v9

    .line 99
    .local v9, "imageId":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    int-to-long v0, v9

    move-wide/from16 v20, v0

    const/16 v22, 0x1

    const/16 v18, 0x0

    check-cast v18, Landroid/graphics/BitmapFactory$Options;

    .line 98
    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    move/from16 v3, v22

    move-object/from16 v4, v18

    invoke-static {v0, v1, v2, v3, v4}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 105
    .end local v9    # "imageId":I
    :cond_0
    if-nez v6, :cond_1

    .line 106
    invoke-static {v8}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v11

    .line 107
    .local v11, "imageUri":Landroid/net/Uri;
    new-instance v14, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v14}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 109
    .local v14, "options":Landroid/graphics/BitmapFactory$Options;
    const/16 v18, 0x1

    move/from16 v0, v18

    iput-boolean v0, v14, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 110
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v12

    .line 111
    .local v12, "is":Ljava/io/InputStream;
    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-static {v12, v0, v14}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 114
    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v14, v0, v1}, Lcom/terikon/cordova/photolibrary/PhotoLibraryService;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v18

    move/from16 v0, v18

    iput v0, v14, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 115
    const/16 v18, 0x0

    move/from16 v0, v18

    iput-boolean v0, v14, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 116
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v12

    .line 117
    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-static {v12, v0, v14}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 118
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 121
    .end local v11    # "imageUri":Landroid/net/Uri;
    .end local v12    # "is":Ljava/io/InputStream;
    .end local v14    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_1
    if-eqz v6, :cond_4

    .line 124
    invoke-static {v8}, Lcom/terikon/cordova/photolibrary/PhotoLibraryService;->getImageOrientation(Ljava/io/File;)I

    move-result v15

    .line 125
    .local v15, "orientation":I
    invoke-static {v6, v15}, Lcom/terikon/cordova/photolibrary/PhotoLibraryService;->rotateImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 126
    .local v16, "rotatedBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, v16

    if-eq v6, v0, :cond_2

    .line 127
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 130
    :cond_2
    move-object/from16 v0, v16

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-static {v0, v1, v2}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 131
    .local v17, "thumbnailBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_3

    .line 132
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->recycle()V

    .line 137
    :cond_3
    move-object/from16 v0, v17

    move-wide/from16 v1, p5

    invoke-static {v0, v1, v2}, Lcom/terikon/cordova/photolibrary/PhotoLibraryService;->getJpegBytesFromBitmap(Landroid/graphics/Bitmap;D)[B

    move-result-object v7

    .line 138
    .local v7, "bytes":[B
    const-string v13, "image/jpeg"

    .line 140
    .local v13, "mimeType":Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->recycle()V

    .line 142
    new-instance v18, Lcom/terikon/cordova/photolibrary/PhotoLibraryService$PictureData;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v7, v13}, Lcom/terikon/cordova/photolibrary/PhotoLibraryService$PictureData;-><init>(Lcom/terikon/cordova/photolibrary/PhotoLibraryService;[BLjava/lang/String;)V

    .line 146
    .end local v7    # "bytes":[B
    .end local v13    # "mimeType":Ljava/lang/String;
    .end local v15    # "orientation":I
    .end local v16    # "rotatedBitmap":Landroid/graphics/Bitmap;
    .end local v17    # "thumbnailBitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v18

    :cond_4
    const/16 v18, 0x0

    goto :goto_0
.end method

.method public saveImage(Landroid/content/Context;Lorg/apache/cordova/CordovaInterface;Ljava/lang/String;Ljava/lang/String;Lcom/terikon/cordova/photolibrary/PhotoLibraryService$JSONObjectRunnable;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cordova"    # Lorg/apache/cordova/CordovaInterface;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "album"    # Ljava/lang/String;
    .param p5, "completion"    # Lcom/terikon/cordova/photolibrary/PhotoLibraryService$JSONObjectRunnable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 198
    iget-object v5, p0, Lcom/terikon/cordova/photolibrary/PhotoLibraryService;->imageMimeToExtension:Ljava/util/Map;

    new-instance v6, Lcom/terikon/cordova/photolibrary/PhotoLibraryService$2;

    invoke-direct {v6, p0, p1, p5}, Lcom/terikon/cordova/photolibrary/PhotoLibraryService$2;-><init>(Lcom/terikon/cordova/photolibrary/PhotoLibraryService;Landroid/content/Context;Lcom/terikon/cordova/photolibrary/PhotoLibraryService$JSONObjectRunnable;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/terikon/cordova/photolibrary/PhotoLibraryService;->saveMedia(Landroid/content/Context;Lorg/apache/cordova/CordovaInterface;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/terikon/cordova/photolibrary/PhotoLibraryService$FilePathRunnable;)V

    .line 216
    return-void
.end method

.method public saveVideo(Landroid/content/Context;Lorg/apache/cordova/CordovaInterface;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cordova"    # Lorg/apache/cordova/CordovaInterface;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "album"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 221
    iget-object v5, p0, Lcom/terikon/cordova/photolibrary/PhotoLibraryService;->videMimeToExtension:Ljava/util/Map;

    new-instance v6, Lcom/terikon/cordova/photolibrary/PhotoLibraryService$3;

    invoke-direct {v6, p0}, Lcom/terikon/cordova/photolibrary/PhotoLibraryService$3;-><init>(Lcom/terikon/cordova/photolibrary/PhotoLibraryService;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/terikon/cordova/photolibrary/PhotoLibraryService;->saveMedia(Landroid/content/Context;Lorg/apache/cordova/CordovaInterface;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/terikon/cordova/photolibrary/PhotoLibraryService$FilePathRunnable;)V

    .line 228
    return-void
.end method
