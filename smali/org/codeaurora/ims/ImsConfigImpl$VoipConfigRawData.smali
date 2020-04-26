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
    .locals 3
    .param p1, "this$0"    # Lorg/codeaurora/ims/ImsConfigImpl;

    .prologue
    const/4 v2, 0x1

    .line 2107
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$Config;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 2108
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {v0, v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->session_duration_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 2109
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->session_duration:Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

    .line 2111
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {v0, v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->min_session_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 2112
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->min_session_timer:Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

    .line 2114
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->amr_wb_enable_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 2115
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->amr_wb_enable:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    .line 2117
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->scr_amr_enable_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 2118
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->scr_amr_enable:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    .line 2120
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->scr_amr_wb_enable_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 2121
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->scr_amr_wb_enable:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    .line 2123
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->amr_mode_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 2124
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->amr_mode:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    .line 2126
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {v0, v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->amr_wb_mode_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 2127
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->amr_wb_mode:Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

    .line 2129
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->amr_octet_align_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 2130
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->amr_octet_align:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    .line 2132
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->amr_wb_octet_align_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 2133
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->amr_wb_octet_align:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    .line 2135
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {v0, v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->ringing_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 2136
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->ringing_timer:Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

    .line 2138
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {v0, v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->ringback_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 2139
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->ringback_timer:Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

    .line 2141
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {v0, v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->rtp_rtcp_inactivity_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 2142
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->rtp_rtcp_inactivity_timer:Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

    .line 2107
    return-void
.end method


# virtual methods
.method getSize()I
    .locals 1

    .prologue
    .line 2145
    const/16 v0, 0x24

    return v0
.end method

.method populate(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 2178
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->session_duration_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 2179
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->session_duration:Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;->get(Ljava/nio/ByteBuffer;)V

    .line 2180
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->min_session_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 2181
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->min_session_timer:Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;->get(Ljava/nio/ByteBuffer;)V

    .line 2182
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->amr_wb_enable_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 2183
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->amr_wb_enable:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->get(Ljava/nio/ByteBuffer;)V

    .line 2184
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->scr_amr_enable_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 2185
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->scr_amr_enable:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->get(Ljava/nio/ByteBuffer;)V

    .line 2186
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->scr_amr_wb_enable_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 2187
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->scr_amr_wb_enable:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->get(Ljava/nio/ByteBuffer;)V

    .line 2188
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->amr_mode_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 2189
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->amr_mode:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->get(Ljava/nio/ByteBuffer;)V

    .line 2190
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->amr_wb_mode_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 2191
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->amr_wb_mode:Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;->get(Ljava/nio/ByteBuffer;)V

    .line 2192
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->amr_octet_align_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 2193
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->amr_octet_align:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->get(Ljava/nio/ByteBuffer;)V

    .line 2194
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->amr_wb_octet_align_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 2195
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->amr_wb_octet_align:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->get(Ljava/nio/ByteBuffer;)V

    .line 2196
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->ringing_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 2197
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->ringing_timer:Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;->get(Ljava/nio/ByteBuffer;)V

    .line 2198
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->ringback_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 2199
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->ringback_timer:Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;->get(Ljava/nio/ByteBuffer;)V

    .line 2200
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->rtp_rtcp_inactivity_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 2201
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->rtp_rtcp_inactivity_timer:Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;->get(Ljava/nio/ByteBuffer;)V

    .line 2203
    const-string/jumbo v0, "ImsConfigImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "VoipConfigRawData::populate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2177
    return-void
.end method

.method put(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 2149
    const-string/jumbo v0, "ImsConfigImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "VoipConfigRawData::put: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2151
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->session_duration_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 2152
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->session_duration:Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;->put(Ljava/nio/ByteBuffer;)V

    .line 2153
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->min_session_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 2154
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->min_session_timer:Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;->put(Ljava/nio/ByteBuffer;)V

    .line 2155
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->amr_wb_enable_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 2156
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->amr_wb_enable:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->put(Ljava/nio/ByteBuffer;)V

    .line 2157
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->scr_amr_enable_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 2158
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->scr_amr_enable:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->put(Ljava/nio/ByteBuffer;)V

    .line 2159
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->scr_amr_wb_enable_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 2160
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->scr_amr_wb_enable:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->put(Ljava/nio/ByteBuffer;)V

    .line 2161
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->amr_mode_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 2162
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->amr_mode:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->put(Ljava/nio/ByteBuffer;)V

    .line 2163
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->amr_wb_mode_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 2164
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->amr_wb_mode:Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;->put(Ljava/nio/ByteBuffer;)V

    .line 2165
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->amr_octet_align_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 2166
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->amr_octet_align:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->put(Ljava/nio/ByteBuffer;)V

    .line 2167
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->amr_wb_octet_align_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 2168
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->amr_wb_octet_align:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->put(Ljava/nio/ByteBuffer;)V

    .line 2169
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->ringing_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 2170
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->ringing_timer:Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;->put(Ljava/nio/ByteBuffer;)V

    .line 2171
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->ringback_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 2172
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->ringback_timer:Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;->put(Ljava/nio/ByteBuffer;)V

    .line 2173
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->rtp_rtcp_inactivity_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 2174
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->rtp_rtcp_inactivity_timer:Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;->put(Ljava/nio/ByteBuffer;)V

    .line 2148
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "VoipConfigRawData [session_duration_valid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2209
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->session_duration_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 2208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2210
    const-string/jumbo v1, ", session_duration="

    .line 2208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2210
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->session_duration:Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

    .line 2208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2211
    const-string/jumbo v1, ", min_session_timer_valid="

    .line 2208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2211
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->min_session_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 2208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2212
    const-string/jumbo v1, ", min_session_timer="

    .line 2208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2212
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->min_session_timer:Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

    .line 2208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2213
    const-string/jumbo v1, ", amr_wb_enable_valid="

    .line 2208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2213
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->amr_wb_enable_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 2208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2214
    const-string/jumbo v1, ", amr_wb_enable="

    .line 2208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2214
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->amr_wb_enable:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    .line 2208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2215
    const-string/jumbo v1, ", scr_amr_enable_valid="

    .line 2208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2215
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->scr_amr_enable_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 2208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2216
    const-string/jumbo v1, ", scr_amr_enable="

    .line 2208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2216
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->scr_amr_enable:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    .line 2208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2217
    const-string/jumbo v1, ", scr_amr_wb_enable_valid="

    .line 2208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2217
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->scr_amr_wb_enable_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 2208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2218
    const-string/jumbo v1, ", scr_amr_wb_enable="

    .line 2208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2218
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->scr_amr_wb_enable:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    .line 2208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2219
    const-string/jumbo v1, ", amr_mode_valid="

    .line 2208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2219
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->amr_mode_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 2208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2220
    const-string/jumbo v1, ", amr_mode="

    .line 2208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2220
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->amr_mode:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    .line 2208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2221
    const-string/jumbo v1, ", amr_wb_mode_valid="

    .line 2208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2221
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->amr_wb_mode_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 2208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2222
    const-string/jumbo v1, ", amr_wb_mode="

    .line 2208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2222
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->amr_wb_mode:Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

    .line 2208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2223
    const-string/jumbo v1, ", amr_octet_align_valid="

    .line 2208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2223
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->amr_octet_align_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 2208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2224
    const-string/jumbo v1, ", amr_octet_align="

    .line 2208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2224
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->amr_octet_align:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    .line 2208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2225
    const-string/jumbo v1, ", amr_wb_octet_align_valid="

    .line 2208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2225
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->amr_wb_octet_align_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 2208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2226
    const-string/jumbo v1, ", amr_wb_octet_align="

    .line 2208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2226
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->amr_wb_octet_align:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    .line 2208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2227
    const-string/jumbo v1, ", ringing_timer_valid="

    .line 2208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2227
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->ringing_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 2208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2228
    const-string/jumbo v1, ", ringing_timer="

    .line 2208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2228
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->ringing_timer:Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

    .line 2208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2229
    const-string/jumbo v1, ", ringback_timer_valid="

    .line 2208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2229
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->ringback_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 2208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2230
    const-string/jumbo v1, ", ringback_timer="

    .line 2208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2230
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->ringback_timer:Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

    .line 2208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2231
    const-string/jumbo v1, ", rtp_rtcp_inactivity_timer_valid="

    .line 2208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2231
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->rtp_rtcp_inactivity_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 2208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2232
    const-string/jumbo v1, ", rtp_rtcp_inactivity_timer="

    .line 2208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2232
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->rtp_rtcp_inactivity_timer:Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

    .line 2208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2232
    const-string/jumbo v1, "]"

    .line 2208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
