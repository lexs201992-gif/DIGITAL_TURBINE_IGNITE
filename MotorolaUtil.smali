.class public final Lcom/dti/phoenix/util/MotorolaUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\n\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001d\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u000e\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u0008\u0010\u000c\u001a\u00020\u0005H\u0002R\u000e\u0010\r\u001a\u00020\tX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\tX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\tX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\tX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\tX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\tX\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/dti/phoenix/util/MotorolaUtil;",
        "",
        "<init>",
        "()V",
        "createShortcut",
        "",
        "context",
        "Landroid/content/Context;",
        "shortcutPackageName",
        "",
        "(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;",
        "supportsMotorolaShortcutApi",
        "isMotorolaLauncherPermissionGranted",
        "MOTOROLA_LAUNCHER_URI",
        "MOTOROLA_LAUNCHER_METHOD",
        "MOTOROLA_LAUNCHER_EXTRA_PACKAGE_NAME",
        "MOTOROLA_LAUNCHER_EXTRA_SCREEN",
        "MOTOROLA_LAUNCHER_PACKAGE_NAME",
        "MOTOROLA_LAUNCHER_RESULT",
        "app_americaMovilRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dti/phoenix/util/MotorolaUtil;

.field private static final MOTOROLA_LAUNCHER_EXTRA_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field private static final MOTOROLA_LAUNCHER_EXTRA_SCREEN:Ljava/lang/String; = "screen"

.field private static final MOTOROLA_LAUNCHER_METHOD:Ljava/lang/String; = "create_shortcut"

.field private static final MOTOROLA_LAUNCHER_PACKAGE_NAME:Ljava/lang/String; = "com.motorola.launcher3"

.field private static final MOTOROLA_LAUNCHER_RESULT:Ljava/lang/String; = "is_success"

.field private static final MOTOROLA_LAUNCHER_URI:Ljava/lang/String; = "content://com.motorola.launcher3.settings/favorites"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/dti/phoenix/util/MotorolaUtil;

    invoke-direct {v0}, Lcom/dti/phoenix/util/MotorolaUtil;-><init>()V

    sput-object v0, Lcom/dti/phoenix/util/MotorolaUtil;->INSTANCE:Lcom/dti/phoenix/util/MotorolaUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final isMotorolaLauncherPermissionGranted()Z
    .locals 9

    invoke-static {}, LS5/e;->F()Lvf/a;

    move-result-object v0

    iget-object v0, v0, Lvf/a;->a:LFf/a;

    iget-object v0, v0, LFf/a;->b:LGf/a;

    sget-object v1, Lkotlin/jvm/internal/F;->a:Lkotlin/jvm/internal/G;

    const-class v2, Lcom/dti/phoenix/domain/manager/StateManager;

    invoke-virtual {v1, v2}, Lkotlin/jvm/internal/G;->b(Ljava/lang/Class;)LVc/d;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, LGf/a;->a(LVc/d;LEf/a;LOc/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dti/phoenix/domain/manager/StateManager;

    sget-object v1, Lcom/dti/phoenix/domain/model/Permissions;->MOTOROLA_LAUNCHER_READ_SETTINGS:Lcom/dti/phoenix/domain/model/Permissions;

    invoke-interface {v0, v1}, Lcom/dti/phoenix/domain/manager/StateManager;->isPermissionGranted(Lcom/dti/phoenix/domain/model/Permissions;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Motorola launcher permission to place shortcuts granted: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Lcom/dti/phoenix/util/logger/LogKt;->logD$default(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V

    return v0
.end method


# virtual methods
.method public final createShortcut(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 17

    move-object/from16 v0, p2

    const-string v1, "is_success"

    const-string v2, "Result bundle: "

    const-string v3, "context"

    move-object/from16 v4, p1

    invoke-static {v4, v3}, Lkotlin/jvm/internal/q;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "shortcutPackageName"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/q;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v6, "Creating shortcut for motorola"

    const/4 v9, 0x6

    const/4 v10, 0x0

    move-object/from16 v5, p0

    invoke-static/range {v5 .. v10}, Lcom/dti/phoenix/util/logger/LogKt;->logD$default(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V

    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v5, "package_name"

    invoke-virtual {v3, v5, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "screen"

    const/4 v5, 0x1

    invoke-virtual {v3, v0, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "content://com.motorola.launcher3.settings/favorites"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v6, "create_shortcut"

    const/4 v7, 0x0

    invoke-virtual {v0, v4, v6, v7, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x6

    const/16 v16, 0x0

    move-object/from16 v11, p0

    invoke-static/range {v11 .. v16}, Lcom/dti/phoenix/util/logger/LogKt;->logD$default(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v5, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :cond_0
    return-object v7

    :catchall_0
    move-exception v0

    invoke-static {v0}, LS5/e;->w(Ljava/lang/Throwable;)LAc/n;

    move-result-object v0

    invoke-static {v0}, LAc/o;->b(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_1

    sget-object v1, Lcom/dti/phoenix/util/MotorolaUtil;->INSTANCE:Lcom/dti/phoenix/util/MotorolaUtil;

    const-string v2, "Exception creating homescreen shortcut"

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/dti/phoenix/util/logger/LogKt;->logE$default(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final supportsMotorolaShortcutApi(Landroid/content/Context;)Z
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/q;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, LS5/e;->F()Lvf/a;

    move-result-object v0

    iget-object v0, v0, Lvf/a;->a:LFf/a;

    iget-object v0, v0, LFf/a;->b:LGf/a;

    sget-object v1, Lkotlin/jvm/internal/F;->a:Lkotlin/jvm/internal/G;

    const-class v2, Lcom/dti/phoenix/core/installer/Installer;

    invoke-virtual {v1, v2}, Lkotlin/jvm/internal/G;->b(Ljava/lang/Class;)LVc/d;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, LGf/a;->a(LVc/d;LEf/a;LOc/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dti/phoenix/core/installer/Installer;

    invoke-virtual {v0}, Lcom/dti/phoenix/core/installer/Installer;->getAgent()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ignite"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v3, "Will not use the motorola shortcut API, non default installer is being used"

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/dti/phoenix/util/logger/LogKt;->logD$default(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V

    return v1

    :cond_0
    move-object v2, p0

    :try_start_0
    sget-object p0, Lcom/dti/phoenix/util/ShortcutUtils;->INSTANCE:Lcom/dti/phoenix/util/ShortcutUtils;

    invoke-virtual {p0, p1}, Lcom/dti/phoenix/util/ShortcutUtils;->getDefaultHomeLauncher(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "com.motorola.launcher3"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-direct {v2}, Lcom/dti/phoenix/util/MotorolaUtil;->isMotorolaLauncherPermissionGranted()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :cond_1
    return v1

    :goto_0
    invoke-static {p0}, LS5/e;->w(Ljava/lang/Throwable;)LAc/n;

    move-result-object p0

    invoke-static {p0}, LAc/o;->b(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_2

    sget-object v2, Lcom/dti/phoenix/util/MotorolaUtil;->INSTANCE:Lcom/dti/phoenix/util/MotorolaUtil;

    const-string v3, "Error getting default home launcher"

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/dti/phoenix/util/logger/LogKt;->logE$default(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_2
    return v1
.end method
