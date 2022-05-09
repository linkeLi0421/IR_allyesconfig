; ModuleID = '/llk/IR_all_yes/net/mac80211/airtime.c_pt.bc'
source_filename = "../net/mac80211/airtime.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+ieee80211_calc_rx_airtime\22, \22a\22\09"
module asm "\09.weak\09__crc_ieee80211_calc_rx_airtime\09\09\09\09"
module asm "\09.long\09__crc_ieee80211_calc_rx_airtime\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_calc_rx_airtime:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_calc_rx_airtime\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_calc_rx_airtime:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ieee80211_calc_tx_airtime\22, \22a\22\09"
module asm "\09.weak\09__crc_ieee80211_calc_tx_airtime\09\09\09\09"
module asm "\09.long\09__crc_ieee80211_calc_tx_airtime\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_calc_tx_airtime:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_calc_tx_airtime\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_calc_tx_airtime:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mcs_group = type { i8, [12 x i16] }
%struct.ieee80211_rx_status = type <{ i64, i64, i32, i32, i32, i16, i8, i16, i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, [2 x i8] }>
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.128 = type { i32, i16 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.127, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.anon.127 = type { i64, i64, i8 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.ieee80211_tx_info = type { i32, i32, %union.anon.129 }
%union.anon.129 = type { %struct.anon.136, [32 x i8] }
%struct.anon.136 = type { i64 }
%struct.ieee80211_tx_rate = type <{ i8, i16 }>
%struct.ieee80211_vif = type { i32, %struct.ieee80211_bss_conf, [6 x i8], i8, i8, i8, i8, [4 x i8], ptr, ptr, i32, i32, ptr, i8, i8, [4 x i8], i8, i8, ptr, [0 x i8] }
%struct.ieee80211_bss_conf = type { ptr, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i16, i16, i64, i32, i8, i32, ptr, [6 x i32], i16, i32, i32, i32, i32, %struct.cfg80211_chan_def, %struct.ieee80211_mu_group_data, [4 x i32], i32, i8, i8, i8, [32 x i8], i32, i8, i32, i32, %struct.ieee80211_p2p_noa_attr, i8, i16, i8, i8, ptr, i8, [6 x i8], i8, i8, i8, i8, %struct.anon.133, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.ieee80211_fils_discovery, i32, i8, %struct.cfg80211_bitrate_mask, i32, [8 x %struct.ieee80211_tx_pwr_env], i8, i8 }
%struct.ieee80211_mu_group_data = type { [8 x i8], [16 x i8] }
%struct.ieee80211_p2p_noa_attr = type { i8, i8, [4 x %struct.ieee80211_p2p_noa_desc] }
%struct.ieee80211_p2p_noa_desc = type <{ i8, i32, i32, i32 }>
%struct.anon.133 = type { i32, i16 }
%struct.ieee80211_he_obss_pd = type { i8, i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cfg80211_he_bss_color = type { i8, i8, i8 }
%struct.ieee80211_fils_discovery = type { i32, i32 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.134] }
%struct.anon.134 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_tx_pwr_env = type { i8, [8 x i8] }
%struct.rate_info = type { i8, i8, i16, i8, i8, i8, i8, i8, i8 }

@ieee80211_calc_rx_airtime.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"net/mac80211/airtime.c\00", [41 x i8] zeroinitializer }, align 32
@__kstrtab_ieee80211_calc_rx_airtime = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_calc_rx_airtime = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_calc_rx_airtime = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_calc_rx_airtime to i32), ptr @__kstrtab_ieee80211_calc_rx_airtime, ptr @__kstrtabns_ieee80211_calc_rx_airtime }, section "___ksymtab_gpl+ieee80211_calc_rx_airtime", align 4
@__kstrtab_ieee80211_calc_tx_airtime = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_calc_tx_airtime = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_calc_tx_airtime = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_calc_tx_airtime to i32), ptr @__kstrtab_ieee80211_calc_tx_airtime, ptr @__kstrtabns_ieee80211_calc_tx_airtime }, section "___ksymtab_gpl+ieee80211_calc_tx_airtime", align 4
@ieee80211_calc_expected_tx_airtime.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@ieee80211_get_rate_duration.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ieee80211_get_rate_duration.__already_done.2 = internal unnamed_addr global i1 false, section ".data.once", align 1
@ieee80211_get_rate_duration.__already_done.3 = internal unnamed_addr global i1 false, section ".data.once", align 1
@airtime_mcs_groups = internal constant { [144 x %struct.mcs_group], [928 x i8] } { [144 x %struct.mcs_group] [%struct.mcs_group { i8 5, [12 x i16] [i16 -25207, i16 20165, i16 13443, i16 10082, i16 6721, i16 5041, i16 4481, i16 4033, i16 0, i16 0, i16 0, i16 0] }, %struct.mcs_group { i8 4, [12 x i16] [i16 -25206, i16 20165, i16 13443, i16 10082, i16 6721, i16 5041, i16 4481, i16 4033, i16 0, i16 0, i16 0, i16 0] }, %struct.mcs_group { i8 3, [12 x i16] [i16 -11763, i16 26887, i16 17924, i16 13443, i16 8962, i16 6722, i16 5975, i16 5377, i16 0, i16 0, i16 0, i16 0] }, %struct.mcs_group { i8 3, [12 x i16] [i16 -25206, i16 20165, i16 13443, i16 10082, i16 6722, i16 5041, i16 4481, i16 4033, i16 0, i16 0, i16 0, i16 0] }, %struct.mcs_group { i8 5, [12 x i16] [i16 -29240, i16 18148, i16 12099, i16 9074, i16 6049, i16 4537, i16 4033, i16 3629, i16 0, i16 0, i16 0, i16 0] }, %struct.mcs_group { i8 4, [12 x i16] [i16 -29239, i16 18148, i16 12099, i16 9074, i16 6049, i16 4537, i16 4033, i16 3629, i16 0, i16 0, i16 0, i16 0] }, %struct.mcs_group { i8 3, [12 x i16] [i16 -17140, i16 24198, i16 16132, i16 12099, i16 8066, i16 6049, i16 5377, i16 4839, i16 0, i16 0, i16 0, i16 0] }, %struct.mcs_group { i8 3, [12 x i16] [i16 -29239, i16 18148, i16 12099, i16 9074, i16 6049, i16 4537, i16 4033, i16 3629, i16 0, i16 0, i16 0, i16 0] }, %struct.mcs_group { i8 4, [12 x i16] [i16 -26700, i16 19418, i16 12945, i16 9709, i16 6472, i16 4854, i16 4315, i16 3883, i16 0, i16 0, i16 0, i16 0] }, %struct.mcs_group { i8 3, [12 x i16] [i16 -26700, i16 19418, i16 12945, i16 9709, i16 6473, i16 4855, i16 4315, i16 3884, i16 0, i16 0, i16 0, i16 0] }, %struct.mcs_group { i8 2, [12 x i16] [i16 -13754, i16 25891, i16 17261, i16 12946, i16 8631, i16 6473, i16 5754, i16 5179, i16 0, i16 0, i16 0, i16 0] }, %struct.mcs_group { i8 2, [12 x i16] [i16 -26699, i16 19419, i16 12946, i16 9710, i16 6473, i16 4855, i16 4316, i16 3884, i16 0, i16 0, i16 0, i16 0] }, %struct.mcs_group { i8 4, [12 x i16] [i16 -30584, i16 17476, i16 11650, i16 8738, i16 5825, i16 4369, i16 3883, i16 3495, i16 0, i16 0, i16 0, i16 0] }, %struct.mcs_group { i8 3, [12 x i16] [i16 -30584, i16 17476, i16 11650, i16 8738, i16 5825, i16 4369, i16 3883, i16 3495, i16 0, i16 0, i16 0, i16 0] }, %struct.mcs_group { i8 2, [12 x i16] [i16 -18933, i16 23301, i16 15534, i16 11651, i16 7767, i16 5825, i16 5178, i16 4661, i16 0, i16 0, i16 0, i16 0] }, %struct.mcs_group { i8 2, [12 x i16] [i16 -30583, i16 17477, i16 11651, i16 8739, i16 5825, i16 4369, i16 3884, i16 3495, i16 0, i16 0, i16 0, i16 0] }, %struct.mcs_group { i8 5, [12 x i16] [i16 -25207, i16 20165, i16 13443, i16 10082, i16 6721, i16 5041, i16 4481, i16 4033, i16 3360, i16 3030, i16 0, i16 0] }, %struct.mcs_group { i8 4, [12 x i16] [i16 -25206, i16 20165, i16 13443, i16 10082, i16 6721, i16 5041, i16 4481, i16 4033, i16 3361, i16 3030, i16 0, i16 0] }, %struct.mcs_group { i8 3, [12 x i16] [i16 -11763, i16 26887, i16 17924, i16 13443, i16 8962, i16 6722, i16 5975, i16 5377, i16 4481, i16 4041, i16 0, i16 0] }, %struct.mcs_group { i8 3, [12 x i16] [i16 -25206, i16 20165, i16 13443, i16 10082, i16 6722, i16 5041, i16 4481, i16 4033, i16 3361, i16 3031, i16 0, i16 0] }, %struct.mcs_group { i8 5, [12 x i16] [i16 -29240, i16 18148, i16 12099, i16 9074, i16 6049, i16 4537, i16 4033, i16 3629, i16 3024, i16 2727, i16 0, i16 0] }, %struct.mcs_group { i8 4, [12 x i16] [i16 -29239, i16 18148, i16 12099, i16 9074, i16 6049, i16 4537, i16 4033, i16 3629, i16 3024, i16 2727, i16 0, i16 0] }, %struct.mcs_group { i8 3, [12 x i16] [i16 -17140, i16 24198, i16 16132, i16 12099, i16 8066, i16 6049, i16 5377, i16 4839, i16 4033, i16 3636, i16 0, i16 0] }, %struct.mcs_group { i8 3, [12 x i16] [i16 -29239, i16 18148, i16 12099, i16 9074, i16 6049, i16 4537, i16 4033, i16 3629, i16 3024, i16 2727, i16 0, i16 0] }, %struct.mcs_group { i8 4, [12 x i16] [i16 -26700, i16 19418, i16 12945, i16 9709, i16 6472, i16 4854, i16 4315, i16 3883, i16 3236, i16 2912, i16 0, i16 0] }, %struct.mcs_group { i8 3, [12 x i16] [i16 -26700, i16 19418, i16 12945, i16 9709, i16 6473, i16 4855, i16 4315, i16 3884, i16 3236, i16 2913, i16 0, i16 0] }, %struct.mcs_group { i8 2, [12 x i16] [i16 -13754, i16 25891, i16 17261, i16 12946, i16 8631, i16 6473, i16 5754, i16 5179, i16 4316, i16 3884, i16 0, i16 0] }, %struct.mcs_group { i8 2, [12 x i16] [i16 -26699, i16 19419, i16 12946, i16 9710, i16 6473, i16 4855, i16 4316, i16 3884, i16 3237, i16 2913, i16 0, i16 0] }, %struct.mcs_group { i8 4, [12 x i16] [i16 -30584, i16 17476, i16 11650, i16 8738, i16 5825, i16 4369, i16 3883, i16 3495, i16 2912, i16 2621, i16 0, i16 0] }, %struct.mcs_group { i8 3, [12 x i16] [i16 -30584, i16 17476, i16 11650, i16 8738, i16 5825, i16 4369, i16 3883, i16 3495, i16 2912, i16 2621, i16 0, i16 0] }, %struct.mcs_group { i8 2, [12 x i16] [i16 -18933, i16 23301, i16 15534, i16 11651, i16 7767, i16 5825, i16 5178, i16 4661, i16 3884, i16 3495, i16 0, i16 0] }, %struct.mcs_group { i8 2, [12 x i16] [i16 -30583, i16 17477, i16 11651, i16 8739, i16 5825, i16 4369, i16 3884, i16 3495, i16 2913, i16 2621, i16 0, i16 0] }, %struct.mcs_group { i8 3, [12 x i16] [i16 -29687, i16 17924, i16 11950, i16 8962, i16 5975, i16 4481, i16 3983, i16 3585, i16 2987, i16 2689, i16 0, i16 0] }, %struct.mcs_group { i8 2, [12 x i16] [i16 -29687, i16 17925, i16 11950, i16 8963, i16 5975, i16 4482, i16 3984, i16 3585, i16 2988, i16 2689, i16 0, i16 0] }, %struct.mcs_group { i8 1, [12 x i16] [i16 -17736, i16 23900, i16 15934, i16 11950, i16 7968, i16 5976, i16 5312, i16 4780, i16 3984, i16 3586, i16 0, i16 0] }, %struct.mcs_group { i8 1, [12 x i16] [i16 -29686, i16 17926, i16 11950, i16 8964, i16 5976, i16 4482, i16 3984, i16 3586, i16 2988, i16 2690, i16 0, i16 0] }, %struct.mcs_group { i8 2, [12 x i16] [i16 -1008, i16 32264, i16 21510, i16 16132, i16 10755, i16 8066, i16 7170, i16 6453, i16 5377, i16 4840, i16 0, i16 0] }, %struct.mcs_group { i8 1, [12 x i16] [i16 -1008, i16 32265, i16 21510, i16 16133, i16 10755, i16 8067, i16 7171, i16 6453, i16 5378, i16 4840, i16 0, i16 0] }, %struct.mcs_group { i8 1, [12 x i16] [i16 -22516, i16 21510, i16 14340, i16 10755, i16 7171, i16 5378, i16 4780, i16 4302, i16 3585, i16 3227, i16 0, i16 0] }, %struct.mcs_group { i8 0, [12 x i16] [i16 -1006, i16 32266, i16 21510, i16 16135, i16 10756, i16 8067, i16 7171, i16 6454, i16 5378, i16 4842, i16 0, i16 0] }, %struct.mcs_group { i8 2, [12 x i16] [i16 -29687, i16 17925, i16 11950, i16 8963, i16 5975, i16 4482, i16 3984, i16 3585, i16 2988, i16 2689, i16 0, i16 0] }, %struct.mcs_group { i8 1, [12 x i16] [i16 -29686, i16 17926, i16 11950, i16 8964, i16 5976, i16 4482, i16 3984, i16 3586, i16 2988, i16 2690, i16 0, i16 0] }, %struct.mcs_group { i8 0, [12 x i16] [i16 -17736, i16 23900, i16 15936, i16 11952, i16 7968, i16 5976, i16 5312, i16 4780, i16 3984, i16 3588, i16 0, i16 0] }, %struct.mcs_group { i8 0, [12 x i16] [i16 -29684, i16 17928, i16 11952, i16 8964, i16 5976, i16 4484, i16 3984, i16 3588, i16 2988, i16 2692, i16 0, i16 0] }, %struct.mcs_group { i8 1, [12 x i16] [i16 -1008, i16 32265, i16 21510, i16 16133, i16 10755, i16 8067, i16 7171, i16 6453, i16 5378, i16 4840, i16 0, i16 0] }, %struct.mcs_group { i8 0, [12 x i16] [i16 -1006, i16 32266, i16 21510, i16 16135, i16 10756, i16 8067, i16 7171, i16 6454, i16 5378, i16 4842, i16 0, i16 0] }, %struct.mcs_group { i8 0, [12 x i16] [i16 -22516, i16 21510, i16 14342, i16 10756, i16 7171, i16 5378, i16 4780, i16 4302, i16 3585, i16 3229, i16 0, i16 0] }, %struct.mcs_group { i8 0, [12 x i16] [i16 32266, i16 16135, i16 10756, i16 8067, i16 5378, i16 4035, i16 3585, i16 3229, i16 2689, i16 2422, i16 0, i16 0] }, %struct.mcs_group { i8 4, [12 x i16] [i16 -3533, i16 31002, i16 20667, i16 15011, i16 10114, i16 7618, i16 6784, i16 6115, i16 5054, i16 4585, i16 4061, i16 3668] }, %struct.mcs_group { i8 3, [12 x i16] [i16 -3532, i16 31002, i16 20668, i16 15012, i16 10115, i16 7619, i16 6784, i16 6116, i16 5054, i16 4586, i16 4061, i16 3668] }, %struct.mcs_group { i8 3, [12 x i16] [i16 -24201, i16 20668, i16 13778, i16 10007, i16 6743, i16 5079, i16 4523, i16 4078, i16 3369, i16 3058, i16 2708, i16 2446] }, %struct.mcs_group { i8 2, [12 x i16] [i16 -3531, i16 31004, i16 20668, i16 15014, i16 10115, i16 7619, i16 6786, i16 6116, i16 5055, i16 4586, i16 4063, i16 3668] }, %struct.mcs_group { i8 2, [12 x i16] [i16 -15934, i16 24803, i16 16534, i16 12012, i16 8092, i16 6096, i16 5429, i16 4892, i16 4046, i16 3668, i16 3250, i16 2937] }, %struct.mcs_group { i8 2, [12 x i16] [i16 -24199, i16 20668, i16 13780, i16 10009, i16 6745, i16 5079, i16 4525, i16 4080, i16 3369, i16 3060, i16 2709, i16 2448] }, %struct.mcs_group { i8 2, [12 x i16] [i16 -30105, i16 17717, i16 11811, i16 8578, i16 5780, i16 4355, i16 3879, i16 3495, i16 2890, i16 2621, i16 2322, i16 2097] }, %struct.mcs_group { i8 1, [12 x i16] [i16 -3527, i16 31008, i16 20672, i16 15014, i16 10118, i16 7622, i16 6786, i16 6120, i16 5059, i16 4590, i16 4066, i16 3672] }, %struct.mcs_group { i8 5, [12 x i16] [i16 -32711, i16 16412, i16 10941, i16 7947, i16 5354, i16 4033, i16 3591, i16 3237, i16 2675, i16 2427, i16 2150, i16 1942] }, %struct.mcs_group { i8 4, [12 x i16] [i16 -32711, i16 16413, i16 10942, i16 7947, i16 5355, i16 4033, i16 3591, i16 3238, i16 2675, i16 2428, i16 2150, i16 1942] }, %struct.mcs_group { i8 3, [12 x i16] [i16 -21769, i16 21884, i16 14589, i16 10596, i16 7140, i16 5378, i16 4789, i16 4318, i16 3567, i16 3238, i16 2867, i16 2590] }, %struct.mcs_group { i8 3, [12 x i16] [i16 -32710, i16 16414, i16 10942, i16 7948, i16 5355, i16 4033, i16 3592, i16 3238, i16 2676, i16 2428, i16 2151, i16 1942] }, %struct.mcs_group { i8 2, [12 x i16] [i16 -13016, i16 26262, i16 17506, i16 12718, i16 8568, i16 6454, i16 5749, i16 5180, i16 4284, i16 3884, i16 3441, i16 3110] }, %struct.mcs_group { i8 2, [12 x i16] [i16 -21768, i16 21884, i16 14590, i16 10598, i16 7142, i16 5378, i16 4791, i16 4320, i16 3567, i16 3240, i16 2869, i16 2592] }, %struct.mcs_group { i8 2, [12 x i16] [i16 -28021, i16 18759, i16 12506, i16 9082, i16 6120, i16 4611, i16 4107, i16 3700, i16 3060, i16 2775, i16 2458, i16 2221] }, %struct.mcs_group { i8 2, [12 x i16] [i16 -32708, i16 16416, i16 10944, i16 7948, i16 5356, i16 4035, i16 3592, i16 3240, i16 2678, i16 2430, i16 2152, i16 1944] }, %struct.mcs_group { i8 5, [12 x i16] [i16 -29064, i16 18236, i16 12157, i16 8830, i16 5949, i16 4481, i16 3991, i16 3597, i16 2973, i16 2697, i16 2389, i16 2158] }, %struct.mcs_group { i8 4, [12 x i16] [i16 -29063, i16 18237, i16 12158, i16 8831, i16 5950, i16 4482, i16 3991, i16 3598, i16 2973, i16 2698, i16 2389, i16 2158] }, %struct.mcs_group { i8 3, [12 x i16] [i16 -16906, i16 24316, i16 16210, i16 11774, i16 7934, i16 5976, i16 5322, i16 4798, i16 3964, i16 3598, i16 3186, i16 2878] }, %struct.mcs_group { i8 3, [12 x i16] [i16 -29062, i16 18238, i16 12158, i16 8832, i16 5950, i16 4482, i16 3992, i16 3598, i16 2974, i16 2698, i16 2390, i16 2158] }, %struct.mcs_group { i8 2, [12 x i16] [i16 -7180, i16 29180, i16 19452, i16 14132, i16 9520, i16 7172, i16 6388, i16 5756, i16 4760, i16 4316, i16 3824, i16 3456] }, %struct.mcs_group { i8 2, [12 x i16] [i16 -16904, i16 24316, i16 16212, i16 11776, i16 7936, i16 5976, i16 5324, i16 4800, i16 3964, i16 3600, i16 3188, i16 2880] }, %struct.mcs_group { i8 2, [12 x i16] [i16 -23852, i16 20844, i16 13896, i16 10092, i16 6800, i16 5124, i16 4564, i16 4112, i16 3400, i16 3084, i16 2732, i16 2468] }, %struct.mcs_group { i8 2, [12 x i16] [i16 -29060, i16 18240, i16 12160, i16 8832, i16 5952, i16 4484, i16 3992, i16 3600, i16 2976, i16 2700, i16 2392, i16 2160] }, %struct.mcs_group { i8 3, [12 x i16] [i16 -3532, i16 30023, i16 20228, i16 15237, i16 10108, i16 7619, i16 6784, i16 6077, i16 5079, i16 4566, i16 4059, i16 3655] }, %struct.mcs_group { i8 2, [12 x i16] [i16 -3531, i16 30025, i16 20230, i16 15238, i16 10108, i16 7619, i16 6786, i16 6079, i16 5079, i16 4566, i16 4059, i16 3655] }, %struct.mcs_group { i8 2, [12 x i16] [i16 -24199, i16 20015, i16 13487, i16 10159, i16 6738, i16 5079, i16 4525, i16 4052, i16 3386, i16 3046, i16 2706, i16 2437] }, %struct.mcs_group { i8 1, [12 x i16] [i16 -3527, i16 30028, i16 20230, i16 15238, i16 10111, i16 7622, i16 6786, i16 6079, i16 5079, i16 4569, i16 4059, i16 3658] }, %struct.mcs_group { i8 1, [12 x i16] [i16 -15930, i16 24024, i16 16184, i16 12192, i16 8092, i16 6099, i16 5433, i16 4862, i16 4066, i16 3658, i16 3250, i16 2924] }, %struct.mcs_group { i8 1, [12 x i16] [i16 -24199, i16 20019, i16 13491, i16 10159, i16 6738, i16 5079, i16 4528, i16 4052, i16 3386, i16 3046, i16 2706, i16 2441] }, %struct.mcs_group { i8 1, [12 x i16] [i16 -30102, i16 17156, i16 11560, i16 8710, i16 5780, i16 4358, i16 3882, i16 3474, i16 2903, i16 2611, i16 2325, i16 2094] }, %struct.mcs_group { i8 0, [12 x i16] [i16 -3520, i16 30028, i16 20236, i16 15245, i16 10118, i16 7629, i16 6786, i16 6079, i16 5086, i16 4569, i16 4066, i16 3658] }, %struct.mcs_group { i8 4, [12 x i16] [i16 -32711, i16 15894, i16 10709, i16 8066, i16 5351, i16 4033, i16 3591, i16 3217, i16 2689, i16 2417, i16 2149, i16 1935] }, %struct.mcs_group { i8 3, [12 x i16] [i16 -32710, i16 15895, i16 10710, i16 8067, i16 5351, i16 4033, i16 3592, i16 3218, i16 2689, i16 2417, i16 2149, i16 1935] }, %struct.mcs_group { i8 2, [12 x i16] [i16 -21768, i16 21193, i16 14281, i16 10756, i16 7135, i16 5378, i16 4791, i16 4291, i16 3585, i16 3225, i16 2865, i16 2581] }, %struct.mcs_group { i8 2, [12 x i16] [i16 -32708, i16 15897, i16 10710, i16 8067, i16 5353, i16 4035, i16 3592, i16 3218, i16 2689, i16 2419, i16 2149, i16 1936] }, %struct.mcs_group { i8 1, [12 x i16] [i16 -13012, i16 25437, i16 17136, i16 12909, i16 8568, i16 6458, i16 5752, i16 5148, i16 4305, i16 3873, i16 3441, i16 3096] }, %struct.mcs_group { i8 1, [12 x i16] [i16 -21768, i16 21196, i16 14284, i16 10756, i16 7135, i16 5378, i16 4795, i16 4291, i16 3585, i16 3225, i16 2865, i16 2584] }, %struct.mcs_group { i8 1, [12 x i16] [i16 -28017, i16 18165, i16 12240, i16 9223, i16 6120, i16 4615, i16 4111, i16 3679, i16 3074, i16 2764, i16 2462, i16 2217] }, %struct.mcs_group { i8 1, [12 x i16] [i16 -32704, i16 15897, i16 10713, i16 8071, i16 5356, i16 4039, i16 3592, i16 3218, i16 2692, i16 2419, i16 2152, i16 1936] }, %struct.mcs_group { i8 4, [12 x i16] [i16 -29063, i16 17661, i16 11899, i16 8963, i16 5946, i16 4482, i16 3991, i16 3575, i16 2988, i16 2686, i16 2388, i16 2150] }, %struct.mcs_group { i8 3, [12 x i16] [i16 -29062, i16 17662, i16 11900, i16 8964, i16 5946, i16 4482, i16 3992, i16 3576, i16 2988, i16 2686, i16 2388, i16 2150] }, %struct.mcs_group { i8 2, [12 x i16] [i16 -16904, i16 23548, i16 15868, i16 11952, i16 7928, i16 5976, i16 5324, i16 4768, i16 3984, i16 3584, i16 3184, i16 2868] }, %struct.mcs_group { i8 2, [12 x i16] [i16 -29060, i16 17664, i16 11900, i16 8964, i16 5948, i16 4484, i16 3992, i16 3576, i16 2988, i16 2688, i16 2388, i16 2152] }, %struct.mcs_group { i8 1, [12 x i16] [i16 -7176, i16 28264, i16 19040, i16 14344, i16 9520, i16 7176, i16 6392, i16 5720, i16 4784, i16 4304, i16 3824, i16 3440] }, %struct.mcs_group { i8 1, [12 x i16] [i16 -16904, i16 23552, i16 15872, i16 11952, i16 7928, i16 5976, i16 5328, i16 4768, i16 3984, i16 3584, i16 3184, i16 2872] }, %struct.mcs_group { i8 1, [12 x i16] [i16 -23848, i16 20184, i16 13600, i16 10248, i16 6800, i16 5128, i16 4568, i16 4088, i16 3416, i16 3072, i16 2736, i16 2464] }, %struct.mcs_group { i8 1, [12 x i16] [i16 -29056, i16 17664, i16 11904, i16 8968, i16 5952, i16 4488, i16 3992, i16 3576, i16 2992, i16 2688, i16 2392, i16 2152] }, %struct.mcs_group { i8 2, [12 x i16] [i16 -7209, i16 29134, i16 19431, i16 14569, i16 9713, i16 7286, i16 6473, i16 5827, i16 4855, i16 4375, i16 3886, i16 3495] }, %struct.mcs_group { i8 1, [12 x i16] [i16 -7206, i16 29138, i16 19434, i16 14572, i16 9717, i16 7289, i16 6473, i16 5827, i16 4855, i16 4379, i16 3889, i16 3495] }, %struct.mcs_group { i8 1, [12 x i16] [i16 -26647, i16 19427, i16 12954, i16 9717, i16 6480, i16 4862, i16 4318, i16 3889, i16 3236, i16 2917, i16 2590, i16 2332] }, %struct.mcs_group { i8 0, [12 x i16] [i16 -7206, i16 29144, i16 19434, i16 14579, i16 9724, i16 7289, i16 6473, i16 5834, i16 4855, i16 4379, i16 3889, i16 3495] }, %struct.mcs_group { i8 0, [12 x i16] [i16 -18875, i16 23310, i16 15544, i16 11655, i16 7779, i16 5834, i16 5181, i16 4664, i16 3889, i16 3508, i16 3114, i16 2801] }, %struct.mcs_group { i8 0, [12 x i16] [i16 -26640, i16 19434, i16 12960, i16 9724, i16 6487, i16 4868, i16 4324, i16 3889, i16 3236, i16 2924, i16 2597, i16 2339] }, %struct.mcs_group { i8 0, [12 x i16] [i16 -32203, i16 16660, i16 11111, i16 8336, i16 5562, i16 4175, i16 3699, i16 3332, i16 2774, i16 2502, i16 2230, i16 1999] }, %struct.mcs_group { i8 0, [12 x i16] [i16 29172, i16 14579, i16 9724, i16 7289, i16 4868, i16 3644, i16 3236, i16 2924, i16 2434, i16 2189, i16 1944, i16 1754] }, %struct.mcs_group { i8 2, [12 x i16] [i16 -3778, i16 30848, i16 20574, i16 15426, i16 10285, i16 7714, i16 6854, i16 6170, i16 5140, i16 4633, i16 4114, i16 3700] }, %struct.mcs_group { i8 1, [12 x i16] [i16 -3775, i16 30852, i16 20577, i16 15429, i16 10288, i16 7718, i16 6854, i16 6170, i16 5140, i16 4636, i16 4118, i16 3700] }, %struct.mcs_group { i8 1, [12 x i16] [i16 -24360, i16 20570, i16 13716, i16 10288, i16 6861, i16 5148, i16 4572, i16 4118, i16 3427, i16 3088, i16 2743, i16 2469] }, %struct.mcs_group { i8 0, [12 x i16] [i16 -3775, i16 30859, i16 20577, i16 15436, i16 10296, i16 7718, i16 6854, i16 6177, i16 5140, i16 4636, i16 4118, i16 3700] }, %struct.mcs_group { i8 0, [12 x i16] [i16 -16130, i16 24681, i16 16459, i16 12340, i16 8236, i16 6177, i16 5486, i16 4939, i16 4118, i16 3715, i16 3297, i16 2966] }, %struct.mcs_group { i8 0, [12 x i16] [i16 -24352, i16 20577, i16 13723, i16 10296, i16 6868, i16 5155, i16 4579, i16 4118, i16 3427, i16 3096, i16 2750, i16 2476] }, %struct.mcs_group { i8 0, [12 x i16] [i16 -30242, i16 17640, i16 11764, i16 8827, i16 5889, i16 4420, i16 3916, i16 3528, i16 2937, i16 2649, i16 2361, i16 2116] }, %struct.mcs_group { i8 0, [12 x i16] [i16 30888, i16 15436, i16 10296, i16 7718, i16 5155, i16 3859, i16 3427, i16 3096, i16 2577, i16 2318, i16 2059, i16 1857] }, %struct.mcs_group { i8 3, [12 x i16] [i16 -31226, i16 17138, i16 11430, i16 8570, i16 5714, i16 4286, i16 3808, i16 3428, i16 2856, i16 2574, i16 2286, i16 2056] }, %struct.mcs_group { i8 2, [12 x i16] [i16 -31224, i16 17140, i16 11432, i16 8572, i16 5716, i16 4288, i16 3808, i16 3428, i16 2856, i16 2576, i16 2288, i16 2056] }, %struct.mcs_group { i8 1, [12 x i16] [i16 -19784, i16 22856, i16 15240, i16 11432, i16 7624, i16 5720, i16 5080, i16 4576, i16 3808, i16 3432, i16 3048, i16 2744] }, %struct.mcs_group { i8 1, [12 x i16] [i16 -31224, i16 17144, i16 11432, i16 8576, i16 5720, i16 4288, i16 3808, i16 3432, i16 2856, i16 2576, i16 2288, i16 2056] }, %struct.mcs_group { i8 0, [12 x i16] [i16 -10640, i16 27424, i16 18288, i16 13712, i16 9152, i16 6864, i16 6096, i16 5488, i16 4576, i16 4128, i16 3664, i16 3296] }, %struct.mcs_group { i8 0, [12 x i16] [i16 -19776, i16 22864, i16 15248, i16 11440, i16 7632, i16 5728, i16 5088, i16 4576, i16 3808, i16 3440, i16 3056, i16 2752] }, %struct.mcs_group { i8 0, [12 x i16] [i16 -26320, i16 19600, i16 13072, i16 9808, i16 6544, i16 4912, i16 4352, i16 3920, i16 3264, i16 2944, i16 2624, i16 2352] }, %struct.mcs_group { i8 0, [12 x i16] [i16 -31216, i16 17152, i16 11440, i16 8576, i16 5728, i16 4288, i16 3808, i16 3440, i16 2864, i16 2576, i16 2288, i16 2064] }, %struct.mcs_group { i8 1, [12 x i16] [i16 -7267, i16 29138, i16 19427, i16 14572, i16 9710, i16 7282, i16 6466, i16 5820, i16 4855, i16 4372, i16 3882, i16 3495] }, %struct.mcs_group { i8 0, [12 x i16] [i16 -7260, i16 29144, i16 19434, i16 14579, i16 9710, i16 7289, i16 6473, i16 5820, i16 4855, i16 4379, i16 3889, i16 3495] }, %struct.mcs_group { i8 0, [12 x i16] [i16 -26681, i16 19434, i16 12960, i16 9724, i16 6473, i16 4855, i16 4311, i16 3889, i16 3236, i16 2924, i16 2597, i16 2339] }, %struct.mcs_group { i8 0, [12 x i16] [i16 29144, i16 14579, i16 9724, i16 7289, i16 4855, i16 3644, i16 3236, i16 2910, i16 2434, i16 2189, i16 1944, i16 1754] }, %struct.mcs_group { i8 0, [12 x i16] [i16 23310, i16 11655, i16 7779, i16 5834, i16 3889, i16 2924, i16 2597, i16 2339, i16 1944, i16 1754, i16 1564, i16 1400] }, %struct.mcs_group { i8 0, [12 x i16] [i16 19434, i16 9724, i16 6487, i16 4868, i16 3236, i16 2434, i16 2162, i16 1944, i16 1618, i16 1468, i16 1305, i16 1169] }, %struct.mcs_group { i8 0, [12 x i16] [i16 16660, i16 8336, i16 5562, i16 4175, i16 2774, i16 2080, i16 1849, i16 1672, i16 1387, i16 1251, i16 1115, i16 1006] }, %struct.mcs_group { i8 0, [12 x i16] [i16 14579, i16 7289, i16 4868, i16 3644, i16 2434, i16 1822, i16 1618, i16 1455, i16 1224, i16 1101, i16 979, i16 884] }, %struct.mcs_group { i8 1, [12 x i16] [i16 -3840, i16 30852, i16 20570, i16 15429, i16 10281, i16 7711, i16 6847, i16 6163, i16 5140, i16 4629, i16 4111, i16 3700] }, %struct.mcs_group { i8 0, [12 x i16] [i16 -3832, i16 30859, i16 20577, i16 15436, i16 10281, i16 7718, i16 6854, i16 6163, i16 5140, i16 4636, i16 4118, i16 3700] }, %struct.mcs_group { i8 0, [12 x i16] [i16 -24396, i16 20577, i16 13723, i16 10296, i16 6854, i16 5140, i16 4564, i16 4118, i16 3427, i16 3096, i16 2750, i16 2476] }, %struct.mcs_group { i8 0, [12 x i16] [i16 30859, i16 15436, i16 10296, i16 7718, i16 5140, i16 3859, i16 3427, i16 3081, i16 2577, i16 2318, i16 2059, i16 1857] }, %struct.mcs_group { i8 0, [12 x i16] [i16 24681, i16 12340, i16 8236, i16 6177, i16 4118, i16 3096, i16 2750, i16 2476, i16 2059, i16 1857, i16 1656, i16 1483] }, %struct.mcs_group { i8 0, [12 x i16] [i16 20577, i16 10296, i16 6868, i16 5155, i16 3427, i16 2577, i16 2289, i16 2059, i16 1713, i16 1555, i16 1382, i16 1238] }, %struct.mcs_group { i8 0, [12 x i16] [i16 17640, i16 8827, i16 5889, i16 4420, i16 2937, i16 2203, i16 1958, i16 1771, i16 1468, i16 1324, i16 1180, i16 1065] }, %struct.mcs_group { i8 0, [12 x i16] [i16 15436, i16 7718, i16 5155, i16 3859, i16 2577, i16 1929, i16 1713, i16 1540, i16 1296, i16 1166, i16 1036, i16 936] }, %struct.mcs_group { i8 2, [12 x i16] [i16 -31260, i16 17140, i16 11428, i16 8572, i16 5712, i16 4284, i16 3804, i16 3424, i16 2856, i16 2572, i16 2284, i16 2056] }, %struct.mcs_group { i8 1, [12 x i16] [i16 -31256, i16 17144, i16 11432, i16 8576, i16 5712, i16 4288, i16 3808, i16 3424, i16 2856, i16 2576, i16 2288, i16 2056] }, %struct.mcs_group { i8 0, [12 x i16] [i16 -19824, i16 22864, i16 15248, i16 11440, i16 7616, i16 5712, i16 5072, i16 4576, i16 3808, i16 3440, i16 3056, i16 2752] }, %struct.mcs_group { i8 0, [12 x i16] [i16 -31248, i16 17152, i16 11440, i16 8576, i16 5712, i16 4288, i16 3808, i16 3424, i16 2864, i16 2576, i16 2288, i16 2064] }, %struct.mcs_group { i8 0, [12 x i16] [i16 27424, i16 13712, i16 9152, i16 6864, i16 4576, i16 3440, i16 3056, i16 2752, i16 2288, i16 2064, i16 1840, i16 1648] }, %struct.mcs_group { i8 0, [12 x i16] [i16 22864, i16 11440, i16 7632, i16 5728, i16 3808, i16 2864, i16 2544, i16 2288, i16 1904, i16 1728, i16 1536, i16 1376] }, %struct.mcs_group { i8 0, [12 x i16] [i16 19600, i16 9808, i16 6544, i16 4912, i16 3264, i16 2448, i16 2176, i16 1968, i16 1632, i16 1472, i16 1312, i16 1184] }, %struct.mcs_group { i8 0, [12 x i16] [i16 17152, i16 8576, i16 5728, i16 4288, i16 2864, i16 2144, i16 1904, i16 1712, i16 1440, i16 1296, i16 1152, i16 1040] }], [928 x i8] zeroinitializer }, align 32
@switch.table.ieee80211_get_rate_duration = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 0, i32 0, i32 0, i32 1, i32 2, i32 3], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 480, i32 7 }
@___asan_gen_.7 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 643, i32 9 }
@___asan_gen_.10 = private unnamed_addr constant [19 x i8] c"airtime_mcs_groups\00", align 1
@___asan_gen_.11 = private constant [26 x i8] c"../net/mac80211/airtime.c\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 216, i32 31 }
@___asan_gen_.13 = private unnamed_addr constant [41 x i8] c"switch.table.ieee80211_get_rate_duration\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab_ieee80211_calc_rx_airtime, ptr @__ksymtab_ieee80211_calc_tx_airtime, ptr @.str, ptr @.str.1, ptr @airtime_mcs_groups, ptr @switch.table.ieee80211_get_rate_duration], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @airtime_mcs_groups to i32), i32 3744, i32 4672, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ieee80211_get_rate_duration to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee80211_calc_rx_airtime(ptr nocapture noundef readonly %hw, ptr nocapture noundef readonly %status, i32 noundef %len) #0 align 64 {
entry:
  %overhead = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %overhead) #5
  %0 = ptrtoint ptr %overhead to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %overhead, align 4
  %encoding = getelementptr inbounds %struct.ieee80211_rx_status, ptr %status, i32 0, i32 7
  %1 = ptrtoint ptr %encoding to i32
  call void @__asan_loadN_noabort(i32 %1, i32 2)
  %bf.load = load i16, ptr %encoding, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %bf.load)
  %cmp = icmp ult i16 %bf.load, 16384
  br i1 %cmp, label %if.then, label %if.end64

