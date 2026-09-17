.class public Lcom/LogiaGroup/LogiaDeck/Encryption/Encrypter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CRYPT_LICENCE:Ljava/lang/String; = "VOLASECrypt_Ftw0BwxOLJEm"

.field public static final KEY_HEX:Ljava/lang/String; = "1434390B-0633-4A59-98A0-FCEACAF896D4"

.field private static final TAG:Ljava/lang/String; = "[Encrypter] "

.field public static conversionMode:Z = false


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/LogiaGroup/LogiaDeck/IgniteCommons;->getInstance()Lcom/LogiaGroup/LogiaDeck/IgniteCommons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/LogiaGroup/LogiaDeck/IgniteCommons;->getDataBaseEncryption()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/LogiaGroup/LogiaDeck/IgniteCommons;->getInstance()Lcom/LogiaGroup/LogiaDeck/IgniteCommons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/LogiaGroup/LogiaDeck/IgniteCommons;->getEncryptionTool()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/LogiaGroup/LogiaDeck/Encryption/DecEncryptor;

    invoke-direct {v0}, Lcom/LogiaGroup/LogiaDeck/Encryption/DecEncryptor;-><init>()V

    :try_start_0
    invoke-virtual {v0, p0}, Lcom/LogiaGroup/LogiaDeck/Encryption/DecEncryptor;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/LogiaGroup/LogiaDeck/Encryption/Encrypter;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/digitalturbine/ignite/logger/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)LAc/G;

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object p0
.end method

.method public static encrypt(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/LogiaGroup/LogiaDeck/Encryption/Encrypter;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encrypt(Ljava/lang/Long;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/LogiaGroup/LogiaDeck/Encryption/Encrypter;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/LogiaGroup/LogiaDeck/IgniteCommons;->getInstance()Lcom/LogiaGroup/LogiaDeck/IgniteCommons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/LogiaGroup/LogiaDeck/IgniteCommons;->getDataBaseEncryption()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/LogiaGroup/LogiaDeck/IgniteCommons;->getInstance()Lcom/LogiaGroup/LogiaDeck/IgniteCommons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/LogiaGroup/LogiaDeck/IgniteCommons;->getEncryptionTool()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/LogiaGroup/LogiaDeck/Encryption/DecEncryptor;

    invoke-direct {v0}, Lcom/LogiaGroup/LogiaDeck/Encryption/DecEncryptor;-><init>()V

    :try_start_0
    invoke-virtual {v0, p0}, Lcom/LogiaGroup/LogiaDeck/Encryption/DecEncryptor;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Encrypter: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/digitalturbine/ignite/logger/Logger;->d(Ljava/lang/String;)LAc/G;

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object p0
.end method
