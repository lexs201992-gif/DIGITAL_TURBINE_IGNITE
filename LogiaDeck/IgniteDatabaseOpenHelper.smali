.class public Lcom/LogiaGroup/LogiaDeck/Database/IgniteDatabaseOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# static fields
.field public static final APK_DOWNLOAD_REASON:Ljava/lang/String; = "ABI"

.field public static final APK_DOWNLOAD_STATUS:Ljava/lang/String; = "ABH"

.field public static final APK_FILE_CHECKSUM:Ljava/lang/String; = "AAM"

.field public static final APK_FILE_NAME:Ljava/lang/String; = "AAE"

.field public static final APK_FILE_SIZE:Ljava/lang/String; = "AAG"

.field public static final APK_PACKAGE_NAME:Ljava/lang/String; = "AAF"

.field public static final APPLICATION_ID:Ljava/lang/String; = "AAB"

.field public static final APPLICATION_LONG_DESCRIPTION:Ljava/lang/String; = "AAY"

.field public static final APPLICATION_NAME:Ljava/lang/String; = "AAD"

.field public static final APPLICATION_SHORT_DESCRIPTION:Ljava/lang/String; = "AAX"

.field public static final APP_TYPE:Ljava/lang/String; = "ABD"

.field public static final CAMPAIGN_ID:Ljava/lang/String; = "AFI"

.field public static final CARRIER_APP_ID:Ljava/lang/String; = "AAC"

.field private static final COLUMNS_NAMES_1665:Ljava/lang/String; = " ID,ApplicationID,CarrierAppId,ApplicationName,APKFileName,APKPackageName,APKFileSize,Priority,CreateShortcut,InstallAction,NetworkType,HeaderKey,APKFileChecksum,IsDownloaded,IsInstalled,IsShortCutCreated,NumberOfDownloads,NumberOfInstallRetries,DownloadNetwork,IsFinished,TimeInstalled,Reports,VersionCode,ApplicationShortDescription,ApplicationLongDescription,TransactionId,IconStream,UpdateStatus,TermsText,AppType,WasOpened,Uninstalled,ApkDownloadID,ApkDownloadStatus,ApkDownloadReason,DownloadUrl,IsNotificationShown "

.field public static final CONVERSION_TAG:Ljava/lang/String; = "dbConversion"

.field public static final CREATE_SHORTCUT:Ljava/lang/String; = "AAI"

.field public static final DM_QUEUE_ID:Ljava/lang/String; = "ABG"

.field public static final DOWNLOAD_NETWORK:Ljava/lang/String; = "AAS"

.field public static final DOWNLOAD_URL:Ljava/lang/String; = "ABJ"

.field public static final ENCRYPTION_TOOL_NAME:Ljava/lang/String; = "ACA"

.field public static final EXTRA_1:Ljava/lang/String; = "AFC"

.field public static final EXTRA_2:Ljava/lang/String; = "AFD"

.field public static final FLOW_TYPE:Ljava/lang/String; = "AFK"

.field public static final HASH:Ljava/lang/String; = "ABP"

.field public static final HEADER_KEY:Ljava/lang/String; = "AAL"

.field public static final ICON_STREAM:Ljava/lang/String; = "ABA"

.field public static final IMPRESSION_TRACKING_URL:Ljava/lang/String; = "AFG"

.field public static final INSTALLATION_TIME:Ljava/lang/String; = "ABL"

.field public static final INSTALLED_BY:Ljava/lang/String; = "AFE"

.field public static final INSTALL_ACTION:Ljava/lang/String; = "AAJ"

.field public static final INSTALL_IGNITE_VERSION_NAME:Ljava/lang/String; = "AFB"

.field private static final INTEGER:Ljava/lang/String; = "INTEGER"

.field public static final IS_DOWNLOADED:Ljava/lang/String; = "AAN"

.field public static final IS_FINISHED:Ljava/lang/String; = "AAT"

.field public static final IS_INSTALLED:Ljava/lang/String; = "AAO"

.field public static final IS_NOTIFICATION_SHOWN:Ljava/lang/String; = "ABK"

.field public static final IS_SHORTCUT_CREATED:Ljava/lang/String; = "AAP"

.field public static final NETWORK_TYPE:Ljava/lang/String; = "AAK"

.field public static final NOTIFICATION_REMINDER_STATUS:Ljava/lang/String; = "ABM"

.field public static final NUMBER_OF_DOWNLOADS:Ljava/lang/String; = "AAQ"

.field public static final NUMBER_OF_INSTALL_RETRIES:Ljava/lang/String; = "AAR"

.field public static final PRIMARY_KEY_ID:Ljava/lang/String; = "AAA"

.field public static final PRIORITY:Ljava/lang/String; = "AAH"

.field public static final PROCESS_ID:Ljava/lang/String; = "AFA"

.field public static final REFERER:Ljava/lang/String; = "ABN"

.field public static final REPORTS:Ljava/lang/String; = "AAV"

.field public static final SITE_ID:Ljava/lang/String; = "AFH"

.field private static final TAG:Ljava/lang/String; = "[IgniteDatabaseOpenHelper] "

.field public static final TBL_EVENTS_FIELD_EVENT_CODE:Ljava/lang/String; = "ABN"

.field public static final TBL_EVENTS_FIELD_UUID:Ljava/lang/String; = "ABO"

.field public static final TERMS_TEXT:Ljava/lang/String; = "ABC"

.field private static final TEXT:Ljava/lang/String; = "TEXT"

.field public static final TIME_INSTALLED:Ljava/lang/String; = "AAU"

.field public static final TRACKING_URL:Ljava/lang/String; = "ABO"

.field public static final TRANSACTION_ID:Ljava/lang/String; = "AAZ"

.field public static final UNINSTALLED:Ljava/lang/String; = "ABF"

.field public static final UPDATE_STATUS:Ljava/lang/String; = "ABB"

.field public static final USE_INSTALLER_BROADCAST:Ljava/lang/String; = "AFF"

.field public static final VERSION_CODE:Ljava/lang/String; = "AAW"

.field public static final WAS_OPENED:Ljava/lang/String; = "ABE"

