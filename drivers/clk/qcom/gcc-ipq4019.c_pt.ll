; ModuleID = '/llk/IR_all_yes/drivers/clk/qcom/gcc-ipq4019.c_pt.bc'
source_filename = "../drivers/clk/qcom/gcc-ipq4019.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.qcom_cc_desc = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32 }
%struct.clk_rcg2 = type { i32, i8, i8, i8, ptr, ptr, %struct.clk_regmap, i8 }
%struct.clk_regmap = type { %struct.clk_hw, ptr, i32, i32, i8 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.qcom_reset_map = type { i32, i8 }
%struct.clk_branch = type { i32, i32, i8, i8, i8, %struct.clk_regmap }
%struct.clk_fepll = type { i32, ptr, %struct.clk_regmap_div, ptr, ptr, ptr }
%struct.clk_regmap_div = type { i32, i32, i32, %struct.clk_regmap }
%struct.parent_map = type { i8, i8 }
%struct.freq_tbl = type { i32, i8, i8, i16, i16 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_fepll_vco = type { i32, i32, i32, i32, i32 }
%struct.clk_div_table = type { i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }

@__initcall__kmod_gcc_ipq4019__170_1782_gcc_ipq4019_init1 = internal global ptr @gcc_ipq4019_init, section ".initcall1.init", align 4
@gcc_ipq4019_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @gcc_ipq4019_probe, ptr @gcc_ipq4019_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @gcc_ipq4019_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_gcc_ipq4019_exit = internal global ptr @gcc_ipq4019_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias171 = internal constant [39 x i8] c"gcc_ipq4019.alias=platform:gcc-ipq4019\00", section ".modinfo", align 1
@__UNIQUE_ID_file172 = internal constant [46 x i8] c"gcc_ipq4019.file=drivers/clk/qcom/gcc-ipq4019\00", section ".modinfo", align 1
@__UNIQUE_ID_license173 = internal constant [27 x i8] c"gcc_ipq4019.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description174 = internal constant [48 x i8] c"gcc_ipq4019.description=QCOM GCC IPQ4019 driver\00", section ".modinfo", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qcom,gcc-ipq4019\00", [47 x i8] zeroinitializer }, align 32
@gcc_ipq4019_match_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,gcc-ipq4019\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@gcc_ipq4019_desc = internal constant { %struct.qcom_cc_desc, [60 x i8] } { %struct.qcom_cc_desc { ptr @gcc_ipq4019_regmap_config, ptr @gcc_ipq4019_clocks, i32 76, ptr @gcc_ipq4019_resets, i32 72, ptr null, i32 0, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@apps_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 102412, i8 0, i8 5, i8 0, ptr @gcc_xo_ddr_500_200_map, ptr @ftbl_gcc_apps_clk, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.190 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@gcc_ipq4019_cpu_clk_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @gcc_ipq4019_cpu_clk_notifier_fn, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@gcc_ipq4019_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, i32 196607, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@gcc_ipq4019_clocks = internal global { [76 x ptr], [80 x i8] } { [76 x ptr] [ptr null, ptr getelementptr (i8, ptr @audio_clk_src, i64 16), ptr getelementptr (i8, ptr @blsp1_qup1_i2c_apps_clk_src, i64 16), ptr getelementptr (i8, ptr @blsp1_qup1_spi_apps_clk_src, i64 16), ptr getelementptr (i8, ptr @blsp1_qup2_i2c_apps_clk_src, i64 16), ptr getelementptr (i8, ptr @blsp1_qup2_spi_apps_clk_src, i64 16), ptr getelementptr (i8, ptr @blsp1_uart1_apps_clk_src, i64 16), ptr getelementptr (i8, ptr @blsp1_uart2_apps_clk_src, i64 16), ptr getelementptr (i8, ptr @usb30_mock_utmi_clk_src, i64 16), ptr getelementptr (i8, ptr @apps_clk_src, i64 16), ptr getelementptr (i8, ptr @apps_ahb_clk_src, i64 16), ptr getelementptr (i8, ptr @gp1_clk_src, i64 16), ptr getelementptr (i8, ptr @gp2_clk_src, i64 16), ptr getelementptr (i8, ptr @gp3_clk_src, i64 16), ptr getelementptr (i8, ptr @sdcc1_apps_clk_src, i64 16), ptr getelementptr (i8, ptr @fephy_125m_dly_clk_src, i64 16), ptr getelementptr (i8, ptr @wcss2g_clk_src, i64 16), ptr getelementptr (i8, ptr @wcss5g_clk_src, i64 16), ptr getelementptr (i8, ptr @gcc_apss_ahb_clk, i64 12), ptr getelementptr (i8, ptr @gcc_audio_ahb_clk, i64 12), ptr getelementptr (i8, ptr @gcc_audio_pwm_clk, i64 12), ptr getelementptr (i8, ptr @gcc_blsp1_ahb_clk, i64 12), ptr getelementptr (i8, ptr @gcc_blsp1_qup1_i2c_apps_clk, i64 12), ptr getelementptr (i8, ptr @gcc_blsp1_qup1_spi_apps_clk, i64 12), ptr getelementptr (i8, ptr @gcc_blsp1_qup2_i2c_apps_clk, i64 12), ptr getelementptr (i8, ptr @gcc_blsp1_qup2_spi_apps_clk, i64 12), ptr getelementptr (i8, ptr @gcc_blsp1_uart1_apps_clk, i64 12), ptr getelementptr (i8, ptr @gcc_blsp1_uart2_apps_clk, i64 12), ptr getelementptr (i8, ptr @gcc_dcd_xo_clk, i64 12), ptr getelementptr (i8, ptr @gcc_gp1_clk, i64 12), ptr getelementptr (i8, ptr @gcc_gp2_clk, i64 12), ptr getelementptr (i8, ptr @gcc_gp3_clk, i64 12), ptr getelementptr (i8, ptr @gcc_boot_rom_ahb_clk, i64 12), ptr getelementptr (i8, ptr @gcc_crypto_ahb_clk, i64 12), ptr getelementptr (i8, ptr @gcc_crypto_axi_clk, i64 12), ptr getelementptr (i8, ptr @gcc_crypto_clk, i64 12), ptr getelementptr (i8, ptr @gcc_ess_clk, i64 12), ptr getelementptr (i8, ptr @gcc_imem_axi_clk, i64 12), ptr getelementptr (i8, ptr @gcc_imem_cfg_ahb_clk, i64 12), ptr getelementptr (i8, ptr @gcc_pcie_ahb_clk, i64 12), ptr getelementptr (i8, ptr @gcc_pcie_axi_m_clk, i64 12), ptr getelementptr (i8, ptr @gcc_pcie_axi_s_clk, i64 12), ptr getelementptr (i8, ptr @pcnoc_clk_src, i64 12), ptr getelementptr (i8, ptr @gcc_prng_ahb_clk, i64 12), ptr getelementptr (i8, ptr @gcc_qpic_ahb_clk, i64 12), ptr getelementptr (i8, ptr @gcc_qpic_clk, i64 12), ptr getelementptr (i8, ptr @gcc_sdcc1_ahb_clk, i64 12), ptr getelementptr (i8, ptr @gcc_sdcc1_apps_clk, i64 12), ptr null, ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @gcc_tlmm_ahb_clk, i64 12), ptr getelementptr (i8, ptr @gcc_usb2_master_clk, i64 12), ptr getelementptr (i8, ptr @gcc_usb2_sleep_clk, i64 12), ptr getelementptr (i8, ptr @gcc_usb2_mock_utmi_clk, i64 12), ptr getelementptr (i8, ptr @gcc_usb3_master_clk, i64 12), ptr getelementptr (i8, ptr @gcc_usb3_sleep_clk, i64 12), ptr getelementptr (i8, ptr @gcc_usb3_mock_utmi_clk, i64 12), ptr getelementptr (i8, ptr @gcc_wcss2g_clk, i64 12), ptr getelementptr (i8, ptr @gcc_wcss2g_ref_clk, i64 12), ptr getelementptr (i8, ptr @gcc_wcss2g_rtc_clk, i64 12), ptr getelementptr (i8, ptr @gcc_wcss5g_clk, i64 12), ptr getelementptr (i8, ptr @gcc_wcss5g_ref_clk, i64 12), ptr getelementptr (i8, ptr @gcc_wcss5g_rtc_clk, i64 12), ptr null, ptr getelementptr (i8, ptr @gcc_apss_sdcc_clk, i64 20), ptr null, ptr getelementptr (i8, ptr @gcc_fepll125_clk, i64 20), ptr getelementptr (i8, ptr @gcc_fepll125dly_clk, i64 20), ptr getelementptr (i8, ptr @gcc_fepll200_clk, i64 20), ptr getelementptr (i8, ptr @gcc_fepll500_clk, i64 20), ptr getelementptr (i8, ptr @gcc_fepllwcss2g_clk, i64 20), ptr getelementptr (i8, ptr @gcc_fepllwcss5g_clk, i64 20), ptr getelementptr (i8, ptr @gcc_apss_cpu_plldiv_clk, i64 20), ptr getelementptr (i8, ptr @gcc_pcnoc_ahb_clk_src, i64 16)], [80 x i8] zeroinitializer }, align 32
@gcc_ipq4019_resets = internal constant { [72 x %struct.qcom_reset_map], [128 x i8] } { [72 x %struct.qcom_reset_map] [%struct.qcom_reset_map { i32 126984, i8 5 }, %struct.qcom_reset_map { i32 126984, i8 4 }, %struct.qcom_reset_map { i32 126984, i8 3 }, %struct.qcom_reset_map { i32 126984, i8 2 }, %struct.qcom_reset_map { i32 126984, i8 1 }, %struct.qcom_reset_map { i32 126984, i8 0 }, %struct.qcom_reset_map { i32 131080, i8 5 }, %struct.qcom_reset_map { i32 131080, i8 4 }, %struct.qcom_reset_map { i32 131080, i8 3 }, %struct.qcom_reset_map { i32 131080, i8 2 }, %struct.qcom_reset_map { i32 131080, i8 1 }, %struct.qcom_reset_map { i32 131080, i8 0 }, %struct.qcom_reset_map { i32 122936, i8 5 }, %struct.qcom_reset_map { i32 122936, i8 4 }, %struct.qcom_reset_map { i32 122936, i8 2 }, %struct.qcom_reset_map { i32 122908, i8 4 }, %struct.qcom_reset_map { i32 122908, i8 2 }, %struct.qcom_reset_map { i32 118800, i8 11 }, %struct.qcom_reset_map { i32 118800, i8 10 }, %struct.qcom_reset_map { i32 118800, i8 9 }, %struct.qcom_reset_map { i32 118800, i8 8 }, %struct.qcom_reset_map { i32 118800, i8 7 }, %struct.qcom_reset_map { i32 118800, i8 6 }, %struct.qcom_reset_map { i32 118800, i8 5 }, %struct.qcom_reset_map { i32 118800, i8 4 }, %struct.qcom_reset_map { i32 118800, i8 3 }, %struct.qcom_reset_map { i32 118800, i8 2 }, %struct.qcom_reset_map { i32 118800, i8 1 }, %struct.qcom_reset_map { i32 118800, i8 0 }, %struct.qcom_reset_map { i32 73736, i8 0 }, %struct.qcom_reset_map { i32 4096, i8 0 }, %struct.qcom_reset_map { i32 8192, i8 0 }, %struct.qcom_reset_map { i32 8248, i8 0 }, %struct.qcom_reset_map { i32 12296, i8 0 }, %struct.qcom_reset_map { i32 12328, i8 0 }, %struct.qcom_reset_map { i32 16384, i8 0 }, %struct.qcom_reset_map { i32 20480, i8 0 }, %struct.qcom_reset_map { i32 57344, i8 0 }, %struct.qcom_reset_map { i32 73736, i8 0 }, %struct.qcom_reset_map { i32 77824, i8 0 }, %struct.qcom_reset_map { i32 77832, i8 0 }, %struct.qcom_reset_map { i32 90112, i8 0 }, %struct.qcom_reset_map { i32 98304, i8 0 }, %struct.qcom_reset_map { i32 106496, i8 0 }, %struct.qcom_reset_map { i32 110600, i8 0 }, %struct.qcom_reset_map { i32 114688, i8 0 }, %struct.qcom_reset_map { i32 118784, i8 0 }, %struct.qcom_reset_map { i32 122888, i8 0 }, %struct.qcom_reset_map { i32 122904, i8 0 }, %struct.qcom_reset_map { i32 122916, i8 0 }, %struct.qcom_reset_map { i32 122932, i8 0 }, %struct.qcom_reset_map { i32 135168, i8 0 }, %struct.qcom_reset_map { i32 135212, i8 0 }, %struct.qcom_reset_map { i32 135224, i8 0 }, %struct.qcom_reset_map { i32 135268, i8 0 }, %struct.qcom_reset_map { i32 135276, i8 0 }, %struct.qcom_reset_map { i32 135284, i8 0 }, %struct.qcom_reset_map { i32 135292, i8 0 }, %struct.qcom_reset_map { i32 135300, i8 0 }, %struct.qcom_reset_map { i32 135308, i8 0 }, %struct.qcom_reset_map { i32 135316, i8 0 }, %struct.qcom_reset_map { i32 135324, i8 0 }, %struct.qcom_reset_map { i32 135332, i8 0 }, %struct.qcom_reset_map { i32 135340, i8 0 }, %struct.qcom_reset_map { i32 135348, i8 0 }, %struct.qcom_reset_map { i32 135356, i8 0 }, %struct.qcom_reset_map { i32 135364, i8 0 }, %struct.qcom_reset_map { i32 135372, i8 0 }, %struct.qcom_reset_map { i32 139264, i8 0 }, %struct.qcom_reset_map zeroinitializer, %struct.qcom_reset_map { i32 147456, i8 0 }, %struct.qcom_reset_map { i32 151552, i8 0 }], [128 x i8] zeroinitializer }, align 32
@audio_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 110592, i8 0, i8 5, i8 0, ptr @gcc_xo_200_map, ptr @ftbl_gcc_audio_pwm_clk, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@blsp1_qup1_i2c_apps_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 8204, i8 0, i8 5, i8 0, ptr @gcc_xo_200_map, ptr @ftbl_gcc_blsp1_qup1_2_i2c_apps_clk, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.5 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@blsp1_qup1_spi_apps_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 8228, i8 8, i8 5, i8 0, ptr @gcc_xo_200_spi_map, ptr @ftbl_gcc_blsp1_qup1_2_spi_apps_clk, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.7 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@blsp1_qup2_i2c_apps_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 12288, i8 0, i8 5, i8 0, ptr @gcc_xo_200_map, ptr @ftbl_gcc_blsp1_qup1_2_i2c_apps_clk, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.9 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@blsp1_qup2_spi_apps_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 12308, i8 8, i8 5, i8 0, ptr @gcc_xo_200_spi_map, ptr @ftbl_gcc_blsp1_qup1_2_spi_apps_clk, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.11 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@blsp1_uart1_apps_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 8260, i8 16, i8 5, i8 0, ptr @gcc_xo_200_spi_map, ptr @ftbl_gcc_blsp1_uart1_2_apps_clk, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.13 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@blsp1_uart2_apps_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 12340, i8 16, i8 5, i8 0, ptr @gcc_xo_200_spi_map, ptr @ftbl_gcc_blsp1_uart1_2_apps_clk, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.15 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@usb30_mock_utmi_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 122880, i8 0, i8 5, i8 0, ptr @gcc_xo_200_map, ptr @ftbl_gcc_usb30_mock_utmi_clk, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.17 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@apps_ahb_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 102420, i8 0, i8 5, i8 0, ptr @gcc_xo_200_500_map, ptr @ftbl_gcc_apps_ahb_clk, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.19 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@gp1_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 32772, i8 8, i8 5, i8 0, ptr @gcc_xo_200_map, ptr @ftbl_gcc_gp_clk, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.22 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@gp2_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 36868, i8 8, i8 5, i8 0, ptr @gcc_xo_200_map, ptr @ftbl_gcc_gp_clk, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.24 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@gp3_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 40964, i8 8, i8 5, i8 0, ptr @gcc_xo_200_map, ptr @ftbl_gcc_gp_clk, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.26 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@sdcc1_apps_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 98308, i8 0, i8 5, i8 0, ptr @gcc_xo_sdcc1_500_map, ptr @ftbl_gcc_sdcc1_apps_clk, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.28 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@fephy_125m_dly_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 73728, i8 0, i8 5, i8 0, ptr @gcc_xo_125_dly_map, ptr @ftbl_gcc_fephy_dly_clk, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.31 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@wcss2g_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 126976, i8 0, i8 5, i8 0, ptr @gcc_xo_wcss2g_map, ptr @ftbl_gcc_wcss2g_clk, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.34 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@wcss5g_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 131072, i8 0, i8 5, i8 0, ptr @gcc_xo_wcss5g_map, ptr @ftbl_gcc_wcss5g_clk, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.37 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@gcc_apss_ahb_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 102404, i8 0, i8 0, i8 -128, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.41 }, ptr null, i32 24576, i32 16384, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@gcc_audio_ahb_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 110608, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.45 }, ptr null, i32 110608, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@gcc_audio_pwm_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 110604, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.48 }, ptr null, i32 110604, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@gcc_blsp1_ahb_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 4104, i8 0, i8 0, i8 -128, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.51 }, ptr null, i32 24576, i32 1024, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@gcc_blsp1_qup1_i2c_apps_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 8200, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.54 }, ptr null, i32 8200, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@gcc_blsp1_qup1_spi_apps_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 8196, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.57 }, ptr null, i32 8196, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@gcc_blsp1_qup2_i2c_apps_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 12304, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.60 }, ptr null, i32 12304, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@gcc_blsp1_qup2_spi_apps_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 12300, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.63 }, ptr null, i32 12300, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@gcc_blsp1_uart1_apps_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 8252, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.66 }, ptr null, i32 8252, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@gcc_blsp1_uart2_apps_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 12332, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.69 }, ptr null, i32 12332, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@gcc_dcd_xo_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 135228, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.72 }, ptr null, i32 135228, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@gcc_gp1_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 32768, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.75 }, ptr null, i32 32768, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@gcc_gp2_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 36864, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.78 }, ptr null, i32 36864, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@gcc_gp3_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 40960, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.81 }, ptr null, i32 40960, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@gcc_boot_rom_ahb_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 77836, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.84 }, ptr null, i32 77836, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@gcc_crypto_ahb_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 90148, i8 0, i8 0, i8 -128, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.87 }, ptr null, i32 24576, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@gcc_crypto_axi_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 90144, i8 0, i8 0, i8 -128, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.91 }, ptr null, i32 24576, i32 2, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@gcc_crypto_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 90140, i8 0, i8 0, i8 -128, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.94 }, ptr null, i32 24576, i32 4, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@gcc_ess_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 73744, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.97 }, ptr null, i32 73744, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@gcc_imem_axi_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 57348, i8 0, i8 0, i8 -128, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.100 }, ptr null, i32 24576, i32 131072, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@gcc_imem_cfg_ahb_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 57352, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.103 }, ptr null, i32 57352, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@gcc_pcie_ahb_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 118796, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.106 }, ptr null, i32 118796, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@gcc_pcie_axi_m_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 118788, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.109 }, ptr null, i32 118788, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@gcc_pcie_axi_s_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 118792, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.112 }, ptr null, i32 118792, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@pcnoc_clk_src = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 135216, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.115 }, ptr null, i32 135216, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@gcc_prng_ahb_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 77828, i8 0, i8 0, i8 -128, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.118 }, ptr null, i32 24576, i32 256, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@gcc_qpic_ahb_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 114696, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.121 }, ptr null, i32 114696, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@gcc_qpic_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 114692, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.124 }, ptr null, i32 114692, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@gcc_sdcc1_ahb_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 98320, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.127 }, ptr null, i32 98320, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@gcc_sdcc1_apps_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 98316, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.130 }, ptr null, i32 98316, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@gcc_tlmm_ahb_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 20484, i8 0, i8 0, i8 -128, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.133 }, ptr null, i32 24576, i32 32, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@gcc_usb2_master_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 122892, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.136 }, ptr null, i32 122892, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@gcc_usb2_sleep_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 122896, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.140 }, ptr null, i32 122896, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@gcc_usb2_mock_utmi_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 122900, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.143 }, ptr null, i32 122900, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@gcc_usb3_master_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 122920, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.146 }, ptr null, i32 122920, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@gcc_usb3_sleep_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 122924, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.149 }, ptr null, i32 122924, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@gcc_usb3_mock_utmi_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 122928, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.152 }, ptr null, i32 122928, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@gcc_wcss2g_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 126988, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.155 }, ptr null, i32 126988, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@gcc_wcss2g_ref_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 126988, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.158 }, ptr null, i32 126988, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@gcc_wcss2g_rtc_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 126992, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.161 }, ptr null, i32 126992, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@gcc_wcss5g_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 131084, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.164 }, ptr null, i32 131084, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@gcc_wcss5g_ref_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 131084, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.167 }, ptr null, i32 131084, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@gcc_wcss5g_rtc_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 131088, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.170 }, ptr null, i32 131088, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@gcc_apss_sdcc_clk = internal global { %struct.clk_fepll, [36 x i8] } { %struct.clk_fepll { i32 28, ptr null, %struct.clk_regmap_div { i32 0, i32 0, i32 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.172 }, ptr null, i32 0, i32 0, i8 0 } }, ptr @gcc_apss_ddrpll_vco, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@gcc_fepll125_clk = internal global { %struct.clk_fepll, [36 x i8] } { %struct.clk_fepll { i32 32, ptr null, %struct.clk_regmap_div { i32 0, i32 0, i32 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.174 }, ptr null, i32 0, i32 0, i8 0 } }, ptr @gcc_fepll_vco, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@gcc_fepll125dly_clk = internal global { %struct.clk_fepll, [36 x i8] } { %struct.clk_fepll { i32 32, ptr null, %struct.clk_regmap_div { i32 0, i32 0, i32 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.176 }, ptr null, i32 0, i32 0, i8 0 } }, ptr @gcc_fepll_vco, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@gcc_fepll200_clk = internal global { %struct.clk_fepll, [36 x i8] } { %struct.clk_fepll { i32 20, ptr null, %struct.clk_regmap_div { i32 0, i32 0, i32 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.178 }, ptr null, i32 0, i32 0, i8 0 } }, ptr @gcc_fepll_vco, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@gcc_fepll500_clk = internal global { %struct.clk_fepll, [36 x i8] } { %struct.clk_fepll { i32 8, ptr null, %struct.clk_regmap_div { i32 0, i32 0, i32 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.180 }, ptr null, i32 0, i32 0, i8 0 } }, ptr @gcc_fepll_vco, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@gcc_fepllwcss2g_clk = internal global { %struct.clk_fepll, [36 x i8] } { %struct.clk_fepll { i32 0, ptr null, %struct.clk_regmap_div { i32 192544, i32 8, i32 2, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.182 }, ptr null, i32 0, i32 0, i8 0 } }, ptr @gcc_fepll_vco, ptr @fepllwcss_clk_div_table, ptr null }, [36 x i8] zeroinitializer }, align 32
@gcc_fepllwcss5g_clk = internal global { %struct.clk_fepll, [36 x i8] } { %struct.clk_fepll { i32 0, ptr null, %struct.clk_regmap_div { i32 192544, i32 12, i32 2, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.184 }, ptr null, i32 0, i32 0, i8 0 } }, ptr @gcc_fepll_vco, ptr @fepllwcss_clk_div_table, ptr null }, [36 x i8] zeroinitializer }, align 32
@gcc_apss_cpu_plldiv_clk = internal global { %struct.clk_fepll, [36 x i8] } { %struct.clk_fepll { i32 0, ptr null, %struct.clk_regmap_div { i32 188448, i32 4, i32 4, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.187 }, ptr null, i32 188416, i32 1, i8 0 } }, ptr @gcc_apss_ddrpll_vco, ptr null, ptr @ftbl_apss_ddr_pll }, [36 x i8] zeroinitializer }, align 32
@gcc_pcnoc_ahb_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 135204, i8 0, i8 5, i8 0, ptr @gcc_xo_200_500_map, ptr @ftbl_gcc_pcnoc_ahb_clk, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.188 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@gcc_xo_200_map = internal global { [2 x %struct.parent_map], [28 x i8] } { [2 x %struct.parent_map] [%struct.parent_map zeroinitializer, %struct.parent_map { i8 1, i8 1 }], [28 x i8] zeroinitializer }, align 32
@ftbl_gcc_audio_pwm_clk = internal constant { [3 x %struct.freq_tbl], [60 x i8] } { [3 x %struct.freq_tbl] [%struct.freq_tbl { i32 48000000, i8 0, i8 1, i16 0, i16 0 }, %struct.freq_tbl { i32 200000000, i8 1, i8 1, i16 0, i16 0 }, %struct.freq_tbl zeroinitializer], [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"audio_clk_src\00", [18 x i8] zeroinitializer }, align 32
@clk_rcg2_ops = external dso_local constant %struct.clk_ops, align 4
@gcc_xo_200 = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.2, ptr @.str.3], [24 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.1, ptr @clk_rcg2_ops, ptr @gcc_xo_200, ptr null, ptr null, i8 2, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"xo\00", [29 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fepll200\00", [23 x i8] zeroinitializer }, align 32
@ftbl_gcc_blsp1_qup1_2_i2c_apps_clk = internal constant { [2 x %struct.freq_tbl], [40 x i8] } { [2 x %struct.freq_tbl] [%struct.freq_tbl { i32 19050000, i8 1, i8 20, i16 1, i16 1 }, %struct.freq_tbl zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"blsp1_qup1_i2c_apps_clk_src\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.5 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.4, ptr @clk_rcg2_ops, ptr @gcc_xo_200, ptr null, ptr null, i8 2, i32 0 }, [36 x i8] zeroinitializer }, align 32
@gcc_xo_200_spi_map = internal global { [2 x %struct.parent_map], [28 x i8] } { [2 x %struct.parent_map] [%struct.parent_map zeroinitializer, %struct.parent_map { i8 1, i8 2 }], [28 x i8] zeroinitializer }, align 32
@ftbl_gcc_blsp1_qup1_2_spi_apps_clk = internal constant { [8 x %struct.freq_tbl], [32 x i8] } { [8 x %struct.freq_tbl] [%struct.freq_tbl { i32 960000, i8 0, i8 23, i16 1, i16 4 }, %struct.freq_tbl { i32 4800000, i8 0, i8 1, i16 1, i16 10 }, %struct.freq_tbl { i32 9600000, i8 0, i8 1, i16 1, i16 5 }, %struct.freq_tbl { i32 15000000, i8 0, i8 1, i16 1, i16 3 }, %struct.freq_tbl { i32 19200000, i8 0, i8 1, i16 2, i16 5 }, %struct.freq_tbl { i32 24000000, i8 0, i8 1, i16 1, i16 2 }, %struct.freq_tbl { i32 48000000, i8 0, i8 1, i16 0, i16 0 }, %struct.freq_tbl zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"blsp1_qup1_spi_apps_clk_src\00", [36 x i8] zeroinitializer }, align 32
@gcc_xo_200_spi = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.2, ptr @.str.3], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.7 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.6, ptr @clk_rcg2_ops, ptr @gcc_xo_200_spi, ptr null, ptr null, i8 2, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"blsp1_qup2_i2c_apps_clk_src\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.9 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.8, ptr @clk_rcg2_ops, ptr @gcc_xo_200, ptr null, ptr null, i8 2, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"blsp1_qup2_spi_apps_clk_src\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.11 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.10, ptr @clk_rcg2_ops, ptr @gcc_xo_200_spi, ptr null, ptr null, i8 2, i32 0 }, [36 x i8] zeroinitializer }, align 32
@ftbl_gcc_blsp1_uart1_2_apps_clk = internal constant { [11 x %struct.freq_tbl], [60 x i8] } { [11 x %struct.freq_tbl] [%struct.freq_tbl { i32 1843200, i8 1, i8 1, i16 144, i16 15625 }, %struct.freq_tbl { i32 3686400, i8 1, i8 1, i16 288, i16 15625 }, %struct.freq_tbl { i32 7372800, i8 1, i8 1, i16 576, i16 15625 }, %struct.freq_tbl { i32 14745600, i8 1, i8 1, i16 1152, i16 15625 }, %struct.freq_tbl { i32 16000000, i8 1, i8 1, i16 2, i16 25 }, %struct.freq_tbl { i32 24000000, i8 0, i8 1, i16 1, i16 2 }, %struct.freq_tbl { i32 32000000, i8 1, i8 1, i16 4, i16 25 }, %struct.freq_tbl { i32 40000000, i8 1, i8 1, i16 1, i16 5 }, %struct.freq_tbl { i32 46400000, i8 1, i8 1, i16 29, i16 125 }, %struct.freq_tbl { i32 48000000, i8 0, i8 1, i16 0, i16 0 }, %struct.freq_tbl zeroinitializer], [60 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"blsp1_uart1_apps_clk_src\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.13 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.12, ptr @clk_rcg2_ops, ptr @gcc_xo_200_spi, ptr null, ptr null, i8 2, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"blsp1_uart2_apps_clk_src\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.15 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.14, ptr @clk_rcg2_ops, ptr @gcc_xo_200_spi, ptr null, ptr null, i8 2, i32 0 }, [36 x i8] zeroinitializer }, align 32
@ftbl_gcc_usb30_mock_utmi_clk = internal constant { [2 x %struct.freq_tbl], [40 x i8] } { [2 x %struct.freq_tbl] [%struct.freq_tbl { i32 2000000, i8 1, i8 19, i16 0, i16 0 }, %struct.freq_tbl zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"usb30_mock_utmi_clk_src\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.17 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.16, ptr @clk_rcg2_ops, ptr @gcc_xo_200, ptr null, ptr null, i8 2, i32 0 }, [36 x i8] zeroinitializer }, align 32
@gcc_xo_200_500_map = internal global { [3 x %struct.parent_map], [26 x i8] } { [3 x %struct.parent_map] [%struct.parent_map zeroinitializer, %struct.parent_map { i8 1, i8 1 }, %struct.parent_map { i8 2, i8 2 }], [26 x i8] zeroinitializer }, align 32
@ftbl_gcc_apps_ahb_clk = internal constant { [3 x %struct.freq_tbl], [60 x i8] } { [3 x %struct.freq_tbl] [%struct.freq_tbl { i32 48000000, i8 0, i8 1, i16 0, i16 0 }, %struct.freq_tbl { i32 100000000, i8 1, i8 3, i16 0, i16 0 }, %struct.freq_tbl zeroinitializer], [60 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"apps_ahb_clk_src\00", [47 x i8] zeroinitializer }, align 32
@gcc_xo_200_500 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.2, ptr @.str.3, ptr @.str.20], [20 x i8] zeroinitializer }, align 32
@.compoundliteral.19 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.18, ptr @clk_rcg2_ops, ptr @gcc_xo_200_500, ptr null, ptr null, i8 3, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fepll500\00", [23 x i8] zeroinitializer }, align 32
@ftbl_gcc_gp_clk = internal constant { [4 x %struct.freq_tbl], [48 x i8] } { [4 x %struct.freq_tbl] [%struct.freq_tbl { i32 1250000, i8 1, i8 1, i16 16, i16 0 }, %struct.freq_tbl { i32 2500000, i8 1, i8 1, i16 8, i16 0 }, %struct.freq_tbl { i32 5000000, i8 1, i8 1, i16 4, i16 0 }, %struct.freq_tbl zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gp1_clk_src\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.22 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.21, ptr @clk_rcg2_ops, ptr @gcc_xo_200, ptr null, ptr null, i8 2, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gp2_clk_src\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.24 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.23, ptr @clk_rcg2_ops, ptr @gcc_xo_200, ptr null, ptr null, i8 2, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gp3_clk_src\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.26 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.25, ptr @clk_rcg2_ops, ptr @gcc_xo_200, ptr null, ptr null, i8 2, i32 0 }, [36 x i8] zeroinitializer }, align 32
@gcc_xo_sdcc1_500_map = internal global { [3 x %struct.parent_map], [26 x i8] } { [3 x %struct.parent_map] [%struct.parent_map zeroinitializer, %struct.parent_map { i8 3, i8 1 }, %struct.parent_map { i8 2, i8 2 }], [26 x i8] zeroinitializer }, align 32
@ftbl_gcc_sdcc1_apps_clk = internal constant { [8 x %struct.freq_tbl], [32 x i8] } { [8 x %struct.freq_tbl] [%struct.freq_tbl { i32 144000, i8 0, i8 1, i16 3, i16 240 }, %struct.freq_tbl { i32 400000, i8 0, i8 1, i16 1, i16 0 }, %struct.freq_tbl { i32 20000000, i8 2, i8 1, i16 1, i16 25 }, %struct.freq_tbl { i32 25000000, i8 2, i8 1, i16 1, i16 20 }, %struct.freq_tbl { i32 50000000, i8 2, i8 1, i16 1, i16 10 }, %struct.freq_tbl { i32 100000000, i8 2, i8 1, i16 1, i16 5 }, %struct.freq_tbl { i32 192000000, i8 3, i8 1, i16 0, i16 0 }, %struct.freq_tbl zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sdcc1_apps_clk_src\00", [45 x i8] zeroinitializer }, align 32
@gcc_xo_sdcc1_500 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.2, ptr @.str.29, ptr @.str.20], [20 x i8] zeroinitializer }, align 32
@.compoundliteral.28 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.27, ptr @clk_rcg2_ops, ptr @gcc_xo_sdcc1_500, ptr null, ptr null, i8 3, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ddrpllsdcc\00", [21 x i8] zeroinitializer }, align 32
@gcc_xo_125_dly_map = internal global { [2 x %struct.parent_map], [28 x i8] } { [2 x %struct.parent_map] [%struct.parent_map zeroinitializer, %struct.parent_map { i8 6, i8 1 }], [28 x i8] zeroinitializer }, align 32
@ftbl_gcc_fephy_dly_clk = internal constant { [2 x %struct.freq_tbl], [40 x i8] } { [2 x %struct.freq_tbl] [%struct.freq_tbl { i32 125000000, i8 6, i8 1, i16 0, i16 0 }, %struct.freq_tbl zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fephy_125m_dly_clk_src\00", [41 x i8] zeroinitializer }, align 32
@gcc_xo_125_dly = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.2, ptr @.str.32], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.31 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.30, ptr @clk_rcg2_ops, ptr @gcc_xo_125_dly, ptr null, ptr null, i8 2, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fepll125dly\00", [20 x i8] zeroinitializer }, align 32
@gcc_xo_wcss2g_map = internal global { [2 x %struct.parent_map], [28 x i8] } { [2 x %struct.parent_map] [%struct.parent_map zeroinitializer, %struct.parent_map { i8 4, i8 1 }], [28 x i8] zeroinitializer }, align 32
@ftbl_gcc_wcss2g_clk = internal constant { [3 x %struct.freq_tbl], [60 x i8] } { [3 x %struct.freq_tbl] [%struct.freq_tbl { i32 48000000, i8 0, i8 1, i16 0, i16 0 }, %struct.freq_tbl { i32 250000000, i8 4, i8 1, i16 0, i16 0 }, %struct.freq_tbl zeroinitializer], [60 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wcss2g_clk_src\00", [17 x i8] zeroinitializer }, align 32
@gcc_xo_wcss2g = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.2, ptr @.str.35], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.34 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.33, ptr @clk_rcg2_ops, ptr @gcc_xo_wcss2g, ptr null, ptr null, i8 2, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fepllwcss2g\00", [20 x i8] zeroinitializer }, align 32
@gcc_xo_wcss5g_map = internal global { [2 x %struct.parent_map], [28 x i8] } { [2 x %struct.parent_map] [%struct.parent_map zeroinitializer, %struct.parent_map { i8 5, i8 1 }], [28 x i8] zeroinitializer }, align 32
@ftbl_gcc_wcss5g_clk = internal constant { [3 x %struct.freq_tbl], [60 x i8] } { [3 x %struct.freq_tbl] [%struct.freq_tbl { i32 48000000, i8 0, i8 1, i16 0, i16 0 }, %struct.freq_tbl { i32 250000000, i8 5, i8 1, i16 0, i16 0 }, %struct.freq_tbl zeroinitializer], [60 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wcss5g_clk_src\00", [17 x i8] zeroinitializer }, align 32
@gcc_xo_wcss5g = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.2, ptr @.str.38], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.37 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.36, ptr @clk_rcg2_ops, ptr @gcc_xo_wcss5g, ptr null, ptr null, i8 2, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fepllwcss5g\00", [20 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"gcc_apss_ahb_clk\00", [47 x i8] zeroinitializer }, align 32
@clk_branch2_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.40 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.18], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.41 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.39, ptr @clk_branch2_ops, ptr @.compoundliteral.40, ptr null, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"gcc_audio_ahb_clk\00", [46 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pcnoc_clk_src\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.44 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.43], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.45 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.42, ptr @clk_branch2_ops, ptr @.compoundliteral.44, ptr null, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"gcc_audio_pwm_clk\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.47 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.1], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.48 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.46, ptr @clk_branch2_ops, ptr @.compoundliteral.47, ptr null, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"gcc_blsp1_ahb_clk\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.50 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.43], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.51 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.49, ptr @clk_branch2_ops, ptr @.compoundliteral.50, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"gcc_blsp1_qup1_i2c_apps_clk\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.53 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.4], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.54 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.52, ptr @clk_branch2_ops, ptr @.compoundliteral.53, ptr null, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"gcc_blsp1_qup1_spi_apps_clk\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.56 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.6], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.57 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.55, ptr @clk_branch2_ops, ptr @.compoundliteral.56, ptr null, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"gcc_blsp1_qup2_i2c_apps_clk\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.59 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.8], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.60 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.58, ptr @clk_branch2_ops, ptr @.compoundliteral.59, ptr null, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"gcc_blsp1_qup2_spi_apps_clk\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.62 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.10], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.63 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.61, ptr @clk_branch2_ops, ptr @.compoundliteral.62, ptr null, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"gcc_blsp1_uart1_apps_clk\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.65 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.12], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.66 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.64, ptr @clk_branch2_ops, ptr @.compoundliteral.65, ptr null, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"gcc_blsp1_uart2_apps_clk\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.68 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.14], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.69 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.67, ptr @clk_branch2_ops, ptr @.compoundliteral.68, ptr null, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gcc_dcd_xo_clk\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.71 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.2], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.72 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.70, ptr @clk_branch2_ops, ptr @.compoundliteral.71, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gcc_gp1_clk\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.74 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.21], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.75 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.73, ptr @clk_branch2_ops, ptr @.compoundliteral.74, ptr null, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gcc_gp2_clk\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.77 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.23], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.78 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.76, ptr @clk_branch2_ops, ptr @.compoundliteral.77, ptr null, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gcc_gp3_clk\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.80 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.25], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.81 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.79, ptr @clk_branch2_ops, ptr @.compoundliteral.80, ptr null, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"gcc_boot_rom_ahb_clk\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.83 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.43], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.84 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.82, ptr @clk_branch2_ops, ptr @.compoundliteral.83, ptr null, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"gcc_crypto_ahb_clk\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.86 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.43], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.87 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.85, ptr @clk_branch2_ops, ptr @.compoundliteral.86, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"gcc_crypto_axi_clk\00", [45 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fepll125\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.90 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.89], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.91 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.88, ptr @clk_branch2_ops, ptr @.compoundliteral.90, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gcc_crypto_clk\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.93 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.89], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.94 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.92, ptr @clk_branch2_ops, ptr @.compoundliteral.93, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gcc_ess_clk\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.96 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.30], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.97 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.95, ptr @clk_branch2_ops, ptr @.compoundliteral.96, ptr null, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"gcc_imem_axi_clk\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.99 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.3], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.100 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.98, ptr @clk_branch2_ops, ptr @.compoundliteral.99, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"gcc_imem_cfg_ahb_clk\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.102 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.43], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.103 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.101, ptr @clk_branch2_ops, ptr @.compoundliteral.102, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"gcc_pcie_ahb_clk\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.105 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.43], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.106 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.104, ptr @clk_branch2_ops, ptr @.compoundliteral.105, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"gcc_pcie_axi_m_clk\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.108 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.3], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.109 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.107, ptr @clk_branch2_ops, ptr @.compoundliteral.108, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"gcc_pcie_axi_s_clk\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.111 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.3], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.112 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.110, ptr @clk_branch2_ops, ptr @.compoundliteral.111, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"gcc_pcnoc_ahb_clk_src\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.114 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.113], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.115 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.43, ptr @clk_branch2_ops, ptr @.compoundliteral.114, ptr null, ptr null, i8 1, i32 2052 }, [36 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"gcc_prng_ahb_clk\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.117 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.43], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.118 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.116, ptr @clk_branch2_ops, ptr @.compoundliteral.117, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"gcc_qpic_ahb_clk\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.120 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.43], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.121 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.119, ptr @clk_branch2_ops, ptr @.compoundliteral.120, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gcc_qpic_clk\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.123 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.43], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.124 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.122, ptr @clk_branch2_ops, ptr @.compoundliteral.123, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"gcc_sdcc1_ahb_clk\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.126 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.43], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.127 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.125, ptr @clk_branch2_ops, ptr @.compoundliteral.126, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"gcc_sdcc1_apps_clk\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.129 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.27], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.130 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.128, ptr @clk_branch2_ops, ptr @.compoundliteral.129, ptr null, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"gcc_tlmm_ahb_clk\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.132 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.43], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.133 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.131, ptr @clk_branch2_ops, ptr @.compoundliteral.132, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"gcc_usb2_master_clk\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.135 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.43], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.136 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.134, ptr @clk_branch2_ops, ptr @.compoundliteral.135, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"gcc_usb2_sleep_clk\00", [45 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"gcc_sleep_clk_src\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.139 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.138], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.140 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.137, ptr @clk_branch2_ops, ptr @.compoundliteral.139, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"gcc_usb2_mock_utmi_clk\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.142 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.16], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.143 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.141, ptr @clk_branch2_ops, ptr @.compoundliteral.142, ptr null, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"gcc_usb3_master_clk\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.145 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.89], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.146 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.144, ptr @clk_branch2_ops, ptr @.compoundliteral.145, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"gcc_usb3_sleep_clk\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.148 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.138], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.149 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.147, ptr @clk_branch2_ops, ptr @.compoundliteral.148, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"gcc_usb3_mock_utmi_clk\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.151 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.16], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.152 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.150, ptr @clk_branch2_ops, ptr @.compoundliteral.151, ptr null, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gcc_wcss2g_clk\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.154 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.33], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.155 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.153, ptr @clk_branch2_ops, ptr @.compoundliteral.154, ptr null, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"gcc_wcss2g_ref_clk\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.157 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.2], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.158 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.156, ptr @clk_branch2_ops, ptr @.compoundliteral.157, ptr null, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"gcc_wcss2g_rtc_clk\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.160 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.138], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.161 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.159, ptr @clk_branch2_ops, ptr @.compoundliteral.160, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gcc_wcss5g_clk\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.163 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.36], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.164 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.162, ptr @clk_branch2_ops, ptr @.compoundliteral.163, ptr null, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"gcc_wcss5g_ref_clk\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.166 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.2], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.167 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.165, ptr @clk_branch2_ops, ptr @.compoundliteral.166, ptr null, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"gcc_wcss5g_rtc_clk\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.169 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.138], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.170 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.168, ptr @clk_branch2_ops, ptr @.compoundliteral.169, ptr null, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@clk_fepll_div_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_regmap_clk_div_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.compoundliteral.171 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.2], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.172 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.29, ptr @clk_fepll_div_ops, ptr @.compoundliteral.171, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@gcc_apss_ddrpll_vco = internal constant { %struct.clk_fepll_vco, [44 x i8] } { %struct.clk_fepll_vco { i32 16, i32 8, i32 24, i32 5, i32 188448 }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.173 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.2], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.174 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.89, ptr @clk_fepll_div_ops, ptr @.compoundliteral.173, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@gcc_fepll_vco = internal constant { %struct.clk_fepll_vco, [44 x i8] } { %struct.clk_fepll_vco { i32 16, i32 8, i32 24, i32 5, i32 192544 }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.175 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.2], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.176 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.32, ptr @clk_fepll_div_ops, ptr @.compoundliteral.175, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.compoundliteral.177 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.2], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.178 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.3, ptr @clk_fepll_div_ops, ptr @.compoundliteral.177, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.compoundliteral.179 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.2], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.180 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.20, ptr @clk_fepll_div_ops, ptr @.compoundliteral.179, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.compoundliteral.181 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.2], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.182 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.35, ptr @clk_fepll_div_ops, ptr @.compoundliteral.181, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@fepllwcss_clk_div_table = internal constant { [5 x %struct.clk_div_table], [56 x i8] } { [5 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 15 }, %struct.clk_div_table { i32 1, i32 16 }, %struct.clk_div_table { i32 2, i32 18 }, %struct.clk_div_table { i32 3, i32 20 }, %struct.clk_div_table zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.compoundliteral.183 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.2], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.184 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.38, ptr @clk_fepll_div_ops, ptr @.compoundliteral.183, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ddrpllapss\00", [21 x i8] zeroinitializer }, align 32
@clk_regmap_cpu_div_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_cpu_div_recalc_rate, ptr @clk_cpu_div_round_rate, ptr null, ptr null, ptr null, ptr @clk_cpu_div_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.compoundliteral.186 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.2], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.187 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.185, ptr @clk_regmap_cpu_div_ops, ptr @.compoundliteral.186, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@ftbl_apss_ddr_pll = internal constant { [15 x %struct.freq_tbl], [44 x i8] } { [15 x %struct.freq_tbl] [%struct.freq_tbl { i32 384000000, i8 0, i8 13, i16 0, i16 0 }, %struct.freq_tbl { i32 413000000, i8 0, i8 12, i16 0, i16 0 }, %struct.freq_tbl { i32 448000000, i8 0, i8 11, i16 0, i16 0 }, %struct.freq_tbl { i32 488000000, i8 0, i8 10, i16 0, i16 0 }, %struct.freq_tbl { i32 512000000, i8 0, i8 9, i16 0, i16 0 }, %struct.freq_tbl { i32 537000000, i8 0, i8 8, i16 0, i16 0 }, %struct.freq_tbl { i32 565000000, i8 0, i8 7, i16 0, i16 0 }, %struct.freq_tbl { i32 597000000, i8 0, i8 6, i16 0, i16 0 }, %struct.freq_tbl { i32 632000000, i8 0, i8 5, i16 0, i16 0 }, %struct.freq_tbl { i32 672000000, i8 0, i8 4, i16 0, i16 0 }, %struct.freq_tbl { i32 716000000, i8 0, i8 3, i16 0, i16 0 }, %struct.freq_tbl { i32 768000000, i8 0, i8 2, i16 0, i16 0 }, %struct.freq_tbl { i32 823000000, i8 0, i8 1, i16 0, i16 0 }, %struct.freq_tbl { i32 896000000, i8 0, i8 0, i16 0, i16 0 }, %struct.freq_tbl zeroinitializer], [44 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@ftbl_gcc_pcnoc_ahb_clk = internal constant { [3 x %struct.freq_tbl], [60 x i8] } { [3 x %struct.freq_tbl] [%struct.freq_tbl { i32 48000000, i8 0, i8 1, i16 0, i16 0 }, %struct.freq_tbl { i32 100000000, i8 1, i8 3, i16 0, i16 0 }, %struct.freq_tbl zeroinitializer], [60 x i8] zeroinitializer }, align 32
@.compoundliteral.188 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.113, ptr @clk_rcg2_ops, ptr @gcc_xo_200_500, ptr null, ptr null, i8 3, i32 0 }, [36 x i8] zeroinitializer }, align 32
@gcc_xo_ddr_500_200_map = internal global { [4 x %struct.parent_map], [24 x i8] } { [4 x %struct.parent_map] [%struct.parent_map zeroinitializer, %struct.parent_map { i8 1, i8 3 }, %struct.parent_map { i8 2, i8 2 }, %struct.parent_map { i8 7, i8 1 }], [24 x i8] zeroinitializer }, align 32
@ftbl_gcc_apps_clk = internal constant { [15 x %struct.freq_tbl], [44 x i8] } { [15 x %struct.freq_tbl] [%struct.freq_tbl { i32 48000000, i8 0, i8 1, i16 0, i16 0 }, %struct.freq_tbl { i32 200000000, i8 1, i8 1, i16 0, i16 0 }, %struct.freq_tbl { i32 384000000, i8 7, i8 1, i16 0, i16 0 }, %struct.freq_tbl { i32 413000000, i8 7, i8 1, i16 0, i16 0 }, %struct.freq_tbl { i32 448000000, i8 7, i8 1, i16 0, i16 0 }, %struct.freq_tbl { i32 488000000, i8 7, i8 1, i16 0, i16 0 }, %struct.freq_tbl { i32 500000000, i8 2, i8 1, i16 0, i16 0 }, %struct.freq_tbl { i32 512000000, i8 7, i8 1, i16 0, i16 0 }, %struct.freq_tbl { i32 537000000, i8 7, i8 1, i16 0, i16 0 }, %struct.freq_tbl { i32 565000000, i8 7, i8 1, i16 0, i16 0 }, %struct.freq_tbl { i32 597000000, i8 7, i8 1, i16 0, i16 0 }, %struct.freq_tbl { i32 632000000, i8 7, i8 1, i16 0, i16 0 }, %struct.freq_tbl { i32 672000000, i8 7, i8 1, i16 0, i16 0 }, %struct.freq_tbl { i32 716000000, i8 7, i8 1, i16 0, i16 0 }, %struct.freq_tbl zeroinitializer], [44 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"apps_clk_src\00", [19 x i8] zeroinitializer }, align 32
@gcc_xo_ddr_500_200 = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.2, ptr @.str.3, ptr @.str.20, ptr @.str.185], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.190 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.189, ptr @clk_rcg2_ops, ptr @gcc_xo_ddr_500_200, ptr null, ptr null, i8 4, i32 4 }, [36 x i8] zeroinitializer }, align 32
@___asan_gen_.191 = private unnamed_addr constant [19 x i8] c"gcc_ipq4019_driver\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1769, i32 31 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1773, i32 11 }
@___asan_gen_.197 = private unnamed_addr constant [24 x i8] c"gcc_ipq4019_match_table\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1728, i32 34 }
@___asan_gen_.200 = private unnamed_addr constant [17 x i8] c"gcc_ipq4019_desc\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1720, i32 34 }
@___asan_gen_.203 = private unnamed_addr constant [13 x i8] c"apps_clk_src\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 585, i32 24 }
@___asan_gen_.206 = private unnamed_addr constant [29 x i8] c"gcc_ipq4019_cpu_clk_notifier\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1747, i32 30 }
@___asan_gen_.209 = private unnamed_addr constant [26 x i8] c"gcc_ipq4019_regmap_config\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1712, i32 35 }
@___asan_gen_.212 = private unnamed_addr constant [19 x i8] c"gcc_ipq4019_clocks\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1566, i32 27 }
@___asan_gen_.215 = private unnamed_addr constant [19 x i8] c"gcc_ipq4019_resets\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1638, i32 36 }
@___asan_gen_.218 = private unnamed_addr constant [14 x i8] c"audio_clk_src\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 180, i32 24 }
@___asan_gen_.221 = private unnamed_addr constant [28 x i8] c"blsp1_qup1_i2c_apps_clk_src\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 233, i32 24 }
@___asan_gen_.224 = private unnamed_addr constant [28 x i8] c"blsp1_qup1_spi_apps_clk_src\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 304, i32 24 }
@___asan_gen_.227 = private unnamed_addr constant [28 x i8] c"blsp1_qup2_i2c_apps_clk_src\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 263, i32 24 }
@___asan_gen_.230 = private unnamed_addr constant [28 x i8] c"blsp1_qup2_spi_apps_clk_src\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 335, i32 24 }
@___asan_gen_.233 = private unnamed_addr constant [25 x i8] c"blsp1_uart1_apps_clk_src\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 380, i32 24 }
@___asan_gen_.236 = private unnamed_addr constant [25 x i8] c"blsp1_uart2_apps_clk_src\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 411, i32 24 }
@___asan_gen_.239 = private unnamed_addr constant [24 x i8] c"usb30_mock_utmi_clk_src\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 988, i32 24 }
@___asan_gen_.242 = private unnamed_addr constant [17 x i8] c"apps_ahb_clk_src\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 605, i32 24 }
@___asan_gen_.245 = private unnamed_addr constant [12 x i8] c"gp1_clk_src\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 449, i32 24 }
@___asan_gen_.248 = private unnamed_addr constant [12 x i8] c"gp2_clk_src\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 480, i32 24 }
@___asan_gen_.251 = private unnamed_addr constant [12 x i8] c"gp3_clk_src\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 511, i32 24 }
@___asan_gen_.254 = private unnamed_addr constant [19 x i8] c"sdcc1_apps_clk_src\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 553, i32 25 }
@___asan_gen_.257 = private unnamed_addr constant [23 x i8] c"fephy_125m_dly_clk_src\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1055, i32 24 }
@___asan_gen_.260 = private unnamed_addr constant [15 x i8] c"wcss2g_clk_src\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1075, i32 24 }
@___asan_gen_.263 = private unnamed_addr constant [15 x i8] c"wcss5g_clk_src\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1145, i32 24 }
@___asan_gen_.266 = private unnamed_addr constant [17 x i8] c"gcc_apss_ahb_clk\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 618, i32 26 }
@___asan_gen_.269 = private unnamed_addr constant [18 x i8] c"gcc_audio_ahb_clk\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 194, i32 26 }
@___asan_gen_.272 = private unnamed_addr constant [18 x i8] c"gcc_audio_pwm_clk\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 211, i32 26 }
@___asan_gen_.275 = private unnamed_addr constant [18 x i8] c"gcc_blsp1_ahb_clk\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 636, i32 26 }
@___asan_gen_.278 = private unnamed_addr constant [28 x i8] c"gcc_blsp1_qup1_i2c_apps_clk\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 246, i32 26 }
@___asan_gen_.281 = private unnamed_addr constant [28 x i8] c"gcc_blsp1_qup1_spi_apps_clk\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 318, i32 26 }
@___asan_gen_.284 = private unnamed_addr constant [28 x i8] c"gcc_blsp1_qup2_i2c_apps_clk\00", align 1
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 276, i32 26 }
@___asan_gen_.287 = private unnamed_addr constant [28 x i8] c"gcc_blsp1_qup2_spi_apps_clk\00", align 1
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 349, i32 26 }
@___asan_gen_.290 = private unnamed_addr constant [25 x i8] c"gcc_blsp1_uart1_apps_clk\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 394, i32 26 }
@___asan_gen_.293 = private unnamed_addr constant [25 x i8] c"gcc_blsp1_uart2_apps_clk\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 425, i32 26 }
@___asan_gen_.296 = private unnamed_addr constant [15 x i8] c"gcc_dcd_xo_clk\00", align 1
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 653, i32 26 }
@___asan_gen_.299 = private unnamed_addr constant [12 x i8] c"gcc_gp1_clk\00", align 1
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 463, i32 26 }
@___asan_gen_.302 = private unnamed_addr constant [12 x i8] c"gcc_gp2_clk\00", align 1
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 494, i32 26 }
@___asan_gen_.305 = private unnamed_addr constant [12 x i8] c"gcc_gp3_clk\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 525, i32 26 }
@___asan_gen_.308 = private unnamed_addr constant [21 x i8] c"gcc_boot_rom_ahb_clk\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 669, i32 26 }
@___asan_gen_.311 = private unnamed_addr constant [19 x i8] c"gcc_crypto_ahb_clk\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 686, i32 26 }
@___asan_gen_.314 = private unnamed_addr constant [19 x i8] c"gcc_crypto_axi_clk\00", align 1
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 703, i32 26 }
@___asan_gen_.317 = private unnamed_addr constant [15 x i8] c"gcc_crypto_clk\00", align 1
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 720, i32 26 }
@___asan_gen_.320 = private unnamed_addr constant [12 x i8] c"gcc_ess_clk\00", align 1
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 737, i32 26 }
@___asan_gen_.323 = private unnamed_addr constant [17 x i8] c"gcc_imem_axi_clk\00", align 1
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 754, i32 26 }
@___asan_gen_.326 = private unnamed_addr constant [21 x i8] c"gcc_imem_cfg_ahb_clk\00", align 1
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 771, i32 26 }
@___asan_gen_.329 = private unnamed_addr constant [17 x i8] c"gcc_pcie_ahb_clk\00", align 1
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 787, i32 26 }
@___asan_gen_.332 = private unnamed_addr constant [19 x i8] c"gcc_pcie_axi_m_clk\00", align 1
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 803, i32 26 }
@___asan_gen_.335 = private unnamed_addr constant [19 x i8] c"gcc_pcie_axi_s_clk\00", align 1
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 819, i32 26 }
@___asan_gen_.338 = private unnamed_addr constant [14 x i8] c"pcnoc_clk_src\00", align 1
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1548, i32 26 }
@___asan_gen_.341 = private unnamed_addr constant [17 x i8] c"gcc_prng_ahb_clk\00", align 1
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 835, i32 26 }
@___asan_gen_.344 = private unnamed_addr constant [17 x i8] c"gcc_qpic_ahb_clk\00", align 1
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 852, i32 26 }
@___asan_gen_.347 = private unnamed_addr constant [13 x i8] c"gcc_qpic_clk\00", align 1
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 868, i32 26 }
@___asan_gen_.350 = private unnamed_addr constant [18 x i8] c"gcc_sdcc1_ahb_clk\00", align 1
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 884, i32 26 }
@___asan_gen_.353 = private unnamed_addr constant [19 x i8] c"gcc_sdcc1_apps_clk\00", align 1
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 900, i32 26 }
@___asan_gen_.356 = private unnamed_addr constant [17 x i8] c"gcc_tlmm_ahb_clk\00", align 1
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 917, i32 26 }
@___asan_gen_.359 = private unnamed_addr constant [20 x i8] c"gcc_usb2_master_clk\00", align 1
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 934, i32 26 }
@___asan_gen_.362 = private unnamed_addr constant [19 x i8] c"gcc_usb2_sleep_clk\00", align 1
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 950, i32 26 }
@___asan_gen_.365 = private unnamed_addr constant [23 x i8] c"gcc_usb2_mock_utmi_clk\00", align 1
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 966, i32 26 }
@___asan_gen_.368 = private unnamed_addr constant [20 x i8] c"gcc_usb3_master_clk\00", align 1
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1001, i32 26 }
@___asan_gen_.371 = private unnamed_addr constant [19 x i8] c"gcc_usb3_sleep_clk\00", align 1
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1017, i32 26 }
@___asan_gen_.374 = private unnamed_addr constant [23 x i8] c"gcc_usb3_mock_utmi_clk\00", align 1
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1033, i32 26 }
@___asan_gen_.377 = private unnamed_addr constant [15 x i8] c"gcc_wcss2g_clk\00", align 1
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1089, i32 26 }
@___asan_gen_.380 = private unnamed_addr constant [19 x i8] c"gcc_wcss2g_ref_clk\00", align 1
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1106, i32 26 }
@___asan_gen_.383 = private unnamed_addr constant [19 x i8] c"gcc_wcss2g_rtc_clk\00", align 1
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1123, i32 26 }
@___asan_gen_.386 = private unnamed_addr constant [15 x i8] c"gcc_wcss5g_clk\00", align 1
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1158, i32 26 }
@___asan_gen_.389 = private unnamed_addr constant [19 x i8] c"gcc_wcss5g_ref_clk\00", align 1
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1175, i32 26 }
@___asan_gen_.392 = private unnamed_addr constant [19 x i8] c"gcc_wcss5g_rtc_clk\00", align 1
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1192, i32 26 }
@___asan_gen_.395 = private unnamed_addr constant [18 x i8] c"gcc_apss_sdcc_clk\00", align 1
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1410, i32 25 }
@___asan_gen_.398 = private unnamed_addr constant [17 x i8] c"gcc_fepll125_clk\00", align 1
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1425, i32 25 }
@___asan_gen_.401 = private unnamed_addr constant [20 x i8] c"gcc_fepll125dly_clk\00", align 1
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1440, i32 25 }
@___asan_gen_.404 = private unnamed_addr constant [17 x i8] c"gcc_fepll200_clk\00", align 1
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1455, i32 25 }
@___asan_gen_.407 = private unnamed_addr constant [17 x i8] c"gcc_fepll500_clk\00", align 1
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1470, i32 25 }
@___asan_gen_.410 = private unnamed_addr constant [20 x i8] c"gcc_fepllwcss2g_clk\00", align 1
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1493, i32 25 }
@___asan_gen_.413 = private unnamed_addr constant [20 x i8] c"gcc_fepllwcss5g_clk\00", align 1
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1511, i32 25 }
@___asan_gen_.416 = private unnamed_addr constant [24 x i8] c"gcc_apss_cpu_plldiv_clk\00", align 1
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1354, i32 25 }
@___asan_gen_.419 = private unnamed_addr constant [22 x i8] c"gcc_pcnoc_ahb_clk_src\00", align 1
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1535, i32 24 }
@___asan_gen_.422 = private unnamed_addr constant [15 x i8] c"gcc_xo_200_map\00", align 1
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 92, i32 26 }
@___asan_gen_.425 = private unnamed_addr constant [23 x i8] c"ftbl_gcc_audio_pwm_clk\00", align 1
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 174, i32 30 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 186, i32 11 }
@___asan_gen_.431 = private unnamed_addr constant [11 x i8] c"gcc_xo_200\00", align 1
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 97, i32 27 }
@___asan_gen_.434 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 98, i32 2 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 99, i32 2 }
@___asan_gen_.441 = private unnamed_addr constant [35 x i8] c"ftbl_gcc_blsp1_qup1_2_i2c_apps_clk\00", align 1
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 228, i32 30 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 239, i32 11 }
@___asan_gen_.447 = private unnamed_addr constant [19 x i8] c".compoundliteral.5\00", align 1
@___asan_gen_.448 = private unnamed_addr constant [19 x i8] c"gcc_xo_200_spi_map\00", align 1
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 102, i32 26 }
@___asan_gen_.451 = private unnamed_addr constant [35 x i8] c"ftbl_gcc_blsp1_qup1_2_spi_apps_clk\00", align 1
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 293, i32 30 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 311, i32 11 }
@___asan_gen_.457 = private unnamed_addr constant [15 x i8] c"gcc_xo_200_spi\00", align 1
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 107, i32 27 }
@___asan_gen_.460 = private unnamed_addr constant [19 x i8] c".compoundliteral.7\00", align 1
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 269, i32 11 }
@___asan_gen_.464 = private unnamed_addr constant [19 x i8] c".compoundliteral.9\00", align 1
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 342, i32 11 }
@___asan_gen_.468 = private unnamed_addr constant [20 x i8] c".compoundliteral.11\00", align 1
@___asan_gen_.469 = private unnamed_addr constant [32 x i8] c"ftbl_gcc_blsp1_uart1_2_apps_clk\00", align 1
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 366, i32 30 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 387, i32 11 }
@___asan_gen_.475 = private unnamed_addr constant [20 x i8] c".compoundliteral.13\00", align 1
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 418, i32 11 }
@___asan_gen_.479 = private unnamed_addr constant [20 x i8] c".compoundliteral.15\00", align 1
@___asan_gen_.480 = private unnamed_addr constant [29 x i8] c"ftbl_gcc_usb30_mock_utmi_clk\00", align 1
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 983, i32 30 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 994, i32 11 }
@___asan_gen_.486 = private unnamed_addr constant [20 x i8] c".compoundliteral.17\00", align 1
@___asan_gen_.487 = private unnamed_addr constant [19 x i8] c"gcc_xo_200_500_map\00", align 1
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 80, i32 26 }
@___asan_gen_.490 = private unnamed_addr constant [22 x i8] c"ftbl_gcc_apps_ahb_clk\00", align 1
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 599, i32 30 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 611, i32 11 }
@___asan_gen_.496 = private unnamed_addr constant [15 x i8] c"gcc_xo_200_500\00", align 1
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 86, i32 27 }
@___asan_gen_.499 = private unnamed_addr constant [20 x i8] c".compoundliteral.19\00", align 1
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 89, i32 2 }
@___asan_gen_.503 = private unnamed_addr constant [16 x i8] c"ftbl_gcc_gp_clk\00", align 1
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 442, i32 30 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 456, i32 11 }
@___asan_gen_.509 = private unnamed_addr constant [20 x i8] c".compoundliteral.22\00", align 1
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 487, i32 11 }
@___asan_gen_.513 = private unnamed_addr constant [20 x i8] c".compoundliteral.24\00", align 1
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 518, i32 11 }
@___asan_gen_.517 = private unnamed_addr constant [20 x i8] c".compoundliteral.26\00", align 1
@___asan_gen_.518 = private unnamed_addr constant [21 x i8] c"gcc_xo_sdcc1_500_map\00", align 1
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 112, i32 26 }
@___asan_gen_.521 = private unnamed_addr constant [24 x i8] c"ftbl_gcc_sdcc1_apps_clk\00", align 1
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 542, i32 30 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 559, i32 11 }
@___asan_gen_.527 = private unnamed_addr constant [17 x i8] c"gcc_xo_sdcc1_500\00", align 1
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 118, i32 27 }
@___asan_gen_.530 = private unnamed_addr constant [20 x i8] c".compoundliteral.28\00", align 1
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 120, i32 2 }
@___asan_gen_.534 = private unnamed_addr constant [19 x i8] c"gcc_xo_125_dly_map\00", align 1
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 144, i32 26 }
@___asan_gen_.537 = private unnamed_addr constant [23 x i8] c"ftbl_gcc_fephy_dly_clk\00", align 1
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1050, i32 30 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1061, i32 11 }
@___asan_gen_.543 = private unnamed_addr constant [15 x i8] c"gcc_xo_125_dly\00", align 1
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 149, i32 27 }
@___asan_gen_.546 = private unnamed_addr constant [20 x i8] c".compoundliteral.31\00", align 1
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 151, i32 2 }
@___asan_gen_.550 = private unnamed_addr constant [18 x i8] c"gcc_xo_wcss2g_map\00", align 1
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 124, i32 26 }
@___asan_gen_.553 = private unnamed_addr constant [20 x i8] c"ftbl_gcc_wcss2g_clk\00", align 1
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1069, i32 30 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1081, i32 11 }
@___asan_gen_.559 = private unnamed_addr constant [14 x i8] c"gcc_xo_wcss2g\00", align 1
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 129, i32 27 }
@___asan_gen_.562 = private unnamed_addr constant [20 x i8] c".compoundliteral.34\00", align 1
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 131, i32 2 }
@___asan_gen_.566 = private unnamed_addr constant [18 x i8] c"gcc_xo_wcss5g_map\00", align 1
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 134, i32 26 }
@___asan_gen_.569 = private unnamed_addr constant [20 x i8] c"ftbl_gcc_wcss5g_clk\00", align 1
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1139, i32 30 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1151, i32 11 }
@___asan_gen_.575 = private unnamed_addr constant [14 x i8] c"gcc_xo_wcss5g\00", align 1
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 139, i32 27 }
@___asan_gen_.578 = private unnamed_addr constant [20 x i8] c".compoundliteral.37\00", align 1
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 141, i32 2 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 625, i32 12 }
@___asan_gen_.585 = private unnamed_addr constant [20 x i8] c".compoundliteral.40\00", align 1
@___asan_gen_.586 = private unnamed_addr constant [20 x i8] c".compoundliteral.41\00", align 1
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 200, i32 12 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 202, i32 5 }
@___asan_gen_.593 = private unnamed_addr constant [20 x i8] c".compoundliteral.44\00", align 1
@___asan_gen_.594 = private unnamed_addr constant [20 x i8] c".compoundliteral.45\00", align 1
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 217, i32 12 }
@___asan_gen_.598 = private unnamed_addr constant [20 x i8] c".compoundliteral.47\00", align 1
@___asan_gen_.599 = private unnamed_addr constant [20 x i8] c".compoundliteral.48\00", align 1
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 643, i32 12 }
@___asan_gen_.603 = private unnamed_addr constant [20 x i8] c".compoundliteral.50\00", align 1
@___asan_gen_.604 = private unnamed_addr constant [20 x i8] c".compoundliteral.51\00", align 1
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 252, i32 12 }
@___asan_gen_.608 = private unnamed_addr constant [20 x i8] c".compoundliteral.53\00", align 1
@___asan_gen_.609 = private unnamed_addr constant [20 x i8] c".compoundliteral.54\00", align 1
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 324, i32 12 }
@___asan_gen_.613 = private unnamed_addr constant [20 x i8] c".compoundliteral.56\00", align 1
@___asan_gen_.614 = private unnamed_addr constant [20 x i8] c".compoundliteral.57\00", align 1
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 282, i32 12 }
@___asan_gen_.618 = private unnamed_addr constant [20 x i8] c".compoundliteral.59\00", align 1
@___asan_gen_.619 = private unnamed_addr constant [20 x i8] c".compoundliteral.60\00", align 1
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 355, i32 12 }
@___asan_gen_.623 = private unnamed_addr constant [20 x i8] c".compoundliteral.62\00", align 1
@___asan_gen_.624 = private unnamed_addr constant [20 x i8] c".compoundliteral.63\00", align 1
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 400, i32 12 }
@___asan_gen_.628 = private unnamed_addr constant [20 x i8] c".compoundliteral.65\00", align 1
@___asan_gen_.629 = private unnamed_addr constant [20 x i8] c".compoundliteral.66\00", align 1
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 431, i32 12 }
@___asan_gen_.633 = private unnamed_addr constant [20 x i8] c".compoundliteral.68\00", align 1
@___asan_gen_.634 = private unnamed_addr constant [20 x i8] c".compoundliteral.69\00", align 1
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 659, i32 12 }
@___asan_gen_.638 = private unnamed_addr constant [20 x i8] c".compoundliteral.71\00", align 1
@___asan_gen_.639 = private unnamed_addr constant [20 x i8] c".compoundliteral.72\00", align 1
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 469, i32 12 }
@___asan_gen_.643 = private unnamed_addr constant [20 x i8] c".compoundliteral.74\00", align 1
@___asan_gen_.644 = private unnamed_addr constant [20 x i8] c".compoundliteral.75\00", align 1
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 500, i32 12 }
@___asan_gen_.648 = private unnamed_addr constant [20 x i8] c".compoundliteral.77\00", align 1
@___asan_gen_.649 = private unnamed_addr constant [20 x i8] c".compoundliteral.78\00", align 1
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 531, i32 12 }
@___asan_gen_.653 = private unnamed_addr constant [20 x i8] c".compoundliteral.80\00", align 1
@___asan_gen_.654 = private unnamed_addr constant [20 x i8] c".compoundliteral.81\00", align 1
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 675, i32 12 }
@___asan_gen_.658 = private unnamed_addr constant [20 x i8] c".compoundliteral.83\00", align 1
@___asan_gen_.659 = private unnamed_addr constant [20 x i8] c".compoundliteral.84\00", align 1
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 693, i32 12 }
@___asan_gen_.663 = private unnamed_addr constant [20 x i8] c".compoundliteral.86\00", align 1
@___asan_gen_.664 = private unnamed_addr constant [20 x i8] c".compoundliteral.87\00", align 1
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 710, i32 12 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 712, i32 5 }
@___asan_gen_.671 = private unnamed_addr constant [20 x i8] c".compoundliteral.90\00", align 1
@___asan_gen_.672 = private unnamed_addr constant [20 x i8] c".compoundliteral.91\00", align 1
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 727, i32 12 }
@___asan_gen_.676 = private unnamed_addr constant [20 x i8] c".compoundliteral.93\00", align 1
@___asan_gen_.677 = private unnamed_addr constant [20 x i8] c".compoundliteral.94\00", align 1
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 743, i32 12 }
@___asan_gen_.681 = private unnamed_addr constant [20 x i8] c".compoundliteral.96\00", align 1
@___asan_gen_.682 = private unnamed_addr constant [20 x i8] c".compoundliteral.97\00", align 1
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 761, i32 12 }
@___asan_gen_.686 = private unnamed_addr constant [20 x i8] c".compoundliteral.99\00", align 1
@___asan_gen_.687 = private unnamed_addr constant [21 x i8] c".compoundliteral.100\00", align 1
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 777, i32 12 }
@___asan_gen_.691 = private unnamed_addr constant [21 x i8] c".compoundliteral.102\00", align 1
@___asan_gen_.692 = private unnamed_addr constant [21 x i8] c".compoundliteral.103\00", align 1
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 793, i32 12 }
@___asan_gen_.696 = private unnamed_addr constant [21 x i8] c".compoundliteral.105\00", align 1
@___asan_gen_.697 = private unnamed_addr constant [21 x i8] c".compoundliteral.106\00", align 1
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 809, i32 12 }
@___asan_gen_.701 = private unnamed_addr constant [21 x i8] c".compoundliteral.108\00", align 1
@___asan_gen_.702 = private unnamed_addr constant [21 x i8] c".compoundliteral.109\00", align 1
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 825, i32 12 }
@___asan_gen_.706 = private unnamed_addr constant [21 x i8] c".compoundliteral.111\00", align 1
@___asan_gen_.707 = private unnamed_addr constant [21 x i8] c".compoundliteral.112\00", align 1
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1556, i32 5 }
@___asan_gen_.711 = private unnamed_addr constant [21 x i8] c".compoundliteral.114\00", align 1
@___asan_gen_.712 = private unnamed_addr constant [21 x i8] c".compoundliteral.115\00", align 1
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 842, i32 12 }
@___asan_gen_.716 = private unnamed_addr constant [21 x i8] c".compoundliteral.117\00", align 1
@___asan_gen_.717 = private unnamed_addr constant [21 x i8] c".compoundliteral.118\00", align 1
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 858, i32 12 }
@___asan_gen_.721 = private unnamed_addr constant [21 x i8] c".compoundliteral.120\00", align 1
@___asan_gen_.722 = private unnamed_addr constant [21 x i8] c".compoundliteral.121\00", align 1
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 874, i32 12 }
@___asan_gen_.726 = private unnamed_addr constant [21 x i8] c".compoundliteral.123\00", align 1
@___asan_gen_.727 = private unnamed_addr constant [21 x i8] c".compoundliteral.124\00", align 1
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 890, i32 12 }
@___asan_gen_.731 = private unnamed_addr constant [21 x i8] c".compoundliteral.126\00", align 1
@___asan_gen_.732 = private unnamed_addr constant [21 x i8] c".compoundliteral.127\00", align 1
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 906, i32 12 }
@___asan_gen_.736 = private unnamed_addr constant [21 x i8] c".compoundliteral.129\00", align 1
@___asan_gen_.737 = private unnamed_addr constant [21 x i8] c".compoundliteral.130\00", align 1
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 924, i32 12 }
@___asan_gen_.741 = private unnamed_addr constant [21 x i8] c".compoundliteral.132\00", align 1
@___asan_gen_.742 = private unnamed_addr constant [21 x i8] c".compoundliteral.133\00", align 1
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 940, i32 12 }
@___asan_gen_.746 = private unnamed_addr constant [21 x i8] c".compoundliteral.135\00", align 1
@___asan_gen_.747 = private unnamed_addr constant [21 x i8] c".compoundliteral.136\00", align 1
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 956, i32 12 }
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 958, i32 5 }
@___asan_gen_.754 = private unnamed_addr constant [21 x i8] c".compoundliteral.139\00", align 1
@___asan_gen_.755 = private unnamed_addr constant [21 x i8] c".compoundliteral.140\00", align 1
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 972, i32 12 }
@___asan_gen_.759 = private unnamed_addr constant [21 x i8] c".compoundliteral.142\00", align 1
@___asan_gen_.760 = private unnamed_addr constant [21 x i8] c".compoundliteral.143\00", align 1
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1007, i32 12 }
@___asan_gen_.764 = private unnamed_addr constant [21 x i8] c".compoundliteral.145\00", align 1
@___asan_gen_.765 = private unnamed_addr constant [21 x i8] c".compoundliteral.146\00", align 1
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1023, i32 12 }
@___asan_gen_.769 = private unnamed_addr constant [21 x i8] c".compoundliteral.148\00", align 1
@___asan_gen_.770 = private unnamed_addr constant [21 x i8] c".compoundliteral.149\00", align 1
@___asan_gen_.773 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1039, i32 12 }
@___asan_gen_.774 = private unnamed_addr constant [21 x i8] c".compoundliteral.151\00", align 1
@___asan_gen_.775 = private unnamed_addr constant [21 x i8] c".compoundliteral.152\00", align 1
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1095, i32 12 }
@___asan_gen_.779 = private unnamed_addr constant [21 x i8] c".compoundliteral.154\00", align 1
@___asan_gen_.780 = private unnamed_addr constant [21 x i8] c".compoundliteral.155\00", align 1
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1112, i32 12 }
@___asan_gen_.784 = private unnamed_addr constant [21 x i8] c".compoundliteral.157\00", align 1
@___asan_gen_.785 = private unnamed_addr constant [21 x i8] c".compoundliteral.158\00", align 1
@___asan_gen_.788 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1129, i32 12 }
@___asan_gen_.789 = private unnamed_addr constant [21 x i8] c".compoundliteral.160\00", align 1
@___asan_gen_.790 = private unnamed_addr constant [21 x i8] c".compoundliteral.161\00", align 1
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1164, i32 12 }
@___asan_gen_.794 = private unnamed_addr constant [21 x i8] c".compoundliteral.163\00", align 1
@___asan_gen_.795 = private unnamed_addr constant [21 x i8] c".compoundliteral.164\00", align 1
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1181, i32 12 }
@___asan_gen_.799 = private unnamed_addr constant [21 x i8] c".compoundliteral.166\00", align 1
@___asan_gen_.800 = private unnamed_addr constant [21 x i8] c".compoundliteral.167\00", align 1
@___asan_gen_.803 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1198, i32 12 }
@___asan_gen_.804 = private unnamed_addr constant [21 x i8] c".compoundliteral.169\00", align 1
@___asan_gen_.805 = private unnamed_addr constant [21 x i8] c".compoundliteral.170\00", align 1
@___asan_gen_.806 = private unnamed_addr constant [18 x i8] c"clk_fepll_div_ops\00", align 1
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1406, i32 29 }
@___asan_gen_.809 = private unnamed_addr constant [21 x i8] c".compoundliteral.171\00", align 1
@___asan_gen_.810 = private unnamed_addr constant [21 x i8] c".compoundliteral.172\00", align 1
@___asan_gen_.811 = private unnamed_addr constant [20 x i8] c"gcc_apss_ddrpll_vco\00", align 1
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1230, i32 35 }
@___asan_gen_.814 = private unnamed_addr constant [21 x i8] c".compoundliteral.173\00", align 1
@___asan_gen_.815 = private unnamed_addr constant [21 x i8] c".compoundliteral.174\00", align 1
@___asan_gen_.816 = private unnamed_addr constant [14 x i8] c"gcc_fepll_vco\00", align 1
@___asan_gen_.818 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1238, i32 35 }
@___asan_gen_.819 = private unnamed_addr constant [21 x i8] c".compoundliteral.175\00", align 1
@___asan_gen_.820 = private unnamed_addr constant [21 x i8] c".compoundliteral.176\00", align 1
@___asan_gen_.821 = private unnamed_addr constant [21 x i8] c".compoundliteral.177\00", align 1
@___asan_gen_.822 = private unnamed_addr constant [21 x i8] c".compoundliteral.178\00", align 1
@___asan_gen_.823 = private unnamed_addr constant [21 x i8] c".compoundliteral.179\00", align 1
@___asan_gen_.824 = private unnamed_addr constant [21 x i8] c".compoundliteral.180\00", align 1
@___asan_gen_.825 = private unnamed_addr constant [21 x i8] c".compoundliteral.181\00", align 1
@___asan_gen_.826 = private unnamed_addr constant [21 x i8] c".compoundliteral.182\00", align 1
@___asan_gen_.827 = private unnamed_addr constant [24 x i8] c"fepllwcss_clk_div_table\00", align 1
@___asan_gen_.829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1485, i32 35 }
@___asan_gen_.830 = private unnamed_addr constant [21 x i8] c".compoundliteral.183\00", align 1
@___asan_gen_.831 = private unnamed_addr constant [21 x i8] c".compoundliteral.184\00", align 1
@___asan_gen_.834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1362, i32 12 }
@___asan_gen_.835 = private unnamed_addr constant [23 x i8] c"clk_regmap_cpu_div_ops\00", align 1
@___asan_gen_.837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1330, i32 29 }
@___asan_gen_.838 = private unnamed_addr constant [21 x i8] c".compoundliteral.186\00", align 1
@___asan_gen_.839 = private unnamed_addr constant [21 x i8] c".compoundliteral.187\00", align 1
@___asan_gen_.840 = private unnamed_addr constant [18 x i8] c"ftbl_apss_ddr_pll\00", align 1
@___asan_gen_.842 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1336, i32 30 }
@___asan_gen_.843 = private unnamed_addr constant [23 x i8] c"ftbl_gcc_pcnoc_ahb_clk\00", align 1
@___asan_gen_.845 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1529, i32 30 }
@___asan_gen_.846 = private unnamed_addr constant [21 x i8] c".compoundliteral.188\00", align 1
@___asan_gen_.847 = private unnamed_addr constant [23 x i8] c"gcc_xo_ddr_500_200_map\00", align 1
@___asan_gen_.849 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 154, i32 26 }
@___asan_gen_.850 = private unnamed_addr constant [18 x i8] c"ftbl_gcc_apps_clk\00", align 1
@___asan_gen_.852 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 567, i32 30 }
@___asan_gen_.853 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.855 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 591, i32 11 }
@___asan_gen_.856 = private unnamed_addr constant [19 x i8] c"gcc_xo_ddr_500_200\00", align 1
@___asan_gen_.857 = private constant [34 x i8] c"../drivers/clk/qcom/gcc-ipq4019.c\00", align 1
@___asan_gen_.858 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 167, i32 27 }
@___asan_gen_.859 = private unnamed_addr constant [21 x i8] c".compoundliteral.190\00", align 1
@llvm.compiler.used = appending global [310 x ptr] [ptr @__UNIQUE_ID_alias171, ptr @__UNIQUE_ID_description174, ptr @__UNIQUE_ID_file172, ptr @__UNIQUE_ID_license173, ptr @__exitcall_gcc_ipq4019_exit, ptr @__initcall__kmod_gcc_ipq4019__170_1782_gcc_ipq4019_init1, ptr @gcc_ipq4019_exit, ptr @gcc_ipq4019_driver, ptr @.str, ptr @gcc_ipq4019_match_table, ptr @gcc_ipq4019_desc, ptr @apps_clk_src, ptr @gcc_ipq4019_cpu_clk_notifier, ptr @gcc_ipq4019_regmap_config, ptr @gcc_ipq4019_clocks, ptr @gcc_ipq4019_resets, ptr @audio_clk_src, ptr @blsp1_qup1_i2c_apps_clk_src, ptr @blsp1_qup1_spi_apps_clk_src, ptr @blsp1_qup2_i2c_apps_clk_src, ptr @blsp1_qup2_spi_apps_clk_src, ptr @blsp1_uart1_apps_clk_src, ptr @blsp1_uart2_apps_clk_src, ptr @usb30_mock_utmi_clk_src, ptr @apps_ahb_clk_src, ptr @gp1_clk_src, ptr @gp2_clk_src, ptr @gp3_clk_src, ptr @sdcc1_apps_clk_src, ptr @fephy_125m_dly_clk_src, ptr @wcss2g_clk_src, ptr @wcss5g_clk_src, ptr @gcc_apss_ahb_clk, ptr @gcc_audio_ahb_clk, ptr @gcc_audio_pwm_clk, ptr @gcc_blsp1_ahb_clk, ptr @gcc_blsp1_qup1_i2c_apps_clk, ptr @gcc_blsp1_qup1_spi_apps_clk, ptr @gcc_blsp1_qup2_i2c_apps_clk, ptr @gcc_blsp1_qup2_spi_apps_clk, ptr @gcc_blsp1_uart1_apps_clk, ptr @gcc_blsp1_uart2_apps_clk, ptr @gcc_dcd_xo_clk, ptr @gcc_gp1_clk, ptr @gcc_gp2_clk, ptr @gcc_gp3_clk, ptr @gcc_boot_rom_ahb_clk, ptr @gcc_crypto_ahb_clk, ptr @gcc_crypto_axi_clk, ptr @gcc_crypto_clk, ptr @gcc_ess_clk, ptr @gcc_imem_axi_clk, ptr @gcc_imem_cfg_ahb_clk, ptr @gcc_pcie_ahb_clk, ptr @gcc_pcie_axi_m_clk, ptr @gcc_pcie_axi_s_clk, ptr @pcnoc_clk_src, ptr @gcc_prng_ahb_clk, ptr @gcc_qpic_ahb_clk, ptr @gcc_qpic_clk, ptr @gcc_sdcc1_ahb_clk, ptr @gcc_sdcc1_apps_clk, ptr @gcc_tlmm_ahb_clk, ptr @gcc_usb2_master_clk, ptr @gcc_usb2_sleep_clk, ptr @gcc_usb2_mock_utmi_clk, ptr @gcc_usb3_master_clk, ptr @gcc_usb3_sleep_clk, ptr @gcc_usb3_mock_utmi_clk, ptr @gcc_wcss2g_clk, ptr @gcc_wcss2g_ref_clk, ptr @gcc_wcss2g_rtc_clk, ptr @gcc_wcss5g_clk, ptr @gcc_wcss5g_ref_clk, ptr @gcc_wcss5g_rtc_clk, ptr @gcc_apss_sdcc_clk, ptr @gcc_fepll125_clk, ptr @gcc_fepll125dly_clk, ptr @gcc_fepll200_clk, ptr @gcc_fepll500_clk, ptr @gcc_fepllwcss2g_clk, ptr @gcc_fepllwcss5g_clk, ptr @gcc_apss_cpu_plldiv_clk, ptr @gcc_pcnoc_ahb_clk_src, ptr @gcc_xo_200_map, ptr @ftbl_gcc_audio_pwm_clk, ptr @.str.1, ptr @gcc_xo_200, ptr @.compoundliteral, ptr @.str.2, ptr @.str.3, ptr @ftbl_gcc_blsp1_qup1_2_i2c_apps_clk, ptr @.str.4, ptr @.compoundliteral.5, ptr @gcc_xo_200_spi_map, ptr @ftbl_gcc_blsp1_qup1_2_spi_apps_clk, ptr @.str.6, ptr @gcc_xo_200_spi, ptr @.compoundliteral.7, ptr @.str.8, ptr @.compoundliteral.9, ptr @.str.10, ptr @.compoundliteral.11, ptr @ftbl_gcc_blsp1_uart1_2_apps_clk, ptr @.str.12, ptr @.compoundliteral.13, ptr @.str.14, ptr @.compoundliteral.15, ptr @ftbl_gcc_usb30_mock_utmi_clk, ptr @.str.16, ptr @.compoundliteral.17, ptr @gcc_xo_200_500_map, ptr @ftbl_gcc_apps_ahb_clk, ptr @.str.18, ptr @gcc_xo_200_500, ptr @.compoundliteral.19, ptr @.str.20, ptr @ftbl_gcc_gp_clk, ptr @.str.21, ptr @.compoundliteral.22, ptr @.str.23, ptr @.compoundliteral.24, ptr @.str.25, ptr @.compoundliteral.26, ptr @gcc_xo_sdcc1_500_map, ptr @ftbl_gcc_sdcc1_apps_clk, ptr @.str.27, ptr @gcc_xo_sdcc1_500, ptr @.compoundliteral.28, ptr @.str.29, ptr @gcc_xo_125_dly_map, ptr @ftbl_gcc_fephy_dly_clk, ptr @.str.30, ptr @gcc_xo_125_dly, ptr @.compoundliteral.31, ptr @.str.32, ptr @gcc_xo_wcss2g_map, ptr @ftbl_gcc_wcss2g_clk, ptr @.str.33, ptr @gcc_xo_wcss2g, ptr @.compoundliteral.34, ptr @.str.35, ptr @gcc_xo_wcss5g_map, ptr @ftbl_gcc_wcss5g_clk, ptr @.str.36, ptr @gcc_xo_wcss5g, ptr @.compoundliteral.37, ptr @.str.38, ptr @.str.39, ptr @.compoundliteral.40, ptr @.compoundliteral.41, ptr @.str.42, ptr @.str.43, ptr @.compoundliteral.44, ptr @.compoundliteral.45, ptr @.str.46, ptr @.compoundliteral.47, ptr @.compoundliteral.48, ptr @.str.49, ptr @.compoundliteral.50, ptr @.compoundliteral.51, ptr @.str.52, ptr @.compoundliteral.53, ptr @.compoundliteral.54, ptr @.str.55, ptr @.compoundliteral.56, ptr @.compoundliteral.57, ptr @.str.58, ptr @.compoundliteral.59, ptr @.compoundliteral.60, ptr @.str.61, ptr @.compoundliteral.62, ptr @.compoundliteral.63, ptr @.str.64, ptr @.compoundliteral.65, ptr @.compoundliteral.66, ptr @.str.67, ptr @.compoundliteral.68, ptr @.compoundliteral.69, ptr @.str.70, ptr @.compoundliteral.71, ptr @.compoundliteral.72, ptr @.str.73, ptr @.compoundliteral.74, ptr @.compoundliteral.75, ptr @.str.76, ptr @.compoundliteral.77, ptr @.compoundliteral.78, ptr @.str.79, ptr @.compoundliteral.80, ptr @.compoundliteral.81, ptr @.str.82, ptr @.compoundliteral.83, ptr @.compoundliteral.84, ptr @.str.85, ptr @.compoundliteral.86, ptr @.compoundliteral.87, ptr @.str.88, ptr @.str.89, ptr @.compoundliteral.90, ptr @.compoundliteral.91, ptr @.str.92, ptr @.compoundliteral.93, ptr @.compoundliteral.94, ptr @.str.95, ptr @.compoundliteral.96, ptr @.compoundliteral.97, ptr @.str.98, ptr @.compoundliteral.99, ptr @.compoundliteral.100, ptr @.str.101, ptr @.compoundliteral.102, ptr @.compoundliteral.103, ptr @.str.104, ptr @.compoundliteral.105, ptr @.compoundliteral.106, ptr @.str.107, ptr @.compoundliteral.108, ptr @.compoundliteral.109, ptr @.str.110, ptr @.compoundliteral.111, ptr @.compoundliteral.112, ptr @.str.113, ptr @.compoundliteral.114, ptr @.compoundliteral.115, ptr @.str.116, ptr @.compoundliteral.117, ptr @.compoundliteral.118, ptr @.str.119, ptr @.compoundliteral.120, ptr @.compoundliteral.121, ptr @.str.122, ptr @.compoundliteral.123, ptr @.compoundliteral.124, ptr @.str.125, ptr @.compoundliteral.126, ptr @.compoundliteral.127, ptr @.str.128, ptr @.compoundliteral.129, ptr @.compoundliteral.130, ptr @.str.131, ptr @.compoundliteral.132, ptr @.compoundliteral.133, ptr @.str.134, ptr @.compoundliteral.135, ptr @.compoundliteral.136, ptr @.str.137, ptr @.str.138, ptr @.compoundliteral.139, ptr @.compoundliteral.140, ptr @.str.141, ptr @.compoundliteral.142, ptr @.compoundliteral.143, ptr @.str.144, ptr @.compoundliteral.145, ptr @.compoundliteral.146, ptr @.str.147, ptr @.compoundliteral.148, ptr @.compoundliteral.149, ptr @.str.150, ptr @.compoundliteral.151, ptr @.compoundliteral.152, ptr @.str.153, ptr @.compoundliteral.154, ptr @.compoundliteral.155, ptr @.str.156, ptr @.compoundliteral.157, ptr @.compoundliteral.158, ptr @.str.159, ptr @.compoundliteral.160, ptr @.compoundliteral.161, ptr @.str.162, ptr @.compoundliteral.163, ptr @.compoundliteral.164, ptr @.str.165, ptr @.compoundliteral.166, ptr @.compoundliteral.167, ptr @.str.168, ptr @.compoundliteral.169, ptr @.compoundliteral.170, ptr @clk_fepll_div_ops, ptr @.compoundliteral.171, ptr @.compoundliteral.172, ptr @gcc_apss_ddrpll_vco, ptr @.compoundliteral.173, ptr @.compoundliteral.174, ptr @gcc_fepll_vco, ptr @.compoundliteral.175, ptr @.compoundliteral.176, ptr @.compoundliteral.177, ptr @.compoundliteral.178, ptr @.compoundliteral.179, ptr @.compoundliteral.180, ptr @.compoundliteral.181, ptr @.compoundliteral.182, ptr @fepllwcss_clk_div_table, ptr @.compoundliteral.183, ptr @.compoundliteral.184, ptr @.str.185, ptr @clk_regmap_cpu_div_ops, ptr @.compoundliteral.186, ptr @.compoundliteral.187, ptr @ftbl_apss_ddr_pll, ptr @ftbl_gcc_pcnoc_ahb_clk, ptr @.compoundliteral.188, ptr @gcc_xo_ddr_500_200_map, ptr @ftbl_gcc_apps_clk, ptr @.str.189, ptr @gcc_xo_ddr_500_200, ptr @.compoundliteral.190], section "llvm.metadata"
@0 = internal global [303 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gcc_ipq4019_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gcc_ipq4019_match_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gcc_ipq4019_desc to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apps_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gcc_ipq4019_cpu_clk_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gcc_ipq4019_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gcc_ipq4019_clocks to i32), i32 304, i32 384, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gcc_ipq4019_resets to i32), i32 576, i32 704, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blsp1_qup1_i2c_apps_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blsp1_qup1_spi_apps_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blsp1_qup2_i2c_apps_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blsp1_qup2_spi_apps_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blsp1_uart1_apps_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blsp1_uart2_apps_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb30_mock_utmi_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apps_ahb_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp1_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp2_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp3_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdcc1_apps_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fephy_125m_dly_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcss2g_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcss5g_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gcc_apss_ahb_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gcc_audio_ahb_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gcc_audio_pwm_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gcc_blsp1_ahb_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gcc_blsp1_qup1_i2c_apps_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gcc_blsp1_qup1_spi_apps_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gcc_blsp1_qup2_i2c_apps_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gcc_blsp1_qup2_spi_apps_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gcc_blsp1_uart1_apps_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gcc_blsp1_uart2_apps_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gcc_dcd_xo_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gcc_gp1_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gcc_gp2_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gcc_gp3_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gcc_boot_rom_ahb_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gcc_crypto_ahb_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gcc_crypto_axi_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gcc_crypto_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gcc_ess_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gcc_imem_axi_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gcc_imem_cfg_ahb_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gcc_pcie_ahb_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gcc_pcie_axi_m_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gcc_pcie_axi_s_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcnoc_clk_src to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gcc_prng_ahb_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gcc_qpic_ahb_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gcc_qpic_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gcc_sdcc1_ahb_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gcc_sdcc1_apps_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gcc_tlmm_ahb_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gcc_usb2_master_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gcc_usb2_sleep_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gcc_usb2_mock_utmi_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gcc_usb3_master_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gcc_usb3_sleep_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gcc_usb3_mock_utmi_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gcc_wcss2g_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gcc_wcss2g_ref_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gcc_wcss2g_rtc_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gcc_wcss5g_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gcc_wcss5g_ref_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gcc_wcss5g_rtc_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gcc_apss_sdcc_clk to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gcc_fepll125_clk to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gcc_fepll125dly_clk to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gcc_fepll200_clk to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gcc_fepll500_clk to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gcc_fepllwcss2g_clk to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gcc_fepllwcss5g_clk to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gcc_apss_cpu_plldiv_clk to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gcc_pcnoc_ahb_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gcc_xo_200_map to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftbl_gcc_audio_pwm_clk to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gcc_xo_200 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftbl_gcc_blsp1_qup1_2_i2c_apps_clk to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gcc_xo_200_spi_map to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftbl_gcc_blsp1_qup1_2_spi_apps_clk to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gcc_xo_200_spi to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftbl_gcc_blsp1_uart1_2_apps_clk to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftbl_gcc_usb30_mock_utmi_clk to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gcc_xo_200_500_map to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftbl_gcc_apps_ahb_clk to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gcc_xo_200_500 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftbl_gcc_gp_clk to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gcc_xo_sdcc1_500_map to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftbl_gcc_sdcc1_apps_clk to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gcc_xo_sdcc1_500 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gcc_xo_125_dly_map to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftbl_gcc_fephy_dly_clk to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gcc_xo_125_dly to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.31 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gcc_xo_wcss2g_map to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftbl_gcc_wcss2g_clk to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gcc_xo_wcss2g to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.34 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gcc_xo_wcss5g_map to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftbl_gcc_wcss5g_clk to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gcc_xo_wcss5g to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.37 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.40 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.41 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.44 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.45 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.47 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.48 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.50 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.51 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.53 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.54 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.56 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.57 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.59 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.60 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.62 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.63 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.65 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.66 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.68 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.69 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.71 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.72 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.74 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.75 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.77 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.78 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.80 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.81 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.83 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.84 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.86 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.87 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.90 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.91 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.93 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.94 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.96 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.97 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.99 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.100 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.102 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.103 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.105 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.106 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.108 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.109 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.111 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.112 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.114 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.115 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.117 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.118 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.120 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.121 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.123 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.124 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.126 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.127 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.129 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.130 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.132 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.133 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.135 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.136 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.139 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.140 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.142 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.143 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.145 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.146 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.148 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.149 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.151 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.152 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.154 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.155 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.157 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.158 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.160 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.161 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.163 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.164 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.166 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.167 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.169 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.170 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_fepll_div_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.171 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.172 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gcc_apss_ddrpll_vco to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.173 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.174 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gcc_fepll_vco to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.175 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.176 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.177 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.178 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.179 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.180 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.181 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.182 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fepllwcss_clk_div_table to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.183 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.184 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_regmap_cpu_div_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.186 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.187 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftbl_apss_ddr_pll to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftbl_gcc_pcnoc_ahb_clk to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.188 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gcc_xo_ddr_500_200_map to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftbl_gcc_apps_clk to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gcc_xo_ddr_500_200 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.190 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @gcc_ipq4019_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @gcc_ipq4019_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @gcc_ipq4019_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @gcc_ipq4019_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gcc_ipq4019_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @qcom_cc_probe(ptr noundef %pdev, ptr noundef nonnull @gcc_ipq4019_desc) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %0 = load ptr, ptr getelementptr inbounds (%struct.clk_rcg2, ptr @apps_clk_src, i32 0, i32 6, i32 0, i32 1), align 4
  %call1 = tail call i32 @clk_notifier_register(ptr noundef %0, ptr noundef nonnull @gcc_ipq4019_cpu_clk_notifier) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gcc_ipq4019_remove(ptr nocapture noundef readnone %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.clk_rcg2, ptr @apps_clk_src, i32 0, i32 6, i32 0, i32 1), align 4
  %call = tail call i32 @clk_notifier_unregister(ptr noundef %0, ptr noundef nonnull @gcc_ipq4019_cpu_clk_notifier) #4
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_cc_probe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_notifier_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_regmap_clk_div_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #2 align 64 {
entry:
  %cdiv.i = alloca i32, align 4
  %cdiv = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %hw, i32 -20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cdiv) #4
  %0 = ptrtoint ptr %cdiv to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %cdiv, align 4, !annotation !386
  %1 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %add.ptr3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end13_crit_edge

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

