--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.2 (lin64) Build 2700185 Thu Oct 24 18:45:48 MDT 2019
--Date        : Sun Dec  8 20:12:36 2019
--Host        : austin-ubuntu running 64-bit Ubuntu 18.04.3 LTS
--Command     : generate_target img_proc.bd
--Design      : img_proc
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity hdmi_decode_imp_1TQ02U7 is
  port (
    M_AXIS_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    M_AXIS_tlast : out STD_LOGIC;
    M_AXIS_tready : in STD_LOGIC;
    M_AXIS_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXIS_tvalid : out STD_LOGIC;
    RefClk : in STD_LOGIC;
    aRst : in STD_LOGIC;
    aclken : in STD_LOGIC;
    hdmi_in_clk_n : in STD_LOGIC;
    hdmi_in_clk_p : in STD_LOGIC;
    hdmi_in_data_n : in STD_LOGIC_VECTOR ( 2 downto 0 );
    hdmi_in_data_p : in STD_LOGIC_VECTOR ( 2 downto 0 );
    hdmi_in_ddc_scl_i : in STD_LOGIC;
    hdmi_in_ddc_scl_o : out STD_LOGIC;
    hdmi_in_ddc_scl_t : out STD_LOGIC;
    hdmi_in_ddc_sda_i : in STD_LOGIC;
    hdmi_in_ddc_sda_o : out STD_LOGIC;
    hdmi_in_ddc_sda_t : out STD_LOGIC;
    vid_io_in_reset : in STD_LOGIC
  );
end hdmi_decode_imp_1TQ02U7;

architecture STRUCTURE of hdmi_decode_imp_1TQ02U7 is
  component img_proc_v_vid_in_axi4s_0_0 is
  port (
    vid_io_in_clk : in STD_LOGIC;
    vid_io_in_ce : in STD_LOGIC;
    vid_io_in_reset : in STD_LOGIC;
    vid_active_video : in STD_LOGIC;
    vid_vblank : in STD_LOGIC;
    vid_hblank : in STD_LOGIC;
    vid_vsync : in STD_LOGIC;
    vid_hsync : in STD_LOGIC;
    vid_field_id : in STD_LOGIC;
    vid_data : in STD_LOGIC_VECTOR ( 23 downto 0 );
    aclk : in STD_LOGIC;
    aclken : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_axis_video_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_video_tvalid : out STD_LOGIC;
    m_axis_video_tready : in STD_LOGIC;
    m_axis_video_tuser : out STD_LOGIC;
    m_axis_video_tlast : out STD_LOGIC;
    fid : out STD_LOGIC;
    vtd_active_video : out STD_LOGIC;
    vtd_vblank : out STD_LOGIC;
    vtd_hblank : out STD_LOGIC;
    vtd_vsync : out STD_LOGIC;
    vtd_hsync : out STD_LOGIC;
    vtd_field_id : out STD_LOGIC;
    overflow : out STD_LOGIC;
    underflow : out STD_LOGIC;
    axis_enable : in STD_LOGIC
  );
  end component img_proc_v_vid_in_axi4s_0_0;
  component img_proc_axis_subset_converter_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tuser : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component img_proc_axis_subset_converter_0_0;
  component img_proc_ila_0_1 is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe1 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component img_proc_ila_0_1;
  component img_proc_dvi2rgb_0_1 is
  port (
    TMDS_Clk_p : in STD_LOGIC;
    TMDS_Clk_n : in STD_LOGIC;
    TMDS_Data_p : in STD_LOGIC_VECTOR ( 2 downto 0 );
    TMDS_Data_n : in STD_LOGIC_VECTOR ( 2 downto 0 );
    RefClk : in STD_LOGIC;
    aRst_n : in STD_LOGIC;
    vid_pData : out STD_LOGIC_VECTOR ( 23 downto 0 );
    vid_pVDE : out STD_LOGIC;
    vid_pHSync : out STD_LOGIC;
    vid_pVSync : out STD_LOGIC;
    PixelClk : out STD_LOGIC;
    aPixelClkLckd : out STD_LOGIC;
    pLocked : out STD_LOGIC;
    SDA_I : in STD_LOGIC;
    SDA_O : out STD_LOGIC;
    SDA_T : out STD_LOGIC;
    SCL_I : in STD_LOGIC;
    SCL_O : out STD_LOGIC;
    SCL_T : out STD_LOGIC;
    pRst_n : in STD_LOGIC
  );
  end component img_proc_dvi2rgb_0_1;
  signal RefClk_1 : STD_LOGIC;
  signal aRst_1 : STD_LOGIC;
  signal aclken_1 : STD_LOGIC;
  signal axis_subset_converter_0_M_AXIS_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal axis_subset_converter_0_M_AXIS_TLAST : STD_LOGIC;
  signal axis_subset_converter_0_M_AXIS_TREADY : STD_LOGIC;
  signal axis_subset_converter_0_M_AXIS_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axis_subset_converter_0_M_AXIS_TVALID : STD_LOGIC;
  signal dvi2rgb_0_DDC_SCL_I : STD_LOGIC;
  signal dvi2rgb_0_DDC_SCL_O : STD_LOGIC;
  signal dvi2rgb_0_DDC_SCL_T : STD_LOGIC;
  signal dvi2rgb_0_DDC_SDA_I : STD_LOGIC;
  signal dvi2rgb_0_DDC_SDA_O : STD_LOGIC;
  signal dvi2rgb_0_DDC_SDA_T : STD_LOGIC;
  signal dvi2rgb_0_PixelClk : STD_LOGIC;
  signal dvi2rgb_0_RGB_ACTIVE_VIDEO : STD_LOGIC;
  signal dvi2rgb_0_RGB_DATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal dvi2rgb_0_RGB_HSYNC : STD_LOGIC;
  signal dvi2rgb_0_RGB_VSYNC : STD_LOGIC;
  signal dvi2rgb_0_aPixelClkLckd : STD_LOGIC;
  signal dvi2rgb_0_pLocked : STD_LOGIC;
  signal hdmi_in_1_CLK_N : STD_LOGIC;
  signal hdmi_in_1_CLK_P : STD_LOGIC;
  signal hdmi_in_1_DATA_N : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal hdmi_in_1_DATA_P : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal v_vid_in_axi4s_0_video_out_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal v_vid_in_axi4s_0_video_out_TLAST : STD_LOGIC;
  signal v_vid_in_axi4s_0_video_out_TREADY : STD_LOGIC;
  signal v_vid_in_axi4s_0_video_out_TUSER : STD_LOGIC;
  signal v_vid_in_axi4s_0_video_out_TVALID : STD_LOGIC;
  signal vid_io_in_reset_1 : STD_LOGIC;
  signal NLW_v_vid_in_axi4s_0_fid_UNCONNECTED : STD_LOGIC;
  signal NLW_v_vid_in_axi4s_0_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_v_vid_in_axi4s_0_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_v_vid_in_axi4s_0_vtd_active_video_UNCONNECTED : STD_LOGIC;
  signal NLW_v_vid_in_axi4s_0_vtd_field_id_UNCONNECTED : STD_LOGIC;
  signal NLW_v_vid_in_axi4s_0_vtd_hblank_UNCONNECTED : STD_LOGIC;
  signal NLW_v_vid_in_axi4s_0_vtd_hsync_UNCONNECTED : STD_LOGIC;
  signal NLW_v_vid_in_axi4s_0_vtd_vblank_UNCONNECTED : STD_LOGIC;
  signal NLW_v_vid_in_axi4s_0_vtd_vsync_UNCONNECTED : STD_LOGIC;
begin
  M_AXIS_tdata(23 downto 0) <= axis_subset_converter_0_M_AXIS_TDATA(23 downto 0);
  M_AXIS_tlast <= axis_subset_converter_0_M_AXIS_TLAST;
  M_AXIS_tuser(0) <= axis_subset_converter_0_M_AXIS_TUSER(0);
  M_AXIS_tvalid <= axis_subset_converter_0_M_AXIS_TVALID;
  RefClk_1 <= RefClk;
  aRst_1 <= aRst;
  aclken_1 <= aclken;
  axis_subset_converter_0_M_AXIS_TREADY <= M_AXIS_tready;
  dvi2rgb_0_DDC_SCL_I <= hdmi_in_ddc_scl_i;
  dvi2rgb_0_DDC_SDA_I <= hdmi_in_ddc_sda_i;
  hdmi_in_1_CLK_N <= hdmi_in_clk_n;
  hdmi_in_1_CLK_P <= hdmi_in_clk_p;
  hdmi_in_1_DATA_N(2 downto 0) <= hdmi_in_data_n(2 downto 0);
  hdmi_in_1_DATA_P(2 downto 0) <= hdmi_in_data_p(2 downto 0);
  hdmi_in_ddc_scl_o <= dvi2rgb_0_DDC_SCL_O;
  hdmi_in_ddc_scl_t <= dvi2rgb_0_DDC_SCL_T;
  hdmi_in_ddc_sda_o <= dvi2rgb_0_DDC_SDA_O;
  hdmi_in_ddc_sda_t <= dvi2rgb_0_DDC_SDA_T;
  vid_io_in_reset_1 <= vid_io_in_reset;
axis_subset_converter_0: component img_proc_axis_subset_converter_0_0
     port map (
      aclk => RefClk_1,
      aresetn => aRst_1,
      m_axis_tdata(23 downto 0) => axis_subset_converter_0_M_AXIS_TDATA(23 downto 0),
      m_axis_tlast => axis_subset_converter_0_M_AXIS_TLAST,
      m_axis_tready => axis_subset_converter_0_M_AXIS_TREADY,
      m_axis_tuser(0) => axis_subset_converter_0_M_AXIS_TUSER(0),
      m_axis_tvalid => axis_subset_converter_0_M_AXIS_TVALID,
      s_axis_tdata(23 downto 0) => v_vid_in_axi4s_0_video_out_TDATA(23 downto 0),
      s_axis_tlast => v_vid_in_axi4s_0_video_out_TLAST,
      s_axis_tready => v_vid_in_axi4s_0_video_out_TREADY,
      s_axis_tuser(0) => v_vid_in_axi4s_0_video_out_TUSER,
      s_axis_tvalid => v_vid_in_axi4s_0_video_out_TVALID
    );
dvi2rgb_0: component img_proc_dvi2rgb_0_1
     port map (
      PixelClk => dvi2rgb_0_PixelClk,
      RefClk => RefClk_1,
      SCL_I => dvi2rgb_0_DDC_SCL_I,
      SCL_O => dvi2rgb_0_DDC_SCL_O,
      SCL_T => dvi2rgb_0_DDC_SCL_T,
      SDA_I => dvi2rgb_0_DDC_SDA_I,
      SDA_O => dvi2rgb_0_DDC_SDA_O,
      SDA_T => dvi2rgb_0_DDC_SDA_T,
      TMDS_Clk_n => hdmi_in_1_CLK_N,
      TMDS_Clk_p => hdmi_in_1_CLK_P,
      TMDS_Data_n(2 downto 0) => hdmi_in_1_DATA_N(2 downto 0),
      TMDS_Data_p(2 downto 0) => hdmi_in_1_DATA_P(2 downto 0),
      aPixelClkLckd => dvi2rgb_0_aPixelClkLckd,
      aRst_n => aRst_1,
      pLocked => dvi2rgb_0_pLocked,
      pRst_n => aRst_1,
      vid_pData(23 downto 0) => dvi2rgb_0_RGB_DATA(23 downto 0),
      vid_pHSync => dvi2rgb_0_RGB_HSYNC,
      vid_pVDE => dvi2rgb_0_RGB_ACTIVE_VIDEO,
      vid_pVSync => dvi2rgb_0_RGB_VSYNC
    );
ila_0: component img_proc_ila_0_1
     port map (
      clk => RefClk_1,
      probe0(0) => dvi2rgb_0_aPixelClkLckd,
      probe1(0) => dvi2rgb_0_pLocked
    );
