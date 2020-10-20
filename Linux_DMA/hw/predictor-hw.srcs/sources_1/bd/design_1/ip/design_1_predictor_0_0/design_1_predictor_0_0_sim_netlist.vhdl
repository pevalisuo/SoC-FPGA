-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
-- Date        : Tue Mar 17 16:44:25 2020
-- Host        : kryyni running 64-bit Ubuntu 18.04.4 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /lacie/xilinx/linux/predictor/predictor-hw/predictor-hw.srcs/sources_1/bd/design_1/ip/design_1_predictor_0_0/design_1_predictor_0_0_sim_netlist.vhdl
-- Design      : design_1_predictor_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_predictor_0_0_predictor is
  port (
    m00_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axis_tlast : out STD_LOGIC;
    m00_axis_tvalid : out STD_LOGIC;
    m00_axis_tstrb : out STD_LOGIC_VECTOR ( 0 to 0 );
    aresetn : in STD_LOGIC;
    s00_axis_tvalid : in STD_LOGIC;
    aclk : in STD_LOGIC;
    s00_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axis_tready : in STD_LOGIC;
    s00_axis_tlast : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_predictor_0_0_predictor : entity is "predictor";
end design_1_predictor_0_0_predictor;

architecture STRUCTURE of design_1_predictor_0_0_predictor is
  signal \FSM_onehot_CurrentState[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState_reg_n_0_[2]\ : STD_LOGIC;
  signal data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \data[3]_i_2_n_0\ : STD_LOGIC;
  signal \data[3]_i_3_n_0\ : STD_LOGIC;
  signal \data_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \data_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \data_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \data_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \data_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \data_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \data_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[19]_i_1_n_1\ : STD_LOGIC;
  signal \data_reg[19]_i_1_n_2\ : STD_LOGIC;
  signal \data_reg[19]_i_1_n_3\ : STD_LOGIC;
  signal \data_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[23]_i_1_n_1\ : STD_LOGIC;
  signal \data_reg[23]_i_1_n_2\ : STD_LOGIC;
  signal \data_reg[23]_i_1_n_3\ : STD_LOGIC;
  signal \data_reg[27]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[27]_i_1_n_1\ : STD_LOGIC;
  signal \data_reg[27]_i_1_n_2\ : STD_LOGIC;
  signal \data_reg[27]_i_1_n_3\ : STD_LOGIC;
  signal \data_reg[31]_i_1_n_1\ : STD_LOGIC;
  signal \data_reg[31]_i_1_n_2\ : STD_LOGIC;
  signal \data_reg[31]_i_1_n_3\ : STD_LOGIC;
  signal \data_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \data_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \data_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \data_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \data_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \data_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \m00_axis_tdata[0]_i_1_n_0\ : STD_LOGIC;
  signal \m00_axis_tdata[10]_i_1_n_0\ : STD_LOGIC;
  signal \m00_axis_tdata[11]_i_1_n_0\ : STD_LOGIC;
  signal \m00_axis_tdata[12]_i_1_n_0\ : STD_LOGIC;
  signal \m00_axis_tdata[13]_i_1_n_0\ : STD_LOGIC;
  signal \m00_axis_tdata[14]_i_1_n_0\ : STD_LOGIC;
  signal \m00_axis_tdata[15]_i_1_n_0\ : STD_LOGIC;
  signal \m00_axis_tdata[16]_i_1_n_0\ : STD_LOGIC;
  signal \m00_axis_tdata[17]_i_1_n_0\ : STD_LOGIC;
  signal \m00_axis_tdata[18]_i_1_n_0\ : STD_LOGIC;
  signal \m00_axis_tdata[19]_i_1_n_0\ : STD_LOGIC;
  signal \m00_axis_tdata[1]_i_1_n_0\ : STD_LOGIC;
  signal \m00_axis_tdata[20]_i_1_n_0\ : STD_LOGIC;
  signal \m00_axis_tdata[21]_i_1_n_0\ : STD_LOGIC;
  signal \m00_axis_tdata[22]_i_1_n_0\ : STD_LOGIC;
  signal \m00_axis_tdata[23]_i_1_n_0\ : STD_LOGIC;
  signal \m00_axis_tdata[24]_i_1_n_0\ : STD_LOGIC;
  signal \m00_axis_tdata[25]_i_1_n_0\ : STD_LOGIC;
  signal \m00_axis_tdata[26]_i_1_n_0\ : STD_LOGIC;
  signal \m00_axis_tdata[27]_i_1_n_0\ : STD_LOGIC;
  signal \m00_axis_tdata[28]_i_1_n_0\ : STD_LOGIC;
  signal \m00_axis_tdata[29]_i_1_n_0\ : STD_LOGIC;
  signal \m00_axis_tdata[2]_i_1_n_0\ : STD_LOGIC;
  signal \m00_axis_tdata[30]_i_1_n_0\ : STD_LOGIC;
  signal \m00_axis_tdata[31]_i_1_n_0\ : STD_LOGIC;
  signal \m00_axis_tdata[31]_i_2_n_0\ : STD_LOGIC;
  signal \m00_axis_tdata[3]_i_1_n_0\ : STD_LOGIC;
  signal \m00_axis_tdata[4]_i_1_n_0\ : STD_LOGIC;
  signal \m00_axis_tdata[5]_i_1_n_0\ : STD_LOGIC;
  signal \m00_axis_tdata[6]_i_1_n_0\ : STD_LOGIC;
  signal \m00_axis_tdata[7]_i_1_n_0\ : STD_LOGIC;
  signal \m00_axis_tdata[8]_i_1_n_0\ : STD_LOGIC;
  signal \m00_axis_tdata[9]_i_1_n_0\ : STD_LOGIC;
  signal m00_axis_tlast_i_1_n_0 : STD_LOGIC;
  signal \m00_axis_tstrb[3]_i_1_n_0\ : STD_LOGIC;
  signal m00_axis_tvalid_i_1_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal plusOp : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \samplecount[10]_i_1_n_0\ : STD_LOGIC;
  signal \samplecount[10]_i_3_n_0\ : STD_LOGIC;
  signal samplecount_reg : STD_LOGIC_VECTOR ( 10 downto 1 );
  signal \samplecount_reg_n_0_[0]\ : STD_LOGIC;
  signal \NLW_data_reg[31]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_CurrentState[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_onehot_CurrentState[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_onehot_CurrentState[2]_i_1\ : label is "soft_lutpair2";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_CurrentState_reg[0]\ : label is "idle:001,finish:100,work:010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_CurrentState_reg[1]\ : label is "idle:001,finish:100,work:010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_CurrentState_reg[2]\ : label is "idle:001,finish:100,work:010";
  attribute SOFT_HLUTNM of \m00_axis_tdata[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \m00_axis_tdata[10]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \m00_axis_tdata[11]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \m00_axis_tdata[12]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \m00_axis_tdata[13]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \m00_axis_tdata[14]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \m00_axis_tdata[15]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \m00_axis_tdata[16]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \m00_axis_tdata[17]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \m00_axis_tdata[18]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \m00_axis_tdata[19]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \m00_axis_tdata[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \m00_axis_tdata[20]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \m00_axis_tdata[21]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \m00_axis_tdata[22]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \m00_axis_tdata[23]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \m00_axis_tdata[24]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \m00_axis_tdata[25]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \m00_axis_tdata[26]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \m00_axis_tdata[27]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \m00_axis_tdata[28]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \m00_axis_tdata[29]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \m00_axis_tdata[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \m00_axis_tdata[30]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \m00_axis_tdata[31]_i_2\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \m00_axis_tdata[3]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \m00_axis_tdata[4]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \m00_axis_tdata[5]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \m00_axis_tdata[6]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \m00_axis_tdata[7]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \m00_axis_tdata[8]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \m00_axis_tdata[9]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \m00_axis_tstrb[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \samplecount[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \samplecount[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \samplecount[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \samplecount[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \samplecount[6]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \samplecount[7]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \samplecount[8]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \samplecount[9]_i_1\ : label is "soft_lutpair0";
begin
\FSM_onehot_CurrentState[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F2FF"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[0]\,
      I1 => s00_axis_tvalid,
      I2 => \FSM_onehot_CurrentState_reg_n_0_[2]\,
      I3 => aresetn,
      O => \FSM_onehot_CurrentState[0]_i_1_n_0\
    );
\FSM_onehot_CurrentState[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8880000"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      I1 => \FSM_onehot_CurrentState[2]_i_2_n_0\,
      I2 => \FSM_onehot_CurrentState_reg_n_0_[0]\,
      I3 => s00_axis_tvalid,
      I4 => aresetn,
      O => \FSM_onehot_CurrentState[1]_i_1_n_0\
    );
\FSM_onehot_CurrentState[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \FSM_onehot_CurrentState[2]_i_2_n_0\,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      I2 => aresetn,
      O => \FSM_onehot_CurrentState[2]_i_1_n_0\
    );
\FSM_onehot_CurrentState[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => s00_axis_tvalid,
      I1 => m00_axis_tready,
      I2 => \FSM_onehot_CurrentState[2]_i_3_n_0\,
      I3 => \FSM_onehot_CurrentState[2]_i_4_n_0\,
      O => \FSM_onehot_CurrentState[2]_i_2_n_0\
    );
\FSM_onehot_CurrentState[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => samplecount_reg(6),
      I1 => samplecount_reg(9),
      I2 => samplecount_reg(10),
      I3 => samplecount_reg(7),
      I4 => samplecount_reg(8),
      O => \FSM_onehot_CurrentState[2]_i_3_n_0\
    );
\FSM_onehot_CurrentState[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => samplecount_reg(1),
      I1 => samplecount_reg(4),
      I2 => samplecount_reg(5),
      I3 => samplecount_reg(2),
      I4 => samplecount_reg(3),
      O => \FSM_onehot_CurrentState[2]_i_4_n_0\
    );
\FSM_onehot_CurrentState_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \FSM_onehot_CurrentState[0]_i_1_n_0\,
      Q => \FSM_onehot_CurrentState_reg_n_0_[0]\,
      R => '0'
    );
\FSM_onehot_CurrentState_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \FSM_onehot_CurrentState[1]_i_1_n_0\,
      Q => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      R => '0'
    );
\FSM_onehot_CurrentState_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \FSM_onehot_CurrentState[2]_i_1_n_0\,
      Q => \FSM_onehot_CurrentState_reg_n_0_[2]\,
      R => '0'
    );
\data[3]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axis_tdata(3),
      O => \data[3]_i_2_n_0\
    );
\data[3]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axis_tdata(1),
      O => \data[3]_i_3_n_0\
    );
\data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => plusOp(0),
      Q => data(0),
      R => '0'
    );
\data_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => plusOp(10),
      Q => data(10),
      R => '0'
    );
\data_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => plusOp(11),
      Q => data(11),
      R => '0'
    );
\data_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_reg[7]_i_1_n_0\,
      CO(3) => \data_reg[11]_i_1_n_0\,
      CO(2) => \data_reg[11]_i_1_n_1\,
      CO(1) => \data_reg[11]_i_1_n_2\,
      CO(0) => \data_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(11 downto 8),
      S(3 downto 0) => s00_axis_tdata(11 downto 8)
    );
\data_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => plusOp(12),
      Q => data(12),
      R => '0'
    );
\data_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => plusOp(13),
      Q => data(13),
      R => '0'
    );
\data_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => plusOp(14),
      Q => data(14),
      R => '0'
    );