if.else:                                          ; preds = %entry
  %cdiv5 = getelementptr i8, ptr %hw, i32 -12
  %regmap = getelementptr inbounds %struct.clk_regmap, ptr %hw, i32 0, i32 1
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %5 = ptrtoint ptr %cdiv5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cdiv5, align 4
  %call7 = call i32 @regmap_read(ptr noundef %4, i32 noundef %6, ptr noundef nonnull %cdiv) #4
  %7 = ptrtoint ptr %cdiv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cdiv, align 4
  %shift = getelementptr i8, ptr %hw, i32 -8
  %9 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %shift, align 4
  %shr = lshr i32 %8, %10
  %width = getelementptr i8, ptr %hw, i32 -4
  %11 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %width, align 4
  %notmask = shl nsw i32 -1, %12
  %sub = xor i32 %notmask, -1
  %and = and i32 %shr, %sub
  store i32 %and, ptr %cdiv, align 4
  %div_table = getelementptr i8, ptr %hw, i32 32
  %13 = ptrtoint ptr %div_table to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %div_table, align 4
  %div326 = getelementptr inbounds %struct.clk_div_table, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %div326 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %div326, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool10.not327 = icmp eq i32 %16, 0
  br i1 %tobool10.not327, label %if.else.if.end13_crit_edge, label %if.else.for.body_crit_edge