v_vid_in_axi4s_0: component img_proc_v_vid_in_axi4s_0_0
     port map (
      aclk => RefClk_1,
      aclken => aclken_1,
      aresetn => aRst_1,
      axis_enable => aclken_1,
      fid => NLW_v_vid_in_axi4s_0_fid_UNCONNECTED,
      m_axis_video_tdata(23 downto 0) => v_vid_in_axi4s_0_video_out_TDATA(23 downto 0),
      m_axis_video_tlast => v_vid_in_axi4s_0_video_out_TLAST,
      m_axis_video_tready => v_vid_in_axi4s_0_video_out_TREADY,
      m_axis_video_tuser => v_vid_in_axi4s_0_video_out_TUSER,
      m_axis_video_tvalid => v_vid_in_axi4s_0_video_out_TVALID,
      overflow => NLW_v_vid_in_axi4s_0_overflow_UNCONNECTED,
      underflow => NLW_v_vid_in_axi4s_0_underflow_UNCONNECTED,
      vid_active_video => dvi2rgb_0_RGB_ACTIVE_VIDEO,
      vid_data(23 downto 0) => dvi2rgb_0_RGB_DATA(23 downto 0),
      vid_field_id => '0',
      vid_hblank => '0',
      vid_hsync => dvi2rgb_0_RGB_HSYNC,
      vid_io_in_ce => aclken_1,
      vid_io_in_clk => dvi2rgb_0_PixelClk,
      vid_io_in_reset => vid_io_in_reset_1,
      vid_vblank => '0',
      vid_vsync => dvi2rgb_0_RGB_VSYNC,
      vtd_active_video => NLW_v_vid_in_axi4s_0_vtd_active_video_UNCONNECTED,
      vtd_field_id => NLW_v_vid_in_axi4s_0_vtd_field_id_UNCONNECTED,
      vtd_hblank => NLW_v_vid_in_axi4s_0_vtd_hblank_UNCONNECTED,
      vtd_hsync => NLW_v_vid_in_axi4s_0_vtd_hsync_UNCONNECTED,
      vtd_vblank => NLW_v_vid_in_axi4s_0_vtd_vblank_UNCONNECTED,
      vtd_vsync => NLW_v_vid_in_axi4s_0_vtd_vsync_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m00_couplers_imp_41XI55 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXI_rid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXI_wid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m00_couplers_imp_41XI55;

architecture STRUCTURE of m00_couplers_imp_41XI55 is
  component img_proc_auto_pc_1 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component img_proc_auto_pc_1;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_pc_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m00_couplers_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_pc_to_m00_couplers_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m00_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_m00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m00_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m00_couplers_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_pc_to_m00_couplers_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m00_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_m00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m00_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_m00_couplers_BID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal auto_pc_to_m00_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m00_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal auto_pc_to_m00_couplers_RID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal auto_pc_to_m00_couplers_RLAST : STD_LOGIC;
  signal auto_pc_to_m00_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m00_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal auto_pc_to_m00_couplers_WID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_pc_to_m00_couplers_WLAST : STD_LOGIC;
  signal auto_pc_to_m00_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_pc_to_m00_couplers_WVALID : STD_LOGIC;
  signal m00_couplers_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_auto_pc_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_ARREADY : STD_LOGIC;
  signal m00_couplers_to_auto_pc_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_pc_ARVALID : STD_LOGIC;
  signal m00_couplers_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_auto_pc_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_AWREADY : STD_LOGIC;
  signal m00_couplers_to_auto_pc_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_pc_AWVALID : STD_LOGIC;
  signal m00_couplers_to_auto_pc_BID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_auto_pc_BREADY : STD_LOGIC;
  signal m00_couplers_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_pc_BVALID : STD_LOGIC;
  signal m00_couplers_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal m00_couplers_to_auto_pc_RID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_auto_pc_RLAST : STD_LOGIC;
  signal m00_couplers_to_auto_pc_RREADY : STD_LOGIC;
  signal m00_couplers_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_pc_RVALID : STD_LOGIC;
  signal m00_couplers_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal m00_couplers_to_auto_pc_WLAST : STD_LOGIC;
  signal m00_couplers_to_auto_pc_WREADY : STD_LOGIC;
  signal m00_couplers_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_auto_pc_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= auto_pc_to_m00_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= auto_pc_to_m00_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= auto_pc_to_m00_couplers_ARCACHE(3 downto 0);
  M_AXI_arid(0) <= auto_pc_to_m00_couplers_ARID(0);
  M_AXI_arlen(3 downto 0) <= auto_pc_to_m00_couplers_ARLEN(3 downto 0);
  M_AXI_arlock(1 downto 0) <= auto_pc_to_m00_couplers_ARLOCK(1 downto 0);
  M_AXI_arprot(2 downto 0) <= auto_pc_to_m00_couplers_ARPROT(2 downto 0);
  M_AXI_arqos(3 downto 0) <= auto_pc_to_m00_couplers_ARQOS(3 downto 0);
  M_AXI_arsize(2 downto 0) <= auto_pc_to_m00_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid <= auto_pc_to_m00_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= auto_pc_to_m00_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= auto_pc_to_m00_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= auto_pc_to_m00_couplers_AWCACHE(3 downto 0);
  M_AXI_awid(0) <= auto_pc_to_m00_couplers_AWID(0);
  M_AXI_awlen(3 downto 0) <= auto_pc_to_m00_couplers_AWLEN(3 downto 0);
  M_AXI_awlock(1 downto 0) <= auto_pc_to_m00_couplers_AWLOCK(1 downto 0);
  M_AXI_awprot(2 downto 0) <= auto_pc_to_m00_couplers_AWPROT(2 downto 0);
  M_AXI_awqos(3 downto 0) <= auto_pc_to_m00_couplers_AWQOS(3 downto 0);
  M_AXI_awsize(2 downto 0) <= auto_pc_to_m00_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid <= auto_pc_to_m00_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_m00_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_m00_couplers_RREADY;
  M_AXI_wdata(63 downto 0) <= auto_pc_to_m00_couplers_WDATA(63 downto 0);
  M_AXI_wid(0) <= auto_pc_to_m00_couplers_WID(0);
  M_AXI_wlast <= auto_pc_to_m00_couplers_WLAST;
  M_AXI_wstrb(7 downto 0) <= auto_pc_to_m00_couplers_WSTRB(7 downto 0);
  M_AXI_wvalid <= auto_pc_to_m00_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= m00_couplers_to_auto_pc_ARREADY;
  S_AXI_awready <= m00_couplers_to_auto_pc_AWREADY;
  S_AXI_bid(0) <= m00_couplers_to_auto_pc_BID(0);
  S_AXI_bresp(1 downto 0) <= m00_couplers_to_auto_pc_BRESP(1 downto 0);
  S_AXI_bvalid <= m00_couplers_to_auto_pc_BVALID;
  S_AXI_rdata(63 downto 0) <= m00_couplers_to_auto_pc_RDATA(63 downto 0);
  S_AXI_rid(0) <= m00_couplers_to_auto_pc_RID(0);
  S_AXI_rlast <= m00_couplers_to_auto_pc_RLAST;
  S_AXI_rresp(1 downto 0) <= m00_couplers_to_auto_pc_RRESP(1 downto 0);
  S_AXI_rvalid <= m00_couplers_to_auto_pc_RVALID;
  S_AXI_wready <= m00_couplers_to_auto_pc_WREADY;
  auto_pc_to_m00_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_m00_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_m00_couplers_BID(5 downto 0) <= M_AXI_bid(5 downto 0);
  auto_pc_to_m00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_m00_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_m00_couplers_RDATA(63 downto 0) <= M_AXI_rdata(63 downto 0);
  auto_pc_to_m00_couplers_RID(5 downto 0) <= M_AXI_rid(5 downto 0);
  auto_pc_to_m00_couplers_RLAST <= M_AXI_rlast;
  auto_pc_to_m00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_m00_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_m00_couplers_WREADY <= M_AXI_wready;
  m00_couplers_to_auto_pc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m00_couplers_to_auto_pc_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  m00_couplers_to_auto_pc_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  m00_couplers_to_auto_pc_ARID(0) <= S_AXI_arid(0);
  m00_couplers_to_auto_pc_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  m00_couplers_to_auto_pc_ARLOCK(0) <= S_AXI_arlock(0);
  m00_couplers_to_auto_pc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m00_couplers_to_auto_pc_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  m00_couplers_to_auto_pc_ARREGION(3 downto 0) <= S_AXI_arregion(3 downto 0);
  m00_couplers_to_auto_pc_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  m00_couplers_to_auto_pc_ARVALID <= S_AXI_arvalid;
  m00_couplers_to_auto_pc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m00_couplers_to_auto_pc_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  m00_couplers_to_auto_pc_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  m00_couplers_to_auto_pc_AWID(0) <= S_AXI_awid(0);
  m00_couplers_to_auto_pc_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  m00_couplers_to_auto_pc_AWLOCK(0) <= S_AXI_awlock(0);
  m00_couplers_to_auto_pc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m00_couplers_to_auto_pc_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  m00_couplers_to_auto_pc_AWREGION(3 downto 0) <= S_AXI_awregion(3 downto 0);
  m00_couplers_to_auto_pc_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  m00_couplers_to_auto_pc_AWVALID <= S_AXI_awvalid;
  m00_couplers_to_auto_pc_BREADY <= S_AXI_bready;
  m00_couplers_to_auto_pc_RREADY <= S_AXI_rready;
  m00_couplers_to_auto_pc_WDATA(63 downto 0) <= S_AXI_wdata(63 downto 0);
  m00_couplers_to_auto_pc_WLAST <= S_AXI_wlast;
  m00_couplers_to_auto_pc_WSTRB(7 downto 0) <= S_AXI_wstrb(7 downto 0);
  m00_couplers_to_auto_pc_WVALID <= S_AXI_wvalid;
auto_pc: component img_proc_auto_pc_1
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(31 downto 0) => auto_pc_to_m00_couplers_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => auto_pc_to_m00_couplers_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => auto_pc_to_m00_couplers_ARCACHE(3 downto 0),
      m_axi_arid(0) => auto_pc_to_m00_couplers_ARID(0),
      m_axi_arlen(3 downto 0) => auto_pc_to_m00_couplers_ARLEN(3 downto 0),
      m_axi_arlock(1 downto 0) => auto_pc_to_m00_couplers_ARLOCK(1 downto 0),
      m_axi_arprot(2 downto 0) => auto_pc_to_m00_couplers_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => auto_pc_to_m00_couplers_ARQOS(3 downto 0),
      m_axi_arready => auto_pc_to_m00_couplers_ARREADY,
      m_axi_arsize(2 downto 0) => auto_pc_to_m00_couplers_ARSIZE(2 downto 0),
      m_axi_arvalid => auto_pc_to_m00_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_pc_to_m00_couplers_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => auto_pc_to_m00_couplers_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => auto_pc_to_m00_couplers_AWCACHE(3 downto 0),
      m_axi_awid(0) => auto_pc_to_m00_couplers_AWID(0),
      m_axi_awlen(3 downto 0) => auto_pc_to_m00_couplers_AWLEN(3 downto 0),
      m_axi_awlock(1 downto 0) => auto_pc_to_m00_couplers_AWLOCK(1 downto 0),
      m_axi_awprot(2 downto 0) => auto_pc_to_m00_couplers_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => auto_pc_to_m00_couplers_AWQOS(3 downto 0),
      m_axi_awready => auto_pc_to_m00_couplers_AWREADY,
      m_axi_awsize(2 downto 0) => auto_pc_to_m00_couplers_AWSIZE(2 downto 0),
      m_axi_awvalid => auto_pc_to_m00_couplers_AWVALID,
      m_axi_bid(0) => auto_pc_to_m00_couplers_BID(0),
      m_axi_bready => auto_pc_to_m00_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_m00_couplers_BVALID,
      m_axi_rdata(63 downto 0) => auto_pc_to_m00_couplers_RDATA(63 downto 0),
      m_axi_rid(0) => auto_pc_to_m00_couplers_RID(0),
      m_axi_rlast => auto_pc_to_m00_couplers_RLAST,
      m_axi_rready => auto_pc_to_m00_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_m00_couplers_RVALID,
      m_axi_wdata(63 downto 0) => auto_pc_to_m00_couplers_WDATA(63 downto 0),
      m_axi_wid(0) => auto_pc_to_m00_couplers_WID(0),
      m_axi_wlast => auto_pc_to_m00_couplers_WLAST,
      m_axi_wready => auto_pc_to_m00_couplers_WREADY,
      m_axi_wstrb(7 downto 0) => auto_pc_to_m00_couplers_WSTRB(7 downto 0),
      m_axi_wvalid => auto_pc_to_m00_couplers_WVALID,
      s_axi_araddr(31 downto 0) => m00_couplers_to_auto_pc_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => m00_couplers_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => m00_couplers_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arid(0) => m00_couplers_to_auto_pc_ARID(0),
      s_axi_arlen(7 downto 0) => m00_couplers_to_auto_pc_ARLEN(7 downto 0),
      s_axi_arlock(0) => m00_couplers_to_auto_pc_ARLOCK(0),
      s_axi_arprot(2 downto 0) => m00_couplers_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => m00_couplers_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => m00_couplers_to_auto_pc_ARREADY,
      s_axi_arregion(3 downto 0) => m00_couplers_to_auto_pc_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => m00_couplers_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => m00_couplers_to_auto_pc_ARVALID,
      s_axi_awaddr(31 downto 0) => m00_couplers_to_auto_pc_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => m00_couplers_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => m00_couplers_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awid(0) => m00_couplers_to_auto_pc_AWID(0),
      s_axi_awlen(7 downto 0) => m00_couplers_to_auto_pc_AWLEN(7 downto 0),
      s_axi_awlock(0) => m00_couplers_to_auto_pc_AWLOCK(0),
      s_axi_awprot(2 downto 0) => m00_couplers_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => m00_couplers_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => m00_couplers_to_auto_pc_AWREADY,
      s_axi_awregion(3 downto 0) => m00_couplers_to_auto_pc_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => m00_couplers_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => m00_couplers_to_auto_pc_AWVALID,
      s_axi_bid(0) => m00_couplers_to_auto_pc_BID(0),
      s_axi_bready => m00_couplers_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => m00_couplers_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => m00_couplers_to_auto_pc_BVALID,
      s_axi_rdata(63 downto 0) => m00_couplers_to_auto_pc_RDATA(63 downto 0),
      s_axi_rid(0) => m00_couplers_to_auto_pc_RID(0),
      s_axi_rlast => m00_couplers_to_auto_pc_RLAST,
      s_axi_rready => m00_couplers_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => m00_couplers_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => m00_couplers_to_auto_pc_RVALID,
      s_axi_wdata(63 downto 0) => m00_couplers_to_auto_pc_WDATA(63 downto 0),
      s_axi_wlast => m00_couplers_to_auto_pc_WLAST,
      s_axi_wready => m00_couplers_to_auto_pc_WREADY,
      s_axi_wstrb(7 downto 0) => m00_couplers_to_auto_pc_WSTRB(7 downto 0),
      s_axi_wvalid => m00_couplers_to_auto_pc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m00_couplers_imp_74RAVT is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m00_couplers_imp_74RAVT;

architecture STRUCTURE of m00_couplers_imp_74RAVT is
  signal m00_couplers_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m00_couplers_to_m00_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid(0) <= m00_couplers_to_m00_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m00_couplers_to_m00_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid(0) <= m00_couplers_to_m00_couplers_AWVALID(0);
  M_AXI_bready(0) <= m00_couplers_to_m00_couplers_BREADY(0);
  M_AXI_rready(0) <= m00_couplers_to_m00_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m00_couplers_to_m00_couplers_WDATA(31 downto 0);
  M_AXI_wvalid(0) <= m00_couplers_to_m00_couplers_WVALID(0);
  S_AXI_arready(0) <= m00_couplers_to_m00_couplers_ARREADY(0);
  S_AXI_awready(0) <= m00_couplers_to_m00_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m00_couplers_to_m00_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m00_couplers_to_m00_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m00_couplers_to_m00_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m00_couplers_to_m00_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m00_couplers_to_m00_couplers_RVALID(0);
  S_AXI_wready(0) <= m00_couplers_to_m00_couplers_WREADY(0);
  m00_couplers_to_m00_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m00_couplers_to_m00_couplers_ARREADY(0) <= M_AXI_arready(0);
  m00_couplers_to_m00_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m00_couplers_to_m00_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m00_couplers_to_m00_couplers_AWREADY(0) <= M_AXI_awready(0);
  m00_couplers_to_m00_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m00_couplers_to_m00_couplers_BREADY(0) <= S_AXI_bready(0);
  m00_couplers_to_m00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m00_couplers_to_m00_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m00_couplers_to_m00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m00_couplers_to_m00_couplers_RREADY(0) <= S_AXI_rready(0);
  m00_couplers_to_m00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m00_couplers_to_m00_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m00_couplers_to_m00_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m00_couplers_to_m00_couplers_WREADY(0) <= M_AXI_wready(0);
  m00_couplers_to_m00_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m01_couplers_imp_1WI8DO8 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m01_couplers_imp_1WI8DO8;

architecture STRUCTURE of m01_couplers_imp_1WI8DO8 is
  signal m01_couplers_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_ARREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_ARVALID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_AWREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_AWVALID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_BREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_m01_couplers_BVALID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_RREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_m01_couplers_RVALID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_WREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_m01_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= m01_couplers_to_m01_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid <= m01_couplers_to_m01_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= m01_couplers_to_m01_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid <= m01_couplers_to_m01_couplers_AWVALID;
  M_AXI_bready <= m01_couplers_to_m01_couplers_BREADY;
  M_AXI_rready <= m01_couplers_to_m01_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m01_couplers_to_m01_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m01_couplers_to_m01_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m01_couplers_to_m01_couplers_WVALID;
  S_AXI_arready <= m01_couplers_to_m01_couplers_ARREADY;
  S_AXI_awready <= m01_couplers_to_m01_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= m01_couplers_to_m01_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m01_couplers_to_m01_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m01_couplers_to_m01_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m01_couplers_to_m01_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m01_couplers_to_m01_couplers_RVALID;
  S_AXI_wready <= m01_couplers_to_m01_couplers_WREADY;
  m01_couplers_to_m01_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m01_couplers_to_m01_couplers_ARREADY <= M_AXI_arready;
  m01_couplers_to_m01_couplers_ARVALID <= S_AXI_arvalid;
  m01_couplers_to_m01_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m01_couplers_to_m01_couplers_AWREADY <= M_AXI_awready;
  m01_couplers_to_m01_couplers_AWVALID <= S_AXI_awvalid;
  m01_couplers_to_m01_couplers_BREADY <= S_AXI_bready;
  m01_couplers_to_m01_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m01_couplers_to_m01_couplers_BVALID <= M_AXI_bvalid;
  m01_couplers_to_m01_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m01_couplers_to_m01_couplers_RREADY <= S_AXI_rready;
  m01_couplers_to_m01_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m01_couplers_to_m01_couplers_RVALID <= M_AXI_rvalid;
  m01_couplers_to_m01_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m01_couplers_to_m01_couplers_WREADY <= M_AXI_wready;
  m01_couplers_to_m01_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m01_couplers_to_m01_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m02_couplers_imp_7VFI3E is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m02_couplers_imp_7VFI3E;

architecture STRUCTURE of m02_couplers_imp_7VFI3E is
  signal m02_couplers_to_m02_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_ARREADY : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_ARVALID : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_AWREADY : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_AWVALID : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_BREADY : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_m02_couplers_BVALID : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_RREADY : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_m02_couplers_RVALID : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_WREADY : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_m02_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= m02_couplers_to_m02_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid <= m02_couplers_to_m02_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= m02_couplers_to_m02_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid <= m02_couplers_to_m02_couplers_AWVALID;
  M_AXI_bready <= m02_couplers_to_m02_couplers_BREADY;
  M_AXI_rready <= m02_couplers_to_m02_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m02_couplers_to_m02_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m02_couplers_to_m02_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m02_couplers_to_m02_couplers_WVALID;
  S_AXI_arready <= m02_couplers_to_m02_couplers_ARREADY;
  S_AXI_awready <= m02_couplers_to_m02_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= m02_couplers_to_m02_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m02_couplers_to_m02_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m02_couplers_to_m02_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m02_couplers_to_m02_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m02_couplers_to_m02_couplers_RVALID;
  S_AXI_wready <= m02_couplers_to_m02_couplers_WREADY;
  m02_couplers_to_m02_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m02_couplers_to_m02_couplers_ARREADY <= M_AXI_arready;
  m02_couplers_to_m02_couplers_ARVALID <= S_AXI_arvalid;
  m02_couplers_to_m02_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m02_couplers_to_m02_couplers_AWREADY <= M_AXI_awready;
  m02_couplers_to_m02_couplers_AWVALID <= S_AXI_awvalid;
  m02_couplers_to_m02_couplers_BREADY <= S_AXI_bready;
  m02_couplers_to_m02_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m02_couplers_to_m02_couplers_BVALID <= M_AXI_bvalid;
  m02_couplers_to_m02_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m02_couplers_to_m02_couplers_RREADY <= S_AXI_rready;
  m02_couplers_to_m02_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m02_couplers_to_m02_couplers_RVALID <= M_AXI_rvalid;
  m02_couplers_to_m02_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m02_couplers_to_m02_couplers_WREADY <= M_AXI_wready;
  m02_couplers_to_m02_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m02_couplers_to_m02_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_1QAVOGR is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end s00_couplers_imp_1QAVOGR;

architecture STRUCTURE of s00_couplers_imp_1QAVOGR is
  component img_proc_auto_pc_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component img_proc_auto_pc_0;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_pc_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s00_couplers_WVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_ARREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_ARVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_AWREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_AWVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_BREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_BVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_RLAST : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_RVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_WID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_WLAST : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= auto_pc_to_s00_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= auto_pc_to_s00_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid <= auto_pc_to_s00_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= auto_pc_to_s00_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= auto_pc_to_s00_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid <= auto_pc_to_s00_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_s00_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_s00_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_pc_to_s00_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= auto_pc_to_s00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_pc_to_s00_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= s00_couplers_to_auto_pc_ARREADY;
  S_AXI_awready <= s00_couplers_to_auto_pc_AWREADY;
  S_AXI_bid(11 downto 0) <= s00_couplers_to_auto_pc_BID(11 downto 0);
  S_AXI_bresp(1 downto 0) <= s00_couplers_to_auto_pc_BRESP(1 downto 0);
  S_AXI_bvalid <= s00_couplers_to_auto_pc_BVALID;
  S_AXI_rdata(31 downto 0) <= s00_couplers_to_auto_pc_RDATA(31 downto 0);
  S_AXI_rid(11 downto 0) <= s00_couplers_to_auto_pc_RID(11 downto 0);
  S_AXI_rlast <= s00_couplers_to_auto_pc_RLAST;
  S_AXI_rresp(1 downto 0) <= s00_couplers_to_auto_pc_RRESP(1 downto 0);
  S_AXI_rvalid <= s00_couplers_to_auto_pc_RVALID;
  S_AXI_wready <= s00_couplers_to_auto_pc_WREADY;
  auto_pc_to_s00_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_s00_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_s00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_s00_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_s00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_pc_to_s00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_s00_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_s00_couplers_WREADY <= M_AXI_wready;
  s00_couplers_to_auto_pc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s00_couplers_to_auto_pc_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s00_couplers_to_auto_pc_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s00_couplers_to_auto_pc_ARID(11 downto 0) <= S_AXI_arid(11 downto 0);
  s00_couplers_to_auto_pc_ARLEN(3 downto 0) <= S_AXI_arlen(3 downto 0);
  s00_couplers_to_auto_pc_ARLOCK(1 downto 0) <= S_AXI_arlock(1 downto 0);
  s00_couplers_to_auto_pc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s00_couplers_to_auto_pc_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  s00_couplers_to_auto_pc_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s00_couplers_to_auto_pc_ARVALID <= S_AXI_arvalid;
  s00_couplers_to_auto_pc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s00_couplers_to_auto_pc_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s00_couplers_to_auto_pc_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s00_couplers_to_auto_pc_AWID(11 downto 0) <= S_AXI_awid(11 downto 0);
  s00_couplers_to_auto_pc_AWLEN(3 downto 0) <= S_AXI_awlen(3 downto 0);
  s00_couplers_to_auto_pc_AWLOCK(1 downto 0) <= S_AXI_awlock(1 downto 0);
  s00_couplers_to_auto_pc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s00_couplers_to_auto_pc_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  s00_couplers_to_auto_pc_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s00_couplers_to_auto_pc_AWVALID <= S_AXI_awvalid;
  s00_couplers_to_auto_pc_BREADY <= S_AXI_bready;
  s00_couplers_to_auto_pc_RREADY <= S_AXI_rready;
  s00_couplers_to_auto_pc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s00_couplers_to_auto_pc_WID(11 downto 0) <= S_AXI_wid(11 downto 0);
  s00_couplers_to_auto_pc_WLAST <= S_AXI_wlast;
  s00_couplers_to_auto_pc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s00_couplers_to_auto_pc_WVALID <= S_AXI_wvalid;
auto_pc: component img_proc_auto_pc_0
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(31 downto 0) => auto_pc_to_s00_couplers_ARADDR(31 downto 0),
      m_axi_arprot(2 downto 0) => auto_pc_to_s00_couplers_ARPROT(2 downto 0),
      m_axi_arready => auto_pc_to_s00_couplers_ARREADY,
      m_axi_arvalid => auto_pc_to_s00_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_pc_to_s00_couplers_AWADDR(31 downto 0),
      m_axi_awprot(2 downto 0) => auto_pc_to_s00_couplers_AWPROT(2 downto 0),
      m_axi_awready => auto_pc_to_s00_couplers_AWREADY,
      m_axi_awvalid => auto_pc_to_s00_couplers_AWVALID,
      m_axi_bready => auto_pc_to_s00_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_s00_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_s00_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_s00_couplers_RDATA(31 downto 0),
      m_axi_rready => auto_pc_to_s00_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_s00_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_s00_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_s00_couplers_WDATA(31 downto 0),
      m_axi_wready => auto_pc_to_s00_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_pc_to_s00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_pc_to_s00_couplers_WVALID,
      s_axi_araddr(31 downto 0) => s00_couplers_to_auto_pc_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => s00_couplers_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => s00_couplers_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arid(11 downto 0) => s00_couplers_to_auto_pc_ARID(11 downto 0),
      s_axi_arlen(3 downto 0) => s00_couplers_to_auto_pc_ARLEN(3 downto 0),
      s_axi_arlock(1 downto 0) => s00_couplers_to_auto_pc_ARLOCK(1 downto 0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => s00_couplers_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => s00_couplers_to_auto_pc_ARREADY,
      s_axi_arsize(2 downto 0) => s00_couplers_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => s00_couplers_to_auto_pc_ARVALID,
      s_axi_awaddr(31 downto 0) => s00_couplers_to_auto_pc_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => s00_couplers_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => s00_couplers_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awid(11 downto 0) => s00_couplers_to_auto_pc_AWID(11 downto 0),
      s_axi_awlen(3 downto 0) => s00_couplers_to_auto_pc_AWLEN(3 downto 0),
      s_axi_awlock(1 downto 0) => s00_couplers_to_auto_pc_AWLOCK(1 downto 0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => s00_couplers_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => s00_couplers_to_auto_pc_AWREADY,
      s_axi_awsize(2 downto 0) => s00_couplers_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => s00_couplers_to_auto_pc_AWVALID,
      s_axi_bid(11 downto 0) => s00_couplers_to_auto_pc_BID(11 downto 0),
      s_axi_bready => s00_couplers_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => s00_couplers_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => s00_couplers_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => s00_couplers_to_auto_pc_RDATA(31 downto 0),
      s_axi_rid(11 downto 0) => s00_couplers_to_auto_pc_RID(11 downto 0),
      s_axi_rlast => s00_couplers_to_auto_pc_RLAST,
      s_axi_rready => s00_couplers_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => s00_couplers_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => s00_couplers_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => s00_couplers_to_auto_pc_WDATA(31 downto 0),
      s_axi_wid(11 downto 0) => s00_couplers_to_auto_pc_WID(11 downto 0),
      s_axi_wlast => s00_couplers_to_auto_pc_WLAST,
      s_axi_wready => s00_couplers_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => s00_couplers_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => s00_couplers_to_auto_pc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_1WPKK0R is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC;
    M_AXI_arburst : out STD_LOGIC;
    M_AXI_arcache : out STD_LOGIC;
    M_AXI_arid : out STD_LOGIC;
    M_AXI_arlen : out STD_LOGIC;
    M_AXI_arlock : out STD_LOGIC;
    M_AXI_arprot : out STD_LOGIC;
    M_AXI_arqos : out STD_LOGIC;
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC;
    M_AXI_awburst : out STD_LOGIC;
    M_AXI_awcache : out STD_LOGIC;
    M_AXI_awid : out STD_LOGIC;
    M_AXI_awlen : out STD_LOGIC;
    M_AXI_awlock : out STD_LOGIC;
    M_AXI_awprot : out STD_LOGIC;
    M_AXI_awqos : out STD_LOGIC;
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bid : in STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC;
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC;
    M_AXI_rid : in STD_LOGIC;
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC;
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC;
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC;
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC;
    S_AXI_arburst : in STD_LOGIC;
    S_AXI_arcache : in STD_LOGIC;
    S_AXI_arid : in STD_LOGIC;
    S_AXI_arlen : in STD_LOGIC;
    S_AXI_arlock : in STD_LOGIC;
    S_AXI_arprot : in STD_LOGIC;
    S_AXI_arqos : in STD_LOGIC;
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC;
    S_AXI_awburst : in STD_LOGIC;
    S_AXI_awcache : in STD_LOGIC;
    S_AXI_awid : in STD_LOGIC;
    S_AXI_awlen : in STD_LOGIC;
    S_AXI_awlock : in STD_LOGIC;
    S_AXI_awprot : in STD_LOGIC;
    S_AXI_awqos : in STD_LOGIC;
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC;
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC;
    S_AXI_rid : out STD_LOGIC;
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC;
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC;
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC;
    S_AXI_wvalid : in STD_LOGIC
  );
end s00_couplers_imp_1WPKK0R;

architecture STRUCTURE of s00_couplers_imp_1WPKK0R is
  signal s00_couplers_to_s00_couplers_ARADDR : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_ARBURST : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_ARCACHE : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_ARID : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_ARLEN : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_ARLOCK : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_ARPROT : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_ARQOS : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_ARREADY : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_ARSIZE : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_ARVALID : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_AWADDR : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_AWBURST : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_AWCACHE : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_AWID : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_AWLEN : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_AWLOCK : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_AWPROT : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_AWQOS : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_AWREADY : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_AWSIZE : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_AWVALID : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_BID : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_BREADY : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_BRESP : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_BVALID : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_RDATA : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_RID : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_RLAST : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_RREADY : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_RRESP : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_RVALID : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_WDATA : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_WLAST : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_WREADY : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_WSTRB : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr <= s00_couplers_to_s00_couplers_ARADDR;
  M_AXI_arburst <= s00_couplers_to_s00_couplers_ARBURST;
  M_AXI_arcache <= s00_couplers_to_s00_couplers_ARCACHE;
  M_AXI_arid <= s00_couplers_to_s00_couplers_ARID;
  M_AXI_arlen <= s00_couplers_to_s00_couplers_ARLEN;
  M_AXI_arlock <= s00_couplers_to_s00_couplers_ARLOCK;
  M_AXI_arprot <= s00_couplers_to_s00_couplers_ARPROT;
  M_AXI_arqos <= s00_couplers_to_s00_couplers_ARQOS;
  M_AXI_arsize <= s00_couplers_to_s00_couplers_ARSIZE;
  M_AXI_arvalid <= s00_couplers_to_s00_couplers_ARVALID;
  M_AXI_awaddr <= s00_couplers_to_s00_couplers_AWADDR;
  M_AXI_awburst <= s00_couplers_to_s00_couplers_AWBURST;
  M_AXI_awcache <= s00_couplers_to_s00_couplers_AWCACHE;
  M_AXI_awid <= s00_couplers_to_s00_couplers_AWID;
  M_AXI_awlen <= s00_couplers_to_s00_couplers_AWLEN;
  M_AXI_awlock <= s00_couplers_to_s00_couplers_AWLOCK;
  M_AXI_awprot <= s00_couplers_to_s00_couplers_AWPROT;
  M_AXI_awqos <= s00_couplers_to_s00_couplers_AWQOS;
  M_AXI_awsize <= s00_couplers_to_s00_couplers_AWSIZE;
  M_AXI_awvalid <= s00_couplers_to_s00_couplers_AWVALID;
  M_AXI_bready <= s00_couplers_to_s00_couplers_BREADY;
  M_AXI_rready <= s00_couplers_to_s00_couplers_RREADY;
  M_AXI_wdata <= s00_couplers_to_s00_couplers_WDATA;
  M_AXI_wlast <= s00_couplers_to_s00_couplers_WLAST;
  M_AXI_wstrb <= s00_couplers_to_s00_couplers_WSTRB;
  M_AXI_wvalid <= s00_couplers_to_s00_couplers_WVALID;
  S_AXI_arready <= s00_couplers_to_s00_couplers_ARREADY;
  S_AXI_awready <= s00_couplers_to_s00_couplers_AWREADY;
  S_AXI_bid <= s00_couplers_to_s00_couplers_BID;
  S_AXI_bresp <= s00_couplers_to_s00_couplers_BRESP;
  S_AXI_bvalid <= s00_couplers_to_s00_couplers_BVALID;
  S_AXI_rdata <= s00_couplers_to_s00_couplers_RDATA;
  S_AXI_rid <= s00_couplers_to_s00_couplers_RID;
  S_AXI_rlast <= s00_couplers_to_s00_couplers_RLAST;
  S_AXI_rresp <= s00_couplers_to_s00_couplers_RRESP;
  S_AXI_rvalid <= s00_couplers_to_s00_couplers_RVALID;
  S_AXI_wready <= s00_couplers_to_s00_couplers_WREADY;
  s00_couplers_to_s00_couplers_ARADDR <= S_AXI_araddr;
  s00_couplers_to_s00_couplers_ARBURST <= S_AXI_arburst;
  s00_couplers_to_s00_couplers_ARCACHE <= S_AXI_arcache;
  s00_couplers_to_s00_couplers_ARID <= S_AXI_arid;
  s00_couplers_to_s00_couplers_ARLEN <= S_AXI_arlen;
  s00_couplers_to_s00_couplers_ARLOCK <= S_AXI_arlock;
  s00_couplers_to_s00_couplers_ARPROT <= S_AXI_arprot;
  s00_couplers_to_s00_couplers_ARQOS <= S_AXI_arqos;
  s00_couplers_to_s00_couplers_ARREADY <= M_AXI_arready;
  s00_couplers_to_s00_couplers_ARSIZE <= S_AXI_arsize;
  s00_couplers_to_s00_couplers_ARVALID <= S_AXI_arvalid;
  s00_couplers_to_s00_couplers_AWADDR <= S_AXI_awaddr;
  s00_couplers_to_s00_couplers_AWBURST <= S_AXI_awburst;
  s00_couplers_to_s00_couplers_AWCACHE <= S_AXI_awcache;
  s00_couplers_to_s00_couplers_AWID <= S_AXI_awid;
  s00_couplers_to_s00_couplers_AWLEN <= S_AXI_awlen;
  s00_couplers_to_s00_couplers_AWLOCK <= S_AXI_awlock;
  s00_couplers_to_s00_couplers_AWPROT <= S_AXI_awprot;
  s00_couplers_to_s00_couplers_AWQOS <= S_AXI_awqos;
  s00_couplers_to_s00_couplers_AWREADY <= M_AXI_awready;
  s00_couplers_to_s00_couplers_AWSIZE <= S_AXI_awsize;
  s00_couplers_to_s00_couplers_AWVALID <= S_AXI_awvalid;
  s00_couplers_to_s00_couplers_BID <= M_AXI_bid;
  s00_couplers_to_s00_couplers_BREADY <= S_AXI_bready;
  s00_couplers_to_s00_couplers_BRESP <= M_AXI_bresp;
  s00_couplers_to_s00_couplers_BVALID <= M_AXI_bvalid;
  s00_couplers_to_s00_couplers_RDATA <= M_AXI_rdata;
  s00_couplers_to_s00_couplers_RID <= M_AXI_rid;
  s00_couplers_to_s00_couplers_RLAST <= M_AXI_rlast;
  s00_couplers_to_s00_couplers_RREADY <= S_AXI_rready;
  s00_couplers_to_s00_couplers_RRESP <= M_AXI_rresp;
  s00_couplers_to_s00_couplers_RVALID <= M_AXI_rvalid;
  s00_couplers_to_s00_couplers_WDATA <= S_AXI_wdata;
  s00_couplers_to_s00_couplers_WLAST <= S_AXI_wlast;
  s00_couplers_to_s00_couplers_WREADY <= M_AXI_wready;
  s00_couplers_to_s00_couplers_WSTRB <= S_AXI_wstrb;
  s00_couplers_to_s00_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s01_couplers_imp_6X3VZU is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXI_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end s01_couplers_imp_6X3VZU;

architecture STRUCTURE of s01_couplers_imp_6X3VZU is
  signal s01_couplers_to_s01_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_s01_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_s01_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_s01_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s01_couplers_to_s01_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_s01_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_s01_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_s01_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_s01_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_s01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_s01_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_s01_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s01_couplers_to_s01_couplers_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_s01_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_s01_couplers_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s01_couplers_to_s01_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_awaddr(31 downto 0) <= s01_couplers_to_s01_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= s01_couplers_to_s01_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= s01_couplers_to_s01_couplers_AWCACHE(3 downto 0);
  M_AXI_awlen(7 downto 0) <= s01_couplers_to_s01_couplers_AWLEN(7 downto 0);
  M_AXI_awprot(2 downto 0) <= s01_couplers_to_s01_couplers_AWPROT(2 downto 0);
  M_AXI_awsize(2 downto 0) <= s01_couplers_to_s01_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid(0) <= s01_couplers_to_s01_couplers_AWVALID(0);
  M_AXI_bready(0) <= s01_couplers_to_s01_couplers_BREADY(0);
  M_AXI_wdata(63 downto 0) <= s01_couplers_to_s01_couplers_WDATA(63 downto 0);
  M_AXI_wlast(0) <= s01_couplers_to_s01_couplers_WLAST(0);
  M_AXI_wstrb(7 downto 0) <= s01_couplers_to_s01_couplers_WSTRB(7 downto 0);
  M_AXI_wvalid(0) <= s01_couplers_to_s01_couplers_WVALID(0);
  S_AXI_awready(0) <= s01_couplers_to_s01_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= s01_couplers_to_s01_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= s01_couplers_to_s01_couplers_BVALID(0);
  S_AXI_wready(0) <= s01_couplers_to_s01_couplers_WREADY(0);
  s01_couplers_to_s01_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s01_couplers_to_s01_couplers_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s01_couplers_to_s01_couplers_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s01_couplers_to_s01_couplers_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  s01_couplers_to_s01_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s01_couplers_to_s01_couplers_AWREADY(0) <= M_AXI_awready(0);
  s01_couplers_to_s01_couplers_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s01_couplers_to_s01_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  s01_couplers_to_s01_couplers_BREADY(0) <= S_AXI_bready(0);
  s01_couplers_to_s01_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  s01_couplers_to_s01_couplers_BVALID(0) <= M_AXI_bvalid(0);
  s01_couplers_to_s01_couplers_WDATA(63 downto 0) <= S_AXI_wdata(63 downto 0);
  s01_couplers_to_s01_couplers_WLAST(0) <= S_AXI_wlast(0);
  s01_couplers_to_s01_couplers_WREADY(0) <= M_AXI_wready(0);
  s01_couplers_to_s01_couplers_WSTRB(7 downto 0) <= S_AXI_wstrb(7 downto 0);
  s01_couplers_to_s01_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity img_proc_axi_interconnect_0_1 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_ACLK : in STD_LOGIC;
    M01_ARESETN : in STD_LOGIC;
    M01_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_arready : in STD_LOGIC;
    M01_AXI_arvalid : out STD_LOGIC;
    M01_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_awready : in STD_LOGIC;
    M01_AXI_awvalid : out STD_LOGIC;
    M01_AXI_bready : out STD_LOGIC;
    M01_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_bvalid : in STD_LOGIC;
    M01_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_rready : out STD_LOGIC;
    M01_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_rvalid : in STD_LOGIC;
    M01_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_wready : in STD_LOGIC;
    M01_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_wvalid : out STD_LOGIC;
    M02_ACLK : in STD_LOGIC;
    M02_ARESETN : in STD_LOGIC;
    M02_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_arready : in STD_LOGIC;
    M02_AXI_arvalid : out STD_LOGIC;
    M02_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_awready : in STD_LOGIC;
    M02_AXI_awvalid : out STD_LOGIC;
    M02_AXI_bready : out STD_LOGIC;
    M02_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_bvalid : in STD_LOGIC;
    M02_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_rready : out STD_LOGIC;
    M02_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_rvalid : in STD_LOGIC;
    M02_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_wready : in STD_LOGIC;
    M02_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_wvalid : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC
  );
end img_proc_axi_interconnect_0_1;

architecture STRUCTURE of img_proc_axi_interconnect_0_1 is
  component img_proc_xbar_2 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 95 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 95 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 95 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 95 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component img_proc_xbar_2;
  signal M00_ACLK_1 : STD_LOGIC;
  signal M00_ARESETN_1 : STD_LOGIC;
  signal M01_ACLK_1 : STD_LOGIC;
  signal M01_ARESETN_1 : STD_LOGIC;
  signal M02_ACLK_1 : STD_LOGIC;
  signal M02_ARESETN_1 : STD_LOGIC;
  signal S00_ACLK_1 : STD_LOGIC;
  signal S00_ARESETN_1 : STD_LOGIC;
  signal axi_interconnect_0_ACLK_net : STD_LOGIC;
  signal axi_interconnect_0_ARESETN_net : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_ARREADY : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_ARVALID : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_AWREADY : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_AWVALID : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_BREADY : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_BVALID : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_RLAST : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_RREADY : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_RVALID : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_WID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_WLAST : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_WREADY : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_WVALID : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_axi_interconnect_0_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_axi_interconnect_0_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_axi_interconnect_0_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_axi_interconnect_0_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_axi_interconnect_0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_axi_interconnect_0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_axi_interconnect_0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_axi_interconnect_0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_axi_interconnect_0_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_axi_interconnect_0_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_axi_interconnect_0_ARREADY : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_ARVALID : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_axi_interconnect_0_AWREADY : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_AWVALID : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_BREADY : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_axi_interconnect_0_BVALID : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_axi_interconnect_0_RREADY : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_axi_interconnect_0_RVALID : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_axi_interconnect_0_WREADY : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_axi_interconnect_0_WVALID : STD_LOGIC;
  signal m02_couplers_to_axi_interconnect_0_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_axi_interconnect_0_ARREADY : STD_LOGIC;
  signal m02_couplers_to_axi_interconnect_0_ARVALID : STD_LOGIC;
  signal m02_couplers_to_axi_interconnect_0_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_axi_interconnect_0_AWREADY : STD_LOGIC;
  signal m02_couplers_to_axi_interconnect_0_AWVALID : STD_LOGIC;
  signal m02_couplers_to_axi_interconnect_0_BREADY : STD_LOGIC;
  signal m02_couplers_to_axi_interconnect_0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_axi_interconnect_0_BVALID : STD_LOGIC;
  signal m02_couplers_to_axi_interconnect_0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_axi_interconnect_0_RREADY : STD_LOGIC;
  signal m02_couplers_to_axi_interconnect_0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_axi_interconnect_0_RVALID : STD_LOGIC;
  signal m02_couplers_to_axi_interconnect_0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_axi_interconnect_0_WREADY : STD_LOGIC;
  signal m02_couplers_to_axi_interconnect_0_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_axi_interconnect_0_WVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_WVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_ARVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_AWVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m01_couplers_RREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_WSTRB : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_WVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m02_couplers_ARADDR : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m02_couplers_ARVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_AWADDR : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m02_couplers_AWVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_BREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m02_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m02_couplers_RREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m02_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m02_couplers_WDATA : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m02_couplers_WSTRB : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_WVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal NLW_xbar_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_xbar_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_xbar_m_axi_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  M00_ACLK_1 <= M00_ACLK;
  M00_ARESETN_1 <= M00_ARESETN;
  M00_AXI_araddr(31 downto 0) <= m00_couplers_to_axi_interconnect_0_ARADDR(31 downto 0);
  M00_AXI_arvalid(0) <= m00_couplers_to_axi_interconnect_0_ARVALID(0);
  M00_AXI_awaddr(31 downto 0) <= m00_couplers_to_axi_interconnect_0_AWADDR(31 downto 0);
  M00_AXI_awvalid(0) <= m00_couplers_to_axi_interconnect_0_AWVALID(0);
  M00_AXI_bready(0) <= m00_couplers_to_axi_interconnect_0_BREADY(0);
  M00_AXI_rready(0) <= m00_couplers_to_axi_interconnect_0_RREADY(0);
  M00_AXI_wdata(31 downto 0) <= m00_couplers_to_axi_interconnect_0_WDATA(31 downto 0);
  M00_AXI_wvalid(0) <= m00_couplers_to_axi_interconnect_0_WVALID(0);
  M01_ACLK_1 <= M01_ACLK;
  M01_ARESETN_1 <= M01_ARESETN;
  M01_AXI_araddr(31 downto 0) <= m01_couplers_to_axi_interconnect_0_ARADDR(31 downto 0);
  M01_AXI_arvalid <= m01_couplers_to_axi_interconnect_0_ARVALID;
  M01_AXI_awaddr(31 downto 0) <= m01_couplers_to_axi_interconnect_0_AWADDR(31 downto 0);
  M01_AXI_awvalid <= m01_couplers_to_axi_interconnect_0_AWVALID;
  M01_AXI_bready <= m01_couplers_to_axi_interconnect_0_BREADY;
  M01_AXI_rready <= m01_couplers_to_axi_interconnect_0_RREADY;
  M01_AXI_wdata(31 downto 0) <= m01_couplers_to_axi_interconnect_0_WDATA(31 downto 0);
  M01_AXI_wstrb(3 downto 0) <= m01_couplers_to_axi_interconnect_0_WSTRB(3 downto 0);
  M01_AXI_wvalid <= m01_couplers_to_axi_interconnect_0_WVALID;
  M02_ACLK_1 <= M02_ACLK;
  M02_ARESETN_1 <= M02_ARESETN;
  M02_AXI_araddr(31 downto 0) <= m02_couplers_to_axi_interconnect_0_ARADDR(31 downto 0);
  M02_AXI_arvalid <= m02_couplers_to_axi_interconnect_0_ARVALID;
  M02_AXI_awaddr(31 downto 0) <= m02_couplers_to_axi_interconnect_0_AWADDR(31 downto 0);
  M02_AXI_awvalid <= m02_couplers_to_axi_interconnect_0_AWVALID;
  M02_AXI_bready <= m02_couplers_to_axi_interconnect_0_BREADY;
  M02_AXI_rready <= m02_couplers_to_axi_interconnect_0_RREADY;
  M02_AXI_wdata(31 downto 0) <= m02_couplers_to_axi_interconnect_0_WDATA(31 downto 0);
  M02_AXI_wstrb(3 downto 0) <= m02_couplers_to_axi_interconnect_0_WSTRB(3 downto 0);
  M02_AXI_wvalid <= m02_couplers_to_axi_interconnect_0_WVALID;
  S00_ACLK_1 <= S00_ACLK;
  S00_ARESETN_1 <= S00_ARESETN;
  S00_AXI_arready <= axi_interconnect_0_to_s00_couplers_ARREADY;
  S00_AXI_awready <= axi_interconnect_0_to_s00_couplers_AWREADY;
  S00_AXI_bid(11 downto 0) <= axi_interconnect_0_to_s00_couplers_BID(11 downto 0);
  S00_AXI_bresp(1 downto 0) <= axi_interconnect_0_to_s00_couplers_BRESP(1 downto 0);
  S00_AXI_bvalid <= axi_interconnect_0_to_s00_couplers_BVALID;
  S00_AXI_rdata(31 downto 0) <= axi_interconnect_0_to_s00_couplers_RDATA(31 downto 0);
  S00_AXI_rid(11 downto 0) <= axi_interconnect_0_to_s00_couplers_RID(11 downto 0);
  S00_AXI_rlast <= axi_interconnect_0_to_s00_couplers_RLAST;
  S00_AXI_rresp(1 downto 0) <= axi_interconnect_0_to_s00_couplers_RRESP(1 downto 0);
  S00_AXI_rvalid <= axi_interconnect_0_to_s00_couplers_RVALID;
  S00_AXI_wready <= axi_interconnect_0_to_s00_couplers_WREADY;
  axi_interconnect_0_ACLK_net <= ACLK;
  axi_interconnect_0_ARESETN_net <= ARESETN;
  axi_interconnect_0_to_s00_couplers_ARADDR(31 downto 0) <= S00_AXI_araddr(31 downto 0);
  axi_interconnect_0_to_s00_couplers_ARBURST(1 downto 0) <= S00_AXI_arburst(1 downto 0);
  axi_interconnect_0_to_s00_couplers_ARCACHE(3 downto 0) <= S00_AXI_arcache(3 downto 0);
  axi_interconnect_0_to_s00_couplers_ARID(11 downto 0) <= S00_AXI_arid(11 downto 0);
  axi_interconnect_0_to_s00_couplers_ARLEN(3 downto 0) <= S00_AXI_arlen(3 downto 0);
  axi_interconnect_0_to_s00_couplers_ARLOCK(1 downto 0) <= S00_AXI_arlock(1 downto 0);
  axi_interconnect_0_to_s00_couplers_ARPROT(2 downto 0) <= S00_AXI_arprot(2 downto 0);
  axi_interconnect_0_to_s00_couplers_ARQOS(3 downto 0) <= S00_AXI_arqos(3 downto 0);
  axi_interconnect_0_to_s00_couplers_ARSIZE(2 downto 0) <= S00_AXI_arsize(2 downto 0);
  axi_interconnect_0_to_s00_couplers_ARVALID <= S00_AXI_arvalid;
  axi_interconnect_0_to_s00_couplers_AWADDR(31 downto 0) <= S00_AXI_awaddr(31 downto 0);
  axi_interconnect_0_to_s00_couplers_AWBURST(1 downto 0) <= S00_AXI_awburst(1 downto 0);
  axi_interconnect_0_to_s00_couplers_AWCACHE(3 downto 0) <= S00_AXI_awcache(3 downto 0);
  axi_interconnect_0_to_s00_couplers_AWID(11 downto 0) <= S00_AXI_awid(11 downto 0);
  axi_interconnect_0_to_s00_couplers_AWLEN(3 downto 0) <= S00_AXI_awlen(3 downto 0);
  axi_interconnect_0_to_s00_couplers_AWLOCK(1 downto 0) <= S00_AXI_awlock(1 downto 0);
  axi_interconnect_0_to_s00_couplers_AWPROT(2 downto 0) <= S00_AXI_awprot(2 downto 0);
  axi_interconnect_0_to_s00_couplers_AWQOS(3 downto 0) <= S00_AXI_awqos(3 downto 0);
  axi_interconnect_0_to_s00_couplers_AWSIZE(2 downto 0) <= S00_AXI_awsize(2 downto 0);
  axi_interconnect_0_to_s00_couplers_AWVALID <= S00_AXI_awvalid;
  axi_interconnect_0_to_s00_couplers_BREADY <= S00_AXI_bready;
  axi_interconnect_0_to_s00_couplers_RREADY <= S00_AXI_rready;
  axi_interconnect_0_to_s00_couplers_WDATA(31 downto 0) <= S00_AXI_wdata(31 downto 0);
  axi_interconnect_0_to_s00_couplers_WID(11 downto 0) <= S00_AXI_wid(11 downto 0);
  axi_interconnect_0_to_s00_couplers_WLAST <= S00_AXI_wlast;
  axi_interconnect_0_to_s00_couplers_WSTRB(3 downto 0) <= S00_AXI_wstrb(3 downto 0);
  axi_interconnect_0_to_s00_couplers_WVALID <= S00_AXI_wvalid;
  m00_couplers_to_axi_interconnect_0_ARREADY(0) <= M00_AXI_arready(0);
  m00_couplers_to_axi_interconnect_0_AWREADY(0) <= M00_AXI_awready(0);
  m00_couplers_to_axi_interconnect_0_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  m00_couplers_to_axi_interconnect_0_BVALID(0) <= M00_AXI_bvalid(0);
  m00_couplers_to_axi_interconnect_0_RDATA(31 downto 0) <= M00_AXI_rdata(31 downto 0);
  m00_couplers_to_axi_interconnect_0_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  m00_couplers_to_axi_interconnect_0_RVALID(0) <= M00_AXI_rvalid(0);
  m00_couplers_to_axi_interconnect_0_WREADY(0) <= M00_AXI_wready(0);
  m01_couplers_to_axi_interconnect_0_ARREADY <= M01_AXI_arready;
  m01_couplers_to_axi_interconnect_0_AWREADY <= M01_AXI_awready;
  m01_couplers_to_axi_interconnect_0_BRESP(1 downto 0) <= M01_AXI_bresp(1 downto 0);
  m01_couplers_to_axi_interconnect_0_BVALID <= M01_AXI_bvalid;
  m01_couplers_to_axi_interconnect_0_RDATA(31 downto 0) <= M01_AXI_rdata(31 downto 0);
  m01_couplers_to_axi_interconnect_0_RRESP(1 downto 0) <= M01_AXI_rresp(1 downto 0);
  m01_couplers_to_axi_interconnect_0_RVALID <= M01_AXI_rvalid;
  m01_couplers_to_axi_interconnect_0_WREADY <= M01_AXI_wready;
  m02_couplers_to_axi_interconnect_0_ARREADY <= M02_AXI_arready;
  m02_couplers_to_axi_interconnect_0_AWREADY <= M02_AXI_awready;
  m02_couplers_to_axi_interconnect_0_BRESP(1 downto 0) <= M02_AXI_bresp(1 downto 0);
  m02_couplers_to_axi_interconnect_0_BVALID <= M02_AXI_bvalid;
  m02_couplers_to_axi_interconnect_0_RDATA(31 downto 0) <= M02_AXI_rdata(31 downto 0);
  m02_couplers_to_axi_interconnect_0_RRESP(1 downto 0) <= M02_AXI_rresp(1 downto 0);
  m02_couplers_to_axi_interconnect_0_RVALID <= M02_AXI_rvalid;
  m02_couplers_to_axi_interconnect_0_WREADY <= M02_AXI_wready;
m00_couplers: entity work.m00_couplers_imp_74RAVT
     port map (
      M_ACLK => M00_ACLK_1,
      M_ARESETN => M00_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m00_couplers_to_axi_interconnect_0_ARADDR(31 downto 0),
      M_AXI_arready(0) => m00_couplers_to_axi_interconnect_0_ARREADY(0),
      M_AXI_arvalid(0) => m00_couplers_to_axi_interconnect_0_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m00_couplers_to_axi_interconnect_0_AWADDR(31 downto 0),
      M_AXI_awready(0) => m00_couplers_to_axi_interconnect_0_AWREADY(0),
      M_AXI_awvalid(0) => m00_couplers_to_axi_interconnect_0_AWVALID(0),
      M_AXI_bready(0) => m00_couplers_to_axi_interconnect_0_BREADY(0),
      M_AXI_bresp(1 downto 0) => m00_couplers_to_axi_interconnect_0_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m00_couplers_to_axi_interconnect_0_BVALID(0),
      M_AXI_rdata(31 downto 0) => m00_couplers_to_axi_interconnect_0_RDATA(31 downto 0),
      M_AXI_rready(0) => m00_couplers_to_axi_interconnect_0_RREADY(0),
      M_AXI_rresp(1 downto 0) => m00_couplers_to_axi_interconnect_0_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m00_couplers_to_axi_interconnect_0_RVALID(0),
      M_AXI_wdata(31 downto 0) => m00_couplers_to_axi_interconnect_0_WDATA(31 downto 0),
      M_AXI_wready(0) => m00_couplers_to_axi_interconnect_0_WREADY(0),
      M_AXI_wvalid(0) => m00_couplers_to_axi_interconnect_0_WVALID(0),
      S_ACLK => axi_interconnect_0_ACLK_net,
      S_ARESETN => axi_interconnect_0_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      S_AXI_arready(0) => xbar_to_m00_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_m00_couplers_ARVALID(0),
      S_AXI_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      S_AXI_awready(0) => xbar_to_m00_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_m00_couplers_AWVALID(0),
      S_AXI_bready(0) => xbar_to_m00_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m00_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_m00_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m00_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      S_AXI_wready(0) => xbar_to_m00_couplers_WREADY(0),
      S_AXI_wvalid(0) => xbar_to_m00_couplers_WVALID(0)
    );
m01_couplers: entity work.m01_couplers_imp_1WI8DO8
     port map (
      M_ACLK => M01_ACLK_1,
      M_ARESETN => M01_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m01_couplers_to_axi_interconnect_0_ARADDR(31 downto 0),
      M_AXI_arready => m01_couplers_to_axi_interconnect_0_ARREADY,
      M_AXI_arvalid => m01_couplers_to_axi_interconnect_0_ARVALID,
      M_AXI_awaddr(31 downto 0) => m01_couplers_to_axi_interconnect_0_AWADDR(31 downto 0),
      M_AXI_awready => m01_couplers_to_axi_interconnect_0_AWREADY,
      M_AXI_awvalid => m01_couplers_to_axi_interconnect_0_AWVALID,
      M_AXI_bready => m01_couplers_to_axi_interconnect_0_BREADY,
      M_AXI_bresp(1 downto 0) => m01_couplers_to_axi_interconnect_0_BRESP(1 downto 0),
      M_AXI_bvalid => m01_couplers_to_axi_interconnect_0_BVALID,
      M_AXI_rdata(31 downto 0) => m01_couplers_to_axi_interconnect_0_RDATA(31 downto 0),
      M_AXI_rready => m01_couplers_to_axi_interconnect_0_RREADY,
      M_AXI_rresp(1 downto 0) => m01_couplers_to_axi_interconnect_0_RRESP(1 downto 0),
      M_AXI_rvalid => m01_couplers_to_axi_interconnect_0_RVALID,
      M_AXI_wdata(31 downto 0) => m01_couplers_to_axi_interconnect_0_WDATA(31 downto 0),
      M_AXI_wready => m01_couplers_to_axi_interconnect_0_WREADY,
      M_AXI_wstrb(3 downto 0) => m01_couplers_to_axi_interconnect_0_WSTRB(3 downto 0),
      M_AXI_wvalid => m01_couplers_to_axi_interconnect_0_WVALID,
      S_ACLK => axi_interconnect_0_ACLK_net,
      S_ARESETN => axi_interconnect_0_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m01_couplers_ARADDR(63 downto 32),
      S_AXI_arready => xbar_to_m01_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m01_couplers_ARVALID(1),
      S_AXI_awaddr(31 downto 0) => xbar_to_m01_couplers_AWADDR(63 downto 32),
      S_AXI_awready => xbar_to_m01_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m01_couplers_AWVALID(1),
      S_AXI_bready => xbar_to_m01_couplers_BREADY(1),
      S_AXI_bresp(1 downto 0) => xbar_to_m01_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m01_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m01_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m01_couplers_RREADY(1),
      S_AXI_rresp(1 downto 0) => xbar_to_m01_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m01_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m01_couplers_WDATA(63 downto 32),
      S_AXI_wready => xbar_to_m01_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m01_couplers_WSTRB(7 downto 4),
      S_AXI_wvalid => xbar_to_m01_couplers_WVALID(1)
    );
m02_couplers: entity work.m02_couplers_imp_7VFI3E
     port map (
      M_ACLK => M02_ACLK_1,
      M_ARESETN => M02_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m02_couplers_to_axi_interconnect_0_ARADDR(31 downto 0),
      M_AXI_arready => m02_couplers_to_axi_interconnect_0_ARREADY,
      M_AXI_arvalid => m02_couplers_to_axi_interconnect_0_ARVALID,
      M_AXI_awaddr(31 downto 0) => m02_couplers_to_axi_interconnect_0_AWADDR(31 downto 0),
      M_AXI_awready => m02_couplers_to_axi_interconnect_0_AWREADY,
      M_AXI_awvalid => m02_couplers_to_axi_interconnect_0_AWVALID,
      M_AXI_bready => m02_couplers_to_axi_interconnect_0_BREADY,
      M_AXI_bresp(1 downto 0) => m02_couplers_to_axi_interconnect_0_BRESP(1 downto 0),
      M_AXI_bvalid => m02_couplers_to_axi_interconnect_0_BVALID,
      M_AXI_rdata(31 downto 0) => m02_couplers_to_axi_interconnect_0_RDATA(31 downto 0),
      M_AXI_rready => m02_couplers_to_axi_interconnect_0_RREADY,
      M_AXI_rresp(1 downto 0) => m02_couplers_to_axi_interconnect_0_RRESP(1 downto 0),
      M_AXI_rvalid => m02_couplers_to_axi_interconnect_0_RVALID,
      M_AXI_wdata(31 downto 0) => m02_couplers_to_axi_interconnect_0_WDATA(31 downto 0),
      M_AXI_wready => m02_couplers_to_axi_interconnect_0_WREADY,
      M_AXI_wstrb(3 downto 0) => m02_couplers_to_axi_interconnect_0_WSTRB(3 downto 0),
      M_AXI_wvalid => m02_couplers_to_axi_interconnect_0_WVALID,
      S_ACLK => axi_interconnect_0_ACLK_net,
      S_ARESETN => axi_interconnect_0_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m02_couplers_ARADDR(95 downto 64),
      S_AXI_arready => xbar_to_m02_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m02_couplers_ARVALID(2),
      S_AXI_awaddr(31 downto 0) => xbar_to_m02_couplers_AWADDR(95 downto 64),
      S_AXI_awready => xbar_to_m02_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m02_couplers_AWVALID(2),
      S_AXI_bready => xbar_to_m02_couplers_BREADY(2),
      S_AXI_bresp(1 downto 0) => xbar_to_m02_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m02_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m02_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m02_couplers_RREADY(2),
      S_AXI_rresp(1 downto 0) => xbar_to_m02_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m02_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m02_couplers_WDATA(95 downto 64),
      S_AXI_wready => xbar_to_m02_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m02_couplers_WSTRB(11 downto 8),
      S_AXI_wvalid => xbar_to_m02_couplers_WVALID(2)
    );
s00_couplers: entity work.s00_couplers_imp_1QAVOGR
     port map (
      M_ACLK => axi_interconnect_0_ACLK_net,
      M_ARESETN => axi_interconnect_0_ARESETN_net,
      M_AXI_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arready => s00_couplers_to_xbar_ARREADY(0),
      M_AXI_arvalid => s00_couplers_to_xbar_ARVALID,
      M_AXI_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awready => s00_couplers_to_xbar_AWREADY(0),
      M_AXI_awvalid => s00_couplers_to_xbar_AWVALID,
      M_AXI_bready => s00_couplers_to_xbar_BREADY,
      M_AXI_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      M_AXI_bvalid => s00_couplers_to_xbar_BVALID(0),
      M_AXI_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      M_AXI_rready => s00_couplers_to_xbar_RREADY,
      M_AXI_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      M_AXI_rvalid => s00_couplers_to_xbar_RVALID(0),
      M_AXI_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      M_AXI_wready => s00_couplers_to_xbar_WREADY(0),
      M_AXI_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      M_AXI_wvalid => s00_couplers_to_xbar_WVALID,
      S_ACLK => S00_ACLK_1,
      S_ARESETN => S00_ARESETN_1,
      S_AXI_araddr(31 downto 0) => axi_interconnect_0_to_s00_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => axi_interconnect_0_to_s00_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => axi_interconnect_0_to_s00_couplers_ARCACHE(3 downto 0),
      S_AXI_arid(11 downto 0) => axi_interconnect_0_to_s00_couplers_ARID(11 downto 0),
      S_AXI_arlen(3 downto 0) => axi_interconnect_0_to_s00_couplers_ARLEN(3 downto 0),
      S_AXI_arlock(1 downto 0) => axi_interconnect_0_to_s00_couplers_ARLOCK(1 downto 0),
      S_AXI_arprot(2 downto 0) => axi_interconnect_0_to_s00_couplers_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => axi_interconnect_0_to_s00_couplers_ARQOS(3 downto 0),
      S_AXI_arready => axi_interconnect_0_to_s00_couplers_ARREADY,
      S_AXI_arsize(2 downto 0) => axi_interconnect_0_to_s00_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => axi_interconnect_0_to_s00_couplers_ARVALID,
      S_AXI_awaddr(31 downto 0) => axi_interconnect_0_to_s00_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => axi_interconnect_0_to_s00_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => axi_interconnect_0_to_s00_couplers_AWCACHE(3 downto 0),
      S_AXI_awid(11 downto 0) => axi_interconnect_0_to_s00_couplers_AWID(11 downto 0),
      S_AXI_awlen(3 downto 0) => axi_interconnect_0_to_s00_couplers_AWLEN(3 downto 0),
      S_AXI_awlock(1 downto 0) => axi_interconnect_0_to_s00_couplers_AWLOCK(1 downto 0),
      S_AXI_awprot(2 downto 0) => axi_interconnect_0_to_s00_couplers_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => axi_interconnect_0_to_s00_couplers_AWQOS(3 downto 0),
      S_AXI_awready => axi_interconnect_0_to_s00_couplers_AWREADY,
      S_AXI_awsize(2 downto 0) => axi_interconnect_0_to_s00_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid => axi_interconnect_0_to_s00_couplers_AWVALID,
      S_AXI_bid(11 downto 0) => axi_interconnect_0_to_s00_couplers_BID(11 downto 0),
      S_AXI_bready => axi_interconnect_0_to_s00_couplers_BREADY,
      S_AXI_bresp(1 downto 0) => axi_interconnect_0_to_s00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => axi_interconnect_0_to_s00_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => axi_interconnect_0_to_s00_couplers_RDATA(31 downto 0),
      S_AXI_rid(11 downto 0) => axi_interconnect_0_to_s00_couplers_RID(11 downto 0),
      S_AXI_rlast => axi_interconnect_0_to_s00_couplers_RLAST,
      S_AXI_rready => axi_interconnect_0_to_s00_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => axi_interconnect_0_to_s00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => axi_interconnect_0_to_s00_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => axi_interconnect_0_to_s00_couplers_WDATA(31 downto 0),
      S_AXI_wid(11 downto 0) => axi_interconnect_0_to_s00_couplers_WID(11 downto 0),
      S_AXI_wlast => axi_interconnect_0_to_s00_couplers_WLAST,
      S_AXI_wready => axi_interconnect_0_to_s00_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => axi_interconnect_0_to_s00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => axi_interconnect_0_to_s00_couplers_WVALID
    );
xbar: component img_proc_xbar_2
     port map (
      aclk => axi_interconnect_0_ACLK_net,
      aresetn => axi_interconnect_0_ARESETN_net,
      m_axi_araddr(95 downto 64) => xbar_to_m02_couplers_ARADDR(95 downto 64),
      m_axi_araddr(63 downto 32) => xbar_to_m01_couplers_ARADDR(63 downto 32),
      m_axi_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      m_axi_arprot(8 downto 0) => NLW_xbar_m_axi_arprot_UNCONNECTED(8 downto 0),
      m_axi_arready(2) => xbar_to_m02_couplers_ARREADY,
      m_axi_arready(1) => xbar_to_m01_couplers_ARREADY,
      m_axi_arready(0) => xbar_to_m00_couplers_ARREADY(0),
      m_axi_arvalid(2) => xbar_to_m02_couplers_ARVALID(2),
      m_axi_arvalid(1) => xbar_to_m01_couplers_ARVALID(1),
      m_axi_arvalid(0) => xbar_to_m00_couplers_ARVALID(0),
      m_axi_awaddr(95 downto 64) => xbar_to_m02_couplers_AWADDR(95 downto 64),
      m_axi_awaddr(63 downto 32) => xbar_to_m01_couplers_AWADDR(63 downto 32),
      m_axi_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      m_axi_awprot(8 downto 0) => NLW_xbar_m_axi_awprot_UNCONNECTED(8 downto 0),
      m_axi_awready(2) => xbar_to_m02_couplers_AWREADY,
      m_axi_awready(1) => xbar_to_m01_couplers_AWREADY,
      m_axi_awready(0) => xbar_to_m00_couplers_AWREADY(0),
      m_axi_awvalid(2) => xbar_to_m02_couplers_AWVALID(2),
      m_axi_awvalid(1) => xbar_to_m01_couplers_AWVALID(1),
      m_axi_awvalid(0) => xbar_to_m00_couplers_AWVALID(0),
      m_axi_bready(2) => xbar_to_m02_couplers_BREADY(2),
      m_axi_bready(1) => xbar_to_m01_couplers_BREADY(1),
      m_axi_bready(0) => xbar_to_m00_couplers_BREADY(0),
      m_axi_bresp(5 downto 4) => xbar_to_m02_couplers_BRESP(1 downto 0),
      m_axi_bresp(3 downto 2) => xbar_to_m01_couplers_BRESP(1 downto 0),
      m_axi_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid(2) => xbar_to_m02_couplers_BVALID,
      m_axi_bvalid(1) => xbar_to_m01_couplers_BVALID,
      m_axi_bvalid(0) => xbar_to_m00_couplers_BVALID(0),
      m_axi_rdata(95 downto 64) => xbar_to_m02_couplers_RDATA(31 downto 0),
      m_axi_rdata(63 downto 32) => xbar_to_m01_couplers_RDATA(31 downto 0),
      m_axi_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      m_axi_rready(2) => xbar_to_m02_couplers_RREADY(2),
      m_axi_rready(1) => xbar_to_m01_couplers_RREADY(1),
      m_axi_rready(0) => xbar_to_m00_couplers_RREADY(0),
      m_axi_rresp(5 downto 4) => xbar_to_m02_couplers_RRESP(1 downto 0),
      m_axi_rresp(3 downto 2) => xbar_to_m01_couplers_RRESP(1 downto 0),
      m_axi_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid(2) => xbar_to_m02_couplers_RVALID,
      m_axi_rvalid(1) => xbar_to_m01_couplers_RVALID,
      m_axi_rvalid(0) => xbar_to_m00_couplers_RVALID(0),
      m_axi_wdata(95 downto 64) => xbar_to_m02_couplers_WDATA(95 downto 64),
      m_axi_wdata(63 downto 32) => xbar_to_m01_couplers_WDATA(63 downto 32),
      m_axi_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      m_axi_wready(2) => xbar_to_m02_couplers_WREADY,
      m_axi_wready(1) => xbar_to_m01_couplers_WREADY,
      m_axi_wready(0) => xbar_to_m00_couplers_WREADY(0),
      m_axi_wstrb(11 downto 8) => xbar_to_m02_couplers_WSTRB(11 downto 8),
      m_axi_wstrb(7 downto 4) => xbar_to_m01_couplers_WSTRB(7 downto 4),
      m_axi_wstrb(3 downto 0) => NLW_xbar_m_axi_wstrb_UNCONNECTED(3 downto 0),
      m_axi_wvalid(2) => xbar_to_m02_couplers_WVALID(2),
      m_axi_wvalid(1) => xbar_to_m01_couplers_WVALID(1),
      m_axi_wvalid(0) => xbar_to_m00_couplers_WVALID(0),
      s_axi_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arready(0) => s00_couplers_to_xbar_ARREADY(0),
      s_axi_arvalid(0) => s00_couplers_to_xbar_ARVALID,
      s_axi_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awready(0) => s00_couplers_to_xbar_AWREADY(0),
      s_axi_awvalid(0) => s00_couplers_to_xbar_AWVALID,
      s_axi_bready(0) => s00_couplers_to_xbar_BREADY,
      s_axi_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      s_axi_bvalid(0) => s00_couplers_to_xbar_BVALID(0),
      s_axi_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      s_axi_rready(0) => s00_couplers_to_xbar_RREADY,
      s_axi_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      s_axi_rvalid(0) => s00_couplers_to_xbar_RVALID(0),
      s_axi_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      s_axi_wready(0) => s00_couplers_to_xbar_WREADY(0),
      s_axi_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      s_axi_wvalid(0) => s00_couplers_to_xbar_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity img_proc_axi_interconnect_1_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_bid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXI_rid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    M00_AXI_rlast : in STD_LOGIC;
    M00_AXI_rready : out STD_LOGIC;
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXI_wid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_wlast : out STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC;
    S00_AXI_arburst : in STD_LOGIC;
    S00_AXI_arcache : in STD_LOGIC;
    S00_AXI_arid : in STD_LOGIC;
    S00_AXI_arlen : in STD_LOGIC;
    S00_AXI_arlock : in STD_LOGIC;
    S00_AXI_arprot : in STD_LOGIC;
    S00_AXI_arqos : in STD_LOGIC;
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_arsize : in STD_LOGIC;
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC;
    S00_AXI_awburst : in STD_LOGIC;
    S00_AXI_awcache : in STD_LOGIC;
    S00_AXI_awid : in STD_LOGIC;
    S00_AXI_awlen : in STD_LOGIC;
    S00_AXI_awlock : in STD_LOGIC;
    S00_AXI_awprot : in STD_LOGIC;
    S00_AXI_awqos : in STD_LOGIC;
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_awsize : in STD_LOGIC;
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_bid : out STD_LOGIC;
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC;
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC;
    S00_AXI_rid : out STD_LOGIC;
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    S00_AXI_rresp : out STD_LOGIC;
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC;
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_wstrb : in STD_LOGIC;
    S00_AXI_wvalid : in STD_LOGIC;
    S01_ACLK : in STD_LOGIC;
    S01_ARESETN : in STD_LOGIC;
    S01_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S01_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S01_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S01_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end img_proc_axi_interconnect_1_0;

architecture STRUCTURE of img_proc_axi_interconnect_1_0 is
  component img_proc_xbar_3 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_wlast : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rlast : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component img_proc_xbar_3;
  signal M00_ACLK_1 : STD_LOGIC;
  signal M00_ARESETN_1 : STD_LOGIC;
  signal S00_ACLK_1 : STD_LOGIC;
  signal S00_ARESETN_1 : STD_LOGIC;
  signal S01_ACLK_1 : STD_LOGIC;
  signal S01_ARESETN_1 : STD_LOGIC;
  signal axi_interconnect_1_ACLK_net : STD_LOGIC;
  signal axi_interconnect_1_ARESETN_net : STD_LOGIC;
  signal axi_interconnect_1_to_s00_couplers_ARADDR : STD_LOGIC;
  signal axi_interconnect_1_to_s00_couplers_ARBURST : STD_LOGIC;
  signal axi_interconnect_1_to_s00_couplers_ARCACHE : STD_LOGIC;
  signal axi_interconnect_1_to_s00_couplers_ARID : STD_LOGIC;
  signal axi_interconnect_1_to_s00_couplers_ARLEN : STD_LOGIC;
  signal axi_interconnect_1_to_s00_couplers_ARLOCK : STD_LOGIC;
  signal axi_interconnect_1_to_s00_couplers_ARPROT : STD_LOGIC;
  signal axi_interconnect_1_to_s00_couplers_ARQOS : STD_LOGIC;
  signal axi_interconnect_1_to_s00_couplers_ARREADY : STD_LOGIC;
  signal axi_interconnect_1_to_s00_couplers_ARSIZE : STD_LOGIC;
  signal axi_interconnect_1_to_s00_couplers_ARVALID : STD_LOGIC;
  signal axi_interconnect_1_to_s00_couplers_AWADDR : STD_LOGIC;
  signal axi_interconnect_1_to_s00_couplers_AWBURST : STD_LOGIC;
  signal axi_interconnect_1_to_s00_couplers_AWCACHE : STD_LOGIC;
  signal axi_interconnect_1_to_s00_couplers_AWID : STD_LOGIC;
  signal axi_interconnect_1_to_s00_couplers_AWLEN : STD_LOGIC;
  signal axi_interconnect_1_to_s00_couplers_AWLOCK : STD_LOGIC;
  signal axi_interconnect_1_to_s00_couplers_AWPROT : STD_LOGIC;
  signal axi_interconnect_1_to_s00_couplers_AWQOS : STD_LOGIC;
  signal axi_interconnect_1_to_s00_couplers_AWREADY : STD_LOGIC;
  signal axi_interconnect_1_to_s00_couplers_AWSIZE : STD_LOGIC;
  signal axi_interconnect_1_to_s00_couplers_AWVALID : STD_LOGIC;
  signal axi_interconnect_1_to_s00_couplers_BID : STD_LOGIC;
  signal axi_interconnect_1_to_s00_couplers_BREADY : STD_LOGIC;
  signal axi_interconnect_1_to_s00_couplers_BRESP : STD_LOGIC;
  signal axi_interconnect_1_to_s00_couplers_BVALID : STD_LOGIC;
  signal axi_interconnect_1_to_s00_couplers_RDATA : STD_LOGIC;
  signal axi_interconnect_1_to_s00_couplers_RID : STD_LOGIC;
  signal axi_interconnect_1_to_s00_couplers_RLAST : STD_LOGIC;
  signal axi_interconnect_1_to_s00_couplers_RREADY : STD_LOGIC;
  signal axi_interconnect_1_to_s00_couplers_RRESP : STD_LOGIC;
  signal axi_interconnect_1_to_s00_couplers_RVALID : STD_LOGIC;
  signal axi_interconnect_1_to_s00_couplers_WDATA : STD_LOGIC;
  signal axi_interconnect_1_to_s00_couplers_WLAST : STD_LOGIC;
  signal axi_interconnect_1_to_s00_couplers_WREADY : STD_LOGIC;
  signal axi_interconnect_1_to_s00_couplers_WSTRB : STD_LOGIC;
  signal axi_interconnect_1_to_s00_couplers_WVALID : STD_LOGIC;
  signal axi_interconnect_1_to_s01_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_1_to_s01_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_1_to_s01_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_1_to_s01_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_interconnect_1_to_s01_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_1_to_s01_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_to_s01_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_1_to_s01_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_to_s01_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_to_s01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_1_to_s01_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_to_s01_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axi_interconnect_1_to_s01_couplers_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_to_s01_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_to_s01_couplers_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_interconnect_1_to_s01_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_axi_interconnect_1_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_axi_interconnect_1_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_interconnect_1_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_axi_interconnect_1_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_axi_interconnect_1_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_axi_interconnect_1_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_interconnect_1_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_axi_interconnect_1_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_axi_interconnect_1_ARREADY : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_1_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_axi_interconnect_1_ARVALID : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_axi_interconnect_1_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_interconnect_1_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_axi_interconnect_1_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_axi_interconnect_1_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_axi_interconnect_1_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_interconnect_1_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_axi_interconnect_1_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_axi_interconnect_1_AWREADY : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_1_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_axi_interconnect_1_AWVALID : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_1_BID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal m00_couplers_to_axi_interconnect_1_BREADY : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_interconnect_1_BVALID : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_1_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal m00_couplers_to_axi_interconnect_1_RID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal m00_couplers_to_axi_interconnect_1_RLAST : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_1_RREADY : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_interconnect_1_RVALID : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_1_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal m00_couplers_to_axi_interconnect_1_WID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_axi_interconnect_1_WLAST : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_1_WREADY : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_1_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_axi_interconnect_1_WVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_ARADDR : STD_LOGIC;
  signal s00_couplers_to_xbar_ARBURST : STD_LOGIC;
  signal s00_couplers_to_xbar_ARCACHE : STD_LOGIC;
  signal s00_couplers_to_xbar_ARID : STD_LOGIC;
  signal s00_couplers_to_xbar_ARLEN : STD_LOGIC;
  signal s00_couplers_to_xbar_ARLOCK : STD_LOGIC;
  signal s00_couplers_to_xbar_ARPROT : STD_LOGIC;
  signal s00_couplers_to_xbar_ARQOS : STD_LOGIC;
  signal s00_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARSIZE : STD_LOGIC;
  signal s00_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_AWADDR : STD_LOGIC;
  signal s00_couplers_to_xbar_AWBURST : STD_LOGIC;
  signal s00_couplers_to_xbar_AWCACHE : STD_LOGIC;
  signal s00_couplers_to_xbar_AWID : STD_LOGIC;
  signal s00_couplers_to_xbar_AWLEN : STD_LOGIC;
  signal s00_couplers_to_xbar_AWLOCK : STD_LOGIC;
  signal s00_couplers_to_xbar_AWPROT : STD_LOGIC;
  signal s00_couplers_to_xbar_AWQOS : STD_LOGIC;
  signal s00_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWSIZE : STD_LOGIC;
  signal s00_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_BID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s00_couplers_to_xbar_RID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WDATA : STD_LOGIC;
  signal s00_couplers_to_xbar_WLAST : STD_LOGIC;
  signal s00_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WSTRB : STD_LOGIC;
  signal s00_couplers_to_xbar_WVALID : STD_LOGIC;
  signal s01_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_xbar_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_xbar_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_xbar_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s01_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_xbar_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_xbar_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal s01_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s01_couplers_to_xbar_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s01_couplers_to_xbar_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xbar_to_m00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xbar_to_m00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal xbar_to_m00_couplers_RID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal xbar_to_m00_couplers_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xbar_to_m00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_xbar_s_axi_arready_UNCONNECTED : STD_LOGIC_VECTOR ( 1 to 1 );
  signal NLW_xbar_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 1 to 1 );
  signal NLW_xbar_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 127 downto 64 );
  signal NLW_xbar_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 1 to 1 );
  signal NLW_xbar_s_axi_rlast_UNCONNECTED : STD_LOGIC_VECTOR ( 1 to 1 );
  signal NLW_xbar_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_xbar_s_axi_rvalid_UNCONNECTED : STD_LOGIC_VECTOR ( 1 to 1 );
