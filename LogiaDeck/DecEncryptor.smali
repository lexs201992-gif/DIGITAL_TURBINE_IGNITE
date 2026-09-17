.class public Lcom/LogiaGroup/LogiaDeck/Encryption/DecEncryptor;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static CIPHER_ALGORITHM:Ljava/lang/String; = "AES"

.field private static CIPHER_TRANSFORMATION:Ljava/lang/String; = "AES/CBC/PKCS5Padding"

.field private static INITIAL_VECTOR_TOKEN:Ljava/lang/String;

.field private static MESSAGEDIGEST_ALGORITHM:Ljava/lang/String;

.field private static aesCipher:Ljavax/crypto/Cipher;

.field private static ivParameterSpec:Ljavax/crypto/spec/IvParameterSpec;

.field private static rawSecretKey:[B

.field private static secretKey:Ljavax/crypto/SecretKey;


# instance fields
.field private final characterEncoding:Ljava/lang/String;

.field private keystore:Lcom/digitalturbine/ignite/security/IgniteKeystore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/LogiaGroup/LogiaDeck/Encryption/DecEncryptor;->rawSecretKey:[B

    const-string v0, "MD5"

    sput-object v0, Lcom/LogiaGroup/LogiaDeck/Encryption/DecEncryptor;->MESSAGEDIGEST_ALGORITHM:Ljava/lang/String;

    const-string v0, "$"

    sput-object v0, Lcom/LogiaGroup/LogiaDeck/Encryption/DecEncryptor;->INITIAL_VECTOR_TOKEN:Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x6t
        0x5t
        0x4t
        0x3t
        0x2t
        0x1t
        0x7t
        0x7t
        0x7t
        0x7t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/LogiaGroup/LogiaDeck/Encryption/DecEncryptor;->characterEncoding:Ljava/lang/String;

    :try_start_0
    invoke-static {}, Lcom/digitalturbine/ignite/security/IgniteKeystoreFactory;->getInstance()Lcom/digitalturbine/ignite/security/IgniteKeystoreFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/digitalturbine/ignite/security/IgniteKeystoreFactory;->getDefaultKeystore()Lcom/digitalturbine/ignite/security/IgniteKeystore;

    move-result-object v0

    iput-object v0, p0, Lcom/LogiaGroup/LogiaDeck/Encryption/DecEncryptor;->keystore:Lcom/digitalturbine/ignite/security/IgniteKeystore;

    sget-object p0, Lcom/LogiaGroup/LogiaDeck/Encryption/DecEncryptor;->CIPHER_TRANSFORMATION:Ljava/lang/String;

    invoke-static {p0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p0

    sput-object p0, Lcom/LogiaGroup/LogiaDeck/Encryption/DecEncryptor;->aesCipher:Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "No such padding PKCS5"

    invoke-static {v0, p0}, Lcom/digitalturbine/ignite/logger/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)LAc/G;

    goto :goto_0

    :catch_1
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No such algorithm "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/LogiaGroup/LogiaDeck/Encryption/DecEncryptor;->CIPHER_ALGORITHM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/digitalturbine/ignite/logger/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)LAc/G;

    :goto_0
    return-void
.end method

.method private b64decode(Ljava/lang/String;)[B
    .locals 0

    const/4 p0, 0x0

    invoke-static {p1, p0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    return-object p0
.end method

.method private b64encode([B)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    invoke-static {p1, p0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private encryptInternal([B[B[B)[B
    .locals 2

    sget-object p0, Lcom/LogiaGroup/LogiaDeck/Encryption/DecEncryptor;->CIPHER_TRANSFORMATION:Ljava/lang/String;

    invoke-static {p0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p0

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v1, Lcom/LogiaGroup/LogiaDeck/Encryption/DecEncryptor;->CIPHER_ALGORITHM:Ljava/lang/String;

    invoke-direct {v0, p2, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance p2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {p2, p3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 p3, 0x1

    invoke-virtual {p0, p3, v0, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {p0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0
.end method

.method private extractInitialVector(Ljava/lang/String;)[B
    .locals 2

    sget-object v0, Lcom/LogiaGroup/LogiaDeck/Encryption/DecEncryptor;->INITIAL_VECTOR_TOKEN:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v1, Lcom/LogiaGroup/LogiaDeck/Encryption/DecEncryptor;->INITIAL_VECTOR_TOKEN:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    sget-object v1, Lcom/LogiaGroup/LogiaDeck/Encryption/DecEncryptor;->INITIAL_VECTOR_TOKEN:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/LogiaGroup/LogiaDeck/Encryption/DecEncryptor;->b64decode(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method private getAlignedKey([B)[B
    .locals 2

    iget-object p0, p0, Lcom/LogiaGroup/LogiaDeck/Encryption/DecEncryptor;->keystore:Lcom/digitalturbine/ignite/security/IgniteKeystore;

    invoke-virtual {p0}, Lcom/digitalturbine/ignite/security/IgniteKeystore;->getUseKeyAsIV()Z

    move-result p0

    if-nez p0, :cond_0

    array-length p0, p1

    const/16 v0, 0x20

    if-ge p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x10

    :cond_1
    new-array p0, v0, [B

    array-length v1, p1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v1, p0, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0
.end method

.method private getInitialVector()[B
    .locals 1

    iget-object v0, p0, Lcom/LogiaGroup/LogiaDeck/Encryption/DecEncryptor;->keystore:Lcom/digitalturbine/ignite/security/IgniteKeystore;

    invoke-virtual {v0}, Lcom/digitalturbine/ignite/security/IgniteKeystore;->getInitialVector()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/LogiaGroup/LogiaDeck/Encryption/DecEncryptor;->getAlignedKey([B)[B

    move-result-object p0

    return-object p0
.end method

.method private getKey()[B
    .locals 1

    iget-object v0, p0, Lcom/LogiaGroup/LogiaDeck/Encryption/DecEncryptor;->keystore:Lcom/digitalturbine/ignite/security/IgniteKeystore;

    invoke-virtual {v0}, Lcom/digitalturbine/ignite/security/IgniteKeystore;->getKey()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/LogiaGroup/LogiaDeck/Encryption/DecEncryptor;->getAlignedKey([B)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/LogiaGroup/LogiaDeck/Encryption/DecEncryptor;->getKey()[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/LogiaGroup/LogiaDeck/Encryption/DecEncryptor;->decrypt(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/LogiaGroup/LogiaDeck/Encryption/DecEncryptor;->getAlignedKey([B)[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/LogiaGroup/LogiaDeck/Encryption/DecEncryptor;->decrypt(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public decrypt(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    return-object p1

    :cond_1
    invoke-direct {p0, p1}, Lcom/LogiaGroup/LogiaDeck/Encryption/DecEncryptor;->extractInitialVector(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/LogiaGroup/LogiaDeck/Encryption/DecEncryptor;->getInitialVector()[B

    move-result-object v0

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/LogiaGroup/LogiaDeck/Encryption/DecEncryptor;->INITIAL_VECTOR_TOKEN:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0}, Lcom/LogiaGroup/LogiaDeck/Encryption/DecEncryptor;->decrypt([B[B[B)[B

    move-result-object p0

    const-string p1, "UTF-8"

    invoke-direct {v1, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method public decrypt([B[B[B)[B
    .locals 2

    sget-object p0, Lcom/LogiaGroup/LogiaDeck/Encryption/DecEncryptor;->CIPHER_TRANSFORMATION:Ljava/lang/String;

    invoke-static {p0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p0

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v1, Lcom/LogiaGroup/LogiaDeck/Encryption/DecEncryptor;->CIPHER_ALGORITHM:Ljava/lang/String;

    invoke-direct {v0, p2, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance p2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {p2, p3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 p3, 0x2

    invoke-virtual {p0, p3, v0, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {p0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0
.end method

.method public encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/digitalturbine/ignite/security/IgniteKeystoreFactory;->getInstance()Lcom/digitalturbine/ignite/security/IgniteKeystoreFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/digitalturbine/ignite/security/IgniteKeystoreFactory;->getDefaultKeystore()Lcom/digitalturbine/ignite/security/IgniteKeystore;

    move-result-object v0

    invoke-direct {p0}, Lcom/LogiaGroup/LogiaDeck/Encryption/DecEncryptor;->getKey()[B

    move-result-object v1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {p0}, Lcom/LogiaGroup/LogiaDeck/Encryption/DecEncryptor;->getInitialVector()[B

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/digitalturbine/ignite/security/IgniteKeystore;->getUseKeyAsIV()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/LogiaGroup/LogiaDeck/Encryption/DecEncryptor;->INITIAL_VECTOR_TOKEN:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/LogiaGroup/LogiaDeck/Encryption/DecEncryptor;->INITIAL_VECTOR_TOKEN:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Lcom/LogiaGroup/LogiaDeck/Encryption/DecEncryptor;->b64encode([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/LogiaGroup/LogiaDeck/Encryption/DecEncryptor;->INITIAL_VECTOR_TOKEN:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-direct {p0, p1, v1, v2}, Lcom/LogiaGroup/LogiaDeck/Encryption/DecEncryptor;->encryptInternal([B[B[B)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/LogiaGroup/LogiaDeck/Encryption/DecEncryptor;->b64encode([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {p0, p1, p2, p2}, Lcom/LogiaGroup/LogiaDeck/Encryption/DecEncryptor;->encryptInternal([B[B[B)[B

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