\data_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => plusOp(15),
      Q => data(15),
      R => '0'
    );
\data_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_reg[11]_i_1_n_0\,
      CO(3) => \data_reg[15]_i_1_n_0\,
      CO(2) => \data_reg[15]_i_1_n_1\,
      CO(1) => \data_reg[15]_i_1_n_2\,
      CO(0) => \data_reg[15]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(15 downto 12),
      S(3 downto 0) => s00_axis_tdata(15 downto 12)
    );
\data_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => plusOp(16),
      Q => data(16),
      R => '0'
    );
\data_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => plusOp(17),
      Q => data(17),
      R => '0'
    );
\data_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => plusOp(18),
      Q => data(18),
      R => '0'
    );
\data_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => plusOp(19),
      Q => data(19),
      R => '0'
    );
\data_reg[19]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_reg[15]_i_1_n_0\,
      CO(3) => \data_reg[19]_i_1_n_0\,
      CO(2) => \data_reg[19]_i_1_n_1\,
      CO(1) => \data_reg[19]_i_1_n_2\,
      CO(0) => \data_reg[19]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(19 downto 16),
      S(3 downto 0) => s00_axis_tdata(19 downto 16)
    );
\data_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => plusOp(1),
      Q => data(1),
      R => '0'
    );