if.then:                                          ; preds = %entry
  %enc_flags = getelementptr inbounds %struct.ieee80211_rx_status, ptr %status, i32 0, i32 6
  %2 = ptrtoint ptr %enc_flags to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enc_flags, align 2
  %4 = and i8 %3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  %band = getelementptr inbounds %struct.ieee80211_rx_status, ptr %status, i32 0, i32 11
  %5 = ptrtoint ptr %band to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %band, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp4 = icmp ugt i8 %6, 1
  br i1 %cmp4, label %land.rhs, label %if.end46

land.rhs:                                         ; preds = %if.then
  %.b92 = load i1, ptr @ieee80211_calc_rx_airtime.__already_done, align 1
  br i1 %.b92, label %land.rhs.cleanup70_crit_edge, label %if.then15, !prof !27

land.rhs.cleanup70_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup70

if.then15:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @ieee80211_calc_rx_airtime.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 480, i32 noundef 9, ptr noundef null) #5
  br label %cleanup70

if.end46:                                         ; preds = %if.then
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 1
  %7 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wiphy, align 8
  %idxprom = zext i8 %6 to i32
  %arrayidx = getelementptr %struct.wiphy, ptr %8, i32 0, i32 53, i32 %idxprom
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %tobool48.not = icmp eq ptr %10, null
  br i1 %tobool48.not, label %if.end46.cleanup70_crit_edge, label %lor.lhs.false