if.else.for.body_crit_edge:                       ; preds = %if.else
  br label %for.body

if.else.if.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.else.for.body_crit_edge
  %17 = phi i32 [ %21, %for.body.for.body_crit_edge ], [ %16, %if.else.for.body_crit_edge ]
  %pre_div.0329 = phi i32 [ %spec.select, %for.body.for.body_crit_edge ], [ 1, %if.else.for.body_crit_edge ]
  %clkt.0328 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %14, %if.else.for.body_crit_edge ]
  %18 = ptrtoint ptr %clkt.0328 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %clkt.0328, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %and)
  %cmp = icmp eq i32 %19, %and
  %spec.select = select i1 %cmp, i32 %17, i32 %pre_div.0329
  %incdec.ptr = getelementptr %struct.clk_div_table, ptr %clkt.0328, i32 1
  %div = getelementptr %struct.clk_div_table, ptr %clkt.0328, i32 1, i32 1
  %20 = ptrtoint ptr %div to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %div, align 4
  %tobool10.not = icmp eq i32 %21, 0
  br i1 %tobool10.not, label %for.body.if.end13_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body.if.end13_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

if.end13:                                         ; preds = %for.body.if.end13_crit_edge, %if.else.if.end13_crit_edge, %entry.if.end13_crit_edge
  %pre_div.2 = phi i32 [ %2, %entry.if.end13_crit_edge ], [ 1, %if.else.if.end13_crit_edge ], [ %spec.select, %for.body.if.end13_crit_edge ]
  %pll_vco1.i = getelementptr i8, ptr %hw, i32 28
  %22 = ptrtoint ptr %pll_vco1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pll_vco1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cdiv.i) #4
  %24 = ptrtoint ptr %cdiv.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %cdiv.i, align 4, !annotation !386
  %regmap.i = getelementptr i8, ptr %hw, i32 12
  %25 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap.i, align 4
  %reg.i = getelementptr inbounds %struct.clk_fepll_vco, ptr %23, i32 0, i32 4
  %27 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %reg.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %26, i32 noundef %28, ptr noundef nonnull %cdiv.i) #4
  %29 = ptrtoint ptr %cdiv.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cdiv.i, align 4
  %refclkdiv_shift.i = getelementptr inbounds %struct.clk_fepll_vco, ptr %23, i32 0, i32 2
  %31 = ptrtoint ptr %refclkdiv_shift.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %refclkdiv_shift.i, align 4
  %shr.i = lshr i32 %30, %32
  %refclkdiv_width.i = getelementptr inbounds %struct.clk_fepll_vco, ptr %23, i32 0, i32 3
  %33 = ptrtoint ptr %refclkdiv_width.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %refclkdiv_width.i, align 4
  %notmask.i = shl nsw i32 -1, %34
  %sub.i = xor i32 %notmask.i, -1
  %and.i = and i32 %shr.i, %sub.i
  %35 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %23, align 4
  %shr3.i = lshr i32 %30, %36
  %fdbkdiv_width.i = getelementptr inbounds %struct.clk_fepll_vco, ptr %23, i32 0, i32 1
  %37 = ptrtoint ptr %fdbkdiv_width.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %fdbkdiv_width.i, align 4
  %notmask16.i = shl nsw i32 -1, %38
  %sub5.i = xor i32 %notmask16.i, -1
  %and6.i = and i32 %shr3.i, %sub5.i
  %div.i = udiv i32 %parent_rate, %and.i
  %conv.i = zext i32 %div.i to i64
  %mul.i = shl nuw nsw i64 %conv.i, 1
  %conv7.i = zext i32 %and6.i to i64
  %mul8.i = mul i64 %mul.i, %conv7.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cdiv.i) #4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul8.i)
  %cmp190 = icmp ult i64 %mul8.i, 4294967296
  br i1 %cmp190, label %if.then194, label %if.else200, !prof !387