begin
  M00_ACLK_1 <= M00_ACLK;
  M00_ARESETN_1 <= M00_ARESETN;
  M00_AXI_araddr(31 downto 0) <= m00_couplers_to_axi_interconnect_1_ARADDR(31 downto 0);
  M00_AXI_arburst(1 downto 0) <= m00_couplers_to_axi_interconnect_1_ARBURST(1 downto 0);
  M00_AXI_arcache(3 downto 0) <= m00_couplers_to_axi_interconnect_1_ARCACHE(3 downto 0);
  M00_AXI_arid(0) <= m00_couplers_to_axi_interconnect_1_ARID(0);
  M00_AXI_arlen(3 downto 0) <= m00_couplers_to_axi_interconnect_1_ARLEN(3 downto 0);
  M00_AXI_arlock(1 downto 0) <= m00_couplers_to_axi_interconnect_1_ARLOCK(1 downto 0);
  M00_AXI_arprot(2 downto 0) <= m00_couplers_to_axi_interconnect_1_ARPROT(2 downto 0);
  M00_AXI_arqos(3 downto 0) <= m00_couplers_to_axi_interconnect_1_ARQOS(3 downto 0);
  M00_AXI_arsize(2 downto 0) <= m00_couplers_to_axi_interconnect_1_ARSIZE(2 downto 0);
  M00_AXI_arvalid <= m00_couplers_to_axi_interconnect_1_ARVALID;
  M00_AXI_awaddr(31 downto 0) <= m00_couplers_to_axi_interconnect_1_AWADDR(31 downto 0);
  M00_AXI_awburst(1 downto 0) <= m00_couplers_to_axi_interconnect_1_AWBURST(1 downto 0);
  M00_AXI_awcache(3 downto 0) <= m00_couplers_to_axi_interconnect_1_AWCACHE(3 downto 0);
  M00_AXI_awid(0) <= m00_couplers_to_axi_interconnect_1_AWID(0);
  M00_AXI_awlen(3 downto 0) <= m00_couplers_to_axi_interconnect_1_AWLEN(3 downto 0);
  M00_AXI_awlock(1 downto 0) <= m00_couplers_to_axi_interconnect_1_AWLOCK(1 downto 0);
  M00_AXI_awprot(2 downto 0) <= m00_couplers_to_axi_interconnect_1_AWPROT(2 downto 0);
  M00_AXI_awqos(3 downto 0) <= m00_couplers_to_axi_interconnect_1_AWQOS(3 downto 0);
  M00_AXI_awsize(2 downto 0) <= m00_couplers_to_axi_interconnect_1_AWSIZE(2 downto 0);
  M00_AXI_awvalid <= m00_couplers_to_axi_interconnect_1_AWVALID;
  M00_AXI_bready <= m00_couplers_to_axi_interconnect_1_BREADY;
  M00_AXI_rready <= m00_couplers_to_axi_interconnect_1_RREADY;
  M00_AXI_wdata(63 downto 0) <= m00_couplers_to_axi_interconnect_1_WDATA(63 downto 0);
  M00_AXI_wid(0) <= m00_couplers_to_axi_interconnect_1_WID(0);
  M00_AXI_wlast <= m00_couplers_to_axi_interconnect_1_WLAST;
  M00_AXI_wstrb(7 downto 0) <= m00_couplers_to_axi_interconnect_1_WSTRB(7 downto 0);
  M00_AXI_wvalid <= m00_couplers_to_axi_interconnect_1_WVALID;
  S00_ACLK_1 <= S00_ACLK;
  S00_ARESETN_1 <= S00_ARESETN;
  S00_AXI_arready <= axi_interconnect_1_to_s00_couplers_ARREADY;
  S00_AXI_awready <= axi_interconnect_1_to_s00_couplers_AWREADY;
  S00_AXI_bid <= axi_interconnect_1_to_s00_couplers_BID;
  S00_AXI_bresp <= axi_interconnect_1_to_s00_couplers_BRESP;
  S00_AXI_bvalid <= axi_interconnect_1_to_s00_couplers_BVALID;
  S00_AXI_rdata <= axi_interconnect_1_to_s00_couplers_RDATA;
  S00_AXI_rid <= axi_interconnect_1_to_s00_couplers_RID;
  S00_AXI_rlast <= axi_interconnect_1_to_s00_couplers_RLAST;
  S00_AXI_rresp <= axi_interconnect_1_to_s00_couplers_RRESP;
  S00_AXI_rvalid <= axi_interconnect_1_to_s00_couplers_RVALID;
  S00_AXI_wready <= axi_interconnect_1_to_s00_couplers_WREADY;
  S01_ACLK_1 <= S01_ACLK;
  S01_ARESETN_1 <= S01_ARESETN;
  S01_AXI_awready(0) <= axi_interconnect_1_to_s01_couplers_AWREADY(0);
  S01_AXI_bresp(1 downto 0) <= axi_interconnect_1_to_s01_couplers_BRESP(1 downto 0);
  S01_AXI_bvalid(0) <= axi_interconnect_1_to_s01_couplers_BVALID(0);
  S01_AXI_wready(0) <= axi_interconnect_1_to_s01_couplers_WREADY(0);
  axi_interconnect_1_ACLK_net <= ACLK;
  axi_interconnect_1_ARESETN_net <= ARESETN;
  axi_interconnect_1_to_s00_couplers_ARADDR <= S00_AXI_araddr;
  axi_interconnect_1_to_s00_couplers_ARBURST <= S00_AXI_arburst;
  axi_interconnect_1_to_s00_couplers_ARCACHE <= S00_AXI_arcache;
  axi_interconnect_1_to_s00_couplers_ARID <= S00_AXI_arid;
  axi_interconnect_1_to_s00_couplers_ARLEN <= S00_AXI_arlen;
  axi_interconnect_1_to_s00_couplers_ARLOCK <= S00_AXI_arlock;
  axi_interconnect_1_to_s00_couplers_ARPROT <= S00_AXI_arprot;
  axi_interconnect_1_to_s00_couplers_ARQOS <= S00_AXI_arqos;
  axi_interconnect_1_to_s00_couplers_ARSIZE <= S00_AXI_arsize;
  axi_interconnect_1_to_s00_couplers_ARVALID <= S00_AXI_arvalid;
  axi_interconnect_1_to_s00_couplers_AWADDR <= S00_AXI_awaddr;
  axi_interconnect_1_to_s00_couplers_AWBURST <= S00_AXI_awburst;
  axi_interconnect_1_to_s00_couplers_AWCACHE <= S00_AXI_awcache;
  axi_interconnect_1_to_s00_couplers_AWID <= S00_AXI_awid;
  axi_interconnect_1_to_s00_couplers_AWLEN <= S00_AXI_awlen;
  axi_interconnect_1_to_s00_couplers_AWLOCK <= S00_AXI_awlock;
  axi_interconnect_1_to_s00_couplers_AWPROT <= S00_AXI_awprot;
  axi_interconnect_1_to_s00_couplers_AWQOS <= S00_AXI_awqos;
  axi_interconnect_1_to_s00_couplers_AWSIZE <= S00_AXI_awsize;
  axi_interconnect_1_to_s00_couplers_AWVALID <= S00_AXI_awvalid;
  axi_interconnect_1_to_s00_couplers_BREADY <= S00_AXI_bready;
  axi_interconnect_1_to_s00_couplers_RREADY <= S00_AXI_rready;
  axi_interconnect_1_to_s00_couplers_WDATA <= S00_AXI_wdata;
  axi_interconnect_1_to_s00_couplers_WLAST <= S00_AXI_wlast;
  axi_interconnect_1_to_s00_couplers_WSTRB <= S00_AXI_wstrb;
  axi_interconnect_1_to_s00_couplers_WVALID <= S00_AXI_wvalid;
  axi_interconnect_1_to_s01_couplers_AWADDR(31 downto 0) <= S01_AXI_awaddr(31 downto 0);
  axi_interconnect_1_to_s01_couplers_AWBURST(1 downto 0) <= S01_AXI_awburst(1 downto 0);
  axi_interconnect_1_to_s01_couplers_AWCACHE(3 downto 0) <= S01_AXI_awcache(3 downto 0);
  axi_interconnect_1_to_s01_couplers_AWLEN(7 downto 0) <= S01_AXI_awlen(7 downto 0);
  axi_interconnect_1_to_s01_couplers_AWPROT(2 downto 0) <= S01_AXI_awprot(2 downto 0);
  axi_interconnect_1_to_s01_couplers_AWSIZE(2 downto 0) <= S01_AXI_awsize(2 downto 0);
  axi_interconnect_1_to_s01_couplers_AWVALID(0) <= S01_AXI_awvalid(0);
  axi_interconnect_1_to_s01_couplers_BREADY(0) <= S01_AXI_bready(0);
  axi_interconnect_1_to_s01_couplers_WDATA(63 downto 0) <= S01_AXI_wdata(63 downto 0);
  axi_interconnect_1_to_s01_couplers_WLAST(0) <= S01_AXI_wlast(0);
  axi_interconnect_1_to_s01_couplers_WSTRB(7 downto 0) <= S01_AXI_wstrb(7 downto 0);
  axi_interconnect_1_to_s01_couplers_WVALID(0) <= S01_AXI_wvalid(0);
  m00_couplers_to_axi_interconnect_1_ARREADY <= M00_AXI_arready;
  m00_couplers_to_axi_interconnect_1_AWREADY <= M00_AXI_awready;
  m00_couplers_to_axi_interconnect_1_BID(5 downto 0) <= M00_AXI_bid(5 downto 0);
  m00_couplers_to_axi_interconnect_1_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  m00_couplers_to_axi_interconnect_1_BVALID <= M00_AXI_bvalid;
  m00_couplers_to_axi_interconnect_1_RDATA(63 downto 0) <= M00_AXI_rdata(63 downto 0);
  m00_couplers_to_axi_interconnect_1_RID(5 downto 0) <= M00_AXI_rid(5 downto 0);
  m00_couplers_to_axi_interconnect_1_RLAST <= M00_AXI_rlast;
  m00_couplers_to_axi_interconnect_1_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  m00_couplers_to_axi_interconnect_1_RVALID <= M00_AXI_rvalid;
  m00_couplers_to_axi_interconnect_1_WREADY <= M00_AXI_wready;