if.end46.cleanup70_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup70

lor.lhs.false:                                    ; preds = %if.end46
  %rate_idx = getelementptr inbounds %struct.ieee80211_rx_status, ptr %status, i32 0, i32 8
  %11 = ptrtoint ptr %rate_idx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %rate_idx, align 1
  %conv49 = zext i8 %12 to i32
  %n_bitrates = getelementptr inbounds %struct.ieee80211_supported_band, ptr %10, i32 0, i32 4
  %13 = ptrtoint ptr %n_bitrates to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %n_bitrates, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %conv49)
  %cmp50.not = icmp sgt i32 %14, %conv49
  br i1 %cmp50.not, label %if.end53, label %lor.lhs.false.cleanup70_crit_edge

lor.lhs.false.cleanup70_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup70

if.end53:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %bitrates = getelementptr inbounds %struct.ieee80211_supported_band, ptr %10, i32 0, i32 1
  %15 = ptrtoint ptr %bitrates to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bitrates, align 4
  %arrayidx56 = getelementptr %struct.ieee80211_rate, ptr %16, i32 %conv49
  %17 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx56, align 4
  %and57 = and i32 %18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  %bitrate = getelementptr %struct.ieee80211_rate, ptr %16, i32 %conv49, i32 1
  %19 = ptrtoint ptr %bitrate to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %bitrate, align 4
  %spec.select.i = select i1 %tobool.not, i32 202, i32 106
  %duration.1.i = select i1 %tobool58.not, i32 36, i32 %spec.select.i
  %mul.i = mul i32 %len, 80
  %conv.i = zext i16 %20 to i32
  %div.i = sdiv i32 %mul.i, %conv.i
  %add5.i = add i32 %duration.1.i, %div.i
  br label %cleanup70