\data_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => plusOp(20),
      Q => data(20),
      R => '0'
    );
\data_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => plusOp(21),
      Q => data(21),
      R => '0'
    );
\data_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => plusOp(22),
      Q => data(22),
      R => '0'
    );
\data_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => plusOp(23),
      Q => data(23),
      R => '0'
    );
\data_reg[23]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_reg[19]_i_1_n_0\,
      CO(3) => \data_reg[23]_i_1_n_0\,
      CO(2) => \data_reg[23]_i_1_n_1\,
      CO(1) => \data_reg[23]_i_1_n_2\,
      CO(0) => \data_reg[23]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(23 downto 20),
      S(3 downto 0) => s00_axis_tdata(23 downto 20)
    );
\data_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => plusOp(24),
      Q => data(24),
      R => '0'
    );
\data_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => plusOp(25),
      Q => data(25),
      R => '0'
    );
\data_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => plusOp(26),
      Q => data(26),
      R => '0'
    );
\data_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => plusOp(27),
      Q => data(27),
      R => '0'
    );
\data_reg[27]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_reg[23]_i_1_n_0\,
      CO(3) => \data_reg[27]_i_1_n_0\,
      CO(2) => \data_reg[27]_i_1_n_1\,
      CO(1) => \data_reg[27]_i_1_n_2\,
      CO(0) => \data_reg[27]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(27 downto 24),
      S(3 downto 0) => s00_axis_tdata(27 downto 24)
    );
