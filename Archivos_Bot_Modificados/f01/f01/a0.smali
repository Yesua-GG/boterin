.class public final synthetic Lf01/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a0:Lsinet/startup/inDriver/core/ui/button/ProgressButton;

.field public final synthetic b:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic b0:Lf01/b0;

.field public final synthetic c0:Z

.field public final synthetic d0:Ljava/lang/String;

.field public final synthetic e0:I

.field public final synthetic f0:Lsinet/startup/inDriver/city/common/domain/entity/Price;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lsinet/startup/inDriver/core/ui/button/ProgressButton;Lf01/b0;ZLjava/lang/String;ILsinet/startup/inDriver/city/common/domain/entity/Price;)V
    .registers 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf01/a0;->b:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p2, p0, Lf01/a0;->a0:Lsinet/startup/inDriver/core/ui/button/ProgressButton;

    iput-object p3, p0, Lf01/a0;->b0:Lf01/b0;

    iput-boolean p4, p0, Lf01/a0;->c0:Z

    iput-object p5, p0, Lf01/a0;->d0:Ljava/lang/String;

    iput p6, p0, Lf01/a0;->e0:I

    iput-object p7, p0, Lf01/a0;->f0:Lsinet/startup/inDriver/city/common/domain/entity/Price;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 12

    .line 1
    sget-boolean v0, Lsinet/startup/inDriver/city/driver/order/ui/info/BotClient;->isPaused:Z

    if-eqz v0, :cond_6

    const/4 p1, 0x1

    return p1

    :cond_6
    iget-object v0, p0, Lf01/a0;->b:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v1, p0, Lf01/a0;->a0:Lsinet/startup/inDriver/core/ui/button/ProgressButton;

    iget-object v2, p0, Lf01/a0;->b0:Lf01/b0;

    iget-boolean v3, p0, Lf01/a0;->c0:Z

    iget-object v4, p0, Lf01/a0;->d0:Ljava/lang/String;

    iget v5, p0, Lf01/a0;->e0:I

    iget-object v6, p0, Lf01/a0;->f0:Lsinet/startup/inDriver/city/common/domain/entity/Price;

    move-object v7, p1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lf01/b0;->y(Lkotlin/jvm/internal/Ref$BooleanRef;Lsinet/startup/inDriver/core/ui/button/ProgressButton;Lf01/b0;ZLjava/lang/String;ILsinet/startup/inDriver/city/common/domain/entity/Price;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
