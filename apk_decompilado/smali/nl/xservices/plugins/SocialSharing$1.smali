.class Lnl/xservices/plugins/SocialSharing$1;
.super Lnl/xservices/plugins/SocialSharing$SocialSharingRunnable;
.source "SocialSharing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnl/xservices/plugins/SocialSharing;->invokeEmailIntent(Lorg/apache/cordova/CallbackContext;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnl/xservices/plugins/SocialSharing;

.field final synthetic val$bcc:Lorg/json/JSONArray;

.field final synthetic val$cc:Lorg/json/JSONArray;

.field final synthetic val$files:Lorg/json/JSONArray;

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$plugin:Lnl/xservices/plugins/SocialSharing;

.field final synthetic val$subject:Ljava/lang/String;

.field final synthetic val$to:Lorg/json/JSONArray;


# direct methods
.method constructor <init>(Lnl/xservices/plugins/SocialSharing;Lorg/apache/cordova/CallbackContext;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lnl/xservices/plugins/SocialSharing;)V
    .locals 0
    .param p1, "this$0"    # Lnl/xservices/plugins/SocialSharing;
    .param p2, "cb"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 131
    iput-object p1, p0, Lnl/xservices/plugins/SocialSharing$1;->this$0:Lnl/xservices/plugins/SocialSharing;

    iput-object p3, p0, Lnl/xservices/plugins/SocialSharing$1;->val$message:Ljava/lang/String;

    iput-object p4, p0, Lnl/xservices/plugins/SocialSharing$1;->val$subject:Ljava/lang/String;

    iput-object p5, p0, Lnl/xservices/plugins/SocialSharing$1;->val$to:Lorg/json/JSONArray;

    iput-object p6, p0, Lnl/xservices/plugins/SocialSharing$1;->val$cc:Lorg/json/JSONArray;

    iput-object p7, p0, Lnl/xservices/plugins/SocialSharing$1;->val$bcc:Lorg/json/JSONArray;

    iput-object p8, p0, Lnl/xservices/plugins/SocialSharing$1;->val$files:Lorg/json/JSONArray;

    iput-object p9, p0, Lnl/xservices/plugins/SocialSharing$1;->val$plugin:Lnl/xservices/plugins/SocialSharing;

    invoke-direct {p0, p1, p2}, Lnl/xservices/plugins/SocialSharing$SocialSharingRunnable;-><init>(Lnl/xservices/plugins/SocialSharing;Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 133
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND_MULTIPLE"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 134
    .local v1, "draft":Landroid/content/Intent;
    iget-object v0, p0, Lnl/xservices/plugins/SocialSharing$1;->val$message:Ljava/lang/String;

    invoke-static {v0}, Lnl/xservices/plugins/SocialSharing;->access$000(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    const-string v0, ".*\\<[^>]+>.*"

    const/16 v3, 0x20

    invoke-static {v0, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v9

    .line 136
    .local v9, "htmlPattern":Ljava/util/regex/Pattern;
    iget-object v0, p0, Lnl/xservices/plugins/SocialSharing$1;->val$message:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 137
    const-string v0, "android.intent.extra.TEXT"

    iget-object v3, p0, Lnl/xservices/plugins/SocialSharing$1;->val$message:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 138
    const-string v0, "text/html"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    .end local v9    # "htmlPattern":Ljava/util/regex/Pattern;
    :cond_0
    :goto_0
    iget-object v0, p0, Lnl/xservices/plugins/SocialSharing$1;->val$subject:Ljava/lang/String;

    invoke-static {v0}, Lnl/xservices/plugins/SocialSharing;->access$000(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    const-string v0, "android.intent.extra.SUBJECT"

    iget-object v3, p0, Lnl/xservices/plugins/SocialSharing$1;->val$subject:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    :cond_1
    :try_start_0
    iget-object v0, p0, Lnl/xservices/plugins/SocialSharing$1;->val$to:Lorg/json/JSONArray;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnl/xservices/plugins/SocialSharing$1;->val$to:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 149
    const-string v0, "android.intent.extra.EMAIL"

    iget-object v3, p0, Lnl/xservices/plugins/SocialSharing$1;->val$to:Lorg/json/JSONArray;

    invoke-static {v3}, Lnl/xservices/plugins/SocialSharing;->access$100(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    :cond_2
    iget-object v0, p0, Lnl/xservices/plugins/SocialSharing$1;->val$cc:Lorg/json/JSONArray;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnl/xservices/plugins/SocialSharing$1;->val$cc:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 152
    const-string v0, "android.intent.extra.CC"

    iget-object v3, p0, Lnl/xservices/plugins/SocialSharing$1;->val$cc:Lorg/json/JSONArray;

    invoke-static {v3}, Lnl/xservices/plugins/SocialSharing;->access$100(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    :cond_3
    iget-object v0, p0, Lnl/xservices/plugins/SocialSharing$1;->val$bcc:Lorg/json/JSONArray;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lnl/xservices/plugins/SocialSharing$1;->val$bcc:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 155
    const-string v0, "android.intent.extra.BCC"

    iget-object v3, p0, Lnl/xservices/plugins/SocialSharing$1;->val$bcc:Lorg/json/JSONArray;

    invoke-static {v3}, Lnl/xservices/plugins/SocialSharing;->access$100(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    :cond_4
    iget-object v0, p0, Lnl/xservices/plugins/SocialSharing$1;->val$files:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_8

    .line 158
    iget-object v0, p0, Lnl/xservices/plugins/SocialSharing$1;->this$0:Lnl/xservices/plugins/SocialSharing;

    invoke-static {v0}, Lnl/xservices/plugins/SocialSharing;->access$200(Lnl/xservices/plugins/SocialSharing;)Ljava/lang/String;

    move-result-object v2

    .line 159
    .local v2, "dir":Ljava/lang/String;
    if-eqz v2, :cond_8

    .line 160
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .local v8, "fileUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    iget-object v0, p0, Lnl/xservices/plugins/SocialSharing$1;->val$files:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v5, v0, :cond_7

    .line 162
    iget-object v0, p0, Lnl/xservices/plugins/SocialSharing$1;->this$0:Lnl/xservices/plugins/SocialSharing;

    iget-object v3, p0, Lnl/xservices/plugins/SocialSharing$1;->val$files:Lorg/json/JSONArray;

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lnl/xservices/plugins/SocialSharing$1;->val$subject:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lnl/xservices/plugins/SocialSharing;->access$300(Lnl/xservices/plugins/SocialSharing;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v7

    .line 163
    .local v7, "fileUri":Landroid/net/Uri;
    if-eqz v7, :cond_5

    .line 164
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 140
    .end local v2    # "dir":Ljava/lang/String;
    .end local v5    # "i":I
    .end local v7    # "fileUri":Landroid/net/Uri;
    .end local v8    # "fileUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .restart local v9    # "htmlPattern":Ljava/util/regex/Pattern;
    :cond_6
    const-string v0, "android.intent.extra.TEXT"

    iget-object v3, p0, Lnl/xservices/plugins/SocialSharing$1;->val$message:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    const-string v0, "text/plain"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 167
    .end local v9    # "htmlPattern":Ljava/util/regex/Pattern;
    .restart local v2    # "dir":Ljava/lang/String;
    .restart local v5    # "i":I
    .restart local v8    # "fileUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_7
    :try_start_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 168
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {v1, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 178
    .end local v2    # "dir":Ljava/lang/String;
    .end local v5    # "i":I
    .end local v8    # "fileUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_8
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 180
    const-string v0, "application/octet-stream"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    iget-object v0, p0, Lnl/xservices/plugins/SocialSharing$1;->this$0:Lnl/xservices/plugins/SocialSharing;

    iget-object v0, v0, Lnl/xservices/plugins/SocialSharing;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v3, Lnl/xservices/plugins/SocialSharing$1$1;

    invoke-direct {v3, p0, v1}, Lnl/xservices/plugins/SocialSharing$1$1;-><init>(Lnl/xservices/plugins/SocialSharing$1;Landroid/content/Intent;)V

    invoke-virtual {v0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 188
    :goto_2
    return-void

    .line 172
    :catch_0
    move-exception v6

    .line 173
    .local v6, "e":Ljava/lang/Exception;
    iget-object v0, p0, Lnl/xservices/plugins/SocialSharing$1;->callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_2
.end method
