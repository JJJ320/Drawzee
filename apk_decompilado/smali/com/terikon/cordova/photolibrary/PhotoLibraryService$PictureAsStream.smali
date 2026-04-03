.class public Lcom/terikon/cordova/photolibrary/PhotoLibraryService$PictureAsStream;
.super Ljava/lang/Object;
.source "PhotoLibraryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/terikon/cordova/photolibrary/PhotoLibraryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PictureAsStream"
.end annotation


# instance fields
.field private mimeType:Ljava/lang/String;

.field private stream:Ljava/io/InputStream;

.field final synthetic this$0:Lcom/terikon/cordova/photolibrary/PhotoLibraryService;


# direct methods
.method public constructor <init>(Lcom/terikon/cordova/photolibrary/PhotoLibraryService;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/terikon/cordova/photolibrary/PhotoLibraryService;
    .param p2, "stream"    # Ljava/io/InputStream;
    .param p3, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 244
    iput-object p1, p0, Lcom/terikon/cordova/photolibrary/PhotoLibraryService$PictureAsStream;->this$0:Lcom/terikon/cordova/photolibrary/PhotoLibraryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    iput-object p2, p0, Lcom/terikon/cordova/photolibrary/PhotoLibraryService$PictureAsStream;->stream:Ljava/io/InputStream;

    .line 246
    iput-object p3, p0, Lcom/terikon/cordova/photolibrary/PhotoLibraryService$PictureAsStream;->mimeType:Ljava/lang/String;

    .line 247
    return-void
.end method


# virtual methods
.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/terikon/cordova/photolibrary/PhotoLibraryService$PictureAsStream;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/terikon/cordova/photolibrary/PhotoLibraryService$PictureAsStream;->stream:Ljava/io/InputStream;

    return-object v0
.end method
