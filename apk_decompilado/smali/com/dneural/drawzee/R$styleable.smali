.class public final Lcom/dneural/drawzee/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dneural/drawzee/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final AdsAttrs:[I

.field public static final AdsAttrs_adSize:I = 0x0

.field public static final AdsAttrs_adSizes:I = 0x1

.field public static final AdsAttrs_adUnitId:I = 0x2

.field public static final LoadingImageView:[I

.field public static final LoadingImageView_circleCrop:I = 0x2

.field public static final LoadingImageView_imageAspectRatio:I = 0x1

.field public static final LoadingImageView_imageAspectRatioAdjust:I = 0x0

.field public static final SignInButton:[I

.field public static final SignInButton_buttonSize:I = 0x0

.field public static final SignInButton_colorScheme:I = 0x1

.field public static final SignInButton_scopeUris:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 207
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/dneural/drawzee/R$styleable;->AdsAttrs:[I

    .line 266
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/dneural/drawzee/R$styleable;->LoadingImageView:[I

    .line 329
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/dneural/drawzee/R$styleable;->SignInButton:[I

    return-void

    .line 207
    nop

    :array_0
    .array-data 4
        0x7f010000
        0x7f010001
        0x7f010002
    .end array-data

    .line 266
    :array_1
    .array-data 4
        0x7f010003
        0x7f010004
        0x7f010005
    .end array-data

    .line 329
    :array_2
    .array-data 4
        0x7f010006
        0x7f010007
        0x7f010008
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
