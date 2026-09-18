.class public abstract LA/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, LA/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ",[C]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LA/b;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, LA/b;->b:Z

    return-void
.end method

.method public static a(Landroid/content/Context;LA/c;)V
    .locals 2

    const-string v0, "jobscheduler"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/JobScheduler;

    if-eqz p0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cancel "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " job"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, LA/b;->a:Ljava/lang/String;

    invoke-static {v1, v0}, LC/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, LA/c;->a:I

    invoke-virtual {p0, v0}, Landroid/app/job/JobScheduler;->cancel(I)V

    :cond_0
    const/4 p0, 0x0

    iput-boolean p0, p1, LA/c;->f:Z

    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sInitialized = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, LA/b;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, LA/b;->a:Ljava/lang/String;

    invoke-static {v1, v0}, LC/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, LA/b;->b:Z

    if-nez v0, :cond_3

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "jobscheduler"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/JobScheduler;

    invoke-static {}, LA/c;->values()[LA/c;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v2, :cond_2

    aget-object v5, v0, v3

    iget v6, v5, LA/c;->a:I

    invoke-virtual {p0, v6}, Landroid/app/job/JobScheduler;->getPendingJob(I)Landroid/app/job/JobInfo;

    move-result-object v6

    if-eqz v6, :cond_1

    iput-boolean v4, v5, LA/c;->f:Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    sput-boolean v4, LA/b;->b:Z

    sget-object p0, LC/a;->a:LC/c;

    const-string v0, "sInitialized END"

    invoke-virtual {p0, v1, v0}, LC/c;->b(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void
.end method

.method public static c(Landroid/content/Context;LA/c;)V
    .locals 11

    iget-boolean v0, p1, LA/c;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Register "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " job"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, LA/b;->a:Ljava/lang/String;

    invoke-static {v1, v0}, LC/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, LA/c;->e:Lcom/sec/android/diagmonagent/common/scheduler/interval/IntervalStrategy;

    invoke-interface {v0}, Lcom/sec/android/diagmonagent/common/scheduler/interval/IntervalStrategy;->isPeriodic()Z

    move-result v0

    iget-object v2, p1, LA/c;->d:Lcom/sec/android/diagmonagent/common/scheduler/network/NetworkStrategy;

    iget-object v3, p1, LA/c;->b:Ljava/lang/Class;

    iget-wide v4, p1, LA/c;->c:J

    const-string v6, "jobscheduler"

    iget v7, p1, LA/c;->a:I

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    if-eqz v0, :cond_3

    new-instance v6, Landroid/app/job/JobInfo$Builder;

    new-instance v8, Landroid/content/ComponentName;

    invoke-direct {v8, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v6, v7, v8}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    invoke-interface {v2, p0}, Lcom/sec/android/diagmonagent/common/scheduler/network/NetworkStrategy;->getNetworkType(Landroid/content/Context;)I

    move-result p0

    invoke-virtual {v6, p0}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    iget-object v2, p1, LA/c;->e:Lcom/sec/android/diagmonagent/common/scheduler/interval/IntervalStrategy;

    invoke-interface {v2, v4, v5}, Lcom/sec/android/diagmonagent/common/scheduler/interval/IntervalStrategy;->getIntervalToMillis(J)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Failed to register periodic job: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, LC/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    iget-object v0, p1, LA/c;->e:Lcom/sec/android/diagmonagent/common/scheduler/interval/IntervalStrategy;

    invoke-interface {v0, v4, v5}, Lcom/sec/android/diagmonagent/common/scheduler/interval/IntervalStrategy;->getIntervalToMillis(J)J

    move-result-wide v8

    iget-object v0, p1, LA/c;->e:Lcom/sec/android/diagmonagent/common/scheduler/interval/IntervalStrategy;

    invoke-interface {v0, v4, v5}, Lcom/sec/android/diagmonagent/common/scheduler/interval/IntervalStrategy;->getBackoffIntervalToMillis(J)J

    move-result-wide v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " minLatencyMillis: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ", backoffMillis: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v10, LC/a;->a:LC/c;

    invoke-virtual {v10, v1, v0}, LC/c;->h(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    if-eqz v0, :cond_3

    new-instance v6, Landroid/app/job/JobInfo$Builder;

    new-instance v10, Landroid/content/ComponentName;

    invoke-direct {v10, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v6, v7, v10}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    invoke-virtual {v6, v8, v9}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v3

    invoke-interface {v2, p0}, Lcom/sec/android/diagmonagent/common/scheduler/network/NetworkStrategy;->getNetworkType(Landroid/content/Context;)I

    move-result p0

    invoke-virtual {v3, p0}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-lez v2, :cond_2

    const/4 v2, 0x0

    invoke-virtual {p0, v4, v5, v2}, Landroid/app/job/JobInfo$Builder;->setBackoffCriteria(JI)Landroid/app/job/JobInfo$Builder;

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Failed to register latency job: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, LC/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    const/4 p0, 0x1

    iput-boolean p0, p1, LA/c;->f:Z

    return-void
.end method