\data_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => plusOp(28),
      Q => data(28),
      R => '0'
    );
\data_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => plusOp(29),
      Q => data(29),
      R => '0'
    );
\data_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => plusOp(2),
      Q => data(2),
      R => '0'
    );
\data_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => plusOp(30),
      Q => data(30),
      R => '0'
    );
\data_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => plusOp(31),
      Q => data(31),
      R => '0'
    );
\data_reg[31]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_reg[27]_i_1_n_0\,
      CO(3) => \NLW_data_reg[31]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \data_reg[31]_i_1_n_1\,
      CO(1) => \data_reg[31]_i_1_n_2\,
      CO(0) => \data_reg[31]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(31 downto 28),
      S(3 downto 0) => s00_axis_tdata(31 downto 28)
    );
\data_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => plusOp(3),
      Q => data(3),
      R => '0'
    );
\data_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \data_reg[3]_i_1_n_0\,
      CO(2) => \data_reg[3]_i_1_n_1\,
      CO(1) => \data_reg[3]_i_1_n_2\,
      CO(0) => \data_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => s00_axis_tdata(3),
      DI(2) => '0',
      DI(1) => s00_axis_tdata(1),
      DI(0) => '0',
      O(3 downto 0) => plusOp(3 downto 0),
      S(3) => \data[3]_i_2_n_0\,
      S(2) => s00_axis_tdata(2),
      S(1) => \data[3]_i_3_n_0\,
      S(0) => s00_axis_tdata(0)
    );
\data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => plusOp(4),
      Q => data(4),
      R => '0'
    );
\data_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => plusOp(5),
      Q => data(5),
      R => '0'
    );
\data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => plusOp(6),
      Q => data(6),
      R => '0'
    );
\data_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => plusOp(7),
      Q => data(7),
      R => '0'
    );
\data_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_reg[3]_i_1_n_0\,
      CO(3) => \data_reg[7]_i_1_n_0\,
      CO(2) => \data_reg[7]_i_1_n_1\,
      CO(1) => \data_reg[7]_i_1_n_2\,
      CO(0) => \data_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(7 downto 4),
      S(3 downto 0) => s00_axis_tdata(7 downto 4)
    );
\data_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => plusOp(8),
      Q => data(8),
      R => '0'
    );
\data_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => plusOp(9),
      Q => data(9),
      R => '0'
    );
\m00_axis_tdata[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data(0),
      I1 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      O => \m00_axis_tdata[0]_i_1_n_0\
    );
\m00_axis_tdata[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data(10),
      I1 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      O => \m00_axis_tdata[10]_i_1_n_0\
    );
\m00_axis_tdata[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data(11),
      I1 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      O => \m00_axis_tdata[11]_i_1_n_0\
    );
\m00_axis_tdata[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data(12),
      I1 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      O => \m00_axis_tdata[12]_i_1_n_0\
    );
\m00_axis_tdata[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data(13),
      I1 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      O => \m00_axis_tdata[13]_i_1_n_0\
    );
\m00_axis_tdata[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data(14),
      I1 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      O => \m00_axis_tdata[14]_i_1_n_0\
    );
\m00_axis_tdata[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data(15),
      I1 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      O => \m00_axis_tdata[15]_i_1_n_0\
    );
\m00_axis_tdata[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data(16),
      I1 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      O => \m00_axis_tdata[16]_i_1_n_0\
    );
\m00_axis_tdata[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data(17),
      I1 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      O => \m00_axis_tdata[17]_i_1_n_0\
    );
\m00_axis_tdata[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data(18),
      I1 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      O => \m00_axis_tdata[18]_i_1_n_0\
    );
\m00_axis_tdata[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data(19),
      I1 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      O => \m00_axis_tdata[19]_i_1_n_0\
    );
\m00_axis_tdata[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data(1),
      I1 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      O => \m00_axis_tdata[1]_i_1_n_0\
    );
\m00_axis_tdata[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data(20),
      I1 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      O => \m00_axis_tdata[20]_i_1_n_0\
    );
