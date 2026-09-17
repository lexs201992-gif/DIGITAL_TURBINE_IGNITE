.class public Lcom/LogiaGroup/LogiaDeck/DataModel/LegacyUUIDHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final GUID_SEPARATOR:Ljava/lang/String; = "::"

.field public static final KEY_TRACKING_ID:Ljava/lang/String; = "trackingId"

.field public static final KEY_UUID:Ljava/lang/String; = "UUID"


# instance fields
.field private final prefs:Lcom/digitalturbine/ignite/helper/IgnitePreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/digitalturbine/ignite/Ignite;->getDefaultController()Lcom/digitalturbine/ignite/controller/IgniteController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/digitalturbine/ignite/controller/IgniteController;->getPreferences()Lcom/digitalturbine/ignite/helper/IgnitePreferences;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/LogiaGroup/LogiaDeck/DataModel/LegacyUUIDHelper;-><init>(Lcom/digitalturbine/ignite/helper/IgnitePreferences;)V

    return-void
.end method

.method public constructor <init>(Lcom/digitalturbine/ignite/helper/IgnitePreferences;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/LogiaGroup/LogiaDeck/DataModel/LegacyUUIDHelper;->prefs:Lcom/digitalturbine/ignite/helper/IgnitePreferences;

    return-void
.end method

.method public static combineUuidWithTrackingId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "::"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public extractLDActivationGuidFromUuid()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/LogiaGroup/LogiaDeck/DataModel/LegacyUUIDHelper;->getUUID(Z)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v1, "::"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    return-object p0

    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public extractTrackingIdFromUuid()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/LogiaGroup/LogiaDeck/DataModel/LegacyUUIDHelper;->getUUID(Z)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "::"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getUUID(Z)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/LogiaGroup/LogiaDeck/DataModel/LegacyUUIDHelper;->prefs:Lcom/digitalturbine/ignite/helper/IgnitePreferences;

    const-string v1, "UUID"

    invoke-virtual {v0, v1}, Lcom/digitalturbine/ignite/helper/IgnitePreferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/LogiaGroup/LogiaDeck/DataModel/LegacyUUIDHelper;->prefs:Lcom/digitalturbine/ignite/helper/IgnitePreferences;

    invoke-virtual {p0, v1, p1}, Lcom/digitalturbine/ignite/helper/IgnitePreferences;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    return-object p1
.end method

.method public setUUID(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/LogiaGroup/LogiaDeck/DataModel/LegacyUUIDHelper;->prefs:Lcom/digitalturbine/ignite/helper/IgnitePreferences;

    const-string v0, "UUID"

    invoke-virtual {p0, v0, p1}, Lcom/digitalturbine/ignite/helper/IgnitePreferences;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method