if.then194:                                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  %conv195 = trunc i64 %mul8.i to i32
  %div198 = udiv i32 %conv195, %pre_div.2
  br label %if.end204

if.else200:                                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  %39 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %pre_div.2, i64 %mul8.i) #7, !srcloc !388
  %asmresult1.i = extractvalue { i64, i64 } %39, 1
  %extract.t325 = trunc i64 %asmresult1.i to i32
  br label %if.end204

if.end204:                                        ; preds = %if.else200, %if.then194
  %rate.0.off0 = phi i32 [ %div198, %if.then194 ], [ %extract.t325, %if.else200 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cdiv) #4
  ret i32 %rate.0.off0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_cpu_div_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #2 align 64 {
entry:
  %cdiv.i = alloca i32, align 4
  %cdiv = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cdiv) #4
  %0 = ptrtoint ptr %cdiv to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %cdiv, align 4, !annotation !386
  %cdiv4 = getelementptr i8, ptr %hw, i32 -12
  %regmap = getelementptr %struct.clk_regmap, ptr %hw, i32 0, i32 1
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %3 = ptrtoint ptr %cdiv4 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cdiv4, align 4
  %call6 = call i32 @regmap_read(ptr noundef %2, i32 noundef %4, ptr noundef nonnull %cdiv) #4
  %5 = ptrtoint ptr %cdiv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cdiv, align 4
  %shift = getelementptr i8, ptr %hw, i32 -8
  %7 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %shift, align 4
  %shr = lshr i32 %6, %8
  %width = getelementptr i8, ptr %hw, i32 -4
  %9 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %width, align 4
  %notmask = shl nsw i32 -1, %10
  %sub = xor i32 %notmask, -1
  %and = and i32 %shr, %sub
  store i32 %and, ptr %cdiv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %and)
  %cmp = icmp ugt i32 %and, 10
  %add = shl i32 %and, 1
  %mul = add i32 %add, 2
  %add9 = add i32 %and, 12
  %pre_div.0 = select i1 %cmp, i32 %mul, i32 %add9
  %pll_vco1.i = getelementptr i8, ptr %hw, i32 28
  %11 = ptrtoint ptr %pll_vco1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pll_vco1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cdiv.i) #4
  %13 = ptrtoint ptr %cdiv.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %cdiv.i, align 4, !annotation !386
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %reg.i = getelementptr inbounds %struct.clk_fepll_vco, ptr %12, i32 0, i32 4
  %16 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %reg.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %15, i32 noundef %17, ptr noundef nonnull %cdiv.i) #4
  %18 = ptrtoint ptr %cdiv.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cdiv.i, align 4
  %refclkdiv_shift.i = getelementptr inbounds %struct.clk_fepll_vco, ptr %12, i32 0, i32 2
  %20 = ptrtoint ptr %refclkdiv_shift.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %refclkdiv_shift.i, align 4
  %shr.i = lshr i32 %19, %21
  %refclkdiv_width.i = getelementptr inbounds %struct.clk_fepll_vco, ptr %12, i32 0, i32 3
  %22 = ptrtoint ptr %refclkdiv_width.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %refclkdiv_width.i, align 4
  %notmask.i = shl nsw i32 -1, %23
  %sub.i = xor i32 %notmask.i, -1
  %and.i = and i32 %shr.i, %sub.i
  %24 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %12, align 4
  %shr3.i = lshr i32 %19, %25
  %fdbkdiv_width.i = getelementptr inbounds %struct.clk_fepll_vco, ptr %12, i32 0, i32 1
  %26 = ptrtoint ptr %fdbkdiv_width.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %fdbkdiv_width.i, align 4
  %notmask16.i = shl nsw i32 -1, %27
  %sub5.i = xor i32 %notmask16.i, -1
  %and6.i = and i32 %shr3.i, %sub5.i
  %div.i = udiv i32 %parent_rate, %and.i
  %conv.i = zext i32 %div.i to i64
  %conv7.i = zext i32 %and6.i to i64
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cdiv.i) #4
  %mul8.i = shl nuw nsw i64 %conv.i, 2
  %mul11 = mul i64 %mul8.i, %conv7.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul11)
  %cmp187 = icmp ult i64 %mul11, 4294967296
  br i1 %cmp187, label %if.then191, label %if.else197, !prof !387