m00_couplers: entity work.m00_couplers_imp_41XI55
     port map (
      M_ACLK => M00_ACLK_1,
      M_ARESETN => M00_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m00_couplers_to_axi_interconnect_1_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => m00_couplers_to_axi_interconnect_1_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => m00_couplers_to_axi_interconnect_1_ARCACHE(3 downto 0),
      M_AXI_arid(0) => m00_couplers_to_axi_interconnect_1_ARID(0),
      M_AXI_arlen(3 downto 0) => m00_couplers_to_axi_interconnect_1_ARLEN(3 downto 0),
      M_AXI_arlock(1 downto 0) => m00_couplers_to_axi_interconnect_1_ARLOCK(1 downto 0),
      M_AXI_arprot(2 downto 0) => m00_couplers_to_axi_interconnect_1_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => m00_couplers_to_axi_interconnect_1_ARQOS(3 downto 0),
      M_AXI_arready => m00_couplers_to_axi_interconnect_1_ARREADY,
      M_AXI_arsize(2 downto 0) => m00_couplers_to_axi_interconnect_1_ARSIZE(2 downto 0),
      M_AXI_arvalid => m00_couplers_to_axi_interconnect_1_ARVALID,
      M_AXI_awaddr(31 downto 0) => m00_couplers_to_axi_interconnect_1_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => m00_couplers_to_axi_interconnect_1_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => m00_couplers_to_axi_interconnect_1_AWCACHE(3 downto 0),
      M_AXI_awid(0) => m00_couplers_to_axi_interconnect_1_AWID(0),
      M_AXI_awlen(3 downto 0) => m00_couplers_to_axi_interconnect_1_AWLEN(3 downto 0),
      M_AXI_awlock(1 downto 0) => m00_couplers_to_axi_interconnect_1_AWLOCK(1 downto 0),
      M_AXI_awprot(2 downto 0) => m00_couplers_to_axi_interconnect_1_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => m00_couplers_to_axi_interconnect_1_AWQOS(3 downto 0),
      M_AXI_awready => m00_couplers_to_axi_interconnect_1_AWREADY,
      M_AXI_awsize(2 downto 0) => m00_couplers_to_axi_interconnect_1_AWSIZE(2 downto 0),
      M_AXI_awvalid => m00_couplers_to_axi_interconnect_1_AWVALID,
      M_AXI_bid(5 downto 0) => m00_couplers_to_axi_interconnect_1_BID(5 downto 0),
      M_AXI_bready => m00_couplers_to_axi_interconnect_1_BREADY,
      M_AXI_bresp(1 downto 0) => m00_couplers_to_axi_interconnect_1_BRESP(1 downto 0),
      M_AXI_bvalid => m00_couplers_to_axi_interconnect_1_BVALID,
      M_AXI_rdata(63 downto 0) => m00_couplers_to_axi_interconnect_1_RDATA(63 downto 0),
      M_AXI_rid(5 downto 0) => m00_couplers_to_axi_interconnect_1_RID(5 downto 0),
      M_AXI_rlast => m00_couplers_to_axi_interconnect_1_RLAST,
      M_AXI_rready => m00_couplers_to_axi_interconnect_1_RREADY,
      M_AXI_rresp(1 downto 0) => m00_couplers_to_axi_interconnect_1_RRESP(1 downto 0),
      M_AXI_rvalid => m00_couplers_to_axi_interconnect_1_RVALID,
      M_AXI_wdata(63 downto 0) => m00_couplers_to_axi_interconnect_1_WDATA(63 downto 0),
      M_AXI_wid(0) => m00_couplers_to_axi_interconnect_1_WID(0),
      M_AXI_wlast => m00_couplers_to_axi_interconnect_1_WLAST,
      M_AXI_wready => m00_couplers_to_axi_interconnect_1_WREADY,
      M_AXI_wstrb(7 downto 0) => m00_couplers_to_axi_interconnect_1_WSTRB(7 downto 0),
      M_AXI_wvalid => m00_couplers_to_axi_interconnect_1_WVALID,
      S_ACLK => axi_interconnect_1_ACLK_net,
      S_ARESETN => axi_interconnect_1_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => xbar_to_m00_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => xbar_to_m00_couplers_ARCACHE(3 downto 0),
      S_AXI_arid(0) => xbar_to_m00_couplers_ARID(0),
      S_AXI_arlen(7 downto 0) => xbar_to_m00_couplers_ARLEN(7 downto 0),
      S_AXI_arlock(0) => xbar_to_m00_couplers_ARLOCK(0),
      S_AXI_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => xbar_to_m00_couplers_ARQOS(3 downto 0),
      S_AXI_arready => xbar_to_m00_couplers_ARREADY,
      S_AXI_arregion(3 downto 0) => xbar_to_m00_couplers_ARREGION(3 downto 0),
      S_AXI_arsize(2 downto 0) => xbar_to_m00_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => xbar_to_m00_couplers_ARVALID(0),
      S_AXI_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => xbar_to_m00_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => xbar_to_m00_couplers_AWCACHE(3 downto 0),
      S_AXI_awid(0) => xbar_to_m00_couplers_AWID(0),
      S_AXI_awlen(7 downto 0) => xbar_to_m00_couplers_AWLEN(7 downto 0),
      S_AXI_awlock(0) => xbar_to_m00_couplers_AWLOCK(0),
      S_AXI_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => xbar_to_m00_couplers_AWQOS(3 downto 0),
      S_AXI_awready => xbar_to_m00_couplers_AWREADY,
      S_AXI_awregion(3 downto 0) => xbar_to_m00_couplers_AWREGION(3 downto 0),
      S_AXI_awsize(2 downto 0) => xbar_to_m00_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid => xbar_to_m00_couplers_AWVALID(0),
      S_AXI_bid(0) => xbar_to_m00_couplers_BID(0),
      S_AXI_bready => xbar_to_m00_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m00_couplers_BVALID,
      S_AXI_rdata(63 downto 0) => xbar_to_m00_couplers_RDATA(63 downto 0),
      S_AXI_rid(0) => xbar_to_m00_couplers_RID(0),
      S_AXI_rlast => xbar_to_m00_couplers_RLAST,
      S_AXI_rready => xbar_to_m00_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m00_couplers_RVALID,
      S_AXI_wdata(63 downto 0) => xbar_to_m00_couplers_WDATA(63 downto 0),
      S_AXI_wlast => xbar_to_m00_couplers_WLAST(0),
      S_AXI_wready => xbar_to_m00_couplers_WREADY,
      S_AXI_wstrb(7 downto 0) => xbar_to_m00_couplers_WSTRB(7 downto 0),
      S_AXI_wvalid => xbar_to_m00_couplers_WVALID(0)
    );
