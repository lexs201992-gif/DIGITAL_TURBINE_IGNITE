.class public Lcom/LogiaGroup/LogiaDeck/DataModel/ServerResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/LogiaGroup/LogiaDeck/DataModel/ServerResponse$AppData;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "com.LogiaGroup.LogiaDeck.DataModel.ServerResponse"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toJson()Ljava/lang/String;
    .locals 1

    new-instance v0, LVa/k;

    invoke-direct {v0}, LVa/k;-><init>()V

    invoke-virtual {v0, p0}, LVa/k;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
