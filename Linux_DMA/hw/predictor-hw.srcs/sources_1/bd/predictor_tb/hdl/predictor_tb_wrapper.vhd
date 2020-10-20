--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
--Date        : Tue Mar 17 15:28:47 2020
--Host        : kryyni running 64-bit Ubuntu 18.04.4 LTS
--Command     : generate_target predictor_tb_wrapper.bd
--Design      : predictor_tb_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity predictor_tb_wrapper is
end predictor_tb_wrapper;

architecture STRUCTURE of predictor_tb_wrapper is
  component predictor_tb is
  end component predictor_tb;
begin
predictor_tb_i: component predictor_tb
 ;
end STRUCTURE;