\m00_axis_tdata[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data(21),
      I1 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      O => \m00_axis_tdata[21]_i_1_n_0\
    );
\m00_axis_tdata[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data(22),
      I1 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      O => \m00_axis_tdata[22]_i_1_n_0\
    );
\m00_axis_tdata[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data(23),
      I1 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      O => \m00_axis_tdata[23]_i_1_n_0\
    );
\m00_axis_tdata[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data(24),
      I1 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      O => \m00_axis_tdata[24]_i_1_n_0\
    );
\m00_axis_tdata[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data(25),
      I1 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      O => \m00_axis_tdata[25]_i_1_n_0\
    );
\m00_axis_tdata[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data(26),
      I1 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      O => \m00_axis_tdata[26]_i_1_n_0\
    );
\m00_axis_tdata[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data(27),
      I1 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      O => \m00_axis_tdata[27]_i_1_n_0\
    );
\m00_axis_tdata[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data(28),
      I1 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      O => \m00_axis_tdata[28]_i_1_n_0\
    );
\m00_axis_tdata[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data(29),
      I1 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      O => \m00_axis_tdata[29]_i_1_n_0\
    );
\m00_axis_tdata[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data(2),
      I1 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      O => \m00_axis_tdata[2]_i_1_n_0\
    );
\m00_axis_tdata[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data(30),
      I1 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      O => \m00_axis_tdata[30]_i_1_n_0\
    );
\m00_axis_tdata[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[2]\,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      O => \m00_axis_tdata[31]_i_1_n_0\
    );
\m00_axis_tdata[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data(31),
      I1 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      O => \m00_axis_tdata[31]_i_2_n_0\
    );
\m00_axis_tdata[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data(3),
      I1 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      O => \m00_axis_tdata[3]_i_1_n_0\
    );
\m00_axis_tdata[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data(4),
      I1 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      O => \m00_axis_tdata[4]_i_1_n_0\
    );
\m00_axis_tdata[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data(5),
      I1 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      O => \m00_axis_tdata[5]_i_1_n_0\
    );
\m00_axis_tdata[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data(6),
      I1 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      O => \m00_axis_tdata[6]_i_1_n_0\
    );
\m00_axis_tdata[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data(7),
      I1 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      O => \m00_axis_tdata[7]_i_1_n_0\
    );
\m00_axis_tdata[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data(8),
      I1 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      O => \m00_axis_tdata[8]_i_1_n_0\
    );
\m00_axis_tdata[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data(9),
      I1 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      O => \m00_axis_tdata[9]_i_1_n_0\
    );
\m00_axis_tdata_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \m00_axis_tdata[0]_i_1_n_0\,
      Q => m00_axis_tdata(0),
      S => \m00_axis_tdata[31]_i_1_n_0\
    );
\m00_axis_tdata_reg[10]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \m00_axis_tdata[10]_i_1_n_0\,
      Q => m00_axis_tdata(10),
      S => \m00_axis_tdata[31]_i_1_n_0\
    );
\m00_axis_tdata_reg[11]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \m00_axis_tdata[11]_i_1_n_0\,
      Q => m00_axis_tdata(11),
      S => \m00_axis_tdata[31]_i_1_n_0\
    );
\m00_axis_tdata_reg[12]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \m00_axis_tdata[12]_i_1_n_0\,
      Q => m00_axis_tdata(12),
      S => \m00_axis_tdata[31]_i_1_n_0\
    );
\m00_axis_tdata_reg[13]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \m00_axis_tdata[13]_i_1_n_0\,
      Q => m00_axis_tdata(13),
      S => \m00_axis_tdata[31]_i_1_n_0\
    );
\m00_axis_tdata_reg[14]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \m00_axis_tdata[14]_i_1_n_0\,
      Q => m00_axis_tdata(14),
      S => \m00_axis_tdata[31]_i_1_n_0\
    );
\m00_axis_tdata_reg[15]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \m00_axis_tdata[15]_i_1_n_0\,
      Q => m00_axis_tdata(15),
      S => \m00_axis_tdata[31]_i_1_n_0\
    );
\m00_axis_tdata_reg[16]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \m00_axis_tdata[16]_i_1_n_0\,
      Q => m00_axis_tdata(16),
      S => \m00_axis_tdata[31]_i_1_n_0\
    );
\m00_axis_tdata_reg[17]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \m00_axis_tdata[17]_i_1_n_0\,
      Q => m00_axis_tdata(17),
      S => \m00_axis_tdata[31]_i_1_n_0\
    );
\m00_axis_tdata_reg[18]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \m00_axis_tdata[18]_i_1_n_0\,
      Q => m00_axis_tdata(18),
      S => \m00_axis_tdata[31]_i_1_n_0\
    );
