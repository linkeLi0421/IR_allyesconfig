; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/phy_lcn.c_pt.bc'
source_filename = "../drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/phy_lcn.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.lcnphy_sfo_cfg = type { i16, i16 }
%struct.lcnphy_spb_tone = type { i16, i16 }
%struct.phytbl_info = type { ptr, i32, i32, i32, i32 }
%struct.lcnphy_tx_gain_tbl_entry = type { i8, i8, i8, i8, i8 }
%struct.lcnphy_radio_regs = type { i16, i8, i8, i8, i8 }
%struct.chan_info_2064_lcnphy = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.brcms_phy = type { %struct.brcms_phy_pub, ptr, %struct.phy_func_ptr, %union.anon, i8, ptr, ptr, %struct.brcms_phy_pub, i8, i8, i8, i8, i16, i8, i16, i8, i8, i8, i8, i8, i32, i8, i8, i32, i32, i8, i8, i32, [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i16], i8, i8, i8, i8, [101 x i8], [101 x i8], [101 x i8], [101 x i8], [101 x i8], [101 x i8], [101 x i8], %struct.brcms_phy_srom_fem, %struct.brcms_phy_srom_fem, i8, i8, i8, i8, i8, i8, i16, i16, i8, i8, i8, i8, [3 x i8], i8, i8, i8, [101 x i8], [101 x i8], [84 x i8], i8, i8, i8, i16, i16, i8, i8, i32, i32, i16, i16, i16, i16, i16, i32, i16, i8, i32, i32, i8, i8, i32, i8, i8, i8, i8, i8, i8, i16, i16, i8, i8, i16, i16, i16, i16, i16, [32 x [9 x %struct.lo_complex_abgphy_info]], [32 x [9 x i8]], [64 x i16], i8, i16, i16, [8 x i8], i16, i32, i32, i32, i32, i32, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, ptr, i16, i16, ptr, i32, i8, ptr, ptr, ptr, ptr, ptr, [2 x i16], i32, i8, i8, i32, i32, i32, i32, i8, i8, i8, i32, [11 x i16], i8, [2 x %struct.nphy_txpwrindex], [2 x %struct.nphy_pwrctrl], i16, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i16], [8 x i16], [8 x i16], [8 x i16], i32, i8, i8, i8, i8, i8, [4 x [16 x i16]], i8, i8, i8, i16, i16, i8, i8, i8, i32, i8, i8, i8, i8, [11 x i16], i16, i16, i16, i16, i16, ptr, i8, i8, i16, %struct.txiqcal_cache, %struct.rssical_cache, [2 x i8], i8, i32, [2 x i16], [2 x i8], [2 x i16], i8, i32, i8, i8, i8, i8, i16, [2 x i16], i32, i8, i8, i16, i16, i8, [22 x i16], [15 x i16], [2 x i8], [2 x i8], [2 x i8], [2 x i16], %struct.nphy_txgains, i16, i16, i16, i8, i8, i8, i16, [3 x i16], %struct.nphy_noisevar_buf, i8, i8, i8, i8, i16, i8, i16, i8, i16, i16, i16, i16, i16, i16, i16, i16, i8, [4 x i16], i8, i8, i16, i16, i16, i32, i32, i8, [4 x i8], i8, i32, i32, ptr }
%struct.phy_func_ptr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon = type { ptr }
%struct.brcms_phy_pub = type { i32, i32, i8, i16, i8, i8, i32, i32, i8 }
%struct.brcms_phy_srom_fem = type { i8, i8, i8, i8, i8 }
%struct.lo_complex_abgphy_info = type { i8, i8 }
%struct.nphy_txpwrindex = type { i8, i8, i8, i16, i16, i16, i8, i16, i16, i16 }
%struct.nphy_pwrctrl = type { i8, i8, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i16, i16, i16 }
%struct.txiqcal_cache = type { [8 x i16], [8 x i16], %struct.nphy_iq_comp, [8 x i16], [8 x i16], %struct.nphy_iq_comp }
%struct.nphy_iq_comp = type { i16, i16, i16, i16 }
%struct.rssical_cache = type { [2 x i16], [12 x i16], [2 x i16], [12 x i16] }
%struct.nphy_txgains = type { [2 x i16], [2 x i16], [2 x i16], [2 x i16], [2 x i16] }
%struct.nphy_noisevar_buf = type { i32, [10 x i32], [10 x i32], [10 x i32] }
%struct.brcms_phy_lcnphy = type { i32, i8, i8, i16, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32, i8, i16, i16, i16, i16, i8, i16, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i8, i16, i16, i8, i8, [101 x i8], i8, i8, i8, i8, i8, i8, i8, i32, i8, i16, i16, i16, i16, i16, %struct.lcnphy_cal_results, i8, i8, i32, i8, i8, i8, i16, i16, i16, i16, i16, i8, i32, [101 x i8] }
%struct.lcnphy_cal_results = type { i16, i16, i16, i8, i8, i8, i8, [11 x i16], i16, [64 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.shared_phy = type { ptr, i32, ptr, i32, i32, i8, i8, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, [8 x i8], i32, i8, i8, i8, i8, i8, i8 }
%struct.lcnphy_txgains = type { i16, i16, i16, i16 }
%struct.cordic_iq = type { i32, i32 }
%struct.bcma_bus = type { ptr, ptr, ptr, i32, i8, ptr, %struct.bcma_chipinfo, %struct.bcma_boardinfo, ptr, %struct.list_head, i8, i8, %struct.bcma_drv_cc, %struct.bcma_drv_cc_b, [2 x %struct.bcma_drv_pci], %struct.bcma_drv_pcie2, %struct.bcma_drv_mips, %struct.bcma_drv_gmac_cmn, %struct.ssb_sprom }
%struct.bcma_chipinfo = type { i16, i8, i8 }
%struct.bcma_boardinfo = type { i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.bcma_drv_cc = type { ptr, i32, i32, i32, i8, i16, %struct.bcma_chipcommon_pmu, %struct.bcma_pflash, %struct.bcma_sflash, %struct.bcma_nflash, i32, [4 x %struct.bcma_serial_port], i32, ptr, %struct.spinlock, %struct.gpio_chip }
%struct.bcma_chipcommon_pmu = type { ptr, i8, i32 }
%struct.bcma_pflash = type { i8 }
%struct.bcma_sflash = type { i8, i32, i16, i32 }
%struct.bcma_nflash = type { i8, i8 }
%struct.bcma_serial_port = type { ptr, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.101, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.101 = type { ptr }
%struct.bcma_drv_cc_b = type { ptr, i8, ptr }
%struct.bcma_drv_pci = type { ptr, i8 }
%struct.bcma_drv_pcie2 = type { ptr, i16 }
%struct.bcma_drv_mips = type { ptr, i8 }
%struct.bcma_drv_gmac_cmn = type { ptr, %struct.mutex }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ssb_sprom = type { i8, i8, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, [2 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], [4 x i8], [4 x i8], [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [4 x %struct.ssb_sprom_core_pwr_info], %struct.anon.102, %struct.anon.103, [8 x i16], [8 x i16], [8 x i16], [8 x i16], i8, [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8 }
%struct.ssb_sprom_core_pwr_info = type { i8, i8, i8, i8, i8, i8, [4 x i16], [4 x i16], [4 x i16], [4 x i16] }
%struct.anon.102 = type { i8, i8, i8, i8 }
%struct.anon.103 = type { %struct.anon.104, %struct.anon.105 }
%struct.anon.104 = type { i8, i8, i8, i8, i8 }
%struct.anon.105 = type { i8, i8, i8, i8, i8 }
%struct.bcma_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lcnphy_iq_est = type { i32, i32, i32 }

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@lcnphy_sfo_cfg = internal constant { [14 x %struct.lcnphy_sfo_cfg], [40 x i8] } { [14 x %struct.lcnphy_sfo_cfg] [%struct.lcnphy_sfo_cfg { i16 965, i16 1087 }, %struct.lcnphy_sfo_cfg { i16 967, i16 1085 }, %struct.lcnphy_sfo_cfg { i16 969, i16 1082 }, %struct.lcnphy_sfo_cfg { i16 971, i16 1080 }, %struct.lcnphy_sfo_cfg { i16 973, i16 1078 }, %struct.lcnphy_sfo_cfg { i16 975, i16 1076 }, %struct.lcnphy_sfo_cfg { i16 977, i16 1073 }, %struct.lcnphy_sfo_cfg { i16 979, i16 1071 }, %struct.lcnphy_sfo_cfg { i16 981, i16 1069 }, %struct.lcnphy_sfo_cfg { i16 983, i16 1067 }, %struct.lcnphy_sfo_cfg { i16 985, i16 1065 }, %struct.lcnphy_sfo_cfg { i16 987, i16 1063 }, %struct.lcnphy_sfo_cfg { i16 989, i16 1060 }, %struct.lcnphy_sfo_cfg { i16 994, i16 1055 }], [40 x i8] zeroinitializer }, align 32
@lcnphy_gain_table = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\F0\F3\0A\07\04\00\03\06\09\0C\0F\12\15\18\1B\1E!$'*-0258;>ADGJMPSVY\\", [59 x i8] zeroinitializer }, align 32
@lcnphy_gain_index_offset_for_rssi = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\07\07\07\07\07\07\07\08\07\07\06\07\07\04\04\04\04\04\04\04\04\03\03\03\03\03\03\04\02\02\02\02\02\02\FF\FE\FE\FE", [58 x i8] zeroinitializer }, align 32
@__const.wlc_lcnphy_set_tx_pwr_soft_ctrl.cck_offset = private unnamed_addr constant [4 x i32] [i32 22, i32 22, i32 22, i32 22], align 4
@__const.wlc_lcnphy_tx_iqlo_cal.commands_recal = private unnamed_addr constant [6 x i16] [i16 -31692, i16 -31948, i16 -32636, i16 -32153, i16 -32682, i16 -32204], align 2
@__const.wlc_lcnphy_tx_iqlo_cal.command_nums_recal = private unnamed_addr constant [6 x i16] [i16 31383, i16 31383, i16 31383, i16 31367, i16 31367, i16 31639], align 2
@lcnphy_iqcal_loft_gainladder = internal constant { [20 x i16], [56 x i8] } { [20 x i16] [i16 512, i16 768, i16 1024, i16 1536, i16 2048, i16 2816, i16 4096, i16 4097, i16 4098, i16 4099, i16 4100, i16 4101, i16 4102, i16 4103, i16 5895, i16 8199, i16 11527, i16 16391, i16 23303, i16 -32761], [56 x i8] zeroinitializer }, align 32
@lcnphy_iqcal_ir_gainladder = internal constant { [20 x i16], [56 x i8] } { [20 x i16] [i16 256, i16 512, i16 1024, i16 1536, i16 2048, i16 2816, i16 4096, i16 5888, i16 8192, i16 11520, i16 16384, i16 16385, i16 16386, i16 16387, i16 16388, i16 16389, i16 16390, i16 16391, i16 23303, i16 -32761], [56 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@iqlo_loopback_rf_regs = internal constant { [20 x i16], [56 x i8] } { [20 x i16] [i16 54, i16 282, i16 58, i16 37, i16 40, i16 5, i16 274, i16 255, i16 287, i16 11, i16 275, i16 7, i16 252, i16 253, i16 18, i16 87, i16 89, i16 92, i16 120, i16 146], [56 x i8] zeroinitializer }, align 32
@tbl_iqcal_gainparams_lcnphy_2G = internal constant { [1 x [9 x i16]], [46 x i8] } zeroinitializer, align 32
@lcnphy_spb_tone_3750 = internal constant { [32 x %struct.lcnphy_spb_tone], [32 x i8] } { [32 x %struct.lcnphy_spb_tone] [%struct.lcnphy_spb_tone { i16 88, i16 0 }, %struct.lcnphy_spb_tone { i16 73, i16 49 }, %struct.lcnphy_spb_tone { i16 34, i16 81 }, %struct.lcnphy_spb_tone { i16 -17, i16 86 }, %struct.lcnphy_spb_tone { i16 -62, i16 62 }, %struct.lcnphy_spb_tone { i16 -86, i16 17 }, %struct.lcnphy_spb_tone { i16 -81, i16 -34 }, %struct.lcnphy_spb_tone { i16 -49, i16 -73 }, %struct.lcnphy_spb_tone { i16 0, i16 -88 }, %struct.lcnphy_spb_tone { i16 49, i16 -73 }, %struct.lcnphy_spb_tone { i16 81, i16 -34 }, %struct.lcnphy_spb_tone { i16 86, i16 17 }, %struct.lcnphy_spb_tone { i16 62, i16 62 }, %struct.lcnphy_spb_tone { i16 17, i16 86 }, %struct.lcnphy_spb_tone { i16 -34, i16 81 }, %struct.lcnphy_spb_tone { i16 -73, i16 49 }, %struct.lcnphy_spb_tone { i16 -88, i16 0 }, %struct.lcnphy_spb_tone { i16 -73, i16 -49 }, %struct.lcnphy_spb_tone { i16 -34, i16 -81 }, %struct.lcnphy_spb_tone { i16 17, i16 -86 }, %struct.lcnphy_spb_tone { i16 62, i16 -62 }, %struct.lcnphy_spb_tone { i16 86, i16 -17 }, %struct.lcnphy_spb_tone { i16 81, i16 34 }, %struct.lcnphy_spb_tone { i16 49, i16 73 }, %struct.lcnphy_spb_tone { i16 0, i16 88 }, %struct.lcnphy_spb_tone { i16 -49, i16 73 }, %struct.lcnphy_spb_tone { i16 -81, i16 34 }, %struct.lcnphy_spb_tone { i16 -86, i16 -17 }, %struct.lcnphy_spb_tone { i16 -62, i16 -62 }, %struct.lcnphy_spb_tone { i16 -17, i16 -86 }, %struct.lcnphy_spb_tone { i16 34, i16 -81 }, %struct.lcnphy_spb_tone { i16 73, i16 -49 }], [32 x i8] zeroinitializer }, align 32
@dot11lcnphytbl_info_sz_rev0 = external dso_local local_unnamed_addr constant i32, align 4
@dot11lcnphytbl_info_rev0 = external dso_local constant [0 x %struct.phytbl_info], align 4
@dot11lcnphy_2GHz_extPA_gaintable_rev0 = external dso_local local_unnamed_addr constant [0 x %struct.lcnphy_tx_gain_tbl_entry], align 1
@dot11lcnphy_2GHz_gaintable_rev0 = external dso_local local_unnamed_addr constant [0 x %struct.lcnphy_tx_gain_tbl_entry], align 1
@dot11lcnphytbl_rx_gain_info_2G_rev2_sz = external dso_local local_unnamed_addr constant i32, align 4
@dot11lcnphytbl_rx_gain_info_extlna_2G_rev2 = external dso_local constant [0 x %struct.phytbl_info], align 4
@dot11lcnphytbl_rx_gain_info_2G_rev2 = external dso_local constant [0 x %struct.phytbl_info], align 4
@dot11lcnphytbl_rx_gain_info_5G_rev2_sz = external dso_local local_unnamed_addr constant i32, align 4
@dot11lcnphytbl_rx_gain_info_extlna_5G_rev2 = external dso_local constant [0 x %struct.phytbl_info], align 4
@dot11lcnphytbl_rx_gain_info_5G_rev2 = external dso_local constant [0 x %struct.phytbl_info], align 4
@dot11lcn_sw_ctrl_tbl_info_4313_bt_epa = external dso_local constant %struct.phytbl_info, align 4
@dot11lcn_sw_ctrl_tbl_info_4313_bt_epa_p250 = external dso_local constant %struct.phytbl_info, align 4
@dot11lcn_sw_ctrl_tbl_info_4313_epa = external dso_local constant %struct.phytbl_info, align 4
@dot11lcn_sw_ctrl_tbl_info_4313_bt_ipa = external dso_local constant %struct.phytbl_info, align 4
@dot11lcn_sw_ctrl_tbl_info_4313 = external dso_local constant %struct.phytbl_info, align 4
@lcnphy_radio_regs_2064 = internal constant { [306 x %struct.lcnphy_radio_regs], [468 x i8] } { [306 x %struct.lcnphy_radio_regs] [%struct.lcnphy_radio_regs zeroinitializer, %struct.lcnphy_radio_regs { i16 1, i8 100, i8 100, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 2, i8 32, i8 32, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 3, i8 102, i8 102, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 4, i8 -8, i8 -8, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 5, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 6, i8 16, i8 16, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 7, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 8, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 9, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 10, i8 55, i8 55, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 11, i8 6, i8 6, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 12, i8 85, i8 85, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 13, i8 -117, i8 -117, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 14, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 15, i8 5, i8 5, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 16, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 17, i8 14, i8 14, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 18, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 19, i8 11, i8 11, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 20, i8 2, i8 2, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 21, i8 18, i8 18, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 22, i8 18, i8 18, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 23, i8 12, i8 12, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 24, i8 12, i8 12, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 25, i8 12, i8 12, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 26, i8 8, i8 8, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 27, i8 2, i8 2, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 28, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 29, i8 1, i8 1, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 30, i8 18, i8 18, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 31, i8 110, i8 110, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 32, i8 2, i8 2, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 33, i8 35, i8 35, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 34, i8 8, i8 8, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 35, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 36, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 37, i8 12, i8 12, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 38, i8 51, i8 51, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 39, i8 85, i8 85, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 40, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 41, i8 48, i8 48, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 42, i8 11, i8 11, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 43, i8 27, i8 27, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 44, i8 3, i8 3, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 45, i8 27, i8 27, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 46, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 47, i8 32, i8 32, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 48, i8 10, i8 10, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 49, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 50, i8 98, i8 98, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 51, i8 25, i8 25, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 52, i8 51, i8 51, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 53, i8 119, i8 119, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 54, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 55, i8 112, i8 112, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 56, i8 3, i8 3, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 57, i8 15, i8 15, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 58, i8 6, i8 6, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 59, i8 -49, i8 -49, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 60, i8 26, i8 26, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 61, i8 6, i8 6, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 62, i8 66, i8 66, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 63, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 64, i8 -5, i8 -5, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 65, i8 -102, i8 -102, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 66, i8 122, i8 122, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 67, i8 41, i8 41, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 68, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 69, i8 8, i8 8, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 70, i8 -50, i8 -50, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 71, i8 39, i8 39, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 72, i8 98, i8 98, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 73, i8 6, i8 6, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 74, i8 88, i8 88, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 75, i8 -9, i8 -9, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 76, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 77, i8 -77, i8 -77, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 78, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 79, i8 2, i8 2, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 80, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 81, i8 9, i8 9, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 82, i8 5, i8 5, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 83, i8 23, i8 23, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 84, i8 56, i8 56, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 85, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 86, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 87, i8 11, i8 11, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 88, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 89, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 90, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 91, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 92, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 93, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 94, i8 -120, i8 -120, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 95, i8 -52, i8 -52, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 96, i8 116, i8 116, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 97, i8 116, i8 116, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 98, i8 116, i8 116, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 99, i8 68, i8 68, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 100, i8 119, i8 119, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 101, i8 68, i8 68, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 102, i8 119, i8 119, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 103, i8 85, i8 85, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 104, i8 119, i8 119, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 105, i8 119, i8 119, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 106, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 107, i8 127, i8 127, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 108, i8 8, i8 8, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 109, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 110, i8 -120, i8 -120, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 111, i8 102, i8 102, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 112, i8 102, i8 102, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 113, i8 40, i8 40, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 114, i8 85, i8 85, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 115, i8 4, i8 4, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 116, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 117, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 118, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 119, i8 1, i8 1, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 120, i8 -42, i8 -42, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 121, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 122, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 123, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 124, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 125, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 126, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 127, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 128, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 129, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 130, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 131, i8 -76, i8 -76, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 132, i8 1, i8 1, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 133, i8 32, i8 32, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 134, i8 5, i8 5, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 135, i8 -1, i8 -1, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 136, i8 7, i8 7, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 137, i8 119, i8 119, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 138, i8 119, i8 119, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 139, i8 119, i8 119, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 140, i8 119, i8 119, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 141, i8 8, i8 8, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 142, i8 10, i8 10, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 143, i8 8, i8 8, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 144, i8 24, i8 24, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 145, i8 5, i8 5, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 146, i8 31, i8 31, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 147, i8 16, i8 16, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 148, i8 3, i8 3, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 149, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 150, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 151, i8 -86, i8 -86, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 152, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 153, i8 35, i8 35, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 154, i8 7, i8 7, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 155, i8 15, i8 15, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 156, i8 16, i8 16, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 157, i8 3, i8 3, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 158, i8 4, i8 4, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 159, i8 32, i8 32, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 160, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 161, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 162, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 163, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 164, i8 1, i8 1, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 165, i8 119, i8 119, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 166, i8 119, i8 119, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 167, i8 119, i8 119, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 168, i8 119, i8 119, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 169, i8 -116, i8 -116, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 170, i8 -120, i8 -120, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 171, i8 120, i8 120, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 172, i8 87, i8 87, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 173, i8 -120, i8 -120, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 174, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 175, i8 8, i8 8, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 176, i8 -120, i8 -120, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 177, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 178, i8 27, i8 27, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 179, i8 3, i8 3, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 180, i8 36, i8 36, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 181, i8 3, i8 3, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 182, i8 27, i8 27, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 183, i8 36, i8 36, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 184, i8 3, i8 3, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 185, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 186, i8 -86, i8 -86, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 187, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 188, i8 4, i8 4, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 189, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 190, i8 8, i8 8, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 191, i8 17, i8 17, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 192, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 193, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 194, i8 98, i8 98, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 195, i8 30, i8 30, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 196, i8 51, i8 51, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 197, i8 55, i8 55, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 198, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 199, i8 112, i8 112, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 200, i8 30, i8 30, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 201, i8 6, i8 6, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 202, i8 4, i8 4, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 203, i8 47, i8 47, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 204, i8 15, i8 15, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 205, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 206, i8 -1, i8 -1, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 207, i8 8, i8 8, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 208, i8 63, i8 63, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 209, i8 63, i8 63, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 210, i8 63, i8 63, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 211, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 212, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 213, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 214, i8 -52, i8 -52, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 215, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 216, i8 8, i8 8, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 217, i8 8, i8 8, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 218, i8 8, i8 8, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 219, i8 17, i8 17, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 220, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 221, i8 -121, i8 -121, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 222, i8 -120, i8 -120, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 223, i8 8, i8 8, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 224, i8 8, i8 8, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 225, i8 8, i8 8, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 226, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 227, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 228, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 229, i8 -11, i8 -11, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 230, i8 48, i8 48, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 231, i8 1, i8 1, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 232, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 233, i8 -1, i8 -1, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 234, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 235, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 236, i8 34, i8 34, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 237, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 238, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 239, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 240, i8 3, i8 3, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 241, i8 1, i8 1, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 242, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 243, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 244, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 245, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 246, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 247, i8 6, i8 6, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 248, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 249, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 250, i8 64, i8 64, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 251, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 252, i8 1, i8 1, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 253, i8 -128, i8 -128, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 254, i8 2, i8 2, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 255, i8 16, i8 16, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 256, i8 2, i8 2, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 257, i8 30, i8 30, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 258, i8 30, i8 30, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 259, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 260, i8 31, i8 31, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 261, i8 0, i8 8, i8 0, i8 1 }, %struct.lcnphy_radio_regs { i16 262, i8 42, i8 42, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 263, i8 15, i8 15, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 264, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 265, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 266, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 267, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 268, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 269, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 270, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 271, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 272, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 273, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 274, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 275, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 276, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 277, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 278, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 279, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 280, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 281, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 282, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 283, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 284, i8 1, i8 1, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 285, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 286, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 287, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 288, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 289, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 290, i8 -128, i8 -128, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 291, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 292, i8 -8, i8 -8, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 293, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 294, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 295, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 296, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 297, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 298, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 299, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 300, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 301, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 302, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 303, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 304, i8 0, i8 0, i8 0, i8 0 }, %struct.lcnphy_radio_regs { i16 -1, i8 0, i8 0, i8 0, i8 0 }], [468 x i8] zeroinitializer }, align 32
@chan_info_2064_lcnphy = internal constant { [14 x %struct.chan_info_2064_lcnphy], [32 x i8] } { [14 x %struct.chan_info_2064_lcnphy] [%struct.chan_info_2064_lcnphy { i32 1, i32 2412, i8 11, i8 10, i8 0, i8 7, i8 10, i8 -120, i8 -120, i8 -128 }, %struct.chan_info_2064_lcnphy { i32 2, i32 2417, i8 11, i8 10, i8 0, i8 7, i8 10, i8 -120, i8 -120, i8 -128 }, %struct.chan_info_2064_lcnphy { i32 3, i32 2422, i8 11, i8 10, i8 0, i8 7, i8 10, i8 -120, i8 -120, i8 -128 }, %struct.chan_info_2064_lcnphy { i32 4, i32 2427, i8 11, i8 10, i8 0, i8 7, i8 10, i8 -120, i8 -120, i8 -128 }, %struct.chan_info_2064_lcnphy { i32 5, i32 2432, i8 11, i8 10, i8 0, i8 7, i8 10, i8 -120, i8 -120, i8 -128 }, %struct.chan_info_2064_lcnphy { i32 6, i32 2437, i8 11, i8 10, i8 0, i8 7, i8 10, i8 -120, i8 -120, i8 -128 }, %struct.chan_info_2064_lcnphy { i32 7, i32 2442, i8 11, i8 10, i8 0, i8 7, i8 10, i8 -120, i8 -120, i8 -128 }, %struct.chan_info_2064_lcnphy { i32 8, i32 2447, i8 11, i8 10, i8 0, i8 7, i8 10, i8 -120, i8 -120, i8 -128 }, %struct.chan_info_2064_lcnphy { i32 9, i32 2452, i8 11, i8 10, i8 0, i8 7, i8 10, i8 -120, i8 -120, i8 -128 }, %struct.chan_info_2064_lcnphy { i32 10, i32 2457, i8 11, i8 10, i8 0, i8 7, i8 10, i8 -120, i8 -120, i8 -128 }, %struct.chan_info_2064_lcnphy { i32 11, i32 2462, i8 11, i8 10, i8 0, i8 7, i8 10, i8 -120, i8 -120, i8 -128 }, %struct.chan_info_2064_lcnphy { i32 12, i32 2467, i8 11, i8 10, i8 0, i8 7, i8 10, i8 -120, i8 -120, i8 -128 }, %struct.chan_info_2064_lcnphy { i32 13, i32 2472, i8 11, i8 10, i8 0, i8 7, i8 10, i8 -120, i8 -120, i8 -128 }, %struct.chan_info_2064_lcnphy { i32 14, i32 2484, i8 11, i8 10, i8 0, i8 7, i8 10, i8 -120, i8 -120, i8 -128 }], [32 x i8] zeroinitializer }, align 32
@wlc_lcnphy_radio_2064_channel_tune_4313.reg038 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\0D\0E\0D\0D\0D\0C\0A\0B\0B\03\03\02\00\00", [18 x i8] zeroinitializer }, align 32
@LCNPHY_txdigfiltcoeffs_cck = internal constant { [13 x [17 x i16]], [102 x i8] } { [13 x [17 x i16]] [[17 x i16] [i16 0, i16 1, i16 415, i16 1874, i16 64, i16 128, i16 64, i16 792, i16 1656, i16 64, i16 128, i16 64, i16 778, i16 1582, i16 64, i16 128, i16 64], [17 x i16] [i16 1, i16 1, i16 402, i16 1847, i16 259, i16 59, i16 259, i16 671, i16 1794, i16 68, i16 54, i16 68, i16 608, i16 1863, i16 93, i16 167, i16 93], [17 x i16] [i16 2, i16 1, i16 415, i16 1874, i16 64, i16 128, i16 64, i16 792, i16 1656, i16 192, i16 384, i16 192, i16 778, i16 1582, i16 64, i16 128, i16 64], [17 x i16] [i16 3, i16 1, i16 302, i16 1841, i16 129, i16 258, i16 129, i16 658, i16 1720, i16 205, i16 410, i16 205, i16 754, i16 1760, i16 170, i16 340, i16 170], [17 x i16] [i16 20, i16 1, i16 360, i16 1884, i16 242, i16 1734, i16 242, i16 752, i16 1720, i16 205, i16 1845, i16 205, i16 767, i16 1760, i16 256, i16 185, i16 256], [17 x i16] [i16 21, i16 1, i16 360, i16 1884, i16 149, i16 1874, i16 149, i16 752, i16 1720, i16 205, i16 1883, i16 205, i16 767, i16 1760, i16 256, i16 273, i16 256], [17 x i16] [i16 22, i16 1, i16 360, i16 1884, i16 98, i16 1948, i16 98, i16 752, i16 1720, i16 205, i16 1924, i16 205, i16 767, i16 1760, i16 256, i16 352, i16 256], [17 x i16] [i16 23, i16 1, i16 350, i16 1884, i16 116, i16 1966, i16 116, i16 752, i16 1720, i16 205, i16 2008, i16 205, i16 767, i16 1760, i16 128, i16 233, i16 128], [17 x i16] [i16 24, i16 1, i16 325, i16 1884, i16 32, i16 40, i16 32, i16 756, i16 1720, i16 256, i16 471, i16 256, i16 766, i16 1760, i16 256, i16 1881, i16 256], [17 x i16] [i16 25, i16 1, i16 299, i16 1884, i16 51, i16 64, i16 51, i16 736, i16 1720, i16 256, i16 471, i16 256, i16 765, i16 1760, i16 256, i16 1881, i16 256], [17 x i16] [i16 26, i16 1, i16 277, i16 1943, i16 39, i16 117, i16 88, i16 637, i16 1838, i16 64, i16 192, i16 144, i16 614, i16 1864, i16 128, i16 384, i16 288], [17 x i16] [i16 27, i16 1, i16 245, i16 1943, i16 49, i16 147, i16 110, i16 626, i16 1838, i16 256, i16 768, i16 576, i16 613, i16 1864, i16 128, i16 384, i16 288], [17 x i16] [i16 30, i16 1, i16 302, i16 1841, i16 61, i16 122, i16 61, i16 658, i16 1720, i16 205, i16 410, i16 205, i16 754, i16 1760, i16 170, i16 340, i16 170]], [102 x i8] zeroinitializer }, align 32
@LCNPHY_txdigfiltcoeffs_ofdm = internal constant { [3 x [17 x i16]], [58 x i8] } { [3 x [17 x i16]] [[17 x i16] [i16 0, i16 0, i16 162, i16 0, i16 256, i16 256, i16 0, i16 0, i16 0, i16 256, i16 0, i16 0, i16 632, i16 -352, i16 128, i16 256, i16 128], [17 x i16] [i16 1, i16 0, i16 374, i16 -135, i16 16, i16 32, i16 16, i16 799, i16 -396, i16 50, i16 32, i16 50, i16 750, i16 -469, i16 212, i16 -50, i16 212], [17 x i16] [i16 2, i16 0, i16 375, i16 -234, i16 37, i16 76, i16 37, i16 799, i16 -396, i16 32, i16 20, i16 32, i16 748, i16 -270, i16 128, i16 -30, i16 128]], [58 x i8] zeroinitializer }, align 32
@lcnphy_23bitgaincode_table = internal constant { [37 x i32], [44 x i8] } { [37 x i32] [i32 2097408, i32 2097664, i32 2097156, i32 2097172, i32 2097188, i32 2097204, i32 2097460, i32 2097716, i32 2097972, i32 2098228, i32 2097207, i32 2097463, i32 2097719, i32 2097975, i32 2098231, i32 53, i32 309, i32 565, i32 55, i32 311, i32 567, i32 823, i32 319, i32 575, i32 831, i32 847, i32 1103, i32 5199, i32 9295, i32 9551, i32 13647, i32 17743, i32 17999, i32 83535, i32 149071, i32 214607, i32 280143], [44 x i8] zeroinitializer }, align 32
@switch.table.wlc_lcnphy_load_tx_iir_filter = internal constant { [30 x i32], [40 x i8] } { [30 x i32] [i32 1, i32 2, i32 3, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 1, i32 1, i32 12], [40 x i8] zeroinitializer }, align 32
@switch.table.wlc_lcnphy_a1 = internal constant { [5 x i16], [22 x i8] } { [5 x i16] [i16 511, i16 511, i16 127, i16 15, i16 15], [22 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 8, i64 9]
@__sancov_gen_cov_switch_values.1 = internal global [10 x i64] [i64 8, i64 8, i64 1, i64 2, i64 3, i64 4, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 2]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.4 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.5 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 4]
@___asan_gen_.6 = private unnamed_addr constant [15 x i8] c"lcnphy_sfo_cfg\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 202, i32 36 }
@___asan_gen_.9 = private unnamed_addr constant [18 x i8] c"lcnphy_gain_table\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 400, i32 17 }
@___asan_gen_.12 = private unnamed_addr constant [34 x i8] c"lcnphy_gain_index_offset_for_rssi\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 440, i32 17 }
@___asan_gen_.15 = private unnamed_addr constant [29 x i8] c"lcnphy_iqcal_loft_gainladder\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 220, i32 5 }
@___asan_gen_.18 = private unnamed_addr constant [27 x i8] c"lcnphy_iqcal_ir_gainladder\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 244, i32 5 }
@___asan_gen_.21 = private unnamed_addr constant [22 x i8] c"iqlo_loopback_rf_regs\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 304, i32 5 }
@___asan_gen_.24 = private unnamed_addr constant [31 x i8] c"tbl_iqcal_gainparams_lcnphy_2G\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 190, i32 39 }
@___asan_gen_.27 = private unnamed_addr constant [21 x i8] c"lcnphy_spb_tone_3750\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 268, i32 24 }
@___asan_gen_.30 = private unnamed_addr constant [23 x i8] c"lcnphy_radio_regs_2064\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 511, i32 39 }
@___asan_gen_.33 = private unnamed_addr constant [22 x i8] c"chan_info_2064_lcnphy\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 494, i32 43 }
@___asan_gen_.36 = private unnamed_addr constant [7 x i8] c"reg038\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 1760, i32 19 }
@___asan_gen_.39 = private unnamed_addr constant [27 x i8] c"LCNPHY_txdigfiltcoeffs_cck\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 823, i32 18 }
@___asan_gen_.42 = private unnamed_addr constant [28 x i8] c"LCNPHY_txdigfiltcoeffs_ofdm\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 854, i32 18 }
@___asan_gen_.45 = private unnamed_addr constant [27 x i8] c"lcnphy_23bitgaincode_table\00", align 1
@___asan_gen_.46 = private constant [66 x i8] c"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/phy_lcn.c\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 360, i32 18 }
@___asan_gen_.48 = private unnamed_addr constant [43 x i8] c"switch.table.wlc_lcnphy_load_tx_iir_filter\00", align 1
@___asan_gen_.49 = private unnamed_addr constant [27 x i8] c"switch.table.wlc_lcnphy_a1\00", align 1
@llvm.compiler.used = appending global [16 x ptr] [ptr @lcnphy_sfo_cfg, ptr @lcnphy_gain_table, ptr @lcnphy_gain_index_offset_for_rssi, ptr @lcnphy_iqcal_loft_gainladder, ptr @lcnphy_iqcal_ir_gainladder, ptr @iqlo_loopback_rf_regs, ptr @tbl_iqcal_gainparams_lcnphy_2G, ptr @lcnphy_spb_tone_3750, ptr @lcnphy_radio_regs_2064, ptr @chan_info_2064_lcnphy, ptr @wlc_lcnphy_radio_2064_channel_tune_4313.reg038, ptr @LCNPHY_txdigfiltcoeffs_cck, ptr @LCNPHY_txdigfiltcoeffs_ofdm, ptr @lcnphy_23bitgaincode_table, ptr @switch.table.wlc_lcnphy_load_tx_iir_filter, ptr @switch.table.wlc_lcnphy_a1], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcnphy_sfo_cfg to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcnphy_gain_table to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcnphy_gain_index_offset_for_rssi to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcnphy_iqcal_loft_gainladder to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcnphy_iqcal_ir_gainladder to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqlo_loopback_rf_regs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tbl_iqcal_gainparams_lcnphy_2G to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcnphy_spb_tone_3750 to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcnphy_radio_regs_2064 to i32), i32 1836, i32 2304, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chan_info_2064_lcnphy to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wlc_lcnphy_radio_2064_channel_tune_4313.reg038 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @LCNPHY_txdigfiltcoeffs_cck to i32), i32 442, i32 544, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @LCNPHY_txdigfiltcoeffs_ofdm to i32), i32 102, i32 160, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcnphy_23bitgaincode_table to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.wlc_lcnphy_load_tx_iir_filter to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.wlc_lcnphy_a1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wlc_lcnphy_write_table(ptr noundef %pi, ptr noundef %pti) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @wlc_phy_write_table(ptr noundef %pi, ptr noundef %pti, i16 noundef zeroext 1109, i16 noundef zeroext 1111, i16 noundef zeroext 1110) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wlc_phy_write_table(ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wlc_lcnphy_read_table(ptr noundef %pi, ptr noundef %pti) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @wlc_phy_read_table(ptr noundef %pi, ptr noundef %pti, i16 noundef zeroext 1109, i16 noundef zeroext 1111, i16 noundef zeroext 1110) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wlc_phy_read_table(ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local signext i8 @wlc_lcnphy_get_current_tx_pwr_idx(ptr noundef %pi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 3
  %0 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %u, align 4
  %call = tail call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1188) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 -8193, i16 %call)
  %cmp.not = icmp ugt i16 %call, -8193
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %lcnphy_current_index = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %1, i32 0, i32 77
  %2 = ptrtoint ptr %lcnphy_current_index to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %lcnphy_current_index, align 2
  br label %if.end9

if.else:                                          ; preds = %entry
  %hwpwrctrl_capable = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 139
  %4 = ptrtoint ptr %hwpwrctrl_capable to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hwpwrctrl_capable, align 4, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.else7, label %if.then2

if.then2:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1139) #6
  %6 = lshr i16 %call3, 1
  %conv6 = trunc i16 %6 to i8
  br label %if.end9

if.else7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %lcnphy_current_index8 = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %1, i32 0, i32 77
  %7 = ptrtoint ptr %lcnphy_current_index8 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %lcnphy_current_index8, align 2
  br label %if.end9

if.end9:                                          ; preds = %if.else7, %if.then2, %if.then
  %index.0 = phi i8 [ %3, %if.then ], [ %conv6, %if.then2 ], [ %8, %if.else7 ]
  ret i8 %index.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @read_phy_reg(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wlc_lcnphy_crsuprs(ptr noundef %pi, i32 noundef %channel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1083) #6
  %call1 = tail call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1084) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %channel)
  %cmp.not = icmp eq i32 %channel, 0
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1083, i16 noundef zeroext 2, i16 noundef zeroext 2) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1084, i16 noundef zeroext 2, i16 noundef zeroext 0) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1083, i16 noundef zeroext 16, i16 noundef zeroext 16) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1084, i16 noundef zeroext 64, i16 noundef zeroext 0) #6
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 1099, i16 noundef zeroext -1) #6
  tail call void @wlc_lcnphy_tx_pu(ptr noundef %pi, i1 noundef zeroext true)
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1588, i16 noundef zeroext -256, i16 noundef zeroext 0) #6
  tail call void @or_phy_reg(ptr noundef %pi, i16 noundef zeroext 1754, i16 noundef zeroext 128) #6
  tail call void @or_phy_reg(ptr noundef %pi, i16 noundef zeroext 10, i16 noundef zeroext 552) #6
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @and_phy_reg(ptr noundef %pi, i16 noundef zeroext 10, i16 noundef zeroext -553) #6
  tail call void @and_phy_reg(ptr noundef %pi, i16 noundef zeroext 1754, i16 noundef zeroext -129) #6
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 1083, i16 noundef zeroext %call) #6
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 1084, i16 noundef zeroext %call1) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mod_phy_reg(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @write_phy_reg(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wlc_lcnphy_tx_pu(ptr noundef %pi, i1 noundef zeroext %bEnable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %bEnable, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @and_phy_reg(ptr noundef %pi, i16 noundef zeroext 1083, i16 noundef zeroext -19) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1084, i16 noundef zeroext 2, i16 noundef zeroext 2) #6
  tail call void @and_phy_reg(ptr noundef %pi, i16 noundef zeroext 1100, i16 noundef zeroext -4144) #6
  tail call void @and_phy_reg(ptr noundef %pi, i16 noundef zeroext 1101, i16 noundef zeroext -16425) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1101, i16 noundef zeroext 4, i16 noundef zeroext 4) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1101, i16 noundef zeroext 3, i16 noundef zeroext 1) #6
  tail call void @and_phy_reg(ptr noundef %pi, i16 noundef zeroext 1273, i16 noundef zeroext -8) #6
  tail call void @and_phy_reg(ptr noundef %pi, i16 noundef zeroext 1274, i16 noundef zeroext -8) #6
  br label %if.end4

if.else:                                          ; preds = %entry
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1083, i16 noundef zeroext 2, i16 noundef zeroext 2) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1084, i16 noundef zeroext 2, i16 noundef zeroext 0) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1083, i16 noundef zeroext 16, i16 noundef zeroext 16) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1084, i16 noundef zeroext 64, i16 noundef zeroext 0) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1100, i16 noundef zeroext 4096, i16 noundef zeroext 4096) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1101, i16 noundef zeroext 16384, i16 noundef zeroext 16384) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1101, i16 noundef zeroext 3, i16 noundef zeroext 2) #6
  tail call void @or_phy_reg(ptr noundef %pi, i16 noundef zeroext 1100, i16 noundef zeroext 3) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1101, i16 noundef zeroext 4, i16 noundef zeroext 0) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1100, i16 noundef zeroext 4, i16 noundef zeroext 4) #6
  %radio_chanspec = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 12
  %0 = ptrtoint ptr %radio_chanspec to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %radio_chanspec, align 4
  %2 = and i16 %1, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %2)
  %cmp = icmp eq i16 %2, 8192
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1100, i16 noundef zeroext 8, i16 noundef zeroext 8) #6
  br i1 %cmp, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1101, i16 noundef zeroext 8, i16 noundef zeroext 8) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1100, i16 noundef zeroext 32, i16 noundef zeroext 32) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1101, i16 noundef zeroext 32, i16 noundef zeroext 0) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1273, i16 noundef zeroext 2, i16 noundef zeroext 2) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1274, i16 noundef zeroext 2, i16 noundef zeroext 2) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1273, i16 noundef zeroext 4, i16 noundef zeroext 4) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1274, i16 noundef zeroext 4, i16 noundef zeroext 4) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1273, i16 noundef zeroext 1, i16 noundef zeroext 1) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1274, i16 noundef zeroext 1, i16 noundef zeroext 1) #6
  br label %if.end4

if.else3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1101, i16 noundef zeroext 8, i16 noundef zeroext 0) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1100, i16 noundef zeroext 32, i16 noundef zeroext 32) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1101, i16 noundef zeroext 32, i16 noundef zeroext 32) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1273, i16 noundef zeroext 2, i16 noundef zeroext 2) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1274, i16 noundef zeroext 2, i16 noundef zeroext 0) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1273, i16 noundef zeroext 4, i16 noundef zeroext 4) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1274, i16 noundef zeroext 4, i16 noundef zeroext 0) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1273, i16 noundef zeroext 1, i16 noundef zeroext 1) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1274, i16 noundef zeroext 1, i16 noundef zeroext 0) #6
  br label %if.end4

if.end4:                                          ; preds = %if.else3, %if.then2, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @or_phy_reg(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @and_phy_reg(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wlc_lcnphy_tx_pwr_update_npt(ptr noundef %pi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 3
  %0 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %u, align 4
  %sh = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 1
  %2 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sh, align 4
  %physhim = getelementptr inbounds %struct.shared_phy, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %physhim to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %physhim, align 4
  %call = tail call zeroext i16 @wlapi_bmac_read_shm(ptr noundef %5, i32 noundef 224) #6
  %lcnphy_tssi_tx_cnt = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %1, i32 0, i32 35
  %6 = ptrtoint ptr %lcnphy_tssi_tx_cnt to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %lcnphy_tssi_tx_cnt, align 2
  %sub = sub i16 %call, %7
  %call3 = tail call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1189) #6
  %8 = lshr i16 %call3, 8
  %9 = and i16 %8, 7
  %conv6 = zext i16 %sub to i32
  %conv7 = zext i16 %9 to i32
  %shl = shl nuw nsw i32 1, %conv7
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %conv6)
  %cmp = icmp ult i32 %shl, %conv6
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %10 = ptrtoint ptr %lcnphy_tssi_tx_cnt to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %call, ptr %lcnphy_tssi_tx_cnt, align 2
  %11 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %u, align 4
  %call.i = tail call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1188) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 -8193, i16 %call.i)
  %cmp.not.i = icmp ugt i16 %call.i, -8193
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %lcnphy_current_index.i = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %12, i32 0, i32 77
  %13 = ptrtoint ptr %lcnphy_current_index.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %lcnphy_current_index.i, align 2
  br label %wlc_lcnphy_get_current_tx_pwr_idx.exit

if.else.i:                                        ; preds = %if.then
  %hwpwrctrl_capable.i = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 139
  %15 = ptrtoint ptr %hwpwrctrl_capable.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %hwpwrctrl_capable.i, align 4, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i = icmp eq i8 %16, 0
  br i1 %tobool.not.i, label %if.else7.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i = tail call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1139) #6
  %17 = lshr i16 %call3.i, 1
  %conv6.i = trunc i16 %17 to i8
  br label %wlc_lcnphy_get_current_tx_pwr_idx.exit

if.else7.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %lcnphy_current_index8.i = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %12, i32 0, i32 77
  %18 = ptrtoint ptr %lcnphy_current_index8.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %lcnphy_current_index8.i, align 2
  br label %wlc_lcnphy_get_current_tx_pwr_idx.exit

wlc_lcnphy_get_current_tx_pwr_idx.exit:           ; preds = %if.else7.i, %if.then2.i, %if.then.i
  %index.0.i = phi i8 [ %14, %if.then.i ], [ %conv6.i, %if.then2.i ], [ %19, %if.else7.i ]
  %conv11 = sext i8 %index.0.i to i16
  %lcnphy_tssi_idx = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %1, i32 0, i32 36
  %20 = ptrtoint ptr %lcnphy_tssi_idx to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv11, ptr %lcnphy_tssi_idx, align 4
  %lcnphy_tssi_npt = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %1, i32 0, i32 37
  %21 = ptrtoint ptr %lcnphy_tssi_npt to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %9, ptr %lcnphy_tssi_npt, align 2
  br label %if.end

if.end:                                           ; preds = %wlc_lcnphy_get_current_tx_pwr_idx.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @wlapi_bmac_read_shm(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @wlc_lcnphy_tssi2dbm(i32 noundef %tssi, i32 noundef %a1, i32 noundef %b0, i32 noundef %b1) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = mul i32 %a1, %tssi
  %add = add i32 %mul, 32768
  %mul1 = shl i32 %b0, 10
  %mul2 = shl i32 %tssi, 6
  %mul3 = mul i32 %mul2, %b1
  %add4 = add i32 %mul3, %mul1
  %mul5 = shl i32 %add4, 1
  %add6 = add i32 %mul5, %add
  %mul7 = shl i32 %add, 1
  %div = sdiv i32 %add6, %mul7
  ret i32 %div
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wlc_lcnphy_txpower_recalc_target(ptr noundef %pi) local_unnamed_addr #0 align 64 {
entry:
  %tab = alloca %struct.phytbl_info, align 4
  %rate_table = alloca [20 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tab) #6
  %0 = getelementptr inbounds %struct.phytbl_info, ptr %tab, i32 0, i32 1
  %1 = getelementptr inbounds %struct.phytbl_info, ptr %tab, i32 0, i32 2
  %2 = getelementptr inbounds %struct.phytbl_info, ptr %tab, i32 0, i32 3
  %3 = getelementptr inbounds %struct.phytbl_info, ptr %tab, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %rate_table) #6
  %4 = call ptr @memset(ptr %rate_table, i32 255, i32 80)
  %temppwrctrl_capable = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 140
  %5 = ptrtoint ptr %temppwrctrl_capable to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %temppwrctrl_capable, align 1, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %entry.for.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %j.031 = phi i32 [ %inc5, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %i.030 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %i.030)
  %cmp1 = icmp eq i32 %i.030, 12
  %spec.select = select i1 %cmp1, i32 20, i32 %j.031
  %arrayidx = getelementptr %struct.brcms_phy, ptr %pi, i32 0, i32 43, i32 %spec.select
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %8 to i32
  %sub = sub nsw i32 0, %conv
  %arrayidx4 = getelementptr [20 x i32], ptr %rate_table, i32 0, i32 %i.030
  %9 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %sub, ptr %arrayidx4, align 4
  %inc = add nuw nsw i32 %i.030, 1
  %inc5 = add i32 %spec.select, 1
  %exitcond.not = icmp eq i32 %inc, 20
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 7, ptr %1, align 4
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 32, ptr %3, align 4
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 20, ptr %0, align 4
  %13 = ptrtoint ptr %tab to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %rate_table, ptr %tab, align 4
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 832, ptr %2, align 4
  call void @wlc_phy_write_table(ptr noundef %pi, ptr noundef nonnull %tab, i16 noundef zeroext 1109, i16 noundef zeroext 1111, i16 noundef zeroext 1110) #6
  %call = call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1191) #6
  %tx_power_min = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 62
  %15 = ptrtoint ptr %tx_power_min to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %tx_power_min, align 1
  %17 = trunc i16 %call to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %16, i8 %17)
  %cmp8.not = icmp eq i8 %16, %17
  br i1 %cmp8.not, label %for.end.cleanup_crit_edge, label %if.then10

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then10:                                        ; preds = %for.end
  %conv12 = zext i8 %16 to i16
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1191, i16 noundef zeroext 255, i16 noundef zeroext %conv12) #6
  %18 = ptrtoint ptr %temppwrctrl_capable to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %temppwrctrl_capable, align 1, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i = icmp eq i8 %19, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then10.cleanup_crit_edge

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  %u.i = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 3
  %20 = ptrtoint ptr %u.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %u.i, align 4
  %lcnphy_tssi_idx.i = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %21, i32 0, i32 36
  %22 = ptrtoint ptr %lcnphy_tssi_idx.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 140, ptr %lcnphy_tssi_idx.i, align 4
  %lcnphy_tssi_npt.i = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %21, i32 0, i32 37
  %23 = ptrtoint ptr %lcnphy_tssi_npt.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 1, ptr %lcnphy_tssi_npt.i, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.then10.cleanup_crit_edge, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %rate_table) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tab) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wlc_lcnphy_set_tx_pwr_ctrl(ptr noundef %pi, i16 noundef zeroext %mode) local_unnamed_addr #0 align 64 {
entry:
  %cck_offset.i = alloca [4 x i32], align 4
  %ofdm_offset.i = alloca i32, align 4
  %tab.i83 = alloca %struct.phytbl_info, align 4
  %data_buf.i = alloca [64 x i32], align 4
  %tab.i = alloca %struct.phytbl_info, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1188) #6
  %0 = and i16 %call, -8192
  %u = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 3
  %1 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %u, align 4
  %temppwrctrl_capable.i = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 140
  %3 = ptrtoint ptr %temppwrctrl_capable.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %temppwrctrl_capable.i, align 1, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp ne i8 %4, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 -8192, i16 %mode)
  %cmp.i = icmp eq i16 %mode, -8192
  %or.cond.i = and i1 %cmp.i, %tobool.not.i
  %current_mode.0.i = select i1 %or.cond.i, i16 -8191, i16 %mode
  %hwpwrctrl_capable.i = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 139
  %5 = ptrtoint ptr %hwpwrctrl_capable.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %hwpwrctrl_capable.i, align 4, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool2.not.i = icmp ne i8 %6, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 -8191, i16 %mode)
  %cmp6.i = icmp eq i16 %mode, -8191
  %or.cond13.i = and i1 %cmp6.i, %tobool2.not.i
  %current_mode.1.i = select i1 %or.cond13.i, i16 -8192, i16 %current_mode.0.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 -8193, i16 %call)
  %cmp.i76 = icmp ugt i16 %call, -8193
  %or.cond.i77 = and i1 %cmp.i76, %tobool.not.i
  %current_mode.0.i78 = select i1 %or.cond.i77, i16 -8191, i16 %0
  call void @__sanitizer_cov_trace_const_cmp2(i16 -8192, i16 %current_mode.1.i)
  %cmp = icmp eq i16 %current_mode.1.i, -8192
  %conv6 = select i1 %cmp, i16 64, i16 0
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1754, i16 noundef zeroext 64, i16 noundef zeroext %conv6) #6
  %conv12 = select i1 %cmp, i16 0, i16 16
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1699, i16 noundef zeroext 16, i16 noundef zeroext %conv12) #6
  call void @__sanitizer_cov_trace_cmp2(i16 %current_mode.0.i78, i16 %current_mode.1.i)
  %cmp15.not = icmp eq i16 %current_mode.0.i78, %current_mode.1.i
  br i1 %cmp15.not, label %entry.if.end43_crit_edge, label %if.then

entry.if.end43_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 -8192, i16 %current_mode.0.i78)
  %cmp18 = icmp eq i16 %current_mode.0.i78, -8192
  br i1 %cmp18, label %if.then20, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then20:                                        ; preds = %if.then
  tail call void @wlc_lcnphy_tx_pwr_update_npt(ptr noundef %pi)
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %data_buf.i) #6
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tab.i) #6
  %7 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i, i32 0, i32 1
  %8 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i, i32 0, i32 2
  %9 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i, i32 0, i32 3
  %10 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i, i32 0, i32 4
  %11 = call ptr @memset(ptr %7, i32 255, i32 12)
  %12 = call ptr @memset(ptr %data_buf.i, i32 0, i32 256)
  %13 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 7, ptr %8, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 32, ptr %10, align 4
  %15 = ptrtoint ptr %tab.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %data_buf.i, ptr %tab.i, align 4
  %16 = ptrtoint ptr %temppwrctrl_capable.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %temppwrctrl_capable.i, align 1, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i82 = icmp eq i8 %17, 0
  br i1 %tobool.not.i82, label %if.then.i, label %if.then20.wlc_lcnphy_clear_tx_power_offsets.exit_crit_edge

if.then20.wlc_lcnphy_clear_tx_power_offsets.exit_crit_edge: ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  br label %wlc_lcnphy_clear_tx_power_offsets.exit

if.then.i:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 30, ptr %7, align 4
  %19 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 832, ptr %9, align 4
  call void @wlc_phy_write_table(ptr noundef %pi, ptr noundef nonnull %tab.i, i16 noundef zeroext 1109, i16 noundef zeroext 1111, i16 noundef zeroext 1110) #6
  br label %wlc_lcnphy_clear_tx_power_offsets.exit

wlc_lcnphy_clear_tx_power_offsets.exit:           ; preds = %if.then.i, %if.then20.wlc_lcnphy_clear_tx_power_offsets.exit_crit_edge
  %20 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 64, ptr %7, align 4
  %21 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 128, ptr %9, align 4
  call void @wlc_phy_write_table(ptr noundef %pi, ptr noundef nonnull %tab.i, i16 noundef zeroext 1109, i16 noundef zeroext 1111, i16 noundef zeroext 1110) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tab.i) #6
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %data_buf.i) #6
  br label %if.end

if.end:                                           ; preds = %wlc_lcnphy_clear_tx_power_offsets.exit, %if.then.if.end_crit_edge
  br i1 %cmp, label %if.end32.thread, label %if.end32

if.end32.thread:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @wlc_lcnphy_txpower_recalc_target(ptr noundef %pi)
  %lcnphy_tssi_idx = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %2, i32 0, i32 36
  %22 = ptrtoint ptr %lcnphy_tssi_idx to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %lcnphy_tssi_idx, align 4
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1188, i16 noundef zeroext 511, i16 noundef zeroext %23) #6
  %lcnphy_tssi_npt = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %2, i32 0, i32 37
  %24 = ptrtoint ptr %lcnphy_tssi_npt to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %lcnphy_tssi_npt, align 2
  %shl29 = shl i16 %25, 8
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1189, i16 noundef zeroext 1792, i16 noundef zeroext %shl29) #6
  call void @mod_radio_reg(ptr noundef %pi, i16 noundef zeroext 287, i16 noundef zeroext 4, i16 noundef zeroext 0) #6
  %sh = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 1
  %26 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sh, align 4
  %physhim = getelementptr inbounds %struct.shared_phy, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %physhim to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %physhim, align 4
  %call31 = call zeroext i16 @wlapi_bmac_read_shm(ptr noundef %29, i32 noundef 224) #6
  %lcnphy_tssi_tx_cnt = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %2, i32 0, i32 35
  %30 = ptrtoint ptr %lcnphy_tssi_tx_cnt to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %call31, ptr %lcnphy_tssi_tx_cnt, align 2
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1200, i16 noundef zeroext 128, i16 noundef zeroext 0) #6
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1200, i16 noundef zeroext 16384, i16 noundef zeroext 0) #6
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1083, i16 noundef zeroext 64, i16 noundef zeroext 0) #6
  %lcnphy_tx_power_idx_override = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %2, i32 0, i32 39
  %31 = ptrtoint ptr %lcnphy_tx_power_idx_override to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 -1, ptr %lcnphy_tx_power_idx_override, align 2
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1188, i16 noundef zeroext -8192, i16 noundef zeroext -8192) #6
  br label %if.end43

if.end32:                                         ; preds = %if.end
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1200, i16 noundef zeroext 128, i16 noundef zeroext 128) #6
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1200, i16 noundef zeroext 16384, i16 noundef zeroext 16384) #6
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1083, i16 noundef zeroext 64, i16 noundef zeroext 64) #6
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1188, i16 noundef zeroext -8192, i16 noundef zeroext %current_mode.1.i) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 -8191, i16 %current_mode.1.i)
  %cmp34 = icmp eq i16 %current_mode.1.i, -8191
  br i1 %cmp34, label %if.then36, label %if.end32.if.end43_crit_edge

if.end32.if.end43_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

if.then36:                                        ; preds = %if.end32
  %call37 = call fastcc signext i8 @wlc_lcnphy_tempcompensated_txpwrctrl(ptr noundef %pi)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cck_offset.i) #6
  %32 = call ptr @memcpy(ptr %cck_offset.i, ptr @__const.wlc_lcnphy_set_tx_pwr_soft_ctrl.cck_offset, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ofdm_offset.i) #6
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tab.i83) #6
  %33 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i83, i32 0, i32 3
  %34 = ptrtoint ptr %hwpwrctrl_capable.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %hwpwrctrl_capable.i, align 4, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not.i85 = icmp eq i8 %35, 0
  br i1 %tobool.not.i85, label %if.end.i, label %if.then36.wlc_lcnphy_set_tx_pwr_soft_ctrl.exit_crit_edge

if.then36.wlc_lcnphy_set_tx_pwr_soft_ctrl.exit_crit_edge: ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #8
  br label %wlc_lcnphy_set_tx_pwr_soft_ctrl.exit

if.end.i:                                         ; preds = %if.then36
  %36 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i83, i32 0, i32 4
  %37 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i83, i32 0, i32 2
  %38 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i83, i32 0, i32 1
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1188, i16 noundef zeroext 16384, i16 noundef zeroext 16384) #6
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1188, i16 noundef zeroext 16384, i16 noundef zeroext 0) #6
  call void @or_phy_reg(ptr noundef %pi, i16 noundef zeroext 1754, i16 noundef zeroext 64) #6
  %39 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 7, ptr %37, align 4
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 32, ptr %36, align 4
  %41 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 4, ptr %38, align 4
  %42 = ptrtoint ptr %tab.i83 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %cck_offset.i, ptr %tab.i83, align 4
  %43 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 832, ptr %33, align 4
  call void @wlc_phy_write_table(ptr noundef %pi, ptr noundef nonnull %tab.i83, i16 noundef zeroext 1109, i16 noundef zeroext 1111, i16 noundef zeroext 1110) #6
  %44 = ptrtoint ptr %ofdm_offset.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %ofdm_offset.i, align 4
  %45 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %38, align 4
  %46 = ptrtoint ptr %tab.i83 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %ofdm_offset.i, ptr %tab.i83, align 4
  br label %for.body5.i

for.body5.i:                                      ; preds = %for.body5.i.for.body5.i_crit_edge, %if.end.i
  %i.136.i = phi i32 [ 836, %if.end.i ], [ %inc8.i, %for.body5.i.for.body5.i_crit_edge ]
  %47 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %i.136.i, ptr %33, align 4
  call void @wlc_phy_write_table(ptr noundef %pi, ptr noundef nonnull %tab.i83, i16 noundef zeroext 1109, i16 noundef zeroext 1111, i16 noundef zeroext 1110) #6
  %inc8.i = add nuw nsw i32 %i.136.i, 1
  %exitcond.not.i = icmp eq i32 %inc8.i, 862
  br i1 %exitcond.not.i, label %for.end9.i, label %for.body5.i.for.body5.i_crit_edge

for.body5.i.for.body5.i_crit_edge:                ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body5.i

for.end9.i:                                       ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1188, i16 noundef zeroext -32768, i16 noundef zeroext -32768) #6
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1188, i16 noundef zeroext 16384, i16 noundef zeroext 16384) #6
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1188, i16 noundef zeroext 8192, i16 noundef zeroext 8192) #6
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1200, i16 noundef zeroext 128, i16 noundef zeroext 0) #6
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1083, i16 noundef zeroext 64, i16 noundef zeroext 0) #6
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1193, i16 noundef zeroext -32768, i16 noundef zeroext -32768) #6
  %conv.i = sext i8 %call37 to i16
  %mul.i = shl nsw i16 %conv.i, 1
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1193, i16 noundef zeroext 511, i16 noundef zeroext %mul.i) #6
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1699, i16 noundef zeroext 16, i16 noundef zeroext 0) #6
  br label %wlc_lcnphy_set_tx_pwr_soft_ctrl.exit

wlc_lcnphy_set_tx_pwr_soft_ctrl.exit:             ; preds = %for.end9.i, %if.then36.wlc_lcnphy_set_tx_pwr_soft_ctrl.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tab.i83) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ofdm_offset.i) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cck_offset.i) #6
  %call38 = call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1193) #6
  %48 = trunc i16 %call38 to i8
  %49 = lshr i8 %48, 1
  %lcnphy_current_index = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %2, i32 0, i32 77
  %50 = ptrtoint ptr %lcnphy_current_index to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %lcnphy_current_index, align 2
  br label %if.end43

if.end43:                                         ; preds = %wlc_lcnphy_set_tx_pwr_soft_ctrl.exit, %if.end32.if.end43_crit_edge, %if.end32.thread, %entry.if.end43_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mod_radio_reg(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc signext i8 @wlc_lcnphy_tempcompensated_txpwrctrl(ptr noundef %pi) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 3
  %0 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %u, align 4
  %hwpwrctrl_capable = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 139
  %2 = ptrtoint ptr %hwpwrctrl_capable to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hwpwrctrl_capable, align 4, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %lcnphy_current_index = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %1, i32 0, i32 77
  %4 = ptrtoint ptr %lcnphy_current_index to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %lcnphy_current_index, align 2
  br label %cleanup

if.end:                                           ; preds = %entry
  %lcnphy_tempsense_slope = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %1, i32 0, i32 27
  %6 = ptrtoint ptr %lcnphy_tempsense_slope to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %lcnphy_tempsense_slope, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp = icmp eq i8 %7, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call = tail call zeroext i16 @wlc_lcnphy_tempsense(ptr noundef %pi, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %call)
  %cmp5 = icmp ugt i16 %call, 255
  %sub = add i16 %call, -512
  %cond = select i1 %cmp5, i16 %sub, i16 %call
  %tx_power_min = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 62
  %8 = ptrtoint ptr %tx_power_min to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %tx_power_min, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp11.not = icmp eq i8 %9, 0
  br i1 %cmp11.not, label %if.end3.if.end19_crit_edge, label %if.then13

if.end3.if.end19_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then13:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %conv10 = zext i8 %9 to i32
  %lcnphy_measPower = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %1, i32 0, i32 26
  %10 = ptrtoint ptr %lcnphy_measPower to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %lcnphy_measPower, align 4
  %conv14 = zext i8 %11 to i32
  %sub17 = sub nsw i32 %conv14, %conv10
  %sext = shl i32 %sub17, 24
  %phi.cast = ashr exact i32 %sext, 24
  %phi.bo = add nsw i32 %phi.cast, 78
  br label %if.end19

if.end19:                                         ; preds = %if.then13, %if.end3.if.end19_crit_edge
  %delta_brd.0 = phi i32 [ %phi.bo, %if.then13 ], [ 78, %if.end3.if.end19_crit_edge ]
  %lcnphy_rawtempsense = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %1, i32 0, i32 25
  %12 = ptrtoint ptr %lcnphy_rawtempsense to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %lcnphy_rawtempsense, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %13)
  %cmp21 = icmp ugt i16 %13, 255
  %sub26 = add i16 %13, -512
  %cond31 = select i1 %cmp21, i16 %sub26, i16 %13
  %sub35 = sub i16 %cond31, %cond
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %sub35)
  %cmp38 = icmp slt i16 %sub35, 0
  %14 = tail call i16 @llvm.abs.i16(i16 %sub35, i1 false)
  %conv45 = sext i16 %14 to i32
  %mul = mul nsw i32 %conv45, 192
  %15 = ptrtoint ptr %lcnphy_tempsense_slope to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %lcnphy_tempsense_slope, align 1
  %conv47 = zext i8 %16 to i32
  %mul48 = mul nuw nsw i32 %conv47, 10
  %mul.frozen = freeze i32 %mul
  %mul48.frozen = freeze i32 %mul48
  %div.i = udiv i32 %mul.frozen, %mul48.frozen
  %17 = mul i32 %div.i, %mul48.frozen
  %rem.i.decomposed = sub i32 %mul.frozen, %17
  %shr.i = lshr exact i32 %mul48, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i.decomposed, i32 %shr.i)
  %cmp4.not.i = icmp uge i32 %rem.i.decomposed, %shr.i
  %inc6.i = zext i1 %cmp4.not.i to i32
  %spec.select.i = add i32 %div.i, %inc6.i
  %conv50 = trunc i32 %spec.select.i to i8
  %conv55 = sub i8 0, %conv50
  %delta_temp.0 = select i1 %cmp38, i8 %conv55, i8 %conv50
  %lcnphy_tempsense_option = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %1, i32 0, i32 29
  %18 = ptrtoint ptr %lcnphy_tempsense_option to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %lcnphy_tempsense_option, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %19)
  %cmp58 = icmp eq i8 %19, 3
  br i1 %cmp58, label %land.lhs.true, label %if.end19.if.end63_crit_edge

if.end19.if.end63_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63

land.lhs.true:                                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %phy_rev = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 7, i32 1
  %20 = ptrtoint ptr %phy_rev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %phy_rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp60 = icmp eq i32 %21, 0
  %spec.select = select i1 %cmp60, i8 0, i8 %delta_temp.0
  br label %if.end63

if.end63:                                         ; preds = %land.lhs.true, %if.end19.if.end63_crit_edge
  %delta_temp.1 = phi i8 [ %delta_temp.0, %if.end19.if.end63_crit_edge ], [ %spec.select, %land.lhs.true ]
  %lcnphy_tempcorrx = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %1, i32 0, i32 30
  %22 = ptrtoint ptr %lcnphy_tempcorrx to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %lcnphy_tempcorrx, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %23)
  %cmp65 = icmp ugt i8 %23, 31
  %sub70 = add i8 %23, -64
  %tempcorrx.0 = select i1 %cmp65, i8 %sub70, i8 %23
  %phy_rev76 = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 7, i32 1
  %24 = ptrtoint ptr %phy_rev76 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %phy_rev76, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp77 = icmp eq i32 %25, 1
  %tempcorrx.1 = select i1 %cmp77, i8 4, i8 %tempcorrx.0
  %conv83143 = zext i8 %delta_temp.1 to i32
  %add84 = add nsw i32 %delta_brd.0, %conv83143
  %lcnphy_bandedge_corr = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %1, i32 0, i32 33
  %26 = ptrtoint ptr %lcnphy_bandedge_corr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %lcnphy_bandedge_corr, align 4
  %sub85 = sub i32 %add84, %27
  %28 = trunc i32 %sub85 to i8
  %conv90 = add i8 %tempcorrx.1, %28
  %index.0 = select i1 %cmp77, i8 127, i8 78
  call void @__sanitizer_cov_trace_const_cmp1(i8 126, i8 %conv90)
  %29 = icmp ugt i8 %conv90, 126
  %spec.select147 = select i1 %29, i8 %index.0, i8 %conv90
  br label %cleanup

cleanup:                                          ; preds = %if.end63, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i8 [ %5, %if.then ], [ 78, %if.end.cleanup_crit_edge ], [ %spec.select147, %if.end63 ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wlc_lcnphy_get_radio_loft(ptr noundef %pi, ptr nocapture noundef writeonly %ei0, ptr nocapture noundef writeonly %eq0, ptr nocapture noundef writeonly %fi0, ptr nocapture noundef writeonly %fq0) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i16 @read_radio_reg(ptr noundef %pi, i16 noundef zeroext 137) #6
  %0 = trunc i16 %call to i8
  %1 = lshr i8 %0, 4
  %call3 = tail call zeroext i16 @read_radio_reg(ptr noundef %pi, i16 noundef zeroext 137) #6
  %2 = trunc i16 %call3 to i8
  %conv6 = and i8 %2, 15
  %add = sub nsw i8 %conv6, %1
  %3 = ptrtoint ptr %ei0 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %add, ptr %ei0, align 1
  %call9 = tail call zeroext i16 @read_radio_reg(ptr noundef %pi, i16 noundef zeroext 138) #6
  %4 = trunc i16 %call9 to i8
  %5 = lshr i8 %4, 4
  %call16 = tail call zeroext i16 @read_radio_reg(ptr noundef %pi, i16 noundef zeroext 138) #6
  %6 = trunc i16 %call16 to i8
  %conv19 = and i8 %6, 15
  %add21 = sub nsw i8 %conv19, %5
  %7 = ptrtoint ptr %eq0 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %add21, ptr %eq0, align 1
  %call23 = tail call zeroext i16 @read_radio_reg(ptr noundef %pi, i16 noundef zeroext 139) #6
  %8 = trunc i16 %call23 to i8
  %9 = lshr i8 %8, 4
  %call30 = tail call zeroext i16 @read_radio_reg(ptr noundef %pi, i16 noundef zeroext 139) #6
  %10 = trunc i16 %call30 to i8
  %conv33 = and i8 %10, 15
  %add35 = sub nsw i8 %conv33, %9
  %11 = ptrtoint ptr %fi0 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %add35, ptr %fi0, align 1
  %call37 = tail call zeroext i16 @read_radio_reg(ptr noundef %pi, i16 noundef zeroext 140) #6
  %12 = trunc i16 %call37 to i8
  %13 = lshr i8 %12, 4
  %call44 = tail call zeroext i16 @read_radio_reg(ptr noundef %pi, i16 noundef zeroext 140) #6
  %14 = trunc i16 %call44 to i8
  %conv47 = and i8 %14, 15
  %add49 = sub nsw i8 %conv47, %13
  %15 = ptrtoint ptr %fq0 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %add49, ptr %fq0, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @read_radio_reg(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wlc_lcnphy_set_tx_iqcc(ptr noundef %pi, i16 noundef zeroext %a, i16 noundef zeroext %b) #0 align 64 {
entry:
  %tab = alloca %struct.phytbl_info, align 4
  %iqcc = alloca [2 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tab) #6
  %0 = getelementptr inbounds %struct.phytbl_info, ptr %tab, i32 0, i32 1
  %1 = getelementptr inbounds %struct.phytbl_info, ptr %tab, i32 0, i32 2
  %2 = getelementptr inbounds %struct.phytbl_info, ptr %tab, i32 0, i32 3
  %3 = getelementptr inbounds %struct.phytbl_info, ptr %tab, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iqcc) #6
  %4 = getelementptr inbounds [2 x i16], ptr %iqcc, i32 0, i32 1
  %5 = ptrtoint ptr %iqcc to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %a, ptr %iqcc, align 2
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %b, ptr %4, align 2
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %1, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 16, ptr %3, align 4
  %9 = ptrtoint ptr %tab to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %iqcc, ptr %tab, align 4
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %0, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 80, ptr %2, align 4
  call void @wlc_phy_write_table(ptr noundef %pi, ptr noundef nonnull %tab, i16 noundef zeroext 1109, i16 noundef zeroext 1111, i16 noundef zeroext 1110) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iqcc) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tab) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wlc_lcnphy_set_tx_locc(ptr noundef %pi, i16 noundef zeroext %didq) local_unnamed_addr #0 align 64 {
entry:
  %didq.addr = alloca i16, align 2
  %tab = alloca %struct.phytbl_info, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %didq.addr to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %didq, ptr %didq.addr, align 2
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tab) #6
  %1 = getelementptr inbounds %struct.phytbl_info, ptr %tab, i32 0, i32 1
  %2 = getelementptr inbounds %struct.phytbl_info, ptr %tab, i32 0, i32 2
  %3 = getelementptr inbounds %struct.phytbl_info, ptr %tab, i32 0, i32 3
  %4 = getelementptr inbounds %struct.phytbl_info, ptr %tab, i32 0, i32 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %2, align 4
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 16, ptr %4, align 4
  %7 = ptrtoint ptr %tab to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %didq.addr, ptr %tab, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %1, align 4
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 85, ptr %3, align 4
  call void @wlc_phy_write_table(ptr noundef %pi, ptr noundef nonnull %tab, i16 noundef zeroext 1109, i16 noundef zeroext 1111, i16 noundef zeroext 1110) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tab) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wlc_lcnphy_set_tx_pwr_by_index(ptr noundef %pi, i32 noundef %index) local_unnamed_addr #0 align 64 {
entry:
  %didq.addr.i = alloca i16, align 2
  %tab.i63 = alloca %struct.phytbl_info, align 4
  %tab.i62 = alloca %struct.phytbl_info, align 4
  %iqcc.i = alloca [2 x i16], align 2
  %m0m1.i = alloca i16, align 2
  %tab.i = alloca %struct.phytbl_info, align 4
  %tab = alloca %struct.phytbl_info, align 4
  %bbmultiqcomp = alloca i32, align 4
  %txgain = alloca i32, align 4
  %locoeffs = alloca i32, align 4
  %rfpower = alloca i32, align 4
  %gains = alloca %struct.lcnphy_txgains, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tab) #6
  %0 = getelementptr inbounds %struct.phytbl_info, ptr %tab, i32 0, i32 1
  %1 = getelementptr inbounds %struct.phytbl_info, ptr %tab, i32 0, i32 2
  %2 = getelementptr inbounds %struct.phytbl_info, ptr %tab, i32 0, i32 3
  %3 = getelementptr inbounds %struct.phytbl_info, ptr %tab, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bbmultiqcomp) #6
  %4 = ptrtoint ptr %bbmultiqcomp to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %bbmultiqcomp, align 4, !annotation !48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %txgain) #6
  %5 = ptrtoint ptr %txgain to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %txgain, align 4, !annotation !48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %locoeffs) #6
  %6 = ptrtoint ptr %locoeffs to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %locoeffs, align 4, !annotation !48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rfpower) #6
  %7 = ptrtoint ptr %rfpower to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %rfpower, align 4, !annotation !48
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %gains) #6
  %8 = getelementptr inbounds %struct.lcnphy_txgains, ptr %gains, i32 0, i32 1
  %9 = getelementptr inbounds %struct.lcnphy_txgains, ptr %gains, i32 0, i32 2
  %10 = getelementptr inbounds %struct.lcnphy_txgains, ptr %gains, i32 0, i32 3
  %u = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 3
  %11 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %u, align 4
  %conv = trunc i32 %index to i8
  %lcnphy_tx_power_idx_override = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %12, i32 0, i32 39
  %13 = ptrtoint ptr %lcnphy_tx_power_idx_override to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv, ptr %lcnphy_tx_power_idx_override, align 2
  %lcnphy_current_index = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %12, i32 0, i32 77
  %14 = ptrtoint ptr %lcnphy_current_index to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv, ptr %lcnphy_current_index, align 2
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 7, ptr %1, align 4
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 32, ptr %3, align 4
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %0, align 4
  tail call void @wlc_lcnphy_set_tx_pwr_ctrl(ptr noundef %pi, i16 noundef zeroext 0)
  %add = add i32 %index, 320
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add, ptr %2, align 4
  %19 = ptrtoint ptr %tab to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %bbmultiqcomp, ptr %tab, align 4
  call void @wlc_phy_read_table(ptr noundef %pi, ptr noundef nonnull %tab, i16 noundef zeroext 1109, i16 noundef zeroext 1111, i16 noundef zeroext 1110) #6
  %add2 = add i32 %index, 192
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add2, ptr %2, align 4
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 32, ptr %3, align 4
  %22 = ptrtoint ptr %tab to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %txgain, ptr %tab, align 4
  call void @wlc_phy_read_table(ptr noundef %pi, ptr noundef nonnull %tab, i16 noundef zeroext 1109, i16 noundef zeroext 1111, i16 noundef zeroext 1110) #6
  %23 = ptrtoint ptr %txgain to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %txgain, align 4
  %25 = trunc i32 %24 to i16
  %conv6 = and i16 %25, 255
  %26 = ptrtoint ptr %gains to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv6, ptr %gains, align 2
  %27 = lshr i16 %25, 8
  %28 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %8, align 2
  %shr11 = lshr i32 %24, 16
  %29 = trunc i32 %shr11 to i16
  %conv15 = and i16 %29, 255
  %30 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv15, ptr %9, align 2
  %31 = ptrtoint ptr %bbmultiqcomp to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %bbmultiqcomp, align 4
  %shr16 = lshr i32 %32, 28
  %33 = trunc i32 %shr16 to i16
  %conv20 = and i16 %33, 7
  %34 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv20, ptr %10, align 2
  call fastcc void @wlc_lcnphy_set_tx_gain(ptr noundef %pi, ptr noundef nonnull %gains)
  %35 = ptrtoint ptr %txgain to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %txgain, align 4
  %sh.diff = lshr i32 %36, 16
  %tr.sh.diff = trunc i32 %sh.diff to i16
  %shl.i = and i16 %tr.sh.diff, 32512
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1275, i16 noundef zeroext 32512, i16 noundef zeroext %shl.i) #6
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1277, i16 noundef zeroext 32512, i16 noundef zeroext %shl.i) #6
  %37 = ptrtoint ptr %bbmultiqcomp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %bbmultiqcomp, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %m0m1.i) #6
  %sh.diff64 = lshr i32 %38, 12
  %tr.sh.diff65 = trunc i32 %sh.diff64 to i16
  %conv1.i = and i16 %tr.sh.diff65, -256
  %39 = ptrtoint ptr %m0m1.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv1.i, ptr %m0m1.i, align 2
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tab.i) #6
  %40 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i, i32 0, i32 1
  %41 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i, i32 0, i32 2
  %42 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i, i32 0, i32 3
  %43 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i, i32 0, i32 4
  %44 = ptrtoint ptr %tab.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %m0m1.i, ptr %tab.i, align 4
  %45 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %40, align 4
  %46 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %41, align 4
  %47 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 87, ptr %42, align 4
  %48 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 16, ptr %43, align 4
  call void @wlc_phy_write_table(ptr noundef %pi, ptr noundef nonnull %tab.i, i16 noundef zeroext 1109, i16 noundef zeroext 1111, i16 noundef zeroext 1110) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tab.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %m0m1.i) #6
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1200, i16 noundef zeroext 128, i16 noundef zeroext 128) #6
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1200, i16 noundef zeroext 16384, i16 noundef zeroext 16384) #6
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1083, i16 noundef zeroext 64, i16 noundef zeroext 64) #6
  %temppwrctrl_capable = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 140
  %49 = ptrtoint ptr %temppwrctrl_capable to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %temppwrctrl_capable, align 1, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool.not = icmp eq i8 %50, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %bbmultiqcomp to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %bbmultiqcomp, align 4
  %shr29 = lshr i32 %52, 10
  %53 = trunc i32 %shr29 to i16
  %conv31 = and i16 %53, 1023
  %54 = trunc i32 %52 to i16
  %conv33 = and i16 %54, 1023
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tab.i62) #6
  %55 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i62, i32 0, i32 1
  %56 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i62, i32 0, i32 2
  %57 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i62, i32 0, i32 3
  %58 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i62, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iqcc.i) #6
  %59 = getelementptr inbounds [2 x i16], ptr %iqcc.i, i32 0, i32 1
  %60 = ptrtoint ptr %iqcc.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %conv31, ptr %iqcc.i, align 2
  %61 = ptrtoint ptr %59 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %conv33, ptr %59, align 2
  %62 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %56, align 4
  %63 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 16, ptr %58, align 4
  %64 = ptrtoint ptr %tab.i62 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %iqcc.i, ptr %tab.i62, align 4
  %65 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 2, ptr %55, align 4
  %66 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 80, ptr %57, align 4
  call void @wlc_phy_write_table(ptr noundef %pi, ptr noundef nonnull %tab.i62, i16 noundef zeroext 1109, i16 noundef zeroext 1111, i16 noundef zeroext 1110) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iqcc.i) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tab.i62) #6
  %add34 = add i32 %index, 448
  %67 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %add34, ptr %2, align 4
  %68 = ptrtoint ptr %tab to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %locoeffs, ptr %tab, align 4
  call void @wlc_phy_read_table(ptr noundef %pi, ptr noundef nonnull %tab, i16 noundef zeroext 1109, i16 noundef zeroext 1111, i16 noundef zeroext 1110) #6
  %69 = ptrtoint ptr %locoeffs to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %locoeffs, align 4
  %conv37 = trunc i32 %70 to i16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %didq.addr.i)
  %71 = ptrtoint ptr %didq.addr.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %conv37, ptr %didq.addr.i, align 2
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tab.i63) #6
  %72 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i63, i32 0, i32 1
  %73 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i63, i32 0, i32 2
  %74 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i63, i32 0, i32 3
  %75 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i63, i32 0, i32 4
  %76 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %73, align 4
  %77 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 16, ptr %75, align 4
  %78 = ptrtoint ptr %tab.i63 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %didq.addr.i, ptr %tab.i63, align 4
  %79 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 1, ptr %72, align 4
  %80 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 85, ptr %74, align 4
  call void @wlc_phy_write_table(ptr noundef %pi, ptr noundef nonnull %tab.i63, i16 noundef zeroext 1109, i16 noundef zeroext 1111, i16 noundef zeroext 1110) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tab.i63) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %didq.addr.i)
  %add38 = add i32 %index, 576
  %81 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %add38, ptr %2, align 4
  %82 = ptrtoint ptr %tab to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %rfpower, ptr %tab, align 4
  call void @wlc_phy_read_table(ptr noundef %pi, ptr noundef nonnull %tab, i16 noundef zeroext 1109, i16 noundef zeroext 1111, i16 noundef zeroext 1110) #6
  %83 = ptrtoint ptr %rfpower to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %rfpower, align 4
  %.tr = trunc i32 %84 to i16
  %conv41 = shl i16 %.tr, 3
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1702, i16 noundef zeroext 8191, i16 noundef zeroext %conv41) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %gains) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rfpower) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %locoeffs) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %txgain) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bbmultiqcomp) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tab) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wlc_lcnphy_set_tx_gain(ptr noundef %pi, ptr nocapture noundef readonly %target_gains) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1275) #6
  %0 = and i16 %call.i, 32512
  %1 = ptrtoint ptr %target_gains to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %target_gains, align 2
  %pga_gain = getelementptr inbounds %struct.lcnphy_txgains, ptr %target_gains, i32 0, i32 1
  %3 = ptrtoint ptr %pga_gain to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %pga_gain, align 2
  %shl = shl i16 %4, 8
  %or = or i16 %shl, %2
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1205, i16 noundef zeroext -1, i16 noundef zeroext %or) #6
  %pad_gain = getelementptr inbounds %struct.lcnphy_txgains, ptr %target_gains, i32 0, i32 2
  %5 = ptrtoint ptr %pad_gain to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %pad_gain, align 2
  %conv9 = or i16 %6, %0
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1275, i16 noundef zeroext 32767, i16 noundef zeroext %conv9) #6
  %7 = ptrtoint ptr %target_gains to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %target_gains, align 2
  %9 = ptrtoint ptr %pga_gain to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %pga_gain, align 2
  %shl14 = shl i16 %10, 8
  %or15 = or i16 %shl14, %8
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1276, i16 noundef zeroext -1, i16 noundef zeroext %or15) #6
  %11 = ptrtoint ptr %pad_gain to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %pad_gain, align 2
  %conv24 = or i16 %12, %0
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1277, i16 noundef zeroext 32767, i16 noundef zeroext %conv24) #6
  %dac_gain = getelementptr inbounds %struct.lcnphy_txgains, ptr %target_gains, i32 0, i32 3
  %13 = ptrtoint ptr %dac_gain to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %dac_gain, align 2
  %call.i38 = tail call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1081) #6
  %15 = and i16 %call.i38, 3199
  %shl.i = shl i16 %14, 7
  %or.i = or i16 %15, %shl.i
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1081, i16 noundef zeroext 4095, i16 noundef zeroext %or.i) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1200, i16 noundef zeroext 128, i16 noundef zeroext 128) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1200, i16 noundef zeroext 16384, i16 noundef zeroext 16384) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1083, i16 noundef zeroext 64, i16 noundef zeroext 64) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wlc_lcnphy_deaf_mode(ptr noundef %pi, i1 noundef zeroext %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %radio_chanspec = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 12
  %0 = ptrtoint ptr %radio_chanspec to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %radio_chanspec, align 4
  %2 = and i16 %1, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 3072, i16 %2)
  %cmp.not = icmp eq i16 %2, 3072
  %conv4 = select i1 %mode, i16 32, i16 0
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1200, i16 noundef zeroext 32, i16 noundef zeroext %conv4) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1201, i16 noundef zeroext 512, i16 noundef zeroext 0) #6
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %radio_chanspec to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %radio_chanspec, align 4
  %5 = and i16 %4, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %5)
  %cmp11 = icmp eq i16 %5, 8192
  %phi.bo = select i1 %mode, i16 0, i16 64
  %spec.select = select i1 %cmp11, i16 %phi.bo, i16 0
  %shl18 = select i1 %mode, i16 0, i16 32
  %or = or i16 %spec.select, %shl18
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1040, i16 noundef zeroext 96, i16 noundef zeroext %or) #6
  %conv23 = select i1 %mode, i16 128, i16 0
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1040, i16 noundef zeroext 128, i16 noundef zeroext %conv23) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wlc_lcnphy_start_tx_tone(ptr noundef %pi, i32 noundef %f_kHz, i16 noundef zeroext %max_val, i1 noundef zeroext %iqcalmode) local_unnamed_addr #0 align 64 {
entry:
  %data_buf = alloca [64 x i32], align 4
  %tab = alloca %struct.phytbl_info, align 4
  %tmp29 = alloca %struct.cordic_iq, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %data_buf) #6
  %0 = call ptr @memset(ptr %data_buf, i32 255, i32 256)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tab) #6
  %1 = getelementptr inbounds %struct.phytbl_info, ptr %tab, i32 0, i32 1
  %2 = getelementptr inbounds %struct.phytbl_info, ptr %tab, i32 0, i32 2
  %3 = getelementptr inbounds %struct.phytbl_info, ptr %tab, i32 0, i32 3
  %4 = getelementptr inbounds %struct.phytbl_info, ptr %tab, i32 0, i32 4
  %u = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 3
  %5 = call ptr @memset(ptr %tab, i32 255, i32 20)
  %6 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %u, align 4
  %phy_tx_tone_freq = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 83
  %8 = ptrtoint ptr %phy_tx_tone_freq to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %f_kHz, ptr %phy_tx_tone_freq, align 4
  %radio_chanspec.i = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 12
  %9 = ptrtoint ptr %radio_chanspec.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %radio_chanspec.i, align 4
  %11 = and i16 %10, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 3072, i16 %11)
  %cmp.not.i = icmp eq i16 %11, 3072
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1200, i16 noundef zeroext 32, i16 noundef zeroext 32) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1201, i16 noundef zeroext 512, i16 noundef zeroext 0) #6
  br i1 %cmp.not.i, label %entry.wlc_lcnphy_deaf_mode.exit_crit_edge, label %if.then.i

entry.wlc_lcnphy_deaf_mode.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %wlc_lcnphy_deaf_mode.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1040, i16 noundef zeroext 96, i16 noundef zeroext 0) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1040, i16 noundef zeroext 128, i16 noundef zeroext 128) #6
  br label %wlc_lcnphy_deaf_mode.exit

wlc_lcnphy_deaf_mode.exit:                        ; preds = %if.then.i, %entry.wlc_lcnphy_deaf_mode.exit_crit_edge
  %lcnphy_spurmod = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %7, i32 0, i32 34
  %12 = ptrtoint ptr %lcnphy_spurmod to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %lcnphy_spurmod, align 4, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  br i1 %tobool.not, label %wlc_lcnphy_deaf_mode.exit.if.end_crit_edge, label %if.then

wlc_lcnphy_deaf_mode.exit.if.end_crit_edge:       ; preds = %wlc_lcnphy_deaf_mode.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %wlc_lcnphy_deaf_mode.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 2370, i16 noundef zeroext 2) #6
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 2363, i16 noundef zeroext 0) #6
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 2364, i16 noundef zeroext 0) #6
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 2370, i16 noundef zeroext 0) #6
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 2363, i16 noundef zeroext 23) #6
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 2364, i16 noundef zeroext 1989) #6
  %sh.i = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 1
  %14 = ptrtoint ptr %sh.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sh.i, align 4
  %physhim.i = getelementptr inbounds %struct.shared_phy, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %physhim.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %physhim.i, align 4
  tail call void @wlapi_switch_macfreq(ptr noundef %17, i8 noundef zeroext 0) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %wlc_lcnphy_deaf_mode.exit.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %f_kHz)
  %tobool1.not = icmp eq i32 %f_kHz, 0
  br i1 %tobool1.not, label %if.end.for.body.lr.ph_crit_edge, label %do.body.preheader

if.end.for.body.lr.ph_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.lr.ph

do.body.preheader:                                ; preds = %if.end
  %18 = tail call i32 @llvm.abs.i32(i32 %f_kHz, i1 false)
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.preheader
  %k.0 = phi i16 [ %inc, %do.body.do.body_crit_edge ], [ 1, %do.body.preheader ]
  %conv3 = zext i16 %k.0 to i32
  %mul4 = mul nuw i32 %conv3, 40000
  %div = udiv i32 %mul4, %18
  %inc = add i16 %k.0, 1
  %conv7 = and i32 %div, 65535
  %mul17 = mul i32 %conv7, %18
  %cmp18.not = icmp eq i32 %mul17, %mul4
  br i1 %cmp18.not, label %if.end20, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end20:                                         ; preds = %do.body
  %conv6.le = trunc i32 %div to i16
  %mul21 = mul i32 %f_kHz, 36
  %div24 = sdiv i32 %mul21, 4000
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv6.le)
  %cmp27121.not = icmp eq i16 %conv6.le, 0
  br i1 %cmp27121.not, label %if.end20.for.end_crit_edge, label %if.end20.for.body.lr.ph_crit_edge

if.end20.for.body.lr.ph_crit_edge:                ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.lr.ph

if.end20.for.end_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end20.for.body.lr.ph_crit_edge, %if.end.for.body.lr.ph_crit_edge
  %div24131 = phi i32 [ %div24, %if.end20.for.body.lr.ph_crit_edge ], [ 0, %if.end.for.body.lr.ph_crit_edge ]
  %num_samps.0130 = phi i16 [ %conv6.le, %if.end20.for.body.lr.ph_crit_edge ], [ 2, %if.end.for.body.lr.ph_crit_edge ]
  %tone_samp.sroa.7.0.tmp29.sroa_idx = getelementptr inbounds i8, ptr %tmp29, i32 4
  %conv30 = zext i16 %max_val to i32
  %wide.trip.count = zext i16 %num_samps.0130 to i32
  br label %for.body

for.body:                                         ; preds = %cond.end72.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %cond.end72.for.body_crit_edge ]
  %theta.0122 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %cond.end72.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp29) #6
  call void @cordic_calc_iq(ptr nonnull sret(%struct.cordic_iq) align 4 %tmp29, i32 noundef %theta.0122) #6
  %19 = ptrtoint ptr %tmp29 to i32
  call void @__asan_load4_noabort(i32 %19)
  %tone_samp.sroa.0.0.copyload = load i32, ptr %tmp29, align 4
  %20 = ptrtoint ptr %tone_samp.sroa.7.0.tmp29.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %20)
  %tone_samp.sroa.7.0.copyload = load i32, ptr %tone_samp.sroa.7.0.tmp29.sroa_idx, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp29) #6
  %add = add i32 %theta.0122, %div24131
  %mul31 = mul i32 %tone_samp.sroa.0.0.copyload, %conv30
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %mul31)
  %cmp32 = icmp sgt i32 %mul31, -1
  br i1 %cmp32, label %cond.true34, label %cond.false40

cond.true34:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %shr117 = lshr i32 %mul31, 15
  %add38 = add nuw nsw i32 %shr117, 1
  %shr39118 = lshr i32 %add38, 1
  br label %cond.end49

cond.false40:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %sub44 = sub i32 0, %mul31
  %shr45 = ashr i32 %sub44, 15
  %add46 = add nsw i32 %shr45, 1
  %shr47 = ashr i32 %add46, 1
  %sub48 = sub nsw i32 0, %shr47
  br label %cond.end49

cond.end49:                                       ; preds = %cond.false40, %cond.true34
  %cond50 = phi i32 [ %shr39118, %cond.true34 ], [ %sub48, %cond.false40 ]
  %mul53 = mul i32 %tone_samp.sroa.7.0.copyload, %conv30
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %mul53)
  %cmp54 = icmp sgt i32 %mul53, -1
  br i1 %cmp54, label %cond.true56, label %cond.false63

cond.true56:                                      ; preds = %cond.end49
  call void @__sanitizer_cov_trace_pc() #8
  %shr60119 = lshr i32 %mul53, 15
  %add61 = add nuw nsw i32 %shr60119, 1
  %shr62120 = lshr i32 %add61, 1
  br label %cond.end72

cond.false63:                                     ; preds = %cond.end49
  call void @__sanitizer_cov_trace_pc() #8
  %sub67 = sub i32 0, %mul53
  %shr68 = ashr i32 %sub67, 15
  %add69 = add nsw i32 %shr68, 1
  %shr70 = ashr i32 %add69, 1
  %sub71 = sub nsw i32 0, %shr70
  br label %cond.end72

cond.end72:                                       ; preds = %cond.false63, %cond.true56
  %cond73 = phi i32 [ %shr62120, %cond.true56 ], [ %sub71, %cond.false63 ]
  %conv75 = and i32 %cond73, 1023
  %conv51 = shl nsw i32 %cond50, 10
  %shl = and i32 %conv51, 1047552
  %or = or i32 %conv75, %shl
  %arrayidx = getelementptr [64 x i32], ptr %data_buf, i32 0, i32 %indvars.iv
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or, ptr %arrayidx, align 4
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %cond.end72.for.end_crit_edge, label %cond.end72.for.body_crit_edge

cond.end72.for.body_crit_edge:                    ; preds = %cond.end72
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cond.end72.for.end_crit_edge:                     ; preds = %cond.end72
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %cond.end72.for.end_crit_edge, %if.end20.for.end_crit_edge
  %num_samps.0129 = phi i16 [ 0, %if.end20.for.end_crit_edge ], [ %num_samps.0130, %cond.end72.for.end_crit_edge ]
  %conv26.pre-phi = phi i32 [ 0, %if.end20.for.end_crit_edge ], [ %wide.trip.count, %cond.end72.for.end_crit_edge ]
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1750, i16 noundef zeroext 3, i16 noundef zeroext 0) #6
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1754, i16 noundef zeroext 8, i16 noundef zeroext 8) #6
  %22 = ptrtoint ptr %tab to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %data_buf, ptr %tab, align 4
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv26.pre-phi, ptr %1, align 4
  %24 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 21, ptr %2, align 4
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %3, align 4
  %26 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 32, ptr %4, align 4
  call void @wlc_phy_write_table(ptr noundef %pi, ptr noundef nonnull %tab, i16 noundef zeroext 1109, i16 noundef zeroext 1111, i16 noundef zeroext 1110) #6
  call void @or_phy_reg(ptr noundef %pi, i16 noundef zeroext 1754, i16 noundef zeroext -32640) #6
  %sub.i = add i16 %num_samps.0129, -1
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1602, i16 noundef zeroext 127, i16 noundef zeroext %sub.i) #6
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1600, i16 noundef zeroext -1, i16 noundef zeroext -1) #6
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1601, i16 noundef zeroext -1, i16 noundef zeroext 0) #6
  br i1 %iqcalmode, label %if.then10.i, label %if.else.i

if.then10.i:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @and_phy_reg(ptr noundef %pi, i16 noundef zeroext 1107, i16 noundef zeroext 32767) #6
  call void @or_phy_reg(ptr noundef %pi, i16 noundef zeroext 1107, i16 noundef zeroext -32768) #6
  br label %wlc_lcnphy_run_samples.exit

if.else.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 1599, i16 noundef zeroext 1) #6
  call void @wlc_lcnphy_tx_pu(ptr noundef %pi, i1 noundef zeroext true) #6
  br label %wlc_lcnphy_run_samples.exit

wlc_lcnphy_run_samples.exit:                      ; preds = %if.else.i, %if.then10.i
  call void @or_radio_reg(ptr noundef %pi, i16 noundef zeroext 274, i16 noundef zeroext 6) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tab) #6
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %data_buf) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cordic_calc_iq(ptr sret(%struct.cordic_iq) align 4, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wlc_lcnphy_stop_tx_tone(ptr noundef %pi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 3
  %0 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %u, align 4
  %phy_tx_tone_freq = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 83
  %2 = ptrtoint ptr %phy_tx_tone_freq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %phy_tx_tone_freq, align 4
  %lcnphy_spurmod = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %1, i32 0, i32 34
  %3 = ptrtoint ptr %lcnphy_spurmod to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %lcnphy_spurmod, align 4, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 2370, i16 noundef zeroext 7) #6
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 2363, i16 noundef zeroext 8215) #6
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 2364, i16 noundef zeroext 10181) #6
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 2370, i16 noundef zeroext 7) #6
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 2363, i16 noundef zeroext 8215) #6
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 2364, i16 noundef zeroext 10181) #6
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 1098, i16 noundef zeroext 132) #6
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 1098, i16 noundef zeroext 128) #6
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 1747, i16 noundef zeroext 8738) #6
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 1747, i16 noundef zeroext 8736) #6
  %sh.i = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 1
  %5 = ptrtoint ptr %sh.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sh.i, align 4
  %physhim.i = getelementptr inbounds %struct.shared_phy, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %physhim.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %physhim.i, align 4
  tail call void @wlapi_switch_macfreq(ptr noundef %8, i8 noundef zeroext 1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call = tail call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1604) #6
  %conv24 = zext i16 %call to i32
  %and = and i32 %conv24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @and_phy_reg(ptr noundef %pi, i16 noundef zeroext 1083, i16 noundef zeroext -19) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1084, i16 noundef zeroext 2, i16 noundef zeroext 2) #6
  tail call void @and_phy_reg(ptr noundef %pi, i16 noundef zeroext 1100, i16 noundef zeroext -4144) #6
  tail call void @and_phy_reg(ptr noundef %pi, i16 noundef zeroext 1101, i16 noundef zeroext -16425) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1101, i16 noundef zeroext 4, i16 noundef zeroext 4) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1101, i16 noundef zeroext 3, i16 noundef zeroext 1) #6
  tail call void @and_phy_reg(ptr noundef %pi, i16 noundef zeroext 1273, i16 noundef zeroext -8) #6
  tail call void @and_phy_reg(ptr noundef %pi, i16 noundef zeroext 1274, i16 noundef zeroext -8) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1599, i16 noundef zeroext 2, i16 noundef zeroext 2) #6
  br label %if.end8

if.else:                                          ; preds = %if.end
  %and4 = and i32 %conv24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.else.if.end8_crit_edge, label %if.then6

if.else.if.end8_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1107, i16 noundef zeroext -32768, i16 noundef zeroext 0) #6
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.else.if.end8_crit_edge, %if.then2
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1750, i16 noundef zeroext 3, i16 noundef zeroext 1) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1754, i16 noundef zeroext 8, i16 noundef zeroext 0) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1754, i16 noundef zeroext 128, i16 noundef zeroext 0) #6
  tail call void @and_radio_reg(ptr noundef %pi, i16 noundef zeroext 274, i16 noundef zeroext -7) #6
  %radio_chanspec.i = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 12
  %9 = ptrtoint ptr %radio_chanspec.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %radio_chanspec.i, align 4
  %11 = and i16 %10, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 3072, i16 %11)
  %cmp.not.i = icmp eq i16 %11, 3072
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1200, i16 noundef zeroext 32, i16 noundef zeroext 0) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1201, i16 noundef zeroext 512, i16 noundef zeroext 0) #6
  br i1 %cmp.not.i, label %if.end8.wlc_lcnphy_deaf_mode.exit_crit_edge, label %if.then.i

if.end8.wlc_lcnphy_deaf_mode.exit_crit_edge:      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %wlc_lcnphy_deaf_mode.exit

if.then.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %radio_chanspec.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %radio_chanspec.i, align 4
  %14 = and i16 %13, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %14)
  %cmp11.i = icmp eq i16 %14, 8192
  %or.i = select i1 %cmp11.i, i16 96, i16 32
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1040, i16 noundef zeroext 96, i16 noundef zeroext %or.i) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1040, i16 noundef zeroext 128, i16 noundef zeroext 0) #6
  br label %wlc_lcnphy_deaf_mode.exit

wlc_lcnphy_deaf_mode.exit:                        ; preds = %if.then.i, %if.end8.wlc_lcnphy_deaf_mode.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @and_radio_reg(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wlc_lcnphy_get_tx_iqcc(ptr noundef %pi, ptr nocapture noundef writeonly %a, ptr nocapture noundef writeonly %b) #0 align 64 {
entry:
  %iqcc = alloca [2 x i16], align 2
  %tab = alloca %struct.phytbl_info, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iqcc) #6
  %0 = ptrtoint ptr %iqcc to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %iqcc, align 2, !annotation !48
  %1 = getelementptr inbounds [2 x i16], ptr %iqcc, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %1, align 2, !annotation !48
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tab) #6
  %3 = getelementptr inbounds %struct.phytbl_info, ptr %tab, i32 0, i32 1
  %4 = getelementptr inbounds %struct.phytbl_info, ptr %tab, i32 0, i32 2
  %5 = getelementptr inbounds %struct.phytbl_info, ptr %tab, i32 0, i32 3
  %6 = getelementptr inbounds %struct.phytbl_info, ptr %tab, i32 0, i32 4
  %7 = ptrtoint ptr %tab to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %iqcc, ptr %tab, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %3, align 4
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %4, align 4
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 80, ptr %5, align 4
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 16, ptr %6, align 4
  call void @wlc_phy_read_table(ptr noundef %pi, ptr noundef nonnull %tab, i16 noundef zeroext 1109, i16 noundef zeroext 1111, i16 noundef zeroext 1110) #6
  %12 = ptrtoint ptr %iqcc to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %iqcc, align 2
  %14 = ptrtoint ptr %a to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %a, align 2
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %1, align 2
  %17 = ptrtoint ptr %b to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %b, align 2
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tab) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iqcc) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @wlc_lcnphy_get_tx_locc(ptr noundef %pi) #0 align 64 {
entry:
  %tab = alloca %struct.phytbl_info, align 4
  %didq = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tab) #6
  %0 = getelementptr inbounds %struct.phytbl_info, ptr %tab, i32 0, i32 1
  %1 = getelementptr inbounds %struct.phytbl_info, ptr %tab, i32 0, i32 2
  %2 = getelementptr inbounds %struct.phytbl_info, ptr %tab, i32 0, i32 3
  %3 = getelementptr inbounds %struct.phytbl_info, ptr %tab, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %didq) #6
  %4 = ptrtoint ptr %didq to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %didq, align 2, !annotation !48
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %1, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 16, ptr %3, align 4
  %7 = ptrtoint ptr %tab to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %didq, ptr %tab, align 4
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %0, align 4
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 85, ptr %2, align 4
  call void @wlc_phy_read_table(ptr noundef %pi, ptr noundef nonnull %tab, i16 noundef zeroext 1109, i16 noundef zeroext 1111, i16 noundef zeroext 1110) #6
  %10 = ptrtoint ptr %didq to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %didq, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %didq) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tab) #6
  ret i16 %11
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local signext i16 @wlc_lcnphy_tempsense_new(ptr noundef %pi, i1 noundef zeroext %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %mode, label %if.then, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then:                                          ; preds = %entry
  %d11core = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 5
  %0 = ptrtoint ptr %d11core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d11core, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %ops.i = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  %read32.i = getelementptr inbounds %struct.bcma_host_ops, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read32.i, align 4
  %call.i = tail call i32 %7(ptr noundef %1, i16 noundef zeroext 288) #6
  %and = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp2 = icmp eq i32 %and, 0
  br i1 %cmp2, label %if.then.if.end_crit_edge, label %if.then6

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %sh = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 1
  %8 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sh, align 4
  %physhim = getelementptr inbounds %struct.shared_phy, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %physhim to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %physhim, align 4
  tail call void @wlapi_suspend_mac_and_wait(ptr noundef %11) #6
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then.if.end_crit_edge
  tail call fastcc void @wlc_lcnphy_vbat_temp_sense_setup(ptr noundef %pi, i8 noundef zeroext 1)
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry.if.end7_crit_edge
  %suspend.0.off0 = phi i1 [ %cmp2, %if.end ], [ false, %entry.if.end7_crit_edge ]
  %call8 = tail call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1142) #6
  %call12 = tail call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1143) #6
  br i1 %mode, label %if.then45, label %if.end7.if.end51_crit_edge

if.end7.if.end51_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51

if.then45:                                        ; preds = %if.end7
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1096, i16 noundef zeroext 16384, i16 noundef zeroext 16384) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 21474800) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1096, i16 noundef zeroext 16384, i16 noundef zeroext 0) #6
  br i1 %suspend.0.off0, label %if.then45.if.end51_crit_edge, label %if.then47

if.then45.if.end51_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51

if.then47:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #8
  %sh48 = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 1
  %13 = ptrtoint ptr %sh48 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sh48, align 4
  %physhim49 = getelementptr inbounds %struct.shared_phy, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %physhim49 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %physhim49, align 4
  tail call void @wlapi_enable_mac(ptr noundef %16) #6
  br label %if.end51

if.end51:                                         ; preds = %if.then47, %if.then45.if.end51_crit_edge, %if.end7.if.end51_crit_edge
  %17 = and i16 %call12, 511
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %17)
  %cmp24 = icmp ugt i16 %17, 255
  %masksel68 = select i1 %cmp24, i16 -512, i16 0
  %18 = and i16 %call8, 511
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %18)
  %cmp17 = icmp ugt i16 %18, 255
  %masksel = select i1 %cmp17, i16 -512, i16 0
  %sub28.pn = add nuw nsw i16 %17, %18
  %avg.0 = add nsw i16 %sub28.pn, %masksel
  %avg.1 = add nsw i16 %avg.0, %masksel68
  %19 = sdiv i16 %avg.1, 2
  ret i16 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wlapi_suspend_mac_and_wait(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wlc_lcnphy_vbat_temp_sense_setup(ptr noundef %pi, i8 noundef zeroext %mode) unnamed_addr #0 align 64 {
entry:
  %tab = alloca %struct.phytbl_info, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tab) #6
  %0 = getelementptr inbounds %struct.phytbl_info, ptr %tab, i32 0, i32 1
  %1 = getelementptr inbounds %struct.phytbl_info, ptr %tab, i32 0, i32 2
  %2 = getelementptr inbounds %struct.phytbl_info, ptr %tab, i32 0, i32 3
  %3 = getelementptr inbounds %struct.phytbl_info, ptr %tab, i32 0, i32 4
  %4 = call ptr @memset(ptr %tab, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %5 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %val, align 4, !annotation !48
  %u = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 3
  %6 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %u, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214533252) #6
  %call = tail call zeroext i16 @read_radio_reg(ptr noundef %pi, i16 noundef zeroext 7) #6
  %call1 = tail call zeroext i16 @read_radio_reg(ptr noundef %pi, i16 noundef zeroext 255) #6
  %call3 = tail call zeroext i16 @read_radio_reg(ptr noundef %pi, i16 noundef zeroext 287) #6
  %call5 = tail call zeroext i16 @read_radio_reg(ptr noundef %pi, i16 noundef zeroext 5) #6
  %call7 = tail call zeroext i16 @read_radio_reg(ptr noundef %pi, i16 noundef zeroext 37) #6
  %call9 = tail call zeroext i16 @read_radio_reg(ptr noundef %pi, i16 noundef zeroext 274) #6
  %call12 = tail call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1283) #6
  %call12.1 = tail call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1188) #6
  %call12.2 = tail call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1232) #6
  %call12.3 = tail call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1241) #6
  %call12.4 = tail call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1242) #6
  %call12.5 = tail call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1190) #6
  %call12.6 = tail call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 2360) #6
  %call12.7 = tail call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 2361) #6
  %call12.8 = tail call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1240) #6
  %call12.9 = tail call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1232) #6
  %call12.10 = tail call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1239) #6
  %call12.11 = tail call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1189) #6
  %call12.12 = tail call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1037) #6
  %call12.13 = tail call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1186) #6
  %d11core = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 5
  %9 = ptrtoint ptr %d11core to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %d11core, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  %ops.i = getelementptr inbounds %struct.bcma_bus, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops.i, align 4
  %read32.i = getelementptr inbounds %struct.bcma_host_ops, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %read32.i, align 4
  %call.i = tail call i32 %16(ptr noundef %10, i16 noundef zeroext 288) #6
  %and = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp15 = icmp eq i32 %and, 0
  br i1 %cmp15, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %sh = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 1
  %17 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sh, align 4
  %physhim = getelementptr inbounds %struct.shared_phy, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %physhim to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %physhim, align 4
  tail call void @wlapi_suspend_mac_and_wait(ptr noundef %20) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call17 = tail call zeroext i16 @read_radio_reg(ptr noundef %pi, i16 noundef zeroext 1188) #6
  tail call void @wlc_lcnphy_set_tx_pwr_ctrl(ptr noundef %pi, i16 noundef zeroext 0)
  %lcnphy_current_index = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %7, i32 0, i32 77
  %21 = ptrtoint ptr %lcnphy_current_index to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %lcnphy_current_index, align 2
  tail call void @wlc_lcnphy_set_tx_pwr_by_index(ptr noundef %pi, i32 noundef 127)
  tail call void @mod_radio_reg(ptr noundef %pi, i16 noundef zeroext 7, i16 noundef zeroext 1, i16 noundef zeroext 1) #6
  tail call void @mod_radio_reg(ptr noundef %pi, i16 noundef zeroext 255, i16 noundef zeroext 16, i16 noundef zeroext 16) #6
  tail call void @mod_radio_reg(ptr noundef %pi, i16 noundef zeroext 287, i16 noundef zeroext 4, i16 noundef zeroext 4) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1283, i16 noundef zeroext 1, i16 noundef zeroext 0) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1283, i16 noundef zeroext 4, i16 noundef zeroext 0) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1188, i16 noundef zeroext 16384, i16 noundef zeroext 0) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1188, i16 noundef zeroext -32768, i16 noundef zeroext 0) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1232, i16 noundef zeroext 32, i16 noundef zeroext 0) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1189, i16 noundef zeroext 255, i16 noundef zeroext 255) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1189, i16 noundef zeroext 28672, i16 noundef zeroext 20480) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1189, i16 noundef zeroext 1792, i16 noundef zeroext 0) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1037, i16 noundef zeroext 255, i16 noundef zeroext 64) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1037, i16 noundef zeroext 1792, i16 noundef zeroext 1536) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1186, i16 noundef zeroext 255, i16 noundef zeroext 64) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1186, i16 noundef zeroext 1792, i16 noundef zeroext 1536) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1241, i16 noundef zeroext 112, i16 noundef zeroext 32) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1241, i16 noundef zeroext 1792, i16 noundef zeroext 768) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1241, i16 noundef zeroext 28672, i16 noundef zeroext 4096) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1242, i16 noundef zeroext 4096, i16 noundef zeroext 0) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1242, i16 noundef zeroext 8192, i16 noundef zeroext 8192) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1190, i16 noundef zeroext -32768, i16 noundef zeroext -32768) #6
  tail call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext 37, i16 noundef zeroext 12) #6
  tail call void @mod_radio_reg(ptr noundef %pi, i16 noundef zeroext 5, i16 noundef zeroext 8, i16 noundef zeroext 8) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 2360, i16 noundef zeroext 4, i16 noundef zeroext 4) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 2361, i16 noundef zeroext 4, i16 noundef zeroext 4) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1188, i16 noundef zeroext 4096, i16 noundef zeroext 4096) #6
  %call.i134 = tail call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1189) #6
  %23 = and i16 %call.i134, 255
  %call2.i = tail call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1189) #6
  %24 = lshr i16 %call2.i, 12
  %25 = and i16 %24, 7
  %shl.i = shl nuw nsw i16 1, %25
  %call7.i = tail call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1037) #6
  %26 = and i16 %call7.i, 255
  %call12.i = tail call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1037) #6
  %27 = lshr i16 %call12.i, 8
  %28 = and i16 %27, 7
  %shl16.i = shl nuw nsw i16 1, %28
  %call18.i = tail call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1186) #6
  %29 = and i16 %call18.i, 255
  %call23.i = tail call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1186) #6
  %30 = lshr i16 %call23.i, 8
  %31 = and i16 %30, 7
  %shl27.i = shl nuw nsw i16 1, %31
  %narrow52.i = add nuw nsw i16 %shl27.i, %29
  %32 = shl nuw nsw i16 %narrow52.i, 1
  %narrow.i = add nuw nsw i16 %26, %23
  %narrow50.i = add nuw nsw i16 %narrow.i, %shl.i
  %narrow51.i = add nuw nsw i16 %narrow50.i, %shl16.i
  %narrow53.i = add nuw nsw i16 %narrow51.i, %32
  %33 = shl nuw nsw i16 %narrow53.i, 1
  %34 = tail call i16 @llvm.umax.i16(i16 %33, i16 1520) #6
  %35 = add nuw nsw i16 %34, 80
  %conv19 = zext i16 %35 to i32
  %36 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %conv19, ptr %val, align 4
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 8, ptr %1, align 4
  %38 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 16, ptr %3, align 4
  %39 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %0, align 4
  %40 = ptrtoint ptr %tab to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %val, ptr %tab, align 4
  %41 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 6, ptr %2, align 4
  call void @wlc_phy_write_table(ptr noundef %pi, ptr noundef nonnull %tab, i16 noundef zeroext 1109, i16 noundef zeroext 1111, i16 noundef zeroext 1110) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %mode)
  %cmp21 = icmp eq i8 %mode, 1
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1239, i16 noundef zeroext 8, i16 noundef zeroext 8) #6
  br i1 %cmp21, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1239, i16 noundef zeroext 28672, i16 noundef zeroext 4096) #6
  call void @mod_radio_reg(ptr noundef %pi, i16 noundef zeroext 130, i16 noundef zeroext 32, i16 noundef zeroext 32) #6
  br label %if.end24

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1239, i16 noundef zeroext 28672, i16 noundef zeroext 12288) #6
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then23
  %or27 = phi i16 [ 2536, %if.else ], [ 2576, %if.then23 ]
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1240, i16 noundef zeroext 1, i16 noundef zeroext 1) #6
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1240, i16 noundef zeroext 4092, i16 noundef zeroext %or27) #6
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1240, i16 noundef zeroext 2, i16 noundef zeroext 2) #6
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1240, i16 noundef zeroext 28672, i16 noundef zeroext 8192) #6
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1232, i16 noundef zeroext 32, i16 noundef zeroext 32) #6
  call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext 274, i16 noundef zeroext 6) #6
  call void @wlc_phy_do_dummy_tx(ptr noundef %pi, i1 noundef zeroext true, i1 noundef zeroext false) #6
  %call35 = call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1142) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call35)
  %cmp38 = icmp slt i16 %call35, 0
  br i1 %cmp38, label %if.end24.if.end41_crit_edge, label %if.then40

if.end24.if.end41_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

if.then40:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %42(i32 noundef 2147480) #6
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.end24.if.end41_crit_edge
  %conv42 = and i16 %call, 255
  call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext 7, i16 noundef zeroext %conv42) #6
  %conv43 = and i16 %call1, 255
  call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext 255, i16 noundef zeroext %conv43) #6
  %conv44 = and i16 %call3, 255
  call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext 287, i16 noundef zeroext %conv44) #6
  %conv45 = and i16 %call5, 255
  call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext 5, i16 noundef zeroext %conv45) #6
  %conv46 = and i16 %call7, 255
  call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext 37, i16 noundef zeroext %conv46) #6
  %conv47 = and i16 %call9, 255
  call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext 274, i16 noundef zeroext %conv47) #6
  call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 1283, i16 noundef zeroext %call12) #6
  call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 1188, i16 noundef zeroext %call12.1) #6
  call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 1232, i16 noundef zeroext %call12.2) #6
  call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 1241, i16 noundef zeroext %call12.3) #6
  call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 1242, i16 noundef zeroext %call12.4) #6
  call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 1190, i16 noundef zeroext %call12.5) #6
  call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 2360, i16 noundef zeroext %call12.6) #6
  call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 2361, i16 noundef zeroext %call12.7) #6
  call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 1240, i16 noundef zeroext %call12.8) #6
  call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 1232, i16 noundef zeroext %call12.9) #6
  call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 1239, i16 noundef zeroext %call12.10) #6
  call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 1189, i16 noundef zeroext %call12.11) #6
  call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 1037, i16 noundef zeroext %call12.12) #6
  call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 1186, i16 noundef zeroext %call12.13) #6
  %conv57 = sext i8 %22 to i32
  call void @wlc_lcnphy_set_tx_pwr_by_index(ptr noundef %pi, i32 noundef %conv57)
  call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext 1188, i16 noundef zeroext %call17) #6
  br i1 %cmp15, label %if.end41.if.end62_crit_edge, label %if.then59

if.end41.if.end62_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end62

if.then59:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  %sh60 = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 1
  %43 = ptrtoint ptr %sh60 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %sh60, align 4
  %physhim61 = getelementptr inbounds %struct.shared_phy, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %physhim61 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %physhim61, align 4
  call void @wlapi_enable_mac(ptr noundef %46) #6
  br label %if.end62

if.end62:                                         ; preds = %if.then59, %if.end41.if.end62_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %47(i32 noundef 214533252) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tab) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wlapi_enable_mac(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @wlc_lcnphy_tempsense(ptr noundef %pi, i1 noundef zeroext %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1188) #6
  %0 = and i16 %call, -8192
  %u = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 3
  %1 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %u, align 4
  br i1 %mode, label %if.then, label %entry.if.end11_crit_edge

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then:                                          ; preds = %entry
  %d11core = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 5
  %3 = ptrtoint ptr %d11core to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %d11core, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %ops.i = getelementptr inbounds %struct.bcma_bus, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops.i, align 4
  %read32.i = getelementptr inbounds %struct.bcma_host_ops, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read32.i, align 4
  %call.i = tail call i32 %10(ptr noundef %4, i16 noundef zeroext 288) #6
  %and5 = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %cmp6 = icmp eq i32 %and5, 0
  br i1 %cmp6, label %if.then.if.end_crit_edge, label %if.then10

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then10:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %sh = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 1
  %11 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sh, align 4
  %physhim = getelementptr inbounds %struct.shared_phy, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %physhim to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %physhim, align 4
  tail call void @wlapi_suspend_mac_and_wait(ptr noundef %14) #6
  br label %if.end

if.end:                                           ; preds = %if.then10, %if.then.if.end_crit_edge
  tail call fastcc void @wlc_lcnphy_vbat_temp_sense_setup(ptr noundef %pi, i8 noundef zeroext 1)
  br label %if.end11

if.end11:                                         ; preds = %if.end, %entry.if.end11_crit_edge
  %suspend.0.off0 = phi i1 [ %cmp6, %if.end ], [ false, %entry.if.end11_crit_edge ]
  %call12 = tail call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1142) #6
  %15 = and i16 %call12, 511
  %call16 = tail call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1143) #6
  %16 = and i16 %call16, 511
  %conv20 = zext i16 %15 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %15)
  %cmp21 = icmp ugt i16 %15, 255
  %sub = or i32 %conv20, -512
  %avg.0 = select i1 %cmp21, i32 %sub, i32 %conv20
  %lcnphy_tempsense_option = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %2, i32 0, i32 29
  %17 = ptrtoint ptr %lcnphy_tempsense_option to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %lcnphy_tempsense_option, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %18)
  %cmp28 = icmp eq i8 %18, 1
  br i1 %cmp28, label %if.end11.if.then32_crit_edge, label %lor.lhs.false

if.end11.if.then32_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then32

lor.lhs.false:                                    ; preds = %if.end11
  %hwpwrctrl_capable = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 139
  %19 = ptrtoint ptr %hwpwrctrl_capable to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %hwpwrctrl_capable, align 4, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool30.not = icmp eq i8 %20, 0
  br i1 %tobool30.not, label %if.else43, label %lor.lhs.false.if.then32_crit_edge

lor.lhs.false.if.then32_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then32

if.then32:                                        ; preds = %lor.lhs.false.if.then32_crit_edge, %if.end11.if.then32_crit_edge
  %conv33 = zext i16 %16 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %16)
  %cmp34 = icmp ugt i16 %16, 255
  br i1 %cmp34, label %if.then36, label %if.else39

if.then36:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  %sub38 = sub nuw nsw i32 512, %conv33
  %add = add nsw i32 %sub38, %avg.0
  br label %if.end55

if.else39:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  %sub41 = sub nsw i32 %avg.0, %conv33
  br label %if.end55

if.else43:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %conv44 = zext i16 %16 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %16)
  %cmp45 = icmp ugt i16 %16, 255
  %add49 = add nsw i32 %avg.0, %conv44
  %sub50 = add nsw i32 %add49, 65024
  %avg.1 = select i1 %cmp45, i32 %sub50, i32 %add49
  %div.lhs.trunc = trunc i32 %avg.1 to i16
  %div113 = sdiv i16 %div.lhs.trunc, 2
  %div.sext = sext i16 %div113 to i32
  br label %if.end55

if.end55:                                         ; preds = %if.else43, %if.else39, %if.then36
  %avg.2 = phi i32 [ %add, %if.then36 ], [ %sub41, %if.else39 ], [ %div.sext, %if.else43 ]
  br i1 %mode, label %if.then69, label %if.end55.if.end81_crit_edge

if.end55.if.end81_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end81

if.then69:                                        ; preds = %if.end55
  tail call void @wlc_lcnphy_set_tx_pwr_ctrl(ptr noundef %pi, i16 noundef zeroext %0)
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1096, i16 noundef zeroext 16384, i16 noundef zeroext 16384) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 21474800) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1096, i16 noundef zeroext 16384, i16 noundef zeroext 0) #6
  br i1 %suspend.0.off0, label %if.then69.if.end81_crit_edge, label %if.then77

if.then69.if.end81_crit_edge:                     ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end81

if.then77:                                        ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #8
  %sh78 = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 1
  %22 = ptrtoint ptr %sh78 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sh78, align 4
  %physhim79 = getelementptr inbounds %struct.shared_phy, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %physhim79 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %physhim79, align 4
  tail call void @wlapi_enable_mac(ptr noundef %25) #6
  br label %if.end81

if.end81:                                         ; preds = %if.then77, %if.then69.if.end81_crit_edge, %if.end55.if.end81_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %18)
  %cmp63 = icmp eq i8 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %avg.2)
  %cmp56 = icmp slt i32 %avg.2, 0
  %add59 = add nsw i32 %avg.2, 512
  %spec.select = select i1 %cmp56, i32 %add59, i32 %avg.2
  %avg.4 = select i1 %cmp63, i32 %conv20, i32 %spec.select
  %conv82 = trunc i32 %avg.4 to i16
  ret i16 %conv82
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local signext i8 @wlc_lcnphy_tempsense_degree(ptr noundef %pi, i1 noundef zeroext %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call signext i16 @wlc_lcnphy_tempsense_new(ptr noundef %pi, i1 noundef zeroext %mode)
  %conv = sext i16 %call to i32
  %shl = shl nsw i32 %conv, 10
  %add1 = add nsw i32 %shl, 82135
  %div = sdiv i32 %add1, 2647
  %conv2 = trunc i32 %div to i8
  ret i8 %conv2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local signext i8 @wlc_lcnphy_vbatsense(ptr noundef %pi, i1 noundef zeroext %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %mode, label %if.then, label %if.end7.thread

if.end7.thread:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call842 = tail call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1141) #6
  br label %if.end29

if.then:                                          ; preds = %entry
  %d11core = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 5
  %0 = ptrtoint ptr %d11core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d11core, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %ops.i = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  %read32.i = getelementptr inbounds %struct.bcma_host_ops, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read32.i, align 4
  %call.i = tail call i32 %7(ptr noundef %1, i16 noundef zeroext 288) #6
  %and = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp2 = icmp eq i32 %and, 0
  br i1 %cmp2, label %if.then.if.end7_crit_edge, label %if.then6

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %sh = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 1
  %8 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sh, align 4
  %physhim = getelementptr inbounds %struct.shared_phy, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %physhim to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %physhim, align 4
  tail call void @wlapi_suspend_mac_and_wait(ptr noundef %11) #6
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.then.if.end7_crit_edge
  tail call fastcc void @wlc_lcnphy_vbat_temp_sense_setup(ptr noundef %pi, i8 noundef zeroext 2)
  %call8 = tail call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1141) #6
  %mode.not = xor i1 %mode, true
  %brmerge = select i1 %mode.not, i1 true, i1 %cmp2
  br i1 %brmerge, label %if.end7.if.end29_crit_edge, label %if.then25

if.end7.if.end29_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.then25:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %sh26 = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 1
  %12 = ptrtoint ptr %sh26 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sh26, align 4
  %physhim27 = getelementptr inbounds %struct.shared_phy, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %physhim27 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %physhim27, align 4
  tail call void @wlapi_enable_mac(ptr noundef %15) #6
  br label %if.end29

if.end29:                                         ; preds = %if.then25, %if.end7.if.end29_crit_edge, %if.end7.thread
  %call845 = phi i16 [ %call842, %if.end7.thread ], [ %call8, %if.end7.if.end29_crit_edge ], [ %call8, %if.then25 ]
  %16 = and i16 %call845, 511
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %16)
  %cmp13 = icmp ugt i16 %16, 255
  %masksel = select i1 %cmp13, i16 -512, i16 0
  %avg.0 = or i16 %masksel, %16
  %mul = mul nsw i16 %avg.0, 53
  %add = add i16 %mul, 216
  %div40 = sdiv i16 %add, 432
  %conv30 = trunc i16 %div40 to i8
  ret i8 %conv30
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wlc_lcnphy_calib_modes(ptr noundef %pi, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 3
  %0 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %u, align 4
  %2 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mode, label %entry.sw.epilog_crit_edge [
    i32 9, label %sw.bb36
    i32 8, label %sw.bb
    i32 3, label %sw.bb1
    i32 2, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @wlc_lcnphy_periodic_cal(ptr noundef %pi)
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @wlc_lcnphy_periodic_cal(ptr noundef %pi)
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %temppwrctrl_capable = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 140
  %3 = ptrtoint ptr %temppwrctrl_capable to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %temppwrctrl_capable, align 1, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %sw.bb2.sw.epilog_crit_edge, label %if.then

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb2
  %call = tail call zeroext i16 @wlc_lcnphy_tempsense(ptr noundef %pi, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %call)
  %cmp = icmp ugt i16 %call, 255
  %sub = add i16 %call, -512
  %cond = select i1 %cmp, i16 %sub, i16 %call
  %conv7 = sext i16 %cond to i32
  %lcnphy_cal_temper = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %lcnphy_cal_temper to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %lcnphy_cal_temper, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %6)
  %cmp9 = icmp ugt i16 %6, 255
  %sub14 = add i16 %6, -512
  %cond19 = select i1 %cmp9, i16 %sub14, i16 %6
  %conv21 = sext i16 %cond19 to i32
  %sub22 = sub nsw i32 %conv7, %conv21
  %lcnphy_cal_counter = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %lcnphy_cal_counter to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %lcnphy_cal_counter, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 90, i8 %8)
  %cmp24 = icmp ugt i8 %8, 90
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %sub22)
  %cmp26 = icmp sgt i32 %sub22, 60
  %or.cond = select i1 %cmp24, i1 true, i1 %cmp26
  call void @__sanitizer_cov_trace_const_cmp4(i32 -60, i32 %sub22)
  %cmp29 = icmp slt i32 %sub22, -60
  %or.cond59 = select i1 %or.cond, i1 true, i1 %cmp29
  br i1 %or.cond59, label %if.then31, label %if.else

if.then31:                                        ; preds = %if.then
  %call.i = tail call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1188) #6
  %9 = and i16 %call.i, -8192
  %10 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %u, align 4
  %d11core.i = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 5
  %12 = ptrtoint ptr %d11core.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %d11core.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %ops.i.i = getelementptr inbounds %struct.bcma_bus, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i.i, align 4
  %read32.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %19(ptr noundef %13, i16 noundef zeroext 288) #6
  %and3.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %cmp.i = icmp eq i32 %and3.i, 0
  br i1 %cmp.i, label %if.then31.if.end.i_crit_edge, label %if.then.i

if.then31.if.end.i_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #8
  %sh.i = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 1
  %20 = ptrtoint ptr %sh.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sh.i, align 4
  %physhim.i = getelementptr inbounds %struct.shared_phy, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %physhim.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %physhim.i, align 4
  tail call void @wlapi_suspend_mac_and_wait(ptr noundef %23) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then31.if.end.i_crit_edge
  %radio_chanspec.i.i = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 12
  %24 = ptrtoint ptr %radio_chanspec.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %radio_chanspec.i.i, align 4
  %26 = and i16 %25, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 3072, i16 %26)
  %cmp.not.i.i = icmp eq i16 %26, 3072
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1200, i16 noundef zeroext 32, i16 noundef zeroext 32) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1201, i16 noundef zeroext 512, i16 noundef zeroext 0) #6
  br i1 %cmp.not.i.i, label %if.end.i.wlc_lcnphy_deaf_mode.exit.i_crit_edge, label %if.then.i.i

if.end.i.wlc_lcnphy_deaf_mode.exit.i_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %wlc_lcnphy_deaf_mode.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1040, i16 noundef zeroext 96, i16 noundef zeroext 0) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1040, i16 noundef zeroext 128, i16 noundef zeroext 128) #6
  br label %wlc_lcnphy_deaf_mode.exit.i

wlc_lcnphy_deaf_mode.exit.i:                      ; preds = %if.then.i.i, %if.end.i.wlc_lcnphy_deaf_mode.exit.i_crit_edge
  %sh5.i = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 1
  %27 = ptrtoint ptr %sh5.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sh5.i, align 4
  %now.i = getelementptr inbounds %struct.shared_phy, ptr %28, i32 0, i32 7
  %29 = ptrtoint ptr %now.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %now.i, align 4
  %phy_lastcal.i = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 84
  %31 = ptrtoint ptr %phy_lastcal.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %phy_lastcal.i, align 4
  %phy_forcecal.i = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 85
  %32 = ptrtoint ptr %phy_forcecal.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %phy_forcecal.i, align 4
  %lcnphy_current_index.i = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %11, i32 0, i32 77
  %33 = ptrtoint ptr %lcnphy_current_index.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %lcnphy_current_index.i, align 2
  tail call fastcc void @wlc_lcnphy_txpwrtbl_iqlo_cal(ptr noundef %pi) #6
  %conv6.i = sext i8 %34 to i32
  tail call void @wlc_lcnphy_set_tx_pwr_by_index(ptr noundef %pi, i32 noundef %conv6.i) #6
  tail call void @wlc_lcnphy_set_tx_pwr_ctrl(ptr noundef %pi, i16 noundef zeroext %9) #6
  %35 = ptrtoint ptr %radio_chanspec.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %radio_chanspec.i.i, align 4
  %37 = and i16 %36, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 3072, i16 %37)
  %cmp.not.i26.i = icmp eq i16 %37, 3072
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1200, i16 noundef zeroext 32, i16 noundef zeroext 0) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1201, i16 noundef zeroext 512, i16 noundef zeroext 0) #6
  br i1 %cmp.not.i26.i, label %wlc_lcnphy_deaf_mode.exit.i.wlc_lcnphy_deaf_mode.exit29.i_crit_edge, label %if.then.i28.i

wlc_lcnphy_deaf_mode.exit.i.wlc_lcnphy_deaf_mode.exit29.i_crit_edge: ; preds = %wlc_lcnphy_deaf_mode.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %wlc_lcnphy_deaf_mode.exit29.i

if.then.i28.i:                                    ; preds = %wlc_lcnphy_deaf_mode.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %radio_chanspec.i.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %radio_chanspec.i.i, align 4
  %40 = and i16 %39, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %40)
  %cmp11.i27.i = icmp eq i16 %40, 8192
  %or.i.i = select i1 %cmp11.i27.i, i16 96, i16 32
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1040, i16 noundef zeroext 96, i16 noundef zeroext %or.i.i) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1040, i16 noundef zeroext 128, i16 noundef zeroext 0) #6
  br label %wlc_lcnphy_deaf_mode.exit29.i

wlc_lcnphy_deaf_mode.exit29.i:                    ; preds = %if.then.i28.i, %wlc_lcnphy_deaf_mode.exit.i.wlc_lcnphy_deaf_mode.exit29.i_crit_edge
  br i1 %cmp.i, label %wlc_lcnphy_deaf_mode.exit29.i.wlc_lcnphy_glacial_timer_based_cal.exit_crit_edge, label %if.then8.i

wlc_lcnphy_deaf_mode.exit29.i.wlc_lcnphy_glacial_timer_based_cal.exit_crit_edge: ; preds = %wlc_lcnphy_deaf_mode.exit29.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %wlc_lcnphy_glacial_timer_based_cal.exit

if.then8.i:                                       ; preds = %wlc_lcnphy_deaf_mode.exit29.i
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %sh5.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %sh5.i, align 4
  %physhim10.i = getelementptr inbounds %struct.shared_phy, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %physhim10.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %physhim10.i, align 4
  tail call void @wlapi_enable_mac(ptr noundef %44) #6
  br label %wlc_lcnphy_glacial_timer_based_cal.exit

wlc_lcnphy_glacial_timer_based_cal.exit:          ; preds = %if.then8.i, %wlc_lcnphy_deaf_mode.exit29.i.wlc_lcnphy_glacial_timer_based_cal.exit_crit_edge
  tail call void @mod_radio_reg(ptr noundef %pi, i16 noundef zeroext 87, i16 noundef zeroext 8, i16 noundef zeroext 8) #6
  %call.i60 = tail call zeroext i16 @read_radio_reg(ptr noundef %pi, i16 noundef zeroext 86) #6
  %45 = trunc i16 %call.i60 to i8
  %conv2.i = and i8 %45, -8
  %conv3.i = zext i8 %conv2.i to i16
  tail call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext 86, i16 noundef zeroext %conv3.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %46(i32 noundef 214748) #6
  %.mask.i = and i16 %call.i60, 248
  %47 = or i8 %conv2.i, 3
  %conv5.i = zext i8 %47 to i16
  tail call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext 86, i16 noundef zeroext %conv5.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 214748) #6
  %49 = or i16 %.mask.i, 7
  tail call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext 86, i16 noundef zeroext %49) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 64424400) #6
  tail call void @mod_radio_reg(ptr noundef %pi, i16 noundef zeroext 87, i16 noundef zeroext 8, i16 noundef zeroext 0) #6
  %51 = ptrtoint ptr %lcnphy_cal_temper to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %call, ptr %lcnphy_cal_temper, align 2
  %52 = ptrtoint ptr %lcnphy_cal_counter to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %lcnphy_cal_counter, align 1
  br label %sw.epilog

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %inc = add nuw nsw i8 %8, 1
  %53 = ptrtoint ptr %lcnphy_cal_counter to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %inc, ptr %lcnphy_cal_counter, align 1
  br label %sw.epilog

sw.bb36:                                          ; preds = %entry
  %temppwrctrl_capable37 = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 140
  %54 = ptrtoint ptr %temppwrctrl_capable37 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %temppwrctrl_capable37, align 1, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool38.not = icmp eq i8 %55, 0
  br i1 %tobool38.not, label %sw.bb36.sw.epilog_crit_edge, label %if.then39

sw.bb36.sw.epilog_crit_edge:                      ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then39:                                        ; preds = %sw.bb36
  %call.i62 = tail call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1188) #6
  %56 = ptrtoint ptr %temppwrctrl_capable37 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %temppwrctrl_capable37, align 1, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool.not.i = icmp eq i8 %57, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %call.i62)
  %tobool4.not.i = icmp ult i16 %call.i62, 8192
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool4.not.i
  br i1 %or.cond.i, label %if.then39.sw.epilog_crit_edge, label %if.then.i65

if.then39.sw.epilog_crit_edge:                    ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then.i65:                                      ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #8
  %call5.i = tail call fastcc signext i8 @wlc_lcnphy_tempcompensated_txpwrctrl(ptr noundef %pi) #6
  %conv6.i63 = sext i8 %call5.i to i16
  %mul.i = shl nsw i16 %conv6.i63, 1
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1193, i16 noundef zeroext 511, i16 noundef zeroext %mul.i) #6
  %call10.i = tail call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1193) #6
  %58 = trunc i16 %call10.i to i8
  %59 = lshr i8 %58, 1
  %lcnphy_current_index.i64 = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %1, i32 0, i32 77
  %60 = ptrtoint ptr %lcnphy_current_index.i64 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %lcnphy_current_index.i64, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.i65, %if.then39.sw.epilog_crit_edge, %sw.bb36.sw.epilog_crit_edge, %if.else, %wlc_lcnphy_glacial_timer_based_cal.exit, %sw.bb2.sw.epilog_crit_edge, %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wlc_lcnphy_periodic_cal(ptr noundef %pi) unnamed_addr #0 align 64 {
entry:
  %tab = alloca %struct.phytbl_info, align 4
  %pwr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1188) #6
  %0 = and i16 %call, -8192
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tab) #6
  %1 = getelementptr inbounds %struct.phytbl_info, ptr %tab, i32 0, i32 1
  %2 = getelementptr inbounds %struct.phytbl_info, ptr %tab, i32 0, i32 2
  %3 = getelementptr inbounds %struct.phytbl_info, ptr %tab, i32 0, i32 3
  %4 = getelementptr inbounds %struct.phytbl_info, ptr %tab, i32 0, i32 4
  %5 = call ptr @memset(ptr %tab, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pwr) #6
  %6 = ptrtoint ptr %pwr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %pwr, align 4, !annotation !48
  %u = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 3
  %7 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %u, align 4
  %sh = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 1
  %9 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sh, align 4
  %now = getelementptr inbounds %struct.shared_phy, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %now to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %now, align 4
  %phy_lastcal = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 84
  %13 = ptrtoint ptr %phy_lastcal to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %phy_lastcal, align 4
  %phy_forcecal = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 85
  %14 = ptrtoint ptr %phy_forcecal to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %phy_forcecal, align 4
  %radio_chanspec = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 12
  %15 = ptrtoint ptr %radio_chanspec to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %radio_chanspec, align 4
  %conv4 = trunc i16 %16 to i8
  %lcnphy_full_cal_channel = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %8, i32 0, i32 1
  %17 = ptrtoint ptr %lcnphy_full_cal_channel to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv4, ptr %lcnphy_full_cal_channel, align 4
  %lcnphy_current_index = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %8, i32 0, i32 77
  %18 = ptrtoint ptr %lcnphy_current_index to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %lcnphy_current_index, align 2
  %d11core = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 5
  %20 = ptrtoint ptr %d11core to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %d11core, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 8
  %ops.i = getelementptr inbounds %struct.bcma_bus, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops.i, align 4
  %read32.i = getelementptr inbounds %struct.bcma_host_ops, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %read32.i, align 4
  %call.i = tail call i32 %27(ptr noundef %21, i16 noundef zeroext 288) #6
  %and6 = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %cmp = icmp eq i32 %and6, 0
  br i1 %cmp, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sh, align 4
  %physhim = getelementptr inbounds %struct.shared_phy, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %physhim to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %physhim, align 4
  tail call void @wlapi_bmac_write_shm(ptr noundef %31, i32 noundef 184, i16 noundef zeroext 10000) #6
  %32 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sh, align 4
  %physhim10 = getelementptr inbounds %struct.shared_phy, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %physhim10 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %physhim10, align 4
  tail call void @wlapi_suspend_mac_and_wait(ptr noundef %35) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %36 = ptrtoint ptr %radio_chanspec to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %radio_chanspec, align 4
  %38 = and i16 %37, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 3072, i16 %38)
  %cmp.not.i = icmp eq i16 %38, 3072
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1200, i16 noundef zeroext 32, i16 noundef zeroext 32) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1201, i16 noundef zeroext 512, i16 noundef zeroext 0) #6
  br i1 %cmp.not.i, label %if.end.wlc_lcnphy_deaf_mode.exit_crit_edge, label %if.then.i

if.end.wlc_lcnphy_deaf_mode.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %wlc_lcnphy_deaf_mode.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1040, i16 noundef zeroext 96, i16 noundef zeroext 0) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1040, i16 noundef zeroext 128, i16 noundef zeroext 128) #6
  br label %wlc_lcnphy_deaf_mode.exit

wlc_lcnphy_deaf_mode.exit:                        ; preds = %if.then.i, %if.end.wlc_lcnphy_deaf_mode.exit_crit_edge
  tail call fastcc void @wlc_lcnphy_txpwrtbl_iqlo_cal(ptr noundef %pi)
  %phy_rev = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 7, i32 1
  %39 = ptrtoint ptr %phy_rev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %phy_rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %40)
  %cmp11 = icmp eq i32 %40, 1
  %. = select i1 %cmp11, i32 40, i32 127
  tail call fastcc void @wlc_lcnphy_rx_iq_cal(ptr noundef %pi, i32 noundef %.)
  %hwpwrctrl_capable = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 139
  %41 = ptrtoint ptr %hwpwrctrl_capable to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %hwpwrctrl_capable, align 4, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool17.not = icmp eq i8 %42, 0
  br i1 %tobool17.not, label %wlc_lcnphy_deaf_mode.exit.if.end34_crit_edge, label %if.then18

wlc_lcnphy_deaf_mode.exit.if.end34_crit_edge:     ; preds = %wlc_lcnphy_deaf_mode.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.then18:                                        ; preds = %wlc_lcnphy_deaf_mode.exit
  tail call fastcc void @wlc_lcnphy_idle_tssi_est(ptr noundef %pi)
  %txpa_2g = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 28
  %43 = ptrtoint ptr %txpa_2g to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %txpa_2g, align 4
  %conv19 = sext i16 %44 to i32
  %arrayidx21 = getelementptr %struct.brcms_phy, ptr %pi, i32 0, i32 28, i32 1
  %45 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %arrayidx21, align 2
  %conv22 = sext i16 %46 to i32
  %arrayidx24 = getelementptr %struct.brcms_phy, ptr %pi, i32 0, i32 28, i32 2
  %47 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %arrayidx24, align 4
  %conv25 = sext i16 %48 to i32
  %mul.i = mul nsw i32 %conv25, 125
  %add.i = add nsw i32 %mul.i, 32768
  %mul1.i = shl nsw i32 %conv19, 10
  %mul3.i = mul nsw i32 %conv22, 8000
  %add4.i = add nsw i32 %mul3.i, %mul1.i
  %mul5.i = shl nsw i32 %add4.i, 1
  %add6.i = add i32 %mul5.i, %add.i
  %mul7.i = shl nsw i32 %add.i, 1
  %div.i = sdiv i32 %add6.i, %mul7.i
  %49 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 7, ptr %2, align 4
  %50 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 32, ptr %4, align 4
  %51 = ptrtoint ptr %tab to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %pwr, ptr %tab, align 4
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 1, ptr %1, align 4
  %53 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %3, align 4
  %mul2.i = shl nsw i32 %conv22, 6
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then18
  %tssi.086 = phi i32 [ 0, %if.then18 ], [ %inc33, %for.body.for.body_crit_edge ]
  %mul.i72 = mul nsw i32 %tssi.086, %conv25
  %add.i73 = add nsw i32 %mul.i72, 32768
  %mul3.i75 = mul nsw i32 %mul2.i, %tssi.086
  %add4.i76 = add nsw i32 %mul3.i75, %mul1.i
  %mul5.i77 = shl i32 %add4.i76, 1
  %add6.i78 = add i32 %mul5.i77, %add.i73
  %mul7.i79 = shl i32 %add.i73, 1
  %div.i80 = sdiv i32 %add6.i78, %mul7.i79
  %54 = call i32 @llvm.smax.i32(i32 %div.i80, i32 %div.i)
  %55 = ptrtoint ptr %pwr to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %pwr, align 4
  call void @wlc_phy_write_table(ptr noundef %pi, ptr noundef nonnull %tab, i16 noundef zeroext 1109, i16 noundef zeroext 1111, i16 noundef zeroext 1110) #6
  %56 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %3, align 4
  %inc = add i32 %57, 1
  store i32 %inc, ptr %3, align 4
  %inc33 = add nuw nsw i32 %tssi.086, 1
  %exitcond.not = icmp eq i32 %inc33, 128
  br i1 %exitcond.not, label %for.body.if.end34_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.if.end34_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.end34:                                         ; preds = %for.body.if.end34_crit_edge, %wlc_lcnphy_deaf_mode.exit.if.end34_crit_edge
  %conv35 = sext i8 %19 to i32
  call void @wlc_lcnphy_set_tx_pwr_by_index(ptr noundef %pi, i32 noundef %conv35)
  call void @wlc_lcnphy_set_tx_pwr_ctrl(ptr noundef %pi, i16 noundef zeroext %0)
  %58 = ptrtoint ptr %radio_chanspec to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %radio_chanspec, align 4
  %60 = and i16 %59, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 3072, i16 %60)
  %cmp.not.i82 = icmp eq i16 %60, 3072
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1200, i16 noundef zeroext 32, i16 noundef zeroext 0) #6
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1201, i16 noundef zeroext 512, i16 noundef zeroext 0) #6
  br i1 %cmp.not.i82, label %if.end34.wlc_lcnphy_deaf_mode.exit85_crit_edge, label %if.then.i84

if.end34.wlc_lcnphy_deaf_mode.exit85_crit_edge:   ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %wlc_lcnphy_deaf_mode.exit85

if.then.i84:                                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  %61 = ptrtoint ptr %radio_chanspec to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %radio_chanspec, align 4
  %63 = and i16 %62, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %63)
  %cmp11.i83 = icmp eq i16 %63, 8192
  %or.i = select i1 %cmp11.i83, i16 96, i16 32
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1040, i16 noundef zeroext 96, i16 noundef zeroext %or.i) #6
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1040, i16 noundef zeroext 128, i16 noundef zeroext 0) #6
  br label %wlc_lcnphy_deaf_mode.exit85

wlc_lcnphy_deaf_mode.exit85:                      ; preds = %if.then.i84, %if.end34.wlc_lcnphy_deaf_mode.exit85_crit_edge
  br i1 %cmp, label %wlc_lcnphy_deaf_mode.exit85.if.end40_crit_edge, label %if.then37

wlc_lcnphy_deaf_mode.exit85.if.end40_crit_edge:   ; preds = %wlc_lcnphy_deaf_mode.exit85
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

if.then37:                                        ; preds = %wlc_lcnphy_deaf_mode.exit85
  call void @__sanitizer_cov_trace_pc() #8
  %64 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %sh, align 4
  %physhim39 = getelementptr inbounds %struct.shared_phy, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %physhim39 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %physhim39, align 4
  call void @wlapi_enable_mac(ptr noundef %67) #6
  br label %if.end40

if.end40:                                         ; preds = %if.then37, %wlc_lcnphy_deaf_mode.exit85.if.end40_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pwr) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tab) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wlc_2064_vco_cal(ptr noundef %pi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mod_radio_reg(ptr noundef %pi, i16 noundef zeroext 87, i16 noundef zeroext 8, i16 noundef zeroext 8) #6
  %call = tail call zeroext i16 @read_radio_reg(ptr noundef %pi, i16 noundef zeroext 86) #6
  %0 = trunc i16 %call to i8
  %conv2 = and i8 %0, -8
  %conv3 = zext i8 %conv2 to i16
  tail call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext 86, i16 noundef zeroext %conv3) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 214748) #6
  %.mask = and i16 %call, 248
  %2 = or i8 %conv2, 3
  %conv5 = zext i8 %2 to i16
  tail call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext 86, i16 noundef zeroext %conv5) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748) #6
  %4 = or i16 %.mask, 7
  tail call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext 86, i16 noundef zeroext %4) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 64424400) #6
  tail call void @mod_radio_reg(ptr noundef %pi, i16 noundef zeroext 87, i16 noundef zeroext 8, i16 noundef zeroext 0) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wlc_lcnphy_tx_power_adjustment(ptr noundef %ppi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.brcms_phy, ptr %ppi, i32 0, i32 3
  %0 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %u, align 4
  %call = tail call zeroext i16 @read_phy_reg(ptr noundef %ppi, i16 noundef zeroext 1188) #6
  %temppwrctrl_capable = getelementptr inbounds %struct.brcms_phy, ptr %ppi, i32 0, i32 140
  %2 = ptrtoint ptr %temppwrctrl_capable to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %temppwrctrl_capable, align 1, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %call)
  %tobool4.not = icmp ult i16 %call, 8192
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool4.not
  br i1 %or.cond, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call5 = tail call fastcc signext i8 @wlc_lcnphy_tempcompensated_txpwrctrl(ptr noundef %ppi)
  %conv6 = sext i8 %call5 to i16
  %mul = shl nsw i16 %conv6, 1
  tail call void @mod_phy_reg(ptr noundef %ppi, i16 noundef zeroext 1193, i16 noundef zeroext 511, i16 noundef zeroext %mul) #6
  %call10 = tail call zeroext i16 @read_phy_reg(ptr noundef %ppi, i16 noundef zeroext 1193) #6
  %4 = trunc i16 %call10 to i8
  %5 = lshr i8 %4, 1
  %lcnphy_current_index = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %1, i32 0, i32 77
  %6 = ptrtoint ptr %lcnphy_current_index to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %lcnphy_current_index, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wlc_lcnphy_get_tssi(ptr noundef %pi, ptr nocapture noundef %ofdm_pwr, ptr nocapture noundef writeonly %cck_pwr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1195) #6
  %hwpwrctrl_capable = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 139
  %0 = ptrtoint ptr %hwpwrctrl_capable to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %hwpwrctrl_capable, align 4, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call)
  %tobool1.not = icmp sgt i16 %call, -1
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool1.not
  br i1 %or.cond, label %if.else12, label %if.then

if.then:                                          ; preds = %entry
  %call2 = tail call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1195) #6
  %2 = lshr i16 %call2, 1
  %conv6 = trunc i16 %2 to i8
  %3 = ptrtoint ptr %ofdm_pwr to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv6, ptr %ofdm_pwr, align 1
  %temppwrctrl_capable.i = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 140
  %4 = ptrtoint ptr %temppwrctrl_capable.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %temppwrctrl_capable.i, align 1, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %wlc_phy_tpc_isenabled_lcnphy.exit, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

wlc_phy_tpc_isenabled_lcnphy.exit:                ; preds = %if.then
  %call.i = tail call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1188) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 -8193, i16 %call.i)
  %cmp.i = icmp ugt i16 %call.i, -8193
  br i1 %cmp.i, label %if.then8, label %wlc_phy_tpc_isenabled_lcnphy.exit.if.end_crit_edge

wlc_phy_tpc_isenabled_lcnphy.exit.if.end_crit_edge: ; preds = %wlc_phy_tpc_isenabled_lcnphy.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then8:                                         ; preds = %wlc_phy_tpc_isenabled_lcnphy.exit
  call void @__sanitizer_cov_trace_pc() #8
  %tx_power_offset = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 43
  %6 = ptrtoint ptr %tx_power_offset to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %tx_power_offset, align 1
  br label %if.end

if.end:                                           ; preds = %if.then8, %wlc_phy_tpc_isenabled_lcnphy.exit.if.end_crit_edge, %if.then.if.end_crit_edge
  %cck_offset.0 = phi i8 [ %7, %if.then8 ], [ 0, %wlc_phy_tpc_isenabled_lcnphy.exit.if.end_crit_edge ], [ 0, %if.then.if.end_crit_edge ]
  %8 = ptrtoint ptr %ofdm_pwr to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ofdm_pwr, align 1
  %add = add i8 %9, %cck_offset.0
  %10 = ptrtoint ptr %cck_pwr to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %add, ptr %cck_pwr, align 1
  br label %if.end13

if.else12:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %cck_pwr to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %cck_pwr, align 1
  %12 = ptrtoint ptr %ofdm_pwr to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %ofdm_pwr, align 1
  br label %if.end13

if.end13:                                         ; preds = %if.else12, %if.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @wlc_phy_tpc_isenabled_lcnphy(ptr noundef %pi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %temppwrctrl_capable = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 140
  %0 = ptrtoint ptr %temppwrctrl_capable to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %temppwrctrl_capable, align 1, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1188) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 -8193, i16 %call)
  %cmp = icmp ugt i16 %call, -8193
  br label %return

return:                                           ; preds = %if.else, %entry.return_crit_edge
  %retval.0 = phi i1 [ %cmp, %if.else ], [ false, %entry.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @wlc_phy_cal_init_lcnphy(ptr nocapture %pi) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wlc_phy_init_lcnphy(ptr noundef %pi) #0 align 64 {
entry:
  %tab.i62 = alloca %struct.phytbl_info, align 4
  %tableBuffer.i = alloca [2 x i32], align 4
  %data_buf.i.i = alloca [64 x i32], align 4
  %tab.i67.i = alloca %struct.phytbl_info, align 4
  %m0m1.i.i = alloca i16, align 2
  %tab.i.i54 = alloca %struct.phytbl_info, align 4
  %tx_gains.i = alloca %struct.lcnphy_txgains, align 2
  %tab.i = alloca %struct.phytbl_info, align 4
  %pwr.i = alloca i32, align 4
  %didq.addr.i.i.i = alloca i16, align 2
  %tab.i.i.i37 = alloca %struct.phytbl_info, align 4
  %tab.i26.i = alloca %struct.phytbl_info, align 4
  %val.i27.i = alloca i32, align 4
  %data_buf.i.i.i = alloca [64 x i32], align 4
  %tab.i.i18.i = alloca %struct.phytbl_info, align 4
  %tab.i112.i.i = alloca %struct.phytbl_info, align 4
  %temp_offset.i.i.i = alloca [128 x i32], align 4
  %tab.i.i.i = alloca %struct.phytbl_info, align 4
  %val.i.i.i = alloca i32, align 4
  %bbmult.i.i.i = alloca i32, align 4
  %rfgain.i.i.i = alloca i32, align 4
  %temp1.i.i.i = alloca i16, align 2
  %temp2.i.i.i = alloca i16, align 2
  %qQ1.i.i.i = alloca i16, align 2
  %qQ2.i.i.i = alloca i16, align 2
  %tab.i.i = alloca %struct.phytbl_info, align 4
  %val.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 3
  %0 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %u, align 4
  %lcnphy_cal_counter = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %lcnphy_cal_counter to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %lcnphy_cal_counter, align 1
  %lcnphy_rawtempsense = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %1, i32 0, i32 25
  %3 = ptrtoint ptr %lcnphy_rawtempsense to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %lcnphy_rawtempsense, align 2
  %lcnphy_cal_temper = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %lcnphy_cal_temper to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %lcnphy_cal_temper, align 2
  tail call void @or_phy_reg(ptr noundef %pi, i16 noundef zeroext 1098, i16 noundef zeroext 128) #6
  tail call void @and_phy_reg(ptr noundef %pi, i16 noundef zeroext 1098, i16 noundef zeroext 127) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1745, i16 noundef zeroext 128, i16 noundef zeroext 128) #6
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 1744, i16 noundef zeroext 7) #6
  %call.i.i = tail call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1084) #6
  %call1.i.i = tail call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1083) #6
  %or.i.i = or i16 %call.i.i, 1
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 1084, i16 noundef zeroext %or.i.i) #6
  %or4.i.i = or i16 %call1.i.i, 1
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 1083, i16 noundef zeroext %or4.i.i) #6
  %6 = and i16 %call.i.i, -2
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 1084, i16 noundef zeroext %6) #6
  %7 = and i16 %call1.i.i, -2
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 1083, i16 noundef zeroext %7) #6
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 1084, i16 noundef zeroext %call.i.i) #6
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 1083, i16 noundef zeroext %call1.i.i) #6
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 1546, i16 noundef zeroext 160) #6
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 1130, i16 noundef zeroext 25) #6
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tab.i.i) #6
  %8 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i.i, i32 0, i32 1
  %9 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i.i, i32 0, i32 2
  %10 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i.i, i32 0, i32 3
  %11 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i.i, i32 0, i32 4
  %12 = call ptr @memset(ptr %tab.i.i, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #6
  %13 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %val.i.i, align 4, !annotation !48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dot11lcnphytbl_info_sz_rev0 to i32))
  %14 = load i32, ptr @dot11lcnphytbl_info_sz_rev0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp113.not.i.i = icmp eq i32 %14, 0
  br i1 %cmp113.not.i.i, label %entry.for.end.i.i_crit_edge, label %entry.for.body.i.i_crit_edge

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

entry.for.end.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %idx.0114.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %entry.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [0 x %struct.phytbl_info], ptr @dot11lcnphytbl_info_rev0, i32 0, i32 %idx.0114.i.i
  tail call void @wlc_phy_write_table(ptr noundef %pi, ptr noundef %arrayidx.i.i, i16 noundef zeroext 1109, i16 noundef zeroext 1111, i16 noundef zeroext 1110) #6
  %inc.i.i = add nuw i32 %idx.0114.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %14
  br i1 %exitcond.not.i.i, label %for.body.i.i.for.end.i.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.body.i.i.for.end.i.i_crit_edge, %entry.for.end.i.i_crit_edge
  %sh.i.i = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 1
  %15 = ptrtoint ptr %sh.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sh.i.i, align 4
  %boardflags.i.i = getelementptr inbounds %struct.shared_phy, ptr %16, i32 0, i32 16
  %17 = ptrtoint ptr %boardflags.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %boardflags.i.i, align 4
  %and.i.i = and i32 %18, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %for.end.i.i.if.end.i.i_crit_edge, label %if.then.i.i

for.end.i.i.if.end.i.i_crit_edge:                 ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 8, ptr %9, align 4
  %20 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 16, ptr %11, align 4
  %21 = ptrtoint ptr %tab.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %val.i.i, ptr %tab.i.i, align 4
  %22 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %8, align 4
  %23 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 100, ptr %val.i.i, align 4
  %24 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 4, ptr %10, align 4
  call void @wlc_phy_write_table(ptr noundef %pi, ptr noundef nonnull %tab.i.i, i16 noundef zeroext 1109, i16 noundef zeroext 1111, i16 noundef zeroext 1110) #6
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %for.end.i.i.if.end.i.i_crit_edge
  %25 = ptrtoint ptr %sh.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sh.i.i, align 4
  %boardflags2.i.i = getelementptr inbounds %struct.shared_phy, ptr %26, i32 0, i32 16
  %27 = ptrtoint ptr %boardflags2.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %boardflags2.i.i, align 4
  %and3.i.i = and i32 %28, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool4.not.i.i = icmp eq i32 %and3.i.i, 0
  br i1 %tobool4.not.i.i, label %if.then5.i.i, label %if.end.i.i.if.end12.i.i_crit_edge

if.end.i.i.if.end12.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12.i.i

if.then5.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 8, ptr %9, align 4
  %30 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 16, ptr %11, align 4
  %31 = ptrtoint ptr %tab.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %val.i.i, ptr %tab.i.i, align 4
  %32 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %8, align 4
  %33 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 150, ptr %val.i.i, align 4
  %34 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %10, align 4
  call void @wlc_phy_write_table(ptr noundef %pi, ptr noundef nonnull %tab.i.i, i16 noundef zeroext 1109, i16 noundef zeroext 1111, i16 noundef zeroext 1110) #6
  %35 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 220, ptr %val.i.i, align 4
  %36 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %10, align 4
  call void @wlc_phy_write_table(ptr noundef %pi, ptr noundef nonnull %tab.i.i, i16 noundef zeroext 1109, i16 noundef zeroext 1111, i16 noundef zeroext 1110) #6
  br label %if.end12.i.i

if.end12.i.i:                                     ; preds = %if.then5.i.i, %if.end.i.i.if.end12.i.i_crit_edge
  %radio_chanspec.i.i = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 12
  %37 = ptrtoint ptr %radio_chanspec.i.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %radio_chanspec.i.i, align 4
  %39 = and i16 %38, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %39)
  %cmp14.i.i = icmp eq i16 %39, 8192
  br i1 %cmp14.i.i, label %if.then16.i.i, label %if.end12.i.i.if.end23.i.i_crit_edge

if.end12.i.i.if.end23.i.i_crit_edge:              ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23.i.i

if.then16.i.i:                                    ; preds = %if.end12.i.i
  %40 = ptrtoint ptr %sh.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sh.i.i, align 4
  %boardflags18.i.i = getelementptr inbounds %struct.shared_phy, ptr %41, i32 0, i32 16
  %42 = ptrtoint ptr %boardflags18.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %boardflags18.i.i, align 4
  %and19.i.i = and i32 %43, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i.i)
  %tobool20.not.i.i = icmp eq i32 %and19.i.i, 0
  %dot11lcnphy_2GHz_gaintable_rev0.dot11lcnphy_2GHz_extPA_gaintable_rev0.i.i = select i1 %tobool20.not.i.i, ptr @dot11lcnphy_2GHz_gaintable_rev0, ptr @dot11lcnphy_2GHz_extPA_gaintable_rev0
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tab.i26.i) #6
  %44 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i26.i, i32 0, i32 1
  %45 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i26.i, i32 0, i32 2
  %46 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i26.i, i32 0, i32 3
  %47 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i26.i, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i27.i) #6
  %..i.i = select i1 %tobool20.not.i.i, i32 1610612736, i32 268435456
  %48 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 7, ptr %45, align 4
  %49 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 32, ptr %47, align 4
  %50 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1, ptr %44, align 4
  %51 = ptrtoint ptr %tab.i26.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %val.i27.i, ptr %tab.i26.i, align 4
  br label %for.body.i35.i

for.body.i35.i:                                   ; preds = %if.end6.i.i.for.body.i35.i_crit_edge, %if.then16.i.i
  %gm_gain.042.i.i = phi i16 [ 15, %if.then16.i.i ], [ %gm_gain.1.i.i, %if.end6.i.i.for.body.i35.i_crit_edge ]
  %j.041.i.i = phi i32 [ 0, %if.then16.i.i ], [ %inc.i38.i, %if.end6.i.i.for.body.i35.i_crit_edge ]
  %52 = ptrtoint ptr %sh.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %sh.i.i, align 4
  %boardflags2.i32.i = getelementptr inbounds %struct.shared_phy, ptr %53, i32 0, i32 16
  %54 = ptrtoint ptr %boardflags2.i32.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %boardflags2.i32.i, align 4
  %and3.i33.i = and i32 %55, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i33.i)
  %tobool4.not.i34.i = icmp eq i32 %and3.i33.i, 0
  br i1 %tobool4.not.i34.i, label %for.body.i35.i.if.end6.i.i_crit_edge, label %if.then5.i37.i

for.body.i35.i.if.end6.i.i_crit_edge:             ; preds = %for.body.i35.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.i.i

if.then5.i37.i:                                   ; preds = %for.body.i35.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i36.i = getelementptr %struct.lcnphy_tx_gain_tbl_entry, ptr %dot11lcnphy_2GHz_gaintable_rev0.dot11lcnphy_2GHz_extPA_gaintable_rev0.i.i, i32 %j.041.i.i
  %56 = ptrtoint ptr %arrayidx.i36.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx.i36.i, align 1
  %conv.i.i = zext i8 %57 to i16
  br label %if.end6.i.i

if.end6.i.i:                                      ; preds = %if.then5.i37.i, %for.body.i35.i.if.end6.i.i_crit_edge
  %gm_gain.1.i.i = phi i16 [ %conv.i.i, %if.then5.i37.i ], [ %gm_gain.042.i.i, %for.body.i35.i.if.end6.i.i_crit_edge ]
  %pad.i.i = getelementptr %struct.lcnphy_tx_gain_tbl_entry, ptr %dot11lcnphy_2GHz_gaintable_rev0.dot11lcnphy_2GHz_extPA_gaintable_rev0.i.i, i32 %j.041.i.i, i32 2
  %58 = ptrtoint ptr %pad.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %pad.i.i, align 1
  %conv9.i.i = zext i8 %59 to i32
  %shl10.i.i = shl nuw nsw i32 %conv9.i.i, 16
  %or.i.i36 = or i32 %shl10.i.i, %..i.i
  %pga.i.i = getelementptr %struct.lcnphy_tx_gain_tbl_entry, ptr %dot11lcnphy_2GHz_gaintable_rev0.dot11lcnphy_2GHz_extPA_gaintable_rev0.i.i, i32 %j.041.i.i, i32 1
  %60 = ptrtoint ptr %pga.i.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %pga.i.i, align 1
  %conv12.i.i = zext i8 %61 to i32
  %shl13.i.i = shl nuw nsw i32 %conv12.i.i, 8
  %or14.i.i = or i32 %or.i.i36, %shl13.i.i
  %conv15.i.i = zext i16 %gm_gain.1.i.i to i32
  %or16.i.i = or i32 %or14.i.i, %conv15.i.i
  %62 = ptrtoint ptr %val.i27.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %or16.i.i, ptr %val.i27.i, align 4
  %add.i.i = add nuw nsw i32 %j.041.i.i, 192
  %63 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %add.i.i, ptr %46, align 4
  call void @wlc_phy_write_table(ptr noundef %pi, ptr noundef nonnull %tab.i26.i, i16 noundef zeroext 1109, i16 noundef zeroext 1111, i16 noundef zeroext 1110) #6
  %dac.i.i = getelementptr %struct.lcnphy_tx_gain_tbl_entry, ptr %dot11lcnphy_2GHz_gaintable_rev0.dot11lcnphy_2GHz_extPA_gaintable_rev0.i.i, i32 %j.041.i.i, i32 3
  %64 = ptrtoint ptr %dac.i.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %dac.i.i, align 1
  %conv18.i.i = zext i8 %65 to i32
  %shl19.i.i = shl i32 %conv18.i.i, 28
  %bb_mult.i.i = getelementptr %struct.lcnphy_tx_gain_tbl_entry, ptr %dot11lcnphy_2GHz_gaintable_rev0.dot11lcnphy_2GHz_extPA_gaintable_rev0.i.i, i32 %j.041.i.i, i32 4
  %66 = ptrtoint ptr %bb_mult.i.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %bb_mult.i.i, align 1
  %conv21.i.i = zext i8 %67 to i32
  %shl22.i.i = shl nuw nsw i32 %conv21.i.i, 20
  %or23.i.i = or i32 %shl22.i.i, %shl19.i.i
  %68 = ptrtoint ptr %val.i27.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %or23.i.i, ptr %val.i27.i, align 4
  %add24.i.i = add nuw nsw i32 %j.041.i.i, 320
  %69 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %add24.i.i, ptr %46, align 4
  call void @wlc_phy_write_table(ptr noundef %pi, ptr noundef nonnull %tab.i26.i, i16 noundef zeroext 1109, i16 noundef zeroext 1111, i16 noundef zeroext 1110) #6
  %inc.i38.i = add nuw nsw i32 %j.041.i.i, 1
  %exitcond.not.i39.i = icmp eq i32 %inc.i38.i, 128
  br i1 %exitcond.not.i39.i, label %wlc_lcnphy_load_tx_gain_table.exit.i, label %if.end6.i.i.for.body.i35.i_crit_edge

if.end6.i.i.for.body.i35.i_crit_edge:             ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i35.i

wlc_lcnphy_load_tx_gain_table.exit.i:             ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i27.i) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tab.i26.i) #6
  br label %if.end23.i.i

if.end23.i.i:                                     ; preds = %wlc_lcnphy_load_tx_gain_table.exit.i, %if.end12.i.i.if.end23.i.i_crit_edge
  %phy_rev.i.i = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 7, i32 1
  %70 = ptrtoint ptr %phy_rev.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %phy_rev.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %71)
  %cmp24.i.i = icmp eq i32 %71, 2
  br i1 %cmp24.i.i, label %if.then26.i.i, label %if.end23.i.i.if.end57.i.i_crit_edge

if.end23.i.i.if.end57.i.i_crit_edge:              ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57.i.i

if.then26.i.i:                                    ; preds = %if.end23.i.i
  %72 = ptrtoint ptr %radio_chanspec.i.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %radio_chanspec.i.i, align 4
  %74 = and i16 %73, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %74)
  %cmp30.i.i = icmp eq i16 %74, 8192
  %75 = ptrtoint ptr %sh.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %sh.i.i, align 4
  %boardflags34.i.i = getelementptr inbounds %struct.shared_phy, ptr %76, i32 0, i32 16
  %77 = ptrtoint ptr %boardflags34.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %boardflags34.i.i, align 4
  br i1 %cmp30.i.i, label %if.then32.i.i, label %if.else40.i.i

if.then32.i.i:                                    ; preds = %if.then26.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %and35.i.i = and i32 %78, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i.i)
  %tobool36.not.i.i = icmp eq i32 %and35.i.i, 0
  %dot11lcnphytbl_rx_gain_info_2G_rev2.dot11lcnphytbl_rx_gain_info_extlna_2G_rev2.i.i = select i1 %tobool36.not.i.i, ptr @dot11lcnphytbl_rx_gain_info_2G_rev2, ptr @dot11lcnphytbl_rx_gain_info_extlna_2G_rev2
  br label %if.end48.i.i

if.else40.i.i:                                    ; preds = %if.then26.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %and43.i.i = and i32 %78, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.i.i)
  %tobool44.not.i.i = icmp eq i32 %and43.i.i, 0
  %dot11lcnphytbl_rx_gain_info_5G_rev2.dot11lcnphytbl_rx_gain_info_extlna_5G_rev2.i.i = select i1 %tobool44.not.i.i, ptr @dot11lcnphytbl_rx_gain_info_5G_rev2, ptr @dot11lcnphytbl_rx_gain_info_extlna_5G_rev2
  br label %if.end48.i.i

if.end48.i.i:                                     ; preds = %if.else40.i.i, %if.then32.i.i
  %tb.0.i.i = phi ptr [ %dot11lcnphytbl_rx_gain_info_2G_rev2.dot11lcnphytbl_rx_gain_info_extlna_2G_rev2.i.i, %if.then32.i.i ], [ %dot11lcnphytbl_rx_gain_info_5G_rev2.dot11lcnphytbl_rx_gain_info_extlna_5G_rev2.i.i, %if.else40.i.i ]
  %l.0.in.i.i = phi ptr [ @dot11lcnphytbl_rx_gain_info_2G_rev2_sz, %if.then32.i.i ], [ @dot11lcnphytbl_rx_gain_info_5G_rev2_sz, %if.else40.i.i ]
  %79 = ptrtoint ptr %l.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %l.0.i.i = load i32, ptr %l.0.in.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %l.0.i.i)
  %cmp50115.not.i.i = icmp eq i32 %l.0.i.i, 0
  br i1 %cmp50115.not.i.i, label %if.end48.i.i.if.end57.i.i_crit_edge, label %if.end48.i.i.for.body52.i.i_crit_edge

if.end48.i.i.for.body52.i.i_crit_edge:            ; preds = %if.end48.i.i
  br label %for.body52.i.i

if.end48.i.i.if.end57.i.i_crit_edge:              ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57.i.i

for.body52.i.i:                                   ; preds = %for.body52.i.i.for.body52.i.i_crit_edge, %if.end48.i.i.for.body52.i.i_crit_edge
  %idx.1116.i.i = phi i32 [ %inc55.i.i, %for.body52.i.i.for.body52.i.i_crit_edge ], [ 0, %if.end48.i.i.for.body52.i.i_crit_edge ]
  %arrayidx53.i.i = getelementptr %struct.phytbl_info, ptr %tb.0.i.i, i32 %idx.1116.i.i
  call void @wlc_phy_write_table(ptr noundef %pi, ptr noundef %arrayidx53.i.i, i16 noundef zeroext 1109, i16 noundef zeroext 1111, i16 noundef zeroext 1110) #6
  %inc55.i.i = add nuw i32 %idx.1116.i.i, 1
  %exitcond117.not.i.i = icmp eq i32 %inc55.i.i, %l.0.i.i
  br i1 %exitcond117.not.i.i, label %for.body52.i.i.if.end57.i.i_crit_edge, label %for.body52.i.i.for.body52.i.i_crit_edge

for.body52.i.i.for.body52.i.i_crit_edge:          ; preds = %for.body52.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body52.i.i

for.body52.i.i.if.end57.i.i_crit_edge:            ; preds = %for.body52.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57.i.i

if.end57.i.i:                                     ; preds = %for.body52.i.i.if.end57.i.i_crit_edge, %if.end48.i.i.if.end57.i.i_crit_edge, %if.end23.i.i.if.end57.i.i_crit_edge
  %80 = ptrtoint ptr %sh.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %sh.i.i, align 4
  %boardflags59.i.i = getelementptr inbounds %struct.shared_phy, ptr %81, i32 0, i32 16
  %82 = ptrtoint ptr %boardflags59.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %boardflags59.i.i, align 4
  %and60.i.i = and i32 %83, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60.i.i)
  %tobool61.not.i.i = icmp eq i32 %and60.i.i, 0
  %and79.i.i = and i32 %83, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79.i.i)
  %tobool80.not.i.i = icmp eq i32 %and79.i.i, 0
  br i1 %tobool61.not.i.i, label %if.else76.i.i, label %if.then62.i.i

if.then62.i.i:                                    ; preds = %if.end57.i.i
  br i1 %tobool80.not.i.i, label %if.then62.i.i.if.end84.i.i_crit_edge, label %if.then67.i.i

if.then62.i.i.if.end84.i.i_crit_edge:             ; preds = %if.then62.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end84.i.i

if.then67.i.i:                                    ; preds = %if.then62.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %boardrev.i.i = getelementptr inbounds %struct.shared_phy, ptr %81, i32 0, i32 15
  %84 = ptrtoint ptr %boardrev.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %boardrev.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4688, i32 %85)
  %cmp69.i.i = icmp ult i32 %85, 4688
  %dot11lcn_sw_ctrl_tbl_info_4313_bt_epa.dot11lcn_sw_ctrl_tbl_info_4313_bt_epa_p250.i.i = select i1 %cmp69.i.i, ptr @dot11lcn_sw_ctrl_tbl_info_4313_bt_epa, ptr @dot11lcn_sw_ctrl_tbl_info_4313_bt_epa_p250
  br label %if.end84.i.i

if.else76.i.i:                                    ; preds = %if.end57.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %dot11lcn_sw_ctrl_tbl_info_4313.dot11lcn_sw_ctrl_tbl_info_4313_bt_ipa.i.i = select i1 %tobool80.not.i.i, ptr @dot11lcn_sw_ctrl_tbl_info_4313, ptr @dot11lcn_sw_ctrl_tbl_info_4313_bt_ipa
  br label %if.end84.i.i

if.end84.i.i:                                     ; preds = %if.else76.i.i, %if.then67.i.i, %if.then62.i.i.if.end84.i.i_crit_edge
  %tb.1.i.i = phi ptr [ %dot11lcn_sw_ctrl_tbl_info_4313_bt_epa.dot11lcn_sw_ctrl_tbl_info_4313_bt_epa_p250.i.i, %if.then67.i.i ], [ @dot11lcn_sw_ctrl_tbl_info_4313_epa, %if.then62.i.i.if.end84.i.i_crit_edge ], [ %dot11lcn_sw_ctrl_tbl_info_4313.dot11lcn_sw_ctrl_tbl_info_4313_bt_ipa.i.i, %if.else76.i.i ]
  call void @wlc_phy_write_table(ptr noundef %pi, ptr noundef nonnull %tb.1.i.i, i16 noundef zeroext 1109, i16 noundef zeroext 1111, i16 noundef zeroext 1110) #6
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tab.i.i.i) #6
  %86 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i.i.i, i32 0, i32 1
  %87 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i.i.i, i32 0, i32 2
  %88 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i.i.i, i32 0, i32 3
  %89 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i.i.i, i32 0, i32 4
  %90 = call ptr @memset(ptr %tab.i.i.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i.i) #6
  %91 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 -1, ptr %val.i.i.i, align 4, !annotation !48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bbmult.i.i.i) #6
  %92 = ptrtoint ptr %bbmult.i.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 -1, ptr %bbmult.i.i.i, align 4, !annotation !48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rfgain.i.i.i) #6
  %93 = ptrtoint ptr %rfgain.i.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 -1, ptr %rfgain.i.i.i, align 4, !annotation !48
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %temp1.i.i.i) #6
  %94 = ptrtoint ptr %temp1.i.i.i to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 -1, ptr %temp1.i.i.i, align 2, !annotation !48
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %temp2.i.i.i) #6
  %95 = ptrtoint ptr %temp2.i.i.i to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 -1, ptr %temp2.i.i.i, align 2, !annotation !48
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %qQ1.i.i.i) #6
  %96 = ptrtoint ptr %qQ1.i.i.i to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 -1, ptr %qQ1.i.i.i, align 2, !annotation !48
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %qQ2.i.i.i) #6
  %97 = ptrtoint ptr %qQ2.i.i.i to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 -1, ptr %qQ2.i.i.i, align 2, !annotation !48
  %98 = ptrtoint ptr %87 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 7, ptr %87, align 4
  %99 = ptrtoint ptr %89 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 32, ptr %89, align 4
  %100 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 1, ptr %86, align 4
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %if.end.i.i.i.for.body.i.i.i_crit_edge, %if.end84.i.i
  %indvars.iv.i.i.i = phi i32 [ 0, %if.end84.i.i ], [ %indvars.iv.next.i.i.i, %if.end.i.i.i.for.body.i.i.i_crit_edge ]
  %101 = ptrtoint ptr %tab.i.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %bbmult.i.i.i, ptr %tab.i.i.i, align 4
  %add.i.i.i = add nuw nsw i32 %indvars.iv.i.i.i, 320
  %102 = ptrtoint ptr %88 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %add.i.i.i, ptr %88, align 4
  call void @wlc_phy_read_table(ptr noundef %pi, ptr noundef nonnull %tab.i.i.i, i16 noundef zeroext 1109, i16 noundef zeroext 1111, i16 noundef zeroext 1110) #6
  %103 = ptrtoint ptr %bbmult.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %bbmult.i.i.i, align 4
  %shr.i.i.i = lshr i32 %104, 20
  store i32 %shr.i.i.i, ptr %bbmult.i.i.i, align 4
  %105 = ptrtoint ptr %tab.i.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %rfgain.i.i.i, ptr %tab.i.i.i, align 4
  %add5.i.i.i = add nuw nsw i32 %indvars.iv.i.i.i, 192
  %106 = ptrtoint ptr %88 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %add5.i.i.i, ptr %88, align 4
  call void @wlc_phy_read_table(ptr noundef %pi, ptr noundef nonnull %tab.i.i.i, i16 noundef zeroext 1109, i16 noundef zeroext 1111, i16 noundef zeroext 1110) #6
  %107 = ptrtoint ptr %bbmult.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %bbmult.i.i.i, align 4
  call void @qm_log10(i32 noundef %108, i16 noundef signext 0, ptr noundef nonnull %temp1.i.i.i, ptr noundef nonnull %qQ1.i.i.i) #6
  call void @qm_log10(i32 noundef 64, i16 noundef signext 0, ptr noundef nonnull %temp2.i.i.i, ptr noundef nonnull %qQ2.i.i.i) #6
  %109 = ptrtoint ptr %qQ1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %qQ1.i.i.i, align 2
  %conv7.i.i.i = sext i16 %110 to i32
  %111 = ptrtoint ptr %qQ2.i.i.i to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %qQ2.i.i.i, align 2
  %conv8.i.i.i = sext i16 %112 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %110, i16 %112)
  %cmp9.i.i.i = icmp slt i16 %110, %112
  br i1 %cmp9.i.i.i, label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %113 = ptrtoint ptr %temp2.i.i.i to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %temp2.i.i.i, align 2
  %sub.i.i.i = sub nsw i32 %conv8.i.i.i, %conv7.i.i.i
  %call.i.i.i = call signext i16 @qm_shr16(i16 noundef signext %114, i32 noundef %sub.i.i.i) #6
  %115 = ptrtoint ptr %temp2.i.i.i to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 %call.i.i.i, ptr %temp2.i.i.i, align 2
  br label %if.end.i.i.i

if.else.i.i.i:                                    ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %116 = ptrtoint ptr %temp1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %temp1.i.i.i, align 2
  %sub15.i.i.i = sub nsw i32 %conv7.i.i.i, %conv8.i.i.i
  %call16.i.i.i = call signext i16 @qm_shr16(i16 noundef signext %117, i32 noundef %sub15.i.i.i) #6
  %118 = ptrtoint ptr %temp1.i.i.i to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 %call16.i.i.i, ptr %temp1.i.i.i, align 2
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.else.i.i.i, %if.then.i.i.i
  %qQ.0.in.i.i.i = phi ptr [ %qQ1.i.i.i, %if.then.i.i.i ], [ %qQ2.i.i.i, %if.else.i.i.i ]
  %119 = ptrtoint ptr %qQ.0.in.i.i.i to i32
  call void @__asan_load2_noabort(i32 %119)
  %qQ.0.i.i.i = load i16, ptr %qQ.0.in.i.i.i, align 2
  %120 = ptrtoint ptr %temp1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %temp1.i.i.i, align 2
  %122 = ptrtoint ptr %temp2.i.i.i to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %temp2.i.i.i, align 2
  %call17.i.i.i = call signext i16 @qm_sub16(i16 noundef signext %121, i16 noundef signext %123) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %qQ.0.i.i.i)
  %cmp19.i.i.i = icmp sgt i16 %qQ.0.i.i.i, 3
  %sub23.i.i.i = add i16 %qQ.0.i.i.i, -4
  %sub27.i.i.i = sub i16 4, %qQ.0.i.i.i
  %shift.0.i.i.i = select i1 %cmp19.i.i.i, i16 %sub23.i.i.i, i16 %sub27.i.i.i
  %conv31.i.i.i = sext i16 %shift.0.i.i.i to i32
  %shl.i.i.i = shl i32 %indvars.iv.i.i.i, %conv31.i.i.i
  %conv32.i.i.i = sext i16 %call17.i.i.i to i32
  %mul.i.i.i = mul nsw i32 %conv32.i.i.i, 5
  %add33.i.i.i = add i32 %mul.i.i.i, %shl.i.i.i
  %sub37.i.i.i = add nsw i32 %conv31.i.i.i, -2
  %shl38.i.i.i = shl nuw i32 1, %sub37.i.i.i
  %add39.i.i.i = add i32 %add33.i.i.i, %shl38.i.i.i
  %sub43.i.i.i = add nsw i32 %conv31.i.i.i, -1
  %shr44.i.i.i = ashr i32 %add39.i.i.i, %sub43.i.i.i
  %124 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %shr44.i.i.i, ptr %val.i.i.i, align 4
  %125 = ptrtoint ptr %tab.i.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %val.i.i.i, ptr %tab.i.i.i, align 4
  %add47.i.i.i = add nuw nsw i32 %indvars.iv.i.i.i, 576
  %126 = ptrtoint ptr %88 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %add47.i.i.i, ptr %88, align 4
  call void @wlc_phy_write_table(ptr noundef %pi, ptr noundef nonnull %tab.i.i.i, i16 noundef zeroext 1109, i16 noundef zeroext 1111, i16 noundef zeroext 1110) #6
  %indvars.iv.next.i.i.i = add nuw nsw i32 %indvars.iv.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %indvars.iv.next.i.i.i, 128
  br i1 %exitcond.not.i.i.i, label %wlc_lcnphy_tbl_init.exit.i, label %if.end.i.i.i.for.body.i.i.i_crit_edge

if.end.i.i.i.for.body.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i.i

wlc_lcnphy_tbl_init.exit.i:                       ; preds = %if.end.i.i.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %qQ2.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %qQ1.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %temp2.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %temp1.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rfgain.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bbmult.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tab.i.i.i) #6
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tab.i112.i.i) #6
  %127 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i112.i.i, i32 0, i32 1
  %128 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i112.i.i, i32 0, i32 2
  %129 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i112.i.i, i32 0, i32 3
  %130 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i112.i.i, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %temp_offset.i.i.i) #6
  %131 = ptrtoint ptr %tab.i112.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %temp_offset.i.i.i, ptr %tab.i112.i.i, align 4
  %132 = ptrtoint ptr %127 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 128, ptr %127, align 4
  %133 = ptrtoint ptr %128 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 24, ptr %128, align 4
  %134 = ptrtoint ptr %130 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 32, ptr %130, align 4
  %135 = ptrtoint ptr %129 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 0, ptr %129, align 4
  %136 = call ptr @memset(ptr %temp_offset.i.i.i, i32 0, i32 508)
  %arrayidx.i.i.i = getelementptr inbounds [128 x i32], ptr %temp_offset.i.i.i, i32 0, i32 1
  %137 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 524288, ptr %arrayidx.i.i.i, align 4
  %arrayidx.1.i.i.i = getelementptr inbounds [128 x i32], ptr %temp_offset.i.i.i, i32 0, i32 3
  %138 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 524288, ptr %arrayidx.1.i.i.i, align 4
  %arrayidx.2.i.i.i = getelementptr inbounds [128 x i32], ptr %temp_offset.i.i.i, i32 0, i32 5
  %139 = ptrtoint ptr %arrayidx.2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 524288, ptr %arrayidx.2.i.i.i, align 4
  %arrayidx.3.i.i.i = getelementptr inbounds [128 x i32], ptr %temp_offset.i.i.i, i32 0, i32 7
  %140 = ptrtoint ptr %arrayidx.3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 524288, ptr %arrayidx.3.i.i.i, align 4
  %arrayidx.4.i.i.i = getelementptr inbounds [128 x i32], ptr %temp_offset.i.i.i, i32 0, i32 9
  %141 = ptrtoint ptr %arrayidx.4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 524288, ptr %arrayidx.4.i.i.i, align 4
  %arrayidx.5.i.i.i = getelementptr inbounds [128 x i32], ptr %temp_offset.i.i.i, i32 0, i32 11
  %142 = ptrtoint ptr %arrayidx.5.i.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 524288, ptr %arrayidx.5.i.i.i, align 4
  %arrayidx.6.i.i.i = getelementptr inbounds [128 x i32], ptr %temp_offset.i.i.i, i32 0, i32 13
  %143 = ptrtoint ptr %arrayidx.6.i.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 524288, ptr %arrayidx.6.i.i.i, align 4
  %arrayidx.7.i.i.i = getelementptr inbounds [128 x i32], ptr %temp_offset.i.i.i, i32 0, i32 15
  %144 = ptrtoint ptr %arrayidx.7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 524288, ptr %arrayidx.7.i.i.i, align 4
  %arrayidx.8.i.i.i = getelementptr inbounds [128 x i32], ptr %temp_offset.i.i.i, i32 0, i32 17
  %145 = ptrtoint ptr %arrayidx.8.i.i.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 524288, ptr %arrayidx.8.i.i.i, align 4
  %arrayidx.9.i.i.i = getelementptr inbounds [128 x i32], ptr %temp_offset.i.i.i, i32 0, i32 19
  %146 = ptrtoint ptr %arrayidx.9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 524288, ptr %arrayidx.9.i.i.i, align 4
  %arrayidx.10.i.i.i = getelementptr inbounds [128 x i32], ptr %temp_offset.i.i.i, i32 0, i32 21
  %147 = ptrtoint ptr %arrayidx.10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 524288, ptr %arrayidx.10.i.i.i, align 4
  %arrayidx.11.i.i.i = getelementptr inbounds [128 x i32], ptr %temp_offset.i.i.i, i32 0, i32 23
  %148 = ptrtoint ptr %arrayidx.11.i.i.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 524288, ptr %arrayidx.11.i.i.i, align 4
  %arrayidx.12.i.i.i = getelementptr inbounds [128 x i32], ptr %temp_offset.i.i.i, i32 0, i32 25
  %149 = ptrtoint ptr %arrayidx.12.i.i.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 524288, ptr %arrayidx.12.i.i.i, align 4
  %arrayidx.13.i.i.i = getelementptr inbounds [128 x i32], ptr %temp_offset.i.i.i, i32 0, i32 27
  %150 = ptrtoint ptr %arrayidx.13.i.i.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 524288, ptr %arrayidx.13.i.i.i, align 4
  %arrayidx.14.i.i.i = getelementptr inbounds [128 x i32], ptr %temp_offset.i.i.i, i32 0, i32 29
  %151 = ptrtoint ptr %arrayidx.14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 524288, ptr %arrayidx.14.i.i.i, align 4
  %arrayidx.15.i.i.i = getelementptr inbounds [128 x i32], ptr %temp_offset.i.i.i, i32 0, i32 31
  %152 = ptrtoint ptr %arrayidx.15.i.i.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 524288, ptr %arrayidx.15.i.i.i, align 4
  %arrayidx.16.i.i.i = getelementptr inbounds [128 x i32], ptr %temp_offset.i.i.i, i32 0, i32 33
  %153 = ptrtoint ptr %arrayidx.16.i.i.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 524288, ptr %arrayidx.16.i.i.i, align 4
  %arrayidx.17.i.i.i = getelementptr inbounds [128 x i32], ptr %temp_offset.i.i.i, i32 0, i32 35
  %154 = ptrtoint ptr %arrayidx.17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 524288, ptr %arrayidx.17.i.i.i, align 4
  %arrayidx.18.i.i.i = getelementptr inbounds [128 x i32], ptr %temp_offset.i.i.i, i32 0, i32 37
  %155 = ptrtoint ptr %arrayidx.18.i.i.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 524288, ptr %arrayidx.18.i.i.i, align 4
  %arrayidx.19.i.i.i = getelementptr inbounds [128 x i32], ptr %temp_offset.i.i.i, i32 0, i32 39
  %156 = ptrtoint ptr %arrayidx.19.i.i.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 524288, ptr %arrayidx.19.i.i.i, align 4
  %arrayidx.20.i.i.i = getelementptr inbounds [128 x i32], ptr %temp_offset.i.i.i, i32 0, i32 41
  %157 = ptrtoint ptr %arrayidx.20.i.i.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 524288, ptr %arrayidx.20.i.i.i, align 4
  %arrayidx.21.i.i.i = getelementptr inbounds [128 x i32], ptr %temp_offset.i.i.i, i32 0, i32 43
  %158 = ptrtoint ptr %arrayidx.21.i.i.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 524288, ptr %arrayidx.21.i.i.i, align 4
  %arrayidx.22.i.i.i = getelementptr inbounds [128 x i32], ptr %temp_offset.i.i.i, i32 0, i32 45
  %159 = ptrtoint ptr %arrayidx.22.i.i.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 524288, ptr %arrayidx.22.i.i.i, align 4
  %arrayidx.23.i.i.i = getelementptr inbounds [128 x i32], ptr %temp_offset.i.i.i, i32 0, i32 47
  %160 = ptrtoint ptr %arrayidx.23.i.i.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 524288, ptr %arrayidx.23.i.i.i, align 4
  %arrayidx.24.i.i.i = getelementptr inbounds [128 x i32], ptr %temp_offset.i.i.i, i32 0, i32 49
  %161 = ptrtoint ptr %arrayidx.24.i.i.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 524288, ptr %arrayidx.24.i.i.i, align 4
  %arrayidx.25.i.i.i = getelementptr inbounds [128 x i32], ptr %temp_offset.i.i.i, i32 0, i32 51
  %162 = ptrtoint ptr %arrayidx.25.i.i.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 524288, ptr %arrayidx.25.i.i.i, align 4
  %arrayidx.26.i.i.i = getelementptr inbounds [128 x i32], ptr %temp_offset.i.i.i, i32 0, i32 53
  %163 = ptrtoint ptr %arrayidx.26.i.i.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 524288, ptr %arrayidx.26.i.i.i, align 4
  %arrayidx.27.i.i.i = getelementptr inbounds [128 x i32], ptr %temp_offset.i.i.i, i32 0, i32 55
  %164 = ptrtoint ptr %arrayidx.27.i.i.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 524288, ptr %arrayidx.27.i.i.i, align 4
  %arrayidx.28.i.i.i = getelementptr inbounds [128 x i32], ptr %temp_offset.i.i.i, i32 0, i32 57
  %165 = ptrtoint ptr %arrayidx.28.i.i.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 524288, ptr %arrayidx.28.i.i.i, align 4
  %arrayidx.29.i.i.i = getelementptr inbounds [128 x i32], ptr %temp_offset.i.i.i, i32 0, i32 59
  %166 = ptrtoint ptr %arrayidx.29.i.i.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 524288, ptr %arrayidx.29.i.i.i, align 4
  %arrayidx.30.i.i.i = getelementptr inbounds [128 x i32], ptr %temp_offset.i.i.i, i32 0, i32 61
  %167 = ptrtoint ptr %arrayidx.30.i.i.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 524288, ptr %arrayidx.30.i.i.i, align 4
  %arrayidx.31.i.i.i = getelementptr inbounds [128 x i32], ptr %temp_offset.i.i.i, i32 0, i32 63
  %168 = ptrtoint ptr %arrayidx.31.i.i.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 524288, ptr %arrayidx.31.i.i.i, align 4
  %arrayidx.32.i.i.i = getelementptr inbounds [128 x i32], ptr %temp_offset.i.i.i, i32 0, i32 65
  %169 = ptrtoint ptr %arrayidx.32.i.i.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 524288, ptr %arrayidx.32.i.i.i, align 4
  %arrayidx.33.i.i.i = getelementptr inbounds [128 x i32], ptr %temp_offset.i.i.i, i32 0, i32 67
  %170 = ptrtoint ptr %arrayidx.33.i.i.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 524288, ptr %arrayidx.33.i.i.i, align 4
  %arrayidx.34.i.i.i = getelementptr inbounds [128 x i32], ptr %temp_offset.i.i.i, i32 0, i32 69
  %171 = ptrtoint ptr %arrayidx.34.i.i.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 524288, ptr %arrayidx.34.i.i.i, align 4
  %arrayidx.35.i.i.i = getelementptr inbounds [128 x i32], ptr %temp_offset.i.i.i, i32 0, i32 71
  %172 = ptrtoint ptr %arrayidx.35.i.i.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 524288, ptr %arrayidx.35.i.i.i, align 4
  %arrayidx.36.i.i.i = getelementptr inbounds [128 x i32], ptr %temp_offset.i.i.i, i32 0, i32 73
  %173 = ptrtoint ptr %arrayidx.36.i.i.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 524288, ptr %arrayidx.36.i.i.i, align 4
  %arrayidx.37.i.i.i = getelementptr inbounds [128 x i32], ptr %temp_offset.i.i.i, i32 0, i32 75
  %174 = ptrtoint ptr %arrayidx.37.i.i.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 524288, ptr %arrayidx.37.i.i.i, align 4
  %arrayidx.38.i.i.i = getelementptr inbounds [128 x i32], ptr %temp_offset.i.i.i, i32 0, i32 77
  %175 = ptrtoint ptr %arrayidx.38.i.i.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 524288, ptr %arrayidx.38.i.i.i, align 4
  %arrayidx.39.i.i.i = getelementptr inbounds [128 x i32], ptr %temp_offset.i.i.i, i32 0, i32 79
  %176 = ptrtoint ptr %arrayidx.39.i.i.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 524288, ptr %arrayidx.39.i.i.i, align 4
  %arrayidx.40.i.i.i = getelementptr inbounds [128 x i32], ptr %temp_offset.i.i.i, i32 0, i32 81
  %177 = ptrtoint ptr %arrayidx.40.i.i.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 524288, ptr %arrayidx.40.i.i.i, align 4
  %arrayidx.41.i.i.i = getelementptr inbounds [128 x i32], ptr %temp_offset.i.i.i, i32 0, i32 83
  %178 = ptrtoint ptr %arrayidx.41.i.i.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 524288, ptr %arrayidx.41.i.i.i, align 4
  %arrayidx.42.i.i.i = getelementptr inbounds [128 x i32], ptr %temp_offset.i.i.i, i32 0, i32 85
  %179 = ptrtoint ptr %arrayidx.42.i.i.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 524288, ptr %arrayidx.42.i.i.i, align 4
  %arrayidx.43.i.i.i = getelementptr inbounds [128 x i32], ptr %temp_offset.i.i.i, i32 0, i32 87
  %180 = ptrtoint ptr %arrayidx.43.i.i.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 524288, ptr %arrayidx.43.i.i.i, align 4
  %arrayidx.44.i.i.i = getelementptr inbounds [128 x i32], ptr %temp_offset.i.i.i, i32 0, i32 89
  %181 = ptrtoint ptr %arrayidx.44.i.i.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 524288, ptr %arrayidx.44.i.i.i, align 4
  %arrayidx.45.i.i.i = getelementptr inbounds [128 x i32], ptr %temp_offset.i.i.i, i32 0, i32 91
  %182 = ptrtoint ptr %arrayidx.45.i.i.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 524288, ptr %arrayidx.45.i.i.i, align 4
  %arrayidx.46.i.i.i = getelementptr inbounds [128 x i32], ptr %temp_offset.i.i.i, i32 0, i32 93
  %183 = ptrtoint ptr %arrayidx.46.i.i.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 524288, ptr %arrayidx.46.i.i.i, align 4
  %arrayidx.47.i.i.i = getelementptr inbounds [128 x i32], ptr %temp_offset.i.i.i, i32 0, i32 95
  %184 = ptrtoint ptr %arrayidx.47.i.i.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 524288, ptr %arrayidx.47.i.i.i, align 4
  %arrayidx.48.i.i.i = getelementptr inbounds [128 x i32], ptr %temp_offset.i.i.i, i32 0, i32 97
  %185 = ptrtoint ptr %arrayidx.48.i.i.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 524288, ptr %arrayidx.48.i.i.i, align 4
  %arrayidx.49.i.i.i = getelementptr inbounds [128 x i32], ptr %temp_offset.i.i.i, i32 0, i32 99
  %186 = ptrtoint ptr %arrayidx.49.i.i.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 524288, ptr %arrayidx.49.i.i.i, align 4
  %arrayidx.50.i.i.i = getelementptr inbounds [128 x i32], ptr %temp_offset.i.i.i, i32 0, i32 101
  %187 = ptrtoint ptr %arrayidx.50.i.i.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 524288, ptr %arrayidx.50.i.i.i, align 4
  %arrayidx.51.i.i.i = getelementptr inbounds [128 x i32], ptr %temp_offset.i.i.i, i32 0, i32 103
  %188 = ptrtoint ptr %arrayidx.51.i.i.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 524288, ptr %arrayidx.51.i.i.i, align 4
  %arrayidx.52.i.i.i = getelementptr inbounds [128 x i32], ptr %temp_offset.i.i.i, i32 0, i32 105
  %189 = ptrtoint ptr %arrayidx.52.i.i.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 524288, ptr %arrayidx.52.i.i.i, align 4
  %arrayidx.53.i.i.i = getelementptr inbounds [128 x i32], ptr %temp_offset.i.i.i, i32 0, i32 107
  %190 = ptrtoint ptr %arrayidx.53.i.i.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 524288, ptr %arrayidx.53.i.i.i, align 4
  %arrayidx.54.i.i.i = getelementptr inbounds [128 x i32], ptr %temp_offset.i.i.i, i32 0, i32 109
  %191 = ptrtoint ptr %arrayidx.54.i.i.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 524288, ptr %arrayidx.54.i.i.i, align 4
  %arrayidx.55.i.i.i = getelementptr inbounds [128 x i32], ptr %temp_offset.i.i.i, i32 0, i32 111
  %192 = ptrtoint ptr %arrayidx.55.i.i.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 524288, ptr %arrayidx.55.i.i.i, align 4
  %arrayidx.56.i.i.i = getelementptr inbounds [128 x i32], ptr %temp_offset.i.i.i, i32 0, i32 113
  %193 = ptrtoint ptr %arrayidx.56.i.i.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 524288, ptr %arrayidx.56.i.i.i, align 4
  %arrayidx.57.i.i.i = getelementptr inbounds [128 x i32], ptr %temp_offset.i.i.i, i32 0, i32 115
  %194 = ptrtoint ptr %arrayidx.57.i.i.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 524288, ptr %arrayidx.57.i.i.i, align 4
  %arrayidx.58.i.i.i = getelementptr inbounds [128 x i32], ptr %temp_offset.i.i.i, i32 0, i32 117
  %195 = ptrtoint ptr %arrayidx.58.i.i.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 524288, ptr %arrayidx.58.i.i.i, align 4
  %arrayidx.59.i.i.i = getelementptr inbounds [128 x i32], ptr %temp_offset.i.i.i, i32 0, i32 119
  %196 = ptrtoint ptr %arrayidx.59.i.i.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 524288, ptr %arrayidx.59.i.i.i, align 4
  %arrayidx.60.i.i.i = getelementptr inbounds [128 x i32], ptr %temp_offset.i.i.i, i32 0, i32 121
  %197 = ptrtoint ptr %arrayidx.60.i.i.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 524288, ptr %arrayidx.60.i.i.i, align 4
  %arrayidx.61.i.i.i = getelementptr inbounds [128 x i32], ptr %temp_offset.i.i.i, i32 0, i32 123
  %198 = ptrtoint ptr %arrayidx.61.i.i.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 524288, ptr %arrayidx.61.i.i.i, align 4
  %arrayidx.62.i.i.i = getelementptr inbounds [128 x i32], ptr %temp_offset.i.i.i, i32 0, i32 125
  %199 = ptrtoint ptr %arrayidx.62.i.i.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 524288, ptr %arrayidx.62.i.i.i, align 4
  %arrayidx.63.i.i.i = getelementptr inbounds [128 x i32], ptr %temp_offset.i.i.i, i32 0, i32 127
  %200 = ptrtoint ptr %arrayidx.63.i.i.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 524288, ptr %arrayidx.63.i.i.i, align 4
  call void @wlc_phy_write_table(ptr noundef %pi, ptr noundef nonnull %tab.i112.i.i, i16 noundef zeroext 1109, i16 noundef zeroext 1111, i16 noundef zeroext 1110) #6
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %temp_offset.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tab.i112.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tab.i.i) #6
  call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext 284, i16 noundef zeroext 0) #6
  call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 1083, i16 noundef zeroext 0) #6
  call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 1084, i16 noundef zeroext 0) #6
  call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 1100, i16 noundef zeroext 0) #6
  call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 1254, i16 noundef zeroext 0) #6
  call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 1273, i16 noundef zeroext 0) #6
  call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 1200, i16 noundef zeroext 0) #6
  call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 2360, i16 noundef zeroext 0) #6
  call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 1200, i16 noundef zeroext 0) #6
  call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 1102, i16 noundef zeroext 0) #6
  call void @or_phy_reg(ptr noundef %pi, i16 noundef zeroext 1383, i16 noundef zeroext 3) #6
  call void @or_phy_reg(ptr noundef %pi, i16 noundef zeroext 1098, i16 noundef zeroext 68) #6
  call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 1098, i16 noundef zeroext 128) #6
  %201 = ptrtoint ptr %sh.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %sh.i.i, align 4
  %boardflags.i6.i = getelementptr inbounds %struct.shared_phy, ptr %202, i32 0, i32 16
  %203 = ptrtoint ptr %boardflags.i6.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %boardflags.i6.i, align 4
  %and.i7.i = and i32 %204, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i7.i)
  %tobool.not.i8.i = icmp eq i32 %and.i7.i, 0
  br i1 %tobool.not.i8.i, label %if.then.i9.i, label %wlc_lcnphy_tbl_init.exit.i.if.end.i13.i_crit_edge

wlc_lcnphy_tbl_init.exit.i.if.end.i13.i_crit_edge: ; preds = %wlc_lcnphy_tbl_init.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i13.i

if.then.i9.i:                                     ; preds = %wlc_lcnphy_tbl_init.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @wlc_lcnphy_set_tx_pwr_by_index(ptr noundef %pi, i32 noundef 52) #6
  br label %if.end.i13.i

if.end.i13.i:                                     ; preds = %if.then.i9.i, %wlc_lcnphy_tbl_init.exit.i.if.end.i13.i_crit_edge
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1588, i16 noundef zeroext 255, i16 noundef zeroext 12) #6
  %205 = ptrtoint ptr %sh.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %sh.i.i, align 4
  %boardflags2.i10.i = getelementptr inbounds %struct.shared_phy, ptr %206, i32 0, i32 16
  %207 = ptrtoint ptr %boardflags2.i10.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %boardflags2.i10.i, align 4
  %and3.i11.i = and i32 %208, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i11.i)
  %tobool4.not.i12.i = icmp eq i32 %and3.i11.i, 0
  br i1 %tobool4.not.i12.i, label %if.end.i13.i.wlc_lcnphy_rev0_baseband_init.exit.i_crit_edge, label %if.then5.i14.i

if.end.i13.i.wlc_lcnphy_rev0_baseband_init.exit.i_crit_edge: ; preds = %if.end.i13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %wlc_lcnphy_rev0_baseband_init.exit.i

if.then5.i14.i:                                   ; preds = %if.end.i13.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1588, i16 noundef zeroext 255, i16 noundef zeroext 10) #6
  call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 2320, i16 noundef zeroext 1) #6
  br label %wlc_lcnphy_rev0_baseband_init.exit.i

wlc_lcnphy_rev0_baseband_init.exit.i:             ; preds = %if.then5.i14.i, %if.end.i13.i.wlc_lcnphy_rev0_baseband_init.exit.i_crit_edge
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1096, i16 noundef zeroext 768, i16 noundef zeroext 256) #6
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1544, i16 noundef zeroext 255, i16 noundef zeroext 23) #6
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1540, i16 noundef zeroext 2047, i16 noundef zeroext 1002) #6
  %209 = ptrtoint ptr %phy_rev.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %phy_rev.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %210)
  %cmp.i = icmp eq i32 %210, 2
  br i1 %cmp.i, label %if.then.i, label %wlc_lcnphy_rev0_baseband_init.exit.i.if.end.i_crit_edge

wlc_lcnphy_rev0_baseband_init.exit.i.if.end.i_crit_edge: ; preds = %wlc_lcnphy_rev0_baseband_init.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %wlc_lcnphy_rev0_baseband_init.exit.i
  %211 = ptrtoint ptr %radio_chanspec.i.i to i32
  call void @__asan_load2_noabort(i32 %211)
  %212 = load i16, ptr %radio_chanspec.i.i, align 4
  %213 = and i16 %212, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %213)
  %cmp.i.i = icmp eq i16 %213, 4096
  br i1 %cmp.i.i, label %if.then.i16.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i16.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1046, i16 noundef zeroext 255, i16 noundef zeroext 80) #6
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1046, i16 noundef zeroext -256, i16 noundef zeroext 20480) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i16.i, %if.then.i.if.end.i_crit_edge, %wlc_lcnphy_rev0_baseband_init.exit.i.if.end.i_crit_edge
  call void @or_phy_reg(ptr noundef %pi, i16 noundef zeroext 2053, i16 noundef zeroext 1) #6
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1071, i16 noundef zeroext 7, i16 noundef zeroext 3) #6
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 48, i16 noundef zeroext 7, i16 noundef zeroext 3) #6
  call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 1044, i16 noundef zeroext 7696) #6
  call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 1045, i16 noundef zeroext 1600) #6
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1247, i16 noundef zeroext -256, i16 noundef zeroext -2304) #6
  call void @or_phy_reg(ptr noundef %pi, i16 noundef zeroext 1098, i16 noundef zeroext 68) #6
  call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 1098, i16 noundef zeroext 128) #6
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1076, i16 noundef zeroext 255, i16 noundef zeroext 253) #6
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1056, i16 noundef zeroext 255, i16 noundef zeroext 16) #6
  %214 = ptrtoint ptr %sh.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %sh.i.i, align 4
  %boardrev.i20.i = getelementptr inbounds %struct.shared_phy, ptr %215, i32 0, i32 15
  %216 = ptrtoint ptr %boardrev.i20.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %boardrev.i20.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4612, i32 %217)
  %cmp.i21.i = icmp ult i32 %217, 4612
  br i1 %cmp.i21.i, label %if.end.i.if.end.i24.i_crit_edge, label %if.then.i22.i

if.end.i.if.end.i24.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i24.i

if.then.i22.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @mod_radio_reg(ptr noundef %pi, i16 noundef zeroext 155, i16 noundef zeroext 240, i16 noundef zeroext 240) #6
  br label %if.end.i24.i

if.end.i24.i:                                     ; preds = %if.then.i22.i, %if.end.i.if.end.i24.i_crit_edge
  call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 2006, i16 noundef zeroext 2306) #6
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1065, i16 noundef zeroext 15, i16 noundef zeroext 9) #6
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1065, i16 noundef zeroext 1008, i16 noundef zeroext 224) #6
  %218 = ptrtoint ptr %phy_rev.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %phy_rev.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %219)
  %cmp1.i.i = icmp eq i32 %219, 1
  br i1 %cmp1.i.i, label %if.then2.i.i, label %if.end.i24.i.for.body.i.i39.preheader_crit_edge

if.end.i24.i.for.body.i.i39.preheader_crit_edge:  ; preds = %if.end.i24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i39.preheader

if.then2.i.i:                                     ; preds = %if.end.i24.i
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1059, i16 noundef zeroext 255, i16 noundef zeroext 70) #6
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1041, i16 noundef zeroext 255, i16 noundef zeroext 1) #6
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1076, i16 noundef zeroext 255, i16 noundef zeroext 255) #6
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1622, i16 noundef zeroext 15, i16 noundef zeroext 2) #6
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1101, i16 noundef zeroext 4, i16 noundef zeroext 4) #6
  call void @mod_radio_reg(ptr noundef %pi, i16 noundef zeroext 247, i16 noundef zeroext 4, i16 noundef zeroext 4) #6
  call void @mod_radio_reg(ptr noundef %pi, i16 noundef zeroext 241, i16 noundef zeroext 3, i16 noundef zeroext 0) #6
  call void @mod_radio_reg(ptr noundef %pi, i16 noundef zeroext 242, i16 noundef zeroext 248, i16 noundef zeroext 144) #6
  call void @mod_radio_reg(ptr noundef %pi, i16 noundef zeroext 243, i16 noundef zeroext 3, i16 noundef zeroext 2) #6
  call void @mod_radio_reg(ptr noundef %pi, i16 noundef zeroext 243, i16 noundef zeroext 240, i16 noundef zeroext 160) #6
  call void @mod_radio_reg(ptr noundef %pi, i16 noundef zeroext 287, i16 noundef zeroext 2, i16 noundef zeroext 2) #6
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %data_buf.i.i.i) #6
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tab.i.i18.i) #6
  %220 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i.i18.i, i32 0, i32 1
  %221 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i.i18.i, i32 0, i32 2
  %222 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i.i18.i, i32 0, i32 3
  %223 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i.i18.i, i32 0, i32 4
  %224 = call ptr @memset(ptr %220, i32 255, i32 12)
  %225 = call ptr @memset(ptr %data_buf.i.i.i, i32 0, i32 256)
  %226 = ptrtoint ptr %221 to i32
  call void @__asan_store4_noabort(i32 %226)
  store i32 7, ptr %221, align 4
  %227 = ptrtoint ptr %223 to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 32, ptr %223, align 4
  %228 = ptrtoint ptr %tab.i.i18.i to i32
  call void @__asan_store4_noabort(i32 %228)
  store ptr %data_buf.i.i.i, ptr %tab.i.i18.i, align 4
  %temppwrctrl_capable.i.i.i = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 140
  %229 = ptrtoint ptr %temppwrctrl_capable.i.i.i to i32
  call void @__asan_load1_noabort(i32 %229)
  %230 = load i8, ptr %temppwrctrl_capable.i.i.i, align 1, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %230)
  %tobool.not.i.i.i = icmp eq i8 %230, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i25.i, label %if.then2.i.i.wlc_lcnphy_clear_tx_power_offsets.exit.i.i_crit_edge

if.then2.i.i.wlc_lcnphy_clear_tx_power_offsets.exit.i.i_crit_edge: ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %wlc_lcnphy_clear_tx_power_offsets.exit.i.i

if.then.i.i25.i:                                  ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %231 = ptrtoint ptr %220 to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 30, ptr %220, align 4
  %232 = ptrtoint ptr %222 to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 832, ptr %222, align 4
  call void @wlc_phy_write_table(ptr noundef %pi, ptr noundef nonnull %tab.i.i18.i, i16 noundef zeroext 1109, i16 noundef zeroext 1111, i16 noundef zeroext 1110) #6
  br label %wlc_lcnphy_clear_tx_power_offsets.exit.i.i

wlc_lcnphy_clear_tx_power_offsets.exit.i.i:       ; preds = %if.then.i.i25.i, %if.then2.i.i.wlc_lcnphy_clear_tx_power_offsets.exit.i.i_crit_edge
  %233 = ptrtoint ptr %220 to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 64, ptr %220, align 4
  %234 = ptrtoint ptr %222 to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 128, ptr %222, align 4
  call void @wlc_phy_write_table(ptr noundef %pi, ptr noundef nonnull %tab.i.i18.i, i16 noundef zeroext 1109, i16 noundef zeroext 1111, i16 noundef zeroext 1110) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tab.i.i18.i) #6
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %data_buf.i.i.i) #6
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1232, i16 noundef zeroext 32704, i16 noundef zeroext 640) #6
  br label %for.body.i.i39.preheader

for.body.i.i39.preheader:                         ; preds = %wlc_lcnphy_clear_tx_power_offsets.exit.i.i, %if.end.i24.i.for.body.i.i39.preheader_crit_edge
  br label %for.body.i.i39

for.body.i.i39:                                   ; preds = %for.inc.i.i.for.body.i.i39_crit_edge, %for.body.i.i39.preheader
  %235 = phi i16 [ %245, %for.inc.i.i.for.body.i.i39_crit_edge ], [ 0, %for.body.i.i39.preheader ]
  %i.084.i.i = phi i32 [ %inc.i.i43, %for.inc.i.i.for.body.i.i39_crit_edge ], [ 0, %for.body.i.i39.preheader ]
  %236 = ptrtoint ptr %radio_chanspec.i.i to i32
  call void @__asan_load2_noabort(i32 %236)
  %237 = load i16, ptr %radio_chanspec.i.i, align 4
  %238 = and i16 %237, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %238)
  %cmp3.i.i = icmp eq i16 %238, 4096
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %for.body.i.i39.if.else.i.i_crit_edge

for.body.i.i39.if.else.i.i_crit_edge:             ; preds = %for.body.i.i39
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i39
  %do_init_a.i.i = getelementptr %struct.lcnphy_radio_regs, ptr @lcnphy_radio_regs_2064, i32 %i.084.i.i, i32 3
  %239 = ptrtoint ptr %do_init_a.i.i to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %do_init_a.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %240)
  %tobool.not.i.i40 = icmp eq i8 %240, 0
  br i1 %tobool.not.i.i40, label %land.lhs.true.i.i.if.else.i.i_crit_edge, label %if.then.i.i41

land.lhs.true.i.i.if.else.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i.i

if.then.i.i41:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %init_a.i.i = getelementptr %struct.lcnphy_radio_regs, ptr @lcnphy_radio_regs_2064, i32 %i.084.i.i, i32 1
  br label %for.inc.sink.split.i.i

if.else.i.i:                                      ; preds = %land.lhs.true.i.i.if.else.i.i_crit_edge, %for.body.i.i39.if.else.i.i_crit_edge
  %do_init_g.i.i = getelementptr %struct.lcnphy_radio_regs, ptr @lcnphy_radio_regs_2064, i32 %i.084.i.i, i32 4
  %241 = ptrtoint ptr %do_init_g.i.i to i32
  call void @__asan_load1_noabort(i32 %241)
  %242 = load i8, ptr %do_init_g.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %242)
  %tobool15.not.i.i = icmp eq i8 %242, 0
  br i1 %tobool15.not.i.i, label %if.else.i.i.for.inc.i.i_crit_edge, label %if.then16.i.i42

if.else.i.i.for.inc.i.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i

if.then16.i.i42:                                  ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %init_g.i.i = getelementptr %struct.lcnphy_radio_regs, ptr @lcnphy_radio_regs_2064, i32 %i.084.i.i, i32 2
  br label %for.inc.sink.split.i.i

for.inc.sink.split.i.i:                           ; preds = %if.then16.i.i42, %if.then.i.i41
  %.sink87.in.i.i = phi ptr [ %init_a.i.i, %if.then.i.i41 ], [ %init_g.i.i, %if.then16.i.i42 ]
  %.sink.i.i = and i16 %235, 16383
  %243 = ptrtoint ptr %.sink87.in.i.i to i32
  call void @__asan_load1_noabort(i32 %243)
  %.sink87.i.i = load i8, ptr %.sink87.in.i.i, align 1
  %conv13.i.i = zext i8 %.sink87.i.i to i16
  call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext %.sink.i.i, i16 noundef zeroext %conv13.i.i) #6
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.inc.sink.split.i.i, %if.else.i.i.for.inc.i.i_crit_edge
  %inc.i.i43 = add i32 %i.084.i.i, 1
  %arrayidx.i.i44 = getelementptr %struct.lcnphy_radio_regs, ptr @lcnphy_radio_regs_2064, i32 %inc.i.i43
  %244 = ptrtoint ptr %arrayidx.i.i44 to i32
  call void @__asan_load2_noabort(i32 %244)
  %245 = load i16, ptr %arrayidx.i.i44, align 2
  %cmp.not.i.i = icmp eq i16 %245, -1
  br i1 %cmp.not.i.i, label %for.end.i.i46, label %for.inc.i.i.for.body.i.i39_crit_edge

for.inc.i.i.for.body.i.i39_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i39

for.end.i.i46:                                    ; preds = %for.inc.i.i
  call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext 50, i16 noundef zeroext 98) #6
  call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext 51, i16 noundef zeroext 25) #6
  call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext 144, i16 noundef zeroext 16) #6
  call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext 16, i16 noundef zeroext 0) #6
  %246 = ptrtoint ptr %phy_rev.i.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %phy_rev.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %247)
  %cmp26.i.i = icmp eq i32 %247, 1
  br i1 %cmp26.i.i, label %if.then28.i.i, label %for.end.i.i46.if.end29.i.i_crit_edge

for.end.i.i46.if.end29.i.i_crit_edge:             ; preds = %for.end.i.i46
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29.i.i

if.then28.i.i:                                    ; preds = %for.end.i.i46
  call void @__sanitizer_cov_trace_pc() #8
  call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext 96, i16 noundef zeroext 127) #6
  call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext 97, i16 noundef zeroext 114) #6
  call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext 98, i16 noundef zeroext 127) #6
  br label %if.end29.i.i

if.end29.i.i:                                     ; preds = %if.then28.i.i, %for.end.i.i46.if.end29.i.i_crit_edge
  call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext 29, i16 noundef zeroext 2) #6
  call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext 30, i16 noundef zeroext 6) #6
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1258, i16 noundef zeroext 7, i16 noundef zeroext 0) #6
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1258, i16 noundef zeroext 56, i16 noundef zeroext 8) #6
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1258, i16 noundef zeroext 448, i16 noundef zeroext 128) #6
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1258, i16 noundef zeroext 3584, i16 noundef zeroext 1536) #6
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1258, i16 noundef zeroext 28672, i16 noundef zeroext 16384) #6
  call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 1258, i16 noundef zeroext 18056) #6
  %248 = ptrtoint ptr %sh.i.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %sh.i.i, align 4
  %boardflags.i.i48 = getelementptr inbounds %struct.shared_phy, ptr %249, i32 0, i32 16
  %250 = ptrtoint ptr %boardflags.i.i48 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %boardflags.i.i48, align 4
  %and30.i.i = and i32 %251, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i.i)
  %tobool31.not.i.i = icmp eq i32 %and30.i.i, 0
  %..i.i49 = select i1 %tobool31.not.i.i, i16 3, i16 2
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1259, i16 noundef zeroext 7, i16 noundef zeroext %..i.i49) #6
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1259, i16 noundef zeroext 448, i16 noundef zeroext 0) #6
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1130, i16 noundef zeroext -1, i16 noundef zeroext 25) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %didq.addr.i.i.i) #6
  %252 = ptrtoint ptr %didq.addr.i.i.i to i32
  call void @__asan_store2_noabort(i32 %252)
  store i16 0, ptr %didq.addr.i.i.i, align 2
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tab.i.i.i37) #6
  %253 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i.i.i37, i32 0, i32 1
  %254 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i.i.i37, i32 0, i32 2
  %255 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i.i.i37, i32 0, i32 3
  %256 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i.i.i37, i32 0, i32 4
  %257 = ptrtoint ptr %254 to i32
  call void @__asan_store4_noabort(i32 %257)
  store i32 0, ptr %254, align 4
  %258 = ptrtoint ptr %256 to i32
  call void @__asan_store4_noabort(i32 %258)
  store i32 16, ptr %256, align 4
  %259 = ptrtoint ptr %tab.i.i.i37 to i32
  call void @__asan_store4_noabort(i32 %259)
  store ptr %didq.addr.i.i.i, ptr %tab.i.i.i37, align 4
  %260 = ptrtoint ptr %253 to i32
  call void @__asan_store4_noabort(i32 %260)
  store i32 1, ptr %253, align 4
  %261 = ptrtoint ptr %255 to i32
  call void @__asan_store4_noabort(i32 %261)
  store i32 85, ptr %255, align 4
  call void @wlc_phy_write_table(ptr noundef %pi, ptr noundef nonnull %tab.i.i.i37, i16 noundef zeroext 1109, i16 noundef zeroext 1111, i16 noundef zeroext 1110) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tab.i.i.i37) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %didq.addr.i.i.i) #6
  call void @and_radio_reg(ptr noundef %pi, i16 noundef zeroext 91, i16 noundef zeroext 253) #6
  call void @or_radio_reg(ptr noundef %pi, i16 noundef zeroext 4, i16 noundef zeroext 64) #6
  call void @or_radio_reg(ptr noundef %pi, i16 noundef zeroext 288, i16 noundef zeroext 16) #6
  call void @or_radio_reg(ptr noundef %pi, i16 noundef zeroext 120, i16 noundef zeroext 128) #6
  call void @or_radio_reg(ptr noundef %pi, i16 noundef zeroext 297, i16 noundef zeroext 2) #6
  call void @or_radio_reg(ptr noundef %pi, i16 noundef zeroext 87, i16 noundef zeroext 1) #6
  call void @or_radio_reg(ptr noundef %pi, i16 noundef zeroext 91, i16 noundef zeroext 2) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %262 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %262(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %263 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %263(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %264 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %264(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %265 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %265(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %266 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %266(i32 noundef 214748000) #6
  %call30.i.i.i = call zeroext i16 @read_radio_reg(ptr noundef %pi, i16 noundef zeroext 92) #6
  %267 = and i16 %call30.i.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %267)
  %cmp.not31.i.i.i = icmp eq i16 %267, 0
  br i1 %cmp.not31.i.i.i, label %if.end29.i.i.while.body5.i.i.i_crit_edge, label %if.end29.i.i.while.end6.i.i.i_crit_edge

if.end29.i.i.while.end6.i.i.i_crit_edge:          ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end6.i.i.i

if.end29.i.i.while.body5.i.i.i_crit_edge:         ; preds = %if.end29.i.i
  br label %while.body5.i.i.i

while.body5.i.i.i:                                ; preds = %while.body5.i.i.i.while.body5.i.i.i_crit_edge, %if.end29.i.i.while.body5.i.i.i_crit_edge
  %countdown.032.i.i.i = phi i32 [ %sub.i.i.i50, %while.body5.i.i.i.while.body5.i.i.i_crit_edge ], [ 10000009, %if.end29.i.i.while.body5.i.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %268 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %268(i32 noundef 2147480) #6
  %sub.i.i.i50 = add nsw i32 %countdown.032.i.i.i, -10
  %call.i.i.i51 = call zeroext i16 @read_radio_reg(ptr noundef %pi, i16 noundef zeroext 92) #6
  %269 = and i16 %call.i.i.i51, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %269)
  %cmp.not.i.i.i = icmp eq i16 %269, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %sub.i.i.i50)
  %cmp3.i.i.i = icmp ugt i32 %sub.i.i.i50, 9
  %or.cond.i.i.i = select i1 %cmp.not.i.i.i, i1 %cmp3.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %while.body5.i.i.i.while.body5.i.i.i_crit_edge, label %while.body5.i.i.i.while.end6.i.i.i_crit_edge

while.body5.i.i.i.while.end6.i.i.i_crit_edge:     ; preds = %while.body5.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end6.i.i.i

while.body5.i.i.i.while.body5.i.i.i_crit_edge:    ; preds = %while.body5.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body5.i.i.i

while.end6.i.i.i:                                 ; preds = %while.body5.i.i.i.while.end6.i.i.i_crit_edge, %if.end29.i.i.while.end6.i.i.i_crit_edge
  %call7.i.i.i = call zeroext i16 @read_radio_reg(ptr noundef %pi, i16 noundef zeroext 92) #6
  %270 = and i16 %call7.i.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %270)
  %cmp10.not.i.i.i = icmp eq i16 %270, 0
  br i1 %cmp10.not.i.i.i, label %while.end6.i.i.i.wlc_lcnphy_rcal.exit.i.i_crit_edge, label %if.then.i.i.i52

while.end6.i.i.i.wlc_lcnphy_rcal.exit.i.i_crit_edge: ; preds = %while.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %wlc_lcnphy_rcal.exit.i.i

if.then.i.i.i52:                                  ; preds = %while.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call12.i.i.i = call zeroext i16 @read_radio_reg(ptr noundef %pi, i16 noundef zeroext 92) #6
  br label %wlc_lcnphy_rcal.exit.i.i

wlc_lcnphy_rcal.exit.i.i:                         ; preds = %if.then.i.i.i52, %while.end6.i.i.i.wlc_lcnphy_rcal.exit.i.i_crit_edge
  call void @and_radio_reg(ptr noundef %pi, i16 noundef zeroext 91, i16 noundef zeroext 253) #6
  call void @and_radio_reg(ptr noundef %pi, i16 noundef zeroext 87, i16 noundef zeroext 254) #6
  %271 = ptrtoint ptr %phy_rev.i.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %phy_rev.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %272)
  %cmp.i.i.i = icmp eq i32 %272, 1
  %conv5.i.i.i = select i1 %cmp.i.i.i, i16 11627, i16 7399
  call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 2355, i16 noundef zeroext %conv5.i.i.i) #6
  call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 2356, i16 noundef zeroext %conv5.i.i.i) #6
  call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 2357, i16 noundef zeroext %conv5.i.i.i) #6
  call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 2358, i16 noundef zeroext %conv5.i.i.i) #6
  %conv7.i.i.i53 = and i16 %conv5.i.i.i, 495
  call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 2359, i16 noundef zeroext %conv7.i.i.i53) #6
  %273 = ptrtoint ptr %sh.i.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %sh.i.i, align 4
  %boardflags36.i.i = getelementptr inbounds %struct.shared_phy, ptr %274, i32 0, i32 16
  %275 = ptrtoint ptr %boardflags36.i.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %boardflags36.i.i, align 4
  %and37.i.i = and i32 %276, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.i.i)
  %tobool38.not.i.i = icmp eq i32 %and37.i.i, 0
  br i1 %tobool38.not.i.i, label %if.then39.i.i, label %wlc_lcnphy_rcal.exit.i.i.wlc_lcnphy_radio_init.exit_crit_edge

wlc_lcnphy_rcal.exit.i.i.wlc_lcnphy_radio_init.exit_crit_edge: ; preds = %wlc_lcnphy_rcal.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %wlc_lcnphy_radio_init.exit

if.then39.i.i:                                    ; preds = %wlc_lcnphy_rcal.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext 50, i16 noundef zeroext 111) #6
  call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext 51, i16 noundef zeroext 25) #6
  call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext 57, i16 noundef zeroext 14) #6
  br label %wlc_lcnphy_radio_init.exit

wlc_lcnphy_radio_init.exit:                       ; preds = %if.then39.i.i, %wlc_lcnphy_rcal.exit.i.i.wlc_lcnphy_radio_init.exit_crit_edge
  %277 = ptrtoint ptr %radio_chanspec.i.i to i32
  call void @__asan_load2_noabort(i32 %277)
  %278 = load i16, ptr %radio_chanspec.i.i, align 4
  %279 = and i16 %278, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %279)
  %cmp = icmp eq i16 %279, 8192
  br i1 %cmp, label %if.then, label %wlc_lcnphy_radio_init.exit.if.end_crit_edge

wlc_lcnphy_radio_init.exit.if.end_crit_edge:      ; preds = %wlc_lcnphy_radio_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %wlc_lcnphy_radio_init.exit
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tx_gains.i) #6
  %280 = getelementptr inbounds %struct.lcnphy_txgains, ptr %tx_gains.i, i32 0, i32 1
  %281 = getelementptr inbounds %struct.lcnphy_txgains, ptr %tx_gains.i, i32 0, i32 2
  %282 = getelementptr inbounds %struct.lcnphy_txgains, ptr %tx_gains.i, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tab.i) #6
  %283 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i, i32 0, i32 1
  %284 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i, i32 0, i32 2
  %285 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i, i32 0, i32 3
  %286 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i, i32 0, i32 4
  %287 = call ptr @memset(ptr %tab.i, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pwr.i) #6
  %288 = ptrtoint ptr %pwr.i to i32
  call void @__asan_store4_noabort(i32 %288)
  store i32 -1, ptr %pwr.i, align 4, !annotation !48
  %d11core.i = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 5
  %289 = ptrtoint ptr %d11core.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %d11core.i, align 4
  %291 = ptrtoint ptr %290 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %290, align 8
  %ops.i.i = getelementptr inbounds %struct.bcma_bus, ptr %292, i32 0, i32 2
  %293 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %ops.i.i, align 4
  %read32.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %294, i32 0, i32 2
  %295 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %read32.i.i, align 4
  %call.i.i55 = call i32 %296(ptr noundef %290, i16 noundef zeroext 288) #6
  %and.i = and i32 %call.i.i55, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i56 = icmp eq i32 %and.i, 0
  br i1 %cmp.i56, label %if.then.if.end.i58_crit_edge, label %if.then.i57

if.then.if.end.i58_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i58

if.then.i57:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %297 = ptrtoint ptr %sh.i.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %sh.i.i, align 4
  %physhim.i = getelementptr inbounds %struct.shared_phy, ptr %298, i32 0, i32 2
  %299 = ptrtoint ptr %physhim.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %physhim.i, align 4
  call void @wlapi_suspend_mac_and_wait(ptr noundef %300) #6
  br label %if.end.i58

if.end.i58:                                       ; preds = %if.then.i57, %if.then.if.end.i58_crit_edge
  %hwpwrctrl_capable.i = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 139
  %301 = ptrtoint ptr %hwpwrctrl_capable.i to i32
  call void @__asan_load1_noabort(i32 %301)
  %302 = load i8, ptr %hwpwrctrl_capable.i, align 4, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %302)
  %tobool1.not.i = icmp eq i8 %302, 0
  br i1 %tobool1.not.i, label %if.then2.i, label %if.else12.i

if.then2.i:                                       ; preds = %if.end.i58
  call void @__sanitizer_cov_trace_pc() #8
  %303 = ptrtoint ptr %radio_chanspec.i.i to i32
  call void @__asan_load2_noabort(i32 %303)
  %304 = load i16, ptr %radio_chanspec.i.i, align 4
  %305 = and i16 %304, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %305)
  %cmp4.i = icmp eq i16 %305, 8192
  %..i = select i1 %cmp4.i, i16 4, i16 7
  %.65.i = select i1 %cmp4.i, i16 12, i16 15
  %.66.i = select i1 %cmp4.i, i16 12, i16 14
  %306 = ptrtoint ptr %tx_gains.i to i32
  call void @__asan_store2_noabort(i32 %306)
  store i16 %..i, ptr %tx_gains.i, align 2
  %307 = ptrtoint ptr %280 to i32
  call void @__asan_store2_noabort(i32 %307)
  store i16 %.65.i, ptr %280, align 2
  %308 = ptrtoint ptr %281 to i32
  call void @__asan_store2_noabort(i32 %308)
  store i16 %.66.i, ptr %281, align 2
  %309 = ptrtoint ptr %282 to i32
  call void @__asan_store2_noabort(i32 %309)
  store i16 0, ptr %282, align 2
  call fastcc void @wlc_lcnphy_set_tx_gain(ptr noundef %pi, ptr noundef nonnull %tx_gains.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %m0m1.i.i) #6
  %310 = ptrtoint ptr %m0m1.i.i to i32
  call void @__asan_store2_noabort(i32 %310)
  store i16 -27136, ptr %m0m1.i.i, align 2
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tab.i.i54) #6
  %311 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i.i54, i32 0, i32 1
  %312 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i.i54, i32 0, i32 2
  %313 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i.i54, i32 0, i32 3
  %314 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i.i54, i32 0, i32 4
  %315 = ptrtoint ptr %tab.i.i54 to i32
  call void @__asan_store4_noabort(i32 %315)
  store ptr %m0m1.i.i, ptr %tab.i.i54, align 4
  %316 = ptrtoint ptr %311 to i32
  call void @__asan_store4_noabort(i32 %316)
  store i32 1, ptr %311, align 4
  %317 = ptrtoint ptr %312 to i32
  call void @__asan_store4_noabort(i32 %317)
  store i32 0, ptr %312, align 4
  %318 = ptrtoint ptr %313 to i32
  call void @__asan_store4_noabort(i32 %318)
  store i32 87, ptr %313, align 4
  %319 = ptrtoint ptr %314 to i32
  call void @__asan_store4_noabort(i32 %319)
  store i32 16, ptr %314, align 4
  call void @wlc_phy_write_table(ptr noundef %pi, ptr noundef nonnull %tab.i.i54, i16 noundef zeroext 1109, i16 noundef zeroext 1111, i16 noundef zeroext 1110) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tab.i.i54) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %m0m1.i.i) #6
  call fastcc void @wlc_lcnphy_vbat_temp_sense_setup(ptr noundef %pi, i8 noundef zeroext 1) #6
  br label %if.end28.i

if.else12.i:                                      ; preds = %if.end.i58
  call fastcc void @wlc_lcnphy_idle_tssi_est(ptr noundef %pi) #6
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %data_buf.i.i) #6
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tab.i67.i) #6
  %320 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i67.i, i32 0, i32 1
  %321 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i67.i, i32 0, i32 2
  %322 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i67.i, i32 0, i32 3
  %323 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i67.i, i32 0, i32 4
  %324 = call ptr @memset(ptr %320, i32 255, i32 12)
  %325 = call ptr @memset(ptr %data_buf.i.i, i32 0, i32 256)
  %326 = ptrtoint ptr %321 to i32
  call void @__asan_store4_noabort(i32 %326)
  store i32 7, ptr %321, align 4
  %327 = ptrtoint ptr %323 to i32
  call void @__asan_store4_noabort(i32 %327)
  store i32 32, ptr %323, align 4
  %328 = ptrtoint ptr %tab.i67.i to i32
  call void @__asan_store4_noabort(i32 %328)
  store ptr %data_buf.i.i, ptr %tab.i67.i, align 4
  %temppwrctrl_capable.i.i = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 140
  %329 = ptrtoint ptr %temppwrctrl_capable.i.i to i32
  call void @__asan_load1_noabort(i32 %329)
  %330 = load i8, ptr %temppwrctrl_capable.i.i, align 1, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %330)
  %tobool.not.i.i59 = icmp eq i8 %330, 0
  br i1 %tobool.not.i.i59, label %if.then.i.i60, label %if.else12.i.wlc_lcnphy_clear_tx_power_offsets.exit.i_crit_edge

if.else12.i.wlc_lcnphy_clear_tx_power_offsets.exit.i_crit_edge: ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %wlc_lcnphy_clear_tx_power_offsets.exit.i

if.then.i.i60:                                    ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #8
  %331 = ptrtoint ptr %320 to i32
  call void @__asan_store4_noabort(i32 %331)
  store i32 30, ptr %320, align 4
  %332 = ptrtoint ptr %322 to i32
  call void @__asan_store4_noabort(i32 %332)
  store i32 832, ptr %322, align 4
  call void @wlc_phy_write_table(ptr noundef %pi, ptr noundef nonnull %tab.i67.i, i16 noundef zeroext 1109, i16 noundef zeroext 1111, i16 noundef zeroext 1110) #6
  br label %wlc_lcnphy_clear_tx_power_offsets.exit.i

wlc_lcnphy_clear_tx_power_offsets.exit.i:         ; preds = %if.then.i.i60, %if.else12.i.wlc_lcnphy_clear_tx_power_offsets.exit.i_crit_edge
  %333 = ptrtoint ptr %320 to i32
  call void @__asan_store4_noabort(i32 %333)
  store i32 64, ptr %320, align 4
  %334 = ptrtoint ptr %322 to i32
  call void @__asan_store4_noabort(i32 %334)
  store i32 128, ptr %322, align 4
  call void @wlc_phy_write_table(ptr noundef %pi, ptr noundef nonnull %tab.i67.i, i16 noundef zeroext 1109, i16 noundef zeroext 1111, i16 noundef zeroext 1110) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tab.i67.i) #6
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %data_buf.i.i) #6
  %txpa_2g.i = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 28
  %335 = ptrtoint ptr %txpa_2g.i to i32
  call void @__asan_load2_noabort(i32 %335)
  %336 = load i16, ptr %txpa_2g.i, align 4
  %conv13.i = sext i16 %336 to i32
  %arrayidx15.i = getelementptr %struct.brcms_phy, ptr %pi, i32 0, i32 28, i32 1
  %337 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load2_noabort(i32 %337)
  %338 = load i16, ptr %arrayidx15.i, align 2
  %conv16.i = sext i16 %338 to i32
  %arrayidx18.i = getelementptr %struct.brcms_phy, ptr %pi, i32 0, i32 28, i32 2
  %339 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load2_noabort(i32 %339)
  %340 = load i16, ptr %arrayidx18.i, align 4
  %conv19.i = sext i16 %340 to i32
  %mul.i.i = mul nsw i32 %conv19.i, 125
  %add.i.i61 = add nsw i32 %mul.i.i, 32768
  %mul1.i.i = shl nsw i32 %conv13.i, 10
  %mul3.i.i = mul nsw i32 %conv16.i, 8000
  %add4.i.i = add nsw i32 %mul3.i.i, %mul1.i.i
  %mul5.i.i = shl nsw i32 %add4.i.i, 1
  %add6.i.i = add i32 %mul5.i.i, %add.i.i61
  %mul7.i.i = shl nsw i32 %add.i.i61, 1
  %div.i.i = sdiv i32 %add6.i.i, %mul7.i.i
  %341 = ptrtoint ptr %284 to i32
  call void @__asan_store4_noabort(i32 %341)
  store i32 7, ptr %284, align 4
  %342 = ptrtoint ptr %286 to i32
  call void @__asan_store4_noabort(i32 %342)
  store i32 32, ptr %286, align 4
  %343 = ptrtoint ptr %tab.i to i32
  call void @__asan_store4_noabort(i32 %343)
  store ptr %pwr.i, ptr %tab.i, align 4
  %344 = ptrtoint ptr %283 to i32
  call void @__asan_store4_noabort(i32 %344)
  store i32 1, ptr %283, align 4
  %345 = ptrtoint ptr %285 to i32
  call void @__asan_store4_noabort(i32 %345)
  store i32 0, ptr %285, align 4
  %mul2.i.i = shl nsw i32 %conv16.i, 6
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %wlc_lcnphy_clear_tx_power_offsets.exit.i
  %tssi.077.i = phi i32 [ 0, %wlc_lcnphy_clear_tx_power_offsets.exit.i ], [ %inc27.i, %for.body.i.for.body.i_crit_edge ]
  %mul.i68.i = mul nsw i32 %tssi.077.i, %conv19.i
  %add.i69.i = add nsw i32 %mul.i68.i, 32768
  %mul3.i71.i = mul nsw i32 %mul2.i.i, %tssi.077.i
  %add4.i72.i = add nsw i32 %mul3.i71.i, %mul1.i.i
  %mul5.i73.i = shl i32 %add4.i72.i, 1
  %add6.i74.i = add i32 %mul5.i73.i, %add.i69.i
  %mul7.i75.i = shl i32 %add.i69.i, 1
  %div.i76.i = sdiv i32 %add6.i74.i, %mul7.i75.i
  %346 = call i32 @llvm.smax.i32(i32 %div.i76.i, i32 %div.i.i) #6
  %347 = ptrtoint ptr %pwr.i to i32
  call void @__asan_store4_noabort(i32 %347)
  store i32 %346, ptr %pwr.i, align 4
  call void @wlc_phy_write_table(ptr noundef %pi, ptr noundef nonnull %tab.i, i16 noundef zeroext 1109, i16 noundef zeroext 1111, i16 noundef zeroext 1110) #6
  %348 = ptrtoint ptr %285 to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %285, align 4
  %inc.i = add i32 %349, 1
  store i32 %inc.i, ptr %285, align 4
  %inc27.i = add nuw nsw i32 %tssi.077.i, 1
  %exitcond.not.i = icmp eq i32 %inc27.i, 128
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1232, i16 noundef zeroext 1, i16 noundef zeroext 0) #6
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1235, i16 noundef zeroext 255, i16 noundef zeroext 0) #6
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1235, i16 noundef zeroext -256, i16 noundef zeroext 0) #6
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1232, i16 noundef zeroext 16, i16 noundef zeroext 0) #6
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1232, i16 noundef zeroext 4, i16 noundef zeroext 0) #6
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1040, i16 noundef zeroext 128, i16 noundef zeroext 0) #6
  call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 1192, i16 noundef zeroext 10) #6
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1191, i16 noundef zeroext 255, i16 noundef zeroext 60) #6
  call void @wlc_lcnphy_set_tx_pwr_ctrl(ptr noundef %pi, i16 noundef zeroext -8192) #6
  br label %if.end28.i

if.end28.i:                                       ; preds = %for.end.i, %if.then2.i
  br i1 %cmp.i56, label %if.end28.i.wlc_lcnphy_tx_pwr_ctrl_init.exit_crit_edge, label %if.then30.i

if.end28.i.wlc_lcnphy_tx_pwr_ctrl_init.exit_crit_edge: ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %wlc_lcnphy_tx_pwr_ctrl_init.exit

if.then30.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #8
  %350 = ptrtoint ptr %sh.i.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %sh.i.i, align 4
  %physhim32.i = getelementptr inbounds %struct.shared_phy, ptr %351, i32 0, i32 2
  %352 = ptrtoint ptr %physhim32.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %physhim32.i, align 4
  call void @wlapi_enable_mac(ptr noundef %353) #6
  br label %wlc_lcnphy_tx_pwr_ctrl_init.exit

wlc_lcnphy_tx_pwr_ctrl_init.exit:                 ; preds = %if.then30.i, %if.end28.i.wlc_lcnphy_tx_pwr_ctrl_init.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pwr.i) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tab.i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tx_gains.i) #6
  br label %if.end

if.end:                                           ; preds = %wlc_lcnphy_tx_pwr_ctrl_init.exit, %wlc_lcnphy_radio_init.exit.if.end_crit_edge
  %354 = ptrtoint ptr %radio_chanspec.i.i to i32
  call void @__asan_load2_noabort(i32 %354)
  %355 = load i16, ptr %radio_chanspec.i.i, align 4
  call void @wlc_phy_chanspec_set(ptr noundef %pi, i16 noundef zeroext %355) #6
  %d11core = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 5
  %356 = ptrtoint ptr %d11core to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %d11core, align 4
  %358 = ptrtoint ptr %357 to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %357, align 8
  %drv_cc = getelementptr inbounds %struct.bcma_bus, ptr %359, i32 0, i32 12
  call void @bcma_chipco_regctl_maskset(ptr noundef %drv_cc, i32 noundef 0, i32 noundef -16, i32 noundef 9) #6
  %360 = ptrtoint ptr %d11core to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %d11core, align 4
  %362 = ptrtoint ptr %361 to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %361, align 8
  %drv_cc5 = getelementptr inbounds %struct.bcma_bus, ptr %363, i32 0, i32 12
  call void @bcma_chipco_chipctl_maskset(ptr noundef %drv_cc5, i32 noundef 0, i32 noundef 0, i32 noundef 63823325) #6
  %364 = ptrtoint ptr %sh.i.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %sh.i.i, align 4
  %boardflags = getelementptr inbounds %struct.shared_phy, ptr %365, i32 0, i32 16
  %366 = ptrtoint ptr %boardflags to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load i32, ptr %boardflags, align 4
  %and6 = and i32 %367, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool.not = icmp eq i32 %and6, 0
  br i1 %tobool.not, label %if.end.if.end10_crit_edge, label %land.lhs.true

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

land.lhs.true:                                    ; preds = %if.end
  %temppwrctrl_capable = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 140
  %368 = ptrtoint ptr %temppwrctrl_capable to i32
  call void @__asan_load1_noabort(i32 %368)
  %369 = load i8, ptr %temppwrctrl_capable, align 1, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %369)
  %tobool7.not = icmp eq i8 %369, 0
  br i1 %tobool7.not, label %land.lhs.true.if.end10_crit_edge, label %if.then9

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  call void @wlc_lcnphy_set_tx_pwr_by_index(ptr noundef %pi, i32 noundef 78)
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %land.lhs.true.if.end10_crit_edge, %if.end.if.end10_crit_edge
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tab.i62) #6
  %370 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i62, i32 0, i32 1
  %371 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i62, i32 0, i32 2
  %372 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i62, i32 0, i32 3
  %373 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i62, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tableBuffer.i) #6
  %374 = ptrtoint ptr %tableBuffer.i to i32
  call void @__asan_store4_noabort(i32 %374)
  store i32 -1, ptr %tableBuffer.i, align 4, !annotation !48
  %375 = getelementptr inbounds [2 x i32], ptr %tableBuffer.i, i32 0, i32 1
  %376 = ptrtoint ptr %375 to i32
  call void @__asan_store4_noabort(i32 %376)
  store i32 -1, ptr %375, align 4, !annotation !48
  %377 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %u, align 4
  %call.i = call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1247) #6
  %and.i63 = and i16 %call.i, 255
  %lcnphy_ofdmgainidxtableoffset.i = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %378, i32 0, i32 47
  call void @__sanitizer_cov_trace_const_cmp2(i16 127, i16 %and.i63)
  %cmp.i64 = icmp ugt i16 %and.i63, 127
  %masksel.i = select i1 %cmp.i64, i16 -256, i16 0
  %spec.select.i = or i16 %masksel.i, %and.i63
  %379 = ptrtoint ptr %lcnphy_ofdmgainidxtableoffset.i to i32
  call void @__asan_store2_noabort(i32 %379)
  store i16 %spec.select.i, ptr %lcnphy_ofdmgainidxtableoffset.i, align 4
  %380 = lshr i16 %call.i, 8
  %lcnphy_dsssgainidxtableoffset.i = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %378, i32 0, i32 48
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call.i)
  %cmp14.i = icmp slt i16 %call.i, 0
  %sub19.i = or i16 %380, -256
  %storemerge.i = select i1 %cmp14.i, i16 %sub19.i, i16 %380
  %381 = ptrtoint ptr %lcnphy_dsssgainidxtableoffset.i to i32
  call void @__asan_store2_noabort(i32 %381)
  store i16 %storemerge.i, ptr %lcnphy_dsssgainidxtableoffset.i, align 2
  %382 = ptrtoint ptr %tab.i62 to i32
  call void @__asan_store4_noabort(i32 %382)
  store ptr %tableBuffer.i, ptr %tab.i62, align 4
  %383 = ptrtoint ptr %370 to i32
  call void @__asan_store4_noabort(i32 %383)
  store i32 2, ptr %370, align 4
  %384 = ptrtoint ptr %371 to i32
  call void @__asan_store4_noabort(i32 %384)
  store i32 17, ptr %371, align 4
  %385 = ptrtoint ptr %372 to i32
  call void @__asan_store4_noabort(i32 %385)
  store i32 59, ptr %372, align 4
  %386 = ptrtoint ptr %373 to i32
  call void @__asan_store4_noabort(i32 %386)
  store i32 32, ptr %373, align 4
  call void @wlc_phy_read_table(ptr noundef %pi, ptr noundef nonnull %tab.i62, i16 noundef zeroext 1109, i16 noundef zeroext 1111, i16 noundef zeroext 1110) #6
  %387 = ptrtoint ptr %tableBuffer.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load i32, ptr %tableBuffer.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %388)
  %cmp22.i = icmp ugt i32 %388, 63
  br i1 %cmp22.i, label %if.then24.i, label %if.end10.if.end27.i_crit_edge

if.end10.if.end27.i_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27.i

if.then24.i:                                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %sub26.i = add i32 %388, -128
  %389 = ptrtoint ptr %tableBuffer.i to i32
  call void @__asan_store4_noabort(i32 %389)
  store i32 %sub26.i, ptr %tableBuffer.i, align 4
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then24.i, %if.end10.if.end27.i_crit_edge
  %390 = ptrtoint ptr %tableBuffer.i to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load i32, ptr %tableBuffer.i, align 4
  %lcnphy_tr_R_gain_val.i = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %378, i32 0, i32 49
  %392 = ptrtoint ptr %lcnphy_tr_R_gain_val.i to i32
  call void @__asan_store4_noabort(i32 %392)
  store i32 %391, ptr %lcnphy_tr_R_gain_val.i, align 4
  %393 = ptrtoint ptr %375 to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load i32, ptr %375, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %394)
  %cmp30.i = icmp ugt i32 %394, 63
  br i1 %cmp30.i, label %if.then32.i, label %if.end27.i.wlc_lcnphy_agc_temp_init.exit_crit_edge

if.end27.i.wlc_lcnphy_agc_temp_init.exit_crit_edge: ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %wlc_lcnphy_agc_temp_init.exit

if.then32.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub34.i = add i32 %394, -128
  %395 = ptrtoint ptr %375 to i32
  call void @__asan_store4_noabort(i32 %395)
  store i32 %sub34.i, ptr %375, align 4
  br label %wlc_lcnphy_agc_temp_init.exit

wlc_lcnphy_agc_temp_init.exit:                    ; preds = %if.then32.i, %if.end27.i.wlc_lcnphy_agc_temp_init.exit_crit_edge
  %396 = ptrtoint ptr %375 to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load i32, ptr %375, align 4
  %lcnphy_tr_T_gain_val.i = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %378, i32 0, i32 50
  %398 = ptrtoint ptr %lcnphy_tr_T_gain_val.i to i32
  call void @__asan_store4_noabort(i32 %398)
  store i32 %397, ptr %lcnphy_tr_T_gain_val.i, align 4
  %call37.i = call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1076) #6
  %extract.t92.i = trunc i16 %call37.i to i8
  %lcnphy_input_pwr_offset_db.i = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %378, i32 0, i32 51
  %399 = ptrtoint ptr %lcnphy_input_pwr_offset_db.i to i32
  call void @__asan_store1_noabort(i32 %399)
  store i8 %extract.t92.i, ptr %lcnphy_input_pwr_offset_db.i, align 4
  %call50.i = call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1060) #6
  %400 = lshr i16 %call50.i, 8
  %lcnphy_Med_Low_Gain_db.i = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %378, i32 0, i32 52
  %401 = ptrtoint ptr %lcnphy_Med_Low_Gain_db.i to i32
  call void @__asan_store2_noabort(i32 %401)
  store i16 %400, ptr %lcnphy_Med_Low_Gain_db.i, align 2
  %call55.i = call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1061) #6
  %402 = and i16 %call55.i, 255
  %lcnphy_Very_Low_Gain_db.i = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %378, i32 0, i32 53
  %403 = ptrtoint ptr %lcnphy_Very_Low_Gain_db.i to i32
  call void @__asan_store2_noabort(i32 %403)
  store i16 %402, ptr %lcnphy_Very_Low_Gain_db.i, align 4
  %404 = ptrtoint ptr %tab.i62 to i32
  call void @__asan_store4_noabort(i32 %404)
  store ptr %tableBuffer.i, ptr %tab.i62, align 4
  %405 = ptrtoint ptr %370 to i32
  call void @__asan_store4_noabort(i32 %405)
  store i32 2, ptr %370, align 4
  %406 = ptrtoint ptr %371 to i32
  call void @__asan_store4_noabort(i32 %406)
  store i32 13, ptr %371, align 4
  %407 = ptrtoint ptr %372 to i32
  call void @__asan_store4_noabort(i32 %407)
  store i32 28, ptr %372, align 4
  %408 = ptrtoint ptr %373 to i32
  call void @__asan_store4_noabort(i32 %408)
  store i32 32, ptr %373, align 4
  call void @wlc_phy_read_table(ptr noundef %pi, ptr noundef nonnull %tab.i62, i16 noundef zeroext 1109, i16 noundef zeroext 1111, i16 noundef zeroext 1110) #6
  %409 = ptrtoint ptr %tableBuffer.i to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load i32, ptr %tableBuffer.i, align 4
  %lcnphy_gain_idx_14_lowword.i = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %378, i32 0, i32 43
  %411 = ptrtoint ptr %lcnphy_gain_idx_14_lowword.i to i32
  call void @__asan_store4_noabort(i32 %411)
  store i32 %410, ptr %lcnphy_gain_idx_14_lowword.i, align 4
  %412 = ptrtoint ptr %375 to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load i32, ptr %375, align 4
  %lcnphy_gain_idx_14_hiword.i = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %378, i32 0, i32 44
  %414 = ptrtoint ptr %lcnphy_gain_idx_14_hiword.i to i32
  call void @__asan_store4_noabort(i32 %414)
  store i32 %413, ptr %lcnphy_gain_idx_14_hiword.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tableBuffer.i) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tab.i62) #6
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1096, i16 noundef zeroext 16384, i16 noundef zeroext 16384) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %415 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %415(i32 noundef 21474800) #6
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1096, i16 noundef zeroext 16384, i16 noundef zeroext 0) #6
  call void @wlc_lcnphy_set_tx_pwr_ctrl(ptr noundef %pi, i16 noundef zeroext -8192)
  %lcnphy_noise_samples = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %1, i32 0, i32 40
  %416 = ptrtoint ptr %lcnphy_noise_samples to i32
  call void @__asan_store2_noabort(i32 %416)
  store i16 5000, ptr %lcnphy_noise_samples, align 4
  call fastcc void @wlc_lcnphy_periodic_cal(ptr noundef %pi) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wlc_phy_chanspec_set(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcma_chipco_regctl_maskset(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcma_chipco_chipctl_maskset(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @write_radio_reg(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wlc_phy_txpower_recalc_target_lcnphy(ptr noundef %pi) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %temppwrctrl_capable = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 140
  %0 = ptrtoint ptr %temppwrctrl_capable to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %temppwrctrl_capable, align 1, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then39.i

if.then39.i:                                      ; preds = %entry
  %u.i = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 3
  %2 = ptrtoint ptr %u.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %u.i, align 4
  %call.i62.i = tail call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1188) #6
  %4 = ptrtoint ptr %temppwrctrl_capable to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %temppwrctrl_capable, align 1, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i.i = icmp eq i8 %5, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %call.i62.i)
  %tobool4.not.i.i = icmp ult i16 %call.i62.i, 8192
  %or.cond.i.i = select i1 %tobool.not.i.i, i1 true, i1 %tobool4.not.i.i
  br i1 %or.cond.i.i, label %if.then39.i.if.end4_crit_edge, label %if.then.i65.i

if.then39.i.if.end4_crit_edge:                    ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then.i65.i:                                    ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #8
  %call5.i.i = tail call fastcc signext i8 @wlc_lcnphy_tempcompensated_txpwrctrl(ptr noundef %pi) #6
  %conv6.i63.i = sext i8 %call5.i.i to i16
  %mul.i.i = shl nsw i16 %conv6.i63.i, 1
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1193, i16 noundef zeroext 511, i16 noundef zeroext %mul.i.i) #6
  %call10.i.i = tail call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1193) #6
  %6 = trunc i16 %call10.i.i to i8
  %7 = lshr i8 %6, 1
  %lcnphy_current_index.i64.i = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %3, i32 0, i32 77
  %8 = ptrtoint ptr %lcnphy_current_index.i64.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %lcnphy_current_index.i64.i, align 2
  br label %if.end4

if.else:                                          ; preds = %entry
  %hwpwrctrl_capable = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 139
  %9 = ptrtoint ptr %hwpwrctrl_capable to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %hwpwrctrl_capable, align 4, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool1.not = icmp eq i8 %10, 0
  br i1 %tobool1.not, label %if.else.if.end4_crit_edge, label %if.then2

if.else.if.end4_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then2:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1188) #6
  %11 = and i16 %call, -8192
  tail call void @wlc_lcnphy_set_tx_pwr_ctrl(ptr noundef %pi, i16 noundef zeroext 0)
  tail call void @wlc_lcnphy_txpower_recalc_target(ptr noundef %pi)
  tail call void @wlc_lcnphy_set_tx_pwr_ctrl(ptr noundef %pi, i16 noundef zeroext %11)
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.else.if.end4_crit_edge, %if.then.i65.i, %if.then39.i.if.end4_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wlc_phy_chanspec_set_lcnphy(ptr noundef %pi, i16 noundef zeroext %chanspec) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv1 = trunc i16 %chanspec to i8
  tail call void @wlc_phy_chanspec_radio_set(ptr noundef %pi, i16 noundef zeroext %chanspec) #6
  %radio_chanspec = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 12
  %0 = ptrtoint ptr %radio_chanspec to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %radio_chanspec, align 4
  %u.i = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 3
  %2 = ptrtoint ptr %u.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %u.i, align 4
  %4 = and i16 %1, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 14, i16 %4)
  %cmp.i = icmp eq i16 %4, 14
  br i1 %cmp.i, label %if.end.thread.i, label %if.end.i

if.end.thread.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1096, i16 noundef zeroext 768, i16 noundef zeroext 512) #6
  %lcnphy_bandedge_corr124.i = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %3, i32 0, i32 33
  %5 = ptrtoint ptr %lcnphy_bandedge_corr124.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %lcnphy_bandedge_corr124.i, align 4
  br label %if.else54.i

if.end.i:                                         ; preds = %entry
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1096, i16 noundef zeroext 768, i16 noundef zeroext 256) #6
  %lcnphy_bandedge_corr.i = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %3, i32 0, i32 33
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %4)
  %cmp5.i = icmp eq i16 %4, 1
  %spec.select.i = select i1 %cmp5.i, i32 4, i32 2
  %6 = ptrtoint ptr %lcnphy_bandedge_corr.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %spec.select.i, ptr %lcnphy_bandedge_corr.i, align 4
  %trunc.i = trunc i16 %1 to i8
  %7 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.1)
  switch i8 %trunc.i, label %if.end.i.if.else54.i_crit_edge [
    i8 12, label %if.end.i.if.then40.i_crit_edge
    i8 11, label %if.end.i.if.then40.i_crit_edge53
    i8 10, label %if.end.i.if.then40.i_crit_edge54
    i8 9, label %if.end.i.if.then40.i_crit_edge55
    i8 4, label %if.end.i.if.then40.i_crit_edge56
    i8 3, label %if.end.i.if.then40.i_crit_edge57
    i8 2, label %if.end.i.if.then40.i_crit_edge58
    i8 1, label %if.end.i.if.then40.i_crit_edge59
  ]

if.end.i.if.then40.i_crit_edge59:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then40.i

if.end.i.if.then40.i_crit_edge58:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then40.i

if.end.i.if.then40.i_crit_edge57:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then40.i

if.end.i.if.then40.i_crit_edge56:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then40.i

if.end.i.if.then40.i_crit_edge55:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then40.i

if.end.i.if.then40.i_crit_edge54:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then40.i

if.end.i.if.then40.i_crit_edge53:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then40.i

if.end.i.if.then40.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then40.i

if.end.i.if.else54.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else54.i

if.then40.i:                                      ; preds = %if.end.i.if.then40.i_crit_edge, %if.end.i.if.then40.i_crit_edge53, %if.end.i.if.then40.i_crit_edge54, %if.end.i.if.then40.i_crit_edge55, %if.end.i.if.then40.i_crit_edge56, %if.end.i.if.then40.i_crit_edge57, %if.end.i.if.then40.i_crit_edge58, %if.end.i.if.then40.i_crit_edge59
  %d11core.i = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 5
  %8 = ptrtoint ptr %d11core.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d11core.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %drv_cc.i = getelementptr inbounds %struct.bcma_bus, ptr %11, i32 0, i32 12
  tail call void @bcma_chipco_pll_write(ptr noundef %drv_cc.i, i32 noundef 2, i32 noundef 50334724) #6
  %12 = ptrtoint ptr %d11core.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %d11core.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %drv_cc43.i = getelementptr inbounds %struct.bcma_bus, ptr %15, i32 0, i32 12
  tail call void @bcma_chipco_pll_maskset(ptr noundef %drv_cc43.i, i32 noundef 3, i32 noundef -16777216, i32 noundef 0) #6
  %16 = ptrtoint ptr %d11core.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %d11core.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 8
  %drv_cc46.i = getelementptr inbounds %struct.bcma_bus, ptr %19, i32 0, i32 12
  tail call void @bcma_chipco_pll_write(ptr noundef %drv_cc46.i, i32 noundef 4, i32 noundef 536872384) #6
  %20 = ptrtoint ptr %d11core.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %d11core.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 8
  %drv_cc49.i = getelementptr inbounds %struct.bcma_bus, ptr %23, i32 0, i32 12
  %24 = ptrtoint ptr %drv_cc49.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %drv_cc49.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 8
  %ops.i.i = getelementptr inbounds %struct.bcma_bus, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ops.i.i, align 4
  %read32.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %31(ptr noundef %25, i16 noundef zeroext 1536) #6
  %or.i = or i32 %call.i.i, 1024
  %32 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %25, align 8
  %ops.i116.i = getelementptr inbounds %struct.bcma_bus, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %ops.i116.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ops.i116.i, align 4
  %write32.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %35, i32 0, i32 5
  %36 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %write32.i.i, align 4
  tail call void %37(ptr noundef %25, i16 noundef zeroext 1536, i32 noundef %or.i) #6
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 2370, i16 noundef zeroext 0) #6
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 2370, i16 noundef zeroext 0) #6
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 2363, i16 noundef zeroext 23) #6
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 2364, i16 noundef zeroext 1989) #6
  br label %wlc_lcnphy_set_chanspec_tweaks.exit

if.else54.i:                                      ; preds = %if.end.i.if.else54.i_crit_edge, %if.end.thread.i
  %d11core55.i = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 5
  %38 = ptrtoint ptr %d11core55.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %d11core55.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 8
  %drv_cc57.i = getelementptr inbounds %struct.bcma_bus, ptr %41, i32 0, i32 12
  tail call void @bcma_chipco_pll_write(ptr noundef %drv_cc57.i, i32 noundef 2, i32 noundef 51645444) #6
  %42 = ptrtoint ptr %d11core55.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %d11core55.i, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 8
  %drv_cc60.i = getelementptr inbounds %struct.bcma_bus, ptr %45, i32 0, i32 12
  tail call void @bcma_chipco_pll_maskset(ptr noundef %drv_cc60.i, i32 noundef 3, i32 noundef -16777216, i32 noundef 3355443) #6
  %46 = ptrtoint ptr %d11core55.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %d11core55.i, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 8
  %drv_cc63.i = getelementptr inbounds %struct.bcma_bus, ptr %49, i32 0, i32 12
  tail call void @bcma_chipco_pll_write(ptr noundef %drv_cc63.i, i32 noundef 4, i32 noundef 539764768) #6
  %50 = ptrtoint ptr %d11core55.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %d11core55.i, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 8
  %drv_cc66.i = getelementptr inbounds %struct.bcma_bus, ptr %53, i32 0, i32 12
  %54 = ptrtoint ptr %drv_cc66.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %drv_cc66.i, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 8
  %ops.i117.i = getelementptr inbounds %struct.bcma_bus, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %ops.i117.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ops.i117.i, align 4
  %read32.i118.i = getelementptr inbounds %struct.bcma_host_ops, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %read32.i118.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %read32.i118.i, align 4
  %call.i119.i = tail call i32 %61(ptr noundef %55, i16 noundef zeroext 1536) #6
  %or73.i = or i32 %call.i119.i, 1024
  %62 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %55, align 8
  %ops.i120.i = getelementptr inbounds %struct.bcma_bus, ptr %63, i32 0, i32 2
  %64 = ptrtoint ptr %ops.i120.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ops.i120.i, align 4
  %write32.i121.i = getelementptr inbounds %struct.bcma_host_ops, ptr %65, i32 0, i32 5
  %66 = ptrtoint ptr %write32.i121.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %write32.i121.i, align 4
  tail call void %67(ptr noundef %55, i16 noundef zeroext 1536, i32 noundef %or73.i) #6
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 2370, i16 noundef zeroext 0) #6
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 2370, i16 noundef zeroext 7) #6
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 2363, i16 noundef zeroext 8215) #6
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 2364, i16 noundef zeroext 10181) #6
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 1098, i16 noundef zeroext 132) #6
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 1098, i16 noundef zeroext 128) #6
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 1747, i16 noundef zeroext 8738) #6
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 1747, i16 noundef zeroext 8736) #6
  br label %wlc_lcnphy_set_chanspec_tweaks.exit

wlc_lcnphy_set_chanspec_tweaks.exit:              ; preds = %if.else54.i, %if.then40.i
  %.sink129.i = phi i8 [ 1, %if.else54.i ], [ 0, %if.then40.i ]
  %.sink127.i = phi i16 [ 7936, %if.else54.i ], [ 6912, %if.then40.i ]
  %.sink.i = phi i16 [ 22794, %if.else54.i ], [ 22791, %if.then40.i ]
  %sh.i122.i = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 1
  %68 = ptrtoint ptr %sh.i122.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %sh.i122.i, align 4
  %physhim.i123.i = getelementptr inbounds %struct.shared_phy, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %physhim.i123.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %physhim.i123.i, align 4
  tail call void @wlapi_switch_macfreq(ptr noundef %71, i8 noundef zeroext %.sink129.i) #6
  %lcnphy_spurmod74.i = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %3, i32 0, i32 34
  %72 = ptrtoint ptr %lcnphy_spurmod74.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 0, ptr %lcnphy_spurmod74.i, align 4
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1060, i16 noundef zeroext -256, i16 noundef zeroext %.sink127.i) #6
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 1061, i16 noundef zeroext %.sink.i) #6
  tail call void @or_phy_reg(ptr noundef %pi, i16 noundef zeroext 1098, i16 noundef zeroext 68) #6
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 1098, i16 noundef zeroext 128) #6
  tail call void @or_phy_reg(ptr noundef %pi, i16 noundef zeroext 1098, i16 noundef zeroext 68) #6
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 1098, i16 noundef zeroext 128) #6
  tail call void @mod_radio_reg(ptr noundef %pi, i16 noundef zeroext 157, i16 noundef zeroext 4, i16 noundef zeroext 4) #6
  tail call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext 158, i16 noundef zeroext 15) #6
  %73 = ptrtoint ptr %radio_chanspec to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %radio_chanspec, align 4
  %75 = and i16 %74, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %75)
  %cmp.i44 = icmp eq i16 %75, 8192
  br i1 %cmp.i44, label %for.cond.preheader.i, label %wlc_lcnphy_set_chanspec_tweaks.exit.if.end15.i_crit_edge

wlc_lcnphy_set_chanspec_tweaks.exit.if.end15.i_crit_edge: ; preds = %wlc_lcnphy_set_chanspec_tweaks.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.i

for.cond.preheader.i:                             ; preds = %wlc_lcnphy_set_chanspec_tweaks.exit
  %switch.tableidx = add i8 %conv1, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %switch.tableidx)
  %76 = icmp ult i8 %switch.tableidx, 14
  br i1 %76, label %switch.lookup, label %for.cond.preheader.i.wlc_lcnphy_radio_2064_channel_tune_4313.exit_crit_edge

for.cond.preheader.i.wlc_lcnphy_radio_2064_channel_tune_4313.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  %.pre = and i16 %chanspec, 255
  %.pre49 = zext i16 %.pre to i32
  br label %wlc_lcnphy_radio_2064_channel_tune_4313.exit

switch.lookup:                                    ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  %switch.idx.cast = zext i8 %switch.tableidx to i32
  %arrayidx14.i = getelementptr [14 x %struct.chan_info_2064_lcnphy], ptr @chan_info_2064_lcnphy, i32 0, i32 %switch.idx.cast
  br label %if.end15.i

if.end15.i:                                       ; preds = %switch.lookup, %wlc_lcnphy_set_chanspec_tweaks.exit.if.end15.i_crit_edge
  %ci.0.i = phi ptr [ %arrayidx14.i, %switch.lookup ], [ @chan_info_2064_lcnphy, %wlc_lcnphy_set_chanspec_tweaks.exit.if.end15.i_crit_edge ]
  %logen_buftune.i = getelementptr inbounds %struct.chan_info_2064_lcnphy, ptr %ci.0.i, i32 0, i32 2
  %77 = ptrtoint ptr %logen_buftune.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %logen_buftune.i, align 4
  %conv16.i = zext i8 %78 to i16
  tail call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext 42, i16 noundef zeroext %conv16.i) #6
  %logen_rccr_tx.i = getelementptr inbounds %struct.chan_info_2064_lcnphy, ptr %ci.0.i, i32 0, i32 3
  %79 = ptrtoint ptr %logen_rccr_tx.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %logen_rccr_tx.i, align 1
  %conv17.i = zext i8 %80 to i16
  tail call void @mod_radio_reg(ptr noundef %pi, i16 noundef zeroext 48, i16 noundef zeroext 3, i16 noundef zeroext %conv17.i) #6
  %txrf_mix_tune_ctrl.i = getelementptr inbounds %struct.chan_info_2064_lcnphy, ptr %ci.0.i, i32 0, i32 4
  %81 = ptrtoint ptr %txrf_mix_tune_ctrl.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %txrf_mix_tune_ctrl.i, align 2
  %conv18.i = zext i8 %82 to i16
  tail call void @mod_radio_reg(ptr noundef %pi, i16 noundef zeroext 145, i16 noundef zeroext 3, i16 noundef zeroext %conv18.i) #6
  %pa_input_tune_g.i = getelementptr inbounds %struct.chan_info_2064_lcnphy, ptr %ci.0.i, i32 0, i32 5
  %83 = ptrtoint ptr %pa_input_tune_g.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %pa_input_tune_g.i, align 1
  %conv19.i = zext i8 %84 to i16
  tail call void @mod_radio_reg(ptr noundef %pi, i16 noundef zeroext 56, i16 noundef zeroext 15, i16 noundef zeroext %conv19.i) #6
  %logen_rccr_rx.i = getelementptr inbounds %struct.chan_info_2064_lcnphy, ptr %ci.0.i, i32 0, i32 6
  %85 = ptrtoint ptr %logen_rccr_rx.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %logen_rccr_rx.i, align 4
  %conv20.i = zext i8 %86 to i16
  %shl.i = shl nuw nsw i16 %conv20.i, 2
  tail call void @mod_radio_reg(ptr noundef %pi, i16 noundef zeroext 48, i16 noundef zeroext 12, i16 noundef zeroext %shl.i) #6
  %pa_rxrf_lna1_freq_tune.i = getelementptr inbounds %struct.chan_info_2064_lcnphy, ptr %ci.0.i, i32 0, i32 7
  %87 = ptrtoint ptr %pa_rxrf_lna1_freq_tune.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %pa_rxrf_lna1_freq_tune.i, align 1
  %conv22.i = zext i8 %88 to i16
  tail call void @mod_radio_reg(ptr noundef %pi, i16 noundef zeroext 94, i16 noundef zeroext 15, i16 noundef zeroext %conv22.i) #6
  %pa_rxrf_lna2_freq_tune.i = getelementptr inbounds %struct.chan_info_2064_lcnphy, ptr %ci.0.i, i32 0, i32 8
  %89 = ptrtoint ptr %pa_rxrf_lna2_freq_tune.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %pa_rxrf_lna2_freq_tune.i, align 2
  %conv23.i = zext i8 %90 to i16
  %shl24.i = shl nuw nsw i16 %conv23.i, 4
  tail call void @mod_radio_reg(ptr noundef %pi, i16 noundef zeroext 94, i16 noundef zeroext 240, i16 noundef zeroext %shl24.i) #6
  %rxrf_rxrf_spare1.i = getelementptr inbounds %struct.chan_info_2064_lcnphy, ptr %ci.0.i, i32 0, i32 9
  %91 = ptrtoint ptr %rxrf_rxrf_spare1.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %rxrf_rxrf_spare1.i, align 1
  %conv26.i = zext i8 %92 to i16
  tail call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext 108, i16 noundef zeroext %conv26.i) #6
  %call.i = tail call zeroext i16 @read_radio_reg(ptr noundef %pi, i16 noundef zeroext 68) #6
  %call28.i = tail call zeroext i16 @read_radio_reg(ptr noundef %pi, i16 noundef zeroext 299) #6
  tail call void @or_radio_reg(ptr noundef %pi, i16 noundef zeroext 68, i16 noundef zeroext 7) #6
  tail call void @or_radio_reg(ptr noundef %pi, i16 noundef zeroext 299, i16 noundef zeroext 14) #6
  %xtalfreq.i = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 87
  %93 = ptrtoint ptr %xtalfreq.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %xtalfreq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 26000000, i32 %94)
  %cmp35.i = icmp ugt i32 %94, 26000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 52000000, i32 %94)
  %cmp40.i = icmp ugt i32 %94, 52000000
  %..i = select i1 %cmp40.i, i32 4, i32 2
  %fcal_div.0.i = select i1 %cmp35.i, i32 %..i, i32 1
  %freq.i = getelementptr inbounds %struct.chan_info_2064_lcnphy, ptr %ci.0.i, i32 0, i32 1
  %95 = ptrtoint ptr %freq.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %freq.i, align 4
  %mul.i = mul i32 %96, 3
  %mul56.i = shl i32 %94, 2
  %mul58.i = mul i32 %fcal_div.0.i, %94
  %div.i = udiv i32 %mul58.i, 1000000
  tail call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext 79, i16 noundef zeroext 2) #6
  %97 = ptrtoint ptr %xtalfreq.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %xtalfreq.i, align 4
  %mul60.i = shl nuw nsw i32 %fcal_div.0.i, 2
  %mul61.i = mul i32 %mul60.i, %98
  %div63.i = udiv i32 %mul61.i, 5000000
  %conv64.i = add nuw nsw i32 %div63.i, 255
  %conv65.i = and i32 %conv64.i, 255
  %99 = trunc i32 %conv64.i to i16
  %100 = lshr i16 %99, 2
  %conv67.i = and i16 %100, 7
  tail call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext 82, i16 noundef zeroext %conv67.i) #6
  %101 = shl nuw i16 %99, 5
  %conv71.i = and i16 %101, 96
  tail call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext 83, i16 noundef zeroext %conv71.i) #6
  %add.i = add nuw nsw i32 %conv65.i, 1
  %div.tr.i = trunc i32 %div.i to i16
  %div74.lhs.trunc.i = shl nuw i16 %div.tr.i, 3
  %div74.rhs.trunc.i = trunc i32 %add.i to i16
  %div74304.i = udiv i16 %div74.lhs.trunc.i, %div74.rhs.trunc.i
  %102 = trunc i16 %div74304.i to i8
  %conv76.i = add i8 %102, -1
  %conv77.i = zext i8 %conv76.i to i16
  tail call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext 81, i16 noundef zeroext %conv77.i) #6
  %conv78.i = zext i8 %conv76.i to i32
  %add79.i = add nuw nsw i32 %conv78.i, 1
  %mul82.i = mul nuw nsw i32 %add79.i, %add.i
  %div83.i = udiv i32 %mul82.i, %div.i
  %conv85.i = and i32 %div83.i, 255
  %mul86.i = mul nuw nsw i32 %conv85.i, 3
  %103 = ptrtoint ptr %freq.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %freq.i, align 4
  %mul88.i = mul i32 %mul86.i, %104
  %div89301.i = lshr i32 %mul88.i, 5
  %105 = trunc i32 %div89301.i to i16
  %106 = add i16 %105, -1
  %107 = lshr i16 %106, 8
  tail call void @mod_radio_reg(ptr noundef %pi, i16 noundef zeroext 83, i16 noundef zeroext 15, i16 noundef zeroext %107) #6
  tail call void @or_radio_reg(ptr noundef %pi, i16 noundef zeroext 83, i16 noundef zeroext 16) #6
  %conv99.i = and i16 %106, 255
  tail call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext 84, i16 noundef zeroext %conv99.i) #6
  %mul100.i = mul i32 %96, 187500
  %mul100.i.frozen = freeze i32 %mul100.i
  %mul56.i.frozen = freeze i32 %mul56.i
  %div101.i = udiv i32 %mul100.i.frozen, %mul56.i.frozen
  %shl102.i = shl i32 %div101.i, 4
  %108 = mul i32 %div101.i, %mul56.i.frozen
  %rem.i.decomposed = sub i32 %mul100.i.frozen, %108
  %shl104.i = shl i32 %rem.i.decomposed, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shl104.i, i32 %mul56.i)
  %cmp105.not308.i = icmp ult i32 %shl104.i, %mul56.i
  br i1 %cmp105.not308.i, label %if.end15.i.while.end.i_crit_edge, label %if.end15.i.while.body.i_crit_edge

if.end15.i.while.body.i_crit_edge:                ; preds = %if.end15.i
  br label %while.body.i

if.end15.i.while.end.i_crit_edge:                 ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end15.i.while.body.i_crit_edge
  %div_frac.0310.i = phi i32 [ %sub108.i, %while.body.i.while.body.i_crit_edge ], [ %shl104.i, %if.end15.i.while.body.i_crit_edge ]
  %div_int.0309.i = phi i32 [ %inc107.i, %while.body.i.while.body.i_crit_edge ], [ %shl102.i, %if.end15.i.while.body.i_crit_edge ]
  %inc107.i = add i32 %div_int.0309.i, 1
  %sub108.i = sub i32 %div_frac.0310.i, %mul56.i
  %cmp105.not.i = icmp ult i32 %sub108.i, %mul56.i
  br i1 %cmp105.not.i, label %while.body.i.while.end.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %if.end15.i.while.end.i_crit_edge
  %div_int.0.lcssa.i = phi i32 [ %shl102.i, %if.end15.i.while.end.i_crit_edge ], [ %inc107.i, %while.body.i.while.end.i_crit_edge ]
  %div_frac.0.lcssa.i = phi i32 [ %shl104.i, %if.end15.i.while.end.i_crit_edge ], [ %sub108.i, %while.body.i.while.end.i_crit_edge ]
  %div_frac.0.lcssa.i.frozen = freeze i32 %div_frac.0.lcssa.i
  %mul56.i.frozen52 = freeze i32 %mul56.i
  %div.i.i = udiv i32 %div_frac.0.lcssa.i.frozen, %mul56.i.frozen52
  %109 = mul i32 %div.i.i, %mul56.i.frozen52
  %rem.i.i.decomposed = sub i32 %div_frac.0.lcssa.i.frozen, %109
  %shr.i.i = lshr exact i32 %mul56.i, 1
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.end.i
  %remainder.024.i.i = phi i32 [ %remainder.1.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %rem.i.i.decomposed, %while.end.i ]
  %quotient.023.i.i = phi i32 [ %quotient.1.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %div.i.i, %while.end.i ]
  %precision.addr.022.i.i = phi i8 [ %dec.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ 20, %while.end.i ]
  %dec.i.i = add nsw i8 %precision.addr.022.i.i, -1
  %shl.i.i = shl i32 %quotient.023.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %remainder.024.i.i, i32 %shr.i.i)
  %cmp.not.i.i = icmp ult i32 %remainder.024.i.i, %shr.i.i
  %not.cmp.not.i.i = xor i1 %cmp.not.i.i, true
  %inc.i.i = zext i1 %not.cmp.not.i.i to i32
  %quotient.1.i.i = or i32 %shl.i.i, %inc.i.i
  %sub.i.i = select i1 %cmp.not.i.i, i32 0, i32 %shr.i.i
  %remainder.1.i.v.i = sub i32 %remainder.024.i.i, %sub.i.i
  %remainder.1.i.i = shl i32 %remainder.1.i.v.i, 1
  %tobool.not.i.i = icmp eq i8 %dec.i.i, 0
  br i1 %tobool.not.i.i, label %wlc_lcnphy_qdiv_roundup.exit.i, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.i

wlc_lcnphy_qdiv_roundup.exit.i:                   ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %remainder.1.i.i, i32 %shr.i.i)
  %cmp4.not.i.i = icmp uge i32 %remainder.1.i.i, %shr.i.i
  %inc6.i.i = zext i1 %cmp4.not.i.i to i32
  %spec.select.i.i = add i32 %quotient.1.i.i, %inc6.i.i
  %110 = trunc i32 %div_int.0.lcssa.i to i16
  %111 = lshr i16 %110, 4
  %conv112.i = and i16 %111, 255
  tail call void @mod_radio_reg(ptr noundef %pi, i16 noundef zeroext 69, i16 noundef zeroext 31, i16 noundef zeroext %conv112.i) #6
  %div_int.0.tr.i = trunc i32 %div_int.0.lcssa.i to i8
  %conv114.i = shl i8 %div_int.0.tr.i, 4
  %conv115.i = zext i8 %conv114.i to i16
  tail call void @mod_radio_reg(ptr noundef %pi, i16 noundef zeroext 70, i16 noundef zeroext 496, i16 noundef zeroext %conv115.i) #6
  %shr116.i = lshr i32 %spec.select.i.i, 16
  %112 = trunc i32 %shr116.i to i16
  %conv118.i = and i16 %112, 255
  tail call void @mod_radio_reg(ptr noundef %pi, i16 noundef zeroext 70, i16 noundef zeroext 15, i16 noundef zeroext %conv118.i) #6
  %113 = trunc i32 %spec.select.i.i to i16
  %114 = lshr i16 %113, 8
  tail call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext 71, i16 noundef zeroext %114) #6
  %conv127.i = and i16 %113, 255
  tail call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext 72, i16 noundef zeroext %conv127.i) #6
  tail call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext 64, i16 noundef zeroext 251) #6
  tail call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext 65, i16 noundef zeroext 154) #6
  tail call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext 66, i16 noundef zeroext 163) #6
  tail call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext 67, i16 noundef zeroext 12) #6
  %div131302.i = lshr i32 %mul.i, 1
  %115 = mul i32 %div131302.i, 41
  %mul133.i = add i32 %115, -123000
  %div134.i = udiv i32 %mul133.i, 1200
  %116 = trunc i32 %div134.i to i16
  %div139.lhs.trunc.i = add i16 %116, 27
  %div139305.i = udiv i16 %div139.lhs.trunc.i, 3
  %117 = and i16 %div139305.i, 255
  %conv157.i = zext i16 %117 to i32
  %div158.i = udiv i32 125000, %conv157.i
  %div160.i = udiv i32 %div158.i, 39
  %118 = trunc i32 %div160.i to i16
  %conv162.i = and i16 %118, 255
  tail call void @mod_radio_reg(ptr noundef %pi, i16 noundef zeroext 60, i16 noundef zeroext 63, i16 noundef zeroext %conv162.i) #6
  %conv1.mask48 = and i16 %chanspec, 255
  %conv163.i = zext i16 %conv1.mask48 to i32
  %119 = add i8 %conv1, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %119)
  %120 = icmp ult i8 %119, 5
  %.325.i = select i1 %120, i16 8, i16 7
  tail call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext 60, i16 noundef zeroext %.325.i) #6
  tail call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext 61, i16 noundef zeroext 3) #6
  tail call void @mod_radio_reg(ptr noundef %pi, i16 noundef zeroext 68, i16 noundef zeroext 12, i16 noundef zeroext 12) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %121 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %121(i32 noundef 214748) #6
  tail call void @mod_radio_reg(ptr noundef %pi, i16 noundef zeroext 87, i16 noundef zeroext 8, i16 noundef zeroext 8) #6
  %call.i.i45 = tail call zeroext i16 @read_radio_reg(ptr noundef %pi, i16 noundef zeroext 86) #6
  %122 = trunc i16 %call.i.i45 to i8
  %conv2.i.i = and i8 %122, -8
  %conv3.i.i = zext i8 %conv2.i.i to i16
  tail call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext 86, i16 noundef zeroext %conv3.i.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %123 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %123(i32 noundef 214748) #6
  %.mask.i.i = and i16 %call.i.i45, 248
  %124 = or i8 %conv2.i.i, 3
  %conv5.i.i = zext i8 %124 to i16
  tail call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext 86, i16 noundef zeroext %conv5.i.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %125 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %125(i32 noundef 214748) #6
  %126 = or i16 %.mask.i.i, 7
  tail call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext 86, i16 noundef zeroext %126) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %127 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %127(i32 noundef 64424400) #6
  tail call void @mod_radio_reg(ptr noundef %pi, i16 noundef zeroext 87, i16 noundef zeroext 8, i16 noundef zeroext 0) #6
  %conv172.i = and i16 %call.i, 255
  tail call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext 68, i16 noundef zeroext %conv172.i) #6
  %conv173.i = and i16 %call28.i, 255
  tail call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext 299, i16 noundef zeroext %conv173.i) #6
  %phy_rev.i = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 7, i32 1
  %128 = ptrtoint ptr %phy_rev.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %phy_rev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %129)
  %cmp174.i = icmp eq i32 %129, 1
  br i1 %cmp174.i, label %if.then176.i, label %wlc_lcnphy_qdiv_roundup.exit.i.if.end177.i_crit_edge

wlc_lcnphy_qdiv_roundup.exit.i.if.end177.i_crit_edge: ; preds = %wlc_lcnphy_qdiv_roundup.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end177.i

if.then176.i:                                     ; preds = %wlc_lcnphy_qdiv_roundup.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext 56, i16 noundef zeroext 3) #6
  tail call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext 145, i16 noundef zeroext 7) #6
  br label %if.end177.i

if.end177.i:                                      ; preds = %if.then176.i, %wlc_lcnphy_qdiv_roundup.exit.i.if.end177.i_crit_edge
  %130 = ptrtoint ptr %sh.i122.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %sh.i122.i, align 4
  %boardflags.i = getelementptr inbounds %struct.shared_phy, ptr %131, i32 0, i32 16
  %132 = ptrtoint ptr %boardflags.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %boardflags.i, align 4
  %and178.i = and i32 %133, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and178.i)
  %tobool179.not.i = icmp eq i32 %and178.i, 0
  br i1 %tobool179.not.i, label %if.then180.i, label %if.end177.i.wlc_lcnphy_radio_2064_channel_tune_4313.exit_crit_edge

if.end177.i.wlc_lcnphy_radio_2064_channel_tune_4313.exit_crit_edge: ; preds = %if.end177.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %wlc_lcnphy_radio_2064_channel_tune_4313.exit

if.then180.i:                                     ; preds = %if.end177.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext 42, i16 noundef zeroext 15) #6
  tail call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext 145, i16 noundef zeroext 3) #6
  tail call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext 56, i16 noundef zeroext 3) #6
  %sub182.i = add nsw i32 %conv163.i, -1
  %arrayidx183.i = getelementptr [14 x i8], ptr @wlc_lcnphy_radio_2064_channel_tune_4313.reg038, i32 0, i32 %sub182.i
  %134 = ptrtoint ptr %arrayidx183.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %arrayidx183.i, align 1
  %conv184.i = zext i8 %135 to i16
  tail call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext 56, i16 noundef zeroext %conv184.i) #6
  br label %wlc_lcnphy_radio_2064_channel_tune_4313.exit

wlc_lcnphy_radio_2064_channel_tune_4313.exit:     ; preds = %if.then180.i, %if.end177.i.wlc_lcnphy_radio_2064_channel_tune_4313.exit_crit_edge, %for.cond.preheader.i.wlc_lcnphy_radio_2064_channel_tune_4313.exit_crit_edge
  %conv2.pre-phi = phi i32 [ %.pre49, %for.cond.preheader.i.wlc_lcnphy_radio_2064_channel_tune_4313.exit_crit_edge ], [ %conv163.i, %if.end177.i.wlc_lcnphy_radio_2064_channel_tune_4313.exit_crit_edge ], [ %conv163.i, %if.then180.i ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %136 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %136(i32 noundef 214748000) #6
  %call.i46 = tail call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1084) #6
  %call1.i = tail call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1083) #6
  %or.i47 = or i16 %call.i46, 1
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 1084, i16 noundef zeroext %or.i47) #6
  %or4.i = or i16 %call1.i, 1
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 1083, i16 noundef zeroext %or4.i) #6
  %137 = and i16 %call.i46, -2
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 1084, i16 noundef zeroext %137) #6
  %138 = and i16 %call1.i, -2
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 1083, i16 noundef zeroext %138) #6
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 1084, i16 noundef zeroext %call.i46) #6
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 1083, i16 noundef zeroext %call1.i) #6
  %sub = add nsw i32 %conv2.pre-phi, -1
  %arrayidx = getelementptr [14 x %struct.lcnphy_sfo_cfg], ptr @lcnphy_sfo_cfg, i32 0, i32 %sub
  %139 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %arrayidx, align 2
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 1623, i16 noundef zeroext %140) #6
  %ptcentreFactor = getelementptr [14 x %struct.lcnphy_sfo_cfg], ptr @lcnphy_sfo_cfg, i32 0, i32 %sub, i32 1
  %141 = ptrtoint ptr %ptcentreFactor to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %ptcentreFactor, align 2
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 1624, i16 noundef zeroext %142) #6
  %143 = ptrtoint ptr %radio_chanspec to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %radio_chanspec, align 4
  %145 = and i16 %144, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 14, i16 %145)
  %cmp = icmp eq i16 %145, 14
  %. = select i1 %cmp, i16 512, i16 256
  %.51 = select i1 %cmp, i16 3, i16 2
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1096, i16 noundef zeroext 768, i16 noundef zeroext %.) #6
  tail call fastcc void @wlc_lcnphy_load_tx_iir_filter(ptr noundef %pi, i1 noundef zeroext false, i16 noundef signext %.51)
  %146 = ptrtoint ptr %sh.i122.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %sh.i122.i, align 4
  %boardflags = getelementptr inbounds %struct.shared_phy, ptr %147, i32 0, i32 16
  %148 = ptrtoint ptr %boardflags to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %boardflags, align 4
  %and13 = and i32 %149, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool.not = icmp eq i32 %and13, 0
  br i1 %tobool.not, label %wlc_lcnphy_radio_2064_channel_tune_4313.exit.if.end18_crit_edge, label %if.then14

wlc_lcnphy_radio_2064_channel_tune_4313.exit.if.end18_crit_edge: ; preds = %wlc_lcnphy_radio_2064_channel_tune_4313.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then14:                                        ; preds = %wlc_lcnphy_radio_2064_channel_tune_4313.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @wlc_lcnphy_load_tx_iir_filter(ptr noundef %pi, i1 noundef zeroext true, i16 noundef signext 0)
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %wlc_lcnphy_radio_2064_channel_tune_4313.exit.if.end18_crit_edge
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1259, i16 noundef zeroext 56, i16 noundef zeroext 8) #6
  %hwpwrctrl_capable = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 139
  %150 = ptrtoint ptr %hwpwrctrl_capable to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %hwpwrctrl_capable, align 4, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %151)
  %tobool19.not = icmp eq i8 %151, 0
  br i1 %tobool19.not, label %if.end18.if.end21_crit_edge, label %if.then20

if.end18.if.end21_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @wlc_lcnphy_tssi_setup(ptr noundef %pi)
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end18.if.end21_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wlc_phy_chanspec_radio_set(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wlc_lcnphy_load_tx_iir_filter(ptr noundef %pi, i1 noundef zeroext %is_ofdm, i16 noundef signext %filt_type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %filt_type)
  %cmp30 = icmp eq i16 %filt_type, 0
  br i1 %is_ofdm, label %for.body25.preheader, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  br i1 %cmp30, label %for.body.preheader.for.body14.preheader_crit_edge, label %for.inc

for.body.preheader.for.body14.preheader_crit_edge: ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body14.preheader

for.body25.preheader:                             ; preds = %entry
  br i1 %cmp30, label %for.body25.preheader.for.body45.preheader_crit_edge, label %for.inc35

for.body25.preheader.for.body45.preheader_crit_edge: ; preds = %for.body25.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body45.preheader

for.inc:                                          ; preds = %for.body.preheader
  %switch.tableidx = add i16 %filt_type, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 30, i16 %switch.tableidx)
  %0 = icmp ult i16 %switch.tableidx, 30
  br i1 %0, label %switch.hole_check, label %for.inc.if.end55_crit_edge

for.inc.if.end55_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55

switch.hole_check:                                ; preds = %for.inc
  %switch.maskindex = zext i16 %switch.tableidx to i32
  %switch.shifted = lshr i32 670564359, %switch.maskindex
  %1 = and i32 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %switch.lobit.not = icmp eq i32 %1, 0
  br i1 %switch.lobit.not, label %switch.hole_check.if.end55_crit_edge, label %switch.lookup

switch.hole_check.if.end55_crit_edge:             ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  %2 = sext i16 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [30 x i32], ptr @switch.table.wlc_lcnphy_load_tx_iir_filter, i32 0, i32 %2
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %for.body14.preheader

for.body14.preheader:                             ; preds = %switch.lookup, %for.body.preheader.for.body14.preheader_crit_edge
  %j.012.lcssa = phi i32 [ 0, %for.body.preheader.for.body14.preheader_crit_edge ], [ %switch.load, %switch.lookup ]
  %arrayidx17 = getelementptr [13 x [17 x i16]], ptr @LCNPHY_txdigfiltcoeffs_cck, i32 0, i32 %j.012.lcssa, i32 1
  %4 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx17, align 2
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 2320, i16 noundef zeroext %5) #6
  %arrayidx17.1 = getelementptr [13 x [17 x i16]], ptr @LCNPHY_txdigfiltcoeffs_cck, i32 0, i32 %j.012.lcssa, i32 2
  %6 = ptrtoint ptr %arrayidx17.1 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx17.1, align 2
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 2334, i16 noundef zeroext %7) #6
  %arrayidx17.2 = getelementptr [13 x [17 x i16]], ptr @LCNPHY_txdigfiltcoeffs_cck, i32 0, i32 %j.012.lcssa, i32 3
  %8 = ptrtoint ptr %arrayidx17.2 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx17.2, align 2
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 2335, i16 noundef zeroext %9) #6
  %arrayidx17.3 = getelementptr [13 x [17 x i16]], ptr @LCNPHY_txdigfiltcoeffs_cck, i32 0, i32 %j.012.lcssa, i32 4
  %10 = ptrtoint ptr %arrayidx17.3 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx17.3, align 2
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 2340, i16 noundef zeroext %11) #6
  %arrayidx17.4 = getelementptr [13 x [17 x i16]], ptr @LCNPHY_txdigfiltcoeffs_cck, i32 0, i32 %j.012.lcssa, i32 5
  %12 = ptrtoint ptr %arrayidx17.4 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx17.4, align 2
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 2341, i16 noundef zeroext %13) #6
  %arrayidx17.5 = getelementptr [13 x [17 x i16]], ptr @LCNPHY_txdigfiltcoeffs_cck, i32 0, i32 %j.012.lcssa, i32 6
  %14 = ptrtoint ptr %arrayidx17.5 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx17.5, align 2
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 2342, i16 noundef zeroext %15) #6
  %arrayidx17.6 = getelementptr [13 x [17 x i16]], ptr @LCNPHY_txdigfiltcoeffs_cck, i32 0, i32 %j.012.lcssa, i32 7
  %16 = ptrtoint ptr %arrayidx17.6 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx17.6, align 2
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 2336, i16 noundef zeroext %17) #6
  %arrayidx17.7 = getelementptr [13 x [17 x i16]], ptr @LCNPHY_txdigfiltcoeffs_cck, i32 0, i32 %j.012.lcssa, i32 8
  %18 = ptrtoint ptr %arrayidx17.7 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx17.7, align 2
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 2337, i16 noundef zeroext %19) #6
  %arrayidx17.8 = getelementptr [13 x [17 x i16]], ptr @LCNPHY_txdigfiltcoeffs_cck, i32 0, i32 %j.012.lcssa, i32 9
  %20 = ptrtoint ptr %arrayidx17.8 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx17.8, align 2
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 2343, i16 noundef zeroext %21) #6
  %arrayidx17.9 = getelementptr [13 x [17 x i16]], ptr @LCNPHY_txdigfiltcoeffs_cck, i32 0, i32 %j.012.lcssa, i32 10
  %22 = ptrtoint ptr %arrayidx17.9 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx17.9, align 2
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 2344, i16 noundef zeroext %23) #6
  %arrayidx17.10 = getelementptr [13 x [17 x i16]], ptr @LCNPHY_txdigfiltcoeffs_cck, i32 0, i32 %j.012.lcssa, i32 11
  %24 = ptrtoint ptr %arrayidx17.10 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx17.10, align 2
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 2345, i16 noundef zeroext %25) #6
  %arrayidx17.11 = getelementptr [13 x [17 x i16]], ptr @LCNPHY_txdigfiltcoeffs_cck, i32 0, i32 %j.012.lcssa, i32 12
  %26 = ptrtoint ptr %arrayidx17.11 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx17.11, align 2
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 2338, i16 noundef zeroext %27) #6
  %arrayidx17.12 = getelementptr [13 x [17 x i16]], ptr @LCNPHY_txdigfiltcoeffs_cck, i32 0, i32 %j.012.lcssa, i32 13
  %28 = ptrtoint ptr %arrayidx17.12 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx17.12, align 2
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 2339, i16 noundef zeroext %29) #6
  %arrayidx17.13 = getelementptr [13 x [17 x i16]], ptr @LCNPHY_txdigfiltcoeffs_cck, i32 0, i32 %j.012.lcssa, i32 14
  %30 = ptrtoint ptr %arrayidx17.13 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %arrayidx17.13, align 2
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 2352, i16 noundef zeroext %31) #6
  %arrayidx17.14 = getelementptr [13 x [17 x i16]], ptr @LCNPHY_txdigfiltcoeffs_cck, i32 0, i32 %j.012.lcssa, i32 15
  %32 = ptrtoint ptr %arrayidx17.14 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %arrayidx17.14, align 2
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 2353, i16 noundef zeroext %33) #6
  %arrayidx17.15 = getelementptr [13 x [17 x i16]], ptr @LCNPHY_txdigfiltcoeffs_cck, i32 0, i32 %j.012.lcssa, i32 16
  br label %if.end55.sink.split

for.inc35:                                        ; preds = %for.body25.preheader
  %34 = zext i16 %filt_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.2)
  switch i16 %filt_type, label %for.inc35.if.end55_crit_edge [
    i16 1, label %for.inc35.for.body45.preheader_crit_edge
    i16 2, label %for.body45.preheader.fold.split
  ]

for.inc35.for.body45.preheader_crit_edge:         ; preds = %for.inc35
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body45.preheader

for.inc35.if.end55_crit_edge:                     ; preds = %for.inc35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55

for.body45.preheader.fold.split:                  ; preds = %for.inc35
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body45.preheader

for.body45.preheader:                             ; preds = %for.body45.preheader.fold.split, %for.inc35.for.body45.preheader_crit_edge, %for.body25.preheader.for.body45.preheader_crit_edge
  %j.214.lcssa = phi i32 [ 0, %for.body25.preheader.for.body45.preheader_crit_edge ], [ 1, %for.inc35.for.body45.preheader_crit_edge ], [ 2, %for.body45.preheader.fold.split ]
  %arrayidx50 = getelementptr [3 x [17 x i16]], ptr @LCNPHY_txdigfiltcoeffs_ofdm, i32 0, i32 %j.214.lcssa, i32 1
  %35 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %arrayidx50, align 2
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 2319, i16 noundef zeroext %36) #6
  %arrayidx50.1 = getelementptr [3 x [17 x i16]], ptr @LCNPHY_txdigfiltcoeffs_ofdm, i32 0, i32 %j.214.lcssa, i32 2
  %37 = ptrtoint ptr %arrayidx50.1 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %arrayidx50.1, align 2
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 2304, i16 noundef zeroext %38) #6
  %arrayidx50.2 = getelementptr [3 x [17 x i16]], ptr @LCNPHY_txdigfiltcoeffs_ofdm, i32 0, i32 %j.214.lcssa, i32 3
  %39 = ptrtoint ptr %arrayidx50.2 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %arrayidx50.2, align 2
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 2305, i16 noundef zeroext %40) #6
  %arrayidx50.3 = getelementptr [3 x [17 x i16]], ptr @LCNPHY_txdigfiltcoeffs_ofdm, i32 0, i32 %j.214.lcssa, i32 4
  %41 = ptrtoint ptr %arrayidx50.3 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %arrayidx50.3, align 2
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 2310, i16 noundef zeroext %42) #6
  %arrayidx50.4 = getelementptr [3 x [17 x i16]], ptr @LCNPHY_txdigfiltcoeffs_ofdm, i32 0, i32 %j.214.lcssa, i32 5
  %43 = ptrtoint ptr %arrayidx50.4 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %arrayidx50.4, align 2
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 2311, i16 noundef zeroext %44) #6
  %arrayidx50.5 = getelementptr [3 x [17 x i16]], ptr @LCNPHY_txdigfiltcoeffs_ofdm, i32 0, i32 %j.214.lcssa, i32 6
  %45 = ptrtoint ptr %arrayidx50.5 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %arrayidx50.5, align 2
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 2312, i16 noundef zeroext %46) #6
  %arrayidx50.6 = getelementptr [3 x [17 x i16]], ptr @LCNPHY_txdigfiltcoeffs_ofdm, i32 0, i32 %j.214.lcssa, i32 7
  %47 = ptrtoint ptr %arrayidx50.6 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %arrayidx50.6, align 2
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 2306, i16 noundef zeroext %48) #6
  %arrayidx50.7 = getelementptr [3 x [17 x i16]], ptr @LCNPHY_txdigfiltcoeffs_ofdm, i32 0, i32 %j.214.lcssa, i32 8
  %49 = ptrtoint ptr %arrayidx50.7 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %arrayidx50.7, align 2
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 2307, i16 noundef zeroext %50) #6
  %arrayidx50.8 = getelementptr [3 x [17 x i16]], ptr @LCNPHY_txdigfiltcoeffs_ofdm, i32 0, i32 %j.214.lcssa, i32 9
  %51 = ptrtoint ptr %arrayidx50.8 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %arrayidx50.8, align 2
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 2313, i16 noundef zeroext %52) #6
  %arrayidx50.9 = getelementptr [3 x [17 x i16]], ptr @LCNPHY_txdigfiltcoeffs_ofdm, i32 0, i32 %j.214.lcssa, i32 10
  %53 = ptrtoint ptr %arrayidx50.9 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %arrayidx50.9, align 2
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 2314, i16 noundef zeroext %54) #6
  %arrayidx50.10 = getelementptr [3 x [17 x i16]], ptr @LCNPHY_txdigfiltcoeffs_ofdm, i32 0, i32 %j.214.lcssa, i32 11
  %55 = ptrtoint ptr %arrayidx50.10 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %arrayidx50.10, align 2
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 2315, i16 noundef zeroext %56) #6
  %arrayidx50.11 = getelementptr [3 x [17 x i16]], ptr @LCNPHY_txdigfiltcoeffs_ofdm, i32 0, i32 %j.214.lcssa, i32 12
  %57 = ptrtoint ptr %arrayidx50.11 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %arrayidx50.11, align 2
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 2308, i16 noundef zeroext %58) #6
  %arrayidx50.12 = getelementptr [3 x [17 x i16]], ptr @LCNPHY_txdigfiltcoeffs_ofdm, i32 0, i32 %j.214.lcssa, i32 13
  %59 = ptrtoint ptr %arrayidx50.12 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %arrayidx50.12, align 2
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 2309, i16 noundef zeroext %60) #6
  %arrayidx50.13 = getelementptr [3 x [17 x i16]], ptr @LCNPHY_txdigfiltcoeffs_ofdm, i32 0, i32 %j.214.lcssa, i32 14
  %61 = ptrtoint ptr %arrayidx50.13 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %arrayidx50.13, align 2
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 2316, i16 noundef zeroext %62) #6
  %arrayidx50.14 = getelementptr [3 x [17 x i16]], ptr @LCNPHY_txdigfiltcoeffs_ofdm, i32 0, i32 %j.214.lcssa, i32 15
  %63 = ptrtoint ptr %arrayidx50.14 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %arrayidx50.14, align 2
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 2317, i16 noundef zeroext %64) #6
  %arrayidx50.15 = getelementptr [3 x [17 x i16]], ptr @LCNPHY_txdigfiltcoeffs_ofdm, i32 0, i32 %j.214.lcssa, i32 16
  br label %if.end55.sink.split

if.end55.sink.split:                              ; preds = %for.body45.preheader, %for.body14.preheader
  %arrayidx17.15.sink = phi ptr [ %arrayidx17.15, %for.body14.preheader ], [ %arrayidx50.15, %for.body45.preheader ]
  %.sink = phi i16 [ 2354, %for.body14.preheader ], [ 2318, %for.body45.preheader ]
  %65 = ptrtoint ptr %arrayidx17.15.sink to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %arrayidx17.15.sink, align 2
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext %.sink, i16 noundef zeroext %66) #6
  br label %if.end55

if.end55:                                         ; preds = %if.end55.sink.split, %for.inc35.if.end55_crit_edge, %switch.hole_check.if.end55_crit_edge, %for.inc.if.end55_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wlc_lcnphy_tssi_setup(ptr noundef %pi) unnamed_addr #0 align 64 {
entry:
  %data_buf.i = alloca [64 x i32], align 4
  %tab.i = alloca %struct.phytbl_info, align 4
  %tab = alloca %struct.phytbl_info, align 4
  %rfseq = alloca i32, align 4
  %ind = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tab) #6
  %0 = getelementptr inbounds %struct.phytbl_info, ptr %tab, i32 0, i32 1
  %1 = getelementptr inbounds %struct.phytbl_info, ptr %tab, i32 0, i32 2
  %2 = getelementptr inbounds %struct.phytbl_info, ptr %tab, i32 0, i32 3
  %3 = getelementptr inbounds %struct.phytbl_info, ptr %tab, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rfseq) #6
  %4 = ptrtoint ptr %rfseq to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %rfseq, align 4, !annotation !48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ind) #6
  %sh = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 1
  %5 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sh, align 4
  %boardflags = getelementptr inbounds %struct.shared_phy, ptr %6, i32 0, i32 16
  %7 = ptrtoint ptr %boardflags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %boardflags, align 4
  %and = and i32 %8, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 7, ptr %1, align 4
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 32, ptr %3, align 4
  %11 = ptrtoint ptr %tab to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %ind, ptr %tab, align 4
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %0, align 4
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %2, align 4
  %14 = ptrtoint ptr %ind to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %ind, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  call void @wlc_phy_write_table(ptr noundef %pi, ptr noundef nonnull %tab, i16 noundef zeroext 1109, i16 noundef zeroext 1111, i16 noundef zeroext 1110) #6
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %2, align 4
  %inc = add i32 %16, 1
  store i32 %inc, ptr %2, align 4
  %17 = ptrtoint ptr %ind to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ind, align 4
  %inc2 = add i32 %18, 1
  store i32 %inc2, ptr %ind, align 4
  %cmp = icmp ult i32 %inc2, 128
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  %19 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 704, ptr %2, align 4
  %20 = ptrtoint ptr %ind to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %ind, align 4
  br label %for.body6

for.body6:                                        ; preds = %for.body6.for.body6_crit_edge, %for.end
  call void @wlc_phy_write_table(ptr noundef %pi, ptr noundef nonnull %tab, i16 noundef zeroext 1109, i16 noundef zeroext 1111, i16 noundef zeroext 1110) #6
  %21 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %2, align 4
  %inc8 = add i32 %22, 1
  store i32 %inc8, ptr %2, align 4
  %23 = ptrtoint ptr %ind to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ind, align 4
  %inc10 = add i32 %24, 1
  store i32 %inc10, ptr %ind, align 4
  %cmp5 = icmp ult i32 %inc10, 128
  br i1 %cmp5, label %for.body6.for.body6_crit_edge, label %for.end11

for.body6.for.body6_crit_edge:                    ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body6

for.end11:                                        ; preds = %for.body6
  %.103 = select i1 %tobool.not, i8 14, i8 1
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1283, i16 noundef zeroext 1, i16 noundef zeroext 0) #6
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1283, i16 noundef zeroext 4, i16 noundef zeroext 0) #6
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1283, i16 noundef zeroext 16, i16 noundef zeroext 16) #6
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1239, i16 noundef zeroext 1, i16 noundef zeroext 1) #6
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1239, i16 noundef zeroext 64, i16 noundef zeroext 64) #6
  br i1 %tobool.not, label %if.then.i, label %if.else3.i

if.then.i:                                        ; preds = %for.end11
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1241, i16 noundef zeroext 4, i16 noundef zeroext 0) #6
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1241, i16 noundef zeroext 8, i16 noundef zeroext 8) #6
  %phy_rev.i = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 7, i32 1
  %25 = ptrtoint ptr %phy_rev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %phy_rev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %26)
  %cmp1.i = icmp eq i32 %26, 2
  br i1 %cmp1.i, label %if.then2.i, label %if.else.i

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @mod_radio_reg(ptr noundef %pi, i16 noundef zeroext 134, i16 noundef zeroext 4, i16 noundef zeroext 4) #6
  br label %if.end10.thread.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @mod_radio_reg(ptr noundef %pi, i16 noundef zeroext 58, i16 noundef zeroext 1, i16 noundef zeroext 1) #6
  call void @mod_radio_reg(ptr noundef %pi, i16 noundef zeroext 282, i16 noundef zeroext 8, i16 noundef zeroext 8) #6
  call void @mod_radio_reg(ptr noundef %pi, i16 noundef zeroext 40, i16 noundef zeroext 1, i16 noundef zeroext 0) #6
  call void @mod_radio_reg(ptr noundef %pi, i16 noundef zeroext 282, i16 noundef zeroext 4, i16 noundef zeroext 4) #6
  call void @mod_radio_reg(ptr noundef %pi, i16 noundef zeroext 54, i16 noundef zeroext 16, i16 noundef zeroext 0) #6
  call void @mod_radio_reg(ptr noundef %pi, i16 noundef zeroext 282, i16 noundef zeroext 16, i16 noundef zeroext 16) #6
  call void @mod_radio_reg(ptr noundef %pi, i16 noundef zeroext 54, i16 noundef zeroext 3, i16 noundef zeroext 0) #6
  call void @mod_radio_reg(ptr noundef %pi, i16 noundef zeroext 53, i16 noundef zeroext 255, i16 noundef zeroext 119) #6
  call void @mod_radio_reg(ptr noundef %pi, i16 noundef zeroext 40, i16 noundef zeroext 30, i16 noundef zeroext 28) #6
  call void @mod_radio_reg(ptr noundef %pi, i16 noundef zeroext 274, i16 noundef zeroext 128, i16 noundef zeroext 128) #6
  call void @mod_radio_reg(ptr noundef %pi, i16 noundef zeroext 5, i16 noundef zeroext 7, i16 noundef zeroext 2) #6
  call void @mod_radio_reg(ptr noundef %pi, i16 noundef zeroext 41, i16 noundef zeroext 240, i16 noundef zeroext 0) #6
  br label %if.end10.thread.i

if.else3.i:                                       ; preds = %for.end11
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1241, i16 noundef zeroext 4, i16 noundef zeroext 4) #6
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1241, i16 noundef zeroext 8, i16 noundef zeroext 0) #6
  %phy_rev5.i = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 7, i32 1
  %27 = ptrtoint ptr %phy_rev5.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %phy_rev5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %28)
  %cmp6.i = icmp eq i32 %28, 2
  br i1 %cmp6.i, label %if.then7.i, label %if.else8.i

if.then7.i:                                       ; preds = %if.else3.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @mod_radio_reg(ptr noundef %pi, i16 noundef zeroext 134, i16 noundef zeroext 4, i16 noundef zeroext 4) #6
  br label %if.then12.i

if.else8.i:                                       ; preds = %if.else3.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @mod_radio_reg(ptr noundef %pi, i16 noundef zeroext 58, i16 noundef zeroext 1, i16 noundef zeroext 0) #6
  call void @mod_radio_reg(ptr noundef %pi, i16 noundef zeroext 282, i16 noundef zeroext 8, i16 noundef zeroext 8) #6
  br label %if.then12.i

if.end10.thread.i:                                ; preds = %if.else.i, %if.then2.i
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1591, i16 noundef zeroext -16384, i16 noundef zeroext 0) #6
  br label %wlc_lcnphy_set_tssi_mux.exit

if.then12.i:                                      ; preds = %if.else8.i, %if.then7.i
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1591, i16 noundef zeroext -16384, i16 noundef zeroext 0) #6
  call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext 127, i16 noundef zeroext 1) #6
  call void @mod_radio_reg(ptr noundef %pi, i16 noundef zeroext 5, i16 noundef zeroext 7, i16 noundef zeroext 2) #6
  call void @mod_radio_reg(ptr noundef %pi, i16 noundef zeroext 274, i16 noundef zeroext 128, i16 noundef zeroext 128) #6
  call void @mod_radio_reg(ptr noundef %pi, i16 noundef zeroext 40, i16 noundef zeroext 31, i16 noundef zeroext 3) #6
  br label %wlc_lcnphy_set_tssi_mux.exit

wlc_lcnphy_set_tssi_mux.exit:                     ; preds = %if.then12.i, %if.end10.thread.i
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1188, i16 noundef zeroext 16384, i16 noundef zeroext 0) #6
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1188, i16 noundef zeroext -32768, i16 noundef zeroext -32768) #6
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1232, i16 noundef zeroext 32, i16 noundef zeroext 0) #6
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1188, i16 noundef zeroext 511, i16 noundef zeroext 0) #6
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1189, i16 noundef zeroext 255, i16 noundef zeroext 255) #6
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1189, i16 noundef zeroext 28672, i16 noundef zeroext 20480) #6
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1189, i16 noundef zeroext 1792, i16 noundef zeroext 0) #6
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1037, i16 noundef zeroext 255, i16 noundef zeroext 64) #6
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1037, i16 noundef zeroext 1792, i16 noundef zeroext 1024) #6
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1186, i16 noundef zeroext 255, i16 noundef zeroext 64) #6
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1186, i16 noundef zeroext 1792, i16 noundef zeroext 1024) #6
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1232, i16 noundef zeroext 32704, i16 noundef zeroext 0) #6
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1192, i16 noundef zeroext 255, i16 noundef zeroext 1) #6
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %data_buf.i) #6
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tab.i) #6
  %29 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i, i32 0, i32 1
  %30 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i, i32 0, i32 2
  %31 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i, i32 0, i32 3
  %32 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i, i32 0, i32 4
  %33 = call ptr @memset(ptr %29, i32 255, i32 12)
  %34 = call ptr @memset(ptr %data_buf.i, i32 0, i32 256)
  %35 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 7, ptr %30, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 32, ptr %32, align 4
  %37 = ptrtoint ptr %tab.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %data_buf.i, ptr %tab.i, align 4
  %temppwrctrl_capable.i = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 140
  %38 = ptrtoint ptr %temppwrctrl_capable.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %temppwrctrl_capable.i, align 1, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not.i = icmp eq i8 %39, 0
  br i1 %tobool.not.i, label %if.then.i104, label %wlc_lcnphy_set_tssi_mux.exit.wlc_lcnphy_clear_tx_power_offsets.exit_crit_edge

wlc_lcnphy_set_tssi_mux.exit.wlc_lcnphy_clear_tx_power_offsets.exit_crit_edge: ; preds = %wlc_lcnphy_set_tssi_mux.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %wlc_lcnphy_clear_tx_power_offsets.exit

if.then.i104:                                     ; preds = %wlc_lcnphy_set_tssi_mux.exit
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 30, ptr %29, align 4
  %41 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 832, ptr %31, align 4
  call void @wlc_phy_write_table(ptr noundef %pi, ptr noundef nonnull %tab.i, i16 noundef zeroext 1109, i16 noundef zeroext 1111, i16 noundef zeroext 1110) #6
  br label %wlc_lcnphy_clear_tx_power_offsets.exit

wlc_lcnphy_clear_tx_power_offsets.exit:           ; preds = %if.then.i104, %wlc_lcnphy_set_tssi_mux.exit.wlc_lcnphy_clear_tx_power_offsets.exit_crit_edge
  %42 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 64, ptr %29, align 4
  %43 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 128, ptr %31, align 4
  call void @wlc_phy_write_table(ptr noundef %pi, ptr noundef nonnull %tab.i, i16 noundef zeroext 1109, i16 noundef zeroext 1111, i16 noundef zeroext 1110) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tab.i) #6
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %data_buf.i) #6
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1190, i16 noundef zeroext -32768, i16 noundef zeroext -32768) #6
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1190, i16 noundef zeroext 511, i16 noundef zeroext 255) #6
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1178, i16 noundef zeroext 511, i16 noundef zeroext 255) #6
  %phy_rev = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 7, i32 1
  %44 = ptrtoint ptr %phy_rev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %phy_rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %45)
  %cmp12 = icmp eq i32 %45, 2
  br i1 %cmp12, label %if.then13, label %if.else14

if.then13:                                        ; preds = %wlc_lcnphy_clear_tx_power_offsets.exit
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i8 %.103 to i16
  call void @mod_radio_reg(ptr noundef %pi, i16 noundef zeroext 40, i16 noundef zeroext 15, i16 noundef zeroext %conv) #6
  call void @mod_radio_reg(ptr noundef %pi, i16 noundef zeroext 134, i16 noundef zeroext 4, i16 noundef zeroext 4) #6
  br label %if.end17

if.else14:                                        ; preds = %wlc_lcnphy_clear_tx_power_offsets.exit
  call void @__sanitizer_cov_trace_pc() #8
  %46 = shl nuw nsw i8 %.103, 1
  %conv16 = zext i8 %46 to i16
  call void @mod_radio_reg(ptr noundef %pi, i16 noundef zeroext 40, i16 noundef zeroext 30, i16 noundef zeroext %conv16) #6
  call void @mod_radio_reg(ptr noundef %pi, i16 noundef zeroext 58, i16 noundef zeroext 1, i16 noundef zeroext 1) #6
  call void @mod_radio_reg(ptr noundef %pi, i16 noundef zeroext 282, i16 noundef zeroext 8, i16 noundef zeroext 8) #6
  br label %if.end17

if.end17:                                         ; preds = %if.else14, %if.then13
  call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext 37, i16 noundef zeroext 12) #6
  %47 = ptrtoint ptr %phy_rev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %phy_rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %48)
  %cmp20 = icmp eq i32 %48, 2
  br i1 %cmp20, label %if.then22, label %if.else23

if.then22:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  call void @mod_radio_reg(ptr noundef %pi, i16 noundef zeroext 58, i16 noundef zeroext 1, i16 noundef zeroext 1) #6
  br label %if.end31

if.else23:                                        ; preds = %if.end17
  %radio_chanspec = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 12
  %49 = ptrtoint ptr %radio_chanspec to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %radio_chanspec, align 4
  %51 = and i16 %50, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %51)
  %cmp26 = icmp eq i16 %51, 8192
  br i1 %cmp26, label %if.then28, label %if.else29

if.then28:                                        ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #8
  call void @mod_radio_reg(ptr noundef %pi, i16 noundef zeroext 58, i16 noundef zeroext 2, i16 noundef zeroext 2) #6
  br label %if.end31

if.else29:                                        ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #8
  call void @mod_radio_reg(ptr noundef %pi, i16 noundef zeroext 58, i16 noundef zeroext 2, i16 noundef zeroext 0) #6
  br label %if.end31

if.end31:                                         ; preds = %if.else29, %if.then28, %if.then22
  %52 = ptrtoint ptr %phy_rev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %phy_rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %53)
  %cmp34 = icmp eq i32 %53, 2
  br i1 %cmp34, label %if.then36, label %if.else37

if.then36:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  call void @mod_radio_reg(ptr noundef %pi, i16 noundef zeroext 58, i16 noundef zeroext 2, i16 noundef zeroext 2) #6
  br label %if.end38

if.else37:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  call void @mod_radio_reg(ptr noundef %pi, i16 noundef zeroext 58, i16 noundef zeroext 4, i16 noundef zeroext 4) #6
  br label %if.end38

if.end38:                                         ; preds = %if.else37, %if.then36
  call void @mod_radio_reg(ptr noundef %pi, i16 noundef zeroext 282, i16 noundef zeroext 1, i16 noundef zeroext 1) #6
  call void @mod_radio_reg(ptr noundef %pi, i16 noundef zeroext 5, i16 noundef zeroext 8, i16 noundef zeroext 8) #6
  %54 = ptrtoint ptr %temppwrctrl_capable.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %temppwrctrl_capable.i, align 1, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool39.not = icmp eq i8 %55, 0
  br i1 %tobool39.not, label %if.then40, label %if.end38.if.end41_crit_edge

if.end38.if.end41_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

if.then40:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1239, i16 noundef zeroext 28680, i16 noundef zeroext 8192) #6
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.end38.if.end41_crit_edge
  %call.i = call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1189) #6
  %56 = and i16 %call.i, 255
  %call2.i = call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1189) #6
  %57 = lshr i16 %call2.i, 12
  %58 = and i16 %57, 7
  %shl.i = shl nuw nsw i16 1, %58
  %call7.i = call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1037) #6
  %59 = and i16 %call7.i, 255
  %call12.i = call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1037) #6
  %60 = lshr i16 %call12.i, 8
  %61 = and i16 %60, 7
  %shl16.i = shl nuw nsw i16 1, %61
  %call18.i = call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1186) #6
  %62 = and i16 %call18.i, 255
  %call23.i = call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1186) #6
  %63 = lshr i16 %call23.i, 8
  %64 = and i16 %63, 7
  %shl27.i = shl nuw nsw i16 1, %64
  %narrow52.i = add nuw nsw i16 %shl27.i, %62
  %65 = shl nuw nsw i16 %narrow52.i, 1
  %narrow.i = add nuw nsw i16 %59, %56
  %narrow50.i = add nuw nsw i16 %narrow.i, %shl.i
  %narrow51.i = add nuw nsw i16 %narrow50.i, %shl16.i
  %narrow53.i = add nuw nsw i16 %narrow51.i, %65
  %66 = shl nuw nsw i16 %narrow53.i, 1
  %67 = call i16 @llvm.umax.i16(i16 %66, i16 1520) #6
  %68 = add nuw nsw i16 %67, 80
  %conv42 = zext i16 %68 to i32
  %69 = ptrtoint ptr %rfseq to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %conv42, ptr %rfseq, align 4
  %70 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 8, ptr %1, align 4
  %71 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 16, ptr %3, align 4
  %72 = ptrtoint ptr %tab to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %rfseq, ptr %tab, align 4
  %73 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 1, ptr %0, align 4
  %74 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 6, ptr %2, align 4
  call void @wlc_phy_write_table(ptr noundef %pi, ptr noundef nonnull %tab, i16 noundef zeroext 1109, i16 noundef zeroext 1111, i16 noundef zeroext 1110) #6
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 2360, i16 noundef zeroext 4, i16 noundef zeroext 4) #6
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 2361, i16 noundef zeroext 4, i16 noundef zeroext 4) #6
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1188, i16 noundef zeroext 4096, i16 noundef zeroext 4096) #6
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1239, i16 noundef zeroext 4, i16 noundef zeroext 4) #6
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1239, i16 noundef zeroext 3840, i16 noundef zeroext 0) #6
  call void @mod_radio_reg(ptr noundef %pi, i16 noundef zeroext 53, i16 noundef zeroext 255, i16 noundef zeroext 0) #6
  call void @mod_radio_reg(ptr noundef %pi, i16 noundef zeroext 54, i16 noundef zeroext 3, i16 noundef zeroext 0) #6
  call void @mod_radio_reg(ptr noundef %pi, i16 noundef zeroext 282, i16 noundef zeroext 8, i16 noundef zeroext 8) #6
  %u.i = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 3
  %75 = ptrtoint ptr %u.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %u.i, align 4
  %lcnphy_rssi_vc.i = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %76, i32 0, i32 13
  %77 = ptrtoint ptr %lcnphy_rssi_vc.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %lcnphy_rssi_vc.i, align 2
  %conv.i = zext i8 %78 to i32
  %shl.i105 = shl nuw nsw i32 %conv.i, 4
  %lcnphy_rssi_vf.i = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %76, i32 0, i32 12
  %79 = ptrtoint ptr %lcnphy_rssi_vf.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %lcnphy_rssi_vf.i, align 1
  %conv1.i = zext i8 %80 to i32
  %or.i = or i32 %shl.i105, %conv1.i
  %or2.i = or i32 %or.i, 512
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1240, i16 noundef zeroext 1, i16 noundef zeroext 0) #6
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1240, i16 noundef zeroext 2, i16 noundef zeroext 0) #6
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1239, i16 noundef zeroext 8, i16 noundef zeroext 0) #6
  %lcnphy_rssi_gs.i = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %76, i32 0, i32 14
  %81 = ptrtoint ptr %lcnphy_rssi_gs.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %lcnphy_rssi_gs.i, align 1
  %conv6.i = zext i8 %82 to i32
  %shl7.i = shl nuw nsw i32 %conv6.i, 12
  %or8.i = or i32 %shl7.i, %or2.i
  %conv9.i = trunc i32 %or8.i to i16
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1243, i16 noundef zeroext 29695, i16 noundef zeroext %conv9.i) #6
  %83 = ptrtoint ptr %lcnphy_rssi_gs.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %lcnphy_rssi_gs.i, align 1
  %conv13.i = zext i8 %84 to i32
  %shl14.i = shl nuw nsw i32 %conv13.i, 12
  %or15.i = or i32 %shl14.i, %or2.i
  %conv16.i = trunc i32 %or15.i to i16
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1244, i16 noundef zeroext 29695, i16 noundef zeroext %conv16.i) #6
  %85 = ptrtoint ptr %lcnphy_rssi_gs.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %lcnphy_rssi_gs.i, align 1
  %conv20.i = zext i8 %86 to i32
  %shl21.i = shl nuw nsw i32 %conv20.i, 12
  %or22.i = or i32 %shl21.i, %or2.i
  %conv23.i = trunc i32 %or22.i to i16
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1034, i16 noundef zeroext 29695, i16 noundef zeroext %conv23.i) #6
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1035, i16 noundef zeroext 29695, i16 noundef zeroext 8836) #6
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1036, i16 noundef zeroext 29695, i16 noundef zeroext 8836) #6
  call void @mod_radio_reg(ptr noundef %pi, i16 noundef zeroext 130, i16 noundef zeroext 32, i16 noundef zeroext 32) #6
  call void @mod_radio_reg(ptr noundef %pi, i16 noundef zeroext 124, i16 noundef zeroext 1, i16 noundef zeroext 1) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ind) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rfseq) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tab) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wlc_phy_detach_lcnphy(ptr nocapture noundef readonly %pi) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 3
  %0 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %u, align 4
  tail call void @kfree(ptr noundef %1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @wlc_phy_attach_lcnphy(ptr noundef %pi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 680) #9
  %u = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 3
  %1 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %u, align 4
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %sh = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 1
  %2 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sh, align 4
  %boardflags = getelementptr inbounds %struct.shared_phy, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %boardflags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %boardflags, align 4
  %and = and i32 %5, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp3 = icmp eq i32 %and, 0
  br i1 %cmp3, label %if.then4, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %hwpwrctrl = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 49
  %6 = ptrtoint ptr %hwpwrctrl to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %hwpwrctrl, align 1
  %hwpwrctrl_capable = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 139
  %7 = ptrtoint ptr %hwpwrctrl_capable to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %hwpwrctrl_capable, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %d11core = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 5
  %8 = ptrtoint ptr %d11core to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d11core, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %drv_cc = getelementptr inbounds %struct.bcma_bus, ptr %11, i32 0, i32 12
  %call6 = tail call i32 @bcma_chipco_get_alp_clock(ptr noundef %drv_cc) #6
  %xtalfreq = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 87
  %12 = ptrtoint ptr %xtalfreq to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call6, ptr %xtalfreq, align 4
  %lcnphy_papd_rxGnCtrl_init = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %call7.i.i, i32 0, i32 42
  %13 = ptrtoint ptr %lcnphy_papd_rxGnCtrl_init to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %lcnphy_papd_rxGnCtrl_init, align 8
  %pi_fptr = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 2
  %14 = ptrtoint ptr %pi_fptr to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @wlc_phy_init_lcnphy, ptr %pi_fptr, align 4
  %calinit = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %calinit to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @wlc_phy_cal_init_lcnphy, ptr %calinit, align 4
  %chanset = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 2, i32 2
  %16 = ptrtoint ptr %chanset to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @wlc_phy_chanspec_set_lcnphy, ptr %chanset, align 4
  %txpwrrecalc = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 2, i32 3
  %17 = ptrtoint ptr %txpwrrecalc to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @wlc_phy_txpower_recalc_target_lcnphy, ptr %txpwrrecalc, align 4
  %txiqccget = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 2, i32 5
  %18 = ptrtoint ptr %txiqccget to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @wlc_lcnphy_get_tx_iqcc, ptr %txiqccget, align 4
  %txiqccset = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 2, i32 6
  %19 = ptrtoint ptr %txiqccset to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @wlc_lcnphy_set_tx_iqcc, ptr %txiqccset, align 4
  %txloccget = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 2, i32 7
  %20 = ptrtoint ptr %txloccget to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @wlc_lcnphy_get_tx_locc, ptr %txloccget, align 4
  %radioloftget = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 2, i32 8
  %21 = ptrtoint ptr %radioloftget to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @wlc_lcnphy_get_radio_loft, ptr %radioloftget, align 4
  %detach = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 2, i32 11
  %22 = ptrtoint ptr %detach to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @wlc_phy_detach_lcnphy, ptr %detach, align 4
  %23 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %u, align 4
  %25 = ptrtoint ptr %d11core to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %d11core, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 8
  %radio_chanspec.i = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 12
  %29 = ptrtoint ptr %radio_chanspec.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %radio_chanspec.i, align 4
  %31 = and i16 %30, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %31)
  %cmp.i = icmp eq i16 %31, 8192
  br i1 %cmp.i, label %if.then.i, label %if.end5.wlc_phy_txpwr_srom_read_lcnphy.exit_crit_edge

if.end5.wlc_phy_txpwr_srom_read_lcnphy.exit_crit_edge: ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %wlc_phy_txpwr_srom_read_lcnphy.exit

if.then.i:                                        ; preds = %if.end5
  %tr_iso.i = getelementptr inbounds %struct.bcma_bus, ptr %28, i32 0, i32 18, i32 76, i32 0, i32 3
  %32 = ptrtoint ptr %tr_iso.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %tr_iso.i, align 1
  %lcnphy_tr_isolation_mid.i = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %24, i32 0, i32 7
  %34 = ptrtoint ptr %lcnphy_tr_isolation_mid.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %lcnphy_tr_isolation_mid.i, align 4
  %rxpo2g.i = getelementptr inbounds %struct.bcma_bus, ptr %28, i32 0, i32 18, i32 52
  %35 = ptrtoint ptr %rxpo2g.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %rxpo2g.i, align 2
  %lcnphy_rx_power_offset.i = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %24, i32 0, i32 11
  %37 = ptrtoint ptr %lcnphy_rx_power_offset.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %lcnphy_rx_power_offset.i, align 4
  %pa0b0.i = getelementptr inbounds %struct.bcma_bus, ptr %28, i32 0, i32 18, i32 22
  %38 = ptrtoint ptr %pa0b0.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %pa0b0.i, align 4
  %txpa_2g.i = getelementptr %struct.brcms_phy, ptr %pi, i32 0, i32 28
  %40 = ptrtoint ptr %txpa_2g.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %txpa_2g.i, align 4
  %pa0b1.i = getelementptr inbounds %struct.bcma_bus, ptr %28, i32 0, i32 18, i32 23
  %41 = ptrtoint ptr %pa0b1.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %pa0b1.i, align 2
  %arrayidx4.i = getelementptr %struct.brcms_phy, ptr %pi, i32 0, i32 28, i32 1
  %43 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %arrayidx4.i, align 2
  %pa0b2.i = getelementptr inbounds %struct.bcma_bus, ptr %28, i32 0, i32 18, i32 24
  %44 = ptrtoint ptr %pa0b2.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %pa0b2.i, align 4
  %arrayidx6.i = getelementptr %struct.brcms_phy, ptr %pi, i32 0, i32 28, i32 2
  %46 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %45, ptr %arrayidx6.i, align 4
  %rssismf2g.i = getelementptr inbounds %struct.bcma_bus, ptr %28, i32 0, i32 18, i32 56
  %47 = ptrtoint ptr %rssismf2g.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %rssismf2g.i, align 2
  %lcnphy_rssi_vf.i = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %24, i32 0, i32 12
  %49 = ptrtoint ptr %lcnphy_rssi_vf.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %lcnphy_rssi_vf.i, align 1
  %rssismc2g.i = getelementptr inbounds %struct.bcma_bus, ptr %28, i32 0, i32 18, i32 55
  %50 = ptrtoint ptr %rssismc2g.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %rssismc2g.i, align 1
  %lcnphy_rssi_vc.i = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %24, i32 0, i32 13
  %52 = ptrtoint ptr %lcnphy_rssi_vc.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %lcnphy_rssi_vc.i, align 2
  %rssisav2g.i = getelementptr inbounds %struct.bcma_bus, ptr %28, i32 0, i32 18, i32 54
  %53 = ptrtoint ptr %rssisav2g.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %rssisav2g.i, align 4
  %lcnphy_rssi_gs.i = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %24, i32 0, i32 14
  %55 = ptrtoint ptr %lcnphy_rssi_gs.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %lcnphy_rssi_gs.i, align 1
  %lcnphy_rssi_vf_lowtemp.i = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %24, i32 0, i32 16
  %56 = ptrtoint ptr %lcnphy_rssi_vf_lowtemp.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %48, ptr %lcnphy_rssi_vf_lowtemp.i, align 1
  %lcnphy_rssi_vc_lowtemp.i = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %24, i32 0, i32 17
  %57 = ptrtoint ptr %lcnphy_rssi_vc_lowtemp.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %51, ptr %lcnphy_rssi_vc_lowtemp.i, align 2
  %lcnphy_rssi_gs_lowtemp.i = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %24, i32 0, i32 18
  %58 = ptrtoint ptr %lcnphy_rssi_gs_lowtemp.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %54, ptr %lcnphy_rssi_gs_lowtemp.i, align 1
  %lcnphy_rssi_vf_hightemp.i = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %24, i32 0, i32 19
  %59 = ptrtoint ptr %lcnphy_rssi_vf_hightemp.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %48, ptr %lcnphy_rssi_vf_hightemp.i, align 4
  %lcnphy_rssi_vc_hightemp.i = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %24, i32 0, i32 20
  %60 = ptrtoint ptr %lcnphy_rssi_vc_hightemp.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %51, ptr %lcnphy_rssi_vc_hightemp.i, align 1
  %lcnphy_rssi_gs_hightemp.i = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %24, i32 0, i32 21
  %61 = ptrtoint ptr %lcnphy_rssi_gs_hightemp.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %54, ptr %lcnphy_rssi_gs_hightemp.i, align 2
  %maxpwr_2g.i = getelementptr inbounds %struct.bcma_bus, ptr %28, i32 0, i32 18, i32 74, i32 0, i32 2
  %62 = ptrtoint ptr %maxpwr_2g.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %maxpwr_2g.i, align 2
  %tx_srom_max_2g.i = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 34
  %64 = ptrtoint ptr %tx_srom_max_2g.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %tx_srom_max_2g.i, align 4
  %65 = load i16, ptr %txpa_2g.i, align 2
  %arrayidx18.i = getelementptr %struct.brcms_phy, ptr %pi, i32 0, i32 29, i32 0
  %66 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %65, ptr %arrayidx18.i, align 2
  %arrayidx21.i = getelementptr %struct.brcms_phy, ptr %pi, i32 0, i32 30, i32 0
  %67 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %65, ptr %arrayidx21.i, align 2
  %68 = load i16, ptr %arrayidx4.i, align 2
  %arrayidx18.1.i = getelementptr %struct.brcms_phy, ptr %pi, i32 0, i32 29, i32 1
  %69 = ptrtoint ptr %arrayidx18.1.i to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %68, ptr %arrayidx18.1.i, align 2
  %arrayidx21.1.i = getelementptr %struct.brcms_phy, ptr %pi, i32 0, i32 30, i32 1
  %70 = ptrtoint ptr %arrayidx21.1.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %68, ptr %arrayidx21.1.i, align 2
  %71 = load i16, ptr %arrayidx6.i, align 2
  %arrayidx18.2.i = getelementptr %struct.brcms_phy, ptr %pi, i32 0, i32 29, i32 2
  %72 = ptrtoint ptr %arrayidx18.2.i to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %71, ptr %arrayidx18.2.i, align 2
  %arrayidx21.2.i = getelementptr %struct.brcms_phy, ptr %pi, i32 0, i32 30, i32 2
  %73 = ptrtoint ptr %arrayidx21.2.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %71, ptr %arrayidx21.2.i, align 2
  %cck2gpo.i = getelementptr inbounds %struct.bcma_bus, ptr %28, i32 0, i32 18, i32 62
  %74 = ptrtoint ptr %cck2gpo.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %cck2gpo.i, align 4
  %ofdm2gpo.i = getelementptr inbounds %struct.bcma_bus, ptr %28, i32 0, i32 18, i32 63
  %76 = ptrtoint ptr %ofdm2gpo.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %ofdm2gpo.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %75)
  %tobool.not.i = icmp eq i16 %75, 0
  br i1 %tobool.not.i, label %for.body54.preheader.i, label %for.body27.preheader.i

for.body27.preheader.i:                           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %cckpo.0.tr.i = trunc i16 %75 to i8
  %78 = shl i8 %cckpo.0.tr.i, 1
  %79 = and i8 %78, 30
  %conv30.i = sub i8 %63, %79
  %arrayidx31.i = getelementptr %struct.brcms_phy, ptr %pi, i32 0, i32 38, i32 0
  %80 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %conv30.i, ptr %arrayidx31.i, align 1
  %81 = lshr i8 %cckpo.0.tr.i, 3
  %82 = and i8 %81, 30
  %conv30.1.i = sub i8 %63, %82
  %arrayidx31.1.i = getelementptr %struct.brcms_phy, ptr %pi, i32 0, i32 38, i32 1
  %83 = ptrtoint ptr %arrayidx31.1.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %conv30.1.i, ptr %arrayidx31.1.i, align 1
  %sh.diff24.i = lshr i16 %75, 7
  %tr.sh.diff25.i = trunc i16 %sh.diff24.i to i8
  %84 = and i8 %tr.sh.diff25.i, 30
  %conv30.2.i = sub i8 %63, %84
  %arrayidx31.2.i = getelementptr %struct.brcms_phy, ptr %pi, i32 0, i32 38, i32 2
  %85 = ptrtoint ptr %arrayidx31.2.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %conv30.2.i, ptr %arrayidx31.2.i, align 1
  %sh.diff.i = lshr i16 %75, 11
  %tr.sh.diff.i = trunc i16 %sh.diff.i to i8
  %86 = and i8 %tr.sh.diff.i, 30
  %conv30.3.i = sub i8 %63, %86
  %arrayidx31.3.i = getelementptr %struct.brcms_phy, ptr %pi, i32 0, i32 38, i32 3
  %87 = ptrtoint ptr %arrayidx31.3.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %conv30.3.i, ptr %arrayidx31.3.i, align 1
  %offset_ofdm.0.tr.i = trunc i32 %77 to i8
  %88 = shl i8 %offset_ofdm.0.tr.i, 1
  %89 = and i8 %88, 30
  %conv44.i = sub i8 %63, %89
  %arrayidx46.i = getelementptr %struct.brcms_phy, ptr %pi, i32 0, i32 38, i32 4
  %90 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %conv44.i, ptr %arrayidx46.i, align 1
  %91 = lshr i8 %offset_ofdm.0.tr.i, 3
  %92 = and i8 %91, 30
  %conv44.1.i = sub i8 %63, %92
  %arrayidx46.1.i = getelementptr %struct.brcms_phy, ptr %pi, i32 0, i32 38, i32 5
  %93 = ptrtoint ptr %arrayidx46.1.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %conv44.1.i, ptr %arrayidx46.1.i, align 1
  %sh.diff28.i = lshr i32 %77, 7
  %tr.sh.diff29.i = trunc i32 %sh.diff28.i to i8
  %94 = and i8 %tr.sh.diff29.i, 30
  %conv44.2.i = sub i8 %63, %94
  %arrayidx46.2.i = getelementptr %struct.brcms_phy, ptr %pi, i32 0, i32 38, i32 6
  %95 = ptrtoint ptr %arrayidx46.2.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %conv44.2.i, ptr %arrayidx46.2.i, align 1
  %sh.diff30.i = lshr i32 %77, 11
  %tr.sh.diff31.i = trunc i32 %sh.diff30.i to i8
  %96 = and i8 %tr.sh.diff31.i, 30
  %conv44.3.i = sub i8 %63, %96
  %arrayidx46.3.i = getelementptr %struct.brcms_phy, ptr %pi, i32 0, i32 38, i32 7
  %97 = ptrtoint ptr %arrayidx46.3.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %conv44.3.i, ptr %arrayidx46.3.i, align 1
  %sh.diff32.i = lshr i32 %77, 15
  %tr.sh.diff33.i = trunc i32 %sh.diff32.i to i8
  %98 = and i8 %tr.sh.diff33.i, 30
  %conv44.4.i = sub i8 %63, %98
  %arrayidx46.4.i = getelementptr %struct.brcms_phy, ptr %pi, i32 0, i32 38, i32 8
  %99 = ptrtoint ptr %arrayidx46.4.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %conv44.4.i, ptr %arrayidx46.4.i, align 1
  %sh.diff34.i = lshr i32 %77, 19
  %tr.sh.diff35.i = trunc i32 %sh.diff34.i to i8
  %100 = and i8 %tr.sh.diff35.i, 30
  %conv44.5.i = sub i8 %63, %100
  %arrayidx46.5.i = getelementptr %struct.brcms_phy, ptr %pi, i32 0, i32 38, i32 9
  %101 = ptrtoint ptr %arrayidx46.5.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %conv44.5.i, ptr %arrayidx46.5.i, align 1
  %sh.diff36.i = lshr i32 %77, 23
  %tr.sh.diff37.i = trunc i32 %sh.diff36.i to i8
  %102 = and i8 %tr.sh.diff37.i, 30
  %conv44.6.i = sub i8 %63, %102
  %arrayidx46.6.i = getelementptr %struct.brcms_phy, ptr %pi, i32 0, i32 38, i32 10
  %103 = ptrtoint ptr %arrayidx46.6.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %conv44.6.i, ptr %arrayidx46.6.i, align 1
  %sh.diff16.i = lshr i32 %77, 27
  %tr.sh.diff17.i = trunc i32 %sh.diff16.i to i8
  %104 = and i8 %tr.sh.diff17.i, 30
  %conv44.7.i = sub i8 %63, %104
  %arrayidx46.7.i = getelementptr %struct.brcms_phy, ptr %pi, i32 0, i32 38, i32 11
  %105 = ptrtoint ptr %arrayidx46.7.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %conv44.7.i, ptr %arrayidx46.7.i, align 1
  br label %if.end.i

for.body54.preheader.i:                           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %uglygep.i = getelementptr i8, ptr %pi, i32 204
  %106 = zext i8 %63 to i32
  %107 = call ptr @memset(ptr %uglygep.i, i32 %106, i32 4)
  %offset_ofdm.1.tr.i = trunc i32 %77 to i8
  %108 = shl i8 %offset_ofdm.1.tr.i, 1
  %109 = and i8 %108, 30
  %conv68.i = sub i8 %63, %109
  %arrayidx70.i = getelementptr %struct.brcms_phy, ptr %pi, i32 0, i32 38, i32 4
  %110 = ptrtoint ptr %arrayidx70.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %conv68.i, ptr %arrayidx70.i, align 1
  %111 = lshr i8 %offset_ofdm.1.tr.i, 3
  %112 = and i8 %111, 30
  %conv68.1.i = sub i8 %63, %112
  %arrayidx70.1.i = getelementptr %struct.brcms_phy, ptr %pi, i32 0, i32 38, i32 5
  %113 = ptrtoint ptr %arrayidx70.1.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %conv68.1.i, ptr %arrayidx70.1.i, align 1
  %sh.diff40.i = lshr i32 %77, 7
  %tr.sh.diff41.i = trunc i32 %sh.diff40.i to i8
  %114 = and i8 %tr.sh.diff41.i, 30
  %conv68.2.i = sub i8 %63, %114
  %arrayidx70.2.i = getelementptr %struct.brcms_phy, ptr %pi, i32 0, i32 38, i32 6
  %115 = ptrtoint ptr %arrayidx70.2.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %conv68.2.i, ptr %arrayidx70.2.i, align 1
  %sh.diff42.i = lshr i32 %77, 11
  %tr.sh.diff43.i = trunc i32 %sh.diff42.i to i8
  %116 = and i8 %tr.sh.diff43.i, 30
  %conv68.3.i = sub i8 %63, %116
  %arrayidx70.3.i = getelementptr %struct.brcms_phy, ptr %pi, i32 0, i32 38, i32 7
  %117 = ptrtoint ptr %arrayidx70.3.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %conv68.3.i, ptr %arrayidx70.3.i, align 1
  %sh.diff44.i = lshr i32 %77, 15
  %tr.sh.diff45.i = trunc i32 %sh.diff44.i to i8
  %118 = and i8 %tr.sh.diff45.i, 30
  %conv68.4.i = sub i8 %63, %118
  %arrayidx70.4.i = getelementptr %struct.brcms_phy, ptr %pi, i32 0, i32 38, i32 8
  %119 = ptrtoint ptr %arrayidx70.4.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %conv68.4.i, ptr %arrayidx70.4.i, align 1
  %sh.diff46.i = lshr i32 %77, 19
  %tr.sh.diff47.i = trunc i32 %sh.diff46.i to i8
  %120 = and i8 %tr.sh.diff47.i, 30
  %conv68.5.i = sub i8 %63, %120
  %arrayidx70.5.i = getelementptr %struct.brcms_phy, ptr %pi, i32 0, i32 38, i32 9
  %121 = ptrtoint ptr %arrayidx70.5.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %conv68.5.i, ptr %arrayidx70.5.i, align 1
  %sh.diff48.i = lshr i32 %77, 23
  %tr.sh.diff49.i = trunc i32 %sh.diff48.i to i8
  %122 = and i8 %tr.sh.diff49.i, 30
  %conv68.6.i = sub i8 %63, %122
  %arrayidx70.6.i = getelementptr %struct.brcms_phy, ptr %pi, i32 0, i32 38, i32 10
  %123 = ptrtoint ptr %arrayidx70.6.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %conv68.6.i, ptr %arrayidx70.6.i, align 1
  %sh.diff18.i = lshr i32 %77, 27
  %tr.sh.diff19.i = trunc i32 %sh.diff18.i to i8
  %124 = and i8 %tr.sh.diff19.i, 30
  %conv68.7.i = sub i8 %63, %124
  %arrayidx70.7.i = getelementptr %struct.brcms_phy, ptr %pi, i32 0, i32 38, i32 11
  %125 = ptrtoint ptr %arrayidx70.7.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %conv68.7.i, ptr %arrayidx70.7.i, align 1
  %mcs2gpo.i = getelementptr inbounds %struct.bcma_bus, ptr %28, i32 0, i32 18, i32 77
  %arrayidx75.i = getelementptr %struct.bcma_bus, ptr %28, i32 0, i32 18, i32 77, i32 1
  %126 = ptrtoint ptr %arrayidx75.i to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %arrayidx75.i, align 2
  %conv76.i = zext i16 %127 to i32
  %shl.i = shl nuw i32 %conv76.i, 16
  %128 = ptrtoint ptr %mcs2gpo.i to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %mcs2gpo.i, align 2
  %conv79.i = zext i16 %129 to i32
  %or.i = or i32 %shl.i, %conv79.i
  %lcnphy_mcs20_po.i = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %24, i32 0, i32 6
  %130 = ptrtoint ptr %lcnphy_mcs20_po.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %or.i, ptr %lcnphy_mcs20_po.i, align 4
  %offset_mcs.0.tr.i = trunc i16 %129 to i8
  %131 = shl i8 %offset_mcs.0.tr.i, 1
  %132 = and i8 %131, 30
  %conv88.i = sub i8 %63, %132
  %arrayidx90.i = getelementptr %struct.brcms_phy, ptr %pi, i32 0, i32 38, i32 20
  %133 = ptrtoint ptr %arrayidx90.i to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 %conv88.i, ptr %arrayidx90.i, align 1
  %134 = lshr i8 %offset_mcs.0.tr.i, 3
  %135 = and i8 %134, 30
  %conv88.1.i = sub i8 %63, %135
  %arrayidx90.1.i = getelementptr %struct.brcms_phy, ptr %pi, i32 0, i32 38, i32 21
  %136 = ptrtoint ptr %arrayidx90.1.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %conv88.1.i, ptr %arrayidx90.1.i, align 1
  %sh.diff52.i = lshr i16 %129, 7
  %tr.sh.diff53.i = trunc i16 %sh.diff52.i to i8
  %137 = and i8 %tr.sh.diff53.i, 30
  %conv88.2.i = sub i8 %63, %137
  %arrayidx90.2.i = getelementptr %struct.brcms_phy, ptr %pi, i32 0, i32 38, i32 22
  %138 = ptrtoint ptr %arrayidx90.2.i to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 %conv88.2.i, ptr %arrayidx90.2.i, align 1
  %sh.diff54.i = lshr i16 %129, 11
  %tr.sh.diff55.i = trunc i16 %sh.diff54.i to i8
  %139 = and i8 %tr.sh.diff55.i, 30
  %conv88.3.i = sub i8 %63, %139
  %arrayidx90.3.i = getelementptr %struct.brcms_phy, ptr %pi, i32 0, i32 38, i32 23
  %140 = ptrtoint ptr %arrayidx90.3.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %conv88.3.i, ptr %arrayidx90.3.i, align 1
  %offset_mcs.0.tr.4.i = trunc i16 %127 to i8
  %141 = shl i8 %offset_mcs.0.tr.4.i, 1
  %142 = and i8 %141, 30
  %conv88.4.i = sub i8 %63, %142
  %arrayidx90.4.i = getelementptr %struct.brcms_phy, ptr %pi, i32 0, i32 38, i32 24
  %143 = ptrtoint ptr %arrayidx90.4.i to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %conv88.4.i, ptr %arrayidx90.4.i, align 1
  %144 = lshr i8 %offset_mcs.0.tr.4.i, 3
  %145 = and i8 %144, 30
  %conv88.5.i = sub i8 %63, %145
  %arrayidx90.5.i = getelementptr %struct.brcms_phy, ptr %pi, i32 0, i32 38, i32 25
  %146 = ptrtoint ptr %arrayidx90.5.i to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 %conv88.5.i, ptr %arrayidx90.5.i, align 1
  %sh.diff58.i = lshr i16 %127, 7
  %tr.sh.diff59.i = trunc i16 %sh.diff58.i to i8
  %147 = and i8 %tr.sh.diff59.i, 30
  %conv88.6.i = sub i8 %63, %147
  %arrayidx90.6.i = getelementptr %struct.brcms_phy, ptr %pi, i32 0, i32 38, i32 26
  %148 = ptrtoint ptr %arrayidx90.6.i to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %conv88.6.i, ptr %arrayidx90.6.i, align 1
  %sh.diff20.i = lshr i16 %127, 11
  %tr.sh.diff21.i = trunc i16 %sh.diff20.i to i8
  %149 = and i8 %tr.sh.diff21.i, 30
  %conv88.7.i = sub i8 %63, %149
  %arrayidx90.7.i = getelementptr %struct.brcms_phy, ptr %pi, i32 0, i32 38, i32 27
  %150 = ptrtoint ptr %arrayidx90.7.i to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 %conv88.7.i, ptr %arrayidx90.7.i, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %for.body54.preheader.i, %for.body27.preheader.i
  %rawtempsense.i = getelementptr inbounds %struct.bcma_bus, ptr %28, i32 0, i32 18, i32 102
  %151 = ptrtoint ptr %rawtempsense.i to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %rawtempsense.i, align 4
  %lcnphy_rawtempsense.i = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %24, i32 0, i32 25
  %153 = ptrtoint ptr %lcnphy_rawtempsense.i to i32
  call void @__asan_store2_noabort(i32 %153)
  store i16 %152, ptr %lcnphy_rawtempsense.i, align 2
  %measpower.i = getelementptr inbounds %struct.bcma_bus, ptr %28, i32 0, i32 18, i32 103
  %154 = ptrtoint ptr %measpower.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %measpower.i, align 2
  %lcnphy_measPower.i = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %24, i32 0, i32 26
  %156 = ptrtoint ptr %lcnphy_measPower.i to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 %155, ptr %lcnphy_measPower.i, align 4
  %tempsense_slope.i = getelementptr inbounds %struct.bcma_bus, ptr %28, i32 0, i32 18, i32 104
  %157 = ptrtoint ptr %tempsense_slope.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %tempsense_slope.i, align 1
  %lcnphy_tempsense_slope.i = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %24, i32 0, i32 27
  %159 = ptrtoint ptr %lcnphy_tempsense_slope.i to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 %158, ptr %lcnphy_tempsense_slope.i, align 1
  %hw_iqcal_en.i = getelementptr inbounds %struct.bcma_bus, ptr %28, i32 0, i32 18, i32 109
  %160 = ptrtoint ptr %hw_iqcal_en.i to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %hw_iqcal_en.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %161)
  %tobool95.i = icmp ne i8 %161, 0
  %lcnphy_hw_iqcal_en.i = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %24, i32 0, i32 32
  %frombool.i = zext i1 %tobool95.i to i8
  %162 = ptrtoint ptr %lcnphy_hw_iqcal_en.i to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 %frombool.i, ptr %lcnphy_hw_iqcal_en.i, align 2
  %iqcal_swp_dis.i = getelementptr inbounds %struct.bcma_bus, ptr %28, i32 0, i32 18, i32 108
  %163 = ptrtoint ptr %iqcal_swp_dis.i to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %iqcal_swp_dis.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %164)
  %tobool96.i = icmp ne i8 %164, 0
  %lcnphy_iqcal_swp_dis.i = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %24, i32 0, i32 31
  %frombool97.i = zext i1 %tobool96.i to i8
  %165 = ptrtoint ptr %lcnphy_iqcal_swp_dis.i to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 %frombool97.i, ptr %lcnphy_iqcal_swp_dis.i, align 1
  %tempcorrx.i = getelementptr inbounds %struct.bcma_bus, ptr %28, i32 0, i32 18, i32 105
  %166 = ptrtoint ptr %tempcorrx.i to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %tempcorrx.i, align 4
  %lcnphy_tempcorrx.i = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %24, i32 0, i32 30
  %168 = ptrtoint ptr %lcnphy_tempcorrx.i to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 %167, ptr %lcnphy_tempcorrx.i, align 4
  %tempsense_option.i = getelementptr inbounds %struct.bcma_bus, ptr %28, i32 0, i32 18, i32 106
  %169 = ptrtoint ptr %tempsense_option.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %tempsense_option.i, align 1
  %lcnphy_tempsense_option.i = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %24, i32 0, i32 29
  %171 = ptrtoint ptr %lcnphy_tempsense_option.i to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 %170, ptr %lcnphy_tempsense_option.i, align 1
  %freqoffset_corr.i = getelementptr inbounds %struct.bcma_bus, ptr %28, i32 0, i32 18, i32 107
  %172 = ptrtoint ptr %freqoffset_corr.i to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %freqoffset_corr.i, align 2
  %lcnphy_freqoffset_corr.i = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %24, i32 0, i32 28
  %174 = ptrtoint ptr %lcnphy_freqoffset_corr.i to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 %173, ptr %lcnphy_freqoffset_corr.i, align 2
  %ant_available_bg.i = getelementptr inbounds %struct.bcma_bus, ptr %28, i32 0, i32 18, i32 21
  %175 = ptrtoint ptr %ant_available_bg.i to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %ant_available_bg.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %176)
  %cmp99.i = icmp ugt i8 %176, 1
  br i1 %cmp99.i, label %if.then101.i, label %if.end.i.wlc_phy_txpwr_srom_read_lcnphy.exit_crit_edge

if.end.i.wlc_phy_txpwr_srom_read_lcnphy.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %wlc_phy_txpwr_srom_read_lcnphy.exit

if.then101.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @wlc_phy_ant_rxdiv_set(ptr noundef %pi, i8 noundef zeroext %176) #6
  br label %wlc_phy_txpwr_srom_read_lcnphy.exit

wlc_phy_txpwr_srom_read_lcnphy.exit:              ; preds = %if.then101.i, %if.end.i.wlc_phy_txpwr_srom_read_lcnphy.exit_crit_edge, %if.end5.wlc_phy_txpwr_srom_read_lcnphy.exit_crit_edge
  %lcnphy_cck_dig_filt_type.i = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %24, i32 0, i32 69
  %177 = ptrtoint ptr %lcnphy_cck_dig_filt_type.i to i32
  call void @__asan_store2_noabort(i32 %177)
  store i16 -1, ptr %lcnphy_cck_dig_filt_type.i, align 4
  %phy_rev = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 7, i32 1
  %178 = ptrtoint ptr %phy_rev to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %phy_rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %179)
  %cmp19 = icmp eq i32 %179, 1
  br i1 %cmp19, label %if.then20, label %wlc_phy_txpwr_srom_read_lcnphy.exit.cleanup_crit_edge

wlc_phy_txpwr_srom_read_lcnphy.exit.cleanup_crit_edge: ; preds = %wlc_phy_txpwr_srom_read_lcnphy.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then20:                                        ; preds = %wlc_phy_txpwr_srom_read_lcnphy.exit
  call void @__sanitizer_cov_trace_pc() #8
  %lcnphy_tempsense_option = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %call7.i.i, i32 0, i32 29
  %180 = ptrtoint ptr %lcnphy_tempsense_option to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %lcnphy_tempsense_option, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %181)
  %cmp21 = icmp eq i8 %181, 3
  %hwpwrctrl24 = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 49
  %. = zext i1 %cmp21 to i8
  %not.cmp21 = xor i1 %cmp21, true
  %.59 = zext i1 %not.cmp21 to i8
  %182 = ptrtoint ptr %hwpwrctrl24 to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 %., ptr %hwpwrctrl24, align 1
  %hwpwrctrl_capable27 = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 139
  %183 = ptrtoint ptr %hwpwrctrl_capable27 to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 %., ptr %hwpwrctrl_capable27, align 4
  %temppwrctrl_capable28 = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 140
  %184 = ptrtoint ptr %temppwrctrl_capable28 to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 %.59, ptr %temppwrctrl_capable28, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %wlc_phy_txpwr_srom_read_lcnphy.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %185 = xor i1 %cmp, true
  ret i1 %185
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcma_chipco_get_alp_clock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wlc_lcnphy_rx_signal_power(ptr noundef %pi, i32 noundef %gain_index) local_unnamed_addr #0 align 64 {
entry:
  %iq_est.i23.i = alloca %struct.lcnphy_iq_est, align 4
  %iq_est.i.i = alloca %struct.lcnphy_iq_est, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 3
  %0 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %u, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %gain_index)
  %cmp.i = icmp sgt i32 %gain_index, -1
  br i1 %cmp.i, label %if.end.thread.i, label %if.end.i

if.end.thread.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr [37 x i32], ptr @lcnphy_23bitgaincode_table, i32 0, i32 %gain_index
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  br label %if.else.i

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %gain_index)
  %cmp1.i = icmp eq i32 %gain_index, -1
  br i1 %cmp1.i, label %while.cond.preheader.i, label %if.end.i.if.else.i_crit_edge

if.end.i.if.else.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

while.cond.preheader.i:                           ; preds = %if.end.i
  %lcnphy_noise_samples.i = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %1, i32 0, i32 40
  %i_pwr.i.i = getelementptr inbounds %struct.lcnphy_iq_est, ptr %iq_est.i.i, i32 0, i32 1
  %q_pwr.i.i = getelementptr inbounds %struct.lcnphy_iq_est, ptr %iq_est.i.i, i32 0, i32 2
  br label %while.body.i

while.body.i:                                     ; preds = %wlc_lcnphy_measure_digital_power.exit.i.while.body.i_crit_edge, %while.cond.preheader.i
  %gain_index.addr.0 = phi i32 [ 0, %while.cond.preheader.i ], [ %inc.i, %wlc_lcnphy_measure_digital_power.exit.i.while.body.i_crit_edge ]
  %arrayidx5.i = getelementptr [37 x i32], ptr @lcnphy_23bitgaincode_table, i32 0, i32 %gain_index.addr.0
  %4 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx5.i, align 4
  tail call fastcc void @wlc_lcnphy_set_rx_gain(ptr noundef %pi, i32 noundef %5) #6
  %6 = ptrtoint ptr %lcnphy_noise_samples.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %lcnphy_noise_samples.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %iq_est.i.i) #6
  %8 = call ptr @memset(ptr %iq_est.i.i, i32 0, i32 12)
  %call.i.i = call fastcc zeroext i1 @wlc_lcnphy_rx_iq_est(ptr noundef %pi, i16 noundef zeroext %7, ptr noundef nonnull %iq_est.i.i) #6
  br i1 %call.i.i, label %if.end.i.i, label %while.body.i.wlc_lcnphy_measure_digital_power.exit.i_crit_edge

while.body.i.wlc_lcnphy_measure_digital_power.exit.i_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %wlc_lcnphy_measure_digital_power.exit.i

if.end.i.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %i_pwr.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %i_pwr.i.i, align 4
  %11 = ptrtoint ptr %q_pwr.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %q_pwr.i.i, align 4
  %add.i.i = add i32 %12, %10
  %conv.i.i = zext i16 %7 to i32
  %div.i.i = udiv i32 %add.i.i, %conv.i.i
  br label %wlc_lcnphy_measure_digital_power.exit.i

wlc_lcnphy_measure_digital_power.exit.i:          ; preds = %if.end.i.i, %while.body.i.wlc_lcnphy_measure_digital_power.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %div.i.i, %if.end.i.i ], [ 0, %while.body.i.wlc_lcnphy_measure_digital_power.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %iq_est.i.i) #6
  %inc.i = add nuw nsw i32 %gain_index.addr.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %gain_index.addr.0)
  %cmp3.i = icmp ult i32 %gain_index.addr.0, 36
  call void @__sanitizer_cov_trace_const_cmp4(i32 700, i32 %retval.0.i.i)
  %cmp4.i = icmp ult i32 %retval.0.i.i, 700
  %or.cond.i = select i1 %cmp3.i, i1 %cmp4.i, i1 false
  br i1 %or.cond.i, label %wlc_lcnphy_measure_digital_power.exit.i.while.body.i_crit_edge, label %wlc_lcnphy_measure_digital_power.exit.i.wlc_lcnphy_get_receive_power.exit_crit_edge

wlc_lcnphy_measure_digital_power.exit.i.wlc_lcnphy_get_receive_power.exit_crit_edge: ; preds = %wlc_lcnphy_measure_digital_power.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %wlc_lcnphy_get_receive_power.exit

wlc_lcnphy_measure_digital_power.exit.i.while.body.i_crit_edge: ; preds = %wlc_lcnphy_measure_digital_power.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

if.else.i:                                        ; preds = %if.end.i.if.else.i_crit_edge, %if.end.thread.i
  %gain_code.035.i = phi i32 [ %3, %if.end.thread.i ], [ 0, %if.end.i.if.else.i_crit_edge ]
  tail call fastcc void @wlc_lcnphy_set_rx_gain(ptr noundef %pi, i32 noundef %gain_code.035.i) #6
  %lcnphy_noise_samples6.i = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %1, i32 0, i32 40
  %13 = ptrtoint ptr %lcnphy_noise_samples6.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %lcnphy_noise_samples6.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %iq_est.i23.i) #6
  %15 = call ptr @memset(ptr %iq_est.i23.i, i32 0, i32 12)
  %call.i24.i = call fastcc zeroext i1 @wlc_lcnphy_rx_iq_est(ptr noundef %pi, i16 noundef zeroext %14, ptr noundef nonnull %iq_est.i23.i) #6
  br i1 %call.i24.i, label %if.end.i30.i, label %if.else.i.wlc_lcnphy_measure_digital_power.exit32.i_crit_edge

if.else.i.wlc_lcnphy_measure_digital_power.exit32.i_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %wlc_lcnphy_measure_digital_power.exit32.i

if.end.i30.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %i_pwr.i25.i = getelementptr inbounds %struct.lcnphy_iq_est, ptr %iq_est.i23.i, i32 0, i32 1
  %16 = ptrtoint ptr %i_pwr.i25.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %i_pwr.i25.i, align 4
  %q_pwr.i26.i = getelementptr inbounds %struct.lcnphy_iq_est, ptr %iq_est.i23.i, i32 0, i32 2
  %18 = ptrtoint ptr %q_pwr.i26.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %q_pwr.i26.i, align 4
  %add.i27.i = add i32 %19, %17
  %conv.i28.i = zext i16 %14 to i32
  %div.i29.i = udiv i32 %add.i27.i, %conv.i28.i
  br label %wlc_lcnphy_measure_digital_power.exit32.i

wlc_lcnphy_measure_digital_power.exit32.i:        ; preds = %if.end.i30.i, %if.else.i.wlc_lcnphy_measure_digital_power.exit32.i_crit_edge
  %retval.0.i31.i = phi i32 [ %div.i29.i, %if.end.i30.i ], [ 0, %if.else.i.wlc_lcnphy_measure_digital_power.exit32.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %iq_est.i23.i) #6
  br label %wlc_lcnphy_get_receive_power.exit

wlc_lcnphy_get_receive_power.exit:                ; preds = %wlc_lcnphy_measure_digital_power.exit32.i, %wlc_lcnphy_measure_digital_power.exit.i.wlc_lcnphy_get_receive_power.exit_crit_edge
  %gain_index.addr.1 = phi i32 [ %gain_index, %wlc_lcnphy_measure_digital_power.exit32.i ], [ %gain_index.addr.0, %wlc_lcnphy_measure_digital_power.exit.i.wlc_lcnphy_get_receive_power.exit_crit_edge ]
  %received_power.1.i = phi i32 [ %retval.0.i31.i, %wlc_lcnphy_measure_digital_power.exit32.i ], [ %retval.0.i.i, %wlc_lcnphy_measure_digital_power.exit.i.wlc_lcnphy_get_receive_power.exit_crit_edge ]
  %arrayidx = getelementptr [37 x i8], ptr @lcnphy_gain_table, i32 0, i32 %gain_index.addr.1
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %21 to i32
  %call1 = tail call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1061) #6
  %mul = shl i32 %received_power.1.i, 4
  %22 = tail call i32 @llvm.cttz.i32(i32 %mul, i1 true), !range !49
  %23 = add nuw nsw i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %iszero = icmp eq i32 %mul, 0
  %ffs = select i1 %iszero, i32 0, i32 %23
  %sub = add nsw i32 %ffs, -1
  %shl.neg = shl nsw i32 -1, %sub
  %shl3 = shl nuw i32 1, %ffs
  %sub4 = add i32 %shl.neg, %mul
  %sub5 = sub i32 %shl3, %mul
  call void @__sanitizer_cov_trace_cmp4(i32 %sub4, i32 %sub5)
  %cmp = icmp ult i32 %sub4, %sub5
  %sub.ffs = select i1 %cmp, i32 %sub, i32 %ffs
  %24 = lshr i16 %call1, 9
  %div = zext i16 %24 to i32
  %call10 = tail call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1076) #6
  %25 = and i16 %call10, 255
  %and = zext i16 %25 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 127, i16 %25)
  %cmp12 = icmp ugt i16 %25, 127
  %sub15 = or i32 %and, -256
  %input_power_offset_db.0 = select i1 %cmp12, i32 %sub15, i32 %and
  %mul7.neg.neg = mul nsw i32 %sub.ffs, 3
  %arrayidx18 = getelementptr [38 x i8], ptr @lcnphy_gain_index_offset_for_rssi, i32 0, i32 %gain_index.addr.1
  %26 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx18, align 1
  %conv19 = sext i8 %27 to i32
  %radio_chanspec = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 12
  %28 = ptrtoint ptr %radio_chanspec to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %radio_chanspec, align 4
  %30 = and i16 %29, 255
  %conv24 = zext i16 %30 to i32
  %call25 = tail call i32 @wlc_phy_channel2freq(i32 noundef %conv24) #6
  %31 = add i32 %call25, -2428
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %31)
  %32 = icmp ult i32 %31, 40
  %sub31 = sext i1 %32 to i32
  %33 = add nsw i32 %div, %conv
  %add9.neg = sub nsw i32 %conv19, %33
  %sub17 = add nsw i32 %add9.neg, %input_power_offset_db.0
  %add20 = add nsw i32 %sub17, %sub31
  %input_power_db.0 = add nsw i32 %add20, %mul7.neg.neg
  %lcnphy_lastsensed_temperature = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %1, i32 0, i32 54
  %34 = ptrtoint ptr %lcnphy_lastsensed_temperature to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %lcnphy_lastsensed_temperature, align 2
  %conv33 = sext i8 %35 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -15, i8 %35)
  %cmp35 = icmp slt i8 %35, -15
  br i1 %cmp35, label %if.then37, label %if.else44

if.then37:                                        ; preds = %wlc_lcnphy_get_receive_power.exit
  call void @__sanitizer_cov_trace_pc() #8
  %36 = mul nsw i32 %conv33, 286
  %mul40 = add nsw i32 %36, -10010
  %shr41 = ashr i32 %mul40, 12
  %add42 = add nsw i32 %shr41, -7
  %sub43 = add nsw i32 %add42, %input_power_db.0
  br label %if.end62

if.else44:                                        ; preds = %wlc_lcnphy_get_receive_power.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %35)
  %cmp46 = icmp slt i8 %35, 19
  %37 = mul nsw i32 %conv33, 286
  %mul51 = add nsw i32 %37, -10010
  %shr52 = ashr i32 %mul51, 12
  br i1 %cmp46, label %if.then48, label %if.else55

if.then48:                                        ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #8
  %add53 = add nsw i32 %shr52, -3
  %sub54 = add nsw i32 %add53, %input_power_db.0
  br label %if.end62

if.else55:                                        ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #8
  %add60 = add nsw i32 %input_power_db.0, %shr52
  br label %if.end62

if.end62:                                         ; preds = %if.else55, %if.then48, %if.then37
  %input_power_db.1 = phi i32 [ %sub43, %if.then37 ], [ %sub54, %if.then48 ], [ %add60, %if.else55 ]
  tail call fastcc void @wlc_lcnphy_rx_gain_override_enable(ptr noundef %pi, i1 noundef zeroext false)
  ret i32 %input_power_db.1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wlc_phy_channel2freq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wlc_lcnphy_rx_gain_override_enable(ptr noundef %pi, i1 noundef zeroext %enable) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i1 %enable to i16
  %conv2 = select i1 %enable, i16 256, i16 0
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1200, i16 noundef zeroext 256, i16 noundef zeroext %conv2) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1100, i16 noundef zeroext 1, i16 noundef zeroext %conv) #6
  %phy_rev = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %phy_rev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %phy_rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp ult i32 %1, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv9 = select i1 %enable, i16 16, i16 0
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1100, i16 noundef zeroext 16, i16 noundef zeroext %conv9) #6
  %conv12 = select i1 %enable, i16 64, i16 0
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1100, i16 noundef zeroext 64, i16 noundef zeroext %conv12) #6
  %conv15 = select i1 %enable, i16 32, i16 0
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1200, i16 noundef zeroext 32, i16 noundef zeroext %conv15) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1200, i16 noundef zeroext 64, i16 noundef zeroext %conv12) #6
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv21 = select i1 %enable, i16 4096, i16 0
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1200, i16 noundef zeroext 4096, i16 noundef zeroext %conv21) #6
  %conv24 = select i1 %enable, i16 8192, i16 0
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1200, i16 noundef zeroext 8192, i16 noundef zeroext %conv24) #6
  %conv27 = select i1 %enable, i16 32, i16 0
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1200, i16 noundef zeroext 32, i16 noundef zeroext %conv27) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %radio_chanspec = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 12
  %2 = ptrtoint ptr %radio_chanspec to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %radio_chanspec, align 4
  %4 = and i16 %3, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %4)
  %cmp29 = icmp eq i16 %4, 8192
  br i1 %cmp29, label %if.then31, label %if.end.if.end38_crit_edge

if.end.if.end38_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.then31:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv34 = select i1 %enable, i16 1024, i16 0
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1200, i16 noundef zeroext 1024, i16 noundef zeroext %conv34) #6
  %conv37 = select i1 %enable, i16 8, i16 0
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1253, i16 noundef zeroext 8, i16 noundef zeroext %conv37) #6
  br label %if.end38

if.end38:                                         ; preds = %if.then31, %if.end.if.end38_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wlapi_switch_macfreq(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @or_radio_reg(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wlc_phy_do_dummy_tx(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wlapi_bmac_write_shm(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wlc_lcnphy_txpwrtbl_iqlo_cal(ptr noundef %pi) unnamed_addr #0 align 64 {
entry:
  %m0m1.i150 = alloca i16, align 2
  %tab.i151 = alloca %struct.phytbl_info, align 4
  %tab.i149 = alloca %struct.phytbl_info, align 4
  %didq.i = alloca i16, align 2
  %iqcc.i = alloca [2 x i16], align 2
  %tab.i148 = alloca %struct.phytbl_info, align 4
  %m0m1.i = alloca i16, align 2
  %tab.i = alloca %struct.phytbl_info, align 4
  %target_gains = alloca %struct.lcnphy_txgains, align 8
  %old_gains = alloca %struct.lcnphy_txgains, align 2
  %val = alloca i32, align 4
  %tab = alloca %struct.phytbl_info, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %target_gains) #6
  %0 = getelementptr inbounds %struct.lcnphy_txgains, ptr %target_gains, i32 0, i32 1
  %1 = getelementptr inbounds %struct.lcnphy_txgains, ptr %target_gains, i32 0, i32 2
  %2 = getelementptr inbounds %struct.lcnphy_txgains, ptr %target_gains, i32 0, i32 3
  %3 = ptrtoint ptr %target_gains to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %target_gains, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %old_gains) #6
  %4 = getelementptr inbounds %struct.lcnphy_txgains, ptr %old_gains, i32 0, i32 1
  %5 = getelementptr inbounds %struct.lcnphy_txgains, ptr %old_gains, i32 0, i32 2
  %6 = getelementptr inbounds %struct.lcnphy_txgains, ptr %old_gains, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %7 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %val, align 4, !annotation !48
  %call = tail call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1188) #6
  %8 = and i16 %call, -8192
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tab) #6
  %9 = getelementptr inbounds %struct.phytbl_info, ptr %tab, i32 0, i32 1
  %10 = getelementptr inbounds %struct.phytbl_info, ptr %tab, i32 0, i32 2
  %11 = getelementptr inbounds %struct.phytbl_info, ptr %tab, i32 0, i32 3
  %12 = getelementptr inbounds %struct.phytbl_info, ptr %tab, i32 0, i32 4
  %u = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 3
  %13 = call ptr @memset(ptr %tab, i32 255, i32 20)
  %14 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %u, align 4
  %call.i = tail call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1081) #6
  %16 = lshr i16 %call.i, 7
  %17 = and i16 %16, 7
  %18 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %6, align 2
  %call6.i = tail call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1205) #6
  %call11.i = tail call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1275) #6
  %and17.i = and i16 %call6.i, 255
  %19 = ptrtoint ptr %old_gains to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %and17.i, ptr %old_gains, align 2
  %20 = lshr i16 %call6.i, 8
  %21 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %4, align 2
  %22 = and i16 %call11.i, 255
  %23 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %5, align 2
  %call.i143 = tail call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1275) #6
  %24 = and i16 %call.i143, 32512
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %m0m1.i) #6
  %25 = ptrtoint ptr %m0m1.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 -1, ptr %m0m1.i, align 2, !annotation !48
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tab.i) #6
  %26 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i, i32 0, i32 1
  %27 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i, i32 0, i32 2
  %28 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i, i32 0, i32 3
  %29 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i, i32 0, i32 4
  %30 = ptrtoint ptr %tab.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %m0m1.i, ptr %tab.i, align 4
  %31 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %26, align 4
  %32 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %27, align 4
  %33 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 87, ptr %28, align 4
  %34 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 16, ptr %29, align 4
  call void @wlc_phy_read_table(ptr noundef %pi, ptr noundef nonnull %tab.i, i16 noundef zeroext 1109, i16 noundef zeroext 1111, i16 noundef zeroext 1110) #6
  %35 = ptrtoint ptr %m0m1.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %m0m1.i, align 2
  %37 = and i16 %36, -256
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tab.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %m0m1.i) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp = icmp eq i16 %8, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %38 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %u, align 4
  %call.i144 = call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1188) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 -8193, i16 %call.i144)
  %cmp.not.i = icmp ugt i16 %call.i144, -8193
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %lcnphy_current_index.i = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %39, i32 0, i32 77
  %40 = ptrtoint ptr %lcnphy_current_index.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %lcnphy_current_index.i, align 2
  br label %wlc_lcnphy_get_current_tx_pwr_idx.exit

if.else.i:                                        ; preds = %if.then
  %hwpwrctrl_capable.i = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 139
  %42 = ptrtoint ptr %hwpwrctrl_capable.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %hwpwrctrl_capable.i, align 4, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.not.i = icmp eq i8 %43, 0
  br i1 %tobool.not.i, label %if.else7.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i = call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1139) #6
  %44 = lshr i16 %call3.i, 1
  %conv6.i = trunc i16 %44 to i8
  br label %wlc_lcnphy_get_current_tx_pwr_idx.exit

if.else7.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %lcnphy_current_index8.i = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %39, i32 0, i32 77
  %45 = ptrtoint ptr %lcnphy_current_index8.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %lcnphy_current_index8.i, align 2
  br label %wlc_lcnphy_get_current_tx_pwr_idx.exit

wlc_lcnphy_get_current_tx_pwr_idx.exit:           ; preds = %if.else7.i, %if.then2.i, %if.then.i
  %index.0.i = phi i8 [ %41, %if.then.i ], [ %conv6.i, %if.then2.i ], [ %46, %if.else7.i ]
  %conv7 = sext i8 %index.0.i to i32
  br label %if.end

if.end:                                           ; preds = %wlc_lcnphy_get_current_tx_pwr_idx.exit, %entry.if.end_crit_edge
  %SAVE_txpwrindex.0 = phi i32 [ %conv7, %wlc_lcnphy_get_current_tx_pwr_idx.exit ], [ 255, %entry.if.end_crit_edge ]
  call void @wlc_lcnphy_set_tx_pwr_ctrl(ptr noundef %pi, i16 noundef zeroext 0)
  %47 = ptrtoint ptr %target_gains to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 7, ptr %target_gains, align 8
  %48 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 0, ptr %0, align 2
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 21, ptr %1, align 4
  %50 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 0, ptr %2, align 2
  call fastcc void @wlc_lcnphy_set_tx_gain(ptr noundef %pi, ptr noundef nonnull %target_gains)
  %phy_rev = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 7, i32 1
  %51 = ptrtoint ptr %phy_rev to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %phy_rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %52)
  %cmp8 = icmp eq i32 %52, 1
  br i1 %cmp8, label %if.end.if.then11_crit_edge, label %lor.lhs.false

if.end.if.then11_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11

lor.lhs.false:                                    ; preds = %if.end
  %lcnphy_hw_iqcal_en = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %15, i32 0, i32 32
  %53 = ptrtoint ptr %lcnphy_hw_iqcal_en to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %lcnphy_hw_iqcal_en, align 2, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool.not = icmp eq i8 %54, 0
  br i1 %tobool.not, label %if.else, label %lor.lhs.false.if.then11_crit_edge

lor.lhs.false.if.then11_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11

if.then11:                                        ; preds = %lor.lhs.false.if.then11_crit_edge, %if.end.if.then11_crit_edge
  call void @wlc_lcnphy_set_tx_pwr_by_index(ptr noundef %pi, i32 noundef 30)
  %lcnphy_recal = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %15, i32 0, i32 4
  %55 = ptrtoint ptr %lcnphy_recal to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %lcnphy_recal, align 4, !range !47
  %57 = zext i8 %56 to i32
  call fastcc void @wlc_lcnphy_tx_iqlo_cal(ptr noundef %pi, ptr noundef nonnull %target_gains, i32 noundef %57)
  br label %if.end14

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  call void @wlc_lcnphy_set_tx_pwr_by_index(ptr noundef %pi, i32 noundef 16)
  call fastcc void @wlc_lcnphy_tx_iqlo_soft_cal_full(ptr noundef %pi)
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then11
  %call.i145 = call zeroext i16 @read_radio_reg(ptr noundef %pi, i16 noundef zeroext 137) #6
  %58 = trunc i16 %call.i145 to i8
  %59 = lshr i8 %58, 4
  %call3.i146 = call zeroext i16 @read_radio_reg(ptr noundef %pi, i16 noundef zeroext 137) #6
  %60 = trunc i16 %call3.i146 to i8
  %conv6.i147 = and i8 %60, 15
  %add.i = sub nsw i8 %conv6.i147, %59
  %call9.i = call zeroext i16 @read_radio_reg(ptr noundef %pi, i16 noundef zeroext 138) #6
  %61 = trunc i16 %call9.i to i8
  %62 = lshr i8 %61, 4
  %call16.i = call zeroext i16 @read_radio_reg(ptr noundef %pi, i16 noundef zeroext 138) #6
  %63 = trunc i16 %call16.i to i8
  %conv19.i = and i8 %63, 15
  %add21.i = sub nsw i8 %conv19.i, %62
  %call23.i = call zeroext i16 @read_radio_reg(ptr noundef %pi, i16 noundef zeroext 139) #6
  %64 = trunc i16 %call23.i to i8
  %65 = lshr i8 %64, 4
  %call30.i = call zeroext i16 @read_radio_reg(ptr noundef %pi, i16 noundef zeroext 139) #6
  %66 = trunc i16 %call30.i to i8
  %conv33.i = and i8 %66, 15
  %add35.i = sub nsw i8 %conv33.i, %65
  %call37.i = call zeroext i16 @read_radio_reg(ptr noundef %pi, i16 noundef zeroext 140) #6
  %67 = trunc i16 %call37.i to i8
  %68 = lshr i8 %67, 4
  %call44.i = call zeroext i16 @read_radio_reg(ptr noundef %pi, i16 noundef zeroext 140) #6
  %69 = trunc i16 %call44.i to i8
  %conv47.i = and i8 %69, 15
  %add49.i = sub nsw i8 %conv47.i, %68
  %70 = call i8 @llvm.abs.i8(i8 %add35.i, i1 true)
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %70)
  %cmp21 = icmp eq i8 %70, 15
  %71 = call i8 @llvm.abs.i8(i8 %add49.i, i1 true)
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %71)
  %cmp35 = icmp eq i8 %71, 15
  %or.cond = select i1 %cmp21, i1 %cmp35, i1 false
  br i1 %or.cond, label %if.then37, label %if.end14.if.end66_crit_edge

if.end14.if.end66_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66

if.then37:                                        ; preds = %if.end14
  %radio_chanspec = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 12
  %72 = ptrtoint ptr %radio_chanspec to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %radio_chanspec, align 4
  %74 = and i16 %73, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %74)
  %cmp40 = icmp eq i16 %74, 4096
  %. = select i1 %cmp40, i16 255, i16 7
  %.141 = select i1 %cmp40, i16 255, i16 45
  %.142 = select i1 %cmp40, i16 240, i16 186
  %75 = ptrtoint ptr %target_gains to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %., ptr %target_gains, align 8
  %76 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %.141, ptr %0, align 2
  %77 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %.142, ptr %1, align 4
  %78 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 0, ptr %2, align 2
  %79 = ptrtoint ptr %phy_rev to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %phy_rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %80)
  %cmp55 = icmp eq i32 %80, 1
  br i1 %cmp55, label %if.then37.if.then61_crit_edge, label %lor.lhs.false57

if.then37.if.then61_crit_edge:                    ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then61

lor.lhs.false57:                                  ; preds = %if.then37
  %lcnphy_hw_iqcal_en58 = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %15, i32 0, i32 32
  %81 = ptrtoint ptr %lcnphy_hw_iqcal_en58 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %lcnphy_hw_iqcal_en58, align 2, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool59.not = icmp eq i8 %82, 0
  br i1 %tobool59.not, label %if.else64, label %lor.lhs.false57.if.then61_crit_edge

lor.lhs.false57.if.then61_crit_edge:              ; preds = %lor.lhs.false57
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then61

if.then61:                                        ; preds = %lor.lhs.false57.if.then61_crit_edge, %if.then37.if.then61_crit_edge
  %83 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 0, ptr %0, align 2
  %84 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 30, ptr %1, align 4
  call void @wlc_lcnphy_set_tx_pwr_by_index(ptr noundef %pi, i32 noundef 16)
  call fastcc void @wlc_lcnphy_tx_iqlo_cal(ptr noundef %pi, ptr noundef nonnull %target_gains, i32 noundef 0)
  br label %if.end66

if.else64:                                        ; preds = %lor.lhs.false57
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @wlc_lcnphy_tx_iqlo_soft_cal_full(ptr noundef %pi)
  br label %if.end66

if.end66:                                         ; preds = %if.else64, %if.then61, %if.end14.if.end66_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iqcc.i) #6
  %85 = ptrtoint ptr %iqcc.i to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 -1, ptr %iqcc.i, align 2, !annotation !48
  %86 = getelementptr inbounds [2 x i16], ptr %iqcc.i, i32 0, i32 1
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 -1, ptr %86, align 2, !annotation !48
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tab.i148) #6
  %88 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i148, i32 0, i32 1
  %89 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i148, i32 0, i32 2
  %90 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i148, i32 0, i32 3
  %91 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i148, i32 0, i32 4
  %92 = ptrtoint ptr %tab.i148 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %iqcc.i, ptr %tab.i148, align 4
  %93 = ptrtoint ptr %88 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 2, ptr %88, align 4
  %94 = ptrtoint ptr %89 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 0, ptr %89, align 4
  %95 = ptrtoint ptr %90 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 80, ptr %90, align 4
  %96 = ptrtoint ptr %91 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 16, ptr %91, align 4
  call void @wlc_phy_read_table(ptr noundef %pi, ptr noundef nonnull %tab.i148, i16 noundef zeroext 1109, i16 noundef zeroext 1111, i16 noundef zeroext 1110) #6
  %97 = ptrtoint ptr %iqcc.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %iqcc.i, align 2
  %99 = ptrtoint ptr %86 to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %86, align 2
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tab.i148) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iqcc.i) #6
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tab.i149) #6
  %101 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i149, i32 0, i32 1
  %102 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i149, i32 0, i32 2
  %103 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i149, i32 0, i32 3
  %104 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i149, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %didq.i) #6
  %105 = ptrtoint ptr %didq.i to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 -1, ptr %didq.i, align 2, !annotation !48
  %106 = ptrtoint ptr %102 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 0, ptr %102, align 4
  %107 = ptrtoint ptr %104 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 16, ptr %104, align 4
  %108 = ptrtoint ptr %tab.i149 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %didq.i, ptr %tab.i149, align 4
  %109 = ptrtoint ptr %101 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 1, ptr %101, align 4
  %110 = ptrtoint ptr %103 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 85, ptr %103, align 4
  call void @wlc_phy_read_table(ptr noundef %pi, ptr noundef nonnull %tab.i149, i16 noundef zeroext 1109, i16 noundef zeroext 1111, i16 noundef zeroext 1110) #6
  %111 = ptrtoint ptr %didq.i to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %didq.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %didq.i) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tab.i149) #6
  %113 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 7, ptr %10, align 4
  %114 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 32, ptr %12, align 4
  %115 = ptrtoint ptr %tab to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %val, ptr %tab, align 4
  %116 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 1, ptr %9, align 4
  %117 = and i16 %98, 1023
  %and73 = zext i16 %117 to i32
  %shl = shl nuw nsw i32 %and73, 10
  %118 = and i16 %100, 1023
  %and75 = zext i16 %118 to i32
  %conv77 = zext i16 %112 to i32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end66
  %idx.0158 = phi i32 [ 0, %if.end66 ], [ %inc, %for.body.for.body_crit_edge ]
  %add = add nuw nsw i32 %idx.0158, 320
  %119 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %add, ptr %11, align 4
  call void @wlc_phy_read_table(ptr noundef %pi, ptr noundef nonnull %tab, i16 noundef zeroext 1109, i16 noundef zeroext 1111, i16 noundef zeroext 1110) #6
  %120 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %val, align 4
  %and71 = and i32 %121, -1048576
  %or = or i32 %and71, %shl
  %or76 = or i32 %or, %and75
  store i32 %or76, ptr %val, align 4
  call void @wlc_phy_write_table(ptr noundef %pi, ptr noundef nonnull %tab, i16 noundef zeroext 1109, i16 noundef zeroext 1111, i16 noundef zeroext 1110) #6
  %122 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %conv77, ptr %val, align 4
  %add78 = add nuw nsw i32 %idx.0158, 448
  %123 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %add78, ptr %11, align 4
  call void @wlc_phy_write_table(ptr noundef %pi, ptr noundef nonnull %tab, i16 noundef zeroext 1109, i16 noundef zeroext 1111, i16 noundef zeroext 1110) #6
  %inc = add nuw nsw i32 %idx.0158, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  %lcnphy_cal_results = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %15, i32 0, i32 71
  %124 = ptrtoint ptr %lcnphy_cal_results to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 %98, ptr %lcnphy_cal_results, align 4
  %txiqlocal_b = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %15, i32 0, i32 71, i32 1
  %125 = ptrtoint ptr %txiqlocal_b to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 %100, ptr %txiqlocal_b, align 2
  %txiqlocal_didq = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %15, i32 0, i32 71, i32 2
  %126 = ptrtoint ptr %txiqlocal_didq to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 %112, ptr %txiqlocal_didq, align 4
  %txiqlocal_ei0 = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %15, i32 0, i32 71, i32 3
  %127 = ptrtoint ptr %txiqlocal_ei0 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %add.i, ptr %txiqlocal_ei0, align 2
  %txiqlocal_eq0 = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %15, i32 0, i32 71, i32 4
  %128 = ptrtoint ptr %txiqlocal_eq0 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %add21.i, ptr %txiqlocal_eq0, align 1
  %txiqlocal_fi0 = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %15, i32 0, i32 71, i32 5
  %129 = ptrtoint ptr %txiqlocal_fi0 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %add35.i, ptr %txiqlocal_fi0, align 4
  %txiqlocal_fq0 = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %15, i32 0, i32 71, i32 6
  %130 = ptrtoint ptr %txiqlocal_fq0 to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 %add49.i, ptr %txiqlocal_fq0, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %m0m1.i150) #6
  %131 = ptrtoint ptr %m0m1.i150 to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 %37, ptr %m0m1.i150, align 2
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tab.i151) #6
  %132 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i151, i32 0, i32 1
  %133 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i151, i32 0, i32 2
  %134 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i151, i32 0, i32 3
  %135 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i151, i32 0, i32 4
  %136 = ptrtoint ptr %tab.i151 to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %m0m1.i150, ptr %tab.i151, align 4
  %137 = ptrtoint ptr %132 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 1, ptr %132, align 4
  %138 = ptrtoint ptr %133 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 0, ptr %133, align 4
  %139 = ptrtoint ptr %134 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 87, ptr %134, align 4
  %140 = ptrtoint ptr %135 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 16, ptr %135, align 4
  call void @wlc_phy_write_table(ptr noundef %pi, ptr noundef nonnull %tab.i151, i16 noundef zeroext 1109, i16 noundef zeroext 1111, i16 noundef zeroext 1110) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tab.i151) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %m0m1.i150) #6
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1275, i16 noundef zeroext 32512, i16 noundef zeroext %24) #6
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1277, i16 noundef zeroext 32512, i16 noundef zeroext %24) #6
  call fastcc void @wlc_lcnphy_set_tx_gain(ptr noundef %pi, ptr noundef nonnull %old_gains)
  br i1 %cmp, label %if.else90, label %if.then89

if.then89:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @wlc_lcnphy_set_tx_pwr_ctrl(ptr noundef %pi, i16 noundef zeroext %8)
  br label %if.end91

if.else90:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @wlc_lcnphy_set_tx_pwr_by_index(ptr noundef %pi, i32 noundef %SAVE_txpwrindex.0)
  br label %if.end91

if.end91:                                         ; preds = %if.else90, %if.then89
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tab) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %old_gains) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %target_gains) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wlc_lcnphy_rx_iq_cal(ptr noundef %pi, i32 noundef %tx_gain_idx) unnamed_addr #0 align 64 {
entry:
  %iq_est.i = alloca %struct.lcnphy_iq_est, align 4
  %iq_est_h.i = alloca %struct.lcnphy_iq_est, align 4
  %iq_est_l.i = alloca %struct.lcnphy_iq_est, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 3
  %0 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %u, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 2592, i32 noundef 262) #9
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end30

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end30:                                         ; preds = %entry
  %call37 = tail call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1188) #6
  tail call void @wlc_lcnphy_set_tx_pwr_ctrl(ptr noundef %pi, i16 noundef zeroext 0)
  %call45 = tail call zeroext i16 @read_radio_reg(ptr noundef %pi, i16 noundef zeroext 152) #6
  %call45.1 = tail call zeroext i16 @read_radio_reg(ptr noundef %pi, i16 noundef zeroext 278) #6
  %call45.2 = tail call zeroext i16 @read_radio_reg(ptr noundef %pi, i16 noundef zeroext 300) #6
  %call45.3 = tail call zeroext i16 @read_radio_reg(ptr noundef %pi, i16 noundef zeroext 106) #6
  %call45.4 = tail call zeroext i16 @read_radio_reg(ptr noundef %pi, i16 noundef zeroext 11) #6
  %call45.5 = tail call zeroext i16 @read_radio_reg(ptr noundef %pi, i16 noundef zeroext 27) #6
  %call45.6 = tail call zeroext i16 @read_radio_reg(ptr noundef %pi, i16 noundef zeroext 275) #6
  %call45.7 = tail call zeroext i16 @read_radio_reg(ptr noundef %pi, i16 noundef zeroext 29) #6
  %call45.8 = tail call zeroext i16 @read_radio_reg(ptr noundef %pi, i16 noundef zeroext 276) #6
  %call45.9 = tail call zeroext i16 @read_radio_reg(ptr noundef %pi, i16 noundef zeroext 46) #6
  %call45.10 = tail call zeroext i16 @read_radio_reg(ptr noundef %pi, i16 noundef zeroext 298) #6
  %3 = and i16 %call37, -8192
  %call48 = tail call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1585) #6
  tail call void @or_phy_reg(ptr noundef %pi, i16 noundef zeroext 1585, i16 noundef zeroext 21) #6
  %call49 = tail call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1100) #6
  %call50 = tail call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1101) #6
  %call51 = tail call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1200) #6
  %call52 = tail call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1201) #6
  %call53 = tail call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1273) #6
  %call54 = tail call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1274) #6
  %call55 = tail call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 2360) #6
  %call56 = tail call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 2361) #6
  %call57 = tail call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1083) #6
  %call58 = tail call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1084) #6
  %call59 = tail call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1754) #6
  %call60 = tail call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1755) #6
  %call61 = tail call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1083) #6
  %4 = and i16 %call61, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %cmp64.not = icmp eq i16 %4, 0
  br i1 %cmp64.not, label %if.end30.if.end69_crit_edge, label %if.then68

if.end30.if.end69_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

if.then68:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1081) #6
  %call6.i = tail call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1205) #6
  %call11.i = tail call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1275) #6
  %lcnphy_current_index = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %1, i32 0, i32 77
  %5 = ptrtoint ptr %lcnphy_current_index to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %lcnphy_current_index, align 2
  %phi.cast = zext i8 %6 to i32
  br label %if.end69

if.end69:                                         ; preds = %if.then68, %if.end30.if.end69_crit_edge
  %tx_gain_index_old.0 = phi i32 [ %phi.cast, %if.then68 ], [ 0, %if.end30.if.end69_crit_edge ]
  tail call void @wlc_lcnphy_set_tx_pwr_by_index(ptr noundef %pi, i32 noundef %tx_gain_idx)
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1273, i16 noundef zeroext 1, i16 noundef zeroext 1) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1274, i16 noundef zeroext 1, i16 noundef zeroext 0) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1083, i16 noundef zeroext 2, i16 noundef zeroext 2) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1084, i16 noundef zeroext 2, i16 noundef zeroext 0) #6
  tail call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext 278, i16 noundef zeroext 6) #6
  tail call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext 300, i16 noundef zeroext 7) #6
  tail call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext 106, i16 noundef zeroext 211) #6
  tail call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext 152, i16 noundef zeroext 3) #6
  tail call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext 11, i16 noundef zeroext 7) #6
  tail call void @mod_radio_reg(ptr noundef %pi, i16 noundef zeroext 275, i16 noundef zeroext 16, i16 noundef zeroext 16) #6
  tail call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext 29, i16 noundef zeroext 1) #6
  tail call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext 276, i16 noundef zeroext 1) #6
  tail call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext 46, i16 noundef zeroext 16) #6
  tail call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext 298, i16 noundef zeroext 8) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 2360, i16 noundef zeroext 1, i16 noundef zeroext 1) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 2361, i16 noundef zeroext 1, i16 noundef zeroext 0) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 2360, i16 noundef zeroext 2, i16 noundef zeroext 2) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 2361, i16 noundef zeroext 2, i16 noundef zeroext 2) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 2360, i16 noundef zeroext 4, i16 noundef zeroext 4) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 2361, i16 noundef zeroext 4, i16 noundef zeroext 4) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 2360, i16 noundef zeroext 8, i16 noundef zeroext 8) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 2361, i16 noundef zeroext 8, i16 noundef zeroext 8) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 2360, i16 noundef zeroext 32, i16 noundef zeroext 32) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 2361, i16 noundef zeroext 32, i16 noundef zeroext 0) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1083, i16 noundef zeroext 1, i16 noundef zeroext 1) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1084, i16 noundef zeroext 1, i16 noundef zeroext 0) #6
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 1754, i16 noundef zeroext -1) #6
  tail call void @or_phy_reg(ptr noundef %pi, i16 noundef zeroext 1755, i16 noundef zeroext 3) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1101, i16 noundef zeroext 3, i16 noundef zeroext 2) #6
  tail call void @or_phy_reg(ptr noundef %pi, i16 noundef zeroext 1100, i16 noundef zeroext 3) #6
  %7 = getelementptr inbounds %struct.lcnphy_iq_est, ptr %iq_est_h.i, i32 0, i32 1
  %8 = getelementptr inbounds %struct.lcnphy_iq_est, ptr %iq_est_h.i, i32 0, i32 2
  %9 = getelementptr inbounds %struct.lcnphy_iq_est, ptr %iq_est_l.i, i32 0, i32 1
  %10 = getelementptr inbounds %struct.lcnphy_iq_est, ptr %iq_est_l.i, i32 0, i32 2
  %phy_rev.i.i = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 7, i32 1
  br label %for.cond76.preheader

for.cond76.preheader:                             ; preds = %for.inc100.for.cond76.preheader_crit_edge, %if.end69
  %lna2_gain.013 = phi i32 [ 3, %if.end69 ], [ %dec101, %for.inc100.for.cond76.preheader_crit_edge ]
  %conv86 = trunc i32 %lna2_gain.013 to i16
  %11 = and i16 %conv86, 3
  %shl9.i.i = shl nuw nsw i16 %11, 6
  %shl13.i.i = shl nuw nsw i16 %11, 4
  br label %for.cond80.preheader

for.cond80.preheader:                             ; preds = %for.inc97.for.cond80.preheader_crit_edge, %for.cond76.preheader
  %tia_gain.012 = phi i32 [ 4, %for.cond76.preheader ], [ %dec98, %for.inc97.for.cond80.preheader_crit_edge ]
  %conv85 = trunc i32 %tia_gain.012 to i16
  %12 = shl i16 %conv85, 8
  %13 = and i16 %12, 3840
  br label %for.body83

for.body83:                                       ; preds = %for.inc94.for.body83_crit_edge, %for.cond80.preheader
  %biq1_gain.011 = phi i32 [ 6, %for.cond80.preheader ], [ %dec95, %for.inc94.for.body83_crit_edge ]
  %conv84 = trunc i32 %biq1_gain.011 to i16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %iq_est_h.i) #6
  %14 = ptrtoint ptr %iq_est_h.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %iq_est_h.i, align 4, !annotation !48
  %15 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %7, align 4, !annotation !48
  %16 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %8, align 4, !annotation !48
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %iq_est_l.i) #6
  %17 = ptrtoint ptr %iq_est_l.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %iq_est_l.i, align 4, !annotation !48
  %18 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %9, align 4, !annotation !48
  %19 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %10, align 4, !annotation !48
  %20 = shl i16 %conv84, 12
  %or1.i.i = or i16 %20, %13
  %or10.i.i = or i16 %or1.i.i, %shl9.i.i
  %or14.i.i = or i16 %or10.i.i, %shl13.i.i
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1206, i16 noundef zeroext -1, i16 noundef zeroext %or14.i.i) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1207, i16 noundef zeroext 15, i16 noundef zeroext 0) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1201, i16 noundef zeroext 6144, i16 noundef zeroext 0) #6
  %21 = ptrtoint ptr %phy_rev.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %phy_rev.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %cmp.i.i = icmp ult i32 %22, 2
  br i1 %cmp.i.i, label %for.body83.wlc_lcnphy_set_rx_gain_by_distribution.exit.i_crit_edge, label %if.else.i.i

for.body83.wlc_lcnphy_set_rx_gain_by_distribution.exit.i_crit_edge: ; preds = %for.body83
  call void @__sanitizer_cov_trace_pc() #8
  br label %wlc_lcnphy_set_rx_gain_by_distribution.exit.i

if.else.i.i:                                      ; preds = %for.body83
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1201, i16 noundef zeroext 1024, i16 noundef zeroext 0) #6
  br label %wlc_lcnphy_set_rx_gain_by_distribution.exit.i

wlc_lcnphy_set_rx_gain_by_distribution.exit.i:    ; preds = %if.else.i.i, %for.body83.wlc_lcnphy_set_rx_gain_by_distribution.exit.i_crit_edge
  %.sink2.i.i = phi i16 [ -32768, %if.else.i.i ], [ 512, %for.body83.wlc_lcnphy_set_rx_gain_by_distribution.exit.i_crit_edge ]
  %.sink.i.i = phi i16 [ 512, %if.else.i.i ], [ 1024, %for.body83.wlc_lcnphy_set_rx_gain_by_distribution.exit.i_crit_edge ]
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1201, i16 noundef zeroext %.sink2.i.i, i16 noundef zeroext 0) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1201, i16 noundef zeroext %.sink.i.i, i16 noundef zeroext 0) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1101, i16 noundef zeroext 1, i16 noundef zeroext 1) #6
  tail call fastcc void @wlc_lcnphy_rx_gain_override_enable(ptr noundef %pi, i1 noundef zeroext true) #6
  tail call void @wlc_lcnphy_start_tx_tone(ptr noundef %pi, i32 noundef 2000, i16 noundef zeroext 20, i1 noundef zeroext false) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 107374000) #6
  tail call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext 274, i16 noundef zeroext 0) #6
  %call.i1 = call fastcc zeroext i1 @wlc_lcnphy_rx_iq_est(ptr noundef %pi, i16 noundef zeroext 1024, ptr noundef nonnull %iq_est_l.i) #6
  br i1 %call.i1, label %if.end.i, label %wlc_lcnphy_set_rx_gain_by_distribution.exit.i.for.inc94_crit_edge

wlc_lcnphy_set_rx_gain_by_distribution.exit.i.for.inc94_crit_edge: ; preds = %wlc_lcnphy_set_rx_gain_by_distribution.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc94

if.end.i:                                         ; preds = %wlc_lcnphy_set_rx_gain_by_distribution.exit.i
  tail call void @wlc_lcnphy_start_tx_tone(ptr noundef %pi, i32 noundef 2000, i16 noundef zeroext 40, i1 noundef zeroext false) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 107374000) #6
  tail call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext 274, i16 noundef zeroext 0) #6
  %call1.i = call fastcc zeroext i1 @wlc_lcnphy_rx_iq_est(ptr noundef %pi, i16 noundef zeroext 1024, ptr noundef nonnull %iq_est_h.i) #6
  br i1 %call1.i, label %if.end3.i, label %if.end.i.for.inc94_crit_edge

if.end.i.for.inc94_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc94

if.end3.i:                                        ; preds = %if.end.i
  %25 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %9, align 4
  %shl.i = shl i32 %26, 1
  %27 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %shl.i)
  %cmp.i = icmp ugt i32 %28, %shl.i
  %add.i = mul i32 %26, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %add.i)
  %cmp14.i = icmp ult i32 %28, %add.i
  %or.cond.i = and i1 %cmp.i, %cmp14.i
  br i1 %or.cond.i, label %land.lhs.true15.i, label %if.end3.i.for.inc94_crit_edge

if.end3.i.for.inc94_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc94

land.lhs.true15.i:                                ; preds = %if.end3.i
  %29 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %10, align 4
  %add11.i = mul i32 %30, 5
  %shl7.i = shl i32 %30, 1
  %31 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %shl7.i)
  %cmp17.i = icmp ugt i32 %32, %shl7.i
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %add11.i)
  %cmp20.i = icmp ult i32 %32, %add11.i
  %or.cond36.i = and i1 %cmp17.i, %cmp20.i
  br i1 %or.cond36.i, label %if.end91, label %land.lhs.true15.i.for.inc94_crit_edge

land.lhs.true15.i.for.inc94_crit_edge:            ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc94

if.end91:                                         ; preds = %land.lhs.true15.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %iq_est_l.i) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %iq_est_h.i) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %iq_est.i) #6
  %33 = call ptr @memset(ptr %iq_est.i, i32 0, i32 12)
  %34 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %u, align 4
  %call.i2 = tail call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1605) #6
  %call2.i = tail call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1606) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1745, i16 noundef zeroext 4, i16 noundef zeroext 0) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1611, i16 noundef zeroext 64, i16 noundef zeroext 64) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1605, i16 noundef zeroext 1023, i16 noundef zeroext 0) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1606, i16 noundef zeroext 1023, i16 noundef zeroext 0) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1607, i16 noundef zeroext 1023, i16 noundef zeroext 0) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1608, i16 noundef zeroext 1023, i16 noundef zeroext 0) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1609, i16 noundef zeroext 1023, i16 noundef zeroext 0) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1610, i16 noundef zeroext 1023, i16 noundef zeroext 0) #6
  %call7.i = call fastcc zeroext i1 @wlc_lcnphy_rx_iq_est(ptr noundef %pi, i16 noundef zeroext 1024, ptr noundef nonnull %iq_est.i) #6
  br i1 %call7.i, label %if.end.i5, label %if.end91.cleanup.i_crit_edge

if.end91.cleanup.i_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i

if.end.i5:                                        ; preds = %if.end91
  %36 = ptrtoint ptr %iq_est.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %iq_est.i, align 4
  %i_pwr.i = getelementptr inbounds %struct.lcnphy_iq_est, ptr %iq_est.i, i32 0, i32 1
  %38 = ptrtoint ptr %i_pwr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %i_pwr.i, align 4
  %q_pwr.i = getelementptr inbounds %struct.lcnphy_iq_est, ptr %iq_est.i, i32 0, i32 2
  %40 = ptrtoint ptr %q_pwr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %q_pwr.i, align 4
  %add.i3 = add i32 %41, %39
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %add.i3)
  %cmp.i4 = icmp ult i32 %add.i3, 2
  br i1 %cmp.i4, label %if.end.i5.cleanup.i_crit_edge, label %if.end10.i

if.end.i5.cleanup.i_crit_edge:                    ; preds = %if.end.i5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i

if.end10.i:                                       ; preds = %if.end.i5
  %call11.i6 = tail call zeroext i8 @wlc_phy_nbits(i32 noundef %37) #6
  %call13.i = tail call zeroext i8 @wlc_phy_nbits(i32 noundef %41) #6
  %42 = zext i8 %call11.i6 to i32
  %sub.i = sub nsw i32 30, %42
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %call11.i6)
  %cmp19.i = icmp ugt i8 %call11.i6, 19
  br i1 %cmp19.i, label %if.then21.i, label %if.else.i

if.then21.i:                                      ; preds = %if.end10.i
  %conv17.i = add nsw i32 %42, -20
  %shl.i7 = shl i32 %37, %sub.i
  %add26.i = add nsw i32 %42, -19
  %shr27.i = lshr i32 %39, %add26.i
  %add28.i = sub i32 %shr27.i, %shl.i7
  %shr30.i = lshr i32 %39, %conv17.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr30.i)
  %cmp31.i = icmp eq i32 %shr30.i, 0
  br i1 %cmp31.i, label %if.then21.i.wlc_lcnphy_calc_rx_iq_comp.exit_crit_edge, label %if.then21.i.if.end50.i_crit_edge

if.then21.i.if.end50.i_crit_edge:                 ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50.i

if.then21.i.wlc_lcnphy_calc_rx_iq_comp.exit_crit_edge: ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %wlc_lcnphy_calc_rx_iq_comp.exit

if.else.i:                                        ; preds = %if.end10.i
  %shl37.i = shl i32 %37, %sub.i
  %sub40.i = sub nsw i32 19, %42
  %shl41.i = shl i32 %39, %sub40.i
  %add42.i = sub i32 %shl41.i, %shl37.i
  %sub44.i = sub nsw i32 20, %42
  %shl45.i = shl i32 %39, %sub44.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl45.i)
  %cmp46.i = icmp eq i32 %shl45.i, 0
  br i1 %cmp46.i, label %if.else.i.wlc_lcnphy_calc_rx_iq_comp.exit_crit_edge, label %if.else.i.if.end50.i_crit_edge

if.else.i.if.end50.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50.i

if.else.i.wlc_lcnphy_calc_rx_iq_comp.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %wlc_lcnphy_calc_rx_iq_comp.exit

if.end50.i:                                       ; preds = %if.else.i.if.end50.i_crit_edge, %if.then21.i.if.end50.i_crit_edge
  %a.0.i = phi i32 [ %add28.i, %if.then21.i.if.end50.i_crit_edge ], [ %add42.i, %if.else.i.if.end50.i_crit_edge ]
  %temp.0.i = phi i32 [ %shr30.i, %if.then21.i.if.end50.i_crit_edge ], [ %shl45.i, %if.else.i.if.end50.i_crit_edge ]
  %div.i = sdiv i32 %a.0.i, %temp.0.i
  %43 = zext i8 %call13.i to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %call13.i)
  %cmp56.i = icmp ugt i8 %call13.i, 10
  br i1 %cmp56.i, label %if.then58.i, label %if.else68.i

if.then58.i:                                      ; preds = %if.end50.i
  %conv54.i = add nsw i32 %43, -11
  %shr63.i = lshr i32 %39, %conv54.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr63.i)
  %cmp64.i = icmp eq i32 %shr63.i, 0
  br i1 %cmp64.i, label %if.then58.i.wlc_lcnphy_calc_rx_iq_comp.exit_crit_edge, label %if.then58.i.if.end79.i_crit_edge

if.then58.i.if.end79.i_crit_edge:                 ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end79.i

if.then58.i.wlc_lcnphy_calc_rx_iq_comp.exit_crit_edge: ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %wlc_lcnphy_calc_rx_iq_comp.exit

if.else68.i:                                      ; preds = %if.end50.i
  %sub73.i = sub nsw i32 11, %43
  %shl74.i = shl i32 %39, %sub73.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl74.i)
  %cmp75.i = icmp eq i32 %shl74.i, 0
  br i1 %cmp75.i, label %if.else68.i.wlc_lcnphy_calc_rx_iq_comp.exit_crit_edge, label %if.else68.i.if.end79.i_crit_edge

if.else68.i.if.end79.i_crit_edge:                 ; preds = %if.else68.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end79.i

if.else68.i.wlc_lcnphy_calc_rx_iq_comp.exit_crit_edge: ; preds = %if.else68.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %wlc_lcnphy_calc_rx_iq_comp.exit

if.end79.i:                                       ; preds = %if.else68.i.if.end79.i_crit_edge, %if.then58.i.if.end79.i_crit_edge
  %temp.1.i = phi i32 [ %shr63.i, %if.then58.i.if.end79.i_crit_edge ], [ %shl74.i, %if.else68.i.if.end79.i_crit_edge ]
  %sub60.pn.i = sub nsw i32 31, %43
  %b.0.i = shl i32 %41, %sub60.pn.i
  %div80.i = sdiv i32 %b.0.i, %temp.1.i
  %mul.i = mul i32 %div.i, %div.i
  %sub81.i = sub i32 %div80.i, %mul.i
  %call82.i = tail call i32 @int_sqrt(i32 noundef %sub81.i) #6
  %44 = trunc i32 %div.i to i16
  %45 = trunc i32 %call82.i to i16
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end79.i, %if.end.i5.cleanup.i_crit_edge, %if.end91.cleanup.i_crit_edge
  %a0_new.0.in.i = phi i16 [ %44, %if.end79.i ], [ %call.i2, %if.end91.cleanup.i_crit_edge ], [ %call.i2, %if.end.i5.cleanup.i_crit_edge ]
  %b0_new.0.in.i = phi i16 [ %45, %if.end79.i ], [ %call2.i, %if.end91.cleanup.i_crit_edge ], [ %call2.i, %if.end.i5.cleanup.i_crit_edge ]
  %b0_new.0.i = and i16 %b0_new.0.in.i, 1023
  %a0_new.0.i = and i16 %a0_new.0.in.i, 1023
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1605, i16 noundef zeroext 1023, i16 noundef zeroext %a0_new.0.i) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1606, i16 noundef zeroext 1023, i16 noundef zeroext %b0_new.0.i) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1607, i16 noundef zeroext 1023, i16 noundef zeroext %a0_new.0.i) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1608, i16 noundef zeroext 1023, i16 noundef zeroext %b0_new.0.i) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1609, i16 noundef zeroext 1023, i16 noundef zeroext %a0_new.0.i) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1610, i16 noundef zeroext 1023, i16 noundef zeroext %b0_new.0.i) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1611, i16 noundef zeroext 1, i16 noundef zeroext 1) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1611, i16 noundef zeroext 8, i16 noundef zeroext 8) #6
  %rxiqcal_coeff_a0.i = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %35, i32 0, i32 71, i32 17
  %46 = ptrtoint ptr %rxiqcal_coeff_a0.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %a0_new.0.i, ptr %rxiqcal_coeff_a0.i, align 2
  %rxiqcal_coeff_b0.i = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %35, i32 0, i32 71, i32 18
  %47 = ptrtoint ptr %rxiqcal_coeff_b0.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %b0_new.0.i, ptr %rxiqcal_coeff_b0.i, align 4
  br label %wlc_lcnphy_calc_rx_iq_comp.exit

wlc_lcnphy_calc_rx_iq_comp.exit:                  ; preds = %cleanup.i, %if.else68.i.wlc_lcnphy_calc_rx_iq_comp.exit_crit_edge, %if.then58.i.wlc_lcnphy_calc_rx_iq_comp.exit_crit_edge, %if.else.i.wlc_lcnphy_calc_rx_iq_comp.exit_crit_edge, %if.then21.i.wlc_lcnphy_calc_rx_iq_comp.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %iq_est.i) #6
  br label %stop_tone

for.inc94:                                        ; preds = %land.lhs.true15.i.for.inc94_crit_edge, %if.end3.i.for.inc94_crit_edge, %if.end.i.for.inc94_crit_edge, %wlc_lcnphy_set_rx_gain_by_distribution.exit.i.for.inc94_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %iq_est_l.i) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %iq_est_h.i) #6
  %dec95 = add nsw i32 %biq1_gain.011, -1
  %cmp81.not = icmp eq i32 %biq1_gain.011, 0
  br i1 %cmp81.not, label %for.inc97, label %for.inc94.for.body83_crit_edge

for.inc94.for.body83_crit_edge:                   ; preds = %for.inc94
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body83

for.inc97:                                        ; preds = %for.inc94
  %dec98 = add nsw i32 %tia_gain.012, -1
  %cmp77 = icmp sgt i32 %tia_gain.012, 0
  br i1 %cmp77, label %for.inc97.for.cond80.preheader_crit_edge, label %for.inc100

for.inc97.for.cond80.preheader_crit_edge:         ; preds = %for.inc97
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond80.preheader

for.inc100:                                       ; preds = %for.inc97
  %dec101 = add nsw i32 %lna2_gain.013, -1
  %cmp73 = icmp sgt i32 %lna2_gain.013, 0
  br i1 %cmp73, label %for.inc100.for.cond76.preheader_crit_edge, label %for.inc100.stop_tone_crit_edge

for.inc100.stop_tone_crit_edge:                   ; preds = %for.inc100
  call void @__sanitizer_cov_trace_pc() #8
  br label %stop_tone

for.inc100.for.cond76.preheader_crit_edge:        ; preds = %for.inc100
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond76.preheader

stop_tone:                                        ; preds = %for.inc100.stop_tone_crit_edge, %wlc_lcnphy_calc_rx_iq_comp.exit
  tail call void @wlc_lcnphy_stop_tx_tone(ptr noundef %pi)
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 1585, i16 noundef zeroext %call48) #6
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 1100, i16 noundef zeroext %call50) #6
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 1101, i16 noundef zeroext %call50) #6
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 1200, i16 noundef zeroext %call51) #6
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 1201, i16 noundef zeroext %call52) #6
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 1273, i16 noundef zeroext %call53) #6
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 1274, i16 noundef zeroext %call54) #6
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 2360, i16 noundef zeroext %call55) #6
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 2361, i16 noundef zeroext %call56) #6
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 1083, i16 noundef zeroext %call57) #6
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 1084, i16 noundef zeroext %call58) #6
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 1754, i16 noundef zeroext %call59) #6
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 1755, i16 noundef zeroext %call60) #6
  tail call void @and_phy_reg(ptr noundef %pi, i16 noundef zeroext 1100, i16 noundef zeroext -4) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1100, i16 noundef zeroext 4, i16 noundef zeroext 0) #6
  tail call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext 152, i16 noundef zeroext %call45) #6
  tail call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext 278, i16 noundef zeroext %call45.1) #6
  tail call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext 300, i16 noundef zeroext %call45.2) #6
  tail call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext 106, i16 noundef zeroext %call45.3) #6
  tail call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext 11, i16 noundef zeroext %call45.4) #6
  tail call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext 27, i16 noundef zeroext %call45.5) #6
  tail call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext 275, i16 noundef zeroext %call45.6) #6
  tail call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext 29, i16 noundef zeroext %call45.7) #6
  tail call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext 276, i16 noundef zeroext %call45.8) #6
  tail call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext 46, i16 noundef zeroext %call45.9) #6
  tail call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext 298, i16 noundef zeroext %call45.10) #6
  br i1 %cmp64.not, label %if.else, label %if.then116

if.then116:                                       ; preds = %stop_tone
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @wlc_lcnphy_set_tx_pwr_by_index(ptr noundef %pi, i32 noundef %tx_gain_index_old.0)
  br label %if.end118

if.else:                                          ; preds = %stop_tone
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1200, i16 noundef zeroext 128, i16 noundef zeroext 0) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1200, i16 noundef zeroext 16384, i16 noundef zeroext 0) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1083, i16 noundef zeroext 64, i16 noundef zeroext 0) #6
  br label %if.end118

if.end118:                                        ; preds = %if.else, %if.then116
  tail call void @wlc_lcnphy_set_tx_pwr_ctrl(ptr noundef %pi, i16 noundef zeroext %3)
  tail call fastcc void @wlc_lcnphy_rx_gain_override_enable(ptr noundef %pi, i1 noundef zeroext false)
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end118, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wlc_lcnphy_idle_tssi_est(ptr noundef %ppi) unnamed_addr #0 align 64 {
entry:
  %m0m1.i104 = alloca i16, align 2
  %tab.i105 = alloca %struct.phytbl_info, align 4
  %m0m1.i102 = alloca i16, align 2
  %tab.i103 = alloca %struct.phytbl_info, align 4
  %m0m1.i = alloca i16, align 2
  %tab.i = alloca %struct.phytbl_info, align 4
  %old_gains = alloca %struct.lcnphy_txgains, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %old_gains) #6
  %0 = getelementptr inbounds %struct.lcnphy_txgains, ptr %old_gains, i32 0, i32 1
  %1 = getelementptr inbounds %struct.lcnphy_txgains, ptr %old_gains, i32 0, i32 2
  %2 = getelementptr inbounds %struct.lcnphy_txgains, ptr %old_gains, i32 0, i32 3
  %3 = ptrtoint ptr %old_gains to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %old_gains, align 8
  %call = tail call zeroext i16 @read_phy_reg(ptr noundef %ppi, i16 noundef zeroext 1188) #6
  %4 = and i16 %call, -8192
  %call2 = tail call zeroext i16 @read_radio_reg(ptr noundef %ppi, i16 noundef zeroext 274) #6
  %call3 = tail call zeroext i16 @read_radio_reg(ptr noundef %ppi, i16 noundef zeroext 7) #6
  %5 = and i16 %call3, 1
  %call7 = tail call zeroext i16 @read_radio_reg(ptr noundef %ppi, i16 noundef zeroext 255) #6
  %6 = and i16 %call7, 16
  %call11 = tail call zeroext i16 @read_radio_reg(ptr noundef %ppi, i16 noundef zeroext 287) #6
  %7 = and i16 %call11, 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %m0m1.i) #6
  %8 = ptrtoint ptr %m0m1.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 -1, ptr %m0m1.i, align 2, !annotation !48
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tab.i) #6
  %9 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i, i32 0, i32 1
  %10 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i, i32 0, i32 2
  %11 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i, i32 0, i32 3
  %12 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i, i32 0, i32 4
  %13 = ptrtoint ptr %tab.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %m0m1.i, ptr %tab.i, align 4
  %14 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %9, align 4
  %15 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %10, align 4
  %16 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 87, ptr %11, align 4
  %17 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 16, ptr %12, align 4
  call void @wlc_phy_read_table(ptr noundef %ppi, ptr noundef nonnull %tab.i, i16 noundef zeroext 1109, i16 noundef zeroext 1111, i16 noundef zeroext 1110) #6
  %18 = ptrtoint ptr %m0m1.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %m0m1.i, align 2
  %20 = and i16 %19, -256
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tab.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %m0m1.i) #6
  %call16 = call zeroext i16 @read_phy_reg(ptr noundef %ppi, i16 noundef zeroext 1195) #6
  %d11core = getelementptr inbounds %struct.brcms_phy, ptr %ppi, i32 0, i32 5
  %21 = ptrtoint ptr %d11core to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %d11core, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 8
  %ops.i = getelementptr inbounds %struct.bcma_bus, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops.i, align 4
  %read32.i = getelementptr inbounds %struct.bcma_host_ops, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %read32.i, align 4
  %call.i = call i32 %28(ptr noundef %22, i16 noundef zeroext 288) #6
  %and18 = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %cmp = icmp eq i32 %and18, 0
  br i1 %cmp, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %sh = getelementptr inbounds %struct.brcms_phy, ptr %ppi, i32 0, i32 1
  %29 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sh, align 4
  %physhim = getelementptr inbounds %struct.shared_phy, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %physhim to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %physhim, align 4
  call void @wlapi_suspend_mac_and_wait(ptr noundef %32) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @wlc_lcnphy_set_tx_pwr_ctrl(ptr noundef %ppi, i16 noundef zeroext 0)
  %call20 = call zeroext i16 @read_phy_reg(ptr noundef %ppi, i16 noundef zeroext 1083) #6
  %33 = and i16 %call20, 64
  %call.i101 = call zeroext i16 @read_phy_reg(ptr noundef %ppi, i16 noundef zeroext 1081) #6
  %34 = lshr i16 %call.i101, 7
  %35 = and i16 %34, 7
  %36 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %2, align 2
  %call6.i = call zeroext i16 @read_phy_reg(ptr noundef %ppi, i16 noundef zeroext 1205) #6
  %call11.i = call zeroext i16 @read_phy_reg(ptr noundef %ppi, i16 noundef zeroext 1275) #6
  %and17.i = and i16 %call6.i, 255
  %37 = ptrtoint ptr %old_gains to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %and17.i, ptr %old_gains, align 8
  %38 = lshr i16 %call6.i, 8
  %39 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %0, align 2
  %40 = and i16 %call11.i, 255
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %1, align 4
  call void @mod_phy_reg(ptr noundef %ppi, i16 noundef zeroext 1200, i16 noundef zeroext 128, i16 noundef zeroext 128) #6
  call void @mod_phy_reg(ptr noundef %ppi, i16 noundef zeroext 1200, i16 noundef zeroext 16384, i16 noundef zeroext 16384) #6
  call void @mod_phy_reg(ptr noundef %ppi, i16 noundef zeroext 1083, i16 noundef zeroext 64, i16 noundef zeroext 64) #6
  call void @wlc_lcnphy_set_tx_pwr_by_index(ptr noundef %ppi, i32 noundef 127)
  call void @write_radio_reg(ptr noundef %ppi, i16 noundef zeroext 274, i16 noundef zeroext 6) #6
  call void @mod_radio_reg(ptr noundef %ppi, i16 noundef zeroext 7, i16 noundef zeroext 1, i16 noundef zeroext 1) #6
  call void @mod_radio_reg(ptr noundef %ppi, i16 noundef zeroext 255, i16 noundef zeroext 16, i16 noundef zeroext 16) #6
  call void @mod_radio_reg(ptr noundef %ppi, i16 noundef zeroext 287, i16 noundef zeroext 4, i16 noundef zeroext 4) #6
  call fastcc void @wlc_lcnphy_tssi_setup(ptr noundef %ppi)
  call void @mod_phy_reg(ptr noundef %ppi, i16 noundef zeroext 1239, i16 noundef zeroext 1, i16 noundef zeroext 1) #6
  call void @mod_phy_reg(ptr noundef %ppi, i16 noundef zeroext 1239, i16 noundef zeroext 64, i16 noundef zeroext 64) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %m0m1.i102) #6
  %42 = ptrtoint ptr %m0m1.i102 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 0, ptr %m0m1.i102, align 2
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tab.i103) #6
  %43 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i103, i32 0, i32 1
  %44 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i103, i32 0, i32 2
  %45 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i103, i32 0, i32 3
  %46 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i103, i32 0, i32 4
  %47 = ptrtoint ptr %tab.i103 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %m0m1.i102, ptr %tab.i103, align 4
  %48 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1, ptr %43, align 4
  %49 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %44, align 4
  %50 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 87, ptr %45, align 4
  %51 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 16, ptr %46, align 4
  call void @wlc_phy_write_table(ptr noundef %ppi, ptr noundef nonnull %tab.i103, i16 noundef zeroext 1109, i16 noundef zeroext 1111, i16 noundef zeroext 1110) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tab.i103) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %m0m1.i102) #6
  call void @wlc_phy_do_dummy_tx(ptr noundef %ppi, i1 noundef zeroext true, i1 noundef zeroext false) #6
  %call26 = call zeroext i16 @read_phy_reg(ptr noundef %ppi, i16 noundef zeroext 1195) #6
  %call27 = call zeroext i16 @read_phy_reg(ptr noundef %ppi, i16 noundef zeroext 1598) #6
  %52 = and i16 %call27, 511
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %52)
  %cmp32.inv = icmp ult i16 %52, 256
  %idleTssi0_OB.0.v = select i1 %cmp32.inv, i16 256, i16 -256
  %idleTssi0_OB.0 = add nsw i16 %idleTssi0_OB.0.v, %52
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %idleTssi0_OB.0)
  %cmp41.inv = icmp ult i16 %idleTssi0_OB.0, 256
  %idleTssi0_regvalue_2C.0.v = select i1 %cmp41.inv, i16 256, i16 -256
  %idleTssi0_regvalue_2C.0 = add nsw i16 %idleTssi0_regvalue_2C.0.v, %idleTssi0_OB.0
  call void @mod_phy_reg(ptr noundef %ppi, i16 noundef zeroext 1190, i16 noundef zeroext 511, i16 noundef zeroext %idleTssi0_regvalue_2C.0) #6
  call void @mod_phy_reg(ptr noundef %ppi, i16 noundef zeroext 1100, i16 noundef zeroext 4096, i16 noundef zeroext 0) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %m0m1.i104) #6
  %53 = ptrtoint ptr %m0m1.i104 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %20, ptr %m0m1.i104, align 2
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tab.i105) #6
  %54 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i105, i32 0, i32 1
  %55 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i105, i32 0, i32 2
  %56 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i105, i32 0, i32 3
  %57 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i105, i32 0, i32 4
  %58 = ptrtoint ptr %tab.i105 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %m0m1.i104, ptr %tab.i105, align 4
  %59 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 1, ptr %54, align 4
  %60 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %55, align 4
  %61 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 87, ptr %56, align 4
  %62 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 16, ptr %57, align 4
  call void @wlc_phy_write_table(ptr noundef %ppi, ptr noundef nonnull %tab.i105, i16 noundef zeroext 1109, i16 noundef zeroext 1111, i16 noundef zeroext 1110) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tab.i105) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %m0m1.i104) #6
  %63 = shl nuw nsw i16 %33, 1
  call void @mod_phy_reg(ptr noundef %ppi, i16 noundef zeroext 1200, i16 noundef zeroext 128, i16 noundef zeroext %63) #6
  %64 = shl nuw nsw i16 %33, 8
  call void @mod_phy_reg(ptr noundef %ppi, i16 noundef zeroext 1200, i16 noundef zeroext 16384, i16 noundef zeroext %64) #6
  call void @mod_phy_reg(ptr noundef %ppi, i16 noundef zeroext 1083, i16 noundef zeroext 64, i16 noundef zeroext %33) #6
  call fastcc void @wlc_lcnphy_set_tx_gain(ptr noundef %ppi, ptr noundef nonnull %old_gains)
  call void @wlc_lcnphy_set_tx_pwr_ctrl(ptr noundef %ppi, i16 noundef zeroext %4)
  call void @write_radio_reg(ptr noundef %ppi, i16 noundef zeroext 274, i16 noundef zeroext %call2) #6
  call void @mod_radio_reg(ptr noundef %ppi, i16 noundef zeroext 7, i16 noundef zeroext 1, i16 noundef zeroext %5) #6
  call void @mod_radio_reg(ptr noundef %ppi, i16 noundef zeroext 255, i16 noundef zeroext 16, i16 noundef zeroext %6) #6
  call void @mod_radio_reg(ptr noundef %ppi, i16 noundef zeroext 287, i16 noundef zeroext 4, i16 noundef zeroext %7) #6
  call void @mod_radio_reg(ptr noundef %ppi, i16 noundef zeroext 274, i16 noundef zeroext 128, i16 noundef zeroext 128) #6
  br i1 %cmp, label %if.end.if.end59_crit_edge, label %if.then56

if.end.if.end59_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end59

if.then56:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %sh57 = getelementptr inbounds %struct.brcms_phy, ptr %ppi, i32 0, i32 1
  %65 = ptrtoint ptr %sh57 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %sh57, align 4
  %physhim58 = getelementptr inbounds %struct.shared_phy, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %physhim58 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %physhim58, align 4
  call void @wlapi_enable_mac(ptr noundef %68) #6
  br label %if.end59

if.end59:                                         ; preds = %if.then56, %if.end.if.end59_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %old_gains) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wlc_lcnphy_tx_iqlo_cal(ptr noundef %pi, ptr noundef readonly %target_gains, i32 noundef %cal_mode) unnamed_addr #0 align 64 {
entry:
  %tab.i22 = alloca %struct.phytbl_info, align 4
  %tab.i21 = alloca %struct.phytbl_info, align 4
  %tab.i20 = alloca %struct.phytbl_info, align 4
  %tab.i19 = alloca %struct.phytbl_info, align 4
  %tab.i18 = alloca %struct.phytbl_info, align 4
  %tab.i17 = alloca %struct.phytbl_info, align 4
  %tab.i16 = alloca %struct.phytbl_info, align 4
  %tab.i14 = alloca %struct.phytbl_info, align 4
  %tab.i13 = alloca %struct.phytbl_info, align 4
  %tab.i12 = alloca %struct.phytbl_info, align 4
  %tab.i11 = alloca %struct.phytbl_info, align 4
  %tab.i = alloca %struct.phytbl_info, align 4
  %cal_gains = alloca %struct.lcnphy_txgains, align 8
  %temp_gains = alloca %struct.lcnphy_txgains, align 8
  %ncorr_override = alloca [5 x i16], align 2
  %syst_coeffs = alloca [11 x i16], align 2
  %commands_fullcal = alloca [6 x i16], align 2
  %commands_recal = alloca [6 x i16], align 2
  %command_nums_fullcal = alloca [6 x i16], align 2
  %command_nums_recal = alloca [6 x i16], align 2
  %diq_start = alloca i16, align 2
  %old_gains = alloca %struct.lcnphy_txgains, align 8
  %zero_diq = alloca i16, align 2
  %best_coeffs = alloca [11 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cal_gains) #6
  %0 = getelementptr inbounds %struct.lcnphy_txgains, ptr %cal_gains, i32 0, i32 1
  %1 = getelementptr inbounds %struct.lcnphy_txgains, ptr %cal_gains, i32 0, i32 2
  %2 = ptrtoint ptr %cal_gains to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %cal_gains, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %temp_gains) #6
  %3 = getelementptr inbounds %struct.lcnphy_txgains, ptr %temp_gains, i32 0, i32 1
  %4 = getelementptr inbounds %struct.lcnphy_txgains, ptr %temp_gains, i32 0, i32 2
  %5 = getelementptr inbounds %struct.lcnphy_txgains, ptr %temp_gains, i32 0, i32 3
  %6 = ptrtoint ptr %temp_gains to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 -1, ptr %temp_gains, align 8
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %ncorr_override) #6
  call void @llvm.lifetime.start.p0(i64 22, ptr nonnull %syst_coeffs) #6
  %7 = call ptr @memset(ptr %syst_coeffs, i32 0, i32 22)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %commands_fullcal) #6
  %8 = call ptr @memcpy(ptr %commands_fullcal, ptr @__const.wlc_lcnphy_tx_iqlo_cal.commands_recal, i32 12)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %commands_recal) #6
  %9 = call ptr @memcpy(ptr %commands_recal, ptr @__const.wlc_lcnphy_tx_iqlo_cal.commands_recal, i32 12)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %command_nums_fullcal) #6
  %10 = call ptr @memcpy(ptr %command_nums_fullcal, ptr @__const.wlc_lcnphy_tx_iqlo_cal.command_nums_recal, i32 12)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %command_nums_recal) #6
  %11 = call ptr @memcpy(ptr %command_nums_recal, ptr @__const.wlc_lcnphy_tx_iqlo_cal.command_nums_recal, i32 12)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %diq_start) #6
  %12 = ptrtoint ptr %diq_start to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 -1, ptr %diq_start, align 2, !annotation !48
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %old_gains) #6
  %13 = getelementptr inbounds %struct.lcnphy_txgains, ptr %old_gains, i32 0, i32 1
  %14 = getelementptr inbounds %struct.lcnphy_txgains, ptr %old_gains, i32 0, i32 2
  %15 = getelementptr inbounds %struct.lcnphy_txgains, ptr %old_gains, i32 0, i32 3
  %u = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 3
  %16 = ptrtoint ptr %old_gains to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 -1, ptr %old_gains, align 8
  %17 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %u, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %19 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 2592, i32 noundef 40) #9
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup143_crit_edge, label %if.end

entry.cleanup143_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup143

if.end:                                           ; preds = %entry
  %call1 = tail call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1755) #6
  %call2 = tail call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1754) #6
  tail call void @or_phy_reg(ptr noundef %pi, i16 noundef zeroext 1754, i16 noundef zeroext 64) #6
  tail call void @or_phy_reg(ptr noundef %pi, i16 noundef zeroext 1755, i16 noundef zeroext 3) #6
  %20 = zext i32 %cal_mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %cal_mode, label %if.end.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb5
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb, %if.end.sw.epilog_crit_edge
  %command_nums.0 = phi ptr [ %command_nums_fullcal, %if.end.sw.epilog_crit_edge ], [ %command_nums_recal, %sw.bb5 ], [ %command_nums_fullcal, %sw.bb ]
  %start_coeffs.0 = phi ptr [ null, %if.end.sw.epilog_crit_edge ], [ %syst_coeffs, %sw.bb5 ], [ %syst_coeffs, %sw.bb ]
  %cal_cmds.0 = phi ptr [ null, %if.end.sw.epilog_crit_edge ], [ %commands_recal, %sw.bb5 ], [ %commands_fullcal, %sw.bb ]
  %cmp7628 = phi i1 [ false, %if.end.sw.epilog_crit_edge ], [ true, %sw.bb5 ], [ true, %sw.bb ]
  %n_cal_cmds.0 = phi i32 [ 0, %if.end.sw.epilog_crit_edge ], [ 6, %sw.bb5 ], [ 6, %sw.bb ]
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tab.i) #6
  %21 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i, i32 0, i32 1
  %22 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i, i32 0, i32 2
  %23 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i, i32 0, i32 3
  %24 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i, i32 0, i32 4
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %22, align 4
  %26 = ptrtoint ptr %tab.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %start_coeffs.0, ptr %tab.i, align 4
  %27 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 11, ptr %21, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 16, ptr %24, align 4
  %29 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 64, ptr %23, align 4
  call void @wlc_phy_write_table(ptr noundef %pi, ptr noundef nonnull %tab.i, i16 noundef zeroext 1109, i16 noundef zeroext 1111, i16 noundef zeroext 1110) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tab.i) #6
  call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 1754, i16 noundef zeroext -1) #6
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1283, i16 noundef zeroext 8, i16 noundef zeroext 8) #6
  %call9 = call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1188) #6
  %30 = and i16 %call9, -8192
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1188, i16 noundef zeroext 4096, i16 noundef zeroext 4096) #6
  call void @wlc_lcnphy_set_tx_pwr_ctrl(ptr noundef %pi, i16 noundef zeroext 0)
  %call11 = call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1243) #6
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1243, i16 noundef zeroext 1023, i16 noundef zeroext 678) #6
  call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1243, i16 noundef zeroext 28672, i16 noundef zeroext 8192) #6
  call fastcc void @wlc_lcnphy_tx_iqlo_loopback(ptr noundef %pi, ptr noundef nonnull %call7.i.i)
  %call12 = call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1083) #6
  %31 = and i16 %call12, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %cmp15.not = icmp eq i16 %31, 0
  br i1 %cmp15.not, label %if.end19, label %if.end19.thread

if.end19:                                         ; preds = %sw.epilog
  %tobool20.not = icmp eq ptr %target_gains, null
  br i1 %tobool20.not, label %if.then23, label %if.end19.if.end26_crit_edge

if.end19.if.end26_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.end19.thread:                                  ; preds = %sw.epilog
  %call.i = call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1081) #6
  %32 = lshr i16 %call.i, 7
  %33 = and i16 %32, 7
  %34 = ptrtoint ptr %15 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %15, align 2
  %call6.i = call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1205) #6
  %call11.i = call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1275) #6
  %and17.i = and i16 %call6.i, 255
  %35 = ptrtoint ptr %old_gains to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %and17.i, ptr %old_gains, align 8
  %36 = lshr i16 %call6.i, 8
  %37 = ptrtoint ptr %13 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %13, align 2
  %38 = and i16 %call11.i, 255
  %39 = ptrtoint ptr %14 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %14, align 4
  %tobool20.not24 = icmp eq ptr %target_gains, null
  br i1 %tobool20.not24, label %if.end19.thread.if.end25_crit_edge, label %if.end19.thread.if.end26_crit_edge

if.end19.thread.if.end26_crit_edge:               ; preds = %if.end19.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.end19.thread.if.end25_crit_edge:               ; preds = %if.end19.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.then23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %lcnphy_tssi_idx = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %18, i32 0, i32 36
  %40 = ptrtoint ptr %lcnphy_tssi_idx to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %lcnphy_tssi_idx, align 4
  %conv24 = zext i16 %41 to i32
  call void @wlc_lcnphy_set_tx_pwr_by_index(ptr noundef %pi, i32 noundef %conv24)
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end19.thread.if.end25_crit_edge
  %call.i4 = call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1081) #6
  %42 = lshr i16 %call.i4, 7
  %43 = and i16 %42, 7
  %44 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %5, align 2
  %call6.i6 = call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1205) #6
  %call11.i7 = call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1275) #6
  %and17.i8 = and i16 %call6.i6, 255
  %45 = ptrtoint ptr %temp_gains to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %and17.i8, ptr %temp_gains, align 8
  %46 = lshr i16 %call6.i6, 8
  %47 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %3, align 2
  %48 = and i16 %call11.i7, 255
  %49 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %48, ptr %4, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.end19.thread.if.end26_crit_edge, %if.end19.if.end26_crit_edge
  %target_gains.addr.0 = phi ptr [ %target_gains, %if.end19.if.end26_crit_edge ], [ %temp_gains, %if.end25 ], [ %target_gains, %if.end19.thread.if.end26_crit_edge ]
  %50 = ptrtoint ptr %target_gains.addr.0 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %target_gains.addr.0, align 2
  %shl = shl i16 %51, 8
  %pga_gain = getelementptr inbounds %struct.lcnphy_txgains, ptr %target_gains.addr.0, i32 0, i32 1
  %52 = ptrtoint ptr %pga_gain to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %pga_gain, align 2
  %shl29 = shl i16 %53, 4
  %or = or i16 %shl29, %shl
  %pad_gain = getelementptr inbounds %struct.lcnphy_txgains, ptr %target_gains.addr.0, i32 0, i32 2
  %54 = ptrtoint ptr %pad_gain to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %pad_gain, align 2
  %or31 = or i16 %or, %55
  %56 = load i64, ptr %target_gains.addr.0, align 2
  %57 = ptrtoint ptr %cal_gains to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %56, ptr %cal_gains, align 8
  %58 = call ptr @memset(ptr %ncorr_override, i32 0, i32 10)
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %or31)
  %cmp48 = icmp eq i16 %or31, 0
  br i1 %cmp48, label %if.then50, label %if.end26.for.end_crit_edge

if.end26.for.end_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.then50:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  %59 = ptrtoint ptr %cal_gains to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 0, ptr %cal_gains, align 8
  %60 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 0, ptr %0, align 2
  %61 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 0, ptr %1, align 4
  %62 = call ptr @memcpy(ptr %ncorr_override, ptr getelementptr inbounds ([1 x [9 x i16]], ptr @tbl_iqcal_gainparams_lcnphy_2G, i32 0, i32 0, i32 3), i32 10)
  br label %for.end

for.end:                                          ; preds = %if.then50, %if.end26.for.end_crit_edge
  call fastcc void @wlc_lcnphy_set_tx_gain(ptr noundef %pi, ptr noundef nonnull %cal_gains)
  call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 1107, i16 noundef zeroext 2729) #6
  call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 2365, i16 noundef zeroext 192) #6
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tab.i11) #6
  %63 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i11, i32 0, i32 1
  %64 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i11, i32 0, i32 2
  %65 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i11, i32 0, i32 3
  %66 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i11, i32 0, i32 4
  %67 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %64, align 4
  %68 = ptrtoint ptr %tab.i11 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @lcnphy_iqcal_loft_gainladder, ptr %tab.i11, align 4
  %69 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 20, ptr %63, align 4
  %70 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 16, ptr %66, align 4
  %71 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %65, align 4
  call void @wlc_phy_write_table(ptr noundef %pi, ptr noundef nonnull %tab.i11, i16 noundef zeroext 1109, i16 noundef zeroext 1111, i16 noundef zeroext 1110) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tab.i11) #6
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tab.i12) #6
  %72 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i12, i32 0, i32 1
  %73 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i12, i32 0, i32 2
  %74 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i12, i32 0, i32 3
  %75 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i12, i32 0, i32 4
  %76 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %73, align 4
  %77 = ptrtoint ptr %tab.i12 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @lcnphy_iqcal_ir_gainladder, ptr %tab.i12, align 4
  %78 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 20, ptr %72, align 4
  %79 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 16, ptr %75, align 4
  %80 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 32, ptr %74, align 4
  call void @wlc_phy_write_table(ptr noundef %pi, ptr noundef nonnull %tab.i12, i16 noundef zeroext 1109, i16 noundef zeroext 1111, i16 noundef zeroext 1110) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tab.i12) #6
  %phy_tx_tone_freq = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 83
  %81 = ptrtoint ptr %phy_tx_tone_freq to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %phy_tx_tone_freq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool72.not = icmp eq i32 %82, 0
  br i1 %tobool72.not, label %for.end.if.end74_crit_edge, label %if.then73

for.end.if.end74_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end74

if.then73:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @wlc_lcnphy_stop_tx_tone(ptr noundef %pi)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %83 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %83(i32 noundef 1073740) #6
  br label %if.end74

if.end74:                                         ; preds = %if.then73, %for.end.if.end74_crit_edge
  call void @wlc_lcnphy_start_tx_tone(ptr noundef %pi, i32 noundef 3750, i16 noundef zeroext 88, i1 noundef zeroext true)
  call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 1754, i16 noundef zeroext -1) #6
  br i1 %cmp7628, label %for.body78.lr.ph, label %if.end74.for.end125_crit_edge

if.end74.for.end125_crit_edge:                    ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end125

for.body78.lr.ph:                                 ; preds = %if.end74
  %84 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i13, i32 0, i32 1
  %85 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i13, i32 0, i32 2
  %86 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i13, i32 0, i32 3
  %87 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i13, i32 0, i32 4
  %88 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i14, i32 0, i32 1
  %89 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i14, i32 0, i32 2
  %90 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i14, i32 0, i32 3
  %91 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i14, i32 0, i32 4
  %92 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i16, i32 0, i32 1
  %93 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i16, i32 0, i32 2
  %94 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i16, i32 0, i32 3
  %95 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i16, i32 0, i32 4
  %96 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i17, i32 0, i32 1
  %97 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i17, i32 0, i32 2
  %98 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i17, i32 0, i32 3
  %99 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i17, i32 0, i32 4
  %100 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i18, i32 0, i32 1
  %101 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i18, i32 0, i32 2
  %102 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i18, i32 0, i32 3
  %103 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i18, i32 0, i32 4
  %txiqlocal_bestcoeffs = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %18, i32 0, i32 71, i32 7
  %104 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i19, i32 0, i32 1
  %105 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i19, i32 0, i32 2
  %106 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i19, i32 0, i32 3
  %107 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i19, i32 0, i32 4
  %umax = call i32 @llvm.umax.i32(i32 %n_cal_cmds.0, i32 1)
  br label %for.body78

for.body78:                                       ; preds = %for.inc123.for.body78_crit_edge, %for.body78.lr.ph
  %i.029 = phi i32 [ 0, %for.body78.lr.ph ], [ %inc124, %for.inc123.for.body78_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %zero_diq) #6
  %108 = ptrtoint ptr %zero_diq to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 0, ptr %zero_diq, align 2
  call void @llvm.lifetime.start.p0(i64 22, ptr nonnull %best_coeffs) #6
  %arrayidx79 = getelementptr i16, ptr %cal_cmds.0, i32 %i.029
  %109 = call ptr @memset(ptr %best_coeffs, i32 255, i32 22)
  %110 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %arrayidx79, align 2
  %112 = lshr i16 %111, 8
  %113 = and i16 %112, 15
  %arrayidx83 = getelementptr i16, ptr %command_nums.0, i32 %i.029
  %114 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %arrayidx83, align 2
  %idxprom84 = zext i16 %113 to i32
  %arrayidx85 = getelementptr [5 x i16], ptr %ncorr_override, i32 0, i32 %idxprom84
  %116 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %arrayidx85, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %117)
  %tobool86.not = icmp eq i16 %117, 0
  %shl91 = shl i16 %117, 8
  %118 = and i16 %115, 255
  %or94 = or i16 %shl91, %118
  %command_num.0 = select i1 %tobool86.not, i16 %115, i16 %or94
  call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 1106, i16 noundef zeroext %command_num.0) #6
  %.off2 = add nsw i16 %113, -3
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %.off2)
  %switch3 = icmp ult i16 %.off2, 2
  br i1 %switch3, label %if.then103, label %for.body78.if.end104_crit_edge

for.body78.if.end104_crit_edge:                   ; preds = %for.body78
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end104

if.then103:                                       ; preds = %for.body78
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tab.i13) #6
  %119 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 0, ptr %85, align 4
  %120 = ptrtoint ptr %tab.i13 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %diq_start, ptr %tab.i13, align 4
  %121 = ptrtoint ptr %84 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 1, ptr %84, align 4
  %122 = ptrtoint ptr %87 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 16, ptr %87, align 4
  %123 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 69, ptr %86, align 4
  call void @wlc_phy_read_table(ptr noundef %pi, ptr noundef nonnull %tab.i13, i16 noundef zeroext 1109, i16 noundef zeroext 1111, i16 noundef zeroext 1110) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tab.i13) #6
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tab.i14) #6
  %124 = ptrtoint ptr %89 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 0, ptr %89, align 4
  %125 = ptrtoint ptr %tab.i14 to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %zero_diq, ptr %tab.i14, align 4
  %126 = ptrtoint ptr %88 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 1, ptr %88, align 4
  %127 = ptrtoint ptr %91 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 16, ptr %91, align 4
  %128 = ptrtoint ptr %90 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 69, ptr %90, align 4
  call void @wlc_phy_write_table(ptr noundef %pi, ptr noundef nonnull %tab.i14, i16 noundef zeroext 1109, i16 noundef zeroext 1111, i16 noundef zeroext 1110) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tab.i14) #6
  br label %if.end104

if.end104:                                        ; preds = %if.then103, %for.body78.if.end104_crit_edge
  %129 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %arrayidx79, align 2
  call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 1105, i16 noundef zeroext %130) #6
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %if.end104
  %delay_count.0.i = phi i32 [ 0, %if.end104 ], [ %inc.i, %while.body.i.while.cond.i_crit_edge ]
  %call.i15 = call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1105) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %call.i15)
  %tobool.not.i = icmp ult i16 %call.i15, 16384
  br i1 %tobool.not.i, label %while.cond.i.wlc_lcnphy_iqcal_wait.exit_crit_edge, label %while.body.i

while.cond.i.wlc_lcnphy_iqcal_wait.exit_crit_edge: ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %wlc_lcnphy_iqcal_wait.exit

while.body.i:                                     ; preds = %while.cond.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %131 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %131(i32 noundef 21474800) #6
  %inc.i = add nuw nsw i32 %delay_count.0.i, 1
  %exitcond.i = icmp eq i32 %inc.i, 5001
  br i1 %exitcond.i, label %while.body.i.wlc_lcnphy_iqcal_wait.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i

while.body.i.wlc_lcnphy_iqcal_wait.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %wlc_lcnphy_iqcal_wait.exit

wlc_lcnphy_iqcal_wait.exit:                       ; preds = %while.body.i.wlc_lcnphy_iqcal_wait.exit_crit_edge, %while.cond.i.wlc_lcnphy_iqcal_wait.exit_crit_edge
  %call2.i = call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1105) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %call2.i)
  %cmp5.i = icmp ult i16 %call2.i, 16384
  br i1 %cmp5.i, label %if.end108, label %cleanup

if.end108:                                        ; preds = %wlc_lcnphy_iqcal_wait.exit
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tab.i16) #6
  %132 = ptrtoint ptr %93 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 0, ptr %93, align 4
  %133 = ptrtoint ptr %tab.i16 to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %best_coeffs, ptr %tab.i16, align 4
  %134 = ptrtoint ptr %92 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 11, ptr %92, align 4
  %135 = ptrtoint ptr %95 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 16, ptr %95, align 4
  %136 = ptrtoint ptr %94 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 96, ptr %94, align 4
  call void @wlc_phy_read_table(ptr noundef %pi, ptr noundef nonnull %tab.i16, i16 noundef zeroext 1109, i16 noundef zeroext 1111, i16 noundef zeroext 1110) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tab.i16) #6
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tab.i17) #6
  %137 = ptrtoint ptr %97 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 0, ptr %97, align 4
  %138 = ptrtoint ptr %tab.i17 to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %best_coeffs, ptr %tab.i17, align 4
  %139 = ptrtoint ptr %96 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 11, ptr %96, align 4
  %140 = ptrtoint ptr %99 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 16, ptr %99, align 4
  %141 = ptrtoint ptr %98 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 64, ptr %98, align 4
  call void @wlc_phy_write_table(ptr noundef %pi, ptr noundef nonnull %tab.i17, i16 noundef zeroext 1109, i16 noundef zeroext 1111, i16 noundef zeroext 1110) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tab.i17) #6
  br i1 %switch3, label %if.then118, label %if.end108.for.inc123_crit_edge

if.end108.for.inc123_crit_edge:                   ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc123

if.then118:                                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tab.i18) #6
  %142 = ptrtoint ptr %101 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 0, ptr %101, align 4
  %143 = ptrtoint ptr %tab.i18 to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %diq_start, ptr %tab.i18, align 4
  %144 = ptrtoint ptr %100 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 1, ptr %100, align 4
  %145 = ptrtoint ptr %103 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 16, ptr %103, align 4
  %146 = ptrtoint ptr %102 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 69, ptr %102, align 4
  call void @wlc_phy_write_table(ptr noundef %pi, ptr noundef nonnull %tab.i18, i16 noundef zeroext 1109, i16 noundef zeroext 1111, i16 noundef zeroext 1110) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tab.i18) #6
  br label %for.inc123

cleanup:                                          ; preds = %wlc_lcnphy_iqcal_wait.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 22, ptr nonnull %best_coeffs) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %zero_diq) #6
  br label %cleanup136

for.inc123:                                       ; preds = %if.then118, %if.end108.for.inc123_crit_edge
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tab.i19) #6
  %147 = ptrtoint ptr %105 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 0, ptr %105, align 4
  %148 = ptrtoint ptr %tab.i19 to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %txiqlocal_bestcoeffs, ptr %tab.i19, align 4
  %149 = ptrtoint ptr %104 to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 11, ptr %104, align 4
  %150 = ptrtoint ptr %107 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 16, ptr %107, align 4
  %151 = ptrtoint ptr %106 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 96, ptr %106, align 4
  call void @wlc_phy_read_table(ptr noundef %pi, ptr noundef nonnull %tab.i19, i16 noundef zeroext 1109, i16 noundef zeroext 1111, i16 noundef zeroext 1110) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tab.i19) #6
  call void @llvm.lifetime.end.p0(i64 22, ptr nonnull %best_coeffs) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %zero_diq) #6
  %inc124 = add nuw nsw i32 %i.029, 1
  %exitcond.not = icmp eq i32 %inc124, %umax
  br i1 %exitcond.not, label %for.inc123.for.end125_crit_edge, label %for.inc123.for.body78_crit_edge

for.inc123.for.body78_crit_edge:                  ; preds = %for.inc123
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body78

for.inc123.for.end125_crit_edge:                  ; preds = %for.inc123
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end125

for.end125:                                       ; preds = %for.inc123.for.end125_crit_edge, %if.end74.for.end125_crit_edge
  %txiqlocal_bestcoeffs127 = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %18, i32 0, i32 71, i32 7
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tab.i20) #6
  %152 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i20, i32 0, i32 1
  %153 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i20, i32 0, i32 2
  %154 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i20, i32 0, i32 3
  %155 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i20, i32 0, i32 4
  %156 = ptrtoint ptr %153 to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 0, ptr %153, align 4
  %157 = ptrtoint ptr %tab.i20 to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr %txiqlocal_bestcoeffs127, ptr %tab.i20, align 4
  %158 = ptrtoint ptr %152 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 11, ptr %152, align 4
  %159 = ptrtoint ptr %155 to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 16, ptr %155, align 4
  %160 = ptrtoint ptr %154 to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 96, ptr %154, align 4
  call void @wlc_phy_read_table(ptr noundef %pi, ptr noundef nonnull %tab.i20, i16 noundef zeroext 1109, i16 noundef zeroext 1111, i16 noundef zeroext 1110) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tab.i20) #6
  %txiqlocal_bestcoeffs_valid = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %18, i32 0, i32 71, i32 8
  %161 = ptrtoint ptr %txiqlocal_bestcoeffs_valid to i32
  call void @__asan_store2_noabort(i32 %161)
  store i16 1, ptr %txiqlocal_bestcoeffs_valid, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tab.i21) #6
  %162 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i21, i32 0, i32 1
  %163 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i21, i32 0, i32 2
  %164 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i21, i32 0, i32 3
  %165 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i21, i32 0, i32 4
  %166 = ptrtoint ptr %163 to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 0, ptr %163, align 4
  %167 = ptrtoint ptr %tab.i21 to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr %txiqlocal_bestcoeffs127, ptr %tab.i21, align 4
  %168 = ptrtoint ptr %162 to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 4, ptr %162, align 4
  %169 = ptrtoint ptr %165 to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 16, ptr %165, align 4
  %170 = ptrtoint ptr %164 to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 80, ptr %164, align 4
  call void @wlc_phy_write_table(ptr noundef %pi, ptr noundef nonnull %tab.i21, i16 noundef zeroext 1109, i16 noundef zeroext 1111, i16 noundef zeroext 1110) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tab.i21) #6
  %arrayidx135 = getelementptr %struct.brcms_phy_lcnphy, ptr %18, i32 0, i32 71, i32 7, i32 5
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tab.i22) #6
  %171 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i22, i32 0, i32 1
  %172 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i22, i32 0, i32 2
  %173 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i22, i32 0, i32 3
  %174 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i22, i32 0, i32 4
  %175 = ptrtoint ptr %172 to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 0, ptr %172, align 4
  %176 = ptrtoint ptr %tab.i22 to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr %arrayidx135, ptr %tab.i22, align 4
  %177 = ptrtoint ptr %171 to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 2, ptr %171, align 4
  %178 = ptrtoint ptr %174 to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 16, ptr %174, align 4
  %179 = ptrtoint ptr %173 to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 85, ptr %173, align 4
  call void @wlc_phy_write_table(ptr noundef %pi, ptr noundef nonnull %tab.i22, i16 noundef zeroext 1109, i16 noundef zeroext 1111, i16 noundef zeroext 1110) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tab.i22) #6
  br label %cleanup136

cleanup136:                                       ; preds = %for.end125, %cleanup
  call void @and_phy_reg(ptr noundef %pi, i16 noundef zeroext 1100, i16 noundef zeroext 0) #6
  call void @and_phy_reg(ptr noundef %pi, i16 noundef zeroext 1083, i16 noundef zeroext 12) #6
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %cleanup136
  %i.07.i = phi i32 [ 0, %cleanup136 ], [ %inc.i23, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [20 x i16], ptr @iqlo_loopback_rf_regs, i32 0, i32 %i.07.i
  %180 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %180)
  %181 = load i16, ptr %arrayidx.i, align 2
  %arrayidx1.i = getelementptr i16, ptr %call7.i.i, i32 %i.07.i
  %182 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load2_noabort(i32 %182)
  %183 = load i16, ptr %arrayidx1.i, align 2
  call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext %181, i16 noundef zeroext %183) #6
  %inc.i23 = add nuw nsw i32 %i.07.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i23, 20
  br i1 %exitcond.not.i, label %wlc_lcnphy_tx_iqlo_loopback_cleanup.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

wlc_lcnphy_tx_iqlo_loopback_cleanup.exit:         ; preds = %for.body.i
  call void @kfree(ptr noundef nonnull %call7.i.i) #6
  call void @wlc_lcnphy_stop_tx_tone(ptr noundef %pi)
  call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 1243, i16 noundef zeroext %call11) #6
  call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 1107, i16 noundef zeroext 0) #6
  br i1 %cmp15.not, label %wlc_lcnphy_tx_iqlo_loopback_cleanup.exit.if.end142_crit_edge, label %if.then141

wlc_lcnphy_tx_iqlo_loopback_cleanup.exit.if.end142_crit_edge: ; preds = %wlc_lcnphy_tx_iqlo_loopback_cleanup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end142

if.then141:                                       ; preds = %wlc_lcnphy_tx_iqlo_loopback_cleanup.exit
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @wlc_lcnphy_set_tx_gain(ptr noundef %pi, ptr noundef nonnull %old_gains)
  br label %if.end142

if.end142:                                        ; preds = %if.then141, %wlc_lcnphy_tx_iqlo_loopback_cleanup.exit.if.end142_crit_edge
  call void @wlc_lcnphy_set_tx_pwr_ctrl(ptr noundef %pi, i16 noundef zeroext %30)
  call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 1754, i16 noundef zeroext %call2) #6
  call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 1755, i16 noundef zeroext %call1) #6
  br label %cleanup143

cleanup143:                                       ; preds = %if.end142, %entry.cleanup143_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %old_gains) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %diq_start) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %command_nums_recal) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %command_nums_fullcal) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %commands_recal) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %commands_fullcal) #6
  call void @llvm.lifetime.end.p0(i64 22, ptr nonnull %syst_coeffs) #6
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %ncorr_override) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %temp_gains) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cal_gains) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wlc_lcnphy_tx_iqlo_soft_cal_full(ptr noundef %pi) unnamed_addr #0 align 64 {
entry:
  %tab.i28.i = alloca %struct.phytbl_info, align 4
  %didq.i.i = alloca i16, align 2
  %iqcc.i.i30 = alloca [2 x i16], align 2
  %tab.i.i31 = alloca %struct.phytbl_info, align 4
  %didq.addr.i.i = alloca i16, align 2
  %tab.i84.i = alloca %struct.phytbl_info, align 4
  %tab.i.i = alloca %struct.phytbl_info, align 4
  %iqcc.i.i = alloca [2 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tab.i.i) #6
  %0 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i.i, i32 0, i32 1
  %1 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i.i, i32 0, i32 2
  %2 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i.i, i32 0, i32 3
  %3 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i.i, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iqcc.i.i) #6
  %4 = getelementptr inbounds [2 x i16], ptr %iqcc.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %iqcc.i.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %iqcc.i.i, align 2
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %4, align 2
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %1, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 16, ptr %3, align 4
  %9 = ptrtoint ptr %tab.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %iqcc.i.i, ptr %tab.i.i, align 4
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %0, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 80, ptr %2, align 4
  call void @wlc_phy_write_table(ptr noundef %pi, ptr noundef nonnull %tab.i.i, i16 noundef zeroext 1109, i16 noundef zeroext 1111, i16 noundef zeroext 1110) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iqcc.i.i) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tab.i.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %didq.addr.i.i) #6
  %12 = ptrtoint ptr %didq.addr.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %didq.addr.i.i, align 2
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tab.i84.i) #6
  %13 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i84.i, i32 0, i32 1
  %14 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i84.i, i32 0, i32 2
  %15 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i84.i, i32 0, i32 3
  %16 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i84.i, i32 0, i32 4
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %14, align 4
  %18 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 16, ptr %16, align 4
  %19 = ptrtoint ptr %tab.i84.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %didq.addr.i.i, ptr %tab.i84.i, align 4
  %20 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %13, align 4
  %21 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 85, ptr %15, align 4
  call void @wlc_phy_write_table(ptr noundef %pi, ptr noundef nonnull %tab.i84.i, i16 noundef zeroext 1109, i16 noundef zeroext 1111, i16 noundef zeroext 1110) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tab.i84.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %didq.addr.i.i) #6
  call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext 137, i16 noundef zeroext 136) #6
  call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext 138, i16 noundef zeroext 136) #6
  call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext 139, i16 noundef zeroext 136) #6
  call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext 140, i16 noundef zeroext 136) #6
  call fastcc void @wlc_lcnphy_a1(ptr noundef %pi, i32 noundef 4, i32 noundef 0, i32 noundef 0)
  call fastcc void @wlc_lcnphy_a1(ptr noundef %pi, i32 noundef 3, i32 noundef 0, i32 noundef 0)
  call fastcc void @wlc_lcnphy_a1(ptr noundef %pi, i32 noundef 2, i32 noundef 3, i32 noundef 2)
  call fastcc void @wlc_lcnphy_a1(ptr noundef %pi, i32 noundef 0, i32 noundef 5, i32 noundef 8)
  call fastcc void @wlc_lcnphy_a1(ptr noundef %pi, i32 noundef 2, i32 noundef 2, i32 noundef 1)
  call fastcc void @wlc_lcnphy_a1(ptr noundef %pi, i32 noundef 0, i32 noundef 4, i32 noundef 3)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iqcc.i.i30) #6
  %22 = ptrtoint ptr %iqcc.i.i30 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 -1, ptr %iqcc.i.i30, align 2, !annotation !48
  %23 = getelementptr inbounds [2 x i16], ptr %iqcc.i.i30, i32 0, i32 1
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 -1, ptr %23, align 2, !annotation !48
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tab.i.i31) #6
  %25 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i.i31, i32 0, i32 1
  %26 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i.i31, i32 0, i32 2
  %27 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i.i31, i32 0, i32 3
  %28 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i.i31, i32 0, i32 4
  %29 = ptrtoint ptr %tab.i.i31 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %iqcc.i.i30, ptr %tab.i.i31, align 4
  %30 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 2, ptr %25, align 4
  %31 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %26, align 4
  %32 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 80, ptr %27, align 4
  %33 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 16, ptr %28, align 4
  call void @wlc_phy_read_table(ptr noundef %pi, ptr noundef nonnull %tab.i.i31, i16 noundef zeroext 1109, i16 noundef zeroext 1111, i16 noundef zeroext 1110) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tab.i.i31) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iqcc.i.i30) #6
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tab.i28.i) #6
  %34 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i28.i, i32 0, i32 1
  %35 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i28.i, i32 0, i32 2
  %36 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i28.i, i32 0, i32 3
  %37 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i28.i, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %didq.i.i) #6
  %38 = ptrtoint ptr %didq.i.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 -1, ptr %didq.i.i, align 2, !annotation !48
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %35, align 4
  %40 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 16, ptr %37, align 4
  %41 = ptrtoint ptr %tab.i28.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %didq.i.i, ptr %tab.i28.i, align 4
  %42 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %34, align 4
  %43 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 85, ptr %36, align 4
  call void @wlc_phy_read_table(ptr noundef %pi, ptr noundef nonnull %tab.i28.i, i16 noundef zeroext 1109, i16 noundef zeroext 1111, i16 noundef zeroext 1110) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %didq.i.i) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tab.i28.i) #6
  %call3 = call fastcc i32 @wlc_lcnphy_get_cc(ptr noundef %pi, i32 noundef 3)
  %call5 = call fastcc i32 @wlc_lcnphy_get_cc(ptr noundef %pi, i32 noundef 4)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wlc_lcnphy_tx_iqlo_loopback(ptr noundef %pi, ptr nocapture noundef writeonly %values_to_save) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.0102 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [20 x i16], ptr @iqlo_loopback_rf_regs, i32 0, i32 %i.0102
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arrayidx, align 2
  %call = tail call zeroext i16 @read_radio_reg(ptr noundef %pi, i16 noundef zeroext %1) #6
  %arrayidx1 = getelementptr i16, ptr %values_to_save, i32 %i.0102
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %call, ptr %arrayidx1, align 2
  %inc = add nuw nsw i32 %i.0102, 1
  %exitcond.not = icmp eq i32 %inc, 20
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1100, i16 noundef zeroext 4096, i16 noundef zeroext 4096) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1101, i16 noundef zeroext 16384, i16 noundef zeroext 16384) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1100, i16 noundef zeroext 2048, i16 noundef zeroext 2048) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1101, i16 noundef zeroext 8192, i16 noundef zeroext 0) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1083, i16 noundef zeroext 2, i16 noundef zeroext 2) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1084, i16 noundef zeroext 2, i16 noundef zeroext 0) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1083, i16 noundef zeroext 1, i16 noundef zeroext 1) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1084, i16 noundef zeroext 1, i16 noundef zeroext 0) #6
  %phy_rev = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 7, i32 1
  %3 = ptrtoint ptr %phy_rev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %phy_rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp2 = icmp eq i32 %4, 2
  %. = select i1 %cmp2, i16 253, i16 249
  tail call void @and_radio_reg(ptr noundef %pi, i16 noundef zeroext 58, i16 noundef zeroext %.) #6
  tail call void @or_radio_reg(ptr noundef %pi, i16 noundef zeroext 282, i16 noundef zeroext 1) #6
  tail call void @or_radio_reg(ptr noundef %pi, i16 noundef zeroext 54, i16 noundef zeroext 1) #6
  tail call void @or_radio_reg(ptr noundef %pi, i16 noundef zeroext 282, i16 noundef zeroext 24) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 4294960) #6
  %6 = ptrtoint ptr %phy_rev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %phy_rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp5 = icmp eq i32 %7, 2
  %radio_chanspec = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 12
  %8 = ptrtoint ptr %radio_chanspec to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %radio_chanspec, align 4
  %10 = and i16 %9, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %10)
  %cmp7 = icmp eq i16 %10, 4096
  br i1 %cmp5, label %if.then6, label %if.else12

if.then6:                                         ; preds = %for.end
  br i1 %cmp7, label %if.then9, label %if.else10

if.then9:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mod_radio_reg(ptr noundef %pi, i16 noundef zeroext 58, i16 noundef zeroext 1, i16 noundef zeroext 0) #6
  br label %if.end21

if.else10:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @or_radio_reg(ptr noundef %pi, i16 noundef zeroext 58, i16 noundef zeroext 1) #6
  br label %if.end21

if.else12:                                        ; preds = %for.end
  br i1 %cmp7, label %if.then18, label %if.else19

if.then18:                                        ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mod_radio_reg(ptr noundef %pi, i16 noundef zeroext 58, i16 noundef zeroext 3, i16 noundef zeroext 1) #6
  br label %if.end21

if.else19:                                        ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @or_radio_reg(ptr noundef %pi, i16 noundef zeroext 58, i16 noundef zeroext 3) #6
  br label %if.end21

if.end21:                                         ; preds = %if.else19, %if.then18, %if.else10, %if.then9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 4294960) #6
  tail call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext 37, i16 noundef zeroext 15) #6
  %12 = ptrtoint ptr %phy_rev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %phy_rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp24 = icmp eq i32 %13, 2
  %radio_chanspec27 = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 12
  %14 = ptrtoint ptr %radio_chanspec27 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %radio_chanspec27, align 4
  %16 = and i16 %15, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %16)
  %cmp30 = icmp eq i16 %16, 4096
  br i1 %cmp24, label %if.then26, label %if.else35

if.then26:                                        ; preds = %if.end21
  br i1 %cmp30, label %if.then32, label %if.else33

if.then32:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mod_radio_reg(ptr noundef %pi, i16 noundef zeroext 40, i16 noundef zeroext 15, i16 noundef zeroext 4) #6
  br label %if.end44

if.else33:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mod_radio_reg(ptr noundef %pi, i16 noundef zeroext 40, i16 noundef zeroext 15, i16 noundef zeroext 6) #6
  br label %if.end44

if.else35:                                        ; preds = %if.end21
  br i1 %cmp30, label %if.then41, label %if.else42

if.then41:                                        ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mod_radio_reg(ptr noundef %pi, i16 noundef zeroext 40, i16 noundef zeroext 30, i16 noundef zeroext 8) #6
  br label %if.end44

if.else42:                                        ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mod_radio_reg(ptr noundef %pi, i16 noundef zeroext 40, i16 noundef zeroext 30, i16 noundef zeroext 12) #6
  br label %if.end44

if.end44:                                         ; preds = %if.else42, %if.then41, %if.else33, %if.then32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 4294960) #6
  tail call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext 5, i16 noundef zeroext 8) #6
  tail call void @or_radio_reg(ptr noundef %pi, i16 noundef zeroext 274, i16 noundef zeroext 128) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 4294960) #6
  tail call void @or_radio_reg(ptr noundef %pi, i16 noundef zeroext 255, i16 noundef zeroext 16) #6
  tail call void @or_radio_reg(ptr noundef %pi, i16 noundef zeroext 287, i16 noundef zeroext 68) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 4294960) #6
  tail call void @or_radio_reg(ptr noundef %pi, i16 noundef zeroext 11, i16 noundef zeroext 7) #6
  tail call void @or_radio_reg(ptr noundef %pi, i16 noundef zeroext 275, i16 noundef zeroext 16) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 4294960) #6
  tail call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext 7, i16 noundef zeroext 1) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 4294960) #6
  tail call void @mod_radio_reg(ptr noundef %pi, i16 noundef zeroext 252, i16 noundef zeroext 3, i16 noundef zeroext 2) #6
  tail call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext 253, i16 noundef zeroext 166) #6
  tail call void @or_radio_reg(ptr noundef %pi, i16 noundef zeroext 287, i16 noundef zeroext 68) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 4294960) #6
  tail call void @or_radio_reg(ptr noundef %pi, i16 noundef zeroext 255, i16 noundef zeroext 16) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 4294960) #6
  tail call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext 18, i16 noundef zeroext 2) #6
  tail call void @or_radio_reg(ptr noundef %pi, i16 noundef zeroext 274, i16 noundef zeroext 6) #6
  tail call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext 54, i16 noundef zeroext 17) #6
  tail call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext 89, i16 noundef zeroext 204) #6
  tail call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext 92, i16 noundef zeroext 46) #6
  tail call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext 120, i16 noundef zeroext 215) #6
  tail call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext 146, i16 noundef zeroext 21) #6
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wlc_lcnphy_set_cc(ptr noundef %pi, i32 noundef %cal_type, i16 noundef signext %coeff_x, i16 noundef signext %coeff_y) unnamed_addr #0 align 64 {
entry:
  %didq.addr.i = alloca i16, align 2
  %tab.i84 = alloca %struct.phytbl_info, align 4
  %tab.i = alloca %struct.phytbl_info, align 4
  %iqcc.i = alloca [2 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %cal_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %cal_type, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb5
    i32 4, label %sw.bb24
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tab.i) #6
  %1 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i, i32 0, i32 1
  %2 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i, i32 0, i32 2
  %3 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i, i32 0, i32 3
  %4 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iqcc.i) #6
  %5 = getelementptr inbounds [2 x i16], ptr %iqcc.i, i32 0, i32 1
  %6 = ptrtoint ptr %iqcc.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %coeff_x, ptr %iqcc.i, align 2
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %coeff_y, ptr %5, align 2
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %2, align 4
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 16, ptr %4, align 4
  %10 = ptrtoint ptr %tab.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %iqcc.i, ptr %tab.i, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %1, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 80, ptr %3, align 4
  call void @wlc_phy_write_table(ptr noundef %pi, ptr noundef nonnull %tab.i, i16 noundef zeroext 1109, i16 noundef zeroext 1111, i16 noundef zeroext 1110) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iqcc.i) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tab.i) #6
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %13 = shl i16 %coeff_x, 8
  %14 = and i16 %coeff_y, 255
  %or83 = or i16 %14, %13
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %didq.addr.i)
  %15 = ptrtoint ptr %didq.addr.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %or83, ptr %didq.addr.i, align 2
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tab.i84) #6
  %16 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i84, i32 0, i32 1
  %17 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i84, i32 0, i32 2
  %18 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i84, i32 0, i32 3
  %19 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i84, i32 0, i32 4
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %17, align 4
  %21 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 16, ptr %19, align 4
  %22 = ptrtoint ptr %tab.i84 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %didq.addr.i, ptr %tab.i84, align 4
  %23 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %16, align 4
  %24 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 85, ptr %18, align 4
  call void @wlc_phy_write_table(ptr noundef %pi, ptr noundef nonnull %tab.i84, i16 noundef zeroext 1109, i16 noundef zeroext 1111, i16 noundef zeroext 1110) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tab.i84) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %didq.addr.i)
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %coeff_x)
  %cmp1.i = icmp slt i16 %coeff_x, 0
  br i1 %cmp1.i, label %wlc_lcnphy_calc_floor.exit, label %wlc_lcnphy_calc_floor.exit.thread

wlc_lcnphy_calc_floor.exit.thread:                ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #8
  %div6313542.i = lshr i16 %coeff_x, 1
  %div6.sext36.i = zext i16 %div6313542.i to i32
  br label %if.else17.i

wlc_lcnphy_calc_floor.exit:                       ; preds = %sw.bb5
  %sub.nonneg.i = sub i16 1, %coeff_x
  %div333443.i = lshr i16 %sub.nonneg.i, 1
  %div33.zext.i = zext i16 %div333443.i to i32
  %div33.neg.i = sub nsw i32 0, %div33.zext.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %coeff_x)
  %cmp12.i.not = icmp eq i16 %coeff_x, -1
  br i1 %cmp12.i.not, label %wlc_lcnphy_calc_floor.exit.if.else17.i_crit_edge, label %if.then14.i

wlc_lcnphy_calc_floor.exit.if.else17.i_crit_edge: ; preds = %wlc_lcnphy_calc_floor.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else17.i

if.then14.i:                                      ; preds = %wlc_lcnphy_calc_floor.exit
  call void @__sanitizer_cov_trace_pc() #8
  %coeff_x.nonneg.i = sub i16 0, %coeff_x
  %div16323741.i = lshr i16 %coeff_x.nonneg.i, 1
  %div163237.neg.i = sub nsw i16 0, %div16323741.i
  br label %wlc_lcnphy_calc_floor.exit86

if.else17.i:                                      ; preds = %wlc_lcnphy_calc_floor.exit.if.else17.i_crit_edge, %wlc_lcnphy_calc_floor.exit.thread
  %k.1.i159 = phi i32 [ %div6.sext36.i, %wlc_lcnphy_calc_floor.exit.thread ], [ %div33.neg.i, %wlc_lcnphy_calc_floor.exit.if.else17.i_crit_edge ]
  %add.i = add i16 %coeff_x, 1
  %div20383940.i = lshr i16 %add.i, 1
  br label %wlc_lcnphy_calc_floor.exit86

wlc_lcnphy_calc_floor.exit86:                     ; preds = %if.else17.i, %if.then14.i
  %k.1.i158 = phi i32 [ %div33.neg.i, %if.then14.i ], [ %k.1.i159, %if.else17.i ]
  %k.1.i85.in = phi i16 [ %div163237.neg.i, %if.then14.i ], [ %div20383940.i, %if.else17.i ]
  %k.1.i85 = zext i16 %k.1.i85.in to i32
  %.neg79 = mul nuw i32 %k.1.i85, 65520
  %conv6 = add i32 %.neg79, %k.1.i158
  %25 = trunc i32 %conv6 to i16
  %conv12 = add i16 %25, 136
  tail call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext 137, i16 noundef zeroext %conv12) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %coeff_y)
  %cmp1.i87 = icmp slt i16 %coeff_y, 0
  br i1 %cmp1.i87, label %wlc_lcnphy_calc_floor.exit97, label %wlc_lcnphy_calc_floor.exit97.thread

wlc_lcnphy_calc_floor.exit97.thread:              ; preds = %wlc_lcnphy_calc_floor.exit86
  call void @__sanitizer_cov_trace_pc() #8
  %div6313542.i93 = lshr i16 %coeff_y, 1
  %div6.sext36.i94 = zext i16 %div6313542.i93 to i32
  br label %if.else17.i107

wlc_lcnphy_calc_floor.exit97:                     ; preds = %wlc_lcnphy_calc_floor.exit86
  %sub.nonneg.i88 = sub i16 1, %coeff_y
  %div333443.i89 = lshr i16 %sub.nonneg.i88, 1
  %div33.zext.i90 = zext i16 %div333443.i89 to i32
  %div33.neg.i91 = sub nsw i32 0, %div33.zext.i90
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %coeff_y)
  %cmp12.i98.not = icmp eq i16 %coeff_y, -1
  br i1 %cmp12.i98.not, label %wlc_lcnphy_calc_floor.exit97.if.else17.i107_crit_edge, label %if.then14.i103

wlc_lcnphy_calc_floor.exit97.if.else17.i107_crit_edge: ; preds = %wlc_lcnphy_calc_floor.exit97
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else17.i107

if.then14.i103:                                   ; preds = %wlc_lcnphy_calc_floor.exit97
  call void @__sanitizer_cov_trace_pc() #8
  %coeff_x.nonneg.i99 = sub i16 0, %coeff_y
  %div16323741.i100 = lshr i16 %coeff_x.nonneg.i99, 1
  %div163237.neg.i101 = sub nsw i16 0, %div16323741.i100
  br label %wlc_lcnphy_calc_floor.exit109

if.else17.i107:                                   ; preds = %wlc_lcnphy_calc_floor.exit97.if.else17.i107_crit_edge, %wlc_lcnphy_calc_floor.exit97.thread
  %k.1.i96163 = phi i32 [ %div6.sext36.i94, %wlc_lcnphy_calc_floor.exit97.thread ], [ %div33.neg.i91, %wlc_lcnphy_calc_floor.exit97.if.else17.i107_crit_edge ]
  %add.i104 = add i16 %coeff_y, 1
  %div20383940.i105 = lshr i16 %add.i104, 1
  br label %wlc_lcnphy_calc_floor.exit109

wlc_lcnphy_calc_floor.exit109:                    ; preds = %if.else17.i107, %if.then14.i103
  %k.1.i96162 = phi i32 [ %div33.neg.i91, %if.then14.i103 ], [ %k.1.i96163, %if.else17.i107 ]
  %k.1.i108.in = phi i16 [ %div163237.neg.i101, %if.then14.i103 ], [ %div20383940.i105, %if.else17.i107 ]
  %k.1.i108 = zext i16 %k.1.i108.in to i32
  %.neg80 = mul nuw i32 %k.1.i108, 65520
  %conv15 = add i32 %.neg80, %k.1.i96162
  %26 = trunc i32 %conv15 to i16
  %conv23 = add i16 %26, 136
  tail call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext 138, i16 noundef zeroext %conv23) #6
  br label %sw.epilog

sw.bb24:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %coeff_x)
  %cmp1.i110 = icmp slt i16 %coeff_x, 0
  br i1 %cmp1.i110, label %wlc_lcnphy_calc_floor.exit120, label %wlc_lcnphy_calc_floor.exit120.thread

wlc_lcnphy_calc_floor.exit120.thread:             ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #8
  %div6313542.i116 = lshr i16 %coeff_x, 1
  %div6.sext36.i117 = zext i16 %div6313542.i116 to i32
  br label %if.else17.i130

wlc_lcnphy_calc_floor.exit120:                    ; preds = %sw.bb24
  %sub.nonneg.i111 = sub i16 1, %coeff_x
  %div333443.i112 = lshr i16 %sub.nonneg.i111, 1
  %div33.zext.i113 = zext i16 %div333443.i112 to i32
  %div33.neg.i114 = sub nsw i32 0, %div33.zext.i113
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %coeff_x)
  %cmp12.i121.not = icmp eq i16 %coeff_x, -1
  br i1 %cmp12.i121.not, label %wlc_lcnphy_calc_floor.exit120.if.else17.i130_crit_edge, label %if.then14.i126

wlc_lcnphy_calc_floor.exit120.if.else17.i130_crit_edge: ; preds = %wlc_lcnphy_calc_floor.exit120
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else17.i130

if.then14.i126:                                   ; preds = %wlc_lcnphy_calc_floor.exit120
  call void @__sanitizer_cov_trace_pc() #8
  %coeff_x.nonneg.i122 = sub i16 0, %coeff_x
  %div16323741.i123 = lshr i16 %coeff_x.nonneg.i122, 1
  %div163237.neg.i124 = sub nsw i16 0, %div16323741.i123
  br label %wlc_lcnphy_calc_floor.exit132

if.else17.i130:                                   ; preds = %wlc_lcnphy_calc_floor.exit120.if.else17.i130_crit_edge, %wlc_lcnphy_calc_floor.exit120.thread
  %k.1.i119167 = phi i32 [ %div6.sext36.i117, %wlc_lcnphy_calc_floor.exit120.thread ], [ %div33.neg.i114, %wlc_lcnphy_calc_floor.exit120.if.else17.i130_crit_edge ]
  %add.i127 = add i16 %coeff_x, 1
  %div20383940.i128 = lshr i16 %add.i127, 1
  br label %wlc_lcnphy_calc_floor.exit132

wlc_lcnphy_calc_floor.exit132:                    ; preds = %if.else17.i130, %if.then14.i126
  %k.1.i119166 = phi i32 [ %div33.neg.i114, %if.then14.i126 ], [ %k.1.i119167, %if.else17.i130 ]
  %k.1.i131.in = phi i16 [ %div163237.neg.i124, %if.then14.i126 ], [ %div20383940.i128, %if.else17.i130 ]
  %k.1.i131 = zext i16 %k.1.i131.in to i32
  %.neg = mul nuw i32 %k.1.i131, 65520
  %conv27 = add i32 %.neg, %k.1.i119166
  %27 = trunc i32 %conv27 to i16
  %conv35 = add i16 %27, 136
  tail call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext 139, i16 noundef zeroext %conv35) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %coeff_y)
  %cmp1.i133 = icmp slt i16 %coeff_y, 0
  br i1 %cmp1.i133, label %wlc_lcnphy_calc_floor.exit143, label %wlc_lcnphy_calc_floor.exit143.thread

wlc_lcnphy_calc_floor.exit143.thread:             ; preds = %wlc_lcnphy_calc_floor.exit132
  call void @__sanitizer_cov_trace_pc() #8
  %div6313542.i139 = lshr i16 %coeff_y, 1
  %div6.sext36.i140 = zext i16 %div6313542.i139 to i32
  br label %if.else17.i153

wlc_lcnphy_calc_floor.exit143:                    ; preds = %wlc_lcnphy_calc_floor.exit132
  %sub.nonneg.i134 = sub i16 1, %coeff_y
  %div333443.i135 = lshr i16 %sub.nonneg.i134, 1
  %div33.zext.i136 = zext i16 %div333443.i135 to i32
  %div33.neg.i137 = sub nsw i32 0, %div33.zext.i136
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %coeff_y)
  %cmp12.i144.not = icmp eq i16 %coeff_y, -1
  br i1 %cmp12.i144.not, label %wlc_lcnphy_calc_floor.exit143.if.else17.i153_crit_edge, label %if.then14.i149

wlc_lcnphy_calc_floor.exit143.if.else17.i153_crit_edge: ; preds = %wlc_lcnphy_calc_floor.exit143
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else17.i153

if.then14.i149:                                   ; preds = %wlc_lcnphy_calc_floor.exit143
  call void @__sanitizer_cov_trace_pc() #8
  %coeff_x.nonneg.i145 = sub i16 0, %coeff_y
  %div16323741.i146 = lshr i16 %coeff_x.nonneg.i145, 1
  %div163237.neg.i147 = sub nsw i16 0, %div16323741.i146
  br label %wlc_lcnphy_calc_floor.exit155

if.else17.i153:                                   ; preds = %wlc_lcnphy_calc_floor.exit143.if.else17.i153_crit_edge, %wlc_lcnphy_calc_floor.exit143.thread
  %k.1.i142171 = phi i32 [ %div6.sext36.i140, %wlc_lcnphy_calc_floor.exit143.thread ], [ %div33.neg.i137, %wlc_lcnphy_calc_floor.exit143.if.else17.i153_crit_edge ]
  %add.i150 = add i16 %coeff_y, 1
  %div20383940.i151 = lshr i16 %add.i150, 1
  br label %wlc_lcnphy_calc_floor.exit155

wlc_lcnphy_calc_floor.exit155:                    ; preds = %if.else17.i153, %if.then14.i149
  %k.1.i142170 = phi i32 [ %div33.neg.i137, %if.then14.i149 ], [ %k.1.i142171, %if.else17.i153 ]
  %k.1.i154.in = phi i16 [ %div163237.neg.i147, %if.then14.i149 ], [ %div20383940.i151, %if.else17.i153 ]
  %k.1.i154 = zext i16 %k.1.i154.in to i32
  %.neg78 = mul nuw i32 %k.1.i154, 65520
  %conv38 = add i32 %.neg78, %k.1.i142170
  %28 = trunc i32 %conv38 to i16
  %conv46 = add i16 %28, 136
  tail call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext 140, i16 noundef zeroext %conv46) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %wlc_lcnphy_calc_floor.exit155, %wlc_lcnphy_calc_floor.exit109, %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wlc_lcnphy_a1(ptr noundef %pi, i32 noundef %cal_type, i32 noundef %num_levels, i32 noundef %step_size_lg2) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2592, i32 noundef 262) #9
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup208_crit_edge, label %if.end

entry.cleanup208_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup208

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i365 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 2592, i32 noundef 40) #9
  %cmp2 = icmp eq ptr %call7.i.i365, null
  br i1 %cmp2, label %if.end.cleanup208.sink.split_crit_edge, label %if.end4

if.end.cleanup208.sink.split_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup208.sink.split

if.end4:                                          ; preds = %if.end
  %call5 = tail call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1754) #6
  %call6 = tail call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1755) #6
  %call7 = tail call zeroext i16 @read_radio_reg(ptr noundef %pi, i16 noundef zeroext 38) #6
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 2365, i16 noundef zeroext 192) #6
  tail call void @wlc_lcnphy_start_tx_tone(ptr noundef %pi, i32 noundef 3750, i16 noundef zeroext 88, i1 noundef zeroext false)
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 1754, i16 noundef zeroext -1) #6
  tail call void @or_phy_reg(ptr noundef %pi, i16 noundef zeroext 1755, i16 noundef zeroext 3) #6
  tail call fastcc void @wlc_lcnphy_tx_iqlo_loopback(ptr noundef %pi, ptr noundef nonnull %call7.i.i365)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 107374000) #6
  %call8 = tail call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 2360) #6
  %call9 = tail call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1239) #6
  %call10 = tail call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1240) #6
  tail call void @or_phy_reg(ptr noundef %pi, i16 noundef zeroext 2360, i16 noundef zeroext 4) #6
  tail call void @or_phy_reg(ptr noundef %pi, i16 noundef zeroext 1239, i16 noundef zeroext 4) #6
  tail call void @or_phy_reg(ptr noundef %pi, i16 noundef zeroext 1239, i16 noundef zeroext 8) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1239, i16 noundef zeroext 28672, i16 noundef zeroext 8192) #6
  tail call void @or_phy_reg(ptr noundef %pi, i16 noundef zeroext 1240, i16 noundef zeroext 1) #6
  tail call void @or_phy_reg(ptr noundef %pi, i16 noundef zeroext 1240, i16 noundef zeroext 2) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1240, i16 noundef zeroext 4092, i16 noundef zeroext 2280) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1240, i16 noundef zeroext 28672, i16 noundef zeroext 28672) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_levels)
  %cmp11 = icmp eq i32 %num_levels, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cal_type)
  %cmp13.not = icmp eq i32 %cal_type, 0
  %. = select i1 %cmp13.not, i32 9, i32 4
  %num_levels.addr.0 = select i1 %cmp11, i32 %., i32 %num_levels
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %step_size_lg2)
  %cmp17 = icmp eq i32 %step_size_lg2, 0
  %.360 = select i1 %cmp13.not, i32 8, i32 3
  %step_size_lg2.addr.0 = select i1 %cmp17, i32 %.360, i32 %step_size_lg2
  %shl = shl nuw i32 1, %step_size_lg2.addr.0
  %call24 = tail call fastcc i32 @wlc_lcnphy_get_cc(ptr noundef %pi, i32 noundef %cal_type)
  %phy_c3.sroa.0.0.extract.shift = lshr i32 %call24, 16
  %phy_c3.sroa.0.0.extract.trunc = trunc i32 %phy_c3.sroa.0.0.extract.shift to i16
  %phy_c3.sroa.7.0.extract.trunc = trunc i32 %call24 to i16
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %cal_type)
  %cmp25 = icmp eq i32 %cal_type, 2
  br i1 %cmp25, label %if.then27, label %if.end4.if.end47_crit_edge

if.end4.if.end47_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

if.then27:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8388607, i32 %call24)
  %cmp30 = icmp ugt i32 %call24, 8388607
  %conv35 = add i16 %phy_c3.sroa.0.0.extract.trunc, -256
  %phy_c15.0 = select i1 %cmp30, i16 %conv35, i16 %phy_c3.sroa.0.0.extract.trunc
  %conv38 = and i32 %call24, 65408
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv38)
  %cmp39.not = icmp eq i32 %conv38, 0
  %conv45 = add i16 %phy_c3.sroa.7.0.extract.trunc, -256
  %spec.select366 = select i1 %cmp39.not, i16 %phy_c3.sroa.7.0.extract.trunc, i16 %conv45
  br label %if.end47

if.end47:                                         ; preds = %if.then27, %if.end4.if.end47_crit_edge
  %phy_c15.1 = phi i16 [ %phy_c3.sroa.0.0.extract.trunc, %if.end4.if.end47_crit_edge ], [ %phy_c15.0, %if.then27 ]
  %phy_c16.0 = phi i16 [ %phy_c3.sroa.7.0.extract.trunc, %if.end4.if.end47_crit_edge ], [ %spec.select366, %if.then27 ]
  tail call fastcc void @wlc_lcnphy_set_cc(ptr noundef %pi, i32 noundef %cal_type, i16 noundef signext %phy_c15.1, i16 noundef signext %phy_c16.0)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 4294960) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %step_size_lg2.addr.0)
  %cmp49.not390 = icmp ult i32 %step_size_lg2.addr.0, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_levels.addr.0)
  %cmp52391 = icmp sgt i32 %num_levels.addr.0, 0
  %or.cond392 = and i1 %cmp49.not390, %cmp52391
  br i1 %or.cond392, label %for.body.lr.ph, label %if.end47.cleanup_crit_edge

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end47
  %conv48389 = and i32 %shl, 65535
  %arrayidx = getelementptr i16, ptr %call7.i.i, i32 130
  %mul163 = zext i1 %cmp13.not to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %cal_type)
  %4 = icmp ult i32 %cal_type, 5
  %switch.maskindex = trunc i32 %cal_type to i8
  %switch.shifted = lshr i8 29, %switch.maskindex
  %5 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %switch.lobit.not = icmp eq i8 %5, 0
  %switch.gep = getelementptr inbounds [5 x i16], ptr @switch.table.wlc_lcnphy_a1, i32 0, i32 %cal_type
  br label %for.body

for.body:                                         ; preds = %for.end201.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.end201.for.body_crit_edge ]
  %conv48400 = phi i32 [ %conv48389, %for.body.lr.ph ], [ %24, %for.end201.for.body_crit_edge ]
  %phy_c21.0399 = phi i32 [ 0, %for.body.lr.ph ], [ %phy_c21.3, %for.end201.for.body_crit_edge ]
  %phy_c16.1398 = phi i16 [ %phy_c16.0, %for.body.lr.ph ], [ %phy_c14.3, %for.end201.for.body_crit_edge ]
  %phy_c15.2397 = phi i16 [ %phy_c15.1, %for.body.lr.ph ], [ %phy_c13.3, %for.end201.for.body_crit_edge ]
  %phy_c14.0396 = phi i16 [ 0, %for.body.lr.ph ], [ %phy_c14.3, %for.end201.for.body_crit_edge ]
  %phy_c13.0395 = phi i16 [ 0, %for.body.lr.ph ], [ %phy_c13.3, %for.end201.for.body_crit_edge ]
  %phy_c10.0394 = phi i16 [ 0, %for.body.lr.ph ], [ %phy_c10.1, %for.end201.for.body_crit_edge ]
  %.not402 = xor i1 %4, true
  %brmerge403 = select i1 %.not402, i1 true, i1 %switch.lobit.not
  br i1 %brmerge403, label %for.body.sw.epilog_crit_edge, label %switch.lookup

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

switch.lookup:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %6)
  %switch.load = load i16, ptr %switch.gep, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %for.body.sw.epilog_crit_edge
  %phy_c10.1 = phi i16 [ %phy_c10.0394, %for.body.sw.epilog_crit_edge ], [ %switch.load, %switch.lookup ]
  %call57 = tail call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 2365) #6
  %mul = shl i16 %call57, 1
  br label %while.cond

while.cond:                                       ; preds = %if.end81.while.cond_crit_edge, %sw.epilog
  %phy_c5.0 = phi i32 [ 7, %sw.epilog ], [ %spec.select, %if.end81.while.cond_crit_edge ]
  %phy_c24.0.off0 = phi i1 [ false, %sw.epilog ], [ %cmp66, %if.end81.while.cond_crit_edge ]
  %phy_c25.0.off0 = phi i1 [ true, %sw.epilog ], [ false, %if.end81.while.cond_crit_edge ]
  %shl61 = shl nuw nsw i32 %phy_c5.0, 4
  %or = or i32 %shl61, %phy_c5.0
  %conv62 = trunc i32 %or to i16
  tail call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext 38, i16 noundef zeroext %conv62) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 10737400) #6
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %arrayidx, align 4
  tail call fastcc void @wlc_lcnphy_samp_cap(ptr noundef %pi, i32 noundef 1, i16 noundef zeroext %mul, ptr noundef nonnull %call7.i.i)
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %10)
  %cmp66 = icmp eq i16 %10, 1
  %11 = xor i1 %phy_c24.0.off0, %cmp66
  %.not = xor i1 %11, true
  %brmerge = or i1 %phy_c25.0.off0, %.not
  br i1 %brmerge, label %if.end81, label %while.cond.for.cond110.preheader.lr.ph_crit_edge

while.cond.for.cond110.preheader.lr.ph_crit_edge: ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond110.preheader.lr.ph

if.end81:                                         ; preds = %while.cond
  %sub71 = sext i1 %cmp66 to i32
  %phy_c5.1 = add nsw i32 %phy_c5.0, %sub71
  %not.cmp66 = xor i1 %cmp66, true
  %add = zext i1 %not.cmp66 to i32
  %spec.select = add nuw nsw i32 %phy_c5.1, %add
  %12 = add nsw i32 %spec.select, -7
  %13 = icmp ult i32 %12, -6
  br i1 %13, label %if.end81.for.cond110.preheader.lr.ph_crit_edge, label %if.end81.while.cond_crit_edge

if.end81.while.cond_crit_edge:                    ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

if.end81.for.cond110.preheader.lr.ph_crit_edge:   ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond110.preheader.lr.ph

for.cond110.preheader.lr.ph:                      ; preds = %if.end81.for.cond110.preheader.lr.ph_crit_edge, %while.cond.for.cond110.preheader.lr.ph_crit_edge
  %sub102 = sub nsw i32 0, %conv48400
  %14 = zext i16 %phy_c10.1 to i32
  %sub123 = sub nsw i32 0, %14
  %conv129 = trunc i32 %sub123 to i16
  br label %for.body114.lr.ph

for.body114.lr.ph:                                ; preds = %for.inc198.for.body114.lr.ph_crit_edge, %for.cond110.preheader.lr.ph
  %phy_c23.0.off0385 = phi i1 [ true, %for.cond110.preheader.lr.ph ], [ false, %for.inc198.for.body114.lr.ph_crit_edge ]
  %phy_c21.1384 = phi i32 [ %phy_c21.0399, %for.cond110.preheader.lr.ph ], [ %phy_c21.3, %for.inc198.for.body114.lr.ph_crit_edge ]
  %phy_c14.1383 = phi i16 [ %phy_c14.0396, %for.cond110.preheader.lr.ph ], [ %phy_c14.3, %for.inc198.for.body114.lr.ph_crit_edge ]
  %phy_c13.1382 = phi i16 [ %phy_c13.0395, %for.cond110.preheader.lr.ph ], [ %phy_c13.3, %for.inc198.for.body114.lr.ph_crit_edge ]
  %k.0380 = phi i32 [ %sub102, %for.cond110.preheader.lr.ph ], [ %add200, %for.inc198.for.body114.lr.ph_crit_edge ]
  %15 = trunc i32 %k.0380 to i16
  %conv117 = add i16 %phy_c15.2397, %15
  %conv121 = sext i16 %conv117 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv121, i32 %sub123)
  %cmp124 = icmp slt i32 %conv121, %sub123
  call void @__sanitizer_cov_trace_cmp4(i32 %conv121, i32 %14)
  %cmp133 = icmp sgt i32 %conv121, %14
  %spec.select362 = select i1 %cmp133, i16 %phy_c10.1, i16 %conv117
  %phy_c11.0 = select i1 %cmp124, i16 %conv129, i16 %spec.select362
  br label %for.body114

for.body114:                                      ; preds = %for.end.for.body114_crit_edge, %for.body114.lr.ph
  %phy_c23.1.off0375 = phi i1 [ %phy_c23.0.off0385, %for.body114.lr.ph ], [ false, %for.end.for.body114_crit_edge ]
  %phy_c21.2374 = phi i32 [ %phy_c21.1384, %for.body114.lr.ph ], [ %phy_c21.3, %for.end.for.body114_crit_edge ]
  %phy_c14.2373 = phi i16 [ %phy_c14.1383, %for.body114.lr.ph ], [ %phy_c14.3, %for.end.for.body114_crit_edge ]
  %phy_c13.2372 = phi i16 [ %phy_c13.1382, %for.body114.lr.ph ], [ %phy_c13.3, %for.end.for.body114_crit_edge ]
  %l.0371 = phi i32 [ %sub102, %for.body114.lr.ph ], [ %add196, %for.end.for.body114_crit_edge ]
  %16 = trunc i32 %l.0371 to i16
  %conv120 = add i16 %phy_c16.1398, %16
  %conv138 = sext i16 %conv120 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv138, i32 %sub123)
  %cmp141 = icmp slt i32 %conv138, %sub123
  call void @__sanitizer_cov_trace_cmp4(i32 %conv138, i32 %14)
  %cmp150 = icmp sgt i32 %conv138, %14
  %spec.select363 = select i1 %cmp150, i16 %phy_c10.1, i16 %conv120
  %phy_c12.0 = select i1 %cmp141, i16 %conv129, i16 %spec.select363
  tail call fastcc void @wlc_lcnphy_set_cc(ptr noundef %pi, i32 noundef %cal_type, i16 noundef signext %phy_c11.0, i16 noundef signext %phy_c12.0)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 4294960) #6
  tail call fastcc void @wlc_lcnphy_samp_cap(ptr noundef %pi, i32 noundef 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i)
  br label %for.body158

for.body158:                                      ; preds = %for.body158.for.body158_crit_edge, %for.body114
  %phy_c19.0369 = phi i32 [ 0, %for.body114 ], [ %add182, %for.body158.for.body158_crit_edge ]
  %phy_c18.0368 = phi i32 [ 0, %for.body114 ], [ %add177, %for.body158.for.body158_crit_edge ]
  %j.0367 = phi i32 [ 0, %for.body114 ], [ %inc, %for.body158.for.body158_crit_edge ]
  %phy_c6.0.in = shl nuw i32 %j.0367, %mul163
  %phy_c6.0 = srem i32 %phy_c6.0.in, 32
  %arrayidx166 = getelementptr %struct.lcnphy_spb_tone, ptr @lcnphy_spb_tone_3750, i32 %phy_c6.0
  %18 = ptrtoint ptr %arrayidx166 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx166, align 2
  %im170 = getelementptr %struct.lcnphy_spb_tone, ptr @lcnphy_spb_tone_3750, i32 %phy_c6.0, i32 1
  %20 = ptrtoint ptr %im170 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %im170, align 2
  %arrayidx172 = getelementptr i16, ptr %call7.i.i, i32 %j.0367
  %22 = ptrtoint ptr %arrayidx172 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx172, align 2
  %conv173 = sext i16 %23 to i32
  %conv175 = sext i16 %19 to i32
  %mul176 = mul nsw i32 %conv173, %conv175
  %add177 = add i32 %mul176, %phy_c18.0368
  %conv180 = sext i16 %21 to i32
  %mul181 = mul nsw i32 %conv173, %conv180
  %add182 = add i32 %mul181, %phy_c19.0369
  %inc = add nuw nsw i32 %j.0367, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %for.end, label %for.body158.for.body158_crit_edge

for.body158.for.body158_crit_edge:                ; preds = %for.body158
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body158

for.end:                                          ; preds = %for.body158
  %shr = ashr i32 %add177, 10
  %shr183 = ashr i32 %add182, 10
  %mul184 = mul i32 %shr, %shr
  %mul185 = mul i32 %shr183, %shr183
  %add186 = add i32 %mul185, %mul184
  call void @__sanitizer_cov_trace_cmp4(i32 %add186, i32 %phy_c21.2374)
  %cmp190 = icmp ult i32 %add186, %phy_c21.2374
  %or.cond364 = select i1 %phy_c23.1.off0375, i1 true, i1 %cmp190
  %phy_c13.3 = select i1 %or.cond364, i16 %phy_c11.0, i16 %phy_c13.2372
  %phy_c14.3 = select i1 %or.cond364, i16 %phy_c12.0, i16 %phy_c14.2373
  %phy_c21.3 = select i1 %or.cond364, i32 %add186, i32 %phy_c21.2374
  %add196 = add i32 %l.0371, %conv48400
  %cmp112.not = icmp sgt i32 %add196, %conv48400
  br i1 %cmp112.not, label %for.inc198, label %for.end.for.body114_crit_edge

for.end.for.body114_crit_edge:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body114

for.inc198:                                       ; preds = %for.end
  %add200 = add i32 %k.0380, %conv48400
  %cmp105.not = icmp sgt i32 %add200, %conv48400
  br i1 %cmp105.not, label %for.end201, label %for.inc198.for.body114.lr.ph_crit_edge

for.inc198.for.body114.lr.ph_crit_edge:           ; preds = %for.inc198
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body114.lr.ph

for.end201:                                       ; preds = %for.inc198
  %24 = lshr i32 %conv48400, 1
  tail call fastcc void @wlc_lcnphy_set_cc(ptr noundef %pi, i32 noundef %cal_type, i16 noundef signext %phy_c13.3, i16 noundef signext %phy_c14.3)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 4294960) #6
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv48400)
  %cmp49.not = icmp ugt i32 %conv48400, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %num_levels.addr.0, i32 %indvars.iv.next)
  %cmp52 = icmp sgt i32 %num_levels.addr.0, %indvars.iv.next
  %or.cond = select i1 %cmp49.not, i1 %cmp52, i1 false
  br i1 %or.cond, label %for.end201.for.body_crit_edge, label %for.end201.cleanup_crit_edge

for.end201.cleanup_crit_edge:                     ; preds = %for.end201
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.end201.for.body_crit_edge:                    ; preds = %for.end201
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup:                                          ; preds = %for.end201.cleanup_crit_edge, %if.end47.cleanup_crit_edge
  tail call void @and_phy_reg(ptr noundef %pi, i16 noundef zeroext 1100, i16 noundef zeroext 0) #6
  tail call void @and_phy_reg(ptr noundef %pi, i16 noundef zeroext 1083, i16 noundef zeroext 12) #6
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %cleanup
  %i.07.i = phi i32 [ 0, %cleanup ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [20 x i16], ptr @iqlo_loopback_rf_regs, i32 0, i32 %i.07.i
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx.i, align 2
  %arrayidx1.i = getelementptr i16, ptr %call7.i.i365, i32 %i.07.i
  %28 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx1.i, align 2
  tail call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext %27, i16 noundef zeroext %29) #6
  %inc.i = add nuw nsw i32 %i.07.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 20
  br i1 %exitcond.not.i, label %wlc_lcnphy_tx_iqlo_loopback_cleanup.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

wlc_lcnphy_tx_iqlo_loopback_cleanup.exit:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @wlc_lcnphy_stop_tx_tone(ptr noundef %pi)
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 1754, i16 noundef zeroext %call5) #6
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 1755, i16 noundef zeroext %call6) #6
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 2360, i16 noundef zeroext %call8) #6
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 1239, i16 noundef zeroext %call9) #6
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 1240, i16 noundef zeroext %call10) #6
  tail call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext 38, i16 noundef zeroext %call7) #6
  tail call void @kfree(ptr noundef nonnull %call7.i.i365) #6
  br label %cleanup208.sink.split

cleanup208.sink.split:                            ; preds = %wlc_lcnphy_tx_iqlo_loopback_cleanup.exit, %if.end.cleanup208.sink.split_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup208

cleanup208:                                       ; preds = %cleanup208.sink.split, %entry.cleanup208_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wlc_lcnphy_get_cc(ptr noundef %pi, i32 noundef %cal_type) unnamed_addr #0 align 64 {
entry:
  %tab.i28 = alloca %struct.phytbl_info, align 4
  %didq.i = alloca i16, align 2
  %iqcc.i = alloca [2 x i16], align 2
  %tab.i = alloca %struct.phytbl_info, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %cal_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %cal_type, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb3
    i32 3, label %sw.bb14
    i32 4, label %sw.bb19
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iqcc.i) #6
  %1 = ptrtoint ptr %iqcc.i to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %iqcc.i, align 2, !annotation !48
  %2 = getelementptr inbounds [2 x i16], ptr %iqcc.i, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %2, align 2, !annotation !48
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tab.i) #6
  %4 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i, i32 0, i32 1
  %5 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i, i32 0, i32 2
  %6 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i, i32 0, i32 3
  %7 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i, i32 0, i32 4
  %8 = ptrtoint ptr %tab.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %iqcc.i, ptr %tab.i, align 4
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %4, align 4
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %5, align 4
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 80, ptr %6, align 4
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 16, ptr %7, align 4
  call void @wlc_phy_read_table(ptr noundef %pi, ptr noundef nonnull %tab.i, i16 noundef zeroext 1109, i16 noundef zeroext 1111, i16 noundef zeroext 1110) #6
  %13 = ptrtoint ptr %iqcc.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %iqcc.i, align 2
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %2, align 2
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tab.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iqcc.i) #6
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tab.i28) #6
  %17 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i28, i32 0, i32 1
  %18 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i28, i32 0, i32 2
  %19 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i28, i32 0, i32 3
  %20 = getelementptr inbounds %struct.phytbl_info, ptr %tab.i28, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %didq.i) #6
  %21 = ptrtoint ptr %didq.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 -1, ptr %didq.i, align 2, !annotation !48
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %18, align 4
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 16, ptr %20, align 4
  %24 = ptrtoint ptr %tab.i28 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %didq.i, ptr %tab.i28, align 4
  %25 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %17, align 4
  %26 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 85, ptr %19, align 4
  call void @wlc_phy_read_table(ptr noundef %pi, ptr noundef nonnull %tab.i28, i16 noundef zeroext 1109, i16 noundef zeroext 1111, i16 noundef zeroext 1110) #6
  %27 = ptrtoint ptr %didq.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %didq.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %didq.i) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tab.i28) #6
  %29 = lshr i16 %28, 8
  %conv12 = and i16 %28, 255
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call zeroext i16 @read_radio_reg(ptr noundef %pi, i16 noundef zeroext 137) #6
  %30 = trunc i16 %call.i to i8
  %31 = lshr i8 %30, 4
  %call3.i = tail call zeroext i16 @read_radio_reg(ptr noundef %pi, i16 noundef zeroext 137) #6
  %32 = trunc i16 %call3.i to i8
  %conv6.i = and i8 %32, 15
  %add.i = sub nsw i8 %conv6.i, %31
  %call9.i = tail call zeroext i16 @read_radio_reg(ptr noundef %pi, i16 noundef zeroext 138) #6
  %33 = trunc i16 %call9.i to i8
  %34 = lshr i8 %33, 4
  %call16.i = tail call zeroext i16 @read_radio_reg(ptr noundef %pi, i16 noundef zeroext 138) #6
  %35 = trunc i16 %call16.i to i8
  %conv19.i = and i8 %35, 15
  %add21.i = sub nsw i8 %conv19.i, %34
  %call23.i = tail call zeroext i16 @read_radio_reg(ptr noundef %pi, i16 noundef zeroext 139) #6
  %call30.i = tail call zeroext i16 @read_radio_reg(ptr noundef %pi, i16 noundef zeroext 139) #6
  %call37.i = tail call zeroext i16 @read_radio_reg(ptr noundef %pi, i16 noundef zeroext 140) #6
  %call44.i = tail call zeroext i16 @read_radio_reg(ptr noundef %pi, i16 noundef zeroext 140) #6
  %conv15 = zext i8 %add.i to i16
  %conv17 = zext i8 %add21.i to i16
  br label %sw.epilog

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i29 = tail call zeroext i16 @read_radio_reg(ptr noundef %pi, i16 noundef zeroext 137) #6
  %call3.i30 = tail call zeroext i16 @read_radio_reg(ptr noundef %pi, i16 noundef zeroext 137) #6
  %call9.i33 = tail call zeroext i16 @read_radio_reg(ptr noundef %pi, i16 noundef zeroext 138) #6
  %call16.i34 = tail call zeroext i16 @read_radio_reg(ptr noundef %pi, i16 noundef zeroext 138) #6
  %call23.i37 = tail call zeroext i16 @read_radio_reg(ptr noundef %pi, i16 noundef zeroext 139) #6
  %36 = trunc i16 %call23.i37 to i8
  %37 = lshr i8 %36, 4
  %call30.i38 = tail call zeroext i16 @read_radio_reg(ptr noundef %pi, i16 noundef zeroext 139) #6
  %38 = trunc i16 %call30.i38 to i8
  %conv33.i39 = and i8 %38, 15
  %add35.i40 = sub nsw i8 %conv33.i39, %37
  %call37.i41 = tail call zeroext i16 @read_radio_reg(ptr noundef %pi, i16 noundef zeroext 140) #6
  %39 = trunc i16 %call37.i41 to i8
  %40 = lshr i8 %39, 4
  %call44.i42 = tail call zeroext i16 @read_radio_reg(ptr noundef %pi, i16 noundef zeroext 140) #6
  %41 = trunc i16 %call44.i42 to i8
  %conv47.i43 = and i8 %41, 15
  %add49.i44 = sub nsw i8 %conv47.i43, %40
  %conv20 = zext i8 %add35.i40 to i16
  %conv22 = zext i8 %add49.i44 to i16
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb19, %sw.bb14, %sw.bb3, %sw.bb, %entry.sw.epilog_crit_edge
  %retval.sroa.0.0 = phi i16 [ 0, %entry.sw.epilog_crit_edge ], [ %conv20, %sw.bb19 ], [ %conv15, %sw.bb14 ], [ %29, %sw.bb3 ], [ %14, %sw.bb ]
  %retval.sroa.7.0 = phi i16 [ 0, %entry.sw.epilog_crit_edge ], [ %conv22, %sw.bb19 ], [ %conv17, %sw.bb14 ], [ %conv12, %sw.bb3 ], [ %16, %sw.bb ]
  %retval.sroa.7.0.insert.ext = zext i16 %retval.sroa.7.0 to i32
  %retval.sroa.0.0.insert.ext = zext i16 %retval.sroa.0.0 to i32
  %retval.sroa.0.0.insert.shift = shl nuw i32 %retval.sroa.0.0.insert.ext, 16
  %retval.sroa.0.0.insert.insert = or i32 %retval.sroa.0.0.insert.shift, %retval.sroa.7.0.insert.ext
  ret i32 %retval.sroa.0.0.insert.insert
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wlc_lcnphy_samp_cap(ptr noundef %pi, i32 noundef %clip_detect_algo, i16 noundef zeroext %thresh, ptr nocapture noundef writeonly %ptr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 3
  %0 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %u, align 4
  %call = tail call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1754) #6
  %d11core = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 5
  %2 = ptrtoint ptr %d11core to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d11core, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %ops.i = getelementptr inbounds %struct.bcma_bus, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i, align 4
  %read16.i = getelementptr inbounds %struct.bcma_host_ops, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %read16.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read16.i, align 4
  %call.i = tail call zeroext i16 %9(ptr noundef %3, i16 noundef zeroext 1264) #6
  %arrayidx = getelementptr i16, ptr %ptr, i32 130
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %arrayidx, align 2
  %11 = ptrtoint ptr %d11core to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %d11core, align 4
  %13 = or i16 %call.i, 64
  %14 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %12, align 8
  %ops.i4 = getelementptr inbounds %struct.bcma_bus, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %ops.i4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i4, align 4
  %write16.i = getelementptr inbounds %struct.bcma_host_ops, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %write16.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write16.i, align 4
  tail call void %19(ptr noundef %12, i16 noundef zeroext 1264, i16 noundef zeroext %13) #6
  %20 = ptrtoint ptr %d11core to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %d11core, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 8
  %ops.i6 = getelementptr inbounds %struct.bcma_bus, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %ops.i6 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops.i6, align 4
  %write16.i7 = getelementptr inbounds %struct.bcma_host_ops, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %write16.i7 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write16.i7, align 4
  tail call void %27(ptr noundef %21, i16 noundef zeroext 1362, i16 noundef zeroext 32256) #6
  %28 = ptrtoint ptr %d11core to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %d11core, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 8
  %ops.i8 = getelementptr inbounds %struct.bcma_bus, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %ops.i8 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ops.i8, align 4
  %write16.i9 = getelementptr inbounds %struct.bcma_host_ops, ptr %33, i32 0, i32 4
  %34 = ptrtoint ptr %write16.i9 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write16.i9, align 4
  tail call void %35(ptr noundef %29, i16 noundef zeroext 1364, i16 noundef zeroext -32768) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 4294960) #6
  %37 = ptrtoint ptr %d11core to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %d11core, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 8
  %ops.i10 = getelementptr inbounds %struct.bcma_bus, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %ops.i10 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ops.i10, align 4
  %read16.i11 = getelementptr inbounds %struct.bcma_host_ops, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %read16.i11 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %read16.i11, align 4
  %call.i12 = tail call zeroext i16 %44(ptr noundef %38, i16 noundef zeroext 1170) #6
  %45 = ptrtoint ptr %d11core to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %d11core, align 4
  %47 = or i16 %call.i12, 48
  %48 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %46, align 8
  %ops.i14 = getelementptr inbounds %struct.bcma_bus, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %ops.i14 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ops.i14, align 4
  %write16.i15 = getelementptr inbounds %struct.bcma_host_ops, ptr %51, i32 0, i32 4
  %52 = ptrtoint ptr %write16.i15 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %write16.i15, align 4
  tail call void %53(ptr noundef %46, i16 noundef zeroext 1170, i16 noundef zeroext %47) #6
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 1365, i16 noundef zeroext 0) #6
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 1446, i16 noundef zeroext 5) #6
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 1442, i16 noundef zeroext 130) #6
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 1487, i16 noundef zeroext 3) #6
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 1445, i16 noundef zeroext 3) #6
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 1411, i16 noundef zeroext 0) #6
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 1412, i16 noundef zeroext 0) #6
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 1413, i16 noundef zeroext 4095) #6
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 1414, i16 noundef zeroext 0) #6
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 1408, i16 noundef zeroext 17665) #6
  %call10 = tail call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1754) #6
  %54 = or i16 %call10, 8200
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 1754, i16 noundef zeroext %54) #6
  %55 = ptrtoint ptr %d11core to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %d11core, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 8
  %ops.i17 = getelementptr inbounds %struct.bcma_bus, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %ops.i17 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ops.i17, align 4
  %read16.i18 = getelementptr inbounds %struct.bcma_host_ops, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %read16.i18 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %read16.i18, align 4
  %call.i19 = tail call zeroext i16 %62(ptr noundef %56, i16 noundef zeroext 1364) #6
  %63 = ptrtoint ptr %d11core to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %d11core, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 8
  %ops.i21 = getelementptr inbounds %struct.bcma_bus, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %ops.i21 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ops.i21, align 4
  %read16.i22 = getelementptr inbounds %struct.bcma_host_ops, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %read16.i22 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %read16.i22, align 4
  %call.i23 = tail call zeroext i16 %70(ptr noundef %64, i16 noundef zeroext 1366) #6
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %timer.0 = phi i16 [ 0, %entry ], [ %inc, %do.body.do.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %71 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %71(i32 noundef 2147480) #6
  %72 = ptrtoint ptr %d11core to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %d11core, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %73, align 8
  %ops.i25 = getelementptr inbounds %struct.bcma_bus, ptr %75, i32 0, i32 2
  %76 = ptrtoint ptr %ops.i25 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ops.i25, align 4
  %read16.i26 = getelementptr inbounds %struct.bcma_host_ops, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %read16.i26 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %read16.i26, align 4
  %call.i27 = tail call zeroext i16 %79(ptr noundef %73, i16 noundef zeroext 1366) #6
  call void @__sanitizer_cov_trace_cmp2(i16 %call.i27, i16 %call.i19)
  %cmp.not = icmp ne i16 %call.i27, %call.i19
  %inc = add nuw nsw i16 %timer.0, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 499, i16 %timer.0)
  %cmp22 = icmp ult i16 %timer.0, 499
  %or.cond = select i1 %cmp.not, i1 %cmp22, i1 false
  br i1 %or.cond, label %do.body.do.body_crit_edge, label %do.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.end:                                           ; preds = %do.body
  %80 = ptrtoint ptr %d11core to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %d11core, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %81, align 8
  %ops.i29 = getelementptr inbounds %struct.bcma_bus, ptr %83, i32 0, i32 2
  %84 = ptrtoint ptr %ops.i29 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ops.i29, align 4
  %write16.i30 = getelementptr inbounds %struct.bcma_host_ops, ptr %85, i32 0, i32 4
  %86 = ptrtoint ptr %write16.i30 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %write16.i30, align 4
  tail call void %87(ptr noundef %81, i16 noundef zeroext 1170, i16 noundef zeroext 2) #6
  %88 = ptrtoint ptr %d11core to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %d11core, align 4
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %89, align 8
  %ops.i31 = getelementptr inbounds %struct.bcma_bus, ptr %91, i32 0, i32 2
  %92 = ptrtoint ptr %ops.i31 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %ops.i31, align 4
  %write32.i = getelementptr inbounds %struct.bcma_host_ops, ptr %93, i32 0, i32 5
  %94 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %write32.i, align 4
  tail call void %95(ptr noundef %89, i16 noundef zeroext 304, i32 noundef 32256) #6
  %lcnphy_iqcal_swp_dis = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %1, i32 0, i32 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %clip_detect_algo)
  %tobool53.not = icmp eq i32 %clip_detect_algo, 0
  %conv56 = zext i16 %thresh to i32
  %sub61 = sub nsw i32 0, %conv56
  br label %while.body

while.body:                                       ; preds = %if.end67.while.body_crit_edge, %do.end
  %strptr.039 = phi i32 [ 32256, %do.end ], [ %add, %if.end67.while.body_crit_edge ]
  %96 = ptrtoint ptr %d11core to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %d11core, align 4
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %97, align 8
  %ops.i32 = getelementptr inbounds %struct.bcma_bus, ptr %99, i32 0, i32 2
  %100 = ptrtoint ptr %ops.i32 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %ops.i32, align 4
  %read32.i = getelementptr inbounds %struct.bcma_host_ops, ptr %101, i32 0, i32 2
  %102 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %read32.i, align 4
  %call.i33 = tail call i32 %103(ptr noundef %97, i16 noundef zeroext 308) #6
  %shr = lshr i32 %call.i33, 16
  %104 = trunc i32 %shr to i16
  %conv30 = and i16 %104, 1023
  call void @__sanitizer_cov_trace_const_cmp2(i16 511, i16 %conv30)
  %cmp34 = icmp ugt i16 %conv30, 511
  %masksel = select i1 %cmp34, i16 -1024, i16 0
  %imag.0 = or i16 %masksel, %conv30
  %105 = ptrtoint ptr %lcnphy_iqcal_swp_dis to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %lcnphy_iqcal_swp_dis, align 1, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool.not = icmp eq i8 %106, 0
  %107 = trunc i32 %call.i33 to i16
  %conv32 = and i16 %107, 1023
  call void @__sanitizer_cov_trace_const_cmp2(i16 511, i16 %conv32)
  %cmp39 = icmp ugt i16 %conv32, 511
  %masksel38 = select i1 %cmp39, i16 -1024, i16 0
  %real.0 = or i16 %masksel38, %conv32
  %imag.0.sink = select i1 %tobool.not, i16 %imag.0, i16 %real.0
  %sub49 = add nsw i32 %strptr.039, -32256
  %div501 = lshr exact i32 %sub49, 2
  %arrayidx51 = getelementptr i16, ptr %ptr, i32 %div501
  %108 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 %imag.0.sink, ptr %arrayidx51, align 2
  br i1 %tobool53.not, label %while.body.if.end67_crit_edge, label %if.then54

while.body.if.end67_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end67

if.then54:                                        ; preds = %while.body
  %conv55 = sext i16 %imag.0 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv55, i32 %conv56)
  %cmp57 = icmp sgt i32 %conv55, %conv56
  call void @__sanitizer_cov_trace_cmp4(i32 %conv55, i32 %sub61)
  %cmp62 = icmp slt i32 %conv55, %sub61
  %or.cond3 = select i1 %cmp57, i1 true, i1 %cmp62
  br i1 %or.cond3, label %if.end67.thread, label %if.then54.if.end67_crit_edge

if.then54.if.end67_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end67

if.end67.thread:                                  ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #8
  %109 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 1, ptr %arrayidx, align 2
  br label %while.end

if.end67:                                         ; preds = %if.then54.if.end67_crit_edge, %while.body.if.end67_crit_edge
  %add = add nuw nsw i32 %strptr.039, 4
  %cmp26 = icmp ult i32 %strptr.039, 32764
  br i1 %cmp26, label %if.end67.while.body_crit_edge, label %if.end67.while.end_crit_edge

if.end67.while.end_crit_edge:                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end67.while.body_crit_edge:                    ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.end:                                        ; preds = %if.end67.while.end_crit_edge, %if.end67.thread
  tail call void @write_phy_reg(ptr noundef %pi, i16 noundef zeroext 1754, i16 noundef zeroext %call) #6
  %110 = ptrtoint ptr %d11core to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %d11core, align 4
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %111, align 8
  %ops.i34 = getelementptr inbounds %struct.bcma_bus, ptr %113, i32 0, i32 2
  %114 = ptrtoint ptr %ops.i34 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %ops.i34, align 4
  %write16.i35 = getelementptr inbounds %struct.bcma_host_ops, ptr %115, i32 0, i32 4
  %116 = ptrtoint ptr %write16.i35 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %write16.i35, align 4
  tail call void %117(ptr noundef %111, i16 noundef zeroext 1170, i16 noundef zeroext %call.i12) #6
  %118 = ptrtoint ptr %d11core to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %d11core, align 4
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %119, align 8
  %ops.i36 = getelementptr inbounds %struct.bcma_bus, ptr %121, i32 0, i32 2
  %122 = ptrtoint ptr %ops.i36 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %ops.i36, align 4
  %write16.i37 = getelementptr inbounds %struct.bcma_host_ops, ptr %123, i32 0, i32 4
  %124 = ptrtoint ptr %write16.i37 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %write16.i37, align 4
  tail call void %125(ptr noundef %119, i16 noundef zeroext 1264, i16 noundef zeroext %call.i) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @wlc_lcnphy_rx_iq_est(ptr noundef %pi, i16 noundef zeroext %num_samps, ptr nocapture noundef writeonly %iq_est) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1754, i16 noundef zeroext 32, i16 noundef zeroext 32) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1040, i16 noundef zeroext 8, i16 noundef zeroext 0) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1154, i16 noundef zeroext -1, i16 noundef zeroext %num_samps) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1153, i16 noundef zeroext 255, i16 noundef zeroext 32) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1153, i16 noundef zeroext 256, i16 noundef zeroext 0) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1153, i16 noundef zeroext 512, i16 noundef zeroext 512) #6
  %call3 = tail call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1153) #6
  %0 = and i16 %call3, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %0)
  %tobool.not4 = icmp eq i16 %0, 0
  br i1 %tobool.not4, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %wait_count.05 = phi i32 [ %inc, %if.end.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 5001, i32 %wait_count.05)
  %exitcond = icmp eq i32 %wait_count.05, 5001
  br i1 %exitcond, label %while.body.cleanup_crit_edge, label %if.end

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 21474800) #6
  %inc = add nuw nsw i32 %wait_count.05, 1
  %call = tail call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1153) #6
  %2 = and i16 %call, 512
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  %call8 = tail call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1155) #6
  %conv9 = zext i16 %call8 to i32
  %shl10 = shl nuw i32 %conv9, 16
  %call11 = tail call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1156) #6
  %conv12 = zext i16 %call11 to i32
  %or = or i32 %shl10, %conv12
  %3 = ptrtoint ptr %iq_est to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or, ptr %iq_est, align 4
  %call13 = tail call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1157) #6
  %conv14 = zext i16 %call13 to i32
  %shl15 = shl nuw i32 %conv14, 16
  %call16 = tail call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1158) #6
  %conv17 = zext i16 %call16 to i32
  %or18 = or i32 %shl15, %conv17
  %i_pwr = getelementptr inbounds %struct.lcnphy_iq_est, ptr %iq_est, i32 0, i32 1
  %4 = ptrtoint ptr %i_pwr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or18, ptr %i_pwr, align 4
  %call19 = tail call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1159) #6
  %conv20 = zext i16 %call19 to i32
  %shl21 = shl nuw i32 %conv20, 16
  %call22 = tail call zeroext i16 @read_phy_reg(ptr noundef %pi, i16 noundef zeroext 1160) #6
  %conv23 = zext i16 %call22 to i32
  %or24 = or i32 %shl21, %conv23
  %q_pwr = getelementptr inbounds %struct.lcnphy_iq_est, ptr %iq_est, i32 0, i32 2
  %5 = ptrtoint ptr %q_pwr to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or24, ptr %q_pwr, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %while.body.cleanup_crit_edge
  %tobool.not2 = phi i1 [ true, %while.end ], [ false, %while.body.cleanup_crit_edge ]
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1040, i16 noundef zeroext 8, i16 noundef zeroext 8) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1754, i16 noundef zeroext 32, i16 noundef zeroext 0) #6
  ret i1 %tobool.not2
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @wlc_phy_nbits(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @int_sqrt(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qm_log10(i32 noundef, i16 noundef signext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local signext i16 @qm_shr16(i16 noundef signext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local signext i16 @qm_sub16(i16 noundef signext, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcma_chipco_pll_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcma_chipco_pll_maskset(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wlc_phy_ant_rxdiv_set(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wlc_lcnphy_set_rx_gain(ptr noundef %pi, i32 noundef %gain) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %and = lshr i32 %gain, 28
  %0 = trunc i32 %and to i16
  %1 = and i16 %0, 1
  %2 = xor i16 %1, 1
  %shr = lshr i32 %gain, 29
  %3 = lshr i32 %gain, 4
  %conv19 = and i32 %gain, 3840
  %shr25 = lshr i32 %gain, 16
  %4 = trunc i32 %shr25 to i16
  %conv29 = and i16 %4, 15
  %and31 = and i32 %gain, 3
  %or = mul nuw nsw i32 %and31, 5
  %and35 = and i32 %3, 3
  %shl36 = shl nuw nsw i32 %and35, 4
  %or37 = or i32 %or, %shl36
  %shl40 = shl nuw nsw i32 %and35, 6
  %or41 = or i32 %or37, %shl40
  %or45 = or i32 %or41, %conv19
  %conv46 = and i32 %gain, 61440
  %or49 = or i32 %or45, %conv46
  %conv50 = trunc i32 %or49 to i16
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1101, i16 noundef zeroext 1, i16 noundef zeroext %2) #6
  %5 = trunc i32 %shr to i16
  %conv4.tr = and i16 %5, 1
  %conv56 = shl nuw nsw i16 %conv4.tr, 9
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1201, i16 noundef zeroext 512, i16 noundef zeroext %conv56) #6
  %conv59 = shl nuw nsw i16 %conv4.tr, 10
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1201, i16 noundef zeroext 1024, i16 noundef zeroext %conv59) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1206, i16 noundef zeroext -1, i16 noundef zeroext %conv50) #6
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1207, i16 noundef zeroext 15, i16 noundef zeroext %conv29) #6
  %radio_chanspec = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 12
  %6 = ptrtoint ptr %radio_chanspec to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %radio_chanspec, align 4
  %8 = and i16 %7, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %8)
  %cmp = icmp eq i16 %8, 8192
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %9 = trunc i32 %gain to i16
  %conv9.tr = and i16 %9, 15
  %conv71 = shl nuw nsw i16 %conv9.tr, 11
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1201, i16 noundef zeroext 6144, i16 noundef zeroext %conv71) #6
  %conv74 = shl nuw nsw i16 %conv9.tr, 3
  tail call void @mod_phy_reg(ptr noundef %pi, i16 noundef zeroext 1254, i16 noundef zeroext 24, i16 noundef zeroext %conv74) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call fastcc void @wlc_lcnphy_rx_gain_override_enable(ptr noundef %pi, i1 noundef zeroext true)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.abs.i16(i16, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.abs.i8(i8, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = distinct !{null, !1, !"tempsense_phy_regs", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/phy_lcn.c", i32 328, i32 5}
!2 = !{ptr @iqlo_loopback_rf_regs, !3, !"iqlo_loopback_rf_regs", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/phy_lcn.c", i32 304, i32 5}
!4 = distinct !{null, !5, !"iqcal_gainparams_numgains_lcnphy", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/phy_lcn.c", i32 198, i32 18}
!6 = distinct !{null, !7, !"tbl_iqcal_gainparams_lcnphy", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/phy_lcn.c", i32 194, i32 40}
!8 = !{ptr @tbl_iqcal_gainparams_lcnphy_2G, !9, !"tbl_iqcal_gainparams_lcnphy_2G", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/phy_lcn.c", i32 190, i32 39}
!10 = !{ptr @lcnphy_iqcal_loft_gainladder, !11, !"lcnphy_iqcal_loft_gainladder", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/phy_lcn.c", i32 220, i32 5}
!12 = !{ptr @lcnphy_iqcal_ir_gainladder, !13, !"lcnphy_iqcal_ir_gainladder", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/phy_lcn.c", i32 244, i32 5}
!14 = !{ptr @lcnphy_spb_tone_3750, !15, !"lcnphy_spb_tone_3750", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/phy_lcn.c", i32 268, i32 24}
!16 = distinct !{null, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/phy_lcn.c", i32 1341, i32 2}
!18 = distinct !{null, !19, !"rxiq_cal_rf_reg", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/phy_lcn.c", i32 346, i32 5}
!20 = !{ptr @lcnphy_radio_regs_2064, !21, !"lcnphy_radio_regs_2064", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/phy_lcn.c", i32 511, i32 39}
!22 = !{ptr @wlc_lcnphy_radio_2064_channel_tune_4313.reg038, !23, !"reg038", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/phy_lcn.c", i32 1760, i32 19}
!24 = !{ptr @chan_info_2064_lcnphy, !25, !"chan_info_2064_lcnphy", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/phy_lcn.c", i32 494, i32 43}
!26 = !{ptr @lcnphy_sfo_cfg, !27, !"lcnphy_sfo_cfg", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/phy_lcn.c", i32 202, i32 36}
!28 = !{ptr @LCNPHY_txdigfiltcoeffs_cck, !29, !"LCNPHY_txdigfiltcoeffs_cck", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/phy_lcn.c", i32 823, i32 18}
!30 = !{ptr @LCNPHY_txdigfiltcoeffs_ofdm, !31, !"LCNPHY_txdigfiltcoeffs_ofdm", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/phy_lcn.c", i32 854, i32 18}
!32 = !{ptr @lcnphy_23bitgaincode_table, !33, !"lcnphy_23bitgaincode_table", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/phy_lcn.c", i32 360, i32 18}
!34 = !{ptr @lcnphy_gain_table, !35, !"lcnphy_gain_table", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/phy_lcn.c", i32 400, i32 17}
!36 = !{ptr @lcnphy_gain_index_offset_for_rssi, !37, !"lcnphy_gain_index_offset_for_rssi", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/phy_lcn.c", i32 440, i32 17}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!47 = !{i8 0, i8 2}
!48 = !{!"auto-init"}
!49 = !{i32 4, i32 33}