if.end64:                                         ; preds = %entry
  %call65 = call fastcc i32 @ieee80211_get_rate_duration(ptr noundef %status, ptr noundef nonnull %overhead)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end64.cleanup70_crit_edge, label %if.end68

if.end64.cleanup70_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup70

if.end68:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #7
  %mul = mul i32 %call65, %len
  %div6991 = lshr i32 %mul, 20
  %21 = ptrtoint ptr %overhead to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %overhead, align 4
  %add = add i32 %22, %div6991
  br label %cleanup70

cleanup70:                                        ; preds = %if.end68, %if.end64.cleanup70_crit_edge, %if.end53, %lor.lhs.false.cleanup70_crit_edge, %if.end46.cleanup70_crit_edge, %if.then15, %land.rhs.cleanup70_crit_edge
  %retval.1 = phi i32 [ %add, %if.end68 ], [ %add5.i, %if.end53 ], [ 0, %if.then15 ], [ 0, %lor.lhs.false.cleanup70_crit_edge ], [ 0, %if.end46.cleanup70_crit_edge ], [ 0, %if.end64.cleanup70_crit_edge ], [ 0, %land.rhs.cleanup70_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %overhead) #5
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ieee80211_get_rate_duration(ptr nocapture noundef readonly %status, ptr nocapture noundef writeonly %overhead) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %enc_flags = getelementptr inbounds %struct.ieee80211_rx_status, ptr %status, i32 0, i32 6
  %0 = ptrtoint ptr %enc_flags to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enc_flags, align 2
  %2 = and i8 %1, 4
  %bw1 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %status, i32 0, i32 7
  %3 = ptrtoint ptr %bw1 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 2)
  %bf.load = load i16, ptr %bw1, align 1
  %bf.lshr = lshr i16 %bf.load, 11
  %4 = and i16 %bf.lshr, 7
  %bf.cast = zext i16 %4 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %4)
  %5 = icmp ult i16 %4, 6
  br i1 %5, label %switch.hole_check, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end

