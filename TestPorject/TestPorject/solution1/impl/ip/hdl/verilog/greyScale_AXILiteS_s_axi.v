// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

`timescale 1ns/1ps
module greyScale_AXILiteS_s_axi
#(parameter
    C_S_AXI_ADDR_WIDTH = 13,
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
    input  wire [10:0]                   pixelInput_address0,
    input  wire                          pixelInput_ce0,
    output wire [7:0]                    pixelInput_q0,
    input  wire [10:0]                   pixelOutput_address0,
    input  wire                          pixelOutput_ce0,
    input  wire                          pixelOutput_we0,
    input  wire [7:0]                    pixelOutput_d0
);
//------------------------Address Info-------------------
// 0x0000 : Control signals
//          bit 0  - ap_start (Read/Write/COH)
//          bit 1  - ap_done (Read/COR)
//          bit 2  - ap_idle (Read)
//          bit 3  - ap_ready (Read)
//          bit 7  - auto_restart (Read/Write)
//          others - reserved
// 0x0004 : Global Interrupt Enable Register
//          bit 0  - Global Interrupt Enable (Read/Write)
//          others - reserved
// 0x0008 : IP Interrupt Enable Register (Read/Write)
//          bit 0  - Channel 0 (ap_done)
//          bit 1  - Channel 1 (ap_ready)
//          others - reserved
// 0x000c : IP Interrupt Status Register (Read/TOW)
//          bit 0  - Channel 0 (ap_done)
//          bit 1  - Channel 1 (ap_ready)
//          others - reserved
// 0x0800 ~
// 0x0fff : Memory 'pixelInput' (1536 * 8b)
//          Word n : bit [ 7: 0] - pixelInput[4n]
//                   bit [15: 8] - pixelInput[4n+1]
//                   bit [23:16] - pixelInput[4n+2]
//                   bit [31:24] - pixelInput[4n+3]
// 0x1000 ~
// 0x17ff : Memory 'pixelOutput' (1536 * 8b)
//          Word n : bit [ 7: 0] - pixelOutput[4n]
//                   bit [15: 8] - pixelOutput[4n+1]
//                   bit [23:16] - pixelOutput[4n+2]
//                   bit [31:24] - pixelOutput[4n+3]
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

//------------------------Parameter----------------------
localparam
    ADDR_AP_CTRL          = 13'h0000,
    ADDR_GIE              = 13'h0004,
    ADDR_IER              = 13'h0008,
    ADDR_ISR              = 13'h000c,
    ADDR_PIXELINPUT_BASE  = 13'h0800,
    ADDR_PIXELINPUT_HIGH  = 13'h0fff,
    ADDR_PIXELOUTPUT_BASE = 13'h1000,
    ADDR_PIXELOUTPUT_HIGH = 13'h17ff,
    WRIDLE                = 2'd0,
    WRDATA                = 2'd1,
    WRRESP                = 2'd2,
    WRRESET               = 2'd3,
    RDIDLE                = 2'd0,
    RDDATA                = 2'd1,
    RDRESET               = 2'd2,
    ADDR_BITS         = 13;

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
    // memory signals
    wire [8:0]                    int_pixelInput_address0;
    wire                          int_pixelInput_ce0;
    wire                          int_pixelInput_we0;
    wire [3:0]                    int_pixelInput_be0;
    wire [31:0]                   int_pixelInput_d0;
    wire [31:0]                   int_pixelInput_q0;
    wire [8:0]                    int_pixelInput_address1;
    wire                          int_pixelInput_ce1;
    wire                          int_pixelInput_we1;
    wire [3:0]                    int_pixelInput_be1;
    wire [31:0]                   int_pixelInput_d1;
    wire [31:0]                   int_pixelInput_q1;
    reg                           int_pixelInput_read;
    reg                           int_pixelInput_write;
    reg  [1:0]                    int_pixelInput_shift;
    wire [8:0]                    int_pixelOutput_address0;
    wire                          int_pixelOutput_ce0;
    wire                          int_pixelOutput_we0;
    wire [3:0]                    int_pixelOutput_be0;
    wire [31:0]                   int_pixelOutput_d0;
    wire [31:0]                   int_pixelOutput_q0;
    wire [8:0]                    int_pixelOutput_address1;
    wire                          int_pixelOutput_ce1;
    wire                          int_pixelOutput_we1;
    wire [3:0]                    int_pixelOutput_be1;
    wire [31:0]                   int_pixelOutput_d1;
    wire [31:0]                   int_pixelOutput_q1;
    reg                           int_pixelOutput_read;
    reg                           int_pixelOutput_write;
    reg  [1:0]                    int_pixelOutput_shift;

//------------------------Instantiation------------------
// int_pixelInput
greyScale_AXILiteS_s_axi_ram #(
    .BYTES    ( 4 ),
    .DEPTH    ( 384 )
) int_pixelInput (
    .clk0     ( ACLK ),
    .address0 ( int_pixelInput_address0 ),
    .ce0      ( int_pixelInput_ce0 ),
    .we0      ( int_pixelInput_we0 ),
    .be0      ( int_pixelInput_be0 ),
    .d0       ( int_pixelInput_d0 ),
    .q0       ( int_pixelInput_q0 ),
    .clk1     ( ACLK ),
    .address1 ( int_pixelInput_address1 ),
    .ce1      ( int_pixelInput_ce1 ),
    .we1      ( int_pixelInput_we1 ),
    .be1      ( int_pixelInput_be1 ),
    .d1       ( int_pixelInput_d1 ),
    .q1       ( int_pixelInput_q1 )
);
// int_pixelOutput
greyScale_AXILiteS_s_axi_ram #(
    .BYTES    ( 4 ),
    .DEPTH    ( 384 )
) int_pixelOutput (
    .clk0     ( ACLK ),
    .address0 ( int_pixelOutput_address0 ),
    .ce0      ( int_pixelOutput_ce0 ),
    .we0      ( int_pixelOutput_we0 ),
    .be0      ( int_pixelOutput_be0 ),
    .d0       ( int_pixelOutput_d0 ),
    .q0       ( int_pixelOutput_q0 ),
    .clk1     ( ACLK ),
    .address1 ( int_pixelOutput_address1 ),
    .ce1      ( int_pixelOutput_ce1 ),
    .we1      ( int_pixelOutput_we1 ),
    .be1      ( int_pixelOutput_be1 ),
    .d1       ( int_pixelOutput_d1 ),
    .q1       ( int_pixelOutput_q1 )
);

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
assign RVALID  = (rstate == RDDATA) & !int_pixelInput_read & !int_pixelOutput_read;
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
            endcase
        end
        else if (int_pixelInput_read) begin
            rdata <= int_pixelInput_q1;
        end
        else if (int_pixelOutput_read) begin
            rdata <= int_pixelOutput_q1;
        end
    end
end


//------------------------Register logic-----------------
assign interrupt    = int_gie & (|int_isr);
assign ap_start     = int_ap_start;
assign int_ap_idle  = ap_idle;
assign int_ap_ready = ap_ready;
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


//------------------------Memory logic-------------------
// pixelInput
assign int_pixelInput_address0  = pixelInput_address0 >> 2;
assign int_pixelInput_ce0       = pixelInput_ce0;
assign int_pixelInput_we0       = 1'b0;
assign int_pixelInput_be0       = 1'b0;
assign int_pixelInput_d0        = 1'b0;
assign pixelInput_q0            = int_pixelInput_q0 >> (int_pixelInput_shift * 8);
assign int_pixelInput_address1  = ar_hs? raddr[10:2] : waddr[10:2];
assign int_pixelInput_ce1       = ar_hs | (int_pixelInput_write & WVALID);
assign int_pixelInput_we1       = int_pixelInput_write & WVALID;
assign int_pixelInput_be1       = WSTRB;
assign int_pixelInput_d1        = WDATA;
// pixelOutput
assign int_pixelOutput_address0 = pixelOutput_address0 >> 2;
assign int_pixelOutput_ce0      = pixelOutput_ce0;
assign int_pixelOutput_we0      = pixelOutput_we0;
assign int_pixelOutput_be0      = 1 << pixelOutput_address0[1:0];
assign int_pixelOutput_d0       = {4{pixelOutput_d0}};
assign int_pixelOutput_address1 = ar_hs? raddr[10:2] : waddr[10:2];
assign int_pixelOutput_ce1      = ar_hs | (int_pixelOutput_write & WVALID);
assign int_pixelOutput_we1      = int_pixelOutput_write & WVALID;
assign int_pixelOutput_be1      = WSTRB;
assign int_pixelOutput_d1       = WDATA;
// int_pixelInput_read
always @(posedge ACLK) begin
    if (ARESET)
        int_pixelInput_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_PIXELINPUT_BASE && raddr <= ADDR_PIXELINPUT_HIGH)
            int_pixelInput_read <= 1'b1;
        else
            int_pixelInput_read <= 1'b0;
    end
end

// int_pixelInput_write
always @(posedge ACLK) begin
    if (ARESET)
        int_pixelInput_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_PIXELINPUT_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_PIXELINPUT_HIGH)
            int_pixelInput_write <= 1'b1;
        else if (WVALID)
            int_pixelInput_write <= 1'b0;
    end
end

// int_pixelInput_shift
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (pixelInput_ce0)
            int_pixelInput_shift <= pixelInput_address0[1:0];
    end
end

// int_pixelOutput_read
always @(posedge ACLK) begin
    if (ARESET)
        int_pixelOutput_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_PIXELOUTPUT_BASE && raddr <= ADDR_PIXELOUTPUT_HIGH)
            int_pixelOutput_read <= 1'b1;
        else
            int_pixelOutput_read <= 1'b0;
    end
end

// int_pixelOutput_write
always @(posedge ACLK) begin
    if (ARESET)
        int_pixelOutput_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_PIXELOUTPUT_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_PIXELOUTPUT_HIGH)
            int_pixelOutput_write <= 1'b1;
        else if (WVALID)
            int_pixelOutput_write <= 1'b0;
    end
end

// int_pixelOutput_shift
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (pixelOutput_ce0)
            int_pixelOutput_shift <= pixelOutput_address0[1:0];
    end
end


endmodule


`timescale 1ns/1ps

