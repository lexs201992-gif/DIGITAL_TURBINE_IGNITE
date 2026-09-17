.class public final synthetic Lcom/LogiaGroup/LogiaDeck/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LOc/a;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/LogiaGroup/LogiaDeck/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lcom/LogiaGroup/LogiaDeck/a;->a:I

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Lcom/dti/phoenix/ignitecompat/domain/migrations/WizardNotificationMigration;->a()LDf/a;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {}, Lcom/dti/phoenix/ignitecompat/domain/migrations/SuppressionReminderMigration;->a()LDf/a;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {}, Lcom/dti/phoenix/ignitecompat/domain/migrations/OptOutMigration;->a()LDf/a;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {}, Lcom/dti/phoenix/ignitecompat/domain/migrations/OptInFotaMigration;->a()LDf/a;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-static {}, Lcom/dti/phoenix/ignitecompat/domain/migrations/OptInFotaMigration;->b()LDf/a;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-static {}, Lcom/dti/phoenix/ignitecompat/domain/migrations/OdfeMigration;->a()LDf/a;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-static {}, Lcom/dti/phoenix/ignitecompat/domain/migrations/OdfeMigration;->b()LDf/a;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-static {}, Lcom/dti/phoenix/ignitecompat/domain/migrations/IntervalWizardMigration;->a()LDf/a;

    move-result-object p0

    return-object p0

    :pswitch_7
    invoke-static {}, Lcom/dti/phoenix/ignitecompat/domain/migrations/IntervalWizardMigration;->b()LDf/a;

    move-result-object p0

    return-object p0

    :pswitch_8
    invoke-static {}, Lcom/dti/phoenix/ignitecompat/domain/migrations/IgniteFirstBootMigration;->b()LDf/a;

    move-result-object p0

    return-object p0

    :pswitch_9
    invoke-static {}, Lcom/dti/phoenix/ignitecompat/domain/migrations/IgniteFirstBootMigration;->a()LDf/a;

    move-result-object p0

    return-object p0

    :pswitch_a
    invoke-static {}, Lcom/dti/phoenix/ignitecompat/domain/migrations/GeneratedImeiMigration;->a()LDf/a;

    move-result-object p0

    return-object p0

    :pswitch_b
    invoke-static {}, Lcom/dti/phoenix/ignitecompat/domain/migrations/FotaMigration;->a()LDf/a;

    move-result-object p0

    return-object p0

    :pswitch_c
    invoke-static {}, Lcom/dti/phoenix/ignitecompat/domain/migrations/FcmTokenMigration;->a()LDf/a;

    move-result-object p0

    return-object p0

    :pswitch_d
    invoke-static {}, Lcom/dti/phoenix/ignitecompat/domain/migrations/AppMatchMigration;->b()LDf/a;

    move-result-object p0

    return-object p0

    :pswitch_e
    invoke-static {}, Lcom/dti/phoenix/ignitecompat/domain/migrations/AppMatchMigration;->a()LDf/a;

    move-result-object p0

    return-object p0

    :pswitch_f
    invoke-static {}, Lcom/dti/phoenix/ignitecompat/domain/migrations/AppMatchMigration;->c()LDf/a;

    move-result-object p0

    return-object p0

    :pswitch_10
    invoke-static {}, Lcom/dti/phoenix/ignitecompat/domain/migrations/AppListMigration;->a()LDf/a;

    move-result-object p0

    return-object p0

    :pswitch_11
    invoke-static {}, Lcom/dti/phoenix/ignitecompat/domain/migrations/AfterWizardMigration;->a()LDf/a;

    move-result-object p0

    return-object p0

    :pswitch_12
    invoke-static {}, Lcom/LogiaGroup/LogiaDeck/IgniteCommons;->a()LDf/a;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
