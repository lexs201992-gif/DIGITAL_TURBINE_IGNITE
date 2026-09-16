.class public final Lcom/google/android/gms/measurement/AppMeasurementReceiver;
.super LX3/a;
.source "SourceFile"


# instance fields
.field public c:LB6/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementReceiver;->c:LB6/a;

    if-nez v0, :cond_0

    new-instance v0, LB6/a;

    const/16 v1, 0x14

    invoke-direct {v0, v1, p0}, LB6/a;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementReceiver;->c:LB6/a;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/measurement/AppMeasurementReceiver;->c:LB6/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-static {p1, v0, v0}, LF8/n0;->l(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/V;Ljava/lang/Long;)LF8/n0;

    move-result-object v0

    iget-object v0, v0, LF8/n0;->F:LF8/U;

    invoke-static {v0}, LF8/n0;->f(LF8/x0;)V

    if-nez p2, :cond_1

    iget-object p0, v0, LF8/U;->F:LF8/S;

    const-string p1, "Receiver called with null intent"

    invoke-virtual {p0, p1}, LF8/S;->b(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    iget-object v1, v0, LF8/U;->K:LF8/S;

    const-string v2, "Local receiver got"

    invoke-virtual {v1, p2, v2}, LF8/S;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "com.google.android.gms.measurement.UPLOAD"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.google.android.gms.measurement.AppMeasurementService"

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    const-string v1, "com.google.android.gms.measurement.UPLOAD"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, v0, LF8/U;->K:LF8/S;

    const-string v1, "Starting wakeful intent."

    invoke-virtual {v0, v1}, LF8/S;->b(Ljava/lang/String;)V

    iget-object p0, p0, LB6/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/measurement/AppMeasurementReceiver;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "androidx.core:wake:"

    sget-object v1, LX3/a;->a:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    sget v0, LX3/a;->b:I

    add-int/lit8 v2, v0, 0x1

    sput v2, LX3/a;->b:I

    const/4 v3, 0x1

    if-gtz v2, :cond_2

    sput v3, LX3/a;->b:I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    :goto_0
    const-string v2, "androidx.contentpager.content.wakelockid"

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object p2

    if-nez p2, :cond_3

    monitor-exit v1

    return-void

    :cond_3
    const-string v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v3, p0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    const-wide/32 p1, 0xea60

    invoke-virtual {p0, p1, p2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    invoke-virtual {v1, v0, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_4
    const-string p0, "com.android.vending.INSTALL_REFERRER"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    iget-object p0, v0, LF8/U;->F:LF8/S;

    const-string p1, "Install Referrer Broadcasts are deprecated"

    invoke-virtual {p0, p1}, LF8/S;->b(Ljava/lang/String;)V

    :cond_5
    return-void
.end method
