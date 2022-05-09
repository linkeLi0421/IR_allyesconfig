; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/broadcom/b43/tables_nphy.c_pt.bc'
source_filename = "../drivers/net/wireless/broadcom/b43/tables_nphy.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nphy_txiqcal_ladder = type { i8, i8 }
%struct.nphy_rf_control_override_rev2 = type { i8, i8, i16, i8 }
%struct.nphy_rf_control_override_rev3 = type { i16, i8, i8, i8, i8, i8 }
%struct.nphy_gain_ctl_workaround_entry = type { [4 x i8], [4 x i8], [10 x i8], [10 x i8], i16, [4 x i16], i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.nphy_rf_control_override_rev7 = type { i16, i16, i16, i16, i8 }
%struct.b43_bus_dev = type { i32, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, i32, i16, i16, i16, i16, i8, i8, ptr, i16, i8 }
%union.anon = type { ptr }
%struct.b43_wldev = type { ptr, ptr, %struct.completion, %struct.atomic_t, i8, i8, i8, i8, i8, i8, %struct.b43_phy, %union.anon.138, i8, %struct.b43_stats, i32, [6 x i32], i32, %struct.b43_noise_calculation, i32, %struct.delayed_work, i32, %struct.work_struct, i16, [58 x %struct.b43_key], %struct.b43_firmware, %struct.list_head, ptr, i32, [32 x i32], i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.b43_phy = type { ptr, %struct.anon.135, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i8, i8, i32, i8, i32, ptr, i32, %struct.atomic_t, i8, i8 }
%struct.anon.135 = type { ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.138 = type { %struct.b43_dma }
%struct.b43_dma = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.b43_stats = type { i8 }
%struct.b43_noise_calculation = type { i8, i8, [8 x [4 x i8]] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.b43_key = type { ptr, i8 }
%struct.b43_firmware = type { %struct.b43_firmware_file, %struct.b43_firmware_file, %struct.b43_firmware_file, %struct.b43_firmware_file, i16, i16, i32, i8, i8 }
%struct.b43_firmware_file = type { ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.b43_wl = type { ptr, ptr, %struct.mutex, %struct.spinlock, i8, ptr, [6 x i8], [6 x i8], i32, i8, i32, %struct.ieee80211_low_level_stats, %struct.hwrng, i8, [31 x i8], i8, i8, ptr, i8, i8, i8, %struct.work_struct, %struct.spinlock, [4 x %struct.b43_qos_params], %struct.work_struct, %struct.work_struct, [4 x %struct.sk_buff_head], [4 x i8], %struct.work_struct, %struct.b43_leds, [118 x i8], [2 x i8], [4 x i8], [4 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ieee80211_low_level_stats = type { i32, i32, i32, i32 }
%struct.hwrng = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, %struct.list_head, %struct.kref, %struct.completion }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.b43_qos_params = type { %struct.ieee80211_tx_queue_params }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
%struct.sk_buff_head = type { %union.anon.65, i32, %struct.spinlock }
%union.anon.65 = type { %struct.anon.66 }
%struct.anon.66 = type { ptr, ptr }
%struct.b43_leds = type { %struct.b43_led, %struct.b43_led, %struct.b43_led, %struct.b43_led, i8, %struct.work_struct }
%struct.b43_led = type { ptr, %struct.led_classdev, i8, i8, [32 x i8], %struct.atomic_t, i8 }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.ssb_sprom = type { i8, i8, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, [2 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], [4 x i8], [4 x i8], [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [4 x %struct.ssb_sprom_core_pwr_info], %struct.anon.102, %struct.anon.103, [8 x i16], [8 x i16], [8 x i16], [8 x i16], i8, [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8 }
%struct.ssb_sprom_core_pwr_info = type { i8, i8, i8, i8, i8, i8, [4 x i16], [4 x i16], [4 x i16], [4 x i16] }
%struct.anon.102 = type { i8, i8, i8, i8 }
%struct.anon.103 = type { %struct.anon.104, %struct.anon.105 }
%struct.anon.104 = type { i8, i8, i8, i8, i8 }
%struct.anon.105 = type { i8, i8, i8, i8, i8 }
%struct.b43_phy_n = type { i8, [2 x i8], i8, i8, i8, i8, i8, i32, i32, i8, i8, [2 x i16], i32, i32, i8, i8, i8, i8, i8, i8, i16, i16, [11 x i16], i8, i8, [2 x i8], [101 x i8], [84 x i16], i16, [11 x i16], i8, [2 x %struct.b43_phy_n_txpwrindex], [2 x %struct.b43_phy_n_pwr_ctl_info], %struct.b43_chanspec, %struct.b43_ppr, i16, i32, i8, [11 x i16], [22 x i16], i16, i16, i16, [2 x i16], i32, i8, i8, i8, %struct.b43_chanspec, %struct.b43_chanspec, i8, %struct.b43_chanspec, %struct.b43_chanspec, %struct.b43_phy_n_rssical_cache, %struct.b43_phy_n_cal_cache, i8, i8 }
%struct.b43_phy_n_txpwrindex = type { i8, i8, i8, i16, i16, i16, i8, i16, i16, i16 }
%struct.b43_phy_n_pwr_ctl_info = type { i8, i8 }
%struct.b43_ppr = type { %union.anon.137 }
%union.anon.137 = type { [52 x i8] }
%struct.b43_chanspec = type { i16, i32 }
%struct.b43_phy_n_rssical_cache = type { [2 x i16], [12 x i16], [2 x i16], [12 x i16] }
%struct.b43_phy_n_cal_cache = type { [8 x i16], [8 x i16], %struct.b43_phy_n_iq_comp, [8 x i16], [8 x i16], %struct.b43_phy_n_iq_comp }
%struct.b43_phy_n_iq_comp = type { i16, i16, i16, i16 }

@b43_ntab_papd_pga_gain_delta_ipa_2g = dso_local constant { [16 x i8], [16 x i8] } { [16 x i8] c"\8E\94\9E\A5\AC\B2\BA\C2\CA\D2\D9\E1\E9\F1\F8\00", [16 x i8] zeroinitializer }, align 32
@tbl_iqcal_gainparams = dso_local constant { [2 x [9 x [8 x i16]]], [64 x i8] } { [2 x [9 x [8 x i16]]] [[9 x [8 x i16]] [[8 x i16] [i16 0, i16 0, i16 0, i16 2, i16 105, i16 105, i16 105, i16 105], [8 x i16] [i16 1792, i16 7, i16 0, i16 0, i16 105, i16 105, i16 105, i16 105], [8 x i16] [i16 1808, i16 7, i16 1, i16 0, i16 104, i16 104, i16 104, i16 104], [8 x i16] [i16 1824, i16 7, i16 2, i16 0, i16 103, i16 103, i16 103, i16 103], [8 x i16] [i16 1840, i16 7, i16 3, i16 0, i16 102, i16 102, i16 102, i16 102], [8 x i16] [i16 1856, i16 7, i16 4, i16 0, i16 101, i16 101, i16 101, i16 101], [8 x i16] [i16 1857, i16 7, i16 4, i16 1, i16 101, i16 101, i16 101, i16 101], [8 x i16] [i16 1858, i16 7, i16 4, i16 2, i16 101, i16 101, i16 101, i16 101], [8 x i16] [i16 1859, i16 7, i16 4, i16 3, i16 101, i16 101, i16 101, i16 101]], [9 x [8 x i16]] [[8 x i16] [i16 0, i16 7, i16 0, i16 0, i16 121, i16 121, i16 121, i16 121], [8 x i16] [i16 1792, i16 7, i16 0, i16 0, i16 121, i16 121, i16 121, i16 121], [8 x i16] [i16 1808, i16 7, i16 1, i16 0, i16 121, i16 121, i16 121, i16 121], [8 x i16] [i16 1824, i16 7, i16 2, i16 0, i16 120, i16 120, i16 120, i16 120], [8 x i16] [i16 1840, i16 7, i16 3, i16 0, i16 120, i16 120, i16 120, i16 120], [8 x i16] [i16 1856, i16 7, i16 4, i16 0, i16 120, i16 120, i16 120, i16 120], [8 x i16] [i16 1857, i16 7, i16 4, i16 1, i16 120, i16 120, i16 120, i16 120], [8 x i16] [i16 1858, i16 7, i16 4, i16 2, i16 120, i16 120, i16 120, i16 120], [8 x i16] [i16 1859, i16 7, i16 4, i16 3, i16 120, i16 120, i16 120, i16 120]]], [64 x i8] zeroinitializer }, align 32
@ladder_lo = dso_local constant { [18 x %struct.nphy_txiqcal_ladder], [60 x i8] } { [18 x %struct.nphy_txiqcal_ladder] [%struct.nphy_txiqcal_ladder { i8 3, i8 0 }, %struct.nphy_txiqcal_ladder { i8 4, i8 0 }, %struct.nphy_txiqcal_ladder { i8 6, i8 0 }, %struct.nphy_txiqcal_ladder { i8 9, i8 0 }, %struct.nphy_txiqcal_ladder { i8 13, i8 0 }, %struct.nphy_txiqcal_ladder { i8 18, i8 0 }, %struct.nphy_txiqcal_ladder { i8 25, i8 0 }, %struct.nphy_txiqcal_ladder { i8 25, i8 1 }, %struct.nphy_txiqcal_ladder { i8 25, i8 2 }, %struct.nphy_txiqcal_ladder { i8 25, i8 3 }, %struct.nphy_txiqcal_ladder { i8 25, i8 4 }, %struct.nphy_txiqcal_ladder { i8 25, i8 5 }, %struct.nphy_txiqcal_ladder { i8 25, i8 6 }, %struct.nphy_txiqcal_ladder { i8 25, i8 7 }, %struct.nphy_txiqcal_ladder { i8 35, i8 7 }, %struct.nphy_txiqcal_ladder { i8 50, i8 7 }, %struct.nphy_txiqcal_ladder { i8 71, i8 7 }, %struct.nphy_txiqcal_ladder { i8 100, i8 7 }], [60 x i8] zeroinitializer }, align 32
@ladder_iq = dso_local constant { [18 x %struct.nphy_txiqcal_ladder], [60 x i8] } { [18 x %struct.nphy_txiqcal_ladder] [%struct.nphy_txiqcal_ladder { i8 3, i8 0 }, %struct.nphy_txiqcal_ladder { i8 4, i8 0 }, %struct.nphy_txiqcal_ladder { i8 6, i8 0 }, %struct.nphy_txiqcal_ladder { i8 9, i8 0 }, %struct.nphy_txiqcal_ladder { i8 13, i8 0 }, %struct.nphy_txiqcal_ladder { i8 18, i8 0 }, %struct.nphy_txiqcal_ladder { i8 25, i8 0 }, %struct.nphy_txiqcal_ladder { i8 35, i8 0 }, %struct.nphy_txiqcal_ladder { i8 50, i8 0 }, %struct.nphy_txiqcal_ladder { i8 71, i8 0 }, %struct.nphy_txiqcal_ladder { i8 100, i8 0 }, %struct.nphy_txiqcal_ladder { i8 100, i8 1 }, %struct.nphy_txiqcal_ladder { i8 100, i8 2 }, %struct.nphy_txiqcal_ladder { i8 100, i8 3 }, %struct.nphy_txiqcal_ladder { i8 100, i8 4 }, %struct.nphy_txiqcal_ladder { i8 100, i8 5 }, %struct.nphy_txiqcal_ladder { i8 100, i8 6 }, %struct.nphy_txiqcal_ladder { i8 100, i8 7 }], [60 x i8] zeroinitializer }, align 32
@loscale = dso_local constant { [128 x i16], [64 x i8] } { [128 x i16] [i16 256, i16 256, i16 271, i16 271, i16 287, i16 256, i16 256, i16 271, i16 271, i16 287, i16 287, i16 304, i16 304, i16 256, i16 256, i16 271, i16 271, i16 287, i16 287, i16 304, i16 304, i16 322, i16 322, i16 341, i16 341, i16 362, i16 362, i16 383, i16 383, i16 256, i16 256, i16 271, i16 271, i16 287, i16 287, i16 304, i16 304, i16 322, i16 322, i16 256, i16 256, i16 271, i16 271, i16 287, i16 287, i16 304, i16 304, i16 322, i16 322, i16 341, i16 341, i16 362, i16 362, i16 256, i16 256, i16 271, i16 271, i16 287, i16 287, i16 304, i16 304, i16 322, i16 322, i16 256, i16 256, i16 271, i16 271, i16 287, i16 287, i16 304, i16 304, i16 322, i16 322, i16 341, i16 341, i16 362, i16 362, i16 256, i16 256, i16 271, i16 271, i16 287, i16 287, i16 304, i16 304, i16 322, i16 322, i16 341, i16 341, i16 362, i16 362, i16 383, i16 383, i16 406, i16 406, i16 430, i16 430, i16 455, i16 455, i16 482, i16 482, i16 511, i16 511, i16 541, i16 541, i16 573, i16 573, i16 607, i16 607, i16 643, i16 643, i16 681, i16 681, i16 722, i16 722, i16 764, i16 764, i16 810, i16 810, i16 858, i16 858, i16 908, i16 908, i16 962, i16 962, i16 1019, i16 1019, i16 256], [64 x i8] zeroinitializer }, align 32
@tbl_tx_iqlo_cal_loft_ladder_40 = dso_local constant { [18 x i16], [60 x i8] } { [18 x i16] [i16 512, i16 768, i16 1024, i16 1792, i16 2304, i16 3072, i16 4608, i16 4609, i16 4610, i16 4611, i16 4612, i16 4613, i16 4614, i16 4615, i16 6407, i16 8967, i16 12807, i16 18183], [60 x i8] zeroinitializer }, align 32
@tbl_tx_iqlo_cal_loft_ladder_20 = dso_local constant { [18 x i16], [60 x i8] } { [18 x i16] [i16 768, i16 1280, i16 1792, i16 2304, i16 3328, i16 4352, i16 6400, i16 6401, i16 6402, i16 6403, i16 6404, i16 6405, i16 6406, i16 6407, i16 9223, i16 12807, i16 17927, i16 25607], [60 x i8] zeroinitializer }, align 32
@tbl_tx_iqlo_cal_iqimb_ladder_40 = dso_local constant { [18 x i16], [60 x i8] } { [18 x i16] [i16 256, i16 512, i16 1024, i16 1792, i16 2304, i16 3072, i16 4608, i16 6400, i16 8960, i16 12800, i16 18176, i16 18177, i16 18178, i16 18179, i16 18180, i16 18181, i16 18182, i16 18183], [60 x i8] zeroinitializer }, align 32
@tbl_tx_iqlo_cal_iqimb_ladder_20 = dso_local constant { [18 x i16], [60 x i8] } { [18 x i16] [i16 512, i16 768, i16 1536, i16 2304, i16 3328, i16 4352, i16 6400, i16 9216, i16 12800, i16 17920, i16 25600, i16 25601, i16 25602, i16 25603, i16 25604, i16 25605, i16 25606, i16 25607], [60 x i8] zeroinitializer }, align 32
@tbl_tx_iqlo_cal_startcoefs_nphyrev3 = dso_local constant { [11 x i16], [42 x i8] } zeroinitializer, align 32
@tbl_tx_iqlo_cal_startcoefs = dso_local constant { [9 x i16], [46 x i8] } zeroinitializer, align 32
@tbl_tx_iqlo_cal_cmds_recal_nphyrev3 = dso_local constant { [12 x i16], [40 x i8] } { [12 x i16] [i16 -31709, i16 -31965, i16 -32653, i16 -32170, i16 -32699, i16 -32221, i16 -27613, i16 -27869, i16 -28557, i16 -28074, i16 -28603, i16 -28125], [40 x i8] zeroinitializer }, align 32
@tbl_tx_iqlo_cal_cmds_recal = dso_local constant { [10 x i16], [44 x i8] } { [10 x i16] [i16 -32511, i16 -32173, i16 -32685, i16 -32204, i16 -32716, i16 -28415, i16 -28077, i16 -28589, i16 -28108, i16 -28620], [44 x i8] zeroinitializer }, align 32
@tbl_tx_iqlo_cal_cmds_fullcal = dso_local constant { [10 x i16], [44 x i8] } { [10 x i16] [i16 -32477, i16 -32156, i16 -32634, i16 -32187, i16 -32682, i16 -28381, i16 -28060, i16 -28538, i16 -28091, i16 -28586], [44 x i8] zeroinitializer }, align 32
@tbl_tx_iqlo_cal_cmds_fullcal_nphyrev3 = dso_local constant { [12 x i16], [40 x i8] } { [12 x i16] [i16 -31692, i16 -31948, i16 -32636, i16 -32153, i16 -32682, i16 -32204, i16 -27596, i16 -27852, i16 -28540, i16 -28057, i16 -28586, i16 -28108], [40 x i8] zeroinitializer }, align 32
@tbl_tx_filter_coef_rev4 = dso_local constant { [7 x [15 x i16]], [46 x i8] } { [7 x [15 x i16]] [[15 x i16] [i16 -377, i16 137, i16 -407, i16 208, i16 -1527, i16 956, i16 93, i16 186, i16 93, i16 230, i16 -44, i16 230, i16 201, i16 -191, i16 201], [15 x i16] [i16 -77, i16 20, i16 -98, i16 49, i16 -93, i16 60, i16 56, i16 111, i16 56, i16 26, i16 -5, i16 26, i16 34, i16 -32, i16 34], [15 x i16] [i16 -360, i16 164, i16 -376, i16 164, i16 -1533, i16 576, i16 308, i16 -314, i16 308, i16 121, i16 -73, i16 121, i16 91, i16 124, i16 91], [15 x i16] [i16 -295, i16 200, i16 -363, i16 142, i16 -1391, i16 826, i16 151, i16 301, i16 151, i16 151, i16 301, i16 151, i16 602, i16 -752, i16 602], [15 x i16] [i16 -92, i16 58, i16 -96, i16 49, i16 -104, i16 44, i16 17, i16 35, i16 17, i16 12, i16 25, i16 12, i16 13, i16 27, i16 13], [15 x i16] [i16 -375, i16 136, i16 -399, i16 209, i16 -1479, i16 949, i16 130, i16 260, i16 130, i16 230, i16 -44, i16 230, i16 201, i16 -191, i16 201], [15 x i16] [i16 3801, i16 200, i16 3733, i16 142, i16 2705, i16 826, i16 151, i16 301, i16 151, i16 151, i16 301, i16 151, i16 602, i16 3344, i16 602]], [46 x i8] zeroinitializer }, align 32
@tbl_rf_control_override_rev2 = dso_local constant { [14 x %struct.nphy_rf_control_override_rev2], [44 x i8] } { [14 x %struct.nphy_rf_control_override_rev2] [%struct.nphy_rf_control_override_rev2 { i8 120, i8 120, i16 56, i8 3 }, %struct.nphy_rf_control_override_rev2 { i8 122, i8 125, i16 1, i8 0 }, %struct.nphy_rf_control_override_rev2 { i8 122, i8 125, i16 2, i8 1 }, %struct.nphy_rf_control_override_rev2 { i8 122, i8 125, i16 4, i8 2 }, %struct.nphy_rf_control_override_rev2 { i8 122, i8 125, i16 48, i8 4 }, %struct.nphy_rf_control_override_rev2 { i8 122, i8 125, i16 192, i8 6 }, %struct.nphy_rf_control_override_rev2 { i8 122, i8 125, i16 256, i8 8 }, %struct.nphy_rf_control_override_rev2 { i8 122, i8 125, i16 512, i8 9 }, %struct.nphy_rf_control_override_rev2 { i8 120, i8 120, i16 4, i8 2 }, %struct.nphy_rf_control_override_rev2 { i8 123, i8 126, i16 511, i8 0 }, %struct.nphy_rf_control_override_rev2 { i8 124, i8 127, i16 511, i8 0 }, %struct.nphy_rf_control_override_rev2 { i8 120, i8 120, i16 256, i8 8 }, %struct.nphy_rf_control_override_rev2 { i8 120, i8 120, i16 512, i8 9 }, %struct.nphy_rf_control_override_rev2 { i8 120, i8 120, i16 -4096, i8 12 }], [44 x i8] zeroinitializer }, align 32
@tbl_rf_control_override_rev3 = dso_local constant { [15 x %struct.nphy_rf_control_override_rev3], [40 x i8] } { [15 x %struct.nphy_rf_control_override_rev3] [%struct.nphy_rf_control_override_rev3 { i16 -32768, i8 15, i8 -27, i8 -7, i8 -26, i8 -5 }, %struct.nphy_rf_control_override_rev3 { i16 1, i8 0, i8 -25, i8 122, i8 -20, i8 125 }, %struct.nphy_rf_control_override_rev3 { i16 2, i8 1, i8 -25, i8 122, i8 -20, i8 125 }, %struct.nphy_rf_control_override_rev3 { i16 4, i8 2, i8 -25, i8 122, i8 -20, i8 125 }, %struct.nphy_rf_control_override_rev3 { i16 16, i8 4, i8 -25, i8 122, i8 -20, i8 125 }, %struct.nphy_rf_control_override_rev3 { i16 32, i8 5, i8 -25, i8 122, i8 -20, i8 125 }, %struct.nphy_rf_control_override_rev3 { i16 64, i8 6, i8 -25, i8 122, i8 -20, i8 125 }, %struct.nphy_rf_control_override_rev3 { i16 128, i8 7, i8 -25, i8 122, i8 -20, i8 125 }, %struct.nphy_rf_control_override_rev3 { i16 256, i8 8, i8 -25, i8 122, i8 -20, i8 125 }, %struct.nphy_rf_control_override_rev3 { i16 7, i8 0, i8 -25, i8 -8, i8 -20, i8 -6 }, %struct.nphy_rf_control_override_rev3 { i16 112, i8 4, i8 -25, i8 -8, i8 -20, i8 -6 }, %struct.nphy_rf_control_override_rev3 { i16 -8192, i8 13, i8 -25, i8 122, i8 -20, i8 125 }, %struct.nphy_rf_control_override_rev3 { i16 -1, i8 0, i8 -25, i8 123, i8 -20, i8 126 }, %struct.nphy_rf_control_override_rev3 { i16 -1, i8 0, i8 -25, i8 124, i8 -20, i8 127 }, %struct.nphy_rf_control_override_rev3 { i16 192, i8 6, i8 -25, i8 -7, i8 -20, i8 -5 }], [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/net/wireless/broadcom/b43/tables_nphy.c\00", [48 x i8] zeroinitializer }, align 32
@b43_ntab_tx_gain_rev0_1_2 = internal constant { [128 x i32], [128 x i8] } { [128 x i32] [i32 63712068, i32 63712066, i32 63711812, i32 63711810, i32 63711556, i32 63449924, i32 63449922, i32 63449668, i32 63449666, i32 63449412, i32 63449410, i32 63449156, i32 63449154, i32 63187780, i32 63187778, i32 63187524, i32 63187522, i32 63187268, i32 63187266, i32 63187012, i32 63187010, i32 63186756, i32 63186754, i32 63186500, i32 63186498, i32 63186244, i32 63186242, i32 63185988, i32 63185986, i32 62925636, i32 62925634, i32 62925380, i32 62925378, i32 62925124, i32 62925122, i32 62924868, i32 62924866, i32 62924612, i32 62924610, i32 61877060, i32 61877058, i32 61876804, i32 61876802, i32 61876548, i32 61876546, i32 61876292, i32 61876290, i32 61876036, i32 61876034, i32 61875780, i32 61875778, i32 61875524, i32 61875522, i32 60828484, i32 60828482, i32 60828228, i32 60828226, i32 60827972, i32 60827970, i32 60827716, i32 60827714, i32 60827460, i32 60827458, i32 59779908, i32 59779906, i32 59779652, i32 59779650, i32 59779396, i32 59779394, i32 59779140, i32 59779138, i32 59778884, i32 59778882, i32 59778628, i32 59778626, i32 59778372, i32 59778370, i32 58731332, i32 58731330, i32 58731076, i32 58731074, i32 58730820, i32 58730818, i32 58730564, i32 58730562, i32 58730308, i32 58730306, i32 58730052, i32 58730050, i32 58729796, i32 58729794, i32 58729540, i32 58729538, i32 58729284, i32 58729282, i32 58729028, i32 58729026, i32 58728772, i32 58728770, i32 58728516, i32 58728514, i32 58728260, i32 58728258, i32 58728004, i32 58728002, i32 58727748, i32 58727746, i32 58727492, i32 58727490, i32 58727236, i32 58727234, i32 58726980, i32 58726978, i32 58726724, i32 58726722, i32 58726468, i32 58726466, i32 58726212, i32 58726210, i32 58725956, i32 58725954, i32 58725700, i32 58725698, i32 58725444, i32 58725442, i32 58725188, i32 58725186, i32 11008], [128 x i8] zeroinitializer }, align 32
@b43_ntab_tx_gain_epa_rev5_5g = internal constant { [128 x i32], [128 x i8] } { [128 x i32] [i32 258080842, i32 258080840, i32 258080838, i32 258080836, i32 258080834, i32 258080832, i32 258080830, i32 258080828, i32 241303620, i32 241303618, i32 241303616, i32 241303614, i32 241303612, i32 241303613, i32 241303611, i32 241303610, i32 224526403, i32 224526401, i32 224526400, i32 224526398, i32 224526397, i32 224526396, i32 224526395, i32 224526394, i32 207749185, i32 207749184, i32 207749183, i32 207749182, i32 207749180, i32 207749179, i32 207749177, i32 207749175, i32 190971974, i32 190971972, i32 190971970, i32 190971968, i32 190971966, i32 190971964, i32 190971963, i32 190971962, i32 174194753, i32 174194752, i32 174194750, i32 174194748, i32 174194747, i32 174194746, i32 174194745, i32 174194744, i32 157417534, i32 157417533, i32 157417532, i32 157417531, i32 157417529, i32 157417527, i32 157417525, i32 157417523, i32 140640324, i32 140640322, i32 140640320, i32 140640318, i32 140640316, i32 140640315, i32 140640314, i32 140640313, i32 123863107, i32 123863106, i32 123863104, i32 123863103, i32 123863101, i32 123863099, i32 123863098, i32 123863097, i32 107085886, i32 107085885, i32 107085884, i32 107085883, i32 107085881, i32 107085879, i32 107085877, i32 107085875, i32 90308678, i32 90308676, i32 90308674, i32 90308672, i32 90308670, i32 90308668, i32 90308667, i32 90308665, i32 73531460, i32 73531458, i32 73531456, i32 73531454, i32 73531452, i32 73531451, i32 73531449, i32 73531448, i32 56754236, i32 56754235, i32 56754234, i32 56754233, i32 56754232, i32 56754231, i32 56754229, i32 56754227, i32 39977036, i32 39977034, i32 39977032, i32 39977031, i32 39977030, i32 39977028, i32 39977027, i32 39977026, i32 23199818, i32 23199816, i32 23199814, i32 23199812, i32 23199811, i32 23199810, i32 23199809, i32 23199808, i32 6422594, i32 6422592, i32 6422590, i32 6422588, i32 6422587, i32 6422585, i32 6422583, i32 6422581], [128 x i8] zeroinitializer }, align 32
@b43_ntab_tx_gain_epa_rev4_5g = internal constant { [128 x i32], [128 x i8] } { [128 x i32] [i32 804388932, i32 804388930, i32 804388928, i32 804388926, i32 804388924, i32 804388923, i32 804388921, i32 804388919, i32 787611716, i32 787611714, i32 787611712, i32 787611710, i32 787611708, i32 787611707, i32 787611705, i32 787611703, i32 770834500, i32 770834498, i32 770834496, i32 770834494, i32 770834492, i32 770834491, i32 770834489, i32 770834487, i32 754057284, i32 754057282, i32 754057280, i32 754057278, i32 754057276, i32 754057275, i32 754057273, i32 754057271, i32 737280068, i32 737280066, i32 737280064, i32 737280062, i32 737280060, i32 737280059, i32 737280057, i32 737280055, i32 720502852, i32 720502850, i32 720502848, i32 720502846, i32 720502844, i32 720502843, i32 720502841, i32 720502839, i32 703725636, i32 703725634, i32 703725632, i32 703725630, i32 703725628, i32 703725627, i32 703725625, i32 703725623, i32 686948420, i32 686948418, i32 686948416, i32 686948414, i32 686948412, i32 686948411, i32 686948409, i32 686948407, i32 670171204, i32 670171202, i32 670171200, i32 670171198, i32 670171196, i32 670171195, i32 670171193, i32 670171191, i32 653393988, i32 653393986, i32 653393984, i32 653393982, i32 653393980, i32 653393979, i32 653393977, i32 653393975, i32 636616772, i32 636616770, i32 636616768, i32 636616766, i32 636616764, i32 636616763, i32 636616761, i32 636616759, i32 619839556, i32 619839554, i32 619839552, i32 619839550, i32 619839548, i32 619839547, i32 619839545, i32 619839544, i32 603062337, i32 603062336, i32 603062335, i32 603062334, i32 603062332, i32 603062331, i32 603062329, i32 603062327, i32 586285124, i32 586285122, i32 586285120, i32 586285118, i32 586285116, i32 586285115, i32 586285113, i32 586285111, i32 569507908, i32 569507906, i32 569507904, i32 569507902, i32 569507900, i32 569507899, i32 569507897, i32 569507895, i32 550633539, i32 550633537, i32 550633534, i32 550633532, i32 550633530, i32 550633528, i32 550633526, i32 550633524], [128 x i8] zeroinitializer }, align 32
@b43_ntab_tx_gain_epa_rev4_hi_pwr_5g = internal constant { [128 x i32], [128 x i8] } { [128 x i32] [i32 804323396, i32 804323394, i32 804323392, i32 804323390, i32 804323388, i32 804323387, i32 804323385, i32 804323383, i32 787546180, i32 787546178, i32 787546176, i32 787546174, i32 787546172, i32 787546171, i32 787546169, i32 787546167, i32 770768964, i32 770768962, i32 770768960, i32 770768958, i32 770768956, i32 770768955, i32 770768953, i32 770768951, i32 753991748, i32 753991746, i32 753991744, i32 753991742, i32 753991740, i32 753991739, i32 753991737, i32 753991735, i32 737214532, i32 737214530, i32 737214528, i32 737214526, i32 737214524, i32 737214523, i32 737214521, i32 737214519, i32 720437316, i32 720437314, i32 720437312, i32 720437310, i32 720437308, i32 720437307, i32 720437305, i32 720437303, i32 703660100, i32 703660098, i32 703660096, i32 703660094, i32 703660092, i32 703660091, i32 703660089, i32 703660087, i32 686882884, i32 686882882, i32 686882880, i32 686882878, i32 686882876, i32 686882875, i32 686882873, i32 686882871, i32 670105668, i32 670105666, i32 670105664, i32 670105662, i32 670105660, i32 670105659, i32 670105657, i32 670105655, i32 653328452, i32 653328450, i32 653328448, i32 653328446, i32 653328444, i32 653328443, i32 653328441, i32 653328439, i32 636551236, i32 636551234, i32 636551232, i32 636551230, i32 636551228, i32 636551227, i32 636551225, i32 636551223, i32 619774020, i32 619774018, i32 619774016, i32 619774014, i32 619774012, i32 619774011, i32 619774009, i32 619774008, i32 602996801, i32 602996800, i32 602996799, i32 602996798, i32 602996796, i32 602996795, i32 602996793, i32 602996791, i32 586219588, i32 586219586, i32 586219584, i32 586219582, i32 586219580, i32 586219579, i32 586219577, i32 586219575, i32 569442372, i32 569442370, i32 569442368, i32 569442366, i32 569442364, i32 569442363, i32 569442361, i32 569442359, i32 550568003, i32 550568001, i32 550567998, i32 550567996, i32 550567994, i32 550567992, i32 550567990, i32 550567988], [128 x i8] zeroinitializer }, align 32
@b43_ntab_tx_gain_epa_rev3_5g = internal constant { [128 x i32], [128 x i8] } { [128 x i32] [i32 -805896124, i32 -805896126, i32 -805896128, i32 -805896130, i32 -805896132, i32 -805896133, i32 -805896135, i32 -805896137, i32 -822673340, i32 -822673342, i32 -822673344, i32 -822673346, i32 -822673348, i32 -822673349, i32 -822673351, i32 -822673353, i32 -839450556, i32 -839450558, i32 -839450560, i32 -839450562, i32 -839450564, i32 -839450565, i32 -839450567, i32 -839450569, i32 -856227772, i32 -856227774, i32 -856227776, i32 -856227778, i32 -856227780, i32 -856227781, i32 -856227783, i32 -856227785, i32 -873004988, i32 -873004990, i32 -873004992, i32 -873004994, i32 -873004996, i32 -873004997, i32 -873004999, i32 -873005001, i32 -889782204, i32 -889782206, i32 -889782208, i32 -889782210, i32 -889782212, i32 -889782213, i32 -889782215, i32 -889782217, i32 -906559420, i32 -906559422, i32 -906559424, i32 -906559426, i32 -906559428, i32 -906559429, i32 -906559431, i32 -906559433, i32 -923336636, i32 -923336638, i32 -923336640, i32 -923336642, i32 -923336644, i32 -923336645, i32 -923336647, i32 -923336649, i32 -940113852, i32 -940113854, i32 -940113856, i32 -940113858, i32 -940113860, i32 -940113861, i32 -940113863, i32 -940113865, i32 -956891068, i32 -956891070, i32 -956891072, i32 -956891074, i32 -956891076, i32 -956891077, i32 -956891079, i32 -956891081, i32 -973668284, i32 -973668286, i32 -973668288, i32 -973668290, i32 -973668292, i32 -973668293, i32 -973668295, i32 -973668297, i32 -990445500, i32 -990445502, i32 -990445504, i32 -990445506, i32 -990445508, i32 -990445509, i32 -990445511, i32 -990445513, i32 -1007222716, i32 -1007222718, i32 -1007222720, i32 -1007222722, i32 -1007222724, i32 -1007222725, i32 -1007222727, i32 -1007222729, i32 -1023999932, i32 -1023999934, i32 -1023999936, i32 -1023999938, i32 -1023999940, i32 -1023999941, i32 -1023999943, i32 -1023999945, i32 -1040777148, i32 -1040777150, i32 -1040777152, i32 -1040777154, i32 -1040777156, i32 -1040777157, i32 -1040777159, i32 -1040777161, i32 -1057554364, i32 -1057554366, i32 -1057554368, i32 -1057554370, i32 -1057554372, i32 -1057554373, i32 -1057554375, i32 -1057554377], [128 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"No 5GHz EPA gain table available for this device\0A\00", [46 x i8] zeroinitializer }, align 32
@b43_ntab_tx_gain_epa_rev3_hi_pwr_2g = internal constant { [128 x i32], [128 x i8] } { [128 x i32] [i32 255918148, i32 255918146, i32 255918144, i32 255918142, i32 255918140, i32 255918139, i32 255918137, i32 255918135, i32 239140932, i32 239140930, i32 239140928, i32 239140926, i32 239140924, i32 239140923, i32 239140921, i32 239140919, i32 222363716, i32 222363714, i32 222363712, i32 222363710, i32 222363708, i32 222363707, i32 222363705, i32 222363703, i32 205586500, i32 205586498, i32 205586496, i32 205586494, i32 205586492, i32 205586491, i32 205586489, i32 205586487, i32 188809284, i32 188809282, i32 188809280, i32 188809278, i32 188809276, i32 188809275, i32 188809273, i32 188809271, i32 172032068, i32 172032066, i32 172032064, i32 172032062, i32 172032060, i32 172032059, i32 172032057, i32 172032055, i32 155254852, i32 155254850, i32 155254848, i32 155254846, i32 155254844, i32 155254843, i32 155254841, i32 155254839, i32 138477636, i32 138477634, i32 138477632, i32 138477630, i32 138477628, i32 138477627, i32 138477625, i32 138477623, i32 121700420, i32 121700418, i32 121700416, i32 121700414, i32 121700412, i32 121700411, i32 121700409, i32 121700407, i32 104923204, i32 104923202, i32 104923200, i32 104923198, i32 104923196, i32 104923195, i32 104923193, i32 104923191, i32 88145988, i32 88145986, i32 88145984, i32 88145982, i32 88145980, i32 88145979, i32 88145977, i32 88145975, i32 71368772, i32 71368770, i32 71368768, i32 71368766, i32 71368764, i32 71368763, i32 71368761, i32 71368759, i32 54591556, i32 54591554, i32 54591552, i32 54591550, i32 54591548, i32 54591547, i32 54591545, i32 54591543, i32 37814340, i32 37814338, i32 37814336, i32 37814334, i32 37814332, i32 37814331, i32 37814329, i32 37814327, i32 21037124, i32 21037122, i32 21037120, i32 21037118, i32 21037116, i32 21037115, i32 21037113, i32 21037111, i32 4259908, i32 4259906, i32 4259904, i32 4259902, i32 4259900, i32 4259899, i32 4259897, i32 4259895], [128 x i8] zeroinitializer }, align 32
@b43_ntab_tx_gain_epa_rev3_2g = internal constant { [128 x i32], [128 x i8] } { [128 x i32] [i32 524353604, i32 524353602, i32 524353600, i32 524353598, i32 524353596, i32 524353595, i32 524353593, i32 524353591, i32 507576388, i32 507576386, i32 507576384, i32 507576382, i32 507576380, i32 507576379, i32 507576377, i32 507576375, i32 490799172, i32 490799170, i32 490799168, i32 490799166, i32 490799164, i32 490799163, i32 490799161, i32 490799159, i32 474021956, i32 474021954, i32 474021952, i32 474021950, i32 474021948, i32 474021947, i32 474021945, i32 474021943, i32 457244740, i32 457244738, i32 457244736, i32 457244734, i32 457244732, i32 457244731, i32 457244729, i32 457244727, i32 440467524, i32 440467522, i32 440467520, i32 440467518, i32 440467516, i32 440467515, i32 440467513, i32 440467511, i32 423690308, i32 423690306, i32 423690304, i32 423690302, i32 423690300, i32 423690299, i32 423690297, i32 423690295, i32 406913092, i32 406913090, i32 406913088, i32 406913086, i32 406913084, i32 406913083, i32 406913081, i32 406913079, i32 390135876, i32 390135874, i32 390135872, i32 390135870, i32 390135868, i32 390135867, i32 390135865, i32 390135863, i32 373358660, i32 373358658, i32 373358656, i32 373358654, i32 373358652, i32 373358651, i32 373358649, i32 373358647, i32 356581444, i32 356581442, i32 356581440, i32 356581438, i32 356581436, i32 356581435, i32 356581433, i32 356581431, i32 339804228, i32 339804226, i32 339804224, i32 339804222, i32 339804220, i32 339804219, i32 339804217, i32 339804215, i32 323027012, i32 323027010, i32 323027008, i32 323027006, i32 323027004, i32 323027003, i32 323027001, i32 323026999, i32 306249796, i32 306249794, i32 306249792, i32 306249790, i32 306249788, i32 306249787, i32 306249785, i32 306249783, i32 289472580, i32 289472578, i32 289472576, i32 289472574, i32 289472572, i32 289472571, i32 289472569, i32 289472567, i32 272695364, i32 272695362, i32 272695360, i32 272695358, i32 272695356, i32 272695355, i32 272695353, i32 272695351], [128 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"No 2GHz EPA gain table available for this device\0A\00", [46 x i8] zeroinitializer }, align 32
@b43_ntab_rf_pwr_offset_2057_rev14_2g = internal constant { [32 x i16], [32 x i8] } { [32 x i16] [i16 -111, i16 -111, i16 -111, i16 -84, i16 -70, i16 -59, i16 -52, i16 -45, i16 -40, i16 -36, i16 -32, i16 -29, i16 -26, i16 -23, i16 -21, i16 -18, i16 -16, i16 -15, i16 -13, i16 -11, i16 -10, i16 -8, i16 -7, i16 -6, i16 -5, i16 -4, i16 -4, i16 -3, i16 -3, i16 -2, i16 -2, i16 -1], [32 x i8] zeroinitializer }, align 32
@b43_ntab_rf_pwr_offset_2057_rev9_2g = internal constant { [32 x i16], [32 x i8] } { [32 x i16] [i16 -133, i16 -133, i16 -107, i16 -92, i16 -81, i16 -73, i16 -66, i16 -61, i16 -56, i16 -52, i16 -48, i16 -44, i16 -41, i16 -37, i16 -34, i16 -31, i16 -28, i16 -25, i16 -22, i16 -19, i16 -17, i16 -14, i16 -12, i16 -10, i16 -9, i16 -7, i16 -5, i16 -4, i16 -3, i16 -2, i16 -1, i16 0], [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"No 2GHz RF power table available for this device\0A\00", [46 x i8] zeroinitializer }, align 32
@b43_ntab_rf_pwr_offset_2057_rev9_5g = internal constant { [16 x i16], [32 x i8] } { [16 x i16] [i16 -101, i16 -94, i16 -86, i16 -79, i16 -72, i16 -65, i16 -57, i16 -50, i16 -42, i16 -35, i16 -28, i16 -21, i16 -16, i16 -9, i16 -4, i16 0], [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"No 5GHz RF power table available for this device\0A\00", [46 x i8] zeroinitializer }, align 32
@nphy_gain_ctl_wa_phy6_radio11_ghz2 = internal global { %struct.nphy_gain_ctl_workaround_entry, [42 x i8] } { %struct.nphy_gain_ctl_workaround_entry { [4 x i8] c"\0A\0E\13\1B", [4 x i8] c"\FB\06\0A\0F", [10 x i8] c"\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A", [10 x i8] c"\03\03\03\03\03\03\03\03\03\03", i16 17022, [4 x i16] [i16 16703, i16 16703, i16 16703, i16 16703], i16 126, i16 102, i16 4212, i16 24, i16 24, i16 24, i16 464, i16 5 }, [42 x i8] zeroinitializer }, align 32
@nphy_gain_ctl_workaround = internal global { [2 x [4 x %struct.nphy_gain_ctl_workaround_entry]], [112 x i8] } { [2 x [4 x %struct.nphy_gain_ctl_workaround_entry]] [[4 x %struct.nphy_gain_ctl_workaround_entry] [%struct.nphy_gain_ctl_workaround_entry { [4 x i8] c"\07\0B\10\17", [4 x i8] c"\FB\06\0A\0E", [10 x i8] c"\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A", [10 x i8] c"\03\03\03\03\03\03\03\03\03\03", i16 25214, [4 x i16] [i16 24895, i16 24895, i16 24895, i16 24895], i16 4222, i16 102, i16 116, i16 24, i16 24, i16 24, i16 525, i16 5 }, %struct.nphy_gain_ctl_workaround_entry { [4 x i8] c"\08\0C\11\19", [4 x i8] c"\FB\06\0A\0E", [10 x i8] c"\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A", [10 x i8] c"\03\03\03\03\03\03\03\03\03\03", i16 21118, [4 x i16] [i16 20799, i16 20799, i16 20799, i16 20799], i16 126, i16 102, i16 116, i16 24, i16 24, i16 24, i16 417, i16 5 }, %struct.nphy_gain_ctl_workaround_entry { [4 x i8] c"\09\0D\12\1A", [4 x i8] c"\FD\07\0B\10", [10 x i8] c"\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A", [10 x i8] c"\03\03\03\03\03\03\03\03\03\03", i16 17022, [4 x i16] [i16 16703, i16 16703, i16 16703, i16 16703], i16 4214, i16 102, i16 0, i16 24, i16 24, i16 24, i16 464, i16 9 }, %struct.nphy_gain_ctl_workaround_entry { [4 x i8] c"\08\0D\12\19", [4 x i8] c"\FB\06\0A\0E", [10 x i8] c"\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A", [10 x i8] c"\03\03\03\03\03\03\03\03\03\03", i16 21118, [4 x i16] [i16 20799, i16 20799, i16 20799, i16 20799], i16 126, i16 102, i16 0, i16 24, i16 24, i16 24, i16 464, i16 5 }], [4 x %struct.nphy_gain_ctl_workaround_entry] [%struct.nphy_gain_ctl_workaround_entry { [4 x i8] c"\07\0B\11\17", [4 x i8] c"\FA\02\06\0A", [10 x i8] c"\13\13\13\13\13\13\13\13\13\13", [10 x i8] c"\06\06\06\06\06\06\06\06\06\06", i16 21214, [4 x i16] [i16 20847, i16 20847, i16 20847, i16 20847], i16 222, i16 202, i16 204, i16 30, i16 30, i16 30, i16 417, i16 25 }, %struct.nphy_gain_ctl_workaround_entry { [4 x i8] c"\08\0C\12\17", [4 x i8] c"\FB\02\06\0A", [10 x i8] c"\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D", [10 x i8] c"\04\04\04\04\04\04\04\04\04\04", i16 25246, [4 x i16] [i16 24911, i16 24911, i16 24911, i16 24911], i16 670, i16 4228, i16 134, i16 36, i16 36, i16 36, i16 263, i16 25 }, %struct.nphy_gain_ctl_workaround_entry { [4 x i8] c"\06\0A\10\15", [4 x i8] c"\F9\00\04\08", [10 x i8] c"\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D", [10 x i8] c"\04\04\04\04\04\04\04\04\04\04", i16 29342, [4 x i16] [i16 29007, i16 29007, i16 29007, i16 29007], i16 670, i16 8324, i16 8326, i16 36, i16 36, i16 36, i16 169, i16 25 }, %struct.nphy_gain_ctl_workaround_entry { [4 x i8] c"\06\0A\10\15", [4 x i8] c"\F9\00\04\08", [10 x i8] c"\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D", [10 x i8] c"\04\04\04\04\04\04\04\04\04\04", i16 29342, [4 x i16] [i16 29007, i16 29007, i16 29007, i16 29007], i16 670, i16 8324, i16 8326, i16 36, i16 36, i16 36, i16 240, i16 25 }]], [112 x i8] zeroinitializer }, align 32
@b43_nphy_get_gain_ctl_workaround_ent.gain_data = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 4202, i32 4204, i32 4212, i32 4220, i32 126, i32 4222, i32 8318, i32 12414], [32 x i8] zeroinitializer }, align 32
@b43_nphy_get_gain_ctl_workaround_ent.gain_data.5 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 98, i32 100, i32 106, i32 4202, i32 4204, i32 4212, i32 4220, i32 8316], [32 x i8] zeroinitializer }, align 32
@tbl_rf_control_override_rev7_over0 = internal constant { [11 x %struct.nphy_rf_control_override_rev7], [50 x i8] } { [11 x %struct.nphy_rf_control_override_rev7] [%struct.nphy_rf_control_override_rev7 { i16 4, i16 122, i16 125, i16 2, i8 1 }, %struct.nphy_rf_control_override_rev7 { i16 8, i16 122, i16 125, i16 4, i8 2 }, %struct.nphy_rf_control_override_rev7 { i16 16, i16 122, i16 125, i16 16, i8 4 }, %struct.nphy_rf_control_override_rev7 { i16 32, i16 122, i16 125, i16 32, i8 5 }, %struct.nphy_rf_control_override_rev7 { i16 64, i16 122, i16 125, i16 64, i8 6 }, %struct.nphy_rf_control_override_rev7 { i16 128, i16 122, i16 125, i16 128, i8 7 }, %struct.nphy_rf_control_override_rev7 { i16 1024, i16 248, i16 250, i16 112, i8 4 }, %struct.nphy_rf_control_override_rev7 { i16 2048, i16 123, i16 126, i16 -1, i8 0 }, %struct.nphy_rf_control_override_rev7 { i16 4096, i16 124, i16 127, i16 -1, i8 0 }, %struct.nphy_rf_control_override_rev7 { i16 24576, i16 840, i16 841, i16 255, i8 0 }, %struct.nphy_rf_control_override_rev7 { i16 8192, i16 840, i16 841, i16 15, i8 0 }], [50 x i8] zeroinitializer }, align 32
@tbl_rf_control_override_rev7_over1 = internal constant { [12 x %struct.nphy_rf_control_override_rev7], [40 x i8] } { [12 x %struct.nphy_rf_control_override_rev7] [%struct.nphy_rf_control_override_rev7 { i16 2, i16 832, i16 833, i16 2, i8 1 }, %struct.nphy_rf_control_override_rev7 { i16 8, i16 832, i16 833, i16 8, i8 3 }, %struct.nphy_rf_control_override_rev7 { i16 32, i16 832, i16 833, i16 32, i8 5 }, %struct.nphy_rf_control_override_rev7 { i16 16, i16 832, i16 833, i16 16, i8 4 }, %struct.nphy_rf_control_override_rev7 { i16 4, i16 832, i16 833, i16 4, i8 2 }, %struct.nphy_rf_control_override_rev7 { i16 128, i16 832, i16 833, i16 1792, i8 8 }, %struct.nphy_rf_control_override_rev7 { i16 2048, i16 832, i16 833, i16 16384, i8 14 }, %struct.nphy_rf_control_override_rev7 { i16 1024, i16 832, i16 833, i16 8192, i8 13 }, %struct.nphy_rf_control_override_rev7 { i16 512, i16 832, i16 833, i16 2048, i8 12 }, %struct.nphy_rf_control_override_rev7 { i16 256, i16 832, i16 833, i16 256, i8 11 }, %struct.nphy_rf_control_override_rev7 { i16 64, i16 832, i16 833, i16 64, i8 6 }, %struct.nphy_rf_control_override_rev7 { i16 1, i16 832, i16 833, i16 1, i8 0 }], [40 x i8] zeroinitializer }, align 32
@tbl_rf_control_override_rev7_over2 = internal constant { [5 x %struct.nphy_rf_control_override_rev7], [46 x i8] } { [5 x %struct.nphy_rf_control_override_rev7] [%struct.nphy_rf_control_override_rev7 { i16 8, i16 836, i16 837, i16 8, i8 3 }, %struct.nphy_rf_control_override_rev7 { i16 2, i16 836, i16 837, i16 2, i8 1 }, %struct.nphy_rf_control_override_rev7 { i16 1, i16 836, i16 837, i16 1, i8 0 }, %struct.nphy_rf_control_override_rev7 { i16 4, i16 836, i16 837, i16 4, i8 2 }, %struct.nphy_rf_control_override_rev7 { i16 16, i16 836, i16 837, i16 16, i8 4 }], [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Invalid override value %d\0A\00", [37 x i8] zeroinitializer }, align 32
@b43_ntab_noisevar_r7 = internal constant { [256 x i32], [256 x i8] } { [256 x i32] [i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333], [256 x i8] zeroinitializer }, align 32
@b43_ntab_estimatepowerlt0_r3 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"UTTSRRQQPOONNMLLKJIIHGFFEDCBA@@?>=<:98765321/.,+)'%#!\1F\1D\1A\18\15\12\0E\0B\07\02\FD", [32 x i8] zeroinitializer }, align 32
@b43_ntab_estimatepowerlt1_r3 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"UTTSRRQQPOONNMLLKJIIHGFFEDCBA@@?>=<:98765321/.,+)'%#!\1F\1D\1A\18\15\12\0E\0B\07\02\FD", [32 x i8] zeroinitializer }, align 32
@b43_ntab_adjustpower0_r3 = internal constant { [128 x i8], [32 x i8] } zeroinitializer, align 32
@b43_ntab_adjustpower1_r3 = internal constant { [128 x i8], [32 x i8] } zeroinitializer, align 32
@b43_ntab_gainctl0_r3 = internal constant { [128 x i32], [128 x i8] } { [128 x i32] [i32 1542914116, i32 1542914114, i32 1542914112, i32 1542914110, i32 1542914108, i32 1542914107, i32 1542914105, i32 1542914103, i32 1542914102, i32 1542914100, i32 1542914099, i32 1542914097, i32 1542914096, i32 1537671236, i32 1537671234, i32 1537671232, i32 1537671230, i32 1537671228, i32 1537671227, i32 1537671225, i32 1537671223, i32 1537671222, i32 1537671220, i32 1537671219, i32 1534525508, i32 1534525506, i32 1534525504, i32 1534525502, i32 1534525500, i32 1534525499, i32 1534525497, i32 1534525495, i32 1534525494, i32 1534525492, i32 1534525491, i32 1534525489, i32 1534525488, i32 1534525487, i32 1534525485, i32 1534525484, i32 1531379780, i32 1531379778, i32 1531379776, i32 1531379774, i32 1531379772, i32 1531379771, i32 1531379769, i32 1531379767, i32 1531379766, i32 1531379764, i32 1531379763, i32 1531379761, i32 1531379760, i32 1531379759, i32 1531379757, i32 1531379756, i32 1531379755, i32 1531379754, i32 1529282628, i32 1529282626, i32 1529282624, i32 1529282622, i32 1529282620, i32 1529282619, i32 1529282617, i32 1529282615, i32 1529282614, i32 1529282612, i32 1529282611, i32 1529282609, i32 1529282608, i32 1529282607, i32 1528234052, i32 1528234050, i32 1528234048, i32 1528234046, i32 1528234044, i32 1528234043, i32 1528234041, i32 1528234039, i32 1528234038, i32 1528234036, i32 1528234035, i32 1528234033, i32 1528234032, i32 1528234031, i32 1528234029, i32 1528234028, i32 1528234027, i32 1528234026, i32 1528234024, i32 1528234023, i32 1528234022, i32 1528234021, i32 1528234020, i32 1528234019, i32 1527185476, i32 1527185474, i32 1527185472, i32 1527185470, i32 1527185468, i32 1527185467, i32 1527185465, i32 1527185463, i32 1527185462, i32 1527185460, i32 1527185459, i32 1527185457, i32 1527185456, i32 1527185455, i32 1527185453, i32 1527185452, i32 1527185451, i32 1527185450, i32 1527185448, i32 1527185447, i32 1527185446, i32 1527185445, i32 1527185444, i32 1527185443, i32 1527185442, i32 1527185441, i32 1527185440, i32 1527185439, i32 1527185438, i32 1527185437, i32 1527185437, i32 1527185436], [128 x i8] zeroinitializer }, align 32
@b43_ntab_gainctl1_r3 = internal constant { [128 x i32], [128 x i8] } { [128 x i32] [i32 1542914116, i32 1542914114, i32 1542914112, i32 1542914110, i32 1542914108, i32 1542914107, i32 1542914105, i32 1542914103, i32 1542914102, i32 1542914100, i32 1542914099, i32 1542914097, i32 1542914096, i32 1537671236, i32 1537671234, i32 1537671232, i32 1537671230, i32 1537671228, i32 1537671227, i32 1537671225, i32 1537671223, i32 1537671222, i32 1537671220, i32 1537671219, i32 1534525508, i32 1534525506, i32 1534525504, i32 1534525502, i32 1534525500, i32 1534525499, i32 1534525497, i32 1534525495, i32 1534525494, i32 1534525492, i32 1534525491, i32 1534525489, i32 1534525488, i32 1534525487, i32 1534525485, i32 1534525484, i32 1531379780, i32 1531379778, i32 1531379776, i32 1531379774, i32 1531379772, i32 1531379771, i32 1531379769, i32 1531379767, i32 1531379766, i32 1531379764, i32 1531379763, i32 1531379761, i32 1531379760, i32 1531379759, i32 1531379757, i32 1531379756, i32 1531379755, i32 1531379754, i32 1529282628, i32 1529282626, i32 1529282624, i32 1529282622, i32 1529282620, i32 1529282619, i32 1529282617, i32 1529282615, i32 1529282614, i32 1529282612, i32 1529282611, i32 1529282609, i32 1529282608, i32 1529282607, i32 1528234052, i32 1528234050, i32 1528234048, i32 1528234046, i32 1528234044, i32 1528234043, i32 1528234041, i32 1528234039, i32 1528234038, i32 1528234036, i32 1528234035, i32 1528234033, i32 1528234032, i32 1528234031, i32 1528234029, i32 1528234028, i32 1528234027, i32 1528234026, i32 1528234024, i32 1528234023, i32 1528234022, i32 1528234021, i32 1528234020, i32 1528234019, i32 1527185476, i32 1527185474, i32 1527185472, i32 1527185470, i32 1527185468, i32 1527185467, i32 1527185465, i32 1527185463, i32 1527185462, i32 1527185460, i32 1527185459, i32 1527185457, i32 1527185456, i32 1527185455, i32 1527185453, i32 1527185452, i32 1527185451, i32 1527185450, i32 1527185448, i32 1527185447, i32 1527185446, i32 1527185445, i32 1527185444, i32 1527185443, i32 1527185442, i32 1527185441, i32 1527185440, i32 1527185439, i32 1527185438, i32 1527185437, i32 1527185437, i32 1527185436], [128 x i8] zeroinitializer }, align 32
@b43_ntab_iqlt0_r3 = internal constant { [128 x i32], [128 x i8] } zeroinitializer, align 32
@b43_ntab_iqlt1_r3 = internal constant { [128 x i32], [128 x i8] } zeroinitializer, align 32
@b43_ntab_loftlt0_r3 = internal constant { [128 x i16], [64 x i8] } zeroinitializer, align 32
@b43_ntab_loftlt1_r3 = internal constant { [128 x i16], [64 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unsupported antswlut: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@b43_ntab_pilot_r3 = internal constant { [88 x i16], [48 x i8] } { [88 x i16] [i16 -248, i16 -248, i16 -248, i16 -248, i16 -248, i16 -248, i16 -248, i16 -248, i16 -32555, i16 -32555, i16 -32555, i16 -32555, i16 -32555, i16 -32555, i16 -32555, i16 -32555, i16 -246, i16 -126, i16 -96, i16 -216, i16 -1, i16 -1, i16 -1, i16 -1, i16 -126, i16 -96, i16 -216, i16 -246, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1985, i16 -1505, i16 -1385, i16 -1355, i16 -3395, i16 -3905, i16 -1, i16 -1, i16 -4073, i16 -2027, i16 -3563, i16 -3947, i16 -4043, i16 -4067, i16 -1, i16 -1, i16 -248, i16 -254, i16 -128, i16 -224, i16 -248, i16 -254, i16 -128, i16 -224, i16 -4065, i16 -2025, i16 -1515, i16 -3435, i16 -3915, i16 -4035, i16 -1, i16 -1, i16 -2006, i16 -1526, i16 -1406, i16 -1376, i16 -3416, i16 -3926, i16 -1, i16 -1, i16 -4094, i16 -2048, i16 -3584, i16 -3968, i16 -4064, i16 -4088, i16 -1, i16 -1, i16 -4086, i16 -2046, i16 -1536, i16 -3456, i16 -3936, i16 -4056, i16 -1, i16 -1], [48 x i8] zeroinitializer }, align 32
@b43_ntab_tdtrn_r3 = internal constant { [704 x i32], [704 x i8] } { [704 x i32] [i32 102499868, i32 5303912, i32 -174916042, i32 -28175626, i32 3128, i32 -28175626, i32 -174916042, i32 5303912, i32 102499868, i32 -295174064, i32 -29952622, i32 318176850, i32 204996608, i32 318176850, i32 -29952622, i32 -295174064, i32 102499868, i32 5303912, i32 -174916042, i32 -28175626, i32 3128, i32 -28175626, i32 -174916042, i32 5303912, i32 102499868, i32 -295174064, i32 -29952622, i32 318176850, i32 204996608, i32 318176850, i32 -29952622, i32 -295174064, i32 98764259, i32 5107468, i32 -168559033, i32 -27192762, i32 3015, i32 -27192762, i32 -168559033, i32 5107468, i32 98764259, i32 -284426163, i32 -28838413, i32 306642529, i32 197591040, i32 306642529, i32 -28838413, i32 -284426163, i32 98764259, i32 5107468, i32 -168559033, i32 -27192762, i32 3015, i32 -27192762, i32 -168559033, i32 5107468, i32 98764259, i32 -284426163, i32 -28838413, i32 306642529, i32 197591040, i32 306642529, i32 -28838413, i32 -284426163, i32 -94832040, i32 -124451781, i32 -11793984, i32 -70844504, i32 -75172988, i32 127465209, i32 91619618, i32 92539382, i32 189792256, i32 95941954, i32 143000626, i32 115212007, i32 -75172988, i32 -103217564, i32 -135789988, i32 16775101, i32 94897576, i32 -138608385, i32 39647208, i32 107280857, i32 -209388668, i32 -18413859, i32 70387846, i32 -180222537, i32 2896, i32 167118212, i32 19006838, i32 -151451752, i32 -209388668, i32 -5702714, i32 163643212, i32 71039125, i32 47448788, i32 131990128, i32 -57276516, i32 -116719980, i32 -33489108, i32 47449693, i32 153747606, i32 1375160, i32 -47383252, i32 124451644, i32 9893714, i32 -107872889, i32 -81001984, i32 -21431968, i32 148962454, i32 77071016, i32 -47383252, i32 44565656, i32 -57276192, i32 -111083848, i32 33618732, i32 -41420399, i32 -145620842, i32 -79952022, i32 -47383252, i32 -71827436, i32 9832746, i32 106758868, i32 -13828608, i32 -23791350, i32 127728790, i32 40896478, i32 47448788, i32 40896478, i32 127728790, i32 -23791350, i32 -13828608, i32 106758868, i32 9832746, i32 -71827436, i32 -47383252, i32 -79952022, i32 -145620842, i32 -41420399, i32 33618732, i32 -111083848, i32 -57276192, i32 44565656, i32 -47383252, i32 77071016, i32 148962454, i32 -21431968, i32 -81001984, i32 -107872889, i32 9893714, i32 124451644, i32 -47383252, i32 1375160, i32 153747606, i32 47449693, i32 -33489108, i32 -116719980, i32 -57276516, i32 131990128, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 103415808, i32 -17168551, i32 146278664, i32 -208208851, i32 -103414692, i32 -61934072, i32 -146213482, i32 129107903, i32 103417386, i32 -129042367, i32 -146213482, i32 61999608, i32 -103414692, i32 208274387, i32 146278664, i32 17234087, i32 103415808, i32 -17106777, i32 146339576, i32 -208272429, i32 -103351388, i32 -61994504, i32 -146273686, i32 129169473, i32 103479766, i32 -129103937, i32 -146273686, i32 62060040, i32 -103351388, i32 208337965, i32 146339576, i32 17172313, i32 103415808, i32 -17168551, i32 146278664, i32 -208208851, i32 -103414692, i32 -61934072, i32 -146213482, i32 129107903, i32 103417386, i32 -129042367, i32 -146213482, i32 61999608, i32 -103414692, i32 208274387, i32 146278664, i32 17234087, i32 103415808, i32 -17106777, i32 146339576, i32 -208272429, i32 -103351388, i32 -61994504, i32 -146273686, i32 129169473, i32 103479766, i32 -129103937, i32 -146273686, i32 62060040, i32 -103351388, i32 208337965, i32 146339576, i32 17172313, i32 102499868, i32 -13631331, i32 -5107391, i32 -41419948, i32 -161612199, i32 49215902, i32 23523388, i32 -521802, i32 2212, i32 717867, i32 15725943, i32 -92009486, i32 -66912431, i32 136712039, i32 -1047697, i32 138607043, i32 0, i32 104724414, i32 -57606128, i32 -258344998, i32 11469822, i32 -200407684, i32 176815889, i32 198574070, i32 -144965632, i32 -162922488, i32 264568474, i32 107150610, i32 27724195, i32 78381689, i32 -289472434, i32 -10288944, i32 -102434332, i32 13696867, i32 5172927, i32 41485484, i32 161677735, i32 -49150366, i32 -23457852, i32 587338, i32 63324, i32 -652331, i32 -15660407, i32 92075022, i32 66977967, i32 -136646503, i32 1113233, i32 -138541507, i32 0, i32 -104658878, i32 57671664, i32 258410534, i32 -11404286, i32 200473220, i32 -176750353, i32 -198508534, i32 144965632, i32 162988024, i32 -264502938, i32 -107085074, i32 -27658659, i32 -78316153, i32 289537970, i32 10354480, i32 98762752, i32 -16382203, i32 139724960, i32 -198837159, i32 -98761686, i32 -59181446, i32 -139659762, i32 123340646, i32 98764259, i32 -123275110, i32 -139659762, i32 59246982, i32 -98761686, i32 198902695, i32 139724960, i32 16447739, i32 98762752, i32 -16320261, i32 139786080, i32 -198900825, i32 -98698282, i32 -59242106, i32 -139720206, i32 123402394, i32 98826781, i32 -123336858, i32 -139720206, i32 59307642, i32 -98698282, i32 198966361, i32 139786080, i32 16385797, i32 98762752, i32 -16382203, i32 139724960, i32 -198837159, i32 -98761686, i32 -59181446, i32 -139659762, i32 123340646, i32 98764259, i32 -123275110, i32 -139659762, i32 59246982, i32 -98761686, i32 198902695, i32 139724960, i32 16447739, i32 98762752, i32 -16320261, i32 139786080, i32 -198900825, i32 -98698282, i32 -59242106, i32 -139720206, i32 123402394, i32 98826781, i32 -123336858, i32 -139720206, i32 59307642, i32 -98698282, i32 198966361, i32 139786080, i32 16385797, i32 -94832040, i32 -118424064, i32 71829309, i32 -37093818, i32 -107937192, i32 144507911, i32 -44239078, i32 45088224, i32 138282134, i32 -10877120, i32 -8716905, i32 16646641, i32 591918, i32 -90898571, i32 -20055830, i32 -5179757, i32 -47383976, i32 70516502, i32 -73136675, i32 -94305471, i32 111544011, i32 3800365, i32 108526231, i32 33162720, i32 -124387266, i32 123340427, i32 19725374, i32 -98305651, i32 -58917565, i32 -7275507, i32 29428098, i32 12976598, i32 -47383252, i32 30802118, i32 159515073, i32 -66191472, i32 -45876100, i32 -108135901, i32 -63045332, i32 109774682, i32 4126870, i32 98566650, i32 -90765705, i32 -47382471, i32 113968806, i32 54655585, i32 98433956, i32 -15334349, i32 -94831316, i32 -158072912, i32 -118817075, i32 -9045356, i32 137232393, i32 32571646, i32 -40370310, i32 121700186, i32 76941374, i32 -35650897, i32 -149226148, i32 67569821, i32 39385489, i32 -28901943, i32 121439304, i32 -33490704, i32 -47383252, i32 -52427520, i32 -66454052, i32 -26738345, i32 80151921, i32 -63242463, i32 -53018072, i32 91030135, i32 33619456, i32 2292007, i32 -29621461, i32 -62587076, i32 65666011, i32 72811283, i32 80346972, i32 852920, i32 -94896128, i32 -68615982, i32 -103743989, i32 19267065, i32 69534143, i32 53017131, i32 -5700880, i32 -98238121, i32 33619456, i32 57934904, i32 -16513539, i32 51183186, i32 3668793, i32 -9894715, i32 83426595, i32 -47055845, i32 -47383252, i32 -65274575, i32 -48036616, i32 80084841, i32 -80150473, i32 -28179700, i32 100531972, i32 70779764, i32 -33553920, i32 22542885, i32 49348521, i32 -97844440, i32 29295653, i32 -34012891, i32 -32769584, i32 13827049, i32 64088, i32 62390285, i32 -10746679, i32 51577943, i32 -69532695, i32 -12780476, i32 53214780, i32 -114884574, i32 -33553920, i32 41354605, i32 36240599, i32 -14549958, i32 91292871, i32 22543976, i32 -35849207, i32 83950816, i32 -47383252, i32 83950816, i32 -35849207, i32 22543976, i32 91292871, i32 -14549958, i32 36240599, i32 41354605, i32 -33553920, i32 -114884574, i32 53214780, i32 -12780476, i32 -69532695, i32 51577943, i32 -10746679, i32 62390285, i32 64088, i32 13827049, i32 -32769584, i32 -34012891, i32 29295653, i32 -97844440, i32 49348521, i32 22542885, i32 -33553920, i32 70779764, i32 100531972, i32 -28179700, i32 -80150473, i32 80084841, i32 -48036616, i32 -65274575, i32 -47383252, i32 -47055845, i32 83426595, i32 -9894715, i32 3668793, i32 51183186, i32 -16513539, i32 57934904, i32 33619456, i32 -98238121, i32 -5700880, i32 53017131, i32 69534143, i32 19267065, i32 -103743989, i32 -68615982, i32 -94896128, i32 852920, i32 80346972, i32 72811283, i32 65666011, i32 -62587076, i32 -29621461, i32 2292007, i32 33619456, i32 91030135, i32 -53018072, i32 -63242463, i32 80151921, i32 -26738345, i32 -66454052, i32 -52427520, i32 94896128, i32 -15726914, i32 134219850, i32 -191038338, i32 -94895104, i32 -56822054, i32 -134154638, i32 118490908, i32 94897576, i32 -118425372, i32 -134154638, i32 56887590, i32 -94895104, i32 191103874, i32 134219850, i32 15792450, i32 94896128, i32 -15664830, i32 134281142, i32 -191102078, i32 -94831616, i32 -56882906, i32 -134215282, i32 118552804, i32 94960216, i32 -118487268, i32 -134215282, i32 56948442, i32 -94831616, i32 191167614, i32 134281142, i32 15730366, i32 94896128, i32 -15726914, i32 134219850, i32 -191038338, i32 -94895104, i32 -56822054, i32 -134154638, i32 118490908, i32 94897576, i32 -118425372, i32 -134154638, i32 56887590, i32 -94895104, i32 191103874, i32 134219850, i32 15792450, i32 94896128, i32 -15664830, i32 134281142, i32 -191102078, i32 -94831616, i32 -56882906, i32 -134215282, i32 118552804, i32 94960216, i32 -118487268, i32 -134215282, i32 56948442, i32 -94831616, i32 191167614, i32 134281142, i32 15730366], [704 x i8] zeroinitializer }, align 32
@b43_ntab_mcs_r3 = internal constant { [128 x i16], [64 x i8] } { [128 x i16] [i16 0, i16 8, i16 10, i16 16, i16 18, i16 25, i16 26, i16 28, i16 128, i16 136, i16 138, i16 144, i16 146, i16 153, i16 154, i16 156, i16 256, i16 264, i16 266, i16 272, i16 274, i16 281, i16 282, i16 284, i16 384, i16 392, i16 394, i16 400, i16 402, i16 409, i16 410, i16 412, i16 0, i16 152, i16 160, i16 168, i16 154, i16 162, i16 170, i16 288, i16 296, i16 296, i16 304, i16 312, i16 312, i16 320, i16 290, i16 298, i16 298, i16 306, i16 314, i16 314, i16 322, i16 424, i16 432, i16 440, i16 432, i16 440, i16 448, i16 456, i16 448, i16 456, i16 464, i16 464, i16 472, i16 426, i16 434, i16 442, i16 434, i16 442, i16 450, i16 458, i16 450, i16 458, i16 466, i16 466, i16 474, i16 1, i16 2, i16 4, i16 9, i16 12, i16 17, i16 20, i16 24, i16 32, i16 33, i16 34, i16 36, i16 129, i16 130, i16 132, i16 137, i16 140, i16 145, i16 148, i16 152, i16 160, i16 161, i16 162, i16 164, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7], [64 x i8] zeroinitializer }, align 32
@b43_ntab_tdi20a0_r3 = internal constant { [55 x i32], [36 x i8] } { [55 x i32] [i32 594470, i32 660521, i32 743085, i32 809136, i32 875187, i32 957622, i32 1023674, i32 49469, i32 131841, i32 197892, i32 263944, i32 329995, i32 412558, i32 610961, i32 677012, i32 759576, i32 825639, i32 891690, i32 974126, i32 1040177, i32 65972, i32 148407, i32 214459, i32 280510, i32 362882, i32 429061, i32 627465, i32 693516, i32 776079, i32 842130, i32 908182, i32 990617, i32 24488, i32 82476, i32 164911, i32 230962, i32 297013, i32 379448, i32 445628, i32 644031, i32 726531, i32 792582, i32 858634, i32 924685, i32 1007120, i32 32915, i32 98967, i32 181402, i32 247424, i32 313472, i32 396032, i32 462080, i32 0, i32 0, i32 0], [36 x i8] zeroinitializer }, align 32
@b43_ntab_tdi20a1_r3 = internal constant { [55 x i32], [36 x i8] } { [55 x i32] [i32 84774, i32 167209, i32 234413, i32 300592, i32 383027, i32 449078, i32 629818, i32 695869, i32 770177, i32 836228, i32 902280, i32 984715, i32 18574, i32 101265, i32 184852, i32 250904, i32 317095, i32 399530, i32 465582, i32 646321, i32 728756, i32 786743, i32 852795, i32 918846, i32 1001218, i32 35077, i32 134153, i32 201356, i32 267407, i32 333586, i32 416022, i32 596761, i32 662824, i32 745260, i32 803247, i32 869298, i32 951733, i32 1017784, i32 51644, i32 150719, i32 217859, i32 283910, i32 366474, i32 432525, i32 613264, i32 679315, i32 761751, i32 819738, i32 885760, i32 968192, i32 1034240, i32 68096, i32 0, i32 0, i32 0], [36 x i8] zeroinitializer }, align 32
@b43_ntab_tdi40a0_r3 = internal constant { [110 x i32], [104 x i8] } { [110 x i32] [i32 1155910, i32 1273039, i32 1373657, i32 1458658, i32 1559403, i32 1660021, i32 1778563, i32 1879308, i32 1996310, i32 33311, i32 134056, i32 251058, i32 353351, i32 470480, i32 571098, i32 656099, i32 756844, i32 857590, i32 1172612, i32 1289741, i32 1390359, i32 1475360, i32 1576105, i32 1676851, i32 1795400, i32 1896145, i32 2013147, i32 50148, i32 150893, i32 268023, i32 370053, i32 487183, i32 587800, i32 672801, i32 773547, i32 890676, i32 1189449, i32 1306578, i32 1407196, i32 1492197, i32 1592942, i32 1710072, i32 1812102, i32 1912848, i32 2029977, i32 66850, i32 167596, i32 284725, i32 386890, i32 504019, i32 604765, i32 689638, i32 790383, i32 907513, i32 1206151, i32 1323281, i32 1424026, i32 1508899, i32 1609645, i32 1726774, i32 1828939, i32 1946068, i32 2046814, i32 83687, i32 200816, i32 301562, i32 403592, i32 520722, i32 621467, i32 706468, i32 807086, i32 924215, i32 1222988, i32 1340117, i32 1440863, i32 1525864, i32 1626481, i32 1743611, i32 1845641, i32 1962771, i32 2063516, i32 100517, i32 217519, i32 318264, i32 436813, i32 537559, i32 638304, i32 723305, i32 823923, i32 941052, i32 1256074, i32 1356820, i32 1457565, i32 1542566, i32 1643184, i32 1760313, i32 1862606, i32 1979608, i32 2080353, i32 117354, i32 234356, i32 335101, i32 453643, i32 554261, i32 655006, i32 740007, i32 840625, i32 957754, i32 0, i32 0], [104 x i8] zeroinitializer }, align 32
@b43_ntab_tdi40a1_r3 = internal constant { [110 x i32], [104 x i8] } { [110 x i32] [i32 2022198, i32 76234, i32 176979, i32 294109, i32 379110, i32 496111, i32 596985, i32 698887, i32 799633, i32 916762, i32 1181987, i32 1298989, i32 1399863, i32 1501899, i32 1602644, i32 1719774, i32 1804775, i32 1905392, i32 2039034, i32 93064, i32 210066, i32 310811, i32 395812, i32 512814, i32 613688, i32 715852, i32 816469, i32 933599, i32 1198824, i32 1315825, i32 1418107, i32 1518729, i32 1619347, i32 1720732, i32 1821477, i32 1938479, i32 2057145, i32 109901, i32 226903, i32 311904, i32 429033, i32 529651, i32 631932, i32 732554, i32 833172, i32 934557, i32 1215526, i32 1332656, i32 1434810, i32 1535566, i32 1636184, i32 1737569, i32 1838314, i32 1955444, i32 2073981, i32 126603, i32 243605, i32 328606, i32 445735, i32 546481, i32 648646, i32 749391, i32 850009, i32 951394, i32 1248747, i32 1349493, i32 1451523, i32 1552268, i32 1652886, i32 1754271, i32 1855016, i32 1972146, i32 42695, i32 143440, i32 260570, i32 345443, i32 462572, i32 563318, i32 665348, i32 766093, i32 866839, i32 1148320, i32 1265449, i32 1366195, i32 1468360, i32 1569105, i32 1669851, i32 1771108, i32 1871853, i32 1988983, i32 59397, i32 160143, i32 277272, i32 362145, i32 479275, i32 580020, i32 682185, i32 782930, i32 900060, i32 1165285, i32 1282286, i32 1383032, i32 1485062, i32 1585808, i32 1686553, i32 1787938, i32 1888556, i32 2005685, i32 0, i32 0], [104 x i8] zeroinitializer }, align 32
@b43_ntab_channelest_r3 = internal constant { [96 x i32], [96 x i8] } { [96 x i32] [i32 1145324612, i32 1145324612, i32 1145324612, i32 1145324612, i32 1145324612, i32 1145324612, i32 1145324612, i32 1145324612, i32 269488144, i32 269488144, i32 269488144, i32 269488144, i32 269488144, i32 269488144, i32 269488144, i32 269488144, i32 1145324612, i32 1145324612, i32 1145324612, i32 1145324612, i32 1145324612, i32 1145324612, i32 1145324612, i32 1145324612, i32 269488144, i32 269488144, i32 269488144, i32 269488144, i32 269488144, i32 269488144, i32 269488144, i32 269488144, i32 1145324612, i32 1145324612, i32 1145324612, i32 1145324612, i32 1145324612, i32 1145324612, i32 1145324612, i32 1145324612, i32 1145324612, i32 1145324612, i32 1145324612, i32 1145324612, i32 1145324612, i32 1145324612, i32 1145324612, i32 1145324612, i32 269488144, i32 269488144, i32 269488144, i32 269488144, i32 269488144, i32 269488144, i32 269488144, i32 269488144, i32 269488144, i32 269488144, i32 269488144, i32 269488144, i32 269488144, i32 269488144, i32 269488144, i32 269488144, i32 1145324612, i32 1145324612, i32 1145324612, i32 1145324612, i32 1145324612, i32 1145324612, i32 1145324612, i32 1145324612, i32 1145324612, i32 1145324612, i32 1145324612, i32 1145324612, i32 1145324612, i32 1145324612, i32 1145324612, i32 1145324612, i32 269488144, i32 269488144, i32 269488144, i32 269488144, i32 269488144, i32 269488144, i32 269488144, i32 269488144, i32 269488144, i32 269488144, i32 269488144, i32 269488144, i32 269488144, i32 269488144, i32 269488144, i32 269488144], [96 x i8] zeroinitializer }, align 32
@b43_ntab_framelookup_r3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\02\04\14\14\03\05\16\16\0A\0C\1C\1C\0B\0D\1E\1E\06\08\18\18\07\09\1A\1A\0E\10 (\0F\11\22*", [32 x i8] zeroinitializer }, align 32
@b43_ntab_framestruct_r3 = internal constant { <{ [682 x i32], [150 x i32] }>, [832 x i8] } { <{ [682 x i32], [150 x i32] }> <{ [682 x i32] [i32 134236676, i32 1048576, i32 16779781, i32 1048608, i32 159401222, i32 1048624, i32 159401223, i32 1048624, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 134236684, i32 1048580, i32 16779789, i32 1048612, i32 159401230, i32 1048628, i32 159401231, i32 1048628, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2564, i32 1048576, i32 285248005, i32 1048608, i32 427869446, i32 1048624, i32 562103558, i32 1048624, i32 562103558, i32 1048624, i32 25167108, i32 1048624, i32 293635333, i32 1048624, i32 696337671, i32 17825840, i32 2564, i32 1048576, i32 285248005, i32 1048608, i32 562103558, i32 1048624, i32 562103558, i32 1048624, i32 696337671, i32 17825840, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2572, i32 1048584, i32 285248013, i32 1048616, i32 427869454, i32 1048632, i32 562103566, i32 1048632, i32 562103566, i32 1048632, i32 25167116, i32 1048632, i32 293635341, i32 1048632, i32 696337679, i32 17825848, i32 2572, i32 1048584, i32 285248013, i32 1048616, i32 562103566, i32 1048632, i32 562103566, i32 1048632, i32 696337679, i32 17825848, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 134236676, i32 1048576, i32 16779781, i32 1048608, i32 427869446, i32 1048624, i32 427869446, i32 1048624, i32 293635332, i32 1048624, i32 964807173, i32 1048624, i32 696337671, i32 17825840, i32 0, i32 0, i32 268470788, i32 1048576, i32 964807173, i32 1048624, i32 427869446, i32 1048624, i32 696337671, i32 17825840, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 134236684, i32 1048584, i32 16779789, i32 1048616, i32 427869454, i32 1048632, i32 427869454, i32 1048632, i32 293635340, i32 1048632, i32 964807181, i32 1048632, i32 696337679, i32 17825848, i32 0, i32 0, i32 268470796, i32 1048584, i32 964807181, i32 1048632, i32 427869454, i32 1048632, i32 696337679, i32 17825848, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1073878020, i32 1048576, i32 33559557, i32 1048640, i32 184568326, i32 26214496, i32 318802438, i32 26214496, i32 318802438, i32 26214496, i32 1124207108, i32 1048672, i32 453036549, i32 1048672, i32 587270663, i32 22020192, i32 1073878020, i32 1048576, i32 436261893, i32 1048640, i32 318802438, i32 26214496, i32 318802438, i32 26214496, i32 587270663, i32 22020192, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1073878028, i32 1048592, i32 33559565, i32 1048656, i32 184568334, i32 26214512, i32 318802446, i32 26214512, i32 318802446, i32 26214512, i32 1124207116, i32 1048688, i32 453036557, i32 1048688, i32 587270671, i32 22020208, i32 1073878028, i32 1048592, i32 436261901, i32 1048656, i32 318802446, i32 26214512, i32 318802446, i32 26214512, i32 587270671, i32 22020208, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1342346244, i32 1048576, i32 838964229, i32 1048640, i32 184568326, i32 26214496, i32 184568326, i32 26214496, i32 1526909444, i32 1048672, i32 989975557, i32 1048672, i32 587270663, i32 22020192, i32 0, i32 0, i32 1476580356, i32 1048576, i32 989975557, i32 1048672, i32 184568326, i32 26214496, i32 587270663, i32 22020192, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1342346252, i32 1048592, i32 838964237, i32 1048656, i32 184568334, i32 26214512, i32 184568334, i32 26214512, i32 1526909452, i32 1048688, i32 989975565, i32 1048688, i32 587270671, i32 22020208, i32 0, i32 0, i32 1476580364, i32 1048592, i32 989975565, i32 1048688, i32 184568334, i32 26214512, i32 587270671, i32 22020208, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1073878020, i32 1001472, i32 1644368901, i32 1048640, i32 1392675334, i32 26214496, i32 1392675335, i32 26214496, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1073878028, i32 1001480, i32 1644368909, i32 1048648, i32 1392675342, i32 26214504, i32 1392675343, i32 26214504, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2572, i32 1048580, i32 285248013, i32 1048612, i32 427869454, i32 1048628, i32 562103566, i32 1048628, i32 562103566, i32 1048628, i32 25167116, i32 1048632, i32 293635341, i32 1048632, i32 293700877, i32 1048632, i32 696337679, i32 17825848, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2572, i32 1048584, i32 285248013, i32 1048616, i32 562103566, i32 1048632, i32 562103566, i32 1048632, i32 293700877, i32 1048632, i32 696337679, i32 17825848, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 134236676, i32 1048576, i32 16779781, i32 1048608, i32 25216262, i32 1048624, i32 25216262, i32 1048624, i32 562087180, i32 1048624, i32 1233259021, i32 1483056, i32 1099057677, i32 1483056, i32 696337679, i32 17825840, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 536922636, i32 1048576, i32 1233259021, i32 1483056, i32 427869454, i32 1048624, i32 1099057677, i32 1483056, i32 696337679, i32 17825840, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1073878028, i32 1048584, i32 33559565, i32 1048648, i32 184568334, i32 26214504, i32 318802446, i32 26214504, i32 318802446, i32 26214504, i32 1124207116, i32 1048688, i32 453036557, i32 1048688, i32 453069325, i32 1048688, i32 587270671, i32 22020208, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1073878028, i32 1048592, i32 436261901, i32 1048656, i32 318802446, i32 26214512, i32 318802446, i32 26214512, i32 453069325, i32 1048688, i32 587270671, i32 22020208, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1342346244, i32 1048576, i32 838964229, i32 1048640, i32 50350598, i32 26214496, i32 50350598, i32 26214496, i32 1795361292, i32 1048672, i32 1258427405, i32 1483104, i32 1124226061, i32 1483104, i32 587270671, i32 22020192, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1795363852, i32 1048672, i32 1258427405, i32 1483104, i32 184568334, i32 26214496, i32 1124226061, i32 1483104, i32 587270671, i32 22020192, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1073878020, i32 1048576, i32 436261893, i32 1048640, i32 1392675334, i32 26214496, i32 1526909446, i32 26214496, i32 1526909446, i32 26214496, i32 1124207108, i32 1048672, i32 453036549, i32 1048672, i32 1392675335, i32 26263648, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1073878028, i32 1048592, i32 436261901, i32 1048656, i32 1392675342, i32 26214512, i32 1526909454, i32 26214512, i32 1526909454, i32 26214512, i32 1124207116, i32 1048688, i32 453036557, i32 1048688, i32 1392675343, i32 26263664, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1073878020, i32 1048576, i32 436261893, i32 1048640, i32 1526909446, i32 26214496, i32 1526909446, i32 26214496, i32 1392675335, i32 26263648, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1073878028, i32 1048592, i32 436261901, i32 1048656, i32 1526909454, i32 26214512, i32 1526909454, i32 26214512, i32 1392675343, i32 26263664], [150 x i32] zeroinitializer }>, [832 x i8] zeroinitializer }, align 32
@b43_ntab_tmap_r7 = internal constant { <{ [400 x i32], [48 x i32] }>, [448 x i8] } { <{ [400 x i32], [48 x i32] }> <{ [400 x i32] [i32 -1970754944, i32 -1968526710, i32 -1970632024, i32 2184, i32 -2013265920, i32 -1970632534, i32 -1968666488, i32 -2004309848, i32 -250539760, i32 286331153, i32 301011217, i32 273, i32 285212672, i32 286388497, i32 286331153, i32 286331377, i32 -1970754944, i32 -1968526710, i32 -1970632024, i32 698504, i32 -2004353024, i32 -1970632534, i32 -1968666488, i32 -2004309848, i32 -1592717040, i32 286331153, i32 297865489, i32 273, i32 285212672, i32 286368017, i32 286331153, i32 286331297, i32 -1574821344, i32 572662306, i32 583148066, i32 546, i32 570425344, i32 572695074, i32 572662306, i32 572662434, i32 -250539760, i32 286331153, i32 301011217, i32 69905, i32 286326784, i32 286388497, i32 286331153, i32 286331377, i32 -1465218912, i32 -1467447128, i32 -1465341814, i32 559786, i32 -1431699456, i32 -1465341304, i32 -1467307350, i32 -1431663990, i32 -1431786848, i32 -1968534870, i32 -1433761142, i32 699016, i32 -1968570368, i32 -1431787384, i32 -1968665974, i32 -1970755448, i32 134744576, i32 168298506, i32 134875656, i32 526344, i32 134873088, i32 134875144, i32 134875144, i32 168430088, i32 -1600085856, i32 -2136956800, i32 -2139053920, i32 32896, i32 -2136997888, i32 -2136964960, i32 -1602183008, i32 -2139053920, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -1717989376, i32 -1684301381, i32 -1682335335, i32 -1717978695, i32 -1684423792, i32 -1682195557, i32 -1684300871, i32 2457, i32 -2013265920, i32 -1970632534, i32 -1968666488, i32 -2004309848, i32 -1970754944, i32 -1968526710, i32 -1970632024, i32 11184264, i32 570425344, i32 572699170, i32 572662306, i32 572662450, i32 -1306385888, i32 572662306, i32 584196642, i32 546, i32 285212672, i32 286368017, i32 286331153, i32 286331297, i32 -1592717040, i32 286331153, i32 297865489, i32 273, i32 855638016, i32 859026227, i32 858993459, i32 858993587, i32 -1288490192, i32 858993459, i32 869479219, i32 819, i32 570425344, i32 572695074, i32 572662306, i32 572662434, i32 -1574821344, i32 572662306, i32 583148066, i32 546, i32 -1715889408, i32 -1684301381, i32 -1682335335, i32 -1717978695, i32 -1684423783, i32 -1682195557, i32 -1684300871, i32 2457, i32 -2013265920, i32 -1970632534, i32 -1968666488, i32 -2004309848, i32 -1970754936, i32 -1968526710, i32 -1970632024, i32 145401992, i32 572662272, i32 572715554, i32 572662306, i32 572662514, i32 572662306, i32 572662306, i32 586293794, i32 546, i32 285212672, i32 286388497, i32 286331153, i32 286331153, i32 -250539759, i32 286331153, i32 301011217, i32 17895697, i32 -1147422464, i32 -1179010151, i32 -1180976197, i32 -1145332837, i32 -1178887749, i32 -1181115975, i32 -1179010661, i32 3003, i32 -1442840576, i32 -1465341304, i32 -1467307350, i32 -1431663990, i32 -1465218902, i32 -1467447128, i32 -1465341814, i32 176720554, i32 -1442840576, i32 -1465341304, i32 -1467307350, i32 -1431663990, i32 -1465218912, i32 -1467447128, i32 -1465341814, i32 2730, i32 -2013265920, i32 -1970632534, i32 -1968666488, i32 -2004309848, i32 -1970754944, i32 -1968526710, i32 -1970632024, i32 2184, i32 -1145324800, i32 -1717847109, i32 -1682334821, i32 -1179010629, i32 -1179018309, i32 -1179010629, i32 -1178887271, i32 2457, i32 -1979711488, i32 -1433884536, i32 -1467447126, i32 -1467315576, i32 -1467307894, i32 -2002212182, i32 -1465218390, i32 143173770, i32 185273088, i32 151718667, i32 185142027, i32 151587083, i32 151587595, i32 151587595, i32 151587593, i32 2313, i32 167772160, i32 168298504, i32 134875146, i32 134875656, i32 134875146, i32 134744074, i32 168430088, i32 134744074, i32 -1330597888, i32 -1869565776, i32 -1867476848, i32 -1330597744, i32 -1330605904, i32 -1867468624, i32 -1330605936, i32 144, i32 -2147483648, i32 -1602183040, i32 -1602191200, i32 -1602191232, i32 -1602183040, i32 -2136956768, i32 -1600094048, i32 10526880, i32 570425344, i32 572715554, i32 572662306, i32 572662514, i32 -232644064, i32 572662306, i32 586293794, i32 546, i32 285212672, i32 286388497, i32 286331153, i32 286331377, i32 -250539760, i32 286331153, i32 301011217, i32 273, i32 855638016, i32 859042611, i32 858993459, i32 858993651, i32 -214748368, i32 858993459, i32 871576371, i32 819, i32 570425344, i32 572715554, i32 572662306, i32 572662514, i32 -232644064, i32 572662306, i32 586293794, i32 546, i32 -1728053248, i32 -1684301381, i32 -1682335335, i32 -1717978695, i32 -1684423792, i32 -1682195557, i32 -1684300871, i32 2457, i32 -2013265920, i32 -1970632534, i32 -1968666488, i32 -2004309848, i32 -1970754944, i32 -1968526710, i32 -1970632024, i32 2184, i32 -2004320256, i32 -1970632534, i32 -1968666488, i32 -2004309848, i32 -1970754944, i32 -1968526710, i32 -1970632024, i32 2184, i32 -2013265920, i32 -1970632534, i32 -1968666488, i32 -2004309848, i32 -1970754944, i32 -1968526710, i32 -1970632024, i32 11184264, i32 -2002220544, i32 -1970632534, i32 -1968666488, i32 -2004309848, i32 -1970754936, i32 -1968526710, i32 -1970632024, i32 698504, i32 -2004353024, i32 -1970632534, i32 -1968666488, i32 -2004309848, i32 -1970754936, i32 -1968526710, i32 -1970632024, i32 145401992, i32 285212672, i32 286368017, i32 286331153, i32 286331297, i32 -1592717040, i32 286331153, i32 297865489, i32 273, i32 285212672, i32 286368017, i32 286331153, i32 286331297, i32 -1592717040, i32 286331153, i32 297865489, i32 273, i32 -2013265920, i32 -1970632534, i32 -1968666488, i32 -2004309848, i32 -1970754944, i32 -1968526710, i32 -1970632024, i32 2184, i32 -2013265920, i32 -1970632534, i32 -1968666488, i32 -2004309848, i32 -1970754944, i32 -1968526710, i32 -1970632024, i32 2184], [48 x i32] zeroinitializer }>, [448 x i8] zeroinitializer }, align 32
@b43_ntab_noisevar_r3 = internal constant { [256 x i32], [256 x i8] } { [256 x i32] [i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333, i32 34669073, i32 333], [256 x i8] zeroinitializer }, align 32
@b43_ntab_antswctl_r3 = internal constant { [4 x [32 x i16]], [64 x i8] } { [4 x [32 x i16]] [[32 x i16] [i16 130, i16 130, i16 529, i16 546, i16 808, i16 0, i16 0, i16 0, i16 324, i16 0, i16 0, i16 0, i16 392, i16 0, i16 0, i16 0, i16 130, i16 130, i16 529, i16 546, i16 808, i16 0, i16 0, i16 0, i16 324, i16 0, i16 0, i16 0, i16 392, i16 0, i16 0, i16 0], [32 x i16] [i16 34, i16 34, i16 17, i16 34, i16 34, i16 0, i16 0, i16 0, i16 17, i16 0, i16 0, i16 0, i16 34, i16 0, i16 0, i16 0, i16 34, i16 34, i16 17, i16 34, i16 34, i16 0, i16 0, i16 0, i16 17, i16 0, i16 0, i16 0, i16 34, i16 0, i16 0, i16 0], [32 x i16] [i16 136, i16 136, i16 68, i16 136, i16 136, i16 0, i16 0, i16 0, i16 68, i16 0, i16 0, i16 0, i16 136, i16 0, i16 0, i16 0, i16 136, i16 136, i16 68, i16 136, i16 136, i16 0, i16 0, i16 0, i16 68, i16 0, i16 0, i16 0, i16 136, i16 0, i16 0, i16 0], [32 x i16] [i16 34, i16 34, i16 17, i16 34, i16 0, i16 0, i16 0, i16 0, i16 17, i16 0, i16 0, i16 0, i16 34, i16 0, i16 0, i16 972, i16 34, i16 34, i16 17, i16 34, i16 0, i16 0, i16 0, i16 0, i16 17, i16 0, i16 0, i16 0, i16 34, i16 0, i16 0, i16 972]], [64 x i8] zeroinitializer }, align 32
@b43_ntab_tmap_r3 = internal constant { <{ [400 x i32], [48 x i32] }>, [448 x i8] } { <{ [400 x i32], [48 x i32] }> <{ [400 x i32] [i32 -1970754944, i32 -1968526710, i32 -1970632024, i32 2184, i32 -2013265920, i32 -1970632534, i32 -1968666488, i32 -2004309848, i32 -250539760, i32 286331153, i32 301011217, i32 273, i32 285212672, i32 286388497, i32 286331153, i32 286331377, i32 -1970754944, i32 -1968526710, i32 -1970632024, i32 698504, i32 -2004353024, i32 -1970632534, i32 -1968666488, i32 -2004309848, i32 -1592717040, i32 286331153, i32 297865489, i32 273, i32 285212672, i32 286368017, i32 286331153, i32 286331297, i32 -1574821344, i32 572662306, i32 583148066, i32 546, i32 570425344, i32 572695074, i32 572662306, i32 572662434, i32 -250539760, i32 286331153, i32 301011217, i32 69905, i32 286326784, i32 286388497, i32 286331153, i32 286331377, i32 -1465218912, i32 -1467447128, i32 -1465341814, i32 559786, i32 -1431699456, i32 -1465341304, i32 -1467307350, i32 -1431663990, i32 -1431786848, i32 -1968534870, i32 -1433761142, i32 699016, i32 -1968570368, i32 -1431787384, i32 -1968665974, i32 -1970755448, i32 134744576, i32 168298506, i32 134875656, i32 526344, i32 134873088, i32 134875144, i32 134875144, i32 168430088, i32 -1600085856, i32 -2136956800, i32 -2139053920, i32 32896, i32 -2136997888, i32 -2136964960, i32 -1602183008, i32 -2139053920, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -1717989376, i32 -1684301381, i32 -1682335335, i32 -1717978695, i32 -1684423792, i32 -1682195557, i32 -1684300871, i32 2457, i32 -2013265920, i32 -1970632534, i32 -1968666488, i32 -2004309848, i32 -1970754944, i32 -1968526710, i32 -1970632024, i32 11184264, i32 570425344, i32 572699170, i32 572662306, i32 572662450, i32 -1306385888, i32 572662306, i32 584196642, i32 546, i32 285212672, i32 286368017, i32 286331153, i32 286331297, i32 -1592717040, i32 286331153, i32 297865489, i32 273, i32 855638016, i32 859026227, i32 858993459, i32 858993587, i32 -1288490192, i32 858993459, i32 869479219, i32 819, i32 570425344, i32 572695074, i32 572662306, i32 572662434, i32 -1574821344, i32 572662306, i32 583148066, i32 546, i32 -1715889408, i32 -1684301381, i32 -1682335335, i32 -1717978695, i32 -1684423783, i32 -1682195557, i32 -1684300871, i32 2457, i32 -2013265920, i32 -1970632534, i32 -1968666488, i32 -2004309848, i32 -1970754936, i32 -1968526710, i32 -1970632024, i32 145401992, i32 572662272, i32 572715554, i32 572662306, i32 572662514, i32 572662306, i32 572662306, i32 586293794, i32 546, i32 285212672, i32 286388497, i32 286331153, i32 286331153, i32 -250539759, i32 286331153, i32 301011217, i32 17895697, i32 -1147422464, i32 -1179010151, i32 -1180976197, i32 -1145332837, i32 -1178887749, i32 -1181115975, i32 -1179010661, i32 3003, i32 -1442840576, i32 -1465341304, i32 -1467307350, i32 -1431663990, i32 -1465218902, i32 -1467447128, i32 -1465341814, i32 176720554, i32 -1442840576, i32 -1465341304, i32 -1467307350, i32 -1431663990, i32 -1465218912, i32 -1467447128, i32 -1465341814, i32 2730, i32 -2013265920, i32 -1970632534, i32 -1968666488, i32 -2004309848, i32 -1970754944, i32 -1968526710, i32 -1970632024, i32 2184, i32 -1145324800, i32 -1717847109, i32 -1682334821, i32 -1179010629, i32 -1179018309, i32 -1179010629, i32 -1178887271, i32 2457, i32 -1979711488, i32 -1433884536, i32 -1467447126, i32 -1467315576, i32 -1467307894, i32 -2002212182, i32 -1465218390, i32 143173770, i32 185273088, i32 151718667, i32 185142027, i32 151587083, i32 151587595, i32 151587595, i32 151587593, i32 2313, i32 167772160, i32 168298504, i32 134875146, i32 134875656, i32 134875146, i32 134744074, i32 168430088, i32 134744074, i32 -1330597888, i32 -1869565776, i32 -1867476848, i32 -1330597744, i32 -1330605904, i32 -1867468624, i32 -1330605936, i32 144, i32 -2147483648, i32 -1602183040, i32 -1602191200, i32 -1602191232, i32 -1602183040, i32 -2136956768, i32 -1600094048, i32 10526880, i32 570425344, i32 572715554, i32 572662306, i32 572662514, i32 -232644064, i32 572662306, i32 586293794, i32 546, i32 285212672, i32 286388497, i32 286331153, i32 286331377, i32 -250539760, i32 286331153, i32 301011217, i32 273, i32 855638016, i32 859042611, i32 858993459, i32 858993651, i32 -214748368, i32 858993459, i32 871576371, i32 819, i32 570425344, i32 572715554, i32 572662306, i32 572662514, i32 -232644064, i32 572662306, i32 586293794, i32 546, i32 -1728053248, i32 -1684301381, i32 -1682335335, i32 -1717978695, i32 -1684423792, i32 -1682195557, i32 -1684300871, i32 2457, i32 -2013265920, i32 -1970632534, i32 -1968666488, i32 -2004309848, i32 -1970754944, i32 -1968526710, i32 -1970632024, i32 2184, i32 -2004320256, i32 -1970632534, i32 -1968666488, i32 -2004309848, i32 -1970754944, i32 -1968526710, i32 -1970632024, i32 2184, i32 -2013265920, i32 -1970632534, i32 -1968666488, i32 -2004309848, i32 -1970754944, i32 -1968526710, i32 -1970632024, i32 11184264, i32 -2002220544, i32 -1970632534, i32 -1968666488, i32 -2004309848, i32 -1970754936, i32 -1968526710, i32 -1970632024, i32 2184, i32 -2013265920, i32 -1970632534, i32 -1968666488, i32 -2004309848, i32 -1970754936, i32 -1968526710, i32 -1970632024, i32 145401992, i32 285212672, i32 286368017, i32 286331153, i32 286331297, i32 -1592717040, i32 286331153, i32 297865489, i32 273, i32 285212672, i32 286368017, i32 286331153, i32 286331297, i32 -1592717040, i32 286331153, i32 297865489, i32 273, i32 -2013265920, i32 -1970632534, i32 -1968666488, i32 -2004309848, i32 -1970754944, i32 -1968526710, i32 -1970632024, i32 2184, i32 -2013265920, i32 -1970632534, i32 -1968666488, i32 -2004309848, i32 -1970754944, i32 -1968526710, i32 -1970632024, i32 2184], [48 x i32] zeroinitializer }>, [448 x i8] zeroinitializer }, align 32
@b43_ntab_framelookup = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\02\04\14\14\03\05\16\16\0A\0C\1C\1C\0B\0D\1E\1E\06\08\18\18\07\09\1A\1A\0E\10 (\0F\11\22*", [32 x i8] zeroinitializer }, align 32
@b43_ntab_tdtrn = internal constant { [704 x i32], [704 x i8] } { [704 x i32] [i32 102499868, i32 5303912, i32 -174916042, i32 -28175626, i32 3128, i32 -28175626, i32 -174916042, i32 5303912, i32 102499868, i32 -295174064, i32 -29952622, i32 318176850, i32 204996608, i32 318176850, i32 -29952622, i32 -295174064, i32 102499868, i32 5303912, i32 -174916042, i32 -28175626, i32 3128, i32 -28175626, i32 -174916042, i32 5303912, i32 102499868, i32 -295174064, i32 -29952622, i32 318176850, i32 204996608, i32 318176850, i32 -29952622, i32 -295174064, i32 98764259, i32 5107468, i32 -168559033, i32 -27192762, i32 3015, i32 -27192762, i32 -168559033, i32 5107468, i32 98764259, i32 -284426163, i32 -28838413, i32 306642529, i32 197591040, i32 306642529, i32 -28838413, i32 -284426163, i32 98764259, i32 5107468, i32 -168559033, i32 -27192762, i32 3015, i32 -27192762, i32 -168559033, i32 5107468, i32 98764259, i32 -284426163, i32 -28838413, i32 306642529, i32 197591040, i32 306642529, i32 -28838413, i32 -284426163, i32 -94832040, i32 -124451781, i32 -11793984, i32 -70844504, i32 -75172988, i32 127465209, i32 91619618, i32 92539382, i32 189792256, i32 95941954, i32 143000626, i32 115212007, i32 -75172988, i32 -103217564, i32 -135789988, i32 16775101, i32 94897576, i32 -138608385, i32 39647208, i32 107280857, i32 -209388668, i32 -18413859, i32 70387846, i32 -180222537, i32 2896, i32 167118212, i32 19006838, i32 -151451752, i32 -209388668, i32 -5702714, i32 163643212, i32 71039125, i32 47448788, i32 131990128, i32 -57276516, i32 -116719980, i32 -33489108, i32 47449693, i32 153747606, i32 1375160, i32 -47383252, i32 124451644, i32 9893714, i32 -107872889, i32 -81001984, i32 -21431968, i32 148962454, i32 77071016, i32 -47383252, i32 44565656, i32 -57276192, i32 -111083848, i32 33618732, i32 -41420399, i32 -145620842, i32 -79952022, i32 -47383252, i32 -71827436, i32 9832746, i32 106758868, i32 -13828608, i32 -23791350, i32 127728790, i32 40896478, i32 47448788, i32 40896478, i32 127728790, i32 -23791350, i32 -13828608, i32 106758868, i32 9832746, i32 -71827436, i32 -47383252, i32 -79952022, i32 -145620842, i32 -41420399, i32 33618732, i32 -111083848, i32 -57276192, i32 44565656, i32 -47383252, i32 77071016, i32 148962454, i32 -21431968, i32 -81001984, i32 -107872889, i32 9893714, i32 124451644, i32 -47383252, i32 1375160, i32 153747606, i32 47449693, i32 -33489108, i32 -116719980, i32 -57276516, i32 131990128, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 103415808, i32 -17168551, i32 146278664, i32 -208208851, i32 -103414692, i32 -61934072, i32 -146213482, i32 129107903, i32 103417386, i32 -129042367, i32 -146213482, i32 61999608, i32 -103414692, i32 208274387, i32 146278664, i32 17234087, i32 103415808, i32 -17106777, i32 146339576, i32 -208272429, i32 -103351388, i32 -61994504, i32 -146273686, i32 129169473, i32 103479766, i32 -129103937, i32 -146273686, i32 62060040, i32 -103351388, i32 208337965, i32 146339576, i32 17172313, i32 103415808, i32 -17168551, i32 146278664, i32 -208208851, i32 -103414692, i32 -61934072, i32 -146213482, i32 129107903, i32 103417386, i32 -129042367, i32 -146213482, i32 61999608, i32 -103414692, i32 208274387, i32 146278664, i32 17234087, i32 103415808, i32 -17106777, i32 146339576, i32 -208272429, i32 -103351388, i32 -61994504, i32 -146273686, i32 129169473, i32 103479766, i32 -129103937, i32 -146273686, i32 62060040, i32 -103351388, i32 208337965, i32 146339576, i32 17172313, i32 102499868, i32 -13631331, i32 -5107391, i32 -41419948, i32 -161612199, i32 49215902, i32 23523388, i32 -521802, i32 2212, i32 717867, i32 15725943, i32 -92009486, i32 -66912431, i32 136712039, i32 -1047697, i32 138607043, i32 0, i32 104724414, i32 -57606128, i32 -258344998, i32 11469822, i32 -200407684, i32 176815889, i32 198574070, i32 -144965632, i32 -162922488, i32 264568474, i32 107150610, i32 27724195, i32 78381689, i32 -289472434, i32 -10288944, i32 -102434332, i32 13696867, i32 5172927, i32 41485484, i32 161677735, i32 -49150366, i32 -23457852, i32 587338, i32 63324, i32 -652331, i32 -15660407, i32 92075022, i32 66977967, i32 -136646503, i32 1113233, i32 -138541507, i32 0, i32 -104658878, i32 57671664, i32 258410534, i32 -11404286, i32 200473220, i32 -176750353, i32 -198508534, i32 144965632, i32 162988024, i32 -264502938, i32 -107085074, i32 -27658659, i32 -78316153, i32 289537970, i32 10354480, i32 98762752, i32 -16382203, i32 139724960, i32 -198837159, i32 -98761686, i32 -59181446, i32 -139659762, i32 123340646, i32 98764259, i32 -123275110, i32 -139659762, i32 59246982, i32 -98761686, i32 198902695, i32 139724960, i32 16447739, i32 98762752, i32 -16320261, i32 139786080, i32 -198900825, i32 -98698282, i32 -59242106, i32 -139720206, i32 123402394, i32 98826781, i32 -123336858, i32 -139720206, i32 59307642, i32 -98698282, i32 198966361, i32 139786080, i32 16385797, i32 98762752, i32 -16382203, i32 139724960, i32 -198837159, i32 -98761686, i32 -59181446, i32 -139659762, i32 123340646, i32 98764259, i32 -123275110, i32 -139659762, i32 59246982, i32 -98761686, i32 198902695, i32 139724960, i32 16447739, i32 98762752, i32 -16320261, i32 139786080, i32 -198900825, i32 -98698282, i32 -59242106, i32 -139720206, i32 123402394, i32 98826781, i32 -123336858, i32 -139720206, i32 59307642, i32 -98698282, i32 198966361, i32 139786080, i32 16385797, i32 -94832040, i32 -118424064, i32 71829309, i32 -37093818, i32 -107937192, i32 144507911, i32 -44239078, i32 45088224, i32 138282134, i32 -10877120, i32 -8716905, i32 16646641, i32 591918, i32 -90898571, i32 -20055830, i32 -5179757, i32 -47383976, i32 70516502, i32 -73136675, i32 -94305471, i32 111544011, i32 3800365, i32 108526231, i32 33162720, i32 -124387266, i32 123340427, i32 19725374, i32 -98305651, i32 -58917565, i32 -7275507, i32 29428098, i32 12976598, i32 -47383252, i32 30802118, i32 159515073, i32 -66191472, i32 -45876100, i32 -108135901, i32 -63045332, i32 109774682, i32 4126870, i32 98566650, i32 -90765705, i32 -47382471, i32 113968806, i32 54655585, i32 98433956, i32 -15334349, i32 -94831316, i32 -158072912, i32 -118817075, i32 -9045356, i32 137232393, i32 32571646, i32 -40370310, i32 121700186, i32 76941374, i32 -35650897, i32 -149226148, i32 67569821, i32 39385489, i32 -28901943, i32 121439304, i32 -33490704, i32 -47383252, i32 -52427520, i32 -66454052, i32 -26738345, i32 80151921, i32 -63242463, i32 -53018072, i32 91030135, i32 33619456, i32 2292007, i32 -29621461, i32 -62587076, i32 65666011, i32 72811283, i32 80346972, i32 852920, i32 -94896128, i32 -68615982, i32 -103743989, i32 19267065, i32 69534143, i32 53017131, i32 -5700880, i32 -98238121, i32 33619456, i32 57934904, i32 -16513539, i32 51183186, i32 3668793, i32 -9894715, i32 83426595, i32 -47055845, i32 -47383252, i32 -65274575, i32 -48036616, i32 80084841, i32 -80150473, i32 -28179700, i32 100531972, i32 70779764, i32 -33553920, i32 22542885, i32 49348521, i32 -97844440, i32 29295653, i32 -34012891, i32 -32769584, i32 13827049, i32 64088, i32 62390285, i32 -10746679, i32 51577943, i32 -69532695, i32 -12780476, i32 53214780, i32 -114884574, i32 -33553920, i32 41354605, i32 36240599, i32 -14549958, i32 91292871, i32 22543976, i32 -35849207, i32 83950816, i32 -47383252, i32 83950816, i32 -35849207, i32 22543976, i32 91292871, i32 -14549958, i32 36240599, i32 41354605, i32 -33553920, i32 -114884574, i32 53214780, i32 -12780476, i32 -69532695, i32 51577943, i32 -10746679, i32 62390285, i32 64088, i32 13827049, i32 -32769584, i32 -34012891, i32 29295653, i32 -97844440, i32 49348521, i32 22542885, i32 -33553920, i32 70779764, i32 100531972, i32 -28179700, i32 -80150473, i32 80084841, i32 -48036616, i32 -65274575, i32 -47383252, i32 -47055845, i32 83426595, i32 -9894715, i32 3668793, i32 51183186, i32 -16513539, i32 57934904, i32 33619456, i32 -98238121, i32 -5700880, i32 53017131, i32 69534143, i32 19267065, i32 -103743989, i32 -68615982, i32 -94896128, i32 852920, i32 80346972, i32 72811283, i32 65666011, i32 -62587076, i32 -29621461, i32 2292007, i32 33619456, i32 91030135, i32 -53018072, i32 -63242463, i32 80151921, i32 -26738345, i32 -66454052, i32 -52427520, i32 94896128, i32 -15726914, i32 134219850, i32 -191038338, i32 -94895104, i32 -56822054, i32 -134154638, i32 118490908, i32 94897576, i32 -118425372, i32 -134154638, i32 56887590, i32 -94895104, i32 191103874, i32 134219850, i32 15792450, i32 94896128, i32 -15664830, i32 134281142, i32 -191102078, i32 -94831616, i32 -56882906, i32 -134215282, i32 118552804, i32 94960216, i32 -118487268, i32 -134215282, i32 56948442, i32 -94831616, i32 191167614, i32 134281142, i32 15730366, i32 94896128, i32 -15726914, i32 134219850, i32 -191038338, i32 -94895104, i32 -56822054, i32 -134154638, i32 118490908, i32 94897576, i32 -118425372, i32 -134154638, i32 56887590, i32 -94895104, i32 191103874, i32 134219850, i32 15792450, i32 94896128, i32 -15664830, i32 134281142, i32 -191102078, i32 -94831616, i32 -56882906, i32 -134215282, i32 118552804, i32 94960216, i32 -118487268, i32 -134215282, i32 56948442, i32 -94831616, i32 191167614, i32 134281142, i32 15730366], [704 x i8] zeroinitializer }, align 32
@b43_ntab_pilot = internal constant { [88 x i16], [48 x i8] } { [88 x i16] [i16 -248, i16 -248, i16 -248, i16 -248, i16 -248, i16 -248, i16 -248, i16 -248, i16 -32555, i16 -32555, i16 -32555, i16 -32555, i16 -32555, i16 -32555, i16 -32555, i16 -32555, i16 -246, i16 -126, i16 -96, i16 -216, i16 -1, i16 -1, i16 -1, i16 -1, i16 -126, i16 -96, i16 -216, i16 -246, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1985, i16 -1505, i16 -1385, i16 -1355, i16 -3395, i16 -3905, i16 -1, i16 -1, i16 -4073, i16 -2027, i16 -3563, i16 -3947, i16 -4043, i16 -4067, i16 -1, i16 -1, i16 -248, i16 -254, i16 -128, i16 -224, i16 -248, i16 -254, i16 -128, i16 -224, i16 -4065, i16 -2025, i16 -1515, i16 -3435, i16 -3915, i16 -4035, i16 -1, i16 -1, i16 -2006, i16 -1526, i16 -1406, i16 -1376, i16 -3416, i16 -3926, i16 -1, i16 -1, i16 -4094, i16 -2048, i16 -3584, i16 -3968, i16 -4064, i16 -4088, i16 -1, i16 -1, i16 -4086, i16 -2046, i16 -1536, i16 -3456, i16 -3936, i16 -4056, i16 -1, i16 -1], [48 x i8] zeroinitializer }, align 32
@b43_ntab_tdi20a0 = internal constant { [55 x i32], [36 x i8] } { [55 x i32] [i32 594470, i32 660521, i32 743085, i32 809136, i32 875187, i32 957622, i32 1023674, i32 49469, i32 131841, i32 197892, i32 263944, i32 329995, i32 412558, i32 610961, i32 677012, i32 759576, i32 825639, i32 891690, i32 974126, i32 1040177, i32 65972, i32 148407, i32 214459, i32 280510, i32 362882, i32 429061, i32 627465, i32 693516, i32 776079, i32 842130, i32 908182, i32 990617, i32 24488, i32 82476, i32 164911, i32 230962, i32 297013, i32 379448, i32 445628, i32 644031, i32 726531, i32 792582, i32 858634, i32 924685, i32 1007120, i32 32915, i32 98967, i32 181402, i32 247424, i32 313472, i32 396032, i32 462080, i32 0, i32 0, i32 0], [36 x i8] zeroinitializer }, align 32
@b43_ntab_tdi20a1 = internal constant { [55 x i32], [36 x i8] } { [55 x i32] [i32 84774, i32 167209, i32 234413, i32 300592, i32 383027, i32 449078, i32 629818, i32 695869, i32 770177, i32 836228, i32 902280, i32 984715, i32 18574, i32 101265, i32 184852, i32 250904, i32 317095, i32 399530, i32 465582, i32 646321, i32 728756, i32 786743, i32 852795, i32 918846, i32 1001218, i32 35077, i32 134153, i32 201356, i32 267407, i32 333586, i32 416022, i32 596761, i32 662824, i32 745260, i32 803247, i32 869298, i32 951733, i32 1017784, i32 51644, i32 150719, i32 217859, i32 283910, i32 366474, i32 432525, i32 613264, i32 679315, i32 761751, i32 819738, i32 885760, i32 968192, i32 1034240, i32 68096, i32 0, i32 0, i32 0], [36 x i8] zeroinitializer }, align 32
@b43_ntab_tdi40a0 = internal constant { [110 x i32], [104 x i8] } { [110 x i32] [i32 1155910, i32 1273039, i32 1373657, i32 1458658, i32 1559403, i32 1660021, i32 1778563, i32 1879308, i32 1996310, i32 33311, i32 134056, i32 251058, i32 353351, i32 470480, i32 571098, i32 656099, i32 756844, i32 857590, i32 1172612, i32 1289741, i32 1390359, i32 1475360, i32 1576105, i32 1676851, i32 1795400, i32 1896145, i32 2013147, i32 50148, i32 150893, i32 268023, i32 370053, i32 487183, i32 587800, i32 672801, i32 773547, i32 890676, i32 1189449, i32 1306578, i32 1407196, i32 1492197, i32 1592942, i32 1710072, i32 1812102, i32 1912848, i32 2029977, i32 66850, i32 167596, i32 284725, i32 386890, i32 504019, i32 604765, i32 689638, i32 790383, i32 907513, i32 1206151, i32 1323281, i32 1424026, i32 1508899, i32 1609645, i32 1726774, i32 1828939, i32 1946068, i32 2046814, i32 83687, i32 200816, i32 301562, i32 403592, i32 520722, i32 621467, i32 706468, i32 807086, i32 924215, i32 1222988, i32 1340117, i32 1440863, i32 1525864, i32 1626481, i32 1743611, i32 1845641, i32 1962771, i32 2063516, i32 100517, i32 217519, i32 318264, i32 436813, i32 537559, i32 638304, i32 723305, i32 823923, i32 941052, i32 1256074, i32 1356820, i32 1457565, i32 1542566, i32 1643184, i32 1760313, i32 1862606, i32 1979608, i32 2080353, i32 117354, i32 234356, i32 335101, i32 453643, i32 554261, i32 655006, i32 740007, i32 840625, i32 957754, i32 0, i32 0], [104 x i8] zeroinitializer }, align 32
@b43_ntab_tdi40a1 = internal constant { [110 x i32], [104 x i8] } { [110 x i32] [i32 2022198, i32 76234, i32 176979, i32 294109, i32 379110, i32 496111, i32 596985, i32 698887, i32 799633, i32 916762, i32 1181987, i32 1298989, i32 1399863, i32 1501899, i32 1602644, i32 1719774, i32 1804775, i32 1905392, i32 2039034, i32 93064, i32 210066, i32 310811, i32 395812, i32 512814, i32 613688, i32 715852, i32 816469, i32 933599, i32 1198824, i32 1315825, i32 1418107, i32 1518729, i32 1619347, i32 1720732, i32 1821477, i32 1938479, i32 2057145, i32 109901, i32 226903, i32 311904, i32 429033, i32 529651, i32 631932, i32 732554, i32 833172, i32 934557, i32 1215526, i32 1332656, i32 1434810, i32 1535566, i32 1636184, i32 1737569, i32 1838314, i32 1955444, i32 2073981, i32 126603, i32 243605, i32 328606, i32 445735, i32 546481, i32 648646, i32 749391, i32 850009, i32 951394, i32 1248747, i32 1349493, i32 1451523, i32 1552268, i32 1652886, i32 1754271, i32 1855016, i32 1972146, i32 42695, i32 143440, i32 260570, i32 345443, i32 462572, i32 563318, i32 665348, i32 766093, i32 866839, i32 1148320, i32 1265449, i32 1366195, i32 1468360, i32 1569105, i32 1669851, i32 1771108, i32 1871853, i32 1988983, i32 59397, i32 160143, i32 277272, i32 362145, i32 479275, i32 580020, i32 682185, i32 782930, i32 900060, i32 1165285, i32 1282286, i32 1383032, i32 1485062, i32 1585808, i32 1686553, i32 1787938, i32 1888556, i32 2005685, i32 0, i32 0], [104 x i8] zeroinitializer }, align 32
@b43_ntab_channelest = internal constant { [96 x i32], [96 x i8] } { [96 x i32] [i32 1145324612, i32 1145324612, i32 1145324612, i32 1145324612, i32 1145324612, i32 1145324612, i32 1145324612, i32 1145324612, i32 269488144, i32 269488144, i32 269488144, i32 269488144, i32 269488144, i32 269488144, i32 269488144, i32 269488144, i32 1145324612, i32 1145324612, i32 1145324612, i32 1145324612, i32 1145324612, i32 1145324612, i32 1145324612, i32 1145324612, i32 269488144, i32 269488144, i32 269488144, i32 269488144, i32 269488144, i32 269488144, i32 269488144, i32 269488144, i32 1145324612, i32 1145324612, i32 1145324612, i32 1145324612, i32 1145324612, i32 1145324612, i32 1145324612, i32 1145324612, i32 1145324612, i32 1145324612, i32 1145324612, i32 1145324612, i32 1145324612, i32 1145324612, i32 1145324612, i32 1145324612, i32 269488144, i32 269488144, i32 269488144, i32 269488144, i32 269488144, i32 269488144, i32 269488144, i32 269488144, i32 269488144, i32 269488144, i32 269488144, i32 269488144, i32 269488144, i32 269488144, i32 269488144, i32 269488144, i32 1145324612, i32 1145324612, i32 1145324612, i32 1145324612, i32 1145324612, i32 1145324612, i32 1145324612, i32 1145324612, i32 1145324612, i32 1145324612, i32 1145324612, i32 1145324612, i32 1145324612, i32 1145324612, i32 1145324612, i32 1145324612, i32 269488144, i32 269488144, i32 269488144, i32 269488144, i32 269488144, i32 269488144, i32 269488144, i32 269488144, i32 269488144, i32 269488144, i32 269488144, i32 269488144, i32 269488144, i32 269488144, i32 269488144, i32 269488144], [96 x i8] zeroinitializer }, align 32
@b43_ntab_noisevar10 = internal constant { [256 x i32], [256 x i8] } { [256 x i32] [i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333], [256 x i8] zeroinitializer }, align 32
@b43_ntab_noisevar11 = internal constant { [256 x i32], [256 x i8] } { [256 x i32] [i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333, i32 34341388, i32 333], [256 x i8] zeroinitializer }, align 32
@b43_ntab_gainctl0 = internal constant { [128 x i32], [128 x i8] } { [128 x i32] [i32 63712068, i32 63712066, i32 63712064, i32 63712062, i32 63712061, i32 63712059, i32 63449924, i32 63449922, i32 63449920, i32 63449918, i32 63449917, i32 63449915, i32 63449913, i32 63449912, i32 63449910, i32 63449908, i32 63187780, i32 63187778, i32 63187776, i32 63187774, i32 63187773, i32 63187771, i32 63187769, i32 63187768, i32 63187766, i32 63187764, i32 63187763, i32 63187762, i32 63187760, i32 63187759, i32 63187757, i32 62925636, i32 62925634, i32 62925632, i32 62925630, i32 62925629, i32 62925627, i32 62925625, i32 62925624, i32 62925622, i32 62925620, i32 61877060, i32 61877058, i32 61877056, i32 61877054, i32 61877053, i32 61877051, i32 61877049, i32 61877048, i32 61877046, i32 61877044, i32 61877043, i32 61877042, i32 61877040, i32 61877039, i32 61877037, i32 60828484, i32 60828482, i32 60828480, i32 60828478, i32 60828477, i32 60828475, i32 60828473, i32 60828472, i32 60828470, i32 60828468, i32 59779908, i32 59779906, i32 59779904, i32 59779902, i32 59779901, i32 59779899, i32 59779897, i32 59779896, i32 59779894, i32 59779892, i32 59779891, i32 59779890, i32 59779888, i32 58731332, i32 58731330, i32 58731328, i32 58731326, i32 58731325, i32 58731323, i32 58731321, i32 58731320, i32 58731318, i32 58731316, i32 58731315, i32 58731314, i32 58731312, i32 58731311, i32 58731309, i32 58731308, i32 58731307, i32 58731306, i32 58731305, i32 58731303, i32 58731302, i32 58731301, i32 58731300, i32 58731299, i32 58731298, i32 58731297, i32 58731296, i32 58731295, i32 58731294, i32 58731294, i32 58731293, i32 58731292, i32 58731291, i32 58731290, i32 58731290, i32 58731289, i32 58731288, i32 58731288, i32 58731288, i32 58731288, i32 58731288, i32 58731288, i32 58731288, i32 58731288, i32 58731288, i32 58731288, i32 58731288, i32 58731288, i32 11008], [128 x i8] zeroinitializer }, align 32
@b43_ntab_gainctl1 = internal constant { [128 x i32], [128 x i8] } { [128 x i32] [i32 63712068, i32 63712066, i32 63712064, i32 63712062, i32 63712061, i32 63712059, i32 63449924, i32 63449922, i32 63449920, i32 63449918, i32 63449917, i32 63449915, i32 63449913, i32 63449912, i32 63449910, i32 63449908, i32 63187780, i32 63187778, i32 63187776, i32 63187774, i32 63187773, i32 63187771, i32 63187769, i32 63187768, i32 63187766, i32 63187764, i32 63187763, i32 63187762, i32 63187760, i32 63187759, i32 63187757, i32 62925636, i32 62925634, i32 62925632, i32 62925630, i32 62925629, i32 62925627, i32 62925625, i32 62925624, i32 62925622, i32 62925620, i32 61877060, i32 61877058, i32 61877056, i32 61877054, i32 61877053, i32 61877051, i32 61877049, i32 61877048, i32 61877046, i32 61877044, i32 61877043, i32 61877042, i32 61877040, i32 61877039, i32 61877037, i32 60828484, i32 60828482, i32 60828480, i32 60828478, i32 60828477, i32 60828475, i32 60828473, i32 60828472, i32 60828470, i32 60828468, i32 59779908, i32 59779906, i32 59779904, i32 59779902, i32 59779901, i32 59779899, i32 59779897, i32 59779896, i32 59779894, i32 59779892, i32 59779891, i32 59779890, i32 59779888, i32 58731332, i32 58731330, i32 58731328, i32 58731326, i32 58731325, i32 58731323, i32 58731321, i32 58731320, i32 58731318, i32 58731316, i32 58731315, i32 58731314, i32 58731312, i32 58731311, i32 58731309, i32 58731308, i32 58731307, i32 58731306, i32 58731305, i32 58731303, i32 58731302, i32 58731301, i32 58731300, i32 58731299, i32 58731298, i32 58731297, i32 58731296, i32 58731295, i32 58731294, i32 58731294, i32 58731293, i32 58731292, i32 58731291, i32 58731290, i32 58731290, i32 58731289, i32 58731288, i32 58731288, i32 58731288, i32 58731288, i32 58731288, i32 58731288, i32 58731288, i32 58731288, i32 58731288, i32 58731288, i32 58731288, i32 58731288, i32 11008], [128 x i8] zeroinitializer }, align 32
@b43_ntab_estimatepowerlt0 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"PONMLKJIHGFEDCBA@?>=<;:9876543210/.-,+*)('&%$#\22! \1F\1E\1D\1C\1B\1A\19\18\17\16\15\14\13\12\11", [32 x i8] zeroinitializer }, align 32
@b43_ntab_estimatepowerlt1 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"PONMLKJIHGFEDCBA@?>=<;:9876543210/.-,+*)('&%$#\22! \1F\1E\1D\1C\1B\1A\19\18\17\16\15\14\13\12\11", [32 x i8] zeroinitializer }, align 32
@b43_ntab_adjustpower0 = internal constant { [128 x i8], [32 x i8] } zeroinitializer, align 32
@b43_ntab_adjustpower1 = internal constant { [128 x i8], [32 x i8] } zeroinitializer, align 32
@b43_ntab_iqlt0 = internal constant { [128 x i32], [128 x i8] } { [128 x i32] [i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127], [128 x i8] zeroinitializer }, align 32
@b43_ntab_iqlt1 = internal constant { [128 x i32], [128 x i8] } { [128 x i32] [i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127], [128 x i8] zeroinitializer }, align 32
@b43_ntab_loftlt0 = internal constant { [128 x i16], [64 x i8] } { [128 x i16] [i16 0, i16 257, i16 2, i16 259, i16 0, i16 257, i16 2, i16 259, i16 0, i16 257, i16 2, i16 259, i16 0, i16 257, i16 2, i16 259, i16 0, i16 257, i16 2, i16 259, i16 0, i16 257, i16 2, i16 259, i16 0, i16 257, i16 2, i16 259, i16 0, i16 257, i16 2, i16 259, i16 0, i16 257, i16 2, i16 259, i16 0, i16 257, i16 2, i16 259, i16 0, i16 257, i16 2, i16 259, i16 0, i16 257, i16 2, i16 259, i16 0, i16 257, i16 2, i16 259, i16 0, i16 257, i16 2, i16 259, i16 0, i16 257, i16 2, i16 259, i16 0, i16 257, i16 2, i16 259, i16 0, i16 257, i16 2, i16 259, i16 0, i16 257, i16 2, i16 259, i16 0, i16 257, i16 2, i16 259, i16 0, i16 257, i16 2, i16 259, i16 0, i16 257, i16 2, i16 259, i16 0, i16 257, i16 2, i16 259, i16 0, i16 257, i16 2, i16 259, i16 0, i16 257, i16 2, i16 259, i16 0, i16 257, i16 2, i16 259, i16 0, i16 257, i16 2, i16 259, i16 0, i16 257, i16 2, i16 259, i16 0, i16 257, i16 2, i16 259, i16 0, i16 257, i16 2, i16 259, i16 0, i16 257, i16 2, i16 259, i16 0, i16 257, i16 2, i16 259, i16 0, i16 257, i16 2, i16 259], [64 x i8] zeroinitializer }, align 32
@b43_ntab_loftlt1 = internal constant { [128 x i16], [64 x i8] } { [128 x i16] [i16 0, i16 257, i16 2, i16 259, i16 0, i16 257, i16 2, i16 259, i16 0, i16 257, i16 2, i16 259, i16 0, i16 257, i16 2, i16 259, i16 0, i16 257, i16 2, i16 259, i16 0, i16 257, i16 2, i16 259, i16 0, i16 257, i16 2, i16 259, i16 0, i16 257, i16 2, i16 259, i16 0, i16 257, i16 2, i16 259, i16 0, i16 257, i16 2, i16 259, i16 0, i16 257, i16 2, i16 259, i16 0, i16 257, i16 2, i16 259, i16 0, i16 257, i16 2, i16 259, i16 0, i16 257, i16 2, i16 259, i16 0, i16 257, i16 2, i16 259, i16 0, i16 257, i16 2, i16 259, i16 0, i16 257, i16 2, i16 259, i16 0, i16 257, i16 2, i16 259, i16 0, i16 257, i16 2, i16 259, i16 0, i16 257, i16 2, i16 259, i16 0, i16 257, i16 2, i16 259, i16 0, i16 257, i16 2, i16 259, i16 0, i16 257, i16 2, i16 259, i16 0, i16 257, i16 2, i16 259, i16 0, i16 257, i16 2, i16 259, i16 0, i16 257, i16 2, i16 259, i16 0, i16 257, i16 2, i16 259, i16 0, i16 257, i16 2, i16 259, i16 0, i16 257, i16 2, i16 259, i16 0, i16 257, i16 2, i16 259, i16 0, i16 257, i16 2, i16 259, i16 0, i16 257, i16 2, i16 259], [64 x i8] zeroinitializer }, align 32
@b43_ntab_framestruct = internal constant { <{ [682 x i32], [150 x i32] }>, [832 x i8] } { <{ [682 x i32], [150 x i32] }> <{ [682 x i32] [i32 134236676, i32 1048576, i32 16779781, i32 1048608, i32 159401222, i32 1048624, i32 159401223, i32 1048624, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 134236684, i32 1048580, i32 16779789, i32 1048612, i32 159401230, i32 1048628, i32 159401231, i32 1048628, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2564, i32 1048576, i32 285248005, i32 1048608, i32 427869446, i32 1048624, i32 562103558, i32 1048624, i32 562103558, i32 1048624, i32 25167108, i32 1048624, i32 293635333, i32 1048624, i32 696337671, i32 17825840, i32 2564, i32 1048576, i32 285248005, i32 1048608, i32 562103558, i32 1048624, i32 562103558, i32 1048624, i32 696337671, i32 17825840, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2572, i32 1048584, i32 285248013, i32 1048616, i32 427869454, i32 1048632, i32 562103566, i32 1048632, i32 562103566, i32 1048632, i32 25167116, i32 1048632, i32 293635341, i32 1048632, i32 696337679, i32 17825848, i32 2572, i32 1048584, i32 285248013, i32 1048616, i32 562103566, i32 1048632, i32 562103566, i32 1048632, i32 696337679, i32 17825848, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 134236676, i32 1048576, i32 16779781, i32 1048608, i32 427869446, i32 1048624, i32 427869446, i32 1048624, i32 293635332, i32 1048624, i32 964807173, i32 1048624, i32 696337671, i32 17825840, i32 0, i32 0, i32 268470788, i32 1048576, i32 964807173, i32 1048624, i32 427869446, i32 1048624, i32 696337671, i32 17825840, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 134236684, i32 1048584, i32 16779789, i32 1048616, i32 427869454, i32 1048632, i32 427869454, i32 1048632, i32 293635340, i32 1048632, i32 964807181, i32 1048632, i32 696337679, i32 17825848, i32 0, i32 0, i32 268470796, i32 1048584, i32 964807181, i32 1048632, i32 427869454, i32 1048632, i32 696337679, i32 17825848, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1073878020, i32 1048576, i32 33559557, i32 1048640, i32 184568326, i32 26214496, i32 318802438, i32 26214496, i32 318802438, i32 26214496, i32 1124207108, i32 1048672, i32 453036549, i32 1048672, i32 587270663, i32 22020192, i32 1073878020, i32 1048576, i32 436261893, i32 1048640, i32 318802438, i32 26214496, i32 318802438, i32 26214496, i32 587270663, i32 22020192, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1073878028, i32 1048592, i32 33559565, i32 1048656, i32 184568334, i32 26214512, i32 318802446, i32 26214512, i32 318802446, i32 26214512, i32 1124207116, i32 1048688, i32 453036557, i32 1048688, i32 587270671, i32 22020208, i32 1073878028, i32 1048592, i32 436261901, i32 1048656, i32 318802446, i32 26214512, i32 318802446, i32 26214512, i32 587270671, i32 22020208, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1342346244, i32 1048576, i32 838964229, i32 1048640, i32 184568326, i32 26214496, i32 184568326, i32 26214496, i32 1526909444, i32 1048672, i32 989975557, i32 1048672, i32 587270663, i32 22020192, i32 0, i32 0, i32 1476580356, i32 1048576, i32 989975557, i32 1048672, i32 184568326, i32 26214496, i32 587270663, i32 22020192, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1342346252, i32 1048592, i32 838964237, i32 1048656, i32 184568334, i32 26214512, i32 184568334, i32 26214512, i32 1526909452, i32 1048688, i32 989975565, i32 1048688, i32 587270671, i32 22020208, i32 0, i32 0, i32 1476580364, i32 1048592, i32 989975565, i32 1048688, i32 184568334, i32 26214512, i32 587270671, i32 22020208, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1073878020, i32 1001472, i32 1644368901, i32 1048640, i32 1392675334, i32 26214496, i32 1392675335, i32 26214496, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1073878028, i32 1001480, i32 1644368909, i32 1048648, i32 1392675342, i32 26214504, i32 1392675343, i32 26214504, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2572, i32 1048580, i32 285248013, i32 1048612, i32 427869454, i32 1048628, i32 562103566, i32 1048628, i32 562103566, i32 1048628, i32 25167116, i32 1048632, i32 293635341, i32 1048632, i32 293700877, i32 1048632, i32 696337679, i32 17825848, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2572, i32 1048584, i32 285248013, i32 1048616, i32 562103566, i32 1048632, i32 562103566, i32 1048632, i32 293700877, i32 1048632, i32 696337679, i32 17825848, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 134236676, i32 1048576, i32 16779781, i32 1048608, i32 25216262, i32 1048624, i32 25216262, i32 1048624, i32 562087180, i32 1048624, i32 1233259021, i32 1483056, i32 1099057677, i32 1483056, i32 696337679, i32 17825840, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 536922636, i32 1048576, i32 1233259021, i32 1483056, i32 427869454, i32 1048624, i32 1099057677, i32 1483056, i32 696337679, i32 17825840, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1073878028, i32 1048584, i32 33559565, i32 1048648, i32 184568334, i32 26214504, i32 318802446, i32 26214504, i32 318802446, i32 26214504, i32 1124207116, i32 1048688, i32 453036557, i32 1048688, i32 453069325, i32 1048688, i32 587270671, i32 22020208, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1073878028, i32 1048592, i32 436261901, i32 1048656, i32 318802446, i32 26214512, i32 318802446, i32 26214512, i32 453069325, i32 1048688, i32 587270671, i32 22020208, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1342346244, i32 1048576, i32 838964229, i32 1048640, i32 50350598, i32 26214496, i32 50350598, i32 26214496, i32 1795361292, i32 1048672, i32 1258427405, i32 1483104, i32 1124226061, i32 1483104, i32 587270671, i32 22020192, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1795363852, i32 1048672, i32 1258427405, i32 1483104, i32 184568334, i32 26214496, i32 1124226061, i32 1483104, i32 587270671, i32 22020192, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1073878020, i32 1048576, i32 436261893, i32 1048640, i32 1392675334, i32 26214496, i32 1526909446, i32 26214496, i32 1526909446, i32 26214496, i32 1124207108, i32 1048672, i32 453036549, i32 1048672, i32 1392675335, i32 26263648, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1073878028, i32 1048592, i32 436261901, i32 1048656, i32 1392675342, i32 26214512, i32 1526909454, i32 26214512, i32 1526909454, i32 26214512, i32 1124207116, i32 1048688, i32 453036557, i32 1048688, i32 1392675343, i32 26263664, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1073878020, i32 1048576, i32 436261893, i32 1048640, i32 1526909446, i32 26214496, i32 1526909446, i32 26214496, i32 1392675335, i32 26263648, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1073878028, i32 1048592, i32 436261901, i32 1048656, i32 1526909454, i32 26214512, i32 1526909454, i32 26214512, i32 1392675343, i32 26263664], [150 x i32] zeroinitializer }>, [832 x i8] zeroinitializer }, align 32
@b43_ntab_tmap = internal constant { <{ [400 x i32], [48 x i32] }>, [448 x i8] } { <{ [400 x i32], [48 x i32] }> <{ [400 x i32] [i32 -1970754944, i32 -1968526710, i32 -1970632024, i32 2184, i32 -2013265920, i32 -1970632534, i32 -1968666488, i32 -2004309848, i32 -250539760, i32 286331153, i32 301011217, i32 273, i32 285212672, i32 286388497, i32 286331153, i32 286331377, i32 -1970754944, i32 -1968526710, i32 -1970632024, i32 698504, i32 -2004353024, i32 -1970632534, i32 -1968666488, i32 -2004309848, i32 -1592717040, i32 286331153, i32 297865489, i32 273, i32 285212672, i32 286368017, i32 286331153, i32 286331297, i32 -1574821344, i32 572662306, i32 583148066, i32 546, i32 570425344, i32 572695074, i32 572662306, i32 572662434, i32 -250539760, i32 286331153, i32 301011217, i32 69905, i32 286326784, i32 286388497, i32 286331153, i32 286331377, i32 -1465218912, i32 -1467447128, i32 -1465341814, i32 559786, i32 -1431699456, i32 -1465341304, i32 -1467307350, i32 -1431663990, i32 -1431786848, i32 -1968534870, i32 -1433761142, i32 699016, i32 -1968570368, i32 -1431787384, i32 -1968665974, i32 -1970755448, i32 134744576, i32 168298506, i32 134875656, i32 526344, i32 134873088, i32 134875144, i32 134875144, i32 168430088, i32 -1600085856, i32 -2136956800, i32 -2139053920, i32 32896, i32 -2136997888, i32 -2136964960, i32 -1602183008, i32 -2139053920, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -1717989376, i32 -1684301381, i32 -1682335335, i32 -1717978695, i32 -1684423792, i32 -1682195557, i32 -1684300871, i32 2457, i32 -2013265920, i32 -1970632534, i32 -1968666488, i32 -2004309848, i32 -1970754944, i32 -1968526710, i32 -1970632024, i32 11184264, i32 570425344, i32 572699170, i32 572662306, i32 572662450, i32 -1306385888, i32 572662306, i32 584196642, i32 546, i32 285212672, i32 286368017, i32 286331153, i32 286331297, i32 -1592717040, i32 286331153, i32 297865489, i32 273, i32 855638016, i32 859026227, i32 858993459, i32 858993587, i32 -1288490192, i32 858993459, i32 869479219, i32 819, i32 570425344, i32 572695074, i32 572662306, i32 572662434, i32 -1574821344, i32 572662306, i32 583148066, i32 546, i32 -1715889408, i32 -1684301381, i32 -1682335335, i32 -1717978695, i32 -1684423783, i32 -1682195557, i32 -1684300871, i32 2457, i32 -2013265920, i32 -1970632534, i32 -1968666488, i32 -2004309848, i32 -1970754936, i32 -1968526710, i32 -1970632024, i32 145401992, i32 572662272, i32 572715554, i32 572662306, i32 572662514, i32 572662306, i32 572662306, i32 586293794, i32 546, i32 285212672, i32 286388497, i32 286331153, i32 286331153, i32 -250539759, i32 286331153, i32 301011217, i32 17895697, i32 -1147422464, i32 -1179010151, i32 -1180976197, i32 -1145332837, i32 -1178887749, i32 -1181115975, i32 -1179010661, i32 3003, i32 -1442840576, i32 -1465341304, i32 -1467307350, i32 -1431663990, i32 -1465218902, i32 -1467447128, i32 -1465341814, i32 176720554, i32 -1442840576, i32 -1465341304, i32 -1467307350, i32 -1431663990, i32 -1465218912, i32 -1467447128, i32 -1465341814, i32 2730, i32 -2013265920, i32 -1970632534, i32 -1968666488, i32 -2004309848, i32 -1970754944, i32 -1968526710, i32 -1970632024, i32 2184, i32 -1145324800, i32 -1717847109, i32 -1682334821, i32 -1179010629, i32 -1179018309, i32 -1179010629, i32 -1178887271, i32 2457, i32 -1979711488, i32 -1433884536, i32 -1467447126, i32 -1467315576, i32 -1467307894, i32 -2002212182, i32 -1465218390, i32 143173770, i32 185273088, i32 151718667, i32 185142027, i32 151587083, i32 151587595, i32 151587595, i32 151587593, i32 2313, i32 167772160, i32 168298504, i32 134875146, i32 134875656, i32 134875146, i32 134744074, i32 168430088, i32 134744074, i32 -1330597888, i32 -1869565776, i32 -1867476848, i32 -1330597744, i32 -1330605904, i32 -1867468624, i32 -1330605936, i32 144, i32 -2147483648, i32 -1602183040, i32 -1602191200, i32 -1602191232, i32 -1602183040, i32 -2136956768, i32 -1600094048, i32 10526880, i32 570425344, i32 572715554, i32 572662306, i32 572662514, i32 -232644064, i32 572662306, i32 586293794, i32 546, i32 285212672, i32 286388497, i32 286331153, i32 286331377, i32 -250539760, i32 286331153, i32 301011217, i32 273, i32 855638016, i32 859042611, i32 858993459, i32 858993651, i32 -214748368, i32 858993459, i32 871576371, i32 819, i32 570425344, i32 572715554, i32 572662306, i32 572662514, i32 -232644064, i32 572662306, i32 586293794, i32 546, i32 -1728053248, i32 -1684301381, i32 -1682335335, i32 -1717978695, i32 -1684423792, i32 -1682195557, i32 -1684300871, i32 2457, i32 -2013265920, i32 -1970632534, i32 -1968666488, i32 -2004309848, i32 -1970754944, i32 -1968526710, i32 -1970632024, i32 2184, i32 -2004320256, i32 -1970632534, i32 -1968666488, i32 -2004309848, i32 -1970754944, i32 -1968526710, i32 -1970632024, i32 2184, i32 -2013265920, i32 -1970632534, i32 -1968666488, i32 -2004309848, i32 -1970754944, i32 -1968526710, i32 -1970632024, i32 11184264, i32 -2002220544, i32 -1970632534, i32 -1968666488, i32 -2004309848, i32 -1970754936, i32 -1968526710, i32 -1970632024, i32 2184, i32 -2013265920, i32 -1970632534, i32 -1968666488, i32 -2004309848, i32 -1970754936, i32 -1968526710, i32 -1970632024, i32 145401992, i32 285212672, i32 286368017, i32 286331153, i32 286331297, i32 -1592717040, i32 286331153, i32 297865489, i32 273, i32 285212672, i32 286368017, i32 286331153, i32 286331297, i32 -1592717040, i32 286331153, i32 297865489, i32 273, i32 -2013265920, i32 -1970632534, i32 -1968666488, i32 -2004309848, i32 -1970754944, i32 -1968526710, i32 -1970632024, i32 2184, i32 -2013265920, i32 -1970632534, i32 -1968666488, i32 -2004309848, i32 -1970754944, i32 -1968526710, i32 -1970632024, i32 2184], [48 x i32] zeroinitializer }>, [448 x i8] zeroinitializer }, align 32
@b43_ntab_mcs = internal constant { <{ [104 x i8], [24 x i8] }>, [32 x i8] } { <{ [104 x i8], [24 x i8] }> <{ [104 x i8] c"\00\08\0A\10\12\19\1A\1C@HJPRYZ\\\80\88\8A\90\92\99\9A\9C\C0\C8\CA\D0\D2\D9\DA\DC\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\02\04\08\09\0A\0C\10\11\12\14\18\19\1A\1C !\22$@ABDHIJLPQRTXYZ\\`abd", [24 x i8] zeroinitializer }>, [32 x i8] zeroinitializer }, align 32
@b43_ntab_tx_gain_ipa_2057_rev14_2g = internal constant { [128 x i32], [128 x i8] } { [128 x i32] [i32 1356791854, i32 1355743277, i32 1354694700, i32 1354170411, i32 1353646122, i32 1353121833, i32 1352597545, i32 1352073256, i32 1351548967, i32 1351024679, i32 1350500391, i32 1349976103, i32 1349451815, i32 1348927527, i32 1348403240, i32 1347878953, i32 1347354667, i32 1346830382, i32 1346830379, i32 1346830377, i32 1346306092, i32 1346306089, i32 1345781804, i32 1345781802, i32 1345781800, i32 1345257517, i32 1345257515, i32 1345257512, i32 1345257510, i32 1344733229, i32 1344733226, i32 1344733224, i32 1344733222, i32 1344733220, i32 1344208942, i32 1344208939, i32 1344208937, i32 1344208935, i32 1344208932, i32 1344208930, i32 1344208928, i32 1344208927, i32 1343684652, i32 1343684649, i32 1343684647, i32 1343684644, i32 1343684642, i32 1343684641, i32 1343684639, i32 1343684637, i32 1343684635, i32 1343684634, i32 1343684632, i32 1343684631, i32 1343684629, i32 1343160364, i32 1343160362, i32 1343160359, i32 1343160357, i32 1343160355, i32 1343160354, i32 1343160351, i32 1343160350, i32 1343160348, i32 1343160346, i32 1343160345, i32 1343160344, i32 1343160342, i32 1343160341, i32 1343160341, i32 1343160341, i32 1343160341, i32 1343160341, i32 1343160341, i32 1343160341, i32 1343160341, i32 1343160341, i32 1343160341, i32 1343160341, i32 1343160341, i32 1343160341, i32 1343160341, i32 1343160341, i32 1343160341, i32 1343160341, i32 1343160341, i32 1343160341, i32 1343160341, i32 1343160341, i32 1343160341, i32 1343160341, i32 1343160341, i32 1343160341, i32 1343160341, i32 1343160341, i32 1343160341, i32 1343160341, i32 1343160341, i32 1343160341, i32 1343160341, i32 1343160341, i32 1343160341, i32 1343160341, i32 1343160341, i32 1343160341, i32 1343160341, i32 1343160341, i32 1343160341, i32 1343160341, i32 1343160341, i32 1343160341, i32 1343160341, i32 1343160341, i32 1343160341, i32 1343160341, i32 1343160341, i32 1343160341, i32 1343160341, i32 1343160341, i32 1343160341, i32 1343160341, i32 1343160341, i32 1343160341, i32 1343160341, i32 1343160341, i32 1343160341, i32 1343160341, i32 1343160341], [128 x i8] zeroinitializer }, align 32
@b43_ntab_tx_gain_ipa_2057_rev9_2g = internal constant { [128 x i32], [128 x i8] } { [128 x i32] [i32 1627324465, i32 1625751596, i32 1624178730, i32 1623654441, i32 1622605865, i32 1621557289, i32 1621033002, i32 1620508715, i32 1619460142, i32 1618411569, i32 1617887282, i32 1617362996, i32 1617362993, i32 1616838707, i32 1616838705, i32 1616314419, i32 1616314416, i32 1616314413, i32 1616314411, i32 1615790125, i32 1615790123, i32 1615790121, i32 1615790118, i32 1615265833, i32 1615265831, i32 1614741545, i32 1614741543, i32 1614741541, i32 1614217257, i32 1614217255, i32 1614217252, i32 1613692970, i32 1613692968, i32 1613692966, i32 1613692964, i32 1613168682, i32 1613168680, i32 1613168678, i32 1613168676, i32 1613168674, i32 1612644395, i32 1612644393, i32 1612644391, i32 1612644388, i32 1612644386, i32 1612644384, i32 1612644383, i32 1612644381, i32 1612120105, i32 1612120103, i32 1612120101, i32 1612120099, i32 1612120097, i32 1612120095, i32 1612120093, i32 1612120092, i32 1612120090, i32 1612120088, i32 1612120088, i32 1612120086, i32 1612120085, i32 1611595817, i32 1611595815, i32 1611595813, i32 1611595811, i32 1611595809, i32 1611595807, i32 1611595805, i32 1611595804, i32 1611595802, i32 1611595801, i32 1611595800, i32 1611595798, i32 1611595797, i32 1611596053, i32 1611596309, i32 1611596565, i32 1611596821, i32 1611597077, i32 1611597333, i32 1611597589, i32 1611597589, i32 1611597589, i32 1611597589, i32 1611597589, i32 1611597589, i32 1611597589, i32 1611597589, i32 1611597589, i32 1611597589, i32 1611597589, i32 1611597589, i32 1611597589, i32 1611597589, i32 1611597589, i32 1611597589, i32 1611597589, i32 1611597589, i32 1611597589, i32 1611597589, i32 1611597589, i32 1611597589, i32 1611597589, i32 1611597589, i32 1611597589, i32 1611597589, i32 1611597589, i32 1611597589, i32 1611597589, i32 1611597589, i32 1611597589, i32 1611597589, i32 1611597589, i32 1611597589, i32 1611597589, i32 1611597589, i32 1611597589, i32 1611597589, i32 1611597589, i32 1611597589, i32 1611597589, i32 1611597589, i32 1611597589, i32 1611597589, i32 1611597589, i32 1611597589, i32 1611597589, i32 1611597589], [128 x i8] zeroinitializer }, align 32
@b43_ntab_tx_gain_ipa_2057_rev5_2g = internal constant { [128 x i32], [128 x i8] } { [128 x i32] [i32 822018097, i32 820445233, i32 820445230, i32 818872366, i32 817823790, i32 816775214, i32 815726639, i32 813629491, i32 813629489, i32 813629486, i32 813105198, i32 812580910, i32 812056622, i32 811532335, i32 811008048, i32 811008045, i32 810483758, i32 809959473, i32 809959470, i32 809959468, i32 809959465, i32 809435180, i32 809435177, i32 808910893, i32 808910890, i32 808910888, i32 808386604, i32 808386602, i32 808386600, i32 808386598, i32 807862316, i32 807862313, i32 807862311, i32 807862309, i32 807862307, i32 807338028, i32 807338026, i32 807338024, i32 807338021, i32 807338020, i32 807338018, i32 807338015, i32 806813741, i32 806813739, i32 806813736, i32 806813734, i32 806813732, i32 806813730, i32 806813728, i32 806813726, i32 806813725, i32 806813723, i32 806813722, i32 806813720, i32 806813719, i32 806813717, i32 806289452, i32 806289449, i32 806289447, i32 806289444, i32 806289442, i32 806289441, i32 806289439, i32 806289437, i32 806289435, i32 806289434, i32 806289432, i32 806289431, i32 806289430, i32 806289429, i32 806289685, i32 806289941, i32 806290197, i32 806290453, i32 806290709, i32 806290965, i32 806291221, i32 806291221, i32 806291221, i32 806291221, i32 806291221, i32 806291221, i32 806291221, i32 806291221, i32 806291221, i32 806291221, i32 806291221, i32 806291221, i32 806291221, i32 806291221, i32 806291221, i32 806291221, i32 806291221, i32 806291221, i32 806291221, i32 806291221, i32 806291221, i32 806291221, i32 806291221, i32 806291221, i32 806291221, i32 806291221, i32 806291221, i32 806291221, i32 806291221, i32 806291221, i32 806291221, i32 806291221, i32 806291221, i32 806291221, i32 806291221, i32 806291221, i32 806291221, i32 806291221, i32 806291221, i32 806291221, i32 806291221, i32 806291221, i32 806291221, i32 806291221, i32 806291221, i32 806291221, i32 806291221, i32 806291221, i32 806291221, i32 806291221, i32 806291221, i32 806291221], [128 x i8] zeroinitializer }, align 32
@b43_ntab_tx_gain_ipa_rev5_2g = internal constant { [128 x i32], [128 x i8] } { [128 x i32] [i32 536281133, i32 536281131, i32 536281130, i32 536281129, i32 536281128, i32 536281127, i32 536281126, i32 536281125, i32 519503917, i32 519503915, i32 519503914, i32 519503913, i32 519503912, i32 519503911, i32 519503910, i32 519503909, i32 502726701, i32 502726699, i32 502726698, i32 502726697, i32 502726696, i32 502726695, i32 502726694, i32 502726693, i32 485949485, i32 485949483, i32 485949482, i32 485949481, i32 485949480, i32 485949479, i32 485949478, i32 485949477, i32 469172269, i32 469172267, i32 469172266, i32 469172265, i32 469172264, i32 469172263, i32 469172262, i32 469172261, i32 452395053, i32 452395051, i32 452395050, i32 452395049, i32 452395048, i32 452395047, i32 452395046, i32 452395045, i32 435617837, i32 435617835, i32 435617834, i32 435617833, i32 435617832, i32 435617831, i32 435617830, i32 435617829, i32 418840621, i32 418840619, i32 418840618, i32 418840617, i32 418840616, i32 418840615, i32 418840614, i32 418840613, i32 402063405, i32 402063403, i32 402063402, i32 402063401, i32 402063400, i32 402063399, i32 402063398, i32 402063397, i32 385286189, i32 385286187, i32 385286186, i32 385286185, i32 385286184, i32 385286183, i32 385286182, i32 385286181, i32 368508973, i32 368508971, i32 368508970, i32 368508969, i32 368508968, i32 368508967, i32 368508966, i32 368508965, i32 351731757, i32 351731755, i32 351731754, i32 351731753, i32 351731752, i32 351731751, i32 351731750, i32 351731749, i32 334954541, i32 334954539, i32 334954538, i32 334954537, i32 334954536, i32 334954535, i32 334954534, i32 334954533, i32 318177325, i32 318177323, i32 318177322, i32 318177321, i32 318177320, i32 318177319, i32 318177318, i32 318177317, i32 301400109, i32 301400107, i32 301400106, i32 301400105, i32 301400104, i32 301400103, i32 301400102, i32 301400101, i32 284622893, i32 284622891, i32 284622890, i32 284622889, i32 284622888, i32 284622887, i32 284622886, i32 284622885], [128 x i8] zeroinitializer }, align 32
@b43_ntab_tx_gain_ipa_rev6_2g = internal constant { [128 x i32], [128 x i8] } { [128 x i32] [i32 267845677, i32 267845675, i32 267845674, i32 267845673, i32 267845672, i32 267845671, i32 267845670, i32 267845669, i32 251068461, i32 251068459, i32 251068458, i32 251068457, i32 251068456, i32 251068455, i32 251068454, i32 251068453, i32 234291245, i32 234291243, i32 234291242, i32 234291241, i32 234291240, i32 234291239, i32 234291238, i32 234291237, i32 217514029, i32 217514027, i32 217514026, i32 217514025, i32 217514024, i32 217514023, i32 217514022, i32 217514021, i32 200736813, i32 200736811, i32 200736810, i32 200736809, i32 200736808, i32 200736807, i32 200736806, i32 200736805, i32 183959597, i32 183959595, i32 183959594, i32 183959593, i32 183959592, i32 183959591, i32 183959590, i32 183959589, i32 167182381, i32 167182379, i32 167182378, i32 167182377, i32 167182376, i32 167182375, i32 167182374, i32 167182373, i32 150405165, i32 150405163, i32 150405162, i32 150405161, i32 150405160, i32 150405159, i32 150405158, i32 150405157, i32 133627949, i32 133627947, i32 133627946, i32 133627945, i32 133627944, i32 133627943, i32 133627942, i32 133627941, i32 116850733, i32 116850731, i32 116850730, i32 116850729, i32 116850728, i32 116850727, i32 116850726, i32 116850725, i32 100073517, i32 100073515, i32 100073514, i32 100073513, i32 100073512, i32 100073511, i32 100073510, i32 100073509, i32 83296301, i32 83296299, i32 83296298, i32 83296297, i32 83296296, i32 83296295, i32 83296294, i32 83296293, i32 66519085, i32 66519083, i32 66519082, i32 66519081, i32 66519080, i32 66519079, i32 66519078, i32 66519077, i32 49741869, i32 49741867, i32 49741866, i32 49741865, i32 49741864, i32 49741863, i32 49741862, i32 49741861, i32 32964653, i32 32964651, i32 32964650, i32 32964649, i32 32964648, i32 32964647, i32 32964646, i32 32964645, i32 16187437, i32 16187435, i32 16187434, i32 16187433, i32 16187432, i32 16187431, i32 16187430, i32 16187429], [128 x i8] zeroinitializer }, align 32
@b43_ntab_tx_gain_ipa_rev3_2g = internal constant { [128 x i32], [128 x i8] } { [128 x i32] [i32 1610022957, i32 1610022955, i32 1610022954, i32 1610022953, i32 1610022952, i32 1610022951, i32 1610022950, i32 1610022949, i32 1593245741, i32 1593245739, i32 1593245738, i32 1593245737, i32 1593245736, i32 1593245735, i32 1593245734, i32 1593245733, i32 1576468525, i32 1576468523, i32 1576468522, i32 1576468521, i32 1576468520, i32 1576468519, i32 1576468518, i32 1576468517, i32 1559691309, i32 1559691307, i32 1559691306, i32 1559691305, i32 1559691304, i32 1559691303, i32 1559691302, i32 1559691301, i32 1542914093, i32 1542914091, i32 1542914090, i32 1542914089, i32 1542914088, i32 1542914087, i32 1542914086, i32 1542914085, i32 1526136877, i32 1526136875, i32 1526136874, i32 1526136873, i32 1526136872, i32 1526136871, i32 1526136870, i32 1526136869, i32 1509359661, i32 1509359659, i32 1509359658, i32 1509359657, i32 1509359656, i32 1509359655, i32 1509359654, i32 1509359653, i32 1492582445, i32 1492582443, i32 1492582442, i32 1492582441, i32 1492582440, i32 1492582439, i32 1492582438, i32 1492582437, i32 1475805229, i32 1475805227, i32 1475805226, i32 1475805225, i32 1475805224, i32 1475805223, i32 1475805222, i32 1475805221, i32 1459028013, i32 1459028011, i32 1459028010, i32 1459028009, i32 1459028008, i32 1459028007, i32 1459028006, i32 1459028005, i32 1442250797, i32 1442250795, i32 1442250794, i32 1442250793, i32 1442250792, i32 1442250791, i32 1442250790, i32 1442250789, i32 1425473581, i32 1425473579, i32 1425473578, i32 1425473577, i32 1425473576, i32 1425473575, i32 1425473574, i32 1425473573, i32 1408696365, i32 1408696363, i32 1408696362, i32 1408696361, i32 1408696360, i32 1408696359, i32 1408696358, i32 1408696357, i32 1391919149, i32 1391919147, i32 1391919146, i32 1391919145, i32 1391919144, i32 1391919143, i32 1391919142, i32 1391919141, i32 1375141933, i32 1375141931, i32 1375141930, i32 1375141929, i32 1375141928, i32 1375141927, i32 1375141926, i32 1375141925, i32 1358364717, i32 1358364715, i32 1358364714, i32 1358364713, i32 1358364712, i32 1358364711, i32 1358364710, i32 1358364709], [128 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"No 2GHz IPA gain table available for this device\0A\00", [46 x i8] zeroinitializer }, align 32
@b43_ntab_tx_gain_ipa_2057_rev9_5g = internal constant { [128 x i32], [128 x i8] } { [128 x i32] [i32 2139029587, i32 2139029579, i32 2139029572, i32 2139029567, i32 2139029561, i32 2139029557, i32 2139029554, i32 2139029552, i32 2139029549, i32 2122252336, i32 2122252333, i32 2105475122, i32 2105475119, i32 2105475116, i32 2088697906, i32 2088697904, i32 2088697901, i32 2071920688, i32 2071920686, i32 2071920683, i32 2055143474, i32 2055143472, i32 2055143469, i32 2055143467, i32 2038366256, i32 2038366254, i32 2038366251, i32 2038366249, i32 2021589040, i32 2021589037, i32 2021589035, i32 2004811826, i32 2004811824, i32 2004811821, i32 2004811819, i32 1988034609, i32 1988034607, i32 1988034604, i32 1988034602, i32 1971257393, i32 1971257391, i32 1971257388, i32 1971257386, i32 1954480176, i32 1954480173, i32 1954480171, i32 1937702962, i32 1937702959, i32 1937702956, i32 1937702954, i32 1920925744, i32 1920925741, i32 1920925739, i32 1920925737, i32 1904148528, i32 1904148525, i32 1904148523, i32 1887371313, i32 1887371311, i32 1887371308, i32 1887371306, i32 1887371303, i32 1887371301, i32 1887371299, i32 1887371297, i32 1887371295, i32 1887371293, i32 1887371292, i32 1887371290, i32 1887371289, i32 1887371287, i32 1887371286, i32 1887371285, i32 1887371284, i32 1887371282, i32 1887371282, i32 1887371281, i32 1887371280, i32 1887371279, i32 1887371278, i32 1887371277, i32 1887371277, i32 1887371276, i32 1887371275, i32 1887371274, i32 1887371274, i32 1887371273, i32 1887371272, i32 1887371272, i32 1887371272, i32 1887371272, i32 1887371271, i32 1887371271, i32 1887371270, i32 1887371270, i32 1887371270, i32 1887371269, i32 1887371269, i32 1887371269, i32 1887371268, i32 1887371268, i32 1887371268, i32 1887371267, i32 1887371267, i32 1887371267, i32 1887371267, i32 1887371267, i32 1887371267, i32 1887371267, i32 1887371267, i32 1887371267, i32 1887371267, i32 1887371266, i32 1887371266, i32 1887371266, i32 1887371266, i32 1887371266, i32 1887371266, i32 1887371266, i32 1887371266, i32 1887371266, i32 1887371265, i32 1887371265, i32 1887371265, i32 1887371265, i32 1887371265, i32 1887371265, i32 1887371265], [128 x i8] zeroinitializer }, align 32
@b43_ntab_tx_gain_ipa_rev3_5g = internal constant { [128 x i32], [128 x i8] } { [128 x i32] [i32 2146893877, i32 2146893875, i32 2146893874, i32 2146893873, i32 2146893871, i32 2146893870, i32 2146893869, i32 2146893867, i32 2146893866, i32 2146893865, i32 2146893864, i32 2146893863, i32 2146893862, i32 2146893860, i32 2146893859, i32 2146893858, i32 2130116648, i32 2130116647, i32 2130116646, i32 2130116645, i32 2130116644, i32 2130116643, i32 2113339432, i32 2113339431, i32 2113339430, i32 2113339429, i32 2113339428, i32 2113339427, i32 2113339426, i32 2096562217, i32 2096562216, i32 2096562215, i32 2096562214, i32 2096562213, i32 2096562211, i32 2096562210, i32 2079785001, i32 2079785000, i32 2079784998, i32 2079784997, i32 2079784996, i32 2079784995, i32 2079784994, i32 2079784993, i32 2063007785, i32 2063007784, i32 2063007783, i32 2063007782, i32 2063007781, i32 2063007780, i32 2063007779, i32 2063007778, i32 2046230569, i32 2046230568, i32 2046230567, i32 2046230566, i32 2046230565, i32 2046230564, i32 2046230563, i32 2046230562, i32 2029453353, i32 2029453352, i32 2029453351, i32 2029453350, i32 2029453349, i32 2029453348, i32 2029453347, i32 2029453346, i32 2012676137, i32 2012676136, i32 2012676135, i32 2012676134, i32 2012676133, i32 2012676132, i32 2012676131, i32 2012676130, i32 1995898921, i32 1995898920, i32 1995898919, i32 1995898918, i32 1995898916, i32 1995898915, i32 1995898914, i32 1995898913, i32 1979121705, i32 1979121704, i32 1979121703, i32 1979121702, i32 1979121701, i32 1979121700, i32 1979121699, i32 1962344489, i32 1962344488, i32 1962344486, i32 1962344485, i32 1962344484, i32 1962344483, i32 1962344482, i32 1945567273, i32 1945567271, i32 1945567270, i32 1945567269, i32 1945567268, i32 1945567267, i32 1945567266, i32 1928790056, i32 1928790055, i32 1928790054, i32 1928790053, i32 1928790052, i32 1928790051, i32 1928790050, i32 1912012840, i32 1912012839, i32 1912012838, i32 1912012837, i32 1912012836, i32 1912012835, i32 1895235624, i32 1895235623, i32 1895235622, i32 1895235620, i32 1895235619, i32 1895235618, i32 1895235617, i32 1895235616, i32 1895235616, i32 1895235615], [128 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"No 5GHz IPA gain table available for this device\0A\00", [46 x i8] zeroinitializer }, align 32
@switch.table.b43_nphy_get_rf_ctl_over_rev7 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @tbl_rf_control_override_rev7_over0, ptr @tbl_rf_control_override_rev7_over1, ptr @tbl_rf_control_override_rev7_over2], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 268435456, i64 536870912, i64 805306368]
@__sancov_gen_cov_switch_values.16 = internal global [5 x i64] [i64 3, i64 32, i64 268435456, i64 536870912, i64 805306368]
@__sancov_gen_cov_switch_values.17 = internal global [5 x i64] [i64 3, i64 32, i64 268435456, i64 536870912, i64 805306368]
@__sancov_gen_cov_switch_values.18 = internal global [5 x i64] [i64 3, i64 32, i64 268435456, i64 536870912, i64 805306368]
@__sancov_gen_cov_switch_values.19 = internal global [9 x i64] [i64 7, i64 8, i64 3, i64 4, i64 5, i64 6, i64 8, i64 16, i64 17]
@__sancov_gen_cov_switch_values.20 = internal global [7 x i64] [i64 5, i64 8, i64 3, i64 4, i64 5, i64 6, i64 16]
@__sancov_gen_cov_switch_values.21 = internal global [6 x i64] [i64 4, i64 8, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.22 = internal global [6 x i64] [i64 4, i64 8, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 8, i64 16, i64 17]
@___asan_gen_.24 = private unnamed_addr constant [36 x i8] c"b43_ntab_papd_pga_gain_delta_ipa_2g\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 2863, i32 10 }
@___asan_gen_.27 = private unnamed_addr constant [21 x i8] c"tbl_iqcal_gainparams\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 2902, i32 11 }
@___asan_gen_.30 = private unnamed_addr constant [10 x i8] c"ladder_lo\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 2927, i32 34 }
@___asan_gen_.33 = private unnamed_addr constant [10 x i8] c"ladder_iq\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 2948, i32 34 }
@___asan_gen_.36 = private unnamed_addr constant [8 x i8] c"loscale\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 2969, i32 11 }
@___asan_gen_.39 = private unnamed_addr constant [31 x i8] c"tbl_tx_iqlo_cal_loft_ladder_40\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 3004, i32 11 }
@___asan_gen_.42 = private unnamed_addr constant [31 x i8] c"tbl_tx_iqlo_cal_loft_ladder_20\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 3012, i32 11 }
@___asan_gen_.45 = private unnamed_addr constant [32 x i8] c"tbl_tx_iqlo_cal_iqimb_ladder_40\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 3020, i32 11 }
@___asan_gen_.48 = private unnamed_addr constant [32 x i8] c"tbl_tx_iqlo_cal_iqimb_ladder_20\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 3028, i32 11 }
@___asan_gen_.51 = private unnamed_addr constant [36 x i8] c"tbl_tx_iqlo_cal_startcoefs_nphyrev3\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 3036, i32 11 }
@___asan_gen_.54 = private unnamed_addr constant [27 x i8] c"tbl_tx_iqlo_cal_startcoefs\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 3038, i32 11 }
@___asan_gen_.57 = private unnamed_addr constant [36 x i8] c"tbl_tx_iqlo_cal_cmds_recal_nphyrev3\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 3040, i32 11 }
@___asan_gen_.60 = private unnamed_addr constant [27 x i8] c"tbl_tx_iqlo_cal_cmds_recal\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 3046, i32 11 }
@___asan_gen_.63 = private unnamed_addr constant [29 x i8] c"tbl_tx_iqlo_cal_cmds_fullcal\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 3052, i32 11 }
@___asan_gen_.66 = private unnamed_addr constant [38 x i8] c"tbl_tx_iqlo_cal_cmds_fullcal_nphyrev3\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 3058, i32 11 }
@___asan_gen_.69 = private unnamed_addr constant [24 x i8] c"tbl_tx_filter_coef_rev4\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 3064, i32 11 }
@___asan_gen_.72 = private unnamed_addr constant [29 x i8] c"tbl_rf_control_override_rev2\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 3089, i32 44 }
@___asan_gen_.75 = private unnamed_addr constant [29 x i8] c"tbl_rf_control_override_rev3\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 3107, i32 44 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 3316, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant [26 x i8] c"b43_ntab_tx_gain_rev0_1_2\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 2326, i32 18 }
@___asan_gen_.84 = private unnamed_addr constant [29 x i8] c"b43_ntab_tx_gain_epa_rev5_5g\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 2540, i32 18 }
@___asan_gen_.87 = private unnamed_addr constant [29 x i8] c"b43_ntab_tx_gain_epa_rev4_5g\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 2470, i32 18 }
@___asan_gen_.90 = private unnamed_addr constant [36 x i8] c"b43_ntab_tx_gain_epa_rev4_hi_pwr_5g\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 2505, i32 18 }
@___asan_gen_.93 = private unnamed_addr constant [29 x i8] c"b43_ntab_tx_gain_epa_rev3_5g\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 2435, i32 18 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 3711, i32 11 }
@___asan_gen_.99 = private unnamed_addr constant [36 x i8] c"b43_ntab_tx_gain_epa_rev3_hi_pwr_2g\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 2398, i32 18 }
@___asan_gen_.102 = private unnamed_addr constant [29 x i8] c"b43_ntab_tx_gain_epa_rev3_2g\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 2363, i32 18 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 3726, i32 11 }
@___asan_gen_.108 = private unnamed_addr constant [37 x i8] c"b43_ntab_rf_pwr_offset_2057_rev14_2g\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 2892, i32 18 }
@___asan_gen_.111 = private unnamed_addr constant [36 x i8] c"b43_ntab_rf_pwr_offset_2057_rev9_2g\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 2871, i32 18 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 3749, i32 10 }
@___asan_gen_.117 = private unnamed_addr constant [36 x i8] c"b43_ntab_rf_pwr_offset_2057_rev9_5g\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 2882, i32 18 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 3760, i32 10 }
@___asan_gen_.123 = private unnamed_addr constant [35 x i8] c"nphy_gain_ctl_wa_phy6_radio11_ghz2\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 3168, i32 46 }
@___asan_gen_.126 = private unnamed_addr constant [25 x i8] c"nphy_gain_ctl_workaround\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 3179, i32 46 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 3794, i32 21 }
@___asan_gen_.132 = private unnamed_addr constant [10 x i8] c"gain_data\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 3800, i32 21 }
@___asan_gen_.135 = private unnamed_addr constant [35 x i8] c"tbl_rf_control_override_rev7_over0\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 3127, i32 4 }
@___asan_gen_.138 = private unnamed_addr constant [35 x i8] c"tbl_rf_control_override_rev7_over1\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 3143, i32 4 }
@___asan_gen_.141 = private unnamed_addr constant [35 x i8] c"tbl_rf_control_override_rev7_over2\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 3160, i32 4 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 3855, i32 19 }
@___asan_gen_.147 = private unnamed_addr constant [21 x i8] c"b43_ntab_noisevar_r7\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 2255, i32 18 }
@___asan_gen_.150 = private unnamed_addr constant [29 x i8] c"b43_ntab_estimatepowerlt0_r3\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 1844, i32 17 }
@___asan_gen_.153 = private unnamed_addr constant [29 x i8] c"b43_ntab_estimatepowerlt1_r3\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 1855, i32 17 }
@___asan_gen_.156 = private unnamed_addr constant [25 x i8] c"b43_ntab_adjustpower0_r3\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 1866, i32 17 }
@___asan_gen_.159 = private unnamed_addr constant [25 x i8] c"b43_ntab_adjustpower1_r3\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 1885, i32 17 }
@___asan_gen_.162 = private unnamed_addr constant [21 x i8] c"b43_ntab_gainctl0_r3\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 1904, i32 18 }
@___asan_gen_.165 = private unnamed_addr constant [21 x i8] c"b43_ntab_gainctl1_r3\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 1939, i32 18 }
@___asan_gen_.168 = private unnamed_addr constant [18 x i8] c"b43_ntab_iqlt0_r3\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 1974, i32 18 }
@___asan_gen_.171 = private unnamed_addr constant [18 x i8] c"b43_ntab_iqlt1_r3\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 2009, i32 18 }
@___asan_gen_.174 = private unnamed_addr constant [20 x i8] c"b43_ntab_loftlt0_r3\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 2044, i32 18 }
@___asan_gen_.177 = private unnamed_addr constant [20 x i8] c"b43_ntab_loftlt1_r3\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 2069, i32 18 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 3509, i32 19 }
@___asan_gen_.183 = private unnamed_addr constant [18 x i8] c"b43_ntab_pilot_r3\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 1300, i32 18 }
@___asan_gen_.186 = private unnamed_addr constant [18 x i8] c"b43_ntab_tdtrn_r3\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 1438, i32 18 }
@___asan_gen_.189 = private unnamed_addr constant [16 x i8] c"b43_ntab_mcs_r3\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 1684, i32 18 }
@___asan_gen_.192 = private unnamed_addr constant [20 x i8] c"b43_ntab_tdi20a0_r3\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 1709, i32 18 }
@___asan_gen_.195 = private unnamed_addr constant [20 x i8] c"b43_ntab_tdi20a1_r3\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 1726, i32 18 }
@___asan_gen_.198 = private unnamed_addr constant [20 x i8] c"b43_ntab_tdi40a0_r3\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 1743, i32 18 }
@___asan_gen_.201 = private unnamed_addr constant [20 x i8] c"b43_ntab_tdi40a1_r3\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 1774, i32 18 }
@___asan_gen_.204 = private unnamed_addr constant [23 x i8] c"b43_ntab_channelest_r3\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 1810, i32 18 }
@___asan_gen_.207 = private unnamed_addr constant [24 x i8] c"b43_ntab_framelookup_r3\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 1837, i32 17 }
@___asan_gen_.210 = private unnamed_addr constant [24 x i8] c"b43_ntab_framestruct_r3\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 1089, i32 18 }
@___asan_gen_.213 = private unnamed_addr constant [17 x i8] c"b43_ntab_tmap_r7\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 2139, i32 18 }
@___asan_gen_.216 = private unnamed_addr constant [21 x i8] c"b43_ntab_noisevar_r3\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 1617, i32 18 }
@___asan_gen_.219 = private unnamed_addr constant [21 x i8] c"b43_ntab_antswctl_r3\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 2097, i32 18 }
@___asan_gen_.222 = private unnamed_addr constant [17 x i8] c"b43_ntab_tmap_r3\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 1318, i32 18 }
@___asan_gen_.225 = private unnamed_addr constant [21 x i8] c"b43_ntab_framelookup\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 109, i32 17 }
@___asan_gen_.228 = private unnamed_addr constant [15 x i8] c"b43_ntab_tdtrn\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 794, i32 18 }
@___asan_gen_.231 = private unnamed_addr constant [15 x i8] c"b43_ntab_pilot\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 675, i32 18 }
@___asan_gen_.234 = private unnamed_addr constant [17 x i8] c"b43_ntab_tdi20a0\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 698, i32 18 }
@___asan_gen_.237 = private unnamed_addr constant [17 x i8] c"b43_ntab_tdi20a1\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 715, i32 18 }
@___asan_gen_.240 = private unnamed_addr constant [17 x i8] c"b43_ntab_tdi40a0\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 732, i32 18 }
@___asan_gen_.243 = private unnamed_addr constant [17 x i8] c"b43_ntab_tdi40a1\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 763, i32 18 }
@___asan_gen_.246 = private unnamed_addr constant [20 x i8] c"b43_ntab_channelest\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 60, i32 18 }
@___asan_gen_.249 = private unnamed_addr constant [20 x i8] c"b43_ntab_noisevar10\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 541, i32 18 }
@___asan_gen_.252 = private unnamed_addr constant [20 x i8] c"b43_ntab_noisevar11\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 608, i32 18 }
@___asan_gen_.255 = private unnamed_addr constant [18 x i8] c"b43_ntab_gainctl0\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 327, i32 18 }
@___asan_gen_.258 = private unnamed_addr constant [18 x i8] c"b43_ntab_gainctl1\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 362, i32 18 }
@___asan_gen_.261 = private unnamed_addr constant [26 x i8] c"b43_ntab_estimatepowerlt0\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 87, i32 17 }
@___asan_gen_.264 = private unnamed_addr constant [26 x i8] c"b43_ntab_estimatepowerlt1\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 98, i32 17 }
@___asan_gen_.267 = private unnamed_addr constant [22 x i8] c"b43_ntab_adjustpower0\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 18, i32 17 }
@___asan_gen_.270 = private unnamed_addr constant [22 x i8] c"b43_ntab_adjustpower1\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 37, i32 17 }
@___asan_gen_.273 = private unnamed_addr constant [15 x i8] c"b43_ntab_iqlt0\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 402, i32 18 }
@___asan_gen_.276 = private unnamed_addr constant [15 x i8] c"b43_ntab_iqlt1\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 437, i32 18 }
@___asan_gen_.279 = private unnamed_addr constant [17 x i8] c"b43_ntab_loftlt0\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 472, i32 18 }
@___asan_gen_.282 = private unnamed_addr constant [17 x i8] c"b43_ntab_loftlt1\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 497, i32 18 }
@___asan_gen_.285 = private unnamed_addr constant [21 x i8] c"b43_ntab_framestruct\00", align 1
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 116, i32 18 }
@___asan_gen_.288 = private unnamed_addr constant [14 x i8] c"b43_ntab_tmap\00", align 1
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 973, i32 18 }
@___asan_gen_.291 = private unnamed_addr constant [13 x i8] c"b43_ntab_mcs\00", align 1
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 522, i32 17 }
@___asan_gen_.294 = private unnamed_addr constant [35 x i8] c"b43_ntab_tx_gain_ipa_2057_rev14_2g\00", align 1
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 2755, i32 18 }
@___asan_gen_.297 = private unnamed_addr constant [34 x i8] c"b43_ntab_tx_gain_ipa_2057_rev9_2g\00", align 1
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 2719, i32 18 }
@___asan_gen_.300 = private unnamed_addr constant [34 x i8] c"b43_ntab_tx_gain_ipa_2057_rev5_2g\00", align 1
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 2683, i32 18 }
@___asan_gen_.303 = private unnamed_addr constant [29 x i8] c"b43_ntab_tx_gain_ipa_rev5_2g\00", align 1
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 2612, i32 18 }
@___asan_gen_.306 = private unnamed_addr constant [29 x i8] c"b43_ntab_tx_gain_ipa_rev6_2g\00", align 1
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 2647, i32 18 }
@___asan_gen_.309 = private unnamed_addr constant [29 x i8] c"b43_ntab_tx_gain_ipa_rev3_2g\00", align 1
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 2577, i32 18 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 3667, i32 10 }
@___asan_gen_.315 = private unnamed_addr constant [34 x i8] c"b43_ntab_tx_gain_ipa_2057_rev9_5g\00", align 1
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 2828, i32 18 }
@___asan_gen_.318 = private unnamed_addr constant [29 x i8] c"b43_ntab_tx_gain_ipa_rev3_5g\00", align 1
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 2792, i32 18 }
@___asan_gen_.321 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.322 = private constant [51 x i8] c"../drivers/net/wireless/broadcom/b43/tables_nphy.c\00", align 1
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 3680, i32 10 }
@___asan_gen_.324 = private unnamed_addr constant [43 x i8] c"switch.table.b43_nphy_get_rf_ctl_over_rev7\00", align 1
@llvm.compiler.used = appending global [101 x ptr] [ptr @b43_ntab_papd_pga_gain_delta_ipa_2g, ptr @tbl_iqcal_gainparams, ptr @ladder_lo, ptr @ladder_iq, ptr @loscale, ptr @tbl_tx_iqlo_cal_loft_ladder_40, ptr @tbl_tx_iqlo_cal_loft_ladder_20, ptr @tbl_tx_iqlo_cal_iqimb_ladder_40, ptr @tbl_tx_iqlo_cal_iqimb_ladder_20, ptr @tbl_tx_iqlo_cal_startcoefs_nphyrev3, ptr @tbl_tx_iqlo_cal_startcoefs, ptr @tbl_tx_iqlo_cal_cmds_recal_nphyrev3, ptr @tbl_tx_iqlo_cal_cmds_recal, ptr @tbl_tx_iqlo_cal_cmds_fullcal, ptr @tbl_tx_iqlo_cal_cmds_fullcal_nphyrev3, ptr @tbl_tx_filter_coef_rev4, ptr @tbl_rf_control_override_rev2, ptr @tbl_rf_control_override_rev3, ptr @.str, ptr @b43_ntab_tx_gain_rev0_1_2, ptr @b43_ntab_tx_gain_epa_rev5_5g, ptr @b43_ntab_tx_gain_epa_rev4_5g, ptr @b43_ntab_tx_gain_epa_rev4_hi_pwr_5g, ptr @b43_ntab_tx_gain_epa_rev3_5g, ptr @.str.1, ptr @b43_ntab_tx_gain_epa_rev3_hi_pwr_2g, ptr @b43_ntab_tx_gain_epa_rev3_2g, ptr @.str.2, ptr @b43_ntab_rf_pwr_offset_2057_rev14_2g, ptr @b43_ntab_rf_pwr_offset_2057_rev9_2g, ptr @.str.3, ptr @b43_ntab_rf_pwr_offset_2057_rev9_5g, ptr @.str.4, ptr @nphy_gain_ctl_wa_phy6_radio11_ghz2, ptr @nphy_gain_ctl_workaround, ptr @b43_nphy_get_gain_ctl_workaround_ent.gain_data, ptr @b43_nphy_get_gain_ctl_workaround_ent.gain_data.5, ptr @tbl_rf_control_override_rev7_over0, ptr @tbl_rf_control_override_rev7_over1, ptr @tbl_rf_control_override_rev7_over2, ptr @.str.6, ptr @b43_ntab_noisevar_r7, ptr @b43_ntab_estimatepowerlt0_r3, ptr @b43_ntab_estimatepowerlt1_r3, ptr @b43_ntab_adjustpower0_r3, ptr @b43_ntab_adjustpower1_r3, ptr @b43_ntab_gainctl0_r3, ptr @b43_ntab_gainctl1_r3, ptr @b43_ntab_iqlt0_r3, ptr @b43_ntab_iqlt1_r3, ptr @b43_ntab_loftlt0_r3, ptr @b43_ntab_loftlt1_r3, ptr @.str.7, ptr @b43_ntab_pilot_r3, ptr @b43_ntab_tdtrn_r3, ptr @b43_ntab_mcs_r3, ptr @b43_ntab_tdi20a0_r3, ptr @b43_ntab_tdi20a1_r3, ptr @b43_ntab_tdi40a0_r3, ptr @b43_ntab_tdi40a1_r3, ptr @b43_ntab_channelest_r3, ptr @b43_ntab_framelookup_r3, ptr @b43_ntab_framestruct_r3, ptr @b43_ntab_tmap_r7, ptr @b43_ntab_noisevar_r3, ptr @b43_ntab_antswctl_r3, ptr @b43_ntab_tmap_r3, ptr @b43_ntab_framelookup, ptr @b43_ntab_tdtrn, ptr @b43_ntab_pilot, ptr @b43_ntab_tdi20a0, ptr @b43_ntab_tdi20a1, ptr @b43_ntab_tdi40a0, ptr @b43_ntab_tdi40a1, ptr @b43_ntab_channelest, ptr @b43_ntab_noisevar10, ptr @b43_ntab_noisevar11, ptr @b43_ntab_gainctl0, ptr @b43_ntab_gainctl1, ptr @b43_ntab_estimatepowerlt0, ptr @b43_ntab_estimatepowerlt1, ptr @b43_ntab_adjustpower0, ptr @b43_ntab_adjustpower1, ptr @b43_ntab_iqlt0, ptr @b43_ntab_iqlt1, ptr @b43_ntab_loftlt0, ptr @b43_ntab_loftlt1, ptr @b43_ntab_framestruct, ptr @b43_ntab_tmap, ptr @b43_ntab_mcs, ptr @b43_ntab_tx_gain_ipa_2057_rev14_2g, ptr @b43_ntab_tx_gain_ipa_2057_rev9_2g, ptr @b43_ntab_tx_gain_ipa_2057_rev5_2g, ptr @b43_ntab_tx_gain_ipa_rev5_2g, ptr @b43_ntab_tx_gain_ipa_rev6_2g, ptr @b43_ntab_tx_gain_ipa_rev3_2g, ptr @.str.14, ptr @b43_ntab_tx_gain_ipa_2057_rev9_5g, ptr @b43_ntab_tx_gain_ipa_rev3_5g, ptr @.str.15, ptr @switch.table.b43_nphy_get_rf_ctl_over_rev7], section "llvm.metadata"
@0 = internal global [101 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_ntab_papd_pga_gain_delta_ipa_2g to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tbl_iqcal_gainparams to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ladder_lo to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ladder_iq to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loscale to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tbl_tx_iqlo_cal_loft_ladder_40 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tbl_tx_iqlo_cal_loft_ladder_20 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tbl_tx_iqlo_cal_iqimb_ladder_40 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tbl_tx_iqlo_cal_iqimb_ladder_20 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tbl_tx_iqlo_cal_startcoefs_nphyrev3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tbl_tx_iqlo_cal_startcoefs to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tbl_tx_iqlo_cal_cmds_recal_nphyrev3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tbl_tx_iqlo_cal_cmds_recal to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tbl_tx_iqlo_cal_cmds_fullcal to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tbl_tx_iqlo_cal_cmds_fullcal_nphyrev3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tbl_tx_filter_coef_rev4 to i32), i32 210, i32 256, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tbl_rf_control_override_rev2 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tbl_rf_control_override_rev3 to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_ntab_tx_gain_rev0_1_2 to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_ntab_tx_gain_epa_rev5_5g to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_ntab_tx_gain_epa_rev4_5g to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_ntab_tx_gain_epa_rev4_hi_pwr_5g to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_ntab_tx_gain_epa_rev3_5g to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_ntab_tx_gain_epa_rev3_hi_pwr_2g to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_ntab_tx_gain_epa_rev3_2g to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_ntab_rf_pwr_offset_2057_rev14_2g to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_ntab_rf_pwr_offset_2057_rev9_2g to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_ntab_rf_pwr_offset_2057_rev9_5g to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nphy_gain_ctl_wa_phy6_radio11_ghz2 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nphy_gain_ctl_workaround to i32), i32 432, i32 544, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_nphy_get_gain_ctl_workaround_ent.gain_data to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_nphy_get_gain_ctl_workaround_ent.gain_data.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tbl_rf_control_override_rev7_over0 to i32), i32 110, i32 160, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tbl_rf_control_override_rev7_over1 to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tbl_rf_control_override_rev7_over2 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_ntab_noisevar_r7 to i32), i32 1024, i32 1280, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_ntab_estimatepowerlt0_r3 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_ntab_estimatepowerlt1_r3 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_ntab_adjustpower0_r3 to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_ntab_adjustpower1_r3 to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_ntab_gainctl0_r3 to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_ntab_gainctl1_r3 to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_ntab_iqlt0_r3 to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_ntab_iqlt1_r3 to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_ntab_loftlt0_r3 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_ntab_loftlt1_r3 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_ntab_pilot_r3 to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_ntab_tdtrn_r3 to i32), i32 2816, i32 3520, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_ntab_mcs_r3 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_ntab_tdi20a0_r3 to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_ntab_tdi20a1_r3 to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_ntab_tdi40a0_r3 to i32), i32 440, i32 544, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_ntab_tdi40a1_r3 to i32), i32 440, i32 544, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_ntab_channelest_r3 to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_ntab_framelookup_r3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_ntab_framestruct_r3 to i32), i32 3328, i32 4160, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_ntab_tmap_r7 to i32), i32 1792, i32 2240, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_ntab_noisevar_r3 to i32), i32 1024, i32 1280, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_ntab_antswctl_r3 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_ntab_tmap_r3 to i32), i32 1792, i32 2240, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_ntab_framelookup to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_ntab_tdtrn to i32), i32 2816, i32 3520, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_ntab_pilot to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_ntab_tdi20a0 to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_ntab_tdi20a1 to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_ntab_tdi40a0 to i32), i32 440, i32 544, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_ntab_tdi40a1 to i32), i32 440, i32 544, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_ntab_channelest to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_ntab_noisevar10 to i32), i32 1024, i32 1280, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_ntab_noisevar11 to i32), i32 1024, i32 1280, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_ntab_gainctl0 to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_ntab_gainctl1 to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_ntab_estimatepowerlt0 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_ntab_estimatepowerlt1 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_ntab_adjustpower0 to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_ntab_adjustpower1 to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_ntab_iqlt0 to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_ntab_iqlt1 to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_ntab_loftlt0 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_ntab_loftlt1 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_ntab_framestruct to i32), i32 3328, i32 4160, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_ntab_tmap to i32), i32 1792, i32 2240, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_ntab_mcs to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_ntab_tx_gain_ipa_2057_rev14_2g to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_ntab_tx_gain_ipa_2057_rev9_2g to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_ntab_tx_gain_ipa_2057_rev5_2g to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_ntab_tx_gain_ipa_rev5_2g to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_ntab_tx_gain_ipa_rev6_2g to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_ntab_tx_gain_ipa_rev3_2g to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_ntab_tx_gain_ipa_2057_rev9_5g to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_ntab_tx_gain_ipa_rev3_5g to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.b43_nphy_get_rf_ctl_over_rev7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @b43_ntab_read(ptr noundef %dev, i32 noundef %offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %offset, -268435456
  %and1 = and i32 %offset, 268369920
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %cmp.not = icmp eq i32 %and1, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end, !prof !219

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3316, i32 noundef 9, ptr noundef null) #2
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %0 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %do.end44 [
    i32 268435456, label %sw.bb
    i32 536870912, label %sw.bb22
    i32 805306368, label %sw.bb26
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  %conv = trunc i32 %offset to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext %conv) #2
  %call = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 115) #2
  %1 = and i16 %call, 255
  %and21 = zext i16 %1 to i32
  br label %sw.epilog

sw.bb22:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  %conv23 = trunc i32 %offset to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext %conv23) #2
  %call24 = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 115) #2
  %conv25 = zext i16 %call24 to i32
  br label %sw.epilog

sw.bb26:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  %conv27 = trunc i32 %offset to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext %conv27) #2
  %call28 = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 115) #2
  %conv29 = zext i16 %call28 to i32
  %call30 = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 116) #2
  %conv31 = zext i16 %call30 to i32
  %shl = shl nuw i32 %conv31, 16
  %or = or i32 %shl, %conv29
  br label %sw.epilog

do.end44:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3333, i32 noundef 9, ptr noundef null) #2
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end44, %sw.bb26, %sw.bb22, %sw.bb
  %value.0 = phi i32 [ 0, %do.end44 ], [ %or, %sw.bb26 ], [ %conv25, %sw.bb22 ], [ %and21, %sw.bb ]
  ret i32 %value.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43_phy_write(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @b43_phy_read(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43_ntab_read_bulk(ptr noundef %dev, i32 noundef %offset, i32 noundef %nr_elements, ptr nocapture noundef %_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %offset, -268435456
  %and1 = and i32 %offset, 268369920
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %cmp.not = icmp eq i32 %and1, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end, !prof !219

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3349, i32 noundef 9, ptr noundef null) #2
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %conv = trunc i32 %offset to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext %conv) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_elements)
  %cmp2093.not = icmp eq i32 %nr_elements, 0
  br i1 %cmp2093.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.095 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %data.094 = phi ptr [ %data.1, %for.inc.for.body_crit_edge ], [ %_data, %if.end.for.body_crit_edge ]
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %chip_id = getelementptr inbounds %struct.b43_bus_dev, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %chip_id to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %chip_id, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -22312, i16 %3)
  %cmp24 = icmp eq i16 %3, -22312
  br i1 %cmp24, label %land.lhs.true, label %for.body.if.end32_crit_edge

for.body.if.end32_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end32

land.lhs.true:                                    ; preds = %for.body
  %chip_rev = getelementptr inbounds %struct.b43_bus_dev, ptr %1, i32 0, i32 21
  %4 = ptrtoint ptr %chip_rev to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %chip_rev, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp28 = icmp eq i8 %5, 1
  br i1 %cmp28, label %if.then30, label %land.lhs.true.if.end32_crit_edge

land.lhs.true.if.end32_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end32

if.then30:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  %call = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 115) #2
  %add = add i32 %i.095, %offset
  %conv31 = trunc i32 %add to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext %conv31) #2
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %land.lhs.true.if.end32_crit_edge, %for.body.if.end32_crit_edge
  %6 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %and, label %do.end57 [
    i32 268435456, label %sw.bb
    i32 536870912, label %sw.bb37
    i32 805306368, label %sw.bb39
  ]

sw.bb:                                            ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #4
  %call33 = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 115) #2
  %conv36 = trunc i16 %call33 to i8
  %7 = ptrtoint ptr %data.094 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv36, ptr %data.094, align 1
  %incdec.ptr = getelementptr i8, ptr %data.094, i32 1
  br label %for.inc

sw.bb37:                                          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #4
  %call38 = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 115) #2
  %8 = ptrtoint ptr %data.094 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %call38, ptr %data.094, align 2
  %add.ptr = getelementptr i8, ptr %data.094, i32 2
  br label %for.inc

sw.bb39:                                          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #4
  %call40 = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 115) #2
  %conv41 = zext i16 %call40 to i32
  %9 = ptrtoint ptr %data.094 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv41, ptr %data.094, align 4
  %call42 = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 116) #2
  %conv43 = zext i16 %call42 to i32
  %shl = shl nuw i32 %conv43, 16
  %10 = ptrtoint ptr %data.094 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data.094, align 4
  %or = or i32 %shl, %11
  store i32 %or, ptr %data.094, align 4
  %add.ptr44 = getelementptr i8, ptr %data.094, i32 4
  br label %for.inc

do.end57:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3377, i32 noundef 9, ptr noundef null) #2
  br label %for.inc

for.inc:                                          ; preds = %do.end57, %sw.bb39, %sw.bb37, %sw.bb
  %data.1 = phi ptr [ %data.094, %do.end57 ], [ %add.ptr44, %sw.bb39 ], [ %add.ptr, %sw.bb37 ], [ %incdec.ptr, %sw.bb ]
  %inc = add nuw i32 %i.095, 1
  %exitcond.not = icmp eq i32 %inc, %nr_elements
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43_ntab_write(ptr noundef %dev, i32 noundef %offset, i32 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %offset, -268435456
  %0 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %and, label %do.end75 [
    i32 268435456, label %sw.bb
    i32 536870912, label %sw.bb23
    i32 805306368, label %sw.bb58
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %value)
  %tobool.not = icmp ult i32 %value, 256
  br i1 %tobool.not, label %sw.bb.if.end_crit_edge, label %do.end, !prof !219

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3391, i32 noundef 9, ptr noundef null) #2
  br label %if.end

if.end:                                           ; preds = %do.end, %sw.bb.if.end_crit_edge
  %conv = trunc i32 %offset to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext %conv) #2
  %conv22 = trunc i32 %value to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext %conv22) #2
  br label %sw.epilog

sw.bb23:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %value)
  %tobool26.not = icmp ult i32 %value, 65536
  br i1 %tobool26.not, label %sw.bb23.if.end48_crit_edge, label %do.end42, !prof !219

sw.bb23.if.end48_crit_edge:                       ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end48

do.end42:                                         ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3396, i32 noundef 9, ptr noundef null) #2
  br label %if.end48

if.end48:                                         ; preds = %do.end42, %sw.bb23.if.end48_crit_edge
  %conv56 = trunc i32 %offset to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext %conv56) #2
  %conv57 = trunc i32 %value to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext %conv57) #2
  br label %sw.epilog

sw.bb58:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %conv59 = trunc i32 %offset to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext %conv59) #2
  %shr = lshr i32 %value, 16
  %conv60 = trunc i32 %shr to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 116, i16 noundef zeroext %conv60) #2
  %conv62 = trunc i32 %value to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext %conv62) #2
  br label %sw.epilog

do.end75:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3406, i32 noundef 9, ptr noundef null) #2
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end75, %sw.bb58, %if.end48, %if.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43_ntab_write_bulk(ptr noundef %dev, i32 noundef %offset, i32 noundef %nr_elements, ptr nocapture noundef readonly %_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %offset, -268435456
  %and1 = and i32 %offset, 268369920
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %cmp.not = icmp eq i32 %and1, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end, !prof !219

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3424, i32 noundef 9, ptr noundef null) #2
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %conv = trunc i32 %offset to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext %conv) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_elements)
  %cmp20166.not = icmp eq i32 %nr_elements, 0
  br i1 %cmp20166.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %shr.mask = and i32 %offset, 268434432
  call void @__sanitizer_cov_trace_const_cmp4(i32 9216, i32 %shr.mask)
  %cmp22 = icmp eq i32 %shr.mask, 9216
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %data.0169 = phi ptr [ %_data, %for.body.lr.ph ], [ %data.1, %for.inc.for.body_crit_edge ]
  %i.0167 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  br i1 %cmp22, label %land.lhs.true, label %for.body.if.end35_crit_edge

for.body.if.end35_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end35

land.lhs.true:                                    ; preds = %for.body
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %chip_id = getelementptr inbounds %struct.b43_bus_dev, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %chip_id to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %chip_id, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -22312, i16 %3)
  %cmp26 = icmp eq i16 %3, -22312
  br i1 %cmp26, label %land.lhs.true28, label %land.lhs.true.if.end35_crit_edge

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end35

land.lhs.true28:                                  ; preds = %land.lhs.true
  %chip_rev = getelementptr inbounds %struct.b43_bus_dev, ptr %1, i32 0, i32 21
  %4 = ptrtoint ptr %chip_rev to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %chip_rev, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp31 = icmp eq i8 %5, 1
  br i1 %cmp31, label %if.then33, label %land.lhs.true28.if.end35_crit_edge

land.lhs.true28.if.end35_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end35

if.then33:                                        ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #4
  %call = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 115) #2
  %add = add i32 %i.0167, %offset
  %conv34 = trunc i32 %add to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext %conv34) #2
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %land.lhs.true28.if.end35_crit_edge, %land.lhs.true.if.end35_crit_edge, %for.body.if.end35_crit_edge
  %6 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %and, label %do.end123 [
    i32 268435456, label %sw.bb
    i32 536870912, label %sw.bb70
    i32 805306368, label %sw.bb105
  ]

sw.bb:                                            ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #4
  %7 = ptrtoint ptr %data.0169 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %data.0169, align 1
  %incdec.ptr = getelementptr i8, ptr %data.0169, i32 1
  %conv69 = zext i8 %8 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext %conv69) #2
  br label %for.inc

sw.bb70:                                          ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #4
  %9 = ptrtoint ptr %data.0169 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %data.0169, align 2
  %add.ptr = getelementptr i8, ptr %data.0169, i32 2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext %10) #2
  br label %for.inc

sw.bb105:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #4
  %11 = ptrtoint ptr %data.0169 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %data.0169, align 4
  %add.ptr106 = getelementptr i8, ptr %data.0169, i32 4
  %shr107 = lshr i32 %12, 16
  %conv108 = trunc i32 %shr107 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 116, i16 noundef zeroext %conv108) #2
  %conv110 = trunc i32 %12 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext %conv110) #2
  br label %for.inc

do.end123:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3457, i32 noundef 9, ptr noundef null) #2
  br label %for.inc

for.inc:                                          ; preds = %do.end123, %sw.bb105, %sw.bb70, %sw.bb
  %data.1 = phi ptr [ %data.0169, %do.end123 ], [ %add.ptr106, %sw.bb105 ], [ %add.ptr, %sw.bb70 ], [ %incdec.ptr, %sw.bb ]
  %inc = add nuw i32 %i.0167, 1
  %exitcond.not = icmp eq i32 %inc, %nr_elements
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43_nphy_tables_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %rev = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 8
  %0 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %1)
  %cmp = icmp ugt i8 %1, 15
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %do_full_init.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 5
  %2 = ptrtoint ptr %do_full_init.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %do_full_init.i, align 1, !range !220
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %if.then.b43_nphy_tables_init_rev16.exit_crit_edge, label %do.body.i

if.then.b43_nphy_tables_init_rev16.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  br label %b43_nphy_tables_init_rev16.exit

do.body.i:                                        ; preds = %if.then
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext 16384) #2
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %do.body.i
  %data.0169.i.i = phi ptr [ @b43_ntab_noisevar_r7, %do.body.i ], [ %add.ptr106.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %i.0167.i.i = phi i32 [ 0, %do.body.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %4 = ptrtoint ptr %data.0169.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data.0169.i.i, align 4
  %add.ptr106.i.i = getelementptr i8, ptr %data.0169.i.i, i32 4
  %shr107.i.i = lshr i32 %5, 16
  %conv108.i.i = trunc i32 %shr107.i.i to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 116, i16 noundef zeroext %conv108.i.i) #2
  %conv110.i.i = trunc i32 %5 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext %conv110.i.i) #2
  %inc.i.i = add nuw nsw i32 %i.0167.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 256
  br i1 %exitcond.not.i.i, label %b43_ntab_write_bulk.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i.i

b43_ntab_write_bulk.exit.i:                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #4
  tail call fastcc void @b43_nphy_tables_init_shared_lut(ptr noundef %dev) #2
  br label %b43_nphy_tables_init_rev16.exit

b43_nphy_tables_init_rev16.exit:                  ; preds = %b43_ntab_write_bulk.exit.i, %if.then.b43_nphy_tables_init_rev16.exit_crit_edge
  tail call fastcc void @b43_nphy_tables_init_rev7_volatile(ptr noundef %dev) #2
  br label %if.end17

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %1)
  %cmp5 = icmp ugt i8 %1, 6
  br i1 %cmp5, label %if.then7, label %if.else8

if.then7:                                         ; preds = %if.else
  %do_full_init.i24 = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 5
  %6 = ptrtoint ptr %do_full_init.i24 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %do_full_init.i24, align 1, !range !220
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i25 = icmp eq i8 %7, 0
  br i1 %tobool.not.i25, label %if.then7.b43_nphy_tables_init_rev7.exit_crit_edge, label %do.body.i26

if.then7.b43_nphy_tables_init_rev7.exit_crit_edge: ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #4
  br label %b43_nphy_tables_init_rev7.exit

do.body.i26:                                      ; preds = %if.then7
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext 10240) #2
  br label %for.body.i.i35

for.body.i.i35:                                   ; preds = %for.body.i.i35.for.body.i.i35_crit_edge, %do.body.i26
  %data.0169.i.i27 = phi ptr [ @b43_ntab_framestruct_r3, %do.body.i26 ], [ %add.ptr106.i.i29, %for.body.i.i35.for.body.i.i35_crit_edge ]
  %i.0167.i.i28 = phi i32 [ 0, %do.body.i26 ], [ %inc.i.i33, %for.body.i.i35.for.body.i.i35_crit_edge ]
  %8 = ptrtoint ptr %data.0169.i.i27 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data.0169.i.i27, align 4
  %add.ptr106.i.i29 = getelementptr i8, ptr %data.0169.i.i27, i32 4
  %shr107.i.i30 = lshr i32 %9, 16
  %conv108.i.i31 = trunc i32 %shr107.i.i30 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 116, i16 noundef zeroext %conv108.i.i31) #2
  %conv110.i.i32 = trunc i32 %9 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext %conv110.i.i32) #2
  %inc.i.i33 = add nuw nsw i32 %i.0167.i.i28, 1
  %exitcond.not.i.i34 = icmp eq i32 %inc.i.i33, 832
  br i1 %exitcond.not.i.i34, label %b43_ntab_write_bulk.exit.i36, label %for.body.i.i35.for.body.i.i35_crit_edge

for.body.i.i35.for.body.i.i35_crit_edge:          ; preds = %for.body.i.i35
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i.i35

b43_ntab_write_bulk.exit.i36:                     ; preds = %for.body.i.i35
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext 11264) #2
  br label %for.body.i45.i

for.body.i45.i:                                   ; preds = %for.body.i45.i.for.body.i45.i_crit_edge, %b43_ntab_write_bulk.exit.i36
  %data.0169.i43.i = phi ptr [ @b43_ntab_pilot_r3, %b43_ntab_write_bulk.exit.i36 ], [ %add.ptr.i.i, %for.body.i45.i.for.body.i45.i_crit_edge ]
  %i.0167.i44.i = phi i32 [ 0, %b43_ntab_write_bulk.exit.i36 ], [ %inc.i46.i, %for.body.i45.i.for.body.i45.i_crit_edge ]
  %10 = ptrtoint ptr %data.0169.i43.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %data.0169.i43.i, align 2
  %add.ptr.i.i = getelementptr i8, ptr %data.0169.i43.i, i32 2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext %11) #2
  %inc.i46.i = add nuw nsw i32 %i.0167.i44.i, 1
  %exitcond.not.i47.i = icmp eq i32 %inc.i46.i, 88
  br i1 %exitcond.not.i47.i, label %b43_ntab_write_bulk.exit48.i, label %for.body.i45.i.for.body.i45.i_crit_edge

for.body.i45.i.for.body.i45.i_crit_edge:          ; preds = %for.body.i45.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i45.i

b43_ntab_write_bulk.exit48.i:                     ; preds = %for.body.i45.i
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext 12288) #2
  br label %for.body.i51.i

for.body.i51.i:                                   ; preds = %for.body.i51.i.for.body.i51.i_crit_edge, %b43_ntab_write_bulk.exit48.i
  %data.0169.i49.i = phi ptr [ @b43_ntab_tmap_r7, %b43_ntab_write_bulk.exit48.i ], [ %add.ptr106.i52.i, %for.body.i51.i.for.body.i51.i_crit_edge ]
  %i.0167.i50.i = phi i32 [ 0, %b43_ntab_write_bulk.exit48.i ], [ %inc.i56.i, %for.body.i51.i.for.body.i51.i_crit_edge ]
  %12 = ptrtoint ptr %data.0169.i49.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data.0169.i49.i, align 4
  %add.ptr106.i52.i = getelementptr i8, ptr %data.0169.i49.i, i32 4
  %shr107.i53.i = lshr i32 %13, 16
  %conv108.i54.i = trunc i32 %shr107.i53.i to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 116, i16 noundef zeroext %conv108.i54.i) #2
  %conv110.i55.i = trunc i32 %13 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext %conv110.i55.i) #2
  %inc.i56.i = add nuw nsw i32 %i.0167.i50.i, 1
  %exitcond.not.i57.i = icmp eq i32 %inc.i56.i, 448
  br i1 %exitcond.not.i57.i, label %b43_ntab_write_bulk.exit58.i, label %for.body.i51.i.for.body.i51.i_crit_edge

for.body.i51.i.for.body.i51.i_crit_edge:          ; preds = %for.body.i51.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i51.i

b43_ntab_write_bulk.exit58.i:                     ; preds = %for.body.i51.i
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext 13312) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 116, i16 noundef zeroext 128) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext 8304) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 116, i16 noundef zeroext 1649) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext 6285) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 116, i16 noundef zeroext 2656) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext 6444) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 116, i16 noundef zeroext 2608) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext 3654) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 116, i16 noundef zeroext 193) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext 6285) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 116, i16 noundef zeroext 2048) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext 9426) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 116, i16 noundef zeroext 0) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext 112) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext 14336) #2
  br label %for.body.i71.i

for.body.i71.i:                                   ; preds = %for.body.i71.i.for.body.i71.i_crit_edge, %b43_ntab_write_bulk.exit58.i
  %data.0169.i69.i = phi ptr [ @b43_ntab_tdtrn_r3, %b43_ntab_write_bulk.exit58.i ], [ %add.ptr106.i72.i, %for.body.i71.i.for.body.i71.i_crit_edge ]
  %i.0167.i70.i = phi i32 [ 0, %b43_ntab_write_bulk.exit58.i ], [ %inc.i76.i, %for.body.i71.i.for.body.i71.i_crit_edge ]
  %14 = ptrtoint ptr %data.0169.i69.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data.0169.i69.i, align 4
  %add.ptr106.i72.i = getelementptr i8, ptr %data.0169.i69.i, i32 4
  %shr107.i73.i = lshr i32 %15, 16
  %conv108.i74.i = trunc i32 %shr107.i73.i to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 116, i16 noundef zeroext %conv108.i74.i) #2
  %conv110.i75.i = trunc i32 %15 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext %conv110.i75.i) #2
  %inc.i76.i = add nuw nsw i32 %i.0167.i70.i, 1
  %exitcond.not.i77.i = icmp eq i32 %inc.i76.i, 704
  br i1 %exitcond.not.i77.i, label %b43_ntab_write_bulk.exit78.i, label %for.body.i71.i.for.body.i71.i_crit_edge

for.body.i71.i.for.body.i71.i_crit_edge:          ; preds = %for.body.i71.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i71.i

b43_ntab_write_bulk.exit78.i:                     ; preds = %for.body.i71.i
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext 16384) #2
  br label %for.body.i81.i

for.body.i81.i:                                   ; preds = %for.body.i81.i.for.body.i81.i_crit_edge, %b43_ntab_write_bulk.exit78.i
  %data.0169.i79.i = phi ptr [ @b43_ntab_noisevar_r7, %b43_ntab_write_bulk.exit78.i ], [ %add.ptr106.i82.i, %for.body.i81.i.for.body.i81.i_crit_edge ]
  %i.0167.i80.i = phi i32 [ 0, %b43_ntab_write_bulk.exit78.i ], [ %inc.i86.i, %for.body.i81.i.for.body.i81.i_crit_edge ]
  %16 = ptrtoint ptr %data.0169.i79.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %data.0169.i79.i, align 4
  %add.ptr106.i82.i = getelementptr i8, ptr %data.0169.i79.i, i32 4
  %shr107.i83.i = lshr i32 %17, 16
  %conv108.i84.i = trunc i32 %shr107.i83.i to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 116, i16 noundef zeroext %conv108.i84.i) #2
  %conv110.i85.i = trunc i32 %17 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext %conv110.i85.i) #2
  %inc.i86.i = add nuw nsw i32 %i.0167.i80.i, 1
  %exitcond.not.i87.i = icmp eq i32 %inc.i86.i, 256
  br i1 %exitcond.not.i87.i, label %b43_ntab_write_bulk.exit88.i, label %for.body.i81.i.for.body.i81.i_crit_edge

for.body.i81.i.for.body.i81.i_crit_edge:          ; preds = %for.body.i81.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i81.i

b43_ntab_write_bulk.exit88.i:                     ; preds = %for.body.i81.i
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext 18432) #2
  br label %for.body.i91.i

for.body.i91.i:                                   ; preds = %for.body.i91.i.for.body.i91.i_crit_edge, %b43_ntab_write_bulk.exit88.i
  %data.0169.i89.i = phi ptr [ @b43_ntab_mcs_r3, %b43_ntab_write_bulk.exit88.i ], [ %add.ptr.i92.i, %for.body.i91.i.for.body.i91.i_crit_edge ]
  %i.0167.i90.i = phi i32 [ 0, %b43_ntab_write_bulk.exit88.i ], [ %inc.i93.i, %for.body.i91.i.for.body.i91.i_crit_edge ]
  %18 = ptrtoint ptr %data.0169.i89.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %data.0169.i89.i, align 2
  %add.ptr.i92.i = getelementptr i8, ptr %data.0169.i89.i, i32 2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext %19) #2
  %inc.i93.i = add nuw nsw i32 %i.0167.i90.i, 1
  %exitcond.not.i94.i = icmp eq i32 %inc.i93.i, 128
  br i1 %exitcond.not.i94.i, label %b43_ntab_write_bulk.exit95.i, label %for.body.i91.i.for.body.i91.i_crit_edge

for.body.i91.i.for.body.i91.i_crit_edge:          ; preds = %for.body.i91.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i91.i

b43_ntab_write_bulk.exit95.i:                     ; preds = %for.body.i91.i
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext 19584) #2
  br label %for.body.i98.i

for.body.i98.i:                                   ; preds = %for.body.i98.i.for.body.i98.i_crit_edge, %b43_ntab_write_bulk.exit95.i
  %data.0169.i96.i = phi ptr [ @b43_ntab_tdi20a0_r3, %b43_ntab_write_bulk.exit95.i ], [ %add.ptr106.i99.i, %for.body.i98.i.for.body.i98.i_crit_edge ]
  %i.0167.i97.i = phi i32 [ 0, %b43_ntab_write_bulk.exit95.i ], [ %inc.i103.i, %for.body.i98.i.for.body.i98.i_crit_edge ]
  %20 = ptrtoint ptr %data.0169.i96.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %data.0169.i96.i, align 4
  %add.ptr106.i99.i = getelementptr i8, ptr %data.0169.i96.i, i32 4
  %shr107.i100.i = lshr i32 %21, 16
  %conv108.i101.i = trunc i32 %shr107.i100.i to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 116, i16 noundef zeroext %conv108.i101.i) #2
  %conv110.i102.i = trunc i32 %21 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext %conv110.i102.i) #2
  %inc.i103.i = add nuw nsw i32 %i.0167.i97.i, 1
  %exitcond.not.i104.i = icmp eq i32 %inc.i103.i, 55
  br i1 %exitcond.not.i104.i, label %b43_ntab_write_bulk.exit105.i, label %for.body.i98.i.for.body.i98.i_crit_edge

for.body.i98.i.for.body.i98.i_crit_edge:          ; preds = %for.body.i98.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i98.i

b43_ntab_write_bulk.exit105.i:                    ; preds = %for.body.i98.i
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext 19712) #2
  br label %for.body.i108.i

for.body.i108.i:                                  ; preds = %for.body.i108.i.for.body.i108.i_crit_edge, %b43_ntab_write_bulk.exit105.i
  %data.0169.i106.i = phi ptr [ @b43_ntab_tdi20a1_r3, %b43_ntab_write_bulk.exit105.i ], [ %add.ptr106.i109.i, %for.body.i108.i.for.body.i108.i_crit_edge ]
  %i.0167.i107.i = phi i32 [ 0, %b43_ntab_write_bulk.exit105.i ], [ %inc.i113.i, %for.body.i108.i.for.body.i108.i_crit_edge ]
  %22 = ptrtoint ptr %data.0169.i106.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %data.0169.i106.i, align 4
  %add.ptr106.i109.i = getelementptr i8, ptr %data.0169.i106.i, i32 4
  %shr107.i110.i = lshr i32 %23, 16
  %conv108.i111.i = trunc i32 %shr107.i110.i to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 116, i16 noundef zeroext %conv108.i111.i) #2
  %conv110.i112.i = trunc i32 %23 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext %conv110.i112.i) #2
  %inc.i113.i = add nuw nsw i32 %i.0167.i107.i, 1
  %exitcond.not.i114.i = icmp eq i32 %inc.i113.i, 55
  br i1 %exitcond.not.i114.i, label %b43_ntab_write_bulk.exit115.i, label %for.body.i108.i.for.body.i108.i_crit_edge

for.body.i108.i.for.body.i108.i_crit_edge:        ; preds = %for.body.i108.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i108.i

b43_ntab_write_bulk.exit115.i:                    ; preds = %for.body.i108.i
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext 20096) #2
  br label %for.body.i118.i

for.body.i118.i:                                  ; preds = %for.body.i118.i.for.body.i118.i_crit_edge, %b43_ntab_write_bulk.exit115.i
  %data.0169.i116.i = phi ptr [ @b43_ntab_tdi40a0_r3, %b43_ntab_write_bulk.exit115.i ], [ %add.ptr106.i119.i, %for.body.i118.i.for.body.i118.i_crit_edge ]
  %i.0167.i117.i = phi i32 [ 0, %b43_ntab_write_bulk.exit115.i ], [ %inc.i123.i, %for.body.i118.i.for.body.i118.i_crit_edge ]
  %24 = ptrtoint ptr %data.0169.i116.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %data.0169.i116.i, align 4
  %add.ptr106.i119.i = getelementptr i8, ptr %data.0169.i116.i, i32 4
  %shr107.i120.i = lshr i32 %25, 16
  %conv108.i121.i = trunc i32 %shr107.i120.i to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 116, i16 noundef zeroext %conv108.i121.i) #2
  %conv110.i122.i = trunc i32 %25 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext %conv110.i122.i) #2
  %inc.i123.i = add nuw nsw i32 %i.0167.i117.i, 1
  %exitcond.not.i124.i = icmp eq i32 %inc.i123.i, 110
  br i1 %exitcond.not.i124.i, label %b43_ntab_write_bulk.exit125.i, label %for.body.i118.i.for.body.i118.i_crit_edge

for.body.i118.i.for.body.i118.i_crit_edge:        ; preds = %for.body.i118.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i118.i

b43_ntab_write_bulk.exit125.i:                    ; preds = %for.body.i118.i
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext 20224) #2
  br label %for.body.i128.i

for.body.i128.i:                                  ; preds = %for.body.i128.i.for.body.i128.i_crit_edge, %b43_ntab_write_bulk.exit125.i
  %data.0169.i126.i = phi ptr [ @b43_ntab_tdi40a1_r3, %b43_ntab_write_bulk.exit125.i ], [ %add.ptr106.i129.i, %for.body.i128.i.for.body.i128.i_crit_edge ]
  %i.0167.i127.i = phi i32 [ 0, %b43_ntab_write_bulk.exit125.i ], [ %inc.i133.i, %for.body.i128.i.for.body.i128.i_crit_edge ]
  %26 = ptrtoint ptr %data.0169.i126.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %data.0169.i126.i, align 4
  %add.ptr106.i129.i = getelementptr i8, ptr %data.0169.i126.i, i32 4
  %shr107.i130.i = lshr i32 %27, 16
  %conv108.i131.i = trunc i32 %shr107.i130.i to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 116, i16 noundef zeroext %conv108.i131.i) #2
  %conv110.i132.i = trunc i32 %27 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext %conv110.i132.i) #2
  %inc.i133.i = add nuw nsw i32 %i.0167.i127.i, 1
  %exitcond.not.i134.i = icmp eq i32 %inc.i133.i, 110
  br i1 %exitcond.not.i134.i, label %b43_ntab_write_bulk.exit135.i, label %for.body.i128.i.for.body.i128.i_crit_edge

for.body.i128.i.for.body.i128.i_crit_edge:        ; preds = %for.body.i128.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i128.i

b43_ntab_write_bulk.exit135.i:                    ; preds = %for.body.i128.i
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext 20480) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 116, i16 noundef zeroext 30292) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext 531) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 116, i16 noundef zeroext 25152) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext 29521) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 116, i16 noundef zeroext 30292) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext 12816) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 116, i16 noundef zeroext 30292) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext 531) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 116, i16 noundef zeroext 30292) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext 531) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 116, i16 noundef zeroext 30275) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext 1313) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext 22528) #2
  br label %for.body.i148.i

for.body.i148.i:                                  ; preds = %for.body.i148.i.for.body.i148.i_crit_edge, %b43_ntab_write_bulk.exit135.i
  %data.0169.i146.i = phi ptr [ @b43_ntab_channelest_r3, %b43_ntab_write_bulk.exit135.i ], [ %add.ptr106.i149.i, %for.body.i148.i.for.body.i148.i_crit_edge ]
  %i.0167.i147.i = phi i32 [ 0, %b43_ntab_write_bulk.exit135.i ], [ %inc.i153.i, %for.body.i148.i.for.body.i148.i_crit_edge ]
  %28 = ptrtoint ptr %data.0169.i146.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %data.0169.i146.i, align 4
  %add.ptr106.i149.i = getelementptr i8, ptr %data.0169.i146.i, i32 4
  %shr107.i150.i = lshr i32 %29, 16
  %conv108.i151.i = trunc i32 %shr107.i150.i to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 116, i16 noundef zeroext %conv108.i151.i) #2
  %conv110.i152.i = trunc i32 %29 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext %conv110.i152.i) #2
  %inc.i153.i = add nuw nsw i32 %i.0167.i147.i, 1
  %exitcond.not.i154.i = icmp eq i32 %inc.i153.i, 96
  br i1 %exitcond.not.i154.i, label %b43_ntab_write_bulk.exit155.i, label %for.body.i148.i.for.body.i148.i_crit_edge

for.body.i148.i.for.body.i148.i_crit_edge:        ; preds = %for.body.i148.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i148.i

b43_ntab_write_bulk.exit155.i:                    ; preds = %for.body.i148.i
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext 24576) #2
  br label %for.body.i158.i

for.body.i158.i:                                  ; preds = %for.body.i158.i.for.body.i158.i_crit_edge, %b43_ntab_write_bulk.exit155.i
  %data.0169.i156.i = phi ptr [ @b43_ntab_framelookup_r3, %b43_ntab_write_bulk.exit155.i ], [ %incdec.ptr.i.i, %for.body.i158.i.for.body.i158.i_crit_edge ]
  %i.0167.i157.i = phi i32 [ 0, %b43_ntab_write_bulk.exit155.i ], [ %inc.i159.i, %for.body.i158.i.for.body.i158.i_crit_edge ]
  %30 = ptrtoint ptr %data.0169.i156.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %data.0169.i156.i, align 1
  %incdec.ptr.i.i = getelementptr i8, ptr %data.0169.i156.i, i32 1
  %conv69.i.i = zext i8 %31 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext %conv69.i.i) #2
  %inc.i159.i = add nuw nsw i32 %i.0167.i157.i, 1
  %exitcond.not.i160.i = icmp eq i32 %inc.i159.i, 32
  br i1 %exitcond.not.i160.i, label %b43_ntab_write_bulk.exit161.i, label %for.body.i158.i.for.body.i158.i_crit_edge

for.body.i158.i.for.body.i158.i_crit_edge:        ; preds = %for.body.i158.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i158.i

b43_ntab_write_bulk.exit161.i:                    ; preds = %for.body.i158.i
  call void @__sanitizer_cov_trace_pc() #4
  tail call fastcc void @b43_nphy_tables_init_shared_lut(ptr noundef %dev) #2
  br label %b43_nphy_tables_init_rev7.exit

b43_nphy_tables_init_rev7.exit:                   ; preds = %b43_ntab_write_bulk.exit161.i, %if.then7.b43_nphy_tables_init_rev7.exit_crit_edge
  tail call fastcc void @b43_nphy_tables_init_rev7_volatile(ptr noundef %dev) #2
  br label %if.end17

if.else8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp12 = icmp ugt i8 %1, 2
  br i1 %cmp12, label %if.then14, label %if.else15

if.then14:                                        ; preds = %if.else8
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 4
  %bus_sprom.i = getelementptr inbounds %struct.b43_bus_dev, ptr %33, i32 0, i32 23
  %34 = ptrtoint ptr %bus_sprom.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bus_sprom.i, align 4
  %wl.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 1
  %36 = ptrtoint ptr %wl.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %wl.i, align 4
  %hw.i.i = getelementptr inbounds %struct.b43_wl, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hw.i.i, align 4
  %chandef.i.i = getelementptr inbounds %struct.ieee80211_conf, ptr %39, i32 0, i32 7
  %40 = ptrtoint ptr %chandef.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %chandef.i.i, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %43)
  %cmp.i = icmp eq i32 %43, 1
  %antswlut2.i = getelementptr inbounds %struct.ssb_sprom, ptr %35, i32 0, i32 76, i32 1, i32 4
  %antswlut4.i = getelementptr inbounds %struct.ssb_sprom, ptr %35, i32 0, i32 76, i32 0, i32 4
  %antswlut.0.in.i = select i1 %cmp.i, ptr %antswlut2.i, ptr %antswlut4.i
  %44 = ptrtoint ptr %antswlut.0.in.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %antswlut.0.i = load i8, ptr %antswlut.0.in.i, align 1
  %do_full_init.i37 = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 5
  %45 = ptrtoint ptr %do_full_init.i37 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %do_full_init.i37, align 1, !range !220
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool.not.i38 = icmp eq i8 %46, 0
  br i1 %tobool.not.i38, label %if.then14.if.end45.i_crit_edge, label %do.body.i39

if.then14.if.end45.i_crit_edge:                   ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end45.i

do.body.i39:                                      ; preds = %if.then14
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext 10240) #2
  br label %for.body.i.i48

for.body.i.i48:                                   ; preds = %for.body.i.i48.for.body.i.i48_crit_edge, %do.body.i39
  %data.0169.i.i40 = phi ptr [ @b43_ntab_framestruct_r3, %do.body.i39 ], [ %add.ptr106.i.i42, %for.body.i.i48.for.body.i.i48_crit_edge ]
  %i.0167.i.i41 = phi i32 [ 0, %do.body.i39 ], [ %inc.i.i46, %for.body.i.i48.for.body.i.i48_crit_edge ]
  %47 = ptrtoint ptr %data.0169.i.i40 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %data.0169.i.i40, align 4
  %add.ptr106.i.i42 = getelementptr i8, ptr %data.0169.i.i40, i32 4
  %shr107.i.i43 = lshr i32 %48, 16
  %conv108.i.i44 = trunc i32 %shr107.i.i43 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 116, i16 noundef zeroext %conv108.i.i44) #2
  %conv110.i.i45 = trunc i32 %48 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext %conv110.i.i45) #2
  %inc.i.i46 = add nuw nsw i32 %i.0167.i.i41, 1
  %exitcond.not.i.i47 = icmp eq i32 %inc.i.i46, 832
  br i1 %exitcond.not.i.i47, label %b43_ntab_write_bulk.exit.i49, label %for.body.i.i48.for.body.i.i48_crit_edge

for.body.i.i48.for.body.i.i48_crit_edge:          ; preds = %for.body.i.i48
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i.i48

b43_ntab_write_bulk.exit.i49:                     ; preds = %for.body.i.i48
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext 11264) #2
  br label %for.body.i97.i

for.body.i97.i:                                   ; preds = %for.body.i97.i.for.body.i97.i_crit_edge, %b43_ntab_write_bulk.exit.i49
  %data.0169.i95.i = phi ptr [ @b43_ntab_pilot_r3, %b43_ntab_write_bulk.exit.i49 ], [ %add.ptr.i.i50, %for.body.i97.i.for.body.i97.i_crit_edge ]
  %i.0167.i96.i = phi i32 [ 0, %b43_ntab_write_bulk.exit.i49 ], [ %inc.i98.i, %for.body.i97.i.for.body.i97.i_crit_edge ]
  %49 = ptrtoint ptr %data.0169.i95.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %data.0169.i95.i, align 2
  %add.ptr.i.i50 = getelementptr i8, ptr %data.0169.i95.i, i32 2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext %50) #2
  %inc.i98.i = add nuw nsw i32 %i.0167.i96.i, 1
  %exitcond.not.i99.i = icmp eq i32 %inc.i98.i, 88
  br i1 %exitcond.not.i99.i, label %b43_ntab_write_bulk.exit100.i, label %for.body.i97.i.for.body.i97.i_crit_edge

for.body.i97.i.for.body.i97.i_crit_edge:          ; preds = %for.body.i97.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i97.i

b43_ntab_write_bulk.exit100.i:                    ; preds = %for.body.i97.i
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext 12288) #2
  br label %for.body.i103.i

for.body.i103.i:                                  ; preds = %for.body.i103.i.for.body.i103.i_crit_edge, %b43_ntab_write_bulk.exit100.i
  %data.0169.i101.i = phi ptr [ @b43_ntab_tmap_r3, %b43_ntab_write_bulk.exit100.i ], [ %add.ptr106.i104.i, %for.body.i103.i.for.body.i103.i_crit_edge ]
  %i.0167.i102.i = phi i32 [ 0, %b43_ntab_write_bulk.exit100.i ], [ %inc.i108.i, %for.body.i103.i.for.body.i103.i_crit_edge ]
  %51 = ptrtoint ptr %data.0169.i101.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %data.0169.i101.i, align 4
  %add.ptr106.i104.i = getelementptr i8, ptr %data.0169.i101.i, i32 4
  %shr107.i105.i = lshr i32 %52, 16
  %conv108.i106.i = trunc i32 %shr107.i105.i to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 116, i16 noundef zeroext %conv108.i106.i) #2
  %conv110.i107.i = trunc i32 %52 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext %conv110.i107.i) #2
  %inc.i108.i = add nuw nsw i32 %i.0167.i102.i, 1
  %exitcond.not.i109.i = icmp eq i32 %inc.i108.i, 448
  br i1 %exitcond.not.i109.i, label %b43_ntab_write_bulk.exit110.i, label %for.body.i103.i.for.body.i103.i_crit_edge

for.body.i103.i.for.body.i103.i_crit_edge:        ; preds = %for.body.i103.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i103.i

b43_ntab_write_bulk.exit110.i:                    ; preds = %for.body.i103.i
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext 13312) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 116, i16 noundef zeroext 128) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext 8304) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 116, i16 noundef zeroext 1649) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext 6285) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 116, i16 noundef zeroext 2656) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext 6444) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 116, i16 noundef zeroext 2608) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext 3654) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 116, i16 noundef zeroext 193) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext 6285) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 116, i16 noundef zeroext 2048) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext 9426) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 116, i16 noundef zeroext 0) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext 112) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext 14336) #2
  br label %for.body.i123.i

for.body.i123.i:                                  ; preds = %for.body.i123.i.for.body.i123.i_crit_edge, %b43_ntab_write_bulk.exit110.i
  %data.0169.i121.i = phi ptr [ @b43_ntab_tdtrn_r3, %b43_ntab_write_bulk.exit110.i ], [ %add.ptr106.i124.i, %for.body.i123.i.for.body.i123.i_crit_edge ]
  %i.0167.i122.i = phi i32 [ 0, %b43_ntab_write_bulk.exit110.i ], [ %inc.i128.i, %for.body.i123.i.for.body.i123.i_crit_edge ]
  %53 = ptrtoint ptr %data.0169.i121.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %data.0169.i121.i, align 4
  %add.ptr106.i124.i = getelementptr i8, ptr %data.0169.i121.i, i32 4
  %shr107.i125.i = lshr i32 %54, 16
  %conv108.i126.i = trunc i32 %shr107.i125.i to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 116, i16 noundef zeroext %conv108.i126.i) #2
  %conv110.i127.i = trunc i32 %54 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext %conv110.i127.i) #2
  %inc.i128.i = add nuw nsw i32 %i.0167.i122.i, 1
  %exitcond.not.i129.i = icmp eq i32 %inc.i128.i, 704
  br i1 %exitcond.not.i129.i, label %b43_ntab_write_bulk.exit130.i, label %for.body.i123.i.for.body.i123.i_crit_edge

for.body.i123.i.for.body.i123.i_crit_edge:        ; preds = %for.body.i123.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i123.i

b43_ntab_write_bulk.exit130.i:                    ; preds = %for.body.i123.i
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext 16384) #2
  br label %for.body.i133.i

for.body.i133.i:                                  ; preds = %for.body.i133.i.for.body.i133.i_crit_edge, %b43_ntab_write_bulk.exit130.i
  %data.0169.i131.i = phi ptr [ @b43_ntab_noisevar_r3, %b43_ntab_write_bulk.exit130.i ], [ %add.ptr106.i134.i, %for.body.i133.i.for.body.i133.i_crit_edge ]
  %i.0167.i132.i = phi i32 [ 0, %b43_ntab_write_bulk.exit130.i ], [ %inc.i138.i, %for.body.i133.i.for.body.i133.i_crit_edge ]
  %55 = ptrtoint ptr %data.0169.i131.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %data.0169.i131.i, align 4
  %add.ptr106.i134.i = getelementptr i8, ptr %data.0169.i131.i, i32 4
  %shr107.i135.i = lshr i32 %56, 16
  %conv108.i136.i = trunc i32 %shr107.i135.i to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 116, i16 noundef zeroext %conv108.i136.i) #2
  %conv110.i137.i = trunc i32 %56 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext %conv110.i137.i) #2
  %inc.i138.i = add nuw nsw i32 %i.0167.i132.i, 1
  %exitcond.not.i139.i = icmp eq i32 %inc.i138.i, 256
  br i1 %exitcond.not.i139.i, label %b43_ntab_write_bulk.exit140.i, label %for.body.i133.i.for.body.i133.i_crit_edge

for.body.i133.i.for.body.i133.i_crit_edge:        ; preds = %for.body.i133.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i133.i

b43_ntab_write_bulk.exit140.i:                    ; preds = %for.body.i133.i
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext 18432) #2
  br label %for.body.i143.i

for.body.i143.i:                                  ; preds = %for.body.i143.i.for.body.i143.i_crit_edge, %b43_ntab_write_bulk.exit140.i
  %data.0169.i141.i = phi ptr [ @b43_ntab_mcs_r3, %b43_ntab_write_bulk.exit140.i ], [ %add.ptr.i144.i, %for.body.i143.i.for.body.i143.i_crit_edge ]
  %i.0167.i142.i = phi i32 [ 0, %b43_ntab_write_bulk.exit140.i ], [ %inc.i145.i, %for.body.i143.i.for.body.i143.i_crit_edge ]
  %57 = ptrtoint ptr %data.0169.i141.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %data.0169.i141.i, align 2
  %add.ptr.i144.i = getelementptr i8, ptr %data.0169.i141.i, i32 2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext %58) #2
  %inc.i145.i = add nuw nsw i32 %i.0167.i142.i, 1
  %exitcond.not.i146.i = icmp eq i32 %inc.i145.i, 128
  br i1 %exitcond.not.i146.i, label %b43_ntab_write_bulk.exit147.i, label %for.body.i143.i.for.body.i143.i_crit_edge

for.body.i143.i.for.body.i143.i_crit_edge:        ; preds = %for.body.i143.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i143.i

b43_ntab_write_bulk.exit147.i:                    ; preds = %for.body.i143.i
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext 19584) #2
  br label %for.body.i150.i

for.body.i150.i:                                  ; preds = %for.body.i150.i.for.body.i150.i_crit_edge, %b43_ntab_write_bulk.exit147.i
  %data.0169.i148.i = phi ptr [ @b43_ntab_tdi20a0_r3, %b43_ntab_write_bulk.exit147.i ], [ %add.ptr106.i151.i, %for.body.i150.i.for.body.i150.i_crit_edge ]
  %i.0167.i149.i = phi i32 [ 0, %b43_ntab_write_bulk.exit147.i ], [ %inc.i155.i, %for.body.i150.i.for.body.i150.i_crit_edge ]
  %59 = ptrtoint ptr %data.0169.i148.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %data.0169.i148.i, align 4
  %add.ptr106.i151.i = getelementptr i8, ptr %data.0169.i148.i, i32 4
  %shr107.i152.i = lshr i32 %60, 16
  %conv108.i153.i = trunc i32 %shr107.i152.i to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 116, i16 noundef zeroext %conv108.i153.i) #2
  %conv110.i154.i = trunc i32 %60 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext %conv110.i154.i) #2
  %inc.i155.i = add nuw nsw i32 %i.0167.i149.i, 1
  %exitcond.not.i156.i = icmp eq i32 %inc.i155.i, 55
  br i1 %exitcond.not.i156.i, label %b43_ntab_write_bulk.exit157.i, label %for.body.i150.i.for.body.i150.i_crit_edge

for.body.i150.i.for.body.i150.i_crit_edge:        ; preds = %for.body.i150.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i150.i

b43_ntab_write_bulk.exit157.i:                    ; preds = %for.body.i150.i
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext 19712) #2
  br label %for.body.i160.i

for.body.i160.i:                                  ; preds = %for.body.i160.i.for.body.i160.i_crit_edge, %b43_ntab_write_bulk.exit157.i
  %data.0169.i158.i = phi ptr [ @b43_ntab_tdi20a1_r3, %b43_ntab_write_bulk.exit157.i ], [ %add.ptr106.i161.i, %for.body.i160.i.for.body.i160.i_crit_edge ]
  %i.0167.i159.i = phi i32 [ 0, %b43_ntab_write_bulk.exit157.i ], [ %inc.i165.i, %for.body.i160.i.for.body.i160.i_crit_edge ]
  %61 = ptrtoint ptr %data.0169.i158.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %data.0169.i158.i, align 4
  %add.ptr106.i161.i = getelementptr i8, ptr %data.0169.i158.i, i32 4
  %shr107.i162.i = lshr i32 %62, 16
  %conv108.i163.i = trunc i32 %shr107.i162.i to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 116, i16 noundef zeroext %conv108.i163.i) #2
  %conv110.i164.i = trunc i32 %62 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext %conv110.i164.i) #2
  %inc.i165.i = add nuw nsw i32 %i.0167.i159.i, 1
  %exitcond.not.i166.i = icmp eq i32 %inc.i165.i, 55
  br i1 %exitcond.not.i166.i, label %b43_ntab_write_bulk.exit167.i, label %for.body.i160.i.for.body.i160.i_crit_edge

for.body.i160.i.for.body.i160.i_crit_edge:        ; preds = %for.body.i160.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i160.i

b43_ntab_write_bulk.exit167.i:                    ; preds = %for.body.i160.i
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext 20096) #2
  br label %for.body.i170.i

for.body.i170.i:                                  ; preds = %for.body.i170.i.for.body.i170.i_crit_edge, %b43_ntab_write_bulk.exit167.i
  %data.0169.i168.i = phi ptr [ @b43_ntab_tdi40a0_r3, %b43_ntab_write_bulk.exit167.i ], [ %add.ptr106.i171.i, %for.body.i170.i.for.body.i170.i_crit_edge ]
  %i.0167.i169.i = phi i32 [ 0, %b43_ntab_write_bulk.exit167.i ], [ %inc.i175.i, %for.body.i170.i.for.body.i170.i_crit_edge ]
  %63 = ptrtoint ptr %data.0169.i168.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %data.0169.i168.i, align 4
  %add.ptr106.i171.i = getelementptr i8, ptr %data.0169.i168.i, i32 4
  %shr107.i172.i = lshr i32 %64, 16
  %conv108.i173.i = trunc i32 %shr107.i172.i to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 116, i16 noundef zeroext %conv108.i173.i) #2
  %conv110.i174.i = trunc i32 %64 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext %conv110.i174.i) #2
  %inc.i175.i = add nuw nsw i32 %i.0167.i169.i, 1
  %exitcond.not.i176.i = icmp eq i32 %inc.i175.i, 110
  br i1 %exitcond.not.i176.i, label %b43_ntab_write_bulk.exit177.i, label %for.body.i170.i.for.body.i170.i_crit_edge

for.body.i170.i.for.body.i170.i_crit_edge:        ; preds = %for.body.i170.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i170.i

b43_ntab_write_bulk.exit177.i:                    ; preds = %for.body.i170.i
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext 20224) #2
  br label %for.body.i180.i

for.body.i180.i:                                  ; preds = %for.body.i180.i.for.body.i180.i_crit_edge, %b43_ntab_write_bulk.exit177.i
  %data.0169.i178.i = phi ptr [ @b43_ntab_tdi40a1_r3, %b43_ntab_write_bulk.exit177.i ], [ %add.ptr106.i181.i, %for.body.i180.i.for.body.i180.i_crit_edge ]
  %i.0167.i179.i = phi i32 [ 0, %b43_ntab_write_bulk.exit177.i ], [ %inc.i185.i, %for.body.i180.i.for.body.i180.i_crit_edge ]
  %65 = ptrtoint ptr %data.0169.i178.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %data.0169.i178.i, align 4
  %add.ptr106.i181.i = getelementptr i8, ptr %data.0169.i178.i, i32 4
  %shr107.i182.i = lshr i32 %66, 16
  %conv108.i183.i = trunc i32 %shr107.i182.i to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 116, i16 noundef zeroext %conv108.i183.i) #2
  %conv110.i184.i = trunc i32 %66 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext %conv110.i184.i) #2
  %inc.i185.i = add nuw nsw i32 %i.0167.i179.i, 1
  %exitcond.not.i186.i = icmp eq i32 %inc.i185.i, 110
  br i1 %exitcond.not.i186.i, label %b43_ntab_write_bulk.exit187.i, label %for.body.i180.i.for.body.i180.i_crit_edge

for.body.i180.i.for.body.i180.i_crit_edge:        ; preds = %for.body.i180.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i180.i

b43_ntab_write_bulk.exit187.i:                    ; preds = %for.body.i180.i
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext 20480) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 116, i16 noundef zeroext 30292) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext 531) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 116, i16 noundef zeroext 25152) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext 29521) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 116, i16 noundef zeroext 30292) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext 12816) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 116, i16 noundef zeroext 30292) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext 531) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 116, i16 noundef zeroext 30292) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext 531) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 116, i16 noundef zeroext 30275) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext 1313) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext 22528) #2
  br label %for.body.i200.i

for.body.i200.i:                                  ; preds = %for.body.i200.i.for.body.i200.i_crit_edge, %b43_ntab_write_bulk.exit187.i
  %data.0169.i198.i = phi ptr [ @b43_ntab_channelest_r3, %b43_ntab_write_bulk.exit187.i ], [ %add.ptr106.i201.i, %for.body.i200.i.for.body.i200.i_crit_edge ]
  %i.0167.i199.i = phi i32 [ 0, %b43_ntab_write_bulk.exit187.i ], [ %inc.i205.i, %for.body.i200.i.for.body.i200.i_crit_edge ]
  %67 = ptrtoint ptr %data.0169.i198.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %data.0169.i198.i, align 4
  %add.ptr106.i201.i = getelementptr i8, ptr %data.0169.i198.i, i32 4
  %shr107.i202.i = lshr i32 %68, 16
  %conv108.i203.i = trunc i32 %shr107.i202.i to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 116, i16 noundef zeroext %conv108.i203.i) #2
  %conv110.i204.i = trunc i32 %68 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext %conv110.i204.i) #2
  %inc.i205.i = add nuw nsw i32 %i.0167.i199.i, 1
  %exitcond.not.i206.i = icmp eq i32 %inc.i205.i, 96
  br i1 %exitcond.not.i206.i, label %b43_ntab_write_bulk.exit207.i, label %for.body.i200.i.for.body.i200.i_crit_edge

for.body.i200.i.for.body.i200.i_crit_edge:        ; preds = %for.body.i200.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i200.i

b43_ntab_write_bulk.exit207.i:                    ; preds = %for.body.i200.i
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext 24576) #2
  br label %for.body.i210.i

for.body.i210.i:                                  ; preds = %for.body.i210.i.for.body.i210.i_crit_edge, %b43_ntab_write_bulk.exit207.i
  %data.0169.i208.i = phi ptr [ @b43_ntab_framelookup_r3, %b43_ntab_write_bulk.exit207.i ], [ %incdec.ptr.i.i51, %for.body.i210.i.for.body.i210.i_crit_edge ]
  %i.0167.i209.i = phi i32 [ 0, %b43_ntab_write_bulk.exit207.i ], [ %inc.i211.i, %for.body.i210.i.for.body.i210.i_crit_edge ]
  %69 = ptrtoint ptr %data.0169.i208.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %data.0169.i208.i, align 1
  %incdec.ptr.i.i51 = getelementptr i8, ptr %data.0169.i208.i, i32 1
  %conv69.i.i52 = zext i8 %70 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext %conv69.i.i52) #2
  %inc.i211.i = add nuw nsw i32 %i.0167.i209.i, 1
  %exitcond.not.i212.i = icmp eq i32 %inc.i211.i, 32
  br i1 %exitcond.not.i212.i, label %b43_ntab_write_bulk.exit213.i, label %for.body.i210.i.for.body.i210.i_crit_edge

for.body.i210.i.for.body.i210.i_crit_edge:        ; preds = %for.body.i210.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i210.i

b43_ntab_write_bulk.exit213.i:                    ; preds = %for.body.i210.i
  call void @__sanitizer_cov_trace_pc() #4
  tail call fastcc void @b43_nphy_tables_init_shared_lut(ptr noundef %dev) #2
  br label %if.end45.i

if.end45.i:                                       ; preds = %b43_ntab_write_bulk.exit213.i, %if.then14.if.end45.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %antswlut.0.i)
  %cmp46.i = icmp ult i8 %antswlut.0.i, 4
  br i1 %cmp46.i, label %do.body49.i, label %do.end60.i

do.body49.i:                                      ; preds = %if.end45.i
  %conv.i = zext i8 %antswlut.0.i to i32
  %arrayidx.i = getelementptr [4 x [32 x i16]], ptr @b43_ntab_antswctl_r3, i32 0, i32 %conv.i
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext 9216) #2
  br label %for.body.i216.i

for.body.i216.i:                                  ; preds = %if.end35.i.i.for.body.i216.i_crit_edge, %do.body49.i
  %data.0169.i214.i = phi ptr [ %arrayidx.i, %do.body49.i ], [ %add.ptr.i217.i, %if.end35.i.i.for.body.i216.i_crit_edge ]
  %i.0167.i215.i = phi i32 [ 0, %do.body49.i ], [ %inc.i218.i, %if.end35.i.i.for.body.i216.i_crit_edge ]
  %71 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev, align 4
  %chip_id.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %72, i32 0, i32 20
  %73 = ptrtoint ptr %chip_id.i.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %chip_id.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -22312, i16 %74)
  %cmp26.i.i = icmp eq i16 %74, -22312
  br i1 %cmp26.i.i, label %land.lhs.true28.i.i, label %for.body.i216.i.if.end35.i.i_crit_edge

for.body.i216.i.if.end35.i.i_crit_edge:           ; preds = %for.body.i216.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end35.i.i

land.lhs.true28.i.i:                              ; preds = %for.body.i216.i
  %chip_rev.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %72, i32 0, i32 21
  %75 = ptrtoint ptr %chip_rev.i.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %chip_rev.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %76)
  %cmp31.i.i = icmp eq i8 %76, 1
  br i1 %cmp31.i.i, label %if.then33.i.i, label %land.lhs.true28.i.i.if.end35.i.i_crit_edge

land.lhs.true28.i.i.if.end35.i.i_crit_edge:       ; preds = %land.lhs.true28.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end35.i.i

if.then33.i.i:                                    ; preds = %land.lhs.true28.i.i
  call void @__sanitizer_cov_trace_pc() #4
  %call.i.i = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 115) #2
  %77 = trunc i32 %i.0167.i215.i to i16
  %conv34.i.i = add i16 %77, 9216
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext %conv34.i.i) #2
  br label %if.end35.i.i

if.end35.i.i:                                     ; preds = %if.then33.i.i, %land.lhs.true28.i.i.if.end35.i.i_crit_edge, %for.body.i216.i.if.end35.i.i_crit_edge
  %78 = ptrtoint ptr %data.0169.i214.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %data.0169.i214.i, align 2
  %add.ptr.i217.i = getelementptr i8, ptr %data.0169.i214.i, i32 2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext %79) #2
  %inc.i218.i = add nuw nsw i32 %i.0167.i215.i, 1
  %exitcond.not.i219.i = icmp eq i32 %inc.i218.i, 32
  br i1 %exitcond.not.i219.i, label %if.end35.i.i.if.end17_crit_edge, label %if.end35.i.i.for.body.i216.i_crit_edge

if.end35.i.i.for.body.i216.i_crit_edge:           ; preds = %if.end35.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i216.i

if.end35.i.i.if.end17_crit_edge:                  ; preds = %if.end35.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end17

do.end60.i:                                       ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3585, i32 noundef 9, ptr noundef null) #2
  br label %if.end17

if.else15:                                        ; preds = %if.else8
  %do_full_init.i53 = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 5
  %80 = ptrtoint ptr %do_full_init.i53 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %do_full_init.i53, align 1, !range !220
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool.not.i54 = icmp eq i8 %81, 0
  br i1 %tobool.not.i54, label %if.else15.do.body27.i_crit_edge, label %do.body.i55

if.else15.do.body27.i_crit_edge:                  ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body27.i

do.body.i55:                                      ; preds = %if.else15
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext 10240) #2
  br label %for.body.i.i64

for.body.i.i64:                                   ; preds = %for.body.i.i64.for.body.i.i64_crit_edge, %do.body.i55
  %data.0169.i.i56 = phi ptr [ @b43_ntab_framestruct, %do.body.i55 ], [ %add.ptr106.i.i58, %for.body.i.i64.for.body.i.i64_crit_edge ]
  %i.0167.i.i57 = phi i32 [ 0, %do.body.i55 ], [ %inc.i.i62, %for.body.i.i64.for.body.i.i64_crit_edge ]
  %82 = ptrtoint ptr %data.0169.i.i56 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %data.0169.i.i56, align 4
  %add.ptr106.i.i58 = getelementptr i8, ptr %data.0169.i.i56, i32 4
  %shr107.i.i59 = lshr i32 %83, 16
  %conv108.i.i60 = trunc i32 %shr107.i.i59 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 116, i16 noundef zeroext %conv108.i.i60) #2
  %conv110.i.i61 = trunc i32 %83 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext %conv110.i.i61) #2
  %inc.i.i62 = add nuw nsw i32 %i.0167.i.i57, 1
  %exitcond.not.i.i63 = icmp eq i32 %inc.i.i62, 832
  br i1 %exitcond.not.i.i63, label %b43_ntab_write_bulk.exit.i65, label %for.body.i.i64.for.body.i.i64_crit_edge

for.body.i.i64.for.body.i.i64_crit_edge:          ; preds = %for.body.i.i64
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i.i64

b43_ntab_write_bulk.exit.i65:                     ; preds = %for.body.i.i64
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext 24576) #2
  br label %for.body.i79.i

for.body.i79.i:                                   ; preds = %for.body.i79.i.for.body.i79.i_crit_edge, %b43_ntab_write_bulk.exit.i65
  %data.0169.i77.i = phi ptr [ @b43_ntab_framelookup, %b43_ntab_write_bulk.exit.i65 ], [ %incdec.ptr.i.i66, %for.body.i79.i.for.body.i79.i_crit_edge ]
  %i.0167.i78.i = phi i32 [ 0, %b43_ntab_write_bulk.exit.i65 ], [ %inc.i80.i, %for.body.i79.i.for.body.i79.i_crit_edge ]
  %84 = ptrtoint ptr %data.0169.i77.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %data.0169.i77.i, align 1
  %incdec.ptr.i.i66 = getelementptr i8, ptr %data.0169.i77.i, i32 1
  %conv69.i.i67 = zext i8 %85 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext %conv69.i.i67) #2
  %inc.i80.i = add nuw nsw i32 %i.0167.i78.i, 1
  %exitcond.not.i81.i = icmp eq i32 %inc.i80.i, 32
  br i1 %exitcond.not.i81.i, label %b43_ntab_write_bulk.exit82.i, label %for.body.i79.i.for.body.i79.i_crit_edge

for.body.i79.i.for.body.i79.i_crit_edge:          ; preds = %for.body.i79.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i79.i

b43_ntab_write_bulk.exit82.i:                     ; preds = %for.body.i79.i
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext 12288) #2
  br label %for.body.i85.i

for.body.i85.i:                                   ; preds = %for.body.i85.i.for.body.i85.i_crit_edge, %b43_ntab_write_bulk.exit82.i
  %data.0169.i83.i = phi ptr [ @b43_ntab_tmap, %b43_ntab_write_bulk.exit82.i ], [ %add.ptr106.i86.i, %for.body.i85.i.for.body.i85.i_crit_edge ]
  %i.0167.i84.i = phi i32 [ 0, %b43_ntab_write_bulk.exit82.i ], [ %inc.i90.i, %for.body.i85.i.for.body.i85.i_crit_edge ]
  %86 = ptrtoint ptr %data.0169.i83.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %data.0169.i83.i, align 4
  %add.ptr106.i86.i = getelementptr i8, ptr %data.0169.i83.i, i32 4
  %shr107.i87.i = lshr i32 %87, 16
  %conv108.i88.i = trunc i32 %shr107.i87.i to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 116, i16 noundef zeroext %conv108.i88.i) #2
  %conv110.i89.i = trunc i32 %87 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext %conv110.i89.i) #2
  %inc.i90.i = add nuw nsw i32 %i.0167.i84.i, 1
  %exitcond.not.i91.i = icmp eq i32 %inc.i90.i, 448
  br i1 %exitcond.not.i91.i, label %b43_ntab_write_bulk.exit92.i, label %for.body.i85.i.for.body.i85.i_crit_edge

for.body.i85.i.for.body.i85.i_crit_edge:          ; preds = %for.body.i85.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i85.i

b43_ntab_write_bulk.exit92.i:                     ; preds = %for.body.i85.i
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext 14336) #2
  br label %for.body.i95.i

for.body.i95.i:                                   ; preds = %for.body.i95.i.for.body.i95.i_crit_edge, %b43_ntab_write_bulk.exit92.i
  %data.0169.i93.i = phi ptr [ @b43_ntab_tdtrn, %b43_ntab_write_bulk.exit92.i ], [ %add.ptr106.i96.i, %for.body.i95.i.for.body.i95.i_crit_edge ]
  %i.0167.i94.i = phi i32 [ 0, %b43_ntab_write_bulk.exit92.i ], [ %inc.i100.i, %for.body.i95.i.for.body.i95.i_crit_edge ]
  %88 = ptrtoint ptr %data.0169.i93.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %data.0169.i93.i, align 4
  %add.ptr106.i96.i = getelementptr i8, ptr %data.0169.i93.i, i32 4
  %shr107.i97.i = lshr i32 %89, 16
  %conv108.i98.i = trunc i32 %shr107.i97.i to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 116, i16 noundef zeroext %conv108.i98.i) #2
  %conv110.i99.i = trunc i32 %89 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext %conv110.i99.i) #2
  %inc.i100.i = add nuw nsw i32 %i.0167.i94.i, 1
  %exitcond.not.i101.i = icmp eq i32 %inc.i100.i, 704
  br i1 %exitcond.not.i101.i, label %b43_ntab_write_bulk.exit102.i, label %for.body.i95.i.for.body.i95.i_crit_edge

for.body.i95.i.for.body.i95.i_crit_edge:          ; preds = %for.body.i95.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i95.i

b43_ntab_write_bulk.exit102.i:                    ; preds = %for.body.i95.i
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext 13312) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 116, i16 noundef zeroext 128) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext 8304) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 116, i16 noundef zeroext 1649) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext 6285) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 116, i16 noundef zeroext 2656) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext 6444) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 116, i16 noundef zeroext 2608) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext 3654) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 116, i16 noundef zeroext 193) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext 6285) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 116, i16 noundef zeroext 2048) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext 9426) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 116, i16 noundef zeroext 0) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext 112) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext 11264) #2
  br label %for.body.i115.i

for.body.i115.i:                                  ; preds = %for.body.i115.i.for.body.i115.i_crit_edge, %b43_ntab_write_bulk.exit102.i
  %data.0169.i113.i = phi ptr [ @b43_ntab_pilot, %b43_ntab_write_bulk.exit102.i ], [ %add.ptr.i.i68, %for.body.i115.i.for.body.i115.i_crit_edge ]
  %i.0167.i114.i = phi i32 [ 0, %b43_ntab_write_bulk.exit102.i ], [ %inc.i116.i, %for.body.i115.i.for.body.i115.i_crit_edge ]
  %90 = ptrtoint ptr %data.0169.i113.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %data.0169.i113.i, align 2
  %add.ptr.i.i68 = getelementptr i8, ptr %data.0169.i113.i, i32 2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext %91) #2
  %inc.i116.i = add nuw nsw i32 %i.0167.i114.i, 1
  %exitcond.not.i117.i = icmp eq i32 %inc.i116.i, 88
  br i1 %exitcond.not.i117.i, label %b43_ntab_write_bulk.exit118.i, label %for.body.i115.i.for.body.i115.i_crit_edge

for.body.i115.i.for.body.i115.i_crit_edge:        ; preds = %for.body.i115.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i115.i

b43_ntab_write_bulk.exit118.i:                    ; preds = %for.body.i115.i
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext 19584) #2
  br label %for.body.i121.i

for.body.i121.i:                                  ; preds = %for.body.i121.i.for.body.i121.i_crit_edge, %b43_ntab_write_bulk.exit118.i
  %data.0169.i119.i = phi ptr [ @b43_ntab_tdi20a0, %b43_ntab_write_bulk.exit118.i ], [ %add.ptr106.i122.i, %for.body.i121.i.for.body.i121.i_crit_edge ]
  %i.0167.i120.i = phi i32 [ 0, %b43_ntab_write_bulk.exit118.i ], [ %inc.i126.i, %for.body.i121.i.for.body.i121.i_crit_edge ]
  %92 = ptrtoint ptr %data.0169.i119.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %data.0169.i119.i, align 4
  %add.ptr106.i122.i = getelementptr i8, ptr %data.0169.i119.i, i32 4
  %shr107.i123.i = lshr i32 %93, 16
  %conv108.i124.i = trunc i32 %shr107.i123.i to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 116, i16 noundef zeroext %conv108.i124.i) #2
  %conv110.i125.i = trunc i32 %93 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext %conv110.i125.i) #2
  %inc.i126.i = add nuw nsw i32 %i.0167.i120.i, 1
  %exitcond.not.i127.i = icmp eq i32 %inc.i126.i, 55
  br i1 %exitcond.not.i127.i, label %b43_ntab_write_bulk.exit128.i, label %for.body.i121.i.for.body.i121.i_crit_edge

for.body.i121.i.for.body.i121.i_crit_edge:        ; preds = %for.body.i121.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i121.i

b43_ntab_write_bulk.exit128.i:                    ; preds = %for.body.i121.i
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext 19712) #2
  br label %for.body.i131.i

for.body.i131.i:                                  ; preds = %for.body.i131.i.for.body.i131.i_crit_edge, %b43_ntab_write_bulk.exit128.i
  %data.0169.i129.i = phi ptr [ @b43_ntab_tdi20a1, %b43_ntab_write_bulk.exit128.i ], [ %add.ptr106.i132.i, %for.body.i131.i.for.body.i131.i_crit_edge ]
  %i.0167.i130.i = phi i32 [ 0, %b43_ntab_write_bulk.exit128.i ], [ %inc.i136.i, %for.body.i131.i.for.body.i131.i_crit_edge ]
  %94 = ptrtoint ptr %data.0169.i129.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %data.0169.i129.i, align 4
  %add.ptr106.i132.i = getelementptr i8, ptr %data.0169.i129.i, i32 4
  %shr107.i133.i = lshr i32 %95, 16
  %conv108.i134.i = trunc i32 %shr107.i133.i to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 116, i16 noundef zeroext %conv108.i134.i) #2
  %conv110.i135.i = trunc i32 %95 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext %conv110.i135.i) #2
  %inc.i136.i = add nuw nsw i32 %i.0167.i130.i, 1
  %exitcond.not.i137.i = icmp eq i32 %inc.i136.i, 55
  br i1 %exitcond.not.i137.i, label %b43_ntab_write_bulk.exit138.i, label %for.body.i131.i.for.body.i131.i_crit_edge

for.body.i131.i.for.body.i131.i_crit_edge:        ; preds = %for.body.i131.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i131.i

b43_ntab_write_bulk.exit138.i:                    ; preds = %for.body.i131.i
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext 20096) #2
  br label %for.body.i141.i

for.body.i141.i:                                  ; preds = %for.body.i141.i.for.body.i141.i_crit_edge, %b43_ntab_write_bulk.exit138.i
  %data.0169.i139.i = phi ptr [ @b43_ntab_tdi40a0, %b43_ntab_write_bulk.exit138.i ], [ %add.ptr106.i142.i, %for.body.i141.i.for.body.i141.i_crit_edge ]
  %i.0167.i140.i = phi i32 [ 0, %b43_ntab_write_bulk.exit138.i ], [ %inc.i146.i, %for.body.i141.i.for.body.i141.i_crit_edge ]
  %96 = ptrtoint ptr %data.0169.i139.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %data.0169.i139.i, align 4
  %add.ptr106.i142.i = getelementptr i8, ptr %data.0169.i139.i, i32 4
  %shr107.i143.i = lshr i32 %97, 16
  %conv108.i144.i = trunc i32 %shr107.i143.i to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 116, i16 noundef zeroext %conv108.i144.i) #2
  %conv110.i145.i = trunc i32 %97 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext %conv110.i145.i) #2
  %inc.i146.i = add nuw nsw i32 %i.0167.i140.i, 1
  %exitcond.not.i147.i = icmp eq i32 %inc.i146.i, 110
  br i1 %exitcond.not.i147.i, label %b43_ntab_write_bulk.exit148.i, label %for.body.i141.i.for.body.i141.i_crit_edge

for.body.i141.i.for.body.i141.i_crit_edge:        ; preds = %for.body.i141.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i141.i

b43_ntab_write_bulk.exit148.i:                    ; preds = %for.body.i141.i
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext 20224) #2
  br label %for.body.i151.i

for.body.i151.i:                                  ; preds = %for.body.i151.i.for.body.i151.i_crit_edge, %b43_ntab_write_bulk.exit148.i
  %data.0169.i149.i = phi ptr [ @b43_ntab_tdi40a1, %b43_ntab_write_bulk.exit148.i ], [ %add.ptr106.i152.i, %for.body.i151.i.for.body.i151.i_crit_edge ]
  %i.0167.i150.i = phi i32 [ 0, %b43_ntab_write_bulk.exit148.i ], [ %inc.i156.i, %for.body.i151.i.for.body.i151.i_crit_edge ]
  %98 = ptrtoint ptr %data.0169.i149.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %data.0169.i149.i, align 4
  %add.ptr106.i152.i = getelementptr i8, ptr %data.0169.i149.i, i32 4
  %shr107.i153.i = lshr i32 %99, 16
  %conv108.i154.i = trunc i32 %shr107.i153.i to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 116, i16 noundef zeroext %conv108.i154.i) #2
  %conv110.i155.i = trunc i32 %99 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext %conv110.i155.i) #2
  %inc.i156.i = add nuw nsw i32 %i.0167.i150.i, 1
  %exitcond.not.i157.i = icmp eq i32 %inc.i156.i, 110
  br i1 %exitcond.not.i157.i, label %b43_ntab_write_bulk.exit158.i, label %for.body.i151.i.for.body.i151.i_crit_edge

for.body.i151.i.for.body.i151.i_crit_edge:        ; preds = %for.body.i151.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i151.i

b43_ntab_write_bulk.exit158.i:                    ; preds = %for.body.i151.i
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext 22528) #2
  br label %for.body.i161.i

for.body.i161.i:                                  ; preds = %for.body.i161.i.for.body.i161.i_crit_edge, %b43_ntab_write_bulk.exit158.i
  %data.0169.i159.i = phi ptr [ @b43_ntab_channelest, %b43_ntab_write_bulk.exit158.i ], [ %add.ptr106.i162.i, %for.body.i161.i.for.body.i161.i_crit_edge ]
  %i.0167.i160.i = phi i32 [ 0, %b43_ntab_write_bulk.exit158.i ], [ %inc.i166.i, %for.body.i161.i.for.body.i161.i_crit_edge ]
  %100 = ptrtoint ptr %data.0169.i159.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %data.0169.i159.i, align 4
  %add.ptr106.i162.i = getelementptr i8, ptr %data.0169.i159.i, i32 4
  %shr107.i163.i = lshr i32 %101, 16
  %conv108.i164.i = trunc i32 %shr107.i163.i to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 116, i16 noundef zeroext %conv108.i164.i) #2
  %conv110.i165.i = trunc i32 %101 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext %conv110.i165.i) #2
  %inc.i166.i = add nuw nsw i32 %i.0167.i160.i, 1
  %exitcond.not.i167.i = icmp eq i32 %inc.i166.i, 96
  br i1 %exitcond.not.i167.i, label %b43_ntab_write_bulk.exit168.i, label %for.body.i161.i.for.body.i161.i_crit_edge

for.body.i161.i.for.body.i161.i_crit_edge:        ; preds = %for.body.i161.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i161.i

b43_ntab_write_bulk.exit168.i:                    ; preds = %for.body.i161.i
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext 18432) #2
  br label %for.body.i171.i

for.body.i171.i:                                  ; preds = %for.body.i171.i.for.body.i171.i_crit_edge, %b43_ntab_write_bulk.exit168.i
  %data.0169.i169.i = phi ptr [ @b43_ntab_mcs, %b43_ntab_write_bulk.exit168.i ], [ %incdec.ptr.i172.i, %for.body.i171.i.for.body.i171.i_crit_edge ]
  %i.0167.i170.i = phi i32 [ 0, %b43_ntab_write_bulk.exit168.i ], [ %inc.i174.i, %for.body.i171.i.for.body.i171.i_crit_edge ]
  %102 = ptrtoint ptr %data.0169.i169.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %data.0169.i169.i, align 1
  %incdec.ptr.i172.i = getelementptr i8, ptr %data.0169.i169.i, i32 1
  %conv69.i173.i = zext i8 %103 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext %conv69.i173.i) #2
  %inc.i174.i = add nuw nsw i32 %i.0167.i170.i, 1
  %exitcond.not.i175.i = icmp eq i32 %inc.i174.i, 128
  br i1 %exitcond.not.i175.i, label %b43_ntab_write_bulk.exit176.i, label %for.body.i171.i.for.body.i171.i_crit_edge

for.body.i171.i.for.body.i171.i_crit_edge:        ; preds = %for.body.i171.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i171.i

b43_ntab_write_bulk.exit176.i:                    ; preds = %for.body.i171.i
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext 16384) #2
  br label %for.body.i179.i

for.body.i179.i:                                  ; preds = %for.body.i179.i.for.body.i179.i_crit_edge, %b43_ntab_write_bulk.exit176.i
  %data.0169.i177.i = phi ptr [ @b43_ntab_noisevar10, %b43_ntab_write_bulk.exit176.i ], [ %add.ptr106.i180.i, %for.body.i179.i.for.body.i179.i_crit_edge ]
  %i.0167.i178.i = phi i32 [ 0, %b43_ntab_write_bulk.exit176.i ], [ %inc.i184.i, %for.body.i179.i.for.body.i179.i_crit_edge ]
  %104 = ptrtoint ptr %data.0169.i177.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %data.0169.i177.i, align 4
  %add.ptr106.i180.i = getelementptr i8, ptr %data.0169.i177.i, i32 4
  %shr107.i181.i = lshr i32 %105, 16
  %conv108.i182.i = trunc i32 %shr107.i181.i to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 116, i16 noundef zeroext %conv108.i182.i) #2
  %conv110.i183.i = trunc i32 %105 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext %conv110.i183.i) #2
  %inc.i184.i = add nuw nsw i32 %i.0167.i178.i, 1
  %exitcond.not.i185.i = icmp eq i32 %inc.i184.i, 256
  br i1 %exitcond.not.i185.i, label %b43_ntab_write_bulk.exit186.i, label %for.body.i179.i.for.body.i179.i_crit_edge

for.body.i179.i.for.body.i179.i_crit_edge:        ; preds = %for.body.i179.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i179.i

b43_ntab_write_bulk.exit186.i:                    ; preds = %for.body.i179.i
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext 16512) #2
  br label %for.body.i189.i

for.body.i189.i:                                  ; preds = %for.body.i189.i.for.body.i189.i_crit_edge, %b43_ntab_write_bulk.exit186.i
  %data.0169.i187.i = phi ptr [ @b43_ntab_noisevar11, %b43_ntab_write_bulk.exit186.i ], [ %add.ptr106.i190.i, %for.body.i189.i.for.body.i189.i_crit_edge ]
  %i.0167.i188.i = phi i32 [ 0, %b43_ntab_write_bulk.exit186.i ], [ %inc.i194.i, %for.body.i189.i.for.body.i189.i_crit_edge ]
  %106 = ptrtoint ptr %data.0169.i187.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %data.0169.i187.i, align 4
  %add.ptr106.i190.i = getelementptr i8, ptr %data.0169.i187.i, i32 4
  %shr107.i191.i = lshr i32 %107, 16
  %conv108.i192.i = trunc i32 %shr107.i191.i to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 116, i16 noundef zeroext %conv108.i192.i) #2
  %conv110.i193.i = trunc i32 %107 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext %conv110.i193.i) #2
  %inc.i194.i = add nuw nsw i32 %i.0167.i188.i, 1
  %exitcond.not.i195.i = icmp eq i32 %inc.i194.i, 256
  br i1 %exitcond.not.i195.i, label %for.body.i189.i.do.body27.i_crit_edge, label %for.body.i189.i.for.body.i189.i_crit_edge

for.body.i189.i.for.body.i189.i_crit_edge:        ; preds = %for.body.i189.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i189.i

for.body.i189.i.do.body27.i_crit_edge:            ; preds = %for.body.i189.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body27.i

do.body27.i:                                      ; preds = %for.body.i189.i.do.body27.i_crit_edge, %if.else15.do.body27.i_crit_edge
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext 21504) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext 112) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext 294) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext 300) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext 582) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext 1165) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext 1234) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext 20480) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 116, i16 noundef zeroext 30292) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext 291) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 116, i16 noundef zeroext 25152) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext 29521) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 116, i16 noundef zeroext 30292) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext 12801) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 116, i16 noundef zeroext 30292) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext 531) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 116, i16 noundef zeroext 30292) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext 291) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 116, i16 noundef zeroext 30275) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext 1313) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext 26816) #2
  br label %for.body.i216.i71

for.body.i216.i71:                                ; preds = %for.body.i216.i71.for.body.i216.i71_crit_edge, %do.body27.i
  %data.0169.i214.i69 = phi ptr [ @b43_ntab_gainctl0, %do.body27.i ], [ %add.ptr106.i217.i, %for.body.i216.i71.for.body.i216.i71_crit_edge ]
  %i.0167.i215.i70 = phi i32 [ 0, %do.body27.i ], [ %inc.i221.i, %for.body.i216.i71.for.body.i216.i71_crit_edge ]
  %108 = ptrtoint ptr %data.0169.i214.i69 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %data.0169.i214.i69, align 4
  %add.ptr106.i217.i = getelementptr i8, ptr %data.0169.i214.i69, i32 4
  %shr107.i218.i = lshr i32 %109, 16
  %conv108.i219.i = trunc i32 %shr107.i218.i to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 116, i16 noundef zeroext %conv108.i219.i) #2
  %conv110.i220.i = trunc i32 %109 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext %conv110.i220.i) #2
  %inc.i221.i = add nuw nsw i32 %i.0167.i215.i70, 1
  %exitcond.not.i222.i = icmp eq i32 %inc.i221.i, 128
  br i1 %exitcond.not.i222.i, label %b43_ntab_write_bulk.exit223.i, label %for.body.i216.i71.for.body.i216.i71_crit_edge

for.body.i216.i71.for.body.i216.i71_crit_edge:    ; preds = %for.body.i216.i71
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i216.i71

b43_ntab_write_bulk.exit223.i:                    ; preds = %for.body.i216.i71
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext 27840) #2
  br label %for.body.i226.i

for.body.i226.i:                                  ; preds = %for.body.i226.i.for.body.i226.i_crit_edge, %b43_ntab_write_bulk.exit223.i
  %data.0169.i224.i = phi ptr [ @b43_ntab_gainctl1, %b43_ntab_write_bulk.exit223.i ], [ %add.ptr106.i227.i, %for.body.i226.i.for.body.i226.i_crit_edge ]
  %i.0167.i225.i = phi i32 [ 0, %b43_ntab_write_bulk.exit223.i ], [ %inc.i231.i, %for.body.i226.i.for.body.i226.i_crit_edge ]
  %110 = ptrtoint ptr %data.0169.i224.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %data.0169.i224.i, align 4
  %add.ptr106.i227.i = getelementptr i8, ptr %data.0169.i224.i, i32 4
  %shr107.i228.i = lshr i32 %111, 16
  %conv108.i229.i = trunc i32 %shr107.i228.i to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 116, i16 noundef zeroext %conv108.i229.i) #2
  %conv110.i230.i = trunc i32 %111 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext %conv110.i230.i) #2
  %inc.i231.i = add nuw nsw i32 %i.0167.i225.i, 1
  %exitcond.not.i232.i = icmp eq i32 %inc.i231.i, 128
  br i1 %exitcond.not.i232.i, label %b43_ntab_write_bulk.exit233.i, label %for.body.i226.i.for.body.i226.i_crit_edge

for.body.i226.i.for.body.i226.i_crit_edge:        ; preds = %for.body.i226.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i226.i

b43_ntab_write_bulk.exit233.i:                    ; preds = %for.body.i226.i
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext 26624) #2
  br label %for.body.i236.i

for.body.i236.i:                                  ; preds = %for.body.i236.i.for.body.i236.i_crit_edge, %b43_ntab_write_bulk.exit233.i
  %data.0169.i234.i = phi ptr [ @b43_ntab_estimatepowerlt0, %b43_ntab_write_bulk.exit233.i ], [ %incdec.ptr.i237.i, %for.body.i236.i.for.body.i236.i_crit_edge ]
  %i.0167.i235.i = phi i32 [ 0, %b43_ntab_write_bulk.exit233.i ], [ %inc.i239.i, %for.body.i236.i.for.body.i236.i_crit_edge ]
  %112 = ptrtoint ptr %data.0169.i234.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %data.0169.i234.i, align 1
  %incdec.ptr.i237.i = getelementptr i8, ptr %data.0169.i234.i, i32 1
  %conv69.i238.i = zext i8 %113 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext %conv69.i238.i) #2
  %inc.i239.i = add nuw nsw i32 %i.0167.i235.i, 1
  %exitcond.not.i240.i = icmp eq i32 %inc.i239.i, 64
  br i1 %exitcond.not.i240.i, label %b43_ntab_write_bulk.exit241.i, label %for.body.i236.i.for.body.i236.i_crit_edge

for.body.i236.i.for.body.i236.i_crit_edge:        ; preds = %for.body.i236.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i236.i

b43_ntab_write_bulk.exit241.i:                    ; preds = %for.body.i236.i
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext 27648) #2
  br label %for.body.i244.i

for.body.i244.i:                                  ; preds = %for.body.i244.i.for.body.i244.i_crit_edge, %b43_ntab_write_bulk.exit241.i
  %data.0169.i242.i = phi ptr [ @b43_ntab_estimatepowerlt1, %b43_ntab_write_bulk.exit241.i ], [ %incdec.ptr.i245.i, %for.body.i244.i.for.body.i244.i_crit_edge ]
  %i.0167.i243.i = phi i32 [ 0, %b43_ntab_write_bulk.exit241.i ], [ %inc.i247.i, %for.body.i244.i.for.body.i244.i_crit_edge ]
  %114 = ptrtoint ptr %data.0169.i242.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %data.0169.i242.i, align 1
  %incdec.ptr.i245.i = getelementptr i8, ptr %data.0169.i242.i, i32 1
  %conv69.i246.i = zext i8 %115 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext %conv69.i246.i) #2
  %inc.i247.i = add nuw nsw i32 %i.0167.i243.i, 1
  %exitcond.not.i248.i = icmp eq i32 %inc.i247.i, 64
  br i1 %exitcond.not.i248.i, label %b43_ntab_write_bulk.exit249.i, label %for.body.i244.i.for.body.i244.i_crit_edge

for.body.i244.i.for.body.i244.i_crit_edge:        ; preds = %for.body.i244.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i244.i

b43_ntab_write_bulk.exit249.i:                    ; preds = %for.body.i244.i
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext 26688) #2
  br label %for.body.i252.i

for.body.i252.i:                                  ; preds = %for.body.i252.i.for.body.i252.i_crit_edge, %b43_ntab_write_bulk.exit249.i
  %data.0169.i250.i = phi ptr [ @b43_ntab_adjustpower0, %b43_ntab_write_bulk.exit249.i ], [ %incdec.ptr.i253.i, %for.body.i252.i.for.body.i252.i_crit_edge ]
  %i.0167.i251.i = phi i32 [ 0, %b43_ntab_write_bulk.exit249.i ], [ %inc.i255.i, %for.body.i252.i.for.body.i252.i_crit_edge ]
  %116 = ptrtoint ptr %data.0169.i250.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %data.0169.i250.i, align 1
  %incdec.ptr.i253.i = getelementptr i8, ptr %data.0169.i250.i, i32 1
  %conv69.i254.i = zext i8 %117 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext %conv69.i254.i) #2
  %inc.i255.i = add nuw nsw i32 %i.0167.i251.i, 1
  %exitcond.not.i256.i = icmp eq i32 %inc.i255.i, 128
  br i1 %exitcond.not.i256.i, label %b43_ntab_write_bulk.exit257.i, label %for.body.i252.i.for.body.i252.i_crit_edge

for.body.i252.i.for.body.i252.i_crit_edge:        ; preds = %for.body.i252.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i252.i

b43_ntab_write_bulk.exit257.i:                    ; preds = %for.body.i252.i
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext 27712) #2
  br label %for.body.i260.i

for.body.i260.i:                                  ; preds = %for.body.i260.i.for.body.i260.i_crit_edge, %b43_ntab_write_bulk.exit257.i
  %data.0169.i258.i = phi ptr [ @b43_ntab_adjustpower1, %b43_ntab_write_bulk.exit257.i ], [ %incdec.ptr.i261.i, %for.body.i260.i.for.body.i260.i_crit_edge ]
  %i.0167.i259.i = phi i32 [ 0, %b43_ntab_write_bulk.exit257.i ], [ %inc.i263.i, %for.body.i260.i.for.body.i260.i_crit_edge ]
  %118 = ptrtoint ptr %data.0169.i258.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %data.0169.i258.i, align 1
  %incdec.ptr.i261.i = getelementptr i8, ptr %data.0169.i258.i, i32 1
  %conv69.i262.i = zext i8 %119 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext %conv69.i262.i) #2
  %inc.i263.i = add nuw nsw i32 %i.0167.i259.i, 1
  %exitcond.not.i264.i = icmp eq i32 %inc.i263.i, 128
  br i1 %exitcond.not.i264.i, label %b43_ntab_write_bulk.exit265.i, label %for.body.i260.i.for.body.i260.i_crit_edge

for.body.i260.i.for.body.i260.i_crit_edge:        ; preds = %for.body.i260.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i260.i

b43_ntab_write_bulk.exit265.i:                    ; preds = %for.body.i260.i
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext 26944) #2
  br label %for.body.i268.i

for.body.i268.i:                                  ; preds = %for.body.i268.i.for.body.i268.i_crit_edge, %b43_ntab_write_bulk.exit265.i
  %data.0169.i266.i = phi ptr [ @b43_ntab_iqlt0, %b43_ntab_write_bulk.exit265.i ], [ %add.ptr106.i269.i, %for.body.i268.i.for.body.i268.i_crit_edge ]
  %i.0167.i267.i = phi i32 [ 0, %b43_ntab_write_bulk.exit265.i ], [ %inc.i273.i, %for.body.i268.i.for.body.i268.i_crit_edge ]
  %120 = ptrtoint ptr %data.0169.i266.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %data.0169.i266.i, align 4
  %add.ptr106.i269.i = getelementptr i8, ptr %data.0169.i266.i, i32 4
  %shr107.i270.i = lshr i32 %121, 16
  %conv108.i271.i = trunc i32 %shr107.i270.i to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 116, i16 noundef zeroext %conv108.i271.i) #2
  %conv110.i272.i = trunc i32 %121 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext %conv110.i272.i) #2
  %inc.i273.i = add nuw nsw i32 %i.0167.i267.i, 1
  %exitcond.not.i274.i = icmp eq i32 %inc.i273.i, 128
  br i1 %exitcond.not.i274.i, label %b43_ntab_write_bulk.exit275.i, label %for.body.i268.i.for.body.i268.i_crit_edge

for.body.i268.i.for.body.i268.i_crit_edge:        ; preds = %for.body.i268.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i268.i

b43_ntab_write_bulk.exit275.i:                    ; preds = %for.body.i268.i
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext 27968) #2
  br label %for.body.i278.i

for.body.i278.i:                                  ; preds = %for.body.i278.i.for.body.i278.i_crit_edge, %b43_ntab_write_bulk.exit275.i
  %data.0169.i276.i = phi ptr [ @b43_ntab_iqlt1, %b43_ntab_write_bulk.exit275.i ], [ %add.ptr106.i279.i, %for.body.i278.i.for.body.i278.i_crit_edge ]
  %i.0167.i277.i = phi i32 [ 0, %b43_ntab_write_bulk.exit275.i ], [ %inc.i283.i, %for.body.i278.i.for.body.i278.i_crit_edge ]
  %122 = ptrtoint ptr %data.0169.i276.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %data.0169.i276.i, align 4
  %add.ptr106.i279.i = getelementptr i8, ptr %data.0169.i276.i, i32 4
  %shr107.i280.i = lshr i32 %123, 16
  %conv108.i281.i = trunc i32 %shr107.i280.i to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 116, i16 noundef zeroext %conv108.i281.i) #2
  %conv110.i282.i = trunc i32 %123 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext %conv110.i282.i) #2
  %inc.i283.i = add nuw nsw i32 %i.0167.i277.i, 1
  %exitcond.not.i284.i = icmp eq i32 %inc.i283.i, 128
  br i1 %exitcond.not.i284.i, label %b43_ntab_write_bulk.exit285.i, label %for.body.i278.i.for.body.i278.i_crit_edge

for.body.i278.i.for.body.i278.i_crit_edge:        ; preds = %for.body.i278.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i278.i

b43_ntab_write_bulk.exit285.i:                    ; preds = %for.body.i278.i
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext 27072) #2
  br label %for.body.i288.i

for.body.i288.i:                                  ; preds = %for.body.i288.i.for.body.i288.i_crit_edge, %b43_ntab_write_bulk.exit285.i
  %data.0169.i286.i = phi ptr [ @b43_ntab_loftlt0, %b43_ntab_write_bulk.exit285.i ], [ %add.ptr.i289.i, %for.body.i288.i.for.body.i288.i_crit_edge ]
  %i.0167.i287.i = phi i32 [ 0, %b43_ntab_write_bulk.exit285.i ], [ %inc.i290.i, %for.body.i288.i.for.body.i288.i_crit_edge ]
  %124 = ptrtoint ptr %data.0169.i286.i to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %data.0169.i286.i, align 2
  %add.ptr.i289.i = getelementptr i8, ptr %data.0169.i286.i, i32 2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext %125) #2
  %inc.i290.i = add nuw nsw i32 %i.0167.i287.i, 1
  %exitcond.not.i291.i = icmp eq i32 %inc.i290.i, 128
  br i1 %exitcond.not.i291.i, label %b43_ntab_write_bulk.exit292.i, label %for.body.i288.i.for.body.i288.i_crit_edge

for.body.i288.i.for.body.i288.i_crit_edge:        ; preds = %for.body.i288.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i288.i

b43_ntab_write_bulk.exit292.i:                    ; preds = %for.body.i288.i
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext 28096) #2
  br label %for.body.i295.i

for.body.i295.i:                                  ; preds = %for.body.i295.i.for.body.i295.i_crit_edge, %b43_ntab_write_bulk.exit292.i
  %data.0169.i293.i = phi ptr [ @b43_ntab_loftlt1, %b43_ntab_write_bulk.exit292.i ], [ %add.ptr.i296.i, %for.body.i295.i.for.body.i295.i_crit_edge ]
  %i.0167.i294.i = phi i32 [ 0, %b43_ntab_write_bulk.exit292.i ], [ %inc.i297.i, %for.body.i295.i.for.body.i295.i_crit_edge ]
  %126 = ptrtoint ptr %data.0169.i293.i to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %data.0169.i293.i, align 2
  %add.ptr.i296.i = getelementptr i8, ptr %data.0169.i293.i, i32 2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext %127) #2
  %inc.i297.i = add nuw nsw i32 %i.0167.i294.i, 1
  %exitcond.not.i298.i = icmp eq i32 %inc.i297.i, 128
  br i1 %exitcond.not.i298.i, label %for.body.i295.i.if.end17_crit_edge, label %for.body.i295.i.for.body.i295.i_crit_edge

for.body.i295.i.for.body.i295.i_crit_edge:        ; preds = %for.body.i295.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i295.i

for.body.i295.i.if.end17_crit_edge:               ; preds = %for.body.i295.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end17

if.end17:                                         ; preds = %for.body.i295.i.if.end17_crit_edge, %do.end60.i, %if.end35.i.i.if.end17_crit_edge, %b43_nphy_tables_init_rev7.exit, %b43_nphy_tables_init_rev16.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @b43_nphy_get_tx_gain_table(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %wl = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wl, align 4
  %hw.i = getelementptr inbounds %struct.b43_wl, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw.i, align 4
  %chandef.i = getelementptr inbounds %struct.ieee80211_conf, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %chandef.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chandef.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %bus_sprom = getelementptr inbounds %struct.b43_bus_dev, ptr %9, i32 0, i32 23
  %10 = ptrtoint ptr %bus_sprom to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus_sprom, align 4
  %rev = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 8
  %12 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %13)
  %cmp = icmp ult i8 %13, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %n = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 1, i32 1
  %14 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %n, align 4
  %ipa2g_on = getelementptr inbounds %struct.b43_phy_n, ptr %15, i32 0, i32 47
  %16 = ptrtoint ptr %ipa2g_on to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ipa2g_on, align 2, !range !220
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not = icmp ne i8 %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp7 = icmp eq i32 %7, 0
  %or.cond = select i1 %tobool.not, i1 %cmp7, i1 false
  br i1 %or.cond, label %if.end.if.then16_crit_edge, label %lor.lhs.false

if.end.if.then16_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then16

lor.lhs.false:                                    ; preds = %if.end
  %ipa5g_on = getelementptr inbounds %struct.b43_phy_n, ptr %15, i32 0, i32 50
  %18 = ptrtoint ptr %ipa5g_on to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ipa5g_on, align 4, !range !220
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool11.not = icmp ne i8 %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp14 = icmp eq i32 %7, 1
  %or.cond59 = select i1 %tobool11.not, i1 %cmp14, i1 false
  br i1 %or.cond59, label %lor.lhs.false.if.then16_crit_edge, label %if.else

lor.lhs.false.if.then16_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then16

if.then16:                                        ; preds = %lor.lhs.false.if.then16_crit_edge, %if.end.if.then16_crit_edge
  br i1 %cmp7, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then16
  %20 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.19)
  switch i8 %13, label %if.then.i.sw.epilog.i_crit_edge [
    i8 17, label %sw.bb.i
    i8 16, label %sw.bb6.i
    i8 8, label %sw.bb13.i
    i8 6, label %sw.bb20.i
    i8 5, label %if.then.i.cleanup_crit_edge
    i8 4, label %if.then.i.sw.bb28.i_crit_edge
    i8 3, label %if.then.i.sw.bb28.i_crit_edge62
  ]

if.then.i.sw.bb28.i_crit_edge62:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb28.i

if.then.i.sw.bb28.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb28.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then.i.sw.epilog.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.then.i
  %radio_rev.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 12
  %21 = ptrtoint ptr %radio_rev.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %radio_rev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %22)
  %cmp3.i = icmp eq i8 %22, 14
  br i1 %cmp3.i, label %sw.bb.i.cleanup_crit_edge, label %sw.bb.i.sw.epilog.i_crit_edge

sw.bb.i.sw.epilog.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog.i

sw.bb.i.cleanup_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

sw.bb6.i:                                         ; preds = %if.then.i
  %radio_rev7.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 12
  %23 = ptrtoint ptr %radio_rev7.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %radio_rev7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %24)
  %cmp9.i = icmp eq i8 %24, 9
  br i1 %cmp9.i, label %sw.bb6.i.cleanup_crit_edge, label %sw.bb6.i.sw.epilog.i_crit_edge

sw.bb6.i.sw.epilog.i_crit_edge:                   ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog.i

sw.bb6.i.cleanup_crit_edge:                       ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

sw.bb13.i:                                        ; preds = %if.then.i
  %radio_rev14.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 12
  %25 = ptrtoint ptr %radio_rev14.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %radio_rev14.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %26)
  %cmp16.i = icmp eq i8 %26, 5
  br i1 %cmp16.i, label %sw.bb13.i.cleanup_crit_edge, label %sw.bb13.i.sw.epilog.i_crit_edge

sw.bb13.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb13.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog.i

sw.bb13.i.cleanup_crit_edge:                      ; preds = %sw.bb13.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

sw.bb20.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #4
  %chip_id.i = getelementptr inbounds %struct.b43_bus_dev, ptr %9, i32 0, i32 20
  %27 = ptrtoint ptr %chip_id.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %chip_id.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -18374, i16 %28)
  %cmp23.i = icmp eq i16 %28, -18374
  %b43_ntab_tx_gain_ipa_rev5_2g.b43_ntab_tx_gain_ipa_rev6_2g.i = select i1 %cmp23.i, ptr @b43_ntab_tx_gain_ipa_rev5_2g, ptr @b43_ntab_tx_gain_ipa_rev6_2g
  br label %cleanup

sw.bb28.i:                                        ; preds = %if.then.i.sw.bb28.i_crit_edge, %if.then.i.sw.bb28.i_crit_edge62
  br label %cleanup

sw.epilog.i:                                      ; preds = %sw.bb13.i.sw.epilog.i_crit_edge, %sw.bb6.i.sw.epilog.i_crit_edge, %sw.bb.i.sw.epilog.i_crit_edge, %if.then.i.sw.epilog.i_crit_edge
  tail call void (ptr, ptr, ...) @b43err(ptr noundef %1, ptr noundef nonnull @.str.14) #2
  br label %cleanup

if.else.i:                                        ; preds = %if.then16
  %29 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.20)
  switch i8 %13, label %if.else.i.sw.epilog40.i_crit_edge [
    i8 16, label %sw.bb32.i
    i8 3, label %if.else.i.cleanup_crit_edge
    i8 4, label %if.else.i.cleanup_crit_edge63
    i8 5, label %if.else.i.cleanup_crit_edge64
    i8 6, label %if.else.i.cleanup_crit_edge65
  ]

if.else.i.cleanup_crit_edge65:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.else.i.cleanup_crit_edge64:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.else.i.cleanup_crit_edge63:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.else.i.sw.epilog40.i_crit_edge:                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog40.i

sw.bb32.i:                                        ; preds = %if.else.i
  %radio_rev33.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 12
  %30 = ptrtoint ptr %radio_rev33.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %radio_rev33.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %31)
  %cmp35.i = icmp eq i8 %31, 9
  br i1 %cmp35.i, label %sw.bb32.i.cleanup_crit_edge, label %sw.bb32.i.sw.epilog40.i_crit_edge

sw.bb32.i.sw.epilog40.i_crit_edge:                ; preds = %sw.bb32.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog40.i

sw.bb32.i.cleanup_crit_edge:                      ; preds = %sw.bb32.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

sw.epilog40.i:                                    ; preds = %sw.bb32.i.sw.epilog40.i_crit_edge, %if.else.i.sw.epilog40.i_crit_edge
  tail call void (ptr, ptr, ...) @b43err(ptr noundef %1, ptr noundef nonnull @.str.15) #2
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false
  br i1 %cmp14, label %if.then22, label %if.else31

if.then22:                                        ; preds = %if.else
  %32 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.21)
  switch i8 %13, label %sw.default [
    i8 6, label %if.then22.cleanup_crit_edge
    i8 5, label %if.then22.cleanup_crit_edge66
    i8 4, label %sw.bb25
    i8 3, label %sw.bb29
  ]

if.then22.cleanup_crit_edge66:                    ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

sw.bb25:                                          ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #4
  %extpa_gain = getelementptr inbounds %struct.ssb_sprom, ptr %11, i32 0, i32 76, i32 1, i32 1
  %33 = ptrtoint ptr %extpa_gain to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %extpa_gain, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %34)
  %cmp27 = icmp eq i8 %34, 3
  %cond = select i1 %cmp27, ptr @b43_ntab_tx_gain_epa_rev4_5g, ptr @b43_ntab_tx_gain_epa_rev4_hi_pwr_5g
  br label %cleanup

sw.bb29:                                          ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

sw.default:                                       ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, ptr, ...) @b43err(ptr noundef %1, ptr noundef nonnull @.str.1) #2
  br label %cleanup

if.else31:                                        ; preds = %if.else
  %35 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.22)
  switch i8 %13, label %sw.default43 [
    i8 6, label %if.else31.sw.bb34_crit_edge
    i8 5, label %if.else31.sw.bb34_crit_edge67
    i8 4, label %if.else31.sw.bb42_crit_edge
    i8 3, label %if.else31.sw.bb42_crit_edge68
  ]

if.else31.sw.bb42_crit_edge68:                    ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb42

if.else31.sw.bb42_crit_edge:                      ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb42

if.else31.sw.bb34_crit_edge67:                    ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb34

if.else31.sw.bb34_crit_edge:                      ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb34

sw.bb34:                                          ; preds = %if.else31.sw.bb34_crit_edge, %if.else31.sw.bb34_crit_edge67
  %extpa_gain36 = getelementptr inbounds %struct.ssb_sprom, ptr %11, i32 0, i32 76, i32 0, i32 1
  %36 = ptrtoint ptr %extpa_gain36 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %extpa_gain36, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %37)
  %cmp38 = icmp eq i8 %37, 3
  br i1 %cmp38, label %sw.bb34.cleanup_crit_edge, label %sw.bb34.sw.bb42_crit_edge

sw.bb34.sw.bb42_crit_edge:                        ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb42

sw.bb34.cleanup_crit_edge:                        ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

sw.bb42:                                          ; preds = %sw.bb34.sw.bb42_crit_edge, %if.else31.sw.bb42_crit_edge, %if.else31.sw.bb42_crit_edge68
  br label %cleanup

sw.default43:                                     ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, ptr, ...) @b43err(ptr noundef %1, ptr noundef nonnull @.str.2) #2
  br label %cleanup

cleanup:                                          ; preds = %sw.default43, %sw.bb42, %sw.bb34.cleanup_crit_edge, %sw.default, %sw.bb29, %sw.bb25, %if.then22.cleanup_crit_edge, %if.then22.cleanup_crit_edge66, %sw.epilog40.i, %sw.bb32.i.cleanup_crit_edge, %if.else.i.cleanup_crit_edge, %if.else.i.cleanup_crit_edge63, %if.else.i.cleanup_crit_edge64, %if.else.i.cleanup_crit_edge65, %sw.epilog.i, %sw.bb28.i, %sw.bb20.i, %sw.bb13.i.cleanup_crit_edge, %sw.bb6.i.cleanup_crit_edge, %sw.bb.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %sw.default ], [ @b43_ntab_tx_gain_epa_rev3_5g, %sw.bb29 ], [ %cond, %sw.bb25 ], [ null, %sw.default43 ], [ @b43_ntab_tx_gain_epa_rev3_2g, %sw.bb42 ], [ @b43_ntab_tx_gain_rev0_1_2, %entry.cleanup_crit_edge ], [ @b43_ntab_tx_gain_epa_rev5_5g, %if.then22.cleanup_crit_edge ], [ @b43_ntab_tx_gain_epa_rev5_5g, %if.then22.cleanup_crit_edge66 ], [ @b43_ntab_tx_gain_epa_rev3_hi_pwr_2g, %sw.bb34.cleanup_crit_edge ], [ null, %sw.epilog.i ], [ @b43_ntab_tx_gain_ipa_rev3_2g, %sw.bb28.i ], [ null, %sw.epilog40.i ], [ @b43_ntab_tx_gain_ipa_2057_rev14_2g, %sw.bb.i.cleanup_crit_edge ], [ @b43_ntab_tx_gain_ipa_2057_rev9_2g, %sw.bb6.i.cleanup_crit_edge ], [ @b43_ntab_tx_gain_ipa_2057_rev5_2g, %sw.bb13.i.cleanup_crit_edge ], [ %b43_ntab_tx_gain_ipa_rev5_2g.b43_ntab_tx_gain_ipa_rev6_2g.i, %sw.bb20.i ], [ @b43_ntab_tx_gain_ipa_rev5_2g, %if.then.i.cleanup_crit_edge ], [ @b43_ntab_tx_gain_ipa_2057_rev9_5g, %sw.bb32.i.cleanup_crit_edge ], [ @b43_ntab_tx_gain_ipa_rev3_5g, %if.else.i.cleanup_crit_edge ], [ @b43_ntab_tx_gain_ipa_rev3_5g, %if.else.i.cleanup_crit_edge63 ], [ @b43_ntab_tx_gain_ipa_rev3_5g, %if.else.i.cleanup_crit_edge64 ], [ @b43_ntab_tx_gain_ipa_rev3_5g, %if.else.i.cleanup_crit_edge65 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @b43_ntab_get_rf_pwr_offset_table(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %wl = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wl, align 4
  %hw.i = getelementptr inbounds %struct.b43_wl, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw.i, align 4
  %chandef.i = getelementptr inbounds %struct.ieee80211_conf, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %chandef.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chandef.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  %rev = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 8
  %8 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %rev, align 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.23)
  switch i8 %9, label %if.then.cleanup.sink.split_crit_edge [
    i8 17, label %sw.bb
    i8 16, label %sw.bb6
  ]

if.then.cleanup.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup.sink.split

sw.bb:                                            ; preds = %if.then
  %radio_rev = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 12
  %11 = ptrtoint ptr %radio_rev to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %radio_rev, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %12)
  %cmp3 = icmp eq i8 %12, 14
  br i1 %cmp3, label %sw.bb.cleanup_crit_edge, label %sw.bb.cleanup.sink.split_crit_edge

sw.bb.cleanup.sink.split_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup.sink.split

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

sw.bb6:                                           ; preds = %if.then
  %radio_rev7 = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 12
  %13 = ptrtoint ptr %radio_rev7 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %radio_rev7, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %14)
  %cmp9 = icmp eq i8 %14, 9
  br i1 %cmp9, label %sw.bb6.cleanup_crit_edge, label %sw.bb6.cleanup.sink.split_crit_edge

sw.bb6.cleanup.sink.split_crit_edge:              ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup.sink.split

sw.bb6.cleanup_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %9)
  %cond = icmp eq i8 %9, 16
  br i1 %cond, label %sw.bb16, label %if.else.cleanup.sink.split_crit_edge

if.else.cleanup.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup.sink.split

sw.bb16:                                          ; preds = %if.else
  %radio_rev17 = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 12
  %15 = ptrtoint ptr %radio_rev17 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %radio_rev17, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %16)
  %cmp19 = icmp eq i8 %16, 9
  br i1 %cmp19, label %sw.bb16.cleanup_crit_edge, label %sw.bb16.cleanup.sink.split_crit_edge

sw.bb16.cleanup.sink.split_crit_edge:             ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup.sink.split

sw.bb16.cleanup_crit_edge:                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

cleanup.sink.split:                               ; preds = %sw.bb16.cleanup.sink.split_crit_edge, %if.else.cleanup.sink.split_crit_edge, %sw.bb6.cleanup.sink.split_crit_edge, %sw.bb.cleanup.sink.split_crit_edge, %if.then.cleanup.sink.split_crit_edge
  %.str.4.sink = phi ptr [ @.str.3, %sw.bb6.cleanup.sink.split_crit_edge ], [ @.str.3, %sw.bb.cleanup.sink.split_crit_edge ], [ @.str.3, %if.then.cleanup.sink.split_crit_edge ], [ @.str.4, %sw.bb16.cleanup.sink.split_crit_edge ], [ @.str.4, %if.else.cleanup.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @b43err(ptr noundef %1, ptr noundef nonnull %.str.4.sink) #2
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.bb16.cleanup_crit_edge, %sw.bb6.cleanup_crit_edge, %sw.bb.cleanup_crit_edge
  %retval.0 = phi ptr [ @b43_ntab_rf_pwr_offset_2057_rev14_2g, %sw.bb.cleanup_crit_edge ], [ @b43_ntab_rf_pwr_offset_2057_rev9_2g, %sw.bb6.cleanup_crit_edge ], [ @b43_ntab_rf_pwr_offset_2057_rev9_5g, %sw.bb16.cleanup_crit_edge ], [ null, %cleanup.sink.split ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local nonnull ptr @b43_nphy_get_gain_ctl_workaround_ent(ptr noundef %dev, i1 noundef zeroext %ghz5, i1 noundef zeroext %ext_lna) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %ghz5, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %rev = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 8
  %0 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %1)
  %cmp = icmp ugt i8 %1, 5
  br i1 %cmp, label %land.lhs.true5, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  %radio_rev = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 12
  %2 = ptrtoint ptr %radio_rev to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %radio_rev, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %3)
  %cmp8 = icmp eq i8 %3, 11
  br i1 %cmp8, label %land.lhs.true5.cleanup_crit_edge, label %land.lhs.true5.if.end_crit_edge

land.lhs.true5.if.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

land.lhs.true5.cleanup_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true5.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %rev11 = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 8
  %4 = ptrtoint ptr %rev11 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %rev11, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %5)
  %cmp13 = icmp ult i8 %5, 3
  br i1 %cmp13, label %do.end, label %if.end.if.end29_crit_edge, !prof !221

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end29

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3775, i32 noundef 9, ptr noundef null) #2
  %6 = ptrtoint ptr %rev11 to i32
  call void @__asan_load1_noabort(i32 %6)
  %.pr = load i8, ptr %rev11, align 2
  br label %if.end29

if.end29:                                         ; preds = %do.end, %if.end.if.end29_crit_edge
  %7 = phi i8 [ %.pr, %do.end ], [ %5, %if.end.if.end29_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %7)
  %cmp39 = icmp ugt i8 %7, 5
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %7)
  %switch.selectcmp = icmp eq i8 %7, 4
  %switch.select = zext i1 %switch.selectcmp to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %7)
  %switch.selectcmp234 = icmp eq i8 %7, 5
  %switch.select235 = select i1 %switch.selectcmp234, i32 2, i32 %switch.select
  %phy_idx.0 = select i1 %cmp39, i32 3, i32 %switch.select235
  %idxprom = zext i1 %ghz5 to i32
  %arrayidx61 = getelementptr [2 x [4 x %struct.nphy_gain_ctl_workaround_entry]], ptr @nphy_gain_ctl_workaround, i32 0, i32 %idxprom, i32 %phy_idx.0
  br i1 %ghz5, label %if.else121, label %if.then63

if.then63:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %7)
  %8 = icmp ugt i8 %7, 4
  br i1 %8, label %if.end90.sink.split, label %if.then63.if.end90_crit_edge

if.then63.if.end90_crit_edge:                     ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end90

if.end90.sink.split:                              ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #4
  %b43_nphy_get_gain_ctl_workaround_ent.gain_data.mux = select i1 %cmp39, ptr @b43_nphy_get_gain_ctl_workaround_ent.gain_data, ptr @b43_nphy_get_gain_ctl_workaround_ent.gain_data.5
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %bus_sprom = getelementptr inbounds %struct.b43_bus_dev, ptr %10, i32 0, i32 23
  %11 = ptrtoint ptr %bus_sprom to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bus_sprom, align 4
  %tr_iso65 = getelementptr inbounds %struct.ssb_sprom, ptr %12, i32 0, i32 76, i32 0, i32 3
  %13 = ptrtoint ptr %tr_iso65 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %tr_iso65, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %14)
  %cmp67 = icmp ugt i8 %14, 7
  %spec.store.select = select i1 %cmp67, i8 3, i8 %14
  %idxprom85 = zext i8 %spec.store.select to i32
  %arrayidx86 = getelementptr [8 x i32], ptr %b43_nphy_get_gain_ctl_workaround_ent.gain_data.mux, i32 0, i32 %idxprom85
  %15 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx86, align 4
  %conv87 = trunc i32 %16 to i16
  %cliplo_gain88 = getelementptr [2 x [4 x %struct.nphy_gain_ctl_workaround_entry]], ptr @nphy_gain_ctl_workaround, i32 0, i32 %idxprom, i32 %phy_idx.0, i32 8
  %17 = ptrtoint ptr %cliplo_gain88 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv87, ptr %cliplo_gain88, align 2
  br label %if.end90

if.end90:                                         ; preds = %if.end90.sink.split, %if.then63.if.end90_crit_edge
  %18 = ptrtoint ptr %rev11 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %rev11, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %19)
  %cmp93 = icmp ugt i8 %19, 4
  %20 = and i1 %cmp93, %ext_lna
  br i1 %20, label %if.then98, label %if.end90.cleanup_crit_edge

if.end90.cleanup_crit_edge:                       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then98:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #4
  %rfseq_init = getelementptr [2 x [4 x %struct.nphy_gain_ctl_workaround_entry]], ptr @nphy_gain_ctl_workaround, i32 0, i32 %idxprom, i32 %phy_idx.0, i32 5
  %21 = ptrtoint ptr %rfseq_init to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %rfseq_init, align 2
  %23 = and i16 %22, -16385
  store i16 %23, ptr %rfseq_init, align 2
  %arrayidx103 = getelementptr [2 x [4 x %struct.nphy_gain_ctl_workaround_entry]], ptr @nphy_gain_ctl_workaround, i32 0, i32 %idxprom, i32 %phy_idx.0, i32 5, i32 1
  %24 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx103, align 2
  %26 = and i16 %25, -16385
  store i16 %26, ptr %arrayidx103, align 2
  %arrayidx108 = getelementptr [2 x [4 x %struct.nphy_gain_ctl_workaround_entry]], ptr @nphy_gain_ctl_workaround, i32 0, i32 %idxprom, i32 %phy_idx.0, i32 5, i32 2
  %27 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %arrayidx108, align 2
  %29 = and i16 %28, -16385
  store i16 %29, ptr %arrayidx108, align 2
  %arrayidx113 = getelementptr [2 x [4 x %struct.nphy_gain_ctl_workaround_entry]], ptr @nphy_gain_ctl_workaround, i32 0, i32 %idxprom, i32 %phy_idx.0, i32 5, i32 3
  %30 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %arrayidx113, align 2
  %32 = and i16 %31, -16385
  store i16 %32, ptr %arrayidx113, align 2
  %init_gain = getelementptr [2 x [4 x %struct.nphy_gain_ctl_workaround_entry]], ptr @nphy_gain_ctl_workaround, i32 0, i32 %idxprom, i32 %phy_idx.0, i32 4
  %33 = ptrtoint ptr %init_gain to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %init_gain, align 2
  %35 = and i16 %34, -16385
  store i16 %35, ptr %init_gain, align 2
  br label %cleanup

if.else121:                                       ; preds = %if.end29
  br i1 %cmp39, label %if.then126, label %if.else134

if.then126:                                       ; preds = %if.else121
  %radio_rev127 = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 12
  %36 = ptrtoint ptr %radio_rev127 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %radio_rev127, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %37)
  %cmp129 = icmp eq i8 %37, 11
  br i1 %cmp129, label %land.lhs.true131, label %if.then126.cleanup_crit_edge

if.then126.cleanup_crit_edge:                     ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

land.lhs.true131:                                 ; preds = %if.then126
  %call = tail call zeroext i1 @b43_is_40mhz(ptr noundef %dev) #2
  br i1 %call, label %land.lhs.true131.cleanup_crit_edge, label %if.then132

land.lhs.true131.cleanup_crit_edge:               ; preds = %land.lhs.true131
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then132:                                       ; preds = %land.lhs.true131
  call void @__sanitizer_cov_trace_pc() #4
  %crsminu = getelementptr [2 x [4 x %struct.nphy_gain_ctl_workaround_entry]], ptr @nphy_gain_ctl_workaround, i32 0, i32 %idxprom, i32 %phy_idx.0, i32 11
  %38 = ptrtoint ptr %crsminu to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 45, ptr %crsminu, align 2
  br label %cleanup

if.else134:                                       ; preds = %if.else121
  %brmerge233.demorgan = and i1 %switch.selectcmp, %ext_lna
  br i1 %brmerge233.demorgan, label %if.then142, label %if.else134.cleanup_crit_edge

if.else134.cleanup_crit_edge:                     ; preds = %if.else134
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then142:                                       ; preds = %if.else134
  call void @__sanitizer_cov_trace_pc() #4
  %rfseq_init143 = getelementptr [2 x [4 x %struct.nphy_gain_ctl_workaround_entry]], ptr @nphy_gain_ctl_workaround, i32 0, i32 %idxprom, i32 %phy_idx.0, i32 5
  %39 = ptrtoint ptr %rfseq_init143 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %rfseq_init143, align 2
  %41 = and i16 %40, -20481
  %arrayidx149 = getelementptr [2 x [4 x %struct.nphy_gain_ctl_workaround_entry]], ptr @nphy_gain_ctl_workaround, i32 0, i32 %idxprom, i32 %phy_idx.0, i32 5, i32 1
  %42 = ptrtoint ptr %arrayidx149 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %arrayidx149, align 2
  %44 = and i16 %43, -20481
  %arrayidx154 = getelementptr [2 x [4 x %struct.nphy_gain_ctl_workaround_entry]], ptr @nphy_gain_ctl_workaround, i32 0, i32 %idxprom, i32 %phy_idx.0, i32 5, i32 2
  %45 = ptrtoint ptr %arrayidx154 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %arrayidx154, align 2
  %47 = and i16 %46, -20481
  %arrayidx159 = getelementptr [2 x [4 x %struct.nphy_gain_ctl_workaround_entry]], ptr @nphy_gain_ctl_workaround, i32 0, i32 %idxprom, i32 %phy_idx.0, i32 5, i32 3
  %48 = ptrtoint ptr %arrayidx159 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %arrayidx159, align 2
  %50 = and i16 %49, -20481
  %init_gain163 = getelementptr [2 x [4 x %struct.nphy_gain_ctl_workaround_entry]], ptr @nphy_gain_ctl_workaround, i32 0, i32 %idxprom, i32 %phy_idx.0, i32 4
  %51 = ptrtoint ptr %init_gain163 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %init_gain163, align 2
  %53 = and i16 %52, -20481
  %54 = or i16 %41, 4096
  store i16 %54, ptr %rfseq_init143, align 2
  %55 = or i16 %44, 4096
  store i16 %55, ptr %arrayidx149, align 2
  %56 = or i16 %47, 4096
  store i16 %56, ptr %arrayidx154, align 2
  %57 = or i16 %50, 4096
  store i16 %57, ptr %arrayidx159, align 2
  %58 = or i16 %53, 4096
  store i16 %58, ptr %init_gain163, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then142, %if.else134.cleanup_crit_edge, %if.then132, %land.lhs.true131.cleanup_crit_edge, %if.then126.cleanup_crit_edge, %if.then98, %if.end90.cleanup_crit_edge, %land.lhs.true5.cleanup_crit_edge
  %retval.0 = phi ptr [ @nphy_gain_ctl_wa_phy6_radio11_ghz2, %land.lhs.true5.cleanup_crit_edge ], [ %arrayidx61, %if.else134.cleanup_crit_edge ], [ %arrayidx61, %if.then98 ], [ %arrayidx61, %if.end90.cleanup_crit_edge ], [ %arrayidx61, %if.then132 ], [ %arrayidx61, %land.lhs.true131.cleanup_crit_edge ], [ %arrayidx61, %if.then126.cleanup_crit_edge ], [ %arrayidx61, %if.then142 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @b43_is_40mhz(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @b43_nphy_get_rf_ctl_over_rev7(ptr nocapture noundef readonly %dev, i16 noundef zeroext %field, i8 noundef zeroext %override) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %override)
  %0 = icmp ult i8 %override, 3
  br i1 %0, label %switch.lookup, label %sw.default

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %conv = zext i8 %override to i32
  %wl = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 1
  %1 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %wl, align 4
  tail call void (ptr, ptr, ...) @b43err(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef %conv) #2
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  %3 = sext i8 %override to i32
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.b43_nphy_get_rf_ctl_over_rev7, i32 0, i32 %3
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %switch.cast = zext i8 %override to i24
  %switch.shiftamt = shl nuw nsw i24 %switch.cast, 3
  %switch.downshift = lshr i24 330763, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i8 %i.021, 1
  %conv4 = zext i8 %inc to i32
  %cmp = icmp ult i8 %inc, %switch.masked
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %switch.lookup
  %conv422 = phi i32 [ 0, %switch.lookup ], [ %conv4, %for.cond.for.body_crit_edge ]
  %i.021 = phi i8 [ 0, %switch.lookup ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.nphy_rf_control_override_rev7, ptr %switch.load, i32 %conv422
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %6, i16 %field)
  %cmp10 = icmp eq i16 %6, %field
  br i1 %cmp10, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %sw.default
  %retval.0 = phi ptr [ null, %sw.default ], [ null, %for.cond.cleanup_crit_edge ], [ %arrayidx, %for.body.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @b43_nphy_tables_init_shared_lut(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext 26624) #2
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %data.0169.i = phi ptr [ @b43_ntab_estimatepowerlt0_r3, %entry ], [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ]
  %i.0167.i = phi i32 [ 0, %entry ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %0 = ptrtoint ptr %data.0169.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data.0169.i, align 1
  %incdec.ptr.i = getelementptr i8, ptr %data.0169.i, i32 1
  %conv69.i = zext i8 %1 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext %conv69.i) #2
  %inc.i = add nuw nsw i32 %i.0167.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not.i, label %b43_ntab_write_bulk.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i

b43_ntab_write_bulk.exit:                         ; preds = %for.body.i
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext 27648) #2
  br label %for.body.i30

for.body.i30:                                     ; preds = %for.body.i30.for.body.i30_crit_edge, %b43_ntab_write_bulk.exit
  %data.0169.i28 = phi ptr [ @b43_ntab_estimatepowerlt1_r3, %b43_ntab_write_bulk.exit ], [ %incdec.ptr.i31, %for.body.i30.for.body.i30_crit_edge ]
  %i.0167.i29 = phi i32 [ 0, %b43_ntab_write_bulk.exit ], [ %inc.i33, %for.body.i30.for.body.i30_crit_edge ]
  %2 = ptrtoint ptr %data.0169.i28 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %data.0169.i28, align 1
  %incdec.ptr.i31 = getelementptr i8, ptr %data.0169.i28, i32 1
  %conv69.i32 = zext i8 %3 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext %conv69.i32) #2
  %inc.i33 = add nuw nsw i32 %i.0167.i29, 1
  %exitcond.not.i34 = icmp eq i32 %inc.i33, 64
  br i1 %exitcond.not.i34, label %b43_ntab_write_bulk.exit35, label %for.body.i30.for.body.i30_crit_edge

for.body.i30.for.body.i30_crit_edge:              ; preds = %for.body.i30
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i30

b43_ntab_write_bulk.exit35:                       ; preds = %for.body.i30
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext 26688) #2
  br label %for.body.i38

for.body.i38:                                     ; preds = %for.body.i38.for.body.i38_crit_edge, %b43_ntab_write_bulk.exit35
  %data.0169.i36 = phi ptr [ @b43_ntab_adjustpower0_r3, %b43_ntab_write_bulk.exit35 ], [ %incdec.ptr.i39, %for.body.i38.for.body.i38_crit_edge ]
  %i.0167.i37 = phi i32 [ 0, %b43_ntab_write_bulk.exit35 ], [ %inc.i41, %for.body.i38.for.body.i38_crit_edge ]
  %4 = ptrtoint ptr %data.0169.i36 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %data.0169.i36, align 1
  %incdec.ptr.i39 = getelementptr i8, ptr %data.0169.i36, i32 1
  %conv69.i40 = zext i8 %5 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext %conv69.i40) #2
  %inc.i41 = add nuw nsw i32 %i.0167.i37, 1
  %exitcond.not.i42 = icmp eq i32 %inc.i41, 128
  br i1 %exitcond.not.i42, label %b43_ntab_write_bulk.exit43, label %for.body.i38.for.body.i38_crit_edge

for.body.i38.for.body.i38_crit_edge:              ; preds = %for.body.i38
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i38

b43_ntab_write_bulk.exit43:                       ; preds = %for.body.i38
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext 27712) #2
  br label %for.body.i46

for.body.i46:                                     ; preds = %for.body.i46.for.body.i46_crit_edge, %b43_ntab_write_bulk.exit43
  %data.0169.i44 = phi ptr [ @b43_ntab_adjustpower1_r3, %b43_ntab_write_bulk.exit43 ], [ %incdec.ptr.i47, %for.body.i46.for.body.i46_crit_edge ]
  %i.0167.i45 = phi i32 [ 0, %b43_ntab_write_bulk.exit43 ], [ %inc.i49, %for.body.i46.for.body.i46_crit_edge ]
  %6 = ptrtoint ptr %data.0169.i44 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %data.0169.i44, align 1
  %incdec.ptr.i47 = getelementptr i8, ptr %data.0169.i44, i32 1
  %conv69.i48 = zext i8 %7 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext %conv69.i48) #2
  %inc.i49 = add nuw nsw i32 %i.0167.i45, 1
  %exitcond.not.i50 = icmp eq i32 %inc.i49, 128
  br i1 %exitcond.not.i50, label %b43_ntab_write_bulk.exit51, label %for.body.i46.for.body.i46_crit_edge

for.body.i46.for.body.i46_crit_edge:              ; preds = %for.body.i46
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i46

b43_ntab_write_bulk.exit51:                       ; preds = %for.body.i46
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext 26816) #2
  br label %for.body.i54

for.body.i54:                                     ; preds = %for.body.i54.for.body.i54_crit_edge, %b43_ntab_write_bulk.exit51
  %data.0169.i52 = phi ptr [ @b43_ntab_gainctl0_r3, %b43_ntab_write_bulk.exit51 ], [ %add.ptr106.i, %for.body.i54.for.body.i54_crit_edge ]
  %i.0167.i53 = phi i32 [ 0, %b43_ntab_write_bulk.exit51 ], [ %inc.i55, %for.body.i54.for.body.i54_crit_edge ]
  %8 = ptrtoint ptr %data.0169.i52 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data.0169.i52, align 4
  %add.ptr106.i = getelementptr i8, ptr %data.0169.i52, i32 4
  %shr107.i = lshr i32 %9, 16
  %conv108.i = trunc i32 %shr107.i to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 116, i16 noundef zeroext %conv108.i) #2
  %conv110.i = trunc i32 %9 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext %conv110.i) #2
  %inc.i55 = add nuw nsw i32 %i.0167.i53, 1
  %exitcond.not.i56 = icmp eq i32 %inc.i55, 128
  br i1 %exitcond.not.i56, label %b43_ntab_write_bulk.exit57, label %for.body.i54.for.body.i54_crit_edge

for.body.i54.for.body.i54_crit_edge:              ; preds = %for.body.i54
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i54

b43_ntab_write_bulk.exit57:                       ; preds = %for.body.i54
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext 27840) #2
  br label %for.body.i60

for.body.i60:                                     ; preds = %for.body.i60.for.body.i60_crit_edge, %b43_ntab_write_bulk.exit57
  %data.0169.i58 = phi ptr [ @b43_ntab_gainctl1_r3, %b43_ntab_write_bulk.exit57 ], [ %add.ptr106.i61, %for.body.i60.for.body.i60_crit_edge ]
  %i.0167.i59 = phi i32 [ 0, %b43_ntab_write_bulk.exit57 ], [ %inc.i65, %for.body.i60.for.body.i60_crit_edge ]
  %10 = ptrtoint ptr %data.0169.i58 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data.0169.i58, align 4
  %add.ptr106.i61 = getelementptr i8, ptr %data.0169.i58, i32 4
  %shr107.i62 = lshr i32 %11, 16
  %conv108.i63 = trunc i32 %shr107.i62 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 116, i16 noundef zeroext %conv108.i63) #2
  %conv110.i64 = trunc i32 %11 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext %conv110.i64) #2
  %inc.i65 = add nuw nsw i32 %i.0167.i59, 1
  %exitcond.not.i66 = icmp eq i32 %inc.i65, 128
  br i1 %exitcond.not.i66, label %b43_ntab_write_bulk.exit67, label %for.body.i60.for.body.i60_crit_edge

for.body.i60.for.body.i60_crit_edge:              ; preds = %for.body.i60
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i60

b43_ntab_write_bulk.exit67:                       ; preds = %for.body.i60
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext 26944) #2
  br label %for.body.i70

for.body.i70:                                     ; preds = %for.body.i70.for.body.i70_crit_edge, %b43_ntab_write_bulk.exit67
  %data.0169.i68 = phi ptr [ @b43_ntab_iqlt0_r3, %b43_ntab_write_bulk.exit67 ], [ %add.ptr106.i71, %for.body.i70.for.body.i70_crit_edge ]
  %i.0167.i69 = phi i32 [ 0, %b43_ntab_write_bulk.exit67 ], [ %inc.i75, %for.body.i70.for.body.i70_crit_edge ]
  %12 = ptrtoint ptr %data.0169.i68 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data.0169.i68, align 4
  %add.ptr106.i71 = getelementptr i8, ptr %data.0169.i68, i32 4
  %shr107.i72 = lshr i32 %13, 16
  %conv108.i73 = trunc i32 %shr107.i72 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 116, i16 noundef zeroext %conv108.i73) #2
  %conv110.i74 = trunc i32 %13 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext %conv110.i74) #2
  %inc.i75 = add nuw nsw i32 %i.0167.i69, 1
  %exitcond.not.i76 = icmp eq i32 %inc.i75, 128
  br i1 %exitcond.not.i76, label %b43_ntab_write_bulk.exit77, label %for.body.i70.for.body.i70_crit_edge

for.body.i70.for.body.i70_crit_edge:              ; preds = %for.body.i70
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i70

b43_ntab_write_bulk.exit77:                       ; preds = %for.body.i70
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext 27968) #2
  br label %for.body.i80

for.body.i80:                                     ; preds = %for.body.i80.for.body.i80_crit_edge, %b43_ntab_write_bulk.exit77
  %data.0169.i78 = phi ptr [ @b43_ntab_iqlt1_r3, %b43_ntab_write_bulk.exit77 ], [ %add.ptr106.i81, %for.body.i80.for.body.i80_crit_edge ]
  %i.0167.i79 = phi i32 [ 0, %b43_ntab_write_bulk.exit77 ], [ %inc.i85, %for.body.i80.for.body.i80_crit_edge ]
  %14 = ptrtoint ptr %data.0169.i78 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data.0169.i78, align 4
  %add.ptr106.i81 = getelementptr i8, ptr %data.0169.i78, i32 4
  %shr107.i82 = lshr i32 %15, 16
  %conv108.i83 = trunc i32 %shr107.i82 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 116, i16 noundef zeroext %conv108.i83) #2
  %conv110.i84 = trunc i32 %15 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext %conv110.i84) #2
  %inc.i85 = add nuw nsw i32 %i.0167.i79, 1
  %exitcond.not.i86 = icmp eq i32 %inc.i85, 128
  br i1 %exitcond.not.i86, label %b43_ntab_write_bulk.exit87, label %for.body.i80.for.body.i80_crit_edge

for.body.i80.for.body.i80_crit_edge:              ; preds = %for.body.i80
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i80

b43_ntab_write_bulk.exit87:                       ; preds = %for.body.i80
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext 27072) #2
  br label %for.body.i90

for.body.i90:                                     ; preds = %for.body.i90.for.body.i90_crit_edge, %b43_ntab_write_bulk.exit87
  %data.0169.i88 = phi ptr [ @b43_ntab_loftlt0_r3, %b43_ntab_write_bulk.exit87 ], [ %add.ptr.i, %for.body.i90.for.body.i90_crit_edge ]
  %i.0167.i89 = phi i32 [ 0, %b43_ntab_write_bulk.exit87 ], [ %inc.i91, %for.body.i90.for.body.i90_crit_edge ]
  %16 = ptrtoint ptr %data.0169.i88 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %data.0169.i88, align 2
  %add.ptr.i = getelementptr i8, ptr %data.0169.i88, i32 2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext %17) #2
  %inc.i91 = add nuw nsw i32 %i.0167.i89, 1
  %exitcond.not.i92 = icmp eq i32 %inc.i91, 128
  br i1 %exitcond.not.i92, label %b43_ntab_write_bulk.exit93, label %for.body.i90.for.body.i90_crit_edge

for.body.i90.for.body.i90_crit_edge:              ; preds = %for.body.i90
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i90

b43_ntab_write_bulk.exit93:                       ; preds = %for.body.i90
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext 28096) #2
  br label %for.body.i96

for.body.i96:                                     ; preds = %for.body.i96.for.body.i96_crit_edge, %b43_ntab_write_bulk.exit93
  %data.0169.i94 = phi ptr [ @b43_ntab_loftlt1_r3, %b43_ntab_write_bulk.exit93 ], [ %add.ptr.i97, %for.body.i96.for.body.i96_crit_edge ]
  %i.0167.i95 = phi i32 [ 0, %b43_ntab_write_bulk.exit93 ], [ %inc.i98, %for.body.i96.for.body.i96_crit_edge ]
  %18 = ptrtoint ptr %data.0169.i94 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %data.0169.i94, align 2
  %add.ptr.i97 = getelementptr i8, ptr %data.0169.i94, i32 2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext %19) #2
  %inc.i98 = add nuw nsw i32 %i.0167.i95, 1
  %exitcond.not.i99 = icmp eq i32 %inc.i98, 128
  br i1 %exitcond.not.i99, label %b43_ntab_write_bulk.exit100, label %for.body.i96.for.body.i96_crit_edge

for.body.i96.for.body.i96_crit_edge:              ; preds = %for.body.i96
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i96

b43_ntab_write_bulk.exit100:                      ; preds = %for.body.i96
  call void @__sanitizer_cov_trace_pc() #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @b43_nphy_tables_init_rev7_volatile(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %bus_sprom = getelementptr inbounds %struct.b43_bus_dev, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %bus_sprom to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus_sprom, align 4
  %wl = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 1
  %4 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wl, align 4
  %hw.i = getelementptr inbounds %struct.b43_wl, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw.i, align 4
  %chandef.i = getelementptr inbounds %struct.ieee80211_conf, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %chandef.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chandef.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp = icmp eq i32 %11, 1
  %antswlut2 = getelementptr inbounds %struct.ssb_sprom, ptr %3, i32 0, i32 76, i32 1, i32 4
  %antswlut4 = getelementptr inbounds %struct.ssb_sprom, ptr %3, i32 0, i32 76, i32 0, i32 4
  %antswlut.0.in = select i1 %cmp, ptr %antswlut2, ptr %antswlut4
  %12 = ptrtoint ptr %antswlut.0.in to i32
  call void @__asan_load1_noabort(i32 %12)
  %antswlut.0 = load i8, ptr %antswlut.0.in, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %antswlut.0)
  %cond20 = icmp eq i8 %antswlut.0, 0
  br i1 %cond20, label %for.cond7.preheader.preheader, label %sw.default

for.cond7.preheader.preheader:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @b43_ntab_write(ptr noundef %dev, i32 noundef 268444672, i32 noundef 2)
  tail call void @b43_ntab_write(ptr noundef %dev, i32 noundef 268444676, i32 noundef 18)
  tail call void @b43_ntab_write(ptr noundef %dev, i32 noundef 268444680, i32 noundef 8)
  tail call void @b43_ntab_write(ptr noundef %dev, i32 noundef 268444704, i32 noundef 2)
  tail call void @b43_ntab_write(ptr noundef %dev, i32 noundef 268444708, i32 noundef 24)
  tail call void @b43_ntab_write(ptr noundef %dev, i32 noundef 268444712, i32 noundef 2)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %conv = zext i8 %antswlut.0 to i32
  tail call void (ptr, ptr, ...) @b43err(ptr noundef %5, ptr noundef nonnull @.str.7, i32 noundef %conv) #2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %for.cond7.preheader.preheader
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 101)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 101)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208}
!llvm.module.flags = !{!210, !211, !212, !213, !214, !215, !216, !217}
!llvm.ident = !{!218}

!0 = !{ptr @b43_ntab_papd_pga_gain_delta_ipa_2g, !1, !"b43_ntab_papd_pga_gain_delta_ipa_2g", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 2863, i32 10}
!2 = !{ptr @tbl_iqcal_gainparams, !3, !"tbl_iqcal_gainparams", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 2902, i32 11}
!4 = !{ptr @ladder_lo, !5, !"ladder_lo", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 2927, i32 34}
!6 = !{ptr @ladder_iq, !7, !"ladder_iq", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 2948, i32 34}
!8 = !{ptr @loscale, !9, !"loscale", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 2969, i32 11}
!10 = !{ptr @tbl_tx_iqlo_cal_loft_ladder_40, !11, !"tbl_tx_iqlo_cal_loft_ladder_40", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 3004, i32 11}
!12 = !{ptr @tbl_tx_iqlo_cal_loft_ladder_20, !13, !"tbl_tx_iqlo_cal_loft_ladder_20", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 3012, i32 11}
!14 = !{ptr @tbl_tx_iqlo_cal_iqimb_ladder_40, !15, !"tbl_tx_iqlo_cal_iqimb_ladder_40", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 3020, i32 11}
!16 = !{ptr @tbl_tx_iqlo_cal_iqimb_ladder_20, !17, !"tbl_tx_iqlo_cal_iqimb_ladder_20", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 3028, i32 11}
!18 = !{ptr @tbl_tx_iqlo_cal_startcoefs_nphyrev3, !19, !"tbl_tx_iqlo_cal_startcoefs_nphyrev3", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 3036, i32 11}
!20 = !{ptr @tbl_tx_iqlo_cal_startcoefs, !21, !"tbl_tx_iqlo_cal_startcoefs", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 3038, i32 11}
!22 = !{ptr @tbl_tx_iqlo_cal_cmds_recal_nphyrev3, !23, !"tbl_tx_iqlo_cal_cmds_recal_nphyrev3", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 3040, i32 11}
!24 = !{ptr @tbl_tx_iqlo_cal_cmds_recal, !25, !"tbl_tx_iqlo_cal_cmds_recal", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 3046, i32 11}
!26 = !{ptr @tbl_tx_iqlo_cal_cmds_fullcal, !27, !"tbl_tx_iqlo_cal_cmds_fullcal", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 3052, i32 11}
!28 = !{ptr @tbl_tx_iqlo_cal_cmds_fullcal_nphyrev3, !29, !"tbl_tx_iqlo_cal_cmds_fullcal_nphyrev3", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 3058, i32 11}
!30 = !{ptr @tbl_tx_filter_coef_rev4, !31, !"tbl_tx_filter_coef_rev4", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 3064, i32 11}
!32 = !{ptr @tbl_rf_control_override_rev2, !33, !"tbl_rf_control_override_rev2", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 3089, i32 44}
!34 = !{ptr @tbl_rf_control_override_rev3, !35, !"tbl_rf_control_override_rev3", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 3107, i32 44}
!36 = !{ptr @.str, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 3316, i32 2}
!38 = !{ptr @.str.1, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 3711, i32 11}
!40 = !{ptr @.str.2, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 3726, i32 11}
!42 = !{ptr @.str.3, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 3749, i32 10}
!44 = !{ptr @.str.4, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 3760, i32 10}
!46 = !{ptr @b43_nphy_get_gain_ctl_workaround_ent.gain_data, !47, !"gain_data", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 3794, i32 21}
!48 = !{ptr @b43_nphy_get_gain_ctl_workaround_ent.gain_data.5, !49, !"gain_data", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 3800, i32 21}
!50 = !{ptr @.str.6, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 3855, i32 19}
!52 = !{ptr @b43_ntab_noisevar_r7, !53, !"b43_ntab_noisevar_r7", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 2255, i32 18}
!54 = !{ptr @b43_ntab_estimatepowerlt0_r3, !55, !"b43_ntab_estimatepowerlt0_r3", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 1844, i32 17}
!56 = !{ptr @b43_ntab_estimatepowerlt1_r3, !57, !"b43_ntab_estimatepowerlt1_r3", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 1855, i32 17}
!58 = !{ptr @b43_ntab_adjustpower0_r3, !59, !"b43_ntab_adjustpower0_r3", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 1866, i32 17}
!60 = !{ptr @b43_ntab_adjustpower1_r3, !61, !"b43_ntab_adjustpower1_r3", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 1885, i32 17}
!62 = !{ptr @b43_ntab_gainctl0_r3, !63, !"b43_ntab_gainctl0_r3", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 1904, i32 18}
!64 = !{ptr @b43_ntab_gainctl1_r3, !65, !"b43_ntab_gainctl1_r3", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 1939, i32 18}
!66 = !{ptr @b43_ntab_iqlt0_r3, !67, !"b43_ntab_iqlt0_r3", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 1974, i32 18}
!68 = !{ptr @b43_ntab_iqlt1_r3, !69, !"b43_ntab_iqlt1_r3", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 2009, i32 18}
!70 = !{ptr @b43_ntab_loftlt0_r3, !71, !"b43_ntab_loftlt0_r3", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 2044, i32 18}
!72 = !{ptr @b43_ntab_loftlt1_r3, !73, !"b43_ntab_loftlt1_r3", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 2069, i32 18}
!74 = !{ptr @.str.7, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 3509, i32 19}
!76 = !{ptr @b43_ntab_framestruct_r3, !77, !"b43_ntab_framestruct_r3", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 1089, i32 18}
!78 = !{ptr @b43_ntab_pilot_r3, !79, !"b43_ntab_pilot_r3", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 1300, i32 18}
!80 = !{ptr @b43_ntab_tmap_r7, !81, !"b43_ntab_tmap_r7", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 2139, i32 18}
!82 = distinct !{null, !83, !"b43_ntab_intlevel_r3", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 1433, i32 18}
!84 = !{ptr @b43_ntab_tdtrn_r3, !85, !"b43_ntab_tdtrn_r3", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 1438, i32 18}
!86 = !{ptr @b43_ntab_mcs_r3, !87, !"b43_ntab_mcs_r3", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 1684, i32 18}
!88 = !{ptr @b43_ntab_tdi20a0_r3, !89, !"b43_ntab_tdi20a0_r3", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 1709, i32 18}
!90 = !{ptr @b43_ntab_tdi20a1_r3, !91, !"b43_ntab_tdi20a1_r3", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 1726, i32 18}
!92 = !{ptr @b43_ntab_tdi40a0_r3, !93, !"b43_ntab_tdi40a0_r3", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 1743, i32 18}
!94 = !{ptr @b43_ntab_tdi40a1_r3, !95, !"b43_ntab_tdi40a1_r3", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 1774, i32 18}
!96 = distinct !{null, !97, !"b43_ntab_pilotlt_r3", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 1805, i32 18}
!98 = !{ptr @b43_ntab_channelest_r3, !99, !"b43_ntab_channelest_r3", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 1810, i32 18}
!100 = !{ptr @b43_ntab_framelookup_r3, !101, !"b43_ntab_framelookup_r3", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 1837, i32 17}
!102 = !{ptr @b43_ntab_tmap_r3, !103, !"b43_ntab_tmap_r3", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 1318, i32 18}
!104 = !{ptr @b43_ntab_noisevar_r3, !105, !"b43_ntab_noisevar_r3", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 1617, i32 18}
!106 = !{ptr @b43_ntab_antswctl_r3, !107, !"b43_ntab_antswctl_r3", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 2097, i32 18}
!108 = !{ptr @b43_ntab_framestruct, !109, !"b43_ntab_framestruct", i1 false, i1 false}
!109 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 116, i32 18}
!110 = !{ptr @b43_ntab_framelookup, !111, !"b43_ntab_framelookup", i1 false, i1 false}
!111 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 109, i32 17}
!112 = !{ptr @b43_ntab_tmap, !113, !"b43_ntab_tmap", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 973, i32 18}
!114 = !{ptr @b43_ntab_tdtrn, !115, !"b43_ntab_tdtrn", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 794, i32 18}
!116 = distinct !{null, !117, !"b43_ntab_intlevel", i1 false, i1 false}
!117 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 397, i32 18}
!118 = !{ptr @b43_ntab_pilot, !119, !"b43_ntab_pilot", i1 false, i1 false}
!119 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 675, i32 18}
!120 = !{ptr @b43_ntab_tdi20a0, !121, !"b43_ntab_tdi20a0", i1 false, i1 false}
!121 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 698, i32 18}
!122 = !{ptr @b43_ntab_tdi20a1, !123, !"b43_ntab_tdi20a1", i1 false, i1 false}
!123 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 715, i32 18}
!124 = !{ptr @b43_ntab_tdi40a0, !125, !"b43_ntab_tdi40a0", i1 false, i1 false}
!125 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 732, i32 18}
!126 = !{ptr @b43_ntab_tdi40a1, !127, !"b43_ntab_tdi40a1", i1 false, i1 false}
!127 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 763, i32 18}
!128 = !{ptr @b43_ntab_channelest, !129, !"b43_ntab_channelest", i1 false, i1 false}
!129 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 60, i32 18}
!130 = !{ptr @b43_ntab_mcs, !131, !"b43_ntab_mcs", i1 false, i1 false}
!131 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 522, i32 17}
!132 = !{ptr @b43_ntab_noisevar10, !133, !"b43_ntab_noisevar10", i1 false, i1 false}
!133 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 541, i32 18}
!134 = !{ptr @b43_ntab_noisevar11, !135, !"b43_ntab_noisevar11", i1 false, i1 false}
!135 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 608, i32 18}
!136 = distinct !{null, !137, !"b43_ntab_bdi", i1 false, i1 false}
!137 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 56, i32 18}
!138 = distinct !{null, !139, !"b43_ntab_pilotlt", i1 false, i1 false}
!139 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 693, i32 18}
!140 = !{ptr @b43_ntab_gainctl0, !141, !"b43_ntab_gainctl0", i1 false, i1 false}
!141 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 327, i32 18}
!142 = !{ptr @b43_ntab_gainctl1, !143, !"b43_ntab_gainctl1", i1 false, i1 false}
!143 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 362, i32 18}
!144 = !{ptr @b43_ntab_estimatepowerlt0, !145, !"b43_ntab_estimatepowerlt0", i1 false, i1 false}
!145 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 87, i32 17}
!146 = !{ptr @b43_ntab_estimatepowerlt1, !147, !"b43_ntab_estimatepowerlt1", i1 false, i1 false}
!147 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 98, i32 17}
!148 = !{ptr @b43_ntab_adjustpower0, !149, !"b43_ntab_adjustpower0", i1 false, i1 false}
!149 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 18, i32 17}
!150 = !{ptr @b43_ntab_adjustpower1, !151, !"b43_ntab_adjustpower1", i1 false, i1 false}
!151 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 37, i32 17}
!152 = !{ptr @b43_ntab_iqlt0, !153, !"b43_ntab_iqlt0", i1 false, i1 false}
!153 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 402, i32 18}
!154 = !{ptr @b43_ntab_iqlt1, !155, !"b43_ntab_iqlt1", i1 false, i1 false}
!155 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 437, i32 18}
!156 = !{ptr @b43_ntab_loftlt0, !157, !"b43_ntab_loftlt0", i1 false, i1 false}
!157 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 472, i32 18}
!158 = !{ptr @b43_ntab_loftlt1, !159, !"b43_ntab_loftlt1", i1 false, i1 false}
!159 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 497, i32 18}
!160 = !{ptr @b43_ntab_tx_gain_rev0_1_2, !161, !"b43_ntab_tx_gain_rev0_1_2", i1 false, i1 false}
!161 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 2326, i32 18}
!162 = !{ptr @.str.14, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 3667, i32 10}
!164 = !{ptr @.str.15, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 3680, i32 10}
!166 = !{ptr @b43_ntab_tx_gain_ipa_2057_rev14_2g, !167, !"b43_ntab_tx_gain_ipa_2057_rev14_2g", i1 false, i1 false}
!167 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 2755, i32 18}
!168 = !{ptr @b43_ntab_tx_gain_ipa_2057_rev9_2g, !169, !"b43_ntab_tx_gain_ipa_2057_rev9_2g", i1 false, i1 false}
!169 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 2719, i32 18}
!170 = !{ptr @b43_ntab_tx_gain_ipa_2057_rev5_2g, !171, !"b43_ntab_tx_gain_ipa_2057_rev5_2g", i1 false, i1 false}
!171 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 2683, i32 18}
!172 = !{ptr @b43_ntab_tx_gain_ipa_rev5_2g, !173, !"b43_ntab_tx_gain_ipa_rev5_2g", i1 false, i1 false}
!173 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 2612, i32 18}
!174 = !{ptr @b43_ntab_tx_gain_ipa_rev6_2g, !175, !"b43_ntab_tx_gain_ipa_rev6_2g", i1 false, i1 false}
!175 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 2647, i32 18}
!176 = !{ptr @b43_ntab_tx_gain_ipa_rev3_2g, !177, !"b43_ntab_tx_gain_ipa_rev3_2g", i1 false, i1 false}
!177 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 2577, i32 18}
!178 = !{ptr @b43_ntab_tx_gain_ipa_2057_rev9_5g, !179, !"b43_ntab_tx_gain_ipa_2057_rev9_5g", i1 false, i1 false}
!179 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 2828, i32 18}
!180 = !{ptr @b43_ntab_tx_gain_ipa_rev3_5g, !181, !"b43_ntab_tx_gain_ipa_rev3_5g", i1 false, i1 false}
!181 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 2792, i32 18}
!182 = !{ptr @b43_ntab_tx_gain_epa_rev5_5g, !183, !"b43_ntab_tx_gain_epa_rev5_5g", i1 false, i1 false}
!183 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 2540, i32 18}
!184 = !{ptr @b43_ntab_tx_gain_epa_rev4_5g, !185, !"b43_ntab_tx_gain_epa_rev4_5g", i1 false, i1 false}
!185 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 2470, i32 18}
!186 = !{ptr @b43_ntab_tx_gain_epa_rev4_hi_pwr_5g, !187, !"b43_ntab_tx_gain_epa_rev4_hi_pwr_5g", i1 false, i1 false}
!187 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 2505, i32 18}
!188 = !{ptr @b43_ntab_tx_gain_epa_rev3_5g, !189, !"b43_ntab_tx_gain_epa_rev3_5g", i1 false, i1 false}
!189 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 2435, i32 18}
!190 = !{ptr @b43_ntab_tx_gain_epa_rev3_hi_pwr_2g, !191, !"b43_ntab_tx_gain_epa_rev3_hi_pwr_2g", i1 false, i1 false}
!191 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 2398, i32 18}
!192 = !{ptr @b43_ntab_tx_gain_epa_rev3_2g, !193, !"b43_ntab_tx_gain_epa_rev3_2g", i1 false, i1 false}
!193 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 2363, i32 18}
!194 = !{ptr @b43_ntab_rf_pwr_offset_2057_rev14_2g, !195, !"b43_ntab_rf_pwr_offset_2057_rev14_2g", i1 false, i1 false}
!195 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 2892, i32 18}
!196 = !{ptr @b43_ntab_rf_pwr_offset_2057_rev9_2g, !197, !"b43_ntab_rf_pwr_offset_2057_rev9_2g", i1 false, i1 false}
!197 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 2871, i32 18}
!198 = !{ptr @b43_ntab_rf_pwr_offset_2057_rev9_5g, !199, !"b43_ntab_rf_pwr_offset_2057_rev9_5g", i1 false, i1 false}
!199 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 2882, i32 18}
!200 = !{ptr @nphy_gain_ctl_wa_phy6_radio11_ghz2, !201, !"nphy_gain_ctl_wa_phy6_radio11_ghz2", i1 false, i1 false}
!201 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 3168, i32 46}
!202 = !{ptr @nphy_gain_ctl_workaround, !203, !"nphy_gain_ctl_workaround", i1 false, i1 false}
!203 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 3179, i32 46}
!204 = !{ptr @tbl_rf_control_override_rev7_over0, !205, !"tbl_rf_control_override_rev7_over0", i1 false, i1 false}
!205 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 3127, i32 4}
!206 = !{ptr @tbl_rf_control_override_rev7_over1, !207, !"tbl_rf_control_override_rev7_over1", i1 false, i1 false}
!207 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 3143, i32 4}
!208 = !{ptr @tbl_rf_control_override_rev7_over2, !209, !"tbl_rf_control_override_rev7_over2", i1 false, i1 false}
!209 = !{!"../drivers/net/wireless/broadcom/b43/tables_nphy.c", i32 3160, i32 4}
!210 = !{i32 1, !"wchar_size", i32 2}
!211 = !{i32 1, !"min_enum_size", i32 4}
!212 = !{i32 8, !"branch-target-enforcement", i32 0}
!213 = !{i32 8, !"sign-return-address", i32 0}
!214 = !{i32 8, !"sign-return-address-all", i32 0}
!215 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!216 = !{i32 7, !"uwtable", i32 1}
!217 = !{i32 7, !"frame-pointer", i32 2}
!218 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!219 = !{!"branch_weights", i32 2000, i32 1}
!220 = !{i8 0, i8 2}
!221 = !{!"branch_weights", i32 1, i32 2000}