module greyScale_AXILiteS_s_axi_ram
#(parameter
    BYTES  = 4,
    DEPTH  = 256,
    AWIDTH = log2(DEPTH)
) (
    input  wire               clk0,
    input  wire [AWIDTH-1:0]  address0,
    input  wire               ce0,
    input  wire               we0,
    input  wire [BYTES-1:0]   be0,
    input  wire [BYTES*8-1:0] d0,
    output reg  [BYTES*8-1:0] q0,
    input  wire               clk1,
    input  wire [AWIDTH-1:0]  address1,
    input  wire               ce1,
    input  wire               we1,
    input  wire [BYTES-1:0]   be1,
    input  wire [BYTES*8-1:0] d1,
    output reg  [BYTES*8-1:0] q1
);
//------------------------Local signal-------------------
reg  [BYTES*8-1:0] mem[0:DEPTH-1];
//------------------------Task and function--------------
function integer log2;
    input integer x;
    integer n, m;
begin
    n = 1;
    m = 2;
    while (m < x) begin
        n = n + 1;
        m = m * 2;
    end
    log2 = n;
end
endfunction
//------------------------Body---------------------------
// read port 0
always @(posedge clk0) begin
    if (ce0) q0 <= mem[address0];
end

// read port 1
always @(posedge clk1) begin
    if (ce1) q1 <= mem[address1];
end

genvar i;
generate
    for (i = 0; i < BYTES; i = i + 1) begin : gen_write
        // write port 0
        always @(posedge clk0) begin
            if (ce0 & we0 & be0[i]) begin
                mem[address0][8*i+7:8*i] <= d0[8*i+7:8*i];
            end
        end
        // write port 1
        always @(posedge clk1) begin
            if (ce1 & we1 & be1[i]) begin
                mem[address1][8*i+7:8*i] <= d1[8*i+7:8*i];
            end
        end
    end
endgenerate

endmodule

