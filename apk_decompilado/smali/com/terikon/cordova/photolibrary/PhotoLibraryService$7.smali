.class Lcom/terikon/cordova/photolibrary/PhotoLibraryService$7;
.super Ljava/util/HashMap;
.source "PhotoLibraryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/terikon/cordova/photolibrary/PhotoLibraryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/terikon/cordova/photolibrary/PhotoLibraryService;


# direct methods
.method constructor <init>(Lcom/terikon/cordova/photolibrary/PhotoLibraryService;)V
    .locals 2
    .param p1, "this$0"    # Lcom/terikon/cordova/photolibrary/PhotoLibraryService;

    .prologue
    .line 586
    iput-object p1, p0, Lcom/terikon/cordova/photolibrary/PhotoLibraryService$7;->this$0:Lcom/terikon/cordova/photolibrary/PhotoLibraryService;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 587
    const-string v0, "quicktime"

    const-string v1, ".mov"

    invoke-virtual {p0, v0, v1}, Lcom/terikon/cordova/photolibrary/PhotoLibraryService$7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    const-string v0, "ogg"

    const-string v1, ".ogv"

    invoke-virtual {p0, v0, v1}, Lcom/terikon/cordova/photolibrary/PhotoLibraryService$7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    return-void
.end method
