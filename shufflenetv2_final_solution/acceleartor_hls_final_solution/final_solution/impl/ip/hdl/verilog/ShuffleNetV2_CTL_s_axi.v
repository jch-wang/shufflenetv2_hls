// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

`timescale 1ns/1ps
module ShuffleNetV2_CTL_s_axi
#(parameter
    C_S_AXI_ADDR_WIDTH = 8,
    C_S_AXI_DATA_WIDTH = 32
)(
    // axi4 lite slave signals
    input  wire                          ACLK,
    input  wire                          ARESET,
    input  wire                          ACLK_EN,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] AWADDR,
    input  wire                          AWVALID,
    output wire                          AWREADY,
    input  wire [C_S_AXI_DATA_WIDTH-1:0] WDATA,
    input  wire [C_S_AXI_DATA_WIDTH/8-1:0] WSTRB,
    input  wire                          WVALID,
    output wire                          WREADY,
    output wire [1:0]                    BRESP,
    output wire                          BVALID,
    input  wire                          BREADY,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] ARADDR,
    input  wire                          ARVALID,
    output wire                          ARREADY,
    output wire [C_S_AXI_DATA_WIDTH-1:0] RDATA,
    output wire [1:0]                    RRESP,
    output wire                          RVALID,
    input  wire                          RREADY,
    output wire                          interrupt,
    // user signals
    output wire                          ap_start,
    input  wire                          ap_done,
    input  wire                          ap_ready,
    input  wire                          ap_idle,
    input  wire [31:0]                   ap_return,
    output wire [31:0]                   image_V,
    output wire [31:0]                   conv1_weight_V,
    output wire [31:0]                   shuffle_conv_3x3_V,
    output wire [31:0]                   shuffle_conv_1x1_V,
    output wire [31:0]                   conv_last_weight_0_V,
    output wire [31:0]                   conv_last_weight_1_V,
    output wire [31:0]                   conv_last_weight_2_V,
    output wire [31:0]                   conv_last_weight_3_V,
    output wire [31:0]                   conv_last_weight_4_V,
    output wire [31:0]                   conv_last_weight_5_V,
    output wire [31:0]                   conv_last_weight_6_V,
    output wire [31:0]                   conv_last_weight_7_V,
    output wire [31:0]                   fc_weight_V,
    output wire [31:0]                   bias_V,
    output wire [31:0]                   fc_output_V
);
//------------------------Address Info-------------------
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read)
//        bit 7  - auto_restart (Read/Write)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0  - Channel 0 (ap_done)
//        bit 1  - Channel 1 (ap_ready)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0  - Channel 0 (ap_done)
//        bit 1  - Channel 1 (ap_ready)
//        others - reserved
// 0x10 : Data signal of ap_return
//        bit 31~0 - ap_return[31:0] (Read)
// 0x18 : Data signal of image_V
//        bit 31~0 - image_V[31:0] (Read/Write)
// 0x1c : reserved
// 0x20 : Data signal of conv1_weight_V
//        bit 31~0 - conv1_weight_V[31:0] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of shuffle_conv_3x3_V
//        bit 31~0 - shuffle_conv_3x3_V[31:0] (Read/Write)
// 0x2c : reserved
// 0x30 : Data signal of shuffle_conv_1x1_V
//        bit 31~0 - shuffle_conv_1x1_V[31:0] (Read/Write)
// 0x34 : reserved
// 0x38 : Data signal of conv_last_weight_0_V
//        bit 31~0 - conv_last_weight_0_V[31:0] (Read/Write)
// 0x3c : reserved
// 0x40 : Data signal of conv_last_weight_1_V
//        bit 31~0 - conv_last_weight_1_V[31:0] (Read/Write)
// 0x44 : reserved
// 0x48 : Data signal of conv_last_weight_2_V
//        bit 31~0 - conv_last_weight_2_V[31:0] (Read/Write)
// 0x4c : reserved
// 0x50 : Data signal of conv_last_weight_3_V
//        bit 31~0 - conv_last_weight_3_V[31:0] (Read/Write)
// 0x54 : reserved
// 0x58 : Data signal of conv_last_weight_4_V
//        bit 31~0 - conv_last_weight_4_V[31:0] (Read/Write)
// 0x5c : reserved
// 0x60 : Data signal of conv_last_weight_5_V
//        bit 31~0 - conv_last_weight_5_V[31:0] (Read/Write)
// 0x64 : reserved
// 0x68 : Data signal of conv_last_weight_6_V
//        bit 31~0 - conv_last_weight_6_V[31:0] (Read/Write)
// 0x6c : reserved
// 0x70 : Data signal of conv_last_weight_7_V
//        bit 31~0 - conv_last_weight_7_V[31:0] (Read/Write)
// 0x74 : reserved
// 0x78 : Data signal of fc_weight_V
//        bit 31~0 - fc_weight_V[31:0] (Read/Write)
// 0x7c : reserved
// 0x80 : Data signal of bias_V
//        bit 31~0 - bias_V[31:0] (Read/Write)
// 0x84 : reserved
// 0x88 : Data signal of fc_output_V
//        bit 31~0 - fc_output_V[31:0] (Read/Write)
// 0x8c : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

//------------------------Parameter----------------------
localparam
    ADDR_AP_CTRL                     = 8'h00,
    ADDR_GIE                         = 8'h04,
    ADDR_IER                         = 8'h08,
    ADDR_ISR                         = 8'h0c,
    ADDR_AP_RETURN_0                 = 8'h10,
    ADDR_IMAGE_V_DATA_0              = 8'h18,
    ADDR_IMAGE_V_CTRL                = 8'h1c,
    ADDR_CONV1_WEIGHT_V_DATA_0       = 8'h20,
    ADDR_CONV1_WEIGHT_V_CTRL         = 8'h24,
    ADDR_SHUFFLE_CONV_3X3_V_DATA_0   = 8'h28,
    ADDR_SHUFFLE_CONV_3X3_V_CTRL     = 8'h2c,
    ADDR_SHUFFLE_CONV_1X1_V_DATA_0   = 8'h30,
    ADDR_SHUFFLE_CONV_1X1_V_CTRL     = 8'h34,
    ADDR_CONV_LAST_WEIGHT_0_V_DATA_0 = 8'h38,
    ADDR_CONV_LAST_WEIGHT_0_V_CTRL   = 8'h3c,
    ADDR_CONV_LAST_WEIGHT_1_V_DATA_0 = 8'h40,
    ADDR_CONV_LAST_WEIGHT_1_V_CTRL   = 8'h44,
    ADDR_CONV_LAST_WEIGHT_2_V_DATA_0 = 8'h48,
    ADDR_CONV_LAST_WEIGHT_2_V_CTRL   = 8'h4c,
    ADDR_CONV_LAST_WEIGHT_3_V_DATA_0 = 8'h50,
    ADDR_CONV_LAST_WEIGHT_3_V_CTRL   = 8'h54,
    ADDR_CONV_LAST_WEIGHT_4_V_DATA_0 = 8'h58,
    ADDR_CONV_LAST_WEIGHT_4_V_CTRL   = 8'h5c,
    ADDR_CONV_LAST_WEIGHT_5_V_DATA_0 = 8'h60,
    ADDR_CONV_LAST_WEIGHT_5_V_CTRL   = 8'h64,
    ADDR_CONV_LAST_WEIGHT_6_V_DATA_0 = 8'h68,
    ADDR_CONV_LAST_WEIGHT_6_V_CTRL   = 8'h6c,
    ADDR_CONV_LAST_WEIGHT_7_V_DATA_0 = 8'h70,
    ADDR_CONV_LAST_WEIGHT_7_V_CTRL   = 8'h74,
    ADDR_FC_WEIGHT_V_DATA_0          = 8'h78,
    ADDR_FC_WEIGHT_V_CTRL            = 8'h7c,
    ADDR_BIAS_V_DATA_0               = 8'h80,
    ADDR_BIAS_V_CTRL                 = 8'h84,
    ADDR_FC_OUTPUT_V_DATA_0          = 8'h88,
    ADDR_FC_OUTPUT_V_CTRL            = 8'h8c,
    WRIDLE                           = 2'd0,
    WRDATA                           = 2'd1,
    WRRESP                           = 2'd2,
    WRRESET                          = 2'd3,
    RDIDLE                           = 2'd0,
    RDDATA                           = 2'd1,
    RDRESET                          = 2'd2,
    ADDR_BITS         = 8;

//------------------------Local signal-------------------
    reg  [1:0]                    wstate = WRRESET;
    reg  [1:0]                    wnext;
    reg  [ADDR_BITS-1:0]          waddr;
    wire [31:0]                   wmask;
    wire                          aw_hs;
    wire                          w_hs;
    reg  [1:0]                    rstate = RDRESET;
    reg  [1:0]                    rnext;
    reg  [31:0]                   rdata;
    wire                          ar_hs;
    wire [ADDR_BITS-1:0]          raddr;
    // internal registers
    wire                          int_ap_idle;
    wire                          int_ap_ready;
    reg                           int_ap_done = 1'b0;
    reg                           int_ap_start = 1'b0;
    reg                           int_auto_restart = 1'b0;
    reg                           int_gie = 1'b0;
    reg  [1:0]                    int_ier = 2'b0;
    reg  [1:0]                    int_isr = 2'b0;
    reg  [31:0]                   int_ap_return;
    reg  [31:0]                   int_image_V = 'b0;
    reg  [31:0]                   int_conv1_weight_V = 'b0;
    reg  [31:0]                   int_shuffle_conv_3x3_V = 'b0;
    reg  [31:0]                   int_shuffle_conv_1x1_V = 'b0;
    reg  [31:0]                   int_conv_last_weight_0_V = 'b0;
    reg  [31:0]                   int_conv_last_weight_1_V = 'b0;
    reg  [31:0]                   int_conv_last_weight_2_V = 'b0;
    reg  [31:0]                   int_conv_last_weight_3_V = 'b0;
    reg  [31:0]                   int_conv_last_weight_4_V = 'b0;
    reg  [31:0]                   int_conv_last_weight_5_V = 'b0;
    reg  [31:0]                   int_conv_last_weight_6_V = 'b0;
    reg  [31:0]                   int_conv_last_weight_7_V = 'b0;
    reg  [31:0]                   int_fc_weight_V = 'b0;
    reg  [31:0]                   int_bias_V = 'b0;
    reg  [31:0]                   int_fc_output_V = 'b0;

//------------------------Instantiation------------------

//------------------------AXI write fsm------------------
assign AWREADY = (wstate == WRIDLE);
assign WREADY  = (wstate == WRDATA);
assign BRESP   = 2'b00;  // OKAY
assign BVALID  = (wstate == WRRESP);
assign wmask   = { {8{WSTRB[3]}}, {8{WSTRB[2]}}, {8{WSTRB[1]}}, {8{WSTRB[0]}} };
assign aw_hs   = AWVALID & AWREADY;
assign w_hs    = WVALID & WREADY;

// wstate
always @(posedge ACLK) begin
    if (ARESET)
        wstate <= WRRESET;
    else if (ACLK_EN)
        wstate <= wnext;
end

// wnext
always @(*) begin
    case (wstate)
        WRIDLE:
            if (AWVALID)
                wnext = WRDATA;
            else
                wnext = WRIDLE;
        WRDATA:
            if (WVALID)
                wnext = WRRESP;
            else
                wnext = WRDATA;
        WRRESP:
            if (BREADY)
                wnext = WRIDLE;
            else
                wnext = WRRESP;
        default:
            wnext = WRIDLE;
    endcase
end

// waddr
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (aw_hs)
            waddr <= AWADDR[ADDR_BITS-1:0];
    end
end

//------------------------AXI read fsm-------------------
assign ARREADY = (rstate == RDIDLE);
assign RDATA   = rdata;
assign RRESP   = 2'b00;  // OKAY
assign RVALID  = (rstate == RDDATA);
assign ar_hs   = ARVALID & ARREADY;
assign raddr   = ARADDR[ADDR_BITS-1:0];

// rstate
always @(posedge ACLK) begin
    if (ARESET)
        rstate <= RDRESET;
    else if (ACLK_EN)
        rstate <= rnext;
end

// rnext
always @(*) begin
    case (rstate)
        RDIDLE:
            if (ARVALID)
                rnext = RDDATA;
            else
                rnext = RDIDLE;
        RDDATA:
            if (RREADY & RVALID)
                rnext = RDIDLE;
            else
                rnext = RDDATA;
        default:
            rnext = RDIDLE;
    endcase
end

// rdata
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (ar_hs) begin
            rdata <= 1'b0;
            case (raddr)
                ADDR_AP_CTRL: begin
                    rdata[0] <= int_ap_start;
                    rdata[1] <= int_ap_done;
                    rdata[2] <= int_ap_idle;
                    rdata[3] <= int_ap_ready;
                    rdata[7] <= int_auto_restart;
                end
                ADDR_GIE: begin
                    rdata <= int_gie;
                end
                ADDR_IER: begin
                    rdata <= int_ier;
                end
                ADDR_ISR: begin
                    rdata <= int_isr;
                end
                ADDR_AP_RETURN_0: begin
                    rdata <= int_ap_return[31:0];
                end
                ADDR_IMAGE_V_DATA_0: begin
                    rdata <= int_image_V[31:0];
                end
                ADDR_CONV1_WEIGHT_V_DATA_0: begin
                    rdata <= int_conv1_weight_V[31:0];
                end
                ADDR_SHUFFLE_CONV_3X3_V_DATA_0: begin
                    rdata <= int_shuffle_conv_3x3_V[31:0];
                end
                ADDR_SHUFFLE_CONV_1X1_V_DATA_0: begin
                    rdata <= int_shuffle_conv_1x1_V[31:0];
                end
                ADDR_CONV_LAST_WEIGHT_0_V_DATA_0: begin
                    rdata <= int_conv_last_weight_0_V[31:0];
                end
                ADDR_CONV_LAST_WEIGHT_1_V_DATA_0: begin
                    rdata <= int_conv_last_weight_1_V[31:0];
                end
                ADDR_CONV_LAST_WEIGHT_2_V_DATA_0: begin
                    rdata <= int_conv_last_weight_2_V[31:0];
                end
                ADDR_CONV_LAST_WEIGHT_3_V_DATA_0: begin
                    rdata <= int_conv_last_weight_3_V[31:0];
                end
                ADDR_CONV_LAST_WEIGHT_4_V_DATA_0: begin
                    rdata <= int_conv_last_weight_4_V[31:0];
                end
                ADDR_CONV_LAST_WEIGHT_5_V_DATA_0: begin
                    rdata <= int_conv_last_weight_5_V[31:0];
                end
                ADDR_CONV_LAST_WEIGHT_6_V_DATA_0: begin
                    rdata <= int_conv_last_weight_6_V[31:0];
                end
                ADDR_CONV_LAST_WEIGHT_7_V_DATA_0: begin
                    rdata <= int_conv_last_weight_7_V[31:0];
                end
                ADDR_FC_WEIGHT_V_DATA_0: begin
                    rdata <= int_fc_weight_V[31:0];
                end
                ADDR_BIAS_V_DATA_0: begin
                    rdata <= int_bias_V[31:0];
                end
                ADDR_FC_OUTPUT_V_DATA_0: begin
                    rdata <= int_fc_output_V[31:0];
                end
            endcase
        end
    end
end


//------------------------Register logic-----------------
assign interrupt            = int_gie & (|int_isr);
assign ap_start             = int_ap_start;
assign int_ap_idle          = ap_idle;
assign int_ap_ready         = ap_ready;
assign image_V              = int_image_V;
assign conv1_weight_V       = int_conv1_weight_V;
assign shuffle_conv_3x3_V   = int_shuffle_conv_3x3_V;
assign shuffle_conv_1x1_V   = int_shuffle_conv_1x1_V;
assign conv_last_weight_0_V = int_conv_last_weight_0_V;
assign conv_last_weight_1_V = int_conv_last_weight_1_V;
assign conv_last_weight_2_V = int_conv_last_weight_2_V;
assign conv_last_weight_3_V = int_conv_last_weight_3_V;
assign conv_last_weight_4_V = int_conv_last_weight_4_V;
assign conv_last_weight_5_V = int_conv_last_weight_5_V;
assign conv_last_weight_6_V = int_conv_last_weight_6_V;
assign conv_last_weight_7_V = int_conv_last_weight_7_V;
assign fc_weight_V          = int_fc_weight_V;
assign bias_V               = int_bias_V;
assign fc_output_V          = int_fc_output_V;
// int_ap_start
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_start <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_AP_CTRL && WSTRB[0] && WDATA[0])
            int_ap_start <= 1'b1;
        else if (int_ap_ready)
            int_ap_start <= int_auto_restart; // clear on handshake/auto restart
    end
end

// int_ap_done
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_done <= 1'b0;
    else if (ACLK_EN) begin
        if (ap_done)
            int_ap_done <= 1'b1;
        else if (ar_hs && raddr == ADDR_AP_CTRL)
            int_ap_done <= 1'b0; // clear on read
    end
end

// int_auto_restart
always @(posedge ACLK) begin
    if (ARESET)
        int_auto_restart <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_AP_CTRL && WSTRB[0])
            int_auto_restart <=  WDATA[7];
    end
end

// int_gie
always @(posedge ACLK) begin
    if (ARESET)
        int_gie <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_GIE && WSTRB[0])
            int_gie <= WDATA[0];
    end
end

// int_ier
always @(posedge ACLK) begin
    if (ARESET)
        int_ier <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_IER && WSTRB[0])
            int_ier <= WDATA[1:0];
    end
end

// int_isr[0]
always @(posedge ACLK) begin
    if (ARESET)
        int_isr[0] <= 1'b0;
    else if (ACLK_EN) begin
        if (int_ier[0] & ap_done)
            int_isr[0] <= 1'b1;
        else if (w_hs && waddr == ADDR_ISR && WSTRB[0])
            int_isr[0] <= int_isr[0] ^ WDATA[0]; // toggle on write
    end
end

// int_isr[1]
always @(posedge ACLK) begin
    if (ARESET)
        int_isr[1] <= 1'b0;
    else if (ACLK_EN) begin
        if (int_ier[1] & ap_ready)
            int_isr[1] <= 1'b1;
        else if (w_hs && waddr == ADDR_ISR && WSTRB[0])
            int_isr[1] <= int_isr[1] ^ WDATA[1]; // toggle on write
    end
end

// int_ap_return
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_return <= 0;
    else if (ACLK_EN) begin
        if (ap_done)
            int_ap_return <= ap_return;
    end
end

// int_image_V[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_image_V[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_IMAGE_V_DATA_0)
            int_image_V[31:0] <= (WDATA[31:0] & wmask) | (int_image_V[31:0] & ~wmask);
    end
end

// int_conv1_weight_V[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_conv1_weight_V[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_CONV1_WEIGHT_V_DATA_0)
            int_conv1_weight_V[31:0] <= (WDATA[31:0] & wmask) | (int_conv1_weight_V[31:0] & ~wmask);
    end
end

// int_shuffle_conv_3x3_V[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_shuffle_conv_3x3_V[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SHUFFLE_CONV_3X3_V_DATA_0)
            int_shuffle_conv_3x3_V[31:0] <= (WDATA[31:0] & wmask) | (int_shuffle_conv_3x3_V[31:0] & ~wmask);
    end
end

// int_shuffle_conv_1x1_V[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_shuffle_conv_1x1_V[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SHUFFLE_CONV_1X1_V_DATA_0)
            int_shuffle_conv_1x1_V[31:0] <= (WDATA[31:0] & wmask) | (int_shuffle_conv_1x1_V[31:0] & ~wmask);
    end
end

// int_conv_last_weight_0_V[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_conv_last_weight_0_V[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_CONV_LAST_WEIGHT_0_V_DATA_0)
            int_conv_last_weight_0_V[31:0] <= (WDATA[31:0] & wmask) | (int_conv_last_weight_0_V[31:0] & ~wmask);
    end
end

// int_conv_last_weight_1_V[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_conv_last_weight_1_V[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_CONV_LAST_WEIGHT_1_V_DATA_0)
            int_conv_last_weight_1_V[31:0] <= (WDATA[31:0] & wmask) | (int_conv_last_weight_1_V[31:0] & ~wmask);
    end
end

// int_conv_last_weight_2_V[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_conv_last_weight_2_V[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_CONV_LAST_WEIGHT_2_V_DATA_0)
            int_conv_last_weight_2_V[31:0] <= (WDATA[31:0] & wmask) | (int_conv_last_weight_2_V[31:0] & ~wmask);
    end
end

// int_conv_last_weight_3_V[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_conv_last_weight_3_V[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_CONV_LAST_WEIGHT_3_V_DATA_0)
            int_conv_last_weight_3_V[31:0] <= (WDATA[31:0] & wmask) | (int_conv_last_weight_3_V[31:0] & ~wmask);
    end
end

// int_conv_last_weight_4_V[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_conv_last_weight_4_V[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_CONV_LAST_WEIGHT_4_V_DATA_0)
            int_conv_last_weight_4_V[31:0] <= (WDATA[31:0] & wmask) | (int_conv_last_weight_4_V[31:0] & ~wmask);
    end
end

// int_conv_last_weight_5_V[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_conv_last_weight_5_V[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_CONV_LAST_WEIGHT_5_V_DATA_0)
            int_conv_last_weight_5_V[31:0] <= (WDATA[31:0] & wmask) | (int_conv_last_weight_5_V[31:0] & ~wmask);
    end
end

// int_conv_last_weight_6_V[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_conv_last_weight_6_V[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_CONV_LAST_WEIGHT_6_V_DATA_0)
            int_conv_last_weight_6_V[31:0] <= (WDATA[31:0] & wmask) | (int_conv_last_weight_6_V[31:0] & ~wmask);
    end
end

// int_conv_last_weight_7_V[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_conv_last_weight_7_V[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_CONV_LAST_WEIGHT_7_V_DATA_0)
            int_conv_last_weight_7_V[31:0] <= (WDATA[31:0] & wmask) | (int_conv_last_weight_7_V[31:0] & ~wmask);
    end
end

// int_fc_weight_V[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_fc_weight_V[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_FC_WEIGHT_V_DATA_0)
            int_fc_weight_V[31:0] <= (WDATA[31:0] & wmask) | (int_fc_weight_V[31:0] & ~wmask);
    end
end

// int_bias_V[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_bias_V[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_BIAS_V_DATA_0)
            int_bias_V[31:0] <= (WDATA[31:0] & wmask) | (int_bias_V[31:0] & ~wmask);
    end
end

// int_fc_output_V[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_fc_output_V[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_FC_OUTPUT_V_DATA_0)
            int_fc_output_V[31:0] <= (WDATA[31:0] & wmask) | (int_fc_output_V[31:0] & ~wmask);
    end
end


//------------------------Memory logic-------------------

endmodule