s00_couplers: entity work.s00_couplers_imp_1WPKK0R
     port map (
      M_ACLK => axi_interconnect_1_ACLK_net,
      M_ARESETN => axi_interconnect_1_ARESETN_net,
      M_AXI_araddr => s00_couplers_to_xbar_ARADDR,
      M_AXI_arburst => s00_couplers_to_xbar_ARBURST,
      M_AXI_arcache => s00_couplers_to_xbar_ARCACHE,
      M_AXI_arid => s00_couplers_to_xbar_ARID,
      M_AXI_arlen => s00_couplers_to_xbar_ARLEN,
      M_AXI_arlock => s00_couplers_to_xbar_ARLOCK,
      M_AXI_arprot => s00_couplers_to_xbar_ARPROT,
      M_AXI_arqos => s00_couplers_to_xbar_ARQOS,
      M_AXI_arready => s00_couplers_to_xbar_ARREADY(0),
      M_AXI_arsize => s00_couplers_to_xbar_ARSIZE,
      M_AXI_arvalid => s00_couplers_to_xbar_ARVALID,
      M_AXI_awaddr => s00_couplers_to_xbar_AWADDR,
      M_AXI_awburst => s00_couplers_to_xbar_AWBURST,
      M_AXI_awcache => s00_couplers_to_xbar_AWCACHE,
      M_AXI_awid => s00_couplers_to_xbar_AWID,
      M_AXI_awlen => s00_couplers_to_xbar_AWLEN,
      M_AXI_awlock => s00_couplers_to_xbar_AWLOCK,
      M_AXI_awprot => s00_couplers_to_xbar_AWPROT,
      M_AXI_awqos => s00_couplers_to_xbar_AWQOS,
      M_AXI_awready => s00_couplers_to_xbar_AWREADY(0),
      M_AXI_awsize => s00_couplers_to_xbar_AWSIZE,
      M_AXI_awvalid => s00_couplers_to_xbar_AWVALID,
      M_AXI_bid => s00_couplers_to_xbar_BID(0),
      M_AXI_bready => s00_couplers_to_xbar_BREADY,
      M_AXI_bresp => s00_couplers_to_xbar_BRESP(0),
      M_AXI_bvalid => s00_couplers_to_xbar_BVALID(0),
      M_AXI_rdata => s00_couplers_to_xbar_RDATA(0),
      M_AXI_rid => s00_couplers_to_xbar_RID(0),
      M_AXI_rlast => s00_couplers_to_xbar_RLAST(0),
      M_AXI_rready => s00_couplers_to_xbar_RREADY,
      M_AXI_rresp => s00_couplers_to_xbar_RRESP(0),
      M_AXI_rvalid => s00_couplers_to_xbar_RVALID(0),
      M_AXI_wdata => s00_couplers_to_xbar_WDATA,
      M_AXI_wlast => s00_couplers_to_xbar_WLAST,
      M_AXI_wready => s00_couplers_to_xbar_WREADY(0),
      M_AXI_wstrb => s00_couplers_to_xbar_WSTRB,
      M_AXI_wvalid => s00_couplers_to_xbar_WVALID,
      S_ACLK => S00_ACLK_1,
      S_ARESETN => S00_ARESETN_1,
      S_AXI_araddr => axi_interconnect_1_to_s00_couplers_ARADDR,
      S_AXI_arburst => axi_interconnect_1_to_s00_couplers_ARBURST,
      S_AXI_arcache => axi_interconnect_1_to_s00_couplers_ARCACHE,
      S_AXI_arid => axi_interconnect_1_to_s00_couplers_ARID,
      S_AXI_arlen => axi_interconnect_1_to_s00_couplers_ARLEN,
      S_AXI_arlock => axi_interconnect_1_to_s00_couplers_ARLOCK,
      S_AXI_arprot => axi_interconnect_1_to_s00_couplers_ARPROT,
      S_AXI_arqos => axi_interconnect_1_to_s00_couplers_ARQOS,
      S_AXI_arready => axi_interconnect_1_to_s00_couplers_ARREADY,
      S_AXI_arsize => axi_interconnect_1_to_s00_couplers_ARSIZE,
      S_AXI_arvalid => axi_interconnect_1_to_s00_couplers_ARVALID,
      S_AXI_awaddr => axi_interconnect_1_to_s00_couplers_AWADDR,
      S_AXI_awburst => axi_interconnect_1_to_s00_couplers_AWBURST,
      S_AXI_awcache => axi_interconnect_1_to_s00_couplers_AWCACHE,
      S_AXI_awid => axi_interconnect_1_to_s00_couplers_AWID,
      S_AXI_awlen => axi_interconnect_1_to_s00_couplers_AWLEN,
      S_AXI_awlock => axi_interconnect_1_to_s00_couplers_AWLOCK,
      S_AXI_awprot => axi_interconnect_1_to_s00_couplers_AWPROT,
      S_AXI_awqos => axi_interconnect_1_to_s00_couplers_AWQOS,
      S_AXI_awready => axi_interconnect_1_to_s00_couplers_AWREADY,
      S_AXI_awsize => axi_interconnect_1_to_s00_couplers_AWSIZE,
      S_AXI_awvalid => axi_interconnect_1_to_s00_couplers_AWVALID,
      S_AXI_bid => axi_interconnect_1_to_s00_couplers_BID,
      S_AXI_bready => axi_interconnect_1_to_s00_couplers_BREADY,
      S_AXI_bresp => axi_interconnect_1_to_s00_couplers_BRESP,
      S_AXI_bvalid => axi_interconnect_1_to_s00_couplers_BVALID,
      S_AXI_rdata => axi_interconnect_1_to_s00_couplers_RDATA,
      S_AXI_rid => axi_interconnect_1_to_s00_couplers_RID,
      S_AXI_rlast => axi_interconnect_1_to_s00_couplers_RLAST,
      S_AXI_rready => axi_interconnect_1_to_s00_couplers_RREADY,
      S_AXI_rresp => axi_interconnect_1_to_s00_couplers_RRESP,
      S_AXI_rvalid => axi_interconnect_1_to_s00_couplers_RVALID,
      S_AXI_wdata => axi_interconnect_1_to_s00_couplers_WDATA,
      S_AXI_wlast => axi_interconnect_1_to_s00_couplers_WLAST,
      S_AXI_wready => axi_interconnect_1_to_s00_couplers_WREADY,
      S_AXI_wstrb => axi_interconnect_1_to_s00_couplers_WSTRB,
      S_AXI_wvalid => axi_interconnect_1_to_s00_couplers_WVALID
    );
s01_couplers: entity work.s01_couplers_imp_6X3VZU
     port map (
      M_ACLK => axi_interconnect_1_ACLK_net,
      M_ARESETN => axi_interconnect_1_ARESETN_net,
      M_AXI_awaddr(31 downto 0) => s01_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => s01_couplers_to_xbar_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => s01_couplers_to_xbar_AWCACHE(3 downto 0),
      M_AXI_awlen(7 downto 0) => s01_couplers_to_xbar_AWLEN(7 downto 0),
      M_AXI_awprot(2 downto 0) => s01_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awready(0) => s01_couplers_to_xbar_AWREADY(1),
      M_AXI_awsize(2 downto 0) => s01_couplers_to_xbar_AWSIZE(2 downto 0),
      M_AXI_awvalid(0) => s01_couplers_to_xbar_AWVALID(0),
      M_AXI_bready(0) => s01_couplers_to_xbar_BREADY(0),
      M_AXI_bresp(1 downto 0) => s01_couplers_to_xbar_BRESP(3 downto 2),
      M_AXI_bvalid(0) => s01_couplers_to_xbar_BVALID(1),
      M_AXI_wdata(63 downto 0) => s01_couplers_to_xbar_WDATA(63 downto 0),
      M_AXI_wlast(0) => s01_couplers_to_xbar_WLAST(0),
      M_AXI_wready(0) => s01_couplers_to_xbar_WREADY(1),
      M_AXI_wstrb(7 downto 0) => s01_couplers_to_xbar_WSTRB(7 downto 0),
      M_AXI_wvalid(0) => s01_couplers_to_xbar_WVALID(0),
      S_ACLK => S01_ACLK_1,
      S_ARESETN => S01_ARESETN_1,
      S_AXI_awaddr(31 downto 0) => axi_interconnect_1_to_s01_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => axi_interconnect_1_to_s01_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => axi_interconnect_1_to_s01_couplers_AWCACHE(3 downto 0),
      S_AXI_awlen(7 downto 0) => axi_interconnect_1_to_s01_couplers_AWLEN(7 downto 0),
      S_AXI_awprot(2 downto 0) => axi_interconnect_1_to_s01_couplers_AWPROT(2 downto 0),
      S_AXI_awready(0) => axi_interconnect_1_to_s01_couplers_AWREADY(0),
      S_AXI_awsize(2 downto 0) => axi_interconnect_1_to_s01_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid(0) => axi_interconnect_1_to_s01_couplers_AWVALID(0),
      S_AXI_bready(0) => axi_interconnect_1_to_s01_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => axi_interconnect_1_to_s01_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => axi_interconnect_1_to_s01_couplers_BVALID(0),
      S_AXI_wdata(63 downto 0) => axi_interconnect_1_to_s01_couplers_WDATA(63 downto 0),
      S_AXI_wlast(0) => axi_interconnect_1_to_s01_couplers_WLAST(0),
      S_AXI_wready(0) => axi_interconnect_1_to_s01_couplers_WREADY(0),
      S_AXI_wstrb(7 downto 0) => axi_interconnect_1_to_s01_couplers_WSTRB(7 downto 0),
      S_AXI_wvalid(0) => axi_interconnect_1_to_s01_couplers_WVALID(0)
    );