land.end:                                         ; preds = %switch.hole_check.land.end_crit_edge, %entry.land.end_crit_edge
  %.b3 = load i1, ptr @ieee80211_get_rate_duration.__already_done, align 1
  br i1 %.b3, label %land.end.cleanup_crit_edge, label %if.then, !prof !27

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @ieee80211_get_rate_duration.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 431, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i16 %4 to i8
  %switch.shifted = lshr i8 57, %switch.maskindex
  %6 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %switch.lobit.not = icmp eq i8 %6, 0
  br i1 %switch.lobit.not, label %switch.hole_check.land.end_crit_edge, label %switch.lookup

switch.hole_check.land.end_crit_edge:             ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.ieee80211_get_rate_duration, i32 0, i32 %bf.cast
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load i32, ptr %switch.gep, align 4
  %bf.lshr41 = lshr i16 %bf.load, 14
  %bf.cast42 = zext i16 %bf.lshr41 to i32
  %8 = zext i32 %bf.cast42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %bf.cast42, label %land.end92 [
    i32 2, label %sw.bb44
    i32 1, label %lor.rhs.thread
    i32 3, label %sw.bb68
  ]

sw.bb44:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #7
  %nss = getelementptr inbounds %struct.ieee80211_rx_status, ptr %status, i32 0, i32 9
  %9 = ptrtoint ptr %nss to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %nss, align 2
  %conv45 = zext i8 %10 to i32
  %mul = shl nuw nsw i32 %switch.load, 3
  %11 = or i8 %2, 16
  %add = zext i8 %11 to i32
  %add50 = add nuw nsw i32 %mul, %add
  %add51 = add nuw nsw i32 %add50, %conv45
  br label %sw.epilog134

lor.rhs.thread:                                   ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #7
  %rate_idx53 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %status, i32 0, i32 8
  %12 = ptrtoint ptr %rate_idx53 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %rate_idx53, align 1
  %conv54 = zext i8 %13 to i32
  %14 = lshr i32 %conv54, 3
  %and55 = and i32 %14, 3
  %add56 = add nuw nsw i32 %and55, 1
  %and59 = and i32 %conv54, 7
  %mul60 = shl nuw nsw i32 %switch.load, 3
  %mul64 = zext i8 %2 to i32
  %add65 = or i32 %mul60, %mul64
  %sub67 = or i32 %and55, %add65
  br label %if.end210

sw.bb68:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #7
  %nss69 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %status, i32 0, i32 9
  %15 = ptrtoint ptr %nss69 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %nss69, align 2
  %conv70 = zext i8 %16 to i32
  %mul73 = mul nuw nsw i32 %switch.load, 24
  %17 = lshr i16 %bf.load, 3
  %18 = and i16 %17, 24
  %narrow = add nuw nsw i16 %18, 48
  %add74 = zext i16 %narrow to i32
  %add81 = add nuw nsw i32 %mul73, %add74
  %add82 = add nuw nsw i32 %add81, %conv70
  br label %sw.epilog134

land.end92:                                       ; preds = %switch.lookup
  %.b2502 = load i1, ptr @ieee80211_get_rate_duration.__already_done.2, align 1
  br i1 %.b2502, label %land.end92.cleanup_crit_edge, label %if.then99, !prof !27

land.end92.cleanup_crit_edge:                     ; preds = %land.end92
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then99:                                        ; preds = %land.end92
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @ieee80211_get_rate_duration.__already_done.2, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 452, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

sw.epilog134:                                     ; preds = %sw.bb68, %sw.bb44
  %group.0.in = phi i32 [ %add82, %sw.bb68 ], [ %add51, %sw.bb44 ]
  %streams.0 = phi i32 [ %conv70, %sw.bb68 ], [ %conv45, %sw.bb44 ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 -16384, i16 %bf.load)
  %cmp.not = icmp ult i16 %bf.load, -16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %streams.0)
  %cmp142 = icmp ugt i32 %streams.0, 4
  %or.cond = select i1 %cmp.not, i1 %cmp142, i1 false
  br i1 %or.cond, label %sw.epilog134.land.rhs162_crit_edge, label %lor.rhs

sw.epilog134.land.rhs162_crit_edge:               ; preds = %sw.epilog134
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs162

lor.rhs:                                          ; preds = %sw.epilog134
  %group.0 = add nsw i32 %group.0.in, -1
  %idx.0.in.in = getelementptr inbounds %struct.ieee80211_rx_status, ptr %status, i32 0, i32 8
  %19 = ptrtoint ptr %idx.0.in.in to i32
  call void @__asan_load1_noabort(i32 %19)
  %idx.0.in = load i8, ptr %idx.0.in.in, align 1
  %idx.0 = zext i8 %idx.0.in to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -16385, i16 %bf.load)
  %cmp149 = icmp ugt i16 %bf.load, -16385
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %streams.0)
  %cmp152 = icmp ugt i32 %streams.0, 8
  %spec.select = select i1 %cmp149, i1 %cmp152, i1 false
  br i1 %spec.select, label %lor.rhs.land.rhs162_crit_edge, label %lor.rhs.if.end210_crit_edge

lor.rhs.if.end210_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end210

lor.rhs.land.rhs162_crit_edge:                    ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs162

land.rhs162:                                      ; preds = %lor.rhs.land.rhs162_crit_edge, %sw.epilog134.land.rhs162_crit_edge
  %.b2511 = load i1, ptr @ieee80211_get_rate_duration.__already_done.3, align 1
  br i1 %.b2511, label %land.rhs162.cleanup_crit_edge, label %if.then173, !prof !27

land.rhs162.cleanup_crit_edge:                    ; preds = %land.rhs162
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then173:                                       ; preds = %land.rhs162
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @ieee80211_get_rate_duration.__already_done.3, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 457, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end210:                                        ; preds = %lor.rhs.if.end210_crit_edge, %lor.rhs.thread
  %idx.01122 = phi i32 [ %and59, %lor.rhs.thread ], [ %idx.0, %lor.rhs.if.end210_crit_edge ]
  %group.01221 = phi i32 [ %sub67, %lor.rhs.thread ], [ %group.0, %lor.rhs.if.end210_crit_edge ]
  %streams.01320 = phi i32 [ %add56, %lor.rhs.thread ], [ %streams.0, %lor.rhs.if.end210_crit_edge ]
  %arrayidx = getelementptr [144 x %struct.mcs_group], ptr @airtime_mcs_groups, i32 0, i32 %group.01221
  %arrayidx212 = getelementptr [144 x %struct.mcs_group], ptr @airtime_mcs_groups, i32 0, i32 %group.01221, i32 1, i32 %idx.01122
  %20 = ptrtoint ptr %arrayidx212 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx212, align 2
  %conv213 = zext i16 %21 to i32
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx, align 2
  %conv215 = zext i8 %23 to i32
  %shl = shl i32 %conv213, %conv215
  %shl216 = shl nuw nsw i32 %streams.01320, 2
  %add217 = add nuw nsw i32 %shl216, 36
  %24 = ptrtoint ptr %overhead to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add217, ptr %overhead, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end210, %if.then173, %land.rhs162.cleanup_crit_edge, %if.then99, %land.end92.cleanup_crit_edge, %if.then, %land.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %shl, %if.end210 ], [ 0, %if.then ], [ 0, %land.end.cleanup_crit_edge ], [ 0, %if.then99 ], [ 0, %land.end92.cleanup_crit_edge ], [ 0, %if.then173 ], [ 0, %land.rhs162.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee80211_calc_tx_airtime(ptr nocapture noundef readonly %hw, ptr nocapture noundef readonly %info, i32 noundef %len) #0 align 64 {
entry:
  %stat.i = alloca %struct.ieee80211_rx_status, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.ieee80211_tx_info, ptr %info, i32 0, i32 2
  %band = getelementptr inbounds %struct.ieee80211_tx_info, ptr %info, i32 0, i32 1
  %1 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %1)
  %bf.load = load i32, ptr %band, align 4
  %bf.lshr = lshr i32 %bf.load, 29
  %conv = trunc i32 %bf.lshr to i8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %stat.i) #5
  %2 = call ptr @memset(ptr %stat.i, i32 255, i32 48)
  %call.i = call fastcc i32 @ieee80211_fill_rx_status(ptr noundef nonnull %stat.i, ptr noundef %hw, ptr noundef %0, ptr noundef null, i8 noundef zeroext %conv) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %ieee80211_calc_tx_airtime_rate.exit, label %entry.ieee80211_calc_tx_airtime_rate.exit.thread_crit_edge

entry.ieee80211_calc_tx_airtime_rate.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %ieee80211_calc_tx_airtime_rate.exit.thread

ieee80211_calc_tx_airtime_rate.exit.thread:       ; preds = %for.inc.2.ieee80211_calc_tx_airtime_rate.exit.thread_crit_edge, %for.inc.1.ieee80211_calc_tx_airtime_rate.exit.thread_crit_edge, %for.inc.ieee80211_calc_tx_airtime_rate.exit.thread_crit_edge, %entry.ieee80211_calc_tx_airtime_rate.exit.thread_crit_edge
  %duration.020.lcssa = phi i32 [ 0, %entry.ieee80211_calc_tx_airtime_rate.exit.thread_crit_edge ], [ %mul, %for.inc.ieee80211_calc_tx_airtime_rate.exit.thread_crit_edge ], [ %add.1, %for.inc.1.ieee80211_calc_tx_airtime_rate.exit.thread_crit_edge ], [ %add.2, %for.inc.2.ieee80211_calc_tx_airtime_rate.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %stat.i) #5
  br label %for.end

ieee80211_calc_tx_airtime_rate.exit:              ; preds = %entry
  %call1.i = call i32 @ieee80211_calc_rx_airtime(ptr noundef %hw, ptr noundef nonnull %stat.i, i32 noundef %len) #5
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %stat.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.not, label %ieee80211_calc_tx_airtime_rate.exit.for.end_crit_edge, label %for.inc

