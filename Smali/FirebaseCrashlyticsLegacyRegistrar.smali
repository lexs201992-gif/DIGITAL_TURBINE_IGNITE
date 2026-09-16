.class public final Lcom/google/firebase/crashlytics/ktx/FirebaseCrashlyticsLegacyRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0006\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00050\u0004H\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/google/firebase/crashlytics/ktx/FirebaseCrashlyticsLegacyRegistrar;",
        "Lcom/google/firebase/components/ComponentRegistrar;",
        "<init>",
        "()V",
        "",
        "LO9/c;",
        "getComponents",
        "()Ljava/util/List;",
        "com.google.firebase-firebase-crashlytics-ktx"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LO9/c;",
            ">;"
        }
    .end annotation

    const-string p0, "fire-cls-ktx"

    const-string v0, "19.4.2"

    invoke-static {p0, v0}, LQc/a;->l(Ljava/lang/String;Ljava/lang/String;)LO9/c;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/w1;->A(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
