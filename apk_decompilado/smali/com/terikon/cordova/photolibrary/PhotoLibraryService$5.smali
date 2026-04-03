.class Lcom/terikon/cordova/photolibrary/PhotoLibraryService$5;
.super Ljava/lang/Object;
.source "PhotoLibraryService.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$OnScanCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/terikon/cordova/photolibrary/PhotoLibraryService;->addFileToMediaLibrary(Landroid/content/Context;Ljava/io/File;Lcom/terikon/cordova/photolibrary/PhotoLibraryService$FilePathRunnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/terikon/cordova/photolibrary/PhotoLibraryService;

.field final synthetic val$completion:Lcom/terikon/cordova/photolibrary/PhotoLibraryService$FilePathRunnable;


# direct methods
.method constructor <init>(Lcom/terikon/cordova/photolibrary/PhotoLibraryService;Lcom/terikon/cordova/photolibrary/PhotoLibraryService$FilePathRunnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/terikon/cordova/photolibrary/PhotoLibraryService;

    .prologue
    .line 573
    iput-object p1, p0, Lcom/terikon/cordova/photolibrary/PhotoLibraryService$5;->this$0:Lcom/terikon/cordova/photolibrary/PhotoLibraryService;

    iput-object p2, p0, Lcom/terikon/cordova/photolibrary/PhotoLibraryService$5;->val$completion:Lcom/terikon/cordova/photolibrary/PhotoLibraryService$FilePathRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 576
    iget-object v0, p0, Lcom/terikon/cordova/photolibrary/PhotoLibraryService$5;->val$completion:Lcom/terikon/cordova/photolibrary/PhotoLibraryService$FilePathRunnable;

    invoke-interface {v0, p1}, Lcom/terikon/cordova/photolibrary/PhotoLibraryService$FilePathRunnable;->run(Ljava/lang/String;)V

    .line 577
    return-void
.end method