.field private static convertFromEncryptedTbl:Z = true

.field private static mContext:Landroid/content/Context; = null

.field public static oldDbExist:Z = false

.field private static sourceDb:Landroid/database/sqlite/SQLiteDatabase;


# instance fields
.field TBL_ADDITIONAL_INFO_FIELDS:Ljava/lang/String;

.field private final TBL_DOWNLOAD_APPS_FIELDS:Ljava/lang/String;

.field private final TBL_ENCRYP_TOOL_FIELDS:Ljava/lang/String;

.field TBL_EVENTS_FIELDS:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    const-string p2, " (ACA TEXT);"

    iput-object p2, p0, Lcom/LogiaGroup/LogiaDeck/Database/IgniteDatabaseOpenHelper;->TBL_ENCRYP_TOOL_FIELDS:Ljava/lang/String;

    const-string p2, " (AAA INTEGER PRIMARY KEY autoincrement, AAB INTEGER, AAC INTEGER, AAD TEXT, AAE TEXT, AAF TEXT, AAG INTEGER, AAH INTEGER, AAI TEXT, AAJ INTEGER, AAK TEXT, AAL TEXT, AAM TEXT, AAN TEXT, AAO TEXT, AAP TEXT ,AAQ INTEGER, AAR INTEGER, AAS TEXT, AAT TEXT, AAU INTEGER, AAV TEXT, AAW INTEGER, AAX TEXT, AAY TEXT, AAZ INTEGER, ABB INTEGER, ABC TEXT, ABD TEXT, ABE TEXT, ABF TEXT, ABG INTEGER, ABH INTEGER, ABI INTEGER, ABJ TEXT, ABK TEXT, ABL INTEGER, ABM INTEGER, ABN TEXT, ABO TEXT, AFG TEXT, AFF TEXT, ABP TEXT, ABA TEXT, AFA TEXT, AFK INTEGER, AFB TEXT, AFH TEXT, AFI TEXT, AFE TEXT, AFC TEXT, AFD TEXT);"

    iput-object p2, p0, Lcom/LogiaGroup/LogiaDeck/Database/IgniteDatabaseOpenHelper;->TBL_DOWNLOAD_APPS_FIELDS:Ljava/lang/String;

    const-string p2, " (ID INTEGER PRIMARY KEY autoincrement, Key  TEXT, Value  TEXT, RawValue TEXT);"

    iput-object p2, p0, Lcom/LogiaGroup/LogiaDeck/Database/IgniteDatabaseOpenHelper;->TBL_ADDITIONAL_INFO_FIELDS:Ljava/lang/String;

    const-string p2, " (AAA INTEGER PRIMARY KEY autoincrement, ABO TEXT, ABN INTEGER);"

    iput-object p2, p0, Lcom/LogiaGroup/LogiaDeck/Database/IgniteDatabaseOpenHelper;->TBL_EVENTS_FIELDS:Ljava/lang/String;

    sput-object p1, Lcom/LogiaGroup/LogiaDeck/Database/IgniteDatabaseOpenHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method private alterAddIntegerColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string p0, " to table: "

    const-string v0, "[IgniteDatabaseOpenHelper] Failed to add column: "

    const-string v1, "ALTER TABLE "

    const-string v2, "[IgniteDatabaseOpenHelper] Trying to a add new column: "

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to the table: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/digitalturbine/ignite/logger/Logger;->d(Ljava/lang/String;)LAc/G;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ADD COLUMN "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " INTEGER"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/digitalturbine/ignite/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)LAc/G;

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "duplicate column name"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "[IgniteDatabaseOpenHelper] Duplicate column: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/digitalturbine/ignite/logger/Logger;->w(Ljava/lang/String;)LAc/G;

    goto :goto_2

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/digitalturbine/ignite/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)LAc/G;

    :goto_2
    return-void
.end method

.method private alterAddTextColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string p0, "ALTER TABLE "

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ADD COLUMN "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " TEXT"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Failed to add column: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " to table: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/digitalturbine/ignite/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)LAc/G;

    return-void
.end method

