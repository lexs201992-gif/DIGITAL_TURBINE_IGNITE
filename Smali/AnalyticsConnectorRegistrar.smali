.class public Lcom/google/firebase/analytics/connector/internal/AnalyticsConnectorRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambda$getComponents$0(LO9/d;)LK9/b;
    .locals 7

    const-class v0, LG9/f;

    invoke-interface {p0, v0}, LO9/d;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LG9/f;

    const-class v1, Landroid/content/Context;

    invoke-interface {p0, v1}, LO9/d;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-class v2, Lla/c;

    invoke-interface {p0, v2}, LO9/d;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lla/c;

    invoke-static {v0}, Lm8/A;->g(Ljava/lang/Object;)V

    invoke-static {v1}, Lm8/A;->g(Ljava/lang/Object;)V

    invoke-static {p0}, Lm8/A;->g(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lm8/A;->g(Ljava/lang/Object;)V

    sget-object v2, LK9/c;->c:LK9/c;

    if-nez v2, :cond_2

    const-class v2, LK9/c;

    monitor-enter v2

    :try_start_0
    sget-object v3, LK9/c;->c:LK9/c;

    if-nez v3, :cond_1

    new-instance v3, Landroid/os/Bundle;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/os/Bundle;-><init>(I)V

    invoke-virtual {v0}, LG9/f;->a()V

    const-string v4, "[DEFAULT]"

    iget-object v5, v0, LG9/f;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, LJ8/t;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, LJ8/t;-><init>(I)V

    new-instance v5, LJ3/a;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, LJ3/a;-><init>(I)V

    check-cast p0, LO9/l;

    invoke-virtual {p0, v4, v5}, LO9/l;->a(Ljava/util/concurrent/Executor;Lla/a;)V

    const-string p0, "dataCollectionDefaultEnabled"

    invoke-virtual {v0}, LG9/f;->i()Z

    move-result v0

    invoke-virtual {v3, p0, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    new-instance p0, LK9/c;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/measurement/l0;->d(Landroid/content/Context;Landroid/os/Bundle;)Lcom/google/android/gms/internal/measurement/l0;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/l0;->d:LB6/a;

    invoke-direct {p0, v0}, LK9/c;-><init>(LB6/a;)V

    sput-object p0, LK9/c;->c:LK9/c;

    :cond_1
    monitor-exit v2

    goto :goto_2

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_2
    sget-object p0, LK9/c;->c:LK9/c;

    return-object p0
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LO9/c;",
            ">;"
        }
    .end annotation

    const-class p0, LK9/b;

    invoke-static {p0}, LO9/c;->b(Ljava/lang/Class;)LO9/b;

    move-result-object p0

    const-class v0, LG9/f;

    invoke-static {v0}, LO9/j;->c(Ljava/lang/Class;)LO9/j;

    move-result-object v0

    invoke-virtual {p0, v0}, LO9/b;->a(LO9/j;)V

    const-class v0, Landroid/content/Context;

    invoke-static {v0}, LO9/j;->c(Ljava/lang/Class;)LO9/j;

    move-result-object v0

    invoke-virtual {p0, v0}, LO9/b;->a(LO9/j;)V

    const-class v0, Lla/c;

    invoke-static {v0}, LO9/j;->c(Ljava/lang/Class;)LO9/j;

    move-result-object v0

    invoke-virtual {p0, v0}, LO9/b;->a(LO9/j;)V

    new-instance v0, LH/a;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, LH/a;-><init>(I)V

    iput-object v0, p0, LO9/b;->f:LO9/f;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, LO9/b;->c(I)V

    invoke-virtual {p0}, LO9/b;->b()LO9/c;

    move-result-object p0

    const-string v0, "fire-analytics"

    const-string v1, "22.4.0"

    invoke-static {v0, v1}, LQc/a;->l(Ljava/lang/String;Ljava/lang/String;)LO9/c;

    move-result-object v0

    filled-new-array {p0, v0}, [LO9/c;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
