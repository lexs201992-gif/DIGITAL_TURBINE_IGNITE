.class public final Lcom/google/android/gms/measurement/AppMeasurementJobService;
.super Landroid/app/job/JobService;
.source "SourceFile"

# interfaces
.implements LF8/u1;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x18
.end annotation


# instance fields
.field public a:LB6/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final b(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public final c(Landroid/app/job/JobParameters;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method

.method public final d()LB6/a;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementJobService;->a:LB6/a;

    if-nez v0, :cond_0

    new-instance v0, LB6/a;

    const/16 v1, 0x17

    invoke-direct {v0, v1, p0}, LB6/a;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementJobService;->a:LB6/a;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/measurement/AppMeasurementJobService;->a:LB6/a;

    return-object p0
.end method

.method public final onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/AppMeasurementJobService;->d()LB6/a;

    move-result-object p0

    iget-object p0, p0, LB6/a;->b:Ljava/lang/Object;

    check-cast p0, Landroid/app/Service;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const-string v0, " is starting up."

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "FA"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/AppMeasurementJobService;->d()LB6/a;

    move-result-object v0

    iget-object v0, v0, LB6/a;->b:Ljava/lang/Object;

    check-cast v0, Landroid/app/Service;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, " is shutting down."

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FA"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public final onRebind(Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/AppMeasurementJobService;->d()LB6/a;

    const-string p0, "FA"

    if-nez p1, :cond_0

    const-string p1, "onRebind called with null intent"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onRebind called. action: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 7

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/AppMeasurementJobService;->d()LB6/a;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    const-string v1, "action"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onStartJob received action: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "FA"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.google.android.gms.measurement.UPLOAD"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, p0, LB6/a;->b:Ljava/lang/Object;

    check-cast v2, Landroid/app/Service;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lm8/A;->g(Ljava/lang/Object;)V

    invoke-static {v2}, LF8/O1;->n0(Landroid/app/Service;)LF8/O1;

    move-result-object v1

    invoke-virtual {v1}, LF8/O1;->E()LF8/U;

    move-result-object v3

    iget-object v4, v1, LF8/O1;->I:LF8/n0;

    iget-object v4, v4, LF8/n0;->C:Lma/d;

    const-string v4, "Local AppMeasurementJobService called. action"

    iget-object v5, v3, LF8/U;->K:LF8/S;

    invoke-virtual {v5, v0, v4}, LF8/S;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, LA3/o;

    const/16 v5, 0x9

    invoke-direct {v4, p0, v3, p1, v5}, LA3/o;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1}, LF8/O1;->v0()LF8/m0;

    move-result-object v3

    new-instance v5, Lp9/b;

    const/16 v6, 0x11

    invoke-direct {v5, v6, v1, v4}, Lp9/b;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v5}, LF8/m0;->l1(Ljava/lang/Runnable;)V

    :cond_0
    const-string v1, "com.google.android.gms.measurement.SCION_UPLOAD"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lm8/A;->g(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/measurement/l0;->d(Landroid/content/Context;Landroid/os/Bundle;)Lcom/google/android/gms/internal/measurement/l0;

    move-result-object v1

    sget-object v2, LF8/C;->T0:LF8/B;

    invoke-virtual {v2, v0}, LF8/B;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lp9/b;

    const/16 v2, 0x10

    invoke-direct {v0, v2, p0, p1}, Lp9/b;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/google/android/gms/internal/measurement/Z;

    const/4 p1, 0x2

    invoke-direct {p0, v1, v0, p1}, Lcom/google/android/gms/internal/measurement/Z;-><init>(Lcom/google/android/gms/internal/measurement/l0;Ljava/lang/Object;I)V

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/measurement/l0;->b(Lcom/google/android/gms/internal/measurement/h0;)V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onUnbind(Landroid/content/Intent;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/AppMeasurementJobService;->d()LB6/a;

    const-string p0, "FA"

    if-nez p1, :cond_0

    const-string p1, "onUnbind called with null intent"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onUnbind called for intent. action: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x1

    return p0
.end method