\m00_axis_tdata_reg[19]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \m00_axis_tdata[19]_i_1_n_0\,
      Q => m00_axis_tdata(19),
      S => \m00_axis_tdata[31]_i_1_n_0\
    );
\m00_axis_tdata_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \m00_axis_tdata[1]_i_1_n_0\,
      Q => m00_axis_tdata(1),
      S => \m00_axis_tdata[31]_i_1_n_0\
    );
\m00_axis_tdata_reg[20]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \m00_axis_tdata[20]_i_1_n_0\,
      Q => m00_axis_tdata(20),
      S => \m00_axis_tdata[31]_i_1_n_0\
    );
\m00_axis_tdata_reg[21]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \m00_axis_tdata[21]_i_1_n_0\,
      Q => m00_axis_tdata(21),
      S => \m00_axis_tdata[31]_i_1_n_0\
    );
\m00_axis_tdata_reg[22]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \m00_axis_tdata[22]_i_1_n_0\,
      Q => m00_axis_tdata(22),
      S => \m00_axis_tdata[31]_i_1_n_0\
    );
\m00_axis_tdata_reg[23]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \m00_axis_tdata[23]_i_1_n_0\,
      Q => m00_axis_tdata(23),
      S => \m00_axis_tdata[31]_i_1_n_0\
    );
\m00_axis_tdata_reg[24]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \m00_axis_tdata[24]_i_1_n_0\,
      Q => m00_axis_tdata(24),
      S => \m00_axis_tdata[31]_i_1_n_0\
    );
\m00_axis_tdata_reg[25]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \m00_axis_tdata[25]_i_1_n_0\,
      Q => m00_axis_tdata(25),
      S => \m00_axis_tdata[31]_i_1_n_0\
    );
\m00_axis_tdata_reg[26]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \m00_axis_tdata[26]_i_1_n_0\,
      Q => m00_axis_tdata(26),
      S => \m00_axis_tdata[31]_i_1_n_0\
    );
\m00_axis_tdata_reg[27]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \m00_axis_tdata[27]_i_1_n_0\,
      Q => m00_axis_tdata(27),
      S => \m00_axis_tdata[31]_i_1_n_0\
    );
\m00_axis_tdata_reg[28]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \m00_axis_tdata[28]_i_1_n_0\,
      Q => m00_axis_tdata(28),
      S => \m00_axis_tdata[31]_i_1_n_0\
    );
\m00_axis_tdata_reg[29]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \m00_axis_tdata[29]_i_1_n_0\,
      Q => m00_axis_tdata(29),
      S => \m00_axis_tdata[31]_i_1_n_0\
    );
\m00_axis_tdata_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \m00_axis_tdata[2]_i_1_n_0\,
      Q => m00_axis_tdata(2),
      S => \m00_axis_tdata[31]_i_1_n_0\
    );
\m00_axis_tdata_reg[30]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \m00_axis_tdata[30]_i_1_n_0\,
      Q => m00_axis_tdata(30),
      S => \m00_axis_tdata[31]_i_1_n_0\
    );
\m00_axis_tdata_reg[31]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \m00_axis_tdata[31]_i_2_n_0\,
      Q => m00_axis_tdata(31),
      S => \m00_axis_tdata[31]_i_1_n_0\
    );
\m00_axis_tdata_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \m00_axis_tdata[3]_i_1_n_0\,
      Q => m00_axis_tdata(3),
      S => \m00_axis_tdata[31]_i_1_n_0\
    );
\m00_axis_tdata_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \m00_axis_tdata[4]_i_1_n_0\,
      Q => m00_axis_tdata(4),
      S => \m00_axis_tdata[31]_i_1_n_0\
    );
\m00_axis_tdata_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \m00_axis_tdata[5]_i_1_n_0\,
      Q => m00_axis_tdata(5),
      S => \m00_axis_tdata[31]_i_1_n_0\
    );
\m00_axis_tdata_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \m00_axis_tdata[6]_i_1_n_0\,
      Q => m00_axis_tdata(6),
      S => \m00_axis_tdata[31]_i_1_n_0\
    );
\m00_axis_tdata_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \m00_axis_tdata[7]_i_1_n_0\,
      Q => m00_axis_tdata(7),
      S => \m00_axis_tdata[31]_i_1_n_0\
    );
\m00_axis_tdata_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \m00_axis_tdata[8]_i_1_n_0\,
      Q => m00_axis_tdata(8),
      S => \m00_axis_tdata[31]_i_1_n_0\
    );
