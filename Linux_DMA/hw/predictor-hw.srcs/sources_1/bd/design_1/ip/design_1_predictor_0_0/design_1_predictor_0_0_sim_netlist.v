// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Tue Mar 17 16:44:24 2020
// Host        : kryyni running 64-bit Ubuntu 18.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /lacie/xilinx/linux/predictor/predictor-hw/predictor-hw.srcs/sources_1/bd/design_1/ip/design_1_predictor_0_0/design_1_predictor_0_0_sim_netlist.v
// Design      : design_1_predictor_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_predictor_0_0,predictor,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "predictor,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module design_1_predictor_0_0
   (aclk,
    aresetn,
    s00_axis_tready,
    s00_axis_tdata,
    s00_axis_tstrb,
    s00_axis_tlast,
    s00_axis_tvalid,
    m00_axis_tvalid,
    m00_axis_tdata,
    m00_axis_tstrb,
    m00_axis_tlast,
    m00_axis_tready,
    m00_axis_tkeep);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m00_axis:s00_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 5e+07, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s00_axis TREADY" *) (* x_interface_parameter = "XIL_INTERFACENAME s00_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 5e+07, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) output s00_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s00_axis TDATA" *) input [31:0]s00_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s00_axis TSTRB" *) input [3:0]s00_axis_tstrb;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s00_axis TLAST" *) input s00_axis_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s00_axis TVALID" *) input s00_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m00_axis TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME m00_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 5e+07, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m00_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m00_axis TDATA" *) output [31:0]m00_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m00_axis TSTRB" *) output [3:0]m00_axis_tstrb;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m00_axis TLAST" *) output m00_axis_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m00_axis TREADY" *) input m00_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m00_axis TKEEP" *) output [3:0]m00_axis_tkeep;

  wire \<const1> ;
  wire aclk;
  wire aresetn;
  wire [31:0]m00_axis_tdata;
  wire m00_axis_tlast;
  wire m00_axis_tready;
  wire [2:2]\^m00_axis_tstrb ;
  wire m00_axis_tvalid;
  wire [31:0]s00_axis_tdata;
  wire s00_axis_tlast;
  wire s00_axis_tvalid;

  assign m00_axis_tkeep[3] = \^m00_axis_tstrb [2];
  assign m00_axis_tkeep[2] = \^m00_axis_tstrb [2];
  assign m00_axis_tkeep[1] = \^m00_axis_tstrb [2];
  assign m00_axis_tkeep[0] = \^m00_axis_tstrb [2];
  assign m00_axis_tstrb[3] = \^m00_axis_tstrb [2];
  assign m00_axis_tstrb[2] = \^m00_axis_tstrb [2];
  assign m00_axis_tstrb[1] = \^m00_axis_tstrb [2];
  assign m00_axis_tstrb[0] = \^m00_axis_tstrb [2];
  assign s00_axis_tready = \<const1> ;
  design_1_predictor_0_0_predictor U0
       (.aclk(aclk),
        .aresetn(aresetn),
        .m00_axis_tdata(m00_axis_tdata),
        .m00_axis_tlast(m00_axis_tlast),
        .m00_axis_tready(m00_axis_tready),
        .m00_axis_tstrb(\^m00_axis_tstrb ),
        .m00_axis_tvalid(m00_axis_tvalid),
        .s00_axis_tdata(s00_axis_tdata),
        .s00_axis_tlast(s00_axis_tlast),
        .s00_axis_tvalid(s00_axis_tvalid));
  VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "predictor" *) 