ieee80211_calc_tx_airtime_rate.exit.for.end_crit_edge: ; preds = %ieee80211_calc_tx_airtime_rate.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc:                                          ; preds = %ieee80211_calc_tx_airtime_rate.exit
  %count = getelementptr [4 x %struct.ieee80211_tx_rate], ptr %0, i32 0, i32 0, i32 1
  %3 = ptrtoint ptr %count to i32
  call void @__asan_loadN_noabort(i32 %3, i32 2)
  %bf.load1 = load i16, ptr %count, align 1
  %bf.lshr2 = lshr i16 %bf.load1, 11
  %conv3 = zext i16 %bf.lshr2 to i32
  %mul = mul i32 %call1.i, %conv3
  %arrayidx.1 = getelementptr [4 x %struct.ieee80211_tx_rate], ptr %0, i32 0, i32 1
  %4 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf.load.1 = load i32, ptr %band, align 4
  %bf.lshr.1 = lshr i32 %bf.load.1, 29
  %conv.1 = trunc i32 %bf.lshr.1 to i8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %stat.i) #5
  %5 = call ptr @memset(ptr %stat.i, i32 255, i32 48)
  %call.i.1 = call fastcc i32 @ieee80211_fill_rx_status(ptr noundef nonnull %stat.i, ptr noundef %hw, ptr noundef %arrayidx.1, ptr noundef null, i8 noundef zeroext %conv.1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %tobool.not.i.1 = icmp eq i32 %call.i.1, 0
  br i1 %tobool.not.i.1, label %ieee80211_calc_tx_airtime_rate.exit.1, label %for.inc.ieee80211_calc_tx_airtime_rate.exit.thread_crit_edge

for.inc.ieee80211_calc_tx_airtime_rate.exit.thread_crit_edge: ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %ieee80211_calc_tx_airtime_rate.exit.thread

ieee80211_calc_tx_airtime_rate.exit.1:            ; preds = %for.inc
  %call1.i.1 = call i32 @ieee80211_calc_rx_airtime(ptr noundef %hw, ptr noundef nonnull %stat.i, i32 noundef %len) #5
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %stat.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.1)
  %tobool.not.1 = icmp eq i32 %call1.i.1, 0
  br i1 %tobool.not.1, label %ieee80211_calc_tx_airtime_rate.exit.1.for.end_crit_edge, label %for.inc.1

ieee80211_calc_tx_airtime_rate.exit.1.for.end_crit_edge: ; preds = %ieee80211_calc_tx_airtime_rate.exit.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.1:                                        ; preds = %ieee80211_calc_tx_airtime_rate.exit.1
  %count.1 = getelementptr [4 x %struct.ieee80211_tx_rate], ptr %0, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %count.1 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %bf.load1.1 = load i16, ptr %count.1, align 1
  %bf.lshr2.1 = lshr i16 %bf.load1.1, 11
  %conv3.1 = zext i16 %bf.lshr2.1 to i32
  %mul.1 = mul i32 %call1.i.1, %conv3.1
  %add.1 = add i32 %mul.1, %mul
  %arrayidx.2 = getelementptr [4 x %struct.ieee80211_tx_rate], ptr %0, i32 0, i32 2
  %7 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %7)
  %bf.load.2 = load i32, ptr %band, align 4
  %bf.lshr.2 = lshr i32 %bf.load.2, 29
  %conv.2 = trunc i32 %bf.lshr.2 to i8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %stat.i) #5
  %8 = call ptr @memset(ptr %stat.i, i32 255, i32 48)
  %call.i.2 = call fastcc i32 @ieee80211_fill_rx_status(ptr noundef nonnull %stat.i, ptr noundef %hw, ptr noundef %arrayidx.2, ptr noundef null, i8 noundef zeroext %conv.2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2)
  %tobool.not.i.2 = icmp eq i32 %call.i.2, 0
  br i1 %tobool.not.i.2, label %ieee80211_calc_tx_airtime_rate.exit.2, label %for.inc.1.ieee80211_calc_tx_airtime_rate.exit.thread_crit_edge

for.inc.1.ieee80211_calc_tx_airtime_rate.exit.thread_crit_edge: ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %ieee80211_calc_tx_airtime_rate.exit.thread

ieee80211_calc_tx_airtime_rate.exit.2:            ; preds = %for.inc.1
  %call1.i.2 = call i32 @ieee80211_calc_rx_airtime(ptr noundef %hw, ptr noundef nonnull %stat.i, i32 noundef %len) #5
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %stat.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.2)
  %tobool.not.2 = icmp eq i32 %call1.i.2, 0
  br i1 %tobool.not.2, label %ieee80211_calc_tx_airtime_rate.exit.2.for.end_crit_edge, label %for.inc.2

ieee80211_calc_tx_airtime_rate.exit.2.for.end_crit_edge: ; preds = %ieee80211_calc_tx_airtime_rate.exit.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.2:                                        ; preds = %ieee80211_calc_tx_airtime_rate.exit.2
  %count.2 = getelementptr [4 x %struct.ieee80211_tx_rate], ptr %0, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %count.2 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %bf.load1.2 = load i16, ptr %count.2, align 1
  %bf.lshr2.2 = lshr i16 %bf.load1.2, 11
  %conv3.2 = zext i16 %bf.lshr2.2 to i32
  %mul.2 = mul i32 %call1.i.2, %conv3.2
  %add.2 = add i32 %mul.2, %add.1
  %arrayidx.3 = getelementptr %struct.ieee80211_tx_info, ptr %info, i32 0, i32 2, i32 1, i32 1
  %10 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %10)
  %bf.load.3 = load i32, ptr %band, align 4
  %bf.lshr.3 = lshr i32 %bf.load.3, 29
  %conv.3 = trunc i32 %bf.lshr.3 to i8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %stat.i) #5
  %11 = call ptr @memset(ptr %stat.i, i32 255, i32 48)
  %call.i.3 = call fastcc i32 @ieee80211_fill_rx_status(ptr noundef nonnull %stat.i, ptr noundef %hw, ptr noundef %arrayidx.3, ptr noundef null, i8 noundef zeroext %conv.3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.3)
  %tobool.not.i.3 = icmp eq i32 %call.i.3, 0
  br i1 %tobool.not.i.3, label %ieee80211_calc_tx_airtime_rate.exit.3, label %for.inc.2.ieee80211_calc_tx_airtime_rate.exit.thread_crit_edge

for.inc.2.ieee80211_calc_tx_airtime_rate.exit.thread_crit_edge: ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %ieee80211_calc_tx_airtime_rate.exit.thread

ieee80211_calc_tx_airtime_rate.exit.3:            ; preds = %for.inc.2
  %call1.i.3 = call i32 @ieee80211_calc_rx_airtime(ptr noundef %hw, ptr noundef nonnull %stat.i, i32 noundef %len) #5
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %stat.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.3)
  %tobool.not.3 = icmp eq i32 %call1.i.3, 0
  br i1 %tobool.not.3, label %ieee80211_calc_tx_airtime_rate.exit.3.for.end_crit_edge, label %for.inc.3

ieee80211_calc_tx_airtime_rate.exit.3.for.end_crit_edge: ; preds = %ieee80211_calc_tx_airtime_rate.exit.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.3:                                        ; preds = %ieee80211_calc_tx_airtime_rate.exit.3
  call void @__sanitizer_cov_trace_pc() #7
  %count.3 = getelementptr %struct.ieee80211_tx_info, ptr %info, i32 0, i32 2, i32 1, i32 2
  %12 = ptrtoint ptr %count.3 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %bf.load1.3 = load i16, ptr %count.3, align 1
  %bf.lshr2.3 = lshr i16 %bf.load1.3, 11
  %conv3.3 = zext i16 %bf.lshr2.3 to i32
  %mul.3 = mul i32 %call1.i.3, %conv3.3
  %add.3 = add i32 %mul.3, %add.2
  br label %for.end

for.end:                                          ; preds = %for.inc.3, %ieee80211_calc_tx_airtime_rate.exit.3.for.end_crit_edge, %ieee80211_calc_tx_airtime_rate.exit.2.for.end_crit_edge, %ieee80211_calc_tx_airtime_rate.exit.1.for.end_crit_edge, %ieee80211_calc_tx_airtime_rate.exit.for.end_crit_edge, %ieee80211_calc_tx_airtime_rate.exit.thread
  %duration.019 = phi i32 [ %duration.020.lcssa, %ieee80211_calc_tx_airtime_rate.exit.thread ], [ 0, %ieee80211_calc_tx_airtime_rate.exit.for.end_crit_edge ], [ %mul, %ieee80211_calc_tx_airtime_rate.exit.1.for.end_crit_edge ], [ %add.1, %ieee80211_calc_tx_airtime_rate.exit.2.for.end_crit_edge ], [ %add.2, %ieee80211_calc_tx_airtime_rate.exit.3.for.end_crit_edge ], [ %add.3, %for.inc.3 ]
  ret i32 %duration.019
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee80211_calc_expected_tx_airtime(ptr nocapture noundef readonly %hw, ptr noundef %vif, ptr noundef %pubsta, i32 noundef %len, i1 noundef zeroext %ampdu) local_unnamed_addr #0 align 64 {
entry:
  %stat = alloca %struct.ieee80211_rx_status, align 8
  %overhead = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %len, 38
  %chanctx_conf = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 9
  %0 = ptrtoint ptr %chanctx_conf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %chanctx_conf, align 4
  %call = tail call i32 @rcu_read_lock_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end7

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b139 = load i1, ptr @ieee80211_calc_expected_tx_airtime.__warned, align 1
  br i1 %.b139, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @ieee80211_calc_expected_tx_airtime.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 643, ptr noundef nonnull @.str.1) #5
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %entry.do.end7_crit_edge
  %tobool9.not = icmp eq ptr %1, null
  br i1 %tobool9.not, label %if.end14, label %if.end14.thread

if.end14:                                         ; preds = %do.end7
  %tobool15.not = icmp eq ptr %pubsta, null
  br i1 %tobool15.not, label %if.end14.cleanup98_crit_edge, label %if.end14.if.then16_crit_edge

if.end14.if.then16_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then16

if.end14.cleanup98_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup98

if.end14.thread:                                  ; preds = %do.end7
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %conv = trunc i32 %5 to i8
  %tobool15.not143 = icmp eq ptr %pubsta, null
  br i1 %tobool15.not143, label %if.end78, label %if.end14.thread.if.then16_crit_edge

if.end14.thread.if.then16_crit_edge:              ; preds = %if.end14.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then16

