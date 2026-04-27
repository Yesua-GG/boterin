.class public final Lf01/b0$RejecterRunnable;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lf01/b0;

.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lf01/b0;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lf01/b0$RejecterRunnable;->this$0:Lf01/b0;

    .line 2
    iput-object p2, p0, Lf01/b0$RejecterRunnable;->val$id:Ljava/lang/String;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lf01/b0$RejecterRunnable;->this$0:Lf01/b0;

    .line 2
    iget-object v1, v0, Lf01/b0;->b0:Lnz0/c;

    iget-object v2, p0, Lf01/b0$RejecterRunnable;->val$id:Ljava/lang/String;

    invoke-interface {v1, v2}, Lnz0/c;->g(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Lf01/b0;->y0()V

    .line 4
    return-void
.end method
