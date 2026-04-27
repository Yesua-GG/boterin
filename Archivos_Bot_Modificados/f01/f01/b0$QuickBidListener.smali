.class public final Lf01/b0$QuickBidListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final this$0:Lf01/b0;

.field public final type:I


# direct methods
.method public constructor <init>(Lf01/b0;I)V
    .registers 3

    iput-object p1, p0, Lf01/b0$QuickBidListener;->this$0:Lf01/b0;

    iput p2, p0, Lf01/b0$QuickBidListener;->type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 16

    iget-object v0, p0, Lf01/b0$QuickBidListener;->this$0:Lf01/b0;

    iget-object v1, v0, Lf01/b0;->l1:Lpz0/e;

    if-eqz v1, :cond_15e

    :try_start_6
    invoke-virtual {v1}, Lpz0/e;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lpz0/e;->o()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Ask Gemini Bid"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "QuickBid clicked - q()= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " | o()= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_15e

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_36

    goto/16 :goto_15e

    :cond_36
    const-string v4, "[^0-9.]"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iget v4, p0, Lf01/b0$QuickBidListener;->type:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_48

    goto :goto_5c

    :cond_48
    const/4 v5, 0x2

    if-ne v4, v5, :cond_54

    const v4, 0x3f8ccccd    # 1.1f

    mul-float/2addr v2, v4

    invoke-static {v2}, Lf01/b0;->smartRound(F)F

    move-result v2

    goto :goto_5c

    :cond_54
    const v4, 0x3f99999a    # 1.2f

    mul-float/2addr v2, v4

    invoke-static {v2}, Lf01/b0;->smartRound(F)F

    move-result v2

    :goto_5c
    const-string v4, "Ask Gemini Bid"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Step 1 - Bid float (btn "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lf01/b0$QuickBidListener;->type:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    float-to-double v8, v2

    invoke-static {v8, v9}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v8

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v7, Ld01/t;->globalOrders:Ljava/util/List;

    if-eqz v7, :cond_e8

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_8e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_e8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ln41/b;

    invoke-virtual {v9}, Ln41/b;->m()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8e

    invoke-virtual {v9}, Ln41/b;->q()Lsinet/startup/inDriver/city/common/domain/entity/Price;

    move-result-object v7

    invoke-virtual {v9}, Ln41/b;->e()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_b7

    const-string v9, "Ask Gemini Bid"

    const-string v10, "ABORTED: activityMode is null"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15e

    :cond_b7
    const-string v10, "passengers"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c0

    goto :goto_e0

    :cond_c0
    const-string v10, "delivery"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c9

    goto :goto_e0

    :cond_c9
    const-string v10, "Ask Gemini Bid"

    const-string v11, "ABORTED: Unknown activityMode: "

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15e

    :goto_e0
    const-string v9, "Ask Gemini Bid"

    const-string v10, "Step 2 - Price found in globalOrders list!"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f6

    :cond_e8
    iget-object v0, p0, Lf01/b0$QuickBidListener;->this$0:Lf01/b0;

    iget-object v7, v0, Lf01/b0;->lastKnownPrice:Lsinet/startup/inDriver/city/common/domain/entity/Price;

    if-nez v7, :cond_f6

    sget-object v7, Lf01/b0;->lastGlobalPrice:Lsinet/startup/inDriver/city/common/domain/entity/Price;

    if-nez v7, :cond_f6

    invoke-static {}, Lsinet/startup/inDriver/city/common/domain/entity/Price;->a()Lsinet/startup/inDriver/city/common/domain/entity/Price;

    move-result-object v7

    :cond_f6
    :goto_f6
    invoke-virtual {v7}, Lsinet/startup/inDriver/city/common/domain/entity/Price;->f()Lsinet/startup/inDriver/city/common/domain/entity/Currency;

    move-result-object v9

    if-nez v9, :cond_fd

    goto :goto_107

    :cond_fd
    invoke-virtual {v9}, Lsinet/startup/inDriver/city/common/domain/entity/Currency;->d()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-gtz v9, :cond_10f

    :goto_107
    const-string v0, "Ask Gemini Bid"

    const-string v1, "ABORTED: QuickBid Error 500 prevented. Currency metadata is missing/0."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15e

    :cond_10f
    invoke-virtual {v7}, Lsinet/startup/inDriver/city/common/domain/entity/Price;->f()Lsinet/startup/inDriver/city/common/domain/entity/Currency;

    move-result-object v9

    invoke-virtual {v7}, Lsinet/startup/inDriver/city/common/domain/entity/Price;->g()Ljava/math/BigDecimal;

    move-result-object v10

    invoke-virtual {v7}, Lsinet/startup/inDriver/city/common/domain/entity/Price;->d()Ljava/math/BigDecimal;

    move-result-object v11

    invoke-virtual {v7}, Lsinet/startup/inDriver/city/common/domain/entity/Price;->h()Ljava/math/BigDecimal;

    move-result-object v12

    invoke-virtual {v7}, Lsinet/startup/inDriver/city/common/domain/entity/Price;->e()Ljava/math/BigDecimal;

    move-result-object v13

    invoke-virtual/range {v7 .. v13}, Lsinet/startup/inDriver/city/common/domain/entity/Price;->b(Ljava/math/BigDecimal;Lsinet/startup/inDriver/city/common/domain/entity/Currency;Ljava/math/BigDecimal;Ljava/math/BigDecimal;Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Lsinet/startup/inDriver/city/common/domain/entity/Price;

    move-result-object v6

    goto :goto_128

    :goto_128
    const-string v4, "Ask Gemini Bid"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Step 3 - SUBMITTING | BigDecimal="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " | Price="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " | orderId="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lf01/b0$QuickBidListener;->this$0:Lf01/b0;

    iget-object v4, v4, Lf01/b0;->e0:Luw/n;

    invoke-interface {v4, v3, v5, v6}, Luw/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_155
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_155} :catch_156

    goto :goto_15e

    :catch_156
    move-exception v0

    const-string v1, "Ask Gemini Bid"

    const-string v2, "Error in QuickBidListener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_15e
    :goto_15e
    return-void
.end method
