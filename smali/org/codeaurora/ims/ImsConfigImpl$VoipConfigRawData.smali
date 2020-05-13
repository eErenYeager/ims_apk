.class Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;
.super Lorg/codeaurora/ims/ImsConfigImpl$Config;
.source "ImsConfigImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsConfigImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VoipConfigRawData"
.end annotation


# instance fields
.field amr_mode:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

.field amr_mode_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

.field amr_octet_align:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

.field amr_octet_align_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

.field amr_wb_enable:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

.field amr_wb_enable_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

.field amr_wb_mode:Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

.field amr_wb_mode_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

.field amr_wb_octet_align:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

.field amr_wb_octet_align_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

.field min_session_timer:Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

.field min_session_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

.field ringback_timer:Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

.field ringback_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

.field ringing_timer:Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

.field ringing_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

.field rtp_rtcp_inactivity_timer:Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

.field rtp_rtcp_inactivity_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

.field scr_amr_enable:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

.field scr_amr_enable_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

.field scr_amr_wb_enable:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

.field scr_amr_wb_enable_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

.field session_duration:Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

.field session_duration_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

.field final synthetic this$0:Lorg/codeaurora/ims/ImsConfigImpl;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsConfigImpl;)V
    .locals 2

    .line 872
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    .line 873
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$Config;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 847
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->amr_mode:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    .line 848
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->amr_mode_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 849
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->amr_octet_align:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    .line 850
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->amr_octet_align_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 851
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->amr_wb_enable:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    .line 852
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->amr_wb_enable_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 853
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->amr_wb_mode:Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

    .line 854
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->amr_wb_mode_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 855
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->amr_wb_octet_align:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    .line 856
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->amr_wb_octet_align_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 857
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->min_session_timer:Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

    .line 858
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p1, v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->min_session_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 859
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->ringback_timer:Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

    .line 860
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p1, v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->ringback_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 861
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->ringing_timer:Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

    .line 862
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p1, v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->ringing_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 863
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->rtp_rtcp_inactivity_timer:Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

    .line 864
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p1, v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->rtp_rtcp_inactivity_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 865
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->scr_amr_enable:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    .line 866
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->scr_amr_enable_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 867
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->scr_amr_wb_enable:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    .line 868
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->scr_amr_wb_enable_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 869
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->session_duration:Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

    .line 870
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p1, v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->session_duration_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 874
    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 1

    .line 878
    const/16 v0, 0x24

    return v0
.end method

.method public populate(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 912
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->session_duration_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 913
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->session_duration:Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;->get(Ljava/nio/ByteBuffer;)V

    .line 914
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->min_session_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 915
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->min_session_timer:Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;->get(Ljava/nio/ByteBuffer;)V

    .line 916
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->amr_wb_enable_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 917
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->amr_wb_enable:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->get(Ljava/nio/ByteBuffer;)V

    .line 918
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->scr_amr_enable_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 919
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->scr_amr_enable:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->get(Ljava/nio/ByteBuffer;)V

    .line 920
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->scr_amr_wb_enable_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 921
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->scr_amr_wb_enable:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->get(Ljava/nio/ByteBuffer;)V

    .line 922
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->amr_mode_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 923
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->amr_mode:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->get(Ljava/nio/ByteBuffer;)V

    .line 924
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->amr_wb_mode_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 925
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->amr_wb_mode:Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;->get(Ljava/nio/ByteBuffer;)V

    .line 926
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->amr_octet_align_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 927
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->amr_octet_align:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->get(Ljava/nio/ByteBuffer;)V

    .line 928
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->amr_wb_octet_align_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 929
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->amr_wb_octet_align:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->get(Ljava/nio/ByteBuffer;)V

    .line 930
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->ringing_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 931
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->ringing_timer:Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;->get(Ljava/nio/ByteBuffer;)V

    .line 932
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->ringback_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 933
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->ringback_timer:Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;->get(Ljava/nio/ByteBuffer;)V

    .line 934
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->rtp_rtcp_inactivity_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 935
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->rtp_rtcp_inactivity_timer:Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;->get(Ljava/nio/ByteBuffer;)V

    .line 936
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "VoipConfigRawData::populate: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImsConfigImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    return-void
.end method

.method public put(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 883
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VoipConfigRawData::put: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsConfigImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->session_duration_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 885
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->session_duration:Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;->put(Ljava/nio/ByteBuffer;)V

    .line 886
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->min_session_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 887
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->min_session_timer:Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;->put(Ljava/nio/ByteBuffer;)V

    .line 888
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->amr_wb_enable_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 889
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->amr_wb_enable:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->put(Ljava/nio/ByteBuffer;)V

    .line 890
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->scr_amr_enable_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 891
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->scr_amr_enable:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->put(Ljava/nio/ByteBuffer;)V

    .line 892
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->scr_amr_wb_enable_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 893
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->scr_amr_wb_enable:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->put(Ljava/nio/ByteBuffer;)V

    .line 894
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->amr_mode_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 895
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->amr_mode:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->put(Ljava/nio/ByteBuffer;)V

    .line 896
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->amr_wb_mode_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 897
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->amr_wb_mode:Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;->put(Ljava/nio/ByteBuffer;)V

    .line 898
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->amr_octet_align_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 899
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->amr_octet_align:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->put(Ljava/nio/ByteBuffer;)V

    .line 900
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->amr_wb_octet_align_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 901
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->amr_wb_octet_align:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->put(Ljava/nio/ByteBuffer;)V

    .line 902
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->ringing_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 903
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->ringing_timer:Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;->put(Ljava/nio/ByteBuffer;)V

    .line 904
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->ringback_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 905
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->ringback_timer:Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;->put(Ljava/nio/ByteBuffer;)V

    .line 906
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->rtp_rtcp_inactivity_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 907
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->rtp_rtcp_inactivity_timer:Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;->put(Ljava/nio/ByteBuffer;)V

    .line 908
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 940
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VoipConfigRawData [session_duration_valid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->session_duration_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", session_duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->session_duration:Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", min_session_timer_valid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->min_session_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", min_session_timer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->min_session_timer:Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", amr_wb_enable_valid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->amr_wb_enable_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", amr_wb_enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->amr_wb_enable:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", scr_amr_enable_valid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->scr_amr_enable_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", scr_amr_enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->scr_amr_enable:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", scr_amr_wb_enable_valid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->scr_amr_wb_enable_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", scr_amr_wb_enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->scr_amr_wb_enable:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", amr_mode_valid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->amr_mode_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", amr_mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->amr_mode:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", amr_wb_mode_valid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->amr_wb_mode_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", amr_wb_mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->amr_wb_mode:Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", amr_octet_align_valid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->amr_octet_align_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", amr_octet_align="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->amr_octet_align:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", amr_wb_octet_align_valid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->amr_wb_octet_align_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", amr_wb_octet_align="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->amr_wb_octet_align:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ringing_timer_valid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->ringing_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ringing_timer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->ringing_timer:Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ringback_timer_valid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->ringback_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ringback_timer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->ringback_timer:Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rtp_rtcp_inactivity_timer_valid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->rtp_rtcp_inactivity_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rtp_rtcp_inactivity_timer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->rtp_rtcp_inactivity_timer:Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
