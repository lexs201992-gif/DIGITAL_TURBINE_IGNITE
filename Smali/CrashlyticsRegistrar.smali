.class public Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# static fields
.field public static final synthetic d:I


# instance fields
.field public final a:LO9/r;

.field public final b:LO9/r;

.field public final c:LO9/r;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    sget-object v0, LRa/d;->a:LRa/d;

    sget-object v1, LRa/c;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "SessionsDependencies"

    if-eqz v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Dependency "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " already added."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v2, LRa/a;

    new-instance v4, Lre/d;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lre/d;-><init>(Z)V

    invoke-direct {v2, v4}, LRa/a;-><init>(Lre/d;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Dependency to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " added."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LO9/r;

    const-class v1, LN9/a;

    const-class v2, Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, v1, v2}, LO9/r;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;->a:LO9/r;

    new-instance v0, LO9/r;

    const-class v1, LN9/b;

    invoke-direct {v0, v1, v2}, LO9/r;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;->b:LO9/r;

    new-instance v0, LO9/r;

    const-class v1, LN9/c;

    invoke-direct {v0, v1, v2}, LO9/r;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;->c:LO9/r;

    return-void
.end method


# virtual methods
.method public final getComponents()Ljava/util/List;
    .locals 6

    const-class v0, LQ9/b;

    invoke-static {v0}, LO9/c;->b(Ljava/lang/Class;)LO9/b;

    move-result-object v0

    const-string v1, "fire-cls"

    iput-object v1, v0, LO9/b;->a:Ljava/lang/String;

    const-class v2, LG9/f;

    invoke-static {v2}, LO9/j;->c(Ljava/lang/Class;)LO9/j;

    move-result-object v2

    invoke-virtual {v0, v2}, LO9/b;->a(LO9/j;)V

    const-class v2, Lpa/d;

    invoke-static {v2}, LO9/j;->c(Ljava/lang/Class;)LO9/j;

    move-result-object v2

    invoke-virtual {v0, v2}, LO9/b;->a(LO9/j;)V

    iget-object v2, p0, Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;->a:LO9/r;

    new-instance v3, LO9/j;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v3, v2, v4, v5}, LO9/j;-><init>(LO9/r;II)V

    invoke-virtual {v0, v3}, LO9/b;->a(LO9/j;)V

    iget-object v2, p0, Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;->b:LO9/r;

    new-instance v3, LO9/j;

    invoke-direct {v3, v2, v4, v5}, LO9/j;-><init>(LO9/r;II)V

    invoke-virtual {v0, v3}, LO9/b;->a(LO9/j;)V

    iget-object v2, p0, Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;->c:LO9/r;

    new-instance v3, LO9/j;

    invoke-direct {v3, v2, v4, v5}, LO9/j;-><init>(LO9/r;II)V

    invoke-virtual {v0, v3}, LO9/b;->a(LO9/j;)V

    new-instance v2, LO9/j;

    const-class v3, LR9/a;

    const/4 v4, 0x2

    invoke-direct {v2, v5, v4, v3}, LO9/j;-><init>(IILjava/lang/Class;)V

    invoke-virtual {v0, v2}, LO9/b;->a(LO9/j;)V

    new-instance v2, LO9/j;

    const-class v3, LK9/b;

    invoke-direct {v2, v5, v4, v3}, LO9/j;-><init>(IILjava/lang/Class;)V

    invoke-virtual {v0, v2}, LO9/b;->a(LO9/j;)V

    new-instance v2, LO9/j;

    const-class v3, LOa/a;

    invoke-direct {v2, v5, v4, v3}, LO9/j;-><init>(IILjava/lang/Class;)V

    invoke-virtual {v0, v2}, LO9/b;->a(LO9/j;)V

    new-instance v2, LF3/b;

    const/4 v3, 0x5

    invoke-direct {v2, v3, p0}, LF3/b;-><init>(ILjava/lang/Object;)V

    iput-object v2, v0, LO9/b;->f:LO9/f;

    invoke-virtual {v0, v4}, LO9/b;->c(I)V

    invoke-virtual {v0}, LO9/b;->b()LO9/c;

    move-result-object p0

    const-string v0, "19.4.2"

    invoke-static {v1, v0}, LQc/a;->l(Ljava/lang/String;Ljava/lang/String;)LO9/c;

    move-result-object v0

    filled-new-array {p0, v0}, [LO9/c;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
