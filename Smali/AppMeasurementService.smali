.class public final Lcom/google/android/gms/measurement/AppMeasurementService;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements LF8/u1;


# instance fields
.field public a:LB6/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/Service;->stopSelfResult(I)Z

    move-result p0

    return p0
.end method

.method public final b(Landroid/content/Intent;)V
    .locals 3

    sget-object p0, LX3/a;->a:Landroid/util/SparseArray;

    const-string p0, "No active wake lock id #"

    const-string v0, "androidx.contentpager.content.wakelockid"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object v0, LX3/a;->a:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    const-string v1, "WakefulBroadcastReceiv."

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final c(Landroid/app/job/JobParameters;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final d()LB6/a;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementService;->a:LB6/a;

    if-nez v0, :cond_0

    new-instance v0, LB6/a;

    const/16 v1, 0x17

    invoke-direct {v0, v1, p0}, LB6/a;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementService;->a:LB6/a;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/measurement/AppMeasurementService;->a:LB6/a;

    return-object p0
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/AppMeasurementService;->d()LB6/a;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "FA"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string p0, "onBind called with null intent"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v2, "com.google.android.gms.measurement.START"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance p1, LF8/v0;

    iget-object p0, p0, LB6/a;->b:Ljava/lang/Object;

    check-cast p0, Landroid/app/Service;

    invoke-static {p0}, LF8/O1;->n0(Landroid/app/Service;)LF8/O1;

    move-result-object p0

    invoke-direct {p1, p0}, LF8/v0;-><init>(LF8/O1;)V

    return-object p1

    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "onBind received unknown action: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public final onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/AppMeasurementService;->d()LB6/a;

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

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/AppMeasurementService;->d()LB6/a;

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

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/AppMeasurementService;->d()LB6/a;

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

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/AppMeasurementService;->d()LB6/a;

    move-result-object p0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "FA"

    const-string p1, "AppMeasurementService started with null intent"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object p2, p0, LB6/a;->b:Ljava/lang/Object;

    check-cast p2, Landroid/app/Service;

    const/4 v0, 0x0

    invoke-static {p2, v0, v0}, LF8/n0;->l(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/V;Ljava/lang/Long;)LF8/n0;

    move-result-object v0

    iget-object v0, v0, LF8/n0;->F:LF8/U;

    invoke-static {v0}, LF8/n0;->f(LF8/x0;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Local AppMeasurementService called. startId, action"

    iget-object v4, v0, LF8/U;->K:LF8/S;

    invoke-virtual {v4, v3, v2, v1}, LF8/S;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v2, "com.google.android.gms.measurement.UPLOAD"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, LF8/Z0;

    invoke-direct {v1, p0, p3, v0, p1}, LF8/Z0;-><init>(LB6/a;ILF8/U;Landroid/content/Intent;)V

    invoke-static {p2}, LF8/O1;->n0(Landroid/app/Service;)LF8/O1;

    move-result-object p0

    invoke-virtual {p0}, LF8/O1;->v0()LF8/m0;

    move-result-object p1

    new-instance p2, Lp9/b;

    const/16 p3, 0x11

    invoke-direct {p2, p3, p0, v1}, Lp9/b;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, LF8/m0;->l1(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    const/4 p0, 0x2

    return p0
.end method

.method public final onUnbind(Landroid/content/Intent;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/AppMeasurementService;->d()LB6/a;

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