\m00_axis_tdata_reg[9]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \m00_axis_tdata[9]_i_1_n_0\,
      Q => m00_axis_tdata(9),
      S => \m00_axis_tdata[31]_i_1_n_0\
    );
m00_axis_tlast_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s00_axis_tlast,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      O => m00_axis_tlast_i_1_n_0
    );
m00_axis_tlast_reg: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => m00_axis_tlast_i_1_n_0,
      Q => m00_axis_tlast,
      S => \m00_axis_tdata[31]_i_1_n_0\
    );
\m00_axis_tstrb[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[2]\,
      O => \m00_axis_tstrb[3]_i_1_n_0\
    );
\m00_axis_tstrb_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m00_axis_tstrb[3]_i_1_n_0\,
      Q => m00_axis_tstrb(0),
      R => '0'
    );
m00_axis_tvalid_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[2]\,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      O => m00_axis_tvalid_i_1_n_0
    );
m00_axis_tvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => m00_axis_tvalid_i_1_n_0,
      Q => m00_axis_tvalid,
      R => '0'
    );
\samplecount[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \samplecount_reg_n_0_[0]\,
      O => p_0_in(0)
    );
\samplecount[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[2]\,
      O => \samplecount[10]_i_1_n_0\
    );
\samplecount[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => samplecount_reg(8),
      I1 => samplecount_reg(6),
      I2 => \samplecount[10]_i_3_n_0\,
      I3 => samplecount_reg(7),
      I4 => samplecount_reg(9),
      I5 => samplecount_reg(10),
      O => p_0_in(10)
    );
\samplecount[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => samplecount_reg(5),
      I1 => samplecount_reg(3),
      I2 => samplecount_reg(1),
      I3 => \samplecount_reg_n_0_[0]\,
      I4 => samplecount_reg(2),
      I5 => samplecount_reg(4),
      O => \samplecount[10]_i_3_n_0\
    );
\samplecount[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \samplecount_reg_n_0_[0]\,
      I1 => samplecount_reg(1),
      O => p_0_in(1)
    );
\samplecount[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \samplecount_reg_n_0_[0]\,
      I1 => samplecount_reg(1),
      I2 => samplecount_reg(2),
      O => p_0_in(2)
    );
\samplecount[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => samplecount_reg(1),
      I1 => \samplecount_reg_n_0_[0]\,
      I2 => samplecount_reg(2),
      I3 => samplecount_reg(3),
      O => p_0_in(3)
    );
\samplecount[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => samplecount_reg(2),
      I1 => \samplecount_reg_n_0_[0]\,
      I2 => samplecount_reg(1),
      I3 => samplecount_reg(3),
      I4 => samplecount_reg(4),
      O => p_0_in(4)
    );
\samplecount[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => samplecount_reg(3),
      I1 => samplecount_reg(1),
      I2 => \samplecount_reg_n_0_[0]\,
      I3 => samplecount_reg(2),
      I4 => samplecount_reg(4),
      I5 => samplecount_reg(5),
      O => p_0_in(5)
    );
\samplecount[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \samplecount[10]_i_3_n_0\,
      I1 => samplecount_reg(6),
      O => p_0_in(6)
    );
\samplecount[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \samplecount[10]_i_3_n_0\,
      I1 => samplecount_reg(6),
      I2 => samplecount_reg(7),
      O => p_0_in(7)
    );
\samplecount[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => samplecount_reg(6),
      I1 => \samplecount[10]_i_3_n_0\,
      I2 => samplecount_reg(7),
      I3 => samplecount_reg(8),
      O => p_0_in(8)
    );
\samplecount[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => samplecount_reg(7),
      I1 => \samplecount[10]_i_3_n_0\,
      I2 => samplecount_reg(6),
      I3 => samplecount_reg(8),
      I4 => samplecount_reg(9),
      O => p_0_in(9)
    );
\samplecount_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => p_0_in(0),
      Q => \samplecount_reg_n_0_[0]\,
      R => \samplecount[10]_i_1_n_0\
    );
\samplecount_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => p_0_in(10),
      Q => samplecount_reg(10),
      R => \samplecount[10]_i_1_n_0\
    );
\samplecount_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => p_0_in(1),
      Q => samplecount_reg(1),
      R => \samplecount[10]_i_1_n_0\
    );
\samplecount_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => p_0_in(2),
      Q => samplecount_reg(2),
      R => \samplecount[10]_i_1_n_0\
    );
\samplecount_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => p_0_in(3),
      Q => samplecount_reg(3),
      R => \samplecount[10]_i_1_n_0\
    );
