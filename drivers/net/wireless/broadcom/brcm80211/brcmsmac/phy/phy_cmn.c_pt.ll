; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/phy_cmn.c_pt.bc'
source_filename = "../drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/phy_cmn.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.chan_info_basic = type { i16, i16 }
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
%struct.shared_phy = type { ptr, i32, ptr, i32, i32, i8, i8, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, [8 x i8], i32, i8, i8, i8, i8, i8, i8 }
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
%struct.shared_phy_params = type { ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.phytbl_info = type { ptr, i32, i32, i32, i32 }
%struct.radio_20xx_regs = type { i16, i8, i8 }
%struct.radio_regs = type { i16, i32, i32, i8, i8 }
%struct.txpwr_limits = type { [4 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], i8 }
%struct.tx_power = type { i32, i16, i16, i8, i8, [2 x i8], i8, [4 x i8], [4 x i8], i8, [4 x i8], [4 x i8], [101 x i8], [101 x i8], [101 x i8], [101 x i8] }
%struct.phy_iq_est = type { i32, i32, i32 }
%struct.d11rxhdr = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.brcms_phy_lcnphy = type { i32, i8, i8, i16, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32, i8, i16, i16, i16, i16, i8, i16, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i8, i16, i16, i8, i8, [101 x i8], i8, i8, i8, i8, i8, i8, i8, i32, i8, i16, i16, i16, i16, i16, %struct.lcnphy_cal_results, i8, i8, i32, i8, i8, i8, i16, i16, i16, i16, i16, i8, i32, [101 x i8] }
%struct.lcnphy_cal_results = type { i16, i16, i16, i8, i8, i8, i8, [11 x i16], i16, [64 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16 }

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"phycal\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/phy_cmn.c\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"HW error MAC running on init\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"HW error SISF_FCLKA\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"HW error: MAC enabled during phy cal\0A\00", [58 x i8] zeroinitializer }, align 32
@__const.wlc_phy_do_dummy_tx.ofdmpkt = private unnamed_addr constant [20 x i8] c"\CC\01\02\00\00\00\D4\00\00\00\00\00\00\00\00\01\00\00\00\00", align 1
@__const.wlc_phy_do_dummy_tx.cckpkt = private unnamed_addr constant [20 x i8] c"n\84\0B\00\00\00\D4\00\00\00\00\00\00\00\00\01\00\00\00\00", align 1
@chan_info_all = internal constant { [51 x %struct.chan_info_basic], [52 x i8] } { [51 x %struct.chan_info_basic] [%struct.chan_info_basic { i16 1, i16 2412 }, %struct.chan_info_basic { i16 2, i16 2417 }, %struct.chan_info_basic { i16 3, i16 2422 }, %struct.chan_info_basic { i16 4, i16 2427 }, %struct.chan_info_basic { i16 5, i16 2432 }, %struct.chan_info_basic { i16 6, i16 2437 }, %struct.chan_info_basic { i16 7, i16 2442 }, %struct.chan_info_basic { i16 8, i16 2447 }, %struct.chan_info_basic { i16 9, i16 2452 }, %struct.chan_info_basic { i16 10, i16 2457 }, %struct.chan_info_basic { i16 11, i16 2462 }, %struct.chan_info_basic { i16 12, i16 2467 }, %struct.chan_info_basic { i16 13, i16 2472 }, %struct.chan_info_basic { i16 14, i16 2484 }, %struct.chan_info_basic { i16 34, i16 5170 }, %struct.chan_info_basic { i16 38, i16 5190 }, %struct.chan_info_basic { i16 42, i16 5210 }, %struct.chan_info_basic { i16 46, i16 5230 }, %struct.chan_info_basic { i16 36, i16 5180 }, %struct.chan_info_basic { i16 40, i16 5200 }, %struct.chan_info_basic { i16 44, i16 5220 }, %struct.chan_info_basic { i16 48, i16 5240 }, %struct.chan_info_basic { i16 52, i16 5260 }, %struct.chan_info_basic { i16 56, i16 5280 }, %struct.chan_info_basic { i16 60, i16 5300 }, %struct.chan_info_basic { i16 64, i16 5320 }, %struct.chan_info_basic { i16 100, i16 5500 }, %struct.chan_info_basic { i16 104, i16 5520 }, %struct.chan_info_basic { i16 108, i16 5540 }, %struct.chan_info_basic { i16 112, i16 5560 }, %struct.chan_info_basic { i16 116, i16 5580 }, %struct.chan_info_basic { i16 120, i16 5600 }, %struct.chan_info_basic { i16 124, i16 5620 }, %struct.chan_info_basic { i16 128, i16 5640 }, %struct.chan_info_basic { i16 132, i16 5660 }, %struct.chan_info_basic { i16 136, i16 5680 }, %struct.chan_info_basic { i16 140, i16 5700 }, %struct.chan_info_basic { i16 149, i16 5745 }, %struct.chan_info_basic { i16 153, i16 5765 }, %struct.chan_info_basic { i16 157, i16 5785 }, %struct.chan_info_basic { i16 161, i16 5805 }, %struct.chan_info_basic { i16 165, i16 5825 }, %struct.chan_info_basic { i16 184, i16 4920 }, %struct.chan_info_basic { i16 188, i16 4940 }, %struct.chan_info_basic { i16 192, i16 4960 }, %struct.chan_info_basic { i16 196, i16 4980 }, %struct.chan_info_basic { i16 200, i16 5000 }, %struct.chan_info_basic { i16 204, i16 5020 }, %struct.chan_info_basic { i16 208, i16 5040 }, %struct.chan_info_basic { i16 212, i16 5060 }, %struct.chan_info_basic { i16 216, i16 5080 }], [52 x i8] zeroinitializer }, align 32
@wlc_phy_txpower_update_shm.ucode_ofdm_rates = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\0C\12\18$0H`l", [24 x i8] zeroinitializer }, align 32
@lcnphy_gain_index_offset_for_pkt_rssi = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\08\08\08\08\08\08\08\09\0A\08\08\07\07\01\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\01\01\00\00\00\00", [58 x i8] zeroinitializer }, align 32
@ofdm_rate_lookup = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"`0\18\0ClH$\12", [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 8]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 8]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 8]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 8]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 8]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 8]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 8]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 8]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 8]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 8]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 32]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 32]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 8]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 10, i64 512, i64 768]
@__sancov_gen_cov_switch_values.18 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.19 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 8]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 8]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 8]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 8]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@__sancov_gen_cov_switch_values.27 = internal global [7 x i64] [i64 5, i64 8, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 550, i32 15 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 748, i32 6 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 754, i32 6 }
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 793, i32 6 }
@___asan_gen_.44 = private unnamed_addr constant [14 x i8] c"chan_info_all\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 45, i32 37 }
@___asan_gen_.47 = private unnamed_addr constant [17 x i8] c"ucode_ofdm_rates\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 1906, i32 20 }
@___asan_gen_.50 = private unnamed_addr constant [38 x i8] c"lcnphy_gain_index_offset_for_pkt_rssi\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 2460, i32 17 }
@___asan_gen_.53 = private unnamed_addr constant [17 x i8] c"ofdm_rate_lookup\00", align 1
@___asan_gen_.54 = private constant [66 x i8] c"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/phy_cmn.c\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 104, i32 17 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @chan_info_all, ptr @wlc_phy_txpower_update_shm.ucode_ofdm_rates, ptr @lcnphy_gain_index_offset_for_pkt_rssi, ptr @ofdm_rate_lookup], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chan_info_all to i32), i32 204, i32 256, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wlc_phy_txpower_update_shm.ucode_ofdm_rates to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcnphy_gain_index_offset_for_pkt_rssi to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ofdm_rate_lookup to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wlc_phyreg_enter(ptr nocapture noundef readonly %pih) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %sh = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 1
  %0 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sh, align 4
  %physhim = getelementptr inbounds %struct.shared_phy, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %physhim to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %physhim, align 4
  tail call void @wlapi_bmac_ucode_wake_override_phyreg_set(ptr noundef %3) #15
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wlapi_bmac_ucode_wake_override_phyreg_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wlc_phyreg_exit(ptr nocapture noundef readonly %pih) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %sh = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 1
  %0 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sh, align 4
  %physhim = getelementptr inbounds %struct.shared_phy, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %physhim to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %physhim, align 4
  tail call void @wlapi_bmac_ucode_wake_override_phyreg_clear(ptr noundef %3) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wlapi_bmac_ucode_wake_override_phyreg_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wlc_radioreg_enter(ptr nocapture noundef readonly %pih) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %sh = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 1
  %0 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sh, align 4
  %physhim = getelementptr inbounds %struct.shared_phy, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %physhim to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %physhim, align 4
  tail call void @wlapi_bmac_mctrl(ptr noundef %3, i32 noundef 524288, i32 noundef 524288) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 2147480) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wlapi_bmac_mctrl(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wlc_radioreg_exit(ptr nocapture noundef %pih) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %d11core = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 5
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
  %read16.i = getelementptr inbounds %struct.bcma_host_ops, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %read16.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read16.i, align 4
  %call.i = tail call zeroext i16 %7(ptr noundef %1, i16 noundef zeroext 992) #15
  %phy_wreg = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 53
  %8 = ptrtoint ptr %phy_wreg to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %phy_wreg, align 4
  %sh = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 1
  %9 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sh, align 4
  %physhim = getelementptr inbounds %struct.shared_phy, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %physhim to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %physhim, align 4
  tail call void @wlapi_bmac_mctrl(ptr noundef %12, i32 noundef 524288, i32 noundef 0) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @read_radio_reg(ptr nocapture noundef %pi, i16 noundef zeroext %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %addr)
  %cmp = icmp eq i16 %addr, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %pubpi = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 7
  %0 = ptrtoint ptr %pubpi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pubpi, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %if.end.sw.epilog_crit_edge [
    i32 4, label %sw.bb
    i32 8, label %sw.bb12
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %phy_rev = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 7, i32 1
  %3 = ptrtoint ptr %phy_rev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %phy_rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %4)
  %cmp3 = icmp ugt i32 %4, 6
  br i1 %cmp3, label %if.then5, label %if.else

if.then5:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  %5 = or i16 %addr, 512
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  %or9 = or i16 %addr, 256
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %or14 = or i16 %addr, 512
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb12, %if.else, %if.then5, %if.end.sw.epilog_crit_edge
  %addr.addr.0 = phi i16 [ %addr, %if.end.sw.epilog_crit_edge ], [ %or14, %sw.bb12 ], [ %5, %if.then5 ], [ %or9, %if.else ]
  %sh = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 1
  %6 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sh, align 4
  %corerev = getelementptr inbounds %struct.shared_phy, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %corerev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %corerev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %9)
  %cmp16 = icmp ugt i32 %9, 23
  br i1 %cmp16, label %sw.epilog.if.then26_crit_edge, label %lor.lhs.false

sw.epilog.if.then26_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then26

lor.lhs.false:                                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %9)
  %cmp20 = icmp ne i32 %9, 22
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %1)
  %cmp24.not = icmp eq i32 %1, 6
  %or.cond = select i1 %cmp20, i1 true, i1 %cmp24.not
  br i1 %or.cond, label %if.else30, label %lor.lhs.false.if.then26_crit_edge

lor.lhs.false.if.then26_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then26

if.then26:                                        ; preds = %lor.lhs.false.if.then26_crit_edge, %sw.epilog.if.then26_crit_edge
  %d11core = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 5
  %10 = ptrtoint ptr %d11core to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %d11core, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %ops.i = getelementptr inbounds %struct.bcma_bus, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i, align 4
  %write16.i = getelementptr inbounds %struct.bcma_host_ops, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %write16.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write16.i, align 4
  tail call void %17(ptr noundef %11, i16 noundef zeroext 984, i16 noundef zeroext %addr.addr.0) #15
  %18 = ptrtoint ptr %d11core to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %d11core, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 8
  %ops.i51 = getelementptr inbounds %struct.bcma_bus, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %ops.i51 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops.i51, align 4
  %read16.i = getelementptr inbounds %struct.bcma_host_ops, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %read16.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read16.i, align 4
  %call.i = tail call zeroext i16 %25(ptr noundef %19, i16 noundef zeroext 986) #15
  br label %if.end36

if.else30:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  %d11core31 = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 5
  %26 = ptrtoint ptr %d11core31 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %d11core31, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 8
  %ops.i52 = getelementptr inbounds %struct.bcma_bus, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %ops.i52 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ops.i52, align 4
  %write16.i53 = getelementptr inbounds %struct.bcma_host_ops, ptr %31, i32 0, i32 4
  %32 = ptrtoint ptr %write16.i53 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write16.i53, align 4
  tail call void %33(ptr noundef %27, i16 noundef zeroext 1014, i16 noundef zeroext %addr.addr.0) #15
  %34 = ptrtoint ptr %d11core31 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %d11core31, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 8
  %ops.i54 = getelementptr inbounds %struct.bcma_bus, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %ops.i54 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ops.i54, align 4
  %read16.i55 = getelementptr inbounds %struct.bcma_host_ops, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %read16.i55 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %read16.i55, align 4
  %call.i56 = tail call zeroext i16 %41(ptr noundef %35, i16 noundef zeroext 1018) #15
  br label %if.end36

if.end36:                                         ; preds = %if.else30, %if.then26
  %data.0.in.in = phi i16 [ %call.i, %if.then26 ], [ %call.i56, %if.else30 ]
  %phy_wreg = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 53
  %42 = ptrtoint ptr %phy_wreg to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 0, ptr %phy_wreg, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %entry.cleanup_crit_edge
  %retval.0 = phi i16 [ %data.0.in.in, %if.end36 ], [ -1, %entry.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @write_radio_reg(ptr nocapture noundef %pi, i16 noundef zeroext %addr, i16 noundef zeroext %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %sh = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 1
  %0 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sh, align 4
  %corerev = getelementptr inbounds %struct.shared_phy, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %corerev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %corerev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %3)
  %cmp = icmp ugt i32 %3, 23
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %3)
  %cmp3 = icmp eq i32 %3, 22
  br i1 %cmp3, label %land.lhs.true, label %lor.lhs.false.if.else_crit_edge

lor.lhs.false.if.else_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false
  %pubpi = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 7
  %4 = ptrtoint ptr %pubpi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pubpi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %5)
  %cmp4.not = icmp eq i32 %5, 6
  br i1 %cmp4.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.if.then_crit_edge

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

if.then:                                          ; preds = %land.lhs.true.if.then_crit_edge, %entry.if.then_crit_edge
  %d11core = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 5
  %6 = ptrtoint ptr %d11core to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d11core, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %ops.i = getelementptr inbounds %struct.bcma_bus, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i, align 4
  %write16.i = getelementptr inbounds %struct.bcma_host_ops, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %write16.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write16.i, align 4
  tail call void %13(ptr noundef %7, i16 noundef zeroext 984, i16 noundef zeroext %addr) #15
  %14 = ptrtoint ptr %d11core to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %d11core, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 8
  %ops.i36 = getelementptr inbounds %struct.bcma_bus, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %ops.i36 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops.i36, align 4
  %write16.i37 = getelementptr inbounds %struct.bcma_host_ops, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %write16.i37 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write16.i37, align 4
  tail call void %21(ptr noundef %15, i16 noundef zeroext 986, i16 noundef zeroext %val) #15
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %lor.lhs.false.if.else_crit_edge
  %d11core7 = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 5
  %22 = ptrtoint ptr %d11core7 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %d11core7, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 8
  %ops.i38 = getelementptr inbounds %struct.bcma_bus, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %ops.i38 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops.i38, align 4
  %write16.i39 = getelementptr inbounds %struct.bcma_host_ops, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %write16.i39 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write16.i39, align 4
  tail call void %29(ptr noundef %23, i16 noundef zeroext 1014, i16 noundef zeroext %addr) #15
  %30 = ptrtoint ptr %d11core7 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %d11core7, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 8
  %ops.i40 = getelementptr inbounds %struct.bcma_bus, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %ops.i40 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ops.i40, align 4
  %write16.i41 = getelementptr inbounds %struct.bcma_host_ops, ptr %35, i32 0, i32 4
  %36 = ptrtoint ptr %write16.i41 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %write16.i41, align 4
  tail call void %37(ptr noundef %31, i16 noundef zeroext 1018, i16 noundef zeroext %val) #15
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %d11core11 = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 5
  %38 = ptrtoint ptr %d11core11 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %d11core11, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 8
  %hosttype = getelementptr inbounds %struct.bcma_bus, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %hosttype to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %hosttype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp12 = icmp eq i32 %43, 0
  br i1 %cmp12, label %land.lhs.true14, label %if.end.if.end22_crit_edge

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end22

land.lhs.true14:                                  ; preds = %if.end
  %phy_wreg = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 53
  %44 = ptrtoint ptr %phy_wreg to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %phy_wreg, align 4
  %inc = add i16 %45, 1
  store i16 %inc, ptr %phy_wreg, align 4
  %phy_wreg_limit = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 54
  %46 = ptrtoint ptr %phy_wreg_limit to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %phy_wreg_limit, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc, i16 %47)
  %cmp17.not = icmp ult i16 %inc, %47
  br i1 %cmp17.not, label %land.lhs.true14.if.end22_crit_edge, label %if.then19

land.lhs.true14.if.end22_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end22

if.then19:                                        ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #17
  %48 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %39, align 8
  %ops.i42 = getelementptr inbounds %struct.bcma_bus, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %ops.i42 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ops.i42, align 4
  %read32.i = getelementptr inbounds %struct.bcma_host_ops, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %read32.i, align 4
  %call.i = tail call i32 %53(ptr noundef %39, i16 noundef zeroext 288) #15
  %54 = ptrtoint ptr %phy_wreg to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 0, ptr %phy_wreg, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %land.lhs.true14.if.end22_crit_edge, %if.end.if.end22_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @and_radio_reg(ptr nocapture noundef %pi, i16 noundef zeroext %addr, i16 noundef zeroext %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i16 @read_radio_reg(ptr noundef %pi, i16 noundef zeroext %addr)
  %and5 = and i16 %call, %val
  tail call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext %addr, i16 noundef zeroext %and5)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @or_radio_reg(ptr nocapture noundef %pi, i16 noundef zeroext %addr, i16 noundef zeroext %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i16 @read_radio_reg(ptr noundef %pi, i16 noundef zeroext %addr)
  %or5 = or i16 %call, %val
  tail call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext %addr, i16 noundef zeroext %or5)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xor_radio_reg(ptr nocapture noundef %pi, i16 noundef zeroext %addr, i16 noundef zeroext %mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i16 @read_radio_reg(ptr noundef %pi, i16 noundef zeroext %addr)
  %xor5 = xor i16 %call, %mask
  tail call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext %addr, i16 noundef zeroext %xor5)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mod_radio_reg(ptr nocapture noundef %pi, i16 noundef zeroext %addr, i16 noundef zeroext %mask, i16 noundef zeroext %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i16 @read_radio_reg(ptr noundef %pi, i16 noundef zeroext %addr)
  %neg = xor i16 %mask, -1
  %and = and i16 %call, %neg
  %and49 = and i16 %val, %mask
  %or = or i16 %and, %and49
  tail call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext %addr, i16 noundef zeroext %or)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @write_phy_channel_reg(ptr nocapture noundef readonly %pi, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
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
  %write16.i = getelementptr inbounds %struct.bcma_host_ops, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %write16.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write16.i, align 4
  %conv.i = trunc i32 %val to i16
  tail call void %7(ptr noundef %1, i16 noundef zeroext 1008, i16 noundef zeroext %conv.i) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @read_phy_reg(ptr nocapture noundef %pi, i16 noundef zeroext %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
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
  %write16.i = getelementptr inbounds %struct.bcma_host_ops, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %write16.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write16.i, align 4
  tail call void %7(ptr noundef %1, i16 noundef zeroext 1020, i16 noundef zeroext %addr) #15
  %phy_wreg = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 53
  %8 = ptrtoint ptr %phy_wreg to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %phy_wreg, align 4
  %9 = ptrtoint ptr %d11core to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %d11core, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  %ops.i5 = getelementptr inbounds %struct.bcma_bus, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %ops.i5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops.i5, align 4
  %read16.i = getelementptr inbounds %struct.bcma_host_ops, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %read16.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %read16.i, align 4
  %call.i = tail call zeroext i16 %16(ptr noundef %10, i16 noundef zeroext 1022) #15
  ret i16 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @write_phy_reg(ptr nocapture noundef %pi, i16 noundef zeroext %addr, i16 noundef zeroext %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %d11core = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 5
  %0 = ptrtoint ptr %d11core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d11core, align 4
  %conv = zext i16 %addr to i32
  %conv1 = zext i16 %val to i32
  %shl = shl nuw i32 %conv1, 16
  %or = or i32 %shl, %conv
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %ops.i = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  %write32.i = getelementptr inbounds %struct.bcma_host_ops, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write32.i, align 4
  tail call void %7(ptr noundef %1, i16 noundef zeroext 1020, i32 noundef %or) #15
  %8 = ptrtoint ptr %d11core to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d11core, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %hosttype = getelementptr inbounds %struct.bcma_bus, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %hosttype to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hosttype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp = icmp eq i32 %13, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %phy_wreg = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 53
  %14 = ptrtoint ptr %phy_wreg to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %phy_wreg, align 4
  %inc = add i16 %15, 1
  store i16 %inc, ptr %phy_wreg, align 4
  %phy_wreg_limit = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 54
  %16 = ptrtoint ptr %phy_wreg_limit to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %phy_wreg_limit, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc, i16 %17)
  %cmp6.not = icmp ult i16 %inc, %17
  br i1 %cmp6.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %18 = ptrtoint ptr %phy_wreg to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %phy_wreg, align 4
  %19 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %9, align 8
  %ops.i15 = getelementptr inbounds %struct.bcma_bus, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %ops.i15 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ops.i15, align 4
  %read16.i = getelementptr inbounds %struct.bcma_host_ops, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %read16.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %read16.i, align 4
  %call.i = tail call zeroext i16 %24(ptr noundef %9, i16 noundef zeroext 992) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @and_phy_reg(ptr nocapture noundef %pi, i16 noundef zeroext %addr, i16 noundef zeroext %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
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
  %write16.i = getelementptr inbounds %struct.bcma_host_ops, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %write16.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write16.i, align 4
  tail call void %7(ptr noundef %1, i16 noundef zeroext 1020, i16 noundef zeroext %addr) #15
  %8 = ptrtoint ptr %d11core to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d11core, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %ops.i.i = getelementptr inbounds %struct.bcma_bus, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i.i, align 4
  %read16.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %read16.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read16.i.i, align 4
  %call.i.i = tail call zeroext i16 %15(ptr noundef %9, i16 noundef zeroext 1022) #15
  %and3.i = and i16 %call.i.i, %val
  %16 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %9, align 8
  %ops.i1.i = getelementptr inbounds %struct.bcma_bus, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %ops.i1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops.i1.i, align 4
  %write16.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %write16.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write16.i.i, align 4
  tail call void %21(ptr noundef %9, i16 noundef zeroext 1022, i16 noundef zeroext %and3.i) #15
  %phy_wreg = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 53
  %22 = ptrtoint ptr %phy_wreg to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %phy_wreg, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @or_phy_reg(ptr nocapture noundef %pi, i16 noundef zeroext %addr, i16 noundef zeroext %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
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
  %write16.i = getelementptr inbounds %struct.bcma_host_ops, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %write16.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write16.i, align 4
  tail call void %7(ptr noundef %1, i16 noundef zeroext 1020, i16 noundef zeroext %addr) #15
  %8 = ptrtoint ptr %d11core to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d11core, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %ops.i.i = getelementptr inbounds %struct.bcma_bus, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i.i, align 4
  %read16.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %read16.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read16.i.i, align 4
  %call.i.i = tail call zeroext i16 %15(ptr noundef %9, i16 noundef zeroext 1022) #15
  %or3.i = or i16 %call.i.i, %val
  %16 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %9, align 8
  %ops.i1.i = getelementptr inbounds %struct.bcma_bus, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %ops.i1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops.i1.i, align 4
  %write16.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %write16.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write16.i.i, align 4
  tail call void %21(ptr noundef %9, i16 noundef zeroext 1022, i16 noundef zeroext %or3.i) #15
  %phy_wreg = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 53
  %22 = ptrtoint ptr %phy_wreg to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %phy_wreg, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mod_phy_reg(ptr nocapture noundef %pi, i16 noundef zeroext %addr, i16 noundef zeroext %mask, i16 noundef zeroext %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %and11 = and i16 %val, %mask
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
  %write16.i = getelementptr inbounds %struct.bcma_host_ops, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %write16.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write16.i, align 4
  tail call void %7(ptr noundef %1, i16 noundef zeroext 1020, i16 noundef zeroext %addr) #15
  %8 = ptrtoint ptr %d11core to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d11core, align 4
  %neg = xor i16 %mask, -1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %ops.i.i = getelementptr inbounds %struct.bcma_bus, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i.i, align 4
  %read16.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %read16.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read16.i.i, align 4
  %call.i.i = tail call zeroext i16 %15(ptr noundef %9, i16 noundef zeroext 1022) #15
  %and3.i = and i16 %call.i.i, %neg
  %or4.i = or i16 %and3.i, %and11
  %16 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %9, align 8
  %ops.i1.i = getelementptr inbounds %struct.bcma_bus, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %ops.i1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops.i1.i, align 4
  %write16.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %write16.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write16.i.i, align 4
  tail call void %21(ptr noundef %9, i16 noundef zeroext 1022, i16 noundef zeroext %or4.i) #15
  %phy_wreg = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 53
  %22 = ptrtoint ptr %phy_wreg to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %phy_wreg, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local noalias ptr @wlc_phy_shared_attach(ptr nocapture noundef readonly %shp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 100) #18
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %physhim = getelementptr inbounds %struct.shared_phy_params, ptr %shp, i32 0, i32 1
  %1 = ptrtoint ptr %physhim to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %physhim, align 4
  %physhim1 = getelementptr inbounds %struct.shared_phy, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %physhim1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %physhim1, align 8
  %unit = getelementptr inbounds %struct.shared_phy_params, ptr %shp, i32 0, i32 2
  %4 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %unit, align 4
  %unit2 = getelementptr inbounds %struct.shared_phy, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %unit2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %unit2, align 4
  %corerev = getelementptr inbounds %struct.shared_phy_params, ptr %shp, i32 0, i32 3
  %7 = ptrtoint ptr %corerev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %corerev, align 4
  %corerev3 = getelementptr inbounds %struct.shared_phy, ptr %call7.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %corerev3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %corerev3, align 4
  %vid = getelementptr inbounds %struct.shared_phy_params, ptr %shp, i32 0, i32 4
  %10 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %vid, align 4
  %vid4 = getelementptr inbounds %struct.shared_phy, ptr %call7.i.i, i32 0, i32 8
  %12 = ptrtoint ptr %vid4 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %vid4, align 4
  %did = getelementptr inbounds %struct.shared_phy_params, ptr %shp, i32 0, i32 5
  %13 = ptrtoint ptr %did to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %did, align 2
  %did5 = getelementptr inbounds %struct.shared_phy, ptr %call7.i.i, i32 0, i32 9
  %15 = ptrtoint ptr %did5 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %did5, align 2
  %chip = getelementptr inbounds %struct.shared_phy_params, ptr %shp, i32 0, i32 6
  %16 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %chip, align 4
  %chip6 = getelementptr inbounds %struct.shared_phy, ptr %call7.i.i, i32 0, i32 10
  %18 = ptrtoint ptr %chip6 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %chip6, align 8
  %chiprev = getelementptr inbounds %struct.shared_phy_params, ptr %shp, i32 0, i32 7
  %19 = ptrtoint ptr %chiprev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %chiprev, align 4
  %chiprev7 = getelementptr inbounds %struct.shared_phy, ptr %call7.i.i, i32 0, i32 11
  %21 = ptrtoint ptr %chiprev7 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %chiprev7, align 4
  %chippkg = getelementptr inbounds %struct.shared_phy_params, ptr %shp, i32 0, i32 8
  %22 = ptrtoint ptr %chippkg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %chippkg, align 4
  %chippkg8 = getelementptr inbounds %struct.shared_phy, ptr %call7.i.i, i32 0, i32 12
  %24 = ptrtoint ptr %chippkg8 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %chippkg8, align 8
  %sromrev = getelementptr inbounds %struct.shared_phy_params, ptr %shp, i32 0, i32 9
  %25 = ptrtoint ptr %sromrev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sromrev, align 4
  %sromrev9 = getelementptr inbounds %struct.shared_phy, ptr %call7.i.i, i32 0, i32 13
  %27 = ptrtoint ptr %sromrev9 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %sromrev9, align 4
  %boardtype = getelementptr inbounds %struct.shared_phy_params, ptr %shp, i32 0, i32 10
  %28 = ptrtoint ptr %boardtype to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %boardtype, align 4
  %boardtype10 = getelementptr inbounds %struct.shared_phy, ptr %call7.i.i, i32 0, i32 14
  %30 = ptrtoint ptr %boardtype10 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %boardtype10, align 8
  %boardrev = getelementptr inbounds %struct.shared_phy_params, ptr %shp, i32 0, i32 11
  %31 = ptrtoint ptr %boardrev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %boardrev, align 4
  %boardrev11 = getelementptr inbounds %struct.shared_phy, ptr %call7.i.i, i32 0, i32 15
  %33 = ptrtoint ptr %boardrev11 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %boardrev11, align 4
  %boardflags = getelementptr inbounds %struct.shared_phy_params, ptr %shp, i32 0, i32 12
  %34 = ptrtoint ptr %boardflags to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %boardflags, align 4
  %boardflags12 = getelementptr inbounds %struct.shared_phy, ptr %call7.i.i, i32 0, i32 16
  %36 = ptrtoint ptr %boardflags12 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %boardflags12, align 8
  %boardflags2 = getelementptr inbounds %struct.shared_phy_params, ptr %shp, i32 0, i32 13
  %37 = ptrtoint ptr %boardflags2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %boardflags2, align 4
  %boardflags213 = getelementptr inbounds %struct.shared_phy, ptr %call7.i.i, i32 0, i32 17
  %39 = ptrtoint ptr %boardflags213 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %boardflags213, align 4
  %fast_timer = getelementptr inbounds %struct.shared_phy, ptr %call7.i.i, i32 0, i32 18
  %40 = ptrtoint ptr %fast_timer to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 15, ptr %fast_timer, align 8
  %slow_timer = getelementptr inbounds %struct.shared_phy, ptr %call7.i.i, i32 0, i32 19
  %41 = ptrtoint ptr %slow_timer to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 60, ptr %slow_timer, align 4
  %glacial_timer = getelementptr inbounds %struct.shared_phy, ptr %call7.i.i, i32 0, i32 20
  %42 = ptrtoint ptr %glacial_timer to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 120, ptr %glacial_timer, align 8
  %rssi_mode = getelementptr inbounds %struct.shared_phy, ptr %call7.i.i, i32 0, i32 28
  %43 = ptrtoint ptr %rssi_mode to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %rssi_mode, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @wlc_phy_attach(ptr noundef %sh, ptr noundef %d11core, i32 noundef %bandtype, ptr noundef %wiphy) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %corerev = getelementptr inbounds %struct.shared_phy, ptr %sh, i32 0, i32 3
  %0 = ptrtoint ptr %corerev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %corerev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp = icmp eq i32 %1, 4
  br i1 %cmp, label %if.end6.thread, label %if.end

if.end6.thread:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %bandtype)
  %cmp1306 = icmp eq i32 %bandtype, 1
  br label %if.end11

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %d11core to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d11core, align 8
  %ops.i = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  %aread32.i = getelementptr inbounds %struct.bcma_host_ops, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %aread32.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %aread32.i, align 4
  %call.i = tail call i32 %7(ptr noundef %d11core, i16 noundef zeroext 1280) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %bandtype)
  %cmp1 = icmp eq i32 %bandtype, 1
  %and = and i32 %call.i, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp3 = icmp eq i32 %and, 0
  %or.cond = select i1 %cmp1, i1 %cmp3, i1 false
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %8 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sh, align 4
  %and7 = and i32 %call.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool.not = icmp eq i32 %and7, 0
  %tobool8.not = icmp eq ptr %9, null
  %or.cond301 = select i1 %tobool.not, i1 true, i1 %tobool8.not
  br i1 %or.cond301, label %if.end6.if.end11_crit_edge, label %if.then9

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  %sh10 = getelementptr inbounds %struct.brcms_phy, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %sh10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sh10, align 4
  %physhim = getelementptr inbounds %struct.shared_phy, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %physhim to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %physhim, align 4
  %coreflags = getelementptr inbounds %struct.brcms_phy, ptr %9, i32 0, i32 7, i32 6
  %14 = ptrtoint ptr %coreflags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %coreflags, align 4
  tail call void @wlapi_bmac_corereset(ptr noundef %13, i32 noundef %15) #15
  %refcnt = getelementptr inbounds %struct.brcms_phy, ptr %9, i32 0, i32 20
  %16 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %refcnt, align 4
  %inc = add i32 %17, 1
  store i32 %inc, ptr %refcnt, align 4
  br label %cleanup

if.end11:                                         ; preds = %if.end6.if.end11_crit_edge, %if.end6.thread
  %sflags.0310319 = phi i32 [ 3, %if.end6.thread ], [ %call.i, %if.end6.if.end11_crit_edge ]
  %cmp1311318 = phi i1 [ %cmp1306, %if.end6.thread ], [ %cmp1, %if.end6.if.end11_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 2848, i32 noundef 3392) #18
  %cmp13 = icmp eq ptr %call7.i.i, null
  br i1 %cmp13, label %if.end11.cleanup_crit_edge, label %if.end15

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %wiphy16 = getelementptr inbounds %struct.brcms_phy, ptr %call7.i.i, i32 0, i32 276
  %19 = ptrtoint ptr %wiphy16 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %wiphy, ptr %wiphy16, align 4
  %d11core17 = getelementptr inbounds %struct.brcms_phy, ptr %call7.i.i, i32 0, i32 5
  %20 = ptrtoint ptr %d11core17 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %d11core, ptr %d11core17, align 8
  %sh18 = getelementptr inbounds %struct.brcms_phy, ptr %call7.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %sh18 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %sh, ptr %sh18, align 4
  %phy_init_por = getelementptr inbounds %struct.brcms_phy, ptr %call7.i.i, i32 0, i32 16
  %22 = ptrtoint ptr %phy_init_por to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %phy_init_por, align 1
  %phy_wreg_limit = getelementptr inbounds %struct.brcms_phy, ptr %call7.i.i, i32 0, i32 54
  %23 = ptrtoint ptr %phy_wreg_limit to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 24, ptr %phy_wreg_limit, align 2
  %txpwr_percent = getelementptr inbounds %struct.brcms_phy, ptr %call7.i.i, i32 0, i32 15
  %24 = ptrtoint ptr %txpwr_percent to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 100, ptr %txpwr_percent, align 2
  %do_initcal = getelementptr inbounds %struct.brcms_phy, ptr %call7.i.i, i32 0, i32 8
  %25 = ptrtoint ptr %do_initcal to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %do_initcal, align 4
  %phycal_tempdelta = getelementptr inbounds %struct.brcms_phy, ptr %call7.i.i, i32 0, i32 273
  %26 = ptrtoint ptr %phycal_tempdelta to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %phycal_tempdelta, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %bandtype)
  %cmp19 = icmp eq i32 %bandtype, 2
  %cmp19.not = xor i1 %cmp19, true
  %and21 = and i32 %sflags.0310319, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  %or.cond302 = select i1 %cmp19.not, i1 true, i1 %tobool22.not
  br i1 %or.cond302, label %if.end15.if.end26_crit_edge, label %if.then23

if.end15.if.end26_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end26

if.then23:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  %coreflags25 = getelementptr inbounds %struct.brcms_phy, ptr %call7.i.i, i32 0, i32 7, i32 6
  %27 = ptrtoint ptr %coreflags25 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 8192, ptr %coreflags25, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %if.end15.if.end26_crit_edge
  %28 = ptrtoint ptr %sh18 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sh18, align 4
  %physhim28 = getelementptr inbounds %struct.shared_phy, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %physhim28 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %physhim28, align 4
  %pubpi29 = getelementptr inbounds %struct.brcms_phy, ptr %call7.i.i, i32 0, i32 7
  %coreflags30 = getelementptr inbounds %struct.brcms_phy, ptr %call7.i.i, i32 0, i32 7, i32 6
  %32 = ptrtoint ptr %coreflags30 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %coreflags30, align 8
  tail call void @wlapi_bmac_corereset(ptr noundef %31, i32 noundef %33) #15
  %34 = ptrtoint ptr %d11core17 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %d11core17, align 8
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 8
  %ops.i303 = getelementptr inbounds %struct.bcma_bus, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %ops.i303 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ops.i303, align 4
  %read16.i = getelementptr inbounds %struct.bcma_host_ops, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %read16.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %read16.i, align 4
  %call.i304 = tail call zeroext i16 %41(ptr noundef %35, i16 noundef zeroext 992) #15
  %conv.i = zext i16 %call.i304 to i32
  %and33 = lshr i32 %conv.i, 8
  %shr = and i32 %and33, 15
  %42 = ptrtoint ptr %pubpi29 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %shr, ptr %pubpi29, align 8
  %and35 = and i32 %conv.i, 15
  %phy_rev = getelementptr inbounds %struct.brcms_phy, ptr %call7.i.i, i32 0, i32 7, i32 1
  %43 = ptrtoint ptr %phy_rev to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %and35, ptr %phy_rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %shr)
  %cmp39 = icmp eq i32 %shr, 9
  br i1 %cmp39, label %if.end58.thread, label %if.end45

if.end45:                                         ; preds = %if.end26
  %phy_corenum = getelementptr inbounds %struct.brcms_phy, ptr %call7.i.i, i32 0, i32 7, i32 2
  %44 = ptrtoint ptr %phy_corenum to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 2, ptr %phy_corenum, align 8
  %and47 = lshr i32 %conv.i, 12
  %ana_rev = getelementptr inbounds %struct.brcms_phy, ptr %call7.i.i, i32 0, i32 7, i32 7
  %45 = ptrtoint ptr %ana_rev to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %and47, ptr %ana_rev, align 4
  %46 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %shr, label %if.end45.err_crit_edge [
    i32 4, label %if.end45.if.end58_crit_edge
    i32 8, label %if.end45.if.end58_crit_edge328
  ]

if.end45.if.end58_crit_edge328:                   ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end58

if.end45.if.end58_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end58

if.end45.err_crit_edge:                           ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #17
  br label %err

if.end58:                                         ; preds = %if.end45.if.end58_crit_edge, %if.end45.if.end58_crit_edge328
  br i1 %cmp1311318, label %if.then60, label %if.else66

if.end58.thread:                                  ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #17
  %47 = ptrtoint ptr %pubpi29 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 4, ptr %pubpi29, align 8
  %add = or i32 %and35, 16
  %48 = ptrtoint ptr %phy_rev to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %add, ptr %phy_rev, align 4
  %phy_corenum320 = getelementptr inbounds %struct.brcms_phy, ptr %call7.i.i, i32 0, i32 7, i32 2
  %49 = ptrtoint ptr %phy_corenum320 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 2, ptr %phy_corenum320, align 8
  %and47321 = lshr i32 %conv.i, 12
  %ana_rev323 = getelementptr inbounds %struct.brcms_phy, ptr %call7.i.i, i32 0, i32 7, i32 7
  %50 = ptrtoint ptr %ana_rev323 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %and47321, ptr %ana_rev323, align 4
  br label %if.end76

if.then60:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %shr)
  %cmp63 = icmp eq i32 %shr, 4
  br i1 %cmp63, label %if.then60.if.end76_crit_edge, label %if.then60.err_crit_edge

if.then60.err_crit_edge:                          ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #17
  br label %err

if.then60.if.end76_crit_edge:                     ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end76

if.else66:                                        ; preds = %if.end58
  %51 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %shr, label %if.else66.err_crit_edge [
    i32 4, label %if.else66.if.end76_crit_edge
    i32 8, label %if.else66.if.end76_crit_edge329
  ]

if.else66.if.end76_crit_edge329:                  ; preds = %if.else66
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end76

if.else66.if.end76_crit_edge:                     ; preds = %if.else66
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end76

if.else66.err_crit_edge:                          ; preds = %if.else66
  call void @__sanitizer_cov_trace_pc() #17
  br label %err

if.end76:                                         ; preds = %if.else66.if.end76_crit_edge, %if.else66.if.end76_crit_edge329, %if.then60.if.end76_crit_edge, %if.end58.thread
  tail call void @wlc_phy_anacore(ptr noundef nonnull %call7.i.i, i1 noundef zeroext true)
  %52 = ptrtoint ptr %sh18 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %sh18, align 4
  %corerev.i.i = getelementptr inbounds %struct.shared_phy, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %corerev.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %corerev.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %55)
  %cmp.i.i = icmp ugt i32 %55, 23
  %56 = ptrtoint ptr %d11core17 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %d11core17, align 8
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 8
  %ops.i.i.i = getelementptr inbounds %struct.bcma_bus, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ops.i.i.i, align 4
  %write16.i.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %61, i32 0, i32 4
  %62 = ptrtoint ptr %write16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %write16.i.i.i, align 4
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #17
  tail call void %63(ptr noundef %57, i16 noundef zeroext 984, i16 noundef zeroext 0) #15
  %64 = ptrtoint ptr %d11core17 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %d11core17, align 8
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %65, align 8
  %ops.i32.i.i = getelementptr inbounds %struct.bcma_bus, ptr %67, i32 0, i32 2
  %68 = ptrtoint ptr %ops.i32.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ops.i32.i.i, align 4
  %read16.i.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %read16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %read16.i.i.i, align 4
  %call.i.i.i = tail call zeroext i16 %71(ptr noundef %65, i16 noundef zeroext 986) #15
  %conv.i.i.i = zext i16 %call.i.i.i to i32
  %72 = ptrtoint ptr %d11core17 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %d11core17, align 8
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %73, align 8
  %ops.i33.i.i = getelementptr inbounds %struct.bcma_bus, ptr %75, i32 0, i32 2
  %76 = ptrtoint ptr %ops.i33.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ops.i33.i.i, align 4
  %write16.i34.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %77, i32 0, i32 4
  %78 = ptrtoint ptr %write16.i34.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %write16.i34.i.i, align 4
  tail call void %79(ptr noundef %73, i16 noundef zeroext 984, i16 noundef zeroext 1) #15
  %80 = ptrtoint ptr %d11core17 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %d11core17, align 8
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %81, align 8
  %ops.i35.i.i = getelementptr inbounds %struct.bcma_bus, ptr %83, i32 0, i32 2
  %84 = ptrtoint ptr %ops.i35.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ops.i35.i.i, align 4
  %read16.i36.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %read16.i36.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %read16.i36.i.i, align 4
  %call.i37.i.i = tail call zeroext i16 %87(ptr noundef %81, i16 noundef zeroext 986) #15
  %conv.i38.i.i = zext i16 %call.i37.i.i to i32
  %88 = ptrtoint ptr %d11core17 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %d11core17, align 8
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %89, align 8
  %ops.i39.i.i = getelementptr inbounds %struct.bcma_bus, ptr %91, i32 0, i32 2
  %92 = ptrtoint ptr %ops.i39.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %ops.i39.i.i, align 4
  %write16.i40.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %93, i32 0, i32 4
  %94 = ptrtoint ptr %write16.i40.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %write16.i40.i.i, align 4
  tail call void %95(ptr noundef %89, i16 noundef zeroext 984, i16 noundef zeroext 2) #15
  %96 = ptrtoint ptr %d11core17 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %d11core17, align 8
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %97, align 8
  %ops.i41.i.i = getelementptr inbounds %struct.bcma_bus, ptr %99, i32 0, i32 2
  %100 = ptrtoint ptr %ops.i41.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %ops.i41.i.i, align 4
  %read16.i42.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %101, i32 0, i32 1
  %102 = ptrtoint ptr %read16.i42.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %read16.i42.i.i, align 4
  %call.i43.i.i = tail call zeroext i16 %103(ptr noundef %97, i16 noundef zeroext 986) #15
  %conv.i44.i.i = zext i16 %call.i43.i.i to i32
  %shl.i.i = shl i32 %conv.i.i.i, 28
  %104 = shl i32 %conv.i44.i.i, 20
  %105 = shl nuw nsw i32 %conv.i38.i.i, 12
  %shr.i.i = lshr i32 %conv.i.i.i, 4
  %and11.i.i = and i32 %shr.i.i, 15
  %shl9.i.i = or i32 %and11.i.i, %shl.i.i
  %or10.i.i = or i32 %105, %shl9.i.i
  %or12.i.i = or i32 %104, %or10.i.i
  br label %wlc_phy_get_radio_ver.exit

if.else.i.i:                                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #17
  tail call void %63(ptr noundef %57, i16 noundef zeroext 1014, i16 noundef zeroext 1) #15
  %106 = ptrtoint ptr %d11core17 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %d11core17, align 8
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %107, align 8
  %ops.i47.i.i = getelementptr inbounds %struct.bcma_bus, ptr %109, i32 0, i32 2
  %110 = ptrtoint ptr %ops.i47.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %ops.i47.i.i, align 4
  %read16.i48.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %111, i32 0, i32 1
  %112 = ptrtoint ptr %read16.i48.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %read16.i48.i.i, align 4
  %call.i49.i.i = tail call zeroext i16 %113(ptr noundef %107, i16 noundef zeroext 1018) #15
  %conv.i50.i.i = zext i16 %call.i49.i.i to i32
  %114 = ptrtoint ptr %d11core17 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %d11core17, align 8
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %115, align 8
  %ops.i51.i.i = getelementptr inbounds %struct.bcma_bus, ptr %117, i32 0, i32 2
  %118 = ptrtoint ptr %ops.i51.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %ops.i51.i.i, align 4
  %read16.i52.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %119, i32 0, i32 1
  %120 = ptrtoint ptr %read16.i52.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %read16.i52.i.i, align 4
  %call.i53.i.i = tail call zeroext i16 %121(ptr noundef %115, i16 noundef zeroext 1016) #15
  %conv.i54.i.i = zext i16 %call.i53.i.i to i32
  %shl18.i.i = shl nuw i32 %conv.i54.i.i, 16
  %or19.i.i = or i32 %shl18.i.i, %conv.i50.i.i
  br label %wlc_phy_get_radio_ver.exit

wlc_phy_get_radio_ver.exit:                       ; preds = %if.else.i.i, %if.then.i.i
  %id.0.i.i = phi i32 [ %or12.i.i, %if.then.i.i ], [ %or19.i.i, %if.else.i.i ]
  %phy_wreg.i.i = getelementptr inbounds %struct.brcms_phy, ptr %call7.i.i, i32 0, i32 53
  %122 = ptrtoint ptr %phy_wreg.i.i to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 0, ptr %phy_wreg.i.i, align 8
  %and78 = lshr i32 %id.0.i.i, 12
  %conv = trunc i32 %and78 to i16
  %radioid = getelementptr inbounds %struct.brcms_phy, ptr %call7.i.i, i32 0, i32 7, i32 3
  %123 = ptrtoint ptr %radioid to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 %conv, ptr %radioid, align 2
  %shr82 = lshr i32 %id.0.i.i, 28
  %conv83 = trunc i32 %shr82 to i8
  %radiorev = getelementptr inbounds %struct.brcms_phy, ptr %call7.i.i, i32 0, i32 7, i32 4
  %124 = ptrtoint ptr %radiorev to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %conv83, ptr %radiorev, align 4
  %125 = trunc i32 %id.0.i.i to i8
  %conv87 = and i8 %125, 15
  %radiover = getelementptr inbounds %struct.brcms_phy, ptr %call7.i.i, i32 0, i32 7, i32 5
  %126 = ptrtoint ptr %radiover to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %conv87, ptr %radiover, align 1
  %127 = ptrtoint ptr %pubpi29 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %pubpi29, align 8
  %129 = zext i32 %128 to i64
  call void @__sanitizer_cov_trace_switch(i64 %129, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %128, label %wlc_phy_get_radio_ver.exit.err_crit_edge [
    i32 4, label %cond.true
    i32 8, label %cond.true114
  ]

wlc_phy_get_radio_ver.exit.err_crit_edge:         ; preds = %wlc_phy_get_radio_ver.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %err

cond.true:                                        ; preds = %wlc_phy_get_radio_ver.exit
  %.off = add i16 %conv, -8277
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %.off)
  %switch = icmp ult i16 %.off, 3
  br i1 %switch, label %cond.true.if.end122_crit_edge, label %cond.true.err_crit_edge

cond.true.err_crit_edge:                          ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %err

cond.true.if.end122_crit_edge:                    ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end122

cond.true114:                                     ; preds = %wlc_phy_get_radio_ver.exit
  call void @__sanitizer_cov_trace_const_cmp2(i16 8292, i16 %conv)
  %cmp118 = icmp eq i16 %conv, 8292
  br i1 %cmp118, label %cond.true114.if.end122_crit_edge, label %cond.true114.err_crit_edge

cond.true114.err_crit_edge:                       ; preds = %cond.true114
  call void @__sanitizer_cov_trace_pc() #17
  br label %err

cond.true114.if.end122_crit_edge:                 ; preds = %cond.true114
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end122

if.end122:                                        ; preds = %cond.true114.if.end122_crit_edge, %cond.true.if.end122_crit_edge
  tail call void @wlc_phy_switch_radio(ptr noundef nonnull %call7.i.i, i1 noundef zeroext false)
  %initialized.i = getelementptr inbounds %struct.brcms_phy, ptr %call7.i.i, i32 0, i32 18
  %130 = ptrtoint ptr %initialized.i to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 0, ptr %initialized.i, align 1
  %tx_vos.i = getelementptr inbounds %struct.brcms_phy, ptr %call7.i.i, i32 0, i32 119
  %131 = ptrtoint ptr %tx_vos.i to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 -1, ptr %tx_vos.i, align 4
  %nrssi_table_delta.i = getelementptr inbounds %struct.brcms_phy, ptr %call7.i.i, i32 0, i32 111
  %132 = ptrtoint ptr %nrssi_table_delta.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 2147483647, ptr %nrssi_table_delta.i, align 4
  %rc_cal.i = getelementptr inbounds %struct.brcms_phy, ptr %call7.i.i, i32 0, i32 110
  %133 = ptrtoint ptr %rc_cal.i to i32
  call void @__asan_store2_noabort(i32 %133)
  store i16 -1, ptr %rc_cal.i, align 8
  %mintxbias.i = getelementptr inbounds %struct.brcms_phy, ptr %call7.i.i, i32 0, i32 101
  %134 = ptrtoint ptr %mintxbias.i to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 -1, ptr %mintxbias.i, align 2
  %txpwridx.i = getelementptr inbounds %struct.brcms_phy, ptr %call7.i.i, i32 0, i32 116
  %135 = ptrtoint ptr %txpwridx.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 -1, ptr %txpwridx.i, align 8
  %136 = ptrtoint ptr %pubpi29 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %pubpi29, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %137)
  %cmp.i = icmp eq i32 %137, 4
  %phy_spuravoid.i = getelementptr inbounds %struct.brcms_phy, ptr %call7.i.i, i32 0, i32 179
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #17
  %138 = ptrtoint ptr %phy_rev to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %phy_rev, align 4
  %140 = add i32 %139, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %140)
  %141 = icmp ult i32 %140, 4
  %spec.store.select.i = zext i1 %141 to i8
  %142 = ptrtoint ptr %phy_spuravoid.i to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %spec.store.select.i, ptr %phy_spuravoid.i, align 8
  %nphy_papd_skip.i = getelementptr inbounds %struct.brcms_phy, ptr %call7.i.i, i32 0, i32 182
  %143 = ptrtoint ptr %nphy_papd_skip.i to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 0, ptr %nphy_papd_skip.i, align 1
  %nphy_papd_epsilon_offset.i = getelementptr inbounds %struct.brcms_phy, ptr %call7.i.i, i32 0, i32 215
  %144 = ptrtoint ptr %nphy_papd_epsilon_offset.i to i32
  call void @__asan_store2_noabort(i32 %144)
  store i16 -2680, ptr %nphy_papd_epsilon_offset.i, align 2
  %arrayidx9.i = getelementptr %struct.brcms_phy, ptr %call7.i.i, i32 0, i32 215, i32 1
  %145 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store2_noabort(i32 %145)
  store i16 -2680, ptr %arrayidx9.i, align 4
  %nphy_txpwr_idx.i = getelementptr inbounds %struct.brcms_phy, ptr %call7.i.i, i32 0, i32 210
  %146 = ptrtoint ptr %nphy_txpwr_idx.i to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 -128, ptr %nphy_txpwr_idx.i, align 4
  %arrayidx12.i = getelementptr %struct.brcms_phy, ptr %call7.i.i, i32 0, i32 210, i32 1
  %147 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 -128, ptr %arrayidx12.i, align 1
  %index_internal.i = getelementptr inbounds %struct.brcms_phy, ptr %call7.i.i, i32 0, i32 151, i32 0, i32 1
  %148 = ptrtoint ptr %index_internal.i to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 40, ptr %index_internal.i, align 1
  %index_internal16.i = getelementptr %struct.brcms_phy, ptr %call7.i.i, i32 0, i32 151, i32 1, i32 1
  %149 = ptrtoint ptr %index_internal16.i to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 40, ptr %index_internal16.i, align 1
  %phy_pabias.i = getelementptr inbounds %struct.brcms_phy, ptr %call7.i.i, i32 0, i32 181
  %150 = ptrtoint ptr %phy_pabias.i to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 0, ptr %phy_pabias.i, align 2
  br label %wlc_set_phy_uninitted.exit

if.else.i:                                        ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #17
  %151 = ptrtoint ptr %phy_spuravoid.i to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 1, ptr %phy_spuravoid.i, align 8
  br label %wlc_set_phy_uninitted.exit

wlc_set_phy_uninitted.exit:                       ; preds = %if.else.i, %if.then.i
  %radiopwr.i = getelementptr inbounds %struct.brcms_phy, ptr %call7.i.i, i32 0, i32 98
  %152 = ptrtoint ptr %radiopwr.i to i32
  call void @__asan_store2_noabort(i32 %152)
  store i16 -1, ptr %radiopwr.i, align 8
  %uglygep55.i = getelementptr i8, ptr %call7.i.i, i32 1882
  %153 = call ptr @memset(ptr %uglygep55.i, i32 255, i32 288)
  %bw = getelementptr inbounds %struct.brcms_phy, ptr %call7.i.i, i32 0, i32 14
  %154 = ptrtoint ptr %bw to i32
  call void @__asan_store2_noabort(i32 %154)
  store i16 2048, ptr %bw, align 4
  %spec.select = select i1 %cmp19, i16 11009, i16 6948
  %radio_chanspec = getelementptr inbounds %struct.brcms_phy, ptr %call7.i.i, i32 0, i32 12
  %155 = ptrtoint ptr %radio_chanspec to i32
  call void @__asan_store2_noabort(i32 %155)
  store i16 %spec.select, ptr %radio_chanspec, align 8
  %rxiq_samps = getelementptr inbounds %struct.brcms_phy, ptr %call7.i.i, i32 0, i32 225
  %156 = ptrtoint ptr %rxiq_samps to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 10, ptr %rxiq_samps, align 4
  %rxiq_antsel = getelementptr inbounds %struct.brcms_phy, ptr %call7.i.i, i32 0, i32 226
  %157 = ptrtoint ptr %rxiq_antsel to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 3, ptr %rxiq_antsel, align 1
  %watchdog_override = getelementptr inbounds %struct.brcms_phy, ptr %call7.i.i, i32 0, i32 21
  %158 = ptrtoint ptr %watchdog_override to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 1, ptr %watchdog_override, align 8
  %cal_type_override = getelementptr inbounds %struct.brcms_phy, ptr %call7.i.i, i32 0, i32 194
  %159 = ptrtoint ptr %cal_type_override to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 0, ptr %cal_type_override, align 8
  %nphy_saved_noisevars = getelementptr inbounds %struct.brcms_phy, ptr %call7.i.i, i32 0, i32 245
  %160 = ptrtoint ptr %nphy_saved_noisevars to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 0, ptr %nphy_saved_noisevars, align 8
  %161 = ptrtoint ptr %pubpi29 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %pubpi29, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %162)
  %cmp134 = icmp eq i32 %162, 4
  %spec.select327 = select i1 %cmp134, i8 8, i8 10
  %163 = getelementptr inbounds %struct.brcms_phy, ptr %call7.i.i, i32 0, i32 117
  %164 = ptrtoint ptr %163 to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 %spec.select327, ptr %163, align 1
  %165 = ptrtoint ptr %sh18 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %sh18, align 4
  %phyrxchain = getelementptr inbounds %struct.shared_phy, ptr %166, i32 0, i32 27
  %167 = ptrtoint ptr %phyrxchain to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 3, ptr %phyrxchain, align 1
  %rx2tx_biasentry = getelementptr inbounds %struct.brcms_phy, ptr %call7.i.i, i32 0, i32 253
  %168 = ptrtoint ptr %rx2tx_biasentry to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 -1, ptr %rx2tx_biasentry, align 2
  %phy_txcore_disable_temp = getelementptr inbounds %struct.brcms_phy, ptr %call7.i.i, i32 0, i32 94
  %169 = ptrtoint ptr %phy_txcore_disable_temp to i32
  call void @__asan_store2_noabort(i32 %169)
  store i16 115, ptr %phy_txcore_disable_temp, align 2
  %phy_txcore_enable_temp = getelementptr inbounds %struct.brcms_phy, ptr %call7.i.i, i32 0, i32 95
  %170 = ptrtoint ptr %phy_txcore_enable_temp to i32
  call void @__asan_store2_noabort(i32 %170)
  store i16 110, ptr %phy_txcore_enable_temp, align 4
  %phy_tempsense_offset = getelementptr inbounds %struct.brcms_phy, ptr %call7.i.i, i32 0, i32 96
  %171 = ptrtoint ptr %phy_tempsense_offset to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 0, ptr %phy_tempsense_offset, align 2
  %phy_txcore_heatedup = getelementptr inbounds %struct.brcms_phy, ptr %call7.i.i, i32 0, i32 97
  %172 = ptrtoint ptr %phy_txcore_heatedup to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 0, ptr %phy_txcore_heatedup, align 1
  %nphy_lastcal_temp = getelementptr inbounds %struct.brcms_phy, ptr %call7.i.i, i32 0, i32 207
  %173 = ptrtoint ptr %nphy_lastcal_temp to i32
  call void @__asan_store2_noabort(i32 %173)
  store i16 -50, ptr %nphy_lastcal_temp, align 2
  %phynoise_polling = getelementptr inbounds %struct.brcms_phy, ptr %call7.i.i, i32 0, i32 25
  %174 = ptrtoint ptr %phynoise_polling to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 1, ptr %phynoise_polling, align 4
  %175 = ptrtoint ptr %pubpi29 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %pubpi29, align 8
  %177 = zext i32 %176 to i64
  call void @__sanitizer_cov_trace_switch(i64 %177, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %176, label %wlc_set_phy_uninitted.exit.if.end152_crit_edge [
    i32 4, label %wlc_set_phy_uninitted.exit.if.then150_crit_edge
    i32 8, label %wlc_set_phy_uninitted.exit.if.then150_crit_edge330
  ]

wlc_set_phy_uninitted.exit.if.then150_crit_edge330: ; preds = %wlc_set_phy_uninitted.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then150

wlc_set_phy_uninitted.exit.if.then150_crit_edge:  ; preds = %wlc_set_phy_uninitted.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then150

wlc_set_phy_uninitted.exit.if.end152_crit_edge:   ; preds = %wlc_set_phy_uninitted.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end152

if.then150:                                       ; preds = %wlc_set_phy_uninitted.exit.if.then150_crit_edge, %wlc_set_phy_uninitted.exit.if.then150_crit_edge330
  %178 = ptrtoint ptr %phynoise_polling to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 0, ptr %phynoise_polling, align 4
  br label %if.end152

if.end152:                                        ; preds = %if.then150, %wlc_set_phy_uninitted.exit.if.end152_crit_edge
  %uglygep = getelementptr i8, ptr %call7.i.i, i32 608
  %179 = call ptr @memset(ptr %uglygep, i32 127, i32 101)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end152
  %i.0326 = phi i32 [ 0, %if.end152 ], [ %inc157, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.brcms_phy, ptr %call7.i.i, i32 0, i32 63, i32 %i.0326
  %180 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 127, ptr %arrayidx, align 1
  %arrayidx155 = getelementptr %struct.brcms_phy, ptr %call7.i.i, i32 0, i32 64, i32 %i.0326
  %181 = ptrtoint ptr %arrayidx155 to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 127, ptr %arrayidx155, align 1
  %inc157 = add nuw nsw i32 %i.0326, 1
  %exitcond.not = icmp eq i32 %inc157, 101
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %for.body
  %radiopwr_override = getelementptr inbounds %struct.brcms_phy, ptr %call7.i.i, i32 0, i32 69
  %182 = ptrtoint ptr %radiopwr_override to i32
  call void @__asan_store2_noabort(i32 %182)
  store i16 -1, ptr %radiopwr_override, align 8
  %user_txpwr_at_rfport = getelementptr inbounds %struct.brcms_phy, ptr %call7.i.i, i32 0, i32 4
  %183 = ptrtoint ptr %user_txpwr_at_rfport to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 0, ptr %user_txpwr_at_rfport, align 4
  %184 = ptrtoint ptr %pubpi29 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %pubpi29, align 8
  %186 = zext i32 %185 to i64
  call void @__sanitizer_cov_trace_switch(i64 %186, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %185, label %for.end.if.end183_crit_edge [
    i32 4, label %if.then162
    i32 8, label %if.then178
  ]

for.end.if.end183_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end183

if.then162:                                       ; preds = %for.end
  %187 = ptrtoint ptr %sh18 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %sh18, align 4
  %physhim164 = getelementptr inbounds %struct.shared_phy, ptr %188, i32 0, i32 2
  %189 = ptrtoint ptr %physhim164 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %physhim164, align 4
  %call165 = tail call ptr @wlapi_init_timer(ptr noundef %190, ptr noundef nonnull @wlc_phy_timercb_phycal, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str) #15
  %phycal_timer = getelementptr inbounds %struct.brcms_phy, ptr %call7.i.i, i32 0, i32 204
  %191 = ptrtoint ptr %phycal_timer to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr %call165, ptr %phycal_timer, align 4
  %tobool167.not = icmp eq ptr %call165, null
  br i1 %tobool167.not, label %if.then162.err_crit_edge, label %if.end169

if.then162.err_crit_edge:                         ; preds = %if.then162
  call void @__sanitizer_cov_trace_pc() #17
  br label %err

if.end169:                                        ; preds = %if.then162
  %call170 = tail call zeroext i1 @wlc_phy_attach_nphy(ptr noundef nonnull %call7.i.i) #15
  br i1 %call170, label %if.end169.if.end183_crit_edge, label %if.end169.err_crit_edge

if.end169.err_crit_edge:                          ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #17
  br label %err

if.end169.if.end183_crit_edge:                    ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end183

if.then178:                                       ; preds = %for.end
  %call179 = tail call zeroext i1 @wlc_phy_attach_lcnphy(ptr noundef nonnull %call7.i.i) #15
  br i1 %call179, label %if.then178.if.end183_crit_edge, label %if.then178.err_crit_edge

if.then178.err_crit_edge:                         ; preds = %if.then178
  call void @__sanitizer_cov_trace_pc() #17
  br label %err

if.then178.if.end183_crit_edge:                   ; preds = %if.then178
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end183

if.end183:                                        ; preds = %if.then178.if.end183_crit_edge, %if.end169.if.end183_crit_edge, %for.end.if.end183_crit_edge
  %refcnt184 = getelementptr inbounds %struct.brcms_phy, ptr %call7.i.i, i32 0, i32 20
  %192 = ptrtoint ptr %refcnt184 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %refcnt184, align 4
  %inc185 = add i32 %193, 1
  store i32 %inc185, ptr %refcnt184, align 4
  %194 = ptrtoint ptr %sh18 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %sh18, align 4
  %196 = ptrtoint ptr %195 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %195, align 4
  %next = getelementptr inbounds %struct.brcms_phy, ptr %call7.i.i, i32 0, i32 6
  %198 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %198)
  store ptr %197, ptr %next, align 4
  %199 = ptrtoint ptr %sh to i32
  call void @__asan_store4_noabort(i32 %199)
  store ptr %call7.i.i, ptr %sh, align 4
  %200 = call ptr @memcpy(ptr %call7.i.i, ptr %pubpi29, i32 28)
  br label %cleanup

err:                                              ; preds = %if.then178.err_crit_edge, %if.end169.err_crit_edge, %if.then162.err_crit_edge, %cond.true114.err_crit_edge, %cond.true.err_crit_edge, %wlc_phy_get_radio_ver.exit.err_crit_edge, %if.else66.err_crit_edge, %if.then60.err_crit_edge, %if.end45.err_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #15
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end183, %if.end11.cleanup_crit_edge, %if.then9, %if.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %9, %if.then9 ], [ null, %err ], [ %call7.i.i, %if.end183 ], [ null, %if.end.cleanup_crit_edge ], [ null, %if.end11.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wlapi_bmac_corereset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wlc_phy_anacore(ptr noundef %pih, i1 noundef zeroext %on) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %pubpi = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 7
  %0 = ptrtoint ptr %pubpi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pubpi, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %1, label %entry.if.end23_crit_edge [
    i32 4, label %if.then
    i32 8, label %if.then17
  ]

entry.if.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end23

if.then:                                          ; preds = %entry
  %phy_rev = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 7, i32 1
  %3 = ptrtoint ptr %phy_rev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %phy_rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp3 = icmp ugt i32 %4, 2
  %d11core.i = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 5
  %5 = ptrtoint ptr %d11core.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %d11core.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  %ops.i.i = getelementptr inbounds %struct.bcma_bus, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops.i.i, align 4
  %write32.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write32.i.i, align 4
  br i1 %on, label %if.then1, label %if.else5

if.then1:                                         ; preds = %if.then
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then1
  tail call void %12(ptr noundef %6, i16 noundef zeroext 1020, i32 noundef 852134) #15
  %13 = ptrtoint ptr %d11core.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %d11core.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  %hosttype.i = getelementptr inbounds %struct.bcma_bus, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %hosttype.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %hosttype.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.i = icmp eq i32 %18, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then4.write_phy_reg.exit_crit_edge

if.then4.write_phy_reg.exit_crit_edge:            ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #17
  br label %write_phy_reg.exit

land.lhs.true.i:                                  ; preds = %if.then4
  %phy_wreg.i = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 53
  %19 = ptrtoint ptr %phy_wreg.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %phy_wreg.i, align 4
  %inc.i = add i16 %20, 1
  store i16 %inc.i, ptr %phy_wreg.i, align 4
  %phy_wreg_limit.i = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 54
  %21 = ptrtoint ptr %phy_wreg_limit.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %phy_wreg_limit.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i, i16 %22)
  %cmp6.not.i = icmp ult i16 %inc.i, %22
  br i1 %cmp6.not.i, label %land.lhs.true.i.write_phy_reg.exit_crit_edge, label %if.then.i

land.lhs.true.i.write_phy_reg.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %write_phy_reg.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  %23 = ptrtoint ptr %phy_wreg.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 0, ptr %phy_wreg.i, align 4
  %24 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %14, align 8
  %ops.i15.i = getelementptr inbounds %struct.bcma_bus, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %ops.i15.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops.i15.i, align 4
  %read16.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %read16.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %read16.i.i, align 4
  %call.i.i = tail call zeroext i16 %29(ptr noundef %14, i16 noundef zeroext 992) #15
  br label %write_phy_reg.exit

write_phy_reg.exit:                               ; preds = %if.then.i, %land.lhs.true.i.write_phy_reg.exit_crit_edge, %if.then4.write_phy_reg.exit_crit_edge
  %30 = ptrtoint ptr %d11core.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %d11core.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 8
  %ops.i.i42 = getelementptr inbounds %struct.bcma_bus, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %ops.i.i42 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ops.i.i42, align 4
  %write32.i.i43 = getelementptr inbounds %struct.bcma_host_ops, ptr %35, i32 0, i32 5
  %36 = ptrtoint ptr %write32.i.i43 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %write32.i.i43, align 4
  tail call void %37(ptr noundef %31, i16 noundef zeroext 1020, i32 noundef 143) #15
  %38 = ptrtoint ptr %d11core.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %d11core.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 8
  %hosttype.i44 = getelementptr inbounds %struct.bcma_bus, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %hosttype.i44 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %hosttype.i44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp.i45 = icmp eq i32 %43, 0
  br i1 %cmp.i45, label %land.lhs.true.i50, label %write_phy_reg.exit.write_phy_reg.exit55_crit_edge

write_phy_reg.exit.write_phy_reg.exit55_crit_edge: ; preds = %write_phy_reg.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %write_phy_reg.exit55

land.lhs.true.i50:                                ; preds = %write_phy_reg.exit
  %phy_wreg.i46 = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 53
  %44 = ptrtoint ptr %phy_wreg.i46 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %phy_wreg.i46, align 4
  %inc.i47 = add i16 %45, 1
  store i16 %inc.i47, ptr %phy_wreg.i46, align 4
  %phy_wreg_limit.i48 = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 54
  %46 = ptrtoint ptr %phy_wreg_limit.i48 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %phy_wreg_limit.i48, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i47, i16 %47)
  %cmp6.not.i49 = icmp ult i16 %inc.i47, %47
  br i1 %cmp6.not.i49, label %land.lhs.true.i50.write_phy_reg.exit55_crit_edge, label %if.then.i54

land.lhs.true.i50.write_phy_reg.exit55_crit_edge: ; preds = %land.lhs.true.i50
  call void @__sanitizer_cov_trace_pc() #17
  br label %write_phy_reg.exit55

if.then.i54:                                      ; preds = %land.lhs.true.i50
  call void @__sanitizer_cov_trace_pc() #17
  %48 = ptrtoint ptr %phy_wreg.i46 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 0, ptr %phy_wreg.i46, align 4
  %49 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %39, align 8
  %ops.i15.i51 = getelementptr inbounds %struct.bcma_bus, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %ops.i15.i51 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ops.i15.i51, align 4
  %read16.i.i52 = getelementptr inbounds %struct.bcma_host_ops, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %read16.i.i52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %read16.i.i52, align 4
  %call.i.i53 = tail call zeroext i16 %54(ptr noundef %39, i16 noundef zeroext 992) #15
  br label %write_phy_reg.exit55

write_phy_reg.exit55:                             ; preds = %if.then.i54, %land.lhs.true.i50.write_phy_reg.exit55_crit_edge, %write_phy_reg.exit.write_phy_reg.exit55_crit_edge
  %55 = ptrtoint ptr %d11core.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %d11core.i, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 8
  %ops.i.i57 = getelementptr inbounds %struct.bcma_bus, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %ops.i.i57 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ops.i.i57, align 4
  %write32.i.i58 = getelementptr inbounds %struct.bcma_host_ops, ptr %60, i32 0, i32 5
  %61 = ptrtoint ptr %write32.i.i58 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %write32.i.i58, align 4
  tail call void %62(ptr noundef %56, i16 noundef zeroext 1020, i32 noundef 852135) #15
  %63 = ptrtoint ptr %d11core.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %d11core.i, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 8
  %hosttype.i59 = getelementptr inbounds %struct.bcma_bus, ptr %66, i32 0, i32 3
  %67 = ptrtoint ptr %hosttype.i59 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %hosttype.i59, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp.i60 = icmp eq i32 %68, 0
  br i1 %cmp.i60, label %land.lhs.true.i65, label %write_phy_reg.exit55.write_phy_reg.exit70_crit_edge

write_phy_reg.exit55.write_phy_reg.exit70_crit_edge: ; preds = %write_phy_reg.exit55
  call void @__sanitizer_cov_trace_pc() #17
  br label %write_phy_reg.exit70

land.lhs.true.i65:                                ; preds = %write_phy_reg.exit55
  %phy_wreg.i61 = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 53
  %69 = ptrtoint ptr %phy_wreg.i61 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %phy_wreg.i61, align 4
  %inc.i62 = add i16 %70, 1
  store i16 %inc.i62, ptr %phy_wreg.i61, align 4
  %phy_wreg_limit.i63 = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 54
  %71 = ptrtoint ptr %phy_wreg_limit.i63 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %phy_wreg_limit.i63, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i62, i16 %72)
  %cmp6.not.i64 = icmp ult i16 %inc.i62, %72
  br i1 %cmp6.not.i64, label %land.lhs.true.i65.write_phy_reg.exit70_crit_edge, label %if.then.i69

land.lhs.true.i65.write_phy_reg.exit70_crit_edge: ; preds = %land.lhs.true.i65
  call void @__sanitizer_cov_trace_pc() #17
  br label %write_phy_reg.exit70

if.then.i69:                                      ; preds = %land.lhs.true.i65
  call void @__sanitizer_cov_trace_pc() #17
  %73 = ptrtoint ptr %phy_wreg.i61 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 0, ptr %phy_wreg.i61, align 4
  %74 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %64, align 8
  %ops.i15.i66 = getelementptr inbounds %struct.bcma_bus, ptr %75, i32 0, i32 2
  %76 = ptrtoint ptr %ops.i15.i66 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ops.i15.i66, align 4
  %read16.i.i67 = getelementptr inbounds %struct.bcma_host_ops, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %read16.i.i67 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %read16.i.i67, align 4
  %call.i.i68 = tail call zeroext i16 %79(ptr noundef %64, i16 noundef zeroext 992) #15
  br label %write_phy_reg.exit70

write_phy_reg.exit70:                             ; preds = %if.then.i69, %land.lhs.true.i65.write_phy_reg.exit70_crit_edge, %write_phy_reg.exit55.write_phy_reg.exit70_crit_edge
  %80 = ptrtoint ptr %d11core.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %d11core.i, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %81, align 8
  %ops.i.i72 = getelementptr inbounds %struct.bcma_bus, ptr %83, i32 0, i32 2
  %84 = ptrtoint ptr %ops.i.i72 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ops.i.i72, align 4
  %write32.i.i73 = getelementptr inbounds %struct.bcma_host_ops, ptr %85, i32 0, i32 5
  %86 = ptrtoint ptr %write32.i.i73 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %write32.i.i73, align 4
  tail call void %87(ptr noundef %81, i16 noundef zeroext 1020, i32 noundef 165) #15
  %88 = ptrtoint ptr %d11core.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %d11core.i, align 4
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %89, align 8
  %hosttype.i74 = getelementptr inbounds %struct.bcma_bus, ptr %91, i32 0, i32 3
  %92 = ptrtoint ptr %hosttype.i74 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %hosttype.i74, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %cmp.i75 = icmp eq i32 %93, 0
  br i1 %cmp.i75, label %land.lhs.true.i80, label %write_phy_reg.exit70.if.end23_crit_edge

write_phy_reg.exit70.if.end23_crit_edge:          ; preds = %write_phy_reg.exit70
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end23

land.lhs.true.i80:                                ; preds = %write_phy_reg.exit70
  %phy_wreg.i76 = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 53
  %94 = ptrtoint ptr %phy_wreg.i76 to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %phy_wreg.i76, align 4
  %inc.i77 = add i16 %95, 1
  store i16 %inc.i77, ptr %phy_wreg.i76, align 4
  %phy_wreg_limit.i78 = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 54
  %96 = ptrtoint ptr %phy_wreg_limit.i78 to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %phy_wreg_limit.i78, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i77, i16 %97)
  %cmp6.not.i79 = icmp ult i16 %inc.i77, %97
  br i1 %cmp6.not.i79, label %land.lhs.true.i80.if.end23_crit_edge, label %if.then.i84

land.lhs.true.i80.if.end23_crit_edge:             ; preds = %land.lhs.true.i80
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end23

if.then.i84:                                      ; preds = %land.lhs.true.i80
  call void @__sanitizer_cov_trace_pc() #17
  %98 = ptrtoint ptr %phy_wreg.i76 to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 0, ptr %phy_wreg.i76, align 4
  %99 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %89, align 8
  %ops.i15.i81 = getelementptr inbounds %struct.bcma_bus, ptr %100, i32 0, i32 2
  %101 = ptrtoint ptr %ops.i15.i81 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %ops.i15.i81, align 4
  %read16.i.i82 = getelementptr inbounds %struct.bcma_host_ops, ptr %102, i32 0, i32 1
  %103 = ptrtoint ptr %read16.i.i82 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %read16.i.i82, align 4
  %call.i.i83 = tail call zeroext i16 %104(ptr noundef %89, i16 noundef zeroext 992) #15
  br label %if.end23

if.else:                                          ; preds = %if.then1
  tail call void %12(ptr noundef %6, i16 noundef zeroext 1020, i32 noundef 165) #15
  %105 = ptrtoint ptr %d11core.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %d11core.i, align 4
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %106, align 8
  %hosttype.i89 = getelementptr inbounds %struct.bcma_bus, ptr %108, i32 0, i32 3
  %109 = ptrtoint ptr %hosttype.i89 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %hosttype.i89, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %cmp.i90 = icmp eq i32 %110, 0
  br i1 %cmp.i90, label %land.lhs.true.i95, label %if.else.if.end23_crit_edge

if.else.if.end23_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end23

land.lhs.true.i95:                                ; preds = %if.else
  %phy_wreg.i91 = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 53
  %111 = ptrtoint ptr %phy_wreg.i91 to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %phy_wreg.i91, align 4
  %inc.i92 = add i16 %112, 1
  store i16 %inc.i92, ptr %phy_wreg.i91, align 4
  %phy_wreg_limit.i93 = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 54
  %113 = ptrtoint ptr %phy_wreg_limit.i93 to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %phy_wreg_limit.i93, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i92, i16 %114)
  %cmp6.not.i94 = icmp ult i16 %inc.i92, %114
  br i1 %cmp6.not.i94, label %land.lhs.true.i95.if.end23_crit_edge, label %if.then.i99

land.lhs.true.i95.if.end23_crit_edge:             ; preds = %land.lhs.true.i95
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end23

if.then.i99:                                      ; preds = %land.lhs.true.i95
  call void @__sanitizer_cov_trace_pc() #17
  %115 = ptrtoint ptr %phy_wreg.i91 to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 0, ptr %phy_wreg.i91, align 4
  %116 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %106, align 8
  %ops.i15.i96 = getelementptr inbounds %struct.bcma_bus, ptr %117, i32 0, i32 2
  %118 = ptrtoint ptr %ops.i15.i96 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %ops.i15.i96, align 4
  %read16.i.i97 = getelementptr inbounds %struct.bcma_host_ops, ptr %119, i32 0, i32 1
  %120 = ptrtoint ptr %read16.i.i97 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %read16.i.i97, align 4
  %call.i.i98 = tail call zeroext i16 %121(ptr noundef %106, i16 noundef zeroext 992) #15
  br label %if.end23

if.else5:                                         ; preds = %if.then
  br i1 %cmp3, label %if.then9, label %if.else10

if.then9:                                         ; preds = %if.else5
  tail call void %12(ptr noundef %6, i16 noundef zeroext 1020, i32 noundef 134152335) #15
  %122 = ptrtoint ptr %d11core.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %d11core.i, align 4
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %123, align 8
  %hosttype.i104 = getelementptr inbounds %struct.bcma_bus, ptr %125, i32 0, i32 3
  %126 = ptrtoint ptr %hosttype.i104 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %hosttype.i104, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %cmp.i105 = icmp eq i32 %127, 0
  br i1 %cmp.i105, label %land.lhs.true.i110, label %if.then9.write_phy_reg.exit115_crit_edge

if.then9.write_phy_reg.exit115_crit_edge:         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #17
  br label %write_phy_reg.exit115

land.lhs.true.i110:                               ; preds = %if.then9
  %phy_wreg.i106 = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 53
  %128 = ptrtoint ptr %phy_wreg.i106 to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %phy_wreg.i106, align 4
  %inc.i107 = add i16 %129, 1
  store i16 %inc.i107, ptr %phy_wreg.i106, align 4
  %phy_wreg_limit.i108 = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 54
  %130 = ptrtoint ptr %phy_wreg_limit.i108 to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %phy_wreg_limit.i108, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i107, i16 %131)
  %cmp6.not.i109 = icmp ult i16 %inc.i107, %131
  br i1 %cmp6.not.i109, label %land.lhs.true.i110.write_phy_reg.exit115_crit_edge, label %if.then.i114

land.lhs.true.i110.write_phy_reg.exit115_crit_edge: ; preds = %land.lhs.true.i110
  call void @__sanitizer_cov_trace_pc() #17
  br label %write_phy_reg.exit115

if.then.i114:                                     ; preds = %land.lhs.true.i110
  call void @__sanitizer_cov_trace_pc() #17
  %132 = ptrtoint ptr %phy_wreg.i106 to i32
  call void @__asan_store2_noabort(i32 %132)
  store i16 0, ptr %phy_wreg.i106, align 4
  %133 = ptrtoint ptr %123 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %123, align 8
  %ops.i15.i111 = getelementptr inbounds %struct.bcma_bus, ptr %134, i32 0, i32 2
  %135 = ptrtoint ptr %ops.i15.i111 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %ops.i15.i111, align 4
  %read16.i.i112 = getelementptr inbounds %struct.bcma_host_ops, ptr %136, i32 0, i32 1
  %137 = ptrtoint ptr %read16.i.i112 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %read16.i.i112, align 4
  %call.i.i113 = tail call zeroext i16 %138(ptr noundef %123, i16 noundef zeroext 992) #15
  br label %write_phy_reg.exit115

write_phy_reg.exit115:                            ; preds = %if.then.i114, %land.lhs.true.i110.write_phy_reg.exit115_crit_edge, %if.then9.write_phy_reg.exit115_crit_edge
  %139 = ptrtoint ptr %d11core.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %d11core.i, align 4
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %140, align 8
  %ops.i.i117 = getelementptr inbounds %struct.bcma_bus, ptr %142, i32 0, i32 2
  %143 = ptrtoint ptr %ops.i.i117 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %ops.i.i117, align 4
  %write32.i.i118 = getelementptr inbounds %struct.bcma_host_ops, ptr %144, i32 0, i32 5
  %145 = ptrtoint ptr %write32.i.i118 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %write32.i.i118, align 4
  tail call void %146(ptr noundef %140, i16 noundef zeroext 1020, i32 noundef 16580774) #15
  %147 = ptrtoint ptr %d11core.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %d11core.i, align 4
  %149 = ptrtoint ptr %148 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %148, align 8
  %hosttype.i119 = getelementptr inbounds %struct.bcma_bus, ptr %150, i32 0, i32 3
  %151 = ptrtoint ptr %hosttype.i119 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %hosttype.i119, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %152)
  %cmp.i120 = icmp eq i32 %152, 0
  br i1 %cmp.i120, label %land.lhs.true.i125, label %write_phy_reg.exit115.write_phy_reg.exit130_crit_edge

write_phy_reg.exit115.write_phy_reg.exit130_crit_edge: ; preds = %write_phy_reg.exit115
  call void @__sanitizer_cov_trace_pc() #17
  br label %write_phy_reg.exit130

land.lhs.true.i125:                               ; preds = %write_phy_reg.exit115
  %phy_wreg.i121 = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 53
  %153 = ptrtoint ptr %phy_wreg.i121 to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %phy_wreg.i121, align 4
  %inc.i122 = add i16 %154, 1
  store i16 %inc.i122, ptr %phy_wreg.i121, align 4
  %phy_wreg_limit.i123 = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 54
  %155 = ptrtoint ptr %phy_wreg_limit.i123 to i32
  call void @__asan_load2_noabort(i32 %155)
  %156 = load i16, ptr %phy_wreg_limit.i123, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i122, i16 %156)
  %cmp6.not.i124 = icmp ult i16 %inc.i122, %156
  br i1 %cmp6.not.i124, label %land.lhs.true.i125.write_phy_reg.exit130_crit_edge, label %if.then.i129

land.lhs.true.i125.write_phy_reg.exit130_crit_edge: ; preds = %land.lhs.true.i125
  call void @__sanitizer_cov_trace_pc() #17
  br label %write_phy_reg.exit130

if.then.i129:                                     ; preds = %land.lhs.true.i125
  call void @__sanitizer_cov_trace_pc() #17
  %157 = ptrtoint ptr %phy_wreg.i121 to i32
  call void @__asan_store2_noabort(i32 %157)
  store i16 0, ptr %phy_wreg.i121, align 4
  %158 = ptrtoint ptr %148 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %148, align 8
  %ops.i15.i126 = getelementptr inbounds %struct.bcma_bus, ptr %159, i32 0, i32 2
  %160 = ptrtoint ptr %ops.i15.i126 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %ops.i15.i126, align 4
  %read16.i.i127 = getelementptr inbounds %struct.bcma_host_ops, ptr %161, i32 0, i32 1
  %162 = ptrtoint ptr %read16.i.i127 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %read16.i.i127, align 4
  %call.i.i128 = tail call zeroext i16 %163(ptr noundef %148, i16 noundef zeroext 992) #15
  br label %write_phy_reg.exit130

write_phy_reg.exit130:                            ; preds = %if.then.i129, %land.lhs.true.i125.write_phy_reg.exit130_crit_edge, %write_phy_reg.exit115.write_phy_reg.exit130_crit_edge
  %164 = ptrtoint ptr %d11core.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %d11core.i, align 4
  %166 = ptrtoint ptr %165 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %165, align 8
  %ops.i.i132 = getelementptr inbounds %struct.bcma_bus, ptr %167, i32 0, i32 2
  %168 = ptrtoint ptr %ops.i.i132 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %ops.i.i132, align 4
  %write32.i.i133 = getelementptr inbounds %struct.bcma_host_ops, ptr %169, i32 0, i32 5
  %170 = ptrtoint ptr %write32.i.i133 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %write32.i.i133, align 4
  tail call void %171(ptr noundef %165, i16 noundef zeroext 1020, i32 noundef 134152357) #15
  %172 = ptrtoint ptr %d11core.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %d11core.i, align 4
  %174 = ptrtoint ptr %173 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %173, align 8
  %hosttype.i134 = getelementptr inbounds %struct.bcma_bus, ptr %175, i32 0, i32 3
  %176 = ptrtoint ptr %hosttype.i134 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %hosttype.i134, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %177)
  %cmp.i135 = icmp eq i32 %177, 0
  br i1 %cmp.i135, label %land.lhs.true.i140, label %write_phy_reg.exit130.write_phy_reg.exit145_crit_edge

write_phy_reg.exit130.write_phy_reg.exit145_crit_edge: ; preds = %write_phy_reg.exit130
  call void @__sanitizer_cov_trace_pc() #17
  br label %write_phy_reg.exit145

land.lhs.true.i140:                               ; preds = %write_phy_reg.exit130
  %phy_wreg.i136 = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 53
  %178 = ptrtoint ptr %phy_wreg.i136 to i32
  call void @__asan_load2_noabort(i32 %178)
  %179 = load i16, ptr %phy_wreg.i136, align 4
  %inc.i137 = add i16 %179, 1
  store i16 %inc.i137, ptr %phy_wreg.i136, align 4
  %phy_wreg_limit.i138 = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 54
  %180 = ptrtoint ptr %phy_wreg_limit.i138 to i32
  call void @__asan_load2_noabort(i32 %180)
  %181 = load i16, ptr %phy_wreg_limit.i138, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i137, i16 %181)
  %cmp6.not.i139 = icmp ult i16 %inc.i137, %181
  br i1 %cmp6.not.i139, label %land.lhs.true.i140.write_phy_reg.exit145_crit_edge, label %if.then.i144

land.lhs.true.i140.write_phy_reg.exit145_crit_edge: ; preds = %land.lhs.true.i140
  call void @__sanitizer_cov_trace_pc() #17
  br label %write_phy_reg.exit145

if.then.i144:                                     ; preds = %land.lhs.true.i140
  call void @__sanitizer_cov_trace_pc() #17
  %182 = ptrtoint ptr %phy_wreg.i136 to i32
  call void @__asan_store2_noabort(i32 %182)
  store i16 0, ptr %phy_wreg.i136, align 4
  %183 = ptrtoint ptr %173 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %173, align 8
  %ops.i15.i141 = getelementptr inbounds %struct.bcma_bus, ptr %184, i32 0, i32 2
  %185 = ptrtoint ptr %ops.i15.i141 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %ops.i15.i141, align 4
  %read16.i.i142 = getelementptr inbounds %struct.bcma_host_ops, ptr %186, i32 0, i32 1
  %187 = ptrtoint ptr %read16.i.i142 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %read16.i.i142, align 4
  %call.i.i143 = tail call zeroext i16 %188(ptr noundef %173, i16 noundef zeroext 992) #15
  br label %write_phy_reg.exit145

write_phy_reg.exit145:                            ; preds = %if.then.i144, %land.lhs.true.i140.write_phy_reg.exit145_crit_edge, %write_phy_reg.exit130.write_phy_reg.exit145_crit_edge
  %189 = ptrtoint ptr %d11core.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %d11core.i, align 4
  %191 = ptrtoint ptr %190 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %190, align 8
  %ops.i.i147 = getelementptr inbounds %struct.bcma_bus, ptr %192, i32 0, i32 2
  %193 = ptrtoint ptr %ops.i.i147 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %ops.i.i147, align 4
  %write32.i.i148 = getelementptr inbounds %struct.bcma_host_ops, ptr %194, i32 0, i32 5
  %195 = ptrtoint ptr %write32.i.i148 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %write32.i.i148, align 4
  tail call void %196(ptr noundef %190, i16 noundef zeroext 1020, i32 noundef 16580775) #15
  %197 = ptrtoint ptr %d11core.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %d11core.i, align 4
  %199 = ptrtoint ptr %198 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %198, align 8
  %hosttype.i149 = getelementptr inbounds %struct.bcma_bus, ptr %200, i32 0, i32 3
  %201 = ptrtoint ptr %hosttype.i149 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %hosttype.i149, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %202)
  %cmp.i150 = icmp eq i32 %202, 0
  br i1 %cmp.i150, label %land.lhs.true.i155, label %write_phy_reg.exit145.if.end23_crit_edge

write_phy_reg.exit145.if.end23_crit_edge:         ; preds = %write_phy_reg.exit145
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end23

land.lhs.true.i155:                               ; preds = %write_phy_reg.exit145
  %phy_wreg.i151 = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 53
  %203 = ptrtoint ptr %phy_wreg.i151 to i32
  call void @__asan_load2_noabort(i32 %203)
  %204 = load i16, ptr %phy_wreg.i151, align 4
  %inc.i152 = add i16 %204, 1
  store i16 %inc.i152, ptr %phy_wreg.i151, align 4
  %phy_wreg_limit.i153 = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 54
  %205 = ptrtoint ptr %phy_wreg_limit.i153 to i32
  call void @__asan_load2_noabort(i32 %205)
  %206 = load i16, ptr %phy_wreg_limit.i153, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i152, i16 %206)
  %cmp6.not.i154 = icmp ult i16 %inc.i152, %206
  br i1 %cmp6.not.i154, label %land.lhs.true.i155.if.end23_crit_edge, label %if.then.i159

land.lhs.true.i155.if.end23_crit_edge:            ; preds = %land.lhs.true.i155
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end23

if.then.i159:                                     ; preds = %land.lhs.true.i155
  call void @__sanitizer_cov_trace_pc() #17
  %207 = ptrtoint ptr %phy_wreg.i151 to i32
  call void @__asan_store2_noabort(i32 %207)
  store i16 0, ptr %phy_wreg.i151, align 4
  %208 = ptrtoint ptr %198 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %198, align 8
  %ops.i15.i156 = getelementptr inbounds %struct.bcma_bus, ptr %209, i32 0, i32 2
  %210 = ptrtoint ptr %ops.i15.i156 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %ops.i15.i156, align 4
  %read16.i.i157 = getelementptr inbounds %struct.bcma_host_ops, ptr %211, i32 0, i32 1
  %212 = ptrtoint ptr %read16.i.i157 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %read16.i.i157, align 4
  %call.i.i158 = tail call zeroext i16 %213(ptr noundef %198, i16 noundef zeroext 992) #15
  br label %if.end23

if.else10:                                        ; preds = %if.else5
  tail call void %12(ptr noundef %6, i16 noundef zeroext 1020, i32 noundef 2147418277) #15
  %214 = ptrtoint ptr %d11core.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %d11core.i, align 4
  %216 = ptrtoint ptr %215 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %215, align 8
  %hosttype.i164 = getelementptr inbounds %struct.bcma_bus, ptr %217, i32 0, i32 3
  %218 = ptrtoint ptr %hosttype.i164 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %hosttype.i164, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %219)
  %cmp.i165 = icmp eq i32 %219, 0
  br i1 %cmp.i165, label %land.lhs.true.i170, label %if.else10.if.end23_crit_edge

if.else10.if.end23_crit_edge:                     ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end23

land.lhs.true.i170:                               ; preds = %if.else10
  %phy_wreg.i166 = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 53
  %220 = ptrtoint ptr %phy_wreg.i166 to i32
  call void @__asan_load2_noabort(i32 %220)
  %221 = load i16, ptr %phy_wreg.i166, align 4
  %inc.i167 = add i16 %221, 1
  store i16 %inc.i167, ptr %phy_wreg.i166, align 4
  %phy_wreg_limit.i168 = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 54
  %222 = ptrtoint ptr %phy_wreg_limit.i168 to i32
  call void @__asan_load2_noabort(i32 %222)
  %223 = load i16, ptr %phy_wreg_limit.i168, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i167, i16 %223)
  %cmp6.not.i169 = icmp ult i16 %inc.i167, %223
  br i1 %cmp6.not.i169, label %land.lhs.true.i170.if.end23_crit_edge, label %if.then.i174

land.lhs.true.i170.if.end23_crit_edge:            ; preds = %land.lhs.true.i170
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end23

if.then.i174:                                     ; preds = %land.lhs.true.i170
  call void @__sanitizer_cov_trace_pc() #17
  %224 = ptrtoint ptr %phy_wreg.i166 to i32
  call void @__asan_store2_noabort(i32 %224)
  store i16 0, ptr %phy_wreg.i166, align 4
  %225 = ptrtoint ptr %215 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %215, align 8
  %ops.i15.i171 = getelementptr inbounds %struct.bcma_bus, ptr %226, i32 0, i32 2
  %227 = ptrtoint ptr %ops.i15.i171 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %ops.i15.i171, align 4
  %read16.i.i172 = getelementptr inbounds %struct.bcma_host_ops, ptr %228, i32 0, i32 1
  %229 = ptrtoint ptr %read16.i.i172 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %read16.i.i172, align 4
  %call.i.i173 = tail call zeroext i16 %230(ptr noundef %215, i16 noundef zeroext 992) #15
  br label %if.end23

if.then17:                                        ; preds = %entry
  %d11core.i176 = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 5
  %231 = ptrtoint ptr %d11core.i176 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %d11core.i176, align 4
  %233 = ptrtoint ptr %232 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %232, align 8
  %ops.i.i177 = getelementptr inbounds %struct.bcma_bus, ptr %234, i32 0, i32 2
  %235 = ptrtoint ptr %ops.i.i177 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %ops.i.i177, align 4
  %write16.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %236, i32 0, i32 4
  %237 = ptrtoint ptr %write16.i.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %write16.i.i, align 4
  br i1 %on, label %if.then19, label %if.else20

if.then19:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #17
  tail call void %238(ptr noundef %232, i16 noundef zeroext 1020, i16 noundef zeroext 1083) #15
  %239 = ptrtoint ptr %d11core.i176 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %d11core.i176, align 4
  %241 = ptrtoint ptr %240 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %240, align 8
  %ops.i.i.i = getelementptr inbounds %struct.bcma_bus, ptr %242, i32 0, i32 2
  %243 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %ops.i.i.i, align 4
  %read16.i.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %244, i32 0, i32 1
  %245 = ptrtoint ptr %read16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %read16.i.i.i, align 4
  %call.i.i.i = tail call zeroext i16 %246(ptr noundef %240, i16 noundef zeroext 1022) #15
  %and3.i.i = and i16 %call.i.i.i, -8
  %247 = ptrtoint ptr %240 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %240, align 8
  %ops.i1.i.i = getelementptr inbounds %struct.bcma_bus, ptr %248, i32 0, i32 2
  %249 = ptrtoint ptr %ops.i1.i.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %ops.i1.i.i, align 4
  %write16.i.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %250, i32 0, i32 4
  %251 = ptrtoint ptr %write16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %write16.i.i.i, align 4
  tail call void %252(ptr noundef %240, i16 noundef zeroext 1022, i16 noundef zeroext %and3.i.i) #15
  %phy_wreg.i178 = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 53
  %253 = ptrtoint ptr %phy_wreg.i178 to i32
  call void @__asan_store2_noabort(i32 %253)
  store i16 0, ptr %phy_wreg.i178, align 4
  br label %if.end23

if.else20:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #17
  tail call void %238(ptr noundef %232, i16 noundef zeroext 1020, i16 noundef zeroext 1084) #15
  %254 = ptrtoint ptr %d11core.i176 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %d11core.i176, align 4
  %256 = ptrtoint ptr %255 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %255, align 8
  %ops.i.i.i182 = getelementptr inbounds %struct.bcma_bus, ptr %257, i32 0, i32 2
  %258 = ptrtoint ptr %ops.i.i.i182 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %ops.i.i.i182, align 4
  %read16.i.i.i183 = getelementptr inbounds %struct.bcma_host_ops, ptr %259, i32 0, i32 1
  %260 = ptrtoint ptr %read16.i.i.i183 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %read16.i.i.i183, align 4
  %call.i.i.i184 = tail call zeroext i16 %261(ptr noundef %255, i16 noundef zeroext 1022) #15
  %or3.i.i = or i16 %call.i.i.i184, 7
  %262 = ptrtoint ptr %255 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %255, align 8
  %ops.i1.i.i185 = getelementptr inbounds %struct.bcma_bus, ptr %263, i32 0, i32 2
  %264 = ptrtoint ptr %ops.i1.i.i185 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %ops.i1.i.i185, align 4
  %write16.i.i.i186 = getelementptr inbounds %struct.bcma_host_ops, ptr %265, i32 0, i32 4
  %266 = ptrtoint ptr %write16.i.i.i186 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %write16.i.i.i186, align 4
  tail call void %267(ptr noundef %255, i16 noundef zeroext 1022, i16 noundef zeroext %or3.i.i) #15
  %phy_wreg.i187 = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 53
  %268 = ptrtoint ptr %phy_wreg.i187 to i32
  call void @__asan_store2_noabort(i32 %268)
  store i16 0, ptr %phy_wreg.i187, align 4
  %269 = ptrtoint ptr %d11core.i176 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %d11core.i176, align 4
  %271 = ptrtoint ptr %270 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %270, align 8
  %ops.i.i189 = getelementptr inbounds %struct.bcma_bus, ptr %272, i32 0, i32 2
  %273 = ptrtoint ptr %ops.i.i189 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %ops.i.i189, align 4
  %write16.i.i190 = getelementptr inbounds %struct.bcma_host_ops, ptr %274, i32 0, i32 4
  %275 = ptrtoint ptr %write16.i.i190 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %write16.i.i190, align 4
  tail call void %276(ptr noundef %270, i16 noundef zeroext 1020, i16 noundef zeroext 1083) #15
  %277 = ptrtoint ptr %d11core.i176 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %d11core.i176, align 4
  %279 = ptrtoint ptr %278 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %278, align 8
  %ops.i.i.i191 = getelementptr inbounds %struct.bcma_bus, ptr %280, i32 0, i32 2
  %281 = ptrtoint ptr %ops.i.i.i191 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %ops.i.i.i191, align 4
  %read16.i.i.i192 = getelementptr inbounds %struct.bcma_host_ops, ptr %282, i32 0, i32 1
  %283 = ptrtoint ptr %read16.i.i.i192 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %read16.i.i.i192, align 4
  %call.i.i.i193 = tail call zeroext i16 %284(ptr noundef %278, i16 noundef zeroext 1022) #15
  %or3.i.i194 = or i16 %call.i.i.i193, 7
  %285 = ptrtoint ptr %278 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %278, align 8
  %ops.i1.i.i195 = getelementptr inbounds %struct.bcma_bus, ptr %286, i32 0, i32 2
  %287 = ptrtoint ptr %ops.i1.i.i195 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %ops.i1.i.i195, align 4
  %write16.i.i.i196 = getelementptr inbounds %struct.bcma_host_ops, ptr %288, i32 0, i32 4
  %289 = ptrtoint ptr %write16.i.i.i196 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %write16.i.i.i196, align 4
  tail call void %290(ptr noundef %278, i16 noundef zeroext 1022, i16 noundef zeroext %or3.i.i194) #15
  %291 = ptrtoint ptr %phy_wreg.i187 to i32
  call void @__asan_store2_noabort(i32 %291)
  store i16 0, ptr %phy_wreg.i187, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.else20, %if.then19, %if.then.i174, %land.lhs.true.i170.if.end23_crit_edge, %if.else10.if.end23_crit_edge, %if.then.i159, %land.lhs.true.i155.if.end23_crit_edge, %write_phy_reg.exit145.if.end23_crit_edge, %if.then.i99, %land.lhs.true.i95.if.end23_crit_edge, %if.else.if.end23_crit_edge, %if.then.i84, %land.lhs.true.i80.if.end23_crit_edge, %write_phy_reg.exit70.if.end23_crit_edge, %entry.if.end23_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wlc_phy_switch_radio(ptr noundef %pih, i1 noundef zeroext %on) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %d11core = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 5
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
  %call.i = tail call i32 %7(ptr noundef %1, i16 noundef zeroext 288) #15
  %pubpi = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 7
  %8 = ptrtoint ptr %pubpi to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pubpi, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %9, label %entry.if.end9_crit_edge [
    i32 4, label %if.then
    i32 8, label %if.then4
  ]

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @wlc_phy_switch_radio_nphy(ptr noundef %pih, i1 noundef zeroext %on) #15
  br label %if.end9

if.then4:                                         ; preds = %entry
  %11 = ptrtoint ptr %d11core to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %d11core, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 8
  %ops.i.i = getelementptr inbounds %struct.bcma_bus, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops.i.i, align 4
  %write16.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %write16.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write16.i.i, align 4
  br i1 %on, label %if.then6, label %if.else7

if.then6:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #17
  tail call void %18(ptr noundef %12, i16 noundef zeroext 1020, i16 noundef zeroext 1100) #15
  %19 = ptrtoint ptr %d11core to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %d11core, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 8
  %ops.i.i.i = getelementptr inbounds %struct.bcma_bus, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops.i.i.i, align 4
  %read16.i.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %read16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %read16.i.i.i, align 4
  %call.i.i.i = tail call zeroext i16 %26(ptr noundef %20, i16 noundef zeroext 1022) #15
  %and3.i.i = and i16 %call.i.i.i, -7937
  %27 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %20, align 8
  %ops.i1.i.i = getelementptr inbounds %struct.bcma_bus, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %ops.i1.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ops.i1.i.i, align 4
  %write16.i.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %write16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %write16.i.i.i, align 4
  tail call void %32(ptr noundef %20, i16 noundef zeroext 1022, i16 noundef zeroext %and3.i.i) #15
  %phy_wreg.i = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 53
  %33 = ptrtoint ptr %phy_wreg.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %phy_wreg.i, align 4
  %34 = ptrtoint ptr %d11core to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %d11core, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 8
  %ops.i.i25 = getelementptr inbounds %struct.bcma_bus, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %ops.i.i25 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ops.i.i25, align 4
  %write16.i.i26 = getelementptr inbounds %struct.bcma_host_ops, ptr %39, i32 0, i32 4
  %40 = ptrtoint ptr %write16.i.i26 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write16.i.i26, align 4
  tail call void %41(ptr noundef %35, i16 noundef zeroext 1020, i16 noundef zeroext 1200) #15
  %42 = ptrtoint ptr %d11core to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %d11core, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 8
  %ops.i.i.i27 = getelementptr inbounds %struct.bcma_bus, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %ops.i.i.i27 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ops.i.i.i27, align 4
  %read16.i.i.i28 = getelementptr inbounds %struct.bcma_host_ops, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %read16.i.i.i28 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %read16.i.i.i28, align 4
  %call.i.i.i29 = tail call zeroext i16 %49(ptr noundef %43, i16 noundef zeroext 1022) #15
  %and3.i.i30 = and i16 %call.i.i.i29, -2057
  %50 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %43, align 8
  %ops.i1.i.i31 = getelementptr inbounds %struct.bcma_bus, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %ops.i1.i.i31 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ops.i1.i.i31, align 4
  %write16.i.i.i32 = getelementptr inbounds %struct.bcma_host_ops, ptr %53, i32 0, i32 4
  %54 = ptrtoint ptr %write16.i.i.i32 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %write16.i.i.i32, align 4
  tail call void %55(ptr noundef %43, i16 noundef zeroext 1022, i16 noundef zeroext %and3.i.i30) #15
  %56 = ptrtoint ptr %phy_wreg.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 0, ptr %phy_wreg.i, align 4
  %57 = ptrtoint ptr %d11core to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %d11core, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 8
  %ops.i.i35 = getelementptr inbounds %struct.bcma_bus, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %ops.i.i35 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ops.i.i35, align 4
  %write16.i.i36 = getelementptr inbounds %struct.bcma_host_ops, ptr %62, i32 0, i32 4
  %63 = ptrtoint ptr %write16.i.i36 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %write16.i.i36, align 4
  tail call void %64(ptr noundef %58, i16 noundef zeroext 1020, i16 noundef zeroext 1273) #15
  %65 = ptrtoint ptr %d11core to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %d11core, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %66, align 8
  %ops.i.i.i37 = getelementptr inbounds %struct.bcma_bus, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %ops.i.i.i37 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ops.i.i.i37, align 4
  %read16.i.i.i38 = getelementptr inbounds %struct.bcma_host_ops, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %read16.i.i.i38 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %read16.i.i.i38, align 4
  %call.i.i.i39 = tail call zeroext i16 %72(ptr noundef %66, i16 noundef zeroext 1022) #15
  %and3.i.i40 = and i16 %call.i.i.i39, -9
  %73 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %66, align 8
  %ops.i1.i.i41 = getelementptr inbounds %struct.bcma_bus, ptr %74, i32 0, i32 2
  %75 = ptrtoint ptr %ops.i1.i.i41 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ops.i1.i.i41, align 4
  %write16.i.i.i42 = getelementptr inbounds %struct.bcma_host_ops, ptr %76, i32 0, i32 4
  %77 = ptrtoint ptr %write16.i.i.i42 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %write16.i.i.i42, align 4
  tail call void %78(ptr noundef %66, i16 noundef zeroext 1022, i16 noundef zeroext %and3.i.i40) #15
  %79 = ptrtoint ptr %phy_wreg.i to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 0, ptr %phy_wreg.i, align 4
  br label %if.end9

if.else7:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #17
  tail call void %18(ptr noundef %12, i16 noundef zeroext 1020, i16 noundef zeroext 1101) #15
  %80 = ptrtoint ptr %d11core to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %d11core, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %81, align 8
  %ops.i.i.i47 = getelementptr inbounds %struct.bcma_bus, ptr %83, i32 0, i32 2
  %84 = ptrtoint ptr %ops.i.i.i47 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ops.i.i.i47, align 4
  %read16.i.i.i48 = getelementptr inbounds %struct.bcma_host_ops, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %read16.i.i.i48 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %read16.i.i.i48, align 4
  %call.i.i.i49 = tail call zeroext i16 %87(ptr noundef %81, i16 noundef zeroext 1022) #15
  %and3.i.i50 = and i16 %call.i.i.i49, -31745
  %88 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %81, align 8
  %ops.i1.i.i51 = getelementptr inbounds %struct.bcma_bus, ptr %89, i32 0, i32 2
  %90 = ptrtoint ptr %ops.i1.i.i51 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %ops.i1.i.i51, align 4
  %write16.i.i.i52 = getelementptr inbounds %struct.bcma_host_ops, ptr %91, i32 0, i32 4
  %92 = ptrtoint ptr %write16.i.i.i52 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %write16.i.i.i52, align 4
  tail call void %93(ptr noundef %81, i16 noundef zeroext 1022, i16 noundef zeroext %and3.i.i50) #15
  %phy_wreg.i53 = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 53
  %94 = ptrtoint ptr %phy_wreg.i53 to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 0, ptr %phy_wreg.i53, align 4
  %95 = ptrtoint ptr %d11core to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %d11core, align 4
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %96, align 8
  %ops.i.i55 = getelementptr inbounds %struct.bcma_bus, ptr %98, i32 0, i32 2
  %99 = ptrtoint ptr %ops.i.i55 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %ops.i.i55, align 4
  %write16.i.i56 = getelementptr inbounds %struct.bcma_host_ops, ptr %100, i32 0, i32 4
  %101 = ptrtoint ptr %write16.i.i56 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %write16.i.i56, align 4
  tail call void %102(ptr noundef %96, i16 noundef zeroext 1020, i16 noundef zeroext 1100) #15
  %103 = ptrtoint ptr %d11core to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %d11core, align 4
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %104, align 8
  %ops.i.i.i57 = getelementptr inbounds %struct.bcma_bus, ptr %106, i32 0, i32 2
  %107 = ptrtoint ptr %ops.i.i.i57 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %ops.i.i.i57, align 4
  %read16.i.i.i58 = getelementptr inbounds %struct.bcma_host_ops, ptr %108, i32 0, i32 1
  %109 = ptrtoint ptr %read16.i.i.i58 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %read16.i.i.i58, align 4
  %call.i.i.i59 = tail call zeroext i16 %110(ptr noundef %104, i16 noundef zeroext 1022) #15
  %or3.i.i = or i16 %call.i.i.i59, 7936
  %111 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %104, align 8
  %ops.i1.i.i60 = getelementptr inbounds %struct.bcma_bus, ptr %112, i32 0, i32 2
  %113 = ptrtoint ptr %ops.i1.i.i60 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %ops.i1.i.i60, align 4
  %write16.i.i.i61 = getelementptr inbounds %struct.bcma_host_ops, ptr %114, i32 0, i32 4
  %115 = ptrtoint ptr %write16.i.i.i61 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %write16.i.i.i61, align 4
  tail call void %116(ptr noundef %104, i16 noundef zeroext 1022, i16 noundef zeroext %or3.i.i) #15
  %117 = ptrtoint ptr %phy_wreg.i53 to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 0, ptr %phy_wreg.i53, align 4
  %118 = ptrtoint ptr %d11core to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %d11core, align 4
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %119, align 8
  %ops.i.i64 = getelementptr inbounds %struct.bcma_bus, ptr %121, i32 0, i32 2
  %122 = ptrtoint ptr %ops.i.i64 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %ops.i.i64, align 4
  %write16.i.i65 = getelementptr inbounds %struct.bcma_host_ops, ptr %123, i32 0, i32 4
  %124 = ptrtoint ptr %write16.i.i65 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %write16.i.i65, align 4
  tail call void %125(ptr noundef %119, i16 noundef zeroext 1020, i16 noundef zeroext 1207) #15
  %126 = ptrtoint ptr %d11core to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %d11core, align 4
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %127, align 8
  %ops.i.i.i66 = getelementptr inbounds %struct.bcma_bus, ptr %129, i32 0, i32 2
  %130 = ptrtoint ptr %ops.i.i.i66 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %ops.i.i.i66, align 4
  %read16.i.i.i67 = getelementptr inbounds %struct.bcma_host_ops, ptr %131, i32 0, i32 1
  %132 = ptrtoint ptr %read16.i.i.i67 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %read16.i.i.i67, align 4
  %call.i.i.i68 = tail call zeroext i16 %133(ptr noundef %127, i16 noundef zeroext 1022) #15
  %and3.i.i69 = and i16 %call.i.i.i68, -32513
  %134 = ptrtoint ptr %127 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %127, align 8
  %ops.i1.i.i70 = getelementptr inbounds %struct.bcma_bus, ptr %135, i32 0, i32 2
  %136 = ptrtoint ptr %ops.i1.i.i70 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %ops.i1.i.i70, align 4
  %write16.i.i.i71 = getelementptr inbounds %struct.bcma_host_ops, ptr %137, i32 0, i32 4
  %138 = ptrtoint ptr %write16.i.i.i71 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %write16.i.i.i71, align 4
  tail call void %139(ptr noundef %127, i16 noundef zeroext 1022, i16 noundef zeroext %and3.i.i69) #15
  %140 = ptrtoint ptr %phy_wreg.i53 to i32
  call void @__asan_store2_noabort(i32 %140)
  store i16 0, ptr %phy_wreg.i53, align 4
  %141 = ptrtoint ptr %d11core to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %d11core, align 4
  %143 = ptrtoint ptr %142 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %142, align 8
  %ops.i.i74 = getelementptr inbounds %struct.bcma_bus, ptr %144, i32 0, i32 2
  %145 = ptrtoint ptr %ops.i.i74 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %ops.i.i74, align 4
  %write16.i.i75 = getelementptr inbounds %struct.bcma_host_ops, ptr %146, i32 0, i32 4
  %147 = ptrtoint ptr %write16.i.i75 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %write16.i.i75, align 4
  tail call void %148(ptr noundef %142, i16 noundef zeroext 1020, i16 noundef zeroext 1201) #15
  %149 = ptrtoint ptr %d11core to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %d11core, align 4
  %151 = ptrtoint ptr %150 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %150, align 8
  %ops.i.i.i76 = getelementptr inbounds %struct.bcma_bus, ptr %152, i32 0, i32 2
  %153 = ptrtoint ptr %ops.i.i.i76 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %ops.i.i.i76, align 4
  %read16.i.i.i77 = getelementptr inbounds %struct.bcma_host_ops, ptr %154, i32 0, i32 1
  %155 = ptrtoint ptr %read16.i.i.i77 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %read16.i.i.i77, align 4
  %call.i.i.i78 = tail call zeroext i16 %156(ptr noundef %150, i16 noundef zeroext 1022) #15
  %and3.i.i79 = and i16 %call.i.i.i78, -8193
  %157 = ptrtoint ptr %150 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %150, align 8
  %ops.i1.i.i80 = getelementptr inbounds %struct.bcma_bus, ptr %158, i32 0, i32 2
  %159 = ptrtoint ptr %ops.i1.i.i80 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %ops.i1.i.i80, align 4
  %write16.i.i.i81 = getelementptr inbounds %struct.bcma_host_ops, ptr %160, i32 0, i32 4
  %161 = ptrtoint ptr %write16.i.i.i81 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %write16.i.i.i81, align 4
  tail call void %162(ptr noundef %150, i16 noundef zeroext 1022, i16 noundef zeroext %and3.i.i79) #15
  %163 = ptrtoint ptr %phy_wreg.i53 to i32
  call void @__asan_store2_noabort(i32 %163)
  store i16 0, ptr %phy_wreg.i53, align 4
  %164 = ptrtoint ptr %d11core to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %d11core, align 4
  %166 = ptrtoint ptr %165 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %165, align 8
  %ops.i.i84 = getelementptr inbounds %struct.bcma_bus, ptr %167, i32 0, i32 2
  %168 = ptrtoint ptr %ops.i.i84 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %ops.i.i84, align 4
  %write16.i.i85 = getelementptr inbounds %struct.bcma_host_ops, ptr %169, i32 0, i32 4
  %170 = ptrtoint ptr %write16.i.i85 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %write16.i.i85, align 4
  tail call void %171(ptr noundef %165, i16 noundef zeroext 1020, i16 noundef zeroext 1200) #15
  %172 = ptrtoint ptr %d11core to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %d11core, align 4
  %174 = ptrtoint ptr %173 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %173, align 8
  %ops.i.i.i86 = getelementptr inbounds %struct.bcma_bus, ptr %175, i32 0, i32 2
  %176 = ptrtoint ptr %ops.i.i.i86 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %ops.i.i.i86, align 4
  %read16.i.i.i87 = getelementptr inbounds %struct.bcma_host_ops, ptr %177, i32 0, i32 1
  %178 = ptrtoint ptr %read16.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %read16.i.i.i87, align 4
  %call.i.i.i88 = tail call zeroext i16 %179(ptr noundef %173, i16 noundef zeroext 1022) #15
  %or3.i.i89 = or i16 %call.i.i.i88, 2056
  %180 = ptrtoint ptr %173 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %173, align 8
  %ops.i1.i.i90 = getelementptr inbounds %struct.bcma_bus, ptr %181, i32 0, i32 2
  %182 = ptrtoint ptr %ops.i1.i.i90 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %ops.i1.i.i90, align 4
  %write16.i.i.i91 = getelementptr inbounds %struct.bcma_host_ops, ptr %183, i32 0, i32 4
  %184 = ptrtoint ptr %write16.i.i.i91 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %write16.i.i.i91, align 4
  tail call void %185(ptr noundef %173, i16 noundef zeroext 1022, i16 noundef zeroext %or3.i.i89) #15
  %186 = ptrtoint ptr %phy_wreg.i53 to i32
  call void @__asan_store2_noabort(i32 %186)
  store i16 0, ptr %phy_wreg.i53, align 4
  %187 = ptrtoint ptr %d11core to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %d11core, align 4
  %189 = ptrtoint ptr %188 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %188, align 8
  %ops.i.i94 = getelementptr inbounds %struct.bcma_bus, ptr %190, i32 0, i32 2
  %191 = ptrtoint ptr %ops.i.i94 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %ops.i.i94, align 4
  %write16.i.i95 = getelementptr inbounds %struct.bcma_host_ops, ptr %192, i32 0, i32 4
  %193 = ptrtoint ptr %write16.i.i95 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %write16.i.i95, align 4
  tail call void %194(ptr noundef %188, i16 noundef zeroext 1020, i16 noundef zeroext 1274) #15
  %195 = ptrtoint ptr %d11core to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %d11core, align 4
  %197 = ptrtoint ptr %196 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %196, align 8
  %ops.i.i.i96 = getelementptr inbounds %struct.bcma_bus, ptr %198, i32 0, i32 2
  %199 = ptrtoint ptr %ops.i.i.i96 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %ops.i.i.i96, align 4
  %read16.i.i.i97 = getelementptr inbounds %struct.bcma_host_ops, ptr %200, i32 0, i32 1
  %201 = ptrtoint ptr %read16.i.i.i97 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %read16.i.i.i97, align 4
  %call.i.i.i98 = tail call zeroext i16 %202(ptr noundef %196, i16 noundef zeroext 1022) #15
  %and3.i.i99 = and i16 %call.i.i.i98, -9
  %203 = ptrtoint ptr %196 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %196, align 8
  %ops.i1.i.i100 = getelementptr inbounds %struct.bcma_bus, ptr %204, i32 0, i32 2
  %205 = ptrtoint ptr %ops.i1.i.i100 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %ops.i1.i.i100, align 4
  %write16.i.i.i101 = getelementptr inbounds %struct.bcma_host_ops, ptr %206, i32 0, i32 4
  %207 = ptrtoint ptr %write16.i.i.i101 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %write16.i.i.i101, align 4
  tail call void %208(ptr noundef %196, i16 noundef zeroext 1022, i16 noundef zeroext %and3.i.i99) #15
  %209 = ptrtoint ptr %phy_wreg.i53 to i32
  call void @__asan_store2_noabort(i32 %209)
  store i16 0, ptr %phy_wreg.i53, align 4
  %210 = ptrtoint ptr %d11core to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %d11core, align 4
  %212 = ptrtoint ptr %211 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %211, align 8
  %ops.i.i104 = getelementptr inbounds %struct.bcma_bus, ptr %213, i32 0, i32 2
  %214 = ptrtoint ptr %ops.i.i104 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %ops.i.i104, align 4
  %write16.i.i105 = getelementptr inbounds %struct.bcma_host_ops, ptr %215, i32 0, i32 4
  %216 = ptrtoint ptr %write16.i.i105 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %write16.i.i105, align 4
  tail call void %217(ptr noundef %211, i16 noundef zeroext 1020, i16 noundef zeroext 1273) #15
  %218 = ptrtoint ptr %d11core to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %d11core, align 4
  %220 = ptrtoint ptr %219 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %219, align 8
  %ops.i.i.i106 = getelementptr inbounds %struct.bcma_bus, ptr %221, i32 0, i32 2
  %222 = ptrtoint ptr %ops.i.i.i106 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %ops.i.i.i106, align 4
  %read16.i.i.i107 = getelementptr inbounds %struct.bcma_host_ops, ptr %223, i32 0, i32 1
  %224 = ptrtoint ptr %read16.i.i.i107 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %read16.i.i.i107, align 4
  %call.i.i.i108 = tail call zeroext i16 %225(ptr noundef %219, i16 noundef zeroext 1022) #15
  %or3.i.i109 = or i16 %call.i.i.i108, 8
  %226 = ptrtoint ptr %219 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %219, align 8
  %ops.i1.i.i110 = getelementptr inbounds %struct.bcma_bus, ptr %227, i32 0, i32 2
  %228 = ptrtoint ptr %ops.i1.i.i110 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %ops.i1.i.i110, align 4
  %write16.i.i.i111 = getelementptr inbounds %struct.bcma_host_ops, ptr %229, i32 0, i32 4
  %230 = ptrtoint ptr %write16.i.i.i111 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %write16.i.i.i111, align 4
  tail call void %231(ptr noundef %219, i16 noundef zeroext 1022, i16 noundef zeroext %or3.i.i109) #15
  %232 = ptrtoint ptr %phy_wreg.i53 to i32
  call void @__asan_store2_noabort(i32 %232)
  store i16 0, ptr %phy_wreg.i53, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.else7, %if.then6, %if.then, %entry.if.end9_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @wlapi_init_timer(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wlc_phy_timercb_phycal(ptr noundef %pi) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %mphase_cal_phase_id = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 195
  %0 = ptrtoint ptr %mphase_cal_phase_id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mphase_cal_phase_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.not = icmp eq i8 %1, 0
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then:                                          ; preds = %entry
  %sh = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 1
  %2 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sh, align 4
  %up = getelementptr inbounds %struct.shared_phy, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %up to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %up, align 4, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %phycal_timer.i = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 204
  %6 = ptrtoint ptr %phycal_timer.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phycal_timer.i, align 4
  %call.i = tail call zeroext i1 @wlapi_del_timer(ptr noundef %7) #15
  %cal_type_override.i = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 194
  %8 = ptrtoint ptr %cal_type_override.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %cal_type_override.i, align 4
  %9 = ptrtoint ptr %mphase_cal_phase_id to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %mphase_cal_phase_id, align 1
  %mphase_txcal_cmdidx.i = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 196
  %10 = ptrtoint ptr %mphase_txcal_cmdidx.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %mphase_txcal_cmdidx.i, align 2
  br label %cleanup

if.end:                                           ; preds = %if.then
  %measure_hold = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 27
  %11 = ptrtoint ptr %measure_hold to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %measure_hold, align 4
  %13 = and i32 %12, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %15 = ptrtoint ptr %mphase_cal_phase_id to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %mphase_cal_phase_id, align 1
  %mphase_txcal_cmdidx.i20 = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 196
  %16 = ptrtoint ptr %mphase_txcal_cmdidx.i20 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %mphase_txcal_cmdidx.i20, align 2
  br label %if.end10

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @wlc_phy_cal_perical_nphy_run(ptr noundef %pi, i8 noundef zeroext 0) #15
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then9
  %delay.0 = phi i32 [ 1000, %if.then9 ], [ 5, %if.else ]
  %phycal_timer = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 204
  %17 = ptrtoint ptr %phycal_timer to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %phycal_timer, align 4
  tail call void @wlapi_add_timer(ptr noundef %18, i32 noundef %delay.0, i32 noundef 0) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then2, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @wlc_phy_attach_nphy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @wlc_phy_attach_lcnphy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wlc_phy_detach(ptr noundef %pih) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pih, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then:                                          ; preds = %entry
  %refcnt = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 20
  %0 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %refcnt, align 4
  %dec = add i32 %1, -1
  store i32 %dec, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool1.not = icmp eq i32 %dec, 0
  br i1 %tobool1.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %if.then
  %phycal_timer = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 204
  %2 = ptrtoint ptr %phycal_timer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phycal_timer, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %if.end.if.end7_crit_edge, label %if.then4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @wlapi_free_timer(ptr noundef nonnull %3) #15
  %4 = ptrtoint ptr %phycal_timer to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %phycal_timer, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  %sh = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 1
  %5 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sh, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %cmp = icmp eq ptr %8, %pih
  br i1 %cmp, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  %next = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 6
  %9 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %next, align 4
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %6, align 4
  br label %if.end20

if.else:                                          ; preds = %if.end7
  %next13 = getelementptr inbounds %struct.brcms_phy, ptr %8, i32 0, i32 6
  %12 = ptrtoint ptr %next13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %next13, align 4
  %cmp14 = icmp eq ptr %13, %pih
  br i1 %cmp14, label %if.then15, label %if.else.if.end20_crit_edge

if.else.if.end20_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20

if.then15:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %14 = ptrtoint ptr %next13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %next13, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then15, %if.else.if.end20_crit_edge, %if.then8
  %detach = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 2, i32 11
  %15 = ptrtoint ptr %detach to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %detach, align 4
  %tobool21.not = icmp eq ptr %16, null
  br i1 %tobool21.not, label %if.end20.if.end25_crit_edge, label %if.then22

if.end20.if.end25_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end25

if.then22:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #17
  tail call void %16(ptr noundef nonnull %pih) #15
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %if.end20.if.end25_crit_edge
  tail call void @kfree(ptr noundef nonnull %pih) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wlapi_free_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @wlc_phy_get_phyversion(ptr nocapture noundef readonly %pih, ptr nocapture noundef writeonly %phytype, ptr nocapture noundef writeonly %phyrev, ptr nocapture noundef writeonly %radioid, ptr nocapture noundef writeonly %radiover) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %pubpi = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 7
  %0 = ptrtoint ptr %pubpi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pubpi, align 4
  %conv = trunc i32 %1 to i16
  %2 = ptrtoint ptr %phytype to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv, ptr %phytype, align 2
  %phy_rev = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 7, i32 1
  %3 = ptrtoint ptr %phy_rev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %phy_rev, align 4
  %conv2 = trunc i32 %4 to i16
  %5 = ptrtoint ptr %phyrev to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv2, ptr %phyrev, align 2
  %radioid4 = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 7, i32 3
  %6 = ptrtoint ptr %radioid4 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %radioid4, align 2
  %8 = ptrtoint ptr %radioid to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %radioid, align 2
  %radiorev = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 7, i32 4
  %9 = ptrtoint ptr %radiorev to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %radiorev, align 4
  %conv6 = zext i8 %10 to i16
  %11 = ptrtoint ptr %radiover to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv6, ptr %radiover, align 2
  ret i1 true
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @wlc_phy_get_encore(ptr nocapture noundef readonly %pih) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %abgphy_encore = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %abgphy_encore to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %abgphy_encore, align 4, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool = icmp ne i8 %1, 0
  ret i1 %tobool
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @wlc_phy_get_coreflags(ptr nocapture noundef readonly %pih) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %coreflags = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 7, i32 6
  %0 = ptrtoint ptr %coreflags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %coreflags, align 4
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @wlc_phy_clk_bwbits(ptr noundef readonly %pih) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pih, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %pubpi = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 7
  %0 = ptrtoint ptr %pubpi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pubpi, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %1, label %land.lhs.true.if.end_crit_edge [
    i32 4, label %land.lhs.true.if.then_crit_edge
    i32 8, label %land.lhs.true.if.then_crit_edge11
  ]

land.lhs.true.if.then_crit_edge11:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %land.lhs.true.if.then_crit_edge, %land.lhs.true.if.then_crit_edge11
  %bw = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 14
  %3 = ptrtoint ptr %bw to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %bw, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %4)
  %switch.selectcmp = icmp eq i16 %4, 2048
  %switch.select = select i1 %switch.selectcmp, i32 64, i32 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 3072, i16 %4)
  %switch.selectcmp9 = icmp eq i16 %4, 3072
  %switch.select10 = select i1 %switch.selectcmp9, i32 128, i32 %switch.select
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %phy_bw_clkbits.0 = phi i32 [ 0, %entry.if.end_crit_edge ], [ 0, %land.lhs.true.if.end_crit_edge ], [ %switch.select10, %if.then ]
  ret i32 %phy_bw_clkbits.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @wlc_phy_por_inform(ptr nocapture noundef writeonly %ppi) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_init_por = getelementptr inbounds %struct.brcms_phy, ptr %ppi, i32 0, i32 16
  %0 = ptrtoint ptr %phy_init_por to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %phy_init_por, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wlc_phy_edcrs_lock(ptr nocapture noundef %pih, i1 noundef zeroext %lock) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %lock to i8
  %edcrs_threshold_lock = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 72
  %0 = ptrtoint ptr %edcrs_threshold_lock to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %frombool, ptr %edcrs_threshold_lock, align 1
  %d11core.i = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 5
  %1 = ptrtoint ptr %d11core.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %d11core.i, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %ops.i.i = getelementptr inbounds %struct.bcma_bus, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops.i.i, align 4
  %write32.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write32.i.i, align 4
  tail call void %8(ptr noundef %2, i16 noundef zeroext 1020, i32 noundef 74121772) #15
  %9 = ptrtoint ptr %d11core.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %d11core.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  %hosttype.i = getelementptr inbounds %struct.bcma_bus, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %hosttype.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hosttype.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i = icmp eq i32 %14, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.write_phy_reg.exit_crit_edge

entry.write_phy_reg.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %write_phy_reg.exit

land.lhs.true.i:                                  ; preds = %entry
  %phy_wreg.i = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 53
  %15 = ptrtoint ptr %phy_wreg.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %phy_wreg.i, align 4
  %inc.i = add i16 %16, 1
  store i16 %inc.i, ptr %phy_wreg.i, align 4
  %phy_wreg_limit.i = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 54
  %17 = ptrtoint ptr %phy_wreg_limit.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %phy_wreg_limit.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i, i16 %18)
  %cmp6.not.i = icmp ult i16 %inc.i, %18
  br i1 %cmp6.not.i, label %land.lhs.true.i.write_phy_reg.exit_crit_edge, label %if.then.i

land.lhs.true.i.write_phy_reg.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %write_phy_reg.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  %19 = ptrtoint ptr %phy_wreg.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %phy_wreg.i, align 4
  %20 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %10, align 8
  %ops.i15.i = getelementptr inbounds %struct.bcma_bus, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %ops.i15.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops.i15.i, align 4
  %read16.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %read16.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read16.i.i, align 4
  %call.i.i = tail call zeroext i16 %25(ptr noundef %10, i16 noundef zeroext 992) #15
  br label %write_phy_reg.exit

write_phy_reg.exit:                               ; preds = %if.then.i, %land.lhs.true.i.write_phy_reg.exit_crit_edge, %entry.write_phy_reg.exit_crit_edge
  %26 = ptrtoint ptr %d11core.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %d11core.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 8
  %ops.i.i7 = getelementptr inbounds %struct.bcma_bus, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %ops.i.i7 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ops.i.i7, align 4
  %write32.i.i8 = getelementptr inbounds %struct.bcma_host_ops, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %write32.i.i8 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write32.i.i8, align 4
  tail call void %33(ptr noundef %27, i16 noundef zeroext 1020, i32 noundef 74121773) #15
  %34 = ptrtoint ptr %d11core.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %d11core.i, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 8
  %hosttype.i9 = getelementptr inbounds %struct.bcma_bus, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %hosttype.i9 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %hosttype.i9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp.i10 = icmp eq i32 %39, 0
  br i1 %cmp.i10, label %land.lhs.true.i15, label %write_phy_reg.exit.write_phy_reg.exit20_crit_edge

write_phy_reg.exit.write_phy_reg.exit20_crit_edge: ; preds = %write_phy_reg.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %write_phy_reg.exit20

land.lhs.true.i15:                                ; preds = %write_phy_reg.exit
  %phy_wreg.i11 = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 53
  %40 = ptrtoint ptr %phy_wreg.i11 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %phy_wreg.i11, align 4
  %inc.i12 = add i16 %41, 1
  store i16 %inc.i12, ptr %phy_wreg.i11, align 4
  %phy_wreg_limit.i13 = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 54
  %42 = ptrtoint ptr %phy_wreg_limit.i13 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %phy_wreg_limit.i13, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i12, i16 %43)
  %cmp6.not.i14 = icmp ult i16 %inc.i12, %43
  br i1 %cmp6.not.i14, label %land.lhs.true.i15.write_phy_reg.exit20_crit_edge, label %if.then.i19

land.lhs.true.i15.write_phy_reg.exit20_crit_edge: ; preds = %land.lhs.true.i15
  call void @__sanitizer_cov_trace_pc() #17
  br label %write_phy_reg.exit20

if.then.i19:                                      ; preds = %land.lhs.true.i15
  call void @__sanitizer_cov_trace_pc() #17
  %44 = ptrtoint ptr %phy_wreg.i11 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 0, ptr %phy_wreg.i11, align 4
  %45 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %35, align 8
  %ops.i15.i16 = getelementptr inbounds %struct.bcma_bus, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %ops.i15.i16 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ops.i15.i16, align 4
  %read16.i.i17 = getelementptr inbounds %struct.bcma_host_ops, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %read16.i.i17 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %read16.i.i17, align 4
  %call.i.i18 = tail call zeroext i16 %50(ptr noundef %35, i16 noundef zeroext 992) #15
  br label %write_phy_reg.exit20

write_phy_reg.exit20:                             ; preds = %if.then.i19, %land.lhs.true.i15.write_phy_reg.exit20_crit_edge, %write_phy_reg.exit.write_phy_reg.exit20_crit_edge
  %51 = ptrtoint ptr %d11core.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %d11core.i, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 8
  %ops.i.i22 = getelementptr inbounds %struct.bcma_bus, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %ops.i.i22 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ops.i.i22, align 4
  %write32.i.i23 = getelementptr inbounds %struct.bcma_host_ops, ptr %56, i32 0, i32 5
  %57 = ptrtoint ptr %write32.i.i23 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %write32.i.i23, align 4
  tail call void %58(ptr noundef %52, i16 noundef zeroext 1020, i32 noundef 62915118) #15
  %59 = ptrtoint ptr %d11core.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %d11core.i, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 8
  %hosttype.i24 = getelementptr inbounds %struct.bcma_bus, ptr %62, i32 0, i32 3
  %63 = ptrtoint ptr %hosttype.i24 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %hosttype.i24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp.i25 = icmp eq i32 %64, 0
  br i1 %cmp.i25, label %land.lhs.true.i30, label %write_phy_reg.exit20.write_phy_reg.exit35_crit_edge

write_phy_reg.exit20.write_phy_reg.exit35_crit_edge: ; preds = %write_phy_reg.exit20
  call void @__sanitizer_cov_trace_pc() #17
  br label %write_phy_reg.exit35

land.lhs.true.i30:                                ; preds = %write_phy_reg.exit20
  %phy_wreg.i26 = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 53
  %65 = ptrtoint ptr %phy_wreg.i26 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %phy_wreg.i26, align 4
  %inc.i27 = add i16 %66, 1
  store i16 %inc.i27, ptr %phy_wreg.i26, align 4
  %phy_wreg_limit.i28 = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 54
  %67 = ptrtoint ptr %phy_wreg_limit.i28 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %phy_wreg_limit.i28, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i27, i16 %68)
  %cmp6.not.i29 = icmp ult i16 %inc.i27, %68
  br i1 %cmp6.not.i29, label %land.lhs.true.i30.write_phy_reg.exit35_crit_edge, label %if.then.i34

land.lhs.true.i30.write_phy_reg.exit35_crit_edge: ; preds = %land.lhs.true.i30
  call void @__sanitizer_cov_trace_pc() #17
  br label %write_phy_reg.exit35

if.then.i34:                                      ; preds = %land.lhs.true.i30
  call void @__sanitizer_cov_trace_pc() #17
  %69 = ptrtoint ptr %phy_wreg.i26 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 0, ptr %phy_wreg.i26, align 4
  %70 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %60, align 8
  %ops.i15.i31 = getelementptr inbounds %struct.bcma_bus, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %ops.i15.i31 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ops.i15.i31, align 4
  %read16.i.i32 = getelementptr inbounds %struct.bcma_host_ops, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %read16.i.i32 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %read16.i.i32, align 4
  %call.i.i33 = tail call zeroext i16 %75(ptr noundef %60, i16 noundef zeroext 992) #15
  br label %write_phy_reg.exit35

write_phy_reg.exit35:                             ; preds = %if.then.i34, %land.lhs.true.i30.write_phy_reg.exit35_crit_edge, %write_phy_reg.exit20.write_phy_reg.exit35_crit_edge
  %76 = ptrtoint ptr %d11core.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %d11core.i, align 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %77, align 8
  %ops.i.i37 = getelementptr inbounds %struct.bcma_bus, ptr %79, i32 0, i32 2
  %80 = ptrtoint ptr %ops.i.i37 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ops.i.i37, align 4
  %write32.i.i38 = getelementptr inbounds %struct.bcma_host_ops, ptr %81, i32 0, i32 5
  %82 = ptrtoint ptr %write32.i.i38 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %write32.i.i38, align 4
  tail call void %83(ptr noundef %77, i16 noundef zeroext 1020, i32 noundef 62915119) #15
  %84 = ptrtoint ptr %d11core.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %d11core.i, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %85, align 8
  %hosttype.i39 = getelementptr inbounds %struct.bcma_bus, ptr %87, i32 0, i32 3
  %88 = ptrtoint ptr %hosttype.i39 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %hosttype.i39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %cmp.i40 = icmp eq i32 %89, 0
  br i1 %cmp.i40, label %land.lhs.true.i45, label %write_phy_reg.exit35.write_phy_reg.exit50_crit_edge

write_phy_reg.exit35.write_phy_reg.exit50_crit_edge: ; preds = %write_phy_reg.exit35
  call void @__sanitizer_cov_trace_pc() #17
  br label %write_phy_reg.exit50

land.lhs.true.i45:                                ; preds = %write_phy_reg.exit35
  %phy_wreg.i41 = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 53
  %90 = ptrtoint ptr %phy_wreg.i41 to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %phy_wreg.i41, align 4
  %inc.i42 = add i16 %91, 1
  store i16 %inc.i42, ptr %phy_wreg.i41, align 4
  %phy_wreg_limit.i43 = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 54
  %92 = ptrtoint ptr %phy_wreg_limit.i43 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %phy_wreg_limit.i43, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i42, i16 %93)
  %cmp6.not.i44 = icmp ult i16 %inc.i42, %93
  br i1 %cmp6.not.i44, label %land.lhs.true.i45.write_phy_reg.exit50_crit_edge, label %if.then.i49

land.lhs.true.i45.write_phy_reg.exit50_crit_edge: ; preds = %land.lhs.true.i45
  call void @__sanitizer_cov_trace_pc() #17
  br label %write_phy_reg.exit50

if.then.i49:                                      ; preds = %land.lhs.true.i45
  call void @__sanitizer_cov_trace_pc() #17
  %94 = ptrtoint ptr %phy_wreg.i41 to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 0, ptr %phy_wreg.i41, align 4
  %95 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %85, align 8
  %ops.i15.i46 = getelementptr inbounds %struct.bcma_bus, ptr %96, i32 0, i32 2
  %97 = ptrtoint ptr %ops.i15.i46 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %ops.i15.i46, align 4
  %read16.i.i47 = getelementptr inbounds %struct.bcma_host_ops, ptr %98, i32 0, i32 1
  %99 = ptrtoint ptr %read16.i.i47 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %read16.i.i47, align 4
  %call.i.i48 = tail call zeroext i16 %100(ptr noundef %85, i16 noundef zeroext 992) #15
  br label %write_phy_reg.exit50

write_phy_reg.exit50:                             ; preds = %if.then.i49, %land.lhs.true.i45.write_phy_reg.exit50_crit_edge, %write_phy_reg.exit35.write_phy_reg.exit50_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @wlc_phy_initcal_enable(ptr nocapture noundef writeonly %pih, i1 noundef zeroext %initcal) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %initcal to i8
  %do_initcal = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 8
  %0 = ptrtoint ptr %do_initcal to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %frombool, ptr %do_initcal, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @wlc_phy_hw_clk_state_upd(ptr noundef readonly %pih, i1 noundef zeroext %newstate) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %newstate to i8
  %tobool.not = icmp eq ptr %pih, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %sh = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 1
  %0 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sh, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  %clk = getelementptr inbounds %struct.shared_phy, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %frombool, ptr %clk, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @wlc_phy_hw_state_upd(ptr noundef readonly %pih, i1 noundef zeroext %newstate) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %newstate to i8
  %tobool.not = icmp eq ptr %pih, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %sh = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 1
  %0 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sh, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  %up = getelementptr inbounds %struct.shared_phy, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %up to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %frombool, ptr %up, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wlc_phy_init(ptr noundef %pih, i16 noundef zeroext %chanspec) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %init_in_progress = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 17
  %0 = ptrtoint ptr %init_in_progress to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %init_in_progress, align 4, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %init_in_progress to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %init_in_progress, align 4
  %radio_chanspec = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 12
  %3 = ptrtoint ptr %radio_chanspec to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %chanspec, ptr %radio_chanspec, align 4
  %d11core = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 5
  %4 = ptrtoint ptr %d11core to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d11core, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %ops.i = getelementptr inbounds %struct.bcma_bus, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  %read32.i = getelementptr inbounds %struct.bcma_host_ops, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read32.i, align 4
  %call.i = tail call i32 %11(ptr noundef %5, i16 noundef zeroext 288) #15
  %and = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end27, label %do.end, !prof !27

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 748, i32 noundef 9, ptr noundef nonnull @.str.2) #15
  br label %cleanup

if.end27:                                         ; preds = %if.end
  %measure_hold = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 27
  %12 = ptrtoint ptr %measure_hold to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %measure_hold, align 4
  %and28 = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.then30, label %if.end27.if.end32_crit_edge

if.end27.if.end32_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  %or = or i32 %13, 32
  %14 = ptrtoint ptr %measure_hold to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or, ptr %measure_hold, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.end27.if.end32_crit_edge
  %15 = ptrtoint ptr %d11core to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %d11core, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 8
  %ops.i130 = getelementptr inbounds %struct.bcma_bus, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %ops.i130 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i130, align 4
  %aread32.i = getelementptr inbounds %struct.bcma_host_ops, ptr %20, i32 0, i32 8
  %21 = ptrtoint ptr %aread32.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %aread32.i, align 4
  %call.i131 = tail call i32 %22(ptr noundef %16, i16 noundef zeroext 1280) #15
  %and36 = and i32 %call.i131, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %do.end55, label %if.end71, !prof !28

do.end55:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 755, i32 noundef 9, ptr noundef nonnull @.str.3) #15
  br label %cleanup

if.end71:                                         ; preds = %if.end32
  %pi_fptr = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 2
  %23 = ptrtoint ptr %pi_fptr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pi_fptr, align 4
  %cmp = icmp eq ptr %24, null
  br i1 %cmp, label %if.end71.cleanup_crit_edge, label %if.end73

if.end71.cleanup_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end73:                                         ; preds = %if.end71
  tail call void @wlc_phy_anacore(ptr noundef %pih, i1 noundef zeroext true)
  %25 = ptrtoint ptr %radio_chanspec to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %radio_chanspec, align 4
  %27 = and i16 %26, 3072
  %bw = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 14
  %28 = ptrtoint ptr %bw to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %bw, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %27, i16 %29)
  %cmp77.not = icmp eq i16 %27, %29
  br i1 %cmp77.not, label %if.end73.if.end84_crit_edge, label %if.then79

if.end73.if.end84_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end84

if.then79:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #17
  %sh = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 1
  %30 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sh, align 4
  %physhim = getelementptr inbounds %struct.shared_phy, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %physhim to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %physhim, align 4
  tail call void @wlapi_bmac_bw_set(ptr noundef %33, i16 noundef zeroext %27) #15
  br label %if.end84

if.end84:                                         ; preds = %if.then79, %if.end73.if.end84_crit_edge
  %nphy_gain_boost = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 186
  %34 = ptrtoint ptr %nphy_gain_boost to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %nphy_gain_boost, align 1
  tail call void @wlc_phy_switch_radio(ptr noundef %pih, i1 noundef zeroext true)
  tail call void %24(ptr noundef %pih) #15
  %phy_init_por = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 16
  %35 = ptrtoint ptr %phy_init_por to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %phy_init_por, align 1
  %sh85 = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 1
  %36 = ptrtoint ptr %sh85 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sh85, align 4
  %corerev = getelementptr inbounds %struct.shared_phy, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %corerev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %corerev, align 4
  %.off = add i32 %39, -11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then92, label %if.end84.if.end93_crit_edge

if.end84.if.end93_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end93

if.then92:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @wlc_phy_do_dummy_tx(ptr noundef %pih, i1 noundef zeroext true, i1 noundef zeroext false)
  br label %if.end93

if.end93:                                         ; preds = %if.then92, %if.end84.if.end93_crit_edge
  %pubpi = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 7
  %40 = ptrtoint ptr %pubpi to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pubpi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %41)
  %cmp94 = icmp eq i32 %41, 4
  br i1 %cmp94, label %if.end93.if.end97_crit_edge, label %if.then96

if.end93.if.end97_crit_edge:                      ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end97

if.then96:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @wlc_phy_txpower_update_shm(ptr noundef %pih)
  br label %if.end97

if.end97:                                         ; preds = %if.then96, %if.end93.if.end97_crit_edge
  %42 = ptrtoint ptr %sh85 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sh85, align 4
  %rx_antdiv = getelementptr inbounds %struct.shared_phy, ptr %43, i32 0, i32 21
  %44 = ptrtoint ptr %rx_antdiv to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %rx_antdiv, align 4
  tail call void @wlc_phy_ant_rxdiv_set(ptr noundef %pih, i8 noundef zeroext %45)
  %46 = ptrtoint ptr %init_in_progress to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %init_in_progress, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end97, %if.end71.cleanup_crit_edge, %do.end55, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wlapi_bmac_bw_set(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wlc_phy_do_dummy_tx(ptr noundef %pi, i1 noundef zeroext %ofdm, i1 noundef zeroext %pa_on) local_unnamed_addr #0 align 64 {
entry:
  %ofdmpkt = alloca [20 x i8], align 1
  %cckpkt = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %d11core = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 5
  %0 = ptrtoint ptr %d11core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d11core, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %ofdmpkt) #15
  %2 = call ptr @memcpy(ptr %ofdmpkt, ptr @__const.wlc_phy_do_dummy_tx.ofdmpkt, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %cckpkt) #15
  %3 = call ptr @memcpy(ptr %cckpkt, ptr @__const.wlc_phy_do_dummy_tx.cckpkt, i32 20)
  %cond = select i1 %ofdm, ptr %ofdmpkt, ptr %cckpkt
  %sh = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 1
  %4 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sh, align 4
  %physhim = getelementptr inbounds %struct.shared_phy, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %physhim to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %physhim, align 4
  call void @wlapi_bmac_write_template_ram(ptr noundef %7, i32 noundef 0, i32 noundef 20, ptr noundef nonnull %cond) #15
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %ops.i = getelementptr inbounds %struct.bcma_bus, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i, align 4
  %write16.i = getelementptr inbounds %struct.bcma_host_ops, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %write16.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write16.i, align 4
  call void %13(ptr noundef %1, i16 noundef zeroext 1384, i16 noundef zeroext 0) #15
  %14 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sh, align 4
  %corerev = getelementptr inbounds %struct.shared_phy, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %corerev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %corerev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %17)
  %cmp = icmp ugt i32 %17, 10
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 8
  %ops.i95 = getelementptr inbounds %struct.bcma_bus, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %ops.i95 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops.i95, align 4
  %write16.i96 = getelementptr inbounds %struct.bcma_host_ops, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %write16.i96 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write16.i96, align 4
  %. = select i1 %cmp, i16 256, i16 0
  call void %23(ptr noundef %1, i16 noundef zeroext 1984, i16 noundef zeroext %.) #15
  %cond5 = zext i1 %ofdm to i16
  %or = or i16 %cond5, 64
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 8
  %ops.i99 = getelementptr inbounds %struct.bcma_bus, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %ops.i99 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops.i99, align 4
  %write16.i100 = getelementptr inbounds %struct.bcma_host_ops, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %write16.i100 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write16.i100, align 4
  call void %29(ptr noundef %1, i16 noundef zeroext 1292, i16 noundef zeroext %or) #15
  %pubpi = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 7
  %30 = ptrtoint ptr %pubpi to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pubpi, align 4
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %31, label %entry.if.end11_crit_edge [
    i32 4, label %entry.if.then10_crit_edge
    i32 8, label %entry.if.then10_crit_edge142
  ]

entry.if.then10_crit_edge142:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then10

entry.if.then10_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then10

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

if.then10:                                        ; preds = %entry.if.then10_crit_edge, %entry.if.then10_crit_edge142
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 8
  %ops.i101 = getelementptr inbounds %struct.bcma_bus, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %ops.i101 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ops.i101, align 4
  %write16.i102 = getelementptr inbounds %struct.bcma_host_ops, ptr %36, i32 0, i32 4
  %37 = ptrtoint ptr %write16.i102 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %write16.i102, align 4
  call void %38(ptr noundef %1, i16 noundef zeroext 1300, i16 noundef zeroext 6658) #15
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %entry.if.end11_crit_edge
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 8
  %ops.i103 = getelementptr inbounds %struct.bcma_bus, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %ops.i103 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ops.i103, align 4
  %write16.i104 = getelementptr inbounds %struct.bcma_host_ops, ptr %42, i32 0, i32 4
  %43 = ptrtoint ptr %write16.i104 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %write16.i104, align 4
  call void %44(ptr noundef %1, i16 noundef zeroext 1288, i16 noundef zeroext 0) #15
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %1, align 8
  %ops.i105 = getelementptr inbounds %struct.bcma_bus, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %ops.i105 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ops.i105, align 4
  %write16.i106 = getelementptr inbounds %struct.bcma_host_ops, ptr %48, i32 0, i32 4
  %49 = ptrtoint ptr %write16.i106 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %write16.i106, align 4
  call void %50(ptr noundef %1, i16 noundef zeroext 1290, i16 noundef zeroext 0) #15
  %51 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %1, align 8
  %ops.i107 = getelementptr inbounds %struct.bcma_bus, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %ops.i107 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ops.i107, align 4
  %write16.i108 = getelementptr inbounds %struct.bcma_host_ops, ptr %54, i32 0, i32 4
  %55 = ptrtoint ptr %write16.i108 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %write16.i108, align 4
  call void %56(ptr noundef %1, i16 noundef zeroext 1356, i16 noundef zeroext 0) #15
  %57 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %1, align 8
  %ops.i109 = getelementptr inbounds %struct.bcma_bus, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %ops.i109 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ops.i109, align 4
  %write16.i110 = getelementptr inbounds %struct.bcma_host_ops, ptr %60, i32 0, i32 4
  %61 = ptrtoint ptr %write16.i110 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %write16.i110, align 4
  call void %62(ptr noundef %1, i16 noundef zeroext 1386, i16 noundef zeroext 20) #15
  %63 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %1, align 8
  %ops.i111 = getelementptr inbounds %struct.bcma_bus, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %ops.i111 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ops.i111, align 4
  %write16.i112 = getelementptr inbounds %struct.bcma_host_ops, ptr %66, i32 0, i32 4
  %67 = ptrtoint ptr %write16.i112 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %write16.i112, align 4
  call void %68(ptr noundef %1, i16 noundef zeroext 1384, i16 noundef zeroext 2086) #15
  %69 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %1, align 8
  %ops.i113 = getelementptr inbounds %struct.bcma_bus, ptr %70, i32 0, i32 2
  %71 = ptrtoint ptr %ops.i113 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ops.i113, align 4
  %write16.i114 = getelementptr inbounds %struct.bcma_host_ops, ptr %72, i32 0, i32 4
  %73 = ptrtoint ptr %write16.i114 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %write16.i114, align 4
  call void %74(ptr noundef %1, i16 noundef zeroext 1280, i16 noundef zeroext 0) #15
  br i1 %pa_on, label %if.end11.if.end19thread-pre-split_crit_edge, label %if.then13

if.end11.if.end19thread-pre-split_crit_edge:      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19thread-pre-split

if.then13:                                        ; preds = %if.end11
  %75 = ptrtoint ptr %pubpi to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %pubpi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %76)
  %cmp16 = icmp eq i32 %76, 4
  br i1 %cmp16, label %if.then17, label %if.then13.if.end19_crit_edge

if.then13.if.end19_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19

if.then17:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #17
  call void @wlc_phy_pa_override_nphy(ptr noundef %pi, i1 noundef zeroext false) #15
  br label %if.end19thread-pre-split

if.end19thread-pre-split:                         ; preds = %if.then17, %if.end11.if.end19thread-pre-split_crit_edge
  %77 = ptrtoint ptr %pubpi to i32
  call void @__asan_load4_noabort(i32 %77)
  %.pr = load i32, ptr %pubpi, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.end19thread-pre-split, %if.then13.if.end19_crit_edge
  %78 = phi i32 [ %.pr, %if.end19thread-pre-split ], [ %76, %if.then13.if.end19_crit_edge ]
  %79 = add i32 %78, -4
  %switch.and = and i32 %79, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and)
  %switch.selectcmp = icmp eq i32 %switch.and, 0
  %80 = select i1 %switch.selectcmp, i16 208, i16 48
  %81 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %1, align 8
  %ops.i117 = getelementptr inbounds %struct.bcma_bus, ptr %82, i32 0, i32 2
  %83 = ptrtoint ptr %ops.i117 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ops.i117, align 4
  %write16.i118 = getelementptr inbounds %struct.bcma_host_ops, ptr %84, i32 0, i32 4
  %85 = ptrtoint ptr %write16.i118 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %write16.i118, align 4
  call void %86(ptr noundef %1, i16 noundef zeroext 1282, i16 noundef zeroext %80) #15
  %87 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %1, align 8
  %ops.i119 = getelementptr inbounds %struct.bcma_bus, ptr %88, i32 0, i32 2
  %89 = ptrtoint ptr %ops.i119 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %ops.i119, align 4
  %read16.i = getelementptr inbounds %struct.bcma_host_ops, ptr %90, i32 0, i32 1
  %91 = ptrtoint ptr %read16.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %read16.i, align 4
  %call.i = call zeroext i16 %92(ptr noundef %1, i16 noundef zeroext 1282) #15
  %93 = select i1 %ofdm, i32 31, i32 251
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %if.end19
  %inc133 = phi i32 [ 1, %if.end19 ], [ %inc, %while.body.land.rhs_crit_edge ]
  %94 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %1, align 8
  %ops.i121 = getelementptr inbounds %struct.bcma_bus, ptr %95, i32 0, i32 2
  %96 = ptrtoint ptr %ops.i121 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %ops.i121, align 4
  %read16.i122 = getelementptr inbounds %struct.bcma_host_ops, ptr %97, i32 0, i32 1
  %98 = ptrtoint ptr %read16.i122 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %read16.i122, align 4
  %call.i123 = call zeroext i16 %99(ptr noundef %1, i16 noundef zeroext 1294) #15
  %100 = and i16 %call.i123, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %100)
  %tobool34.not = icmp eq i16 %100, 0
  br i1 %tobool34.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.body:                                       ; preds = %land.rhs
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %101 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %101(i32 noundef 2147480) #15
  %inc = add nuw nsw i32 %inc133, 1
  %exitcond.not = icmp eq i32 %inc, %93
  br i1 %exitcond.not, label %while.body.while.end_crit_edge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.rhs

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %land.rhs.while.end_crit_edge
  %102 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %1, align 8
  %ops.i125 = getelementptr inbounds %struct.bcma_bus, ptr %103, i32 0, i32 2
  %104 = ptrtoint ptr %ops.i125 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %ops.i125, align 4
  %read16.i126 = getelementptr inbounds %struct.bcma_host_ops, ptr %105, i32 0, i32 1
  %106 = ptrtoint ptr %read16.i126 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %read16.i126, align 4
  %call.i127 = call zeroext i16 %107(ptr noundef %1, i16 noundef zeroext 1294) #15
  %108 = and i16 %call.i127, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %108)
  %cmp41 = icmp eq i16 %108, 0
  br i1 %cmp41, label %while.body43, label %while.end.while.end44_crit_edge

while.end.while.end44_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end44

while.body43:                                     ; preds = %while.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %109 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %109(i32 noundef 2147480) #15
  %110 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %1, align 8
  %ops.i125.1 = getelementptr inbounds %struct.bcma_bus, ptr %111, i32 0, i32 2
  %112 = ptrtoint ptr %ops.i125.1 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %ops.i125.1, align 4
  %read16.i126.1 = getelementptr inbounds %struct.bcma_host_ops, ptr %113, i32 0, i32 1
  %114 = ptrtoint ptr %read16.i126.1 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %read16.i126.1, align 4
  %call.i127.1 = call zeroext i16 %115(ptr noundef %1, i16 noundef zeroext 1294) #15
  %116 = and i16 %call.i127.1, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %116)
  %cmp41.1 = icmp eq i16 %116, 0
  br i1 %cmp41.1, label %while.body43.1, label %while.body43.while.end44_crit_edge

while.body43.while.end44_crit_edge:               ; preds = %while.body43
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end44

while.body43.1:                                   ; preds = %while.body43
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %117 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %117(i32 noundef 2147480) #15
  %118 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %1, align 8
  %ops.i125.2 = getelementptr inbounds %struct.bcma_bus, ptr %119, i32 0, i32 2
  %120 = ptrtoint ptr %ops.i125.2 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %ops.i125.2, align 4
  %read16.i126.2 = getelementptr inbounds %struct.bcma_host_ops, ptr %121, i32 0, i32 1
  %122 = ptrtoint ptr %read16.i126.2 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %read16.i126.2, align 4
  %call.i127.2 = call zeroext i16 %123(ptr noundef %1, i16 noundef zeroext 1294) #15
  %124 = and i16 %call.i127.2, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %124)
  %cmp41.2 = icmp eq i16 %124, 0
  br i1 %cmp41.2, label %while.body43.2, label %while.body43.1.while.end44_crit_edge

while.body43.1.while.end44_crit_edge:             ; preds = %while.body43.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end44

while.body43.2:                                   ; preds = %while.body43.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %125 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %125(i32 noundef 2147480) #15
  %126 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %1, align 8
  %ops.i125.3 = getelementptr inbounds %struct.bcma_bus, ptr %127, i32 0, i32 2
  %128 = ptrtoint ptr %ops.i125.3 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %ops.i125.3, align 4
  %read16.i126.3 = getelementptr inbounds %struct.bcma_host_ops, ptr %129, i32 0, i32 1
  %130 = ptrtoint ptr %read16.i126.3 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %read16.i126.3, align 4
  %call.i127.3 = call zeroext i16 %131(ptr noundef %1, i16 noundef zeroext 1294) #15
  %132 = and i16 %call.i127.3, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %132)
  %cmp41.3 = icmp eq i16 %132, 0
  br i1 %cmp41.3, label %while.body43.3, label %while.body43.2.while.end44_crit_edge

while.body43.2.while.end44_crit_edge:             ; preds = %while.body43.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end44

while.body43.3:                                   ; preds = %while.body43.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %133 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %133(i32 noundef 2147480) #15
  %134 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %1, align 8
  %ops.i125.4 = getelementptr inbounds %struct.bcma_bus, ptr %135, i32 0, i32 2
  %136 = ptrtoint ptr %ops.i125.4 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %ops.i125.4, align 4
  %read16.i126.4 = getelementptr inbounds %struct.bcma_host_ops, ptr %137, i32 0, i32 1
  %138 = ptrtoint ptr %read16.i126.4 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %read16.i126.4, align 4
  %call.i127.4 = call zeroext i16 %139(ptr noundef %1, i16 noundef zeroext 1294) #15
  %140 = and i16 %call.i127.4, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %140)
  %cmp41.4 = icmp eq i16 %140, 0
  br i1 %cmp41.4, label %while.body43.4, label %while.body43.3.while.end44_crit_edge

while.body43.3.while.end44_crit_edge:             ; preds = %while.body43.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end44

while.body43.4:                                   ; preds = %while.body43.3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %141 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %141(i32 noundef 2147480) #15
  %142 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %1, align 8
  %ops.i125.5 = getelementptr inbounds %struct.bcma_bus, ptr %143, i32 0, i32 2
  %144 = ptrtoint ptr %ops.i125.5 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %ops.i125.5, align 4
  %read16.i126.5 = getelementptr inbounds %struct.bcma_host_ops, ptr %145, i32 0, i32 1
  %146 = ptrtoint ptr %read16.i126.5 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %read16.i126.5, align 4
  %call.i127.5 = call zeroext i16 %147(ptr noundef %1, i16 noundef zeroext 1294) #15
  %148 = and i16 %call.i127.5, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %148)
  %cmp41.5 = icmp eq i16 %148, 0
  br i1 %cmp41.5, label %while.body43.5, label %while.body43.4.while.end44_crit_edge

while.body43.4.while.end44_crit_edge:             ; preds = %while.body43.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end44

while.body43.5:                                   ; preds = %while.body43.4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %149 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %149(i32 noundef 2147480) #15
  %150 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %1, align 8
  %ops.i125.6 = getelementptr inbounds %struct.bcma_bus, ptr %151, i32 0, i32 2
  %152 = ptrtoint ptr %ops.i125.6 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %ops.i125.6, align 4
  %read16.i126.6 = getelementptr inbounds %struct.bcma_host_ops, ptr %153, i32 0, i32 1
  %154 = ptrtoint ptr %read16.i126.6 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %read16.i126.6, align 4
  %call.i127.6 = call zeroext i16 %155(ptr noundef %1, i16 noundef zeroext 1294) #15
  %156 = and i16 %call.i127.6, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %156)
  %cmp41.6 = icmp eq i16 %156, 0
  br i1 %cmp41.6, label %while.body43.6, label %while.body43.5.while.end44_crit_edge

while.body43.5.while.end44_crit_edge:             ; preds = %while.body43.5
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end44

while.body43.6:                                   ; preds = %while.body43.5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %157 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %157(i32 noundef 2147480) #15
  %158 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %1, align 8
  %ops.i125.7 = getelementptr inbounds %struct.bcma_bus, ptr %159, i32 0, i32 2
  %160 = ptrtoint ptr %ops.i125.7 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %ops.i125.7, align 4
  %read16.i126.7 = getelementptr inbounds %struct.bcma_host_ops, ptr %161, i32 0, i32 1
  %162 = ptrtoint ptr %read16.i126.7 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %read16.i126.7, align 4
  %call.i127.7 = call zeroext i16 %163(ptr noundef %1, i16 noundef zeroext 1294) #15
  %164 = and i16 %call.i127.7, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %164)
  %cmp41.7 = icmp eq i16 %164, 0
  br i1 %cmp41.7, label %while.body43.7, label %while.body43.6.while.end44_crit_edge

while.body43.6.while.end44_crit_edge:             ; preds = %while.body43.6
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end44

while.body43.7:                                   ; preds = %while.body43.6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %165 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %165(i32 noundef 2147480) #15
  %166 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %1, align 8
  %ops.i125.8 = getelementptr inbounds %struct.bcma_bus, ptr %167, i32 0, i32 2
  %168 = ptrtoint ptr %ops.i125.8 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %ops.i125.8, align 4
  %read16.i126.8 = getelementptr inbounds %struct.bcma_host_ops, ptr %169, i32 0, i32 1
  %170 = ptrtoint ptr %read16.i126.8 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %read16.i126.8, align 4
  %call.i127.8 = call zeroext i16 %171(ptr noundef %1, i16 noundef zeroext 1294) #15
  %172 = and i16 %call.i127.8, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %172)
  %cmp41.8 = icmp eq i16 %172, 0
  br i1 %cmp41.8, label %while.body43.8, label %while.body43.7.while.end44_crit_edge

while.body43.7.while.end44_crit_edge:             ; preds = %while.body43.7
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end44

while.body43.8:                                   ; preds = %while.body43.7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %173 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %173(i32 noundef 2147480) #15
  %174 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %1, align 8
  %ops.i125.9 = getelementptr inbounds %struct.bcma_bus, ptr %175, i32 0, i32 2
  %176 = ptrtoint ptr %ops.i125.9 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %ops.i125.9, align 4
  %read16.i126.9 = getelementptr inbounds %struct.bcma_host_ops, ptr %177, i32 0, i32 1
  %178 = ptrtoint ptr %read16.i126.9 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %read16.i126.9, align 4
  %call.i127.9 = call zeroext i16 %179(ptr noundef %1, i16 noundef zeroext 1294) #15
  %180 = and i16 %call.i127.9, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %180)
  %cmp41.9 = icmp eq i16 %180, 0
  br i1 %cmp41.9, label %while.body43.9, label %while.body43.8.while.end44_crit_edge

while.body43.8.while.end44_crit_edge:             ; preds = %while.body43.8
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end44

while.body43.9:                                   ; preds = %while.body43.8
  call void @__sanitizer_cov_trace_pc() #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %181 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %181(i32 noundef 2147480) #15
  br label %while.end44

while.end44:                                      ; preds = %while.body43.9, %while.body43.8.while.end44_crit_edge, %while.body43.7.while.end44_crit_edge, %while.body43.6.while.end44_crit_edge, %while.body43.5.while.end44_crit_edge, %while.body43.4.while.end44_crit_edge, %while.body43.3.while.end44_crit_edge, %while.body43.2.while.end44_crit_edge, %while.body43.1.while.end44_crit_edge, %while.body43.while.end44_crit_edge, %while.end.while.end44_crit_edge
  %182 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %1, align 8
  %ops.i129 = getelementptr inbounds %struct.bcma_bus, ptr %183, i32 0, i32 2
  %184 = ptrtoint ptr %ops.i129 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %ops.i129, align 4
  %read16.i130 = getelementptr inbounds %struct.bcma_host_ops, ptr %185, i32 0, i32 1
  %186 = ptrtoint ptr %read16.i130 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %read16.i130, align 4
  %call.i131 = call zeroext i16 %187(ptr noundef %1, i16 noundef zeroext 1680) #15
  %188 = and i16 %call.i131, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %188)
  %tobool51.not = icmp eq i16 %188, 0
  br i1 %tobool51.not, label %while.end44.while.end54_crit_edge, label %while.body53

while.end44.while.end54_crit_edge:                ; preds = %while.end44
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end54

while.body53:                                     ; preds = %while.end44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %189 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %189(i32 noundef 2147480) #15
  %190 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %1, align 8
  %ops.i129.1 = getelementptr inbounds %struct.bcma_bus, ptr %191, i32 0, i32 2
  %192 = ptrtoint ptr %ops.i129.1 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %ops.i129.1, align 4
  %read16.i130.1 = getelementptr inbounds %struct.bcma_host_ops, ptr %193, i32 0, i32 1
  %194 = ptrtoint ptr %read16.i130.1 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %read16.i130.1, align 4
  %call.i131.1 = call zeroext i16 %195(ptr noundef %1, i16 noundef zeroext 1680) #15
  %196 = and i16 %call.i131.1, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %196)
  %tobool51.not.1 = icmp eq i16 %196, 0
  br i1 %tobool51.not.1, label %while.body53.while.end54_crit_edge, label %while.body53.1

while.body53.while.end54_crit_edge:               ; preds = %while.body53
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end54

while.body53.1:                                   ; preds = %while.body53
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %197 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %197(i32 noundef 2147480) #15
  %198 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %1, align 8
  %ops.i129.2 = getelementptr inbounds %struct.bcma_bus, ptr %199, i32 0, i32 2
  %200 = ptrtoint ptr %ops.i129.2 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %ops.i129.2, align 4
  %read16.i130.2 = getelementptr inbounds %struct.bcma_host_ops, ptr %201, i32 0, i32 1
  %202 = ptrtoint ptr %read16.i130.2 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %read16.i130.2, align 4
  %call.i131.2 = call zeroext i16 %203(ptr noundef %1, i16 noundef zeroext 1680) #15
  %204 = and i16 %call.i131.2, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %204)
  %tobool51.not.2 = icmp eq i16 %204, 0
  br i1 %tobool51.not.2, label %while.body53.1.while.end54_crit_edge, label %while.body53.2

while.body53.1.while.end54_crit_edge:             ; preds = %while.body53.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end54

while.body53.2:                                   ; preds = %while.body53.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %205 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %205(i32 noundef 2147480) #15
  %206 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %1, align 8
  %ops.i129.3 = getelementptr inbounds %struct.bcma_bus, ptr %207, i32 0, i32 2
  %208 = ptrtoint ptr %ops.i129.3 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %ops.i129.3, align 4
  %read16.i130.3 = getelementptr inbounds %struct.bcma_host_ops, ptr %209, i32 0, i32 1
  %210 = ptrtoint ptr %read16.i130.3 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %read16.i130.3, align 4
  %call.i131.3 = call zeroext i16 %211(ptr noundef %1, i16 noundef zeroext 1680) #15
  %212 = and i16 %call.i131.3, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %212)
  %tobool51.not.3 = icmp eq i16 %212, 0
  br i1 %tobool51.not.3, label %while.body53.2.while.end54_crit_edge, label %while.body53.3

while.body53.2.while.end54_crit_edge:             ; preds = %while.body53.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end54

while.body53.3:                                   ; preds = %while.body53.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %213 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %213(i32 noundef 2147480) #15
  %214 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %1, align 8
  %ops.i129.4 = getelementptr inbounds %struct.bcma_bus, ptr %215, i32 0, i32 2
  %216 = ptrtoint ptr %ops.i129.4 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %ops.i129.4, align 4
  %read16.i130.4 = getelementptr inbounds %struct.bcma_host_ops, ptr %217, i32 0, i32 1
  %218 = ptrtoint ptr %read16.i130.4 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %read16.i130.4, align 4
  %call.i131.4 = call zeroext i16 %219(ptr noundef %1, i16 noundef zeroext 1680) #15
  %220 = and i16 %call.i131.4, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %220)
  %tobool51.not.4 = icmp eq i16 %220, 0
  br i1 %tobool51.not.4, label %while.body53.3.while.end54_crit_edge, label %while.body53.4

while.body53.3.while.end54_crit_edge:             ; preds = %while.body53.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end54

while.body53.4:                                   ; preds = %while.body53.3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %221 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %221(i32 noundef 2147480) #15
  %222 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %1, align 8
  %ops.i129.5 = getelementptr inbounds %struct.bcma_bus, ptr %223, i32 0, i32 2
  %224 = ptrtoint ptr %ops.i129.5 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %ops.i129.5, align 4
  %read16.i130.5 = getelementptr inbounds %struct.bcma_host_ops, ptr %225, i32 0, i32 1
  %226 = ptrtoint ptr %read16.i130.5 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %read16.i130.5, align 4
  %call.i131.5 = call zeroext i16 %227(ptr noundef %1, i16 noundef zeroext 1680) #15
  %228 = and i16 %call.i131.5, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %228)
  %tobool51.not.5 = icmp eq i16 %228, 0
  br i1 %tobool51.not.5, label %while.body53.4.while.end54_crit_edge, label %while.body53.5

while.body53.4.while.end54_crit_edge:             ; preds = %while.body53.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end54

while.body53.5:                                   ; preds = %while.body53.4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %229 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %229(i32 noundef 2147480) #15
  %230 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %1, align 8
  %ops.i129.6 = getelementptr inbounds %struct.bcma_bus, ptr %231, i32 0, i32 2
  %232 = ptrtoint ptr %ops.i129.6 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %ops.i129.6, align 4
  %read16.i130.6 = getelementptr inbounds %struct.bcma_host_ops, ptr %233, i32 0, i32 1
  %234 = ptrtoint ptr %read16.i130.6 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %read16.i130.6, align 4
  %call.i131.6 = call zeroext i16 %235(ptr noundef %1, i16 noundef zeroext 1680) #15
  %236 = and i16 %call.i131.6, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %236)
  %tobool51.not.6 = icmp eq i16 %236, 0
  br i1 %tobool51.not.6, label %while.body53.5.while.end54_crit_edge, label %while.body53.6

while.body53.5.while.end54_crit_edge:             ; preds = %while.body53.5
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end54

while.body53.6:                                   ; preds = %while.body53.5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %237 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %237(i32 noundef 2147480) #15
  %238 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %1, align 8
  %ops.i129.7 = getelementptr inbounds %struct.bcma_bus, ptr %239, i32 0, i32 2
  %240 = ptrtoint ptr %ops.i129.7 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %ops.i129.7, align 4
  %read16.i130.7 = getelementptr inbounds %struct.bcma_host_ops, ptr %241, i32 0, i32 1
  %242 = ptrtoint ptr %read16.i130.7 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %read16.i130.7, align 4
  %call.i131.7 = call zeroext i16 %243(ptr noundef %1, i16 noundef zeroext 1680) #15
  %244 = and i16 %call.i131.7, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %244)
  %tobool51.not.7 = icmp eq i16 %244, 0
  br i1 %tobool51.not.7, label %while.body53.6.while.end54_crit_edge, label %while.body53.7

while.body53.6.while.end54_crit_edge:             ; preds = %while.body53.6
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end54

while.body53.7:                                   ; preds = %while.body53.6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %245 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %245(i32 noundef 2147480) #15
  %246 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %1, align 8
  %ops.i129.8 = getelementptr inbounds %struct.bcma_bus, ptr %247, i32 0, i32 2
  %248 = ptrtoint ptr %ops.i129.8 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %ops.i129.8, align 4
  %read16.i130.8 = getelementptr inbounds %struct.bcma_host_ops, ptr %249, i32 0, i32 1
  %250 = ptrtoint ptr %read16.i130.8 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %read16.i130.8, align 4
  %call.i131.8 = call zeroext i16 %251(ptr noundef %1, i16 noundef zeroext 1680) #15
  %252 = and i16 %call.i131.8, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %252)
  %tobool51.not.8 = icmp eq i16 %252, 0
  br i1 %tobool51.not.8, label %while.body53.7.while.end54_crit_edge, label %while.body53.8

while.body53.7.while.end54_crit_edge:             ; preds = %while.body53.7
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end54

while.body53.8:                                   ; preds = %while.body53.7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %253 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %253(i32 noundef 2147480) #15
  %254 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %1, align 8
  %ops.i129.9 = getelementptr inbounds %struct.bcma_bus, ptr %255, i32 0, i32 2
  %256 = ptrtoint ptr %ops.i129.9 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %ops.i129.9, align 4
  %read16.i130.9 = getelementptr inbounds %struct.bcma_host_ops, ptr %257, i32 0, i32 1
  %258 = ptrtoint ptr %read16.i130.9 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %read16.i130.9, align 4
  %call.i131.9 = call zeroext i16 %259(ptr noundef %1, i16 noundef zeroext 1680) #15
  %260 = and i16 %call.i131.9, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %260)
  %tobool51.not.9 = icmp eq i16 %260, 0
  br i1 %tobool51.not.9, label %while.body53.8.while.end54_crit_edge, label %while.body53.9

while.body53.8.while.end54_crit_edge:             ; preds = %while.body53.8
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end54

while.body53.9:                                   ; preds = %while.body53.8
  call void @__sanitizer_cov_trace_pc() #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %261 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %261(i32 noundef 2147480) #15
  br label %while.end54

while.end54:                                      ; preds = %while.body53.9, %while.body53.8.while.end54_crit_edge, %while.body53.7.while.end54_crit_edge, %while.body53.6.while.end54_crit_edge, %while.body53.5.while.end54_crit_edge, %while.body53.4.while.end54_crit_edge, %while.body53.3.while.end54_crit_edge, %while.body53.2.while.end54_crit_edge, %while.body53.1.while.end54_crit_edge, %while.body53.while.end54_crit_edge, %while.end44.while.end54_crit_edge
  br i1 %pa_on, label %while.end54.if.end62_crit_edge, label %if.then56

while.end54.if.end62_crit_edge:                   ; preds = %while.end54
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end62

if.then56:                                        ; preds = %while.end54
  %262 = ptrtoint ptr %pubpi to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %pubpi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %263)
  %cmp59 = icmp eq i32 %263, 4
  br i1 %cmp59, label %if.then60, label %if.then56.if.end62_crit_edge

if.then56.if.end62_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end62

if.then60:                                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #17
  call void @wlc_phy_pa_override_nphy(ptr noundef %pi, i1 noundef zeroext true) #15
  br label %if.end62

if.end62:                                         ; preds = %if.then60, %if.then56.if.end62_crit_edge, %while.end54.if.end62_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %cckpkt) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %ofdmpkt) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wlc_phy_txpower_update_shm(ptr nocapture noundef %pi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %pubpi = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 7
  %0 = ptrtoint ptr %pubpi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pubpi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp = icmp eq i32 %1, 4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %sh = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 1
  %2 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sh, align 4
  %clk = getelementptr inbounds %struct.shared_phy, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %clk, align 1, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %hwpwrctrl = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 49
  %6 = ptrtoint ptr %hwpwrctrl to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %hwpwrctrl, align 1, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool3.not = icmp eq i8 %7, 0
  br i1 %tobool3.not, label %for.body36.preheader, label %if.then4

for.body36.preheader:                             ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx38 = getelementptr %struct.brcms_phy, ptr %pi, i32 0, i32 43, i32 4
  %8 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx38, align 1
  %conv39 = sext i8 %9 to i16
  %add41 = add nsw i16 %conv39, 7
  %div4285 = sdiv i16 %add41, 8
  %div42.tr = trunc i16 %div4285 to i8
  %conv43 = shl i8 %div42.tr, 3
  store i8 %conv43, ptr %arrayidx38, align 1
  %arrayidx38.1 = getelementptr %struct.brcms_phy, ptr %pi, i32 0, i32 43, i32 5
  %10 = ptrtoint ptr %arrayidx38.1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx38.1, align 1
  %conv39.1 = sext i8 %11 to i16
  %add41.1 = add nsw i16 %conv39.1, 7
  %div4285.1 = sdiv i16 %add41.1, 8
  %div42.tr.1 = trunc i16 %div4285.1 to i8
  %conv43.1 = shl i8 %div42.tr.1, 3
  store i8 %conv43.1, ptr %arrayidx38.1, align 1
  %arrayidx38.2 = getelementptr %struct.brcms_phy, ptr %pi, i32 0, i32 43, i32 6
  %12 = ptrtoint ptr %arrayidx38.2 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx38.2, align 1
  %conv39.2 = sext i8 %13 to i16
  %add41.2 = add nsw i16 %conv39.2, 7
  %div4285.2 = sdiv i16 %add41.2, 8
  %div42.tr.2 = trunc i16 %div4285.2 to i8
  %conv43.2 = shl i8 %div42.tr.2, 3
  store i8 %conv43.2, ptr %arrayidx38.2, align 1
  %arrayidx38.3 = getelementptr %struct.brcms_phy, ptr %pi, i32 0, i32 43, i32 7
  %14 = ptrtoint ptr %arrayidx38.3 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx38.3, align 1
  %conv39.3 = sext i8 %15 to i16
  %add41.3 = add nsw i16 %conv39.3, 7
  %div4285.3 = sdiv i16 %add41.3, 8
  %div42.tr.3 = trunc i16 %div4285.3 to i8
  %conv43.3 = shl i8 %div42.tr.3, 3
  store i8 %conv43.3, ptr %arrayidx38.3, align 1
  %arrayidx38.4 = getelementptr %struct.brcms_phy, ptr %pi, i32 0, i32 43, i32 8
  %16 = ptrtoint ptr %arrayidx38.4 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx38.4, align 1
  %conv39.4 = sext i8 %17 to i16
  %add41.4 = add nsw i16 %conv39.4, 7
  %div4285.4 = sdiv i16 %add41.4, 8
  %div42.tr.4 = trunc i16 %div4285.4 to i8
  %conv43.4 = shl i8 %div42.tr.4, 3
  store i8 %conv43.4, ptr %arrayidx38.4, align 1
  %arrayidx38.5 = getelementptr %struct.brcms_phy, ptr %pi, i32 0, i32 43, i32 9
  %18 = ptrtoint ptr %arrayidx38.5 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx38.5, align 1
  %conv39.5 = sext i8 %19 to i16
  %add41.5 = add nsw i16 %conv39.5, 7
  %div4285.5 = sdiv i16 %add41.5, 8
  %div42.tr.5 = trunc i16 %div4285.5 to i8
  %conv43.5 = shl i8 %div42.tr.5, 3
  store i8 %conv43.5, ptr %arrayidx38.5, align 1
  %arrayidx38.6 = getelementptr %struct.brcms_phy, ptr %pi, i32 0, i32 43, i32 10
  %20 = ptrtoint ptr %arrayidx38.6 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx38.6, align 1
  %conv39.6 = sext i8 %21 to i16
  %add41.6 = add nsw i16 %conv39.6, 7
  %div4285.6 = sdiv i16 %add41.6, 8
  %div42.tr.6 = trunc i16 %div4285.6 to i8
  %conv43.6 = shl i8 %div42.tr.6, 3
  store i8 %conv43.6, ptr %arrayidx38.6, align 1
  %arrayidx38.7 = getelementptr %struct.brcms_phy, ptr %pi, i32 0, i32 43, i32 11
  %22 = ptrtoint ptr %arrayidx38.7 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx38.7, align 1
  %conv39.7 = sext i8 %23 to i16
  %add41.7 = add nsw i16 %conv39.7, 7
  %div4285.7 = sdiv i16 %add41.7, 8
  %div42.tr.7 = trunc i16 %div4285.7 to i8
  %conv43.7 = shl i8 %div42.tr.7, 3
  store i8 %conv43.7, ptr %arrayidx38.7, align 1
  %24 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sh, align 4
  %physhim50 = getelementptr inbounds %struct.shared_phy, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %physhim50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %physhim50, align 4
  %shr89 = shl i16 %div4285, 11
  %shr = ashr exact i16 %shr89, 11
  tail call void @wlapi_bmac_write_shm(ptr noundef %27, i32 noundef 78, i16 noundef zeroext %shr) #15
  br label %cleanup

if.then4:                                         ; preds = %if.end2
  %physhim = getelementptr inbounds %struct.shared_phy, ptr %3, i32 0, i32 2
  %28 = ptrtoint ptr %physhim to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %physhim, align 4
  tail call void @wlapi_bmac_write_shm(ptr noundef %29, i32 noundef 40, i16 noundef zeroext 63) #15
  %30 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sh, align 4
  %physhim7 = getelementptr inbounds %struct.shared_phy, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %physhim7 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %physhim7, align 4
  tail call void @wlapi_bmac_write_shm(ptr noundef %33, i32 noundef 36, i16 noundef zeroext 16) #15
  %34 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sh, align 4
  %physhim9 = getelementptr inbounds %struct.shared_phy, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %physhim9 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %physhim9, align 4
  %tx_power_min = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 62
  %38 = ptrtoint ptr %tx_power_min to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %tx_power_min, align 1
  %conv = zext i8 %39 to i16
  %shl = shl nuw nsw i16 %conv, 4
  tail call void @wlapi_bmac_write_shm(ptr noundef %37, i32 noundef 38, i16 noundef zeroext %shl) #15
  %40 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sh, align 4
  %physhim12 = getelementptr inbounds %struct.shared_phy, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %physhim12 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %physhim12, align 4
  %hwpwr_txcur = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 70
  %44 = ptrtoint ptr %hwpwr_txcur to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %hwpwr_txcur, align 2
  tail call void @wlapi_bmac_write_shm(ptr noundef %43, i32 noundef 50, i16 noundef zeroext %45) #15
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then4
  %j.086 = phi i32 [ 4, %if.then4 ], [ %inc, %for.body.for.body_crit_edge ]
  %46 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %sh, align 4
  %physhim16 = getelementptr inbounds %struct.shared_phy, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %physhim16 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %physhim16, align 4
  %sub = add nsw i32 %j.086, -4
  %arrayidx = getelementptr [8 x i8], ptr @wlc_phy_txpower_update_shm.ucode_ofdm_rates, i32 0, i32 %sub
  %50 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx, align 1
  %call = tail call zeroext i16 @wlapi_bmac_rate_shm_offset(ptr noundef %49, i8 noundef zeroext %51) #15
  %52 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %sh, align 4
  %physhim18 = getelementptr inbounds %struct.shared_phy, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %physhim18 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %physhim18, align 4
  %conv19 = zext i16 %call to i32
  %add = add nuw nsw i32 %conv19, 6
  %arrayidx20 = getelementptr %struct.brcms_phy, ptr %pi, i32 0, i32 43, i32 %j.086
  %56 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx20, align 1
  %conv21 = sext i8 %57 to i16
  tail call void @wlapi_bmac_write_shm(ptr noundef %55, i32 noundef %add, i16 noundef zeroext %conv21) #15
  %58 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %sh, align 4
  %physhim23 = getelementptr inbounds %struct.shared_phy, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %physhim23 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %physhim23, align 4
  %add25 = add nuw nsw i32 %conv19, 14
  %62 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx20, align 1
  %.neg = sdiv i8 %63, -2
  %conv30 = sext i8 %.neg to i16
  tail call void @wlapi_bmac_write_shm(ptr noundef %61, i32 noundef %add25, i16 noundef zeroext %conv30) #15
  %inc = add nuw nsw i32 %j.086, 1
  %exitcond.not = icmp eq i32 %inc, 12
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %64 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %sh, align 4
  %physhim32 = getelementptr inbounds %struct.shared_phy, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %physhim32 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %physhim32, align 4
  tail call void @wlapi_bmac_mhf(ptr noundef %67, i8 noundef zeroext 1, i16 noundef zeroext 128, i16 noundef zeroext 128, i32 noundef 3) #15
  br label %cleanup

cleanup:                                          ; preds = %for.end, %for.body36.preheader, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wlc_phy_ant_rxdiv_set(ptr nocapture noundef %ppi, i8 noundef zeroext %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %sh = getelementptr inbounds %struct.brcms_phy, ptr %ppi, i32 0, i32 1
  %0 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sh, align 4
  %rx_antdiv = getelementptr inbounds %struct.shared_phy, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %rx_antdiv to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %val, ptr %rx_antdiv, align 4
  %pubpi = getelementptr inbounds %struct.brcms_phy, ptr %ppi, i32 0, i32 7
  %3 = ptrtoint ptr %pubpi to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pubpi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %cmp = icmp eq i32 %4, 4
  br i1 %cmp, label %land.lhs.true, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

land.lhs.true:                                    ; preds = %entry
  %5 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sh, align 4
  %corerev = getelementptr inbounds %struct.shared_phy, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %corerev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %corerev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %8)
  %cmp2 = icmp eq i32 %8, 16
  br i1 %cmp2, label %land.lhs.true.if.end9_crit_edge, label %land.lhs.true.if.then_crit_edge

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9

if.then:                                          ; preds = %land.lhs.true.if.then_crit_edge, %entry.if.then_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %val)
  %cmp3 = icmp ugt i8 %val, 1
  %9 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sh, align 4
  %physhim = getelementptr inbounds %struct.shared_phy, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %physhim to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %physhim, align 4
  %. = zext i1 %cmp3 to i16
  tail call void @wlapi_bmac_mhf(ptr noundef %12, i8 noundef zeroext 0, i16 noundef zeroext 1, i16 noundef zeroext %., i32 noundef 3) #15
  br label %if.end9

if.end9:                                          ; preds = %if.then, %land.lhs.true.if.end9_crit_edge
  %13 = ptrtoint ptr %pubpi to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pubpi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %14)
  %cmp12 = icmp eq i32 %14, 4
  br i1 %cmp12, label %if.end9.cleanup_crit_edge, label %if.end15

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end15:                                         ; preds = %if.end9
  %15 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sh, align 4
  %clk = getelementptr inbounds %struct.shared_phy, ptr %16, i32 0, i32 6
  %17 = ptrtoint ptr %clk to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %clk, align 1, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not = icmp eq i8 %18, 0
  br i1 %tobool.not, label %if.end15.cleanup_crit_edge, label %if.end18

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end18:                                         ; preds = %if.end15
  %d11core = getelementptr inbounds %struct.brcms_phy, ptr %ppi, i32 0, i32 5
  %19 = ptrtoint ptr %d11core to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %d11core, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 8
  %ops.i = getelementptr inbounds %struct.bcma_bus, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops.i, align 4
  %read32.i = getelementptr inbounds %struct.bcma_host_ops, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %read32.i, align 4
  %call.i = tail call i32 %26(ptr noundef %20, i16 noundef zeroext 288) #15
  %and = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp19 = icmp eq i32 %and, 0
  br i1 %cmp19, label %if.end18.if.end25_crit_edge, label %if.then22

if.end18.if.end25_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end25

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  %27 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sh, align 4
  %physhim24 = getelementptr inbounds %struct.shared_phy, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %physhim24 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %physhim24, align 4
  tail call void @wlapi_suspend_mac_and_wait(ptr noundef %30) #15
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %if.end18.if.end25_crit_edge
  %31 = ptrtoint ptr %pubpi to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pubpi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %32)
  %cmp28 = icmp eq i32 %32, 8
  br i1 %cmp28, label %if.then30, label %if.end25.if.end45_crit_edge

if.end25.if.end45_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end45

if.then30:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %val)
  %cmp32 = icmp ugt i8 %val, 1
  %33 = ptrtoint ptr %d11core to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %d11core, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 8
  %ops.i.i = getelementptr inbounds %struct.bcma_bus, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ops.i.i, align 4
  %write16.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %38, i32 0, i32 4
  %39 = ptrtoint ptr %write16.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %write16.i.i, align 4
  tail call void %40(ptr noundef %34, i16 noundef zeroext 1020, i16 noundef zeroext 1040) #15
  %41 = ptrtoint ptr %d11core to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %d11core, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 8
  %ops.i.i.i = getelementptr inbounds %struct.bcma_bus, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ops.i.i.i, align 4
  %read16.i.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %read16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %read16.i.i.i, align 4
  %call.i.i.i = tail call zeroext i16 %48(ptr noundef %42, i16 noundef zeroext 1022) #15
  br i1 %cmp32, label %if.then34, label %if.else39

if.then34:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #17
  %or4.i.i = or i16 %call.i.i.i, 2
  %49 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %42, align 8
  %ops.i1.i.i = getelementptr inbounds %struct.bcma_bus, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %ops.i1.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ops.i1.i.i, align 4
  %write16.i.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %52, i32 0, i32 4
  %53 = ptrtoint ptr %write16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %write16.i.i.i, align 4
  tail call void %54(ptr noundef %42, i16 noundef zeroext 1022, i16 noundef zeroext %or4.i.i) #15
  %phy_wreg.i = getelementptr inbounds %struct.brcms_phy, ptr %ppi, i32 0, i32 53
  %55 = ptrtoint ptr %phy_wreg.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 0, ptr %phy_wreg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %val)
  %cmp36 = icmp eq i8 %val, 2
  %conv38 = zext i1 %cmp36 to i16
  br label %if.end45.sink.split

if.else39:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #17
  %and3.i.i88 = and i16 %call.i.i.i, -3
  %56 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %42, align 8
  %ops.i1.i.i89 = getelementptr inbounds %struct.bcma_bus, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %ops.i1.i.i89 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ops.i1.i.i89, align 4
  %write16.i.i.i90 = getelementptr inbounds %struct.bcma_host_ops, ptr %59, i32 0, i32 4
  %60 = ptrtoint ptr %write16.i.i.i90 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %write16.i.i.i90, align 4
  tail call void %61(ptr noundef %42, i16 noundef zeroext 1022, i16 noundef zeroext %and3.i.i88) #15
  %phy_wreg.i91 = getelementptr inbounds %struct.brcms_phy, ptr %ppi, i32 0, i32 53
  %62 = ptrtoint ptr %phy_wreg.i91 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 0, ptr %phy_wreg.i91, align 4
  %conv40 = zext i8 %val to i16
  br label %if.end45.sink.split

if.end45.sink.split:                              ; preds = %if.else39, %if.then34
  %conv38.sink = phi i16 [ %conv38, %if.then34 ], [ %conv40, %if.else39 ]
  %phy_wreg.i.sink = phi ptr [ %phy_wreg.i, %if.then34 ], [ %phy_wreg.i91, %if.else39 ]
  %63 = ptrtoint ptr %d11core to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %d11core, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 8
  %ops.i.i94 = getelementptr inbounds %struct.bcma_bus, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %ops.i.i94 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ops.i.i94, align 4
  %write16.i.i95 = getelementptr inbounds %struct.bcma_host_ops, ptr %68, i32 0, i32 4
  %69 = ptrtoint ptr %write16.i.i95 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %write16.i.i95, align 4
  tail call void %70(ptr noundef %64, i16 noundef zeroext 1020, i16 noundef zeroext 1040) #15
  %71 = ptrtoint ptr %d11core to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %d11core, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %72, align 8
  %ops.i.i.i74 = getelementptr inbounds %struct.bcma_bus, ptr %74, i32 0, i32 2
  %75 = ptrtoint ptr %ops.i.i.i74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ops.i.i.i74, align 4
  %read16.i.i.i75 = getelementptr inbounds %struct.bcma_host_ops, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %read16.i.i.i75 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %read16.i.i.i75, align 4
  %call.i.i.i76 = tail call zeroext i16 %78(ptr noundef %72, i16 noundef zeroext 1022) #15
  %and3.i.i77 = and i16 %call.i.i.i76, -2
  %or4.i.i78 = or i16 %and3.i.i77, %conv38.sink
  %79 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %72, align 8
  %ops.i1.i.i79 = getelementptr inbounds %struct.bcma_bus, ptr %80, i32 0, i32 2
  %81 = ptrtoint ptr %ops.i1.i.i79 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ops.i1.i.i79, align 4
  %write16.i.i.i80 = getelementptr inbounds %struct.bcma_host_ops, ptr %82, i32 0, i32 4
  %83 = ptrtoint ptr %write16.i.i.i80 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %write16.i.i.i80, align 4
  tail call void %84(ptr noundef %72, i16 noundef zeroext 1022, i16 noundef zeroext %or4.i.i78) #15
  %85 = ptrtoint ptr %phy_wreg.i.sink to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 0, ptr %phy_wreg.i.sink, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.end45.sink.split, %if.end25.if.end45_crit_edge
  br i1 %cmp19, label %if.end45.cleanup_crit_edge, label %if.then47

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then47:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #17
  %86 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %sh, align 4
  %physhim49 = getelementptr inbounds %struct.shared_phy, ptr %87, i32 0, i32 2
  %88 = ptrtoint ptr %physhim49 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %physhim49, align 4
  tail call void @wlapi_enable_mac(ptr noundef %89) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then47, %if.end45.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.end9.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wlc_phy_cal_init(ptr noundef %pih) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %d11core = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 5
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
  %call.i = tail call i32 %7(ptr noundef %1, i16 noundef zeroext 288) #15
  %and = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.end22, label %do.end, !prof !27

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 794, i32 noundef 9, ptr noundef nonnull @.str.4) #15
  br label %cleanup

if.end22:                                         ; preds = %entry
  %initialized = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 18
  %8 = ptrtoint ptr %initialized to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %initialized, align 1, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool23.not = icmp eq i8 %9, 0
  br i1 %tobool23.not, label %if.then24, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then24:                                        ; preds = %if.end22
  %calinit = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %calinit to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %calinit, align 4
  %tobool25.not = icmp eq ptr %11, null
  br i1 %tobool25.not, label %if.then24.if.end27_crit_edge, label %if.then26

if.then24.if.end27_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end27

if.then26:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #17
  tail call void %11(ptr noundef %pih) #15
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.then24.if.end27_crit_edge
  %12 = ptrtoint ptr %initialized to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %initialized, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.end22.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wlc_phy_down(ptr nocapture noundef %pih) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %phycal_timer = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 204
  %0 = ptrtoint ptr %phycal_timer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phycal_timer, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call zeroext i1 @wlapi_del_timer(ptr noundef nonnull %1) #15
  %not.call = xor i1 %call, true
  %spec.select = zext i1 %not.call to i32
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry.if.end_crit_edge
  %callbacks.0 = phi i32 [ 0, %entry.if.end_crit_edge ], [ %spec.select, %land.lhs.true ]
  %nphy_iqcal_chanspec_2G = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 200
  %2 = ptrtoint ptr %nphy_iqcal_chanspec_2G to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %nphy_iqcal_chanspec_2G, align 4
  %nphy_iqcal_chanspec_5G = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 201
  %3 = ptrtoint ptr %nphy_iqcal_chanspec_5G to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %nphy_iqcal_chanspec_5G, align 2
  ret i32 %callbacks.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @wlapi_del_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wlc_phy_table_addr(ptr nocapture noundef %pi, i32 noundef %tbl_id, i32 noundef %tbl_offset, i16 noundef zeroext %tblAddr, i16 noundef zeroext %tblDataHi, i16 noundef zeroext %tblDataLo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %d11core.i = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 5
  %0 = ptrtoint ptr %d11core.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d11core.i, align 4
  %conv.i = zext i16 %tblAddr to i32
  %2 = shl i32 %tbl_id, 26
  %3 = shl i32 %tbl_offset, 16
  %conv1.i = or i32 %3, %2
  %or.i = or i32 %conv1.i, %conv.i
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %ops.i.i = getelementptr inbounds %struct.bcma_bus, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i.i, align 4
  %write32.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write32.i.i, align 4
  tail call void %9(ptr noundef %1, i16 noundef zeroext 1020, i32 noundef %or.i) #15
  %10 = ptrtoint ptr %d11core.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %d11core.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %hosttype.i = getelementptr inbounds %struct.bcma_bus, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %hosttype.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %hosttype.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i = icmp eq i32 %15, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.write_phy_reg.exit_crit_edge

entry.write_phy_reg.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %write_phy_reg.exit

land.lhs.true.i:                                  ; preds = %entry
  %phy_wreg.i = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 53
  %16 = ptrtoint ptr %phy_wreg.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %phy_wreg.i, align 4
  %inc.i = add i16 %17, 1
  store i16 %inc.i, ptr %phy_wreg.i, align 4
  %phy_wreg_limit.i = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 54
  %18 = ptrtoint ptr %phy_wreg_limit.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %phy_wreg_limit.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i, i16 %19)
  %cmp6.not.i = icmp ult i16 %inc.i, %19
  br i1 %cmp6.not.i, label %land.lhs.true.i.write_phy_reg.exit_crit_edge, label %if.then.i

land.lhs.true.i.write_phy_reg.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %write_phy_reg.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  %20 = ptrtoint ptr %phy_wreg.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 0, ptr %phy_wreg.i, align 4
  %21 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %11, align 8
  %ops.i15.i = getelementptr inbounds %struct.bcma_bus, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %ops.i15.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops.i15.i, align 4
  %read16.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %read16.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %read16.i.i, align 4
  %call.i.i = tail call zeroext i16 %26(ptr noundef %11, i16 noundef zeroext 992) #15
  br label %write_phy_reg.exit

write_phy_reg.exit:                               ; preds = %if.then.i, %land.lhs.true.i.write_phy_reg.exit_crit_edge, %entry.write_phy_reg.exit_crit_edge
  %tbl_data_hi = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 266
  %27 = ptrtoint ptr %tbl_data_hi to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %tblDataHi, ptr %tbl_data_hi, align 4
  %tbl_data_lo = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 267
  %28 = ptrtoint ptr %tbl_data_lo to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %tblDataLo, ptr %tbl_data_lo, align 2
  %sh = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 1
  %29 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sh, align 4
  %chip = getelementptr inbounds %struct.shared_phy, ptr %30, i32 0, i32 10
  %31 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %chip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 43224, i32 %32)
  %cmp = icmp eq i32 %32, 43224
  br i1 %cmp, label %land.lhs.true, label %write_phy_reg.exit.if.end_crit_edge

write_phy_reg.exit.if.end_crit_edge:              ; preds = %write_phy_reg.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true:                                    ; preds = %write_phy_reg.exit
  %chiprev = getelementptr inbounds %struct.shared_phy, ptr %30, i32 0, i32 11
  %33 = ptrtoint ptr %chiprev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %chiprev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %34)
  %cmp3 = icmp eq i32 %34, 1
  br i1 %cmp3, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %tbl_addr = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 268
  %35 = ptrtoint ptr %tbl_addr to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %tblAddr, ptr %tbl_addr, align 4
  %tbl_save_id = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 269
  %36 = ptrtoint ptr %tbl_save_id to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %tbl_id, ptr %tbl_save_id, align 4
  %tbl_save_offset = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 270
  %37 = ptrtoint ptr %tbl_save_offset to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %tbl_offset, ptr %tbl_save_offset, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %write_phy_reg.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wlc_phy_table_data_write(ptr noundef %pi, i32 noundef %width, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %sh = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 1
  %0 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sh, align 4
  %chip = getelementptr inbounds %struct.shared_phy, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 43224, i32 %3)
  %cmp = icmp eq i32 %3, 43224
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %chiprev = getelementptr inbounds %struct.shared_phy, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %chiprev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chiprev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp2 = icmp eq i32 %5, 1
  br i1 %cmp2, label %land.lhs.true3, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %tbl_save_id = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 269
  %6 = ptrtoint ptr %tbl_save_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tbl_save_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %7)
  %cmp4 = icmp eq i32 %7, 9
  br i1 %cmp4, label %if.then, label %land.lhs.true3.if.end_crit_edge

land.lhs.true3.if.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %land.lhs.true3
  %tbl_data_lo = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 267
  %8 = ptrtoint ptr %tbl_data_lo to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %tbl_data_lo, align 2
  %d11core.i = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 5
  %10 = ptrtoint ptr %d11core.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %d11core.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %ops.i.i = getelementptr inbounds %struct.bcma_bus, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i.i, align 4
  %write16.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %write16.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write16.i.i, align 4
  tail call void %17(ptr noundef %11, i16 noundef zeroext 1020, i16 noundef zeroext %9) #15
  %phy_wreg.i = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 53
  %18 = ptrtoint ptr %phy_wreg.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %phy_wreg.i, align 4
  %19 = ptrtoint ptr %d11core.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %d11core.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 8
  %ops.i5.i = getelementptr inbounds %struct.bcma_bus, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %ops.i5.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops.i5.i, align 4
  %read16.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %read16.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %read16.i.i, align 4
  %call.i.i = tail call zeroext i16 %26(ptr noundef %20, i16 noundef zeroext 1022) #15
  %tbl_addr = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 268
  %27 = ptrtoint ptr %tbl_addr to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %tbl_addr, align 4
  %29 = ptrtoint ptr %tbl_save_id to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tbl_save_id, align 4
  %tbl_save_offset = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 270
  %31 = ptrtoint ptr %tbl_save_offset to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tbl_save_offset, align 4
  %33 = ptrtoint ptr %d11core.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %d11core.i, align 4
  %conv.i = zext i16 %28 to i32
  %35 = shl i32 %30, 26
  %36 = shl i32 %32, 16
  %conv1.i = or i32 %35, %conv.i
  %or.i = or i32 %conv1.i, %36
  %37 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %34, align 8
  %ops.i.i34 = getelementptr inbounds %struct.bcma_bus, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %ops.i.i34 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ops.i.i34, align 4
  %write32.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %40, i32 0, i32 5
  %41 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %write32.i.i, align 4
  tail call void %42(ptr noundef %34, i16 noundef zeroext 1020, i32 noundef %or.i) #15
  %43 = ptrtoint ptr %d11core.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %d11core.i, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 8
  %hosttype.i = getelementptr inbounds %struct.bcma_bus, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %hosttype.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %hosttype.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp.i = icmp eq i32 %48, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then.write_phy_reg.exit_crit_edge

if.then.write_phy_reg.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %write_phy_reg.exit

land.lhs.true.i:                                  ; preds = %if.then
  %49 = ptrtoint ptr %phy_wreg.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %phy_wreg.i, align 4
  %inc.i = add i16 %50, 1
  store i16 %inc.i, ptr %phy_wreg.i, align 4
  %phy_wreg_limit.i = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 54
  %51 = ptrtoint ptr %phy_wreg_limit.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %phy_wreg_limit.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i, i16 %52)
  %cmp6.not.i = icmp ult i16 %inc.i, %52
  br i1 %cmp6.not.i, label %land.lhs.true.i.write_phy_reg.exit_crit_edge, label %if.then.i

land.lhs.true.i.write_phy_reg.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %write_phy_reg.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  %53 = ptrtoint ptr %phy_wreg.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 0, ptr %phy_wreg.i, align 4
  %54 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %44, align 8
  %ops.i15.i = getelementptr inbounds %struct.bcma_bus, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %ops.i15.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ops.i15.i, align 4
  %read16.i.i36 = getelementptr inbounds %struct.bcma_host_ops, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %read16.i.i36 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %read16.i.i36, align 4
  %call.i.i37 = tail call zeroext i16 %59(ptr noundef %44, i16 noundef zeroext 992) #15
  br label %write_phy_reg.exit

write_phy_reg.exit:                               ; preds = %if.then.i, %land.lhs.true.i.write_phy_reg.exit_crit_edge, %if.then.write_phy_reg.exit_crit_edge
  %60 = ptrtoint ptr %tbl_save_offset to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %tbl_save_offset, align 4
  %inc = add i32 %61, 1
  store i32 %inc, ptr %tbl_save_offset, align 4
  br label %if.end

if.end:                                           ; preds = %write_phy_reg.exit, %land.lhs.true3.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %width)
  %cmp7 = icmp eq i32 %width, 32
  br i1 %cmp7, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end
  %tbl_data_hi = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 266
  %62 = ptrtoint ptr %tbl_data_hi to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %tbl_data_hi, align 4
  %shr = and i32 %val, -65536
  %d11core.i38 = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 5
  %64 = ptrtoint ptr %d11core.i38 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %d11core.i38, align 4
  %conv.i39 = zext i16 %63 to i32
  %or.i42 = or i32 %shr, %conv.i39
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %65, align 8
  %ops.i.i43 = getelementptr inbounds %struct.bcma_bus, ptr %67, i32 0, i32 2
  %68 = ptrtoint ptr %ops.i.i43 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ops.i.i43, align 4
  %write32.i.i44 = getelementptr inbounds %struct.bcma_host_ops, ptr %69, i32 0, i32 5
  %70 = ptrtoint ptr %write32.i.i44 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %write32.i.i44, align 4
  tail call void %71(ptr noundef %65, i16 noundef zeroext 1020, i32 noundef %or.i42) #15
  %72 = ptrtoint ptr %d11core.i38 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %d11core.i38, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %73, align 8
  %hosttype.i45 = getelementptr inbounds %struct.bcma_bus, ptr %75, i32 0, i32 3
  %76 = ptrtoint ptr %hosttype.i45 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %hosttype.i45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %cmp.i46 = icmp eq i32 %77, 0
  br i1 %cmp.i46, label %land.lhs.true.i51, label %if.then9.write_phy_reg.exit56_crit_edge

if.then9.write_phy_reg.exit56_crit_edge:          ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #17
  br label %write_phy_reg.exit56

land.lhs.true.i51:                                ; preds = %if.then9
  %phy_wreg.i47 = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 53
  %78 = ptrtoint ptr %phy_wreg.i47 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %phy_wreg.i47, align 4
  %inc.i48 = add i16 %79, 1
  store i16 %inc.i48, ptr %phy_wreg.i47, align 4
  %phy_wreg_limit.i49 = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 54
  %80 = ptrtoint ptr %phy_wreg_limit.i49 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %phy_wreg_limit.i49, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i48, i16 %81)
  %cmp6.not.i50 = icmp ult i16 %inc.i48, %81
  br i1 %cmp6.not.i50, label %land.lhs.true.i51.write_phy_reg.exit56_crit_edge, label %if.then.i55

land.lhs.true.i51.write_phy_reg.exit56_crit_edge: ; preds = %land.lhs.true.i51
  call void @__sanitizer_cov_trace_pc() #17
  br label %write_phy_reg.exit56

if.then.i55:                                      ; preds = %land.lhs.true.i51
  call void @__sanitizer_cov_trace_pc() #17
  %82 = ptrtoint ptr %phy_wreg.i47 to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 0, ptr %phy_wreg.i47, align 4
  %83 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %73, align 8
  %ops.i15.i52 = getelementptr inbounds %struct.bcma_bus, ptr %84, i32 0, i32 2
  %85 = ptrtoint ptr %ops.i15.i52 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %ops.i15.i52, align 4
  %read16.i.i53 = getelementptr inbounds %struct.bcma_host_ops, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %read16.i.i53 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %read16.i.i53, align 4
  %call.i.i54 = tail call zeroext i16 %88(ptr noundef %73, i16 noundef zeroext 992) #15
  br label %write_phy_reg.exit56

write_phy_reg.exit56:                             ; preds = %if.then.i55, %land.lhs.true.i51.write_phy_reg.exit56_crit_edge, %if.then9.write_phy_reg.exit56_crit_edge
  %tbl_data_lo11 = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 267
  %89 = ptrtoint ptr %tbl_data_lo11 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %tbl_data_lo11, align 2
  %91 = ptrtoint ptr %d11core.i38 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %d11core.i38, align 4
  %conv.i58 = zext i16 %90 to i32
  %conv1.i59 = shl i32 %val, 16
  %or.i61 = or i32 %conv1.i59, %conv.i58
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %92, align 8
  %ops.i.i62 = getelementptr inbounds %struct.bcma_bus, ptr %94, i32 0, i32 2
  %95 = ptrtoint ptr %ops.i.i62 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %ops.i.i62, align 4
  %write32.i.i63 = getelementptr inbounds %struct.bcma_host_ops, ptr %96, i32 0, i32 5
  %97 = ptrtoint ptr %write32.i.i63 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %write32.i.i63, align 4
  tail call void %98(ptr noundef %92, i16 noundef zeroext 1020, i32 noundef %or.i61) #15
  %99 = ptrtoint ptr %d11core.i38 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %d11core.i38, align 4
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %100, align 8
  %hosttype.i64 = getelementptr inbounds %struct.bcma_bus, ptr %102, i32 0, i32 3
  %103 = ptrtoint ptr %hosttype.i64 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %hosttype.i64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %cmp.i65 = icmp eq i32 %104, 0
  br i1 %cmp.i65, label %land.lhs.true.i70, label %write_phy_reg.exit56.if.end15_crit_edge

write_phy_reg.exit56.if.end15_crit_edge:          ; preds = %write_phy_reg.exit56
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15

land.lhs.true.i70:                                ; preds = %write_phy_reg.exit56
  %phy_wreg.i66 = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 53
  %105 = ptrtoint ptr %phy_wreg.i66 to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %phy_wreg.i66, align 4
  %inc.i67 = add i16 %106, 1
  store i16 %inc.i67, ptr %phy_wreg.i66, align 4
  %phy_wreg_limit.i68 = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 54
  %107 = ptrtoint ptr %phy_wreg_limit.i68 to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %phy_wreg_limit.i68, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i67, i16 %108)
  %cmp6.not.i69 = icmp ult i16 %inc.i67, %108
  br i1 %cmp6.not.i69, label %land.lhs.true.i70.if.end15_crit_edge, label %land.lhs.true.i70.if.end15.sink.split_crit_edge

land.lhs.true.i70.if.end15.sink.split_crit_edge:  ; preds = %land.lhs.true.i70
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split

land.lhs.true.i70.if.end15_crit_edge:             ; preds = %land.lhs.true.i70
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15

if.else:                                          ; preds = %if.end
  %tbl_data_lo13 = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 267
  %109 = ptrtoint ptr %tbl_data_lo13 to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %tbl_data_lo13, align 2
  %d11core.i76 = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 5
  %111 = ptrtoint ptr %d11core.i76 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %d11core.i76, align 4
  %conv.i77 = zext i16 %110 to i32
  %conv1.i78 = shl i32 %val, 16
  %or.i80 = or i32 %conv1.i78, %conv.i77
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %112, align 8
  %ops.i.i81 = getelementptr inbounds %struct.bcma_bus, ptr %114, i32 0, i32 2
  %115 = ptrtoint ptr %ops.i.i81 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %ops.i.i81, align 4
  %write32.i.i82 = getelementptr inbounds %struct.bcma_host_ops, ptr %116, i32 0, i32 5
  %117 = ptrtoint ptr %write32.i.i82 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %write32.i.i82, align 4
  tail call void %118(ptr noundef %112, i16 noundef zeroext 1020, i32 noundef %or.i80) #15
  %119 = ptrtoint ptr %d11core.i76 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %d11core.i76, align 4
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %120, align 8
  %hosttype.i83 = getelementptr inbounds %struct.bcma_bus, ptr %122, i32 0, i32 3
  %123 = ptrtoint ptr %hosttype.i83 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %hosttype.i83, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %cmp.i84 = icmp eq i32 %124, 0
  br i1 %cmp.i84, label %land.lhs.true.i89, label %if.else.if.end15_crit_edge

if.else.if.end15_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15

land.lhs.true.i89:                                ; preds = %if.else
  %phy_wreg.i85 = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 53
  %125 = ptrtoint ptr %phy_wreg.i85 to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %phy_wreg.i85, align 4
  %inc.i86 = add i16 %126, 1
  store i16 %inc.i86, ptr %phy_wreg.i85, align 4
  %phy_wreg_limit.i87 = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 54
  %127 = ptrtoint ptr %phy_wreg_limit.i87 to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %phy_wreg_limit.i87, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i86, i16 %128)
  %cmp6.not.i88 = icmp ult i16 %inc.i86, %128
  br i1 %cmp6.not.i88, label %land.lhs.true.i89.if.end15_crit_edge, label %land.lhs.true.i89.if.end15.sink.split_crit_edge

land.lhs.true.i89.if.end15.sink.split_crit_edge:  ; preds = %land.lhs.true.i89
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split

land.lhs.true.i89.if.end15_crit_edge:             ; preds = %land.lhs.true.i89
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15

if.end15.sink.split:                              ; preds = %land.lhs.true.i89.if.end15.sink.split_crit_edge, %land.lhs.true.i70.if.end15.sink.split_crit_edge
  %phy_wreg.i85.sink = phi ptr [ %phy_wreg.i66, %land.lhs.true.i70.if.end15.sink.split_crit_edge ], [ %phy_wreg.i85, %land.lhs.true.i89.if.end15.sink.split_crit_edge ]
  %.sink98 = phi ptr [ %100, %land.lhs.true.i70.if.end15.sink.split_crit_edge ], [ %120, %land.lhs.true.i89.if.end15.sink.split_crit_edge ]
  %129 = ptrtoint ptr %phy_wreg.i85.sink to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 0, ptr %phy_wreg.i85.sink, align 4
  %130 = ptrtoint ptr %.sink98 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %.sink98, align 8
  %ops.i15.i90 = getelementptr inbounds %struct.bcma_bus, ptr %131, i32 0, i32 2
  %132 = ptrtoint ptr %ops.i15.i90 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %ops.i15.i90, align 4
  %read16.i.i91 = getelementptr inbounds %struct.bcma_host_ops, ptr %133, i32 0, i32 1
  %134 = ptrtoint ptr %read16.i.i91 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %read16.i.i91, align 4
  %call.i.i92 = tail call zeroext i16 %135(ptr noundef %.sink98, i16 noundef zeroext 992) #15
  br label %if.end15

if.end15:                                         ; preds = %if.end15.sink.split, %land.lhs.true.i89.if.end15_crit_edge, %if.else.if.end15_crit_edge, %land.lhs.true.i70.if.end15_crit_edge, %write_phy_reg.exit56.if.end15_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wlc_phy_write_table(ptr noundef %pi, ptr nocapture noundef readonly %ptbl_info, i16 noundef zeroext %tblAddr, i16 noundef zeroext %tblDataHi, i16 noundef zeroext %tblDataLo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tbl_id1 = getelementptr inbounds %struct.phytbl_info, ptr %ptbl_info, i32 0, i32 2
  %0 = ptrtoint ptr %tbl_id1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tbl_id1, align 4
  %tbl_offset2 = getelementptr inbounds %struct.phytbl_info, ptr %ptbl_info, i32 0, i32 3
  %2 = ptrtoint ptr %tbl_offset2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tbl_offset2, align 4
  %tbl_width3 = getelementptr inbounds %struct.phytbl_info, ptr %ptbl_info, i32 0, i32 4
  %4 = ptrtoint ptr %tbl_width3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tbl_width3, align 4
  %6 = ptrtoint ptr %ptbl_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ptbl_info, align 4
  %shl = shl i32 %1, 10
  %or = or i32 %shl, %3
  %d11core.i = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 5
  %8 = ptrtoint ptr %d11core.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d11core.i, align 4
  %conv.i = zext i16 %tblAddr to i32
  %conv1.i = shl i32 %or, 16
  %or.i = or i32 %conv1.i, %conv.i
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %ops.i.i = getelementptr inbounds %struct.bcma_bus, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i.i, align 4
  %write32.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write32.i.i, align 4
  tail call void %15(ptr noundef %9, i16 noundef zeroext 1020, i32 noundef %or.i) #15
  %16 = ptrtoint ptr %d11core.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %d11core.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 8
  %hosttype.i = getelementptr inbounds %struct.bcma_bus, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %hosttype.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %hosttype.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i = icmp eq i32 %21, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.write_phy_reg.exit_crit_edge

entry.write_phy_reg.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %write_phy_reg.exit

land.lhs.true.i:                                  ; preds = %entry
  %phy_wreg.i = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 53
  %22 = ptrtoint ptr %phy_wreg.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %phy_wreg.i, align 4
  %inc.i = add i16 %23, 1
  store i16 %inc.i, ptr %phy_wreg.i, align 4
  %phy_wreg_limit.i = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 54
  %24 = ptrtoint ptr %phy_wreg_limit.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %phy_wreg_limit.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i, i16 %25)
  %cmp6.not.i = icmp ult i16 %inc.i, %25
  br i1 %cmp6.not.i, label %land.lhs.true.i.write_phy_reg.exit_crit_edge, label %if.then.i

land.lhs.true.i.write_phy_reg.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %write_phy_reg.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  %26 = ptrtoint ptr %phy_wreg.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 0, ptr %phy_wreg.i, align 4
  %27 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %17, align 8
  %ops.i15.i = getelementptr inbounds %struct.bcma_bus, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %ops.i15.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ops.i15.i, align 4
  %read16.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %read16.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %read16.i.i, align 4
  %call.i.i = tail call zeroext i16 %32(ptr noundef %17, i16 noundef zeroext 992) #15
  br label %write_phy_reg.exit

write_phy_reg.exit:                               ; preds = %if.then.i, %land.lhs.true.i.write_phy_reg.exit_crit_edge, %entry.write_phy_reg.exit_crit_edge
  %tbl_len = getelementptr inbounds %struct.phytbl_info, ptr %ptbl_info, i32 0, i32 1
  %33 = ptrtoint ptr %tbl_len to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tbl_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp162.not = icmp eq i32 %34, 0
  br i1 %cmp162.not, label %write_phy_reg.exit.for.end_crit_edge, label %for.body.lr.ph

write_phy_reg.exit.for.end_crit_edge:             ; preds = %write_phy_reg.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.lr.ph:                                   ; preds = %write_phy_reg.exit
  %sh = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %1)
  %cmp13 = icmp eq i32 %1, 9
  %phy_wreg.i64 = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 53
  %phy_wreg_limit.i78 = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 54
  %conv.i125 = zext i16 %tblDataLo to i32
  %conv.i87 = zext i16 %tblDataHi to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %idx.0163 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %35 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sh, align 4
  %chip = getelementptr inbounds %struct.shared_phy, ptr %36, i32 0, i32 10
  %37 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %chip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 43224, i32 %38)
  %cmp7 = icmp eq i32 %38, 43224
  br i1 %cmp7, label %land.lhs.true, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %chiprev = getelementptr inbounds %struct.shared_phy, ptr %36, i32 0, i32 11
  %39 = ptrtoint ptr %chiprev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %chiprev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %40)
  %cmp10 = icmp eq i32 %40, 1
  %or.cond = select i1 %cmp10, i1 %cmp13, i1 false
  br i1 %or.cond, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %41 = ptrtoint ptr %d11core.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %d11core.i, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 8
  %ops.i.i63 = getelementptr inbounds %struct.bcma_bus, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %ops.i.i63 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ops.i.i63, align 4
  %write16.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %46, i32 0, i32 4
  %47 = ptrtoint ptr %write16.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %write16.i.i, align 4
  tail call void %48(ptr noundef %42, i16 noundef zeroext 1020, i16 noundef zeroext %tblDataLo) #15
  %49 = ptrtoint ptr %phy_wreg.i64 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 0, ptr %phy_wreg.i64, align 4
  %50 = ptrtoint ptr %d11core.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %d11core.i, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 8
  %ops.i5.i = getelementptr inbounds %struct.bcma_bus, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %ops.i5.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ops.i5.i, align 4
  %read16.i.i65 = getelementptr inbounds %struct.bcma_host_ops, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %read16.i.i65 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %read16.i.i65, align 4
  %call.i.i66 = tail call zeroext i16 %57(ptr noundef %51, i16 noundef zeroext 1022) #15
  %add = add i32 %idx.0163, %3
  %or16 = or i32 %add, %shl
  %58 = ptrtoint ptr %d11core.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %d11core.i, align 4
  %conv1.i69 = shl i32 %or16, 16
  %or.i71 = or i32 %conv1.i69, %conv.i
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 8
  %ops.i.i72 = getelementptr inbounds %struct.bcma_bus, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %ops.i.i72 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ops.i.i72, align 4
  %write32.i.i73 = getelementptr inbounds %struct.bcma_host_ops, ptr %63, i32 0, i32 5
  %64 = ptrtoint ptr %write32.i.i73 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %write32.i.i73, align 4
  tail call void %65(ptr noundef %59, i16 noundef zeroext 1020, i32 noundef %or.i71) #15
  %66 = ptrtoint ptr %d11core.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %d11core.i, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 8
  %hosttype.i74 = getelementptr inbounds %struct.bcma_bus, ptr %69, i32 0, i32 3
  %70 = ptrtoint ptr %hosttype.i74 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %hosttype.i74, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp.i75 = icmp eq i32 %71, 0
  br i1 %cmp.i75, label %land.lhs.true.i80, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true.i80:                                ; preds = %if.then
  %72 = ptrtoint ptr %phy_wreg.i64 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %phy_wreg.i64, align 4
  %inc.i77 = add i16 %73, 1
  store i16 %inc.i77, ptr %phy_wreg.i64, align 4
  %74 = ptrtoint ptr %phy_wreg_limit.i78 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %phy_wreg_limit.i78, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i77, i16 %75)
  %cmp6.not.i79 = icmp ult i16 %inc.i77, %75
  br i1 %cmp6.not.i79, label %land.lhs.true.i80.if.end_crit_edge, label %if.then.i84

land.lhs.true.i80.if.end_crit_edge:               ; preds = %land.lhs.true.i80
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then.i84:                                      ; preds = %land.lhs.true.i80
  call void @__sanitizer_cov_trace_pc() #17
  %76 = ptrtoint ptr %phy_wreg.i64 to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 0, ptr %phy_wreg.i64, align 4
  %77 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %67, align 8
  %ops.i15.i81 = getelementptr inbounds %struct.bcma_bus, ptr %78, i32 0, i32 2
  %79 = ptrtoint ptr %ops.i15.i81 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ops.i15.i81, align 4
  %read16.i.i82 = getelementptr inbounds %struct.bcma_host_ops, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %read16.i.i82 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %read16.i.i82, align 4
  %call.i.i83 = tail call zeroext i16 %82(ptr noundef %67, i16 noundef zeroext 992) #15
  br label %if.end

if.end:                                           ; preds = %if.then.i84, %land.lhs.true.i80.if.end_crit_edge, %if.then.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  %83 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %83, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %5, label %if.else28 [
    i32 32, label %if.then20
    i32 16, label %if.then26
  ]

if.then20:                                        ; preds = %if.end
  %arrayidx = getelementptr i32, ptr %7, i32 %idx.0163
  %84 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx, align 4
  %shr = and i32 %85, -65536
  %86 = ptrtoint ptr %d11core.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %d11core.i, align 4
  %or.i90 = or i32 %shr, %conv.i87
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %87, align 8
  %ops.i.i91 = getelementptr inbounds %struct.bcma_bus, ptr %89, i32 0, i32 2
  %90 = ptrtoint ptr %ops.i.i91 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %ops.i.i91, align 4
  %write32.i.i92 = getelementptr inbounds %struct.bcma_host_ops, ptr %91, i32 0, i32 5
  %92 = ptrtoint ptr %write32.i.i92 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %write32.i.i92, align 4
  tail call void %93(ptr noundef %87, i16 noundef zeroext 1020, i32 noundef %or.i90) #15
  %94 = ptrtoint ptr %d11core.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %d11core.i, align 4
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %95, align 8
  %hosttype.i93 = getelementptr inbounds %struct.bcma_bus, ptr %97, i32 0, i32 3
  %98 = ptrtoint ptr %hosttype.i93 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %hosttype.i93, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %cmp.i94 = icmp eq i32 %99, 0
  br i1 %cmp.i94, label %land.lhs.true.i99, label %if.then20.write_phy_reg.exit104_crit_edge

if.then20.write_phy_reg.exit104_crit_edge:        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #17
  br label %write_phy_reg.exit104

land.lhs.true.i99:                                ; preds = %if.then20
  %100 = ptrtoint ptr %phy_wreg.i64 to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %phy_wreg.i64, align 4
  %inc.i96 = add i16 %101, 1
  store i16 %inc.i96, ptr %phy_wreg.i64, align 4
  %102 = ptrtoint ptr %phy_wreg_limit.i78 to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %phy_wreg_limit.i78, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i96, i16 %103)
  %cmp6.not.i98 = icmp ult i16 %inc.i96, %103
  br i1 %cmp6.not.i98, label %land.lhs.true.i99.write_phy_reg.exit104_crit_edge, label %if.then.i103

land.lhs.true.i99.write_phy_reg.exit104_crit_edge: ; preds = %land.lhs.true.i99
  call void @__sanitizer_cov_trace_pc() #17
  br label %write_phy_reg.exit104

if.then.i103:                                     ; preds = %land.lhs.true.i99
  call void @__sanitizer_cov_trace_pc() #17
  %104 = ptrtoint ptr %phy_wreg.i64 to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 0, ptr %phy_wreg.i64, align 4
  %105 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %95, align 8
  %ops.i15.i100 = getelementptr inbounds %struct.bcma_bus, ptr %106, i32 0, i32 2
  %107 = ptrtoint ptr %ops.i15.i100 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %ops.i15.i100, align 4
  %read16.i.i101 = getelementptr inbounds %struct.bcma_host_ops, ptr %108, i32 0, i32 1
  %109 = ptrtoint ptr %read16.i.i101 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %read16.i.i101, align 4
  %call.i.i102 = tail call zeroext i16 %110(ptr noundef %95, i16 noundef zeroext 992) #15
  br label %write_phy_reg.exit104

write_phy_reg.exit104:                            ; preds = %if.then.i103, %land.lhs.true.i99.write_phy_reg.exit104_crit_edge, %if.then20.write_phy_reg.exit104_crit_edge
  %111 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %arrayidx, align 4
  %113 = ptrtoint ptr %d11core.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %d11core.i, align 4
  %conv1.i107 = shl i32 %112, 16
  %or.i109 = or i32 %conv1.i107, %conv.i125
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %114, align 8
  %ops.i.i110 = getelementptr inbounds %struct.bcma_bus, ptr %116, i32 0, i32 2
  %117 = ptrtoint ptr %ops.i.i110 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %ops.i.i110, align 4
  %write32.i.i111 = getelementptr inbounds %struct.bcma_host_ops, ptr %118, i32 0, i32 5
  %119 = ptrtoint ptr %write32.i.i111 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %write32.i.i111, align 4
  tail call void %120(ptr noundef %114, i16 noundef zeroext 1020, i32 noundef %or.i109) #15
  %121 = ptrtoint ptr %d11core.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %d11core.i, align 4
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %122, align 8
  %hosttype.i112 = getelementptr inbounds %struct.bcma_bus, ptr %124, i32 0, i32 3
  %125 = ptrtoint ptr %hosttype.i112 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %hosttype.i112, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %cmp.i113 = icmp eq i32 %126, 0
  br i1 %cmp.i113, label %land.lhs.true.i118, label %write_phy_reg.exit104.for.inc_crit_edge

write_phy_reg.exit104.for.inc_crit_edge:          ; preds = %write_phy_reg.exit104
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

land.lhs.true.i118:                               ; preds = %write_phy_reg.exit104
  %127 = ptrtoint ptr %phy_wreg.i64 to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %phy_wreg.i64, align 4
  %inc.i115 = add i16 %128, 1
  store i16 %inc.i115, ptr %phy_wreg.i64, align 4
  %129 = ptrtoint ptr %phy_wreg_limit.i78 to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %phy_wreg_limit.i78, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i115, i16 %130)
  %cmp6.not.i117 = icmp ult i16 %inc.i115, %130
  br i1 %cmp6.not.i117, label %land.lhs.true.i118.for.inc_crit_edge, label %land.lhs.true.i118.for.inc.sink.split_crit_edge

land.lhs.true.i118.for.inc.sink.split_crit_edge:  ; preds = %land.lhs.true.i118
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.sink.split

land.lhs.true.i118.for.inc_crit_edge:             ; preds = %land.lhs.true.i118
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then26:                                        ; preds = %if.end
  %arrayidx27 = getelementptr i16, ptr %7, i32 %idx.0163
  %131 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %arrayidx27, align 2
  %133 = ptrtoint ptr %d11core.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %d11core.i, align 4
  %conv1.i126 = zext i16 %132 to i32
  %shl.i127 = shl nuw i32 %conv1.i126, 16
  %or.i128 = or i32 %shl.i127, %conv.i125
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %134, align 8
  %ops.i.i129 = getelementptr inbounds %struct.bcma_bus, ptr %136, i32 0, i32 2
  %137 = ptrtoint ptr %ops.i.i129 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %ops.i.i129, align 4
  %write32.i.i130 = getelementptr inbounds %struct.bcma_host_ops, ptr %138, i32 0, i32 5
  %139 = ptrtoint ptr %write32.i.i130 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %write32.i.i130, align 4
  tail call void %140(ptr noundef %134, i16 noundef zeroext 1020, i32 noundef %or.i128) #15
  %141 = ptrtoint ptr %d11core.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %d11core.i, align 4
  %143 = ptrtoint ptr %142 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %142, align 8
  %hosttype.i131 = getelementptr inbounds %struct.bcma_bus, ptr %144, i32 0, i32 3
  %145 = ptrtoint ptr %hosttype.i131 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %hosttype.i131, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %cmp.i132 = icmp eq i32 %146, 0
  br i1 %cmp.i132, label %land.lhs.true.i137, label %if.then26.for.inc_crit_edge

if.then26.for.inc_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

land.lhs.true.i137:                               ; preds = %if.then26
  %147 = ptrtoint ptr %phy_wreg.i64 to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %phy_wreg.i64, align 4
  %inc.i134 = add i16 %148, 1
  store i16 %inc.i134, ptr %phy_wreg.i64, align 4
  %149 = ptrtoint ptr %phy_wreg_limit.i78 to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %phy_wreg_limit.i78, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i134, i16 %150)
  %cmp6.not.i136 = icmp ult i16 %inc.i134, %150
  br i1 %cmp6.not.i136, label %land.lhs.true.i137.for.inc_crit_edge, label %land.lhs.true.i137.for.inc.sink.split_crit_edge

land.lhs.true.i137.for.inc.sink.split_crit_edge:  ; preds = %land.lhs.true.i137
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.sink.split

land.lhs.true.i137.for.inc_crit_edge:             ; preds = %land.lhs.true.i137
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.else28:                                        ; preds = %if.end
  %arrayidx29 = getelementptr i8, ptr %7, i32 %idx.0163
  %151 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %arrayidx29, align 1
  %153 = ptrtoint ptr %d11core.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %d11core.i, align 4
  %conv1.i145 = zext i8 %152 to i32
  %shl.i146 = shl nuw nsw i32 %conv1.i145, 16
  %or.i147 = or i32 %shl.i146, %conv.i125
  %155 = ptrtoint ptr %154 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %154, align 8
  %ops.i.i148 = getelementptr inbounds %struct.bcma_bus, ptr %156, i32 0, i32 2
  %157 = ptrtoint ptr %ops.i.i148 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %ops.i.i148, align 4
  %write32.i.i149 = getelementptr inbounds %struct.bcma_host_ops, ptr %158, i32 0, i32 5
  %159 = ptrtoint ptr %write32.i.i149 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %write32.i.i149, align 4
  tail call void %160(ptr noundef %154, i16 noundef zeroext 1020, i32 noundef %or.i147) #15
  %161 = ptrtoint ptr %d11core.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %d11core.i, align 4
  %163 = ptrtoint ptr %162 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %162, align 8
  %hosttype.i150 = getelementptr inbounds %struct.bcma_bus, ptr %164, i32 0, i32 3
  %165 = ptrtoint ptr %hosttype.i150 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %hosttype.i150, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %166)
  %cmp.i151 = icmp eq i32 %166, 0
  br i1 %cmp.i151, label %land.lhs.true.i156, label %if.else28.for.inc_crit_edge

if.else28.for.inc_crit_edge:                      ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

land.lhs.true.i156:                               ; preds = %if.else28
  %167 = ptrtoint ptr %phy_wreg.i64 to i32
  call void @__asan_load2_noabort(i32 %167)
  %168 = load i16, ptr %phy_wreg.i64, align 4
  %inc.i153 = add i16 %168, 1
  store i16 %inc.i153, ptr %phy_wreg.i64, align 4
  %169 = ptrtoint ptr %phy_wreg_limit.i78 to i32
  call void @__asan_load2_noabort(i32 %169)
  %170 = load i16, ptr %phy_wreg_limit.i78, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i153, i16 %170)
  %cmp6.not.i155 = icmp ult i16 %inc.i153, %170
  br i1 %cmp6.not.i155, label %land.lhs.true.i156.for.inc_crit_edge, label %land.lhs.true.i156.for.inc.sink.split_crit_edge

land.lhs.true.i156.for.inc.sink.split_crit_edge:  ; preds = %land.lhs.true.i156
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.sink.split

land.lhs.true.i156.for.inc_crit_edge:             ; preds = %land.lhs.true.i156
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

for.inc.sink.split:                               ; preds = %land.lhs.true.i156.for.inc.sink.split_crit_edge, %land.lhs.true.i137.for.inc.sink.split_crit_edge, %land.lhs.true.i118.for.inc.sink.split_crit_edge
  %.sink169 = phi ptr [ %122, %land.lhs.true.i118.for.inc.sink.split_crit_edge ], [ %142, %land.lhs.true.i137.for.inc.sink.split_crit_edge ], [ %162, %land.lhs.true.i156.for.inc.sink.split_crit_edge ]
  %171 = ptrtoint ptr %phy_wreg.i64 to i32
  call void @__asan_store2_noabort(i32 %171)
  store i16 0, ptr %phy_wreg.i64, align 4
  %172 = ptrtoint ptr %.sink169 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %.sink169, align 8
  %ops.i15.i157 = getelementptr inbounds %struct.bcma_bus, ptr %173, i32 0, i32 2
  %174 = ptrtoint ptr %ops.i15.i157 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %ops.i15.i157, align 4
  %read16.i.i158 = getelementptr inbounds %struct.bcma_host_ops, ptr %175, i32 0, i32 1
  %176 = ptrtoint ptr %read16.i.i158 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %read16.i.i158, align 4
  %call.i.i159 = tail call zeroext i16 %177(ptr noundef %.sink169, i16 noundef zeroext 992) #15
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %land.lhs.true.i156.for.inc_crit_edge, %if.else28.for.inc_crit_edge, %land.lhs.true.i137.for.inc_crit_edge, %if.then26.for.inc_crit_edge, %land.lhs.true.i118.for.inc_crit_edge, %write_phy_reg.exit104.for.inc_crit_edge
  %inc = add nuw i32 %idx.0163, 1
  %178 = ptrtoint ptr %tbl_len to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %tbl_len, align 4
  %cmp = icmp ult i32 %inc, %179
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %write_phy_reg.exit.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wlc_phy_read_table(ptr nocapture noundef %pi, ptr nocapture noundef readonly %ptbl_info, i16 noundef zeroext %tblAddr, i16 noundef zeroext %tblDataHi, i16 noundef zeroext %tblDataLo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tbl_id1 = getelementptr inbounds %struct.phytbl_info, ptr %ptbl_info, i32 0, i32 2
  %0 = ptrtoint ptr %tbl_id1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tbl_id1, align 4
  %tbl_offset2 = getelementptr inbounds %struct.phytbl_info, ptr %ptbl_info, i32 0, i32 3
  %2 = ptrtoint ptr %tbl_offset2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tbl_offset2, align 4
  %tbl_width3 = getelementptr inbounds %struct.phytbl_info, ptr %ptbl_info, i32 0, i32 4
  %4 = ptrtoint ptr %tbl_width3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tbl_width3, align 4
  %6 = ptrtoint ptr %ptbl_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ptbl_info, align 4
  %shl = shl i32 %1, 10
  %or = or i32 %shl, %3
  %d11core.i = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 5
  %8 = ptrtoint ptr %d11core.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d11core.i, align 4
  %conv.i = zext i16 %tblAddr to i32
  %conv1.i = shl i32 %or, 16
  %or.i = or i32 %conv1.i, %conv.i
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %ops.i.i = getelementptr inbounds %struct.bcma_bus, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i.i, align 4
  %write32.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write32.i.i, align 4
  tail call void %15(ptr noundef %9, i16 noundef zeroext 1020, i32 noundef %or.i) #15
  %16 = ptrtoint ptr %d11core.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %d11core.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 8
  %hosttype.i = getelementptr inbounds %struct.bcma_bus, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %hosttype.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %hosttype.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i = icmp eq i32 %21, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.write_phy_reg.exit_crit_edge

entry.write_phy_reg.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %write_phy_reg.exit

land.lhs.true.i:                                  ; preds = %entry
  %phy_wreg.i = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 53
  %22 = ptrtoint ptr %phy_wreg.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %phy_wreg.i, align 4
  %inc.i = add i16 %23, 1
  store i16 %inc.i, ptr %phy_wreg.i, align 4
  %phy_wreg_limit.i = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 54
  %24 = ptrtoint ptr %phy_wreg_limit.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %phy_wreg_limit.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i, i16 %25)
  %cmp6.not.i = icmp ult i16 %inc.i, %25
  br i1 %cmp6.not.i, label %land.lhs.true.i.write_phy_reg.exit_crit_edge, label %if.then.i

land.lhs.true.i.write_phy_reg.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %write_phy_reg.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  %26 = ptrtoint ptr %phy_wreg.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 0, ptr %phy_wreg.i, align 4
  %27 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %17, align 8
  %ops.i15.i = getelementptr inbounds %struct.bcma_bus, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %ops.i15.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ops.i15.i, align 4
  %read16.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %read16.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %read16.i.i, align 4
  %call.i.i = tail call zeroext i16 %32(ptr noundef %17, i16 noundef zeroext 992) #15
  br label %write_phy_reg.exit

write_phy_reg.exit:                               ; preds = %if.then.i, %land.lhs.true.i.write_phy_reg.exit_crit_edge, %entry.write_phy_reg.exit_crit_edge
  %tbl_len = getelementptr inbounds %struct.phytbl_info, ptr %ptbl_info, i32 0, i32 1
  %33 = ptrtoint ptr %tbl_len to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tbl_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp116.not = icmp eq i32 %34, 0
  br i1 %cmp116.not, label %write_phy_reg.exit.for.end_crit_edge, label %for.body.lr.ph

write_phy_reg.exit.for.end_crit_edge:             ; preds = %write_phy_reg.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.lr.ph:                                   ; preds = %write_phy_reg.exit
  %sh = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 1
  %phy_wreg.i66 = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 53
  %phy_wreg_limit.i80 = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 54
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %idx.0117 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %35 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sh, align 4
  %chip = getelementptr inbounds %struct.shared_phy, ptr %36, i32 0, i32 10
  %37 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %chip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 43224, i32 %38)
  %cmp7 = icmp eq i32 %38, 43224
  br i1 %cmp7, label %land.lhs.true, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %chiprev = getelementptr inbounds %struct.shared_phy, ptr %36, i32 0, i32 11
  %39 = ptrtoint ptr %chiprev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %chiprev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %40)
  %cmp10 = icmp eq i32 %40, 1
  br i1 %cmp10, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %41 = ptrtoint ptr %d11core.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %d11core.i, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 8
  %ops.i.i65 = getelementptr inbounds %struct.bcma_bus, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %ops.i.i65 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ops.i.i65, align 4
  %write16.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %46, i32 0, i32 4
  %47 = ptrtoint ptr %write16.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %write16.i.i, align 4
  tail call void %48(ptr noundef %42, i16 noundef zeroext 1020, i16 noundef zeroext %tblDataLo) #15
  %49 = ptrtoint ptr %phy_wreg.i66 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 0, ptr %phy_wreg.i66, align 4
  %50 = ptrtoint ptr %d11core.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %d11core.i, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 8
  %ops.i5.i = getelementptr inbounds %struct.bcma_bus, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %ops.i5.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ops.i5.i, align 4
  %read16.i.i67 = getelementptr inbounds %struct.bcma_host_ops, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %read16.i.i67 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %read16.i.i67, align 4
  %call.i.i68 = tail call zeroext i16 %57(ptr noundef %51, i16 noundef zeroext 1022) #15
  %add = add i32 %idx.0117, %3
  %or13 = or i32 %add, %shl
  %58 = ptrtoint ptr %d11core.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %d11core.i, align 4
  %conv1.i71 = shl i32 %or13, 16
  %or.i73 = or i32 %conv1.i71, %conv.i
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 8
  %ops.i.i74 = getelementptr inbounds %struct.bcma_bus, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %ops.i.i74 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ops.i.i74, align 4
  %write32.i.i75 = getelementptr inbounds %struct.bcma_host_ops, ptr %63, i32 0, i32 5
  %64 = ptrtoint ptr %write32.i.i75 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %write32.i.i75, align 4
  tail call void %65(ptr noundef %59, i16 noundef zeroext 1020, i32 noundef %or.i73) #15
  %66 = ptrtoint ptr %d11core.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %d11core.i, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 8
  %hosttype.i76 = getelementptr inbounds %struct.bcma_bus, ptr %69, i32 0, i32 3
  %70 = ptrtoint ptr %hosttype.i76 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %hosttype.i76, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp.i77 = icmp eq i32 %71, 0
  br i1 %cmp.i77, label %land.lhs.true.i82, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true.i82:                                ; preds = %if.then
  %72 = ptrtoint ptr %phy_wreg.i66 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %phy_wreg.i66, align 4
  %inc.i79 = add i16 %73, 1
  store i16 %inc.i79, ptr %phy_wreg.i66, align 4
  %74 = ptrtoint ptr %phy_wreg_limit.i80 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %phy_wreg_limit.i80, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i79, i16 %75)
  %cmp6.not.i81 = icmp ult i16 %inc.i79, %75
  br i1 %cmp6.not.i81, label %land.lhs.true.i82.if.end_crit_edge, label %if.then.i86

land.lhs.true.i82.if.end_crit_edge:               ; preds = %land.lhs.true.i82
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then.i86:                                      ; preds = %land.lhs.true.i82
  call void @__sanitizer_cov_trace_pc() #17
  %76 = ptrtoint ptr %phy_wreg.i66 to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 0, ptr %phy_wreg.i66, align 4
  %77 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %67, align 8
  %ops.i15.i83 = getelementptr inbounds %struct.bcma_bus, ptr %78, i32 0, i32 2
  %79 = ptrtoint ptr %ops.i15.i83 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ops.i15.i83, align 4
  %read16.i.i84 = getelementptr inbounds %struct.bcma_host_ops, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %read16.i.i84 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %read16.i.i84, align 4
  %call.i.i85 = tail call zeroext i16 %82(ptr noundef %67, i16 noundef zeroext 992) #15
  br label %if.end

if.end:                                           ; preds = %if.then.i86, %land.lhs.true.i82.if.end_crit_edge, %if.then.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  %83 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %83, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %5, label %if.else30 [
    i32 32, label %if.then17
    i32 16, label %if.then27
  ]

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %84 = ptrtoint ptr %d11core.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %d11core.i, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %85, align 8
  %ops.i.i89 = getelementptr inbounds %struct.bcma_bus, ptr %87, i32 0, i32 2
  %88 = ptrtoint ptr %ops.i.i89 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ops.i.i89, align 4
  %write16.i.i90 = getelementptr inbounds %struct.bcma_host_ops, ptr %89, i32 0, i32 4
  %90 = ptrtoint ptr %write16.i.i90 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %write16.i.i90, align 4
  tail call void %91(ptr noundef %85, i16 noundef zeroext 1020, i16 noundef zeroext %tblDataLo) #15
  %92 = ptrtoint ptr %phy_wreg.i66 to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 0, ptr %phy_wreg.i66, align 4
  %93 = ptrtoint ptr %d11core.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %d11core.i, align 4
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %94, align 8
  %ops.i5.i92 = getelementptr inbounds %struct.bcma_bus, ptr %96, i32 0, i32 2
  %97 = ptrtoint ptr %ops.i5.i92 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %ops.i5.i92, align 4
  %read16.i.i93 = getelementptr inbounds %struct.bcma_host_ops, ptr %98, i32 0, i32 1
  %99 = ptrtoint ptr %read16.i.i93 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %read16.i.i93, align 4
  %call.i.i94 = tail call zeroext i16 %100(ptr noundef %94, i16 noundef zeroext 1022) #15
  %conv19 = zext i16 %call.i.i94 to i32
  %arrayidx = getelementptr i32, ptr %7, i32 %idx.0117
  %101 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %conv19, ptr %arrayidx, align 4
  %102 = ptrtoint ptr %d11core.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %d11core.i, align 4
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %103, align 8
  %ops.i.i96 = getelementptr inbounds %struct.bcma_bus, ptr %105, i32 0, i32 2
  %106 = ptrtoint ptr %ops.i.i96 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %ops.i.i96, align 4
  %write16.i.i97 = getelementptr inbounds %struct.bcma_host_ops, ptr %107, i32 0, i32 4
  %108 = ptrtoint ptr %write16.i.i97 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %write16.i.i97, align 4
  tail call void %109(ptr noundef %103, i16 noundef zeroext 1020, i16 noundef zeroext %tblDataHi) #15
  %110 = ptrtoint ptr %phy_wreg.i66 to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 0, ptr %phy_wreg.i66, align 4
  %111 = ptrtoint ptr %d11core.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %d11core.i, align 4
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %112, align 8
  %ops.i5.i99 = getelementptr inbounds %struct.bcma_bus, ptr %114, i32 0, i32 2
  %115 = ptrtoint ptr %ops.i5.i99 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %ops.i5.i99, align 4
  %read16.i.i100 = getelementptr inbounds %struct.bcma_host_ops, ptr %116, i32 0, i32 1
  %117 = ptrtoint ptr %read16.i.i100 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %read16.i.i100, align 4
  %call.i.i101 = tail call zeroext i16 %118(ptr noundef %112, i16 noundef zeroext 1022) #15
  %conv21 = zext i16 %call.i.i101 to i32
  %shl22 = shl nuw i32 %conv21, 16
  %119 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %arrayidx, align 4
  %or24 = or i32 %shl22, %120
  store i32 %or24, ptr %arrayidx, align 4
  br label %for.inc

if.then27:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %121 = ptrtoint ptr %d11core.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %d11core.i, align 4
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %122, align 8
  %ops.i.i103 = getelementptr inbounds %struct.bcma_bus, ptr %124, i32 0, i32 2
  %125 = ptrtoint ptr %ops.i.i103 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %ops.i.i103, align 4
  %write16.i.i104 = getelementptr inbounds %struct.bcma_host_ops, ptr %126, i32 0, i32 4
  %127 = ptrtoint ptr %write16.i.i104 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %write16.i.i104, align 4
  tail call void %128(ptr noundef %122, i16 noundef zeroext 1020, i16 noundef zeroext %tblDataLo) #15
  %129 = ptrtoint ptr %phy_wreg.i66 to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 0, ptr %phy_wreg.i66, align 4
  %130 = ptrtoint ptr %d11core.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %d11core.i, align 4
  %132 = ptrtoint ptr %131 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %131, align 8
  %ops.i5.i106 = getelementptr inbounds %struct.bcma_bus, ptr %133, i32 0, i32 2
  %134 = ptrtoint ptr %ops.i5.i106 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %ops.i5.i106, align 4
  %read16.i.i107 = getelementptr inbounds %struct.bcma_host_ops, ptr %135, i32 0, i32 1
  %136 = ptrtoint ptr %read16.i.i107 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %read16.i.i107, align 4
  %call.i.i108 = tail call zeroext i16 %137(ptr noundef %131, i16 noundef zeroext 1022) #15
  %arrayidx29 = getelementptr i16, ptr %7, i32 %idx.0117
  %138 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 %call.i.i108, ptr %arrayidx29, align 2
  br label %for.inc

if.else30:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %139 = ptrtoint ptr %d11core.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %d11core.i, align 4
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %140, align 8
  %ops.i.i110 = getelementptr inbounds %struct.bcma_bus, ptr %142, i32 0, i32 2
  %143 = ptrtoint ptr %ops.i.i110 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %ops.i.i110, align 4
  %write16.i.i111 = getelementptr inbounds %struct.bcma_host_ops, ptr %144, i32 0, i32 4
  %145 = ptrtoint ptr %write16.i.i111 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %write16.i.i111, align 4
  tail call void %146(ptr noundef %140, i16 noundef zeroext 1020, i16 noundef zeroext %tblDataLo) #15
  %147 = ptrtoint ptr %phy_wreg.i66 to i32
  call void @__asan_store2_noabort(i32 %147)
  store i16 0, ptr %phy_wreg.i66, align 4
  %148 = ptrtoint ptr %d11core.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %d11core.i, align 4
  %150 = ptrtoint ptr %149 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %149, align 8
  %ops.i5.i113 = getelementptr inbounds %struct.bcma_bus, ptr %151, i32 0, i32 2
  %152 = ptrtoint ptr %ops.i5.i113 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %ops.i5.i113, align 4
  %read16.i.i114 = getelementptr inbounds %struct.bcma_host_ops, ptr %153, i32 0, i32 1
  %154 = ptrtoint ptr %read16.i.i114 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %read16.i.i114, align 4
  %call.i.i115 = tail call zeroext i16 %155(ptr noundef %149, i16 noundef zeroext 1022) #15
  %conv32 = trunc i16 %call.i.i115 to i8
  %arrayidx33 = getelementptr i8, ptr %7, i32 %idx.0117
  %156 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 %conv32, ptr %arrayidx33, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.else30, %if.then27, %if.then17
  %inc = add nuw i32 %idx.0117, 1
  %157 = ptrtoint ptr %tbl_len to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %tbl_len, align 4
  %cmp = icmp ult i32 %inc, %158
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %write_phy_reg.exit.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wlc_phy_init_radio_regs_allbands(ptr nocapture noundef %pi, ptr nocapture noundef readonly %radioregs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %if.end.do.body_crit_edge ]
  %do_init = getelementptr %struct.radio_20xx_regs, ptr %radioregs, i32 %i.0, i32 2
  %0 = ptrtoint ptr %do_init to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %do_init, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %do.body.if.end_crit_edge, label %if.then

do.body.if.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx = getelementptr %struct.radio_20xx_regs, ptr %radioregs, i32 %i.0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 2
  %init = getelementptr %struct.radio_20xx_regs, ptr %radioregs, i32 %i.0, i32 1
  %4 = ptrtoint ptr %init to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %init, align 2
  %conv = zext i8 %5 to i16
  tail call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext %3, i16 noundef zeroext %conv)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body.if.end_crit_edge
  %inc = add i32 %i.0, 1
  %arrayidx3 = getelementptr %struct.radio_20xx_regs, ptr %radioregs, i32 %inc
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx3, align 2
  %cmp.not = icmp eq i16 %7, -1
  br i1 %cmp.not, label %do.end, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  ret i32 %inc
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wlc_phy_init_radio_regs(ptr nocapture noundef %pi, ptr nocapture noundef readonly %radioregs, i16 noundef zeroext %core_offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %radio_chanspec = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 12
  %pubpi31 = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 7
  %phy_rev42 = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 7, i32 1
  %d11core46 = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 5
  br label %do.body

do.body:                                          ; preds = %if.end51.do.body_crit_edge, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc52, %if.end51.do.body_crit_edge ]
  %count.0 = phi i32 [ 0, %entry ], [ %count.1, %if.end51.do.body_crit_edge ]
  %0 = ptrtoint ptr %radio_chanspec to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %radio_chanspec, align 4
  %2 = and i16 %1, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %2)
  %cmp = icmp eq i16 %2, 4096
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %do_init_a = getelementptr %struct.radio_regs, ptr %radioregs, i32 %i.0, i32 3
  %3 = ptrtoint ptr %do_init_a to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %do_init_a, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.then.if.end51_crit_edge, label %if.then2

if.then.if.end51_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end51

if.then2:                                         ; preds = %if.then
  %arrayidx = getelementptr %struct.radio_regs, ptr %radioregs, i32 %i.0
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %arrayidx, align 4
  %or83 = or i16 %6, %core_offset
  %init_a = getelementptr %struct.radio_regs, ptr %radioregs, i32 %i.0, i32 1
  %7 = ptrtoint ptr %init_a to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %init_a, align 4
  %conv8 = trunc i32 %8 to i16
  tail call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext %or83, i16 noundef zeroext %conv8)
  %9 = ptrtoint ptr %pubpi31 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pubpi31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %10)
  %cmp9 = icmp eq i32 %10, 4
  br i1 %cmp9, label %land.lhs.true, label %if.then2.if.end51_crit_edge

if.then2.if.end51_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end51

land.lhs.true:                                    ; preds = %if.then2
  %inc = add i32 %count.0, 1
  %rem = and i32 %inc, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp11 = icmp eq i32 %rem, 0
  br i1 %cmp11, label %if.then13, label %land.lhs.true.if.end51_crit_edge

land.lhs.true.if.end51_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end51

if.then13:                                        ; preds = %land.lhs.true
  %11 = ptrtoint ptr %phy_rev42 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %phy_rev42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %12)
  %cmp15 = icmp ult i32 %12, 3
  br i1 %cmp15, label %if.then13.if.end51.sink.split_crit_edge, label %if.then13.if.end51_crit_edge

if.then13.if.end51_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end51

if.then13.if.end51.sink.split_crit_edge:          ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end51.sink.split

if.else:                                          ; preds = %do.body
  %do_init_g = getelementptr %struct.radio_regs, ptr %radioregs, i32 %i.0, i32 4
  %13 = ptrtoint ptr %do_init_g to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %do_init_g, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool21.not = icmp eq i8 %14, 0
  br i1 %tobool21.not, label %if.else.if.end51_crit_edge, label %if.then22

if.else.if.end51_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end51

if.then22:                                        ; preds = %if.else
  %arrayidx20 = getelementptr %struct.radio_regs, ptr %radioregs, i32 %i.0
  %15 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx20, align 4
  %or2782 = or i16 %16, %core_offset
  %init_g = getelementptr %struct.radio_regs, ptr %radioregs, i32 %i.0, i32 2
  %17 = ptrtoint ptr %init_g to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %init_g, align 4
  %conv30 = trunc i32 %18 to i16
  tail call void @write_radio_reg(ptr noundef %pi, i16 noundef zeroext %or2782, i16 noundef zeroext %conv30)
  %19 = ptrtoint ptr %pubpi31 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pubpi31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %20)
  %cmp33 = icmp eq i32 %20, 4
  br i1 %cmp33, label %land.lhs.true35, label %if.then22.if.end51_crit_edge

if.then22.if.end51_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end51

land.lhs.true35:                                  ; preds = %if.then22
  %inc36 = add i32 %count.0, 1
  %rem37 = and i32 %inc36, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem37)
  %cmp38 = icmp eq i32 %rem37, 0
  br i1 %cmp38, label %if.then40, label %land.lhs.true35.if.end51_crit_edge

land.lhs.true35.if.end51_crit_edge:               ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end51

if.then40:                                        ; preds = %land.lhs.true35
  %21 = ptrtoint ptr %phy_rev42 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %phy_rev42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %22)
  %cmp43 = icmp ult i32 %22, 3
  br i1 %cmp43, label %if.then40.if.end51.sink.split_crit_edge, label %if.then40.if.end51_crit_edge

if.then40.if.end51_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end51

if.then40.if.end51.sink.split_crit_edge:          ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end51.sink.split

if.end51.sink.split:                              ; preds = %if.then40.if.end51.sink.split_crit_edge, %if.then13.if.end51.sink.split_crit_edge
  %count.1.ph = phi i32 [ %inc, %if.then13.if.end51.sink.split_crit_edge ], [ %inc36, %if.then40.if.end51.sink.split_crit_edge ]
  %23 = ptrtoint ptr %d11core46 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %d11core46, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 8
  %ops.i84 = getelementptr inbounds %struct.bcma_bus, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %ops.i84 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ops.i84, align 4
  %read32.i85 = getelementptr inbounds %struct.bcma_host_ops, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %read32.i85 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %read32.i85, align 4
  %call.i86 = tail call i32 %30(ptr noundef %24, i16 noundef zeroext 288) #15
  br label %if.end51

if.end51:                                         ; preds = %if.end51.sink.split, %if.then40.if.end51_crit_edge, %land.lhs.true35.if.end51_crit_edge, %if.then22.if.end51_crit_edge, %if.else.if.end51_crit_edge, %if.then13.if.end51_crit_edge, %land.lhs.true.if.end51_crit_edge, %if.then2.if.end51_crit_edge, %if.then.if.end51_crit_edge
  %count.1 = phi i32 [ %inc, %if.then13.if.end51_crit_edge ], [ %inc, %land.lhs.true.if.end51_crit_edge ], [ %count.0, %if.then2.if.end51_crit_edge ], [ %count.0, %if.then.if.end51_crit_edge ], [ %inc36, %if.then40.if.end51_crit_edge ], [ %inc36, %land.lhs.true35.if.end51_crit_edge ], [ %count.0, %if.then22.if.end51_crit_edge ], [ %count.0, %if.else.if.end51_crit_edge ], [ %count.1.ph, %if.end51.sink.split ]
  %inc52 = add i32 %i.0, 1
  %arrayidx53 = getelementptr %struct.radio_regs, ptr %radioregs, i32 %inc52
  %31 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %arrayidx53, align 4
  %cmp56.not = icmp eq i16 %32, -1
  br i1 %cmp56.not, label %do.end, label %if.end51.do.body_crit_edge

if.end51.do.body_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

do.end:                                           ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #17
  ret i32 %inc52
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wlapi_bmac_write_template_ram(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wlc_phy_pa_override_nphy(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @wlc_phy_hold_upd(ptr nocapture noundef %pih, i32 noundef %id, i1 noundef zeroext %set) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %set, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %measure_hold = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 27
  %0 = ptrtoint ptr %measure_hold to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %measure_hold, align 4
  %or = or i32 %1, %id
  store i32 %or, ptr %measure_hold, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %neg = xor i32 %id, -1
  %measure_hold1 = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 27
  %2 = ptrtoint ptr %measure_hold1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %measure_hold1, align 4
  %and = and i32 %3, %neg
  store i32 %and, ptr %measure_hold1, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @wlc_phy_mute_upd(ptr nocapture noundef %pih, i1 noundef zeroext %mute, i32 noundef %flags) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %measure_hold = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 27
  %0 = ptrtoint ptr %measure_hold to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %measure_hold, align 4
  br i1 %mute, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %or = or i32 %1, 16
  %2 = ptrtoint ptr %measure_hold to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %or, ptr %measure_hold, align 4
  br label %if.end7

if.else:                                          ; preds = %entry
  %and = and i32 %1, -17
  %3 = ptrtoint ptr %measure_hold to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %and, ptr %measure_hold, align 4
  %and3 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.else.if.end7_crit_edge, label %if.then5

if.else.if.end7_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %sh = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 1
  %4 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sh, align 4
  %now = getelementptr inbounds %struct.shared_phy, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %now to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %now, align 4
  %glacial_timer = getelementptr inbounds %struct.shared_phy, ptr %5, i32 0, i32 20
  %8 = ptrtoint ptr %glacial_timer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %glacial_timer, align 4
  %sub = sub i32 %7, %9
  %nphy_perical_last = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 193
  %10 = ptrtoint ptr %nphy_perical_last to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %sub, ptr %nphy_perical_last, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.else.if.end7_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wlc_phy_clear_tssi(ptr nocapture noundef readonly %pih) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %pubpi = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 7
  %0 = ptrtoint ptr %pubpi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pubpi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp = icmp eq i32 %1, 4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.else

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %sh = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 1
  %2 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sh, align 4
  %physhim = getelementptr inbounds %struct.shared_phy, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %physhim to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %physhim, align 4
  tail call void @wlapi_bmac_write_shm(ptr noundef %5, i32 noundef 88, i16 noundef zeroext 32639) #15
  %6 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sh, align 4
  %physhim2 = getelementptr inbounds %struct.shared_phy, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %physhim2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %physhim2, align 4
  tail call void @wlapi_bmac_write_shm(ptr noundef %9, i32 noundef 90, i16 noundef zeroext 32639) #15
  %10 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sh, align 4
  %physhim4 = getelementptr inbounds %struct.shared_phy, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %physhim4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %physhim4, align 4
  tail call void @wlapi_bmac_write_shm(ptr noundef %13, i32 noundef 112, i16 noundef zeroext 32639) #15
  %14 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sh, align 4
  %physhim6 = getelementptr inbounds %struct.shared_phy, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %physhim6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %physhim6, align 4
  tail call void @wlapi_bmac_write_shm(ptr noundef %17, i32 noundef 114, i16 noundef zeroext 32639) #15
  br label %cleanup

cleanup:                                          ; preds = %if.else, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wlapi_bmac_write_shm(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wlc_phy_switch_radio_nphy(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @wlc_phy_bw_state_get(ptr nocapture noundef readonly %ppi) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %bw = getelementptr inbounds %struct.brcms_phy, ptr %ppi, i32 0, i32 14
  %0 = ptrtoint ptr %bw to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %bw, align 4
  ret i16 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @wlc_phy_bw_state_set(ptr nocapture noundef writeonly %ppi, i16 noundef zeroext %bw) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %bw1 = getelementptr inbounds %struct.brcms_phy, ptr %ppi, i32 0, i32 14
  %0 = ptrtoint ptr %bw1 to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %bw, ptr %bw1, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @wlc_phy_chanspec_radio_set(ptr nocapture noundef writeonly %ppi, i16 noundef zeroext %newch) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %radio_chanspec = getelementptr inbounds %struct.brcms_phy, ptr %ppi, i32 0, i32 12
  %0 = ptrtoint ptr %radio_chanspec to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %newch, ptr %radio_chanspec, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @wlc_phy_chanspec_get(ptr nocapture noundef readonly %ppi) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %radio_chanspec = getelementptr inbounds %struct.brcms_phy, ptr %ppi, i32 0, i32 12
  %0 = ptrtoint ptr %radio_chanspec to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %radio_chanspec, align 4
  ret i16 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wlc_phy_chanspec_set(ptr noundef %ppi, i16 noundef zeroext %chanspec) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %chanspec to i32
  %conv2 = and i16 %chanspec, 255
  %and4 = and i32 %conv, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %and4)
  %cmp = icmp eq i32 %and4, 4096
  %0 = or i16 %conv2, 256
  %spec.select = select i1 %cmp, i16 %0, i16 %conv2
  %and9 = and i32 %conv, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 3072, i32 %and9)
  %cmp10 = icmp eq i32 %and9, 3072
  %1 = or i16 %spec.select, 512
  %m_cur_channel.1 = select i1 %cmp10, i16 %1, i16 %spec.select
  %sh = getelementptr inbounds %struct.brcms_phy, ptr %ppi, i32 0, i32 1
  %2 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sh, align 4
  %physhim = getelementptr inbounds %struct.shared_phy, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %physhim to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %physhim, align 4
  tail call void @wlapi_bmac_write_shm(ptr noundef %5, i32 noundef 160, i16 noundef zeroext %m_cur_channel.1) #15
  %chanset = getelementptr inbounds %struct.brcms_phy, ptr %ppi, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %chanset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chanset, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end18_crit_edge, label %if.then17

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18

if.then17:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void %7(ptr noundef %ppi, i16 noundef zeroext %chanspec) #15
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %entry.if.end18_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @wlc_phy_chanspec_freq2bandrange_lpssn(i32 noundef %freq) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2500, i32 %freq)
  %cmp = icmp ult i32 %freq, 2500
  br i1 %cmp, label %entry.if.end8_crit_edge, label %if.else

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 5321, i32 %freq)
  %cmp1 = icmp ult i32 %freq, 5321
  br i1 %cmp1, label %if.else.if.end8_crit_edge, label %if.else3

if.else.if.end8_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

if.else3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 5701, i32 %freq)
  %cmp4 = icmp ult i32 %freq, 5701
  %. = select i1 %cmp4, i32 2, i32 3
  br label %if.end8

if.end8:                                          ; preds = %if.else3, %if.else.if.end8_crit_edge, %entry.if.end8_crit_edge
  %range.0 = phi i32 [ 0, %entry.if.end8_crit_edge ], [ 1, %if.else.if.end8_crit_edge ], [ %., %if.else3 ]
  ret i32 %range.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wlc_phy_chanspec_bandrange_get(ptr noundef %pi, i16 noundef zeroext %chanspec) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i16 %chanspec, 255
  %conv2 = zext i16 %0 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %i.09.i = phi i32 [ 0, %entry ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [51 x %struct.chan_info_basic], ptr @chan_info_all, i32 0, i32 %i.09.i
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %arrayidx.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %2, i16 %0)
  %cmp1.i = icmp eq i16 %2, %0
  br i1 %cmp1.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %freq.i = getelementptr [51 x %struct.chan_info_basic], ptr @chan_info_all, i32 0, i32 %i.09.i, i32 1
  %3 = ptrtoint ptr %freq.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %freq.i, align 2
  %conv4.i = zext i16 %4 to i32
  br label %wlc_phy_channel2freq.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 51
  br i1 %exitcond.not.i, label %for.inc.i.wlc_phy_channel2freq.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.inc.i.wlc_phy_channel2freq.exit_crit_edge:    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %wlc_phy_channel2freq.exit

wlc_phy_channel2freq.exit:                        ; preds = %for.inc.i.wlc_phy_channel2freq.exit_crit_edge, %if.then.i
  %retval.0.i = phi i32 [ %conv4.i, %if.then.i ], [ 0, %for.inc.i.wlc_phy_channel2freq.exit_crit_edge ]
  %pubpi = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 7
  %5 = ptrtoint ptr %pubpi to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pubpi, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %6, label %wlc_phy_channel2freq.exit.if.end12_crit_edge [
    i32 4, label %if.then
    i32 8, label %if.then10
  ]

wlc_phy_channel2freq.exit.if.end12_crit_edge:     ; preds = %wlc_phy_channel2freq.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12

if.then:                                          ; preds = %wlc_phy_channel2freq.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call4 = tail call zeroext i8 @wlc_phy_get_chan_freq_range_nphy(ptr noundef %pi, i32 noundef %conv2) #15
  %conv5 = zext i8 %call4 to i32
  br label %if.end12

if.then10:                                        ; preds = %wlc_phy_channel2freq.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 2500, i32 %retval.0.i)
  %cmp.i = icmp ult i32 %retval.0.i, 2500
  br i1 %cmp.i, label %if.then10.if.end12_crit_edge, label %if.else.i

if.then10.if.end12_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12

if.else.i:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_const_cmp4(i32 5321, i32 %retval.0.i)
  %cmp1.i16 = icmp ult i32 %retval.0.i, 5321
  br i1 %cmp1.i16, label %if.else.i.if.end12_crit_edge, label %if.else3.i

if.else.i.if.end12_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12

if.else3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 5701, i32 %retval.0.i)
  %cmp4.i = icmp ult i32 %retval.0.i, 5701
  %..i = select i1 %cmp4.i, i32 2, i32 3
  br label %if.end12

if.end12:                                         ; preds = %if.else3.i, %if.else.i.if.end12_crit_edge, %if.then10.if.end12_crit_edge, %if.then, %wlc_phy_channel2freq.exit.if.end12_crit_edge
  %range.0 = phi i32 [ %conv5, %if.then ], [ -1, %wlc_phy_channel2freq.exit.if.end12_crit_edge ], [ 0, %if.then10.if.end12_crit_edge ], [ 1, %if.else.i.if.end12_crit_edge ], [ %..i, %if.else3.i ]
  ret i32 %range.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wlc_phy_channel2freq(i32 noundef %channel) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.09 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [51 x %struct.chan_info_basic], ptr @chan_info_all, i32 0, i32 %i.09
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %channel)
  %cmp1 = icmp eq i32 %conv, %channel
  br i1 %cmp1, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %freq = getelementptr [51 x %struct.chan_info_basic], ptr @chan_info_all, i32 0, i32 %i.09, i32 1
  %2 = ptrtoint ptr %freq to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %freq, align 2
  %conv4 = zext i16 %3 to i32
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.09, 1
  %exitcond.not = icmp eq i32 %inc, 51
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %conv4, %if.then ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @wlc_phy_get_chan_freq_range_nphy(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @wlc_phy_chanspec_ch14_widefilter_set(ptr nocapture noundef writeonly %ppi, i1 noundef zeroext %wide_filter) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %wide_filter to i8
  %channel_14_wide_filter = getelementptr inbounds %struct.brcms_phy, ptr %ppi, i32 0, i32 66
  %0 = ptrtoint ptr %channel_14_wide_filter to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %frombool, ptr %channel_14_wide_filter, align 4
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wlc_phy_chanspec_band_validch(ptr nocapture noundef readonly %ppi, i32 noundef %band, ptr nocapture noundef %channels) local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %channels, i32 0, i32 28)
  %a_band_high_disable = getelementptr inbounds %struct.brcms_phy, ptr %ppi, i32 0, i32 118
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %band)
  %cmp7 = icmp eq i32 %band, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %band)
  %cmp12 = icmp eq i32 %band, 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.035 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [51 x %struct.chan_info_basic], ptr @chan_info_all, i32 0, i32 %i.035
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %arrayidx, align 2
  %3 = ptrtoint ptr %a_band_high_disable to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %a_band_high_disable, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp ne i8 %4, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 148, i16 %2)
  %cmp2 = icmp ugt i16 %2, 148
  %or.cond = select i1 %tobool.not, i1 %cmp2, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 166, i16 %2)
  %cmp5 = icmp ult i16 %2, 166
  %or.cond32 = select i1 %or.cond, i1 %cmp5, i1 false
  br i1 %or.cond32, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp2(i16 15, i16 %2)
  %cmp10 = icmp ult i16 %2, 15
  %or.cond33 = select i1 %cmp7, i1 %cmp10, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 14, i16 %2)
  %cmp15 = icmp ugt i16 %2, 14
  %or.cond34 = select i1 %cmp12, i1 %cmp15, i1 false
  %or.cond36 = select i1 %or.cond33, i1 true, i1 %or.cond34
  br i1 %or.cond36, label %if.then17, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %rem = and i16 %2, 7
  %shl = shl nuw nsw i16 1, %rem
  %5 = lshr i16 %2, 3
  %div31 = zext i16 %5 to i32
  %arrayidx18 = getelementptr i8, ptr %channels, i32 %div31
  %6 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx18, align 1
  %8 = trunc i16 %shl to i8
  %conv20 = or i8 %7, %8
  store i8 %conv20, ptr %arrayidx18, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then17, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.035, 1
  %exitcond.not = icmp eq i32 %inc, 51
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @wlc_phy_chanspec_band_firstch(ptr nocapture noundef readonly %ppi, i32 noundef %band) local_unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %pubpi = getelementptr inbounds %struct.brcms_phy, ptr %ppi, i32 0, i32 7
  %0 = ptrtoint ptr %pubpi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pubpi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp1 = icmp eq i32 %1, 4
  %bw = getelementptr inbounds %struct.brcms_phy, ptr %ppi, i32 0, i32 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %band)
  %cmp22 = icmp eq i32 %band, 2
  %chspec.1.v = select i1 %cmp22, i16 11520, i16 7424
  %a_band_high_disable = getelementptr inbounds %struct.brcms_phy, ptr %ppi, i32 0, i32 118
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %band)
  %cmp49 = icmp eq i32 %band, 1
  br label %for.body

for.body:                                         ; preds = %for.inc56.for.body_crit_edge, %entry
  %i.092 = phi i32 [ 0, %entry ], [ %inc57, %for.inc56.for.body_crit_edge ]
  %arrayidx = getelementptr [51 x %struct.chan_info_basic], ptr @chan_info_all, i32 0, i32 %i.092
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %3 to i32
  br i1 %cmp1, label %land.lhs.true, label %for.body.if.else32_crit_edge

for.body.if.else32_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else32

land.lhs.true:                                    ; preds = %for.body
  %4 = ptrtoint ptr %bw to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %bw, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3072, i16 %5)
  %cmp4 = icmp eq i16 %5, 3072
  br i1 %cmp4, label %for.cond6.preheader, label %land.lhs.true.if.else32_crit_edge

land.lhs.true.if.else32_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else32

for.cond6.preheader:                              ; preds = %land.lhs.true
  %add = add nuw nsw i32 %conv, 2
  br label %for.body9

for.body9:                                        ; preds = %for.inc.for.body9_crit_edge, %for.cond6.preheader
  %j.091 = phi i32 [ 0, %for.cond6.preheader ], [ %inc, %for.inc.for.body9_crit_edge ]
  %arrayidx10 = getelementptr [51 x %struct.chan_info_basic], ptr @chan_info_all, i32 0, i32 %j.091
  %6 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx10, align 2
  %conv12 = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv12)
  %cmp13 = icmp eq i32 %add, %conv12
  br i1 %cmp13, label %cleanup.thread, label %for.inc

for.inc:                                          ; preds = %for.body9
  %inc = add nuw nsw i32 %j.091, 1
  %exitcond.not = icmp eq i32 %inc, 51
  br i1 %exitcond.not, label %for.inc.for.inc56_crit_edge, label %for.inc.for.body9_crit_edge

for.inc.for.body9_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body9

for.inc.for.inc56_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc56

cleanup.thread:                                   ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp2(i16 222, i16 %3)
  %cmp.i = icmp ult i16 %3, 222
  %spec.select.i = select i1 %cmp.i, i32 %add, i32 0
  %8 = trunc i32 %spec.select.i to i16
  %chspec.1 = or i16 %chspec.1.v, %8
  br label %if.end34

if.else32:                                        ; preds = %land.lhs.true.if.else32_crit_edge, %for.body.if.else32_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 15, i16 %3)
  %cmp.i84 = icmp ult i16 %3, 15
  %conv4.i = select i1 %cmp.i84, i16 8192, i16 4096
  %or3.i = or i16 %3, %conv4.i
  %conv6.i = or i16 %or3.i, 2816
  br label %if.end34

if.end34:                                         ; preds = %if.else32, %cleanup.thread
  %channel.1 = phi i32 [ %conv, %if.else32 ], [ %spec.select.i, %cleanup.thread ]
  %chspec.3 = phi i16 [ %conv6.i, %if.else32 ], [ %chspec.1, %cleanup.thread ]
  %9 = ptrtoint ptr %a_band_high_disable to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %a_band_high_disable, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp ne i8 %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 148, i32 %channel.1)
  %cmp37 = icmp ugt i32 %channel.1, 148
  %or.cond = select i1 %tobool.not, i1 %cmp37, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 166, i32 %channel.1)
  %cmp40 = icmp ult i32 %channel.1, 166
  %or.cond81 = select i1 %or.cond, i1 %cmp40, i1 false
  br i1 %or.cond81, label %if.end34.for.inc56_crit_edge, label %if.end43

if.end34.for.inc56_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc56

if.end43:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %channel.1)
  %cmp47 = icmp ult i32 %channel.1, 15
  %or.cond82 = select i1 %cmp22, i1 %cmp47, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %channel.1)
  %cmp52 = icmp ugt i32 %channel.1, 14
  %or.cond83 = select i1 %cmp49, i1 %cmp52, i1 false
  %or.cond93 = select i1 %or.cond82, i1 true, i1 %or.cond83
  br i1 %or.cond93, label %if.end43.cleanup59_crit_edge, label %if.end43.for.inc56_crit_edge

if.end43.for.inc56_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc56

if.end43.cleanup59_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup59

for.inc56:                                        ; preds = %if.end43.for.inc56_crit_edge, %if.end34.for.inc56_crit_edge, %for.inc.for.inc56_crit_edge
  %inc57 = add nuw nsw i32 %i.092, 1
  %exitcond94.not = icmp eq i32 %inc57, 51
  br i1 %exitcond94.not, label %for.inc56.cleanup59_crit_edge, label %for.inc56.for.body_crit_edge

for.inc56.for.body_crit_edge:                     ; preds = %for.inc56
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc56.cleanup59_crit_edge:                    ; preds = %for.inc56
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup59

cleanup59:                                        ; preds = %for.inc56.cleanup59_crit_edge, %if.end43.cleanup59_crit_edge
  %retval.0 = phi i16 [ %chspec.3, %if.end43.cleanup59_crit_edge ], [ 255, %for.inc56.cleanup59_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @wlc_phy_txpower_get(ptr nocapture noundef readonly %ppi, ptr nocapture noundef writeonly %qdbm, ptr noundef writeonly %override) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_user_target = getelementptr inbounds %struct.brcms_phy, ptr %ppi, i32 0, i32 42
  %0 = ptrtoint ptr %tx_user_target to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %tx_user_target, align 4
  %conv = zext i8 %1 to i32
  %2 = ptrtoint ptr %qdbm to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv, ptr %qdbm, align 4
  %cmp.not = icmp eq ptr %override, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %txpwroverride = getelementptr inbounds %struct.brcms_phy, ptr %ppi, i32 0, i32 67
  %3 = ptrtoint ptr %txpwroverride to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %txpwroverride, align 1, !range !26
  %5 = ptrtoint ptr %override to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %override, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wlc_phy_txpower_target_set(ptr noundef %ppi, ptr nocapture noundef readonly %txpwr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_user_target = getelementptr inbounds %struct.brcms_phy, ptr %ppi, i32 0, i32 42
  %0 = ptrtoint ptr %txpwr to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %txpwr, align 1
  %2 = ptrtoint ptr %tx_user_target to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %tx_user_target, align 4
  %arrayidx3 = getelementptr %struct.brcms_phy, ptr %ppi, i32 0, i32 42, i32 4
  %ofdm = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 1
  %3 = ptrtoint ptr %ofdm to i32
  call void @__asan_loadN_noabort(i32 %3, i32 8)
  %4 = load i64, ptr %ofdm, align 1
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 8)
  store i64 %4, ptr %arrayidx3, align 4
  %arrayidx6 = getelementptr %struct.brcms_phy, ptr %ppi, i32 0, i32 42, i32 12
  %ofdm_cdd = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 2
  %6 = ptrtoint ptr %ofdm_cdd to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %7 = load i64, ptr %ofdm_cdd, align 1
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 8)
  store i64 %7, ptr %arrayidx6, align 4
  %arrayidx9 = getelementptr %struct.brcms_phy, ptr %ppi, i32 0, i32 42, i32 52
  %ofdm_40_siso = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 3
  %9 = ptrtoint ptr %ofdm_40_siso to i32
  call void @__asan_loadN_noabort(i32 %9, i32 8)
  %10 = load i64, ptr %ofdm_40_siso, align 1
  %11 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 8)
  store i64 %10, ptr %arrayidx9, align 4
  %arrayidx12 = getelementptr %struct.brcms_phy, ptr %ppi, i32 0, i32 42, i32 60
  %ofdm_40_cdd = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 4
  %12 = ptrtoint ptr %ofdm_40_cdd to i32
  call void @__asan_loadN_noabort(i32 %12, i32 8)
  %13 = load i64, ptr %ofdm_40_cdd, align 1
  %14 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 8)
  store i64 %13, ptr %arrayidx12, align 4
  %arrayidx15 = getelementptr %struct.brcms_phy, ptr %ppi, i32 0, i32 42, i32 20
  %mcs_20_siso = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 5
  %15 = ptrtoint ptr %mcs_20_siso to i32
  call void @__asan_loadN_noabort(i32 %15, i32 8)
  %16 = load i64, ptr %mcs_20_siso, align 1
  %17 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 8)
  store i64 %16, ptr %arrayidx15, align 4
  %arrayidx18 = getelementptr %struct.brcms_phy, ptr %ppi, i32 0, i32 42, i32 28
  %mcs_20_cdd = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 6
  %18 = ptrtoint ptr %mcs_20_cdd to i32
  call void @__asan_loadN_noabort(i32 %18, i32 8)
  %19 = load i64, ptr %mcs_20_cdd, align 1
  %20 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 8)
  store i64 %19, ptr %arrayidx18, align 4
  %arrayidx21 = getelementptr %struct.brcms_phy, ptr %ppi, i32 0, i32 42, i32 36
  %mcs_20_stbc = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 7
  %21 = ptrtoint ptr %mcs_20_stbc to i32
  call void @__asan_loadN_noabort(i32 %21, i32 8)
  %22 = load i64, ptr %mcs_20_stbc, align 1
  %23 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 8)
  store i64 %22, ptr %arrayidx21, align 4
  %arrayidx24 = getelementptr %struct.brcms_phy, ptr %ppi, i32 0, i32 42, i32 44
  %mcs_20_mimo = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 8
  %24 = ptrtoint ptr %mcs_20_mimo to i32
  call void @__asan_loadN_noabort(i32 %24, i32 8)
  %25 = load i64, ptr %mcs_20_mimo, align 1
  %26 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 8)
  store i64 %25, ptr %arrayidx24, align 4
  %arrayidx27 = getelementptr %struct.brcms_phy, ptr %ppi, i32 0, i32 42, i32 68
  %mcs_40_siso = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 9
  %27 = ptrtoint ptr %mcs_40_siso to i32
  call void @__asan_loadN_noabort(i32 %27, i32 8)
  %28 = load i64, ptr %mcs_40_siso, align 1
  %29 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 8)
  store i64 %28, ptr %arrayidx27, align 4
  %arrayidx30 = getelementptr %struct.brcms_phy, ptr %ppi, i32 0, i32 42, i32 76
  %mcs_40_cdd = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 10
  %30 = ptrtoint ptr %mcs_40_cdd to i32
  call void @__asan_loadN_noabort(i32 %30, i32 8)
  %31 = load i64, ptr %mcs_40_cdd, align 1
  %32 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_storeN_noabort(i32 %32, i32 8)
  store i64 %31, ptr %arrayidx30, align 4
  %arrayidx33 = getelementptr %struct.brcms_phy, ptr %ppi, i32 0, i32 42, i32 84
  %mcs_40_stbc = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 11
  %33 = ptrtoint ptr %mcs_40_stbc to i32
  call void @__asan_loadN_noabort(i32 %33, i32 8)
  %34 = load i64, ptr %mcs_40_stbc, align 1
  %35 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_storeN_noabort(i32 %35, i32 8)
  store i64 %34, ptr %arrayidx33, align 4
  %arrayidx36 = getelementptr %struct.brcms_phy, ptr %ppi, i32 0, i32 42, i32 92
  %mcs_40_mimo = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 12
  %36 = ptrtoint ptr %mcs_40_mimo to i32
  call void @__asan_loadN_noabort(i32 %36, i32 8)
  %37 = load i64, ptr %mcs_40_mimo, align 1
  %38 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_storeN_noabort(i32 %38, i32 8)
  store i64 %37, ptr %arrayidx36, align 4
  %d11core = getelementptr inbounds %struct.brcms_phy, ptr %ppi, i32 0, i32 5
  %39 = ptrtoint ptr %d11core to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %d11core, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 8
  %ops.i = getelementptr inbounds %struct.bcma_bus, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ops.i, align 4
  %read32.i = getelementptr inbounds %struct.bcma_host_ops, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %read32.i, align 4
  %call.i = tail call i32 %46(ptr noundef %40, i16 noundef zeroext 288) #15
  %and = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end46.critedge, label %if.then39

if.then39:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %sh = getelementptr inbounds %struct.brcms_phy, ptr %ppi, i32 0, i32 1
  %47 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %sh, align 4
  %physhim = getelementptr inbounds %struct.shared_phy, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %physhim to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %physhim, align 4
  tail call void @wlapi_suspend_mac_and_wait(ptr noundef %50) #15
  tail call void @wlc_phy_txpower_recalc_target(ptr noundef %ppi)
  %51 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %sh, align 4
  %physhim45 = getelementptr inbounds %struct.shared_phy, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %physhim45 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %physhim45, align 4
  tail call void @wlapi_enable_mac(ptr noundef %54) #15
  br label %if.end46

if.end46.critedge:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @wlc_phy_txpower_recalc_target(ptr noundef %ppi)
  br label %if.end46

if.end46:                                         ; preds = %if.end46.critedge, %if.then39
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wlapi_suspend_mac_and_wait(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wlc_phy_txpower_recalc_target(ptr noundef %pi) local_unnamed_addr #0 align 64 {
entry:
  %maxtxpwr = alloca i8, align 1
  %tx_pwr_target = alloca [101 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %maxtxpwr) #15
  %0 = ptrtoint ptr %maxtxpwr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %maxtxpwr, align 1, !annotation !29
  call void @llvm.lifetime.start.p0(i64 101, ptr nonnull %tx_pwr_target) #15
  %1 = call ptr @memset(ptr %tx_pwr_target, i32 255, i32 101)
  %radio_chanspec = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 12
  %2 = ptrtoint ptr %radio_chanspec to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %radio_chanspec, align 4
  %4 = trunc i16 %3 to i10
  %trunc = and i10 %4, -256
  %5 = zext i10 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.17)
  switch i10 %trunc, label %if.else20 [
    i10 -256, label %if.then
    i10 -512, label %if.then15
  ]

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %6 = and i16 %3, 255
  %conv10 = zext i16 %6 to i32
  br label %if.end26

if.then15:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %7 = and i16 %3, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 222, i16 %7)
  %cmp.i = icmp ult i16 %7, 222
  %narrow = add nuw nsw i16 %7, 2
  %narrow369 = select i1 %cmp.i, i16 %narrow, i16 0
  %spec.select.i = zext i16 %narrow369 to i32
  br label %if.end26

if.else20:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %8 = and i16 %3, 255
  %conv24 = zext i16 %8 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %8)
  %cmp.i360 = icmp ugt i16 %8, 2
  %sub.i = add nsw i32 %conv24, -2
  %spec.select.i361 = select i1 %cmp.i360, i32 %sub.i, i32 0
  br label %if.end26

if.end26:                                         ; preds = %if.else20, %if.then15, %if.then
  %target_chan.0 = phi i32 [ %conv10, %if.then ], [ %spec.select.i, %if.then15 ], [ %spec.select.i361, %if.else20 ]
  %pubpi = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 7
  %9 = ptrtoint ptr %pubpi to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pubpi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %10)
  %cmp27 = icmp eq i32 %10, 8
  br i1 %cmp27, label %if.then29, label %if.end61.thread

if.end61.thread:                                  ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %10)
  %cmp64363 = icmp eq i32 %10, 4
  %cond71366 = select i1 %cmp64363, i32 101, i32 12
  %uglygep.i367 = getelementptr i8, ptr %pi, i32 1043
  %11 = call ptr @memset(ptr %uglygep.i367, i32 127, i32 101)
  br label %wlc_phy_upd_env_txpwr_rate_limits.exit

if.then29:                                        ; preds = %if.end26
  %12 = and i16 %3, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 3072, i16 %12)
  %cmp33 = icmp eq i16 %12, 3072
  %mcs20_po = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 274
  %mcs40_po = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 275
  %mcs20_po.sink = select i1 %cmp33, ptr %mcs40_po, ptr %mcs20_po
  %13 = ptrtoint ptr %mcs20_po.sink to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mcs20_po.sink, align 4
  %tx_srom_max_2g47 = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 34
  %15 = ptrtoint ptr %tx_srom_max_2g47 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %tx_srom_max_2g47, align 4
  %offset_mcs.1.tr = trunc i32 %14 to i8
  %17 = shl i8 %offset_mcs.1.tr, 1
  %18 = and i8 %17, 30
  %conv52 = sub i8 %16, %18
  %arrayidx55 = getelementptr %struct.brcms_phy, ptr %pi, i32 0, i32 38, i32 12
  %19 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv52, ptr %arrayidx55, align 1
  %20 = trunc i32 %14 to i8
  %21 = lshr i8 %20, 3
  %22 = and i8 %21, 30
  %conv52.1 = sub i8 %16, %22
  %arrayidx55.1 = getelementptr %struct.brcms_phy, ptr %pi, i32 0, i32 38, i32 13
  %23 = ptrtoint ptr %arrayidx55.1 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv52.1, ptr %arrayidx55.1, align 1
  %sh.diff394 = lshr i32 %14, 7
  %tr.sh.diff395 = trunc i32 %sh.diff394 to i8
  %24 = and i8 %tr.sh.diff395, 30
  %conv52.2 = sub i8 %16, %24
  %arrayidx55.2 = getelementptr %struct.brcms_phy, ptr %pi, i32 0, i32 38, i32 14
  %25 = ptrtoint ptr %arrayidx55.2 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv52.2, ptr %arrayidx55.2, align 1
  %sh.diff396 = lshr i32 %14, 11
  %tr.sh.diff397 = trunc i32 %sh.diff396 to i8
  %26 = and i8 %tr.sh.diff397, 30
  %conv52.3 = sub i8 %16, %26
  %arrayidx55.3 = getelementptr %struct.brcms_phy, ptr %pi, i32 0, i32 38, i32 15
  %27 = ptrtoint ptr %arrayidx55.3 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv52.3, ptr %arrayidx55.3, align 1
  %sh.diff398 = lshr i32 %14, 15
  %tr.sh.diff399 = trunc i32 %sh.diff398 to i8
  %28 = and i8 %tr.sh.diff399, 30
  %conv52.4 = sub i8 %16, %28
  %arrayidx55.4 = getelementptr %struct.brcms_phy, ptr %pi, i32 0, i32 38, i32 16
  %29 = ptrtoint ptr %arrayidx55.4 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv52.4, ptr %arrayidx55.4, align 1
  %sh.diff400 = lshr i32 %14, 19
  %tr.sh.diff401 = trunc i32 %sh.diff400 to i8
  %30 = and i8 %tr.sh.diff401, 30
  %conv52.5 = sub i8 %16, %30
  %arrayidx55.5 = getelementptr %struct.brcms_phy, ptr %pi, i32 0, i32 38, i32 17
  %31 = ptrtoint ptr %arrayidx55.5 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv52.5, ptr %arrayidx55.5, align 1
  %sh.diff402 = lshr i32 %14, 23
  %tr.sh.diff403 = trunc i32 %sh.diff402 to i8
  %32 = and i8 %tr.sh.diff403, 30
  %conv52.6 = sub i8 %16, %32
  %arrayidx55.6 = getelementptr %struct.brcms_phy, ptr %pi, i32 0, i32 38, i32 18
  %33 = ptrtoint ptr %arrayidx55.6 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv52.6, ptr %arrayidx55.6, align 1
  %sh.diff = lshr i32 %14, 27
  %tr.sh.diff = trunc i32 %sh.diff to i8
  %34 = and i8 %tr.sh.diff, 30
  %conv52.7 = sub i8 %16, %34
  %arrayidx55.7 = getelementptr %struct.brcms_phy, ptr %pi, i32 0, i32 38, i32 19
  %35 = ptrtoint ptr %arrayidx55.7 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv52.7, ptr %arrayidx55.7, align 1
  %36 = ptrtoint ptr %pubpi to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pr = load i32, ptr %pubpi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr)
  %cmp64 = icmp eq i32 %.pr, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %.pr)
  %cmp68 = icmp eq i32 %.pr, 8
  %cond70 = select i1 %cmp68, i32 28, i32 12
  %cond71 = select i1 %cmp64, i32 101, i32 %cond70
  %uglygep.i = getelementptr i8, ptr %pi, i32 1043
  %37 = call ptr @memset(ptr %uglygep.i, i32 127, i32 101)
  br i1 %cmp68, label %wlc_phy_env_measure_vbat.exit.i, label %if.then29.wlc_phy_upd_env_txpwr_rate_limits.exit_crit_edge

if.then29.wlc_phy_upd_env_txpwr_rate_limits.exit_crit_edge: ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #17
  br label %wlc_phy_upd_env_txpwr_rate_limits.exit

wlc_phy_env_measure_vbat.exit.i:                  ; preds = %if.then29
  %call.i.i = tail call signext i8 @wlc_lcnphy_vbatsense(ptr noundef %pi, i1 noundef zeroext false) #15
  %38 = ptrtoint ptr %pubpi to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pr.i = load i32, ptr %pubpi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %.pr.i)
  %cmp.i2.i = icmp eq i32 %.pr.i, 8
  br i1 %cmp.i2.i, label %if.then.i4.i, label %wlc_phy_env_measure_vbat.exit.i.wlc_phy_upd_env_txpwr_rate_limits.exit_crit_edge

wlc_phy_env_measure_vbat.exit.i.wlc_phy_upd_env_txpwr_rate_limits.exit_crit_edge: ; preds = %wlc_phy_env_measure_vbat.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %wlc_phy_upd_env_txpwr_rate_limits.exit

if.then.i4.i:                                     ; preds = %wlc_phy_env_measure_vbat.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i3.i = tail call signext i8 @wlc_lcnphy_tempsense_degree(ptr noundef %pi, i1 noundef zeroext false) #15
  br label %wlc_phy_upd_env_txpwr_rate_limits.exit

wlc_phy_upd_env_txpwr_rate_limits.exit:           ; preds = %if.then.i4.i, %wlc_phy_env_measure_vbat.exit.i.wlc_phy_upd_env_txpwr_rate_limits.exit_crit_edge, %if.then29.wlc_phy_upd_env_txpwr_rate_limits.exit_crit_edge, %if.end61.thread
  %cond71368 = phi i32 [ %cond71366, %if.end61.thread ], [ %cond71, %if.then29.wlc_phy_upd_env_txpwr_rate_limits.exit_crit_edge ], [ %cond71, %wlc_phy_env_measure_vbat.exit.i.wlc_phy_upd_env_txpwr_rate_limits.exit_crit_edge ], [ %cond71, %if.then.i4.i ]
  %min_txpower.i = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 117
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %target_chan.0)
  %cmp7.i = icmp ult i32 %target_chan.0, 15
  %hwtxpwr.i = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 136
  %txpwr_percent = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 15
  br label %for.body78

for.body78:                                       ; preds = %if.end149.for.body78_crit_edge, %wlc_phy_upd_env_txpwr_rate_limits.exit
  %indvars.iv = phi i32 [ 0, %wlc_phy_upd_env_txpwr_rate_limits.exit ], [ %indvars.iv.next, %if.end149.for.body78_crit_edge ]
  %tx_pwr_max.0377 = phi i8 [ 0, %wlc_phy_upd_env_txpwr_rate_limits.exit ], [ %91, %if.end149.for.body78_crit_edge ]
  %tx_pwr_min.0376 = phi i8 [ -1, %wlc_phy_upd_env_txpwr_rate_limits.exit ], [ %92, %if.end149.for.body78_crit_edge ]
  %tx_pwr_max_rate_ind.0375 = phi i8 [ 0, %wlc_phy_upd_env_txpwr_rate_limits.exit ], [ %tx_pwr_max_rate_ind.1, %if.end149.for.body78_crit_edge ]
  %arrayidx79 = getelementptr %struct.brcms_phy, ptr %pi, i32 0, i32 42, i32 %indvars.iv
  %39 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx79, align 1
  %arrayidx81 = getelementptr [101 x i8], ptr %tx_pwr_target, i32 0, i32 %indvars.iv
  %41 = ptrtoint ptr %min_txpower.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %min_txpower.i, align 1
  %mul.i = shl i8 %42, 2
  %43 = ptrtoint ptr %pubpi to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %pubpi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %44)
  %cmp.i362 = icmp eq i32 %44, 4
  br i1 %cmp.i362, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %for.body78
  call void @__sanitizer_cov_trace_pc() #17
  %45 = trunc i32 %indvars.iv to i8
  call void @wlc_phy_txpower_sromlimit_get_nphy(ptr noundef %pi, i32 noundef %target_chan.0, ptr noundef nonnull %maxtxpwr, i8 noundef zeroext %45) #15
  br label %wlc_phy_txpower_sromlimit.exit

if.else.i:                                        ; preds = %for.body78
  br i1 %cmp7.i, label %if.then9.i, label %if.else14.i

if.then9.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx.i = getelementptr %struct.brcms_phy, ptr %pi, i32 0, i32 38, i32 %indvars.iv
  %46 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx.i, align 1
  %48 = ptrtoint ptr %maxtxpwr to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %maxtxpwr, align 1
  br label %wlc_phy_txpower_sromlimit.exit

if.else14.i:                                      ; preds = %if.else.i
  %49 = ptrtoint ptr %maxtxpwr to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 127, ptr %maxtxpwr, align 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.else14.i
  %i.098.i = phi i32 [ 0, %if.else14.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx21.i = getelementptr [51 x %struct.chan_info_basic], ptr @chan_info_all, i32 0, i32 %i.098.i
  %50 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %arrayidx21.i, align 2
  %conv22.i = zext i16 %51 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %target_chan.0, i32 %conv22.i)
  %cmp23.i = icmp eq i32 %target_chan.0, %conv22.i
  br i1 %cmp23.i, label %for.body.i.for.end.i_crit_edge, label %for.inc.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.098.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 51
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ %i.098.i, %for.body.i.for.end.i_crit_edge ], [ 51, %for.inc.i.for.end.i_crit_edge ]
  %52 = ptrtoint ptr %hwtxpwr.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hwtxpwr.i, align 4
  %tobool.not.i = icmp eq ptr %53, null
  br i1 %tobool.not.i, label %if.else30.i, label %if.then27.i

if.then27.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx29.i = getelementptr i8, ptr %53, i32 %i.0.lcssa.i
  %54 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx29.i, align 1
  %56 = ptrtoint ptr %maxtxpwr to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %maxtxpwr, align 1
  br label %wlc_phy_txpower_sromlimit.exit

if.else30.i:                                      ; preds = %for.end.i
  %57 = add nsw i32 %i.0.lcssa.i, -14
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %57)
  %58 = icmp ult i32 %57, 22
  br i1 %58, label %if.end37.thread.i, label %if.end37.i

if.end37.thread.i:                                ; preds = %if.else30.i
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx36.i = getelementptr %struct.brcms_phy, ptr %pi, i32 0, i32 40, i32 %indvars.iv
  %59 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx36.i, align 1
  %61 = ptrtoint ptr %maxtxpwr to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %maxtxpwr, align 1
  br label %wlc_phy_txpower_sromlimit.exit

if.end37.i:                                       ; preds = %if.else30.i
  %62 = add nsw i32 %i.0.lcssa.i, -36
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %62)
  %63 = icmp ult i32 %62, 6
  br i1 %63, label %if.then43.i, label %if.end45.i

if.then43.i:                                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx44.i = getelementptr %struct.brcms_phy, ptr %pi, i32 0, i32 41, i32 %indvars.iv
  %64 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx44.i, align 1
  %66 = ptrtoint ptr %maxtxpwr to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %65, ptr %maxtxpwr, align 1
  br label %wlc_phy_txpower_sromlimit.exit

if.end45.i:                                       ; preds = %if.end37.i
  %67 = add nsw i32 %i.0.lcssa.i, -42
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %67)
  %68 = icmp ult i32 %67, 9
  br i1 %68, label %if.then51.i, label %if.end45.i.wlc_phy_txpower_sromlimit.exit_crit_edge

if.end45.i.wlc_phy_txpower_sromlimit.exit_crit_edge: ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %wlc_phy_txpower_sromlimit.exit

if.then51.i:                                      ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx52.i = getelementptr %struct.brcms_phy, ptr %pi, i32 0, i32 39, i32 %indvars.iv
  %69 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx52.i, align 1
  %71 = ptrtoint ptr %maxtxpwr to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %70, ptr %maxtxpwr, align 1
  br label %wlc_phy_txpower_sromlimit.exit

wlc_phy_txpower_sromlimit.exit:                   ; preds = %if.then51.i, %if.end45.i.wlc_phy_txpower_sromlimit.exit_crit_edge, %if.then43.i, %if.end37.thread.i, %if.then27.i, %if.then9.i, %if.then.i
  %72 = ptrtoint ptr %maxtxpwr to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %maxtxpwr, align 1
  %arrayidx92 = getelementptr %struct.brcms_phy, ptr %pi, i32 0, i32 63, i32 %indvars.iv
  %74 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx92, align 1
  %76 = call i8 @llvm.umin.i8(i8 %73, i8 %75)
  %77 = call i8 @llvm.usub.sat.i8(i8 %76, i8 6)
  %78 = call i8 @llvm.umin.i8(i8 %77, i8 %40)
  %79 = ptrtoint ptr %maxtxpwr to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %78, ptr %maxtxpwr, align 1
  %80 = ptrtoint ptr %txpwr_percent to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %txpwr_percent, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 101, i8 %81)
  %cmp141 = icmp ult i8 %81, 101
  br i1 %cmp141, label %if.then143, label %wlc_phy_txpower_sromlimit.exit.if.end149_crit_edge

wlc_phy_txpower_sromlimit.exit.if.end149_crit_edge: ; preds = %wlc_phy_txpower_sromlimit.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end149

if.then143:                                       ; preds = %wlc_phy_txpower_sromlimit.exit
  call void @__sanitizer_cov_trace_pc() #17
  %conv140 = zext i8 %81 to i16
  %conv144 = zext i8 %78 to i16
  %mul147 = mul nuw nsw i16 %conv144, %conv140
  %div = udiv i16 %mul147, 100
  %conv148 = trunc i16 %div to i8
  %82 = ptrtoint ptr %maxtxpwr to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %conv148, ptr %maxtxpwr, align 1
  br label %if.end149

if.end149:                                        ; preds = %if.then143, %wlc_phy_txpower_sromlimit.exit.if.end149_crit_edge
  %83 = ptrtoint ptr %maxtxpwr to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %maxtxpwr, align 1
  %85 = call i8 @llvm.umax.i8(i8 %84, i8 %mul.i)
  %arrayidx167 = getelementptr %struct.brcms_phy, ptr %pi, i32 0, i32 64, i32 %indvars.iv
  %86 = ptrtoint ptr %arrayidx167 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx167, align 1
  %88 = call i8 @llvm.umin.i8(i8 %85, i8 %87)
  %89 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %88, ptr %arrayidx81, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %88, i8 %tx_pwr_max.0377)
  %cmp186 = icmp ugt i8 %88, %tx_pwr_max.0377
  %90 = trunc i32 %indvars.iv to i8
  %tx_pwr_max_rate_ind.1 = select i1 %cmp186, i8 %90, i8 %tx_pwr_max_rate_ind.0375
  %91 = call i8 @llvm.umax.i8(i8 %tx_pwr_max.0377, i8 %88)
  %92 = call i8 @llvm.umin.i8(i8 %tx_pwr_min.0376, i8 %88)
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %cond71368
  br i1 %exitcond.not, label %for.end220, label %if.end149.for.body78_crit_edge

if.end149.for.body78_crit_edge:                   ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body78

for.end220:                                       ; preds = %if.end149
  %tx_power_offset = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 43
  %93 = call ptr @memset(ptr %tx_power_offset, i32 0, i32 101)
  %tx_power_max = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 47
  %94 = ptrtoint ptr %tx_power_max to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %91, ptr %tx_power_max, align 1
  %tx_power_min = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 62
  %95 = ptrtoint ptr %tx_power_min to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %92, ptr %tx_power_min, align 1
  %tx_power_max_rate_ind = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 48
  %96 = ptrtoint ptr %tx_power_max_rate_ind to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %tx_pwr_max_rate_ind.1, ptr %tx_power_max_rate_ind, align 2
  %hwpwrctrl = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 49
  br label %for.body226

for.body226:                                      ; preds = %for.inc261.for.body226_crit_edge, %for.end220
  %indvars.iv387 = phi i32 [ 0, %for.end220 ], [ %indvars.iv.next388, %for.inc261.for.body226_crit_edge ]
  %arrayidx228 = getelementptr [101 x i8], ptr %tx_pwr_target, i32 0, i32 %indvars.iv387
  %97 = ptrtoint ptr %arrayidx228 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx228, align 1
  %arrayidx230 = getelementptr %struct.brcms_phy, ptr %pi, i32 0, i32 44, i32 %indvars.iv387
  %99 = ptrtoint ptr %arrayidx230 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %98, ptr %arrayidx230, align 1
  %100 = ptrtoint ptr %hwpwrctrl to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %hwpwrctrl, align 1, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool231.not = icmp eq i8 %101, 0
  br i1 %tobool231.not, label %for.body226.if.then236_crit_edge, label %lor.lhs.false

for.body226.if.then236_crit_edge:                 ; preds = %for.body226
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then236

lor.lhs.false:                                    ; preds = %for.body226
  %102 = ptrtoint ptr %pubpi to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %pubpi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %103)
  %cmp234 = icmp eq i32 %103, 4
  br i1 %cmp234, label %lor.lhs.false.if.then236_crit_edge, label %if.else248

lor.lhs.false.if.then236_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then236

if.then236:                                       ; preds = %lor.lhs.false.if.then236_crit_edge, %for.body226.if.then236_crit_edge
  %104 = ptrtoint ptr %tx_power_max to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %tx_power_max, align 1
  br label %for.inc261

if.else248:                                       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  %106 = ptrtoint ptr %tx_power_min to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %tx_power_min, align 1
  br label %for.inc261

for.inc261:                                       ; preds = %if.else248, %if.then236
  %.sink444 = phi i8 [ %98, %if.then236 ], [ %107, %if.else248 ]
  %.sink443 = phi i8 [ %105, %if.then236 ], [ %98, %if.else248 ]
  %sub243 = sub i8 %.sink443, %.sink444
  %arrayidx247 = getelementptr %struct.brcms_phy, ptr %pi, i32 0, i32 43, i32 %indvars.iv387
  %108 = ptrtoint ptr %arrayidx247 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %sub243, ptr %arrayidx247, align 1
  %indvars.iv.next388 = add nuw nsw i32 %indvars.iv387, 1
  %exitcond389.not = icmp eq i32 %indvars.iv.next388, %cond71368
  br i1 %exitcond389.not, label %for.end263, label %for.inc261.for.body226_crit_edge

for.inc261.for.body226_crit_edge:                 ; preds = %for.inc261
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body226

for.end263:                                       ; preds = %for.inc261
  %txpwrrecalc = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 2, i32 3
  %109 = ptrtoint ptr %txpwrrecalc to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %txpwrrecalc, align 4
  %tobool264.not = icmp eq ptr %110, null
  br i1 %tobool264.not, label %for.end263.if.end266_crit_edge, label %if.then265

for.end263.if.end266_crit_edge:                   ; preds = %for.end263
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end266

if.then265:                                       ; preds = %for.end263
  call void @__sanitizer_cov_trace_pc() #17
  call void %110(ptr noundef %pi) #15
  br label %if.end266

if.end266:                                        ; preds = %if.then265, %for.end263.if.end266_crit_edge
  call void @llvm.lifetime.end.p0(i64 101, ptr nonnull %tx_pwr_target) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %maxtxpwr) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wlapi_enable_mac(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wlc_phy_txpower_set(ptr noundef %ppi, i32 noundef %qdbm, i1 noundef zeroext %override) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %qdbm)
  %cmp = icmp ugt i32 %qdbm, 127
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %conv = trunc i32 %qdbm to i8
  %uglygep = getelementptr i8, ptr %ppi, i32 608
  %0 = zext i8 %conv to i32
  %1 = call ptr @memset(ptr %uglygep, i32 %0, i32 101)
  %txpwroverride = getelementptr inbounds %struct.brcms_phy, ptr %ppi, i32 0, i32 67
  %2 = ptrtoint ptr %txpwroverride to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %txpwroverride, align 1
  %sh = getelementptr inbounds %struct.brcms_phy, ptr %ppi, i32 0, i32 1
  %3 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sh, align 4
  %up = getelementptr inbounds %struct.shared_phy, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %up to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %up, align 4, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %for.cond.preheader.cleanup_crit_edge, label %if.then2

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then2:                                         ; preds = %for.cond.preheader
  %measure_hold = getelementptr inbounds %struct.brcms_phy, ptr %ppi, i32 0, i32 27
  %7 = ptrtoint ptr %measure_hold to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %measure_hold, align 4
  %and = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp3.not = icmp eq i32 %and, 0
  br i1 %cmp3.not, label %if.then5, label %if.then2.cleanup_crit_edge

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then5:                                         ; preds = %if.then2
  %d11core = getelementptr inbounds %struct.brcms_phy, ptr %ppi, i32 0, i32 5
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
  %call.i = tail call i32 %16(ptr noundef %10, i16 noundef zeroext 288) #15
  %and6 = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %cmp7 = icmp eq i32 %and6, 0
  br i1 %cmp7, label %if.end19.critedge, label %if.then11

if.then11:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #17
  %17 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sh, align 4
  %physhim = getelementptr inbounds %struct.shared_phy, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %physhim to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %physhim, align 4
  tail call void @wlapi_suspend_mac_and_wait(ptr noundef %20) #15
  tail call void @wlc_phy_txpower_recalc_target(ptr noundef %ppi)
  %21 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sh, align 4
  %physhim18 = getelementptr inbounds %struct.shared_phy, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %physhim18 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %physhim18, align 4
  tail call void @wlapi_enable_mac(ptr noundef %24) #15
  br label %cleanup

if.end19.critedge:                                ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @wlc_phy_txpower_recalc_target(ptr noundef %ppi)
  br label %cleanup

cleanup:                                          ; preds = %if.end19.critedge, %if.then11, %if.then2.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then11 ], [ 0, %if.end19.critedge ], [ 0, %if.then2.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wlc_phy_txpower_sromlimit(ptr noundef %ppi, i32 noundef %channel, ptr nocapture noundef writeonly %min_pwr, ptr noundef %max_pwr, i32 noundef %txp_rate_idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %min_txpower = getelementptr inbounds %struct.brcms_phy, ptr %ppi, i32 0, i32 117
  %0 = ptrtoint ptr %min_txpower to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %min_txpower, align 1
  %mul = shl i8 %1, 2
  %2 = ptrtoint ptr %min_pwr to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %mul, ptr %min_pwr, align 1
  %pubpi = getelementptr inbounds %struct.brcms_phy, ptr %ppi, i32 0, i32 7
  %3 = ptrtoint ptr %pubpi to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pubpi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %cmp = icmp eq i32 %4, 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %5 = tail call i32 @llvm.smax.i32(i32 %txp_rate_idx, i32 0)
  %conv6 = trunc i32 %5 to i8
  tail call void @wlc_phy_txpower_sromlimit_get_nphy(ptr noundef %ppi, i32 noundef %channel, ptr noundef %max_pwr, i8 noundef zeroext %conv6) #15
  br label %if.end56

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %channel)
  %cmp7 = icmp ult i32 %channel, 15
  br i1 %cmp7, label %if.then9, label %if.else14

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %6 = tail call i32 @llvm.smax.i32(i32 %txp_rate_idx, i32 0)
  %arrayidx = getelementptr %struct.brcms_phy, ptr %ppi, i32 0, i32 38, i32 %6
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  %9 = ptrtoint ptr %max_pwr to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %max_pwr, align 1
  br label %if.end56

if.else14:                                        ; preds = %if.else
  %10 = ptrtoint ptr %max_pwr to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 127, ptr %max_pwr, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %txp_rate_idx)
  %cmp15 = icmp slt i32 %txp_rate_idx, 0
  %spec.store.select58 = select i1 %cmp15, i32 4, i32 %txp_rate_idx
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.else14
  %i.098 = phi i32 [ 0, %if.else14 ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx21 = getelementptr [51 x %struct.chan_info_basic], ptr @chan_info_all, i32 0, i32 %i.098
  %11 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx21, align 2
  %conv22 = zext i16 %12 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv22, i32 %channel)
  %cmp23 = icmp eq i32 %conv22, %channel
  br i1 %cmp23, label %for.body.for.end_crit_edge, label %for.inc

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.098, 1
  %exitcond.not = icmp eq i32 %inc, 51
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge
  %i.0.lcssa = phi i32 [ %i.098, %for.body.for.end_crit_edge ], [ 51, %for.inc.for.end_crit_edge ]
  %hwtxpwr = getelementptr inbounds %struct.brcms_phy, ptr %ppi, i32 0, i32 136
  %13 = ptrtoint ptr %hwtxpwr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hwtxpwr, align 4
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %if.else30, label %if.then27

if.then27:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx29 = getelementptr i8, ptr %14, i32 %i.0.lcssa
  %15 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx29, align 1
  %17 = ptrtoint ptr %max_pwr to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %max_pwr, align 1
  br label %if.end56

if.else30:                                        ; preds = %for.end
  %18 = add nsw i32 %i.0.lcssa, -14
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %18)
  %19 = icmp ult i32 %18, 22
  br i1 %19, label %if.end37.thread, label %if.end37

if.end37.thread:                                  ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx36 = getelementptr %struct.brcms_phy, ptr %ppi, i32 0, i32 40, i32 %spec.store.select58
  %20 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx36, align 1
  %22 = ptrtoint ptr %max_pwr to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %max_pwr, align 1
  br label %if.end56

if.end37:                                         ; preds = %if.else30
  %23 = add nsw i32 %i.0.lcssa, -36
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %23)
  %24 = icmp ult i32 %23, 6
  br i1 %24, label %if.then43, label %if.end45

if.then43:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx44 = getelementptr %struct.brcms_phy, ptr %ppi, i32 0, i32 41, i32 %spec.store.select58
  %25 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx44, align 1
  %27 = ptrtoint ptr %max_pwr to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %max_pwr, align 1
  br label %if.end56

if.end45:                                         ; preds = %if.end37
  %28 = add nsw i32 %i.0.lcssa, -42
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %28)
  %29 = icmp ult i32 %28, 9
  br i1 %29, label %if.then51, label %if.end45.if.end56_crit_edge

if.end45.if.end56_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end56

if.then51:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx52 = getelementptr %struct.brcms_phy, ptr %ppi, i32 0, i32 39, i32 %spec.store.select58
  %30 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx52, align 1
  %32 = ptrtoint ptr %max_pwr to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %max_pwr, align 1
  br label %if.end56

if.end56:                                         ; preds = %if.then51, %if.end45.if.end56_crit_edge, %if.then43, %if.end37.thread, %if.then27, %if.then9, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wlc_phy_txpower_sromlimit_get_nphy(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wlc_phy_txpower_sromlimit_max_get(ptr noundef %ppi, i32 noundef %chan, ptr nocapture noundef writeonly %max_txpwr, ptr nocapture noundef writeonly %min_txpwr) local_unnamed_addr #0 align 64 {
entry:
  %maxtxpwr = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %maxtxpwr) #15
  %0 = ptrtoint ptr %maxtxpwr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %maxtxpwr, align 1, !annotation !29
  %pubpi = getelementptr inbounds %struct.brcms_phy, ptr %ppi, i32 0, i32 7
  %1 = ptrtoint ptr %pubpi to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %pubpi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %2)
  %cmp = icmp eq i32 %2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %2)
  %cmp3 = icmp eq i32 %2, 8
  %phi.cast66 = select i1 %cmp3, i32 28, i32 12
  %cond4 = select i1 %cmp, i32 101, i32 %phi.cast66
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %chan)
  %cmp7.i = icmp ult i32 %chan, 15
  %hwtxpwr.i = getelementptr inbounds %struct.brcms_phy, ptr %ppi, i32 0, i32 136
  br label %for.body

for.body:                                         ; preds = %wlc_phy_txpower_sromlimit.exit.for.body_crit_edge, %entry
  %indvars.iv = phi i32 [ 0, %entry ], [ %indvars.iv.next, %wlc_phy_txpower_sromlimit.exit.for.body_crit_edge ]
  %tx_pwr_max.070 = phi i8 [ 0, %entry ], [ %36, %wlc_phy_txpower_sromlimit.exit.for.body_crit_edge ]
  %tx_pwr_min.067 = phi i8 [ -1, %entry ], [ %37, %wlc_phy_txpower_sromlimit.exit.for.body_crit_edge ]
  %3 = ptrtoint ptr %pubpi to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pubpi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %cmp.i = icmp eq i32 %4, 4
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %5 = trunc i32 %indvars.iv to i8
  call void @wlc_phy_txpower_sromlimit_get_nphy(ptr noundef %ppi, i32 noundef %chan, ptr noundef nonnull %maxtxpwr, i8 noundef zeroext %5) #15
  br label %wlc_phy_txpower_sromlimit.exit

if.else.i:                                        ; preds = %for.body
  br i1 %cmp7.i, label %if.then9.i, label %if.else14.i

if.then9.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx.i = getelementptr %struct.brcms_phy, ptr %ppi, i32 0, i32 38, i32 %indvars.iv
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  %8 = ptrtoint ptr %maxtxpwr to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %maxtxpwr, align 1
  br label %wlc_phy_txpower_sromlimit.exit

if.else14.i:                                      ; preds = %if.else.i
  %9 = ptrtoint ptr %maxtxpwr to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 127, ptr %maxtxpwr, align 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.else14.i
  %i.098.i = phi i32 [ 0, %if.else14.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx21.i = getelementptr [51 x %struct.chan_info_basic], ptr @chan_info_all, i32 0, i32 %i.098.i
  %10 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx21.i, align 2
  %conv22.i = zext i16 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv22.i, i32 %chan)
  %cmp23.i = icmp eq i32 %conv22.i, %chan
  br i1 %cmp23.i, label %for.body.i.for.end.i_crit_edge, label %for.inc.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.098.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 51
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ %i.098.i, %for.body.i.for.end.i_crit_edge ], [ 51, %for.inc.i.for.end.i_crit_edge ]
  %12 = ptrtoint ptr %hwtxpwr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hwtxpwr.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.else30.i, label %if.then27.i

if.then27.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx29.i = getelementptr i8, ptr %13, i32 %i.0.lcssa.i
  %14 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx29.i, align 1
  %16 = ptrtoint ptr %maxtxpwr to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %maxtxpwr, align 1
  br label %wlc_phy_txpower_sromlimit.exit

if.else30.i:                                      ; preds = %for.end.i
  %17 = add nsw i32 %i.0.lcssa.i, -14
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %17)
  %18 = icmp ult i32 %17, 22
  br i1 %18, label %if.end37.thread.i, label %if.end37.i

if.end37.thread.i:                                ; preds = %if.else30.i
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx36.i = getelementptr %struct.brcms_phy, ptr %ppi, i32 0, i32 40, i32 %indvars.iv
  %19 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx36.i, align 1
  %21 = ptrtoint ptr %maxtxpwr to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %maxtxpwr, align 1
  br label %wlc_phy_txpower_sromlimit.exit

if.end37.i:                                       ; preds = %if.else30.i
  %22 = add nsw i32 %i.0.lcssa.i, -36
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %22)
  %23 = icmp ult i32 %22, 6
  br i1 %23, label %if.then43.i, label %if.end45.i

if.then43.i:                                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx44.i = getelementptr %struct.brcms_phy, ptr %ppi, i32 0, i32 41, i32 %indvars.iv
  %24 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx44.i, align 1
  %26 = ptrtoint ptr %maxtxpwr to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %maxtxpwr, align 1
  br label %wlc_phy_txpower_sromlimit.exit

if.end45.i:                                       ; preds = %if.end37.i
  %27 = add nsw i32 %i.0.lcssa.i, -42
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %27)
  %28 = icmp ult i32 %27, 9
  br i1 %28, label %if.then51.i, label %if.end45.i.wlc_phy_txpower_sromlimit.exit_crit_edge

if.end45.i.wlc_phy_txpower_sromlimit.exit_crit_edge: ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %wlc_phy_txpower_sromlimit.exit

if.then51.i:                                      ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx52.i = getelementptr %struct.brcms_phy, ptr %ppi, i32 0, i32 39, i32 %indvars.iv
  %29 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx52.i, align 1
  %31 = ptrtoint ptr %maxtxpwr to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %maxtxpwr, align 1
  br label %wlc_phy_txpower_sromlimit.exit

wlc_phy_txpower_sromlimit.exit:                   ; preds = %if.then51.i, %if.end45.i.wlc_phy_txpower_sromlimit.exit_crit_edge, %if.then43.i, %if.end37.thread.i, %if.then27.i, %if.then9.i, %if.then.i
  %32 = ptrtoint ptr %maxtxpwr to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %maxtxpwr, align 1
  %34 = call i8 @llvm.usub.sat.i8(i8 %33, i8 6)
  %35 = ptrtoint ptr %maxtxpwr to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %maxtxpwr, align 1
  %36 = call i8 @llvm.umax.i8(i8 %tx_pwr_max.070, i8 %34)
  %37 = call i8 @llvm.umin.i8(i8 %tx_pwr_min.067, i8 %34)
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %cond4
  br i1 %exitcond.not, label %for.end, label %wlc_phy_txpower_sromlimit.exit.for.body_crit_edge

wlc_phy_txpower_sromlimit.exit.for.body_crit_edge: ; preds = %wlc_phy_txpower_sromlimit.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %wlc_phy_txpower_sromlimit.exit
  call void @__sanitizer_cov_trace_pc() #17
  %38 = ptrtoint ptr %max_txpwr to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %36, ptr %max_txpwr, align 1
  %39 = ptrtoint ptr %min_txpwr to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %37, ptr %min_txpwr, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %maxtxpwr) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @wlc_phy_txpower_boardlimit_band(ptr nocapture noundef %ppi, i32 noundef %bandunit, ptr nocapture noundef %max_pwr, ptr nocapture noundef %min_pwr, ptr nocapture noundef %step_pwr) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @wlc_phy_txpower_get_target_min(ptr nocapture noundef readonly %ppi) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_power_min = getelementptr inbounds %struct.brcms_phy, ptr %ppi, i32 0, i32 62
  %0 = ptrtoint ptr %tx_power_min to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %tx_power_min, align 1
  ret i8 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @wlc_phy_txpower_get_target_max(ptr nocapture noundef readonly %ppi) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_power_max = getelementptr inbounds %struct.brcms_phy, ptr %ppi, i32 0, i32 47
  %0 = ptrtoint ptr %tx_power_max to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %tx_power_max, align 1
  ret i8 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @wlc_phy_txpwr_percent_set(ptr nocapture noundef writeonly %ppi, i8 noundef zeroext %txpwr_percent) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %txpwr_percent1 = getelementptr inbounds %struct.brcms_phy, ptr %ppi, i32 0, i32 15
  %0 = ptrtoint ptr %txpwr_percent1 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %txpwr_percent, ptr %txpwr_percent1, align 2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @wlc_phy_machwcap_set(ptr nocapture noundef readonly %ppi, i32 noundef %machwcap) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %sh = getelementptr inbounds %struct.brcms_phy, ptr %ppi, i32 0, i32 1
  %0 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sh, align 4
  %machwcap1 = getelementptr inbounds %struct.shared_phy, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %machwcap1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %machwcap, ptr %machwcap1, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wlc_phy_runbist_config(ptr nocapture noundef %ppi, i1 noundef zeroext %start_end) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %start_end, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %pubpi = getelementptr inbounds %struct.brcms_phy, ptr %ppi, i32 0, i32 7
  %0 = ptrtoint ptr %pubpi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pubpi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp2 = icmp eq i32 %1, 4
  br i1 %cmp2, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %if.then
  %phy_rev = getelementptr inbounds %struct.brcms_phy, ptr %ppi, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %phy_rev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %phy_rev, align 4
  %.off = add i32 %3, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then12, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %d11core = getelementptr inbounds %struct.brcms_phy, ptr %ppi, i32 0, i32 5
  %4 = ptrtoint ptr %d11core to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d11core, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %ops.i = getelementptr inbounds %struct.bcma_bus, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  %write16.i = getelementptr inbounds %struct.bcma_host_ops, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %write16.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write16.i, align 4
  tail call void %11(ptr noundef %5, i16 noundef zeroext 1020, i16 noundef zeroext 160) #15
  %12 = ptrtoint ptr %d11core to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %d11core, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %ops.i.i = getelementptr inbounds %struct.bcma_bus, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i.i, align 4
  %read16.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %read16.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read16.i.i, align 4
  %call.i.i = tail call zeroext i16 %19(ptr noundef %13, i16 noundef zeroext 1022) #15
  %or3.i = or i16 %call.i.i, -32768
  %20 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %13, align 8
  %ops.i1.i = getelementptr inbounds %struct.bcma_bus, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %ops.i1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops.i1.i, align 4
  %write16.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %write16.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write16.i.i, align 4
  tail call void %25(ptr noundef %13, i16 noundef zeroext 1022, i16 noundef zeroext %or3.i) #15
  br label %cleanup

if.else:                                          ; preds = %entry
  %phy_rev16 = getelementptr inbounds %struct.brcms_phy, ptr %ppi, i32 0, i32 7, i32 1
  %26 = ptrtoint ptr %phy_rev16 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %phy_rev16, align 4
  %.off41 = add i32 %27, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off41)
  %switch42 = icmp ult i32 %.off41, 2
  br i1 %switch42, label %if.then24, label %if.else.if.end28_crit_edge

if.else.if.end28_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end28

if.then24:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %d11core25 = getelementptr inbounds %struct.brcms_phy, ptr %ppi, i32 0, i32 5
  %28 = ptrtoint ptr %d11core25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %d11core25, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 8
  %ops.i43 = getelementptr inbounds %struct.bcma_bus, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %ops.i43 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ops.i43, align 4
  %write16.i44 = getelementptr inbounds %struct.bcma_host_ops, ptr %33, i32 0, i32 4
  %34 = ptrtoint ptr %write16.i44 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write16.i44, align 4
  tail call void %35(ptr noundef %29, i16 noundef zeroext 1020, i16 noundef zeroext 160) #15
  %36 = ptrtoint ptr %d11core25 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %d11core25, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 8
  %ops.i45 = getelementptr inbounds %struct.bcma_bus, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %ops.i45 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ops.i45, align 4
  %write16.i46 = getelementptr inbounds %struct.bcma_host_ops, ptr %41, i32 0, i32 4
  %42 = ptrtoint ptr %write16.i46 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %write16.i46, align 4
  tail call void %43(ptr noundef %37, i16 noundef zeroext 1022, i16 noundef zeroext 0) #15
  br label %if.end28

if.end28:                                         ; preds = %if.then24, %if.else.if.end28_crit_edge
  %phy_init_por.i = getelementptr inbounds %struct.brcms_phy, ptr %ppi, i32 0, i32 16
  %44 = ptrtoint ptr %phy_init_por.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %phy_init_por.i, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.then12, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wlc_phy_txpower_limit_set(ptr noundef %ppi, ptr noundef readonly %txpwr, i16 noundef zeroext %chanspec) local_unnamed_addr #0 align 64 {
entry:
  %tmp_txpwr_limit.i = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp_txpwr_limit.i) #15
  %0 = getelementptr inbounds [16 x i8], ptr %tmp_txpwr_limit.i, i32 0, i32 1
  %1 = getelementptr inbounds [16 x i8], ptr %tmp_txpwr_limit.i, i32 0, i32 2
  %2 = getelementptr inbounds [16 x i8], ptr %tmp_txpwr_limit.i, i32 0, i32 3
  %3 = getelementptr inbounds [16 x i8], ptr %tmp_txpwr_limit.i, i32 0, i32 4
  %4 = getelementptr inbounds [16 x i8], ptr %tmp_txpwr_limit.i, i32 0, i32 5
  %5 = getelementptr inbounds [16 x i8], ptr %tmp_txpwr_limit.i, i32 0, i32 6
  %6 = getelementptr inbounds [16 x i8], ptr %tmp_txpwr_limit.i, i32 0, i32 7
  %7 = getelementptr inbounds [16 x i8], ptr %tmp_txpwr_limit.i, i32 0, i32 8
  %8 = getelementptr inbounds [16 x i8], ptr %tmp_txpwr_limit.i, i32 0, i32 9
  %9 = getelementptr inbounds [16 x i8], ptr %tmp_txpwr_limit.i, i32 0, i32 10
  %10 = getelementptr inbounds [16 x i8], ptr %tmp_txpwr_limit.i, i32 0, i32 11
  %11 = getelementptr inbounds [16 x i8], ptr %tmp_txpwr_limit.i, i32 0, i32 12
  %12 = getelementptr inbounds [16 x i8], ptr %tmp_txpwr_limit.i, i32 0, i32 13
  %13 = getelementptr inbounds [16 x i8], ptr %tmp_txpwr_limit.i, i32 0, i32 14
  %14 = getelementptr inbounds [16 x i8], ptr %tmp_txpwr_limit.i, i32 0, i32 15
  %15 = call ptr @memset(ptr %0, i32 255, i32 15)
  %16 = ptrtoint ptr %txpwr to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %txpwr, align 1
  %arrayidx1.i = getelementptr %struct.brcms_phy, ptr %ppi, i32 0, i32 63, i32 0
  %18 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %arrayidx1.i, align 1
  %arrayidx.1.i = getelementptr [4 x i8], ptr %txpwr, i32 0, i32 1
  %19 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.1.i, align 1
  %arrayidx1.1.i = getelementptr %struct.brcms_phy, ptr %ppi, i32 0, i32 63, i32 1
  %21 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %arrayidx1.1.i, align 1
  %arrayidx.2.i = getelementptr [4 x i8], ptr %txpwr, i32 0, i32 2
  %22 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.2.i, align 1
  %arrayidx1.2.i = getelementptr %struct.brcms_phy, ptr %ppi, i32 0, i32 63, i32 2
  %24 = ptrtoint ptr %arrayidx1.2.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %arrayidx1.2.i, align 1
  %arrayidx.3.i = getelementptr [4 x i8], ptr %txpwr, i32 0, i32 3
  %25 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.3.i, align 1
  %arrayidx1.3.i = getelementptr %struct.brcms_phy, ptr %ppi, i32 0, i32 63, i32 3
  %27 = ptrtoint ptr %arrayidx1.3.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %arrayidx1.3.i, align 1
  %arrayidx6.i = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 1, i32 0
  %28 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx6.i, align 1
  %arrayidx8.i = getelementptr %struct.brcms_phy, ptr %ppi, i32 0, i32 63, i32 4
  %30 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %arrayidx8.i, align 1
  %arrayidx6.1.i = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 1, i32 1
  %31 = ptrtoint ptr %arrayidx6.1.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx6.1.i, align 1
  %arrayidx8.1.i = getelementptr %struct.brcms_phy, ptr %ppi, i32 0, i32 63, i32 5
  %33 = ptrtoint ptr %arrayidx8.1.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %arrayidx8.1.i, align 1
  %arrayidx6.2.i = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 1, i32 2
  %34 = ptrtoint ptr %arrayidx6.2.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx6.2.i, align 1
  %arrayidx8.2.i = getelementptr %struct.brcms_phy, ptr %ppi, i32 0, i32 63, i32 6
  %36 = ptrtoint ptr %arrayidx8.2.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %arrayidx8.2.i, align 1
  %arrayidx6.3.i = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 1, i32 3
  %37 = ptrtoint ptr %arrayidx6.3.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx6.3.i, align 1
  %arrayidx8.3.i = getelementptr %struct.brcms_phy, ptr %ppi, i32 0, i32 63, i32 7
  %39 = ptrtoint ptr %arrayidx8.3.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %arrayidx8.3.i, align 1
  %arrayidx6.4.i = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 1, i32 4
  %40 = ptrtoint ptr %arrayidx6.4.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx6.4.i, align 1
  %arrayidx8.4.i = getelementptr %struct.brcms_phy, ptr %ppi, i32 0, i32 63, i32 8
  %42 = ptrtoint ptr %arrayidx8.4.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %arrayidx8.4.i, align 1
  %arrayidx6.5.i = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 1, i32 5
  %43 = ptrtoint ptr %arrayidx6.5.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx6.5.i, align 1
  %arrayidx8.5.i = getelementptr %struct.brcms_phy, ptr %ppi, i32 0, i32 63, i32 9
  %45 = ptrtoint ptr %arrayidx8.5.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %arrayidx8.5.i, align 1
  %arrayidx6.6.i = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 1, i32 6
  %46 = ptrtoint ptr %arrayidx6.6.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx6.6.i, align 1
  %arrayidx8.6.i = getelementptr %struct.brcms_phy, ptr %ppi, i32 0, i32 63, i32 10
  %48 = ptrtoint ptr %arrayidx8.6.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %arrayidx8.6.i, align 1
  %arrayidx6.7.i = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 1, i32 7
  %49 = ptrtoint ptr %arrayidx6.7.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx6.7.i, align 1
  %arrayidx8.7.i = getelementptr %struct.brcms_phy, ptr %ppi, i32 0, i32 63, i32 11
  %51 = ptrtoint ptr %arrayidx8.7.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %arrayidx8.7.i, align 1
  %pubpi.i = getelementptr inbounds %struct.brcms_phy, ptr %ppi, i32 0, i32 7
  %52 = ptrtoint ptr %pubpi.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %pubpi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %53)
  %cmp13.i = icmp eq i32 %53, 4
  br i1 %cmp13.i, label %for.cond14.preheader.i, label %entry.wlc_phy_txpower_reg_limit_calc.exit_crit_edge

entry.wlc_phy_txpower_reg_limit_calc.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %wlc_phy_txpower_reg_limit_calc.exit

for.cond14.preheader.i:                           ; preds = %entry
  %mcs_40_cdd.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 10
  %ofdm_40_cdd.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 4
  %mcs_40_siso.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 9
  %ofdm_40_siso.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 3
  %mcs_20_cdd.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 6
  %ofdm_cdd.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 2
  %mcs_20_siso.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 5
  br label %for.body16.i

for.body16.i:                                     ; preds = %sw.epilog.i.for.body16.i_crit_edge, %for.cond14.preheader.i
  %txpwr_ptr1.013.i = phi ptr [ null, %for.cond14.preheader.i ], [ %txpwr_ptr1.1.i, %sw.epilog.i.for.body16.i_crit_edge ]
  %txpwr_ptr2.012.i = phi ptr [ null, %for.cond14.preheader.i ], [ %txpwr_ptr2.1.i, %sw.epilog.i.for.body16.i_crit_edge ]
  %rate_start_index.011.i = phi i32 [ 0, %for.cond14.preheader.i ], [ %rate_start_index.1.i, %sw.epilog.i.for.body16.i_crit_edge ]
  %k.010.i = phi i32 [ 0, %for.cond14.preheader.i ], [ %inc56.i, %sw.epilog.i.for.body16.i_crit_edge ]
  %54 = zext i32 %k.010.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %k.010.i, label %for.body16.i.sw.epilog.i_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb19.i
    i32 2, label %sw.bb22.i
    i32 3, label %sw.bb25.i
  ]

for.body16.i.sw.epilog.i_crit_edge:               ; preds = %for.body16.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %for.body16.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.i

sw.bb19.i:                                        ; preds = %for.body16.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.i

sw.bb22.i:                                        ; preds = %for.body16.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.i

sw.bb25.i:                                        ; preds = %for.body16.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb25.i, %sw.bb22.i, %sw.bb19.i, %sw.bb.i, %for.body16.i.sw.epilog.i_crit_edge
  %rate_start_index.1.i = phi i32 [ %rate_start_index.011.i, %for.body16.i.sw.epilog.i_crit_edge ], [ 60, %sw.bb25.i ], [ 52, %sw.bb22.i ], [ 12, %sw.bb19.i ], [ 4, %sw.bb.i ]
  %txpwr_ptr2.1.i = phi ptr [ %txpwr_ptr2.012.i, %for.body16.i.sw.epilog.i_crit_edge ], [ %ofdm_40_cdd.i, %sw.bb25.i ], [ %ofdm_40_siso.i, %sw.bb22.i ], [ %ofdm_cdd.i, %sw.bb19.i ], [ %arrayidx6.i, %sw.bb.i ]
  %txpwr_ptr1.1.i = phi ptr [ %txpwr_ptr1.013.i, %for.body16.i.sw.epilog.i_crit_edge ], [ %mcs_40_cdd.i, %sw.bb25.i ], [ %mcs_40_siso.i, %sw.bb22.i ], [ %mcs_20_cdd.i, %sw.bb19.i ], [ %mcs_20_siso.i, %sw.bb.i ]
  %55 = ptrtoint ptr %tmp_txpwr_limit.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %tmp_txpwr_limit.i, align 1
  %56 = ptrtoint ptr %txpwr_ptr1.1.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %txpwr_ptr1.1.i, align 1
  %58 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %7, align 1
  %59 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 0, ptr %0, align 1
  %arrayidx32.1.i = getelementptr i8, ptr %txpwr_ptr1.1.i, i32 1
  %60 = ptrtoint ptr %arrayidx32.1.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx32.1.i, align 1
  %62 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %8, align 1
  %63 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %1, align 1
  %arrayidx32.2.i = getelementptr i8, ptr %txpwr_ptr1.1.i, i32 2
  %64 = ptrtoint ptr %arrayidx32.2.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx32.2.i, align 1
  %66 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %65, ptr %9, align 1
  %67 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %2, align 1
  %arrayidx32.3.i = getelementptr i8, ptr %txpwr_ptr1.1.i, i32 3
  %68 = ptrtoint ptr %arrayidx32.3.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx32.3.i, align 1
  %70 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %10, align 1
  %71 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 0, ptr %3, align 1
  %arrayidx32.4.i = getelementptr i8, ptr %txpwr_ptr1.1.i, i32 4
  %72 = ptrtoint ptr %arrayidx32.4.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx32.4.i, align 1
  %74 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %73, ptr %11, align 1
  %75 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 0, ptr %4, align 1
  %arrayidx32.5.i = getelementptr i8, ptr %txpwr_ptr1.1.i, i32 5
  %76 = ptrtoint ptr %arrayidx32.5.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx32.5.i, align 1
  %78 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %77, ptr %12, align 1
  %79 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 0, ptr %5, align 1
  %arrayidx32.6.i = getelementptr i8, ptr %txpwr_ptr1.1.i, i32 6
  %80 = ptrtoint ptr %arrayidx32.6.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx32.6.i, align 1
  %82 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %81, ptr %13, align 1
  %83 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 0, ptr %6, align 1
  %arrayidx32.7.i = getelementptr i8, ptr %txpwr_ptr1.1.i, i32 7
  %84 = ptrtoint ptr %arrayidx32.7.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx32.7.i, align 1
  %86 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %85, ptr %14, align 1
  call void @wlc_phy_mcs_to_ofdm_powers_nphy(ptr noundef nonnull %tmp_txpwr_limit.i, i8 noundef zeroext 0, i8 noundef zeroext 7, i8 noundef zeroext 8) #15
  %87 = ptrtoint ptr %txpwr_ptr2.1.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %txpwr_ptr2.1.i, align 1
  %89 = ptrtoint ptr %tmp_txpwr_limit.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %tmp_txpwr_limit.i, align 1
  %91 = call i8 @llvm.umin.i8(i8 %88, i8 %90) #15
  %arrayidx50.i = getelementptr %struct.brcms_phy, ptr %ppi, i32 0, i32 63, i32 %rate_start_index.1.i
  %92 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %91, ptr %arrayidx50.i, align 1
  %inc52.i = add i32 %rate_start_index.1.i, 1
  %arrayidx41.1.i = getelementptr i8, ptr %txpwr_ptr2.1.i, i32 1
  %93 = ptrtoint ptr %arrayidx41.1.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx41.1.i, align 1
  %95 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %0, align 1
  %97 = call i8 @llvm.umin.i8(i8 %94, i8 %96) #15
  %arrayidx50.1.i = getelementptr %struct.brcms_phy, ptr %ppi, i32 0, i32 63, i32 %inc52.i
  %98 = ptrtoint ptr %arrayidx50.1.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %97, ptr %arrayidx50.1.i, align 1
  %inc52.1.i = add i32 %rate_start_index.1.i, 2
  %arrayidx41.2.i = getelementptr i8, ptr %txpwr_ptr2.1.i, i32 2
  %99 = ptrtoint ptr %arrayidx41.2.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %arrayidx41.2.i, align 1
  %101 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %1, align 1
  %103 = call i8 @llvm.umin.i8(i8 %100, i8 %102) #15
  %arrayidx50.2.i = getelementptr %struct.brcms_phy, ptr %ppi, i32 0, i32 63, i32 %inc52.1.i
  %104 = ptrtoint ptr %arrayidx50.2.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %103, ptr %arrayidx50.2.i, align 1
  %inc52.2.i = add i32 %rate_start_index.1.i, 3
  %arrayidx41.3.i = getelementptr i8, ptr %txpwr_ptr2.1.i, i32 3
  %105 = ptrtoint ptr %arrayidx41.3.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx41.3.i, align 1
  %107 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %2, align 1
  %109 = call i8 @llvm.umin.i8(i8 %106, i8 %108) #15
  %arrayidx50.3.i = getelementptr %struct.brcms_phy, ptr %ppi, i32 0, i32 63, i32 %inc52.2.i
  %110 = ptrtoint ptr %arrayidx50.3.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %109, ptr %arrayidx50.3.i, align 1
  %inc52.3.i = add i32 %rate_start_index.1.i, 4
  %arrayidx41.4.i = getelementptr i8, ptr %txpwr_ptr2.1.i, i32 4
  %111 = ptrtoint ptr %arrayidx41.4.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %arrayidx41.4.i, align 1
  %113 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %3, align 1
  %115 = call i8 @llvm.umin.i8(i8 %112, i8 %114) #15
  %arrayidx50.4.i = getelementptr %struct.brcms_phy, ptr %ppi, i32 0, i32 63, i32 %inc52.3.i
  %116 = ptrtoint ptr %arrayidx50.4.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %115, ptr %arrayidx50.4.i, align 1
  %inc52.4.i = add i32 %rate_start_index.1.i, 5
  %arrayidx41.5.i = getelementptr i8, ptr %txpwr_ptr2.1.i, i32 5
  %117 = ptrtoint ptr %arrayidx41.5.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %arrayidx41.5.i, align 1
  %119 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %4, align 1
  %121 = call i8 @llvm.umin.i8(i8 %118, i8 %120) #15
  %arrayidx50.5.i = getelementptr %struct.brcms_phy, ptr %ppi, i32 0, i32 63, i32 %inc52.4.i
  %122 = ptrtoint ptr %arrayidx50.5.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %121, ptr %arrayidx50.5.i, align 1
  %inc52.5.i = add i32 %rate_start_index.1.i, 6
  %arrayidx41.6.i = getelementptr i8, ptr %txpwr_ptr2.1.i, i32 6
  %123 = ptrtoint ptr %arrayidx41.6.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %arrayidx41.6.i, align 1
  %125 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %5, align 1
  %127 = call i8 @llvm.umin.i8(i8 %124, i8 %126) #15
  %arrayidx50.6.i = getelementptr %struct.brcms_phy, ptr %ppi, i32 0, i32 63, i32 %inc52.5.i
  %128 = ptrtoint ptr %arrayidx50.6.i to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %127, ptr %arrayidx50.6.i, align 1
  %inc52.6.i = add i32 %rate_start_index.1.i, 7
  %arrayidx41.7.i = getelementptr i8, ptr %txpwr_ptr2.1.i, i32 7
  %129 = ptrtoint ptr %arrayidx41.7.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %arrayidx41.7.i, align 1
  %131 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %6, align 1
  %133 = call i8 @llvm.umin.i8(i8 %130, i8 %132) #15
  %arrayidx50.7.i = getelementptr %struct.brcms_phy, ptr %ppi, i32 0, i32 63, i32 %inc52.6.i
  %134 = ptrtoint ptr %arrayidx50.7.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %133, ptr %arrayidx50.7.i, align 1
  %inc56.i = add nuw nsw i32 %k.010.i, 1
  %exitcond.not.i = icmp eq i32 %inc56.i, 4
  br i1 %exitcond.not.i, label %sw.epilog.i.for.body61.i_crit_edge, label %sw.epilog.i.for.body16.i_crit_edge

sw.epilog.i.for.body16.i_crit_edge:               ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body16.i

sw.epilog.i.for.body61.i_crit_edge:               ; preds = %sw.epilog.i
  br label %for.body61.i

for.body61.i:                                     ; preds = %sw.epilog82.i.for.body61.i_crit_edge, %sw.epilog.i.for.body61.i_crit_edge
  %txpwr_ptr1.220.i = phi ptr [ %txpwr_ptr1.3.i, %sw.epilog82.i.for.body61.i_crit_edge ], [ %txpwr_ptr1.1.i, %sw.epilog.i.for.body61.i_crit_edge ]
  %txpwr_ptr2.219.i = phi ptr [ %txpwr_ptr2.3.i, %sw.epilog82.i.for.body61.i_crit_edge ], [ %txpwr_ptr2.1.i, %sw.epilog.i.for.body61.i_crit_edge ]
  %rate_start_index.218.i = phi i32 [ %rate_start_index.3.i, %sw.epilog82.i.for.body61.i_crit_edge ], [ %rate_start_index.1.i, %sw.epilog.i.for.body61.i_crit_edge ]
  %k.117.i = phi i32 [ %inc120.i, %sw.epilog82.i.for.body61.i_crit_edge ], [ 0, %sw.epilog.i.for.body61.i_crit_edge ]
  %135 = zext i32 %k.117.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %135, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %k.117.i, label %for.body61.i.sw.epilog82.i_crit_edge [
    i32 0, label %sw.bb62.i
    i32 1, label %sw.bb67.i
    i32 2, label %sw.bb72.i
    i32 3, label %sw.bb77.i
  ]

for.body61.i.sw.epilog82.i_crit_edge:             ; preds = %for.body61.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog82.i

sw.bb62.i:                                        ; preds = %for.body61.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog82.i

sw.bb67.i:                                        ; preds = %for.body61.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog82.i

sw.bb72.i:                                        ; preds = %for.body61.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog82.i

sw.bb77.i:                                        ; preds = %for.body61.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog82.i

sw.epilog82.i:                                    ; preds = %sw.bb77.i, %sw.bb72.i, %sw.bb67.i, %sw.bb62.i, %for.body61.i.sw.epilog82.i_crit_edge
  %rate_start_index.3.i = phi i32 [ %rate_start_index.218.i, %for.body61.i.sw.epilog82.i_crit_edge ], [ 76, %sw.bb77.i ], [ 68, %sw.bb72.i ], [ 28, %sw.bb67.i ], [ 20, %sw.bb62.i ]
  %txpwr_ptr2.3.i = phi ptr [ %txpwr_ptr2.219.i, %for.body61.i.sw.epilog82.i_crit_edge ], [ %mcs_40_cdd.i, %sw.bb77.i ], [ %mcs_40_siso.i, %sw.bb72.i ], [ %mcs_20_cdd.i, %sw.bb67.i ], [ %mcs_20_siso.i, %sw.bb62.i ]
  %txpwr_ptr1.3.i = phi ptr [ %txpwr_ptr1.220.i, %for.body61.i.sw.epilog82.i_crit_edge ], [ %ofdm_40_cdd.i, %sw.bb77.i ], [ %ofdm_40_siso.i, %sw.bb72.i ], [ %ofdm_cdd.i, %sw.bb67.i ], [ %arrayidx6.i, %sw.bb62.i ]
  %136 = ptrtoint ptr %tmp_txpwr_limit.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 0, ptr %tmp_txpwr_limit.i, align 1
  %137 = ptrtoint ptr %txpwr_ptr1.3.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %txpwr_ptr1.3.i, align 1
  %139 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 %138, ptr %7, align 1
  %140 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 0, ptr %0, align 1
  %arrayidx88.1.i = getelementptr i8, ptr %txpwr_ptr1.3.i, i32 1
  %141 = ptrtoint ptr %arrayidx88.1.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %arrayidx88.1.i, align 1
  %143 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %142, ptr %8, align 1
  %144 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 0, ptr %1, align 1
  %arrayidx88.2.i = getelementptr i8, ptr %txpwr_ptr1.3.i, i32 2
  %145 = ptrtoint ptr %arrayidx88.2.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %arrayidx88.2.i, align 1
  %147 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 %146, ptr %9, align 1
  %148 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 0, ptr %2, align 1
  %arrayidx88.3.i = getelementptr i8, ptr %txpwr_ptr1.3.i, i32 3
  %149 = ptrtoint ptr %arrayidx88.3.i to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %arrayidx88.3.i, align 1
  %151 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 %150, ptr %10, align 1
  %152 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 0, ptr %3, align 1
  %arrayidx88.4.i = getelementptr i8, ptr %txpwr_ptr1.3.i, i32 4
  %153 = ptrtoint ptr %arrayidx88.4.i to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %arrayidx88.4.i, align 1
  %155 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 %154, ptr %11, align 1
  %156 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 0, ptr %4, align 1
  %arrayidx88.5.i = getelementptr i8, ptr %txpwr_ptr1.3.i, i32 5
  %157 = ptrtoint ptr %arrayidx88.5.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %arrayidx88.5.i, align 1
  %159 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 %158, ptr %12, align 1
  %160 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 0, ptr %5, align 1
  %arrayidx88.6.i = getelementptr i8, ptr %txpwr_ptr1.3.i, i32 6
  %161 = ptrtoint ptr %arrayidx88.6.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %arrayidx88.6.i, align 1
  %163 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 %162, ptr %13, align 1
  %164 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 0, ptr %6, align 1
  %arrayidx88.7.i = getelementptr i8, ptr %txpwr_ptr1.3.i, i32 7
  %165 = ptrtoint ptr %arrayidx88.7.i to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %arrayidx88.7.i, align 1
  %167 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 %166, ptr %14, align 1
  call void @wlc_phy_ofdm_to_mcs_powers_nphy(ptr noundef nonnull %tmp_txpwr_limit.i, i8 noundef zeroext 0, i8 noundef zeroext 7, i8 noundef zeroext 8) #15
  %168 = ptrtoint ptr %txpwr_ptr2.3.i to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %txpwr_ptr2.3.i, align 1
  %170 = ptrtoint ptr %tmp_txpwr_limit.i to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %tmp_txpwr_limit.i, align 1
  %172 = call i8 @llvm.umin.i8(i8 %169, i8 %171) #15
  %arrayidx114.i = getelementptr %struct.brcms_phy, ptr %ppi, i32 0, i32 63, i32 %rate_start_index.3.i
  %173 = ptrtoint ptr %arrayidx114.i to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 %172, ptr %arrayidx114.i, align 1
  %inc116.i = add i32 %rate_start_index.3.i, 1
  %arrayidx99.1.i = getelementptr i8, ptr %txpwr_ptr2.3.i, i32 1
  %174 = ptrtoint ptr %arrayidx99.1.i to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %arrayidx99.1.i, align 1
  %176 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %0, align 1
  %178 = call i8 @llvm.umin.i8(i8 %175, i8 %177) #15
  %arrayidx114.1.i = getelementptr %struct.brcms_phy, ptr %ppi, i32 0, i32 63, i32 %inc116.i
  %179 = ptrtoint ptr %arrayidx114.1.i to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 %178, ptr %arrayidx114.1.i, align 1
  %inc116.1.i = add i32 %rate_start_index.3.i, 2
  %arrayidx99.2.i = getelementptr i8, ptr %txpwr_ptr2.3.i, i32 2
  %180 = ptrtoint ptr %arrayidx99.2.i to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %arrayidx99.2.i, align 1
  %182 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %1, align 1
  %184 = call i8 @llvm.umin.i8(i8 %181, i8 %183) #15
  %arrayidx114.2.i = getelementptr %struct.brcms_phy, ptr %ppi, i32 0, i32 63, i32 %inc116.1.i
  %185 = ptrtoint ptr %arrayidx114.2.i to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 %184, ptr %arrayidx114.2.i, align 1
  %inc116.2.i = add i32 %rate_start_index.3.i, 3
  %arrayidx99.3.i = getelementptr i8, ptr %txpwr_ptr2.3.i, i32 3
  %186 = ptrtoint ptr %arrayidx99.3.i to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %arrayidx99.3.i, align 1
  %188 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %2, align 1
  %190 = call i8 @llvm.umin.i8(i8 %187, i8 %189) #15
  %arrayidx114.3.i = getelementptr %struct.brcms_phy, ptr %ppi, i32 0, i32 63, i32 %inc116.2.i
  %191 = ptrtoint ptr %arrayidx114.3.i to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 %190, ptr %arrayidx114.3.i, align 1
  %inc116.3.i = add i32 %rate_start_index.3.i, 4
  %arrayidx99.4.i = getelementptr i8, ptr %txpwr_ptr2.3.i, i32 4
  %192 = ptrtoint ptr %arrayidx99.4.i to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %arrayidx99.4.i, align 1
  %194 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %3, align 1
  %196 = call i8 @llvm.umin.i8(i8 %193, i8 %195) #15
  %arrayidx114.4.i = getelementptr %struct.brcms_phy, ptr %ppi, i32 0, i32 63, i32 %inc116.3.i
  %197 = ptrtoint ptr %arrayidx114.4.i to i32
  call void @__asan_store1_noabort(i32 %197)
  store i8 %196, ptr %arrayidx114.4.i, align 1
  %inc116.4.i = add i32 %rate_start_index.3.i, 5
  %arrayidx99.5.i = getelementptr i8, ptr %txpwr_ptr2.3.i, i32 5
  %198 = ptrtoint ptr %arrayidx99.5.i to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %arrayidx99.5.i, align 1
  %200 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %4, align 1
  %202 = call i8 @llvm.umin.i8(i8 %199, i8 %201) #15
  %arrayidx114.5.i = getelementptr %struct.brcms_phy, ptr %ppi, i32 0, i32 63, i32 %inc116.4.i
  %203 = ptrtoint ptr %arrayidx114.5.i to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 %202, ptr %arrayidx114.5.i, align 1
  %inc116.5.i = add i32 %rate_start_index.3.i, 6
  %arrayidx99.6.i = getelementptr i8, ptr %txpwr_ptr2.3.i, i32 6
  %204 = ptrtoint ptr %arrayidx99.6.i to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %arrayidx99.6.i, align 1
  %206 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %5, align 1
  %208 = call i8 @llvm.umin.i8(i8 %205, i8 %207) #15
  %arrayidx114.6.i = getelementptr %struct.brcms_phy, ptr %ppi, i32 0, i32 63, i32 %inc116.5.i
  %209 = ptrtoint ptr %arrayidx114.6.i to i32
  call void @__asan_store1_noabort(i32 %209)
  store i8 %208, ptr %arrayidx114.6.i, align 1
  %inc116.6.i = add i32 %rate_start_index.3.i, 7
  %arrayidx99.7.i = getelementptr i8, ptr %txpwr_ptr2.3.i, i32 7
  %210 = ptrtoint ptr %arrayidx99.7.i to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %arrayidx99.7.i, align 1
  %212 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %6, align 1
  %214 = call i8 @llvm.umin.i8(i8 %211, i8 %213) #15
  %arrayidx114.7.i = getelementptr %struct.brcms_phy, ptr %ppi, i32 0, i32 63, i32 %inc116.6.i
  %215 = ptrtoint ptr %arrayidx114.7.i to i32
  call void @__asan_store1_noabort(i32 %215)
  store i8 %214, ptr %arrayidx114.7.i, align 1
  %inc120.i = add nuw nsw i32 %k.117.i, 1
  %exitcond34.not.i = icmp eq i32 %inc120.i, 4
  br i1 %exitcond34.not.i, label %sw.epilog153.1.i, label %sw.epilog82.i.for.body61.i_crit_edge

sw.epilog82.i.for.body61.i_crit_edge:             ; preds = %sw.epilog82.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body61.i

sw.epilog153.1.i:                                 ; preds = %sw.epilog82.i
  call void @__sanitizer_cov_trace_pc() #17
  %mcs_40_stbc.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 11
  %mcs_20_stbc.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 7
  %216 = ptrtoint ptr %mcs_20_stbc.i to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %mcs_20_stbc.i, align 1
  %arrayidx137.i = getelementptr %struct.brcms_phy, ptr %ppi, i32 0, i32 63, i32 36
  %218 = ptrtoint ptr %arrayidx137.i to i32
  call void @__asan_store1_noabort(i32 %218)
  store i8 %217, ptr %arrayidx137.i, align 1
  %arrayidx135.1.i = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 7, i32 1
  %219 = ptrtoint ptr %arrayidx135.1.i to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %arrayidx135.1.i, align 1
  %arrayidx137.1.i = getelementptr %struct.brcms_phy, ptr %ppi, i32 0, i32 63, i32 37
  %221 = ptrtoint ptr %arrayidx137.1.i to i32
  call void @__asan_store1_noabort(i32 %221)
  store i8 %220, ptr %arrayidx137.1.i, align 1
  %arrayidx135.2.i = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 7, i32 2
  %222 = ptrtoint ptr %arrayidx135.2.i to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %arrayidx135.2.i, align 1
  %arrayidx137.2.i = getelementptr %struct.brcms_phy, ptr %ppi, i32 0, i32 63, i32 38
  %224 = ptrtoint ptr %arrayidx137.2.i to i32
  call void @__asan_store1_noabort(i32 %224)
  store i8 %223, ptr %arrayidx137.2.i, align 1
  %arrayidx135.3.i = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 7, i32 3
  %225 = ptrtoint ptr %arrayidx135.3.i to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %arrayidx135.3.i, align 1
  %arrayidx137.3.i = getelementptr %struct.brcms_phy, ptr %ppi, i32 0, i32 63, i32 39
  %227 = ptrtoint ptr %arrayidx137.3.i to i32
  call void @__asan_store1_noabort(i32 %227)
  store i8 %226, ptr %arrayidx137.3.i, align 1
  %arrayidx135.4.i = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 7, i32 4
  %228 = ptrtoint ptr %arrayidx135.4.i to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %arrayidx135.4.i, align 1
  %arrayidx137.4.i = getelementptr %struct.brcms_phy, ptr %ppi, i32 0, i32 63, i32 40
  %230 = ptrtoint ptr %arrayidx137.4.i to i32
  call void @__asan_store1_noabort(i32 %230)
  store i8 %229, ptr %arrayidx137.4.i, align 1
  %arrayidx135.5.i = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 7, i32 5
  %231 = ptrtoint ptr %arrayidx135.5.i to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %arrayidx135.5.i, align 1
  %arrayidx137.5.i = getelementptr %struct.brcms_phy, ptr %ppi, i32 0, i32 63, i32 41
  %233 = ptrtoint ptr %arrayidx137.5.i to i32
  call void @__asan_store1_noabort(i32 %233)
  store i8 %232, ptr %arrayidx137.5.i, align 1
  %arrayidx135.6.i = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 7, i32 6
  %234 = ptrtoint ptr %arrayidx135.6.i to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %arrayidx135.6.i, align 1
  %arrayidx137.6.i = getelementptr %struct.brcms_phy, ptr %ppi, i32 0, i32 63, i32 42
  %236 = ptrtoint ptr %arrayidx137.6.i to i32
  call void @__asan_store1_noabort(i32 %236)
  store i8 %235, ptr %arrayidx137.6.i, align 1
  %arrayidx135.7.i = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 7, i32 7
  %237 = ptrtoint ptr %arrayidx135.7.i to i32
  call void @__asan_load1_noabort(i32 %237)
  %238 = load i8, ptr %arrayidx135.7.i, align 1
  %arrayidx137.7.i = getelementptr %struct.brcms_phy, ptr %ppi, i32 0, i32 63, i32 43
  %239 = ptrtoint ptr %arrayidx137.7.i to i32
  call void @__asan_store1_noabort(i32 %239)
  store i8 %238, ptr %arrayidx137.7.i, align 1
  %240 = ptrtoint ptr %mcs_40_stbc.i to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %mcs_40_stbc.i, align 1
  %arrayidx137.138.i = getelementptr %struct.brcms_phy, ptr %ppi, i32 0, i32 63, i32 84
  %242 = ptrtoint ptr %arrayidx137.138.i to i32
  call void @__asan_store1_noabort(i32 %242)
  store i8 %241, ptr %arrayidx137.138.i, align 1
  %arrayidx135.1.1.i = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 11, i32 1
  %243 = ptrtoint ptr %arrayidx135.1.1.i to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %arrayidx135.1.1.i, align 1
  %arrayidx137.1.1.i = getelementptr %struct.brcms_phy, ptr %ppi, i32 0, i32 63, i32 85
  %245 = ptrtoint ptr %arrayidx137.1.1.i to i32
  call void @__asan_store1_noabort(i32 %245)
  store i8 %244, ptr %arrayidx137.1.1.i, align 1
  %arrayidx135.2.1.i = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 11, i32 2
  %246 = ptrtoint ptr %arrayidx135.2.1.i to i32
  call void @__asan_load1_noabort(i32 %246)
  %247 = load i8, ptr %arrayidx135.2.1.i, align 1
  %arrayidx137.2.1.i = getelementptr %struct.brcms_phy, ptr %ppi, i32 0, i32 63, i32 86
  %248 = ptrtoint ptr %arrayidx137.2.1.i to i32
  call void @__asan_store1_noabort(i32 %248)
  store i8 %247, ptr %arrayidx137.2.1.i, align 1
  %arrayidx135.3.1.i = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 11, i32 3
  %249 = ptrtoint ptr %arrayidx135.3.1.i to i32
  call void @__asan_load1_noabort(i32 %249)
  %250 = load i8, ptr %arrayidx135.3.1.i, align 1
  %arrayidx137.3.1.i = getelementptr %struct.brcms_phy, ptr %ppi, i32 0, i32 63, i32 87
  %251 = ptrtoint ptr %arrayidx137.3.1.i to i32
  call void @__asan_store1_noabort(i32 %251)
  store i8 %250, ptr %arrayidx137.3.1.i, align 1
  %arrayidx135.4.1.i = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 11, i32 4
  %252 = ptrtoint ptr %arrayidx135.4.1.i to i32
  call void @__asan_load1_noabort(i32 %252)
  %253 = load i8, ptr %arrayidx135.4.1.i, align 1
  %arrayidx137.4.1.i = getelementptr %struct.brcms_phy, ptr %ppi, i32 0, i32 63, i32 88
  %254 = ptrtoint ptr %arrayidx137.4.1.i to i32
  call void @__asan_store1_noabort(i32 %254)
  store i8 %253, ptr %arrayidx137.4.1.i, align 1
  %arrayidx135.5.1.i = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 11, i32 5
  %255 = ptrtoint ptr %arrayidx135.5.1.i to i32
  call void @__asan_load1_noabort(i32 %255)
  %256 = load i8, ptr %arrayidx135.5.1.i, align 1
  %arrayidx137.5.1.i = getelementptr %struct.brcms_phy, ptr %ppi, i32 0, i32 63, i32 89
  %257 = ptrtoint ptr %arrayidx137.5.1.i to i32
  call void @__asan_store1_noabort(i32 %257)
  store i8 %256, ptr %arrayidx137.5.1.i, align 1
  %arrayidx135.6.1.i = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 11, i32 6
  %258 = ptrtoint ptr %arrayidx135.6.1.i to i32
  call void @__asan_load1_noabort(i32 %258)
  %259 = load i8, ptr %arrayidx135.6.1.i, align 1
  %arrayidx137.6.1.i = getelementptr %struct.brcms_phy, ptr %ppi, i32 0, i32 63, i32 90
  %260 = ptrtoint ptr %arrayidx137.6.1.i to i32
  call void @__asan_store1_noabort(i32 %260)
  store i8 %259, ptr %arrayidx137.6.1.i, align 1
  %arrayidx135.7.1.i = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 11, i32 7
  %261 = ptrtoint ptr %arrayidx135.7.1.i to i32
  call void @__asan_load1_noabort(i32 %261)
  %262 = load i8, ptr %arrayidx135.7.1.i, align 1
  %arrayidx137.7.1.i = getelementptr %struct.brcms_phy, ptr %ppi, i32 0, i32 63, i32 91
  %263 = ptrtoint ptr %arrayidx137.7.1.i to i32
  call void @__asan_store1_noabort(i32 %263)
  store i8 %262, ptr %arrayidx137.7.1.i, align 1
  %mcs_40_mimo.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 12
  %mcs_20_mimo.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 8
  %264 = ptrtoint ptr %mcs_20_mimo.i to i32
  call void @__asan_load1_noabort(i32 %264)
  %265 = load i8, ptr %mcs_20_mimo.i, align 1
  %arrayidx160.i = getelementptr %struct.brcms_phy, ptr %ppi, i32 0, i32 63, i32 44
  %266 = ptrtoint ptr %arrayidx160.i to i32
  call void @__asan_store1_noabort(i32 %266)
  store i8 %265, ptr %arrayidx160.i, align 1
  %arrayidx158.1.i = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 8, i32 1
  %267 = ptrtoint ptr %arrayidx158.1.i to i32
  call void @__asan_load1_noabort(i32 %267)
  %268 = load i8, ptr %arrayidx158.1.i, align 1
  %arrayidx160.1.i = getelementptr %struct.brcms_phy, ptr %ppi, i32 0, i32 63, i32 45
  %269 = ptrtoint ptr %arrayidx160.1.i to i32
  call void @__asan_store1_noabort(i32 %269)
  store i8 %268, ptr %arrayidx160.1.i, align 1
  %arrayidx158.2.i = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 8, i32 2
  %270 = ptrtoint ptr %arrayidx158.2.i to i32
  call void @__asan_load1_noabort(i32 %270)
  %271 = load i8, ptr %arrayidx158.2.i, align 1
  %arrayidx160.2.i = getelementptr %struct.brcms_phy, ptr %ppi, i32 0, i32 63, i32 46
  %272 = ptrtoint ptr %arrayidx160.2.i to i32
  call void @__asan_store1_noabort(i32 %272)
  store i8 %271, ptr %arrayidx160.2.i, align 1
  %arrayidx158.3.i = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 8, i32 3
  %273 = ptrtoint ptr %arrayidx158.3.i to i32
  call void @__asan_load1_noabort(i32 %273)
  %274 = load i8, ptr %arrayidx158.3.i, align 1
  %arrayidx160.3.i = getelementptr %struct.brcms_phy, ptr %ppi, i32 0, i32 63, i32 47
  %275 = ptrtoint ptr %arrayidx160.3.i to i32
  call void @__asan_store1_noabort(i32 %275)
  store i8 %274, ptr %arrayidx160.3.i, align 1
  %arrayidx158.4.i = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 8, i32 4
  %276 = ptrtoint ptr %arrayidx158.4.i to i32
  call void @__asan_load1_noabort(i32 %276)
  %277 = load i8, ptr %arrayidx158.4.i, align 1
  %arrayidx160.4.i = getelementptr %struct.brcms_phy, ptr %ppi, i32 0, i32 63, i32 48
  %278 = ptrtoint ptr %arrayidx160.4.i to i32
  call void @__asan_store1_noabort(i32 %278)
  store i8 %277, ptr %arrayidx160.4.i, align 1
  %arrayidx158.5.i = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 8, i32 5
  %279 = ptrtoint ptr %arrayidx158.5.i to i32
  call void @__asan_load1_noabort(i32 %279)
  %280 = load i8, ptr %arrayidx158.5.i, align 1
  %arrayidx160.5.i = getelementptr %struct.brcms_phy, ptr %ppi, i32 0, i32 63, i32 49
  %281 = ptrtoint ptr %arrayidx160.5.i to i32
  call void @__asan_store1_noabort(i32 %281)
  store i8 %280, ptr %arrayidx160.5.i, align 1
  %arrayidx158.6.i = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 8, i32 6
  %282 = ptrtoint ptr %arrayidx158.6.i to i32
  call void @__asan_load1_noabort(i32 %282)
  %283 = load i8, ptr %arrayidx158.6.i, align 1
  %arrayidx160.6.i = getelementptr %struct.brcms_phy, ptr %ppi, i32 0, i32 63, i32 50
  %284 = ptrtoint ptr %arrayidx160.6.i to i32
  call void @__asan_store1_noabort(i32 %284)
  store i8 %283, ptr %arrayidx160.6.i, align 1
  %arrayidx158.7.i = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 8, i32 7
  %285 = ptrtoint ptr %arrayidx158.7.i to i32
  call void @__asan_load1_noabort(i32 %285)
  %286 = load i8, ptr %arrayidx158.7.i, align 1
  %arrayidx160.7.i = getelementptr %struct.brcms_phy, ptr %ppi, i32 0, i32 63, i32 51
  %287 = ptrtoint ptr %arrayidx160.7.i to i32
  call void @__asan_store1_noabort(i32 %287)
  store i8 %286, ptr %arrayidx160.7.i, align 1
  %288 = ptrtoint ptr %mcs_40_mimo.i to i32
  call void @__asan_load1_noabort(i32 %288)
  %289 = load i8, ptr %mcs_40_mimo.i, align 1
  %arrayidx160.143.i = getelementptr %struct.brcms_phy, ptr %ppi, i32 0, i32 63, i32 92
  %290 = ptrtoint ptr %arrayidx160.143.i to i32
  call void @__asan_store1_noabort(i32 %290)
  store i8 %289, ptr %arrayidx160.143.i, align 1
  %arrayidx158.1.1.i = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 12, i32 1
  %291 = ptrtoint ptr %arrayidx158.1.1.i to i32
  call void @__asan_load1_noabort(i32 %291)
  %292 = load i8, ptr %arrayidx158.1.1.i, align 1
  %arrayidx160.1.1.i = getelementptr %struct.brcms_phy, ptr %ppi, i32 0, i32 63, i32 93
  %293 = ptrtoint ptr %arrayidx160.1.1.i to i32
  call void @__asan_store1_noabort(i32 %293)
  store i8 %292, ptr %arrayidx160.1.1.i, align 1
  %arrayidx158.2.1.i = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 12, i32 2
  %294 = ptrtoint ptr %arrayidx158.2.1.i to i32
  call void @__asan_load1_noabort(i32 %294)
  %295 = load i8, ptr %arrayidx158.2.1.i, align 1
  %arrayidx160.2.1.i = getelementptr %struct.brcms_phy, ptr %ppi, i32 0, i32 63, i32 94
  %296 = ptrtoint ptr %arrayidx160.2.1.i to i32
  call void @__asan_store1_noabort(i32 %296)
  store i8 %295, ptr %arrayidx160.2.1.i, align 1
  %arrayidx158.3.1.i = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 12, i32 3
  %297 = ptrtoint ptr %arrayidx158.3.1.i to i32
  call void @__asan_load1_noabort(i32 %297)
  %298 = load i8, ptr %arrayidx158.3.1.i, align 1
  %arrayidx160.3.1.i = getelementptr %struct.brcms_phy, ptr %ppi, i32 0, i32 63, i32 95
  %299 = ptrtoint ptr %arrayidx160.3.1.i to i32
  call void @__asan_store1_noabort(i32 %299)
  store i8 %298, ptr %arrayidx160.3.1.i, align 1
  %arrayidx158.4.1.i = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 12, i32 4
  %300 = ptrtoint ptr %arrayidx158.4.1.i to i32
  call void @__asan_load1_noabort(i32 %300)
  %301 = load i8, ptr %arrayidx158.4.1.i, align 1
  %arrayidx160.4.1.i = getelementptr %struct.brcms_phy, ptr %ppi, i32 0, i32 63, i32 96
  %302 = ptrtoint ptr %arrayidx160.4.1.i to i32
  call void @__asan_store1_noabort(i32 %302)
  store i8 %301, ptr %arrayidx160.4.1.i, align 1
  %arrayidx158.5.1.i = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 12, i32 5
  %303 = ptrtoint ptr %arrayidx158.5.1.i to i32
  call void @__asan_load1_noabort(i32 %303)
  %304 = load i8, ptr %arrayidx158.5.1.i, align 1
  %arrayidx160.5.1.i = getelementptr %struct.brcms_phy, ptr %ppi, i32 0, i32 63, i32 97
  %305 = ptrtoint ptr %arrayidx160.5.1.i to i32
  call void @__asan_store1_noabort(i32 %305)
  store i8 %304, ptr %arrayidx160.5.1.i, align 1
  %arrayidx158.6.1.i = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 12, i32 6
  %306 = ptrtoint ptr %arrayidx158.6.1.i to i32
  call void @__asan_load1_noabort(i32 %306)
  %307 = load i8, ptr %arrayidx158.6.1.i, align 1
  %arrayidx160.6.1.i = getelementptr %struct.brcms_phy, ptr %ppi, i32 0, i32 63, i32 98
  %308 = ptrtoint ptr %arrayidx160.6.1.i to i32
  call void @__asan_store1_noabort(i32 %308)
  store i8 %307, ptr %arrayidx160.6.1.i, align 1
  %arrayidx158.7.1.i = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 12, i32 7
  %309 = ptrtoint ptr %arrayidx158.7.1.i to i32
  call void @__asan_load1_noabort(i32 %309)
  %310 = load i8, ptr %arrayidx158.7.1.i, align 1
  %arrayidx160.7.1.i = getelementptr %struct.brcms_phy, ptr %ppi, i32 0, i32 63, i32 99
  %311 = ptrtoint ptr %arrayidx160.7.1.i to i32
  call void @__asan_store1_noabort(i32 %311)
  store i8 %310, ptr %arrayidx160.7.1.i, align 1
  %mcs32.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 13
  %312 = ptrtoint ptr %mcs32.i to i32
  call void @__asan_load1_noabort(i32 %312)
  %313 = load i8, ptr %mcs32.i, align 1
  %arrayidx169.i = getelementptr %struct.brcms_phy, ptr %ppi, i32 0, i32 63, i32 100
  %arrayidx171.i = getelementptr %struct.brcms_phy, ptr %ppi, i32 0, i32 63, i32 76
  %314 = ptrtoint ptr %arrayidx171.i to i32
  call void @__asan_load1_noabort(i32 %314)
  %315 = load i8, ptr %arrayidx171.i, align 2
  %316 = call i8 @llvm.umin.i8(i8 %315, i8 %313) #15
  %317 = ptrtoint ptr %arrayidx171.i to i32
  call void @__asan_store1_noabort(i32 %317)
  store i8 %316, ptr %arrayidx171.i, align 2
  %318 = ptrtoint ptr %arrayidx169.i to i32
  call void @__asan_store1_noabort(i32 %318)
  store i8 %316, ptr %arrayidx169.i, align 2
  %319 = ptrtoint ptr %pubpi.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %.pr = load i32, ptr %pubpi.i, align 4
  br label %wlc_phy_txpower_reg_limit_calc.exit

wlc_phy_txpower_reg_limit_calc.exit:              ; preds = %sw.epilog153.1.i, %entry.wlc_phy_txpower_reg_limit_calc.exit_crit_edge
  %320 = phi i32 [ %53, %entry.wlc_phy_txpower_reg_limit_calc.exit_crit_edge ], [ %.pr, %sw.epilog153.1.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp_txpwr_limit.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %320)
  %cmp = icmp eq i32 %320, 8
  br i1 %cmp, label %for.body.preheader, label %wlc_phy_txpower_reg_limit_calc.exit.if.end10_crit_edge

wlc_phy_txpower_reg_limit_calc.exit.if.end10_crit_edge: ; preds = %wlc_phy_txpower_reg_limit_calc.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

for.body.preheader:                               ; preds = %wlc_phy_txpower_reg_limit_calc.exit
  %arrayidx = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 5, i32 0
  %321 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %321)
  %322 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %322)
  %tobool.not = icmp eq i8 %322, 0
  br i1 %tobool.not, label %if.else, label %for.body.preheader.for.inc_crit_edge

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.else:                                          ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #17
  %323 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %323)
  %324 = load i8, ptr %arrayidx6.i, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.else, %for.body.preheader.for.inc_crit_edge
  %.sink = phi i8 [ %324, %if.else ], [ %322, %for.body.preheader.for.inc_crit_edge ]
  %325 = getelementptr %struct.brcms_phy, ptr %ppi, i32 0, i32 63, i32 12
  %326 = ptrtoint ptr %325 to i32
  call void @__asan_store1_noabort(i32 %326)
  store i8 %.sink, ptr %325, align 1
  %arrayidx.1 = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 5, i32 1
  %327 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %327)
  %328 = load i8, ptr %arrayidx.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %328)
  %tobool.not.1 = icmp eq i8 %328, 0
  br i1 %tobool.not.1, label %if.else.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.1

if.else.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  %329 = ptrtoint ptr %arrayidx6.1.i to i32
  call void @__asan_load1_noabort(i32 %329)
  %330 = load i8, ptr %arrayidx6.1.i, align 1
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.else.1, %for.inc.for.inc.1_crit_edge
  %.sink33 = phi i8 [ %330, %if.else.1 ], [ %328, %for.inc.for.inc.1_crit_edge ]
  %331 = getelementptr %struct.brcms_phy, ptr %ppi, i32 0, i32 63, i32 13
  %332 = ptrtoint ptr %331 to i32
  call void @__asan_store1_noabort(i32 %332)
  store i8 %.sink33, ptr %331, align 1
  %arrayidx.2 = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 5, i32 2
  %333 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %333)
  %334 = load i8, ptr %arrayidx.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %334)
  %tobool.not.2 = icmp eq i8 %334, 0
  br i1 %tobool.not.2, label %if.else.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.2

if.else.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #17
  %335 = ptrtoint ptr %arrayidx6.2.i to i32
  call void @__asan_load1_noabort(i32 %335)
  %336 = load i8, ptr %arrayidx6.2.i, align 1
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.else.2, %for.inc.1.for.inc.2_crit_edge
  %.sink34 = phi i8 [ %336, %if.else.2 ], [ %334, %for.inc.1.for.inc.2_crit_edge ]
  %337 = getelementptr %struct.brcms_phy, ptr %ppi, i32 0, i32 63, i32 14
  %338 = ptrtoint ptr %337 to i32
  call void @__asan_store1_noabort(i32 %338)
  store i8 %.sink34, ptr %337, align 1
  %arrayidx.3 = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 5, i32 3
  %339 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %339)
  %340 = load i8, ptr %arrayidx.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %340)
  %tobool.not.3 = icmp eq i8 %340, 0
  br i1 %tobool.not.3, label %if.else.3, label %for.inc.2.for.inc.3_crit_edge

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.3

if.else.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #17
  %341 = ptrtoint ptr %arrayidx6.3.i to i32
  call void @__asan_load1_noabort(i32 %341)
  %342 = load i8, ptr %arrayidx6.3.i, align 1
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.else.3, %for.inc.2.for.inc.3_crit_edge
  %.sink35 = phi i8 [ %342, %if.else.3 ], [ %340, %for.inc.2.for.inc.3_crit_edge ]
  %343 = getelementptr %struct.brcms_phy, ptr %ppi, i32 0, i32 63, i32 15
  %344 = ptrtoint ptr %343 to i32
  call void @__asan_store1_noabort(i32 %344)
  store i8 %.sink35, ptr %343, align 1
  %arrayidx.4 = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 5, i32 4
  %345 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %345)
  %346 = load i8, ptr %arrayidx.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %346)
  %tobool.not.4 = icmp eq i8 %346, 0
  br i1 %tobool.not.4, label %if.else.4, label %for.inc.3.for.inc.4_crit_edge

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.4

if.else.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #17
  %347 = ptrtoint ptr %arrayidx6.4.i to i32
  call void @__asan_load1_noabort(i32 %347)
  %348 = load i8, ptr %arrayidx6.4.i, align 1
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.else.4, %for.inc.3.for.inc.4_crit_edge
  %.sink36 = phi i8 [ %348, %if.else.4 ], [ %346, %for.inc.3.for.inc.4_crit_edge ]
  %349 = getelementptr %struct.brcms_phy, ptr %ppi, i32 0, i32 63, i32 16
  %350 = ptrtoint ptr %349 to i32
  call void @__asan_store1_noabort(i32 %350)
  store i8 %.sink36, ptr %349, align 1
  %arrayidx.5 = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 5, i32 5
  %351 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %351)
  %352 = load i8, ptr %arrayidx.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %352)
  %tobool.not.5 = icmp eq i8 %352, 0
  br i1 %tobool.not.5, label %if.else.5, label %for.inc.4.for.inc.5_crit_edge

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.5

if.else.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #17
  %353 = ptrtoint ptr %arrayidx6.5.i to i32
  call void @__asan_load1_noabort(i32 %353)
  %354 = load i8, ptr %arrayidx6.5.i, align 1
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.else.5, %for.inc.4.for.inc.5_crit_edge
  %.sink37 = phi i8 [ %354, %if.else.5 ], [ %352, %for.inc.4.for.inc.5_crit_edge ]
  %355 = getelementptr %struct.brcms_phy, ptr %ppi, i32 0, i32 63, i32 17
  %356 = ptrtoint ptr %355 to i32
  call void @__asan_store1_noabort(i32 %356)
  store i8 %.sink37, ptr %355, align 1
  %arrayidx.6 = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 5, i32 6
  %357 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %357)
  %358 = load i8, ptr %arrayidx.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %358)
  %tobool.not.6 = icmp eq i8 %358, 0
  br i1 %tobool.not.6, label %if.else.6, label %for.inc.5.for.inc.6_crit_edge

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.6

if.else.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #17
  %359 = ptrtoint ptr %arrayidx6.6.i to i32
  call void @__asan_load1_noabort(i32 %359)
  %360 = load i8, ptr %arrayidx6.6.i, align 1
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.else.6, %for.inc.5.for.inc.6_crit_edge
  %.sink38 = phi i8 [ %360, %if.else.6 ], [ %358, %for.inc.5.for.inc.6_crit_edge ]
  %361 = getelementptr %struct.brcms_phy, ptr %ppi, i32 0, i32 63, i32 18
  %362 = ptrtoint ptr %361 to i32
  call void @__asan_store1_noabort(i32 %362)
  store i8 %.sink38, ptr %361, align 1
  %arrayidx.7 = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 5, i32 7
  %363 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load1_noabort(i32 %363)
  %364 = load i8, ptr %arrayidx.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %364)
  %tobool.not.7 = icmp eq i8 %364, 0
  br i1 %tobool.not.7, label %if.else.7, label %for.inc.6.for.inc.7_crit_edge

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.7

if.else.7:                                        ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #17
  %365 = ptrtoint ptr %arrayidx6.7.i to i32
  call void @__asan_load1_noabort(i32 %365)
  %366 = load i8, ptr %arrayidx6.7.i, align 1
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.else.7, %for.inc.6.for.inc.7_crit_edge
  %.sink39 = phi i8 [ %366, %if.else.7 ], [ %364, %for.inc.6.for.inc.7_crit_edge ]
  %367 = getelementptr %struct.brcms_phy, ptr %ppi, i32 0, i32 63, i32 19
  %368 = ptrtoint ptr %367 to i32
  call void @__asan_store1_noabort(i32 %368)
  store i8 %.sink39, ptr %367, align 1
  br label %if.end10

if.end10:                                         ; preds = %for.inc.7, %wlc_phy_txpower_reg_limit_calc.exit.if.end10_crit_edge
  %sh = getelementptr inbounds %struct.brcms_phy, ptr %ppi, i32 0, i32 1
  %369 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %sh, align 4
  %physhim = getelementptr inbounds %struct.shared_phy, ptr %370, i32 0, i32 2
  %371 = ptrtoint ptr %physhim to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %physhim, align 4
  call void @wlapi_suspend_mac_and_wait(ptr noundef %372) #15
  call void @wlc_phy_txpower_recalc_target(ptr noundef %ppi)
  %373 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %sh, align 4
  %physhim12 = getelementptr inbounds %struct.shared_phy, ptr %374, i32 0, i32 2
  %375 = ptrtoint ptr %physhim12 to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %physhim12, align 4
  call void @wlapi_enable_mac(ptr noundef %376) #15
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @wlc_phy_ofdm_rateset_war(ptr nocapture noundef writeonly %pih, i1 noundef zeroext %war) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %war to i8
  %ofdm_rateset_war = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 10
  %0 = ptrtoint ptr %ofdm_rateset_war to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %frombool, ptr %ofdm_rateset_war, align 2
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @wlc_phy_bf_preempt_enable(ptr nocapture noundef writeonly %pih, i1 noundef zeroext %bf_preempt) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %bf_preempt to i8
  %bf_preempt_4306 = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 11
  %0 = ptrtoint ptr %bf_preempt_4306 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %frombool, ptr %bf_preempt_4306, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @wlapi_bmac_rate_shm_offset(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wlapi_bmac_mhf(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @wlc_phy_txpower_hw_ctrl_get(ptr nocapture noundef readonly %ppi) local_unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %pubpi = getelementptr inbounds %struct.brcms_phy, ptr %ppi, i32 0, i32 7
  %0 = ptrtoint ptr %pubpi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pubpi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp = icmp eq i32 %1, 4
  %nphy_txpwrctrl = getelementptr inbounds %struct.brcms_phy, ptr %ppi, i32 0, i32 50
  %hwpwrctrl = getelementptr inbounds %struct.brcms_phy, ptr %ppi, i32 0, i32 49
  %retval.0.in.in = select i1 %cmp, ptr %nphy_txpwrctrl, ptr %hwpwrctrl
  %2 = ptrtoint ptr %retval.0.in.in to i32
  call void @__asan_load1_noabort(i32 %2)
  %retval.0.in = load i8, ptr %retval.0.in.in, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %retval.0.in)
  %retval.0 = icmp ne i8 %retval.0.in, 0
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wlc_phy_txpower_hw_ctrl_set(ptr noundef %ppi, i1 noundef zeroext %hwpwrctrl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %hwpwrctrl_capable = getelementptr inbounds %struct.brcms_phy, ptr %ppi, i32 0, i32 139
  %0 = ptrtoint ptr %hwpwrctrl_capable to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %hwpwrctrl_capable, align 4, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %frombool = zext i1 %hwpwrctrl to i8
  %hwpwrctrl2 = getelementptr inbounds %struct.brcms_phy, ptr %ppi, i32 0, i32 49
  %2 = ptrtoint ptr %hwpwrctrl2 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %frombool, ptr %hwpwrctrl2, align 1
  %nphy_txpwrctrl = getelementptr inbounds %struct.brcms_phy, ptr %ppi, i32 0, i32 50
  %3 = ptrtoint ptr %nphy_txpwrctrl to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %frombool, ptr %nphy_txpwrctrl, align 4
  %txpwrctrl = getelementptr inbounds %struct.brcms_phy, ptr %ppi, i32 0, i32 271
  %4 = ptrtoint ptr %txpwrctrl to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %frombool, ptr %txpwrctrl, align 4
  %pubpi = getelementptr inbounds %struct.brcms_phy, ptr %ppi, i32 0, i32 7
  %5 = ptrtoint ptr %pubpi to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pubpi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %cmp = icmp eq i32 %6, 4
  br i1 %cmp, label %if.then8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then8:                                         ; preds = %if.end
  %d11core = getelementptr inbounds %struct.brcms_phy, ptr %ppi, i32 0, i32 5
  %7 = ptrtoint ptr %d11core to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %d11core, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %ops.i = getelementptr inbounds %struct.bcma_bus, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops.i, align 4
  %read32.i = getelementptr inbounds %struct.bcma_host_ops, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read32.i, align 4
  %call.i = tail call i32 %14(ptr noundef %8, i16 noundef zeroext 288) #15
  %and = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp9 = icmp eq i32 %and, 0
  br i1 %cmp9, label %if.then8.if.end14_crit_edge, label %if.then13

if.then8.if.end14_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14

if.then13:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #17
  %sh = getelementptr inbounds %struct.brcms_phy, ptr %ppi, i32 0, i32 1
  %15 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sh, align 4
  %physhim = getelementptr inbounds %struct.shared_phy, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %physhim to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %physhim, align 4
  tail call void @wlapi_suspend_mac_and_wait(ptr noundef %18) #15
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.then8.if.end14_crit_edge
  %19 = ptrtoint ptr %nphy_txpwrctrl to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %nphy_txpwrctrl, align 4
  tail call void @wlc_phy_txpwrctrl_enable_nphy(ptr noundef %ppi, i8 noundef zeroext %20) #15
  %21 = ptrtoint ptr %nphy_txpwrctrl to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %nphy_txpwrctrl, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp18 = icmp eq i8 %22, 0
  br i1 %cmp18, label %if.then20, label %if.else

if.then20:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @wlc_phy_txpwr_fixpower_nphy(ptr noundef %ppi) #15
  br label %if.end22

if.else:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  %saved_txpwr_idx = getelementptr inbounds %struct.brcms_phy, ptr %ppi, i32 0, i32 71
  %23 = ptrtoint ptr %saved_txpwr_idx to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %saved_txpwr_idx, align 4
  %25 = and i8 %24, 127
  %and11.i = zext i8 %25 to i16
  %26 = ptrtoint ptr %d11core to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %d11core, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 8
  %ops.i.i = getelementptr inbounds %struct.bcma_bus, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ops.i.i, align 4
  %write16.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %31, i32 0, i32 4
  %32 = ptrtoint ptr %write16.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write16.i.i, align 4
  tail call void %33(ptr noundef %27, i16 noundef zeroext 1020, i16 noundef zeroext 487) #15
  %34 = ptrtoint ptr %d11core to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %d11core, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 8
  %ops.i.i.i = getelementptr inbounds %struct.bcma_bus, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ops.i.i.i, align 4
  %read16.i.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %read16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %read16.i.i.i, align 4
  %call.i.i.i = tail call zeroext i16 %41(ptr noundef %35, i16 noundef zeroext 1022) #15
  %and3.i.i = and i16 %call.i.i.i, -128
  %or4.i.i = or i16 %and3.i.i, %and11.i
  %42 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %35, align 8
  %ops.i1.i.i = getelementptr inbounds %struct.bcma_bus, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %ops.i1.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ops.i1.i.i, align 4
  %write16.i.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %45, i32 0, i32 4
  %46 = ptrtoint ptr %write16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %write16.i.i.i, align 4
  tail call void %47(ptr noundef %35, i16 noundef zeroext 1022, i16 noundef zeroext %or4.i.i) #15
  %phy_wreg.i = getelementptr inbounds %struct.brcms_phy, ptr %ppi, i32 0, i32 53
  %48 = ptrtoint ptr %phy_wreg.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 0, ptr %phy_wreg.i, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then20
  br i1 %cmp9, label %if.end22.cleanup_crit_edge, label %if.then24

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then24:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #17
  %sh25 = getelementptr inbounds %struct.brcms_phy, ptr %ppi, i32 0, i32 1
  %49 = ptrtoint ptr %sh25 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %sh25, align 4
  %physhim26 = getelementptr inbounds %struct.shared_phy, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %physhim26 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %physhim26, align 4
  tail call void @wlapi_enable_mac(ptr noundef %52) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then24, %if.end22.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wlc_phy_txpwrctrl_enable_nphy(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wlc_phy_txpwr_fixpower_nphy(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @wlc_phy_txpower_ipa_upd(ptr nocapture noundef %pi) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_rev = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %phy_rev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %phy_rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp ugt i32 %1, 2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %extpagain = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 45, i32 1
  %2 = ptrtoint ptr %extpagain to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %extpagain, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp1 = icmp eq i8 %3, 2
  %frombool = zext i1 %cmp1 to i8
  %extpagain3 = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 46, i32 1
  %4 = ptrtoint ptr %extpagain3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %extpagain3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp5 = icmp eq i8 %5, 2
  %frombool7 = zext i1 %cmp5 to i8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %.sink16 = phi i8 [ %frombool, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %.sink = phi i8 [ %frombool7, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %6 = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 220
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %.sink16, ptr %6, align 2
  %8 = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 221
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %.sink, ptr %8, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wlc_phy_txpower_get_current(ptr noundef %ppi, ptr noundef %power, i32 noundef %channel) local_unnamed_addr #0 align 64 {
entry:
  %max_pwr = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %max_pwr) #15
  %0 = ptrtoint ptr %max_pwr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %max_pwr, align 1, !annotation !29
  %pubpi = getelementptr inbounds %struct.brcms_phy, ptr %ppi, i32 0, i32 7
  %1 = ptrtoint ptr %pubpi to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %pubpi, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %2, label %entry.if.end26_crit_edge [
    i32 4, label %if.then
    i32 8, label %if.then10
  ]

entry.if.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end26

if.then:                                          ; preds = %entry
  %rf_cores = getelementptr inbounds %struct.tx_power, ptr %power, i32 0, i32 6
  %4 = ptrtoint ptr %rf_cores to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 2, ptr %rf_cores, align 4
  %5 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %power, align 4
  %or = or i32 %6, 4
  store i32 %or, ptr %power, align 4
  %nphy_txpwrctrl = getelementptr inbounds %struct.brcms_phy, ptr %ppi, i32 0, i32 50
  %7 = ptrtoint ptr %nphy_txpwrctrl to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %nphy_txpwrctrl, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %cmp1 = icmp eq i8 %8, 1
  br i1 %cmp1, label %if.then3, label %if.then.if.end26_crit_edge

if.then.if.end26_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end26

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %or5 = or i32 %6, 7
  br label %if.end26.sink.split

if.then10:                                        ; preds = %entry
  %rf_cores11 = getelementptr inbounds %struct.tx_power, ptr %power, i32 0, i32 6
  %9 = ptrtoint ptr %rf_cores11 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %rf_cores11, align 4
  %10 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %power, align 4
  %or13 = or i32 %11, 8
  store i32 %or13, ptr %power, align 4
  %radiopwr_override = getelementptr inbounds %struct.brcms_phy, ptr %ppi, i32 0, i32 69
  %12 = ptrtoint ptr %radiopwr_override to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %radiopwr_override, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %13)
  %cmp15 = icmp eq i16 %13, -1
  br i1 %cmp15, label %if.then17, label %if.then10.if.end20_crit_edge

if.then10.if.end20_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20

if.then17:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #17
  %or19 = or i32 %11, 9
  %14 = ptrtoint ptr %power to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or19, ptr %power, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.then10.if.end20_crit_edge
  %hwpwrctrl = getelementptr inbounds %struct.brcms_phy, ptr %ppi, i32 0, i32 49
  %15 = ptrtoint ptr %hwpwrctrl to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %hwpwrctrl, align 1, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not = icmp eq i8 %16, 0
  br i1 %tobool.not, label %if.end20.if.end26_crit_edge, label %if.then21

if.end20.if.end26_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end26

if.then21:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #17
  %17 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %power, align 4
  %or23 = or i32 %18, 2
  br label %if.end26.sink.split

if.end26.sink.split:                              ; preds = %if.then21, %if.then3
  %or23.sink = phi i32 [ %or23, %if.then21 ], [ %or5, %if.then3 ]
  %19 = ptrtoint ptr %power to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or23.sink, ptr %power, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.end26.sink.split, %if.end20.if.end26_crit_edge, %if.then.if.end26_crit_edge, %entry.if.end26_crit_edge
  %20 = ptrtoint ptr %pubpi to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pubpi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %21)
  %cmp29 = icmp eq i32 %21, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %21)
  %cmp33 = icmp eq i32 %21, 8
  %cond = select i1 %cmp33, i32 20, i32 12
  %cond35 = select i1 %cmp29, i32 101, i32 %cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %channel)
  %cmp7.i = icmp ult i32 %channel, 15
  %hwtxpwr.i = getelementptr inbounds %struct.brcms_phy, ptr %ppi, i32 0, i32 136
  br label %for.body

for.body:                                         ; preds = %wlc_phy_txpower_sromlimit.exit.for.body_crit_edge, %if.end26
  %rate.0230 = phi i32 [ 0, %if.end26 ], [ %inc, %wlc_phy_txpower_sromlimit.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.brcms_phy, ptr %ppi, i32 0, i32 42, i32 %rate.0230
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx, align 1
  %arrayidx38 = getelementptr %struct.tx_power, ptr %power, i32 0, i32 12, i32 %rate.0230
  %24 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %arrayidx38, align 1
  %25 = ptrtoint ptr %pubpi to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pubpi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %26)
  %cmp.i = icmp eq i32 %26, 4
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %conv6.i = trunc i32 %rate.0230 to i8
  call void @wlc_phy_txpower_sromlimit_get_nphy(ptr noundef %ppi, i32 noundef %channel, ptr noundef nonnull %max_pwr, i8 noundef zeroext %conv6.i) #15
  br label %wlc_phy_txpower_sromlimit.exit

if.else.i:                                        ; preds = %for.body
  br i1 %cmp7.i, label %if.then9.i, label %if.else14.i

if.then9.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx.i = getelementptr %struct.brcms_phy, ptr %ppi, i32 0, i32 38, i32 %rate.0230
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.i, align 1
  %29 = ptrtoint ptr %max_pwr to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %max_pwr, align 1
  br label %wlc_phy_txpower_sromlimit.exit

if.else14.i:                                      ; preds = %if.else.i
  %30 = ptrtoint ptr %max_pwr to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 127, ptr %max_pwr, align 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.else14.i
  %i.098.i = phi i32 [ 0, %if.else14.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx21.i = getelementptr [51 x %struct.chan_info_basic], ptr @chan_info_all, i32 0, i32 %i.098.i
  %31 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %arrayidx21.i, align 2
  %conv22.i = zext i16 %32 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv22.i, i32 %channel)
  %cmp23.i = icmp eq i32 %conv22.i, %channel
  br i1 %cmp23.i, label %for.body.i.for.end.i_crit_edge, label %for.inc.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.098.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 51
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ %i.098.i, %for.body.i.for.end.i_crit_edge ], [ 51, %for.inc.i.for.end.i_crit_edge ]
  %33 = ptrtoint ptr %hwtxpwr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hwtxpwr.i, align 4
  %tobool.not.i = icmp eq ptr %34, null
  br i1 %tobool.not.i, label %if.else30.i, label %if.then27.i

if.then27.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx29.i = getelementptr i8, ptr %34, i32 %i.0.lcssa.i
  %35 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx29.i, align 1
  %37 = ptrtoint ptr %max_pwr to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %max_pwr, align 1
  br label %wlc_phy_txpower_sromlimit.exit

if.else30.i:                                      ; preds = %for.end.i
  %38 = add nsw i32 %i.0.lcssa.i, -14
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %38)
  %39 = icmp ult i32 %38, 22
  br i1 %39, label %if.end37.thread.i, label %if.end37.i

if.end37.thread.i:                                ; preds = %if.else30.i
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx36.i = getelementptr %struct.brcms_phy, ptr %ppi, i32 0, i32 40, i32 %rate.0230
  %40 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx36.i, align 1
  %42 = ptrtoint ptr %max_pwr to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %max_pwr, align 1
  br label %wlc_phy_txpower_sromlimit.exit

if.end37.i:                                       ; preds = %if.else30.i
  %43 = add nsw i32 %i.0.lcssa.i, -36
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %43)
  %44 = icmp ult i32 %43, 6
  br i1 %44, label %if.then43.i, label %if.end45.i

if.then43.i:                                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx44.i = getelementptr %struct.brcms_phy, ptr %ppi, i32 0, i32 41, i32 %rate.0230
  %45 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx44.i, align 1
  %47 = ptrtoint ptr %max_pwr to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %max_pwr, align 1
  br label %wlc_phy_txpower_sromlimit.exit

if.end45.i:                                       ; preds = %if.end37.i
  %48 = add nsw i32 %i.0.lcssa.i, -42
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %48)
  %49 = icmp ult i32 %48, 9
  br i1 %49, label %if.then51.i, label %if.end45.i.wlc_phy_txpower_sromlimit.exit_crit_edge

if.end45.i.wlc_phy_txpower_sromlimit.exit_crit_edge: ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %wlc_phy_txpower_sromlimit.exit

if.then51.i:                                      ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx52.i = getelementptr %struct.brcms_phy, ptr %ppi, i32 0, i32 39, i32 %rate.0230
  %50 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx52.i, align 1
  %52 = ptrtoint ptr %max_pwr to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %max_pwr, align 1
  br label %wlc_phy_txpower_sromlimit.exit

wlc_phy_txpower_sromlimit.exit:                   ; preds = %if.then51.i, %if.end45.i.wlc_phy_txpower_sromlimit.exit_crit_edge, %if.then43.i, %if.end37.thread.i, %if.then27.i, %if.then9.i, %if.then.i
  %53 = ptrtoint ptr %max_pwr to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %max_pwr, align 1
  %arrayidx39 = getelementptr %struct.tx_power, ptr %power, i32 0, i32 14, i32 %rate.0230
  %55 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %arrayidx39, align 1
  %arrayidx40 = getelementptr %struct.brcms_phy, ptr %ppi, i32 0, i32 44, i32 %rate.0230
  %56 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx40, align 1
  %arrayidx41 = getelementptr %struct.tx_power, ptr %power, i32 0, i32 15, i32 %rate.0230
  %58 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %arrayidx41, align 1
  %inc = add nuw nsw i32 %rate.0230, 1
  %exitcond.not = icmp eq i32 %inc, %cond35
  br i1 %exitcond.not, label %for.end, label %wlc_phy_txpower_sromlimit.exit.for.body_crit_edge

wlc_phy_txpower_sromlimit.exit.for.body_crit_edge: ; preds = %wlc_phy_txpower_sromlimit.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %wlc_phy_txpower_sromlimit.exit
  %59 = ptrtoint ptr %pubpi to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %pubpi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %60)
  %cmp44 = icmp eq i32 %60, 4
  br i1 %cmp44, label %if.then46, label %if.else109

if.then46:                                        ; preds = %for.end
  %sh = getelementptr inbounds %struct.brcms_phy, ptr %ppi, i32 0, i32 1
  %61 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %sh, align 4
  %physhim = getelementptr inbounds %struct.shared_phy, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %physhim to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %physhim, align 4
  call void @wlapi_suspend_mac_and_wait(ptr noundef %64) #15
  %65 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %sh, align 4
  %physhim.i = getelementptr inbounds %struct.shared_phy, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %physhim.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %physhim.i, align 4
  call void @wlapi_bmac_ucode_wake_override_phyreg_set(ptr noundef %68) #15
  %d11core.i.i = getelementptr inbounds %struct.brcms_phy, ptr %ppi, i32 0, i32 5
  %69 = ptrtoint ptr %d11core.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %d11core.i.i, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %70, align 8
  %ops.i.i.i = getelementptr inbounds %struct.bcma_bus, ptr %72, i32 0, i32 2
  %73 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ops.i.i.i, align 4
  %write16.i.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %74, i32 0, i32 4
  %75 = ptrtoint ptr %write16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %write16.i.i.i, align 4
  call void %76(ptr noundef %70, i16 noundef zeroext 1020, i16 noundef zeroext 280) #15
  %phy_wreg.i.i = getelementptr inbounds %struct.brcms_phy, ptr %ppi, i32 0, i32 53
  %77 = ptrtoint ptr %phy_wreg.i.i to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 0, ptr %phy_wreg.i.i, align 4
  %78 = ptrtoint ptr %d11core.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %d11core.i.i, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %79, align 8
  %ops.i5.i.i = getelementptr inbounds %struct.bcma_bus, ptr %81, i32 0, i32 2
  %82 = ptrtoint ptr %ops.i5.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ops.i5.i.i, align 4
  %read16.i.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %read16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %read16.i.i.i, align 4
  %call.i.i.i = call zeroext i16 %85(ptr noundef %79, i16 noundef zeroext 1022) #15
  %86 = ptrtoint ptr %d11core.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %d11core.i.i, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %87, align 8
  %ops.i.i67.i = getelementptr inbounds %struct.bcma_bus, ptr %89, i32 0, i32 2
  %90 = ptrtoint ptr %ops.i.i67.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %ops.i.i67.i, align 4
  %write16.i.i68.i = getelementptr inbounds %struct.bcma_host_ops, ptr %91, i32 0, i32 4
  %92 = ptrtoint ptr %write16.i.i68.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %write16.i.i68.i, align 4
  call void %93(ptr noundef %87, i16 noundef zeroext 1020, i16 noundef zeroext 281) #15
  %94 = ptrtoint ptr %phy_wreg.i.i to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 0, ptr %phy_wreg.i.i, align 4
  %95 = ptrtoint ptr %d11core.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %d11core.i.i, align 4
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %96, align 8
  %ops.i5.i70.i = getelementptr inbounds %struct.bcma_bus, ptr %98, i32 0, i32 2
  %99 = ptrtoint ptr %ops.i5.i70.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %ops.i5.i70.i, align 4
  %read16.i.i71.i = getelementptr inbounds %struct.bcma_host_ops, ptr %100, i32 0, i32 1
  %101 = ptrtoint ptr %read16.i.i71.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %read16.i.i71.i, align 4
  %call.i.i72.i = call zeroext i16 %102(ptr noundef %96, i16 noundef zeroext 1022) #15
  %103 = and i16 %call.i.i.i, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %103)
  %cmp.not.i = icmp eq i16 %103, 0
  %104 = and i16 %call.i.i72.i, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %104)
  %cmp10.not.i = icmp eq i16 %104, 0
  %105 = ptrtoint ptr %d11core.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %d11core.i.i, align 4
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %106, align 8
  %ops.i.i74.i = getelementptr inbounds %struct.bcma_bus, ptr %108, i32 0, i32 2
  %109 = ptrtoint ptr %ops.i.i74.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %ops.i.i74.i, align 4
  %write16.i.i75.i = getelementptr inbounds %struct.bcma_host_ops, ptr %110, i32 0, i32 4
  %111 = ptrtoint ptr %write16.i.i75.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %write16.i.i75.i, align 4
  call void %112(ptr noundef %106, i16 noundef zeroext 1020, i16 noundef zeroext 493) #15
  %113 = ptrtoint ptr %phy_wreg.i.i to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 0, ptr %phy_wreg.i.i, align 4
  %114 = ptrtoint ptr %d11core.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %d11core.i.i, align 4
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %115, align 8
  %ops.i5.i77.i = getelementptr inbounds %struct.bcma_bus, ptr %117, i32 0, i32 2
  %118 = ptrtoint ptr %ops.i5.i77.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %ops.i5.i77.i, align 4
  %read16.i.i78.i = getelementptr inbounds %struct.bcma_host_ops, ptr %119, i32 0, i32 1
  %120 = ptrtoint ptr %read16.i.i78.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %read16.i.i78.i, align 4
  %call.i.i79.i = call zeroext i16 %121(ptr noundef %115, i16 noundef zeroext 1022) #15
  %122 = ptrtoint ptr %d11core.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %d11core.i.i, align 4
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %123, align 8
  %ops.i.i81.i = getelementptr inbounds %struct.bcma_bus, ptr %125, i32 0, i32 2
  %126 = ptrtoint ptr %ops.i.i81.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %ops.i.i81.i, align 4
  %write16.i.i82.i = getelementptr inbounds %struct.bcma_host_ops, ptr %127, i32 0, i32 4
  %128 = ptrtoint ptr %write16.i.i82.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %write16.i.i82.i, align 4
  call void %129(ptr noundef %123, i16 noundef zeroext 1020, i16 noundef zeroext 494) #15
  %130 = ptrtoint ptr %phy_wreg.i.i to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 0, ptr %phy_wreg.i.i, align 4
  %131 = ptrtoint ptr %d11core.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %d11core.i.i, align 4
  %133 = ptrtoint ptr %132 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %132, align 8
  %ops.i5.i84.i = getelementptr inbounds %struct.bcma_bus, ptr %134, i32 0, i32 2
  %135 = ptrtoint ptr %ops.i5.i84.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %ops.i5.i84.i, align 4
  %read16.i.i85.i = getelementptr inbounds %struct.bcma_host_ops, ptr %136, i32 0, i32 1
  %137 = ptrtoint ptr %read16.i.i85.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %read16.i.i85.i, align 4
  %call.i.i86.i = call zeroext i16 %138(ptr noundef %132, i16 noundef zeroext 1022) #15
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i79.i)
  %cmp25.not.i = icmp sgt i16 %call.i.i79.i, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i86.i)
  %cmp38.not.i = icmp sgt i16 %call.i.i86.i, -1
  %139 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %sh, align 4
  %physhim.i224 = getelementptr inbounds %struct.shared_phy, ptr %140, i32 0, i32 2
  %141 = ptrtoint ptr %physhim.i224 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %physhim.i224, align 4
  call void @wlapi_bmac_ucode_wake_override_phyreg_clear(ptr noundef %142) #15
  %143 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %sh, align 4
  %physhim48 = getelementptr inbounds %struct.shared_phy, ptr %144, i32 0, i32 2
  %145 = ptrtoint ptr %physhim48 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %physhim48, align 4
  call void @wlapi_enable_mac(ptr noundef %146) #15
  %147 = trunc i16 %call.i.i79.i to i8
  %conv49 = select i1 %cmp25.not.i, i8 -128, i8 %147
  %est_Pout = getelementptr inbounds %struct.tx_power, ptr %power, i32 0, i32 7
  %148 = ptrtoint ptr %est_Pout to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %conv49, ptr %est_Pout, align 1
  %149 = trunc i16 %call.i.i86.i to i8
  %conv52 = select i1 %cmp38.not.i, i8 -128, i8 %149
  %arrayidx54 = getelementptr %struct.tx_power, ptr %power, i32 0, i32 7, i32 1
  %150 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 %conv52, ptr %arrayidx54, align 1
  %151 = trunc i16 %call.i.i.i to i8
  %conv56 = select i1 %cmp.not.i, i8 -128, i8 %151
  %est_Pout_act = getelementptr inbounds %struct.tx_power, ptr %power, i32 0, i32 8
  %152 = ptrtoint ptr %est_Pout_act to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 %conv56, ptr %est_Pout_act, align 1
  %153 = trunc i16 %call.i.i72.i to i8
  %conv60 = select i1 %cmp10.not.i, i8 -128, i8 %153
  %arrayidx62 = getelementptr %struct.tx_power, ptr %power, i32 0, i32 8, i32 1
  %154 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 %conv60, ptr %arrayidx62, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %conv49)
  %cmp66 = icmp eq i8 %conv49, -128
  br i1 %cmp66, label %if.then68, label %if.then46.if.end71_crit_edge

if.then46.if.end71_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end71

if.then68:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #17
  %155 = ptrtoint ptr %est_Pout to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 0, ptr %est_Pout, align 1
  br label %if.end71

if.end71:                                         ; preds = %if.then68, %if.then46.if.end71_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %conv52)
  %cmp75 = icmp eq i8 %conv52, -128
  br i1 %cmp75, label %if.then77, label %if.end71.if.end80_crit_edge

if.end71.if.end80_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end80

if.then77:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #17
  %156 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 0, ptr %arrayidx54, align 1
  br label %if.end80

if.end80:                                         ; preds = %if.then77, %if.end71.if.end80_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %conv56)
  %cmp84 = icmp eq i8 %conv56, -128
  br i1 %cmp84, label %if.then86, label %if.end80.if.end89_crit_edge

if.end80.if.end89_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end89

if.then86:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #17
  %157 = ptrtoint ptr %est_Pout_act to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 0, ptr %est_Pout_act, align 1
  br label %if.end89

if.end89:                                         ; preds = %if.then86, %if.end80.if.end89_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %conv60)
  %cmp93 = icmp eq i8 %conv60, -128
  br i1 %cmp93, label %if.then95, label %if.end89.if.end98_crit_edge

if.end89.if.end98_crit_edge:                      ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end98

if.then95:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #17
  %158 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 0, ptr %arrayidx62, align 1
  br label %if.end98

if.end98:                                         ; preds = %if.then95, %if.end89.if.end98_crit_edge
  %est_Pout_cck = getelementptr inbounds %struct.tx_power, ptr %power, i32 0, i32 9
  %159 = ptrtoint ptr %est_Pout_cck to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 0, ptr %est_Pout_cck, align 1
  %tx_power_max = getelementptr inbounds %struct.brcms_phy, ptr %ppi, i32 0, i32 47
  %160 = ptrtoint ptr %tx_power_max to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %tx_power_max, align 1
  %tx_power_max99 = getelementptr inbounds %struct.tx_power, ptr %power, i32 0, i32 10
  %162 = ptrtoint ptr %tx_power_max99 to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 %161, ptr %tx_power_max99, align 2
  %163 = load i8, ptr %tx_power_max, align 1
  %arrayidx103 = getelementptr %struct.tx_power, ptr %power, i32 0, i32 10, i32 1
  %164 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 %163, ptr %arrayidx103, align 1
  %tx_power_max_rate_ind = getelementptr inbounds %struct.brcms_phy, ptr %ppi, i32 0, i32 48
  %165 = ptrtoint ptr %tx_power_max_rate_ind to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %tx_power_max_rate_ind, align 2
  %tx_power_max_rate_ind104 = getelementptr inbounds %struct.tx_power, ptr %power, i32 0, i32 11
  %167 = ptrtoint ptr %tx_power_max_rate_ind104 to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 %166, ptr %tx_power_max_rate_ind104, align 2
  %168 = load i8, ptr %tx_power_max_rate_ind, align 2
  %arrayidx108 = getelementptr %struct.tx_power, ptr %power, i32 0, i32 11, i32 1
  %169 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 %168, ptr %arrayidx108, align 1
  br label %if.end147

if.else109:                                       ; preds = %for.end
  %hwpwrctrl110 = getelementptr inbounds %struct.brcms_phy, ptr %ppi, i32 0, i32 49
  %170 = ptrtoint ptr %hwpwrctrl110 to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %hwpwrctrl110, align 1, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %171)
  %tobool111.not = icmp eq i8 %171, 0
  br i1 %tobool111.not, label %if.else109.if.end147_crit_edge, label %land.lhs.true

if.else109.if.end147_crit_edge:                   ; preds = %if.else109
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end147

land.lhs.true:                                    ; preds = %if.else109
  %sh113 = getelementptr inbounds %struct.brcms_phy, ptr %ppi, i32 0, i32 1
  %172 = ptrtoint ptr %sh113 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %sh113, align 4
  %up = getelementptr inbounds %struct.shared_phy, ptr %173, i32 0, i32 5
  %174 = ptrtoint ptr %up to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %up, align 4, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %175)
  %tobool114.not = icmp eq i8 %175, 0
  br i1 %tobool114.not, label %land.lhs.true.if.end147_crit_edge, label %if.then116

land.lhs.true.if.end147_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end147

if.then116:                                       ; preds = %land.lhs.true
  %physhim.i226 = getelementptr inbounds %struct.shared_phy, ptr %173, i32 0, i32 2
  %176 = ptrtoint ptr %physhim.i226 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %physhim.i226, align 4
  call void @wlapi_bmac_ucode_wake_override_phyreg_set(ptr noundef %177) #15
  %178 = ptrtoint ptr %pubpi to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %pubpi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %179)
  %cmp119 = icmp eq i32 %179, 8
  br i1 %cmp119, label %if.then121, label %if.then116.if.end145_crit_edge

if.then116.if.end145_crit_edge:                   ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end145

if.then121:                                       ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #17
  %tx_power_max122 = getelementptr inbounds %struct.brcms_phy, ptr %ppi, i32 0, i32 47
  %180 = ptrtoint ptr %tx_power_max122 to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %tx_power_max122, align 1
  %tx_power_max123 = getelementptr inbounds %struct.tx_power, ptr %power, i32 0, i32 10
  %182 = ptrtoint ptr %tx_power_max123 to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 %181, ptr %tx_power_max123, align 2
  %183 = load i8, ptr %tx_power_max122, align 1
  %arrayidx127 = getelementptr %struct.tx_power, ptr %power, i32 0, i32 10, i32 1
  %184 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 %183, ptr %arrayidx127, align 1
  %tx_power_max_rate_ind128 = getelementptr inbounds %struct.brcms_phy, ptr %ppi, i32 0, i32 48
  %185 = ptrtoint ptr %tx_power_max_rate_ind128 to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %tx_power_max_rate_ind128, align 2
  %tx_power_max_rate_ind129 = getelementptr inbounds %struct.tx_power, ptr %power, i32 0, i32 11
  %187 = ptrtoint ptr %tx_power_max_rate_ind129 to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 %186, ptr %tx_power_max_rate_ind129, align 2
  %188 = load i8, ptr %tx_power_max_rate_ind128, align 2
  %arrayidx133 = getelementptr %struct.tx_power, ptr %power, i32 0, i32 11, i32 1
  %189 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 %188, ptr %arrayidx133, align 1
  %call134 = call zeroext i1 @wlc_phy_tpc_isenabled_lcnphy(ptr noundef %ppi) #15
  %190 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %power, align 4
  %and140 = and i32 %191, -4
  %masksel = select i1 %call134, i32 3, i32 0
  %storemerge = or i32 %and140, %masksel
  store i32 %storemerge, ptr %power, align 4
  %est_Pout142 = getelementptr inbounds %struct.tx_power, ptr %power, i32 0, i32 7
  %est_Pout_cck144 = getelementptr inbounds %struct.tx_power, ptr %power, i32 0, i32 9
  call void @wlc_lcnphy_get_tssi(ptr noundef %ppi, ptr noundef %est_Pout142, ptr noundef %est_Pout_cck144) #15
  br label %if.end145

if.end145:                                        ; preds = %if.then121, %if.then116.if.end145_crit_edge
  %192 = ptrtoint ptr %sh113 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %sh113, align 4
  %physhim.i228 = getelementptr inbounds %struct.shared_phy, ptr %193, i32 0, i32 2
  %194 = ptrtoint ptr %physhim.i228 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %physhim.i228, align 4
  call void @wlapi_bmac_ucode_wake_override_phyreg_clear(ptr noundef %195) #15
  br label %if.end147

if.end147:                                        ; preds = %if.end145, %land.lhs.true.if.end147_crit_edge, %if.else109.if.end147_crit_edge, %if.end98
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %max_pwr) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @wlc_phy_tpc_isenabled_lcnphy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wlc_lcnphy_get_tssi(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @wlc_phy_antsel_type_set(ptr nocapture noundef writeonly %ppi, i8 noundef zeroext %antsel_type) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %antsel_type1 = getelementptr inbounds %struct.brcms_phy, ptr %ppi, i32 0, i32 13
  %0 = ptrtoint ptr %antsel_type1 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %antsel_type, ptr %antsel_type1, align 2
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @wlc_phy_test_ison(ptr nocapture noundef readonly %ppi) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %phytest_on = getelementptr inbounds %struct.brcms_phy, ptr %ppi, i32 0, i32 9
  %0 = ptrtoint ptr %phytest_on to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %phytest_on, align 1, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool = icmp ne i8 %1, 0
  ret i1 %tobool
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wlc_phy_noise_sample_intr(ptr nocapture noundef %pih) local_unnamed_addr #0 align 64 {
entry:
  %cmplx_pwr_dbm.i.i = alloca [4 x i8], align 4
  %cmplx_pwr.i = alloca [4 x i32], align 4
  %noise_dbm_ant.i = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %pubpi = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 7
  %0 = ptrtoint ptr %pubpi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pubpi, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %1, label %entry.if.end69_crit_edge [
    i32 8, label %if.then
    i32 4, label %if.then60
  ]

entry.if.end69_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

if.then:                                          ; preds = %entry
  %sh = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 1
  %3 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sh, align 4
  %physhim = getelementptr inbounds %struct.shared_phy, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %physhim to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %physhim, align 4
  %call = tail call zeroext i16 @wlapi_bmac_read_shm(ptr noundef %6, i32 noundef 140) #15
  %7 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sh, align 4
  %physhim3 = getelementptr inbounds %struct.shared_phy, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %physhim3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %physhim3, align 4
  %call4 = tail call zeroext i16 @wlapi_bmac_read_shm(ptr noundef %10, i32 noundef 776) #15
  %11 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sh, align 4
  %physhim6 = getelementptr inbounds %struct.shared_phy, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %physhim6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %physhim6, align 4
  %call7 = tail call zeroext i16 @wlapi_bmac_read_shm(ptr noundef %14, i32 noundef 778) #15
  %conv8 = zext i16 %call7 to i32
  %shl = shl nuw i32 %conv8, 16
  %conv9 = zext i16 %call4 to i32
  %15 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sh, align 4
  %physhim11 = getelementptr inbounds %struct.shared_phy, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %physhim11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %physhim11, align 4
  %call12 = tail call zeroext i16 @wlapi_bmac_read_shm(ptr noundef %18, i32 noundef 780) #15
  %19 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sh, align 4
  %physhim14 = getelementptr inbounds %struct.shared_phy, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %physhim14 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %physhim14, align 4
  %call15 = tail call zeroext i16 @wlapi_bmac_read_shm(ptr noundef %22, i32 noundef 782) #15
  %conv16 = zext i16 %call15 to i32
  %shl17 = shl nuw i32 %conv16, 16
  %conv18 = zext i16 %call12 to i32
  %add19 = or i32 %shl, %conv9
  %add = add i32 %add19, %conv18
  %add20 = add i32 %add, %shl17
  %shr = lshr i32 %add20, 6
  %23 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sh, align 4
  %physhim22 = getelementptr inbounds %struct.shared_phy, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %physhim22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %physhim22, align 4
  %call23 = tail call zeroext i16 @wlapi_bmac_read_shm(ptr noundef %26, i32 noundef 136) #15
  %27 = add i32 %add20, -64
  call void @__sanitizer_cov_trace_const_cmp4(i32 31936, i32 %27)
  %28 = icmp ult i32 %27, 31936
  %29 = and i16 %call23, -16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %29)
  %cmp31 = icmp eq i16 %29, 16384
  %or.cond89 = select i1 %28, i1 %cmp31, i1 false
  br i1 %or.cond89, label %if.then33, label %if.then.if.end69_crit_edge

if.then.if.end69_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

if.then33:                                        ; preds = %if.then
  %phy_corenum = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 7, i32 2
  %30 = ptrtoint ptr %phy_corenum to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %phy_corenum, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %cmp19.not.i = icmp eq i8 %31, 0
  br i1 %cmp19.not.i, label %if.then33.wlc_phy_compute_dB.exit_crit_edge, label %for.body.preheader.i

if.then33.wlc_phy_compute_dB.exit_crit_edge:      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #17
  br label %wlc_phy_compute_dB.exit

for.body.preheader.i:                             ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #17
  %32 = tail call i32 @llvm.ctlz.i32(i32 %shr, i1 true) #15, !range !30
  %33 = trunc i32 %32 to i8
  %dec.i = xor i8 %33, 31
  %conv4.i = zext i8 %dec.i to i32
  %sub.i = add nsw i32 %conv4.i, -1
  %shr.i = lshr i32 %shr, %sub.i
  %narrow = mul nuw nsw i8 %dec.i, 3
  %shr.i.tr = trunc i32 %shr.i to i8
  %34 = shl i8 %shr.i.tr, 1
  %35 = and i8 %34, 2
  %36 = add nuw i8 %35, %narrow
  br label %wlc_phy_compute_dB.exit

wlc_phy_compute_dB.exit:                          ; preds = %for.body.preheader.i, %if.then33.wlc_phy_compute_dB.exit_crit_edge
  %noise_dbm.0 = phi i8 [ -92, %if.then33.wlc_phy_compute_dB.exit_crit_edge ], [ %36, %for.body.preheader.i ]
  %d11core.i = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 5
  %37 = ptrtoint ptr %d11core.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %d11core.i, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 8
  %ops.i.i = getelementptr inbounds %struct.bcma_bus, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ops.i.i, align 4
  %write16.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %42, i32 0, i32 4
  %43 = ptrtoint ptr %write16.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %write16.i.i, align 4
  tail call void %44(ptr noundef %38, i16 noundef zeroext 1020, i16 noundef zeroext 1076) #15
  %phy_wreg.i = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 53
  %45 = ptrtoint ptr %phy_wreg.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 0, ptr %phy_wreg.i, align 4
  %46 = ptrtoint ptr %d11core.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %d11core.i, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 8
  %ops.i5.i = getelementptr inbounds %struct.bcma_bus, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %ops.i5.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ops.i5.i, align 4
  %read16.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %read16.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %read16.i.i, align 4
  %call.i.i = tail call zeroext i16 %53(ptr noundef %47, i16 noundef zeroext 1022) #15
  %54 = trunc i16 %call.i.i to i8
  %add45 = add i8 %54, -98
  %sub52 = add i8 %add45, %noise_dbm.0
  br label %if.end69

if.then60:                                        ; preds = %entry
  %sh61 = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 1
  %55 = ptrtoint ptr %sh61 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %sh61, align 4
  %physhim62 = getelementptr inbounds %struct.shared_phy, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %physhim62 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %physhim62, align 4
  %call63 = tail call zeroext i16 @wlapi_bmac_read_shm(ptr noundef %58, i32 noundef 140) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cmplx_pwr.i) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %noise_dbm_ant.i) #15
  %59 = call ptr @memset(ptr %cmplx_pwr.i, i32 0, i32 16)
  %60 = ptrtoint ptr %noise_dbm_ant.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %noise_dbm_ant.i, align 4
  %phy_corenum.i = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 7, i32 2
  %61 = ptrtoint ptr %phy_corenum.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %phy_corenum.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %cmp94.not.i = icmp eq i8 %62, 0
  br i1 %cmp94.not.i, label %if.then60.wlc_phy_noise_read_shmem.exit_crit_edge, label %if.then60.for.body.i94_crit_edge

if.then60.for.body.i94_crit_edge:                 ; preds = %if.then60
  br label %for.body.i94

if.then60.wlc_phy_noise_read_shmem.exit_crit_edge: ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #17
  br label %wlc_phy_noise_read_shmem.exit

for.body.i94:                                     ; preds = %for.inc.i.for.body.i94_crit_edge, %if.then60.for.body.i94_crit_edge
  %indvars.iv.i90 = phi i32 [ %indvars.iv.next.i97, %for.inc.i.for.body.i94_crit_edge ], [ 0, %if.then60.for.body.i94_crit_edge ]
  %idx.096.i = phi i32 [ %add28.i, %for.inc.i.for.body.i94_crit_edge ], [ 0, %if.then60.for.body.i94_crit_edge ]
  %cmplx_pwr_tot.095.i = phi i32 [ %add18.i, %for.inc.i.for.body.i94_crit_edge ], [ 0, %if.then60.for.body.i94_crit_edge ]
  %63 = ptrtoint ptr %sh61 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %sh61, align 4
  %physhim.i = getelementptr inbounds %struct.shared_phy, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %physhim.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %physhim.i, align 4
  %conv4.i91 = and i32 %idx.096.i, 255
  %shl.i = shl nuw nsw i32 %conv4.i91, 1
  %add.i92 = add nuw nsw i32 %shl.i, 776
  %call.i = tail call zeroext i16 @wlapi_bmac_read_shm(ptr noundef %66, i32 noundef %add.i92) #15
  %67 = ptrtoint ptr %sh61 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %sh61, align 4
  %physhim6.i = getelementptr inbounds %struct.shared_phy, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %physhim6.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %physhim6.i, align 4
  %add10.i = add nuw nsw i32 %shl.i, 778
  %call11.i = tail call zeroext i16 @wlapi_bmac_read_shm(ptr noundef %70, i32 noundef %add10.i) #15
  %conv12.i = zext i16 %call11.i to i32
  %shl13.i = shl nuw i32 %conv12.i, 16
  %conv14.i = zext i16 %call.i to i32
  %add15.i = or i32 %shl13.i, %conv14.i
  %arrayidx.i93 = getelementptr [4 x i32], ptr %cmplx_pwr.i, i32 0, i32 %indvars.iv.i90
  %71 = ptrtoint ptr %arrayidx.i93 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %add15.i, ptr %arrayidx.i93, align 4
  %add18.i = add i32 %add15.i, %cmplx_pwr_tot.095.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add15.i)
  %cmp21.i = icmp eq i32 %add15.i, 0
  br i1 %cmp21.i, label %if.then.i95, label %if.else.i

if.then.i95:                                      ; preds = %for.body.i94
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx24.i = getelementptr [4 x i8], ptr %noise_dbm_ant.i, i32 0, i32 %indvars.iv.i90
  %72 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 -92, ptr %arrayidx24.i, align 1
  br label %for.inc.i

if.else.i:                                        ; preds = %for.body.i94
  call void @__sanitizer_cov_trace_pc() #17
  %shr.i96 = lshr i32 %add15.i, 9
  %73 = ptrtoint ptr %arrayidx.i93 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %shr.i96, ptr %arrayidx.i93, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %if.then.i95
  %add28.i = add nuw nsw i32 %conv4.i91, 2
  %indvars.iv.next.i97 = add nuw nsw i32 %indvars.iv.i90, 1
  %74 = ptrtoint ptr %phy_corenum.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %phy_corenum.i, align 4
  %76 = zext i8 %75 to i32
  %cmp.i = icmp ult i32 %indvars.iv.next.i97, %76
  br i1 %cmp.i, label %for.inc.i.for.body.i94_crit_edge, label %for.end.i

for.inc.i.for.body.i94_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i94

for.end.i:                                        ; preds = %for.inc.i
  %77 = zext i8 %75 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add18.i)
  %phi.cmp.i = icmp eq i32 %add18.i, 0
  br i1 %phi.cmp.i, label %for.end.i.if.end36.i_crit_edge, label %if.then32.i

for.end.i.if.end36.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end36.i

if.then32.i:                                      ; preds = %for.end.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmplx_pwr_dbm.i.i) #15
  %78 = ptrtoint ptr %cmplx_pwr_dbm.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %cmplx_pwr_dbm.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %cmp19.not.i.i.i = icmp eq i8 %75, 0
  br i1 %cmp19.not.i.i.i, label %if.then32.i.wlc_phy_noise_calc_phy.exit.i_crit_edge, label %if.then32.i.for.body.i.i.i_crit_edge

if.then32.i.for.body.i.i.i_crit_edge:             ; preds = %if.then32.i
  br label %for.body.i.i.i

if.then32.i.wlc_phy_noise_calc_phy.exit.i_crit_edge: ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %wlc_phy_noise_calc_phy.exit.i

for.body.i.i.i:                                   ; preds = %if.end.i.i.i.for.body.i.i.i_crit_edge, %if.then32.i.for.body.i.i.i_crit_edge
  %indvars.iv.i.i.i = phi i32 [ %indvars.iv.next.i.i.i, %if.end.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.then32.i.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr i32, ptr %cmplx_pwr.i, i32 %indvars.iv.i.i.i
  %79 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool.not.i.i.i.i = icmp eq i32 %80, 0
  br i1 %tobool.not.i.i.i.i, label %for.body.i.i.i.if.end.i.i.i_crit_edge, label %if.then.i.i.i

for.body.i.i.i.if.end.i.i.i_crit_edge:            ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %81 = tail call i32 @llvm.ctlz.i32(i32 %80, i1 true) #15, !range !30
  %82 = trunc i32 %81 to i8
  %dec.i.i.i = xor i8 %82, 31
  %conv4.i.i.i = zext i8 %dec.i.i.i to i32
  %sub.i.i.i = add nsw i32 %conv4.i.i.i, -1
  %shr.i.i.i = lshr i32 %80, %sub.i.i.i
  %and.i.i.i = and i32 %shr.i.i.i, 1
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i, %for.body.i.i.i.if.end.i.i.i_crit_edge
  %msb.0.i.i.i = phi i8 [ %dec.i.i.i, %if.then.i.i.i ], [ 0, %for.body.i.i.i.if.end.i.i.i_crit_edge ]
  %secondmsb.0.i.i.i = phi i32 [ %and.i.i.i, %if.then.i.i.i ], [ 0, %for.body.i.i.i.if.end.i.i.i_crit_edge ]
  %conv6.i.i.i = zext i8 %msb.0.i.i.i to i32
  %mul.i.i.i = mul nuw nsw i32 %conv6.i.i.i, 3
  %mul8.i.i.i = shl nuw nsw i32 %secondmsb.0.i.i.i, 1
  %add.i.i.i = add nuw nsw i32 %mul.i.i.i, %mul8.i.i.i
  %conv9.i.i.i = trunc i32 %add.i.i.i to i8
  %arrayidx11.i.i.i = getelementptr i8, ptr %cmplx_pwr_dbm.i.i, i32 %indvars.iv.i.i.i
  %83 = ptrtoint ptr %arrayidx11.i.i.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %conv9.i.i.i, ptr %arrayidx11.i.i.i, align 1
  %indvars.iv.next.i.i.i = add nuw nsw i32 %indvars.iv.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %indvars.iv.next.i.i.i, %77
  br i1 %exitcond.not.i.i.i, label %for.body.lr.ph.i.i, label %if.end.i.i.i.for.body.i.i.i_crit_edge

if.end.i.i.i.for.body.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i.i

for.body.lr.ph.i.i:                               ; preds = %if.end.i.i.i
  %phy_rev.i.i = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 7, i32 1
  %84 = ptrtoint ptr %phy_rev.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %phy_rev.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %85)
  %cmp7.i.i = icmp ugt i32 %85, 2
  %..i.i = select i1 %cmp7.i.i, i8 -103, i8 -99
  br label %for.body.i.i

for.body23.lr.ph.i.i:                             ; preds = %for.body.i.i
  %nphy_noise_index.i.i = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 185
  br label %for.body23.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %indvars.iv.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %indvars.iv.next.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [4 x i8], ptr %cmplx_pwr_dbm.i.i, i32 0, i32 %indvars.iv.i.i
  %86 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx.i.i, align 1
  %add.i.i = add i8 %87, %..i.i
  store i8 %add.i.i, ptr %arrayidx.i.i, align 1
  %indvars.iv.next.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %indvars.iv.next.i.i, %77
  br i1 %exitcond.not.i.i, label %for.body23.lr.ph.i.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

for.body23.i.i:                                   ; preds = %for.body23.i.i.for.body23.i.i_crit_edge, %for.body23.lr.ph.i.i
  %indvars.iv6.i.i = phi i32 [ 0, %for.body23.lr.ph.i.i ], [ %indvars.iv.next7.i.i, %for.body23.i.i.for.body23.i.i_crit_edge ]
  %arrayidx25.i.i = getelementptr [4 x i8], ptr %cmplx_pwr_dbm.i.i, i32 0, i32 %indvars.iv6.i.i
  %88 = ptrtoint ptr %arrayidx25.i.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx25.i.i, align 1
  %conv26.i.i = sext i8 %89 to i16
  %90 = ptrtoint ptr %nphy_noise_index.i.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %nphy_noise_index.i.i, align 2
  %idxprom29.i.i = zext i8 %91 to i32
  %arrayidx30.i.i = getelementptr %struct.brcms_phy, ptr %pih, i32 0, i32 184, i32 %indvars.iv6.i.i, i32 %idxprom29.i.i
  %92 = ptrtoint ptr %arrayidx30.i.i to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %conv26.i.i, ptr %arrayidx30.i.i, align 2
  %arrayidx34.i.i = getelementptr i8, ptr %noise_dbm_ant.i, i32 %indvars.iv6.i.i
  %93 = ptrtoint ptr %arrayidx34.i.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %89, ptr %arrayidx34.i.i, align 1
  %indvars.iv.next7.i.i = add nuw nsw i32 %indvars.iv6.i.i, 1
  %94 = ptrtoint ptr %phy_corenum.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %phy_corenum.i, align 4
  %96 = zext i8 %95 to i32
  %cmp21.i.i = icmp ult i32 %indvars.iv.next7.i.i, %96
  br i1 %cmp21.i.i, label %for.body23.i.i.for.body23.i.i_crit_edge, label %for.body23.i.i.wlc_phy_noise_calc_phy.exit.i_crit_edge

for.body23.i.i.wlc_phy_noise_calc_phy.exit.i_crit_edge: ; preds = %for.body23.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %wlc_phy_noise_calc_phy.exit.i

for.body23.i.i.for.body23.i.i_crit_edge:          ; preds = %for.body23.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body23.i.i

wlc_phy_noise_calc_phy.exit.i:                    ; preds = %for.body23.i.i.wlc_phy_noise_calc_phy.exit.i_crit_edge, %if.then32.i.wlc_phy_noise_calc_phy.exit.i_crit_edge
  %nphy_noise_index38.i.i = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 185
  %97 = ptrtoint ptr %nphy_noise_index38.i.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %nphy_noise_index38.i.i, align 2
  %99 = add i8 %98, 1
  %100 = and i8 %99, 15
  store i8 %100, ptr %nphy_noise_index38.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmplx_pwr_dbm.i.i) #15
  %101 = ptrtoint ptr %phy_corenum.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %.pr.i = load i8, ptr %phy_corenum.i, align 4
  br label %if.end36.i

if.end36.i:                                       ; preds = %wlc_phy_noise_calc_phy.exit.i, %for.end.i.if.end36.i_crit_edge
  %102 = phi i8 [ %.pr.i, %wlc_phy_noise_calc_phy.exit.i ], [ %75, %for.end.i.if.end36.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %cmp42100.not.i = icmp eq i8 %102, 0
  br i1 %cmp42100.not.i, label %if.end36.i.wlc_phy_noise_read_shmem.exit_crit_edge, label %for.body44.lr.ph.i

if.end36.i.wlc_phy_noise_read_shmem.exit_crit_edge: ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %wlc_phy_noise_read_shmem.exit

for.body44.lr.ph.i:                               ; preds = %if.end36.i
  %nphy_noise_index.i = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 185
  %103 = ptrtoint ptr %phy_corenum.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %phy_corenum.i, align 4
  %umax.i = tail call i8 @llvm.umax.i8(i8 %104, i8 1) #15
  %wide.trip.count.i98 = zext i8 %umax.i to i32
  br label %for.body44.i

for.body44.i:                                     ; preds = %for.body44.i.for.body44.i_crit_edge, %for.body44.lr.ph.i
  %indvars.iv106.i = phi i32 [ 0, %for.body44.lr.ph.i ], [ %indvars.iv.next107.i, %for.body44.i.for.body44.i_crit_edge ]
  %noise_dbm.0101.i = phi i8 [ -92, %for.body44.lr.ph.i ], [ %110, %for.body44.i.for.body44.i_crit_edge ]
  %arrayidx46.i = getelementptr [4 x i8], ptr %noise_dbm_ant.i, i32 0, i32 %indvars.iv106.i
  %105 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx46.i, align 1
  %conv47.i = sext i8 %106 to i16
  %107 = ptrtoint ptr %nphy_noise_index.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %nphy_noise_index.i, align 2
  %idxprom50.i = zext i8 %108 to i32
  %arrayidx51.i = getelementptr %struct.brcms_phy, ptr %pih, i32 0, i32 184, i32 %indvars.iv106.i, i32 %idxprom50.i
  %109 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 %conv47.i, ptr %arrayidx51.i, align 2
  %110 = tail call i8 @llvm.smax.i8(i8 %106, i8 %noise_dbm.0101.i) #15
  %indvars.iv.next107.i = add nuw nsw i32 %indvars.iv106.i, 1
  %exitcond.not.i99 = icmp eq i32 %indvars.iv.next107.i, %wide.trip.count.i98
  br i1 %exitcond.not.i99, label %for.body44.i.wlc_phy_noise_read_shmem.exit_crit_edge, label %for.body44.i.for.body44.i_crit_edge

for.body44.i.for.body44.i_crit_edge:              ; preds = %for.body44.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body44.i

for.body44.i.wlc_phy_noise_read_shmem.exit_crit_edge: ; preds = %for.body44.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %wlc_phy_noise_read_shmem.exit

wlc_phy_noise_read_shmem.exit:                    ; preds = %for.body44.i.wlc_phy_noise_read_shmem.exit_crit_edge, %if.end36.i.wlc_phy_noise_read_shmem.exit_crit_edge, %if.then60.wlc_phy_noise_read_shmem.exit_crit_edge
  %noise_dbm.0.lcssa.i = phi i8 [ -92, %if.end36.i.wlc_phy_noise_read_shmem.exit_crit_edge ], [ -92, %if.then60.wlc_phy_noise_read_shmem.exit_crit_edge ], [ %110, %for.body44.i.wlc_phy_noise_read_shmem.exit_crit_edge ]
  %nphy_noise_index65.i = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 185
  %111 = ptrtoint ptr %nphy_noise_index65.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %nphy_noise_index65.i, align 2
  %113 = add i8 %112, 1
  %114 = and i8 %113, 15
  store i8 %114, ptr %nphy_noise_index65.i, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %noise_dbm_ant.i) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cmplx_pwr.i) #15
  br label %if.end69

if.end69:                                         ; preds = %wlc_phy_noise_read_shmem.exit, %wlc_phy_compute_dB.exit, %if.then.if.end69_crit_edge, %entry.if.end69_crit_edge
  %noise_dbm.1 = phi i8 [ -92, %entry.if.end69_crit_edge ], [ %noise_dbm.0.lcssa.i, %wlc_phy_noise_read_shmem.exit ], [ %sub52, %wlc_phy_compute_dB.exit ], [ -92, %if.then.if.end69_crit_edge ]
  %channel.0.shrunk = phi i16 [ 0, %entry.if.end69_crit_edge ], [ %call63, %wlc_phy_noise_read_shmem.exit ], [ %call, %wlc_phy_compute_dB.exit ], [ %call, %if.then.if.end69_crit_edge ]
  %phynoise_state.i = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 22
  %115 = ptrtoint ptr %phynoise_state.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %phynoise_state.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %tobool.not.i = icmp eq i8 %116, 0
  br i1 %tobool.not.i, label %if.end69.wlc_phy_noise_cb.exit_crit_edge, label %if.end.i100

if.end69.wlc_phy_noise_cb.exit_crit_edge:         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #17
  br label %wlc_phy_noise_cb.exit

if.end.i100:                                      ; preds = %if.end69
  %117 = and i8 %116, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool2.not.i = icmp eq i8 %117, 0
  br i1 %tobool2.not.i, label %if.end.i100.if.end21.i_crit_edge, label %if.then3.i

if.end.i100.if.end21.i_crit_edge:                 ; preds = %if.end.i100
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end21.i

if.then3.i:                                       ; preds = %if.end.i100
  %phynoise_chan_watchdog.i = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 24
  %118 = ptrtoint ptr %phynoise_chan_watchdog.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %phynoise_chan_watchdog.i, align 4
  %120 = and i16 %channel.0.shrunk, 255
  %conv4.i101 = zext i16 %120 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %119, i32 %conv4.i101)
  %cmp.i102 = icmp eq i32 %119, %conv4.i101
  br i1 %cmp.i102, label %if.then6.i, label %if.then3.i.if.end16.i_crit_edge

if.then3.i.if.end16.i_crit_edge:                  ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16.i

if.then6.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #17
  %sh.i103 = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 1
  %121 = ptrtoint ptr %sh.i103 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %sh.i103, align 4
  %phy_noise_index.i = getelementptr inbounds %struct.shared_phy, ptr %122, i32 0, i32 23
  %123 = ptrtoint ptr %phy_noise_index.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %phy_noise_index.i, align 4
  %arrayidx.i104 = getelementptr %struct.shared_phy, ptr %122, i32 0, i32 22, i32 %124
  %125 = ptrtoint ptr %arrayidx.i104 to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %noise_dbm.1, ptr %arrayidx.i104, align 1
  %126 = load ptr, ptr %sh.i103, align 4
  %phy_noise_index9.i = getelementptr inbounds %struct.shared_phy, ptr %126, i32 0, i32 23
  %127 = ptrtoint ptr %phy_noise_index9.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %phy_noise_index9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %128)
  %cmp10.i = icmp eq i32 %128, 7
  %add.i105 = add i32 %128, 1
  %spec.select.i = select i1 %cmp10.i, i32 0, i32 %add.i105
  %129 = ptrtoint ptr %phy_noise_index9.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %spec.select.i, ptr %phy_noise_index9.i, align 4
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then6.i, %if.then3.i.if.end16.i_crit_edge
  %130 = ptrtoint ptr %phynoise_state.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %phynoise_state.i, align 1
  %132 = and i8 %131, -2
  store i8 %132, ptr %phynoise_state.i, align 1
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.end16.i, %if.end.i100.if.end21.i_crit_edge
  %133 = ptrtoint ptr %phynoise_state.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %phynoise_state.i, align 1
  %135 = and i8 %134, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %135)
  %tobool25.not.i = icmp eq i8 %135, 0
  br i1 %tobool25.not.i, label %if.end21.i.wlc_phy_noise_cb.exit_crit_edge, label %if.then26.i

if.end21.i.wlc_phy_noise_cb.exit_crit_edge:       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %wlc_phy_noise_cb.exit

if.then26.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #17
  %and29.i = and i8 %134, -3
  %136 = ptrtoint ptr %phynoise_state.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %and29.i, ptr %phynoise_state.i, align 1
  br label %wlc_phy_noise_cb.exit

wlc_phy_noise_cb.exit:                            ; preds = %if.then26.i, %if.end21.i.wlc_phy_noise_cb.exit_crit_edge, %if.end69.wlc_phy_noise_cb.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @wlapi_bmac_read_shm(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wlc_phy_compute_dB(ptr nocapture noundef readonly %cmplx_pwr, ptr nocapture noundef writeonly %p_cmplx_pwr_dB, i8 noundef zeroext %core) local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %core)
  %cmp19.not = icmp eq i8 %core, 0
  br i1 %cmp19.not, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i8 %core to i32
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.preheader
  %indvars.iv = phi i32 [ 0, %for.body.preheader ], [ %indvars.iv.next, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %cmplx_pwr, i32 %indvars.iv
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %2 = tail call i32 @llvm.ctlz.i32(i32 %1, i1 true) #15, !range !30
  %3 = trunc i32 %2 to i8
  %dec = xor i8 %3, 31
  %conv4 = zext i8 %dec to i32
  %sub = add nsw i32 %conv4, -1
  %shr = lshr i32 %1, %sub
  %and = and i32 %shr, 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %msb.0 = phi i8 [ %dec, %if.then ], [ 0, %for.body.if.end_crit_edge ]
  %secondmsb.0 = phi i32 [ %and, %if.then ], [ 0, %for.body.if.end_crit_edge ]
  %conv6 = zext i8 %msb.0 to i32
  %mul = mul nuw nsw i32 %conv6, 3
  %mul8 = shl nuw nsw i32 %secondmsb.0, 1
  %add = add nuw nsw i32 %mul, %mul8
  %conv9 = trunc i32 %add to i8
  %arrayidx11 = getelementptr i8, ptr %p_cmplx_pwr_dB, i32 %indvars.iv
  %4 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv9, ptr %arrayidx11, align 1
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wlc_phy_noise_sample_request_external(ptr noundef %pih) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %radio_chanspec.i = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 12
  %0 = ptrtoint ptr %radio_chanspec.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %radio_chanspec.i, align 4
  %conv1 = trunc i16 %1 to i8
  tail call fastcc void @wlc_phy_noise_sample_request(ptr noundef %pih, i8 noundef zeroext 2, i8 noundef zeroext %conv1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wlc_phy_noise_sample_request(ptr noundef %pih, i8 noundef zeroext %reason, i8 noundef zeroext %ch) unnamed_addr #0 align 64 {
entry:
  %cmplx_pwr_dbm.i = alloca [4 x i8], align 4
  %est = alloca [4 x %struct.phy_iq_est], align 4
  %cmplx_pwr = alloca [4 x i32], align 4
  %noise_dbm_ant = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %phynoise_state = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 22
  %0 = ptrtoint ptr %phynoise_state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %phynoise_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.not = icmp eq i8 %1, 0
  %2 = zext i8 %reason to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.22)
  switch i8 %reason, label %entry.sw.epilog_crit_edge [
    i8 1, label %sw.bb
    i8 2, label %entry.sw.epilog.sink.split_crit_edge
  ]

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.sink.split

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %conv3 = zext i8 %ch to i32
  %phynoise_chan_watchdog = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 24
  %3 = ptrtoint ptr %phynoise_chan_watchdog to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %conv3, ptr %phynoise_chan_watchdog, align 4
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb, %entry.sw.epilog.sink.split_crit_edge
  %4 = or i8 %1, %reason
  %5 = ptrtoint ptr %phynoise_state to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %phynoise_state, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  br i1 %cmp.not, label %if.end, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  %sh = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 1
  %6 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sh, align 4
  %now = getelementptr inbounds %struct.shared_phy, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %now to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %now, align 4
  %phynoise_now = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 23
  %10 = ptrtoint ptr %phynoise_now to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %phynoise_now, align 4
  %phy_fixed_noise = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 86
  %11 = ptrtoint ptr %phy_fixed_noise to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %phy_fixed_noise, align 1, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool12.not = icmp eq i8 %12, 0
  %pubpi29 = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 7
  %13 = ptrtoint ptr %pubpi29 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pubpi29, align 4
  br i1 %tobool12.not, label %if.end28, label %if.then13

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %14)
  %cmp14 = icmp eq i32 %14, 4
  br i1 %cmp14, label %if.then16, label %if.then13.if.then146_crit_edge

if.then13.if.then146_crit_edge:                   ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then146

if.then16:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #17
  %nphy_noise_win = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 184
  %nphy_noise_index = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 185
  %15 = ptrtoint ptr %nphy_noise_index to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %nphy_noise_index, align 2
  %idxprom = zext i8 %16 to i32
  %arrayidx17 = getelementptr [16 x i16], ptr %nphy_noise_win, i32 0, i32 %idxprom
  %17 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 -92, ptr %arrayidx17, align 2
  %18 = load i8, ptr %nphy_noise_index, align 2
  %idxprom21 = zext i8 %18 to i32
  %arrayidx22 = getelementptr %struct.brcms_phy, ptr %pih, i32 0, i32 184, i32 1, i32 %idxprom21
  %19 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 -92, ptr %arrayidx22, align 2
  %20 = load i8, ptr %nphy_noise_index, align 2
  %21 = add i8 %20, 1
  %22 = and i8 %21, 15
  store i8 %22, ptr %nphy_noise_index, align 2
  br label %if.then146

if.end28:                                         ; preds = %if.end
  %23 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %14, label %if.end28.cleanup_crit_edge [
    i32 8, label %if.then33
    i32 4, label %if.then60
  ]

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then33:                                        ; preds = %if.end28
  %phynoise_polling = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 25
  %24 = ptrtoint ptr %phynoise_polling to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %phynoise_polling, align 4, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool34.not = icmp eq i8 %25, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %reason)
  %cmp36 = icmp eq i8 %reason, 2
  %or.cond = or i1 %cmp36, %tobool34.not
  %physhim = getelementptr inbounds %struct.shared_phy, ptr %7, i32 0, i32 2
  %26 = ptrtoint ptr %physhim to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %physhim, align 4
  br i1 %or.cond, label %if.then38, label %if.else48

if.then38:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @wlapi_bmac_write_shm(ptr noundef %27, i32 noundef 136, i16 noundef zeroext 0) #15
  %28 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sh, align 4
  %physhim41 = getelementptr inbounds %struct.shared_phy, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %physhim41 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %physhim41, align 4
  tail call void @wlapi_bmac_write_shm(ptr noundef %31, i32 noundef 776, i16 noundef zeroext 0) #15
  %32 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sh, align 4
  %physhim43 = getelementptr inbounds %struct.shared_phy, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %physhim43 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %physhim43, align 4
  tail call void @wlapi_bmac_write_shm(ptr noundef %35, i32 noundef 778, i16 noundef zeroext 0) #15
  %36 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sh, align 4
  %physhim45 = getelementptr inbounds %struct.shared_phy, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %physhim45 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %physhim45, align 4
  tail call void @wlapi_bmac_write_shm(ptr noundef %39, i32 noundef 780, i16 noundef zeroext 0) #15
  %40 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sh, align 4
  %physhim47 = getelementptr inbounds %struct.shared_phy, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %physhim47 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %physhim47, align 4
  tail call void @wlapi_bmac_write_shm(ptr noundef %43, i32 noundef 782, i16 noundef zeroext 0) #15
  %d11core = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 5
  %44 = ptrtoint ptr %d11core to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %d11core, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 8
  %ops.i.i = getelementptr inbounds %struct.bcma_bus, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ops.i.i, align 4
  %read32.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %51(ptr noundef %45, i16 noundef zeroext 292) #15
  %or.i = or i32 %call.i.i, 16
  %52 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %45, align 8
  %ops.i1.i = getelementptr inbounds %struct.bcma_bus, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %ops.i1.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ops.i1.i, align 4
  %write32.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %55, i32 0, i32 5
  %56 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %write32.i.i, align 4
  tail call void %57(ptr noundef %45, i16 noundef zeroext 292, i32 noundef %or.i) #15
  br label %cleanup

if.else48:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @wlapi_suspend_mac_and_wait(ptr noundef %27) #15
  tail call void @wlc_lcnphy_deaf_mode(ptr noundef %pih, i1 noundef zeroext false) #15
  %call = tail call i32 @wlc_lcnphy_rx_signal_power(ptr noundef %pih, i32 noundef 20) #15
  %conv51 = trunc i32 %call to i8
  tail call void @wlc_lcnphy_deaf_mode(ptr noundef %pih, i1 noundef zeroext true) #15
  %58 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %sh, align 4
  %physhim53 = getelementptr inbounds %struct.shared_phy, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %physhim53 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %physhim53, align 4
  tail call void @wlapi_enable_mac(ptr noundef %61) #15
  br label %if.then146

if.then60:                                        ; preds = %if.end28
  %phynoise_polling61 = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 25
  %62 = ptrtoint ptr %phynoise_polling61 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %phynoise_polling61, align 4, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool62.not = icmp eq i8 %63, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %reason)
  %cmp65 = icmp eq i8 %reason, 2
  %or.cond213 = or i1 %cmp65, %tobool62.not
  br i1 %or.cond213, label %if.then67, label %if.else77

if.then67:                                        ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #17
  %physhim69 = getelementptr inbounds %struct.shared_phy, ptr %7, i32 0, i32 2
  %64 = ptrtoint ptr %physhim69 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %physhim69, align 4
  tail call void @wlapi_bmac_write_shm(ptr noundef %65, i32 noundef 776, i16 noundef zeroext 0) #15
  %66 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %sh, align 4
  %physhim71 = getelementptr inbounds %struct.shared_phy, ptr %67, i32 0, i32 2
  %68 = ptrtoint ptr %physhim71 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %physhim71, align 4
  tail call void @wlapi_bmac_write_shm(ptr noundef %69, i32 noundef 778, i16 noundef zeroext 0) #15
  %70 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %sh, align 4
  %physhim73 = getelementptr inbounds %struct.shared_phy, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %physhim73 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %physhim73, align 4
  tail call void @wlapi_bmac_write_shm(ptr noundef %73, i32 noundef 780, i16 noundef zeroext 0) #15
  %74 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %sh, align 4
  %physhim75 = getelementptr inbounds %struct.shared_phy, ptr %75, i32 0, i32 2
  %76 = ptrtoint ptr %physhim75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %physhim75, align 4
  tail call void @wlapi_bmac_write_shm(ptr noundef %77, i32 noundef 782, i16 noundef zeroext 0) #15
  %d11core76 = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 5
  %78 = ptrtoint ptr %d11core76 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %d11core76, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %79, align 8
  %ops.i.i214 = getelementptr inbounds %struct.bcma_bus, ptr %81, i32 0, i32 2
  %82 = ptrtoint ptr %ops.i.i214 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ops.i.i214, align 4
  %read32.i.i215 = getelementptr inbounds %struct.bcma_host_ops, ptr %83, i32 0, i32 2
  %84 = ptrtoint ptr %read32.i.i215 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %read32.i.i215, align 4
  %call.i.i216 = tail call i32 %85(ptr noundef %79, i16 noundef zeroext 292) #15
  %or.i217 = or i32 %call.i.i216, 16
  %86 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %79, align 8
  %ops.i1.i218 = getelementptr inbounds %struct.bcma_bus, ptr %87, i32 0, i32 2
  %88 = ptrtoint ptr %ops.i1.i218 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ops.i1.i218, align 4
  %write32.i.i219 = getelementptr inbounds %struct.bcma_host_ops, ptr %89, i32 0, i32 5
  %90 = ptrtoint ptr %write32.i.i219 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %write32.i.i219, align 4
  tail call void %91(ptr noundef %79, i16 noundef zeroext 292, i32 noundef %or.i217) #15
  br label %cleanup

if.else77:                                        ; preds = %if.then60
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %est) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cmplx_pwr) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %noise_dbm_ant) #15
  %92 = call ptr @memset(ptr %est, i32 0, i32 48)
  %93 = call ptr @memset(ptr %cmplx_pwr, i32 0, i32 16)
  %94 = ptrtoint ptr %noise_dbm_ant to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 0, ptr %noise_dbm_ant, align 4
  %physhim83 = getelementptr inbounds %struct.shared_phy, ptr %7, i32 0, i32 2
  %95 = ptrtoint ptr %physhim83 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %physhim83, align 4
  tail call void @wlapi_suspend_mac_and_wait(ptr noundef %96) #15
  %call84 = tail call zeroext i16 @wlc_phy_classifier_nphy(ptr noundef %pih, i16 noundef zeroext 0, i16 noundef zeroext 0) #15
  %call85 = tail call zeroext i16 @wlc_phy_classifier_nphy(ptr noundef %pih, i16 noundef zeroext 3, i16 noundef zeroext 0) #15
  call void @wlc_phy_rx_iq_est_nphy(ptr noundef %pih, ptr noundef nonnull %est, i16 noundef zeroext 1024, i8 noundef zeroext 32, i8 noundef zeroext 0) #15
  %call87 = call zeroext i16 @wlc_phy_classifier_nphy(ptr noundef %pih, i16 noundef zeroext 7, i16 noundef zeroext %call84) #15
  %97 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %sh, align 4
  %physhim89 = getelementptr inbounds %struct.shared_phy, ptr %98, i32 0, i32 2
  %99 = ptrtoint ptr %physhim89 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %physhim89, align 4
  call void @wlapi_enable_mac(ptr noundef %100) #15
  %phy_corenum = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 7, i32 2
  %101 = ptrtoint ptr %phy_corenum to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %phy_corenum, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %cmp93225.not = icmp eq i8 %102, 0
  br i1 %cmp93225.not, label %wlc_phy_noise_calc_phy.exit.thread, label %for.body.preheader

wlc_phy_noise_calc_phy.exit.thread:               ; preds = %if.else77
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmplx_pwr_dbm.i) #15
  %nphy_noise_index38.i235 = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 185
  %103 = ptrtoint ptr %nphy_noise_index38.i235 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %nphy_noise_index38.i235, align 2
  %105 = add i8 %104, 1
  %106 = and i8 %105, 15
  store i8 %106, ptr %nphy_noise_index38.i235, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmplx_pwr_dbm.i) #15
  br label %for.end135

for.body.preheader:                               ; preds = %if.else77
  %wide.trip.count = zext i8 %102 to i32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %indvars.iv = phi i32 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body.for.body_crit_edge ]
  %i_pwr = getelementptr [4 x %struct.phy_iq_est], ptr %est, i32 0, i32 %indvars.iv, i32 1
  %107 = ptrtoint ptr %i_pwr to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %i_pwr, align 4
  %q_pwr = getelementptr [4 x %struct.phy_iq_est], ptr %est, i32 0, i32 %indvars.iv, i32 2
  %109 = ptrtoint ptr %q_pwr to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %q_pwr, align 4
  %add99 = add i32 %110, %108
  %shr = lshr i32 %add99, 10
  %arrayidx102 = getelementptr [4 x i32], ptr %cmplx_pwr, i32 0, i32 %indvars.iv
  %111 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %shr, ptr %arrayidx102, align 4
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmplx_pwr_dbm.i) #15
  %112 = ptrtoint ptr %cmplx_pwr_dbm.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 0, ptr %cmplx_pwr_dbm.i, align 4
  br i1 %cmp93225.not, label %wlc_phy_noise_calc_phy.exitthread-pre-split, label %for.body.preheader.i.i

for.body.preheader.i.i:                           ; preds = %for.end
  %wide.trip.count.i.i = zext i8 %102 to i32
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %indvars.iv.i.i = phi i32 [ 0, %for.body.preheader.i.i ], [ %indvars.iv.next.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i32, ptr %cmplx_pwr, i32 %indvars.iv.i.i
  %113 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %tobool.not.i.i.i = icmp eq i32 %114, 0
  br i1 %tobool.not.i.i.i, label %for.body.i.i.if.end.i.i_crit_edge, label %if.then.i.i

for.body.i.i.if.end.i.i_crit_edge:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %115 = call i32 @llvm.ctlz.i32(i32 %114, i1 true) #15, !range !30
  %116 = trunc i32 %115 to i8
  %dec.i.i = xor i8 %116, 31
  %conv4.i.i = zext i8 %dec.i.i to i32
  %sub.i.i = add nsw i32 %conv4.i.i, -1
  %shr.i.i = lshr i32 %114, %sub.i.i
  %and.i.i = and i32 %shr.i.i, 1
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %for.body.i.i.if.end.i.i_crit_edge
  %msb.0.i.i = phi i8 [ %dec.i.i, %if.then.i.i ], [ 0, %for.body.i.i.if.end.i.i_crit_edge ]
  %secondmsb.0.i.i = phi i32 [ %and.i.i, %if.then.i.i ], [ 0, %for.body.i.i.if.end.i.i_crit_edge ]
  %conv6.i.i = zext i8 %msb.0.i.i to i32
  %mul.i.i = mul nuw nsw i32 %conv6.i.i, 3
  %mul8.i.i = shl nuw nsw i32 %secondmsb.0.i.i, 1
  %add.i.i = add nuw nsw i32 %mul.i.i, %mul8.i.i
  %conv9.i.i = trunc i32 %add.i.i to i8
  %arrayidx11.i.i = getelementptr i8, ptr %cmplx_pwr_dbm.i, i32 %indvars.iv.i.i
  %117 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %conv9.i.i, ptr %arrayidx11.i.i, align 1
  %indvars.iv.next.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %for.body.lr.ph.i, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

for.body.lr.ph.i:                                 ; preds = %if.end.i.i
  %phy_rev.i = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 7, i32 1
  %118 = ptrtoint ptr %phy_rev.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %phy_rev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %119)
  %cmp7.i = icmp ugt i32 %119, 2
  %..i = select i1 %cmp7.i, i8 -103, i8 -99
  br label %for.body.i

for.body23.lr.ph.i:                               ; preds = %for.body.i
  %nphy_noise_index.i = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 185
  br label %for.body23.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %indvars.iv.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [4 x i8], ptr %cmplx_pwr_dbm.i, i32 0, i32 %indvars.iv.i
  %120 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %arrayidx.i, align 1
  %add.i = add i8 %121, %..i
  store i8 %add.i, ptr %arrayidx.i, align 1
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i, label %for.body23.lr.ph.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.body23.i:                                     ; preds = %for.body23.i.for.body23.i_crit_edge, %for.body23.lr.ph.i
  %indvars.iv6.i = phi i32 [ 0, %for.body23.lr.ph.i ], [ %indvars.iv.next7.i, %for.body23.i.for.body23.i_crit_edge ]
  %arrayidx25.i = getelementptr [4 x i8], ptr %cmplx_pwr_dbm.i, i32 0, i32 %indvars.iv6.i
  %122 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %arrayidx25.i, align 1
  %conv26.i = sext i8 %123 to i16
  %124 = ptrtoint ptr %nphy_noise_index.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %nphy_noise_index.i, align 2
  %idxprom29.i = zext i8 %125 to i32
  %arrayidx30.i = getelementptr %struct.brcms_phy, ptr %pih, i32 0, i32 184, i32 %indvars.iv6.i, i32 %idxprom29.i
  %126 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 %conv26.i, ptr %arrayidx30.i, align 2
  %arrayidx34.i = getelementptr i8, ptr %noise_dbm_ant, i32 %indvars.iv6.i
  %127 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %123, ptr %arrayidx34.i, align 1
  %indvars.iv.next7.i = add nuw nsw i32 %indvars.iv6.i, 1
  %128 = ptrtoint ptr %phy_corenum to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %phy_corenum, align 4
  %130 = zext i8 %129 to i32
  %cmp21.i = icmp ult i32 %indvars.iv.next7.i, %130
  br i1 %cmp21.i, label %for.body23.i.for.body23.i_crit_edge, label %for.body23.i.wlc_phy_noise_calc_phy.exit_crit_edge

for.body23.i.wlc_phy_noise_calc_phy.exit_crit_edge: ; preds = %for.body23.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %wlc_phy_noise_calc_phy.exit

for.body23.i.for.body23.i_crit_edge:              ; preds = %for.body23.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body23.i

wlc_phy_noise_calc_phy.exitthread-pre-split:      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  %131 = ptrtoint ptr %phy_corenum to i32
  call void @__asan_load1_noabort(i32 %131)
  %.pr = load i8, ptr %phy_corenum, align 4
  br label %wlc_phy_noise_calc_phy.exit

wlc_phy_noise_calc_phy.exit:                      ; preds = %wlc_phy_noise_calc_phy.exitthread-pre-split, %for.body23.i.wlc_phy_noise_calc_phy.exit_crit_edge
  %132 = phi i8 [ %.pr, %wlc_phy_noise_calc_phy.exitthread-pre-split ], [ %129, %for.body23.i.wlc_phy_noise_calc_phy.exit_crit_edge ]
  %nphy_noise_index38.i = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 185
  %133 = ptrtoint ptr %nphy_noise_index38.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %nphy_noise_index38.i, align 2
  %135 = add i8 %134, 1
  %136 = and i8 %135, 15
  store i8 %136, ptr %nphy_noise_index38.i, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmplx_pwr_dbm.i) #15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %132)
  %cmp111227.not = icmp eq i8 %132, 0
  br i1 %cmp111227.not, label %wlc_phy_noise_calc_phy.exit.for.end135_crit_edge, label %for.body113.lr.ph

wlc_phy_noise_calc_phy.exit.for.end135_crit_edge: ; preds = %wlc_phy_noise_calc_phy.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end135

for.body113.lr.ph:                                ; preds = %wlc_phy_noise_calc_phy.exit
  %137 = ptrtoint ptr %phy_corenum to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %phy_corenum, align 4
  %umax = call i8 @llvm.umax.i8(i8 %138, i8 1)
  %wide.trip.count233 = zext i8 %umax to i32
  br label %for.body113

for.body113:                                      ; preds = %for.body113.for.body113_crit_edge, %for.body113.lr.ph
  %indvars.iv231 = phi i32 [ 0, %for.body113.lr.ph ], [ %indvars.iv.next232, %for.body113.for.body113_crit_edge ]
  %noise_dbm.1228 = phi i8 [ -92, %for.body113.lr.ph ], [ %144, %for.body113.for.body113_crit_edge ]
  %arrayidx115 = getelementptr [4 x i8], ptr %noise_dbm_ant, i32 0, i32 %indvars.iv231
  %139 = ptrtoint ptr %arrayidx115 to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %arrayidx115, align 1
  %conv116 = sext i8 %140 to i16
  %141 = ptrtoint ptr %nphy_noise_index38.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %nphy_noise_index38.i, align 2
  %idxprom121 = zext i8 %142 to i32
  %arrayidx122 = getelementptr %struct.brcms_phy, ptr %pih, i32 0, i32 184, i32 %indvars.iv231, i32 %idxprom121
  %143 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_store2_noabort(i32 %143)
  store i16 %conv116, ptr %arrayidx122, align 2
  %144 = call i8 @llvm.smax.i8(i8 %140, i8 %noise_dbm.1228)
  %indvars.iv.next232 = add nuw nsw i32 %indvars.iv231, 1
  %exitcond234.not = icmp eq i32 %indvars.iv.next232, %wide.trip.count233
  br i1 %exitcond234.not, label %for.body113.for.end135_crit_edge, label %for.body113.for.body113_crit_edge

for.body113.for.body113_crit_edge:                ; preds = %for.body113
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body113

for.body113.for.end135_crit_edge:                 ; preds = %for.body113
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end135

for.end135:                                       ; preds = %for.body113.for.end135_crit_edge, %wlc_phy_noise_calc_phy.exit.for.end135_crit_edge, %wlc_phy_noise_calc_phy.exit.thread
  %nphy_noise_index38.i237 = phi ptr [ %nphy_noise_index38.i, %wlc_phy_noise_calc_phy.exit.for.end135_crit_edge ], [ %nphy_noise_index38.i235, %wlc_phy_noise_calc_phy.exit.thread ], [ %nphy_noise_index38.i, %for.body113.for.end135_crit_edge ]
  %noise_dbm.1.lcssa = phi i8 [ -92, %wlc_phy_noise_calc_phy.exit.for.end135_crit_edge ], [ -92, %wlc_phy_noise_calc_phy.exit.thread ], [ %144, %for.body113.for.end135_crit_edge ]
  %145 = ptrtoint ptr %nphy_noise_index38.i237 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %nphy_noise_index38.i237, align 2
  %147 = add i8 %146, 1
  %148 = and i8 %147, 15
  store i8 %148, ptr %nphy_noise_index38.i237, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %noise_dbm_ant) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cmplx_pwr) #15
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %est) #15
  br label %if.then146

if.then146:                                       ; preds = %for.end135, %if.else48, %if.then16, %if.then13.if.then146_crit_edge
  %noise_dbm.3.ph = phi i8 [ -95, %if.then13.if.then146_crit_edge ], [ -92, %if.then16 ], [ %noise_dbm.1.lcssa, %for.end135 ], [ %conv51, %if.else48 ]
  %149 = ptrtoint ptr %phynoise_state to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %phynoise_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %150)
  %tobool.not.i = icmp eq i8 %150, 0
  br i1 %tobool.not.i, label %if.then146.cleanup_crit_edge, label %if.end.i

if.then146.cleanup_crit_edge:                     ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i:                                         ; preds = %if.then146
  %151 = and i8 %150, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %151)
  %tobool2.not.i = icmp eq i8 %151, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end21.i_crit_edge, label %if.then3.i

if.end.i.if.end21.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end21.i

if.then3.i:                                       ; preds = %if.end.i
  %phynoise_chan_watchdog.i = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 24
  %152 = ptrtoint ptr %phynoise_chan_watchdog.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %phynoise_chan_watchdog.i, align 4
  %conv4.i = zext i8 %ch to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %153, i32 %conv4.i)
  %cmp.i = icmp eq i32 %153, %conv4.i
  br i1 %cmp.i, label %if.then6.i, label %if.then3.i.if.end16.i_crit_edge

if.then3.i.if.end16.i_crit_edge:                  ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16.i

if.then6.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #17
  %154 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %sh, align 4
  %phy_noise_index.i = getelementptr inbounds %struct.shared_phy, ptr %155, i32 0, i32 23
  %156 = ptrtoint ptr %phy_noise_index.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %phy_noise_index.i, align 4
  %arrayidx.i220 = getelementptr %struct.shared_phy, ptr %155, i32 0, i32 22, i32 %157
  %158 = ptrtoint ptr %arrayidx.i220 to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 %noise_dbm.3.ph, ptr %arrayidx.i220, align 1
  %159 = load ptr, ptr %sh, align 4
  %phy_noise_index9.i = getelementptr inbounds %struct.shared_phy, ptr %159, i32 0, i32 23
  %160 = ptrtoint ptr %phy_noise_index9.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %phy_noise_index9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %161)
  %cmp10.i = icmp eq i32 %161, 7
  %add.i221 = add i32 %161, 1
  %spec.select.i = select i1 %cmp10.i, i32 0, i32 %add.i221
  %162 = ptrtoint ptr %phy_noise_index9.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %spec.select.i, ptr %phy_noise_index9.i, align 4
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then6.i, %if.then3.i.if.end16.i_crit_edge
  %163 = ptrtoint ptr %phynoise_state to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %phynoise_state, align 1
  %165 = and i8 %164, -2
  store i8 %165, ptr %phynoise_state, align 1
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.end16.i, %if.end.i.if.end21.i_crit_edge
  %166 = ptrtoint ptr %phynoise_state to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %phynoise_state, align 1
  %168 = and i8 %167, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %168)
  %tobool25.not.i = icmp eq i8 %168, 0
  br i1 %tobool25.not.i, label %if.end21.i.cleanup_crit_edge, label %if.then26.i

if.end21.i.cleanup_crit_edge:                     ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then26.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #17
  %and29.i = and i8 %167, -3
  %169 = ptrtoint ptr %phynoise_state to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 %and29.i, ptr %phynoise_state, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then26.i, %if.end21.i.cleanup_crit_edge, %if.then146.cleanup_crit_edge, %if.then67, %if.then38, %if.end28.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wlc_phy_rssi_compute(ptr noundef %pih, ptr noundef %rxh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %PhyRxStatus_1 = getelementptr inbounds %struct.d11rxhdr, ptr %rxh, i32 0, i32 3
  %0 = ptrtoint ptr %PhyRxStatus_1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %PhyRxStatus_1, align 1
  %2 = and i16 %1, 255
  %and = zext i16 %2 to i32
  %radioid1 = getelementptr inbounds %struct.brcms_phy_pub, ptr %pih, i32 0, i32 3
  %3 = ptrtoint ptr %radioid1 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %radioid1, align 2
  %sh = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 1
  %5 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sh, align 4
  %corerev = getelementptr inbounds %struct.shared_phy, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %corerev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %corerev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %8)
  %cmp = icmp ugt i32 %8, 10
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %RxStatus2 = getelementptr inbounds %struct.d11rxhdr, ptr %rxh, i32 0, i32 9
  %9 = ptrtoint ptr %RxStatus2 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %RxStatus2, align 1
  %11 = and i16 %10, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool.not = icmp eq i16 %11, 0
  br i1 %tobool.not, label %land.lhs.true.end_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true.end_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %pubpi = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 7
  %12 = ptrtoint ptr %pubpi to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pubpi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %13)
  %cmp6 = icmp eq i32 %13, 8
  br i1 %cmp6, label %if.then34, label %if.else

if.then34:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %PhyRxStatus_2 = getelementptr inbounds %struct.d11rxhdr, ptr %rxh, i32 0, i32 4
  %14 = ptrtoint ptr %PhyRxStatus_2 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %PhyRxStatus_2, align 1
  %16 = lshr i16 %15, 10
  %conv11 = zext i16 %16 to i32
  %u = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 3
  %17 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %u, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 127, i16 %2)
  %cmp12 = icmp ugt i16 %2, 127
  %sub = or i32 %and, -256
  %spec.select = select i1 %cmp12, i32 %sub, i32 %and
  %arrayidx = getelementptr [38 x i8], ptr @lcnphy_gain_index_offset_for_pkt_rssi, i32 0, i32 %conv11
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx, align 1
  %conv16 = sext i8 %20 to i32
  %add = add nsw i32 %spec.select, %conv16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -46, i32 %add)
  %cmp17 = icmp sgt i32 %add, -46
  call void @__sanitizer_cov_trace_const_cmp2(i16 19455, i16 %15)
  %cmp21 = icmp ugt i16 %15, 19455
  %or.cond = select i1 %cmp17, i1 %cmp21, i1 false
  %add24 = add nsw i32 %add, 7
  %rssi.1 = select i1 %or.cond, i32 %add24, i32 %add
  %lcnphy_pkteng_rssi_slope = getelementptr inbounds %struct.brcms_phy_lcnphy, ptr %18, i32 0, i32 55
  %21 = ptrtoint ptr %lcnphy_pkteng_rssi_slope to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %lcnphy_pkteng_rssi_slope, align 1
  %conv26 = sext i8 %22 to i32
  %add27 = add nsw i32 %rssi.1, %conv26
  call void @__sanitizer_cov_trace_const_cmp4(i32 125, i32 %add27)
  %cmp35 = icmp sgt i32 %add27, 125
  %spec.select70.v = select i1 %cmp35, i32 -254, i32 2
  %spec.select70 = add nsw i32 %spec.select70.v, %add27
  br label %end

if.else:                                          ; preds = %if.end
  %.off = add i16 %4, -8277
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %.off)
  %switch = icmp ult i16 %.off, 3
  br i1 %switch, label %if.then47, label %if.else.end_crit_edge

if.else.end_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %end

if.then47:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call i32 @wlc_phy_rssi_compute_nphy(ptr noundef %pih, ptr noundef %rxh) #15
  br label %end

end:                                              ; preds = %if.then47, %if.else.end_crit_edge, %if.then34, %land.lhs.true.end_crit_edge
  %rssi.3 = phi i32 [ %call, %if.then47 ], [ 0, %land.lhs.true.end_crit_edge ], [ %spec.select70, %if.then34 ], [ %and, %if.else.end_crit_edge ]
  ret i32 %rssi.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wlc_phy_rssi_compute_nphy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @wlc_phy_freqtrack_start(ptr nocapture noundef %pih) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @wlc_phy_freqtrack_end(ptr nocapture noundef %pih) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wlc_phy_set_deaf(ptr noundef %ppi, i1 noundef zeroext %user_flag) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %pubpi = getelementptr inbounds %struct.brcms_phy, ptr %ppi, i32 0, i32 7
  %0 = ptrtoint ptr %pubpi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pubpi, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %1, label %entry.if.end5_crit_edge [
    i32 8, label %if.then
    i32 4, label %if.then4
  ]

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @wlc_lcnphy_deaf_mode(ptr noundef %ppi, i1 noundef zeroext true) #15
  br label %if.end5

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @wlc_nphy_deaf_mode(ptr noundef %ppi, i1 noundef zeroext true) #15
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.then, %entry.if.end5_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wlc_lcnphy_deaf_mode(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wlc_nphy_deaf_mode(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wlc_phy_watchdog(ptr noundef %pih) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %sh = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 1
  %0 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sh, align 4
  %now = getelementptr inbounds %struct.shared_phy, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %now to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %now, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %now, align 4
  %watchdog_override = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 21
  %4 = ptrtoint ptr %watchdog_override to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %watchdog_override, align 4, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %measure_hold = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 27
  %6 = ptrtoint ptr %measure_hold to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %measure_hold, align 4
  %8 = and i32 %7, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %if.then4, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %radio_chanspec = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 12
  %10 = ptrtoint ptr %radio_chanspec to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %radio_chanspec, align 4
  %conv6 = trunc i16 %11 to i8
  tail call fastcc void @wlc_phy_noise_sample_request(ptr noundef %pih, i8 noundef zeroext 1, i8 noundef zeroext %conv6)
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  %phynoise_state = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 22
  %12 = ptrtoint ptr %phynoise_state to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %phynoise_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool9.not = icmp eq i8 %13, 0
  br i1 %tobool9.not, label %if.end7.if.end16_crit_edge, label %land.lhs.true

if.end7.if.end16_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16

land.lhs.true:                                    ; preds = %if.end7
  %14 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sh, align 4
  %now11 = getelementptr inbounds %struct.shared_phy, ptr %15, i32 0, i32 7
  %16 = ptrtoint ptr %now11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %now11, align 4
  %phynoise_now = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 23
  %18 = ptrtoint ptr %phynoise_now to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %phynoise_now, align 4
  %sub = sub i32 %17, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %sub)
  %cmp12 = icmp ugt i32 %sub, 5
  br i1 %cmp12, label %if.then14, label %land.lhs.true.if.end16_crit_edge

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16

if.then14:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %20 = ptrtoint ptr %phynoise_state to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %phynoise_state, align 1
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %land.lhs.true.if.end16_crit_edge, %if.end7.if.end16_crit_edge
  %21 = ptrtoint ptr %measure_hold to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %measure_hold, align 4
  %23 = and i32 %22, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %if.end54, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end54:                                         ; preds = %if.end16
  %pubpi = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 7
  %25 = ptrtoint ptr %pubpi to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pubpi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %26)
  %cmp55 = icmp eq i32 %26, 4
  br i1 %cmp55, label %land.lhs.true57, label %if.end54.if.end79_crit_edge

if.end54.if.end79_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end79

land.lhs.true57:                                  ; preds = %if.end54
  %disable_percal = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 26
  %27 = ptrtoint ptr %disable_percal to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %disable_percal, align 1, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool58.not = icmp eq i8 %28, 0
  br i1 %tobool58.not, label %if.then61, label %land.lhs.true57.if.end79thread-pre-split_crit_edge

land.lhs.true57.if.end79thread-pre-split_crit_edge: ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end79thread-pre-split

if.then61:                                        ; preds = %land.lhs.true57
  %nphy_perical = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 192
  %29 = ptrtoint ptr %nphy_perical to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %nphy_perical, align 4
  %31 = zext i8 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.25)
  switch i8 %30, label %land.lhs.true70 [
    i8 0, label %if.then61.if.end78_crit_edge
    i8 3, label %if.then61.if.end78_crit_edge181
  ]

if.then61.if.end78_crit_edge181:                  ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end78

if.then61.if.end78_crit_edge:                     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end78

land.lhs.true70:                                  ; preds = %if.then61
  %32 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sh, align 4
  %now72 = getelementptr inbounds %struct.shared_phy, ptr %33, i32 0, i32 7
  %34 = ptrtoint ptr %now72 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %now72, align 4
  %nphy_perical_last = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 193
  %36 = ptrtoint ptr %nphy_perical_last to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %nphy_perical_last, align 4
  %sub73 = sub i32 %35, %37
  %glacial_timer = getelementptr inbounds %struct.shared_phy, ptr %33, i32 0, i32 20
  %38 = ptrtoint ptr %glacial_timer to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %glacial_timer, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub73, i32 %39)
  %cmp75.not = icmp ult i32 %sub73, %39
  br i1 %cmp75.not, label %land.lhs.true70.if.end78_crit_edge, label %if.then77

land.lhs.true70.if.end78_crit_edge:               ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end78

if.then77:                                        ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @wlc_phy_cal_perical(ptr noundef %pih, i8 noundef zeroext 2)
  br label %if.end78

if.end78:                                         ; preds = %if.then77, %land.lhs.true70.if.end78_crit_edge, %if.then61.if.end78_crit_edge, %if.then61.if.end78_crit_edge181
  tail call void @wlc_phy_txpwr_papd_cal_nphy(ptr noundef %pih) #15
  br label %if.end79thread-pre-split

if.end79thread-pre-split:                         ; preds = %if.end78, %land.lhs.true57.if.end79thread-pre-split_crit_edge
  %40 = ptrtoint ptr %pubpi to i32
  call void @__asan_load4_noabort(i32 %40)
  %.pr = load i32, ptr %pubpi, align 4
  br label %if.end79

if.end79:                                         ; preds = %if.end79thread-pre-split, %if.end54.if.end79_crit_edge
  %41 = phi i32 [ %.pr, %if.end79thread-pre-split ], [ %26, %if.end54.if.end79_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %41)
  %cmp82 = icmp eq i32 %41, 8
  br i1 %cmp82, label %if.then84, label %if.end79.cleanup_crit_edge

if.end79.cleanup_crit_edge:                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then84:                                        ; preds = %if.end79
  %phy_forcecal = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 85
  %42 = ptrtoint ptr %phy_forcecal to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %phy_forcecal, align 4, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool85.not = icmp eq i8 %43, 0
  br i1 %tobool85.not, label %lor.lhs.false87, label %if.then84.if.then95_crit_edge

if.then84.if.then95_crit_edge:                    ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then95

lor.lhs.false87:                                  ; preds = %if.then84
  %44 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %sh, align 4
  %now89 = getelementptr inbounds %struct.shared_phy, ptr %45, i32 0, i32 7
  %46 = ptrtoint ptr %now89 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %now89, align 4
  %phy_lastcal = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 84
  %48 = ptrtoint ptr %phy_lastcal to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %phy_lastcal, align 4
  %sub90 = sub i32 %47, %49
  %glacial_timer92 = getelementptr inbounds %struct.shared_phy, ptr %45, i32 0, i32 20
  %50 = ptrtoint ptr %glacial_timer92 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %glacial_timer92, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub90, i32 %51)
  %cmp93.not = icmp ult i32 %sub90, %51
  br i1 %cmp93.not, label %lor.lhs.false87.cleanup_crit_edge, label %lor.lhs.false87.if.then95_crit_edge

lor.lhs.false87.if.then95_crit_edge:              ; preds = %lor.lhs.false87
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then95

lor.lhs.false87.cleanup_crit_edge:                ; preds = %lor.lhs.false87
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then95:                                        ; preds = %lor.lhs.false87.if.then95_crit_edge, %if.then84.if.then95_crit_edge
  %52 = ptrtoint ptr %measure_hold to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %measure_hold, align 4
  %54 = and i32 %53, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %if.then105, label %if.then95.if.end106_crit_edge

if.then95.if.end106_crit_edge:                    ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end106

if.then105:                                       ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @wlc_lcnphy_calib_modes(ptr noundef %pih, i32 noundef 9) #15
  br label %if.end106

if.end106:                                        ; preds = %if.then105, %if.then95.if.end106_crit_edge
  %56 = ptrtoint ptr %measure_hold to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %measure_hold, align 4
  %58 = and i32 %57, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %lor.lhs.false121, label %if.end106.cleanup_crit_edge

if.end106.cleanup_crit_edge:                      ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false121:                                 ; preds = %if.end106
  %carrier_suppr_disable = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 89
  %60 = ptrtoint ptr %carrier_suppr_disable to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %carrier_suppr_disable, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool123.not = icmp eq i8 %61, 0
  br i1 %tobool123.not, label %lor.lhs.false124, label %lor.lhs.false121.cleanup_crit_edge

lor.lhs.false121.cleanup_crit_edge:               ; preds = %lor.lhs.false121
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false124:                                 ; preds = %lor.lhs.false121
  %disable_percal125 = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 26
  %62 = ptrtoint ptr %disable_percal125 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %disable_percal125, align 1, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool126.not = icmp eq i8 %63, 0
  br i1 %tobool126.not, label %if.then128, label %lor.lhs.false124.cleanup_crit_edge

lor.lhs.false124.cleanup_crit_edge:               ; preds = %lor.lhs.false124
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then128:                                       ; preds = %lor.lhs.false124
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @wlc_lcnphy_calib_modes(ptr noundef %pih, i32 noundef 2) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then128, %lor.lhs.false124.cleanup_crit_edge, %lor.lhs.false121.cleanup_crit_edge, %if.end106.cleanup_crit_edge, %lor.lhs.false87.cleanup_crit_edge, %if.end79.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wlc_phy_cal_perical(ptr noundef %pih, i8 noundef zeroext %reason) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %pubpi = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 7
  %0 = ptrtoint ptr %pubpi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pubpi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp = icmp eq i32 %1, 4
  br i1 %cmp, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %nphy_perical = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 192
  %2 = ptrtoint ptr %nphy_perical to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nphy_perical, align 4
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.26)
  switch i8 %3, label %if.end8 [
    i8 0, label %if.end.cleanup_crit_edge
    i8 3, label %if.end.cleanup_crit_edge130
  ]

if.end.cleanup_crit_edge130:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %5 = zext i8 %reason to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.27)
  switch i8 %reason, label %if.end8.cleanup_crit_edge [
    i8 2, label %sw.bb34
    i8 3, label %sw.bb
    i8 4, label %if.end8.sw.bb21_crit_edge
    i8 5, label %if.end8.sw.bb21_crit_edge131
    i8 6, label %if.end8.sw.bb21_crit_edge132
  ]

if.end8.sw.bb21_crit_edge132:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb21

if.end8.sw.bb21_crit_edge131:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb21

if.end8.sw.bb21_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb21

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb:                                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp12 = icmp eq i8 %3, 2
  br i1 %cmp12, label %if.then14, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then14:                                        ; preds = %sw.bb
  %mphase_cal_phase_id = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 195
  %6 = ptrtoint ptr %mphase_cal_phase_id to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mphase_cal_phase_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp16.not = icmp eq i8 %7, 0
  br i1 %cmp16.not, label %if.then14.if.end19_crit_edge, label %if.then18

if.then14.if.end19_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19

if.then18:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #17
  %phycal_timer.i = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 204
  %8 = ptrtoint ptr %phycal_timer.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phycal_timer.i, align 4
  %call.i = tail call zeroext i1 @wlapi_del_timer(ptr noundef %9) #15
  %cal_type_override.i = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 194
  %10 = ptrtoint ptr %cal_type_override.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %cal_type_override.i, align 4
  %11 = ptrtoint ptr %mphase_cal_phase_id to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %mphase_cal_phase_id, align 1
  %mphase_txcal_cmdidx.i = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 196
  %12 = ptrtoint ptr %mphase_txcal_cmdidx.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %mphase_txcal_cmdidx.i, align 2
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.then14.if.end19_crit_edge
  tail call fastcc void @wlc_phy_cal_perical_mphase_schedule(ptr noundef %pih)
  br label %cleanup

sw.bb21:                                          ; preds = %if.end8.sw.bb21_crit_edge, %if.end8.sw.bb21_crit_edge131, %if.end8.sw.bb21_crit_edge132
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp24 = icmp eq i8 %3, 2
  br i1 %cmp24, label %land.lhs.true, label %sw.bb21.if.end31_crit_edge

sw.bb21.if.end31_crit_edge:                       ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end31

land.lhs.true:                                    ; preds = %sw.bb21
  %mphase_cal_phase_id26 = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 195
  %13 = ptrtoint ptr %mphase_cal_phase_id26 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %mphase_cal_phase_id26, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp28.not = icmp eq i8 %14, 0
  br i1 %cmp28.not, label %land.lhs.true.if.end31_crit_edge, label %if.then30

land.lhs.true.if.end31_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end31

if.then30:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %phycal_timer.i125 = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 204
  %15 = ptrtoint ptr %phycal_timer.i125 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %phycal_timer.i125, align 4
  %call.i126 = tail call zeroext i1 @wlapi_del_timer(ptr noundef %16) #15
  %17 = ptrtoint ptr %mphase_cal_phase_id26 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %mphase_cal_phase_id26, align 1
  %mphase_txcal_cmdidx.i129 = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 196
  %18 = ptrtoint ptr %mphase_txcal_cmdidx.i129 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %mphase_txcal_cmdidx.i129, align 2
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %land.lhs.true.if.end31_crit_edge, %sw.bb21.if.end31_crit_edge
  %first_cal_after_assoc = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 229
  %19 = ptrtoint ptr %first_cal_after_assoc to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %first_cal_after_assoc, align 2
  %cal_type_override = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 194
  %20 = ptrtoint ptr %cal_type_override to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %cal_type_override, align 4
  %phycal_tempdelta = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 273
  %21 = ptrtoint ptr %phycal_tempdelta to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %phycal_tempdelta, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not = icmp eq i8 %22, 0
  br i1 %tobool.not, label %if.end31.if.end33_crit_edge, label %if.then32

if.end31.if.end33_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end33

if.then32:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call signext i16 @wlc_phy_tempsense_nphy(ptr noundef %pih) #15
  %nphy_lastcal_temp = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 207
  %23 = ptrtoint ptr %nphy_lastcal_temp to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %call, ptr %nphy_lastcal_temp, align 2
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.end31.if.end33_crit_edge
  tail call void @wlc_phy_cal_perical_nphy_run(ptr noundef %pih, i8 noundef zeroext 1) #15
  br label %cleanup

sw.bb34:                                          ; preds = %if.end8
  %phycal_tempdelta35 = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 273
  %24 = ptrtoint ptr %phycal_tempdelta35 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %phycal_tempdelta35, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool36.not = icmp eq i8 %25, 0
  br i1 %tobool36.not, label %sw.bb34.if.then68_crit_edge, label %if.then37

sw.bb34.if.then68_crit_edge:                      ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then68

if.then37:                                        ; preds = %sw.bb34
  %call38 = tail call signext i16 @wlc_phy_tempsense_nphy(ptr noundef %pih) #15
  %nphy_lastcal_temp40 = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 207
  %26 = ptrtoint ptr %nphy_lastcal_temp40 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %nphy_lastcal_temp40, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %call38, i16 %27)
  %cmp42 = icmp sgt i16 %call38, %27
  %sub = sub i16 %call38, %27
  %sub50 = sub i16 %27, %call38
  %cond = select i1 %cmp42, i16 %sub, i16 %sub50
  %conv52 = sext i16 %cond to i32
  %28 = ptrtoint ptr %phycal_tempdelta35 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %phycal_tempdelta35, align 1
  %30 = zext i8 %29 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv52, i32 %30)
  %cmp56 = icmp slt i32 %conv52, %30
  br i1 %cmp56, label %land.lhs.true58, label %if.then37.if.else_crit_edge

if.then37.if.else_crit_edge:                      ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

land.lhs.true58:                                  ; preds = %if.then37
  %nphy_txiqlocal_chanspec = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 199
  %31 = ptrtoint ptr %nphy_txiqlocal_chanspec to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %nphy_txiqlocal_chanspec, align 2
  %radio_chanspec = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 12
  %33 = ptrtoint ptr %radio_chanspec to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %radio_chanspec, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %32, i16 %34)
  %cmp61 = icmp eq i16 %32, %34
  br i1 %cmp61, label %land.lhs.true58.cleanup_crit_edge, label %land.lhs.true58.if.else_crit_edge

land.lhs.true58.if.else_crit_edge:                ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

land.lhs.true58.cleanup_crit_edge:                ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true58.if.else_crit_edge, %if.then37.if.else_crit_edge
  %35 = ptrtoint ptr %nphy_lastcal_temp40 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %call38, ptr %nphy_lastcal_temp40, align 2
  br label %if.then68

if.then68:                                        ; preds = %if.else, %sw.bb34.if.then68_crit_edge
  %36 = ptrtoint ptr %nphy_perical to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %nphy_perical, align 4
  %38 = zext i8 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.28)
  switch i8 %37, label %if.then68.cleanup_crit_edge [
    i8 2, label %if.then73
    i8 1, label %if.then85
  ]

if.then68.cleanup_crit_edge:                      ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then73:                                        ; preds = %if.then68
  %mphase_cal_phase_id74 = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 195
  %39 = ptrtoint ptr %mphase_cal_phase_id74 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %mphase_cal_phase_id74, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %cmp76.not = icmp eq i8 %40, 0
  br i1 %cmp76.not, label %if.then78, label %if.then73.cleanup_crit_edge

if.then73.cleanup_crit_edge:                      ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then78:                                        ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @wlc_phy_cal_perical_mphase_schedule(ptr noundef %pih)
  br label %cleanup

if.then85:                                        ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @wlc_phy_cal_perical_nphy_run(ptr noundef %pih, i8 noundef zeroext 0) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then85, %if.then78, %if.then73.cleanup_crit_edge, %if.then68.cleanup_crit_edge, %land.lhs.true58.cleanup_crit_edge, %if.end33, %if.end19, %sw.bb.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end.cleanup_crit_edge130, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wlc_phy_txpwr_papd_cal_nphy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wlc_lcnphy_calib_modes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wlc_phy_BSSinit(ptr nocapture noundef %pih, i1 noundef zeroext %bonlyap, i32 noundef %rssi) local_unnamed_addr #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %rssi to i8
  %sh = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 1
  %0 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sh, align 4
  %arrayidx = getelementptr %struct.shared_phy, ptr %1, i32 0, i32 22, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %arrayidx, align 1
  %3 = load ptr, ptr %sh, align 4
  %arrayidx.1 = getelementptr %struct.shared_phy, ptr %3, i32 0, i32 22, i32 1
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %arrayidx.1, align 1
  %5 = load ptr, ptr %sh, align 4
  %arrayidx.2 = getelementptr %struct.shared_phy, ptr %5, i32 0, i32 22, i32 2
  %6 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %arrayidx.2, align 1
  %7 = load ptr, ptr %sh, align 4
  %arrayidx.3 = getelementptr %struct.shared_phy, ptr %7, i32 0, i32 22, i32 3
  %8 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %arrayidx.3, align 1
  %9 = load ptr, ptr %sh, align 4
  %arrayidx.4 = getelementptr %struct.shared_phy, ptr %9, i32 0, i32 22, i32 4
  %10 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %arrayidx.4, align 1
  %11 = load ptr, ptr %sh, align 4
  %arrayidx.5 = getelementptr %struct.shared_phy, ptr %11, i32 0, i32 22, i32 5
  %12 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv, ptr %arrayidx.5, align 1
  %13 = load ptr, ptr %sh, align 4
  %arrayidx.6 = getelementptr %struct.shared_phy, ptr %13, i32 0, i32 22, i32 6
  %14 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv, ptr %arrayidx.6, align 1
  %15 = load ptr, ptr %sh, align 4
  %arrayidx.7 = getelementptr %struct.shared_phy, ptr %15, i32 0, i32 22, i32 7
  %16 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv, ptr %arrayidx.7, align 1
  %pubpi = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 7
  %17 = ptrtoint ptr %pubpi to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pubpi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %18)
  %cmp1 = icmp eq i32 %18, 8
  br i1 %cmp1, label %for.cond3.preheader, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

for.cond3.preheader:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %19 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sh, align 4
  %arrayidx9 = getelementptr %struct.shared_phy, ptr %20, i32 0, i32 22, i32 0
  %21 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -92, ptr %arrayidx9, align 1
  %22 = load ptr, ptr %sh, align 4
  %arrayidx9.1 = getelementptr %struct.shared_phy, ptr %22, i32 0, i32 22, i32 1
  %23 = ptrtoint ptr %arrayidx9.1 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -92, ptr %arrayidx9.1, align 1
  %24 = load ptr, ptr %sh, align 4
  %arrayidx9.2 = getelementptr %struct.shared_phy, ptr %24, i32 0, i32 22, i32 2
  %25 = ptrtoint ptr %arrayidx9.2 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 -92, ptr %arrayidx9.2, align 1
  %26 = load ptr, ptr %sh, align 4
  %arrayidx9.3 = getelementptr %struct.shared_phy, ptr %26, i32 0, i32 22, i32 3
  %27 = ptrtoint ptr %arrayidx9.3 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -92, ptr %arrayidx9.3, align 1
  %28 = load ptr, ptr %sh, align 4
  %arrayidx9.4 = getelementptr %struct.shared_phy, ptr %28, i32 0, i32 22, i32 4
  %29 = ptrtoint ptr %arrayidx9.4 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -92, ptr %arrayidx9.4, align 1
  %30 = load ptr, ptr %sh, align 4
  %arrayidx9.5 = getelementptr %struct.shared_phy, ptr %30, i32 0, i32 22, i32 5
  %31 = ptrtoint ptr %arrayidx9.5 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 -92, ptr %arrayidx9.5, align 1
  %32 = load ptr, ptr %sh, align 4
  %arrayidx9.6 = getelementptr %struct.shared_phy, ptr %32, i32 0, i32 22, i32 6
  %33 = ptrtoint ptr %arrayidx9.6 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 -92, ptr %arrayidx9.6, align 1
  %34 = load ptr, ptr %sh, align 4
  %arrayidx9.7 = getelementptr %struct.shared_phy, ptr %34, i32 0, i32 22, i32 7
  %35 = ptrtoint ptr %arrayidx9.7 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 -92, ptr %arrayidx9.7, align 1
  br label %if.end

if.end:                                           ; preds = %for.cond3.preheader, %entry.if.end_crit_edge
  %36 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sh, align 4
  %phy_noise_index = getelementptr inbounds %struct.shared_phy, ptr %37, i32 0, i32 23
  %38 = ptrtoint ptr %phy_noise_index to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %phy_noise_index, align 4
  %arrayidx23 = getelementptr %struct.brcms_phy, ptr %pih, i32 0, i32 184, i32 0, i32 0
  %39 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 -92, ptr %arrayidx23, align 2
  %arrayidx23.1 = getelementptr %struct.brcms_phy, ptr %pih, i32 0, i32 184, i32 1, i32 0
  %40 = ptrtoint ptr %arrayidx23.1 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 -92, ptr %arrayidx23.1, align 2
  %arrayidx23.149 = getelementptr %struct.brcms_phy, ptr %pih, i32 0, i32 184, i32 0, i32 1
  %41 = ptrtoint ptr %arrayidx23.149 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 -92, ptr %arrayidx23.149, align 2
  %arrayidx23.1.1 = getelementptr %struct.brcms_phy, ptr %pih, i32 0, i32 184, i32 1, i32 1
  %42 = ptrtoint ptr %arrayidx23.1.1 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 -92, ptr %arrayidx23.1.1, align 2
  %arrayidx23.2 = getelementptr %struct.brcms_phy, ptr %pih, i32 0, i32 184, i32 0, i32 2
  %43 = ptrtoint ptr %arrayidx23.2 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 -92, ptr %arrayidx23.2, align 2
  %arrayidx23.1.2 = getelementptr %struct.brcms_phy, ptr %pih, i32 0, i32 184, i32 1, i32 2
  %44 = ptrtoint ptr %arrayidx23.1.2 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 -92, ptr %arrayidx23.1.2, align 2
  %arrayidx23.3 = getelementptr %struct.brcms_phy, ptr %pih, i32 0, i32 184, i32 0, i32 3
  %45 = ptrtoint ptr %arrayidx23.3 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 -92, ptr %arrayidx23.3, align 2
  %arrayidx23.1.3 = getelementptr %struct.brcms_phy, ptr %pih, i32 0, i32 184, i32 1, i32 3
  %46 = ptrtoint ptr %arrayidx23.1.3 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 -92, ptr %arrayidx23.1.3, align 2
  %arrayidx23.4 = getelementptr %struct.brcms_phy, ptr %pih, i32 0, i32 184, i32 0, i32 4
  %47 = ptrtoint ptr %arrayidx23.4 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 -92, ptr %arrayidx23.4, align 2
  %arrayidx23.1.4 = getelementptr %struct.brcms_phy, ptr %pih, i32 0, i32 184, i32 1, i32 4
  %48 = ptrtoint ptr %arrayidx23.1.4 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 -92, ptr %arrayidx23.1.4, align 2
  %arrayidx23.5 = getelementptr %struct.brcms_phy, ptr %pih, i32 0, i32 184, i32 0, i32 5
  %49 = ptrtoint ptr %arrayidx23.5 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 -92, ptr %arrayidx23.5, align 2
  %arrayidx23.1.5 = getelementptr %struct.brcms_phy, ptr %pih, i32 0, i32 184, i32 1, i32 5
  %50 = ptrtoint ptr %arrayidx23.1.5 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 -92, ptr %arrayidx23.1.5, align 2
  %arrayidx23.6 = getelementptr %struct.brcms_phy, ptr %pih, i32 0, i32 184, i32 0, i32 6
  %51 = ptrtoint ptr %arrayidx23.6 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 -92, ptr %arrayidx23.6, align 2
  %arrayidx23.1.6 = getelementptr %struct.brcms_phy, ptr %pih, i32 0, i32 184, i32 1, i32 6
  %52 = ptrtoint ptr %arrayidx23.1.6 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 -92, ptr %arrayidx23.1.6, align 2
  %arrayidx23.7 = getelementptr %struct.brcms_phy, ptr %pih, i32 0, i32 184, i32 0, i32 7
  %53 = ptrtoint ptr %arrayidx23.7 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 -92, ptr %arrayidx23.7, align 2
  %arrayidx23.1.7 = getelementptr %struct.brcms_phy, ptr %pih, i32 0, i32 184, i32 1, i32 7
  %54 = ptrtoint ptr %arrayidx23.1.7 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 -92, ptr %arrayidx23.1.7, align 2
  %arrayidx23.8 = getelementptr %struct.brcms_phy, ptr %pih, i32 0, i32 184, i32 0, i32 8
  %55 = ptrtoint ptr %arrayidx23.8 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 -92, ptr %arrayidx23.8, align 2
  %arrayidx23.1.8 = getelementptr %struct.brcms_phy, ptr %pih, i32 0, i32 184, i32 1, i32 8
  %56 = ptrtoint ptr %arrayidx23.1.8 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 -92, ptr %arrayidx23.1.8, align 2
  %arrayidx23.9 = getelementptr %struct.brcms_phy, ptr %pih, i32 0, i32 184, i32 0, i32 9
  %57 = ptrtoint ptr %arrayidx23.9 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 -92, ptr %arrayidx23.9, align 2
  %arrayidx23.1.9 = getelementptr %struct.brcms_phy, ptr %pih, i32 0, i32 184, i32 1, i32 9
  %58 = ptrtoint ptr %arrayidx23.1.9 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 -92, ptr %arrayidx23.1.9, align 2
  %arrayidx23.10 = getelementptr %struct.brcms_phy, ptr %pih, i32 0, i32 184, i32 0, i32 10
  %59 = ptrtoint ptr %arrayidx23.10 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 -92, ptr %arrayidx23.10, align 2
  %arrayidx23.1.10 = getelementptr %struct.brcms_phy, ptr %pih, i32 0, i32 184, i32 1, i32 10
  %60 = ptrtoint ptr %arrayidx23.1.10 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 -92, ptr %arrayidx23.1.10, align 2
  %arrayidx23.11 = getelementptr %struct.brcms_phy, ptr %pih, i32 0, i32 184, i32 0, i32 11
  %61 = ptrtoint ptr %arrayidx23.11 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 -92, ptr %arrayidx23.11, align 2
  %arrayidx23.1.11 = getelementptr %struct.brcms_phy, ptr %pih, i32 0, i32 184, i32 1, i32 11
  %62 = ptrtoint ptr %arrayidx23.1.11 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 -92, ptr %arrayidx23.1.11, align 2
  %arrayidx23.12 = getelementptr %struct.brcms_phy, ptr %pih, i32 0, i32 184, i32 0, i32 12
  %63 = ptrtoint ptr %arrayidx23.12 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 -92, ptr %arrayidx23.12, align 2
  %arrayidx23.1.12 = getelementptr %struct.brcms_phy, ptr %pih, i32 0, i32 184, i32 1, i32 12
  %64 = ptrtoint ptr %arrayidx23.1.12 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 -92, ptr %arrayidx23.1.12, align 2
  %arrayidx23.13 = getelementptr %struct.brcms_phy, ptr %pih, i32 0, i32 184, i32 0, i32 13
  %65 = ptrtoint ptr %arrayidx23.13 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 -92, ptr %arrayidx23.13, align 2
  %arrayidx23.1.13 = getelementptr %struct.brcms_phy, ptr %pih, i32 0, i32 184, i32 1, i32 13
  %66 = ptrtoint ptr %arrayidx23.1.13 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 -92, ptr %arrayidx23.1.13, align 2
  %arrayidx23.14 = getelementptr %struct.brcms_phy, ptr %pih, i32 0, i32 184, i32 0, i32 14
  %67 = ptrtoint ptr %arrayidx23.14 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 -92, ptr %arrayidx23.14, align 2
  %arrayidx23.1.14 = getelementptr %struct.brcms_phy, ptr %pih, i32 0, i32 184, i32 1, i32 14
  %68 = ptrtoint ptr %arrayidx23.1.14 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 -92, ptr %arrayidx23.1.14, align 2
  %arrayidx23.15 = getelementptr %struct.brcms_phy, ptr %pih, i32 0, i32 184, i32 0, i32 15
  %69 = ptrtoint ptr %arrayidx23.15 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 -92, ptr %arrayidx23.15, align 2
  %arrayidx23.1.15 = getelementptr %struct.brcms_phy, ptr %pih, i32 0, i32 184, i32 1, i32 15
  %70 = ptrtoint ptr %arrayidx23.1.15 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 -92, ptr %arrayidx23.1.15, align 2
  %nphy_noise_index = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 185
  %71 = ptrtoint ptr %nphy_noise_index to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 0, ptr %nphy_noise_index, align 2
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @wlc_phy_papd_decode_epsilon(i32 noundef %epsilon, ptr nocapture noundef writeonly %eps_real, ptr nocapture noundef writeonly %eps_imag) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i32 %epsilon, 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554431, i32 %epsilon)
  %cmp = icmp ugt i32 %epsilon, 33554431
  %sub = add nsw i32 %shr, -8192
  %spec.select = select i1 %cmp, i32 %sub, i32 %shr
  %0 = ptrtoint ptr %eps_imag to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %spec.select, ptr %eps_imag, align 4
  %and = and i32 %epsilon, 8191
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %and)
  %cmp1 = icmp ugt i32 %and, 4095
  %masksel = select i1 %cmp1, i32 -8192, i32 0
  %storemerge = or i32 %masksel, %and
  %1 = ptrtoint ptr %eps_real to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %storemerge, ptr %eps_real, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wlc_phy_cal_perical_mphase_reset(ptr nocapture noundef %pi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %phycal_timer = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 204
  %0 = ptrtoint ptr %phycal_timer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phycal_timer, align 4
  %call = tail call zeroext i1 @wlapi_del_timer(ptr noundef %1) #15
  %cal_type_override = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 194
  %2 = ptrtoint ptr %cal_type_override to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %cal_type_override, align 4
  %mphase_cal_phase_id = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 195
  %3 = ptrtoint ptr %mphase_cal_phase_id to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %mphase_cal_phase_id, align 1
  %mphase_txcal_cmdidx = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 196
  %4 = ptrtoint ptr %mphase_txcal_cmdidx to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %mphase_txcal_cmdidx, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wlc_phy_cal_perical_mphase_schedule(ptr nocapture noundef %pi) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %nphy_perical = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 192
  %0 = ptrtoint ptr %nphy_perical to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %nphy_perical, align 4
  %2 = and i8 %1, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %2)
  %switch = icmp eq i8 %2, 2
  br i1 %switch, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %phycal_timer = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 204
  %3 = ptrtoint ptr %phycal_timer to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %phycal_timer, align 4
  %call = tail call zeroext i1 @wlapi_del_timer(ptr noundef %4) #15
  %mphase_cal_phase_id = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 195
  %5 = ptrtoint ptr %mphase_cal_phase_id to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %mphase_cal_phase_id, align 1
  %6 = ptrtoint ptr %phycal_timer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phycal_timer, align 4
  tail call void @wlapi_add_timer(ptr noundef %7, i32 noundef 5, i32 noundef 0) #15
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local signext i16 @wlc_phy_tempsense_nphy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wlc_phy_cal_perical_nphy_run(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @wlc_phy_cal_perical_mphase_restart(ptr nocapture noundef writeonly %pi) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %mphase_cal_phase_id = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 195
  %0 = ptrtoint ptr %mphase_cal_phase_id to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %mphase_cal_phase_id, align 1
  %mphase_txcal_cmdidx = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 196
  %1 = ptrtoint ptr %mphase_txcal_cmdidx to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %mphase_txcal_cmdidx, align 2
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @wlc_phy_nbits(i32 noundef %value) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.abs.i32(i32 %value, i1 false)
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %entry
  %nbits.0 = phi i8 [ 0, %entry ], [ %inc, %while.cond.while.cond_crit_edge ]
  %conv = zext i8 %nbits.0 to i32
  %shr = ashr i32 %0, %conv
  %cmp1 = icmp sgt i32 %shr, 0
  %inc = add i8 %nbits.0, 1
  br i1 %cmp1, label %while.cond.while.cond_crit_edge, label %while.end

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #17
  ret i8 %nbits.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wlc_phy_stf_chain_init(ptr nocapture noundef %pih, i8 noundef zeroext %txchain, i8 noundef zeroext %rxchain) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %sh = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 1
  %0 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sh, align 4
  %hw_phytxchain = getelementptr inbounds %struct.shared_phy, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %hw_phytxchain to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %txchain, ptr %hw_phytxchain, align 4
  %3 = load ptr, ptr %sh, align 4
  %hw_phyrxchain = getelementptr inbounds %struct.shared_phy, ptr %3, i32 0, i32 25
  %4 = ptrtoint ptr %hw_phyrxchain to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %rxchain, ptr %hw_phyrxchain, align 1
  %5 = load ptr, ptr %sh, align 4
  %phytxchain = getelementptr inbounds %struct.shared_phy, ptr %5, i32 0, i32 26
  %6 = ptrtoint ptr %phytxchain to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %txchain, ptr %phytxchain, align 2
  %7 = load ptr, ptr %sh, align 4
  %phyrxchain = getelementptr inbounds %struct.shared_phy, ptr %7, i32 0, i32 27
  %8 = ptrtoint ptr %phyrxchain to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %rxchain, ptr %phyrxchain, align 1
  %9 = load ptr, ptr %sh, align 4
  %phyrxchain5 = getelementptr inbounds %struct.shared_phy, ptr %9, i32 0, i32 27
  %10 = ptrtoint ptr %phyrxchain5 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %phyrxchain5, align 1
  %conv80 = zext i8 %11 to i32
  %call.i = tail call i32 @__sw_hweight8(i32 noundef %conv80) #15
  %conv81 = trunc i32 %call.i to i8
  %phy_corenum = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 7, i32 2
  %12 = ptrtoint ptr %phy_corenum to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv81, ptr %phy_corenum, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wlc_phy_stf_chain_set(ptr noundef %pih, i8 noundef zeroext %txchain, i8 noundef zeroext %rxchain) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %sh = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 1
  %0 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sh, align 4
  %phytxchain = getelementptr inbounds %struct.shared_phy, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %phytxchain to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %txchain, ptr %phytxchain, align 2
  %pubpi = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 7
  %3 = ptrtoint ptr %pubpi to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pubpi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %cmp = icmp eq i32 %4, 4
  br i1 %cmp, label %if.then, label %entry.cond.false_crit_edge

entry.cond.false_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.false

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @wlc_phy_rxcore_setstate_nphy(ptr noundef %pih, i8 noundef zeroext %rxchain) #15
  br label %cond.false

cond.false:                                       ; preds = %if.then, %entry.cond.false_crit_edge
  %5 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sh, align 4
  %phyrxchain = getelementptr inbounds %struct.shared_phy, ptr %6, i32 0, i32 27
  %7 = ptrtoint ptr %phyrxchain to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %phyrxchain, align 1
  %conv76 = zext i8 %8 to i32
  %call.i = tail call i32 @__sw_hweight8(i32 noundef %conv76) #15
  %conv77 = trunc i32 %call.i to i8
  %phy_corenum = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 7, i32 2
  %9 = ptrtoint ptr %phy_corenum to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv77, ptr %phy_corenum, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wlc_phy_rxcore_setstate_nphy(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @wlc_phy_stf_chain_get(ptr nocapture noundef readonly %pih, ptr nocapture noundef writeonly %txchain, ptr nocapture noundef writeonly %rxchain) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %sh = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 1
  %0 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sh, align 4
  %phytxchain = getelementptr inbounds %struct.shared_phy, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %phytxchain to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %phytxchain, align 2
  %4 = ptrtoint ptr %txchain to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %txchain, align 1
  %5 = load ptr, ptr %sh, align 4
  %phyrxchain = getelementptr inbounds %struct.shared_phy, ptr %5, i32 0, i32 27
  %6 = ptrtoint ptr %phyrxchain to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %phyrxchain, align 1
  %8 = ptrtoint ptr %rxchain to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %rxchain, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @wlc_phy_stf_chain_active_get(ptr noundef %pih) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_txcore_heatedup = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 97
  %0 = ptrtoint ptr %phy_txcore_heatedup to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %phy_txcore_heatedup, align 1, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %conv = select i1 %tobool.not, i8 51, i8 49
  %watchdog_override = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 21
  %2 = ptrtoint ptr %watchdog_override to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %watchdog_override, align 4, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %phy_rev = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 7, i32 1
  %4 = ptrtoint ptr %phy_rev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %phy_rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %5)
  %cmp = icmp ugt i32 %5, 5
  br i1 %cmp, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then3:                                         ; preds = %if.end
  %sh = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 1
  %6 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sh, align 4
  %physhim = getelementptr inbounds %struct.shared_phy, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %physhim to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %physhim, align 4
  tail call void @wlapi_suspend_mac_and_wait(ptr noundef %9) #15
  %call = tail call signext i16 @wlc_phy_tempsense_nphy(ptr noundef %pih) #15
  %10 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sh, align 4
  %physhim5 = getelementptr inbounds %struct.shared_phy, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %physhim5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %physhim5, align 4
  tail call void @wlapi_enable_mac(ptr noundef %13) #15
  %14 = ptrtoint ptr %phy_txcore_heatedup to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %phy_txcore_heatedup, align 1, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool7.not = icmp eq i8 %15, 0
  br i1 %tobool7.not, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.then3
  %phy_txcore_disable_temp = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 94
  %16 = ptrtoint ptr %phy_txcore_disable_temp to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %phy_txcore_disable_temp, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %call, i16 %17)
  %cmp11.not = icmp slt i16 %call, %17
  br i1 %cmp11.not, label %if.then8.cleanup_crit_edge, label %if.then8.cleanup.sink.split_crit_edge

if.then8.cleanup.sink.split_crit_edge:            ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.else:                                          ; preds = %if.then3
  %phy_txcore_enable_temp = getelementptr inbounds %struct.brcms_phy, ptr %pih, i32 0, i32 95
  %18 = ptrtoint ptr %phy_txcore_enable_temp to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %phy_txcore_enable_temp, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %call, i16 %19)
  %cmp20.not = icmp sgt i16 %call, %19
  br i1 %cmp20.not, label %if.else.cleanup_crit_edge, label %if.else.cleanup.sink.split_crit_edge

if.else.cleanup.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.else.cleanup.sink.split_crit_edge, %if.then8.cleanup.sink.split_crit_edge
  %.sink = phi i8 [ 1, %if.then8.cleanup.sink.split_crit_edge ], [ 0, %if.else.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i8 [ 49, %if.then8.cleanup.sink.split_crit_edge ], [ 51, %if.else.cleanup.sink.split_crit_edge ]
  %20 = ptrtoint ptr %phy_txcore_heatedup to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %.sink, ptr %phy_txcore_heatedup, align 1
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else.cleanup_crit_edge, %if.then8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ %conv, %entry.cleanup_crit_edge ], [ %conv, %if.else.cleanup_crit_edge ], [ %conv, %if.then8.cleanup_crit_edge ], [ %conv, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i8 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local signext i8 @wlc_phy_stf_ssmode_get(ptr nocapture noundef readonly %pih, i16 noundef zeroext %chanspec) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i16 %chanspec, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 3072, i16 %0)
  %cmp = icmp eq i16 %0, 3072
  %idxprom = select i1 %cmp, i32 68, i32 20
  %arrayidx = getelementptr %struct.brcms_phy, ptr %pih, i32 0, i32 44, i32 %idxprom
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  %conv9 = zext i8 %2 to i32
  %idxprom11 = select i1 %cmp, i32 76, i32 28
  %arrayidx12 = getelementptr %struct.brcms_phy, ptr %pih, i32 0, i32 44, i32 %idxprom11
  %3 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %4 to i32
  %add = add nuw nsw i32 %conv13, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv9)
  %cmp14 = icmp uge i32 %add, %conv9
  %. = zext i1 %cmp14 to i8
  ret i8 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @wlc_phy_get_ofdm_rate_lookup() local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @ofdm_rate_lookup
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wlc_lcnphy_epa_switch(ptr nocapture noundef %pi, i1 noundef zeroext %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %sh = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 1
  %0 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sh, align 4
  %chip = getelementptr inbounds %struct.shared_phy, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17171, i32 %3)
  %cmp = icmp eq i32 %3, 17171
  br i1 %cmp, label %land.lhs.true, label %entry.if.end30_crit_edge

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end30

land.lhs.true:                                    ; preds = %entry
  %boardflags = getelementptr inbounds %struct.shared_phy, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %boardflags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %boardflags, align 4
  %and = and i32 %5, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true.if.end30_crit_edge, label %if.then

land.lhs.true.if.end30_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end30

if.then:                                          ; preds = %land.lhs.true
  br i1 %mode, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  %physhim = getelementptr inbounds %struct.shared_phy, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %physhim to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %physhim, align 4
  %call = tail call zeroext i16 @wlapi_bmac_get_txant(ptr noundef %7) #15
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %call)
  %cmp5 = icmp eq i16 %call, 1
  br i1 %cmp5, label %if.then7, label %if.then3.if.end_crit_edge

if.then3.if.end_crit_edge:                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then7:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #17
  %d11core.i = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 5
  %8 = ptrtoint ptr %d11core.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d11core.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %ops.i.i = getelementptr inbounds %struct.bcma_bus, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i.i, align 4
  %write16.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %write16.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write16.i.i, align 4
  tail call void %15(ptr noundef %9, i16 noundef zeroext 1020, i16 noundef zeroext 1101) #15
  %16 = ptrtoint ptr %d11core.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %d11core.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 8
  %ops.i.i.i = getelementptr inbounds %struct.bcma_bus, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops.i.i.i, align 4
  %read16.i.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %read16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %read16.i.i.i, align 4
  %call.i.i.i = tail call zeroext i16 %23(ptr noundef %17, i16 noundef zeroext 1022) #15
  %or4.i.i = or i16 %call.i.i.i, 4
  %24 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %17, align 8
  %ops.i1.i.i = getelementptr inbounds %struct.bcma_bus, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %ops.i1.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops.i1.i.i, align 4
  %write16.i.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %write16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write16.i.i.i, align 4
  tail call void %29(ptr noundef %17, i16 noundef zeroext 1022, i16 noundef zeroext %or4.i.i) #15
  %phy_wreg.i = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 53
  %30 = ptrtoint ptr %phy_wreg.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 0, ptr %phy_wreg.i, align 4
  %31 = ptrtoint ptr %d11core.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %d11core.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 8
  %ops.i.i44 = getelementptr inbounds %struct.bcma_bus, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %ops.i.i44 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ops.i.i44, align 4
  %write16.i.i45 = getelementptr inbounds %struct.bcma_host_ops, ptr %36, i32 0, i32 4
  %37 = ptrtoint ptr %write16.i.i45 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %write16.i.i45, align 4
  tail call void %38(ptr noundef %32, i16 noundef zeroext 1020, i16 noundef zeroext 1100) #15
  %39 = ptrtoint ptr %d11core.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %d11core.i, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 8
  %ops.i.i.i46 = getelementptr inbounds %struct.bcma_bus, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %ops.i.i.i46 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ops.i.i.i46, align 4
  %read16.i.i.i47 = getelementptr inbounds %struct.bcma_host_ops, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %read16.i.i.i47 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %read16.i.i.i47, align 4
  %call.i.i.i48 = tail call zeroext i16 %46(ptr noundef %40, i16 noundef zeroext 1022) #15
  %or4.i.i50 = or i16 %call.i.i.i48, 4
  %47 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %40, align 8
  %ops.i1.i.i51 = getelementptr inbounds %struct.bcma_bus, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %ops.i1.i.i51 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ops.i1.i.i51, align 4
  %write16.i.i.i52 = getelementptr inbounds %struct.bcma_host_ops, ptr %50, i32 0, i32 4
  %51 = ptrtoint ptr %write16.i.i.i52 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %write16.i.i.i52, align 4
  tail call void %52(ptr noundef %40, i16 noundef zeroext 1022, i16 noundef zeroext %or4.i.i50) #15
  %53 = ptrtoint ptr %phy_wreg.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 0, ptr %phy_wreg.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then3.if.end_crit_edge
  %d11core = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 5
  %54 = ptrtoint ptr %d11core to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %d11core, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 8
  %drv_cc = getelementptr inbounds %struct.bcma_bus, ptr %57, i32 0, i32 12
  %call8 = tail call i32 @bcma_chipco_gpio_control(ptr noundef %drv_cc, i32 noundef 0, i32 noundef 0) #15
  %58 = ptrtoint ptr %d11core to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %d11core, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 8
  %drv_cc11 = getelementptr inbounds %struct.bcma_bus, ptr %61, i32 0, i32 12
  %call12 = tail call i32 @bcma_chipco_gpio_out(ptr noundef %drv_cc11, i32 noundef -65, i32 noundef 64) #15
  %62 = ptrtoint ptr %d11core to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %d11core, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 8
  %drv_cc15 = getelementptr inbounds %struct.bcma_bus, ptr %65, i32 0, i32 12
  %call16 = tail call i32 @bcma_chipco_gpio_outen(ptr noundef %drv_cc15, i32 noundef -65, i32 noundef 64) #15
  br label %if.end30

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %d11core.i54 = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 5
  %66 = ptrtoint ptr %d11core.i54 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %d11core.i54, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 8
  %ops.i.i55 = getelementptr inbounds %struct.bcma_bus, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %ops.i.i55 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ops.i.i55, align 4
  %write16.i.i56 = getelementptr inbounds %struct.bcma_host_ops, ptr %71, i32 0, i32 4
  %72 = ptrtoint ptr %write16.i.i56 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %write16.i.i56, align 4
  tail call void %73(ptr noundef %67, i16 noundef zeroext 1020, i16 noundef zeroext 1100) #15
  %74 = ptrtoint ptr %d11core.i54 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %d11core.i54, align 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %75, align 8
  %ops.i.i.i57 = getelementptr inbounds %struct.bcma_bus, ptr %77, i32 0, i32 2
  %78 = ptrtoint ptr %ops.i.i.i57 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ops.i.i.i57, align 4
  %read16.i.i.i58 = getelementptr inbounds %struct.bcma_host_ops, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %read16.i.i.i58 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %read16.i.i.i58, align 4
  %call.i.i.i59 = tail call zeroext i16 %81(ptr noundef %75, i16 noundef zeroext 1022) #15
  %and3.i.i60 = and i16 %call.i.i.i59, -5
  %82 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %75, align 8
  %ops.i1.i.i61 = getelementptr inbounds %struct.bcma_bus, ptr %83, i32 0, i32 2
  %84 = ptrtoint ptr %ops.i1.i.i61 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ops.i1.i.i61, align 4
  %write16.i.i.i62 = getelementptr inbounds %struct.bcma_host_ops, ptr %85, i32 0, i32 4
  %86 = ptrtoint ptr %write16.i.i.i62 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %write16.i.i.i62, align 4
  tail call void %87(ptr noundef %75, i16 noundef zeroext 1022, i16 noundef zeroext %and3.i.i60) #15
  %phy_wreg.i63 = getelementptr inbounds %struct.brcms_phy, ptr %pi, i32 0, i32 53
  %88 = ptrtoint ptr %phy_wreg.i63 to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 0, ptr %phy_wreg.i63, align 4
  %89 = ptrtoint ptr %d11core.i54 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %d11core.i54, align 4
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %90, align 8
  %ops.i.i65 = getelementptr inbounds %struct.bcma_bus, ptr %92, i32 0, i32 2
  %93 = ptrtoint ptr %ops.i.i65 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %ops.i.i65, align 4
  %write16.i.i66 = getelementptr inbounds %struct.bcma_host_ops, ptr %94, i32 0, i32 4
  %95 = ptrtoint ptr %write16.i.i66 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %write16.i.i66, align 4
  tail call void %96(ptr noundef %90, i16 noundef zeroext 1020, i16 noundef zeroext 1101) #15
  %97 = ptrtoint ptr %d11core.i54 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %d11core.i54, align 4
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %98, align 8
  %ops.i.i.i67 = getelementptr inbounds %struct.bcma_bus, ptr %100, i32 0, i32 2
  %101 = ptrtoint ptr %ops.i.i.i67 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %ops.i.i.i67, align 4
  %read16.i.i.i68 = getelementptr inbounds %struct.bcma_host_ops, ptr %102, i32 0, i32 1
  %103 = ptrtoint ptr %read16.i.i.i68 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %read16.i.i.i68, align 4
  %call.i.i.i69 = tail call zeroext i16 %104(ptr noundef %98, i16 noundef zeroext 1022) #15
  %and3.i.i70 = and i16 %call.i.i.i69, -5
  %105 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %98, align 8
  %ops.i1.i.i71 = getelementptr inbounds %struct.bcma_bus, ptr %106, i32 0, i32 2
  %107 = ptrtoint ptr %ops.i1.i.i71 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %ops.i1.i.i71, align 4
  %write16.i.i.i72 = getelementptr inbounds %struct.bcma_host_ops, ptr %108, i32 0, i32 4
  %109 = ptrtoint ptr %write16.i.i.i72 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %write16.i.i.i72, align 4
  tail call void %110(ptr noundef %98, i16 noundef zeroext 1022, i16 noundef zeroext %and3.i.i70) #15
  %111 = ptrtoint ptr %phy_wreg.i63 to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 0, ptr %phy_wreg.i63, align 4
  %112 = ptrtoint ptr %d11core.i54 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %d11core.i54, align 4
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %113, align 8
  %drv_cc19 = getelementptr inbounds %struct.bcma_bus, ptr %115, i32 0, i32 12
  %call20 = tail call i32 @bcma_chipco_gpio_out(ptr noundef %drv_cc19, i32 noundef -65, i32 noundef 0) #15
  %116 = ptrtoint ptr %d11core.i54 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %d11core.i54, align 4
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %117, align 8
  %drv_cc23 = getelementptr inbounds %struct.bcma_bus, ptr %119, i32 0, i32 12
  %call24 = tail call i32 @bcma_chipco_gpio_outen(ptr noundef %drv_cc23, i32 noundef -65, i32 noundef 0) #15
  %120 = ptrtoint ptr %d11core.i54 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %d11core.i54, align 4
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %121, align 8
  %drv_cc27 = getelementptr inbounds %struct.bcma_bus, ptr %123, i32 0, i32 12
  %call28 = tail call i32 @bcma_chipco_gpio_control(ptr noundef %drv_cc27, i32 noundef 0, i32 noundef 64) #15
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.end, %land.lhs.true.if.end30_crit_edge, %entry.if.end30_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @wlapi_bmac_get_txant(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcma_chipco_gpio_control(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcma_chipco_gpio_out(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcma_chipco_gpio_outen(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @wlc_phy_ldpc_override_set(ptr nocapture noundef %ppi, i1 noundef zeroext %ldpc) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @wlc_phy_get_pwrdet_offsets(ptr nocapture noundef readnone %pi, ptr nocapture noundef writeonly %cckoffset, ptr nocapture noundef writeonly %ofdmoffset) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cckoffset to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %cckoffset, align 1
  %1 = ptrtoint ptr %ofdmoffset to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %ofdmoffset, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local signext i8 @wlc_phy_upd_rssi_offset(ptr nocapture noundef readnone %pi, i8 noundef returned signext %rssi, i16 noundef zeroext %chanspec) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret i8 %rssi
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @wlc_phy_txpower_ipa_ison(ptr noundef %ppi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %pubpi = getelementptr inbounds %struct.brcms_phy, ptr %ppi, i32 0, i32 7
  %0 = ptrtoint ptr %pubpi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pubpi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp = icmp eq i32 %1, 4
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call zeroext i1 @wlc_phy_n_txpower_ipa_ison(ptr noundef %ppi) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %call, %if.then ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @wlc_phy_n_txpower_ipa_ison(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @wlapi_add_timer(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local signext i8 @wlc_lcnphy_vbatsense(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local signext i8 @wlc_lcnphy_tempsense_degree(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wlc_phy_mcs_to_ofdm_powers_nphy(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wlc_phy_ofdm_to_mcs_powers_nphy(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wlc_lcnphy_rx_signal_power(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @wlc_phy_classifier_nphy(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wlc_phy_rx_iq_est_nphy(ptr noundef, ptr noundef, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #14

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight8(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.usub.sat.i8(i8, i8) #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.smax.i8(i8, i8) #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #14

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !15}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/phy_cmn.c", i32 550, i32 15}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/phy_cmn.c", i32 748, i32 6}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/phy_cmn.c", i32 754, i32 6}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/phy_cmn.c", i32 793, i32 6}
!9 = !{ptr @wlc_phy_txpower_update_shm.ucode_ofdm_rates, !10, !"ucode_ofdm_rates", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/phy_cmn.c", i32 1906, i32 20}
!11 = !{ptr @chan_info_all, !12, !"chan_info_all", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/phy_cmn.c", i32 45, i32 37}
!13 = !{ptr @lcnphy_gain_index_offset_for_pkt_rssi, !14, !"lcnphy_gain_index_offset_for_pkt_rssi", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/phy_cmn.c", i32 2460, i32 17}
!15 = !{ptr @ofdm_rate_lookup, !16, !"ofdm_rate_lookup", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/phy_cmn.c", i32 104, i32 17}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!26 = !{i8 0, i8 2}
!27 = !{!"branch_weights", i32 2000, i32 1}
!28 = !{!"branch_weights", i32 1, i32 2000}
!29 = !{!"auto-init"}
!30 = !{i32 0, i32 33}
