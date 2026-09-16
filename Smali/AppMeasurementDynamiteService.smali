.class public Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;
.super Lcom/google/android/gms/internal/measurement/J;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/util/DynamiteApi;
.end annotation


# instance fields
.field public d:LF8/n0;

.field public final e:Lq1/e;


# direct methods
.method public static $r8$lambda$W3cgi1t5N0SU6fYxM9Fsh5qQfPc(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lcom/google/android/gms/internal/measurement/P;)V
    .locals 1

    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/P;->a()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->d:LF8/n0;

    invoke-static {p0}, Lm8/A;->g(Ljava/lang/Object;)V

    iget-object p0, p0, LF8/n0;->F:LF8/U;

    invoke-static {p0}, LF8/n0;->f(LF8/x0;)V

    const-string v0, "Failed to call IDynamiteUploadBatchesCallback"

    iget-object p0, p0, LF8/U;->F:LF8/S;

    invoke-virtual {p0, p1, v0}, LF8/S;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/y;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->d:LF8/n0;

    new-instance v0, Lq1/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lq1/V;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->e:Lq1/e;

    return-void
.end method


# virtual methods
.method public beginAdUnitExposure(Ljava/lang/String;J)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->c()V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->d:LF8/n0;

    iget-object p0, p0, LF8/n0;->N:LF8/x;

    invoke-static {p0}, LF8/n0;->c(LF8/y;)V

    invoke-virtual {p0, p2, p3, p1}, LF8/x;->c1(JLjava/lang/String;)V

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->d:LF8/n0;

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Attempting to perform action before initialize."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public clearConditionalUserProperty(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->c()V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->d:LF8/n0;

    iget-object p0, p0, LF8/n0;->M:LF8/W0;

    invoke-static {p0}, LF8/n0;->e(LF8/z;)V

    invoke-virtual {p0, p1, p2, p3}, LF8/W0;->h1(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public clearMeasurementEnabled(J)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->c()V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->d:LF8/n0;

    iget-object p0, p0, LF8/n0;->M:LF8/W0;

    invoke-static {p0}, LF8/n0;->e(LF8/z;)V

    invoke-virtual {p0}, LF8/z;->c1()V

    iget-object p1, p0, LF8/w0;->a:Ljava/lang/Object;

    check-cast p1, LF8/n0;

    iget-object p1, p1, LF8/n0;->G:LF8/m0;

    invoke-static {p1}, LF8/n0;->f(LF8/x0;)V

    new-instance p2, Lp9/b;

    const/4 v0, 0x0

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-direct {p2, v1, p0, v0, v2}, Lp9/b;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    invoke-virtual {p1, p2}, LF8/m0;->l1(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final d(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/M;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->c()V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->d:LF8/n0;

    iget-object p0, p0, LF8/n0;->I:LF8/V1;

    invoke-static {p0}, LF8/n0;->d(LF8/w0;)V

    invoke-virtual {p0, p1, p2}, LF8/V1;->D1(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/M;)V

    return-void
.end method

.method public endAdUnitExposure(Ljava/lang/String;J)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->c()V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->d:LF8/n0;

    iget-object p0, p0, LF8/n0;->N:LF8/x;

    invoke-static {p0}, LF8/n0;->c(LF8/y;)V

    invoke-virtual {p0, p2, p3, p1}, LF8/x;->d1(JLjava/lang/String;)V

    return-void
.end method

.method public generateEventId(Lcom/google/android/gms/internal/measurement/M;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->c()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->d:LF8/n0;

    iget-object v0, v0, LF8/n0;->I:LF8/V1;

    invoke-static {v0}, LF8/n0;->d(LF8/w0;)V

    invoke-virtual {v0}, LF8/V1;->l2()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->c()V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->d:LF8/n0;

    iget-object p0, p0, LF8/n0;->I:LF8/V1;

    invoke-static {p0}, LF8/n0;->d(LF8/w0;)V

    invoke-virtual {p0, p1, v0, v1}, LF8/V1;->C1(Lcom/google/android/gms/internal/measurement/M;J)V

    return-void
.end method

.method public getAppInstanceId(Lcom/google/android/gms/internal/measurement/M;)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->c()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->d:LF8/n0;

    iget-object v0, v0, LF8/n0;->G:LF8/m0;

    invoke-static {v0}, LF8/n0;->f(LF8/x0;)V

    new-instance v1, LF8/s0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, LF8/s0;-><init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lcom/google/android/gms/internal/measurement/M;I)V

    invoke-virtual {v0, v1}, LF8/m0;->l1(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getCachedAppInstanceId(Lcom/google/android/gms/internal/measurement/M;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->c()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->d:LF8/n0;

    iget-object v0, v0, LF8/n0;->M:LF8/W0;

    invoke-static {v0}, LF8/n0;->e(LF8/z;)V

    iget-object v0, v0, LF8/W0;->D:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->d(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/M;)V

    return-void
.end method

.method public getConditionalUserProperties(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/M;)V
    .locals 8

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->c()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->d:LF8/n0;

    iget-object v0, v0, LF8/n0;->G:LF8/m0;

    invoke-static {v0}, LF8/n0;->f(LF8/x0;)V

    new-instance v1, LD3/a0;

    const/4 v6, 0x7

    const/4 v7, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v3, p3

    invoke-direct/range {v1 .. v7}, LD3/a0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IZ)V

    invoke-virtual {v0, v1}, LF8/m0;->l1(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getCurrentScreenClass(Lcom/google/android/gms/internal/measurement/M;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->c()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->d:LF8/n0;

    iget-object v0, v0, LF8/n0;->M:LF8/W0;

    invoke-static {v0}, LF8/n0;->e(LF8/z;)V

    iget-object v0, v0, LF8/w0;->a:Ljava/lang/Object;

    check-cast v0, LF8/n0;

    iget-object v0, v0, LF8/n0;->L:LF8/h1;

    invoke-static {v0}, LF8/n0;->e(LF8/z;)V

    iget-object v0, v0, LF8/h1;->c:LF8/e1;

    if-eqz v0, :cond_0

    iget-object v0, v0, LF8/e1;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->d(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/M;)V

    return-void
.end method

.method public getCurrentScreenName(Lcom/google/android/gms/internal/measurement/M;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->c()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->d:LF8/n0;

    iget-object v0, v0, LF8/n0;->M:LF8/W0;

    invoke-static {v0}, LF8/n0;->e(LF8/z;)V

    iget-object v0, v0, LF8/w0;->a:Ljava/lang/Object;

    check-cast v0, LF8/n0;

    iget-object v0, v0, LF8/n0;->L:LF8/h1;

    invoke-static {v0}, LF8/n0;->e(LF8/z;)V

    iget-object v0, v0, LF8/h1;->c:LF8/e1;

    if-eqz v0, :cond_0

    iget-object v0, v0, LF8/e1;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->d(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/M;)V

    return-void
.end method

.method public getGmpAppId(Lcom/google/android/gms/internal/measurement/M;)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->c()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->d:LF8/n0;

    iget-object v0, v0, LF8/n0;->M:LF8/W0;

    invoke-static {v0}, LF8/n0;->e(LF8/z;)V

    iget-object v0, v0, LF8/w0;->a:Ljava/lang/Object;

    check-cast v0, LF8/n0;

    iget-object v1, v0, LF8/n0;->D:LF8/g;

    sget-object v2, LF8/C;->p1:LF8/B;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, LF8/g;->o1(Ljava/lang/String;LF8/B;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, LF8/n0;->n()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, LF8/n0;->n()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v1, v0, LF8/n0;->a:Landroid/content/Context;

    iget-object v2, v0, LF8/n0;->P:Ljava/lang/String;

    invoke-static {v1, v2}, LF8/D0;->g(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v0, v0, LF8/n0;->F:LF8/U;

    invoke-static {v0}, LF8/n0;->f(LF8/x0;)V

    const-string v2, "getGoogleAppId failed with exception"

    iget-object v0, v0, LF8/U;->C:LF8/S;

    invoke-virtual {v0, v1, v2}, LF8/S;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0, v3, p1}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->d(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/M;)V

    return-void
.end method

.method public getMaxUserProperties(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/M;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->c()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->d:LF8/n0;

    iget-object v0, v0, LF8/n0;->M:LF8/W0;

    invoke-static {v0}, LF8/n0;->e(LF8/z;)V

    invoke-static {p1}, Lm8/A;->d(Ljava/lang/String;)V

    iget-object p1, v0, LF8/w0;->a:Ljava/lang/Object;

    check-cast p1, LF8/n0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->c()V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->d:LF8/n0;

    iget-object p0, p0, LF8/n0;->I:LF8/V1;

    invoke-static {p0}, LF8/n0;->d(LF8/w0;)V

    const/16 p1, 0x19

    invoke-virtual {p0, p2, p1}, LF8/V1;->B1(Lcom/google/android/gms/internal/measurement/M;I)V

    return-void
.end method

.method public getSessionId(Lcom/google/android/gms/internal/measurement/M;)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->c()V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->d:LF8/n0;

    iget-object p0, p0, LF8/n0;->M:LF8/W0;

    invoke-static {p0}, LF8/n0;->e(LF8/z;)V

    iget-object v0, p0, LF8/w0;->a:Ljava/lang/Object;

    check-cast v0, LF8/n0;

    iget-object v0, v0, LF8/n0;->G:LF8/m0;

    invoke-static {v0}, LF8/n0;->f(LF8/x0;)V

    new-instance v1, Lp9/b;

    const/16 v2, 0x9

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, p1, v3}, Lp9/b;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    invoke-virtual {v0, v1}, LF8/m0;->l1(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getTestFlag(Lcom/google/android/gms/internal/measurement/M;I)V
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->c()V

    if-eqz p2, :cond_4

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->d:LF8/n0;

    iget-object p2, p2, LF8/n0;->I:LF8/V1;

    invoke-static {p2}, LF8/n0;->d(LF8/w0;)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->d:LF8/n0;

    iget-object p0, p0, LF8/n0;->M:LF8/W0;

    invoke-static {p0}, LF8/n0;->e(LF8/z;)V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iget-object v0, p0, LF8/w0;->a:Ljava/lang/Object;

    check-cast v0, LF8/n0;

    iget-object v0, v0, LF8/n0;->G:LF8/m0;

    invoke-static {v0}, LF8/n0;->f(LF8/x0;)V

    new-instance v5, LF8/I0;

    const/4 v2, 0x2

    invoke-direct {v5, p0, v1, v2}, LF8/I0;-><init>(LF8/W0;Ljava/util/concurrent/atomic/AtomicReference;I)V

    const-wide/16 v2, 0x3a98

    const-string v4, "boolean test flag value"

    invoke-virtual/range {v0 .. v5}, LF8/m0;->g1(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p2, p1, p0}, LF8/V1;->x1(Lcom/google/android/gms/internal/measurement/M;Z)V

    return-void

    :cond_1
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->d:LF8/n0;

    iget-object p2, p2, LF8/n0;->I:LF8/V1;

    invoke-static {p2}, LF8/n0;->d(LF8/w0;)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->d:LF8/n0;

    iget-object p0, p0, LF8/n0;->M:LF8/W0;

    invoke-static {p0}, LF8/n0;->e(LF8/z;)V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iget-object v0, p0, LF8/w0;->a:Ljava/lang/Object;

    check-cast v0, LF8/n0;

    iget-object v0, v0, LF8/n0;->G:LF8/m0;

    invoke-static {v0}, LF8/n0;->f(LF8/x0;)V

    new-instance v5, LF8/I0;

    const/4 v2, 0x5

    invoke-direct {v5, p0, v1, v2}, LF8/I0;-><init>(LF8/W0;Ljava/util/concurrent/atomic/AtomicReference;I)V

    const-wide/16 v2, 0x3a98

    const-string v4, "int test flag value"

    invoke-virtual/range {v0 .. v5}, LF8/m0;->g1(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p2, p1, p0}, LF8/V1;->B1(Lcom/google/android/gms/internal/measurement/M;I)V

    return-void

    :cond_2
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->d:LF8/n0;

    iget-object p2, p2, LF8/n0;->I:LF8/V1;

    invoke-static {p2}, LF8/n0;->d(LF8/w0;)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->d:LF8/n0;

    iget-object p0, p0, LF8/n0;->M:LF8/W0;

    invoke-static {p0}, LF8/n0;->e(LF8/z;)V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iget-object v0, p0, LF8/w0;->a:Ljava/lang/Object;

    check-cast v0, LF8/n0;

    iget-object v0, v0, LF8/n0;->G:LF8/m0;

    invoke-static {v0}, LF8/n0;->f(LF8/x0;)V

    new-instance v5, LF8/I0;

    const/4 v2, 0x6

    invoke-direct {v5, p0, v1, v2}, LF8/I0;-><init>(LF8/W0;Ljava/util/concurrent/atomic/AtomicReference;I)V

    const-wide/16 v2, 0x3a98

    const-string v4, "double test flag value"

    invoke-virtual/range {v0 .. v5}, LF8/m0;->g1(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "r"

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    :try_start_0
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/measurement/M;->m(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    iget-object p1, p2, LF8/w0;->a:Ljava/lang/Object;

    check-cast p1, LF8/n0;

    iget-object p1, p1, LF8/n0;->F:LF8/U;

    invoke-static {p1}, LF8/n0;->f(LF8/x0;)V

    const-string p2, "Error returning double value to wrapper"

    iget-object p1, p1, LF8/U;->F:LF8/S;

    invoke-virtual {p1, p0, p2}, LF8/S;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_3
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->d:LF8/n0;

    iget-object p2, p2, LF8/n0;->I:LF8/V1;

    invoke-static {p2}, LF8/n0;->d(LF8/w0;)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->d:LF8/n0;

    iget-object p0, p0, LF8/n0;->M:LF8/W0;

    invoke-static {p0}, LF8/n0;->e(LF8/z;)V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iget-object v0, p0, LF8/w0;->a:Ljava/lang/Object;

    check-cast v0, LF8/n0;

    iget-object v0, v0, LF8/n0;->G:LF8/m0;

    invoke-static {v0}, LF8/n0;->f(LF8/x0;)V

    new-instance v5, LF8/I0;

    const/4 v2, 0x4

    invoke-direct {v5, p0, v1, v2}, LF8/I0;-><init>(LF8/W0;Ljava/util/concurrent/atomic/AtomicReference;I)V

    const-wide/16 v2, 0x3a98

    const-string v4, "long test flag value"

    invoke-virtual/range {v0 .. v5}, LF8/m0;->g1(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, p1, v0, v1}, LF8/V1;->C1(Lcom/google/android/gms/internal/measurement/M;J)V

    return-void

    :cond_4
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->d:LF8/n0;

    iget-object p2, p2, LF8/n0;->I:LF8/V1;

    invoke-static {p2}, LF8/n0;->d(LF8/w0;)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->d:LF8/n0;

    iget-object p0, p0, LF8/n0;->M:LF8/W0;

    invoke-static {p0}, LF8/n0;->e(LF8/z;)V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iget-object v0, p0, LF8/w0;->a:Ljava/lang/Object;

    check-cast v0, LF8/n0;

    iget-object v0, v0, LF8/n0;->G:LF8/m0;

    invoke-static {v0}, LF8/n0;->f(LF8/x0;)V

    new-instance v5, LF8/I0;

    const/4 v2, 0x3

    invoke-direct {v5, p0, v1, v2}, LF8/I0;-><init>(LF8/W0;Ljava/util/concurrent/atomic/AtomicReference;I)V

    const-wide/16 v2, 0x3a98

    const-string v4, "String test flag value"

    invoke-virtual/range {v0 .. v5}, LF8/m0;->g1(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p2, p0, p1}, LF8/V1;->D1(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/M;)V

    return-void
.end method

.method public getUserProperties(Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/measurement/M;)V
    .locals 8

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->c()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->d:LF8/n0;

    iget-object v0, v0, LF8/n0;->G:LF8/m0;

    invoke-static {v0}, LF8/n0;->f(LF8/x0;)V

    new-instance v1, LF8/T0;

    const/4 v7, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-object v3, p4

    invoke-direct/range {v1 .. v7}, LF8/T0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1}, LF8/m0;->l1(Ljava/lang/Runnable;)V

    return-void
.end method

.method public initForTests(Ljava/util/Map;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->c()V

    return-void
.end method

.method public initialize(Lt8/a;Lcom/google/android/gms/internal/measurement/V;J)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->d:LF8/n0;

    if-nez v0, :cond_0

    invoke-static {p1}, Lt8/b;->M(Lt8/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lm8/A;->g(Ljava/lang/Object;)V

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-static {p1, p2, p3}, LF8/n0;->l(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/V;Ljava/lang/Long;)LF8/n0;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->d:LF8/n0;

    return-void

    :cond_0
    iget-object p0, v0, LF8/n0;->F:LF8/U;

    invoke-static {p0}, LF8/n0;->f(LF8/x0;)V

    const-string p1, "Attempting to initialize multiple times"

    iget-object p0, p0, LF8/U;->F:LF8/S;

    invoke-virtual {p0, p1}, LF8/S;->b(Ljava/lang/String;)V

    return-void
.end method

.method public isDataCollectionEnabled(Lcom/google/android/gms/internal/measurement/M;)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->c()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->d:LF8/n0;

    iget-object v0, v0, LF8/n0;->G:LF8/m0;

    invoke-static {v0}, LF8/n0;->f(LF8/x0;)V

    new-instance v1, LF8/s0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, LF8/s0;-><init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lcom/google/android/gms/internal/measurement/M;I)V

    invoke-virtual {v0, v1}, LF8/m0;->l1(Ljava/lang/Runnable;)V

    return-void
.end method

.method public logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V
    .locals 8

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->c()V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->d:LF8/n0;

    iget-object v0, p0, LF8/n0;->M:LF8/W0;

    invoke-static {v0}, LF8/n0;->e(LF8/z;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-wide v6, p6

    invoke-virtual/range {v0 .. v7}, LF8/W0;->l1(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V

    return-void
.end method

.method public logEventAndBundle(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/internal/measurement/M;J)V
    .locals 8

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->c()V

    invoke-static {p2}, Lm8/A;->d(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_0
    const-string v1, "_o"

    const-string v5, "app"

    invoke-virtual {v0, v1, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, LF8/u;

    new-instance v4, LF8/t;

    invoke-direct {v4, p3}, LF8/t;-><init>(Landroid/os/Bundle;)V

    move-object v3, p2

    move-wide v6, p5

    invoke-direct/range {v2 .. v7}, LF8/u;-><init>(Ljava/lang/String;LF8/t;Ljava/lang/String;J)V

    move-object p3, v2

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->d:LF8/n0;

    iget-object v0, p2, LF8/n0;->G:LF8/m0;

    invoke-static {v0}, LF8/n0;->f(LF8/x0;)V

    move-object p2, p4

    move-object p4, p1

    move-object p1, p0

    new-instance p0, LD3/a0;

    const/4 p5, 0x3

    const/4 p6, 0x0

    invoke-direct/range {p0 .. p6}, LD3/a0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IZ)V

    invoke-virtual {v0, p0}, LF8/m0;->l1(Ljava/lang/Runnable;)V

    return-void
.end method

.method public logHealthData(ILjava/lang/String;Lt8/a;Lt8/a;Lt8/a;)V
    .locals 9

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->c()V

    const/4 v0, 0x0

    if-nez p3, :cond_0

    move-object v6, v0

    goto :goto_0

    :cond_0
    invoke-static {p3}, Lt8/b;->M(Lt8/a;)Ljava/lang/Object;

    move-result-object p3

    move-object v6, p3

    :goto_0
    if-nez p4, :cond_1

    move-object v7, v0

    goto :goto_1

    :cond_1
    invoke-static {p4}, Lt8/b;->M(Lt8/a;)Ljava/lang/Object;

    move-result-object p3

    move-object v7, p3

    :goto_1
    if-nez p5, :cond_2

    :goto_2
    move-object v8, v0

    goto :goto_3

    :cond_2
    invoke-static {p5}, Lt8/b;->M(Lt8/a;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    :goto_3
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->d:LF8/n0;

    iget-object v1, p0, LF8/n0;->F:LF8/U;

    invoke-static {v1}, LF8/n0;->f(LF8/x0;)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    move v2, p1

    move-object v5, p2

    invoke-virtual/range {v1 .. v8}, LF8/U;->n1(IZZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public onActivityCreated(Lt8/a;Landroid/os/Bundle;J)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->c()V

    invoke-static {p1}, Lt8/b;->M(Lt8/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lm8/A;->g(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/X;->c(Landroid/app/Activity;)Lcom/google/android/gms/internal/measurement/X;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->onActivityCreatedByScionActivityInfo(Lcom/google/android/gms/internal/measurement/X;Landroid/os/Bundle;J)V

    return-void
.end method

.method public onActivityCreatedByScionActivityInfo(Lcom/google/android/gms/internal/measurement/X;Landroid/os/Bundle;J)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->c()V

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->d:LF8/n0;

    iget-object p3, p3, LF8/n0;->M:LF8/W0;

    invoke-static {p3}, LF8/n0;->e(LF8/z;)V

    iget-object p3, p3, LF8/W0;->c:LF8/V0;

    if-eqz p3, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->d:LF8/n0;

    iget-object p0, p0, LF8/n0;->M:LF8/W0;

    invoke-static {p0}, LF8/n0;->e(LF8/z;)V

    invoke-virtual {p0}, LF8/W0;->i1()V

    invoke-virtual {p3, p1, p2}, LF8/V0;->i(Lcom/google/android/gms/internal/measurement/X;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onActivityDestroyed(Lt8/a;J)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->c()V

    invoke-static {p1}, Lt8/b;->M(Lt8/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lm8/A;->g(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/X;->c(Landroid/app/Activity;)Lcom/google/android/gms/internal/measurement/X;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->onActivityDestroyedByScionActivityInfo(Lcom/google/android/gms/internal/measurement/X;J)V

    return-void
.end method

.method public onActivityDestroyedByScionActivityInfo(Lcom/google/android/gms/internal/measurement/X;J)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->c()V

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->d:LF8/n0;

    iget-object p2, p2, LF8/n0;->M:LF8/W0;

    invoke-static {p2}, LF8/n0;->e(LF8/z;)V

    iget-object p2, p2, LF8/W0;->c:LF8/V0;

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->d:LF8/n0;

    iget-object p0, p0, LF8/n0;->M:LF8/W0;

    invoke-static {p0}, LF8/n0;->e(LF8/z;)V

    invoke-virtual {p0}, LF8/W0;->i1()V

    invoke-virtual {p2, p1}, LF8/V0;->j(Lcom/google/android/gms/internal/measurement/X;)V

    :cond_0
    return-void
.end method

.method public onActivityPaused(Lt8/a;J)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->c()V

    invoke-static {p1}, Lt8/b;->M(Lt8/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lm8/A;->g(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/X;->c(Landroid/app/Activity;)Lcom/google/android/gms/internal/measurement/X;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->onActivityPausedByScionActivityInfo(Lcom/google/android/gms/internal/measurement/X;J)V

    return-void
.end method

.method public onActivityPausedByScionActivityInfo(Lcom/google/android/gms/internal/measurement/X;J)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->c()V

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->d:LF8/n0;

    iget-object p2, p2, LF8/n0;->M:LF8/W0;

    invoke-static {p2}, LF8/n0;->e(LF8/z;)V

    iget-object p2, p2, LF8/W0;->c:LF8/V0;

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->d:LF8/n0;

    iget-object p0, p0, LF8/n0;->M:LF8/W0;

    invoke-static {p0}, LF8/n0;->e(LF8/z;)V

    invoke-virtual {p0}, LF8/W0;->i1()V

    invoke-virtual {p2, p1}, LF8/V0;->k(Lcom/google/android/gms/internal/measurement/X;)V

    :cond_0
    return-void
.end method

.method public onActivityResumed(Lt8/a;J)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->c()V

    invoke-static {p1}, Lt8/b;->M(Lt8/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lm8/A;->g(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/X;->c(Landroid/app/Activity;)Lcom/google/android/gms/internal/measurement/X;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->onActivityResumedByScionActivityInfo(Lcom/google/android/gms/internal/measurement/X;J)V

    return-void
.end method

.method public onActivityResumedByScionActivityInfo(Lcom/google/android/gms/internal/measurement/X;J)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->c()V

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->d:LF8/n0;

    iget-object p2, p2, LF8/n0;->M:LF8/W0;

    invoke-static {p2}, LF8/n0;->e(LF8/z;)V

    iget-object p2, p2, LF8/W0;->c:LF8/V0;

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->d:LF8/n0;

    iget-object p0, p0, LF8/n0;->M:LF8/W0;

    invoke-static {p0}, LF8/n0;->e(LF8/z;)V

    invoke-virtual {p0}, LF8/W0;->i1()V

    invoke-virtual {p2, p1}, LF8/V0;->l(Lcom/google/android/gms/internal/measurement/X;)V

    :cond_0
    return-void
.end method

.method public onActivitySaveInstanceState(Lt8/a;Lcom/google/android/gms/internal/measurement/M;J)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->c()V

    invoke-static {p1}, Lt8/b;->M(Lt8/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lm8/A;->g(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/X;->c(Landroid/app/Activity;)Lcom/google/android/gms/internal/measurement/X;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->onActivitySaveInstanceStateByScionActivityInfo(Lcom/google/android/gms/internal/measurement/X;Lcom/google/android/gms/internal/measurement/M;J)V

    return-void
.end method

.method public onActivitySaveInstanceStateByScionActivityInfo(Lcom/google/android/gms/internal/measurement/X;Lcom/google/android/gms/internal/measurement/M;J)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->c()V

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->d:LF8/n0;

    iget-object p3, p3, LF8/n0;->M:LF8/W0;

    invoke-static {p3}, LF8/n0;->e(LF8/z;)V

    iget-object p3, p3, LF8/W0;->c:LF8/V0;

    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->d:LF8/n0;

    iget-object v0, v0, LF8/n0;->M:LF8/W0;

    invoke-static {v0}, LF8/n0;->e(LF8/z;)V

    invoke-virtual {v0}, LF8/W0;->i1()V

    invoke-virtual {p3, p1, p4}, LF8/V0;->m(Lcom/google/android/gms/internal/measurement/X;Landroid/os/Bundle;)V

    :cond_0
    :try_start_0
    invoke-interface {p2, p4}, Lcom/google/android/gms/internal/measurement/M;->m(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->d:LF8/n0;

    iget-object p0, p0, LF8/n0;->F:LF8/U;

    invoke-static {p0}, LF8/n0;->f(LF8/x0;)V

    const-string p2, "Error returning bundle value to wrapper"

    iget-object p0, p0, LF8/U;->F:LF8/S;

    invoke-virtual {p0, p1, p2}, LF8/S;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityStarted(Lt8/a;J)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->c()V

    invoke-static {p1}, Lt8/b;->M(Lt8/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lm8/A;->g(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/X;->c(Landroid/app/Activity;)Lcom/google/android/gms/internal/measurement/X;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->onActivityStartedByScionActivityInfo(Lcom/google/android/gms/internal/measurement/X;J)V

    return-void
.end method

.method public onActivityStartedByScionActivityInfo(Lcom/google/android/gms/internal/measurement/X;J)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->c()V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->d:LF8/n0;

    iget-object p1, p1, LF8/n0;->M:LF8/W0;

    invoke-static {p1}, LF8/n0;->e(LF8/z;)V

    iget-object p1, p1, LF8/W0;->c:LF8/V0;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->d:LF8/n0;

    iget-object p0, p0, LF8/n0;->M:LF8/W0;

    invoke-static {p0}, LF8/n0;->e(LF8/z;)V

    invoke-virtual {p0}, LF8/W0;->i1()V

    :cond_0
    return-void
.end method

.method public onActivityStopped(Lt8/a;J)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->c()V

    invoke-static {p1}, Lt8/b;->M(Lt8/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lm8/A;->g(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/X;->c(Landroid/app/Activity;)Lcom/google/android/gms/internal/measurement/X;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->onActivityStoppedByScionActivityInfo(Lcom/google/android/gms/internal/measurement/X;J)V

    return-void
.end method

.method public onActivityStoppedByScionActivityInfo(Lcom/google/android/gms/internal/measurement/X;J)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->c()V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->d:LF8/n0;

    iget-object p1, p1, LF8/n0;->M:LF8/W0;

    invoke-static {p1}, LF8/n0;->e(LF8/z;)V

    iget-object p1, p1, LF8/W0;->c:LF8/V0;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->d:LF8/n0;

    iget-object p0, p0, LF8/n0;->M:LF8/W0;

    invoke-static {p0}, LF8/n0;->e(LF8/z;)V

    invoke-virtual {p0}, LF8/W0;->i1()V

    :cond_0
    return-void
.end method

.method public performAction(Landroid/os/Bundle;Lcom/google/android/gms/internal/measurement/M;J)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->c()V

    const/4 p0, 0x0

    invoke-interface {p2, p0}, Lcom/google/android/gms/internal/measurement/M;->m(Landroid/os/Bundle;)V

    return-void
.end method

.method public registerOnMeasurementEventListener(Lcom/google/android/gms/internal/measurement/S;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->c()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->e:Lq1/e;

    monitor-enter v0

    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/S;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lq1/V;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LF8/E0;

    if-nez v1, :cond_0

    new-instance v1, LF8/R1;

    invoke-direct {v1, p0, p1}, LF8/R1;-><init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lcom/google/android/gms/internal/measurement/S;)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/S;->a()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Lq1/V;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->d:LF8/n0;

    iget-object p0, p0, LF8/n0;->M:LF8/W0;

    invoke-static {p0}, LF8/n0;->e(LF8/z;)V

    invoke-virtual {p0}, LF8/z;->c1()V

    iget-object p1, p0, LF8/W0;->B:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, LF8/w0;->a:Ljava/lang/Object;

    check-cast p0, LF8/n0;

    iget-object p0, p0, LF8/n0;->F:LF8/U;

    invoke-static {p0}, LF8/n0;->f(LF8/x0;)V

    const-string p1, "OnEventListener already registered"

    iget-object p0, p0, LF8/U;->F:LF8/S;

    invoke-virtual {p0, p1}, LF8/S;->b(Ljava/lang/String;)V

    :cond_1
    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public resetAnalyticsData(J)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->c()V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->d:LF8/n0;

    iget-object p0, p0, LF8/n0;->M:LF8/W0;

    invoke-static {p0}, LF8/n0;->e(LF8/z;)V

    iget-object v0, p0, LF8/W0;->D:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v0, p0, LF8/w0;->a:Ljava/lang/Object;

    check-cast v0, LF8/n0;

    iget-object v0, v0, LF8/n0;->G:LF8/m0;

    invoke-static {v0}, LF8/n0;->f(LF8/x0;)V

    new-instance v1, LF8/R0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, p2, v2}, LF8/R0;-><init>(LF8/W0;JI)V

    invoke-virtual {v0, v1}, LF8/m0;->l1(Ljava/lang/Runnable;)V

    return-void
.end method

.method public retrieveAndUploadBatches(Lcom/google/android/gms/internal/measurement/P;)V
    .locals 17

    move-object/from16 v1, p0

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->c()V

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->d:LF8/n0;

    iget-object v0, v0, LF8/n0;->D:LF8/g;

    sget-object v2, LF8/C;->R0:LF8/B;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, LF8/g;->o1(Ljava/lang/String;LF8/B;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_8

    :cond_0
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->d:LF8/n0;

    iget-object v4, v0, LF8/n0;->M:LF8/W0;

    invoke-static {v4}, LF8/n0;->e(LF8/z;)V

    iget-object v0, v4, LF8/w0;->a:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, LF8/n0;

    iget-object v0, v5, LF8/n0;->D:LF8/g;

    invoke-virtual {v0, v3, v2}, LF8/g;->o1(Ljava/lang/String;LF8/B;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {v4}, LF8/z;->c1()V

    iget-object v0, v5, LF8/n0;->G:LF8/m0;

    invoke-static {v0}, LF8/n0;->f(LF8/x0;)V

    invoke-virtual {v0}, LF8/m0;->n1()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, v5, LF8/n0;->G:LF8/m0;

    invoke-static {v0}, LF8/n0;->f(LF8/x0;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iget-object v0, v0, LF8/m0;->t:LF8/l0;

    if-ne v2, v0, :cond_1

    iget-object v0, v5, LF8/n0;->F:LF8/U;

    invoke-static {v0}, LF8/n0;->f(LF8/x0;)V

    iget-object v0, v0, LF8/U;->C:LF8/S;

    const-string v1, "Cannot retrieve and upload batches from analytics network thread"

    invoke-virtual {v0, v1}, LF8/S;->b(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {}, Lma/d;->d()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, v5, LF8/n0;->F:LF8/U;

    invoke-static {v0}, LF8/n0;->f(LF8/x0;)V

    iget-object v0, v0, LF8/U;->K:LF8/S;

    const-string v2, "[sgtm] Started client-side batch upload work."

    invoke-virtual {v0, v2}, LF8/S;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    :goto_0
    if-nez v0, :cond_b

    iget-object v0, v5, LF8/n0;->F:LF8/U;

    invoke-static {v0}, LF8/n0;->f(LF8/x0;)V

    iget-object v0, v0, LF8/U;->K:LF8/S;

    const-string v7, "[sgtm] Getting upload batches from service (FE)"

    invoke-virtual {v0, v7}, LF8/S;->b(Ljava/lang/String;)V

    new-instance v9, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v9}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iget-object v8, v5, LF8/n0;->G:LF8/m0;

    invoke-static {v8}, LF8/n0;->f(LF8/x0;)V

    new-instance v13, LF8/I0;

    const/4 v0, 0x1

    invoke-direct {v13, v4, v9, v0}, LF8/I0;-><init>(LF8/W0;Ljava/util/concurrent/atomic/AtomicReference;I)V

    const-wide/16 v10, 0x2710

    const-string v12, "[sgtm] Getting upload batches"

    invoke-virtual/range {v8 .. v13}, LF8/m0;->g1(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LF8/H1;

    if-eqz v0, :cond_b

    iget-object v0, v0, LF8/H1;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    goto/16 :goto_7

    :cond_2
    iget-object v7, v5, LF8/n0;->F:LF8/U;

    invoke-static {v7}, LF8/n0;->f(LF8/x0;)V

    iget-object v7, v7, LF8/U;->K:LF8/S;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "[sgtm] Retrieved upload batches. count"

    invoke-virtual {v7, v8, v9}, LF8/S;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    add-int/2addr v3, v7

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, LF8/F1;

    :try_start_0
    new-instance v0, Ljava/net/URI;

    iget-object v9, v8, LF8/F1;->c:Ljava/lang/String;

    invoke-direct {v0, v9}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v13
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    new-instance v9, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v9}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iget-object v0, v4, LF8/w0;->a:Ljava/lang/Object;

    check-cast v0, LF8/n0;

    invoke-virtual {v0}, LF8/n0;->i()LF8/J;

    move-result-object v0

    invoke-virtual {v0}, LF8/z;->c1()V

    iget-object v10, v0, LF8/J;->D:Ljava/lang/String;

    invoke-static {v10}, Lm8/A;->g(Ljava/lang/Object;)V

    iget-object v12, v0, LF8/J;->D:Ljava/lang/String;

    iget-object v0, v4, LF8/w0;->a:Ljava/lang/Object;

    check-cast v0, LF8/n0;

    iget-object v10, v0, LF8/n0;->F:LF8/U;

    invoke-static {v10}, LF8/n0;->f(LF8/x0;)V

    iget-object v10, v10, LF8/U;->K:LF8/S;

    iget-wide v14, v8, LF8/F1;->a:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    iget-object v14, v8, LF8/F1;->c:Ljava/lang/String;

    iget-object v15, v8, LF8/F1;->b:[B

    array-length v15, v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string v2, "[sgtm] Uploading data from app. row_id, url, uncompressed size"

    invoke-virtual {v10, v2, v11, v14, v15}, LF8/S;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, v8, LF8/F1;->D:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, v0, LF8/n0;->F:LF8/U;

    invoke-static {v2}, LF8/n0;->f(LF8/x0;)V

    iget-object v2, v2, LF8/U;->K:LF8/S;

    iget-object v10, v8, LF8/F1;->D:Ljava/lang/String;

    const-string v14, "[sgtm] Uploading data from app. row_id"

    invoke-virtual {v2, v14, v11, v10}, LF8/S;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    iget-object v2, v8, LF8/F1;->t:Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_5
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v2, v11}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_5

    invoke-virtual {v15, v11, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    iget-object v11, v0, LF8/n0;->O:LF8/a1;

    invoke-static {v11}, LF8/n0;->f(LF8/x0;)V

    iget-object v14, v8, LF8/F1;->b:[B

    new-instance v2, LX5/b;

    invoke-direct {v2, v4, v9, v8}, LX5/b;-><init>(LF8/W0;Ljava/util/concurrent/atomic/AtomicReference;LF8/F1;)V

    invoke-virtual {v11}, LF8/x0;->d1()V

    invoke-static {v13}, Lm8/A;->g(Ljava/lang/Object;)V

    invoke-static {v14}, Lm8/A;->g(Ljava/lang/Object;)V

    iget-object v8, v11, LF8/w0;->a:Ljava/lang/Object;

    check-cast v8, LF8/n0;

    iget-object v8, v8, LF8/n0;->G:LF8/m0;

    invoke-static {v8}, LF8/n0;->f(LF8/x0;)V

    new-instance v10, LF8/W;

    move-object/from16 v16, v2

    invoke-direct/range {v10 .. v16}, LF8/W;-><init>(LF8/a1;Ljava/lang/String;Ljava/net/URL;[BLjava/util/HashMap;LF8/Y0;)V

    invoke-virtual {v8, v10}, LF8/m0;->k1(Ljava/lang/Runnable;)V

    :try_start_1
    iget-object v0, v0, LF8/n0;->I:LF8/V1;

    invoke-static {v0}, LF8/n0;->d(LF8/w0;)V

    iget-object v0, v0, LF8/w0;->a:Ljava/lang/Object;

    check-cast v0, LF8/n0;

    iget-object v2, v0, LF8/n0;->K:Lq8/a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/32 v12, 0xea60

    add-long/2addr v10, v12

    monitor-enter v9
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_3
    :try_start_2
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_7

    const-wide/16 v14, 0x0

    cmp-long v2, v12, v14

    if-lez v2, :cond_7

    invoke-virtual {v9, v12, v13}, Ljava/lang/Object;->wait(J)V

    iget-object v2, v0, LF8/n0;->K:Lq8/a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v12, v10, v12

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_7
    monitor-exit v9

    goto :goto_5

    :goto_4
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    iget-object v0, v4, LF8/w0;->a:Ljava/lang/Object;

    check-cast v0, LF8/n0;

    iget-object v0, v0, LF8/n0;->F:LF8/U;

    invoke-static {v0}, LF8/n0;->f(LF8/x0;)V

    iget-object v0, v0, LF8/U;->F:LF8/S;

    const-string v2, "[sgtm] Interrupted waiting for uploading batch"

    invoke-virtual {v0, v2}, LF8/S;->b(Ljava/lang/String;)V

    :goto_5
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_8

    sget-object v0, LF8/c1;->b:LF8/c1;

    goto :goto_6

    :cond_8
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LF8/c1;

    goto :goto_6

    :catch_1
    move-exception v0

    iget-object v2, v4, LF8/w0;->a:Ljava/lang/Object;

    check-cast v2, LF8/n0;

    iget-object v2, v2, LF8/n0;->F:LF8/U;

    invoke-static {v2}, LF8/n0;->f(LF8/x0;)V

    iget-object v2, v2, LF8/U;->C:LF8/S;

    iget-object v9, v8, LF8/F1;->c:Ljava/lang/String;

    iget-wide v10, v8, LF8/F1;->a:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v10, "[sgtm] Bad upload url for row_id"

    invoke-virtual {v2, v10, v9, v8, v0}, LF8/S;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, LF8/c1;->t:LF8/c1;

    :goto_6
    sget-object v2, LF8/c1;->c:LF8/c1;

    if-ne v0, v2, :cond_9

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_9
    sget-object v2, LF8/c1;->B:LF8/c1;

    if-ne v0, v2, :cond_3

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_b
    :goto_7
    iget-object v0, v5, LF8/n0;->F:LF8/U;

    invoke-static {v0}, LF8/n0;->f(LF8/x0;)V

    iget-object v0, v0, LF8/U;->K:LF8/S;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "[sgtm] Completed client-side batch upload work. total, success"

    invoke-virtual {v0, v4, v2, v3}, LF8/S;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->$r8$lambda$W3cgi1t5N0SU6fYxM9Fsh5qQfPc(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lcom/google/android/gms/internal/measurement/P;)V

    goto :goto_8

    :cond_c
    iget-object v0, v5, LF8/n0;->F:LF8/U;

    invoke-static {v0}, LF8/n0;->f(LF8/x0;)V

    iget-object v0, v0, LF8/U;->C:LF8/S;

    const-string v1, "Cannot retrieve and upload batches from main thread"

    invoke-virtual {v0, v1}, LF8/S;->b(Ljava/lang/String;)V

    return-void

    :cond_d
    iget-object v0, v5, LF8/n0;->F:LF8/U;

    invoke-static {v0}, LF8/n0;->f(LF8/x0;)V

    iget-object v0, v0, LF8/U;->C:LF8/S;

    const-string v1, "Cannot retrieve and upload batches from analytics worker thread"

    invoke-virtual {v0, v1}, LF8/S;->b(Ljava/lang/String;)V

    :cond_e
    :goto_8
    return-void
.end method

.method public setConditionalUserProperty(Landroid/os/Bundle;J)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->c()V

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->d:LF8/n0;

    iget-object p0, p0, LF8/n0;->F:LF8/U;

    invoke-static {p0}, LF8/n0;->f(LF8/x0;)V

    const-string p1, "Conditional user property must not be null"

    iget-object p0, p0, LF8/U;->C:LF8/S;

    invoke-virtual {p0, p1}, LF8/S;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->d:LF8/n0;

    iget-object p0, p0, LF8/n0;->M:LF8/W0;

    invoke-static {p0}, LF8/n0;->e(LF8/z;)V

    invoke-virtual {p0, p1, p2, p3}, LF8/W0;->q1(Landroid/os/Bundle;J)V

    return-void
.end method

.method public setConsent(Landroid/os/Bundle;J)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->c()V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->d:LF8/n0;

    iget-object p0, p0, LF8/n0;->M:LF8/W0;

    invoke-static {p0}, LF8/n0;->e(LF8/z;)V

    iget-object v0, p0, LF8/w0;->a:Ljava/lang/Object;

    check-cast v0, LF8/n0;

    iget-object v0, v0, LF8/n0;->G:LF8/m0;

    invoke-static {v0}, LF8/n0;->f(LF8/x0;)V

    new-instance v1, LF8/K0;

    invoke-direct {v1, p0, p1, p2, p3}, LF8/K0;-><init>(LF8/W0;Landroid/os/Bundle;J)V

    invoke-virtual {v0, v1}, LF8/m0;->m1(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setConsentThirdParty(Landroid/os/Bundle;J)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->c()V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->d:LF8/n0;

    iget-object p0, p0, LF8/n0;->M:LF8/W0;

    invoke-static {p0}, LF8/n0;->e(LF8/z;)V

    const/16 v0, -0x14

    invoke-virtual {p0, p1, v0, p2, p3}, LF8/W0;->r1(Landroid/os/Bundle;IJ)V

    return-void
.end method

.method public setCurrentScreen(Lt8/a;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->c()V

    invoke-static {p1}, Lt8/b;->M(Lt8/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lm8/A;->g(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/X;->c(Landroid/app/Activity;)Lcom/google/android/gms/internal/measurement/X;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->setCurrentScreenByScionActivityInfo(Lcom/google/android/gms/internal/measurement/X;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public setCurrentScreenByScionActivityInfo(Lcom/google/android/gms/internal/measurement/X;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->c()V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->d:LF8/n0;

    iget-object p0, p0, LF8/n0;->L:LF8/h1;

    invoke-static {p0}, LF8/n0;->e(LF8/z;)V

    iget-object p4, p0, LF8/w0;->a:Ljava/lang/Object;

    check-cast p4, LF8/n0;

    iget-object p5, p4, LF8/n0;->D:LF8/g;

    invoke-virtual {p5}, LF8/g;->p1()Z

    move-result p5

    if-nez p5, :cond_0

    iget-object p0, p4, LF8/n0;->F:LF8/U;

    invoke-static {p0}, LF8/n0;->f(LF8/x0;)V

    iget-object p0, p0, LF8/U;->H:LF8/S;

    const-string p1, "setCurrentScreen cannot be called while screen reporting is disabled."

    invoke-virtual {p0, p1}, LF8/S;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p5, p0, LF8/h1;->c:LF8/e1;

    if-nez p5, :cond_1

    iget-object p0, p4, LF8/n0;->F:LF8/U;

    invoke-static {p0}, LF8/n0;->f(LF8/x0;)V

    iget-object p0, p0, LF8/U;->H:LF8/S;

    const-string p1, "setCurrentScreen cannot be called while no activity active"

    invoke-virtual {p0, p1}, LF8/S;->b(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, LF8/h1;->C:Ljava/util/concurrent/ConcurrentHashMap;

    iget v1, p1, Lcom/google/android/gms/internal/measurement/X;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object p0, p4, LF8/n0;->F:LF8/U;

    invoke-static {p0}, LF8/n0;->f(LF8/x0;)V

    iget-object p0, p0, LF8/U;->H:LF8/S;

    const-string p1, "setCurrentScreen must be called with an activity in the activity lifecycle"

    invoke-virtual {p0, p1}, LF8/S;->b(Ljava/lang/String;)V

    return-void

    :cond_2
    if-nez p3, :cond_3

    iget-object p3, p1, Lcom/google/android/gms/internal/measurement/X;->b:Ljava/lang/String;

    invoke-virtual {p0, p3}, LF8/h1;->j1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_3
    iget-object v2, p5, LF8/e1;->b:Ljava/lang/String;

    iget-object p5, p5, LF8/e1;->a:Ljava/lang/String;

    invoke-static {v2, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    invoke-static {p5, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p5

    if-eqz v2, :cond_5

    if-nez p5, :cond_4

    goto :goto_0

    :cond_4
    iget-object p0, p4, LF8/n0;->F:LF8/U;

    invoke-static {p0}, LF8/n0;->f(LF8/x0;)V

    iget-object p0, p0, LF8/U;->H:LF8/S;

    const-string p1, "setCurrentScreen cannot be called with the same class and name"

    invoke-virtual {p0, p1}, LF8/S;->b(Ljava/lang/String;)V

    return-void

    :cond_5
    :goto_0
    const/16 p5, 0x1f4

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p4, LF8/n0;->D:LF8/g;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-gt v2, p5, :cond_6

    goto :goto_1

    :cond_6
    iget-object p0, p4, LF8/n0;->F:LF8/U;

    invoke-static {p0}, LF8/n0;->f(LF8/x0;)V

    iget-object p0, p0, LF8/U;->H:LF8/S;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "Invalid screen name length in setCurrentScreen. Length"

    invoke-virtual {p0, p1, p2}, LF8/S;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_7
    :goto_1
    if-eqz p3, :cond_9

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_8

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p4, LF8/n0;->D:LF8/g;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-gt v2, p5, :cond_8

    goto :goto_2

    :cond_8
    iget-object p0, p4, LF8/n0;->F:LF8/U;

    invoke-static {p0}, LF8/n0;->f(LF8/x0;)V

    iget-object p0, p0, LF8/U;->H:LF8/S;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "Invalid class name length in setCurrentScreen. Length"

    invoke-virtual {p0, p1, p2}, LF8/S;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_9
    :goto_2
    iget-object p5, p4, LF8/n0;->F:LF8/U;

    invoke-static {p5}, LF8/n0;->f(LF8/x0;)V

    iget-object p5, p5, LF8/U;->K:LF8/S;

    if-nez p2, :cond_a

    const-string v2, "null"

    goto :goto_3

    :cond_a
    move-object v2, p2

    :goto_3
    const-string v3, "Setting current screen to name, class"

    invoke-virtual {p5, v3, v2, p3}, LF8/S;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance p5, LF8/e1;

    iget-object p4, p4, LF8/n0;->I:LF8/V1;

    invoke-static {p4}, LF8/n0;->d(LF8/w0;)V

    invoke-virtual {p4}, LF8/V1;->l2()J

    move-result-wide v2

    invoke-direct {p5, p2, p3, v2, v3}, LF8/e1;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v0, v1, p5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/X;->b:Ljava/lang/String;

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p5, p2}, LF8/h1;->f1(Ljava/lang/String;LF8/e1;Z)V

    return-void
.end method

.method public setDataCollectionEnabled(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->c()V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->d:LF8/n0;

    iget-object p0, p0, LF8/n0;->M:LF8/W0;

    invoke-static {p0}, LF8/n0;->e(LF8/z;)V

    invoke-virtual {p0}, LF8/z;->c1()V

    iget-object v0, p0, LF8/w0;->a:Ljava/lang/Object;

    check-cast v0, LF8/n0;

    iget-object v0, v0, LF8/n0;->G:LF8/m0;

    invoke-static {v0}, LF8/n0;->f(LF8/x0;)V

    new-instance v1, LF8/Q0;

    invoke-direct {v1, p0, p1}, LF8/Q0;-><init>(LF8/W0;Z)V

    invoke-virtual {v0, v1}, LF8/m0;->l1(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setDefaultEventParameters(Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->c()V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->d:LF8/n0;

    iget-object p0, p0, LF8/n0;->M:LF8/W0;

    invoke-static {p0}, LF8/n0;->e(LF8/z;)V

    if-nez p1, :cond_0

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object p1, v0

    :goto_0
    iget-object v0, p0, LF8/w0;->a:Ljava/lang/Object;

    check-cast v0, LF8/n0;

    iget-object v0, v0, LF8/n0;->G:LF8/m0;

    invoke-static {v0}, LF8/n0;->f(LF8/x0;)V

    new-instance v1, LF8/J0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, LF8/J0;-><init>(LF8/W0;Landroid/os/Bundle;I)V

    invoke-virtual {v0, v1}, LF8/m0;->l1(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setEventInterceptor(Lcom/google/android/gms/internal/measurement/S;)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->c()V

    new-instance v0, LS5/d;

    invoke-direct {v0, p0, p1}, LS5/d;-><init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lcom/google/android/gms/internal/measurement/S;)V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->d:LF8/n0;

    iget-object p1, p1, LF8/n0;->G:LF8/m0;

    invoke-static {p1}, LF8/n0;->f(LF8/x0;)V

    invoke-virtual {p1}, LF8/m0;->n1()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->d:LF8/n0;

    iget-object p0, p0, LF8/n0;->M:LF8/W0;

    invoke-static {p0}, LF8/n0;->e(LF8/z;)V

    invoke-virtual {p0}, LF8/y;->b1()V

    invoke-virtual {p0}, LF8/z;->c1()V

    iget-object p1, p0, LF8/W0;->t:LS5/d;

    if-eq v0, p1, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v1, "EventInterceptor already set."

    invoke-static {v1, p1}, Lm8/A;->i(Ljava/lang/String;Z)V

    :cond_1
    iput-object v0, p0, LF8/W0;->t:LS5/d;

    return-void

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->d:LF8/n0;

    iget-object p1, p1, LF8/n0;->G:LF8/m0;

    invoke-static {p1}, LF8/n0;->f(LF8/x0;)V

    new-instance v1, Lp9/b;

    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v0, v3}, Lp9/b;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    invoke-virtual {p1, v1}, LF8/m0;->l1(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setInstanceIdProvider(Lcom/google/android/gms/internal/measurement/U;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->c()V

    return-void
.end method

.method public setMeasurementEnabled(ZJ)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->c()V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->d:LF8/n0;

    iget-object p0, p0, LF8/n0;->M:LF8/W0;

    invoke-static {p0}, LF8/n0;->e(LF8/z;)V

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0}, LF8/z;->c1()V

    iget-object p2, p0, LF8/w0;->a:Ljava/lang/Object;

    check-cast p2, LF8/n0;

    iget-object p2, p2, LF8/n0;->G:LF8/m0;

    invoke-static {p2}, LF8/n0;->f(LF8/x0;)V

    new-instance p3, Lp9/b;

    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-direct {p3, v0, p0, p1, v1}, Lp9/b;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    invoke-virtual {p2, p3}, LF8/m0;->l1(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setMinimumSessionDuration(J)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->c()V

    return-void
.end method

.method public setSessionTimeoutDuration(J)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->c()V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->d:LF8/n0;

    iget-object p0, p0, LF8/n0;->M:LF8/W0;

    invoke-static {p0}, LF8/n0;->e(LF8/z;)V

    iget-object v0, p0, LF8/w0;->a:Ljava/lang/Object;

    check-cast v0, LF8/n0;

    iget-object v0, v0, LF8/n0;->G:LF8/m0;

    invoke-static {v0}, LF8/n0;->f(LF8/x0;)V

    new-instance v1, LF8/R0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, LF8/R0;-><init>(LF8/W0;JI)V

    invoke-virtual {v0, v1}, LF8/m0;->l1(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setSgtmDebugInfo(Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->c()V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->d:LF8/n0;

    iget-object p0, p0, LF8/n0;->M:LF8/W0;

    invoke-static {p0}, LF8/n0;->e(LF8/z;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    iget-object p0, p0, LF8/w0;->a:Ljava/lang/Object;

    check-cast p0, LF8/n0;

    if-nez p1, :cond_0

    iget-object p0, p0, LF8/n0;->F:LF8/U;

    invoke-static {p0}, LF8/n0;->f(LF8/x0;)V

    const-string p1, "Activity intent has no data. Preview Mode was not enabled."

    iget-object p0, p0, LF8/U;->I:LF8/S;

    invoke-virtual {p0, p1}, LF8/S;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "sgtm_debug_enable"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "sgtm_preview_key"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, LF8/n0;->F:LF8/U;

    invoke-static {v0}, LF8/n0;->f(LF8/x0;)V

    const-string v1, "[sgtm] Preview Mode was enabled. Using the sgtmPreviewKey: "

    iget-object v0, v0, LF8/U;->I:LF8/S;

    invoke-virtual {v0, p1, v1}, LF8/S;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LF8/n0;->D:LF8/g;

    iput-object p1, p0, LF8/g;->c:Ljava/lang/String;

    :cond_2
    return-void

    :cond_3
    :goto_0
    iget-object p1, p0, LF8/n0;->F:LF8/U;

    invoke-static {p1}, LF8/n0;->f(LF8/x0;)V

    const-string v0, "[sgtm] Preview Mode was not enabled."

    iget-object p1, p1, LF8/U;->I:LF8/S;

    invoke-virtual {p1, v0}, LF8/S;->b(Ljava/lang/String;)V

    iget-object p0, p0, LF8/n0;->D:LF8/g;

    const/4 p1, 0x0

    iput-object p1, p0, LF8/g;->c:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;J)V
    .locals 7

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->c()V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->d:LF8/n0;

    iget-object v0, p0, LF8/n0;->M:LF8/W0;

    invoke-static {v0}, LF8/n0;->e(LF8/z;)V

    iget-object p0, v0, LF8/w0;->a:Ljava/lang/Object;

    check-cast p0, LF8/n0;

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, LF8/n0;->F:LF8/U;

    invoke-static {p0}, LF8/n0;->f(LF8/x0;)V

    const-string p1, "User ID must be non-empty or null"

    iget-object p0, p0, LF8/U;->F:LF8/S;

    invoke-virtual {p0, p1}, LF8/S;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p0, p0, LF8/n0;->G:LF8/m0;

    invoke-static {p0}, LF8/n0;->f(LF8/x0;)V

    new-instance v1, Lp9/b;

    const/4 v2, 0x7

    invoke-direct {v1, v2, v0, p1}, Lp9/b;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, LF8/m0;->l1(Ljava/lang/Runnable;)V

    const/4 v4, 0x1

    const/4 v1, 0x0

    const-string v2, "_id"

    move-object v3, p1

    move-wide v5, p2

    invoke-virtual/range {v0 .. v6}, LF8/W0;->v1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZJ)V

    return-void
.end method

.method public setUserProperty(Ljava/lang/String;Ljava/lang/String;Lt8/a;ZJ)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->c()V

    invoke-static {p3}, Lt8/b;->M(Lt8/a;)Ljava/lang/Object;

    move-result-object p3

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->d:LF8/n0;

    iget-object p0, p0, LF8/n0;->M:LF8/W0;

    invoke-static {p0}, LF8/n0;->e(LF8/z;)V

    invoke-virtual/range {p0 .. p6}, LF8/W0;->v1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZJ)V

    return-void
.end method

.method public unregisterOnMeasurementEventListener(Lcom/google/android/gms/internal/measurement/S;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->c()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->e:Lq1/e;

    monitor-enter v0

    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/S;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lq1/V;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LF8/E0;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    new-instance v1, LF8/R1;

    invoke-direct {v1, p0, p1}, LF8/R1;-><init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lcom/google/android/gms/internal/measurement/S;)V

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->d:LF8/n0;

    iget-object p0, p0, LF8/n0;->M:LF8/W0;

    invoke-static {p0}, LF8/n0;->e(LF8/z;)V

    invoke-virtual {p0}, LF8/z;->c1()V

    iget-object p1, p0, LF8/W0;->B:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, LF8/w0;->a:Ljava/lang/Object;

    check-cast p0, LF8/n0;

    iget-object p0, p0, LF8/n0;->F:LF8/U;

    invoke-static {p0}, LF8/n0;->f(LF8/x0;)V

    const-string p1, "OnEventListener had not been registered"

    iget-object p0, p0, LF8/U;->F:LF8/S;

    invoke-virtual {p0, p1}, LF8/S;->b(Ljava/lang/String;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