if.then16:                                        ; preds = %if.end14.thread.if.then16_crit_edge, %if.end14.if.then16_crit_edge
  %band.0145 = phi i8 [ %conv, %if.end14.thread.if.then16_crit_edge ], [ 0, %if.end14.if.then16_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %stat) #5
  %6 = call ptr @memset(ptr %stat, i32 255, i32 48)
  %last_rate = getelementptr i8, ptr %pubsta, i32 -1280
  %last_rate_info = getelementptr i8, ptr %pubsta, i32 -1276
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %overhead) #5
  %7 = ptrtoint ptr %overhead to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %overhead, align 4, !annotation !28
  %call20 = call fastcc i32 @ieee80211_fill_rx_status(ptr noundef nonnull %stat, ptr noundef %hw, ptr noundef %last_rate, ptr noundef %last_rate_info, i8 noundef zeroext %band.0145)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.then16.cleanup_crit_edge

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end23:                                         ; preds = %if.then16
  %encoding = getelementptr inbounds %struct.ieee80211_rx_status, ptr %stat, i32 0, i32 7
  %8 = ptrtoint ptr %encoding to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %bf.load = load i16, ptr %encoding, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 16383, i16 %bf.load)
  %cmp = icmp ugt i16 %bf.load, 16383
  %9 = and i1 %cmp, %ampdu
  br i1 %9, label %if.end29, label %if.then27

if.then27:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  %call28 = call i32 @ieee80211_calc_rx_airtime(ptr noundef %hw, ptr noundef nonnull %stat, i32 noundef %add)
  br label %cleanup

if.end29:                                         ; preds = %if.end23
  %call30 = call fastcc i32 @ieee80211_get_rate_duration(ptr noundef nonnull %stat, ptr noundef nonnull %overhead)
  call void @__sanitizer_cov_trace_const_cmp4(i32 409600, i32 %call30)
  %cmp31 = icmp ugt i32 %call30, 409600
  br i1 %cmp31, label %if.end29.if.end62_crit_edge, label %if.else

if.end29.if.end62_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end62

if.else:                                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_const_cmp4(i32 256000, i32 %call30)
  %cmp34 = icmp ugt i32 %call30, 256000
  br i1 %cmp34, label %if.else.if.end62_crit_edge, label %if.else37

if.else.if.end62_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end62

if.else37:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 153600, i32 %call30)
  %cmp38 = icmp ugt i32 %call30, 153600
  br i1 %cmp38, label %if.else37.if.end62_crit_edge, label %if.else41

if.else37.if.end62_crit_edge:                     ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end62

if.else41:                                        ; preds = %if.else37
  call void @__sanitizer_cov_trace_const_cmp4(i32 71680, i32 %call30)
  %cmp42 = icmp ugt i32 %call30, 71680
  br i1 %cmp42, label %if.else41.if.end62_crit_edge, label %if.else45

if.else41.if.end62_crit_edge:                     ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end62

if.else45:                                        ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 -16384, i16 %bf.load)
  %cmp51.not = icmp ult i16 %bf.load, -16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 20480, i32 %call30)
  %cmp54 = icmp ugt i32 %call30, 20480
  %or.cond = select i1 %cmp51.not, i1 true, i1 %cmp54
  %spec.select140 = select i1 %or.cond, i32 5, i32 6
  br label %if.end62

if.end62:                                         ; preds = %if.else45, %if.else41.if.end62_crit_edge, %if.else37.if.end62_crit_edge, %if.else.if.end62_crit_edge, %if.end29.if.end62_crit_edge
  %agg_shift.0 = phi i32 [ 1, %if.end29.if.end62_crit_edge ], [ 2, %if.else.if.end62_crit_edge ], [ 3, %if.else37.if.end62_crit_edge ], [ 4, %if.else41.if.end62_crit_edge ], [ %spec.select140, %if.else45 ]
  %mul = mul i32 %call30, %add
  %div63138 = lshr i32 %mul, 20
  %10 = ptrtoint ptr %overhead to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %overhead, align 4
  %shr = lshr i32 %11, %agg_shift.0
  %add65 = add nuw i32 %shr, %div63138
  %12 = tail call i32 @llvm.umax.i32(i32 %add65, i32 4)
  br label %cleanup

cleanup:                                          ; preds = %if.end62, %if.then27, %if.then16.cleanup_crit_edge
  %retval.0 = phi i32 [ %call28, %if.then27 ], [ %12, %if.end62 ], [ 0, %if.then16.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %overhead) #5
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %stat) #5
  br label %cleanup98

if.end78:                                         ; preds = %if.end14.thread
  call void @__sanitizer_cov_trace_pc() #7
  %width.i = getelementptr inbounds %struct.cfg80211_chan_def, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %width.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %14)
  %switch.selectcmp2.i = icmp eq i32 %14, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %14)
  %switch.selectcmp.i = icmp eq i32 %14, 7
  %switch.select.i = zext i1 %switch.selectcmp.i to i16
  %switch.select3.i = select i1 %switch.selectcmp2.i, i16 2, i16 %switch.select.i
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 1
  %15 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %wiphy, align 8
  %idxprom = and i32 %5, 255
  %arrayidx = getelementptr %struct.wiphy, ptr %16, i32 0, i32 53, i32 %idxprom
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx, align 4
  %basic_rates79 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 24
  %19 = ptrtoint ptr %basic_rates79 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %basic_rates79, align 8
  %use_short_preamble = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 15
  %21 = ptrtoint ptr %use_short_preamble to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %use_short_preamble, align 1, !range !29
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool81.not = icmp eq i8 %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool83.not = icmp eq i32 %20, 0
  %23 = tail call i32 @llvm.cttz.i32(i32 %20, i1 true), !range !30
  %spec.select = select i1 %tobool83.not, i32 0, i32 %23
  %bitrates = getelementptr inbounds %struct.ieee80211_supported_band, ptr %18, i32 0, i32 1
  %24 = ptrtoint ptr %bitrates to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bitrates, align 4
  %arrayidx88 = getelementptr %struct.ieee80211_rate, ptr %25, i32 %spec.select
  %bitrate = getelementptr %struct.ieee80211_rate, ptr %25, i32 %spec.select, i32 1
  %26 = ptrtoint ptr %bitrate to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %bitrate, align 4
  %shl = shl i16 %27, %switch.select3.i
  %28 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx88, align 4
  %and = and i32 %29, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool93.not = icmp eq i32 %and, 0
  %spec.select.i = select i1 %tobool81.not, i32 202, i32 106
  %duration.1.i = select i1 %tobool93.not, i32 36, i32 %spec.select.i
  %mul.i = mul i32 %add, 80
  %conv.i = zext i16 %shl to i32
  %div.i = sdiv i32 %mul.i, %conv.i
  %add5.i = add i32 %duration.1.i, %div.i
  br label %cleanup98

cleanup98:                                        ; preds = %if.end78, %cleanup, %if.end14.cleanup98_crit_edge
  %retval.1 = phi i32 [ %retval.0, %cleanup ], [ %add5.i, %if.end78 ], [ 0, %if.end14.cleanup98_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ieee80211_fill_rx_status(ptr nocapture noundef %stat, ptr nocapture noundef readonly %hw, ptr nocapture noundef readonly %rate, ptr noundef readonly %ri, i8 noundef zeroext %band) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %stat, i32 0, i32 48)
  %band1 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %stat, i32 0, i32 11
  %1 = ptrtoint ptr %band1 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %band, ptr %band1, align 4
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wiphy.i, align 8
  %idxprom.i = zext i8 %band to i32
  %arrayidx.i = getelementptr %struct.wiphy, ptr %3, i32 0, i32 53, i32 %idxprom.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %ri, null
  %tobool1.not.i = icmp eq ptr %5, null
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool1.not.i
  br i1 %or.cond.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %entry
  %bw.i = getelementptr inbounds %struct.rate_info, ptr %ri, i32 0, i32 4
  %6 = ptrtoint ptr %bw.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bw.i, align 1
  %bw2.i = getelementptr inbounds %struct.ieee80211_rx_status, ptr %stat, i32 0, i32 7
  %8 = ptrtoint ptr %bw2.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %bf.load.i = load i16, ptr %bw2.i, align 1
  %9 = and i8 %7, 7
  %bf.value.i = zext i8 %9 to i16
  %bf.shl.i = shl nuw nsw i16 %bf.value.i, 11
  %bf.clear.i = and i16 %bf.load.i, -14337
  %bf.set.i = or i16 %bf.shl.i, %bf.clear.i
  store i16 %bf.set.i, ptr %bw2.i, align 1
  %nss.i = getelementptr inbounds %struct.rate_info, ptr %ri, i32 0, i32 3
  %10 = ptrtoint ptr %nss.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %nss.i, align 2
  %nss3.i = getelementptr inbounds %struct.ieee80211_rx_status, ptr %stat, i32 0, i32 9
  %12 = ptrtoint ptr %nss3.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %nss3.i, align 2
  %mcs.i = getelementptr inbounds %struct.rate_info, ptr %ri, i32 0, i32 1
  %13 = ptrtoint ptr %mcs.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %mcs.i, align 1
  %rate_idx.i = getelementptr inbounds %struct.ieee80211_rx_status, ptr %stat, i32 0, i32 8
  %15 = ptrtoint ptr %rate_idx.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %rate_idx.i, align 1
  %16 = ptrtoint ptr %ri to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ri, align 2
  %conv.i = zext i8 %17 to i32
  %and.i = and i32 %conv.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool4.not.i, label %if.else.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %bf.set8.i = or i16 %bf.set.i, -16384
  br label %if.end35.i

if.else.i:                                        ; preds = %if.end.i
  %and11.i = and i32 %conv.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  %bf.clear31.i = and i16 %bf.set.i, 16383
  br i1 %tobool12.not.i, label %if.else18.i, label %if.then13.i

if.then13.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %bf.set17.i = or i16 %bf.clear31.i, -32768
  br label %if.end35.i

if.else18.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %18 = and i8 %17, 1
  %19 = zext i8 %18 to i16
  %20 = shl nuw nsw i16 %19, 14
  %21 = or i16 %20, %bf.clear31.i
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.else18.i, %if.then13.i, %if.then5.i
  %bf.set17.sink.i = phi i16 [ %bf.set17.i, %if.then13.i ], [ %bf.set8.i, %if.then5.i ], [ %21, %if.else18.i ]
  %22 = ptrtoint ptr %bw2.i to i32
  call void @__asan_storeN_noabort(i32 %22, i32 2)
  store i16 %bf.set17.sink.i, ptr %bw2.i, align 1
  %23 = ptrtoint ptr %ri to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %ri, align 2
  %25 = and i8 %24, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool39.not.i = icmp eq i8 %25, 0
  br i1 %tobool39.not.i, label %if.end35.i.if.end43.i_crit_edge, label %if.then40.i

if.end35.i.if.end43.i_crit_edge:                  ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43.i

if.then40.i:                                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #7
  %enc_flags.i = getelementptr inbounds %struct.ieee80211_rx_status, ptr %stat, i32 0, i32 6
  %26 = ptrtoint ptr %enc_flags.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %enc_flags.i, align 2
  %28 = or i8 %27, 4
  store i8 %28, ptr %enc_flags.i, align 2
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then40.i, %if.end35.i.if.end43.i_crit_edge
  %he_gi.i = getelementptr inbounds %struct.rate_info, ptr %ri, i32 0, i32 5
  %29 = ptrtoint ptr %he_gi.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %he_gi.i, align 2
  %31 = shl i8 %30, 6
  %bf.shl47.i = zext i8 %31 to i16
  %bf.clear48.i = and i16 %bf.set17.sink.i, -193
  %bf.set49.i = or i16 %bf.clear48.i, %bf.shl47.i
  %32 = ptrtoint ptr %bw2.i to i32
  call void @__asan_storeN_noabort(i32 %32, i32 2)
  store i16 %bf.set49.i, ptr %bw2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %bf.set17.sink.i)
  %cmp.not.i = icmp ult i16 %bf.set17.sink.i, 16384
  br i1 %cmp.not.i, label %if.end56.i, label %if.end43.i.return_crit_edge