if.then191:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %conv192 = trunc i64 %mul11 to i32
  %div195 = udiv i32 %conv192, %pre_div.0
  br label %if.end201

if.else197:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %28 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %pre_div.0, i64 %mul11) #7, !srcloc !388
  %asmresult1.i = extractvalue { i64, i64 } %28, 1
  %extract.t314 = trunc i64 %asmresult1.i to i32
  br label %if.end201

if.end201:                                        ; preds = %if.else197, %if.then191
  %rate.0.off0 = phi i32 [ %div195, %if.then191 ], [ %extract.t314, %if.else197 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cdiv) #4
  ret i32 %rate.0.off0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_cpu_div_round_rate(ptr noundef %hw, i32 noundef %rate, ptr nocapture noundef writeonly %p_rate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %freq_tbl = getelementptr i8, ptr %hw, i32 36
  %0 = ptrtoint ptr %freq_tbl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %freq_tbl, align 4
  %call4 = tail call ptr @qcom_find_freq(ptr noundef %1, i32 noundef %rate) #4
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %src = getelementptr inbounds %struct.freq_tbl, ptr %call4, i32 0, i32 1
  %2 = ptrtoint ptr %src to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %src, align 4
  %conv = zext i8 %3 to i32
  %call5 = tail call ptr @clk_hw_get_parent_by_index(ptr noundef %hw, i32 noundef %conv) #4
  %call6 = tail call i32 @clk_hw_get_rate(ptr noundef %call5) #4
  %4 = ptrtoint ptr %p_rate to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call6, ptr %p_rate, align 4
  %5 = ptrtoint ptr %call4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %call4, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_cpu_div_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %freq_tbl = getelementptr i8, ptr %hw, i32 36
  %0 = ptrtoint ptr %freq_tbl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %freq_tbl, align 4
  %call4 = tail call ptr @qcom_find_freq(ptr noundef %1, i32 noundef %rate) #4
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %cdiv = getelementptr i8, ptr %hw, i32 -12
  %width = getelementptr i8, ptr %hw, i32 -4
  %2 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %width, align 4
  %notmask = shl nsw i32 -1, %3
  %sub = xor i32 %notmask, -1
  %shift = getelementptr i8, ptr %hw, i32 -8
  %4 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %shift, align 4
  %shl6 = shl i32 %sub, %5
  %regmap = getelementptr inbounds %struct.clk_regmap, ptr %hw, i32 0, i32 1
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %8 = ptrtoint ptr %cdiv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cdiv, align 4
  %pre_div = getelementptr inbounds %struct.freq_tbl, ptr %call4, i32 0, i32 2
  %10 = ptrtoint ptr %pre_div to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %pre_div, align 1
  %conv = zext i8 %11 to i32
  %shl11 = shl i32 %conv, %5
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef %9, i32 noundef %shl6, i32 noundef %shl11, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qcom_find_freq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent_by_index(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gcc_ipq4019_cpu_clk_notifier_fn(ptr nocapture noundef readnone %nb, i32 noundef %action, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %action)
  %cmp = icmp eq i32 %action, 1
  br i1 %cmp, label %if.end, label %entry.if.end.thread_crit_edge

entry.if.end.thread_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.thread

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_rcg2_ops, i32 0, i32 13) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_rcg2_ops, i32 0, i32 13), align 4
  %call = tail call i32 %0(ptr noundef getelementptr inbounds (%struct.clk_rcg2, ptr @apps_clk_src, i32 0, i32 6), i8 noundef zeroext 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not.i = icmp eq i32 %call, 0
  %sub.i = sub i32 1, %call
  %or.i = or i32 %sub.i, 32768
  br i1 %tobool.not.i, label %if.end.if.end.thread_crit_edge, label %if.end._crit_edge

if.end._crit_edge:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %1

if.end.if.end.thread_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.thread

if.end.thread:                                    ; preds = %if.end.if.end.thread_crit_edge, %entry.if.end.thread_crit_edge
  br label %1

1:                                                ; preds = %if.end.thread, %if.end._crit_edge
  %2 = phi i32 [ 1, %if.end.thread ], [ %or.i, %if.end._crit_edge ]
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_notifier_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 303)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 303)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !343, !345, !347, !349, !351, !353, !355, !357, !359, !361, !363, !365, !367, !369, !371, !373, !375}
!llvm.module.flags = !{!377, !378, !379, !380, !381, !382, !383, !384}
!llvm.ident = !{!385}

