.class Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Rxr;
.super Ljava/lang/Object;
.source "ImsSenderRxr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsSenderRxr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IFMsg_Rxr"
.end annotation


# instance fields
.field buffer:[B

.field final synthetic this$0:Lorg/codeaurora/ims/ImsSenderRxr;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsSenderRxr;)V
    .locals 1
    .param p1, "this$0"    # Lorg/codeaurora/ims/ImsSenderRxr;

    .prologue
    .line 518
    iput-object p1, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Rxr;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 519
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Rxr;->buffer:[B

    .line 518
    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 523
    const/4 v8, 0x0

    .line 524
    .local v8, "retryCount":I
    const/4 v5, 0x0

    .line 526
    .local v5, "killMe":Z
    const-string/jumbo v3, "qmux_radio/rild_ims"

    .line 529
    .local v3, "ifSocket":Ljava/lang/String;
    if-nez v5, :cond_5

    .line 531
    :goto_0
    const/4 v9, 0x0

    .line 535
    .local v9, "s":Landroid/net/LocalSocket;
    :try_start_0
    new-instance v10, Landroid/net/LocalSocket;

    invoke-direct {v10}, Landroid/net/LocalSocket;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_6

    .line 536
    .local v10, "s":Landroid/net/LocalSocket;
    :try_start_1
    sget-boolean v12, Lorg/codeaurora/ims/ImsSenderRxr;->sTestMode:Z

    .end local v9    # "s":Landroid/net/LocalSocket;
    if-eqz v12, :cond_1

    .line 537
    new-instance v6, Landroid/net/LocalSocketAddress;

    const-string/jumbo v12, "imstestrunnersocket"

    invoke-direct {v6, v12}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;)V

    .line 542
    .local v6, "l":Landroid/net/LocalSocketAddress;
    :goto_1
    invoke-virtual {v10, v6}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 543
    const-string/jumbo v12, "ImsSenderRxr"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Connecting to socket "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4

    .line 578
    const/4 v8, 0x0

    .line 580
    :try_start_2
    iget-object v12, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Rxr;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iput-object v10, v12, Lorg/codeaurora/ims/ImsSenderRxr;->mSocket:Landroid/net/LocalSocket;

    .line 582
    const-string/jumbo v12, "ImsSenderRxr"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Connected to \'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Rxr;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v14, v14, Lorg/codeaurora/ims/ImsSenderRxr;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "\' socket"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4

    .line 584
    const/4 v7, 0x0

    .line 586
    .local v7, "length":I
    :try_start_3
    iget-object v12, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Rxr;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v12, v12, Lorg/codeaurora/ims/ImsSenderRxr;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v12}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 590
    .local v4, "is":Ljava/io/InputStream;
    :cond_0
    :goto_2
    iget-object v12, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Rxr;->buffer:[B

    invoke-static {v4, v12}, Lorg/codeaurora/ims/ImsSenderRxr;->-wrap0(Ljava/io/InputStream;[B)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_5

    move-result v7

    .line 592
    if-gez v7, :cond_4

    .line 610
    .end local v4    # "is":Ljava/io/InputStream;
    :goto_3
    :try_start_4
    const-string/jumbo v12, "ImsSenderRxr"

    const-string/jumbo v13, "Disconnected from socket"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    .line 613
    :try_start_5
    iget-object v12, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Rxr;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v12, v12, Lorg/codeaurora/ims/ImsSenderRxr;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v12}, Landroid/net/LocalSocket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    .line 617
    :goto_4
    :try_start_6
    iget-object v12, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Rxr;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 v13, 0x0

    iput-object v13, v12, Lorg/codeaurora/ims/ImsSenderRxr;->mSocket:Landroid/net/LocalSocket;

    .line 618
    invoke-static {}, Lorg/codeaurora/ims/IFRequest;->resetSerial()V

    .line 622
    iget-object v12, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Rxr;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Lorg/codeaurora/ims/ImsSenderRxr;->-wrap2(Lorg/codeaurora/ims/ImsSenderRxr;IZ)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    move-object v9, v10

    .end local v10    # "s":Landroid/net/LocalSocket;
    .local v9, "s":Landroid/net/LocalSocket;
    goto/16 :goto_0

    .line 539
    .end local v6    # "l":Landroid/net/LocalSocketAddress;
    .end local v7    # "length":I
    .end local v9    # "s":Landroid/net/LocalSocket;
    .restart local v10    # "s":Landroid/net/LocalSocket;
    :cond_1
    :try_start_7
    new-instance v6, Landroid/net/LocalSocketAddress;

    .line 540
    sget-object v12, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    .line 539
    invoke-direct {v6, v3, v12}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4

    .restart local v6    # "l":Landroid/net/LocalSocketAddress;
    goto/16 :goto_1

    .line 545
    .end local v6    # "l":Landroid/net/LocalSocketAddress;
    .end local v10    # "s":Landroid/net/LocalSocket;
    .local v9, "s":Landroid/net/LocalSocket;
    :catch_0
    move-exception v2

    .line 546
    .end local v9    # "s":Landroid/net/LocalSocket;
    .local v2, "ex":Ljava/io/IOException;
    :goto_5
    :try_start_8
    const-string/jumbo v12, "ImsSenderRxr"

    .line 547
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Exception in socket create\'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 546
    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    const/16 v12, 0x8

    if-ne v8, v12, :cond_2

    .line 552
    const-string/jumbo v12, "ImsSenderRxr"

    .line 553
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Couldn\'t find socket after "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 554
    const-string/jumbo v14, " times, continuing to retry silently"

    .line 553
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 552
    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    iget-object v12, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Rxr;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v12}, Lorg/codeaurora/ims/ImsSenderRxr;->-wrap3(Lorg/codeaurora/ims/ImsSenderRxr;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_6

    .line 557
    :try_start_9
    invoke-virtual {v9}, Landroid/net/LocalSocket;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_6

    .line 558
    const/4 v5, 0x1

    .line 559
    return-void

    .line 560
    :catch_1
    move-exception v0

    .line 561
    .local v0, "e":Ljava/io/IOException;
    :try_start_a
    const-string/jumbo v12, "ImsSenderRxr"

    const-string/jumbo v13, "IOException"

    invoke-static {v12, v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 562
    return-void

    .line 564
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    if-lez v8, :cond_3

    const/16 v12, 0x8

    if-ge v8, v12, :cond_3

    .line 565
    const-string/jumbo v12, "ImsSenderRxr"

    .line 566
    const-string/jumbo v13, "Couldn\'t find socket; retrying after timeout"

    .line 565
    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_6

    .line 570
    :cond_3
    const-wide/16 v12, 0xfa0

    :try_start_b
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_6

    .line 574
    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 571
    :catch_2
    move-exception v1

    .local v1, "er":Ljava/lang/InterruptedException;
    goto :goto_6

    .line 599
    .end local v1    # "er":Ljava/lang/InterruptedException;
    .end local v2    # "ex":Ljava/io/IOException;
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v6    # "l":Landroid/net/LocalSocketAddress;
    .restart local v7    # "length":I
    .restart local v10    # "s":Landroid/net/LocalSocket;
    :cond_4
    if-lez v7, :cond_0

    :try_start_c
    iget-object v12, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Rxr;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v13, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Rxr;->buffer:[B

    invoke-virtual {v12, v13, v7}, Lorg/codeaurora/ims/ImsSenderRxr;->processResponse([BI)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_5

    goto/16 :goto_2

    .line 602
    .end local v4    # "is":Ljava/io/InputStream;
    :catch_3
    move-exception v2

    .line 603
    .restart local v2    # "ex":Ljava/io/IOException;
    :try_start_d
    const-string/jumbo v12, "ImsSenderRxr"

    const-string/jumbo v13, "socket closed"

    invoke-static {v12, v13, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_4

    goto/16 :goto_3

    .line 625
    .end local v2    # "ex":Ljava/io/IOException;
    .end local v6    # "l":Landroid/net/LocalSocketAddress;
    .end local v7    # "length":I
    :catch_4
    move-exception v11

    .local v11, "tr":Ljava/lang/Throwable;
    move-object v9, v10

    .line 626
    .end local v10    # "s":Landroid/net/LocalSocket;
    :goto_7
    const-string/jumbo v12, "ImsSenderRxr"

    const-string/jumbo v13, "Uncaught exception"

    invoke-static {v12, v13, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 522
    .end local v11    # "tr":Ljava/lang/Throwable;
    :cond_5
    return-void

    .line 605
    .restart local v6    # "l":Landroid/net/LocalSocketAddress;
    .restart local v7    # "length":I
    .restart local v10    # "s":Landroid/net/LocalSocket;
    :catch_5
    move-exception v11

    .line 606
    .restart local v11    # "tr":Ljava/lang/Throwable;
    :try_start_e
    const-string/jumbo v12, "ImsSenderRxr"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Uncaught exception read length="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 607
    const-string/jumbo v14, "Exception:"

    .line 606
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 607
    invoke-virtual {v11}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v14

    .line 606
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_4

    goto/16 :goto_3

    .line 625
    .end local v6    # "l":Landroid/net/LocalSocketAddress;
    .end local v7    # "length":I
    .end local v10    # "s":Landroid/net/LocalSocket;
    .end local v11    # "tr":Ljava/lang/Throwable;
    :catch_6
    move-exception v11

    .restart local v11    # "tr":Ljava/lang/Throwable;
    goto :goto_7

    .line 614
    .end local v11    # "tr":Ljava/lang/Throwable;
    .restart local v6    # "l":Landroid/net/LocalSocketAddress;
    .restart local v7    # "length":I
    .restart local v10    # "s":Landroid/net/LocalSocket;
    :catch_7
    move-exception v2

    .restart local v2    # "ex":Ljava/io/IOException;
    goto/16 :goto_4

    .line 545
    .end local v2    # "ex":Ljava/io/IOException;
    .end local v6    # "l":Landroid/net/LocalSocketAddress;
    .end local v7    # "length":I
    :catch_8
    move-exception v2

    .restart local v2    # "ex":Ljava/io/IOException;
    move-object v9, v10

    .end local v10    # "s":Landroid/net/LocalSocket;
    .local v9, "s":Landroid/net/LocalSocket;
    goto/16 :goto_5
.end method