module design_1_predictor_0_0_predictor
   (m00_axis_tdata,
    m00_axis_tlast,
    m00_axis_tvalid,
    m00_axis_tstrb,
    aresetn,
    s00_axis_tvalid,
    aclk,
    s00_axis_tdata,
    m00_axis_tready,
    s00_axis_tlast);
  output [31:0]m00_axis_tdata;
  output m00_axis_tlast;
  output m00_axis_tvalid;
  output [0:0]m00_axis_tstrb;
  input aresetn;
  input s00_axis_tvalid;
  input aclk;
  input [31:0]s00_axis_tdata;
  input m00_axis_tready;
  input s00_axis_tlast;

  wire \FSM_onehot_CurrentState[0]_i_1_n_0 ;
  wire \FSM_onehot_CurrentState[1]_i_1_n_0 ;
  wire \FSM_onehot_CurrentState[2]_i_1_n_0 ;
  wire \FSM_onehot_CurrentState[2]_i_2_n_0 ;
  wire \FSM_onehot_CurrentState[2]_i_3_n_0 ;
  wire \FSM_onehot_CurrentState[2]_i_4_n_0 ;
  wire \FSM_onehot_CurrentState_reg_n_0_[0] ;
  wire \FSM_onehot_CurrentState_reg_n_0_[1] ;
  wire \FSM_onehot_CurrentState_reg_n_0_[2] ;
  wire aclk;
  wire aresetn;
  wire [31:0]data;
  wire \data[3]_i_2_n_0 ;
  wire \data[3]_i_3_n_0 ;
  wire \data_reg[11]_i_1_n_0 ;
  wire \data_reg[11]_i_1_n_1 ;
  wire \data_reg[11]_i_1_n_2 ;
  wire \data_reg[11]_i_1_n_3 ;
  wire \data_reg[15]_i_1_n_0 ;
  wire \data_reg[15]_i_1_n_1 ;
  wire \data_reg[15]_i_1_n_2 ;
  wire \data_reg[15]_i_1_n_3 ;
  wire \data_reg[19]_i_1_n_0 ;
  wire \data_reg[19]_i_1_n_1 ;
  wire \data_reg[19]_i_1_n_2 ;
  wire \data_reg[19]_i_1_n_3 ;
  wire \data_reg[23]_i_1_n_0 ;
  wire \data_reg[23]_i_1_n_1 ;
  wire \data_reg[23]_i_1_n_2 ;
  wire \data_reg[23]_i_1_n_3 ;
  wire \data_reg[27]_i_1_n_0 ;
  wire \data_reg[27]_i_1_n_1 ;
  wire \data_reg[27]_i_1_n_2 ;
  wire \data_reg[27]_i_1_n_3 ;
  wire \data_reg[31]_i_1_n_1 ;
  wire \data_reg[31]_i_1_n_2 ;
  wire \data_reg[31]_i_1_n_3 ;
  wire \data_reg[3]_i_1_n_0 ;
  wire \data_reg[3]_i_1_n_1 ;
  wire \data_reg[3]_i_1_n_2 ;
  wire \data_reg[3]_i_1_n_3 ;
  wire \data_reg[7]_i_1_n_0 ;
  wire \data_reg[7]_i_1_n_1 ;
  wire \data_reg[7]_i_1_n_2 ;
  wire \data_reg[7]_i_1_n_3 ;
  wire [31:0]m00_axis_tdata;
  wire \m00_axis_tdata[0]_i_1_n_0 ;
  wire \m00_axis_tdata[10]_i_1_n_0 ;
  wire \m00_axis_tdata[11]_i_1_n_0 ;
  wire \m00_axis_tdata[12]_i_1_n_0 ;
  wire \m00_axis_tdata[13]_i_1_n_0 ;
  wire \m00_axis_tdata[14]_i_1_n_0 ;
  wire \m00_axis_tdata[15]_i_1_n_0 ;
  wire \m00_axis_tdata[16]_i_1_n_0 ;
  wire \m00_axis_tdata[17]_i_1_n_0 ;
  wire \m00_axis_tdata[18]_i_1_n_0 ;
  wire \m00_axis_tdata[19]_i_1_n_0 ;
  wire \m00_axis_tdata[1]_i_1_n_0 ;
  wire \m00_axis_tdata[20]_i_1_n_0 ;
  wire \m00_axis_tdata[21]_i_1_n_0 ;
  wire \m00_axis_tdata[22]_i_1_n_0 ;
  wire \m00_axis_tdata[23]_i_1_n_0 ;
  wire \m00_axis_tdata[24]_i_1_n_0 ;
  wire \m00_axis_tdata[25]_i_1_n_0 ;
  wire \m00_axis_tdata[26]_i_1_n_0 ;
  wire \m00_axis_tdata[27]_i_1_n_0 ;
  wire \m00_axis_tdata[28]_i_1_n_0 ;
  wire \m00_axis_tdata[29]_i_1_n_0 ;
  wire \m00_axis_tdata[2]_i_1_n_0 ;
  wire \m00_axis_tdata[30]_i_1_n_0 ;
  wire \m00_axis_tdata[31]_i_1_n_0 ;
  wire \m00_axis_tdata[31]_i_2_n_0 ;
  wire \m00_axis_tdata[3]_i_1_n_0 ;
  wire \m00_axis_tdata[4]_i_1_n_0 ;
  wire \m00_axis_tdata[5]_i_1_n_0 ;
  wire \m00_axis_tdata[6]_i_1_n_0 ;
  wire \m00_axis_tdata[7]_i_1_n_0 ;
  wire \m00_axis_tdata[8]_i_1_n_0 ;
  wire \m00_axis_tdata[9]_i_1_n_0 ;
  wire m00_axis_tlast;
  wire m00_axis_tlast_i_1_n_0;
  wire m00_axis_tready;
  wire [0:0]m00_axis_tstrb;
  wire \m00_axis_tstrb[3]_i_1_n_0 ;
  wire m00_axis_tvalid;
  wire m00_axis_tvalid_i_1_n_0;
  wire [10:0]p_0_in;
  wire [31:0]plusOp;
  wire [31:0]s00_axis_tdata;
  wire s00_axis_tlast;
  wire s00_axis_tvalid;
  wire \samplecount[10]_i_1_n_0 ;
  wire \samplecount[10]_i_3_n_0 ;
  wire [10:1]samplecount_reg;
  wire \samplecount_reg_n_0_[0] ;
  wire [3:3]\NLW_data_reg[31]_i_1_CO_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hF2FF)) 
    \FSM_onehot_CurrentState[0]_i_1 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[0] ),
        .I1(s00_axis_tvalid),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[2] ),
        .I3(aresetn),
        .O(\FSM_onehot_CurrentState[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hF8880000)) 
    \FSM_onehot_CurrentState[1]_i_1 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .I1(\FSM_onehot_CurrentState[2]_i_2_n_0 ),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[0] ),
        .I3(s00_axis_tvalid),
        .I4(aresetn),
        .O(\FSM_onehot_CurrentState[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \FSM_onehot_CurrentState[2]_i_1 
       (.I0(\FSM_onehot_CurrentState[2]_i_2_n_0 ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .I2(aresetn),
        .O(\FSM_onehot_CurrentState[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \FSM_onehot_CurrentState[2]_i_2 
       (.I0(s00_axis_tvalid),
        .I1(m00_axis_tready),
        .I2(\FSM_onehot_CurrentState[2]_i_3_n_0 ),
        .I3(\FSM_onehot_CurrentState[2]_i_4_n_0 ),
        .O(\FSM_onehot_CurrentState[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_CurrentState[2]_i_3 
       (.I0(samplecount_reg[6]),
        .I1(samplecount_reg[9]),
        .I2(samplecount_reg[10]),
        .I3(samplecount_reg[7]),
        .I4(samplecount_reg[8]),
        .O(\FSM_onehot_CurrentState[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \FSM_onehot_CurrentState[2]_i_4 
       (.I0(samplecount_reg[1]),
        .I1(samplecount_reg[4]),
        .I2(samplecount_reg[5]),
        .I3(samplecount_reg[2]),
        .I4(samplecount_reg[3]),
        .O(\FSM_onehot_CurrentState[2]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "idle:001,finish:100,work:010" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_CurrentState_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\FSM_onehot_CurrentState[0]_i_1_n_0 ),
        .Q(\FSM_onehot_CurrentState_reg_n_0_[0] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "idle:001,finish:100,work:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_CurrentState_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\FSM_onehot_CurrentState[1]_i_1_n_0 ),
        .Q(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "idle:001,finish:100,work:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_CurrentState_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\FSM_onehot_CurrentState[2]_i_1_n_0 ),
        .Q(\FSM_onehot_CurrentState_reg_n_0_[2] ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \data[3]_i_2 
       (.I0(s00_axis_tdata[3]),
        .O(\data[3]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data[3]_i_3 
       (.I0(s00_axis_tdata[1]),
        .O(\data[3]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(plusOp[0]),
        .Q(data[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(plusOp[10]),
        .Q(data[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(plusOp[11]),
        .Q(data[11]),
        .R(1'b0));
  CARRY4 \data_reg[11]_i_1 
       (.CI(\data_reg[7]_i_1_n_0 ),
        .CO({\data_reg[11]_i_1_n_0 ,\data_reg[11]_i_1_n_1 ,\data_reg[11]_i_1_n_2 ,\data_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[11:8]),
        .S(s00_axis_tdata[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(plusOp[12]),
        .Q(data[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(plusOp[13]),
        .Q(data[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(plusOp[14]),
        .Q(data[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(plusOp[15]),
        .Q(data[15]),
        .R(1'b0));
  CARRY4 \data_reg[15]_i_1 
       (.CI(\data_reg[11]_i_1_n_0 ),
        .CO({\data_reg[15]_i_1_n_0 ,\data_reg[15]_i_1_n_1 ,\data_reg[15]_i_1_n_2 ,\data_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[15:12]),
        .S(s00_axis_tdata[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(plusOp[16]),
        .Q(data[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[17] 
       (.C(aclk),
        .CE(1'b1),
        .D(plusOp[17]),
        .Q(data[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[18] 
       (.C(aclk),
        .CE(1'b1),
        .D(plusOp[18]),
        .Q(data[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[19] 
       (.C(aclk),
        .CE(1'b1),
        .D(plusOp[19]),
        .Q(data[19]),
        .R(1'b0));
  CARRY4 \data_reg[19]_i_1 
       (.CI(\data_reg[15]_i_1_n_0 ),
        .CO({\data_reg[19]_i_1_n_0 ,\data_reg[19]_i_1_n_1 ,\data_reg[19]_i_1_n_2 ,\data_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[19:16]),
        .S(s00_axis_tdata[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(data[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[20] 
       (.C(aclk),
        .CE(1'b1),
        .D(plusOp[20]),
        .Q(data[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[21] 
       (.C(aclk),
        .CE(1'b1),
        .D(plusOp[21]),
        .Q(data[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[22] 
       (.C(aclk),
        .CE(1'b1),
        .D(plusOp[22]),
        .Q(data[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[23] 
       (.C(aclk),
        .CE(1'b1),
        .D(plusOp[23]),
        .Q(data[23]),
        .R(1'b0));
  CARRY4 \data_reg[23]_i_1 
       (.CI(\data_reg[19]_i_1_n_0 ),
        .CO({\data_reg[23]_i_1_n_0 ,\data_reg[23]_i_1_n_1 ,\data_reg[23]_i_1_n_2 ,\data_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[23:20]),
        .S(s00_axis_tdata[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[24] 
       (.C(aclk),
        .CE(1'b1),
        .D(plusOp[24]),
        .Q(data[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[25] 
       (.C(aclk),
        .CE(1'b1),
        .D(plusOp[25]),
        .Q(data[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[26] 
       (.C(aclk),
        .CE(1'b1),
        .D(plusOp[26]),
        .Q(data[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[27] 
       (.C(aclk),
        .CE(1'b1),
        .D(plusOp[27]),
        .Q(data[27]),
        .R(1'b0));
  CARRY4 \data_reg[27]_i_1 
       (.CI(\data_reg[23]_i_1_n_0 ),
        .CO({\data_reg[27]_i_1_n_0 ,\data_reg[27]_i_1_n_1 ,\data_reg[27]_i_1_n_2 ,\data_reg[27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[27:24]),
        .S(s00_axis_tdata[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[28] 
       (.C(aclk),
        .CE(1'b1),
        .D(plusOp[28]),
        .Q(data[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[29] 
       (.C(aclk),
        .CE(1'b1),
        .D(plusOp[29]),
        .Q(data[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(plusOp[2]),
        .Q(data[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[30] 
       (.C(aclk),
        .CE(1'b1),
        .D(plusOp[30]),
        .Q(data[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[31] 
       (.C(aclk),
        .CE(1'b1),
        .D(plusOp[31]),
        .Q(data[31]),
        .R(1'b0));
  CARRY4 \data_reg[31]_i_1 
       (.CI(\data_reg[27]_i_1_n_0 ),
        .CO({\NLW_data_reg[31]_i_1_CO_UNCONNECTED [3],\data_reg[31]_i_1_n_1 ,\data_reg[31]_i_1_n_2 ,\data_reg[31]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[31:28]),
        .S(s00_axis_tdata[31:28]));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(plusOp[3]),
        .Q(data[3]),
        .R(1'b0));
  CARRY4 \data_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\data_reg[3]_i_1_n_0 ,\data_reg[3]_i_1_n_1 ,\data_reg[3]_i_1_n_2 ,\data_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({s00_axis_tdata[3],1'b0,s00_axis_tdata[1],1'b0}),
        .O(plusOp[3:0]),
        .S({\data[3]_i_2_n_0 ,s00_axis_tdata[2],\data[3]_i_3_n_0 ,s00_axis_tdata[0]}));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(plusOp[4]),
        .Q(data[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(plusOp[5]),
        .Q(data[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(plusOp[6]),
        .Q(data[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(plusOp[7]),
        .Q(data[7]),
        .R(1'b0));
  CARRY4 \data_reg[7]_i_1 
       (.CI(\data_reg[3]_i_1_n_0 ),
        .CO({\data_reg[7]_i_1_n_0 ,\data_reg[7]_i_1_n_1 ,\data_reg[7]_i_1_n_2 ,\data_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[7:4]),
        .S(s00_axis_tdata[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(plusOp[8]),
        .Q(data[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(plusOp[9]),
        .Q(data[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m00_axis_tdata[0]_i_1 
       (.I0(data[0]),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .O(\m00_axis_tdata[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m00_axis_tdata[10]_i_1 
       (.I0(data[10]),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .O(\m00_axis_tdata[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m00_axis_tdata[11]_i_1 
       (.I0(data[11]),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .O(\m00_axis_tdata[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m00_axis_tdata[12]_i_1 
       (.I0(data[12]),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .O(\m00_axis_tdata[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m00_axis_tdata[13]_i_1 
       (.I0(data[13]),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .O(\m00_axis_tdata[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m00_axis_tdata[14]_i_1 
       (.I0(data[14]),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .O(\m00_axis_tdata[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m00_axis_tdata[15]_i_1 
       (.I0(data[15]),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .O(\m00_axis_tdata[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m00_axis_tdata[16]_i_1 
       (.I0(data[16]),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .O(\m00_axis_tdata[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m00_axis_tdata[17]_i_1 
       (.I0(data[17]),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .O(\m00_axis_tdata[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m00_axis_tdata[18]_i_1 
       (.I0(data[18]),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .O(\m00_axis_tdata[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m00_axis_tdata[19]_i_1 
       (.I0(data[19]),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .O(\m00_axis_tdata[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m00_axis_tdata[1]_i_1 
       (.I0(data[1]),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .O(\m00_axis_tdata[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m00_axis_tdata[20]_i_1 
       (.I0(data[20]),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .O(\m00_axis_tdata[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m00_axis_tdata[21]_i_1 
       (.I0(data[21]),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .O(\m00_axis_tdata[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m00_axis_tdata[22]_i_1 
       (.I0(data[22]),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .O(\m00_axis_tdata[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m00_axis_tdata[23]_i_1 
       (.I0(data[23]),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .O(\m00_axis_tdata[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m00_axis_tdata[24]_i_1 
       (.I0(data[24]),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .O(\m00_axis_tdata[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m00_axis_tdata[25]_i_1 
       (.I0(data[25]),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .O(\m00_axis_tdata[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m00_axis_tdata[26]_i_1 
       (.I0(data[26]),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .O(\m00_axis_tdata[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m00_axis_tdata[27]_i_1 
       (.I0(data[27]),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .O(\m00_axis_tdata[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m00_axis_tdata[28]_i_1 
       (.I0(data[28]),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .O(\m00_axis_tdata[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m00_axis_tdata[29]_i_1 
       (.I0(data[29]),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .O(\m00_axis_tdata[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m00_axis_tdata[2]_i_1 
       (.I0(data[2]),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .O(\m00_axis_tdata[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m00_axis_tdata[30]_i_1 
       (.I0(data[30]),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .O(\m00_axis_tdata[30]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \m00_axis_tdata[31]_i_1 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[2] ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .O(\m00_axis_tdata[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m00_axis_tdata[31]_i_2 
       (.I0(data[31]),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .O(\m00_axis_tdata[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m00_axis_tdata[3]_i_1 
       (.I0(data[3]),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .O(\m00_axis_tdata[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m00_axis_tdata[4]_i_1 
       (.I0(data[4]),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .O(\m00_axis_tdata[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m00_axis_tdata[5]_i_1 
       (.I0(data[5]),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .O(\m00_axis_tdata[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m00_axis_tdata[6]_i_1 
       (.I0(data[6]),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .O(\m00_axis_tdata[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m00_axis_tdata[7]_i_1 
       (.I0(data[7]),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .O(\m00_axis_tdata[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m00_axis_tdata[8]_i_1 
       (.I0(data[8]),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .O(\m00_axis_tdata[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m00_axis_tdata[9]_i_1 
       (.I0(data[9]),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .O(\m00_axis_tdata[9]_i_1_n_0 ));
  FDSE \m00_axis_tdata_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m00_axis_tdata[0]_i_1_n_0 ),
        .Q(m00_axis_tdata[0]),
        .S(\m00_axis_tdata[31]_i_1_n_0 ));
  FDSE \m00_axis_tdata_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m00_axis_tdata[10]_i_1_n_0 ),
        .Q(m00_axis_tdata[10]),
        .S(\m00_axis_tdata[31]_i_1_n_0 ));
  FDSE \m00_axis_tdata_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m00_axis_tdata[11]_i_1_n_0 ),
        .Q(m00_axis_tdata[11]),
        .S(\m00_axis_tdata[31]_i_1_n_0 ));
  FDSE \m00_axis_tdata_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m00_axis_tdata[12]_i_1_n_0 ),
        .Q(m00_axis_tdata[12]),
        .S(\m00_axis_tdata[31]_i_1_n_0 ));
  FDSE \m00_axis_tdata_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m00_axis_tdata[13]_i_1_n_0 ),
        .Q(m00_axis_tdata[13]),
        .S(\m00_axis_tdata[31]_i_1_n_0 ));
  FDSE \m00_axis_tdata_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m00_axis_tdata[14]_i_1_n_0 ),
        .Q(m00_axis_tdata[14]),
        .S(\m00_axis_tdata[31]_i_1_n_0 ));
  FDSE \m00_axis_tdata_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m00_axis_tdata[15]_i_1_n_0 ),
        .Q(m00_axis_tdata[15]),
        .S(\m00_axis_tdata[31]_i_1_n_0 ));
  FDSE \m00_axis_tdata_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m00_axis_tdata[16]_i_1_n_0 ),
        .Q(m00_axis_tdata[16]),
        .S(\m00_axis_tdata[31]_i_1_n_0 ));
  FDSE \m00_axis_tdata_reg[17] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m00_axis_tdata[17]_i_1_n_0 ),
        .Q(m00_axis_tdata[17]),
        .S(\m00_axis_tdata[31]_i_1_n_0 ));
  FDSE \m00_axis_tdata_reg[18] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m00_axis_tdata[18]_i_1_n_0 ),
        .Q(m00_axis_tdata[18]),
        .S(\m00_axis_tdata[31]_i_1_n_0 ));
  FDSE \m00_axis_tdata_reg[19] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m00_axis_tdata[19]_i_1_n_0 ),
        .Q(m00_axis_tdata[19]),
        .S(\m00_axis_tdata[31]_i_1_n_0 ));
  FDSE \m00_axis_tdata_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m00_axis_tdata[1]_i_1_n_0 ),
        .Q(m00_axis_tdata[1]),
        .S(\m00_axis_tdata[31]_i_1_n_0 ));
  FDSE \m00_axis_tdata_reg[20] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m00_axis_tdata[20]_i_1_n_0 ),
        .Q(m00_axis_tdata[20]),
        .S(\m00_axis_tdata[31]_i_1_n_0 ));
  FDSE \m00_axis_tdata_reg[21] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m00_axis_tdata[21]_i_1_n_0 ),
        .Q(m00_axis_tdata[21]),
        .S(\m00_axis_tdata[31]_i_1_n_0 ));
  FDSE \m00_axis_tdata_reg[22] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m00_axis_tdata[22]_i_1_n_0 ),
        .Q(m00_axis_tdata[22]),
        .S(\m00_axis_tdata[31]_i_1_n_0 ));
  FDSE \m00_axis_tdata_reg[23] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m00_axis_tdata[23]_i_1_n_0 ),
        .Q(m00_axis_tdata[23]),
        .S(\m00_axis_tdata[31]_i_1_n_0 ));
  FDSE \m00_axis_tdata_reg[24] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m00_axis_tdata[24]_i_1_n_0 ),
        .Q(m00_axis_tdata[24]),
        .S(\m00_axis_tdata[31]_i_1_n_0 ));
  FDSE \m00_axis_tdata_reg[25] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m00_axis_tdata[25]_i_1_n_0 ),
        .Q(m00_axis_tdata[25]),
        .S(\m00_axis_tdata[31]_i_1_n_0 ));
  FDSE \m00_axis_tdata_reg[26] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m00_axis_tdata[26]_i_1_n_0 ),
        .Q(m00_axis_tdata[26]),
        .S(\m00_axis_tdata[31]_i_1_n_0 ));
  FDSE \m00_axis_tdata_reg[27] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m00_axis_tdata[27]_i_1_n_0 ),
        .Q(m00_axis_tdata[27]),
        .S(\m00_axis_tdata[31]_i_1_n_0 ));
  FDSE \m00_axis_tdata_reg[28] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m00_axis_tdata[28]_i_1_n_0 ),
        .Q(m00_axis_tdata[28]),
        .S(\m00_axis_tdata[31]_i_1_n_0 ));
  FDSE \m00_axis_tdata_reg[29] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m00_axis_tdata[29]_i_1_n_0 ),
        .Q(m00_axis_tdata[29]),
        .S(\m00_axis_tdata[31]_i_1_n_0 ));
  FDSE \m00_axis_tdata_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m00_axis_tdata[2]_i_1_n_0 ),
        .Q(m00_axis_tdata[2]),
        .S(\m00_axis_tdata[31]_i_1_n_0 ));
  FDSE \m00_axis_tdata_reg[30] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m00_axis_tdata[30]_i_1_n_0 ),
        .Q(m00_axis_tdata[30]),
        .S(\m00_axis_tdata[31]_i_1_n_0 ));
  FDSE \m00_axis_tdata_reg[31] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m00_axis_tdata[31]_i_2_n_0 ),
        .Q(m00_axis_tdata[31]),
        .S(\m00_axis_tdata[31]_i_1_n_0 ));
  FDSE \m00_axis_tdata_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m00_axis_tdata[3]_i_1_n_0 ),
        .Q(m00_axis_tdata[3]),
        .S(\m00_axis_tdata[31]_i_1_n_0 ));
  FDSE \m00_axis_tdata_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m00_axis_tdata[4]_i_1_n_0 ),
        .Q(m00_axis_tdata[4]),
        .S(\m00_axis_tdata[31]_i_1_n_0 ));
  FDSE \m00_axis_tdata_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m00_axis_tdata[5]_i_1_n_0 ),
        .Q(m00_axis_tdata[5]),
        .S(\m00_axis_tdata[31]_i_1_n_0 ));
  FDSE \m00_axis_tdata_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m00_axis_tdata[6]_i_1_n_0 ),
        .Q(m00_axis_tdata[6]),
        .S(\m00_axis_tdata[31]_i_1_n_0 ));
  FDSE \m00_axis_tdata_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m00_axis_tdata[7]_i_1_n_0 ),
        .Q(m00_axis_tdata[7]),
        .S(\m00_axis_tdata[31]_i_1_n_0 ));
  FDSE \m00_axis_tdata_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m00_axis_tdata[8]_i_1_n_0 ),
        .Q(m00_axis_tdata[8]),
        .S(\m00_axis_tdata[31]_i_1_n_0 ));
  FDSE \m00_axis_tdata_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m00_axis_tdata[9]_i_1_n_0 ),
        .Q(m00_axis_tdata[9]),
        .S(\m00_axis_tdata[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    m00_axis_tlast_i_1
       (.I0(s00_axis_tlast),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .O(m00_axis_tlast_i_1_n_0));
  FDSE m00_axis_tlast_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m00_axis_tlast_i_1_n_0),
        .Q(m00_axis_tlast),
        .S(\m00_axis_tdata[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m00_axis_tstrb[3]_i_1 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[2] ),
        .O(\m00_axis_tstrb[3]_i_1_n_0 ));
  FDRE \m00_axis_tstrb_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m00_axis_tstrb[3]_i_1_n_0 ),
        .Q(m00_axis_tstrb),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    m00_axis_tvalid_i_1
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[2] ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .O(m00_axis_tvalid_i_1_n_0));
  FDRE m00_axis_tvalid_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m00_axis_tvalid_i_1_n_0),
        .Q(m00_axis_tvalid),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \samplecount[0]_i_1 
       (.I0(\samplecount_reg_n_0_[0] ),
        .O(p_0_in[0]));
  LUT2 #(
    .INIT(4'h1)) 
    \samplecount[10]_i_1 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[2] ),
        .O(\samplecount[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \samplecount[10]_i_2 
       (.I0(samplecount_reg[8]),
        .I1(samplecount_reg[6]),
        .I2(\samplecount[10]_i_3_n_0 ),
        .I3(samplecount_reg[7]),
        .I4(samplecount_reg[9]),
        .I5(samplecount_reg[10]),
        .O(p_0_in[10]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \samplecount[10]_i_3 
       (.I0(samplecount_reg[5]),
        .I1(samplecount_reg[3]),
        .I2(samplecount_reg[1]),
        .I3(\samplecount_reg_n_0_[0] ),
        .I4(samplecount_reg[2]),
        .I5(samplecount_reg[4]),
        .O(\samplecount[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \samplecount[1]_i_1 
       (.I0(\samplecount_reg_n_0_[0] ),
        .I1(samplecount_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \samplecount[2]_i_1 
       (.I0(\samplecount_reg_n_0_[0] ),
        .I1(samplecount_reg[1]),
        .I2(samplecount_reg[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \samplecount[3]_i_1 
       (.I0(samplecount_reg[1]),
        .I1(\samplecount_reg_n_0_[0] ),
        .I2(samplecount_reg[2]),
        .I3(samplecount_reg[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \samplecount[4]_i_1 
       (.I0(samplecount_reg[2]),
        .I1(\samplecount_reg_n_0_[0] ),
        .I2(samplecount_reg[1]),
        .I3(samplecount_reg[3]),
        .I4(samplecount_reg[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \samplecount[5]_i_1 
       (.I0(samplecount_reg[3]),
        .I1(samplecount_reg[1]),
        .I2(\samplecount_reg_n_0_[0] ),
        .I3(samplecount_reg[2]),
        .I4(samplecount_reg[4]),
        .I5(samplecount_reg[5]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \samplecount[6]_i_1 
       (.I0(\samplecount[10]_i_3_n_0 ),
        .I1(samplecount_reg[6]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \samplecount[7]_i_1 
       (.I0(\samplecount[10]_i_3_n_0 ),
        .I1(samplecount_reg[6]),
        .I2(samplecount_reg[7]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \samplecount[8]_i_1 
       (.I0(samplecount_reg[6]),
        .I1(\samplecount[10]_i_3_n_0 ),
        .I2(samplecount_reg[7]),
        .I3(samplecount_reg[8]),
        .O(p_0_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \samplecount[9]_i_1 
       (.I0(samplecount_reg[7]),
        .I1(\samplecount[10]_i_3_n_0 ),
        .I2(samplecount_reg[6]),
        .I3(samplecount_reg[8]),
        .I4(samplecount_reg[9]),
        .O(p_0_in[9]));
  FDRE #(
    .INIT(1'b0)) 
    \samplecount_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(\samplecount_reg_n_0_[0] ),
        .R(\samplecount[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \samplecount_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in[10]),
        .Q(samplecount_reg[10]),
        .R(\samplecount[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \samplecount_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(samplecount_reg[1]),
        .R(\samplecount[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \samplecount_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(samplecount_reg[2]),
        .R(\samplecount[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \samplecount_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(samplecount_reg[3]),
        .R(\samplecount[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \samplecount_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(samplecount_reg[4]),
        .R(\samplecount[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \samplecount_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in[5]),
        .Q(samplecount_reg[5]),
        .R(\samplecount[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \samplecount_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in[6]),
        .Q(samplecount_reg[6]),
        .R(\samplecount[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \samplecount_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in[7]),
        .Q(samplecount_reg[7]),
        .R(\samplecount[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \samplecount_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in[8]),
        .Q(samplecount_reg[8]),
        .R(\samplecount[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \samplecount_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in[9]),
        .Q(samplecount_reg[9]),
        .R(\samplecount[10]_i_1_n_0 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