.method private checkConversion(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 2

    const-string v0, "dbConversion IgniteDatabaseOpenHelper: about to check if already converted "

    invoke-static {v0}, Lcom/digitalturbine/ignite/logger/Logger;->d(Ljava/lang/String;)LAc/G;

    invoke-static {}, Lcom/LogiaGroup/LogiaDeck/Database/DB;->isDBAlreadyConverted()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string p0, "dbConversion IgniteDatabaseOpenHelper: no need to convert already converted to AES once"

    invoke-static {p0}, Lcom/digitalturbine/ignite/logger/Logger;->d(Ljava/lang/String;)LAc/G;

    return v1

    :cond_0
    const-string v0, "dbConversion IgniteDatabaseOpenHelper: about to check if db is originaly aes "

    invoke-static {v0}, Lcom/digitalturbine/ignite/logger/Logger;->d(Ljava/lang/String;)LAc/G;

    invoke-static {p1}, Lcom/LogiaGroup/LogiaDeck/Database/DB;->isDBEncryptedWithAES(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "dbConversion IgniteDatabaseOpenHelper: conversion no need to convert already converted originaly"

    invoke-static {p0}, Lcom/digitalturbine/ignite/logger/Logger;->d(Ljava/lang/String;)LAc/G;

    return v1

    :cond_1
    invoke-static {p1}, Lcom/LogiaGroup/LogiaDeck/Database/DB;->isDBEncrypted(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "dbConversion starting conversion reason: converting from decrypteddb  but not encrypted"

    invoke-static {v0}, Lcom/digitalturbine/ignite/logger/Logger;->d(Ljava/lang/String;)LAc/G;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/LogiaGroup/LogiaDeck/Database/IgniteDatabaseOpenHelper;->convertFromEncryptedTbl:Z

    :cond_2
    const-string v0, "dbConversion starting conversion reason: fro CK to AES"

    invoke-static {v0}, Lcom/digitalturbine/ignite/logger/Logger;->d(Ljava/lang/String;)LAc/G;

    invoke-direct {p0, p1}, Lcom/LogiaGroup/LogiaDeck/Database/IgniteDatabaseOpenHelper;->convert(Landroid/database/sqlite/SQLiteDatabase;)V

    return v1
.end method

.method private convert(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const-string v0, "dbConversion **********  start conversion ****************"

    invoke-static {v0}, Lcom/digitalturbine/ignite/logger/Logger;->d(Ljava/lang/String;)LAc/G;

    const-string v0, "dbConversion IgniteDatabaseOpenHelper: start creating backup tables"

    invoke-static {v0}, Lcom/digitalturbine/ignite/logger/Logger;->d(Ljava/lang/String;)LAc/G;

    const-string v0, "CREATE TABLE IF NOT EXISTS tblAdditionalInfoBackup (ID INTEGER PRIMARY KEY autoincrement, Key  TEXT, Value  TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "dbConversion IgniteDatabaseOpenHelper: convertFromCKToAES backup table created"

    invoke-static {v0}, Lcom/digitalturbine/ignite/logger/Logger;->d(Ljava/lang/String;)LAc/G;

    const-string v0, "CREATE TABLE IF NOT EXISTS tblDownloadAppsBackup (AAA INTEGER PRIMARY KEY autoincrement, AAB INTEGER, AAC INTEGER, AAD TEXT, AAE TEXT, AAF TEXT, AAG INTEGER, AAH INTEGER, AAI TEXT, AAJ INTEGER, AAK TEXT, AAL TEXT, AAM TEXT, AAN TEXT, AAO TEXT, AAP TEXT ,AAQ INTEGER, AAR INTEGER, AAS TEXT, AAT TEXT, AAU INTEGER, AAV TEXT, AAW INTEGER, AAX TEXT, AAY TEXT, AAZ INTEGER, ABB INTEGER, ABC TEXT, ABD TEXT, ABE TEXT, ABF TEXT, ABG INTEGER, ABH INTEGER, ABI INTEGER, ABJ TEXT, ABK TEXT, ABL INTEGER, ABM INTEGER, ABN TEXT, ABO TEXT, AFG TEXT, AFF TEXT, ABP TEXT, ABA TEXT, AFA TEXT, AFK INTEGER, AFB TEXT, AFH TEXT, AFI TEXT, AFE TEXT, AFC TEXT, AFD TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "dbConversion IgniteDatabaseOpenHelper: convertFromCKToAES tblDownloadAppsBackup created"

    invoke-static {v0}, Lcom/digitalturbine/ignite/logger/Logger;->d(Ljava/lang/String;)LAc/G;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE TABLE IF NOT EXISTS tblEventsBackup"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/LogiaGroup/LogiaDeck/Database/IgniteDatabaseOpenHelper;->TBL_EVENTS_FIELDS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "dbConversion IgniteDatabaseOpenHelper: convertFromCKToAES tblEventsBackup created"

    invoke-static {v0}, Lcom/digitalturbine/ignite/logger/Logger;->d(Ljava/lang/String;)LAc/G;

    const-string v0, "IgniteDatabaseOpenHelper: done creating backup tables"

    invoke-static {v0}, Lcom/digitalturbine/ignite/logger/Logger;->d(Ljava/lang/String;)LAc/G;

    const-string v0, "dbConversion IgniteDatabaseOpenHelper: start copying data to backup tables"

    invoke-static {v0}, Lcom/digitalturbine/ignite/logger/Logger;->d(Ljava/lang/String;)LAc/G;

    sget-object v0, Lcom/LogiaGroup/LogiaDeck/Database/IgniteDatabaseOpenHelper;->sourceDb:Landroid/database/sqlite/SQLiteDatabase;

    sget-boolean v1, Lcom/LogiaGroup/LogiaDeck/Database/IgniteDatabaseOpenHelper;->convertFromEncryptedTbl:Z

    invoke-static {v0, p1, v1}, Lcom/LogiaGroup/LogiaDeck/Database/DB;->convertAdditionalInfo(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase;Z)V

    const-string v0, "dbConversion IgniteDatabaseOpenHelper: converted additional info backup table created"

    invoke-static {v0}, Lcom/digitalturbine/ignite/logger/Logger;->d(Ljava/lang/String;)LAc/G;

    sget-object v0, Lcom/LogiaGroup/LogiaDeck/Database/IgniteDatabaseOpenHelper;->sourceDb:Landroid/database/sqlite/SQLiteDatabase;

    sget-boolean v1, Lcom/LogiaGroup/LogiaDeck/Database/IgniteDatabaseOpenHelper;->convertFromEncryptedTbl:Z

    invoke-static {v0, p1, v1}, Lcom/LogiaGroup/LogiaDeck/Database/DB;->convertDownloadApps2(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase;Z)V

    const-string v0, "dbConversion IgniteDatabaseOpenHelper: converted DownloadApps backup table created"

    invoke-static {v0}, Lcom/digitalturbine/ignite/logger/Logger;->d(Ljava/lang/String;)LAc/G;

    sget-object v0, Lcom/LogiaGroup/LogiaDeck/Database/IgniteDatabaseOpenHelper;->sourceDb:Landroid/database/sqlite/SQLiteDatabase;

    sget-boolean v1, Lcom/LogiaGroup/LogiaDeck/Database/IgniteDatabaseOpenHelper;->convertFromEncryptedTbl:Z

    invoke-static {v0, p1, v1}, Lcom/LogiaGroup/LogiaDeck/Database/DB;->convertEvents(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase;Z)V

    const-string v0, "dbConversion IgniteDatabaseOpenHelper: converted events table backup table created"

    invoke-static {v0}, Lcom/digitalturbine/ignite/logger/Logger;->d(Ljava/lang/String;)LAc/G;

    const-string v0, "dbConversion IgniteDatabaseOpenHelper: done copying data to backup tables"

    invoke-static {v0}, Lcom/digitalturbine/ignite/logger/Logger;->d(Ljava/lang/String;)LAc/G;

    const-string v0, "DROP TABLE IF EXISTS tblDownloadApps"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "dbConversion IgniteDatabaseOpenHelper: TBL_DOWNLOAD_APPS dropped  "

    invoke-static {v0}, Lcom/digitalturbine/ignite/logger/Logger;->d(Ljava/lang/String;)LAc/G;

    const-string v0, "CREATE TABLE IF NOT EXISTS tblDownloadApps (AAA INTEGER PRIMARY KEY autoincrement, AAB INTEGER, AAC INTEGER, AAD TEXT, AAE TEXT, AAF TEXT, AAG INTEGER, AAH INTEGER, AAI TEXT, AAJ INTEGER, AAK TEXT, AAL TEXT, AAM TEXT, AAN TEXT, AAO TEXT, AAP TEXT ,AAQ INTEGER, AAR INTEGER, AAS TEXT, AAT TEXT, AAU INTEGER, AAV TEXT, AAW INTEGER, AAX TEXT, AAY TEXT, AAZ INTEGER, ABB INTEGER, ABC TEXT, ABD TEXT, ABE TEXT, ABF TEXT, ABG INTEGER, ABH INTEGER, ABI INTEGER, ABJ TEXT, ABK TEXT, ABL INTEGER, ABM INTEGER, ABN TEXT, ABO TEXT, AFG TEXT, AFF TEXT, ABP TEXT, ABA TEXT, AFA TEXT, AFK INTEGER, AFB TEXT, AFH TEXT, AFI TEXT, AFE TEXT, AFC TEXT, AFD TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "dbConversion IgniteDatabaseOpenHelper: TBL_DOWNLOAD_APPS created  "

    invoke-static {v0}, Lcom/digitalturbine/ignite/logger/Logger;->d(Ljava/lang/String;)LAc/G;

    const-string v0, "dbConversion IgniteDatabaseOpenHelper: start truncating original tables"

    invoke-static {v0}, Lcom/digitalturbine/ignite/logger/Logger;->d(Ljava/lang/String;)LAc/G;

    const-string v0, "DROP TABLE IF EXISTS tblAdditionalInfo"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "dbConversion IgniteDatabaseOpenHelper: TBL_ADDITIONAL_INFO dropped  "

    invoke-static {v0}, Lcom/digitalturbine/ignite/logger/Logger;->d(Ljava/lang/String;)LAc/G;

    const-string v0, "CREATE TABLE IF NOT EXISTS tblAdditionalInfo (ID INTEGER PRIMARY KEY autoincrement, Key  TEXT, Value  TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "dbConversion IgniteDatabaseOpenHelper: TBL_ADDITIONAL_INFO created  "

    invoke-static {v0}, Lcom/digitalturbine/ignite/logger/Logger;->d(Ljava/lang/String;)LAc/G;

    const-string v0, "DROP TABLE IF EXISTS tblEvents"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "dbConversion IgniteDatabaseOpenHelper: TBL_EVENTS dropped  "

    invoke-static {v0}, Lcom/digitalturbine/ignite/logger/Logger;->d(Ljava/lang/String;)LAc/G;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE TABLE IF NOT EXISTS tblEvents"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/LogiaGroup/LogiaDeck/Database/IgniteDatabaseOpenHelper;->TBL_EVENTS_FIELDS:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "dbConversion IgniteDatabaseOpenHelper: TBL_EVENTS  created  "

    invoke-static {p0}, Lcom/digitalturbine/ignite/logger/Logger;->d(Ljava/lang/String;)LAc/G;

    const-string p0, "dbConversion IgniteDatabaseOpenHelper: done truncating original tables"

    invoke-static {p0}, Lcom/digitalturbine/ignite/logger/Logger;->d(Ljava/lang/String;)LAc/G;

    const-string p0, "dbConversion IgniteDatabaseOpenHelper: start copying from backup to orig tables"

    invoke-static {p0}, Lcom/digitalturbine/ignite/logger/Logger;->d(Ljava/lang/String;)LAc/G;

    const/4 p0, 0x0

    sput-boolean p0, Lcom/LogiaGroup/LogiaDeck/Encryption/Encrypter;->conversionMode:Z

    invoke-static {p1}, Lcom/LogiaGroup/LogiaDeck/Database/DB;->copyDataFromOldDBToEncryptedDBforAdditionalInfoTable(Landroid/database/sqlite/SQLiteDatabase;)V

    const-string p0, "dbConversion IgniteDatabaseOpenHelper:copied additional info and encrypted from backup to original"

    invoke-static {p0}, Lcom/digitalturbine/ignite/logger/Logger;->d(Ljava/lang/String;)LAc/G;

    invoke-static {p1}, Lcom/LogiaGroup/LogiaDeck/Database/DB;->copyDataFromOldDBToEncryptedDBforDownloadAppTable2(Landroid/database/sqlite/SQLiteDatabase;)V

    const-string p0, "dbConversion IgniteDatabaseOpenHelper:copied apps and encrypted from backup to original"

    invoke-static {p0}, Lcom/digitalturbine/ignite/logger/Logger;->d(Ljava/lang/String;)LAc/G;

    invoke-static {p1}, Lcom/LogiaGroup/LogiaDeck/Database/DB;->copyDataFromOldDBToEncryptedDBforEventsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    const-string p0, "dbConversion IgniteDatabaseOpenHelper:copied events and encrypted from backup to original"

    invoke-static {p0}, Lcom/digitalturbine/ignite/logger/Logger;->d(Ljava/lang/String;)LAc/G;

    const-string p0, "dbConversion IgniteDatabaseOpenHelper: done copying from backup to orig tables"

    invoke-static {p0}, Lcom/digitalturbine/ignite/logger/Logger;->d(Ljava/lang/String;)LAc/G;

    const-string p0, "dbConversion IgniteDatabaseOpenHelper: mark db as converted and create encryption tbl"

    invoke-static {p0}, Lcom/digitalturbine/ignite/logger/Logger;->d(Ljava/lang/String;)LAc/G;

    invoke-static {}, Lcom/LogiaGroup/LogiaDeck/IgniteCommons;->getInstance()Lcom/LogiaGroup/LogiaDeck/IgniteCommons;

    move-result-object p0

    invoke-virtual {p0}, Lcom/LogiaGroup/LogiaDeck/IgniteCommons;->getStorage()Lcom/digitalturbine/ignite/storage/IgniteStorage;

    move-result-object p0

    invoke-static {}, Lcom/LogiaGroup/LogiaDeck/IgniteCommons;->getInstance()Lcom/LogiaGroup/LogiaDeck/IgniteCommons;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "DB_CONVERTED"

    invoke-virtual {p0, v1, v0}, Lcom/digitalturbine/ignite/storage/IgniteStorage;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    const-string p0, "CREATE TABLE IF NOT EXISTS tblEncryption (ACA TEXT);"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "dbConversion IgniteDatabaseOpenHelper: ************ start cleanup ******************"

    invoke-static {p0}, Lcom/digitalturbine/ignite/logger/Logger;->d(Ljava/lang/String;)LAc/G;

    const-string p0, "IgniteDatabaseOpenHelper: start dropping backup tables"

    invoke-static {p0}, Lcom/digitalturbine/ignite/logger/Logger;->d(Ljava/lang/String;)LAc/G;

    const-string p0, "DROP TABLE IF EXISTS tblAdditionalInfoBackup"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "IgniteDatabaseOpenHelper: backup table dropped"

    invoke-static {p0}, Lcom/digitalturbine/ignite/logger/Logger;->d(Ljava/lang/String;)LAc/G;

    const-string p0, "DROP TABLE IF EXISTS tblDownloadAppsBackup"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "IgniteDatabaseOpenHelper: backup tblDownloadAppsBackup table dropped"

    invoke-static {p0}, Lcom/digitalturbine/ignite/logger/Logger;->d(Ljava/lang/String;)LAc/G;

    const-string p0, "DROP TABLE IF EXISTS tblEventsBackup"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "IgniteDatabaseOpenHelper: backup tblEventsBackup table dropped"

    invoke-static {p0}, Lcom/digitalturbine/ignite/logger/Logger;->d(Ljava/lang/String;)LAc/G;

    const-string p0, "IgniteDatabaseOpenHelper: done dropping backup tables"

    invoke-static {p0}, Lcom/digitalturbine/ignite/logger/Logger;->d(Ljava/lang/String;)LAc/G;

    const-string p0, "dbConversion **********  end cleanup ****************"

    invoke-static {p0}, Lcom/digitalturbine/ignite/logger/Logger;->d(Ljava/lang/String;)LAc/G;

    const-string p0, "dbConversion **********  end conversion ****************"

    invoke-static {p0}, Lcom/digitalturbine/ignite/logger/Logger;->d(Ljava/lang/String;)LAc/G;

    return-void
.end method

.method private copyOldDbIfExist(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 6

    const-string v0, "dbConversionIgniteDatabaseOpenHelper: copyOldDbIfExist"

    invoke-static {v0}, Lcom/digitalturbine/ignite/logger/Logger;->d(Ljava/lang/String;)LAc/G;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/LogiaGroup/LogiaDeck/Database/IgniteDatabaseOpenHelper;->oldDbExist:Z

    const-string v1, "IgniteDB"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/LogiaGroup/LogiaDeck/Database/IgniteDatabaseOpenHelper;->doesDatabaseExist(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "dbConversion start conversion reason: db with old name found"

    invoke-static {v3}, Lcom/digitalturbine/ignite/logger/Logger;->d(Ljava/lang/String;)LAc/G;

    sput-boolean v0, Lcom/LogiaGroup/LogiaDeck/Database/IgniteDatabaseOpenHelper;->convertFromEncryptedTbl:Z

    const/4 v3, 0x1

    sput-boolean v3, Lcom/LogiaGroup/LogiaDeck/Database/IgniteDatabaseOpenHelper;->oldDbExist:Z

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    sput-object v4, Lcom/LogiaGroup/LogiaDeck/Database/IgniteDatabaseOpenHelper;->sourceDb:Landroid/database/sqlite/SQLiteDatabase;

    sput-boolean v3, Lcom/LogiaGroup/LogiaDeck/Encryption/Encrypter;->conversionMode:Z

    invoke-direct {p0, p2}, Lcom/LogiaGroup/LogiaDeck/Database/IgniteDatabaseOpenHelper;->convert(Landroid/database/sqlite/SQLiteDatabase;)V

    sput-boolean v0, Lcom/LogiaGroup/LogiaDeck/Encryption/Encrypter;->conversionMode:Z

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "dbConversion about to delete old db "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/digitalturbine/ignite/logger/Logger;->d(Ljava/lang/String;)LAc/G;

    invoke-virtual {p1, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "dbConversion "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " deleted "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/digitalturbine/ignite/logger/Logger;->d(Ljava/lang/String;)LAc/G;

    return v3

    :cond_0
    const-string p0, "dbConversionno need for conversion - db with old name was not found"

    invoke-static {p0}, Lcom/digitalturbine/ignite/logger/Logger;->d(Ljava/lang/String;)LAc/G;

    return v0
.end method

.method private createTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const-string v0, "CREATE TABLE IF NOT EXISTS tblDownloadApps (AAA INTEGER PRIMARY KEY autoincrement, AAB INTEGER, AAC INTEGER, AAD TEXT, AAE TEXT, AAF TEXT, AAG INTEGER, AAH INTEGER, AAI TEXT, AAJ INTEGER, AAK TEXT, AAL TEXT, AAM TEXT, AAN TEXT, AAO TEXT, AAP TEXT ,AAQ INTEGER, AAR INTEGER, AAS TEXT, AAT TEXT, AAU INTEGER, AAV TEXT, AAW INTEGER, AAX TEXT, AAY TEXT, AAZ INTEGER, ABB INTEGER, ABC TEXT, ABD TEXT, ABE TEXT, ABF TEXT, ABG INTEGER, ABH INTEGER, ABI INTEGER, ABJ TEXT, ABK TEXT, ABL INTEGER, ABM INTEGER, ABN TEXT, ABO TEXT, AFG TEXT, AFF TEXT, ABP TEXT, ABA TEXT, AFA TEXT, AFK INTEGER, AFB TEXT, AFH TEXT, AFI TEXT, AFE TEXT, AFC TEXT, AFD TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE TABLE IF NOT EXISTS tblAdditionalInfo"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/LogiaGroup/LogiaDeck/Database/IgniteDatabaseOpenHelper;->TBL_ADDITIONAL_INFO_FIELDS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE TABLE IF NOT EXISTS tblEvents"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/LogiaGroup/LogiaDeck/Database/IgniteDatabaseOpenHelper;->TBL_EVENTS_FIELDS:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "IgniteDatabaseOpenHelper: about to create TBL_ENCRYPTIONtblEncryption"

    invoke-static {p0}, Lcom/digitalturbine/ignite/logger/Logger;->d(Ljava/lang/String;)LAc/G;

    const-string p0, "CREATE TABLE IF NOT EXISTS tblEncryption (ACA TEXT);"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "IgniteDatabaseOpenHelper: tbl created TBL_ENCRYPTIONtblEncryption"

    invoke-static {p0}, Lcom/digitalturbine/ignite/logger/Logger;->d(Ljava/lang/String;)LAc/G;

    return-void
.end method

.method private static doesDatabaseExist(Ljava/io/File;)Z
    .locals 0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method private migrateAddRawValues(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 19

    move-object/from16 v1, p1

    :try_start_0
    const-string v0, "[IgniteDatabaseOpenHelper] migrateAddRawValues is called."

    invoke-static {v0}, Lcom/digitalturbine/ignite/logger/Logger;->d(Ljava/lang/String;)LAc/G;

    new-instance v5, Lcom/digitalturbine/ignite/deviceinfo/SimInfoBase;

    sget-object v0, Lcom/LogiaGroup/LogiaDeck/Database/IgniteDatabaseOpenHelper;->mContext:Landroid/content/Context;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v5, v0, v2}, Lcom/digitalturbine/ignite/deviceinfo/SimInfoBase;-><init>(Landroid/content/Context;Ljava/lang/Boolean;)V

    new-instance v6, Lcom/digitalturbine/ignite/deviceinfo/CountryInfoReflection;

    sget-object v0, Lcom/LogiaGroup/LogiaDeck/Database/IgniteDatabaseOpenHelper;->mContext:Landroid/content/Context;

    invoke-direct {v6, v0}, Lcom/digitalturbine/ignite/deviceinfo/CountryInfoReflection;-><init>(Landroid/content/Context;)V

    new-instance v7, Lcom/digitalturbine/ignite/deviceinfo/WifiInfoUtil;

    sget-object v0, Lcom/LogiaGroup/LogiaDeck/Database/IgniteDatabaseOpenHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-direct {v7, v0}, Lcom/digitalturbine/ignite/deviceinfo/WifiInfoUtil;-><init>(Landroid/net/wifi/WifiManager;)V

    new-instance v8, Lcom/digitalturbine/ignite/util/LocaleHelper;

    sget-object v0, Lcom/LogiaGroup/LogiaDeck/Database/IgniteDatabaseOpenHelper;->mContext:Landroid/content/Context;

    invoke-direct {v8, v0}, Lcom/digitalturbine/ignite/util/LocaleHelper;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/digitalturbine/ignite/Ignite;->getDefaultController()Lcom/digitalturbine/ignite/controller/IgniteController;

    move-result-object v0

    new-instance v2, Lcom/digitalturbine/ignite/deviceinfo/DeviceInfoBase;

    sget-object v3, Lcom/LogiaGroup/LogiaDeck/Database/IgniteDatabaseOpenHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/digitalturbine/ignite/controller/IgniteController;->getIgniteConfig()Lcom/digitalturbine/ignite/config/IgniteConfig;

    move-result-object v4

    invoke-virtual {v0}, Lcom/digitalturbine/ignite/controller/IgniteController;->getPreferences()Lcom/digitalturbine/ignite/helper/IgnitePreferences;

    move-result-object v9

    invoke-virtual {v0}, Lcom/digitalturbine/ignite/controller/IgniteController;->getDbHelper()Lcom/digitalturbine/ignite/Database/DBHelper;

    move-result-object v10

    invoke-direct/range {v2 .. v10}, Lcom/digitalturbine/ignite/deviceinfo/DeviceInfoBase;-><init>(Landroid/content/Context;Lcom/digitalturbine/ignite/config/IgniteConfig;Lcom/digitalturbine/ignite/deviceinfo/SimInfo;Lcom/digitalturbine/ignite/deviceinfo/CountryInfo;Lcom/digitalturbine/ignite/deviceinfo/WifiInfoUtil;Lcom/digitalturbine/ignite/util/LocaleHelper;Lcom/digitalturbine/ignite/helper/IgnitePreferences;Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/digitalturbine/ignite/deviceinfo/DeviceInfoBase;->getIMEI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/digitalturbine/ignite/deviceinfo/DeviceInfoBase;->getIMSI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/digitalturbine/ignite/deviceinfo/DeviceInfo;->getMdns()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2}, Lcom/digitalturbine/ignite/deviceinfo/DeviceInfoBase;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/digitalturbine/ignite/deviceinfo/DeviceInfoBase;->getODeviceId()Ljava/lang/String;

    move-result-object v8

    const-string v9, "IMEI_GUID"

    const-string v10, "IMSI_GUID"

    const-string v11, "MDN1_GUID"

    const-string v12, "MDN2_GUID"

    const-string v13, "DEVICE_ID_GUID"

    const-string v14, "O_DEVICE_ID_GUID"

    filled-new-array/range {v9 .. v14}, [Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v11, 0x1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v12

    const-string v13, "IMEI_GUID"

    const-string v14, "IMSI_GUID"

    const-string v15, "MDN1_GUID"

    const-string v16, "MDN2_GUID"

    const-string v17, "DEVICE_ID_GUID"

    const-string v18, "O_DEVICE_ID_GUID"

    filled-new-array/range {v13 .. v18}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v11}, Lcom/LogiaGroup/LogiaDeck/Database/DB;->encryptStringArray([Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v11}, Lcom/LogiaGroup/LogiaDeck/Database/DB;->encryptStringArray([Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/digitalturbine/ignite/deviceinfo/DeviceInfoBase;->getSimData()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    move v6, v10

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MULTI_SLOT_IMSI_GUID"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/digitalturbine/ignite/deviceinfo/MobileInfo;

    invoke-virtual {v7}, Lcom/digitalturbine/ignite/deviceinfo/MobileInfo;->getImsi()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    move-object v4, v2

    move-object v5, v4

    :cond_1
    if-eqz v4, :cond_2

    invoke-static {v4, v11}, Lcom/LogiaGroup/LogiaDeck/Database/DB;->encryptStringArray([Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto :goto_1

    :cond_2
    move-object v6, v2

    :goto_1
    if-eqz v5, :cond_3

    invoke-static {v5, v11}, Lcom/LogiaGroup/LogiaDeck/Database/DB;->encryptStringArray([Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v2

    :cond_3
    move v7, v10

    :goto_2
    array-length v0, v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    const-string v8, "=\'"

    const-string v11, "Key"

    const-string v14, " WHERE "

    const-string v15, "UPDATE tblAdditionalInfo SET RawValue="

    const-string v16, "NULL"

    const-string v10, "\'"

    if-ge v7, v0, :cond_5

    :try_start_1
    aget-object v0, v12, v7

    if-nez v0, :cond_4

    move-object/from16 v17, v2

    :goto_3
    move-object/from16 v0, v16

    goto :goto_4

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v17, v2

    :try_start_2
    aget-object v2, v3, v7

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    goto :goto_3

    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v13, v7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    move-object/from16 v17, v2

    :goto_5
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IgniteDatabaseOpenHelper: error migrating additionalInfo rawKey: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v9, v7

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/digitalturbine/ignite/logger/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)LAc/G;

    :goto_6
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v2, v17

    const/4 v10, 0x0

    goto :goto_2

    :cond_5
    move-object/from16 v17, v2

    if-eqz v6, :cond_7

    if-eqz v17, :cond_7

    const/4 v2, 0x0

    :goto_7
    array-length v0, v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    if-ge v2, v0, :cond_7

    :try_start_4
    aget-object v0, v5, v2

    if-nez v0, :cond_6

    move-object/from16 v0, v16

    goto :goto_8

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v17, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v6, v2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_9

    :catch_2
    move-exception v0

    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IgniteDatabaseOpenHelper: error migrating additionalInfo multiSlotKey: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v4, v2

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/digitalturbine/ignite/logger/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)LAc/G;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :goto_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :catch_3
    move-exception v0

    const-string v1, "Failed to migrate raw values to additional info"

    invoke-static {v1, v0}, Lcom/digitalturbine/ignite/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)LAc/G;

    :cond_7
    return-void
.end method

.method private upgradeTblAdditionalInfo(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_backup"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE TABLE "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "INSERT INTO "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " (key, value) SELECT key, value FROM "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "DROP TABLE "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private upgradeTblDownloadApps(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "DROP TABLE "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ";"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE tblDownloadApps (AAA INTEGER PRIMARY KEY autoincrement, AAB INTEGER, AAC INTEGER, AAD TEXT, AAE TEXT, AAF TEXT, AAG INTEGER, AAH INTEGER, AAI TEXT, AAJ INTEGER, AAK TEXT, AAL TEXT, AAM TEXT, AAN TEXT, AAO TEXT, AAP TEXT ,AAQ INTEGER, AAR INTEGER, AAS TEXT, AAT TEXT, AAU INTEGER, AAV TEXT, AAW INTEGER, AAX TEXT, AAY TEXT, AAZ INTEGER, ABB INTEGER, ABC TEXT, ABD TEXT, ABE TEXT, ABF TEXT, ABG INTEGER, ABH INTEGER, ABI INTEGER, ABJ TEXT, ABK TEXT, ABL INTEGER, ABM INTEGER, ABN TEXT, ABO TEXT, AFG TEXT, AFF TEXT, ABP TEXT, ABA TEXT, AFA TEXT, AFK INTEGER, AFB TEXT, AFH TEXT, AFI TEXT, AFE TEXT, AFC TEXT, AFD TEXT);"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private upgradeTblEncryption(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_backup"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IgniteDatabaseOpenHelper:upgradeTblEncryption creating backupTable "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/digitalturbine/ignite/logger/Logger;->d(Ljava/lang/String;)LAc/G;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE TABLE "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "INSERT INTO "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " (ACA) SELECT ACA FROM "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "IgniteDatabaseOpenHelper:upgradeTblEncryption insert  "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/digitalturbine/ignite/logger/Logger;->d(Ljava/lang/String;)LAc/G;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "DROP TABLE "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/digitalturbine/ignite/logger/Logger;->d(Ljava/lang/String;)LAc/G;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private upgradeTblEvents(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_backup"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE TABLE "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "CREATE TABLE IF NOT EXISTS "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "INSERT INTO "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " (ABO, ABN) SELECT ABO, ABN FROM "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "DROP TABLE "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " (ABO, ABN)  SELECT ABO, ABN FROM "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "IgniteDatabaseOpenHelper: OnCreate()"

    invoke-static {v0}, Lcom/digitalturbine/ignite/logger/Logger;->d(Ljava/lang/String;)LAc/G;

    invoke-direct {p0, p1}, Lcom/LogiaGroup/LogiaDeck/Database/IgniteDatabaseOpenHelper;->createTables(Landroid/database/sqlite/SQLiteDatabase;)V

    const-string v0, "dbConversion IgniteDatabaseOpenHelper: OnCreate() check if old db exist"

    invoke-static {v0}, Lcom/digitalturbine/ignite/logger/Logger;->d(Ljava/lang/String;)LAc/G;

    sget-object v0, Lcom/LogiaGroup/LogiaDeck/Database/IgniteDatabaseOpenHelper;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/LogiaGroup/LogiaDeck/Database/IgniteDatabaseOpenHelper;->copyOldDbIfExist(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)Z

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    const-string v0, "dbConversion No need to convert db. reason: Database version "

    const-string v1, "[IgniteDatabaseOpenHelper] onUpgrade(): new version, old version"

    invoke-static {v1}, Lcom/digitalturbine/ignite/logger/Logger;->d(Ljava/lang/String;)LAc/G;

    const-string v1, "tblAdditionalInfo"

    const/16 v2, 0x15

    if-le p3, p2, :cond_1

    if-gt p3, v2, :cond_1

    const-string p3, "[IgniteDatabaseOpenHelper] onUpgrade(): on Upgrade was called, Ignite DB was updated."

    invoke-static {p3}, Lcom/digitalturbine/ignite/logger/Logger;->d(Ljava/lang/String;)LAc/G;

    const/16 p3, 0xa

    if-gt p2, p3, :cond_0

    :try_start_0
    const-string p2, "dbConversion upgrading from version less then 10 checking id conversion needed"

    invoke-static {p2}, Lcom/digitalturbine/ignite/logger/Logger;->d(Ljava/lang/String;)LAc/G;

    const/4 p2, 0x1

    sput-boolean p2, Lcom/LogiaGroup/LogiaDeck/Encryption/Encrypter;->conversionMode:Z

    invoke-direct {p0, p1}, Lcom/LogiaGroup/LogiaDeck/Database/IgniteDatabaseOpenHelper;->checkConversion(Landroid/database/sqlite/SQLiteDatabase;)Z

    const/4 p2, 0x0

    sput-boolean p2, Lcom/LogiaGroup/LogiaDeck/Encryption/Encrypter;->conversionMode:Z

    goto :goto_0

    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " already encypted"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/digitalturbine/ignite/logger/Logger;->d(Ljava/lang/String;)LAc/G;

    :goto_0
    iget-object p2, p0, Lcom/LogiaGroup/LogiaDeck/Database/IgniteDatabaseOpenHelper;->TBL_ADDITIONAL_INFO_FIELDS:Ljava/lang/String;

    invoke-direct {p0, p1, v1, p2}, Lcom/LogiaGroup/LogiaDeck/Database/IgniteDatabaseOpenHelper;->upgradeTblAdditionalInfo(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "tblEvents"

    iget-object p3, p0, Lcom/LogiaGroup/LogiaDeck/Database/IgniteDatabaseOpenHelper;->TBL_EVENTS_FIELDS:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3}, Lcom/LogiaGroup/LogiaDeck/Database/IgniteDatabaseOpenHelper;->upgradeTblEvents(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "[IgniteDatabaseOpenHelper] onUpgrade(): on Upgrade error."

    invoke-static {p1, p0}, Lcom/digitalturbine/ignite/logger/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)LAc/G;

    goto :goto_1

    :cond_1
    const-string p3, "tblDownloadApps"

    if-gt p2, v2, :cond_2

    const-string v0, "AFA"

    invoke-direct {p0, p1, p3, v0}, Lcom/LogiaGroup/LogiaDeck/Database/IgniteDatabaseOpenHelper;->alterAddTextColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "AFB"

    invoke-direct {p0, p1, p3, v0}, Lcom/LogiaGroup/LogiaDeck/Database/IgniteDatabaseOpenHelper;->alterAddTextColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "AFH"

    invoke-direct {p0, p1, p3, v0}, Lcom/LogiaGroup/LogiaDeck/Database/IgniteDatabaseOpenHelper;->alterAddTextColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "AFI"

    invoke-direct {p0, p1, p3, v0}, Lcom/LogiaGroup/LogiaDeck/Database/IgniteDatabaseOpenHelper;->alterAddTextColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "AFC"

    invoke-direct {p0, p1, p3, v0}, Lcom/LogiaGroup/LogiaDeck/Database/IgniteDatabaseOpenHelper;->alterAddTextColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "AFD"

    invoke-direct {p0, p1, p3, v0}, Lcom/LogiaGroup/LogiaDeck/Database/IgniteDatabaseOpenHelper;->alterAddTextColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "AFE"

    invoke-direct {p0, p1, p3, v0}, Lcom/LogiaGroup/LogiaDeck/Database/IgniteDatabaseOpenHelper;->alterAddTextColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "AFG"

    invoke-direct {p0, p1, p3, v0}, Lcom/LogiaGroup/LogiaDeck/Database/IgniteDatabaseOpenHelper;->alterAddTextColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "AFF"

    invoke-direct {p0, p1, p3, v0}, Lcom/LogiaGroup/LogiaDeck/Database/IgniteDatabaseOpenHelper;->alterAddTextColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/16 v0, 0x20

    if-ge p2, v0, :cond_3

    const-string v0, "RawValue"

    invoke-direct {p0, p1, v1, v0}, Lcom/LogiaGroup/LogiaDeck/Database/IgniteDatabaseOpenHelper;->alterAddTextColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/16 v0, 0x22

    const-string v1, "AFK"

    if-ge p2, v0, :cond_4

    invoke-direct {p0, p1, p3, v1}, Lcom/LogiaGroup/LogiaDeck/Database/IgniteDatabaseOpenHelper;->alterAddIntegerColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const/16 v0, 0x24

    if-ge p2, v0, :cond_5

    const-string v0, "[IgniteDatabaseOpenHelper] Old DB version is below 36, doing migration."

    invoke-static {v0}, Lcom/digitalturbine/ignite/logger/Logger;->d(Ljava/lang/String;)LAc/G;

    invoke-direct {p0, p1, p3, v1}, Lcom/LogiaGroup/LogiaDeck/Database/IgniteDatabaseOpenHelper;->alterAddIntegerColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const/16 v0, 0x27

    if-ge p2, v0, :cond_6

    const/16 v0, 0x25

    if-lt p2, v0, :cond_6

    const-string p2, "[IgniteDatabaseOpenHelper] 37 <= oldVersion < 39, doing migration. Warning could be thrown."

    invoke-static {p2}, Lcom/digitalturbine/ignite/logger/Logger;->d(Ljava/lang/String;)LAc/G;

    invoke-direct {p0, p1, p3, v1}, Lcom/LogiaGroup/LogiaDeck/Database/IgniteDatabaseOpenHelper;->alterAddIntegerColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_1
    return-void
.end method