!0 = !{ptr @__initcall__kmod_gcc_ipq4019__170_1782_gcc_ipq4019_init1, !1, !"__initcall__kmod_gcc_ipq4019__170_1782_gcc_ipq4019_init1", i1 false, i1 false}
!1 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 1782, i32 1}
!2 = !{ptr @__exitcall_gcc_ipq4019_exit, !3, !"__exitcall_gcc_ipq4019_exit", i1 false, i1 false}
!3 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 1788, i32 1}
!4 = !{ptr @__UNIQUE_ID_alias171, !5, !"__UNIQUE_ID_alias171", i1 false, i1 false}
!5 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 1790, i32 1}
!6 = !{ptr @__UNIQUE_ID_file172, !7, !"__UNIQUE_ID_file172", i1 false, i1 false}
!7 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 1791, i32 1}
!8 = !{ptr @__UNIQUE_ID_license173, !7, !"__UNIQUE_ID_license173", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_description174, !10, !"__UNIQUE_ID_description174", i1 false, i1 false}
!10 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 1792, i32 1}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 1773, i32 11}
!13 = !{ptr @gcc_ipq4019_driver, !14, !"gcc_ipq4019_driver", i1 false, i1 false}
!14 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 1769, i32 31}
!15 = !{ptr @gcc_ipq4019_desc, !16, !"gcc_ipq4019_desc", i1 false, i1 false}
!16 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 1720, i32 34}
!17 = !{ptr @gcc_ipq4019_regmap_config, !18, !"gcc_ipq4019_regmap_config", i1 false, i1 false}
!18 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 1712, i32 35}
!19 = !{ptr @gcc_ipq4019_clocks, !20, !"gcc_ipq4019_clocks", i1 false, i1 false}
!20 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 1566, i32 27}
!21 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 186, i32 11}
!23 = !{ptr @audio_clk_src, !24, !"audio_clk_src", i1 false, i1 false}
!24 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 180, i32 24}
!25 = !{ptr @gcc_xo_200_map, !26, !"gcc_xo_200_map", i1 false, i1 false}
!26 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 92, i32 26}
!27 = !{ptr @ftbl_gcc_audio_pwm_clk, !28, !"ftbl_gcc_audio_pwm_clk", i1 false, i1 false}
!28 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 174, i32 30}
!29 = !{ptr @.str.2, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 98, i32 2}
!31 = !{ptr @.str.3, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 99, i32 2}
!33 = !{ptr @gcc_xo_200, !34, !"gcc_xo_200", i1 false, i1 false}
!34 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 97, i32 27}
!35 = !{ptr @.str.4, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 239, i32 11}
!37 = !{ptr @blsp1_qup1_i2c_apps_clk_src, !38, !"blsp1_qup1_i2c_apps_clk_src", i1 false, i1 false}
!38 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 233, i32 24}
!39 = !{ptr @ftbl_gcc_blsp1_qup1_2_i2c_apps_clk, !40, !"ftbl_gcc_blsp1_qup1_2_i2c_apps_clk", i1 false, i1 false}
!40 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 228, i32 30}
!41 = !{ptr @.str.6, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 311, i32 11}
!43 = !{ptr @blsp1_qup1_spi_apps_clk_src, !44, !"blsp1_qup1_spi_apps_clk_src", i1 false, i1 false}
!44 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 304, i32 24}
!45 = !{ptr @gcc_xo_200_spi_map, !46, !"gcc_xo_200_spi_map", i1 false, i1 false}
!46 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 102, i32 26}
!47 = !{ptr @ftbl_gcc_blsp1_qup1_2_spi_apps_clk, !48, !"ftbl_gcc_blsp1_qup1_2_spi_apps_clk", i1 false, i1 false}
!48 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 293, i32 30}
!49 = !{ptr @gcc_xo_200_spi, !50, !"gcc_xo_200_spi", i1 false, i1 false}
!50 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 107, i32 27}
!51 = !{ptr @.str.8, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 269, i32 11}
!53 = !{ptr @blsp1_qup2_i2c_apps_clk_src, !54, !"blsp1_qup2_i2c_apps_clk_src", i1 false, i1 false}
!54 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 263, i32 24}
!55 = !{ptr @.str.10, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 342, i32 11}
!57 = !{ptr @blsp1_qup2_spi_apps_clk_src, !58, !"blsp1_qup2_spi_apps_clk_src", i1 false, i1 false}
!58 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 335, i32 24}
!59 = !{ptr @.str.12, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 387, i32 11}
!61 = !{ptr @blsp1_uart1_apps_clk_src, !62, !"blsp1_uart1_apps_clk_src", i1 false, i1 false}
!62 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 380, i32 24}
!63 = !{ptr @ftbl_gcc_blsp1_uart1_2_apps_clk, !64, !"ftbl_gcc_blsp1_uart1_2_apps_clk", i1 false, i1 false}
!64 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 366, i32 30}
!65 = !{ptr @.str.14, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 418, i32 11}
!67 = !{ptr @blsp1_uart2_apps_clk_src, !68, !"blsp1_uart2_apps_clk_src", i1 false, i1 false}
!68 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 411, i32 24}
!69 = !{ptr @.str.16, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 994, i32 11}
!71 = !{ptr @usb30_mock_utmi_clk_src, !72, !"usb30_mock_utmi_clk_src", i1 false, i1 false}
!72 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 988, i32 24}
!73 = !{ptr @ftbl_gcc_usb30_mock_utmi_clk, !74, !"ftbl_gcc_usb30_mock_utmi_clk", i1 false, i1 false}
!74 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 983, i32 30}
!75 = !{ptr @.str.18, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 611, i32 11}
!77 = !{ptr @apps_ahb_clk_src, !78, !"apps_ahb_clk_src", i1 false, i1 false}
!78 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 605, i32 24}
!79 = !{ptr @gcc_xo_200_500_map, !80, !"gcc_xo_200_500_map", i1 false, i1 false}
!80 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 80, i32 26}
!81 = !{ptr @ftbl_gcc_apps_ahb_clk, !82, !"ftbl_gcc_apps_ahb_clk", i1 false, i1 false}
!82 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 599, i32 30}
!83 = !{ptr @.str.20, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 89, i32 2}
!85 = !{ptr @gcc_xo_200_500, !86, !"gcc_xo_200_500", i1 false, i1 false}
!86 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 86, i32 27}
!87 = !{ptr @.str.21, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 456, i32 11}
!89 = !{ptr @gp1_clk_src, !90, !"gp1_clk_src", i1 false, i1 false}
!90 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 449, i32 24}
!91 = !{ptr @ftbl_gcc_gp_clk, !92, !"ftbl_gcc_gp_clk", i1 false, i1 false}
!92 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 442, i32 30}
!93 = !{ptr @.str.23, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 487, i32 11}
!95 = !{ptr @gp2_clk_src, !96, !"gp2_clk_src", i1 false, i1 false}
!96 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 480, i32 24}
!97 = !{ptr @.str.25, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 518, i32 11}
!99 = !{ptr @gp3_clk_src, !100, !"gp3_clk_src", i1 false, i1 false}
!100 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 511, i32 24}
!101 = !{ptr @.str.27, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 559, i32 11}
!103 = !{ptr @sdcc1_apps_clk_src, !104, !"sdcc1_apps_clk_src", i1 false, i1 false}
!104 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 553, i32 25}
!105 = !{ptr @gcc_xo_sdcc1_500_map, !106, !"gcc_xo_sdcc1_500_map", i1 false, i1 false}
!106 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 112, i32 26}
!107 = !{ptr @ftbl_gcc_sdcc1_apps_clk, !108, !"ftbl_gcc_sdcc1_apps_clk", i1 false, i1 false}
!108 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 542, i32 30}
!109 = !{ptr @.str.29, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 120, i32 2}
!111 = !{ptr @gcc_xo_sdcc1_500, !112, !"gcc_xo_sdcc1_500", i1 false, i1 false}
!112 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 118, i32 27}
!113 = !{ptr @.str.30, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 1061, i32 11}
!115 = !{ptr @fephy_125m_dly_clk_src, !116, !"fephy_125m_dly_clk_src", i1 false, i1 false}
!116 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 1055, i32 24}
!117 = !{ptr @gcc_xo_125_dly_map, !118, !"gcc_xo_125_dly_map", i1 false, i1 false}
!118 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 144, i32 26}
!119 = !{ptr @ftbl_gcc_fephy_dly_clk, !120, !"ftbl_gcc_fephy_dly_clk", i1 false, i1 false}
!120 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 1050, i32 30}
!121 = !{ptr @.str.32, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 151, i32 2}
!123 = !{ptr @gcc_xo_125_dly, !124, !"gcc_xo_125_dly", i1 false, i1 false}
!124 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 149, i32 27}
!125 = !{ptr @.str.33, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 1081, i32 11}
!127 = !{ptr @wcss2g_clk_src, !128, !"wcss2g_clk_src", i1 false, i1 false}
!128 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 1075, i32 24}
!129 = !{ptr @gcc_xo_wcss2g_map, !130, !"gcc_xo_wcss2g_map", i1 false, i1 false}
!130 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 124, i32 26}
!131 = !{ptr @ftbl_gcc_wcss2g_clk, !132, !"ftbl_gcc_wcss2g_clk", i1 false, i1 false}
!132 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 1069, i32 30}
!133 = !{ptr @.str.35, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 131, i32 2}
!135 = !{ptr @gcc_xo_wcss2g, !136, !"gcc_xo_wcss2g", i1 false, i1 false}
!136 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 129, i32 27}
!137 = !{ptr @.str.36, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 1151, i32 11}
!139 = !{ptr @wcss5g_clk_src, !140, !"wcss5g_clk_src", i1 false, i1 false}
!140 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 1145, i32 24}
!141 = !{ptr @gcc_xo_wcss5g_map, !142, !"gcc_xo_wcss5g_map", i1 false, i1 false}
!142 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 134, i32 26}
!143 = !{ptr @ftbl_gcc_wcss5g_clk, !144, !"ftbl_gcc_wcss5g_clk", i1 false, i1 false}
!144 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 1139, i32 30}
!145 = !{ptr @.str.38, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 141, i32 2}
!147 = !{ptr @gcc_xo_wcss5g, !148, !"gcc_xo_wcss5g", i1 false, i1 false}
!148 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 139, i32 27}
!149 = !{ptr @.str.39, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 625, i32 12}
!151 = !{ptr @gcc_apss_ahb_clk, !152, !"gcc_apss_ahb_clk", i1 false, i1 false}
!152 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 618, i32 26}
!153 = !{ptr @.str.42, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 200, i32 12}
!155 = !{ptr @.str.43, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 202, i32 5}
!157 = !{ptr @gcc_audio_ahb_clk, !158, !"gcc_audio_ahb_clk", i1 false, i1 false}
!158 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 194, i32 26}
!159 = !{ptr @.str.46, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 217, i32 12}
!161 = !{ptr @gcc_audio_pwm_clk, !162, !"gcc_audio_pwm_clk", i1 false, i1 false}
!162 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 211, i32 26}
!163 = !{ptr @.str.49, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 643, i32 12}
!165 = !{ptr @gcc_blsp1_ahb_clk, !166, !"gcc_blsp1_ahb_clk", i1 false, i1 false}
!166 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 636, i32 26}
!167 = !{ptr @.str.52, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 252, i32 12}
!169 = !{ptr @gcc_blsp1_qup1_i2c_apps_clk, !170, !"gcc_blsp1_qup1_i2c_apps_clk", i1 false, i1 false}
!170 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 246, i32 26}
!171 = !{ptr @.str.55, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 324, i32 12}
!173 = !{ptr @gcc_blsp1_qup1_spi_apps_clk, !174, !"gcc_blsp1_qup1_spi_apps_clk", i1 false, i1 false}
!174 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 318, i32 26}
!175 = !{ptr @.str.58, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 282, i32 12}
!177 = !{ptr @gcc_blsp1_qup2_i2c_apps_clk, !178, !"gcc_blsp1_qup2_i2c_apps_clk", i1 false, i1 false}
!178 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 276, i32 26}
!179 = !{ptr @.str.61, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 355, i32 12}
!181 = !{ptr @gcc_blsp1_qup2_spi_apps_clk, !182, !"gcc_blsp1_qup2_spi_apps_clk", i1 false, i1 false}
!182 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 349, i32 26}
!183 = !{ptr @.str.64, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 400, i32 12}
!185 = !{ptr @gcc_blsp1_uart1_apps_clk, !186, !"gcc_blsp1_uart1_apps_clk", i1 false, i1 false}
!186 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 394, i32 26}
!187 = !{ptr @.str.67, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 431, i32 12}
!189 = !{ptr @gcc_blsp1_uart2_apps_clk, !190, !"gcc_blsp1_uart2_apps_clk", i1 false, i1 false}
!190 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 425, i32 26}
!191 = !{ptr @.str.70, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 659, i32 12}
!193 = !{ptr @gcc_dcd_xo_clk, !194, !"gcc_dcd_xo_clk", i1 false, i1 false}
!194 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 653, i32 26}
!195 = !{ptr @.str.73, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 469, i32 12}
!197 = !{ptr @gcc_gp1_clk, !198, !"gcc_gp1_clk", i1 false, i1 false}
!198 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 463, i32 26}
!199 = !{ptr @.str.76, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 500, i32 12}
!201 = !{ptr @gcc_gp2_clk, !202, !"gcc_gp2_clk", i1 false, i1 false}
!202 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 494, i32 26}
!203 = !{ptr @.str.79, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 531, i32 12}
!205 = !{ptr @gcc_gp3_clk, !206, !"gcc_gp3_clk", i1 false, i1 false}
!206 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 525, i32 26}
!207 = !{ptr @.str.82, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 675, i32 12}
!209 = !{ptr @gcc_boot_rom_ahb_clk, !210, !"gcc_boot_rom_ahb_clk", i1 false, i1 false}
!210 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 669, i32 26}
!211 = !{ptr @.str.85, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 693, i32 12}
!213 = !{ptr @gcc_crypto_ahb_clk, !214, !"gcc_crypto_ahb_clk", i1 false, i1 false}
!214 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 686, i32 26}
!215 = !{ptr @.str.88, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 710, i32 12}
!217 = !{ptr @.str.89, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 712, i32 5}
!219 = !{ptr @gcc_crypto_axi_clk, !220, !"gcc_crypto_axi_clk", i1 false, i1 false}
!220 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 703, i32 26}
!221 = !{ptr @.str.92, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 727, i32 12}
!223 = !{ptr @gcc_crypto_clk, !224, !"gcc_crypto_clk", i1 false, i1 false}
!224 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 720, i32 26}
!225 = !{ptr @.str.95, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 743, i32 12}
!227 = !{ptr @gcc_ess_clk, !228, !"gcc_ess_clk", i1 false, i1 false}
!228 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 737, i32 26}
!229 = !{ptr @.str.98, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 761, i32 12}
!231 = !{ptr @gcc_imem_axi_clk, !232, !"gcc_imem_axi_clk", i1 false, i1 false}
!232 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 754, i32 26}
!233 = !{ptr @.str.101, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 777, i32 12}
!235 = !{ptr @gcc_imem_cfg_ahb_clk, !236, !"gcc_imem_cfg_ahb_clk", i1 false, i1 false}
!236 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 771, i32 26}
!237 = !{ptr @.str.104, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 793, i32 12}
!239 = !{ptr @gcc_pcie_ahb_clk, !240, !"gcc_pcie_ahb_clk", i1 false, i1 false}
!240 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 787, i32 26}
!241 = !{ptr @.str.107, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 809, i32 12}
!243 = !{ptr @gcc_pcie_axi_m_clk, !244, !"gcc_pcie_axi_m_clk", i1 false, i1 false}
!244 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 803, i32 26}
!245 = !{ptr @.str.110, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 825, i32 12}
!247 = !{ptr @gcc_pcie_axi_s_clk, !248, !"gcc_pcie_axi_s_clk", i1 false, i1 false}
!248 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 819, i32 26}
!249 = !{ptr @.str.113, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 1556, i32 5}
!251 = !{ptr @pcnoc_clk_src, !252, !"pcnoc_clk_src", i1 false, i1 false}
!252 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 1548, i32 26}
!253 = !{ptr @.str.116, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 842, i32 12}
!255 = !{ptr @gcc_prng_ahb_clk, !256, !"gcc_prng_ahb_clk", i1 false, i1 false}
!256 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 835, i32 26}
!257 = !{ptr @.str.119, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 858, i32 12}
!259 = !{ptr @gcc_qpic_ahb_clk, !260, !"gcc_qpic_ahb_clk", i1 false, i1 false}
!260 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 852, i32 26}
!261 = !{ptr @.str.122, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 874, i32 12}
!263 = !{ptr @gcc_qpic_clk, !264, !"gcc_qpic_clk", i1 false, i1 false}
!264 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 868, i32 26}
!265 = !{ptr @.str.125, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 890, i32 12}
!267 = !{ptr @gcc_sdcc1_ahb_clk, !268, !"gcc_sdcc1_ahb_clk", i1 false, i1 false}
!268 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 884, i32 26}
!269 = !{ptr @.str.128, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 906, i32 12}
!271 = !{ptr @gcc_sdcc1_apps_clk, !272, !"gcc_sdcc1_apps_clk", i1 false, i1 false}
!272 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 900, i32 26}
!273 = !{ptr @.str.131, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 924, i32 12}
!275 = !{ptr @gcc_tlmm_ahb_clk, !276, !"gcc_tlmm_ahb_clk", i1 false, i1 false}
!276 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 917, i32 26}
!277 = !{ptr @.str.134, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 940, i32 12}
!279 = !{ptr @gcc_usb2_master_clk, !280, !"gcc_usb2_master_clk", i1 false, i1 false}
!280 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 934, i32 26}
!281 = !{ptr @.str.137, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 956, i32 12}
!283 = !{ptr @.str.138, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 958, i32 5}
!285 = !{ptr @gcc_usb2_sleep_clk, !286, !"gcc_usb2_sleep_clk", i1 false, i1 false}
!286 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 950, i32 26}
!287 = !{ptr @.str.141, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 972, i32 12}
!289 = !{ptr @gcc_usb2_mock_utmi_clk, !290, !"gcc_usb2_mock_utmi_clk", i1 false, i1 false}
!290 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 966, i32 26}
!291 = !{ptr @.str.144, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 1007, i32 12}
!293 = !{ptr @gcc_usb3_master_clk, !294, !"gcc_usb3_master_clk", i1 false, i1 false}
!294 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 1001, i32 26}
!295 = !{ptr @.str.147, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 1023, i32 12}
!297 = !{ptr @gcc_usb3_sleep_clk, !298, !"gcc_usb3_sleep_clk", i1 false, i1 false}
!298 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 1017, i32 26}
!299 = !{ptr @.str.150, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 1039, i32 12}
!301 = !{ptr @gcc_usb3_mock_utmi_clk, !302, !"gcc_usb3_mock_utmi_clk", i1 false, i1 false}
!302 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 1033, i32 26}
!303 = !{ptr @.str.153, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 1095, i32 12}
!305 = !{ptr @gcc_wcss2g_clk, !306, !"gcc_wcss2g_clk", i1 false, i1 false}
!306 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 1089, i32 26}
!307 = !{ptr @.str.156, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 1112, i32 12}
!309 = !{ptr @gcc_wcss2g_ref_clk, !310, !"gcc_wcss2g_ref_clk", i1 false, i1 false}
!310 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 1106, i32 26}
!311 = !{ptr @.str.159, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 1129, i32 12}
!313 = !{ptr @gcc_wcss2g_rtc_clk, !314, !"gcc_wcss2g_rtc_clk", i1 false, i1 false}
!314 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 1123, i32 26}
!315 = !{ptr @.str.162, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 1164, i32 12}
!317 = !{ptr @gcc_wcss5g_clk, !318, !"gcc_wcss5g_clk", i1 false, i1 false}
!318 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 1158, i32 26}
!319 = !{ptr @.str.165, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 1181, i32 12}
!321 = !{ptr @gcc_wcss5g_ref_clk, !322, !"gcc_wcss5g_ref_clk", i1 false, i1 false}
!322 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 1175, i32 26}
!323 = !{ptr @.str.168, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 1198, i32 12}
!325 = !{ptr @gcc_wcss5g_rtc_clk, !326, !"gcc_wcss5g_rtc_clk", i1 false, i1 false}
!326 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 1192, i32 26}
!327 = !{ptr @gcc_apss_sdcc_clk, !328, !"gcc_apss_sdcc_clk", i1 false, i1 false}
!328 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 1410, i32 25}
!329 = !{ptr @clk_fepll_div_ops, !330, !"clk_fepll_div_ops", i1 false, i1 false}
!330 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 1406, i32 29}
!331 = !{ptr @gcc_apss_ddrpll_vco, !332, !"gcc_apss_ddrpll_vco", i1 false, i1 false}
!332 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 1230, i32 35}
!333 = !{ptr @gcc_fepll125_clk, !334, !"gcc_fepll125_clk", i1 false, i1 false}
!334 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 1425, i32 25}
!335 = !{ptr @gcc_fepll_vco, !336, !"gcc_fepll_vco", i1 false, i1 false}
!336 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 1238, i32 35}
!337 = !{ptr @gcc_fepll125dly_clk, !338, !"gcc_fepll125dly_clk", i1 false, i1 false}
!338 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 1440, i32 25}
!339 = !{ptr @gcc_fepll200_clk, !340, !"gcc_fepll200_clk", i1 false, i1 false}
!340 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 1455, i32 25}
!341 = !{ptr @gcc_fepll500_clk, !342, !"gcc_fepll500_clk", i1 false, i1 false}
!342 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 1470, i32 25}
!343 = !{ptr @gcc_fepllwcss2g_clk, !344, !"gcc_fepllwcss2g_clk", i1 false, i1 false}
!344 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 1493, i32 25}
!345 = !{ptr @fepllwcss_clk_div_table, !346, !"fepllwcss_clk_div_table", i1 false, i1 false}
!346 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 1485, i32 35}
!347 = !{ptr @gcc_fepllwcss5g_clk, !348, !"gcc_fepllwcss5g_clk", i1 false, i1 false}
!348 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 1511, i32 25}
!349 = !{ptr @.str.185, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 1362, i32 12}
!351 = !{ptr @gcc_apss_cpu_plldiv_clk, !352, !"gcc_apss_cpu_plldiv_clk", i1 false, i1 false}
!352 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 1354, i32 25}
!353 = !{ptr @clk_regmap_cpu_div_ops, !354, !"clk_regmap_cpu_div_ops", i1 false, i1 false}
!354 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 1330, i32 29}
!355 = !{ptr @ftbl_apss_ddr_pll, !356, !"ftbl_apss_ddr_pll", i1 false, i1 false}
!356 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 1336, i32 30}
!357 = !{ptr @gcc_pcnoc_ahb_clk_src, !358, !"gcc_pcnoc_ahb_clk_src", i1 false, i1 false}
!358 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 1535, i32 24}
!359 = !{ptr @ftbl_gcc_pcnoc_ahb_clk, !360, !"ftbl_gcc_pcnoc_ahb_clk", i1 false, i1 false}
!360 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 1529, i32 30}
!361 = !{ptr @gcc_ipq4019_resets, !362, !"gcc_ipq4019_resets", i1 false, i1 false}
!362 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 1638, i32 36}
!363 = !{ptr @.str.189, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 591, i32 11}
!365 = !{ptr @apps_clk_src, !366, !"apps_clk_src", i1 false, i1 false}
!366 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 585, i32 24}
!367 = !{ptr @gcc_xo_ddr_500_200_map, !368, !"gcc_xo_ddr_500_200_map", i1 false, i1 false}
!368 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 154, i32 26}
!369 = !{ptr @ftbl_gcc_apps_clk, !370, !"ftbl_gcc_apps_clk", i1 false, i1 false}
!370 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 567, i32 30}
!371 = !{ptr @gcc_xo_ddr_500_200, !372, !"gcc_xo_ddr_500_200", i1 false, i1 false}
!372 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 167, i32 27}
!373 = !{ptr @gcc_ipq4019_cpu_clk_notifier, !374, !"gcc_ipq4019_cpu_clk_notifier", i1 false, i1 false}
!374 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 1747, i32 30}
!375 = !{ptr @gcc_ipq4019_match_table, !376, !"gcc_ipq4019_match_table", i1 false, i1 false}
!376 = !{!"../drivers/clk/qcom/gcc-ipq4019.c", i32 1728, i32 34}
!377 = !{i32 1, !"wchar_size", i32 2}
!378 = !{i32 1, !"min_enum_size", i32 4}
!379 = !{i32 8, !"branch-target-enforcement", i32 0}
!380 = !{i32 8, !"sign-return-address", i32 0}
!381 = !{i32 8, !"sign-return-address-all", i32 0}
!382 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!383 = !{i32 7, !"uwtable", i32 1}
!384 = !{i32 7, !"frame-pointer", i32 2}
!385 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!386 = !{!"auto-init"}
!387 = !{!"branch_weights", i32 2000, i32 1}
!388 = !{i64 2148641743, i64 2148642023, i64 2148642357, i64 2148642691}