\samplecount_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => p_0_in(4),
      Q => samplecount_reg(4),
      R => \samplecount[10]_i_1_n_0\
    );
\samplecount_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => p_0_in(5),
      Q => samplecount_reg(5),
      R => \samplecount[10]_i_1_n_0\
    );
\samplecount_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => p_0_in(6),
      Q => samplecount_reg(6),
      R => \samplecount[10]_i_1_n_0\
    );
\samplecount_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => p_0_in(7),
      Q => samplecount_reg(7),
      R => \samplecount[10]_i_1_n_0\
    );
\samplecount_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => p_0_in(8),
      Q => samplecount_reg(8),
      R => \samplecount[10]_i_1_n_0\
    );
\samplecount_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => p_0_in(9),
      Q => samplecount_reg(9),
      R => \samplecount[10]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_predictor_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s00_axis_tready : out STD_LOGIC;
    s00_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axis_tstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axis_tlast : in STD_LOGIC;
    s00_axis_tvalid : in STD_LOGIC;
    m00_axis_tvalid : out STD_LOGIC;
    m00_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axis_tstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axis_tlast : out STD_LOGIC;
    m00_axis_tready : in STD_LOGIC;
    m00_axis_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_predictor_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_predictor_0_0 : entity is "design_1_predictor_0_0,predictor,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_predictor_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_predictor_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_predictor_0_0 : entity is "predictor,Vivado 2019.2";
end design_1_predictor_0_0;

architecture STRUCTURE of design_1_predictor_0_0 is
  signal \<const1>\ : STD_LOGIC;
  signal \^m00_axis_tstrb\ : STD_LOGIC_VECTOR ( 2 to 2 );
  attribute x_interface_info : string;
  attribute x_interface_info of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m00_axis:s00_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 5e+07, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute x_interface_parameter of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of m00_axis_tlast : signal is "xilinx.com:interface:axis:1.0 m00_axis TLAST";
  attribute x_interface_info of m00_axis_tready : signal is "xilinx.com:interface:axis:1.0 m00_axis TREADY";
  attribute x_interface_info of m00_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m00_axis TVALID";
  attribute x_interface_parameter of m00_axis_tvalid : signal is "XIL_INTERFACENAME m00_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 5e+07, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of s00_axis_tlast : signal is "xilinx.com:interface:axis:1.0 s00_axis TLAST";
  attribute x_interface_info of s00_axis_tready : signal is "xilinx.com:interface:axis:1.0 s00_axis TREADY";
  attribute x_interface_parameter of s00_axis_tready : signal is "XIL_INTERFACENAME s00_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 5e+07, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of s00_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 s00_axis TVALID";
  attribute x_interface_info of m00_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m00_axis TDATA";
  attribute x_interface_info of m00_axis_tkeep : signal is "xilinx.com:interface:axis:1.0 m00_axis TKEEP";
  attribute x_interface_info of m00_axis_tstrb : signal is "xilinx.com:interface:axis:1.0 m00_axis TSTRB";
  attribute x_interface_info of s00_axis_tdata : signal is "xilinx.com:interface:axis:1.0 s00_axis TDATA";
  attribute x_interface_info of s00_axis_tstrb : signal is "xilinx.com:interface:axis:1.0 s00_axis TSTRB";
begin
  m00_axis_tkeep(3) <= \^m00_axis_tstrb\(2);
  m00_axis_tkeep(2) <= \^m00_axis_tstrb\(2);
  m00_axis_tkeep(1) <= \^m00_axis_tstrb\(2);
  m00_axis_tkeep(0) <= \^m00_axis_tstrb\(2);
  m00_axis_tstrb(3) <= \^m00_axis_tstrb\(2);
  m00_axis_tstrb(2) <= \^m00_axis_tstrb\(2);
  m00_axis_tstrb(1) <= \^m00_axis_tstrb\(2);
  m00_axis_tstrb(0) <= \^m00_axis_tstrb\(2);
  s00_axis_tready <= \<const1>\;
U0: entity work.design_1_predictor_0_0_predictor
     port map (
      aclk => aclk,
      aresetn => aresetn,
      m00_axis_tdata(31 downto 0) => m00_axis_tdata(31 downto 0),
      m00_axis_tlast => m00_axis_tlast,
      m00_axis_tready => m00_axis_tready,
      m00_axis_tstrb(0) => \^m00_axis_tstrb\(2),
      m00_axis_tvalid => m00_axis_tvalid,
      s00_axis_tdata(31 downto 0) => s00_axis_tdata(31 downto 0),
      s00_axis_tlast => s00_axis_tlast,
      s00_axis_tvalid => s00_axis_tvalid
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