if.end43.i.return_crit_edge:                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end56.i:                                       ; preds = %if.end43.i
  %33 = ptrtoint ptr %rate_idx.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %rate_idx.i, align 1
  %n_bitrates.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %5, i32 0, i32 4
  %34 = ptrtoint ptr %n_bitrates.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %n_bitrates.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp5896.i = icmp sgt i32 %35, 0
  br i1 %cmp5896.i, label %for.body.lr.ph.i, label %if.end56.i.if.end_crit_edge

if.end56.i.if.end_crit_edge:                      ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

for.body.lr.ph.i:                                 ; preds = %if.end56.i
  %legacy.i = getelementptr inbounds %struct.rate_info, ptr %ri, i32 0, i32 2
  %36 = ptrtoint ptr %legacy.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %legacy.i, align 2
  %bitrates.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %5, i32 0, i32 1
  %38 = ptrtoint ptr %bitrates.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bitrates.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.097.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %bitrate.i = getelementptr %struct.ieee80211_rate, ptr %39, i32 %i.097.i, i32 1
  %40 = ptrtoint ptr %bitrate.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %bitrate.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %37, i16 %41)
  %cmp63.not.i = icmp eq i16 %37, %41
  br i1 %cmp63.not.i, label %if.end66.i, label %for.inc.i

if.end66.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv67.i = trunc i32 %i.097.i to i8
  %42 = ptrtoint ptr %rate_idx.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv67.i, ptr %rate_idx.i, align 1
  br label %return

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.097.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %35
  br i1 %exitcond.not.i, label %for.inc.i.if.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %for.inc.i.if.end_crit_edge, %if.end56.i.if.end_crit_edge, %entry.if.end_crit_edge
  %43 = ptrtoint ptr %rate to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %rate, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %cmp = icmp slt i8 %44, 0
  br i1 %cmp, label %if.end.return_crit_edge, label %lor.lhs.false

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

lor.lhs.false:                                    ; preds = %if.end
  %count = getelementptr inbounds %struct.ieee80211_tx_rate, ptr %rate, i32 0, i32 1
  %45 = ptrtoint ptr %count to i32
  call void @__asan_loadN_noabort(i32 %45, i32 2)
  %bf.load = load i16, ptr %count, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %bf.load)
  %tobool.not = icmp ult i16 %bf.load, 2048
  br i1 %tobool.not, label %lor.lhs.false.return_crit_edge, label %if.end4

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end4:                                          ; preds = %lor.lhs.false
  %bf.clear = and i16 %bf.load, 2047
  %conv6 = zext i16 %bf.clear to i32
  %and = and i32 %conv6, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %bw = getelementptr inbounds %struct.ieee80211_rx_status, ptr %stat, i32 0, i32 7
  %46 = ptrtoint ptr %bw to i32
  call void @__asan_loadN_noabort(i32 %46, i32 2)
  %bf.load9 = load i16, ptr %bw, align 1
  %bf.clear10 = and i16 %bf.load9, -14337
  %bf.set = or i16 %bf.clear10, 10240
  store i16 %bf.set, ptr %bw, align 1
  br label %if.end41

if.else:                                          ; preds = %if.end4
  %and15 = and i32 %conv6, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.else22, label %if.then17

if.then17:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %bw18 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %stat, i32 0, i32 7
  %47 = ptrtoint ptr %bw18 to i32
  call void @__asan_loadN_noabort(i32 %47, i32 2)
  %bf.load19 = load i16, ptr %bw18, align 1
  %bf.clear20 = and i16 %bf.load19, -14337
  %bf.set21 = or i16 %bf.clear20, 8192
  store i16 %bf.set21, ptr %bw18, align 1
  br label %if.end41

if.else22:                                        ; preds = %if.else
  %and27 = and i32 %conv6, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  %bw35 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %stat, i32 0, i32 7
  %48 = ptrtoint ptr %bw35 to i32
  call void @__asan_loadN_noabort(i32 %48, i32 2)
  %bf.load36 = load i16, ptr %bw35, align 1
  %bf.clear37 = and i16 %bf.load36, -14337
  br i1 %tobool28.not, label %if.else34, label %if.then29

if.then29:                                        ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #7
  %bf.set33 = or i16 %bf.clear37, 6144
  %49 = ptrtoint ptr %bw35 to i32
  call void @__asan_storeN_noabort(i32 %49, i32 2)
  store i16 %bf.set33, ptr %bw35, align 1
  br label %if.end41

if.else34:                                        ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #7
  %50 = ptrtoint ptr %bw35 to i32
  call void @__asan_storeN_noabort(i32 %50, i32 2)
  store i16 %bf.clear37, ptr %bw35, align 1
  br label %if.end41

if.end41:                                         ; preds = %if.else34, %if.then29, %if.then17, %if.then8
  %enc_flags = getelementptr inbounds %struct.ieee80211_rx_status, ptr %stat, i32 0, i32 6
  %51 = ptrtoint ptr %enc_flags to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %enc_flags, align 2
  %52 = ptrtoint ptr %count to i32
  call void @__asan_loadN_noabort(i32 %52, i32 2)
  %bf.load43 = load i16, ptr %count, align 1
  %53 = trunc i16 %bf.load43 to i8
  %54 = lshr i8 %53, 2
  %55 = and i8 %54, 1
  store i8 %55, ptr %enc_flags, align 2
  %bf.load54 = load i16, ptr %count, align 1
  %56 = and i16 %bf.load54, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %56)
  %tobool58.not = icmp eq i16 %56, 0
  br i1 %tobool58.not, label %if.end41.if.end64_crit_edge, label %if.then59

if.end41.if.end64_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end64

if.then59:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  %57 = or i8 %55, 4
  %58 = ptrtoint ptr %enc_flags to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %enc_flags, align 2
  br label %if.end64

if.end64:                                         ; preds = %if.then59, %if.end41.if.end64_crit_edge
  %59 = ptrtoint ptr %rate to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %rate, align 1
  %rate_idx = getelementptr inbounds %struct.ieee80211_rx_status, ptr %stat, i32 0, i32 8
  %61 = ptrtoint ptr %rate_idx to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %rate_idx, align 1
  %62 = ptrtoint ptr %count to i32
  call void @__asan_loadN_noabort(i32 %62, i32 2)
  %bf.load67 = load i16, ptr %count, align 1
  %bf.clear68 = and i16 %bf.load67, 2047
  %conv69 = zext i16 %bf.clear68 to i32
  %and70 = and i32 %conv69, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %if.else79, label %if.then72

if.then72:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #7
  %encoding = getelementptr inbounds %struct.ieee80211_rx_status, ptr %stat, i32 0, i32 7
  %63 = ptrtoint ptr %encoding to i32
  call void @__asan_loadN_noabort(i32 %63, i32 2)
  %bf.load73 = load i16, ptr %encoding, align 1
  %bf.clear74 = and i16 %bf.load73, 16383
  %bf.set75 = or i16 %bf.clear74, -32768
  store i16 %bf.set75, ptr %encoding, align 1
  %64 = ptrtoint ptr %rate to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %rate, align 1
  %66 = and i8 %65, 15
  %67 = ptrtoint ptr %rate_idx to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %rate_idx, align 1
  %68 = load i8, ptr %rate, align 1
  %69 = ashr i8 %68, 4
  %narrow.i = add nsw i8 %69, 1
  %nss = getelementptr inbounds %struct.ieee80211_rx_status, ptr %stat, i32 0, i32 9
  %70 = ptrtoint ptr %nss to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %narrow.i, ptr %nss, align 2
  br label %return

if.else79:                                        ; preds = %if.end64
  %and84 = and i32 %conv69, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp eq i32 %and84, 0
  %encoding92 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %stat, i32 0, i32 7
  %71 = ptrtoint ptr %encoding92 to i32
  call void @__asan_loadN_noabort(i32 %71, i32 2)
  %bf.load93 = load i16, ptr %encoding92, align 1
  %bf.clear94 = and i16 %bf.load93, 16383
  br i1 %tobool85.not, label %if.else91, label %if.then86

if.then86:                                        ; preds = %if.else79
  call void @__sanitizer_cov_trace_pc() #7
  %bf.set90 = or i16 %bf.clear94, 16384
  %72 = ptrtoint ptr %encoding92 to i32
  call void @__asan_storeN_noabort(i32 %72, i32 2)
  store i16 %bf.set90, ptr %encoding92, align 1
  br label %return

if.else91:                                        ; preds = %if.else79
  call void @__sanitizer_cov_trace_pc() #7
  %73 = ptrtoint ptr %encoding92 to i32
  call void @__asan_storeN_noabort(i32 %73, i32 2)
  store i16 %bf.clear94, ptr %encoding92, align 1
  br label %return

return:                                           ; preds = %if.else91, %if.then86, %if.then72, %lor.lhs.false.return_crit_edge, %if.end.return_crit_edge, %if.end66.i, %if.end43.i.return_crit_edge
  %retval.0 = phi i32 [ -1, %lor.lhs.false.return_crit_edge ], [ -1, %if.end.return_crit_edge ], [ 0, %if.then86 ], [ 0, %if.else91 ], [ 0, %if.then72 ], [ 0, %if.end43.i.return_crit_edge ], [ 0, %if.end66.i ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../net/mac80211/airtime.c", i32 480, i32 7}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__ksymtab_ieee80211_calc_rx_airtime, !4, !"__ksymtab_ieee80211_calc_rx_airtime", i1 false, i1 false}
!4 = !{!"../net/mac80211/airtime.c", i32 504, i32 1}
!5 = !{ptr @__ksymtab_ieee80211_calc_tx_airtime, !6, !"__ksymtab_ieee80211_calc_tx_airtime", i1 false, i1 false}
!6 = !{!"../net/mac80211/airtime.c", i32 626, i32 1}
!7 = distinct !{null, !8, !"__warned", i1 false, i1 false}
!8 = !{!"../net/mac80211/airtime.c", i32 643, i32 9}
!9 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!10 = distinct !{null, !11, !"__already_done", i1 false, i1 false}
!11 = !{!"../net/mac80211/airtime.c", i32 431, i32 3}
!12 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!13 = !{!"../net/mac80211/airtime.c", i32 452, i32 3}
!14 = distinct !{null, !15, !"__already_done", i1 false, i1 false}
!15 = !{!"../net/mac80211/airtime.c", i32 456, i32 6}
!16 = !{ptr @airtime_mcs_groups, !17, !"airtime_mcs_groups", i1 false, i1 false}
!17 = !{!"../net/mac80211/airtime.c", i32 216, i32 31}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!27 = !{!"branch_weights", i32 2000, i32 1}
!28 = !{!"auto-init"}
!29 = !{i8 0, i8 2}
!30 = !{i32 0, i32 33}
