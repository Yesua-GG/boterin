.class public final synthetic Lf01/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lf01/b0;


# direct methods
.method public synthetic constructor <init>(Lf01/b0;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf01/i;->b:Lf01/b0;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 1
    sget-boolean v0, Lsinet/startup/inDriver/city/driver/order/ui/info/BotClient;->isPaused:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lf01/i;->b:Lf01/b0;

    invoke-static {v0}, Lf01/b0;->B(Lf01/b0;)V

    return-void
.end method