xbar: component img_proc_xbar_3
     port map (
      aclk => axi_interconnect_1_ACLK_net,
      aresetn => axi_interconnect_1_ARESETN_net,
      m_axi_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => xbar_to_m00_couplers_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => xbar_to_m00_couplers_ARCACHE(3 downto 0),
      m_axi_arid(0) => xbar_to_m00_couplers_ARID(0),
      m_axi_arlen(7 downto 0) => xbar_to_m00_couplers_ARLEN(7 downto 0),
      m_axi_arlock(0) => xbar_to_m00_couplers_ARLOCK(0),
      m_axi_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => xbar_to_m00_couplers_ARQOS(3 downto 0),
      m_axi_arready(0) => xbar_to_m00_couplers_ARREADY,
      m_axi_arregion(3 downto 0) => xbar_to_m00_couplers_ARREGION(3 downto 0),
      m_axi_arsize(2 downto 0) => xbar_to_m00_couplers_ARSIZE(2 downto 0),
      m_axi_arvalid(0) => xbar_to_m00_couplers_ARVALID(0),
      m_axi_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => xbar_to_m00_couplers_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => xbar_to_m00_couplers_AWCACHE(3 downto 0),
      m_axi_awid(0) => xbar_to_m00_couplers_AWID(0),
      m_axi_awlen(7 downto 0) => xbar_to_m00_couplers_AWLEN(7 downto 0),
      m_axi_awlock(0) => xbar_to_m00_couplers_AWLOCK(0),
      m_axi_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => xbar_to_m00_couplers_AWQOS(3 downto 0),
      m_axi_awready(0) => xbar_to_m00_couplers_AWREADY,
      m_axi_awregion(3 downto 0) => xbar_to_m00_couplers_AWREGION(3 downto 0),
      m_axi_awsize(2 downto 0) => xbar_to_m00_couplers_AWSIZE(2 downto 0),
      m_axi_awvalid(0) => xbar_to_m00_couplers_AWVALID(0),
      m_axi_bid(0) => xbar_to_m00_couplers_BID(0),
      m_axi_bready(0) => xbar_to_m00_couplers_BREADY(0),
      m_axi_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid(0) => xbar_to_m00_couplers_BVALID,
      m_axi_rdata(63 downto 0) => xbar_to_m00_couplers_RDATA(63 downto 0),
      m_axi_rid(0) => xbar_to_m00_couplers_RID(0),
      m_axi_rlast(0) => xbar_to_m00_couplers_RLAST,
      m_axi_rready(0) => xbar_to_m00_couplers_RREADY(0),
      m_axi_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid(0) => xbar_to_m00_couplers_RVALID,
      m_axi_wdata(63 downto 0) => xbar_to_m00_couplers_WDATA(63 downto 0),
      m_axi_wlast(0) => xbar_to_m00_couplers_WLAST(0),
      m_axi_wready(0) => xbar_to_m00_couplers_WREADY,
      m_axi_wstrb(7 downto 0) => xbar_to_m00_couplers_WSTRB(7 downto 0),
      m_axi_wvalid(0) => xbar_to_m00_couplers_WVALID(0),
      s_axi_araddr(63 downto 32) => B"00000000000000000000000000000000",
      s_axi_araddr(31) => s00_couplers_to_xbar_ARADDR,
      s_axi_araddr(30) => s00_couplers_to_xbar_ARADDR,
      s_axi_araddr(29) => s00_couplers_to_xbar_ARADDR,
      s_axi_araddr(28) => s00_couplers_to_xbar_ARADDR,
      s_axi_araddr(27) => s00_couplers_to_xbar_ARADDR,
      s_axi_araddr(26) => s00_couplers_to_xbar_ARADDR,
      s_axi_araddr(25) => s00_couplers_to_xbar_ARADDR,
      s_axi_araddr(24) => s00_couplers_to_xbar_ARADDR,
      s_axi_araddr(23) => s00_couplers_to_xbar_ARADDR,
      s_axi_araddr(22) => s00_couplers_to_xbar_ARADDR,
      s_axi_araddr(21) => s00_couplers_to_xbar_ARADDR,
      s_axi_araddr(20) => s00_couplers_to_xbar_ARADDR,
      s_axi_araddr(19) => s00_couplers_to_xbar_ARADDR,
      s_axi_araddr(18) => s00_couplers_to_xbar_ARADDR,
      s_axi_araddr(17) => s00_couplers_to_xbar_ARADDR,
      s_axi_araddr(16) => s00_couplers_to_xbar_ARADDR,
      s_axi_araddr(15) => s00_couplers_to_xbar_ARADDR,
      s_axi_araddr(14) => s00_couplers_to_xbar_ARADDR,
      s_axi_araddr(13) => s00_couplers_to_xbar_ARADDR,
      s_axi_araddr(12) => s00_couplers_to_xbar_ARADDR,
      s_axi_araddr(11) => s00_couplers_to_xbar_ARADDR,
      s_axi_araddr(10) => s00_couplers_to_xbar_ARADDR,
      s_axi_araddr(9) => s00_couplers_to_xbar_ARADDR,
      s_axi_araddr(8) => s00_couplers_to_xbar_ARADDR,
      s_axi_araddr(7) => s00_couplers_to_xbar_ARADDR,
      s_axi_araddr(6) => s00_couplers_to_xbar_ARADDR,
      s_axi_araddr(5) => s00_couplers_to_xbar_ARADDR,
      s_axi_araddr(4) => s00_couplers_to_xbar_ARADDR,
      s_axi_araddr(3) => s00_couplers_to_xbar_ARADDR,
      s_axi_araddr(2) => s00_couplers_to_xbar_ARADDR,
      s_axi_araddr(1) => s00_couplers_to_xbar_ARADDR,
      s_axi_araddr(0) => s00_couplers_to_xbar_ARADDR,
      s_axi_arburst(3 downto 2) => B"00",
      s_axi_arburst(1) => s00_couplers_to_xbar_ARBURST,
      s_axi_arburst(0) => s00_couplers_to_xbar_ARBURST,
      s_axi_arcache(7 downto 4) => B"0000",
      s_axi_arcache(3) => s00_couplers_to_xbar_ARCACHE,
      s_axi_arcache(2) => s00_couplers_to_xbar_ARCACHE,
      s_axi_arcache(1) => s00_couplers_to_xbar_ARCACHE,
      s_axi_arcache(0) => s00_couplers_to_xbar_ARCACHE,
      s_axi_arid(1) => '0',
      s_axi_arid(0) => s00_couplers_to_xbar_ARID,
      s_axi_arlen(15 downto 8) => B"00000000",
      s_axi_arlen(7) => s00_couplers_to_xbar_ARLEN,
      s_axi_arlen(6) => s00_couplers_to_xbar_ARLEN,
      s_axi_arlen(5) => s00_couplers_to_xbar_ARLEN,
      s_axi_arlen(4) => s00_couplers_to_xbar_ARLEN,
      s_axi_arlen(3) => s00_couplers_to_xbar_ARLEN,
      s_axi_arlen(2) => s00_couplers_to_xbar_ARLEN,
      s_axi_arlen(1) => s00_couplers_to_xbar_ARLEN,
      s_axi_arlen(0) => s00_couplers_to_xbar_ARLEN,
      s_axi_arlock(1) => '0',
      s_axi_arlock(0) => s00_couplers_to_xbar_ARLOCK,
      s_axi_arprot(5 downto 3) => B"000",
      s_axi_arprot(2) => s00_couplers_to_xbar_ARPROT,
      s_axi_arprot(1) => s00_couplers_to_xbar_ARPROT,
      s_axi_arprot(0) => s00_couplers_to_xbar_ARPROT,
      s_axi_arqos(7 downto 4) => B"0000",
      s_axi_arqos(3) => s00_couplers_to_xbar_ARQOS,
      s_axi_arqos(2) => s00_couplers_to_xbar_ARQOS,
      s_axi_arqos(1) => s00_couplers_to_xbar_ARQOS,
      s_axi_arqos(0) => s00_couplers_to_xbar_ARQOS,
      s_axi_arready(1) => NLW_xbar_s_axi_arready_UNCONNECTED(1),
      s_axi_arready(0) => s00_couplers_to_xbar_ARREADY(0),
      s_axi_arsize(5 downto 3) => B"001",
      s_axi_arsize(2) => s00_couplers_to_xbar_ARSIZE,
      s_axi_arsize(1) => s00_couplers_to_xbar_ARSIZE,
      s_axi_arsize(0) => s00_couplers_to_xbar_ARSIZE,
      s_axi_arvalid(1) => '0',
      s_axi_arvalid(0) => s00_couplers_to_xbar_ARVALID,
      s_axi_awaddr(63 downto 32) => s01_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awaddr(31) => s00_couplers_to_xbar_AWADDR,
      s_axi_awaddr(30) => s00_couplers_to_xbar_AWADDR,
      s_axi_awaddr(29) => s00_couplers_to_xbar_AWADDR,
      s_axi_awaddr(28) => s00_couplers_to_xbar_AWADDR,
      s_axi_awaddr(27) => s00_couplers_to_xbar_AWADDR,
      s_axi_awaddr(26) => s00_couplers_to_xbar_AWADDR,
      s_axi_awaddr(25) => s00_couplers_to_xbar_AWADDR,
      s_axi_awaddr(24) => s00_couplers_to_xbar_AWADDR,
      s_axi_awaddr(23) => s00_couplers_to_xbar_AWADDR,
      s_axi_awaddr(22) => s00_couplers_to_xbar_AWADDR,
      s_axi_awaddr(21) => s00_couplers_to_xbar_AWADDR,
      s_axi_awaddr(20) => s00_couplers_to_xbar_AWADDR,
      s_axi_awaddr(19) => s00_couplers_to_xbar_AWADDR,
      s_axi_awaddr(18) => s00_couplers_to_xbar_AWADDR,
      s_axi_awaddr(17) => s00_couplers_to_xbar_AWADDR,
      s_axi_awaddr(16) => s00_couplers_to_xbar_AWADDR,
      s_axi_awaddr(15) => s00_couplers_to_xbar_AWADDR,
      s_axi_awaddr(14) => s00_couplers_to_xbar_AWADDR,
      s_axi_awaddr(13) => s00_couplers_to_xbar_AWADDR,
      s_axi_awaddr(12) => s00_couplers_to_xbar_AWADDR,
      s_axi_awaddr(11) => s00_couplers_to_xbar_AWADDR,
      s_axi_awaddr(10) => s00_couplers_to_xbar_AWADDR,
      s_axi_awaddr(9) => s00_couplers_to_xbar_AWADDR,
      s_axi_awaddr(8) => s00_couplers_to_xbar_AWADDR,
      s_axi_awaddr(7) => s00_couplers_to_xbar_AWADDR,
      s_axi_awaddr(6) => s00_couplers_to_xbar_AWADDR,
      s_axi_awaddr(5) => s00_couplers_to_xbar_AWADDR,
      s_axi_awaddr(4) => s00_couplers_to_xbar_AWADDR,
      s_axi_awaddr(3) => s00_couplers_to_xbar_AWADDR,
      s_axi_awaddr(2) => s00_couplers_to_xbar_AWADDR,
      s_axi_awaddr(1) => s00_couplers_to_xbar_AWADDR,
      s_axi_awaddr(0) => s00_couplers_to_xbar_AWADDR,
      s_axi_awburst(3 downto 2) => s01_couplers_to_xbar_AWBURST(1 downto 0),
      s_axi_awburst(1) => s00_couplers_to_xbar_AWBURST,
      s_axi_awburst(0) => s00_couplers_to_xbar_AWBURST,
      s_axi_awcache(7 downto 4) => s01_couplers_to_xbar_AWCACHE(3 downto 0),
      s_axi_awcache(3) => s00_couplers_to_xbar_AWCACHE,
      s_axi_awcache(2) => s00_couplers_to_xbar_AWCACHE,
      s_axi_awcache(1) => s00_couplers_to_xbar_AWCACHE,
      s_axi_awcache(0) => s00_couplers_to_xbar_AWCACHE,
      s_axi_awid(1) => '0',
      s_axi_awid(0) => s00_couplers_to_xbar_AWID,
      s_axi_awlen(15 downto 8) => s01_couplers_to_xbar_AWLEN(7 downto 0),
      s_axi_awlen(7) => s00_couplers_to_xbar_AWLEN,
      s_axi_awlen(6) => s00_couplers_to_xbar_AWLEN,
      s_axi_awlen(5) => s00_couplers_to_xbar_AWLEN,
      s_axi_awlen(4) => s00_couplers_to_xbar_AWLEN,
      s_axi_awlen(3) => s00_couplers_to_xbar_AWLEN,
      s_axi_awlen(2) => s00_couplers_to_xbar_AWLEN,
      s_axi_awlen(1) => s00_couplers_to_xbar_AWLEN,
      s_axi_awlen(0) => s00_couplers_to_xbar_AWLEN,
      s_axi_awlock(1) => '0',
      s_axi_awlock(0) => s00_couplers_to_xbar_AWLOCK,
      s_axi_awprot(5 downto 3) => s01_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awprot(2) => s00_couplers_to_xbar_AWPROT,
      s_axi_awprot(1) => s00_couplers_to_xbar_AWPROT,
      s_axi_awprot(0) => s00_couplers_to_xbar_AWPROT,
      s_axi_awqos(7 downto 4) => B"0000",
      s_axi_awqos(3) => s00_couplers_to_xbar_AWQOS,
      s_axi_awqos(2) => s00_couplers_to_xbar_AWQOS,
      s_axi_awqos(1) => s00_couplers_to_xbar_AWQOS,
      s_axi_awqos(0) => s00_couplers_to_xbar_AWQOS,
      s_axi_awready(1) => s01_couplers_to_xbar_AWREADY(1),
      s_axi_awready(0) => s00_couplers_to_xbar_AWREADY(0),
      s_axi_awsize(5 downto 3) => s01_couplers_to_xbar_AWSIZE(2 downto 0),
      s_axi_awsize(2) => s00_couplers_to_xbar_AWSIZE,
      s_axi_awsize(1) => s00_couplers_to_xbar_AWSIZE,
      s_axi_awsize(0) => s00_couplers_to_xbar_AWSIZE,
      s_axi_awvalid(1) => s01_couplers_to_xbar_AWVALID(0),
      s_axi_awvalid(0) => s00_couplers_to_xbar_AWVALID,
      s_axi_bid(1) => NLW_xbar_s_axi_bid_UNCONNECTED(1),
      s_axi_bid(0) => s00_couplers_to_xbar_BID(0),
      s_axi_bready(1) => s01_couplers_to_xbar_BREADY(0),
      s_axi_bready(0) => s00_couplers_to_xbar_BREADY,
      s_axi_bresp(3 downto 2) => s01_couplers_to_xbar_BRESP(3 downto 2),
      s_axi_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      s_axi_bvalid(1) => s01_couplers_to_xbar_BVALID(1),
      s_axi_bvalid(0) => s00_couplers_to_xbar_BVALID(0),
      s_axi_rdata(127 downto 64) => NLW_xbar_s_axi_rdata_UNCONNECTED(127 downto 64),
      s_axi_rdata(63 downto 0) => s00_couplers_to_xbar_RDATA(63 downto 0),
      s_axi_rid(1) => NLW_xbar_s_axi_rid_UNCONNECTED(1),
      s_axi_rid(0) => s00_couplers_to_xbar_RID(0),
      s_axi_rlast(1) => NLW_xbar_s_axi_rlast_UNCONNECTED(1),
      s_axi_rlast(0) => s00_couplers_to_xbar_RLAST(0),
      s_axi_rready(1) => '0',
      s_axi_rready(0) => s00_couplers_to_xbar_RREADY,
      s_axi_rresp(3 downto 2) => NLW_xbar_s_axi_rresp_UNCONNECTED(3 downto 2),
      s_axi_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      s_axi_rvalid(1) => NLW_xbar_s_axi_rvalid_UNCONNECTED(1),
      s_axi_rvalid(0) => s00_couplers_to_xbar_RVALID(0),
      s_axi_wdata(127 downto 64) => s01_couplers_to_xbar_WDATA(63 downto 0),
      s_axi_wdata(63) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(62) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(61) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(60) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(59) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(58) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(57) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(56) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(55) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(54) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(53) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(52) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(51) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(50) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(49) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(48) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(47) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(46) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(45) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(44) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(43) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(42) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(41) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(40) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(39) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(38) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(37) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(36) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(35) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(34) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(33) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(32) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(31) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(30) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(29) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(28) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(27) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(26) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(25) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(24) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(23) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(22) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(21) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(20) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(19) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(18) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(17) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(16) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(15) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(14) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(13) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(12) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(11) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(10) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(9) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(8) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(7) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(6) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(5) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(4) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(3) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(2) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(1) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(0) => s00_couplers_to_xbar_WDATA,
      s_axi_wlast(1) => s01_couplers_to_xbar_WLAST(0),
      s_axi_wlast(0) => s00_couplers_to_xbar_WLAST,
      s_axi_wready(1) => s01_couplers_to_xbar_WREADY(1),
      s_axi_wready(0) => s00_couplers_to_xbar_WREADY(0),
      s_axi_wstrb(15 downto 8) => s01_couplers_to_xbar_WSTRB(7 downto 0),
      s_axi_wstrb(7) => s00_couplers_to_xbar_WSTRB,
      s_axi_wstrb(6) => s00_couplers_to_xbar_WSTRB,
      s_axi_wstrb(5) => s00_couplers_to_xbar_WSTRB,
      s_axi_wstrb(4) => s00_couplers_to_xbar_WSTRB,
      s_axi_wstrb(3) => s00_couplers_to_xbar_WSTRB,
      s_axi_wstrb(2) => s00_couplers_to_xbar_WSTRB,
      s_axi_wstrb(1) => s00_couplers_to_xbar_WSTRB,
      s_axi_wstrb(0) => s00_couplers_to_xbar_WSTRB,
      s_axi_wvalid(1) => s01_couplers_to_xbar_WVALID(0),
      s_axi_wvalid(0) => s00_couplers_to_xbar_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity vdma_imp_QLRT7Y is
  port (
    ARESETN : in STD_LOGIC;
    GPIO_tri_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_bid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXI_rid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    M00_AXI_rlast : in STD_LOGIC;
    M00_AXI_rready : out STD_LOGIC;
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXI_wid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_wlast : out STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC;
    S_AXIS_S2MM_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    S_AXIS_S2MM_tlast : in STD_LOGIC;
    S_AXIS_S2MM_tready : out STD_LOGIC;
    S_AXIS_S2MM_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXIS_S2MM_tvalid : in STD_LOGIC;
    axi_resetn : in STD_LOGIC;
    ctl : in STD_LOGIC;
    m_axi_mm2s_aclk : in STD_LOGIC
  );
end vdma_imp_QLRT7Y;

architecture STRUCTURE of vdma_imp_QLRT7Y is
  component img_proc_axi_vdma_0_0 is
  port (
    s_axi_lite_aclk : in STD_LOGIC;
    m_axi_s2mm_aclk : in STD_LOGIC;
    s_axis_s2mm_aclk : in STD_LOGIC;
    axi_resetn : in STD_LOGIC;
    s_axi_lite_awvalid : in STD_LOGIC;
    s_axi_lite_awready : out STD_LOGIC;
    s_axi_lite_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_lite_wvalid : in STD_LOGIC;
    s_axi_lite_wready : out STD_LOGIC;
    s_axi_lite_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_lite_bvalid : out STD_LOGIC;
    s_axi_lite_bready : in STD_LOGIC;
    s_axi_lite_arvalid : in STD_LOGIC;
    s_axi_lite_arready : out STD_LOGIC;
    s_axi_lite_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_lite_rvalid : out STD_LOGIC;
    s_axi_lite_rready : in STD_LOGIC;
    s_axi_lite_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s2mm_frame_ptr_in : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s2mm_frame_ptr_out : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_s2mm_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_s2mm_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_s2mm_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_s2mm_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_s2mm_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_s2mm_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_s2mm_awvalid : out STD_LOGIC;
    m_axi_s2mm_awready : in STD_LOGIC;
    m_axi_s2mm_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_s2mm_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_s2mm_wlast : out STD_LOGIC;
    m_axi_s2mm_wvalid : out STD_LOGIC;
    m_axi_s2mm_wready : in STD_LOGIC;
    m_axi_s2mm_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_s2mm_bvalid : in STD_LOGIC;
    m_axi_s2mm_bready : out STD_LOGIC;
    s_axis_s2mm_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_s2mm_tkeep : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_s2mm_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_s2mm_tvalid : in STD_LOGIC;
    s_axis_s2mm_tready : out STD_LOGIC;
    s_axis_s2mm_tlast : in STD_LOGIC;
    s2mm_introut : out STD_LOGIC
  );
  end component img_proc_axi_vdma_0_0;
  component img_proc_axi_gpio_0_1 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_o : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component img_proc_axi_gpio_0_1;
  component img_proc_v_tpg_0_0 is
  port (
    s_axi_CTRL_AWADDR : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_CTRL_AWVALID : in STD_LOGIC;
    s_axi_CTRL_AWREADY : out STD_LOGIC;
    s_axi_CTRL_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CTRL_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_CTRL_WVALID : in STD_LOGIC;
    s_axi_CTRL_WREADY : out STD_LOGIC;
    s_axi_CTRL_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CTRL_BVALID : out STD_LOGIC;
    s_axi_CTRL_BREADY : in STD_LOGIC;
    s_axi_CTRL_ARADDR : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_CTRL_ARVALID : in STD_LOGIC;
    s_axi_CTRL_ARREADY : out STD_LOGIC;
    s_axi_CTRL_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CTRL_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CTRL_RVALID : out STD_LOGIC;
    s_axi_CTRL_RREADY : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    fid : out STD_LOGIC_VECTOR ( 0 to 0 );
    fid_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    interrupt : out STD_LOGIC;
    m_axis_video_TVALID : out STD_LOGIC;
    m_axis_video_TREADY : in STD_LOGIC;
    m_axis_video_TDATA : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_video_TKEEP : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_video_TSTRB : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_video_TUSER : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_video_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_video_TID : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_video_TDEST : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component img_proc_v_tpg_0_0;
  component img_proc_video_stream_mux_0_0 is
  port (
    s_axis1_aclk : in STD_LOGIC;
    s_axis1_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis1_tkeep : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis1_tlast : in STD_LOGIC;
    s_axis1_tready : out STD_LOGIC;
    s_axis1_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis1_tvalid : in STD_LOGIC;
    s_axis2_aclk : in STD_LOGIC;
    s_axis2_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis2_tkeep : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis2_tlast : in STD_LOGIC;
    s_axis2_tready : out STD_LOGIC;
    s_axis2_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis2_tvalid : in STD_LOGIC;
    m_axis_s2mm_aclk : out STD_LOGIC;
    m_axis_s2mm_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_s2mm_tkeep : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_s2mm_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_s2mm_tvalid : out STD_LOGIC;
    m_axis_s2mm_tready : in STD_LOGIC;
    m_axis_s2mm_tlast : out STD_LOGIC;
    ctl : in STD_LOGIC
  );
  end component img_proc_video_stream_mux_0_0;
  signal ARESETN_1 : STD_LOGIC;
  signal Conn1_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn1_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn1_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn1_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn1_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn1_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn1_ARREADY : STD_LOGIC;
  signal Conn1_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn1_ARVALID : STD_LOGIC;
  signal Conn1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn1_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn1_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn1_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn1_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn1_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn1_AWREADY : STD_LOGIC;
  signal Conn1_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn1_AWVALID : STD_LOGIC;
  signal Conn1_BID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal Conn1_BREADY : STD_LOGIC;
  signal Conn1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn1_BVALID : STD_LOGIC;
  signal Conn1_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal Conn1_RID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal Conn1_RLAST : STD_LOGIC;
  signal Conn1_RREADY : STD_LOGIC;
  signal Conn1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn1_RVALID : STD_LOGIC;
  signal Conn1_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal Conn1_WID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_WLAST : STD_LOGIC;
  signal Conn1_WREADY : STD_LOGIC;
  signal Conn1_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Conn1_WVALID : STD_LOGIC;
  signal Conn3_TRI_O : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn8_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn8_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn8_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn8_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal Conn8_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn8_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn8_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn8_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn8_ARREADY : STD_LOGIC;
  signal Conn8_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn8_ARVALID : STD_LOGIC;
  signal Conn8_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn8_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn8_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn8_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal Conn8_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn8_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn8_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn8_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn8_AWREADY : STD_LOGIC;
  signal Conn8_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn8_AWVALID : STD_LOGIC;
  signal Conn8_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal Conn8_BREADY : STD_LOGIC;
  signal Conn8_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn8_BVALID : STD_LOGIC;
  signal Conn8_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn8_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal Conn8_RLAST : STD_LOGIC;
  signal Conn8_RREADY : STD_LOGIC;
  signal Conn8_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn8_RVALID : STD_LOGIC;
  signal Conn8_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn8_WID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal Conn8_WLAST : STD_LOGIC;
  signal Conn8_WREADY : STD_LOGIC;
  signal Conn8_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn8_WVALID : STD_LOGIC;
  signal S_AXIS_S2MM_1_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal S_AXIS_S2MM_1_TLAST : STD_LOGIC;
  signal S_AXIS_S2MM_1_TREADY : STD_LOGIC;
  signal S_AXIS_S2MM_1_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXIS_S2MM_1_TVALID : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M00_AXI_ARREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M00_AXI_AWREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_M00_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M00_AXI_BVALID : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M00_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M00_AXI_RVALID : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M00_AXI_WREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_M01_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M01_AXI_ARREADY : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_ARVALID : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M01_AXI_AWREADY : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_AWVALID : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_BREADY : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M01_AXI_BVALID : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M01_AXI_RREADY : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M01_AXI_RVALID : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M01_AXI_WREADY : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M01_AXI_WVALID : STD_LOGIC;
  signal axi_interconnect_0_M02_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M02_AXI_ARREADY : STD_LOGIC;
  signal axi_interconnect_0_M02_AXI_ARVALID : STD_LOGIC;
  signal axi_interconnect_0_M02_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M02_AXI_AWREADY : STD_LOGIC;
  signal axi_interconnect_0_M02_AXI_AWVALID : STD_LOGIC;
  signal axi_interconnect_0_M02_AXI_BREADY : STD_LOGIC;
  signal axi_interconnect_0_M02_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M02_AXI_BVALID : STD_LOGIC;
  signal axi_interconnect_0_M02_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M02_AXI_RREADY : STD_LOGIC;
  signal axi_interconnect_0_M02_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M02_AXI_RVALID : STD_LOGIC;
  signal axi_interconnect_0_M02_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M02_AXI_WREADY : STD_LOGIC;
  signal axi_interconnect_0_M02_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M02_AXI_WVALID : STD_LOGIC;
  signal axi_resetn_1 : STD_LOGIC;
  signal axi_vdma_0_M_AXI_S2MM_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_vdma_0_M_AXI_S2MM_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_vdma_0_M_AXI_S2MM_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_vdma_0_M_AXI_S2MM_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_vdma_0_M_AXI_S2MM_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_vdma_0_M_AXI_S2MM_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_vdma_0_M_AXI_S2MM_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_vdma_0_M_AXI_S2MM_AWVALID : STD_LOGIC;
  signal axi_vdma_0_M_AXI_S2MM_BREADY : STD_LOGIC;
  signal axi_vdma_0_M_AXI_S2MM_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_vdma_0_M_AXI_S2MM_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_vdma_0_M_AXI_S2MM_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axi_vdma_0_M_AXI_S2MM_WLAST : STD_LOGIC;
  signal axi_vdma_0_M_AXI_S2MM_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_vdma_0_M_AXI_S2MM_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_vdma_0_M_AXI_S2MM_WVALID : STD_LOGIC;
  signal ctl_1 : STD_LOGIC;
  signal m_axi_mm2s_aclk_1 : STD_LOGIC;
  signal v_tpg_0_m_axis_video_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal v_tpg_0_m_axis_video_TDEST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal v_tpg_0_m_axis_video_TID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal v_tpg_0_m_axis_video_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal v_tpg_0_m_axis_video_TLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal v_tpg_0_m_axis_video_TREADY : STD_LOGIC;
  signal v_tpg_0_m_axis_video_TSTRB : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal v_tpg_0_m_axis_video_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal v_tpg_0_m_axis_video_TVALID : STD_LOGIC;
  signal video_stream_mux_0_m_axis_s2mm_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal video_stream_mux_0_m_axis_s2mm_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal video_stream_mux_0_m_axis_s2mm_TLAST : STD_LOGIC;
  signal video_stream_mux_0_m_axis_s2mm_TREADY : STD_LOGIC;
  signal video_stream_mux_0_m_axis_s2mm_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal video_stream_mux_0_m_axis_s2mm_TVALID : STD_LOGIC;
  signal video_stream_mux_0_m_axis_s2mm_aclk : STD_LOGIC;
  signal NLW_axi_interconnect_1_S00_AXI_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_1_S00_AXI_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_1_S00_AXI_bid_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_1_S00_AXI_bresp_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_1_S00_AXI_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_1_S00_AXI_rdata_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_1_S00_AXI_rid_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_1_S00_AXI_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_1_S00_AXI_rresp_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_1_S00_AXI_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_1_S00_AXI_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_vdma_0_s2mm_introut_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_vdma_0_s2mm_frame_ptr_out_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_v_tpg_0_interrupt_UNCONNECTED : STD_LOGIC;
  signal NLW_v_tpg_0_fid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  ARESETN_1 <= ARESETN;
  Conn1_ARREADY <= M00_AXI_arready;
  Conn1_AWREADY <= M00_AXI_awready;
  Conn1_BID(5 downto 0) <= M00_AXI_bid(5 downto 0);
  Conn1_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  Conn1_BVALID <= M00_AXI_bvalid;
  Conn1_RDATA(63 downto 0) <= M00_AXI_rdata(63 downto 0);
  Conn1_RID(5 downto 0) <= M00_AXI_rid(5 downto 0);
  Conn1_RLAST <= M00_AXI_rlast;
  Conn1_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  Conn1_RVALID <= M00_AXI_rvalid;
  Conn1_WREADY <= M00_AXI_wready;
  Conn8_ARADDR(31 downto 0) <= S00_AXI_araddr(31 downto 0);
  Conn8_ARBURST(1 downto 0) <= S00_AXI_arburst(1 downto 0);
  Conn8_ARCACHE(3 downto 0) <= S00_AXI_arcache(3 downto 0);
  Conn8_ARID(11 downto 0) <= S00_AXI_arid(11 downto 0);
  Conn8_ARLEN(3 downto 0) <= S00_AXI_arlen(3 downto 0);
  Conn8_ARLOCK(1 downto 0) <= S00_AXI_arlock(1 downto 0);
  Conn8_ARPROT(2 downto 0) <= S00_AXI_arprot(2 downto 0);
  Conn8_ARQOS(3 downto 0) <= S00_AXI_arqos(3 downto 0);
  Conn8_ARSIZE(2 downto 0) <= S00_AXI_arsize(2 downto 0);
  Conn8_ARVALID <= S00_AXI_arvalid;
  Conn8_AWADDR(31 downto 0) <= S00_AXI_awaddr(31 downto 0);
  Conn8_AWBURST(1 downto 0) <= S00_AXI_awburst(1 downto 0);
  Conn8_AWCACHE(3 downto 0) <= S00_AXI_awcache(3 downto 0);
  Conn8_AWID(11 downto 0) <= S00_AXI_awid(11 downto 0);
  Conn8_AWLEN(3 downto 0) <= S00_AXI_awlen(3 downto 0);
  Conn8_AWLOCK(1 downto 0) <= S00_AXI_awlock(1 downto 0);
  Conn8_AWPROT(2 downto 0) <= S00_AXI_awprot(2 downto 0);
  Conn8_AWQOS(3 downto 0) <= S00_AXI_awqos(3 downto 0);
  Conn8_AWSIZE(2 downto 0) <= S00_AXI_awsize(2 downto 0);
  Conn8_AWVALID <= S00_AXI_awvalid;
  Conn8_BREADY <= S00_AXI_bready;
  Conn8_RREADY <= S00_AXI_rready;
  Conn8_WDATA(31 downto 0) <= S00_AXI_wdata(31 downto 0);
  Conn8_WID(11 downto 0) <= S00_AXI_wid(11 downto 0);
  Conn8_WLAST <= S00_AXI_wlast;
  Conn8_WSTRB(3 downto 0) <= S00_AXI_wstrb(3 downto 0);
  Conn8_WVALID <= S00_AXI_wvalid;
  GPIO_tri_o(3 downto 0) <= Conn3_TRI_O(3 downto 0);
  M00_AXI_araddr(31 downto 0) <= Conn1_ARADDR(31 downto 0);
  M00_AXI_arburst(1 downto 0) <= Conn1_ARBURST(1 downto 0);
  M00_AXI_arcache(3 downto 0) <= Conn1_ARCACHE(3 downto 0);
  M00_AXI_arid(0) <= Conn1_ARID(0);
  M00_AXI_arlen(3 downto 0) <= Conn1_ARLEN(3 downto 0);
  M00_AXI_arlock(1 downto 0) <= Conn1_ARLOCK(1 downto 0);
  M00_AXI_arprot(2 downto 0) <= Conn1_ARPROT(2 downto 0);
  M00_AXI_arqos(3 downto 0) <= Conn1_ARQOS(3 downto 0);
  M00_AXI_arsize(2 downto 0) <= Conn1_ARSIZE(2 downto 0);
  M00_AXI_arvalid <= Conn1_ARVALID;
  M00_AXI_awaddr(31 downto 0) <= Conn1_AWADDR(31 downto 0);
  M00_AXI_awburst(1 downto 0) <= Conn1_AWBURST(1 downto 0);
  M00_AXI_awcache(3 downto 0) <= Conn1_AWCACHE(3 downto 0);
  M00_AXI_awid(0) <= Conn1_AWID(0);
  M00_AXI_awlen(3 downto 0) <= Conn1_AWLEN(3 downto 0);
  M00_AXI_awlock(1 downto 0) <= Conn1_AWLOCK(1 downto 0);
  M00_AXI_awprot(2 downto 0) <= Conn1_AWPROT(2 downto 0);
  M00_AXI_awqos(3 downto 0) <= Conn1_AWQOS(3 downto 0);
  M00_AXI_awsize(2 downto 0) <= Conn1_AWSIZE(2 downto 0);
  M00_AXI_awvalid <= Conn1_AWVALID;
  M00_AXI_bready <= Conn1_BREADY;
  M00_AXI_rready <= Conn1_RREADY;
  M00_AXI_wdata(63 downto 0) <= Conn1_WDATA(63 downto 0);
  M00_AXI_wid(0) <= Conn1_WID(0);
  M00_AXI_wlast <= Conn1_WLAST;
  M00_AXI_wstrb(7 downto 0) <= Conn1_WSTRB(7 downto 0);
  M00_AXI_wvalid <= Conn1_WVALID;
  S00_AXI_arready <= Conn8_ARREADY;
  S00_AXI_awready <= Conn8_AWREADY;
  S00_AXI_bid(11 downto 0) <= Conn8_BID(11 downto 0);
  S00_AXI_bresp(1 downto 0) <= Conn8_BRESP(1 downto 0);
  S00_AXI_bvalid <= Conn8_BVALID;
  S00_AXI_rdata(31 downto 0) <= Conn8_RDATA(31 downto 0);
  S00_AXI_rid(11 downto 0) <= Conn8_RID(11 downto 0);
  S00_AXI_rlast <= Conn8_RLAST;
  S00_AXI_rresp(1 downto 0) <= Conn8_RRESP(1 downto 0);
  S00_AXI_rvalid <= Conn8_RVALID;
  S00_AXI_wready <= Conn8_WREADY;
  S_AXIS_S2MM_1_TDATA(23 downto 0) <= S_AXIS_S2MM_tdata(23 downto 0);
  S_AXIS_S2MM_1_TLAST <= S_AXIS_S2MM_tlast;
  S_AXIS_S2MM_1_TUSER(0) <= S_AXIS_S2MM_tuser(0);
  S_AXIS_S2MM_1_TVALID <= S_AXIS_S2MM_tvalid;
  S_AXIS_S2MM_tready <= S_AXIS_S2MM_1_TREADY;
  axi_resetn_1 <= axi_resetn;
  ctl_1 <= ctl;
  m_axi_mm2s_aclk_1 <= m_axi_mm2s_aclk;
axi_gpio_1: component img_proc_axi_gpio_0_1
     port map (
      gpio_io_o(3 downto 0) => Conn3_TRI_O(3 downto 0),
      s_axi_aclk => m_axi_mm2s_aclk_1,
      s_axi_araddr(8 downto 0) => axi_interconnect_0_M01_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => axi_resetn_1,
      s_axi_arready => axi_interconnect_0_M01_AXI_ARREADY,
      s_axi_arvalid => axi_interconnect_0_M01_AXI_ARVALID,
      s_axi_awaddr(8 downto 0) => axi_interconnect_0_M01_AXI_AWADDR(8 downto 0),
      s_axi_awready => axi_interconnect_0_M01_AXI_AWREADY,
      s_axi_awvalid => axi_interconnect_0_M01_AXI_AWVALID,
      s_axi_bready => axi_interconnect_0_M01_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_interconnect_0_M01_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_interconnect_0_M01_AXI_BVALID,
      s_axi_rdata(31 downto 0) => axi_interconnect_0_M01_AXI_RDATA(31 downto 0),
      s_axi_rready => axi_interconnect_0_M01_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_interconnect_0_M01_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_interconnect_0_M01_AXI_RVALID,
      s_axi_wdata(31 downto 0) => axi_interconnect_0_M01_AXI_WDATA(31 downto 0),
      s_axi_wready => axi_interconnect_0_M01_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => axi_interconnect_0_M01_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => axi_interconnect_0_M01_AXI_WVALID
    );
axi_interconnect_0: entity work.img_proc_axi_interconnect_0_1
     port map (
      ACLK => m_axi_mm2s_aclk_1,
      ARESETN => ARESETN_1,
      M00_ACLK => m_axi_mm2s_aclk_1,
      M00_ARESETN => axi_resetn_1,
      M00_AXI_araddr(31 downto 0) => axi_interconnect_0_M00_AXI_ARADDR(31 downto 0),
      M00_AXI_arready(0) => axi_interconnect_0_M00_AXI_ARREADY,
      M00_AXI_arvalid(0) => axi_interconnect_0_M00_AXI_ARVALID(0),
      M00_AXI_awaddr(31 downto 0) => axi_interconnect_0_M00_AXI_AWADDR(31 downto 0),
      M00_AXI_awready(0) => axi_interconnect_0_M00_AXI_AWREADY,
      M00_AXI_awvalid(0) => axi_interconnect_0_M00_AXI_AWVALID(0),
      M00_AXI_bready(0) => axi_interconnect_0_M00_AXI_BREADY(0),
      M00_AXI_bresp(1 downto 0) => axi_interconnect_0_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid(0) => axi_interconnect_0_M00_AXI_BVALID,
      M00_AXI_rdata(31 downto 0) => axi_interconnect_0_M00_AXI_RDATA(31 downto 0),
      M00_AXI_rready(0) => axi_interconnect_0_M00_AXI_RREADY(0),
      M00_AXI_rresp(1 downto 0) => axi_interconnect_0_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid(0) => axi_interconnect_0_M00_AXI_RVALID,
      M00_AXI_wdata(31 downto 0) => axi_interconnect_0_M00_AXI_WDATA(31 downto 0),
      M00_AXI_wready(0) => axi_interconnect_0_M00_AXI_WREADY,
      M00_AXI_wvalid(0) => axi_interconnect_0_M00_AXI_WVALID(0),
      M01_ACLK => m_axi_mm2s_aclk_1,
      M01_ARESETN => axi_resetn_1,
      M01_AXI_araddr(31 downto 0) => axi_interconnect_0_M01_AXI_ARADDR(31 downto 0),
      M01_AXI_arready => axi_interconnect_0_M01_AXI_ARREADY,
      M01_AXI_arvalid => axi_interconnect_0_M01_AXI_ARVALID,
      M01_AXI_awaddr(31 downto 0) => axi_interconnect_0_M01_AXI_AWADDR(31 downto 0),
      M01_AXI_awready => axi_interconnect_0_M01_AXI_AWREADY,
      M01_AXI_awvalid => axi_interconnect_0_M01_AXI_AWVALID,
      M01_AXI_bready => axi_interconnect_0_M01_AXI_BREADY,
      M01_AXI_bresp(1 downto 0) => axi_interconnect_0_M01_AXI_BRESP(1 downto 0),
      M01_AXI_bvalid => axi_interconnect_0_M01_AXI_BVALID,
      M01_AXI_rdata(31 downto 0) => axi_interconnect_0_M01_AXI_RDATA(31 downto 0),
      M01_AXI_rready => axi_interconnect_0_M01_AXI_RREADY,
      M01_AXI_rresp(1 downto 0) => axi_interconnect_0_M01_AXI_RRESP(1 downto 0),
      M01_AXI_rvalid => axi_interconnect_0_M01_AXI_RVALID,
      M01_AXI_wdata(31 downto 0) => axi_interconnect_0_M01_AXI_WDATA(31 downto 0),
      M01_AXI_wready => axi_interconnect_0_M01_AXI_WREADY,
      M01_AXI_wstrb(3 downto 0) => axi_interconnect_0_M01_AXI_WSTRB(3 downto 0),
      M01_AXI_wvalid => axi_interconnect_0_M01_AXI_WVALID,
      M02_ACLK => m_axi_mm2s_aclk_1,
      M02_ARESETN => axi_resetn_1,
      M02_AXI_araddr(31 downto 0) => axi_interconnect_0_M02_AXI_ARADDR(31 downto 0),
      M02_AXI_arready => axi_interconnect_0_M02_AXI_ARREADY,
      M02_AXI_arvalid => axi_interconnect_0_M02_AXI_ARVALID,
      M02_AXI_awaddr(31 downto 0) => axi_interconnect_0_M02_AXI_AWADDR(31 downto 0),
      M02_AXI_awready => axi_interconnect_0_M02_AXI_AWREADY,
      M02_AXI_awvalid => axi_interconnect_0_M02_AXI_AWVALID,
      M02_AXI_bready => axi_interconnect_0_M02_AXI_BREADY,
      M02_AXI_bresp(1 downto 0) => axi_interconnect_0_M02_AXI_BRESP(1 downto 0),
      M02_AXI_bvalid => axi_interconnect_0_M02_AXI_BVALID,
      M02_AXI_rdata(31 downto 0) => axi_interconnect_0_M02_AXI_RDATA(31 downto 0),
      M02_AXI_rready => axi_interconnect_0_M02_AXI_RREADY,
      M02_AXI_rresp(1 downto 0) => axi_interconnect_0_M02_AXI_RRESP(1 downto 0),
      M02_AXI_rvalid => axi_interconnect_0_M02_AXI_RVALID,
      M02_AXI_wdata(31 downto 0) => axi_interconnect_0_M02_AXI_WDATA(31 downto 0),
      M02_AXI_wready => axi_interconnect_0_M02_AXI_WREADY,
      M02_AXI_wstrb(3 downto 0) => axi_interconnect_0_M02_AXI_WSTRB(3 downto 0),
      M02_AXI_wvalid => axi_interconnect_0_M02_AXI_WVALID,
      S00_ACLK => m_axi_mm2s_aclk_1,
      S00_ARESETN => axi_resetn_1,
      S00_AXI_araddr(31 downto 0) => Conn8_ARADDR(31 downto 0),
      S00_AXI_arburst(1 downto 0) => Conn8_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => Conn8_ARCACHE(3 downto 0),
      S00_AXI_arid(11 downto 0) => Conn8_ARID(11 downto 0),
      S00_AXI_arlen(3 downto 0) => Conn8_ARLEN(3 downto 0),
      S00_AXI_arlock(1 downto 0) => Conn8_ARLOCK(1 downto 0),
      S00_AXI_arprot(2 downto 0) => Conn8_ARPROT(2 downto 0),
      S00_AXI_arqos(3 downto 0) => Conn8_ARQOS(3 downto 0),
      S00_AXI_arready => Conn8_ARREADY,
      S00_AXI_arsize(2 downto 0) => Conn8_ARSIZE(2 downto 0),
      S00_AXI_arvalid => Conn8_ARVALID,
      S00_AXI_awaddr(31 downto 0) => Conn8_AWADDR(31 downto 0),
      S00_AXI_awburst(1 downto 0) => Conn8_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => Conn8_AWCACHE(3 downto 0),
      S00_AXI_awid(11 downto 0) => Conn8_AWID(11 downto 0),
      S00_AXI_awlen(3 downto 0) => Conn8_AWLEN(3 downto 0),
      S00_AXI_awlock(1 downto 0) => Conn8_AWLOCK(1 downto 0),
      S00_AXI_awprot(2 downto 0) => Conn8_AWPROT(2 downto 0),
      S00_AXI_awqos(3 downto 0) => Conn8_AWQOS(3 downto 0),
      S00_AXI_awready => Conn8_AWREADY,
      S00_AXI_awsize(2 downto 0) => Conn8_AWSIZE(2 downto 0),
      S00_AXI_awvalid => Conn8_AWVALID,
      S00_AXI_bid(11 downto 0) => Conn8_BID(11 downto 0),
      S00_AXI_bready => Conn8_BREADY,
      S00_AXI_bresp(1 downto 0) => Conn8_BRESP(1 downto 0),
      S00_AXI_bvalid => Conn8_BVALID,
      S00_AXI_rdata(31 downto 0) => Conn8_RDATA(31 downto 0),
      S00_AXI_rid(11 downto 0) => Conn8_RID(11 downto 0),
      S00_AXI_rlast => Conn8_RLAST,
      S00_AXI_rready => Conn8_RREADY,
      S00_AXI_rresp(1 downto 0) => Conn8_RRESP(1 downto 0),
      S00_AXI_rvalid => Conn8_RVALID,
      S00_AXI_wdata(31 downto 0) => Conn8_WDATA(31 downto 0),
      S00_AXI_wid(11 downto 0) => Conn8_WID(11 downto 0),
      S00_AXI_wlast => Conn8_WLAST,
      S00_AXI_wready => Conn8_WREADY,
      S00_AXI_wstrb(3 downto 0) => Conn8_WSTRB(3 downto 0),
      S00_AXI_wvalid => Conn8_WVALID
    );
axi_interconnect_1: entity work.img_proc_axi_interconnect_1_0
     port map (
      ACLK => m_axi_mm2s_aclk_1,
      ARESETN => ARESETN_1,
      M00_ACLK => m_axi_mm2s_aclk_1,
      M00_ARESETN => axi_resetn_1,
      M00_AXI_araddr(31 downto 0) => Conn1_ARADDR(31 downto 0),
      M00_AXI_arburst(1 downto 0) => Conn1_ARBURST(1 downto 0),
      M00_AXI_arcache(3 downto 0) => Conn1_ARCACHE(3 downto 0),
      M00_AXI_arid(0) => Conn1_ARID(0),
      M00_AXI_arlen(3 downto 0) => Conn1_ARLEN(3 downto 0),
      M00_AXI_arlock(1 downto 0) => Conn1_ARLOCK(1 downto 0),
      M00_AXI_arprot(2 downto 0) => Conn1_ARPROT(2 downto 0),
      M00_AXI_arqos(3 downto 0) => Conn1_ARQOS(3 downto 0),
      M00_AXI_arready => Conn1_ARREADY,
      M00_AXI_arsize(2 downto 0) => Conn1_ARSIZE(2 downto 0),
      M00_AXI_arvalid => Conn1_ARVALID,
      M00_AXI_awaddr(31 downto 0) => Conn1_AWADDR(31 downto 0),
      M00_AXI_awburst(1 downto 0) => Conn1_AWBURST(1 downto 0),
      M00_AXI_awcache(3 downto 0) => Conn1_AWCACHE(3 downto 0),
      M00_AXI_awid(0) => Conn1_AWID(0),
      M00_AXI_awlen(3 downto 0) => Conn1_AWLEN(3 downto 0),
      M00_AXI_awlock(1 downto 0) => Conn1_AWLOCK(1 downto 0),
      M00_AXI_awprot(2 downto 0) => Conn1_AWPROT(2 downto 0),
      M00_AXI_awqos(3 downto 0) => Conn1_AWQOS(3 downto 0),
      M00_AXI_awready => Conn1_AWREADY,
      M00_AXI_awsize(2 downto 0) => Conn1_AWSIZE(2 downto 0),
      M00_AXI_awvalid => Conn1_AWVALID,
      M00_AXI_bid(5 downto 0) => Conn1_BID(5 downto 0),
      M00_AXI_bready => Conn1_BREADY,
      M00_AXI_bresp(1 downto 0) => Conn1_BRESP(1 downto 0),
      M00_AXI_bvalid => Conn1_BVALID,
      M00_AXI_rdata(63 downto 0) => Conn1_RDATA(63 downto 0),
      M00_AXI_rid(5 downto 0) => Conn1_RID(5 downto 0),
      M00_AXI_rlast => Conn1_RLAST,
      M00_AXI_rready => Conn1_RREADY,
      M00_AXI_rresp(1 downto 0) => Conn1_RRESP(1 downto 0),
      M00_AXI_rvalid => Conn1_RVALID,
      M00_AXI_wdata(63 downto 0) => Conn1_WDATA(63 downto 0),
      M00_AXI_wid(0) => Conn1_WID(0),
      M00_AXI_wlast => Conn1_WLAST,
      M00_AXI_wready => Conn1_WREADY,
      M00_AXI_wstrb(7 downto 0) => Conn1_WSTRB(7 downto 0),
      M00_AXI_wvalid => Conn1_WVALID,
      S00_ACLK => m_axi_mm2s_aclk_1,
      S00_ARESETN => axi_resetn_1,
      S00_AXI_araddr => '0',
      S00_AXI_arburst => '0',
      S00_AXI_arcache => '0',
      S00_AXI_arid => '0',
      S00_AXI_arlen => '0',
      S00_AXI_arlock => '0',
      S00_AXI_arprot => '0',
      S00_AXI_arqos => '0',
      S00_AXI_arready => NLW_axi_interconnect_1_S00_AXI_arready_UNCONNECTED,
      S00_AXI_arsize => '0',
      S00_AXI_arvalid => '0',
      S00_AXI_awaddr => '0',
      S00_AXI_awburst => '0',
      S00_AXI_awcache => '0',
      S00_AXI_awid => '0',
      S00_AXI_awlen => '0',
      S00_AXI_awlock => '0',
      S00_AXI_awprot => '0',
      S00_AXI_awqos => '0',
      S00_AXI_awready => NLW_axi_interconnect_1_S00_AXI_awready_UNCONNECTED,
      S00_AXI_awsize => '0',
      S00_AXI_awvalid => '0',
      S00_AXI_bid => NLW_axi_interconnect_1_S00_AXI_bid_UNCONNECTED,
      S00_AXI_bready => '0',
      S00_AXI_bresp => NLW_axi_interconnect_1_S00_AXI_bresp_UNCONNECTED,
      S00_AXI_bvalid => NLW_axi_interconnect_1_S00_AXI_bvalid_UNCONNECTED,
      S00_AXI_rdata => NLW_axi_interconnect_1_S00_AXI_rdata_UNCONNECTED,
      S00_AXI_rid => NLW_axi_interconnect_1_S00_AXI_rid_UNCONNECTED,
      S00_AXI_rlast => NLW_axi_interconnect_1_S00_AXI_rlast_UNCONNECTED,
      S00_AXI_rready => '0',
      S00_AXI_rresp => NLW_axi_interconnect_1_S00_AXI_rresp_UNCONNECTED,
      S00_AXI_rvalid => NLW_axi_interconnect_1_S00_AXI_rvalid_UNCONNECTED,
      S00_AXI_wdata => '0',
      S00_AXI_wlast => '0',
      S00_AXI_wready => NLW_axi_interconnect_1_S00_AXI_wready_UNCONNECTED,
      S00_AXI_wstrb => '0',
      S00_AXI_wvalid => '0',
      S01_ACLK => m_axi_mm2s_aclk_1,
      S01_ARESETN => axi_resetn_1,
      S01_AXI_awaddr(31 downto 0) => axi_vdma_0_M_AXI_S2MM_AWADDR(31 downto 0),
      S01_AXI_awburst(1 downto 0) => axi_vdma_0_M_AXI_S2MM_AWBURST(1 downto 0),
      S01_AXI_awcache(3 downto 0) => axi_vdma_0_M_AXI_S2MM_AWCACHE(3 downto 0),
      S01_AXI_awlen(7 downto 0) => axi_vdma_0_M_AXI_S2MM_AWLEN(7 downto 0),
      S01_AXI_awprot(2 downto 0) => axi_vdma_0_M_AXI_S2MM_AWPROT(2 downto 0),
      S01_AXI_awready(0) => axi_vdma_0_M_AXI_S2MM_AWREADY(0),
      S01_AXI_awsize(2 downto 0) => axi_vdma_0_M_AXI_S2MM_AWSIZE(2 downto 0),
      S01_AXI_awvalid(0) => axi_vdma_0_M_AXI_S2MM_AWVALID,
      S01_AXI_bready(0) => axi_vdma_0_M_AXI_S2MM_BREADY,
      S01_AXI_bresp(1 downto 0) => axi_vdma_0_M_AXI_S2MM_BRESP(1 downto 0),
      S01_AXI_bvalid(0) => axi_vdma_0_M_AXI_S2MM_BVALID(0),
      S01_AXI_wdata(63 downto 0) => axi_vdma_0_M_AXI_S2MM_WDATA(63 downto 0),
      S01_AXI_wlast(0) => axi_vdma_0_M_AXI_S2MM_WLAST,
      S01_AXI_wready(0) => axi_vdma_0_M_AXI_S2MM_WREADY(0),
      S01_AXI_wstrb(7 downto 0) => axi_vdma_0_M_AXI_S2MM_WSTRB(7 downto 0),
      S01_AXI_wvalid(0) => axi_vdma_0_M_AXI_S2MM_WVALID
    );
axi_vdma_0: component img_proc_axi_vdma_0_0
     port map (
      axi_resetn => axi_resetn_1,
      m_axi_s2mm_aclk => m_axi_mm2s_aclk_1,
      m_axi_s2mm_awaddr(31 downto 0) => axi_vdma_0_M_AXI_S2MM_AWADDR(31 downto 0),
      m_axi_s2mm_awburst(1 downto 0) => axi_vdma_0_M_AXI_S2MM_AWBURST(1 downto 0),
      m_axi_s2mm_awcache(3 downto 0) => axi_vdma_0_M_AXI_S2MM_AWCACHE(3 downto 0),
      m_axi_s2mm_awlen(7 downto 0) => axi_vdma_0_M_AXI_S2MM_AWLEN(7 downto 0),
      m_axi_s2mm_awprot(2 downto 0) => axi_vdma_0_M_AXI_S2MM_AWPROT(2 downto 0),
      m_axi_s2mm_awready => axi_vdma_0_M_AXI_S2MM_AWREADY(0),
      m_axi_s2mm_awsize(2 downto 0) => axi_vdma_0_M_AXI_S2MM_AWSIZE(2 downto 0),
      m_axi_s2mm_awvalid => axi_vdma_0_M_AXI_S2MM_AWVALID,
      m_axi_s2mm_bready => axi_vdma_0_M_AXI_S2MM_BREADY,
      m_axi_s2mm_bresp(1 downto 0) => axi_vdma_0_M_AXI_S2MM_BRESP(1 downto 0),
      m_axi_s2mm_bvalid => axi_vdma_0_M_AXI_S2MM_BVALID(0),
      m_axi_s2mm_wdata(63 downto 0) => axi_vdma_0_M_AXI_S2MM_WDATA(63 downto 0),
      m_axi_s2mm_wlast => axi_vdma_0_M_AXI_S2MM_WLAST,
      m_axi_s2mm_wready => axi_vdma_0_M_AXI_S2MM_WREADY(0),
      m_axi_s2mm_wstrb(7 downto 0) => axi_vdma_0_M_AXI_S2MM_WSTRB(7 downto 0),
      m_axi_s2mm_wvalid => axi_vdma_0_M_AXI_S2MM_WVALID,
      s2mm_frame_ptr_in(5 downto 0) => B"000000",
      s2mm_frame_ptr_out(5 downto 0) => NLW_axi_vdma_0_s2mm_frame_ptr_out_UNCONNECTED(5 downto 0),
      s2mm_introut => NLW_axi_vdma_0_s2mm_introut_UNCONNECTED,
      s_axi_lite_aclk => m_axi_mm2s_aclk_1,
      s_axi_lite_araddr(8 downto 0) => axi_interconnect_0_M00_AXI_ARADDR(8 downto 0),
      s_axi_lite_arready => axi_interconnect_0_M00_AXI_ARREADY,
      s_axi_lite_arvalid => axi_interconnect_0_M00_AXI_ARVALID(0),
      s_axi_lite_awaddr(8 downto 0) => axi_interconnect_0_M00_AXI_AWADDR(8 downto 0),
      s_axi_lite_awready => axi_interconnect_0_M00_AXI_AWREADY,
      s_axi_lite_awvalid => axi_interconnect_0_M00_AXI_AWVALID(0),
      s_axi_lite_bready => axi_interconnect_0_M00_AXI_BREADY(0),
      s_axi_lite_bresp(1 downto 0) => axi_interconnect_0_M00_AXI_BRESP(1 downto 0),
      s_axi_lite_bvalid => axi_interconnect_0_M00_AXI_BVALID,
      s_axi_lite_rdata(31 downto 0) => axi_interconnect_0_M00_AXI_RDATA(31 downto 0),
      s_axi_lite_rready => axi_interconnect_0_M00_AXI_RREADY(0),
      s_axi_lite_rresp(1 downto 0) => axi_interconnect_0_M00_AXI_RRESP(1 downto 0),
      s_axi_lite_rvalid => axi_interconnect_0_M00_AXI_RVALID,
      s_axi_lite_wdata(31 downto 0) => axi_interconnect_0_M00_AXI_WDATA(31 downto 0),
      s_axi_lite_wready => axi_interconnect_0_M00_AXI_WREADY,
      s_axi_lite_wvalid => axi_interconnect_0_M00_AXI_WVALID(0),
      s_axis_s2mm_aclk => video_stream_mux_0_m_axis_s2mm_aclk,
      s_axis_s2mm_tdata(23 downto 0) => video_stream_mux_0_m_axis_s2mm_TDATA(23 downto 0),
      s_axis_s2mm_tkeep(2 downto 0) => video_stream_mux_0_m_axis_s2mm_TKEEP(2 downto 0),
      s_axis_s2mm_tlast => video_stream_mux_0_m_axis_s2mm_TLAST,
      s_axis_s2mm_tready => video_stream_mux_0_m_axis_s2mm_TREADY,
      s_axis_s2mm_tuser(0) => video_stream_mux_0_m_axis_s2mm_TUSER(0),
      s_axis_s2mm_tvalid => video_stream_mux_0_m_axis_s2mm_TVALID
    );
v_tpg_0: component img_proc_v_tpg_0_0
     port map (
      ap_clk => m_axi_mm2s_aclk_1,
      ap_rst_n => axi_resetn_1,
      fid(0) => NLW_v_tpg_0_fid_UNCONNECTED(0),
      fid_in(0) => '1',
      interrupt => NLW_v_tpg_0_interrupt_UNCONNECTED,
      m_axis_video_TDATA(23 downto 0) => v_tpg_0_m_axis_video_TDATA(23 downto 0),
      m_axis_video_TDEST(0) => v_tpg_0_m_axis_video_TDEST(0),
      m_axis_video_TID(0) => v_tpg_0_m_axis_video_TID(0),
      m_axis_video_TKEEP(2 downto 0) => v_tpg_0_m_axis_video_TKEEP(2 downto 0),
      m_axis_video_TLAST(0) => v_tpg_0_m_axis_video_TLAST(0),
      m_axis_video_TREADY => v_tpg_0_m_axis_video_TREADY,
      m_axis_video_TSTRB(2 downto 0) => v_tpg_0_m_axis_video_TSTRB(2 downto 0),
      m_axis_video_TUSER(0) => v_tpg_0_m_axis_video_TUSER(0),
      m_axis_video_TVALID => v_tpg_0_m_axis_video_TVALID,
      s_axi_CTRL_ARADDR(7 downto 0) => axi_interconnect_0_M02_AXI_ARADDR(7 downto 0),
      s_axi_CTRL_ARREADY => axi_interconnect_0_M02_AXI_ARREADY,
      s_axi_CTRL_ARVALID => axi_interconnect_0_M02_AXI_ARVALID,
      s_axi_CTRL_AWADDR(7 downto 0) => axi_interconnect_0_M02_AXI_AWADDR(7 downto 0),
      s_axi_CTRL_AWREADY => axi_interconnect_0_M02_AXI_AWREADY,
      s_axi_CTRL_AWVALID => axi_interconnect_0_M02_AXI_AWVALID,
      s_axi_CTRL_BREADY => axi_interconnect_0_M02_AXI_BREADY,
      s_axi_CTRL_BRESP(1 downto 0) => axi_interconnect_0_M02_AXI_BRESP(1 downto 0),
      s_axi_CTRL_BVALID => axi_interconnect_0_M02_AXI_BVALID,
      s_axi_CTRL_RDATA(31 downto 0) => axi_interconnect_0_M02_AXI_RDATA(31 downto 0),
      s_axi_CTRL_RREADY => axi_interconnect_0_M02_AXI_RREADY,
      s_axi_CTRL_RRESP(1 downto 0) => axi_interconnect_0_M02_AXI_RRESP(1 downto 0),
      s_axi_CTRL_RVALID => axi_interconnect_0_M02_AXI_RVALID,
      s_axi_CTRL_WDATA(31 downto 0) => axi_interconnect_0_M02_AXI_WDATA(31 downto 0),
      s_axi_CTRL_WREADY => axi_interconnect_0_M02_AXI_WREADY,
      s_axi_CTRL_WSTRB(3 downto 0) => axi_interconnect_0_M02_AXI_WSTRB(3 downto 0),
      s_axi_CTRL_WVALID => axi_interconnect_0_M02_AXI_WVALID
    );
video_stream_mux_0: component img_proc_video_stream_mux_0_0
     port map (
      ctl => ctl_1,
      m_axis_s2mm_aclk => video_stream_mux_0_m_axis_s2mm_aclk,
      m_axis_s2mm_tdata(23 downto 0) => video_stream_mux_0_m_axis_s2mm_TDATA(23 downto 0),
      m_axis_s2mm_tkeep(2 downto 0) => video_stream_mux_0_m_axis_s2mm_TKEEP(2 downto 0),
      m_axis_s2mm_tlast => video_stream_mux_0_m_axis_s2mm_TLAST,
      m_axis_s2mm_tready => video_stream_mux_0_m_axis_s2mm_TREADY,
      m_axis_s2mm_tuser(0) => video_stream_mux_0_m_axis_s2mm_TUSER(0),
      m_axis_s2mm_tvalid => video_stream_mux_0_m_axis_s2mm_TVALID,
      s_axis1_aclk => m_axi_mm2s_aclk_1,
      s_axis1_tdata(23 downto 0) => S_AXIS_S2MM_1_TDATA(23 downto 0),
      s_axis1_tkeep(2 downto 0) => B"111",
      s_axis1_tlast => S_AXIS_S2MM_1_TLAST,
      s_axis1_tready => S_AXIS_S2MM_1_TREADY,
      s_axis1_tuser(0) => S_AXIS_S2MM_1_TUSER(0),
      s_axis1_tvalid => S_AXIS_S2MM_1_TVALID,
      s_axis2_aclk => m_axi_mm2s_aclk_1,
      s_axis2_tdata(23 downto 0) => v_tpg_0_m_axis_video_TDATA(23 downto 0),
      s_axis2_tkeep(2 downto 0) => v_tpg_0_m_axis_video_TKEEP(2 downto 0),
      s_axis2_tlast => v_tpg_0_m_axis_video_TLAST(0),
      s_axis2_tready => v_tpg_0_m_axis_video_TREADY,
      s_axis2_tuser(0) => v_tpg_0_m_axis_video_TUSER(0),
      s_axis2_tvalid => v_tpg_0_m_axis_video_TVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity img_proc is
  port (
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    ctl : in STD_LOGIC;
    hdmi_in_clk_n : in STD_LOGIC;
    hdmi_in_clk_p : in STD_LOGIC;
    hdmi_in_data_n : in STD_LOGIC_VECTOR ( 2 downto 0 );
    hdmi_in_data_p : in STD_LOGIC_VECTOR ( 2 downto 0 );
    hdmi_in_ddc_scl_i : in STD_LOGIC;
    hdmi_in_ddc_scl_o : out STD_LOGIC;
    hdmi_in_ddc_scl_t : out STD_LOGIC;
    hdmi_in_ddc_sda_i : in STD_LOGIC;
    hdmi_in_ddc_sda_o : out STD_LOGIC;
    hdmi_in_ddc_sda_t : out STD_LOGIC;
    hdmi_in_hpd : out STD_LOGIC_VECTOR ( 0 to 0 );
    led_tri_o : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of img_proc : entity is "img_proc,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=img_proc,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=26,numReposBlks=15,numNonXlnxBlks=2,numHierBlks=11,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_board_cnt=1,da_clkrst_cnt=3,da_ps7_cnt=1,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of img_proc : entity is "img_proc.hwdef";
end img_proc;

architecture STRUCTURE of img_proc is
  component img_proc_processing_system7_0_0 is
  port (
    USB0_PORT_INDCTL : out STD_LOGIC_VECTOR ( 1 downto 0 );
    USB0_VBUS_PWRSELECT : out STD_LOGIC;
    USB0_VBUS_PWRFAULT : in STD_LOGIC;
    M_AXI_GP0_ARVALID : out STD_LOGIC;
    M_AXI_GP0_AWVALID : out STD_LOGIC;
    M_AXI_GP0_BREADY : out STD_LOGIC;
    M_AXI_GP0_RREADY : out STD_LOGIC;
    M_AXI_GP0_WLAST : out STD_LOGIC;
    M_AXI_GP0_WVALID : out STD_LOGIC;
    M_AXI_GP0_ARID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_AWID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_WID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ARLEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWLEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ACLK : in STD_LOGIC;
    M_AXI_GP0_ARREADY : in STD_LOGIC;
    M_AXI_GP0_AWREADY : in STD_LOGIC;
    M_AXI_GP0_BVALID : in STD_LOGIC;
    M_AXI_GP0_RLAST : in STD_LOGIC;
    M_AXI_GP0_RVALID : in STD_LOGIC;
    M_AXI_GP0_WREADY : in STD_LOGIC;
    M_AXI_GP0_BID : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_RID : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP0_ARREADY : out STD_LOGIC;
    S_AXI_HP0_AWREADY : out STD_LOGIC;
    S_AXI_HP0_BVALID : out STD_LOGIC;
    S_AXI_HP0_RLAST : out STD_LOGIC;
    S_AXI_HP0_RVALID : out STD_LOGIC;
    S_AXI_HP0_WREADY : out STD_LOGIC;
    S_AXI_HP0_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_BID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_RID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_RDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_HP0_RCOUNT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_HP0_WCOUNT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_HP0_RACOUNT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_WACOUNT : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_ACLK : in STD_LOGIC;
    S_AXI_HP0_ARVALID : in STD_LOGIC;
    S_AXI_HP0_AWVALID : in STD_LOGIC;
    S_AXI_HP0_BREADY : in STD_LOGIC;
    S_AXI_HP0_RDISSUECAP1_EN : in STD_LOGIC;
    S_AXI_HP0_RREADY : in STD_LOGIC;
    S_AXI_HP0_WLAST : in STD_LOGIC;
    S_AXI_HP0_WRISSUECAP1_EN : in STD_LOGIC;
    S_AXI_HP0_WVALID : in STD_LOGIC;
    S_AXI_HP0_ARBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_ARLOCK : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_ARSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_AWBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_AWLOCK : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_AWSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP0_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP0_ARCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_ARLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_ARQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_AWCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_AWLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_AWQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_ARID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_AWID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_WID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_WDATA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_HP0_WSTRB : in STD_LOGIC_VECTOR ( 7 downto 0 );
    FCLK_CLK0 : out STD_LOGIC;
    FCLK_RESET0_N : out STD_LOGIC;
    MIO : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    DDR_CAS_n : inout STD_LOGIC;
    DDR_CKE : inout STD_LOGIC;
    DDR_Clk_n : inout STD_LOGIC;
    DDR_Clk : inout STD_LOGIC;
    DDR_CS_n : inout STD_LOGIC;
    DDR_DRSTB : inout STD_LOGIC;
    DDR_ODT : inout STD_LOGIC;
    DDR_RAS_n : inout STD_LOGIC;
    DDR_WEB : inout STD_LOGIC;
    DDR_BankAddr : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_Addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_VRN : inout STD_LOGIC;
    DDR_VRP : inout STD_LOGIC;
    DDR_DM : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_DQ : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_DQS_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_DQS : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    PS_SRSTB : inout STD_LOGIC;
    PS_CLK : inout STD_LOGIC;
    PS_PORB : inout STD_LOGIC
  );
  end component img_proc_processing_system7_0_0;
  component img_proc_proc_sys_reset_0_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component img_proc_proc_sys_reset_0_0;
  component img_proc_xlconstant_0_1 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component img_proc_xlconstant_0_1;
  signal ctl_1 : STD_LOGIC;
  signal hdmi_decode_M_AXIS_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal hdmi_decode_M_AXIS_TLAST : STD_LOGIC;
  signal hdmi_decode_M_AXIS_TREADY : STD_LOGIC;
  signal hdmi_decode_M_AXIS_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal hdmi_decode_M_AXIS_TVALID : STD_LOGIC;
  signal hdmi_in_1_CLK_N : STD_LOGIC;
  signal hdmi_in_1_CLK_P : STD_LOGIC;
  signal hdmi_in_1_DATA_N : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal hdmi_in_1_DATA_P : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal hdmi_input_hdmi_in_ddc_SCL_I : STD_LOGIC;
  signal hdmi_input_hdmi_in_ddc_SCL_O : STD_LOGIC;
  signal hdmi_input_hdmi_in_ddc_SCL_T : STD_LOGIC;
  signal hdmi_input_hdmi_in_ddc_SDA_I : STD_LOGIC;
  signal hdmi_input_hdmi_in_ddc_SDA_O : STD_LOGIC;
  signal hdmi_input_hdmi_in_ddc_SDA_T : STD_LOGIC;
  signal proc_sys_reset_0_interconnect_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal proc_sys_reset_0_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal proc_sys_reset_0_peripheral_reset : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_DDR_ADDR : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal processing_system7_0_DDR_BA : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_DDR_CAS_N : STD_LOGIC;
  signal processing_system7_0_DDR_CKE : STD_LOGIC;
  signal processing_system7_0_DDR_CK_N : STD_LOGIC;
  signal processing_system7_0_DDR_CK_P : STD_LOGIC;
  signal processing_system7_0_DDR_CS_N : STD_LOGIC;
  signal processing_system7_0_DDR_DM : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_DDR_DQ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_DDR_DQS_N : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_DDR_DQS_P : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_DDR_ODT : STD_LOGIC;
  signal processing_system7_0_DDR_RAS_N : STD_LOGIC;
  signal processing_system7_0_DDR_RESET_N : STD_LOGIC;
  signal processing_system7_0_DDR_WE_N : STD_LOGIC;
  signal processing_system7_0_FCLK_CLK0 : STD_LOGIC;
  signal processing_system7_0_FCLK_RESET0_N : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_DDR_VRN : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_DDR_VRP : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_MIO : STD_LOGIC_VECTOR ( 53 downto 0 );
  signal processing_system7_0_FIXED_IO_PS_CLK : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_PS_PORB : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_PS_SRSTB : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_BREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_BVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_RLAST : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_RREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_RVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_WID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_WLAST : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_WREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_WVALID : STD_LOGIC;
  signal vdma_GPIO_TRI_O : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal vdma_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal vdma_M00_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal vdma_M00_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal vdma_M00_AXI_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal vdma_M00_AXI_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal vdma_M00_AXI_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal vdma_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal vdma_M00_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal vdma_M00_AXI_ARREADY : STD_LOGIC;
  signal vdma_M00_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal vdma_M00_AXI_ARVALID : STD_LOGIC;
  signal vdma_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal vdma_M00_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal vdma_M00_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal vdma_M00_AXI_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal vdma_M00_AXI_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal vdma_M00_AXI_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal vdma_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal vdma_M00_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal vdma_M00_AXI_AWREADY : STD_LOGIC;
  signal vdma_M00_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal vdma_M00_AXI_AWVALID : STD_LOGIC;
  signal vdma_M00_AXI_BID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal vdma_M00_AXI_BREADY : STD_LOGIC;
  signal vdma_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal vdma_M00_AXI_BVALID : STD_LOGIC;
  signal vdma_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal vdma_M00_AXI_RID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal vdma_M00_AXI_RLAST : STD_LOGIC;
  signal vdma_M00_AXI_RREADY : STD_LOGIC;
  signal vdma_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal vdma_M00_AXI_RVALID : STD_LOGIC;
  signal vdma_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal vdma_M00_AXI_WID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal vdma_M00_AXI_WLAST : STD_LOGIC;
  signal vdma_M00_AXI_WREADY : STD_LOGIC;
  signal vdma_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal vdma_M00_AXI_WVALID : STD_LOGIC;
  signal xlconstant_0_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_0_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_proc_sys_reset_0_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_processing_system7_0_USB0_VBUS_PWRSELECT_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_S_AXI_HP0_RACOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP0_RCOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP0_WACOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP0_WCOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_processing_system7_0_USB0_PORT_INDCTL_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of DDR_cas_n : signal is "xilinx.com:interface:ddrx:1.0 DDR CAS_N";
  attribute X_INTERFACE_INFO of DDR_ck_n : signal is "xilinx.com:interface:ddrx:1.0 DDR CK_N";
  attribute X_INTERFACE_INFO of DDR_ck_p : signal is "xilinx.com:interface:ddrx:1.0 DDR CK_P";
  attribute X_INTERFACE_INFO of DDR_cke : signal is "xilinx.com:interface:ddrx:1.0 DDR CKE";
  attribute X_INTERFACE_INFO of DDR_cs_n : signal is "xilinx.com:interface:ddrx:1.0 DDR CS_N";
  attribute X_INTERFACE_INFO of DDR_odt : signal is "xilinx.com:interface:ddrx:1.0 DDR ODT";
  attribute X_INTERFACE_INFO of DDR_ras_n : signal is "xilinx.com:interface:ddrx:1.0 DDR RAS_N";
  attribute X_INTERFACE_INFO of DDR_reset_n : signal is "xilinx.com:interface:ddrx:1.0 DDR RESET_N";
  attribute X_INTERFACE_INFO of DDR_we_n : signal is "xilinx.com:interface:ddrx:1.0 DDR WE_N";
  attribute X_INTERFACE_INFO of FIXED_IO_ddr_vrn : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRN";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of FIXED_IO_ddr_vrn : signal is "XIL_INTERFACENAME FIXED_IO, CAN_DEBUG false";
  attribute X_INTERFACE_INFO of FIXED_IO_ddr_vrp : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRP";
  attribute X_INTERFACE_INFO of FIXED_IO_ps_clk : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_CLK";
  attribute X_INTERFACE_INFO of FIXED_IO_ps_porb : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_PORB";
  attribute X_INTERFACE_INFO of FIXED_IO_ps_srstb : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_SRSTB";
  attribute X_INTERFACE_INFO of hdmi_in_clk_n : signal is "digilentinc.com:interface:tmds:1.0 hdmi_in CLK_N";
  attribute X_INTERFACE_INFO of hdmi_in_clk_p : signal is "digilentinc.com:interface:tmds:1.0 hdmi_in CLK_P";
  attribute X_INTERFACE_INFO of hdmi_in_ddc_scl_i : signal is "xilinx.com:interface:iic:1.0 hdmi_in_ddc SCL_I";
  attribute X_INTERFACE_INFO of hdmi_in_ddc_scl_o : signal is "xilinx.com:interface:iic:1.0 hdmi_in_ddc SCL_O";
  attribute X_INTERFACE_INFO of hdmi_in_ddc_scl_t : signal is "xilinx.com:interface:iic:1.0 hdmi_in_ddc SCL_T";
  attribute X_INTERFACE_INFO of hdmi_in_ddc_sda_i : signal is "xilinx.com:interface:iic:1.0 hdmi_in_ddc SDA_I";
  attribute X_INTERFACE_INFO of hdmi_in_ddc_sda_o : signal is "xilinx.com:interface:iic:1.0 hdmi_in_ddc SDA_O";
  attribute X_INTERFACE_INFO of hdmi_in_ddc_sda_t : signal is "xilinx.com:interface:iic:1.0 hdmi_in_ddc SDA_T";
  attribute X_INTERFACE_INFO of DDR_addr : signal is "xilinx.com:interface:ddrx:1.0 DDR ADDR";
  attribute X_INTERFACE_PARAMETER of DDR_addr : signal is "XIL_INTERFACENAME DDR, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250";
  attribute X_INTERFACE_INFO of DDR_ba : signal is "xilinx.com:interface:ddrx:1.0 DDR BA";
  attribute X_INTERFACE_INFO of DDR_dm : signal is "xilinx.com:interface:ddrx:1.0 DDR DM";
  attribute X_INTERFACE_INFO of DDR_dq : signal is "xilinx.com:interface:ddrx:1.0 DDR DQ";
  attribute X_INTERFACE_INFO of DDR_dqs_n : signal is "xilinx.com:interface:ddrx:1.0 DDR DQS_N";
  attribute X_INTERFACE_INFO of DDR_dqs_p : signal is "xilinx.com:interface:ddrx:1.0 DDR DQS_P";
  attribute X_INTERFACE_INFO of FIXED_IO_mio : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO MIO";
  attribute X_INTERFACE_INFO of hdmi_in_data_n : signal is "digilentinc.com:interface:tmds:1.0 hdmi_in DATA_N";
  attribute X_INTERFACE_INFO of hdmi_in_data_p : signal is "digilentinc.com:interface:tmds:1.0 hdmi_in DATA_P";
  attribute X_INTERFACE_INFO of led_tri_o : signal is "xilinx.com:interface:gpio:1.0 led TRI_O";
begin
  ctl_1 <= ctl;
  hdmi_in_1_CLK_N <= hdmi_in_clk_n;
  hdmi_in_1_CLK_P <= hdmi_in_clk_p;
  hdmi_in_1_DATA_N(2 downto 0) <= hdmi_in_data_n(2 downto 0);
  hdmi_in_1_DATA_P(2 downto 0) <= hdmi_in_data_p(2 downto 0);
  hdmi_in_ddc_scl_o <= hdmi_input_hdmi_in_ddc_SCL_O;
  hdmi_in_ddc_scl_t <= hdmi_input_hdmi_in_ddc_SCL_T;
  hdmi_in_ddc_sda_o <= hdmi_input_hdmi_in_ddc_SDA_O;
  hdmi_in_ddc_sda_t <= hdmi_input_hdmi_in_ddc_SDA_T;
  hdmi_in_hpd(0) <= xlconstant_0_dout(0);
  hdmi_input_hdmi_in_ddc_SCL_I <= hdmi_in_ddc_scl_i;
  hdmi_input_hdmi_in_ddc_SDA_I <= hdmi_in_ddc_sda_i;
  led_tri_o(3 downto 0) <= vdma_GPIO_TRI_O(3 downto 0);
hdmi_decode: entity work.hdmi_decode_imp_1TQ02U7
     port map (
      M_AXIS_tdata(23 downto 0) => hdmi_decode_M_AXIS_TDATA(23 downto 0),
      M_AXIS_tlast => hdmi_decode_M_AXIS_TLAST,
      M_AXIS_tready => hdmi_decode_M_AXIS_TREADY,
      M_AXIS_tuser(0) => hdmi_decode_M_AXIS_TUSER(0),
      M_AXIS_tvalid => hdmi_decode_M_AXIS_TVALID,
      RefClk => processing_system7_0_FCLK_CLK0,
      aRst => proc_sys_reset_0_peripheral_aresetn(0),
      aclken => xlconstant_0_dout(0),
      hdmi_in_clk_n => hdmi_in_1_CLK_N,
      hdmi_in_clk_p => hdmi_in_1_CLK_P,
      hdmi_in_data_n(2 downto 0) => hdmi_in_1_DATA_N(2 downto 0),
      hdmi_in_data_p(2 downto 0) => hdmi_in_1_DATA_P(2 downto 0),
      hdmi_in_ddc_scl_i => hdmi_input_hdmi_in_ddc_SCL_I,
      hdmi_in_ddc_scl_o => hdmi_input_hdmi_in_ddc_SCL_O,
      hdmi_in_ddc_scl_t => hdmi_input_hdmi_in_ddc_SCL_T,
      hdmi_in_ddc_sda_i => hdmi_input_hdmi_in_ddc_SDA_I,
      hdmi_in_ddc_sda_o => hdmi_input_hdmi_in_ddc_SDA_O,
      hdmi_in_ddc_sda_t => hdmi_input_hdmi_in_ddc_SDA_T,
      vid_io_in_reset => proc_sys_reset_0_peripheral_reset(0)
    );
proc_sys_reset_0: component img_proc_proc_sys_reset_0_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_proc_sys_reset_0_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => processing_system7_0_FCLK_RESET0_N,
      interconnect_aresetn(0) => proc_sys_reset_0_interconnect_aresetn(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_proc_sys_reset_0_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => proc_sys_reset_0_peripheral_aresetn(0),
      peripheral_reset(0) => proc_sys_reset_0_peripheral_reset(0),
      slowest_sync_clk => processing_system7_0_FCLK_CLK0
    );
processing_system7_0: component img_proc_processing_system7_0_0
     port map (
      DDR_Addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_BankAddr(2 downto 0) => DDR_ba(2 downto 0),
      DDR_CAS_n => DDR_cas_n,
      DDR_CKE => DDR_cke,
      DDR_CS_n => DDR_cs_n,
      DDR_Clk => DDR_ck_p,
      DDR_Clk_n => DDR_ck_n,
      DDR_DM(3 downto 0) => DDR_dm(3 downto 0),
      DDR_DQ(31 downto 0) => DDR_dq(31 downto 0),
      DDR_DQS(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_DQS_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_DRSTB => DDR_reset_n,
      DDR_ODT => DDR_odt,
      DDR_RAS_n => DDR_ras_n,
      DDR_VRN => FIXED_IO_ddr_vrn,
      DDR_VRP => FIXED_IO_ddr_vrp,
      DDR_WEB => DDR_we_n,
      FCLK_CLK0 => processing_system7_0_FCLK_CLK0,
      FCLK_RESET0_N => processing_system7_0_FCLK_RESET0_N,
      MIO(53 downto 0) => FIXED_IO_mio(53 downto 0),
      M_AXI_GP0_ACLK => processing_system7_0_FCLK_CLK0,
      M_AXI_GP0_ARADDR(31 downto 0) => processing_system7_0_M_AXI_GP0_ARADDR(31 downto 0),
      M_AXI_GP0_ARBURST(1 downto 0) => processing_system7_0_M_AXI_GP0_ARBURST(1 downto 0),
      M_AXI_GP0_ARCACHE(3 downto 0) => processing_system7_0_M_AXI_GP0_ARCACHE(3 downto 0),
      M_AXI_GP0_ARID(11 downto 0) => processing_system7_0_M_AXI_GP0_ARID(11 downto 0),
      M_AXI_GP0_ARLEN(3 downto 0) => processing_system7_0_M_AXI_GP0_ARLEN(3 downto 0),
      M_AXI_GP0_ARLOCK(1 downto 0) => processing_system7_0_M_AXI_GP0_ARLOCK(1 downto 0),
      M_AXI_GP0_ARPROT(2 downto 0) => processing_system7_0_M_AXI_GP0_ARPROT(2 downto 0),
      M_AXI_GP0_ARQOS(3 downto 0) => processing_system7_0_M_AXI_GP0_ARQOS(3 downto 0),
      M_AXI_GP0_ARREADY => processing_system7_0_M_AXI_GP0_ARREADY,
      M_AXI_GP0_ARSIZE(2 downto 0) => processing_system7_0_M_AXI_GP0_ARSIZE(2 downto 0),
      M_AXI_GP0_ARVALID => processing_system7_0_M_AXI_GP0_ARVALID,
      M_AXI_GP0_AWADDR(31 downto 0) => processing_system7_0_M_AXI_GP0_AWADDR(31 downto 0),
      M_AXI_GP0_AWBURST(1 downto 0) => processing_system7_0_M_AXI_GP0_AWBURST(1 downto 0),
      M_AXI_GP0_AWCACHE(3 downto 0) => processing_system7_0_M_AXI_GP0_AWCACHE(3 downto 0),
      M_AXI_GP0_AWID(11 downto 0) => processing_system7_0_M_AXI_GP0_AWID(11 downto 0),
      M_AXI_GP0_AWLEN(3 downto 0) => processing_system7_0_M_AXI_GP0_AWLEN(3 downto 0),
      M_AXI_GP0_AWLOCK(1 downto 0) => processing_system7_0_M_AXI_GP0_AWLOCK(1 downto 0),
      M_AXI_GP0_AWPROT(2 downto 0) => processing_system7_0_M_AXI_GP0_AWPROT(2 downto 0),
      M_AXI_GP0_AWQOS(3 downto 0) => processing_system7_0_M_AXI_GP0_AWQOS(3 downto 0),
      M_AXI_GP0_AWREADY => processing_system7_0_M_AXI_GP0_AWREADY,
      M_AXI_GP0_AWSIZE(2 downto 0) => processing_system7_0_M_AXI_GP0_AWSIZE(2 downto 0),
      M_AXI_GP0_AWVALID => processing_system7_0_M_AXI_GP0_AWVALID,
      M_AXI_GP0_BID(11 downto 0) => processing_system7_0_M_AXI_GP0_BID(11 downto 0),
      M_AXI_GP0_BREADY => processing_system7_0_M_AXI_GP0_BREADY,
      M_AXI_GP0_BRESP(1 downto 0) => processing_system7_0_M_AXI_GP0_BRESP(1 downto 0),
      M_AXI_GP0_BVALID => processing_system7_0_M_AXI_GP0_BVALID,
      M_AXI_GP0_RDATA(31 downto 0) => processing_system7_0_M_AXI_GP0_RDATA(31 downto 0),
      M_AXI_GP0_RID(11 downto 0) => processing_system7_0_M_AXI_GP0_RID(11 downto 0),
      M_AXI_GP0_RLAST => processing_system7_0_M_AXI_GP0_RLAST,
      M_AXI_GP0_RREADY => processing_system7_0_M_AXI_GP0_RREADY,
      M_AXI_GP0_RRESP(1 downto 0) => processing_system7_0_M_AXI_GP0_RRESP(1 downto 0),
      M_AXI_GP0_RVALID => processing_system7_0_M_AXI_GP0_RVALID,
      M_AXI_GP0_WDATA(31 downto 0) => processing_system7_0_M_AXI_GP0_WDATA(31 downto 0),
      M_AXI_GP0_WID(11 downto 0) => processing_system7_0_M_AXI_GP0_WID(11 downto 0),
      M_AXI_GP0_WLAST => processing_system7_0_M_AXI_GP0_WLAST,
      M_AXI_GP0_WREADY => processing_system7_0_M_AXI_GP0_WREADY,
      M_AXI_GP0_WSTRB(3 downto 0) => processing_system7_0_M_AXI_GP0_WSTRB(3 downto 0),
      M_AXI_GP0_WVALID => processing_system7_0_M_AXI_GP0_WVALID,
      PS_CLK => FIXED_IO_ps_clk,
      PS_PORB => FIXED_IO_ps_porb,
      PS_SRSTB => FIXED_IO_ps_srstb,
      S_AXI_HP0_ACLK => processing_system7_0_FCLK_CLK0,
      S_AXI_HP0_ARADDR(31 downto 0) => vdma_M00_AXI_ARADDR(31 downto 0),
      S_AXI_HP0_ARBURST(1 downto 0) => vdma_M00_AXI_ARBURST(1 downto 0),
      S_AXI_HP0_ARCACHE(3 downto 0) => vdma_M00_AXI_ARCACHE(3 downto 0),
      S_AXI_HP0_ARID(5 downto 1) => B"00000",
      S_AXI_HP0_ARID(0) => vdma_M00_AXI_ARID(0),
      S_AXI_HP0_ARLEN(3 downto 0) => vdma_M00_AXI_ARLEN(3 downto 0),
      S_AXI_HP0_ARLOCK(1 downto 0) => vdma_M00_AXI_ARLOCK(1 downto 0),
      S_AXI_HP0_ARPROT(2 downto 0) => vdma_M00_AXI_ARPROT(2 downto 0),
      S_AXI_HP0_ARQOS(3 downto 0) => vdma_M00_AXI_ARQOS(3 downto 0),
      S_AXI_HP0_ARREADY => vdma_M00_AXI_ARREADY,
      S_AXI_HP0_ARSIZE(2 downto 0) => vdma_M00_AXI_ARSIZE(2 downto 0),
      S_AXI_HP0_ARVALID => vdma_M00_AXI_ARVALID,
      S_AXI_HP0_AWADDR(31 downto 0) => vdma_M00_AXI_AWADDR(31 downto 0),
      S_AXI_HP0_AWBURST(1 downto 0) => vdma_M00_AXI_AWBURST(1 downto 0),
      S_AXI_HP0_AWCACHE(3 downto 0) => vdma_M00_AXI_AWCACHE(3 downto 0),
      S_AXI_HP0_AWID(5 downto 1) => B"00000",
      S_AXI_HP0_AWID(0) => vdma_M00_AXI_AWID(0),
      S_AXI_HP0_AWLEN(3 downto 0) => vdma_M00_AXI_AWLEN(3 downto 0),
      S_AXI_HP0_AWLOCK(1 downto 0) => vdma_M00_AXI_AWLOCK(1 downto 0),
      S_AXI_HP0_AWPROT(2 downto 0) => vdma_M00_AXI_AWPROT(2 downto 0),
      S_AXI_HP0_AWQOS(3 downto 0) => vdma_M00_AXI_AWQOS(3 downto 0),
      S_AXI_HP0_AWREADY => vdma_M00_AXI_AWREADY,
      S_AXI_HP0_AWSIZE(2 downto 0) => vdma_M00_AXI_AWSIZE(2 downto 0),
      S_AXI_HP0_AWVALID => vdma_M00_AXI_AWVALID,
      S_AXI_HP0_BID(5 downto 0) => vdma_M00_AXI_BID(5 downto 0),
      S_AXI_HP0_BREADY => vdma_M00_AXI_BREADY,
      S_AXI_HP0_BRESP(1 downto 0) => vdma_M00_AXI_BRESP(1 downto 0),
      S_AXI_HP0_BVALID => vdma_M00_AXI_BVALID,
      S_AXI_HP0_RACOUNT(2 downto 0) => NLW_processing_system7_0_S_AXI_HP0_RACOUNT_UNCONNECTED(2 downto 0),
      S_AXI_HP0_RCOUNT(7 downto 0) => NLW_processing_system7_0_S_AXI_HP0_RCOUNT_UNCONNECTED(7 downto 0),
      S_AXI_HP0_RDATA(63 downto 0) => vdma_M00_AXI_RDATA(63 downto 0),
      S_AXI_HP0_RDISSUECAP1_EN => '0',
      S_AXI_HP0_RID(5 downto 0) => vdma_M00_AXI_RID(5 downto 0),
      S_AXI_HP0_RLAST => vdma_M00_AXI_RLAST,
      S_AXI_HP0_RREADY => vdma_M00_AXI_RREADY,
      S_AXI_HP0_RRESP(1 downto 0) => vdma_M00_AXI_RRESP(1 downto 0),
      S_AXI_HP0_RVALID => vdma_M00_AXI_RVALID,
      S_AXI_HP0_WACOUNT(5 downto 0) => NLW_processing_system7_0_S_AXI_HP0_WACOUNT_UNCONNECTED(5 downto 0),
      S_AXI_HP0_WCOUNT(7 downto 0) => NLW_processing_system7_0_S_AXI_HP0_WCOUNT_UNCONNECTED(7 downto 0),
      S_AXI_HP0_WDATA(63 downto 0) => vdma_M00_AXI_WDATA(63 downto 0),
      S_AXI_HP0_WID(5 downto 1) => B"00000",
      S_AXI_HP0_WID(0) => vdma_M00_AXI_WID(0),
      S_AXI_HP0_WLAST => vdma_M00_AXI_WLAST,
      S_AXI_HP0_WREADY => vdma_M00_AXI_WREADY,
      S_AXI_HP0_WRISSUECAP1_EN => '0',
      S_AXI_HP0_WSTRB(7 downto 0) => vdma_M00_AXI_WSTRB(7 downto 0),
      S_AXI_HP0_WVALID => vdma_M00_AXI_WVALID,
      USB0_PORT_INDCTL(1 downto 0) => NLW_processing_system7_0_USB0_PORT_INDCTL_UNCONNECTED(1 downto 0),
      USB0_VBUS_PWRFAULT => '0',
      USB0_VBUS_PWRSELECT => NLW_processing_system7_0_USB0_VBUS_PWRSELECT_UNCONNECTED
    );
vdma: entity work.vdma_imp_QLRT7Y
     port map (
      ARESETN => proc_sys_reset_0_interconnect_aresetn(0),
      GPIO_tri_o(3 downto 0) => vdma_GPIO_TRI_O(3 downto 0),
      M00_AXI_araddr(31 downto 0) => vdma_M00_AXI_ARADDR(31 downto 0),
      M00_AXI_arburst(1 downto 0) => vdma_M00_AXI_ARBURST(1 downto 0),
      M00_AXI_arcache(3 downto 0) => vdma_M00_AXI_ARCACHE(3 downto 0),
      M00_AXI_arid(0) => vdma_M00_AXI_ARID(0),
      M00_AXI_arlen(3 downto 0) => vdma_M00_AXI_ARLEN(3 downto 0),
      M00_AXI_arlock(1 downto 0) => vdma_M00_AXI_ARLOCK(1 downto 0),
      M00_AXI_arprot(2 downto 0) => vdma_M00_AXI_ARPROT(2 downto 0),
      M00_AXI_arqos(3 downto 0) => vdma_M00_AXI_ARQOS(3 downto 0),
      M00_AXI_arready => vdma_M00_AXI_ARREADY,
      M00_AXI_arsize(2 downto 0) => vdma_M00_AXI_ARSIZE(2 downto 0),
      M00_AXI_arvalid => vdma_M00_AXI_ARVALID,
      M00_AXI_awaddr(31 downto 0) => vdma_M00_AXI_AWADDR(31 downto 0),
      M00_AXI_awburst(1 downto 0) => vdma_M00_AXI_AWBURST(1 downto 0),
      M00_AXI_awcache(3 downto 0) => vdma_M00_AXI_AWCACHE(3 downto 0),
      M00_AXI_awid(0) => vdma_M00_AXI_AWID(0),
      M00_AXI_awlen(3 downto 0) => vdma_M00_AXI_AWLEN(3 downto 0),
      M00_AXI_awlock(1 downto 0) => vdma_M00_AXI_AWLOCK(1 downto 0),
      M00_AXI_awprot(2 downto 0) => vdma_M00_AXI_AWPROT(2 downto 0),
      M00_AXI_awqos(3 downto 0) => vdma_M00_AXI_AWQOS(3 downto 0),
      M00_AXI_awready => vdma_M00_AXI_AWREADY,
      M00_AXI_awsize(2 downto 0) => vdma_M00_AXI_AWSIZE(2 downto 0),
      M00_AXI_awvalid => vdma_M00_AXI_AWVALID,
      M00_AXI_bid(5 downto 0) => vdma_M00_AXI_BID(5 downto 0),
      M00_AXI_bready => vdma_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => vdma_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => vdma_M00_AXI_BVALID,
      M00_AXI_rdata(63 downto 0) => vdma_M00_AXI_RDATA(63 downto 0),
      M00_AXI_rid(5 downto 0) => vdma_M00_AXI_RID(5 downto 0),
      M00_AXI_rlast => vdma_M00_AXI_RLAST,
      M00_AXI_rready => vdma_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => vdma_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => vdma_M00_AXI_RVALID,
      M00_AXI_wdata(63 downto 0) => vdma_M00_AXI_WDATA(63 downto 0),
      M00_AXI_wid(0) => vdma_M00_AXI_WID(0),
      M00_AXI_wlast => vdma_M00_AXI_WLAST,
      M00_AXI_wready => vdma_M00_AXI_WREADY,
      M00_AXI_wstrb(7 downto 0) => vdma_M00_AXI_WSTRB(7 downto 0),
      M00_AXI_wvalid => vdma_M00_AXI_WVALID,
      S00_AXI_araddr(31 downto 0) => processing_system7_0_M_AXI_GP0_ARADDR(31 downto 0),
      S00_AXI_arburst(1 downto 0) => processing_system7_0_M_AXI_GP0_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => processing_system7_0_M_AXI_GP0_ARCACHE(3 downto 0),
      S00_AXI_arid(11 downto 0) => processing_system7_0_M_AXI_GP0_ARID(11 downto 0),
      S00_AXI_arlen(3 downto 0) => processing_system7_0_M_AXI_GP0_ARLEN(3 downto 0),
      S00_AXI_arlock(1 downto 0) => processing_system7_0_M_AXI_GP0_ARLOCK(1 downto 0),
      S00_AXI_arprot(2 downto 0) => processing_system7_0_M_AXI_GP0_ARPROT(2 downto 0),
      S00_AXI_arqos(3 downto 0) => processing_system7_0_M_AXI_GP0_ARQOS(3 downto 0),
      S00_AXI_arready => processing_system7_0_M_AXI_GP0_ARREADY,
      S00_AXI_arsize(2 downto 0) => processing_system7_0_M_AXI_GP0_ARSIZE(2 downto 0),
      S00_AXI_arvalid => processing_system7_0_M_AXI_GP0_ARVALID,
      S00_AXI_awaddr(31 downto 0) => processing_system7_0_M_AXI_GP0_AWADDR(31 downto 0),
      S00_AXI_awburst(1 downto 0) => processing_system7_0_M_AXI_GP0_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => processing_system7_0_M_AXI_GP0_AWCACHE(3 downto 0),
      S00_AXI_awid(11 downto 0) => processing_system7_0_M_AXI_GP0_AWID(11 downto 0),
      S00_AXI_awlen(3 downto 0) => processing_system7_0_M_AXI_GP0_AWLEN(3 downto 0),
      S00_AXI_awlock(1 downto 0) => processing_system7_0_M_AXI_GP0_AWLOCK(1 downto 0),
      S00_AXI_awprot(2 downto 0) => processing_system7_0_M_AXI_GP0_AWPROT(2 downto 0),
      S00_AXI_awqos(3 downto 0) => processing_system7_0_M_AXI_GP0_AWQOS(3 downto 0),
      S00_AXI_awready => processing_system7_0_M_AXI_GP0_AWREADY,
      S00_AXI_awsize(2 downto 0) => processing_system7_0_M_AXI_GP0_AWSIZE(2 downto 0),
      S00_AXI_awvalid => processing_system7_0_M_AXI_GP0_AWVALID,
      S00_AXI_bid(11 downto 0) => processing_system7_0_M_AXI_GP0_BID(11 downto 0),
      S00_AXI_bready => processing_system7_0_M_AXI_GP0_BREADY,
      S00_AXI_bresp(1 downto 0) => processing_system7_0_M_AXI_GP0_BRESP(1 downto 0),
      S00_AXI_bvalid => processing_system7_0_M_AXI_GP0_BVALID,
      S00_AXI_rdata(31 downto 0) => processing_system7_0_M_AXI_GP0_RDATA(31 downto 0),
      S00_AXI_rid(11 downto 0) => processing_system7_0_M_AXI_GP0_RID(11 downto 0),
      S00_AXI_rlast => processing_system7_0_M_AXI_GP0_RLAST,
      S00_AXI_rready => processing_system7_0_M_AXI_GP0_RREADY,
      S00_AXI_rresp(1 downto 0) => processing_system7_0_M_AXI_GP0_RRESP(1 downto 0),
      S00_AXI_rvalid => processing_system7_0_M_AXI_GP0_RVALID,
      S00_AXI_wdata(31 downto 0) => processing_system7_0_M_AXI_GP0_WDATA(31 downto 0),
      S00_AXI_wid(11 downto 0) => processing_system7_0_M_AXI_GP0_WID(11 downto 0),
      S00_AXI_wlast => processing_system7_0_M_AXI_GP0_WLAST,
      S00_AXI_wready => processing_system7_0_M_AXI_GP0_WREADY,
      S00_AXI_wstrb(3 downto 0) => processing_system7_0_M_AXI_GP0_WSTRB(3 downto 0),
      S00_AXI_wvalid => processing_system7_0_M_AXI_GP0_WVALID,
      S_AXIS_S2MM_tdata(23 downto 0) => hdmi_decode_M_AXIS_TDATA(23 downto 0),
      S_AXIS_S2MM_tlast => hdmi_decode_M_AXIS_TLAST,
      S_AXIS_S2MM_tready => hdmi_decode_M_AXIS_TREADY,
      S_AXIS_S2MM_tuser(0) => hdmi_decode_M_AXIS_TUSER(0),
      S_AXIS_S2MM_tvalid => hdmi_decode_M_AXIS_TVALID,
      axi_resetn => proc_sys_reset_0_peripheral_aresetn(0),
      ctl => ctl_1,
      m_axi_mm2s_aclk => processing_system7_0_FCLK_CLK0
    );
xlconstant_0: component img_proc_xlconstant_0_1
     port map (
      dout(0) => xlconstant_0_dout(0)
    );
end STRUCTURE;
