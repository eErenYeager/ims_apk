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
    .line 588
    iput-object p1, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Rxr;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 589
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Rxr;->buffer:[B

    .line 588
    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 593
    const/4 v8, 0x0

    .line 594
    .local v8, "retryCount":I
    const/4 v5, 0x0

    .line 596
    .local v5, "killMe":Z
    sget-object v12, Lorg/codeaurora/ims/ImsSenderRxr;->SOCKET_NAME_IF:[Ljava/lang/String;

    iget-object v13, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Rxr;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v13}, Lorg/codeaurora/ims/ImsSenderRxr;->-get0(Lorg/codeaurora/ims/ImsSenderRxr;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    aget-object v3, v12, v13

    .line 599
    .local v3, "ifSocket":Ljava/lang/String;
    if-nez v5, :cond_6

    .line 601
    :goto_0
    const/4 v9, 0x0

    .line 605
    .local v9, "s":Landroid/net/LocalSocket;
    :try_start_0
    sget-object v12, Lorg/codeaurora/ims/ImsSenderRxr;->SOCKET_NAME_IF:[Ljava/lang/String;

    iget-object v13, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Rxr;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v13}, Lorg/codeaurora/ims/ImsSenderRxr;->-get0(Lorg/codeaurora/ims/ImsSenderRxr;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    aget-object v3, v12, v13
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_6

    .line 608
    :try_start_1
    new-instance v10, Landroid/net/LocalSocket;

    invoke-direct {v10}, Landroid/net/LocalSocket;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_6

    .line 609
    .end local v9    # "s":Landroid/net/LocalSocket;
    .local v10, "s":Landroid/net/LocalSocket;
    :try_start_2
    sget-boolean v12, Lorg/codeaurora/ims/ImsSenderRxr;->sTestMode:Z

    if-eqz v12, :cond_2

    .line 610
    new-instance v6, Landroid/net/LocalSocketAddress;

    const-string/jumbo v12, "imstestrunnersocket"

    invoke-direct {v6, v12}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;)V

    .line 615
    .local v6, "l":Landroid/net/LocalSocketAddress;
    :goto_1
    invoke-virtual {v10, v6}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 616
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Connecting to socket "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {p0, v12}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4

    .line 651
    const/4 v8, 0x0

    .line 653
    :try_start_3
    iget-object v12, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Rxr;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iput-object v10, v12, Lorg/codeaurora/ims/ImsSenderRxr;->mSocket:Landroid/net/LocalSocket;

    .line 655
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Connected to \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Rxr;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v13, v13, Lorg/codeaurora/ims/ImsSenderRxr;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "\' socket"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {p0, v12}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 656
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "For instance ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Rxr;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v13}, Lorg/codeaurora/ims/ImsSenderRxr;->-get0(Lorg/codeaurora/ims/ImsSenderRxr;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "] connected to \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "\' socket"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {p0, v12}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4

    .line 658
    const/4 v7, 0x0

    .line 660
    .local v7, "length":I
    :try_start_4
    iget-object v12, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Rxr;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v12, v12, Lorg/codeaurora/ims/ImsSenderRxr;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v12}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 664
    .local v4, "is":Ljava/io/InputStream;
    :cond_0
    :goto_2
    iget-object v12, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Rxr;->buffer:[B

    invoke-static {v4, v12}, Lorg/codeaurora/ims/ImsSenderRxr;->-wrap0(Ljava/io/InputStream;[B)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_5

    move-result v7

    .line 666
    if-gez v7, :cond_5

    .line 683
    .end local v4    # "is":Ljava/io/InputStream;
    :goto_3
    :try_start_5
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Disconnected from "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " socket"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {p0, v12}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 685
    iget-object v12, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Rxr;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v12, v12, Lorg/codeaurora/ims/ImsSenderRxr;->mSocket:Landroid/net/LocalSocket;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    if-eqz v12, :cond_1

    .line 687
    :try_start_6
    iget-object v12, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Rxr;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v12, v12, Lorg/codeaurora/ims/ImsSenderRxr;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v12}, Landroid/net/LocalSocket;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    .line 690
    :goto_4
    :try_start_7
    iget-object v12, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Rxr;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 v13, 0x0

    iput-object v13, v12, Lorg/codeaurora/ims/ImsSenderRxr;->mSocket:Landroid/net/LocalSocket;

    .line 692
    :cond_1
    invoke-static {}, Lorg/codeaurora/ims/IFRequest;->resetSerial()V

    .line 696
    iget-object v12, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Rxr;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Lorg/codeaurora/ims/ImsSenderRxr;->-wrap2(Lorg/codeaurora/ims/ImsSenderRxr;IZ)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4

    move-object v9, v10

    .end local v10    # "s":Landroid/net/LocalSocket;
    .local v9, "s":Landroid/net/LocalSocket;
    goto/16 :goto_0

    .line 612
    .end local v6    # "l":Landroid/net/LocalSocketAddress;
    .end local v7    # "length":I
    .end local v9    # "s":Landroid/net/LocalSocket;
    .restart local v10    # "s":Landroid/net/LocalSocket;
    :cond_2
    :try_start_8
    new-instance v6, Landroid/net/LocalSocketAddress;

    .line 613
    sget-object v12, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    .line 612
    invoke-direct {v6, v3, v12}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4

    .restart local v6    # "l":Landroid/net/LocalSocketAddress;
    goto/16 :goto_1

    .line 618
    .end local v6    # "l":Landroid/net/LocalSocketAddress;
    .end local v10    # "s":Landroid/net/LocalSocket;
    .local v9, "s":Landroid/net/LocalSocket;
    :catch_0
    move-exception v2

    .line 620
    .end local v9    # "s":Landroid/net/LocalSocket;
    .local v2, "ex":Ljava/io/IOException;
    :goto_5
    :try_start_9
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Exception in socket create\'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 619
    invoke-static {p0, v12}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 624
    const/16 v12, 0x8

    if-ne v8, v12, :cond_3

    .line 626
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Couldn\'t find "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "socket after "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 627
    const-string/jumbo v13, " times, continuing to retry silently"

    .line 626
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 625
    invoke-static {p0, v12}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 628
    iget-object v12, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Rxr;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v12}, Lorg/codeaurora/ims/ImsSenderRxr;->-wrap3(Lorg/codeaurora/ims/ImsSenderRxr;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_6

    .line 630
    :try_start_a
    invoke-virtual {v9}, Landroid/net/LocalSocket;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_6

    .line 631
    const/4 v5, 0x1

    .line 632
    return-void

    .line 633
    :catch_1
    move-exception v0

    .line 634
    .local v0, "e":Ljava/io/IOException;
    :try_start_b
    const-string/jumbo v12, "IOException"

    invoke-static {p0, v12, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 635
    return-void

    .line 637
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    if-lez v8, :cond_4

    const/16 v12, 0x8

    if-ge v8, v12, :cond_4

    .line 639
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Couldn\'t find "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "socket; retrying after timeout"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 638
    invoke-static {p0, v12}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_6

    .line 643
    :cond_4
    const-wide/16 v12, 0xfa0

    :try_start_c
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_6

    .line 647
    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 644
    :catch_2
    move-exception v1

    .local v1, "er":Ljava/lang/InterruptedException;
    goto :goto_6

    .line 671
    .end local v1    # "er":Ljava/lang/InterruptedException;
    .end local v2    # "ex":Ljava/io/IOException;
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v6    # "l":Landroid/net/LocalSocketAddress;
    .restart local v7    # "length":I
    .restart local v10    # "s":Landroid/net/LocalSocket;
    :cond_5
    :try_start_d
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Read packet: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " bytes"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {p0, v12}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 673
    if-lez v7, :cond_0

    iget-object v12, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Rxr;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v13, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Rxr;->buffer:[B

    invoke-virtual {v12, v13, v7}, Lorg/codeaurora/ims/ImsSenderRxr;->processResponse([BI)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_5

    goto/16 :goto_2

    .line 676
    .end local v4    # "is":Ljava/io/InputStream;
    :catch_3
    move-exception v2

    .line 677
    .restart local v2    # "ex":Ljava/io/IOException;
    :try_start_e
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "\'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "\' socket closed"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {p0, v12}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_4

    goto/16 :goto_3

    .line 699
    .end local v2    # "ex":Ljava/io/IOException;
    .end local v6    # "l":Landroid/net/LocalSocketAddress;
    .end local v7    # "length":I
    :catch_4
    move-exception v11

    .local v11, "tr":Ljava/lang/Throwable;
    move-object v9, v10

    .line 700
    .end local v10    # "s":Landroid/net/LocalSocket;
    :goto_7
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Uncaught exception"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {p0, v12}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 592
    .end local v11    # "tr":Ljava/lang/Throwable;
    :cond_6
    return-void

    .line 678
    .restart local v6    # "l":Landroid/net/LocalSocketAddress;
    .restart local v7    # "length":I
    .restart local v10    # "s":Landroid/net/LocalSocket;
    :catch_5
    move-exception v11

    .line 679
    .restart local v11    # "tr":Ljava/lang/Throwable;
    :try_start_f
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Uncaught exception read length="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 680
    const-string/jumbo v13, "Exception:"

    .line 679
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 680
    invoke-virtual {v11}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v13

    .line 679
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {p0, v12}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_4

    goto/16 :goto_3

    .line 699
    .end local v6    # "l":Landroid/net/LocalSocketAddress;
    .end local v7    # "length":I
    .end local v10    # "s":Landroid/net/LocalSocket;
    .end local v11    # "tr":Ljava/lang/Throwable;
    :catch_6
    move-exception v11

    .restart local v11    # "tr":Ljava/lang/Throwable;
    goto :goto_7

    .line 688
    .end local v11    # "tr":Ljava/lang/Throwable;
    .restart local v6    # "l":Landroid/net/LocalSocketAddress;
    .restart local v7    # "length":I
    .restart local v10    # "s":Landroid/net/LocalSocket;
    :catch_7
    move-exception v2

    .restart local v2    # "ex":Ljava/io/IOException;
    goto/16 :goto_4

    .line 618
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
