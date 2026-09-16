.class public Lcom/google/android/gms/measurement/AppMeasurement;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static volatile b:Lcom/google/android/gms/measurement/AppMeasurement;


# instance fields
.field public final a:LD8/c;


# direct methods
.method public constructor <init>(LF8/X0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LD8/b;

    invoke-direct {v0, p1}, LD8/b;-><init>(LF8/X0;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->a:LD8/c;

    return-void
.end method

.method public constructor <init>(LF8/n0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LD8/a;

    invoke-direct {v0, p1}, LD8/a;-><init>(LF8/n0;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->a:LD8/c;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/android/gms/measurement/AppMeasurement;
    .locals 13
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/google/android/gms/measurement/AppMeasurement;->b:Lcom/google/android/gms/measurement/AppMeasurement;

    if-nez v0, :cond_2

    const-class v1, Lcom/google/android/gms/measurement/AppMeasurement;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/measurement/AppMeasurement;->b:Lcom/google/android/gms/measurement/AppMeasurement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :try_start_1
    const-class v2, Lcom/google/firebase/analytics/FirebaseAnalytics;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v3, "getScionFrontendApiImplementation"

    const-class v4, Landroid/content/Context;

    const-class v5, Landroid/os/Bundle;

    filled-new-array {v4, v5}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LF8/X0;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :catch_0
    move-object v2, v0

    :goto_0
    if-eqz v2, :cond_0

    :try_start_3
    new-instance p0, Lcom/google/android/gms/measurement/AppMeasurement;

    invoke-direct {p0, v2}, Lcom/google/android/gms/measurement/AppMeasurement;-><init>(LF8/X0;)V

    sput-object p0, Lcom/google/android/gms/measurement/AppMeasurement;->b:Lcom/google/android/gms/measurement/AppMeasurement;

    goto :goto_1

    :cond_0
    new-instance v2, Lcom/google/android/gms/internal/measurement/V;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v12}, Lcom/google/android/gms/internal/measurement/V;-><init>(JJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-static {p0, v2, v0}, LF8/n0;->l(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/V;Ljava/lang/Long;)LF8/n0;

    move-result-object p0

    new-instance v0, Lcom/google/android/gms/measurement/AppMeasurement;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/AppMeasurement;-><init>(LF8/n0;)V

    sput-object v0, Lcom/google/android/gms/measurement/AppMeasurement;->b:Lcom/google/android/gms/measurement/AppMeasurement;

    :cond_1
    :goto_1
    monitor-exit v1

    goto :goto_3

    :goto_2
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :cond_2
    :goto_3
    sget-object p0, Lcom/google/android/gms/measurement/AppMeasurement;->b:Lcom/google/android/gms/measurement/AppMeasurement;

    return-object p0
.end method


# virtual methods
.method public beginAdUnitExposure(Ljava/lang/String;)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->a:LD8/c;

    invoke-interface {p0, p1}, LF8/X0;->j(Ljava/lang/String;)V

    return-void
.end method

.method public clearConditionalUserProperty(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->a:LD8/c;

    invoke-interface {p0, p1, p2, p3}, LF8/X0;->k(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public endAdUnitExposure(Ljava/lang/String;)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->a:LD8/c;

    invoke-interface {p0, p1}, LF8/X0;->l(Ljava/lang/String;)V

    return-void
.end method

.method public generateEventId()J
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->a:LD8/c;

    invoke-interface {p0}, LF8/X0;->o()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAppInstanceId()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->a:LD8/c;

    invoke-interface {p0}, LF8/X0;->c()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getConditionalUserProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->a:LD8/c;

    invoke-interface {p0, p1, p2}, LF8/X0;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    if-nez p0, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    :goto_0
    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    new-instance v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lm8/A;->g(Ljava/lang/Object;)V

    const-string v1, "app_id"

    const-class v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p2, v1, v2, v3}, LF8/D0;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mAppId:Ljava/lang/String;

    const-string v1, "origin"

    invoke-static {p2, v1, v2, v3}, LF8/D0;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mOrigin:Ljava/lang/String;

    const-string v1, "name"

    invoke-static {p2, v1, v2, v3}, LF8/D0;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mName:Ljava/lang/String;

    const-string v1, "value"

    const-class v4, Ljava/lang/Object;

    invoke-static {p2, v1, v4, v3}, LF8/D0;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mValue:Ljava/lang/Object;

    const-string v1, "trigger_event_name"

    invoke-static {p2, v1, v2, v3}, LF8/D0;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggerEventName:Ljava/lang/String;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v4, "trigger_timeout"

    const-class v5, Ljava/lang/Long;

    invoke-static {p2, v4, v5, v1}, LF8/D0;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggerTimeout:J

    const-string v4, "timed_out_event_name"

    invoke-static {p2, v4, v2, v3}, LF8/D0;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTimedOutEventName:Ljava/lang/String;

    const-string v4, "timed_out_event_params"

    const-class v6, Landroid/os/Bundle;

    invoke-static {p2, v4, v6, v3}, LF8/D0;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    iput-object v4, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTimedOutEventParams:Landroid/os/Bundle;

    const-string v4, "triggered_event_name"

    invoke-static {p2, v4, v2, v3}, LF8/D0;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggeredEventName:Ljava/lang/String;

    const-string v4, "triggered_event_params"

    invoke-static {p2, v4, v6, v3}, LF8/D0;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    iput-object v4, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggeredEventParams:Landroid/os/Bundle;

    const-string v4, "time_to_live"

    invoke-static {p2, v4, v5, v1}, LF8/D0;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iput-wide v7, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTimeToLive:J

    const-string v4, "expired_event_name"

    invoke-static {p2, v4, v2, v3}, LF8/D0;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mExpiredEventName:Ljava/lang/String;

    const-string v2, "expired_event_params"

    invoke-static {p2, v2, v6, v3}, LF8/D0;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    iput-object v2, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mExpiredEventParams:Landroid/os/Bundle;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v3, "active"

    const-class v4, Ljava/lang/Boolean;

    invoke-static {p2, v3, v4, v2}, LF8/D0;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mActive:Z

    const-string v2, "creation_timestamp"

    invoke-static {p2, v2, v5, v1}, LF8/D0;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mCreationTimestamp:J

    const-string v2, "triggered_timestamp"

    invoke-static {p2, v2, v5, v1}, LF8/D0;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggeredTimestamp:J

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_1
    return-object p1
.end method

.method public getCurrentScreenClass()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->a:LD8/c;

    invoke-interface {p0}, LF8/X0;->e()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentScreenName()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->a:LD8/c;

    invoke-interface {p0}, LF8/X0;->n()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getGmpAppId()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->a:LD8/c;

    invoke-interface {p0}, LF8/X0;->p()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMaxUserProperties(Ljava/lang/String;)I
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->a:LD8/c;

    invoke-interface {p0, p1}, LF8/X0;->m(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getUserProperties(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->a:LD8/c;

    invoke-interface {p0, p1, p2, p3}, LF8/X0;->g(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public logEventInternal(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->a:LD8/c;

    invoke-interface {p0, p1, p2, p3}, LF8/X0;->i(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public setConditionalUserProperty(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V
    .locals 4
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    invoke-static {p1}, Lm8/A;->g(Ljava/lang/Object;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mAppId:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "app_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mOrigin:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, "origin"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v1, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mName:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v1, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mValue:Ljava/lang/Object;

    if-eqz v1, :cond_3

    invoke-static {v0, v1}, LF8/D0;->f(Landroid/os/Bundle;Ljava/lang/Object;)V

    :cond_3
    iget-object v1, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggerEventName:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string v2, "trigger_event_name"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-wide v1, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggerTimeout:J

    const-string v3, "trigger_timeout"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-object v1, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTimedOutEventName:Ljava/lang/String;

    if-eqz v1, :cond_5

    const-string v2, "timed_out_event_name"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object v1, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTimedOutEventParams:Landroid/os/Bundle;

    if-eqz v1, :cond_6

    const-string v2, "timed_out_event_params"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_6
    iget-object v1, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggeredEventName:Ljava/lang/String;

    if-eqz v1, :cond_7

    const-string v2, "triggered_event_name"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    iget-object v1, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggeredEventParams:Landroid/os/Bundle;

    if-eqz v1, :cond_8

    const-string v2, "triggered_event_params"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_8
    iget-wide v1, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTimeToLive:J

    const-string v3, "time_to_live"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-object v1, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mExpiredEventName:Ljava/lang/String;

    if-eqz v1, :cond_9

    const-string v2, "expired_event_name"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    iget-object v1, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mExpiredEventParams:Landroid/os/Bundle;

    if-eqz v1, :cond_a

    const-string v2, "expired_event_params"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_a
    iget-wide v1, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mCreationTimestamp:J

    const-string v3, "creation_timestamp"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-boolean v1, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mActive:Z

    const-string v2, "active"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-wide v1, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggeredTimestamp:J

    const-string p1, "triggered_timestamp"

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->a:LD8/c;

    invoke-interface {p0, v0}, LF8/X0;->h(Landroid/os/Bundle;)V

    return-void
.end method
