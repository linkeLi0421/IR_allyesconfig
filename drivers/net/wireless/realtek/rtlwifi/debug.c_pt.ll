; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtlwifi/debug.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtlwifi/debug.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+_rtl_dbg_print\22, \22a\22\09"
module asm "\09.weak\09__crc__rtl_dbg_print\09\09\09\09"
module asm "\09.long\09__crc__rtl_dbg_print\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__rtl_dbg_print:\09\09\09\09\09"
module asm "\09.asciz \09\22_rtl_dbg_print\22\09\09\09\09\09"
module asm "__kstrtabns__rtl_dbg_print:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+_rtl_dbg_print_data\22, \22a\22\09"
module asm "\09.weak\09__crc__rtl_dbg_print_data\09\09\09\09"
module asm "\09.long\09__crc__rtl_dbg_print_data\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__rtl_dbg_print_data:\09\09\09\09\09"
module asm "\09.asciz \09\22_rtl_dbg_print_data\22\09\09\09\09\09"
module asm "__kstrtabns__rtl_dbg_print_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+rtl_debug_add_one\22, \22a\22\09"
module asm "\09.weak\09__crc_rtl_debug_add_one\09\09\09\09"
module asm "\09.long\09__crc_rtl_debug_add_one\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtl_debug_add_one:\09\09\09\09\09"
module asm "\09.asciz \09\22rtl_debug_add_one\22\09\09\09\09\09"
module asm "__kstrtabns_rtl_debug_add_one:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+rtl_debug_remove_one\22, \22a\22\09"
module asm "\09.weak\09__crc_rtl_debug_remove_one\09\09\09\09"
module asm "\09.long\09__crc_rtl_debug_remove_one\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtl_debug_remove_one:\09\09\09\09\09"
module asm "\09.asciz \09\22rtl_debug_remove_one\22\09\09\09\09\09"
module asm "__kstrtabns_rtl_debug_remove_one:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.rtl_debugfs_priv = type { ptr, ptr, ptr, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.va_format = type { ptr, ptr }
%struct.__va_list = type { ptr }
%struct.rtl_priv = type { ptr, %struct.completion, %struct.list_head, ptr, ptr, %struct.rtl_dualmac_easy_concurrent_ctl, %struct.rtl_dmsp_ctl, %struct.rtl_locks, %struct.rtl_works, %struct.rtl_mac, %struct.rtl_hal, %struct.rtl_regulatory, %struct.rtl_rfkill, %struct.rtl_io, %struct.rtl_phy, %struct.rtl_dm, %struct.rtl_security, %struct.rtl_efuse, %struct.rtl_led_ctl, %struct.rtl_tx_report, %struct.rtl_scan_list, %struct.rtl_ps_ctl, %struct.rate_adaptive, %struct.dynamic_primary_cca, %struct.wireless_stats, %struct.rt_link_detect, %struct.false_alarm_statistics, ptr, %struct.list_head, %struct.sk_buff_head, %struct.rtl_debug, i32, ptr, ptr, i32, %struct.dig_t, %struct.ps_t, i32, i32, i32, i32, i8, i8, ptr, i32, i8, i8, [5 x i8], %struct.proxim, %struct.bt_coexist_info, i8, %struct.wiphy_wowlan_support, [0 x i8] }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rtl_dualmac_easy_concurrent_ctl = type { i32, i8, i8, i8, i8 }
%struct.rtl_dmsp_ctl = type { i8, i8, i8, i8, i32, i8, i8, i8, i8, i32 }
%struct.rtl_locks = type { %struct.mutex, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.rtl_works = type { ptr, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.tasklet_struct, %struct.tasklet_struct, ptr, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.work_struct }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.129, i32 }
%union.anon.129 = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rtl_mac = type { [6 x i8], i8, i8, i32, i32, [6 x %struct.ieee80211_supported_band], ptr, ptr, i32, [9 x %struct.rtl_tid_data], i32, i32, i32, i8, i8, i8, i32, i16, i16, i16, i8, i8, i8, [9 x %struct.sk_buff_head], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [6 x i8], i32, [16 x i8], i32, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i64, i8, i8, i16, i8, i32, i8, i8, i8, i8, [5 x %struct.ieee80211_tx_queue_params], [4 x %struct.rtl_qos_parameters], i64, i64, i32, i32 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.rtl_tid_data = type { %struct.rtl_ht_agg }
%struct.rtl_ht_agg = type { i16, i16, i16, i64, i32, i8, i8 }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
%struct.rtl_qos_parameters = type { i16, i16, i8, i8, i16 }
%struct.rtl_hal = type { ptr, i8, i8, i8, i8, i8, i8, i8, %struct.bt_coexist_8723, i32, i16, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, ptr, i16, i16, i8, i8, i8, i8, i8, i8, i16, i32, i8, i8, %struct.p2p_ps_offload_t, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i64, i32, ptr, i8, i8, i8 }
%struct.bt_coexist_8723 = type { i32, i32, i32, i32, i8, i8, i8, i32, i8, i8, i8, %struct.btdm_8723 }
%struct.btdm_8723 = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [5 x i8], i8, i32, i32, i32, i8, i32, i32, i32, i32, i8, i8 }
%struct.p2p_ps_offload_t = type { i8 }
%struct.rtl_regulatory = type { [2 x i8], i16, i16, i32, i16, i16, i16, ptr }
%struct.rtl_rfkill = type { i8 }
%struct.rtl_io = type { ptr, %struct.mutex, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rtl_phy = type { [4 x %struct.bb_reg_def], %struct.init_gain, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i16, i32, i32, i32, [16 x i32], [4 x i32], [10 x i32], i8, [4 x i8], i8, i8, [46 x %struct.iqk_matrix_regs], i8, i8, i8, i8, [13 x [16 x i32]], [13 x [16 x i32]], [2 x [4 x [4 x [84 x i32]]]], [4 x [4 x [6 x i8]]], [4 x [4 x [5 x i8]]], [4 x i8], i8, i8, i8, i8, [4 x [4 x [6 x [14 x [4 x i8]]]]], [4 x [4 x [6 x [49 x [4 x i8]]]]], [2 x i32], i8, [2 x i32], i32, i8, i32, i8, [10 x %struct.phy_parameters], i16, i8, i32 }
%struct.bb_reg_def = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.init_gain = type { i8, i8, i8, i8, i8 }
%struct.iqk_matrix_regs = type { i8, [1 x [8 x i32]] }
%struct.phy_parameters = type { i16, ptr }
%struct.rtl_dm = type { i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, i8, [6 x i8], i8, i8, i8, i8, i8, [8 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, i8, [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], i8, i8, i8, i8, %struct.dm_phy_dbg_info, i8, i8, i8, [2 x i32], i32, i32, i8, i32, i32, i8, [4 x i8], i8, [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8, %struct.fast_ant_training, i8, i8, i32, i32, i32, i32, i8, ptr, i8, i64, i64 }
%struct.dm_phy_dbg_info = type { [4 x i8], i64, i64, i64, i16, i16, [4 x i32] }
%struct.fast_ant_training = type { [6 x i8], i8, i8, i8, [7 x i32], [7 x i32], [7 x i32], i8, i32, [33 x i8], [33 x i8], [33 x i8], [33 x i32], [33 x i32], [33 x i32], [33 x i32], i8, i8 }
%struct.rtl_security = type { i8, i8, i8, i32, i32, i32, [32 x [6 x i8]], [5 x [61 x i8]], [5 x i8], ptr }
%struct.rtl_efuse = type { ptr, i8, i8, i16, [2 x [512 x i8]], i16, i8, i8, i8, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, [6 x i8], i8, i8, i8, i8, i8, [2 x i8], [3 x [2 x i8]], [12 x i8], [12 x i8], [4 x [3 x i8]], [4 x [12 x i8]], [4 x [12 x i8]], [2 x i8], i8, i8, [2 x [3 x i8]], [2 x [59 x i8]], [2 x [59 x i8]], [4 x [14 x i8]], [4 x [59 x i8]], [4 x [59 x i8]], [4 x [59 x i8]], [4 x [59 x i8]], [4 x [59 x i8]], [4 x [59 x i8]], [4 x [59 x i8]], [4 x [7 x i8]], [4 x [4 x i8]], [4 x [4 x i8]], [4 x [4 x i8]], [4 x [4 x i8]], i8, i16, [3 x i8], i8, i8, [2 x i8], i16, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.rtl_led_ctl = type { i8, %struct.rtl_led, %struct.rtl_led }
%struct.rtl_led = type { ptr, i32, i8 }
%struct.rtl_tx_report = type { %struct.atomic_t, i16, i32, i16, %struct.sk_buff_head }
%struct.rtl_scan_list = type { i32, %struct.list_head }
%struct.rtl_ps_ctl = type { i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i32, i32, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.rtl_p2p_ps_info, i8, i8, i8, i8, i8, i32 }
%struct.rtl_p2p_ps_info = type { i32, i32, i8, i8, i8, i8, [2 x i8], [2 x i32], [2 x i32], [2 x i32] }
%struct.rate_adaptive = type { i8, i8, i16, i32, i32, i8, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i8, i8, i8, i8, i8 }
%struct.dynamic_primary_cca = type { i8, i8, i8, i8, i8, i8, i8 }
%struct.wireless_stats = type { i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, [4 x i32], i32, i32, i32, i32, i32, i32, [4 x i8], [4 x i8], [2 x i8], [4 x i16], [4 x i16], %struct.rt_smooth_data, %struct.rt_smooth_data }
%struct.rt_smooth_data = type { [100 x i32], i32, i32, i32 }
%struct.rt_link_detect = type { i32, i32, [4 x i32], [4 x i32], i32, i32, i8, i8, i8, i8, i8, [9 x [4 x i32]], [9 x i32], [9 x i8] }
%struct.false_alarm_statistics = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
%struct.rtl_debug = type { ptr, [20 x i8] }
%struct.dig_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32 }
%struct.ps_t = type { i8, i8, i8, i8, i8, i32 }
%struct.proxim = type { i8, ptr, ptr, ptr }
%struct.bt_coexist_info = type { ptr, %struct.rtl_btc_info, ptr, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.rtl_btc_info = type { i8, i8, i8, i8, i8, i8, i32 }
%struct.wiphy_wowlan_support = type { i32, i32, i32, i32, i32, i32, ptr }
%struct.rtl_hal_cfg = type { i8, i8, ptr, ptr, ptr, ptr, ptr, i32, [91 x i32] }
%struct.rtl_mod_params = type { i64, i8, i32, i8, i8, i8, i8, i8, i32, i8, i8, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.80, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.30 }
%struct.llist_node = type { ptr }
%union.anon.30 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.32 }
%union.anon.32 = type { %struct.anon.33 }
%struct.anon.33 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.80 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.anon.128 = type { i32, i16 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.93, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.94, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.95, ptr, %struct.address_space, %struct.list_head, %union.anon.98, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.93 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.94 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.95 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.98 = type { ptr }
%struct.rtl_hal_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rtl_btc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon.1, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.1 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@_rtl_dbg_print._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 24, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\016rtlwifi: %pV\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"_rtl_dbg_print\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/wireless/realtek/rtlwifi/debug.c\00", [51 x i8] zeroinitializer }, align 32
@_rtl_dbg_print._entry_ptr = internal global ptr @_rtl_dbg_print._entry, section ".printk_index", align 4
@__kstrtab__rtl_dbg_print = external dso_local constant [0 x i8], align 1
@__kstrtabns__rtl_dbg_print = external dso_local constant [0 x i8], align 1
@__ksymtab__rtl_dbg_print = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_rtl_dbg_print to i32), ptr @__kstrtab__rtl_dbg_print, ptr @__kstrtabns__rtl_dbg_print }, section "___ksymtab_gpl+_rtl_dbg_print", align 4
@_rtl_dbg_print_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 38, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016rtlwifi: In process \22%s\22 (pid %i): %s\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"_rtl_dbg_print_data\00", [44 x i8] zeroinitializer }, align 32
@_rtl_dbg_print_data._entry_ptr = internal global ptr @_rtl_dbg_print_data._entry, section ".printk_index", align 4
@_rtl_dbg_print_data.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.4, ptr @.str.2, ptr @.str.6, i8 0, i8 10, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rtlwifi\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@__kstrtab__rtl_dbg_print_data = external dso_local constant [0 x i8], align 1
@__kstrtabns__rtl_dbg_print_data = external dso_local constant [0 x i8], align 1
@__ksymtab__rtl_dbg_print_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_rtl_dbg_print_data to i32), ptr @__kstrtab__rtl_dbg_print_data, ptr @__kstrtabns__rtl_dbg_print_data }, section "___ksymtab_gpl+_rtl_dbg_print_data", align 4
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pMF\00", [27 x i8] zeroinitializer }, align 32
@debugfs_topdir = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@rtl_debug_priv_mac_0 = internal global { %struct.rtl_debugfs_priv, [16 x i8] } { %struct.rtl_debugfs_priv { ptr null, ptr @rtl_debug_get_mac_page, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mac_0\00", [26 x i8] zeroinitializer }, align 32
@file_ops_common = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @dl_debug_open_common, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@rtl_debug_priv_mac_1 = internal global { %struct.rtl_debugfs_priv, [16 x i8] } { %struct.rtl_debugfs_priv { ptr null, ptr @rtl_debug_get_mac_page, ptr null, i32 256 }, [16 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mac_1\00", [26 x i8] zeroinitializer }, align 32
@rtl_debug_priv_mac_2 = internal global { %struct.rtl_debugfs_priv, [16 x i8] } { %struct.rtl_debugfs_priv { ptr null, ptr @rtl_debug_get_mac_page, ptr null, i32 512 }, [16 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mac_2\00", [26 x i8] zeroinitializer }, align 32
@rtl_debug_priv_mac_3 = internal global { %struct.rtl_debugfs_priv, [16 x i8] } { %struct.rtl_debugfs_priv { ptr null, ptr @rtl_debug_get_mac_page, ptr null, i32 768 }, [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mac_3\00", [26 x i8] zeroinitializer }, align 32
@rtl_debug_priv_mac_4 = internal global { %struct.rtl_debugfs_priv, [16 x i8] } { %struct.rtl_debugfs_priv { ptr null, ptr @rtl_debug_get_mac_page, ptr null, i32 1024 }, [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mac_4\00", [26 x i8] zeroinitializer }, align 32
@rtl_debug_priv_mac_5 = internal global { %struct.rtl_debugfs_priv, [16 x i8] } { %struct.rtl_debugfs_priv { ptr null, ptr @rtl_debug_get_mac_page, ptr null, i32 1280 }, [16 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mac_5\00", [26 x i8] zeroinitializer }, align 32
@rtl_debug_priv_mac_6 = internal global { %struct.rtl_debugfs_priv, [16 x i8] } { %struct.rtl_debugfs_priv { ptr null, ptr @rtl_debug_get_mac_page, ptr null, i32 1536 }, [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mac_6\00", [26 x i8] zeroinitializer }, align 32
@rtl_debug_priv_mac_7 = internal global { %struct.rtl_debugfs_priv, [16 x i8] } { %struct.rtl_debugfs_priv { ptr null, ptr @rtl_debug_get_mac_page, ptr null, i32 1792 }, [16 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mac_7\00", [26 x i8] zeroinitializer }, align 32
@rtl_debug_priv_bb_8 = internal global { %struct.rtl_debugfs_priv, [16 x i8] } { %struct.rtl_debugfs_priv { ptr null, ptr @rtl_debug_get_bb_page, ptr null, i32 2048 }, [16 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bb_8\00", [27 x i8] zeroinitializer }, align 32
@rtl_debug_priv_bb_9 = internal global { %struct.rtl_debugfs_priv, [16 x i8] } { %struct.rtl_debugfs_priv { ptr null, ptr @rtl_debug_get_bb_page, ptr null, i32 2304 }, [16 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bb_9\00", [27 x i8] zeroinitializer }, align 32
@rtl_debug_priv_bb_a = internal global { %struct.rtl_debugfs_priv, [16 x i8] } { %struct.rtl_debugfs_priv { ptr null, ptr @rtl_debug_get_bb_page, ptr null, i32 2560 }, [16 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bb_a\00", [27 x i8] zeroinitializer }, align 32
@rtl_debug_priv_bb_b = internal global { %struct.rtl_debugfs_priv, [16 x i8] } { %struct.rtl_debugfs_priv { ptr null, ptr @rtl_debug_get_bb_page, ptr null, i32 2816 }, [16 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bb_b\00", [27 x i8] zeroinitializer }, align 32
@rtl_debug_priv_bb_c = internal global { %struct.rtl_debugfs_priv, [16 x i8] } { %struct.rtl_debugfs_priv { ptr null, ptr @rtl_debug_get_bb_page, ptr null, i32 3072 }, [16 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bb_c\00", [27 x i8] zeroinitializer }, align 32
@rtl_debug_priv_bb_d = internal global { %struct.rtl_debugfs_priv, [16 x i8] } { %struct.rtl_debugfs_priv { ptr null, ptr @rtl_debug_get_bb_page, ptr null, i32 3328 }, [16 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bb_d\00", [27 x i8] zeroinitializer }, align 32
@rtl_debug_priv_bb_e = internal global { %struct.rtl_debugfs_priv, [16 x i8] } { %struct.rtl_debugfs_priv { ptr null, ptr @rtl_debug_get_bb_page, ptr null, i32 3584 }, [16 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bb_e\00", [27 x i8] zeroinitializer }, align 32
@rtl_debug_priv_bb_f = internal global { %struct.rtl_debugfs_priv, [16 x i8] } { %struct.rtl_debugfs_priv { ptr null, ptr @rtl_debug_get_bb_page, ptr null, i32 3840 }, [16 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bb_f\00", [27 x i8] zeroinitializer }, align 32
@rtl_debug_priv_mac_10 = internal global { %struct.rtl_debugfs_priv, [16 x i8] } { %struct.rtl_debugfs_priv { ptr null, ptr @rtl_debug_get_mac_page, ptr null, i32 4096 }, [16 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mac_10\00", [25 x i8] zeroinitializer }, align 32
@rtl_debug_priv_mac_11 = internal global { %struct.rtl_debugfs_priv, [16 x i8] } { %struct.rtl_debugfs_priv { ptr null, ptr @rtl_debug_get_mac_page, ptr null, i32 4352 }, [16 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mac_11\00", [25 x i8] zeroinitializer }, align 32
@rtl_debug_priv_mac_12 = internal global { %struct.rtl_debugfs_priv, [16 x i8] } { %struct.rtl_debugfs_priv { ptr null, ptr @rtl_debug_get_mac_page, ptr null, i32 4608 }, [16 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mac_12\00", [25 x i8] zeroinitializer }, align 32
@rtl_debug_priv_mac_13 = internal global { %struct.rtl_debugfs_priv, [16 x i8] } { %struct.rtl_debugfs_priv { ptr null, ptr @rtl_debug_get_mac_page, ptr null, i32 4864 }, [16 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mac_13\00", [25 x i8] zeroinitializer }, align 32
@rtl_debug_priv_mac_14 = internal global { %struct.rtl_debugfs_priv, [16 x i8] } { %struct.rtl_debugfs_priv { ptr null, ptr @rtl_debug_get_mac_page, ptr null, i32 5120 }, [16 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mac_14\00", [25 x i8] zeroinitializer }, align 32
@rtl_debug_priv_mac_15 = internal global { %struct.rtl_debugfs_priv, [16 x i8] } { %struct.rtl_debugfs_priv { ptr null, ptr @rtl_debug_get_mac_page, ptr null, i32 5376 }, [16 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mac_15\00", [25 x i8] zeroinitializer }, align 32
@rtl_debug_priv_mac_16 = internal global { %struct.rtl_debugfs_priv, [16 x i8] } { %struct.rtl_debugfs_priv { ptr null, ptr @rtl_debug_get_mac_page, ptr null, i32 5632 }, [16 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mac_16\00", [25 x i8] zeroinitializer }, align 32
@rtl_debug_priv_mac_17 = internal global { %struct.rtl_debugfs_priv, [16 x i8] } { %struct.rtl_debugfs_priv { ptr null, ptr @rtl_debug_get_mac_page, ptr null, i32 5888 }, [16 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mac_17\00", [25 x i8] zeroinitializer }, align 32
@rtl_debug_priv_bb_18 = internal global { %struct.rtl_debugfs_priv, [16 x i8] } { %struct.rtl_debugfs_priv { ptr null, ptr @rtl_debug_get_bb_page, ptr null, i32 6144 }, [16 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"bb_18\00", [26 x i8] zeroinitializer }, align 32
@rtl_debug_priv_bb_19 = internal global { %struct.rtl_debugfs_priv, [16 x i8] } { %struct.rtl_debugfs_priv { ptr null, ptr @rtl_debug_get_bb_page, ptr null, i32 6400 }, [16 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"bb_19\00", [26 x i8] zeroinitializer }, align 32
@rtl_debug_priv_bb_1a = internal global { %struct.rtl_debugfs_priv, [16 x i8] } { %struct.rtl_debugfs_priv { ptr null, ptr @rtl_debug_get_bb_page, ptr null, i32 6656 }, [16 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"bb_1a\00", [26 x i8] zeroinitializer }, align 32
@rtl_debug_priv_bb_1b = internal global { %struct.rtl_debugfs_priv, [16 x i8] } { %struct.rtl_debugfs_priv { ptr null, ptr @rtl_debug_get_bb_page, ptr null, i32 6912 }, [16 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"bb_1b\00", [26 x i8] zeroinitializer }, align 32
@rtl_debug_priv_bb_1c = internal global { %struct.rtl_debugfs_priv, [16 x i8] } { %struct.rtl_debugfs_priv { ptr null, ptr @rtl_debug_get_bb_page, ptr null, i32 7168 }, [16 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"bb_1c\00", [26 x i8] zeroinitializer }, align 32
@rtl_debug_priv_bb_1d = internal global { %struct.rtl_debugfs_priv, [16 x i8] } { %struct.rtl_debugfs_priv { ptr null, ptr @rtl_debug_get_bb_page, ptr null, i32 7424 }, [16 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"bb_1d\00", [26 x i8] zeroinitializer }, align 32
@rtl_debug_priv_bb_1e = internal global { %struct.rtl_debugfs_priv, [16 x i8] } { %struct.rtl_debugfs_priv { ptr null, ptr @rtl_debug_get_bb_page, ptr null, i32 7680 }, [16 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"bb_1e\00", [26 x i8] zeroinitializer }, align 32
@rtl_debug_priv_bb_1f = internal global { %struct.rtl_debugfs_priv, [16 x i8] } { %struct.rtl_debugfs_priv { ptr null, ptr @rtl_debug_get_bb_page, ptr null, i32 7936 }, [16 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"bb_1f\00", [26 x i8] zeroinitializer }, align 32
@rtl_debug_priv_rf_a = internal global { %struct.rtl_debugfs_priv, [16 x i8] } { %struct.rtl_debugfs_priv { ptr null, ptr @rtl_debug_get_reg_rf, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rf_a\00", [27 x i8] zeroinitializer }, align 32
@rtl_debug_priv_rf_b = internal global { %struct.rtl_debugfs_priv, [16 x i8] } { %struct.rtl_debugfs_priv { ptr null, ptr @rtl_debug_get_reg_rf, ptr null, i32 1 }, [16 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rf_b\00", [27 x i8] zeroinitializer }, align 32
@rtl_debug_priv_cam_1 = internal global { %struct.rtl_debugfs_priv, [16 x i8] } { %struct.rtl_debugfs_priv { ptr null, ptr @rtl_debug_get_cam_register, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"cam_1\00", [26 x i8] zeroinitializer }, align 32
@rtl_debug_priv_cam_2 = internal global { %struct.rtl_debugfs_priv, [16 x i8] } { %struct.rtl_debugfs_priv { ptr null, ptr @rtl_debug_get_cam_register, ptr null, i32 11 }, [16 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"cam_2\00", [26 x i8] zeroinitializer }, align 32
@rtl_debug_priv_cam_3 = internal global { %struct.rtl_debugfs_priv, [16 x i8] } { %struct.rtl_debugfs_priv { ptr null, ptr @rtl_debug_get_cam_register, ptr null, i32 22 }, [16 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"cam_3\00", [26 x i8] zeroinitializer }, align 32
@rtl_debug_priv_btcoex = internal global { %struct.rtl_debugfs_priv, [16 x i8] } { %struct.rtl_debugfs_priv { ptr null, ptr @rtl_debug_get_btcoex, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"btcoex\00", [25 x i8] zeroinitializer }, align 32
@rtl_debug_priv_write_reg = internal global { %struct.rtl_debugfs_priv, [16 x i8] } { %struct.rtl_debugfs_priv { ptr null, ptr null, ptr @rtl_debugfs_set_write_reg, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"write_reg\00", [22 x i8] zeroinitializer }, align 32
@file_ops_common_write = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr null, ptr @rtl_debugfs_common_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr @rtl_debugfs_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@rtl_debug_priv_write_h2c = internal global { %struct.rtl_debugfs_priv, [16 x i8] } { %struct.rtl_debugfs_priv { ptr null, ptr null, ptr @rtl_debugfs_set_write_h2c, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"write_h2c\00", [22 x i8] zeroinitializer }, align 32
@rtl_debug_priv_write_rfreg = internal global { %struct.rtl_debugfs_priv, [16 x i8] } { %struct.rtl_debugfs_priv { ptr null, ptr null, ptr @rtl_debugfs_set_write_rfreg, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"write_rfreg\00", [20 x i8] zeroinitializer }, align 32
@__kstrtab_rtl_debug_add_one = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtl_debug_add_one = external dso_local constant [0 x i8], align 1
@__ksymtab_rtl_debug_add_one = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtl_debug_add_one to i32), ptr @__kstrtab_rtl_debug_add_one, ptr @__kstrtabns_rtl_debug_add_one }, section "___ksymtab_gpl+rtl_debug_add_one", align 4
@__kstrtab_rtl_debug_remove_one = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtl_debug_remove_one = external dso_local constant [0 x i8], align 1
@__ksymtab_rtl_debug_remove_one = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtl_debug_remove_one to i32), ptr @__kstrtab_rtl_debug_remove_one, ptr @__kstrtabns_rtl_debug_remove_one }, section "___ksymtab_gpl+rtl_debug_remove_one", align 4
@.str.50 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\0A%8.8x  \00", [23 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%8.8x    \00", [22 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\0APATH(%d)\00", [22 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\0A#################### SECURITY CAM (%d-%d) ##################\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\0AD:  %2x > \00", [20 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%8.8x \00", [25 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%x %x %x\00", [23 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%X %X %X %X %X %X %X %X\00", [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%X %X %X %X\00", [20 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Format is <path> <addr> <mask> <data>\0A\00", [57 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 24, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 37, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 39, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 441, i32 42 }
@___asan_gen_.97 = private unnamed_addr constant [15 x i8] c"debugfs_topdir\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 53, i32 23 }
@___asan_gen_.100 = private unnamed_addr constant [21 x i8] c"rtl_debug_priv_mac_0\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 98, i32 1 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 448, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant [16 x i8] c"file_ops_common\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 67, i32 37 }
@___asan_gen_.109 = private unnamed_addr constant [21 x i8] c"rtl_debug_priv_mac_1\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 99, i32 1 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 449, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant [21 x i8] c"rtl_debug_priv_mac_2\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 100, i32 1 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 450, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant [21 x i8] c"rtl_debug_priv_mac_3\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 101, i32 1 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 451, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant [21 x i8] c"rtl_debug_priv_mac_4\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 102, i32 1 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 452, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant [21 x i8] c"rtl_debug_priv_mac_5\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 103, i32 1 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 453, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant [21 x i8] c"rtl_debug_priv_mac_6\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 104, i32 1 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 454, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant [21 x i8] c"rtl_debug_priv_mac_7\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 105, i32 1 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 455, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant [20 x i8] c"rtl_debug_priv_bb_8\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 140, i32 1 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 456, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant [20 x i8] c"rtl_debug_priv_bb_9\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 141, i32 1 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 457, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant [20 x i8] c"rtl_debug_priv_bb_a\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 142, i32 1 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 458, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant [20 x i8] c"rtl_debug_priv_bb_b\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 143, i32 1 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 459, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant [20 x i8] c"rtl_debug_priv_bb_c\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 144, i32 1 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 460, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant [20 x i8] c"rtl_debug_priv_bb_d\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 145, i32 1 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 461, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant [20 x i8] c"rtl_debug_priv_bb_e\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 146, i32 1 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 462, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant [20 x i8] c"rtl_debug_priv_bb_f\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 147, i32 1 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 463, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant [22 x i8] c"rtl_debug_priv_mac_10\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 106, i32 1 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 464, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant [22 x i8] c"rtl_debug_priv_mac_11\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 107, i32 1 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 465, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant [22 x i8] c"rtl_debug_priv_mac_12\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 108, i32 1 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 466, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant [22 x i8] c"rtl_debug_priv_mac_13\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 109, i32 1 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 467, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant [22 x i8] c"rtl_debug_priv_mac_14\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 110, i32 1 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 468, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant [22 x i8] c"rtl_debug_priv_mac_15\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 111, i32 1 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 469, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant [22 x i8] c"rtl_debug_priv_mac_16\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 112, i32 1 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 470, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant [22 x i8] c"rtl_debug_priv_mac_17\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 113, i32 1 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 471, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant [21 x i8] c"rtl_debug_priv_bb_18\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 148, i32 1 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 472, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant [21 x i8] c"rtl_debug_priv_bb_19\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 149, i32 1 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 473, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant [21 x i8] c"rtl_debug_priv_bb_1a\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 150, i32 1 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 474, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant [21 x i8] c"rtl_debug_priv_bb_1b\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 151, i32 1 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 475, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant [21 x i8] c"rtl_debug_priv_bb_1c\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 152, i32 1 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 476, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant [21 x i8] c"rtl_debug_priv_bb_1d\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 153, i32 1 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 477, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant [21 x i8] c"rtl_debug_priv_bb_1e\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 154, i32 1 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 478, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant [21 x i8] c"rtl_debug_priv_bb_1f\00", align 1
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 155, i32 1 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 479, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant [20 x i8] c"rtl_debug_priv_rf_a\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 187, i32 1 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 480, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant [20 x i8] c"rtl_debug_priv_rf_b\00", align 1
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 188, i32 1 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 481, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant [21 x i8] c"rtl_debug_priv_cam_1\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 242, i32 1 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 483, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant [21 x i8] c"rtl_debug_priv_cam_2\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 243, i32 1 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 484, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant [21 x i8] c"rtl_debug_priv_cam_3\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 244, i32 1 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 485, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant [22 x i8] c"rtl_debug_priv_btcoex\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 260, i32 32 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 487, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant [25 x i8] c"rtl_debug_priv_write_reg\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 310, i32 32 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 489, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant [22 x i8] c"file_ops_common_write\00", align 1
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 415, i32 37 }
@___asan_gen_.340 = private unnamed_addr constant [25 x i8] c"rtl_debug_priv_write_h2c\00", align 1
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 356, i32 32 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 490, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant [27 x i8] c"rtl_debug_priv_write_rfreg\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 397, i32 32 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 491, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 83, i32 17 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 85, i32 18 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 88, i32 14 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 169, i32 16 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 204, i32 6 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 208, i32 17 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 229, i32 18 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 287, i32 20 }
@___asan_gen_.377 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 156, i32 2 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 337, i32 24 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 383, i32 20 }
@___asan_gen_.385 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.386 = private constant [48 x i8] c"../drivers/net/wireless/realtek/rtlwifi/debug.c\00", align 1
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 387, i32 3 }
@llvm.compiler.used = appending global [114 x ptr] [ptr @__ksymtab__rtl_dbg_print, ptr @__ksymtab__rtl_dbg_print_data, ptr @__ksymtab_rtl_debug_add_one, ptr @__ksymtab_rtl_debug_remove_one, ptr @_rtl_dbg_print._entry, ptr @_rtl_dbg_print._entry_ptr, ptr @_rtl_dbg_print_data._entry, ptr @_rtl_dbg_print_data._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @debugfs_topdir, ptr @rtl_debug_priv_mac_0, ptr @.str.9, ptr @file_ops_common, ptr @rtl_debug_priv_mac_1, ptr @.str.10, ptr @rtl_debug_priv_mac_2, ptr @.str.11, ptr @rtl_debug_priv_mac_3, ptr @.str.12, ptr @rtl_debug_priv_mac_4, ptr @.str.13, ptr @rtl_debug_priv_mac_5, ptr @.str.14, ptr @rtl_debug_priv_mac_6, ptr @.str.15, ptr @rtl_debug_priv_mac_7, ptr @.str.16, ptr @rtl_debug_priv_bb_8, ptr @.str.17, ptr @rtl_debug_priv_bb_9, ptr @.str.18, ptr @rtl_debug_priv_bb_a, ptr @.str.19, ptr @rtl_debug_priv_bb_b, ptr @.str.20, ptr @rtl_debug_priv_bb_c, ptr @.str.21, ptr @rtl_debug_priv_bb_d, ptr @.str.22, ptr @rtl_debug_priv_bb_e, ptr @.str.23, ptr @rtl_debug_priv_bb_f, ptr @.str.24, ptr @rtl_debug_priv_mac_10, ptr @.str.25, ptr @rtl_debug_priv_mac_11, ptr @.str.26, ptr @rtl_debug_priv_mac_12, ptr @.str.27, ptr @rtl_debug_priv_mac_13, ptr @.str.28, ptr @rtl_debug_priv_mac_14, ptr @.str.29, ptr @rtl_debug_priv_mac_15, ptr @.str.30, ptr @rtl_debug_priv_mac_16, ptr @.str.31, ptr @rtl_debug_priv_mac_17, ptr @.str.32, ptr @rtl_debug_priv_bb_18, ptr @.str.33, ptr @rtl_debug_priv_bb_19, ptr @.str.34, ptr @rtl_debug_priv_bb_1a, ptr @.str.35, ptr @rtl_debug_priv_bb_1b, ptr @.str.36, ptr @rtl_debug_priv_bb_1c, ptr @.str.37, ptr @rtl_debug_priv_bb_1d, ptr @.str.38, ptr @rtl_debug_priv_bb_1e, ptr @.str.39, ptr @rtl_debug_priv_bb_1f, ptr @.str.40, ptr @rtl_debug_priv_rf_a, ptr @.str.41, ptr @rtl_debug_priv_rf_b, ptr @.str.42, ptr @rtl_debug_priv_cam_1, ptr @.str.43, ptr @rtl_debug_priv_cam_2, ptr @.str.44, ptr @rtl_debug_priv_cam_3, ptr @.str.45, ptr @rtl_debug_priv_btcoex, ptr @.str.46, ptr @rtl_debug_priv_write_reg, ptr @.str.47, ptr @file_ops_common_write, ptr @rtl_debug_priv_write_h2c, ptr @.str.48, ptr @rtl_debug_priv_write_rfreg, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63], section "llvm.metadata"
@0 = internal global [108 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl_dbg_print._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl_dbg_print_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debugfs_topdir to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl_debug_priv_mac_0 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @file_ops_common to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl_debug_priv_mac_1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl_debug_priv_mac_2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl_debug_priv_mac_3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl_debug_priv_mac_4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl_debug_priv_mac_5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl_debug_priv_mac_6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl_debug_priv_mac_7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl_debug_priv_bb_8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl_debug_priv_bb_9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl_debug_priv_bb_a to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl_debug_priv_bb_b to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl_debug_priv_bb_c to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl_debug_priv_bb_d to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl_debug_priv_bb_e to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl_debug_priv_bb_f to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl_debug_priv_mac_10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl_debug_priv_mac_11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl_debug_priv_mac_12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl_debug_priv_mac_13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl_debug_priv_mac_14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl_debug_priv_mac_15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl_debug_priv_mac_16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl_debug_priv_mac_17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl_debug_priv_bb_18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl_debug_priv_bb_19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl_debug_priv_bb_1a to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl_debug_priv_bb_1b to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl_debug_priv_bb_1c to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl_debug_priv_bb_1d to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl_debug_priv_bb_1e to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl_debug_priv_bb_1f to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl_debug_priv_rf_a to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl_debug_priv_rf_b to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl_debug_priv_cam_1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl_debug_priv_cam_2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl_debug_priv_cam_3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl_debug_priv_btcoex to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl_debug_priv_write_reg to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @file_ops_common_write to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl_debug_priv_write_h2c to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl_debug_priv_write_rfreg to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_rtl_dbg_print(ptr nocapture noundef readonly %rtlpriv, i64 noundef %comp, i32 noundef %level, ptr noundef %fmt, ...) #0 align 64 {
entry:
  %vaf = alloca %struct.va_format, align 4
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cfg = getelementptr inbounds %struct.rtl_priv, ptr %rtlpriv, i32 0, i32 32
  %0 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfg, align 8
  %mod_params = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %mod_params to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mod_params, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %3, align 8
  %and = and i64 %5, %comp
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.rhs:                                         ; preds = %entry
  %debug_level = getelementptr inbounds %struct.rtl_mod_params, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %debug_level to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %debug_level, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %level)
  %cmp.not = icmp slt i32 %7, %level
  br i1 %cmp.not, label %land.rhs.if.end_crit_edge, label %if.then, !prof !235

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vaf) #9
  %8 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #9
  %9 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !236
  call void @llvm.va_start(ptr nonnull %args)
  %10 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %fmt, ptr %vaf, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %args, ptr %8, align 4
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull %vaf) #12
  call void @llvm.va_end(ptr nonnull %args)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vaf) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_rtl_dbg_print_data(ptr nocapture noundef readonly %rtlpriv, i64 noundef %comp, i32 noundef %level, ptr noundef %titlestring, ptr noundef %hexdata, i32 noundef %hexdatalen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cfg = getelementptr inbounds %struct.rtl_priv, ptr %rtlpriv, i32 0, i32 32
  %0 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfg, align 8
  %mod_params = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %mod_params to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mod_params, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %3, align 8
  %and = and i64 %5, %comp
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.if.end20_crit_edge, label %land.rhs

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

land.rhs:                                         ; preds = %entry
  %debug_level = getelementptr inbounds %struct.rtl_mod_params, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %debug_level to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %debug_level, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %level)
  %cmp.not = icmp slt i32 %7, %level
  br i1 %cmp.not, label %land.rhs.if.end20_crit_edge, label %do.end, !prof !235

land.rhs.if.end20_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  %8 = tail call i32 @llvm.read_register.i32(metadata !225) #9
  %and.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 101
  %pid = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 68
  %12 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pid, align 8
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %comm, i32 noundef %13, ptr noundef %titlestring) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_rtl_dbg_print_data.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_rtl_dbg_print_data, %if.then18)) #9
          to label %if.end20 [label %if.then18], !srcloc !237

if.then18:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @print_hex_dump(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.6, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef %hexdata, i32 noundef %hexdatalen, i1 noundef zeroext true) #9
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %do.end, %land.rhs.if.end20_crit_edge, %entry.if.end20_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl_debug_add_one(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %dbg = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 30
  %debugfs_name = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 30, i32 1
  %dev_addr = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 19
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %debugfs_name, i32 noundef 18, ptr noundef nonnull @.str.8, ptr noundef %dev_addr)
  %2 = load ptr, ptr @debugfs_topdir, align 4
  %call6 = tail call ptr @debugfs_create_dir(ptr noundef %debugfs_name, ptr noundef %2) #9
  %3 = ptrtoint ptr %dbg to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call6, ptr %dbg, align 4
  store ptr %1, ptr @rtl_debug_priv_mac_0, align 4
  %call10 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.9, i16 noundef zeroext -32476, ptr noundef %call6, ptr noundef nonnull @rtl_debug_priv_mac_0, ptr noundef nonnull @file_ops_common) #9
  store ptr %1, ptr @rtl_debug_priv_mac_1, align 4
  %call12 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.10, i16 noundef zeroext -32476, ptr noundef %call6, ptr noundef nonnull @rtl_debug_priv_mac_1, ptr noundef nonnull @file_ops_common) #9
  store ptr %1, ptr @rtl_debug_priv_mac_2, align 4
  %call16 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.11, i16 noundef zeroext -32476, ptr noundef %call6, ptr noundef nonnull @rtl_debug_priv_mac_2, ptr noundef nonnull @file_ops_common) #9
  store ptr %1, ptr @rtl_debug_priv_mac_3, align 4
  %call20 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.12, i16 noundef zeroext -32476, ptr noundef %call6, ptr noundef nonnull @rtl_debug_priv_mac_3, ptr noundef nonnull @file_ops_common) #9
  store ptr %1, ptr @rtl_debug_priv_mac_4, align 4
  %call24 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.13, i16 noundef zeroext -32476, ptr noundef %call6, ptr noundef nonnull @rtl_debug_priv_mac_4, ptr noundef nonnull @file_ops_common) #9
  store ptr %1, ptr @rtl_debug_priv_mac_5, align 4
  %call28 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.14, i16 noundef zeroext -32476, ptr noundef %call6, ptr noundef nonnull @rtl_debug_priv_mac_5, ptr noundef nonnull @file_ops_common) #9
  store ptr %1, ptr @rtl_debug_priv_mac_6, align 4
  %call32 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.15, i16 noundef zeroext -32476, ptr noundef %call6, ptr noundef nonnull @rtl_debug_priv_mac_6, ptr noundef nonnull @file_ops_common) #9
  store ptr %1, ptr @rtl_debug_priv_mac_7, align 4
  %call36 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.16, i16 noundef zeroext -32476, ptr noundef %call6, ptr noundef nonnull @rtl_debug_priv_mac_7, ptr noundef nonnull @file_ops_common) #9
  store ptr %1, ptr @rtl_debug_priv_bb_8, align 4
  %call40 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.17, i16 noundef zeroext -32476, ptr noundef %call6, ptr noundef nonnull @rtl_debug_priv_bb_8, ptr noundef nonnull @file_ops_common) #9
  store ptr %1, ptr @rtl_debug_priv_bb_9, align 4
  %call44 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.18, i16 noundef zeroext -32476, ptr noundef %call6, ptr noundef nonnull @rtl_debug_priv_bb_9, ptr noundef nonnull @file_ops_common) #9
  store ptr %1, ptr @rtl_debug_priv_bb_a, align 4
  %call48 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.19, i16 noundef zeroext -32476, ptr noundef %call6, ptr noundef nonnull @rtl_debug_priv_bb_a, ptr noundef nonnull @file_ops_common) #9
  store ptr %1, ptr @rtl_debug_priv_bb_b, align 4
  %call52 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.20, i16 noundef zeroext -32476, ptr noundef %call6, ptr noundef nonnull @rtl_debug_priv_bb_b, ptr noundef nonnull @file_ops_common) #9
  store ptr %1, ptr @rtl_debug_priv_bb_c, align 4
  %call56 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.21, i16 noundef zeroext -32476, ptr noundef %call6, ptr noundef nonnull @rtl_debug_priv_bb_c, ptr noundef nonnull @file_ops_common) #9
  store ptr %1, ptr @rtl_debug_priv_bb_d, align 4
  %call60 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.22, i16 noundef zeroext -32476, ptr noundef %call6, ptr noundef nonnull @rtl_debug_priv_bb_d, ptr noundef nonnull @file_ops_common) #9
  store ptr %1, ptr @rtl_debug_priv_bb_e, align 4
  %call64 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.23, i16 noundef zeroext -32476, ptr noundef %call6, ptr noundef nonnull @rtl_debug_priv_bb_e, ptr noundef nonnull @file_ops_common) #9
  store ptr %1, ptr @rtl_debug_priv_bb_f, align 4
  %call68 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.24, i16 noundef zeroext -32476, ptr noundef %call6, ptr noundef nonnull @rtl_debug_priv_bb_f, ptr noundef nonnull @file_ops_common) #9
  store ptr %1, ptr @rtl_debug_priv_mac_10, align 4
  %call72 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.25, i16 noundef zeroext -32476, ptr noundef %call6, ptr noundef nonnull @rtl_debug_priv_mac_10, ptr noundef nonnull @file_ops_common) #9
  store ptr %1, ptr @rtl_debug_priv_mac_11, align 4
  %call76 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.26, i16 noundef zeroext -32476, ptr noundef %call6, ptr noundef nonnull @rtl_debug_priv_mac_11, ptr noundef nonnull @file_ops_common) #9
  store ptr %1, ptr @rtl_debug_priv_mac_12, align 4
  %call80 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.27, i16 noundef zeroext -32476, ptr noundef %call6, ptr noundef nonnull @rtl_debug_priv_mac_12, ptr noundef nonnull @file_ops_common) #9
  store ptr %1, ptr @rtl_debug_priv_mac_13, align 4
  %call84 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.28, i16 noundef zeroext -32476, ptr noundef %call6, ptr noundef nonnull @rtl_debug_priv_mac_13, ptr noundef nonnull @file_ops_common) #9
  store ptr %1, ptr @rtl_debug_priv_mac_14, align 4
  %call88 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.29, i16 noundef zeroext -32476, ptr noundef %call6, ptr noundef nonnull @rtl_debug_priv_mac_14, ptr noundef nonnull @file_ops_common) #9
  store ptr %1, ptr @rtl_debug_priv_mac_15, align 4
  %call92 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.30, i16 noundef zeroext -32476, ptr noundef %call6, ptr noundef nonnull @rtl_debug_priv_mac_15, ptr noundef nonnull @file_ops_common) #9
  store ptr %1, ptr @rtl_debug_priv_mac_16, align 4
  %call96 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.31, i16 noundef zeroext -32476, ptr noundef %call6, ptr noundef nonnull @rtl_debug_priv_mac_16, ptr noundef nonnull @file_ops_common) #9
  store ptr %1, ptr @rtl_debug_priv_mac_17, align 4
  %call100 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.32, i16 noundef zeroext -32476, ptr noundef %call6, ptr noundef nonnull @rtl_debug_priv_mac_17, ptr noundef nonnull @file_ops_common) #9
  store ptr %1, ptr @rtl_debug_priv_bb_18, align 4
  %call104 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.33, i16 noundef zeroext -32476, ptr noundef %call6, ptr noundef nonnull @rtl_debug_priv_bb_18, ptr noundef nonnull @file_ops_common) #9
  store ptr %1, ptr @rtl_debug_priv_bb_19, align 4
  %call108 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.34, i16 noundef zeroext -32476, ptr noundef %call6, ptr noundef nonnull @rtl_debug_priv_bb_19, ptr noundef nonnull @file_ops_common) #9
  store ptr %1, ptr @rtl_debug_priv_bb_1a, align 4
  %call112 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.35, i16 noundef zeroext -32476, ptr noundef %call6, ptr noundef nonnull @rtl_debug_priv_bb_1a, ptr noundef nonnull @file_ops_common) #9
  store ptr %1, ptr @rtl_debug_priv_bb_1b, align 4
  %call116 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.36, i16 noundef zeroext -32476, ptr noundef %call6, ptr noundef nonnull @rtl_debug_priv_bb_1b, ptr noundef nonnull @file_ops_common) #9
  store ptr %1, ptr @rtl_debug_priv_bb_1c, align 4
  %call120 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.37, i16 noundef zeroext -32476, ptr noundef %call6, ptr noundef nonnull @rtl_debug_priv_bb_1c, ptr noundef nonnull @file_ops_common) #9
  store ptr %1, ptr @rtl_debug_priv_bb_1d, align 4
  %call124 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.38, i16 noundef zeroext -32476, ptr noundef %call6, ptr noundef nonnull @rtl_debug_priv_bb_1d, ptr noundef nonnull @file_ops_common) #9
  store ptr %1, ptr @rtl_debug_priv_bb_1e, align 4
  %call128 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.39, i16 noundef zeroext -32476, ptr noundef %call6, ptr noundef nonnull @rtl_debug_priv_bb_1e, ptr noundef nonnull @file_ops_common) #9
  store ptr %1, ptr @rtl_debug_priv_bb_1f, align 4
  %call132 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.40, i16 noundef zeroext -32476, ptr noundef %call6, ptr noundef nonnull @rtl_debug_priv_bb_1f, ptr noundef nonnull @file_ops_common) #9
  store ptr %1, ptr @rtl_debug_priv_rf_a, align 4
  %call136 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.41, i16 noundef zeroext -32476, ptr noundef %call6, ptr noundef nonnull @rtl_debug_priv_rf_a, ptr noundef nonnull @file_ops_common) #9
  store ptr %1, ptr @rtl_debug_priv_rf_b, align 4
  %call140 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.42, i16 noundef zeroext -32476, ptr noundef %call6, ptr noundef nonnull @rtl_debug_priv_rf_b, ptr noundef nonnull @file_ops_common) #9
  store ptr %1, ptr @rtl_debug_priv_cam_1, align 4
  %call144 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.43, i16 noundef zeroext -32476, ptr noundef %call6, ptr noundef nonnull @rtl_debug_priv_cam_1, ptr noundef nonnull @file_ops_common) #9
  store ptr %1, ptr @rtl_debug_priv_cam_2, align 4
  %call148 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.44, i16 noundef zeroext -32476, ptr noundef %call6, ptr noundef nonnull @rtl_debug_priv_cam_2, ptr noundef nonnull @file_ops_common) #9
  store ptr %1, ptr @rtl_debug_priv_cam_3, align 4
  %call152 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.45, i16 noundef zeroext -32476, ptr noundef %call6, ptr noundef nonnull @rtl_debug_priv_cam_3, ptr noundef nonnull @file_ops_common) #9
  store ptr %1, ptr @rtl_debug_priv_btcoex, align 4
  %call156 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.46, i16 noundef zeroext -32476, ptr noundef %call6, ptr noundef nonnull @rtl_debug_priv_btcoex, ptr noundef nonnull @file_ops_common) #9
  store ptr %1, ptr @rtl_debug_priv_write_reg, align 4
  %call160 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.47, i16 noundef zeroext -32622, ptr noundef %call6, ptr noundef nonnull @rtl_debug_priv_write_reg, ptr noundef nonnull @file_ops_common_write) #9
  store ptr %1, ptr @rtl_debug_priv_write_h2c, align 4
  %call164 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.48, i16 noundef zeroext -32622, ptr noundef %call6, ptr noundef nonnull @rtl_debug_priv_write_h2c, ptr noundef nonnull @file_ops_common_write) #9
  store ptr %1, ptr @rtl_debug_priv_write_rfreg, align 4
  %call168 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.49, i16 noundef zeroext -32622, ptr noundef %call6, ptr noundef nonnull @rtl_debug_priv_write_rfreg, ptr noundef nonnull @file_ops_common_write) #9
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl_debug_remove_one(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %dbg = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %dbg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dbg, align 4
  tail call void @debugfs_remove(ptr noundef %3) #9
  %4 = ptrtoint ptr %dbg to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %dbg, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl_debugfs_add_topdir() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.5, ptr noundef null) #9
  store ptr %call, ptr @debugfs_topdir, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl_debugfs_remove_topdir() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @debugfs_topdir, align 4
  tail call void @debugfs_remove(ptr noundef %0) #9
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl_debug_get_mac_page(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %cb_data = getelementptr inbounds %struct.rtl_debugfs_priv, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %cb_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cb_data, align 4
  %read32_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %3, i32 0, i32 13, i32 11
  br label %for.body5.preheader

for.cond.loopexit:                                ; preds = %for.body5.3, %for.body5.2.for.cond.loopexit_crit_edge, %for.body5.1.for.cond.loopexit_crit_edge, %for.body5.preheader.for.cond.loopexit_crit_edge
  %n.122.lcssa = phi i32 [ %n.023, %for.body5.preheader.for.cond.loopexit_crit_edge ], [ %add6, %for.body5.1.for.cond.loopexit_crit_edge ], [ %add6.1, %for.body5.2.for.cond.loopexit_crit_edge ], [ %add6.2, %for.body5.3 ]
  %add6.lcssa = phi i32 [ %add6, %for.body5.preheader.for.cond.loopexit_crit_edge ], [ %add6.1, %for.body5.1.for.cond.loopexit_crit_edge ], [ %add6.2, %for.body5.2.for.cond.loopexit_crit_edge ], [ %add6.3, %for.body5.3 ]
  %cmp = icmp slt i32 %n.122.lcssa, 252
  br i1 %cmp, label %for.cond.loopexit.for.body5.preheader_crit_edge, label %for.end7

for.cond.loopexit.for.body5.preheader_crit_edge:  ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body5.preheader

for.body5.preheader:                              ; preds = %for.cond.loopexit.for.body5.preheader_crit_edge, %entry
  %n.023 = phi i32 [ 0, %entry ], [ %add6.lcssa, %for.cond.loopexit.for.body5.preheader_crit_edge ]
  %add = add i32 %n.023, %5
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.50, i32 noundef %add) #9
  %or = or i32 %n.023, %5
  %6 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read32_sync.i, align 4
  %call.i = tail call i32 %7(ptr noundef %3, i32 noundef %or) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.51, i32 noundef %call.i) #9
  %add6 = add nsw i32 %n.023, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 252, i32 %n.023)
  %cmp4 = icmp slt i32 %n.023, 252
  br i1 %cmp4, label %for.body5.1, label %for.body5.preheader.for.cond.loopexit_crit_edge

for.body5.preheader.for.cond.loopexit_crit_edge:  ; preds = %for.body5.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.loopexit

for.body5.1:                                      ; preds = %for.body5.preheader
  %or.1 = or i32 %add6, %5
  %8 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read32_sync.i, align 4
  %call.i.1 = tail call i32 %9(ptr noundef %3, i32 noundef %or.1) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.51, i32 noundef %call.i.1) #9
  %add6.1 = add nsw i32 %n.023, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 248, i32 %n.023)
  %cmp4.1 = icmp slt i32 %n.023, 248
  br i1 %cmp4.1, label %for.body5.2, label %for.body5.1.for.cond.loopexit_crit_edge

for.body5.1.for.cond.loopexit_crit_edge:          ; preds = %for.body5.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.loopexit

for.body5.2:                                      ; preds = %for.body5.1
  %or.2 = or i32 %add6.1, %5
  %10 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read32_sync.i, align 4
  %call.i.2 = tail call i32 %11(ptr noundef %3, i32 noundef %or.2) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.51, i32 noundef %call.i.2) #9
  %add6.2 = add nsw i32 %n.023, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 244, i32 %n.023)
  %cmp4.2 = icmp slt i32 %n.023, 244
  br i1 %cmp4.2, label %for.body5.3, label %for.body5.2.for.cond.loopexit_crit_edge

for.body5.2.for.cond.loopexit_crit_edge:          ; preds = %for.body5.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.loopexit

for.body5.3:                                      ; preds = %for.body5.2
  call void @__sanitizer_cov_trace_pc() #11
  %or.3 = or i32 %add6.2, %5
  %12 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read32_sync.i, align 4
  %call.i.3 = tail call i32 %13(ptr noundef %3, i32 noundef %or.3) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.51, i32 noundef %call.i.3) #9
  %add6.3 = add nsw i32 %n.023, 16
  br label %for.cond.loopexit

for.end7:                                         ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.52) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dl_debug_open_common(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @rtl_debug_get_common, ptr noundef %1) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl_debug_get_common(ptr noundef %m, ptr noundef %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %cb_read = getelementptr inbounds %struct.rtl_debugfs_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %cb_read to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cb_read, align 4
  %call = tail call i32 %3(ptr noundef %m, ptr noundef %v) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl_debug_get_bb_page(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %cb_data = getelementptr inbounds %struct.rtl_debugfs_priv, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %cb_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cb_data, align 4
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %5, i32 0, i32 3
  br label %for.body6.preheader

for.cond.loopexit:                                ; preds = %for.body6.3, %for.body6.2.for.cond.loopexit_crit_edge, %for.body6.1.for.cond.loopexit_crit_edge, %for.body6.preheader.for.cond.loopexit_crit_edge
  %n.123.lcssa = phi i32 [ %n.024, %for.body6.preheader.for.cond.loopexit_crit_edge ], [ %add7, %for.body6.1.for.cond.loopexit_crit_edge ], [ %add7.1, %for.body6.2.for.cond.loopexit_crit_edge ], [ %add7.2, %for.body6.3 ]
  %add7.lcssa = phi i32 [ %add7, %for.body6.preheader.for.cond.loopexit_crit_edge ], [ %add7.1, %for.body6.1.for.cond.loopexit_crit_edge ], [ %add7.2, %for.body6.2.for.cond.loopexit_crit_edge ], [ %add7.3, %for.body6.3 ]
  %cmp = icmp slt i32 %n.123.lcssa, 252
  br i1 %cmp, label %for.cond.loopexit.for.body6.preheader_crit_edge, label %for.end8

for.cond.loopexit.for.body6.preheader_crit_edge:  ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body6.preheader

for.body6.preheader:                              ; preds = %for.cond.loopexit.for.body6.preheader_crit_edge, %entry
  %n.024 = phi i32 [ 0, %entry ], [ %add7.lcssa, %for.cond.loopexit.for.body6.preheader_crit_edge ]
  %add = add i32 %n.024, %7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.50, i32 noundef %add) #9
  %or = or i32 %n.024, %7
  %8 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv.i, align 8
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %9, i32 0, i32 32
  %10 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cfg.i, align 8
  %ops.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i, align 4
  %get_bbreg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %13, i32 0, i32 45
  %14 = ptrtoint ptr %get_bbreg.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %get_bbreg.i, align 4
  %call.i = tail call i32 %15(ptr noundef %5, i32 noundef %or, i32 noundef -1) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.51, i32 noundef %call.i) #9
  %add7 = add nsw i32 %n.024, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 252, i32 %n.024)
  %cmp5 = icmp slt i32 %n.024, 252
  br i1 %cmp5, label %for.body6.1, label %for.body6.preheader.for.cond.loopexit_crit_edge

for.body6.preheader.for.cond.loopexit_crit_edge:  ; preds = %for.body6.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.loopexit

for.body6.1:                                      ; preds = %for.body6.preheader
  %or.1 = or i32 %add7, %7
  %16 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %priv.i, align 8
  %cfg.i.1 = getelementptr inbounds %struct.rtl_priv, ptr %17, i32 0, i32 32
  %18 = ptrtoint ptr %cfg.i.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cfg.i.1, align 8
  %ops.i.1 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %ops.i.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops.i.1, align 4
  %get_bbreg.i.1 = getelementptr inbounds %struct.rtl_hal_ops, ptr %21, i32 0, i32 45
  %22 = ptrtoint ptr %get_bbreg.i.1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %get_bbreg.i.1, align 4
  %call.i.1 = tail call i32 %23(ptr noundef %5, i32 noundef %or.1, i32 noundef -1) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.51, i32 noundef %call.i.1) #9
  %add7.1 = add nsw i32 %n.024, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 248, i32 %n.024)
  %cmp5.1 = icmp slt i32 %n.024, 248
  br i1 %cmp5.1, label %for.body6.2, label %for.body6.1.for.cond.loopexit_crit_edge

for.body6.1.for.cond.loopexit_crit_edge:          ; preds = %for.body6.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.loopexit

for.body6.2:                                      ; preds = %for.body6.1
  %or.2 = or i32 %add7.1, %7
  %24 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %priv.i, align 8
  %cfg.i.2 = getelementptr inbounds %struct.rtl_priv, ptr %25, i32 0, i32 32
  %26 = ptrtoint ptr %cfg.i.2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cfg.i.2, align 8
  %ops.i.2 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %ops.i.2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ops.i.2, align 4
  %get_bbreg.i.2 = getelementptr inbounds %struct.rtl_hal_ops, ptr %29, i32 0, i32 45
  %30 = ptrtoint ptr %get_bbreg.i.2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %get_bbreg.i.2, align 4
  %call.i.2 = tail call i32 %31(ptr noundef %5, i32 noundef %or.2, i32 noundef -1) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.51, i32 noundef %call.i.2) #9
  %add7.2 = add nsw i32 %n.024, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 244, i32 %n.024)
  %cmp5.2 = icmp slt i32 %n.024, 244
  br i1 %cmp5.2, label %for.body6.3, label %for.body6.2.for.cond.loopexit_crit_edge

for.body6.2.for.cond.loopexit_crit_edge:          ; preds = %for.body6.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.loopexit

for.body6.3:                                      ; preds = %for.body6.2
  call void @__sanitizer_cov_trace_pc() #11
  %or.3 = or i32 %add7.2, %7
  %32 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %priv.i, align 8
  %cfg.i.3 = getelementptr inbounds %struct.rtl_priv, ptr %33, i32 0, i32 32
  %34 = ptrtoint ptr %cfg.i.3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cfg.i.3, align 8
  %ops.i.3 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %35, i32 0, i32 4
  %36 = ptrtoint ptr %ops.i.3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ops.i.3, align 4
  %get_bbreg.i.3 = getelementptr inbounds %struct.rtl_hal_ops, ptr %37, i32 0, i32 45
  %38 = ptrtoint ptr %get_bbreg.i.3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %get_bbreg.i.3, align 4
  %call.i.3 = tail call i32 %39(ptr noundef %5, i32 noundef %or.3, i32 noundef -1) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.51, i32 noundef %call.i.3) #9
  %add7.3 = add nsw i32 %n.024, 16
  br label %for.cond.loopexit

for.end8:                                         ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.52) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl_debug_get_reg_rf(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %cb_data = getelementptr inbounds %struct.rtl_debugfs_priv, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %cb_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cb_data, align 4
  %hw_type = getelementptr inbounds %struct.rtl_priv, ptr %3, i32 0, i32 10, i32 10
  %8 = ptrtoint ptr %hw_type to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %hw_type, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 15, i16 %9)
  %cmp = icmp eq i16 %9, 15
  %spec.store.select = select i1 %cmp, i32 255, i32 64
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.53, i32 noundef %7) #9
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %5, i32 0, i32 3
  br label %for.body

for.cond.loopexit:                                ; preds = %for.body11.3, %for.body11.2.for.cond.loopexit_crit_edge, %for.body11.1.for.cond.loopexit_crit_edge, %for.body11.preheader.for.cond.loopexit_crit_edge, %for.body.for.cond.loopexit_crit_edge
  %n.1.lcssa = phi i32 [ %n.030, %for.body.for.cond.loopexit_crit_edge ], [ %add, %for.body11.preheader.for.cond.loopexit_crit_edge ], [ %add.1, %for.body11.1.for.cond.loopexit_crit_edge ], [ %add.2, %for.body11.2.for.cond.loopexit_crit_edge ], [ %add.3, %for.body11.3 ]
  %cmp4.not = icmp sgt i32 %n.1.lcssa, %spec.store.select
  br i1 %cmp4.not, label %for.end12, label %for.cond.loopexit.for.body_crit_edge

for.cond.loopexit.for.body_crit_edge:             ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body:                                         ; preds = %for.cond.loopexit.for.body_crit_edge, %entry
  %n.030 = phi i32 [ 0, %entry ], [ %n.1.lcssa, %for.cond.loopexit.for.body_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.50, i32 noundef %n.030) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.store.select, i32 %n.030)
  %cmp9.not26 = icmp slt i32 %spec.store.select, %n.030
  br i1 %cmp9.not26, label %for.body.for.cond.loopexit_crit_edge, label %for.body11.preheader

for.body.for.cond.loopexit_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.loopexit

for.body11.preheader:                             ; preds = %for.body
  %10 = sub i32 %spec.store.select, %n.030
  %umin = call i32 @llvm.umin.i32(i32 %10, i32 3)
  %11 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv.i, align 8
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %12, i32 0, i32 32
  %13 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cfg.i, align 8
  %ops.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops.i, align 4
  %get_rfreg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %16, i32 0, i32 47
  %17 = ptrtoint ptr %get_rfreg.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %get_rfreg.i, align 4
  %call.i = tail call i32 %18(ptr noundef %5, i32 noundef %7, i32 noundef %n.030, i32 noundef -1) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.51, i32 noundef %call.i) #9
  %add = add nsw i32 %n.030, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %umin)
  %exitcond = icmp eq i32 %umin, 0
  br i1 %exitcond, label %for.body11.preheader.for.cond.loopexit_crit_edge, label %for.body11.1

for.body11.preheader.for.cond.loopexit_crit_edge: ; preds = %for.body11.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.loopexit

for.body11.1:                                     ; preds = %for.body11.preheader
  %19 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %priv.i, align 8
  %cfg.i.1 = getelementptr inbounds %struct.rtl_priv, ptr %20, i32 0, i32 32
  %21 = ptrtoint ptr %cfg.i.1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cfg.i.1, align 8
  %ops.i.1 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %ops.i.1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops.i.1, align 4
  %get_rfreg.i.1 = getelementptr inbounds %struct.rtl_hal_ops, ptr %24, i32 0, i32 47
  %25 = ptrtoint ptr %get_rfreg.i.1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %get_rfreg.i.1, align 4
  %call.i.1 = tail call i32 %26(ptr noundef %5, i32 noundef %7, i32 noundef %add, i32 noundef -1) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.51, i32 noundef %call.i.1) #9
  %add.1 = add nsw i32 %n.030, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %umin)
  %exitcond.1 = icmp eq i32 %umin, 1
  br i1 %exitcond.1, label %for.body11.1.for.cond.loopexit_crit_edge, label %for.body11.2

for.body11.1.for.cond.loopexit_crit_edge:         ; preds = %for.body11.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.loopexit

for.body11.2:                                     ; preds = %for.body11.1
  %27 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %priv.i, align 8
  %cfg.i.2 = getelementptr inbounds %struct.rtl_priv, ptr %28, i32 0, i32 32
  %29 = ptrtoint ptr %cfg.i.2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cfg.i.2, align 8
  %ops.i.2 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %ops.i.2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ops.i.2, align 4
  %get_rfreg.i.2 = getelementptr inbounds %struct.rtl_hal_ops, ptr %32, i32 0, i32 47
  %33 = ptrtoint ptr %get_rfreg.i.2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %get_rfreg.i.2, align 4
  %call.i.2 = tail call i32 %34(ptr noundef %5, i32 noundef %7, i32 noundef %add.1, i32 noundef -1) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.51, i32 noundef %call.i.2) #9
  %add.2 = add nsw i32 %n.030, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %umin)
  %exitcond.2 = icmp eq i32 %umin, 2
  br i1 %exitcond.2, label %for.body11.2.for.cond.loopexit_crit_edge, label %for.body11.3

for.body11.2.for.cond.loopexit_crit_edge:         ; preds = %for.body11.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.loopexit

for.body11.3:                                     ; preds = %for.body11.2
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %priv.i, align 8
  %cfg.i.3 = getelementptr inbounds %struct.rtl_priv, ptr %36, i32 0, i32 32
  %37 = ptrtoint ptr %cfg.i.3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cfg.i.3, align 8
  %ops.i.3 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %38, i32 0, i32 4
  %39 = ptrtoint ptr %ops.i.3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ops.i.3, align 4
  %get_rfreg.i.3 = getelementptr inbounds %struct.rtl_hal_ops, ptr %40, i32 0, i32 47
  %41 = ptrtoint ptr %get_rfreg.i.3 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %get_rfreg.i.3, align 4
  %call.i.3 = tail call i32 %42(ptr noundef %5, i32 noundef %7, i32 noundef %add.2, i32 noundef -1) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.51, i32 noundef %call.i.3) #9
  %add.3 = add nsw i32 %n.030, 4
  br label %for.cond.loopexit

for.end12:                                        ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.52) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl_debug_get_cam_register(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %cb_data = getelementptr inbounds %struct.rtl_debugfs_priv, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %cb_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cb_data, align 4
  %add = add i32 %5, 11
  %6 = tail call i32 @llvm.smin.i32(i32 %add, i32 32)
  %sub = add i32 %6, -1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.54, i32 noundef %5, i32 noundef %sub) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %6)
  %cmp348 = icmp slt i32 %5, %6
  br i1 %cmp348, label %for.body.lr.ph, label %entry.for.end21_crit_edge

entry.for.end21_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end21

for.body.lr.ph:                                   ; preds = %entry
  %cfg = getelementptr inbounds %struct.rtl_priv, ptr %3, i32 0, i32 32
  %read32_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %3, i32 0, i32 13, i32 11
  %write32_async.i = getelementptr inbounds %struct.rtl_priv, ptr %3, i32 0, i32 13, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc19.for.body_crit_edge, %for.body.lr.ph
  %j.050 = phi i32 [ %5, %for.body.lr.ph ], [ %inc20, %for.inc19.for.body_crit_edge ]
  %i.049 = phi i32 [ 100, %for.body.lr.ph ], [ %dec.lcssa, %for.inc19.for.body_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.55, i32 noundef %j.050) #9
  %mul = shl i32 %j.050, 3
  br label %for.body7

for.body7:                                        ; preds = %rtl_write_dword.exit.for.body7_crit_edge, %for.body
  %indvars.iv = phi i32 [ 0, %for.body ], [ %indvars.iv.next, %rtl_write_dword.exit.for.body7_crit_edge ]
  %i.147 = phi i32 [ %i.049, %for.body ], [ %dec.lcssa, %rtl_write_dword.exit.for.body7_crit_edge ]
  %add9 = add nuw i32 %mul, %indvars.iv
  %or = or i32 %add9, -2147483648
  %smin = call i32 @llvm.smin.i32(i32 %i.147, i32 -1)
  %7 = add i32 %smin, -1
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %for.body7
  %i.2 = phi i32 [ %i.147, %for.body7 ], [ %dec, %while.body.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.2)
  %cmp10 = icmp sgt i32 %i.2, -1
  br i1 %cmp10, label %while.body, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %while.cond
  %dec = add nsw i32 %i.2, -1
  %8 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cfg, align 8
  %arrayidx = getelementptr %struct.rtl_hal_cfg, ptr %9, i32 0, i32 8, i32 24
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %12 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read32_sync.i, align 4
  %call.i = tail call i32 %13(ptr noundef %3, i32 noundef %11) #9
  %tobool.not = icmp sgt i32 %call.i, -1
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.while.end_crit_edge
  %dec.lcssa = phi i32 [ %dec, %while.body.while.end_crit_edge ], [ %7, %while.cond.while.end_crit_edge ]
  %14 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cfg, align 8
  %arrayidx14 = getelementptr %struct.rtl_hal_cfg, ptr %15, i32 0, i32 8, i32 24
  %16 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx14, align 4
  %18 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write32_async.i, align 4
  tail call void %19(ptr noundef %3, i32 noundef %17, i32 noundef %or) #9
  %20 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cfg, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %write_readback.i, align 1, !range !238
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i = icmp eq i8 %23, 0
  br i1 %tobool.not.i, label %while.end.rtl_write_dword.exit_crit_edge, label %if.then.i

while.end.rtl_write_dword.exit_crit_edge:         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %rtl_write_dword.exit

if.then.i:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read32_sync.i, align 4
  %call.i43 = tail call i32 %25(ptr noundef %3, i32 noundef %17) #9
  br label %rtl_write_dword.exit

rtl_write_dword.exit:                             ; preds = %if.then.i, %while.end.rtl_write_dword.exit_crit_edge
  %26 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cfg, align 8
  %arrayidx17 = getelementptr %struct.rtl_hal_cfg, ptr %27, i32 0, i32 8, i32 26
  %28 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx17, align 4
  %30 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read32_sync.i, align 4
  %call.i45 = tail call i32 %31(ptr noundef %3, i32 noundef %29) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.56, i32 noundef %call.i45) #9
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 8
  br i1 %exitcond.not, label %for.inc19, label %rtl_write_dword.exit.for.body7_crit_edge

rtl_write_dword.exit.for.body7_crit_edge:         ; preds = %rtl_write_dword.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body7

for.inc19:                                        ; preds = %rtl_write_dword.exit
  %inc20 = add nsw i32 %j.050, 1
  %exitcond51.not = icmp eq i32 %inc20, %6
  br i1 %exitcond51.not, label %for.inc19.for.end21_crit_edge, label %for.inc19.for.body_crit_edge

for.inc19.for.body_crit_edge:                     ; preds = %for.inc19
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc19.for.end21_crit_edge:                    ; preds = %for.inc19
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end21

for.end21:                                        ; preds = %for.inc19.for.end21_crit_edge, %entry.for.end21_crit_edge
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.52) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl_debug_get_btcoex(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %cfg = getelementptr inbounds %struct.rtl_priv, ptr %3, i32 0, i32 32
  %4 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfg, align 8
  %ops = getelementptr inbounds %struct.rtl_hal_cfg, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %get_btc_status = getelementptr inbounds %struct.rtl_hal_ops, ptr %7, i32 0, i32 66
  %8 = ptrtoint ptr %get_btc_status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_btc_status, align 4
  %call = tail call zeroext i1 %9() #9
  br i1 %call, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %btcoexist = getelementptr inbounds %struct.rtl_priv, ptr %3, i32 0, i32 49
  %10 = ptrtoint ptr %btcoexist to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %btcoexist, align 8
  %btc_display_bt_coex_info = getelementptr inbounds %struct.rtl_btc_ops, ptr %11, i32 0, i32 23
  %12 = ptrtoint ptr %btc_display_bt_coex_info to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %btc_display_bt_coex_info, align 4
  tail call void %13(ptr noundef %3, ptr noundef %m) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.52) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl_debugfs_set_write_reg(ptr nocapture noundef readonly %filp, ptr noundef %buffer, i32 noundef %count, ptr nocapture noundef readnone %loff) #0 align 64 {
entry:
  %tmp = alloca [33 x i8], align 1
  %addr = alloca i32, align 4
  %val = alloca i32, align 4
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %tmp) #9
  %4 = call ptr @memset(ptr %tmp, i32 255, i32 33)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr) #9
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %addr, align 4, !annotation !236
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !236
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #9
  %7 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %len, align 4, !annotation !236
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %count)
  %cmp = icmp ult i32 %count, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = tail call i32 @llvm.umin.i32(i32 %count, i32 32)
  %tobool.not = icmp eq ptr %buffer, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then.i.i.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.end
  call void @__check_object_size(ptr noundef nonnull %tmp, i32 noundef %8, i1 noundef zeroext false) #9
  call void @__might_fault(ptr noundef nonnull @.str.60, i32 noundef 156) #9
  %call.i.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.then.i.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.then11.i.i_crit_edge:            ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %9 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %buffer, i32 %8, i32 -1226833920) #13, !srcloc !239
  %asmresult.i.i = extractvalue { i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !235

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %tmp, i32 noundef %8) #9
  %10 = call i32 @llvm.read_register.i32(metadata !225) #9
  %and.i.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 4
  %12 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !240
  %and.i.i.i.i = and i32 %12, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #9, !srcloc !241
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !242
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %tmp, ptr noundef nonnull %buffer, i32 noundef %8) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #9, !srcloc !241
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !242
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end5, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !235

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.then.i.i.i.if.then11.i.i_crit_edge
  %res.0.i.i43 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ %8, %if.then.i.i.i.if.then11.i.i_crit_edge ], [ %8, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 %8, %res.0.i.i43
  %add.ptr.i.i = getelementptr i8, ptr %tmp, i32 %sub.i.i
  %13 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i43)
  br label %cleanup

if.end5:                                          ; preds = %if.end.i.i
  %arrayidx = getelementptr [33 x i8], ptr %tmp, i32 0, i32 %8
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %arrayidx, align 1
  %call7 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %tmp, ptr noundef nonnull @.str.57, ptr noundef nonnull %addr, ptr noundef nonnull %val, ptr noundef nonnull %len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call7)
  %cmp8.not = icmp eq i32 %call7, 3
  br i1 %cmp8.not, label %if.end10, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %15 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i32 %16, label %if.end10.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb11
    i32 4, label %sw.bb13
  ]

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end10
  %18 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %addr, align 4
  %20 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val, align 4
  %conv = trunc i32 %21 to i8
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %3, i32 0, i32 13, i32 5
  %22 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write8_async.i, align 4
  call void %23(ptr noundef %3, i32 noundef %19, i8 noundef zeroext %conv) #9
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %3, i32 0, i32 32
  %24 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %write_readback.i, align 1, !range !238
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i = icmp eq i8 %27, 0
  br i1 %tobool.not.i, label %sw.bb.cleanup_crit_edge, label %if.then.i30

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i30:                                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %3, i32 0, i32 13, i32 9
  %28 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %read8_sync.i, align 4
  %call.i = call zeroext i8 %29(ptr noundef %3, i32 noundef %19) #9
  br label %cleanup

sw.bb11:                                          ; preds = %if.end10
  %30 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %addr, align 4
  %32 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %val, align 4
  %conv12 = trunc i32 %33 to i16
  %write16_async.i = getelementptr inbounds %struct.rtl_priv, ptr %3, i32 0, i32 13, i32 6
  %34 = ptrtoint ptr %write16_async.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write16_async.i, align 4
  call void %35(ptr noundef %3, i32 noundef %31, i16 noundef zeroext %conv12) #9
  %cfg.i31 = getelementptr inbounds %struct.rtl_priv, ptr %3, i32 0, i32 32
  %36 = ptrtoint ptr %cfg.i31 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cfg.i31, align 8
  %write_readback.i32 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %write_readback.i32 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %write_readback.i32, align 1, !range !238
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not.i33 = icmp eq i8 %39, 0
  br i1 %tobool.not.i33, label %sw.bb11.cleanup_crit_edge, label %if.then.i35

sw.bb11.cleanup_crit_edge:                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i35:                                      ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #11
  %read16_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %3, i32 0, i32 13, i32 10
  %40 = ptrtoint ptr %read16_sync.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %read16_sync.i, align 4
  %call.i34 = call zeroext i16 %41(ptr noundef %3, i32 noundef %31) #9
  br label %cleanup

sw.bb13:                                          ; preds = %if.end10
  %42 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %addr, align 4
  %44 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %val, align 4
  %write32_async.i = getelementptr inbounds %struct.rtl_priv, ptr %3, i32 0, i32 13, i32 7
  %46 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %write32_async.i, align 4
  call void %47(ptr noundef %3, i32 noundef %43, i32 noundef %45) #9
  %cfg.i36 = getelementptr inbounds %struct.rtl_priv, ptr %3, i32 0, i32 32
  %48 = ptrtoint ptr %cfg.i36 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %cfg.i36, align 8
  %write_readback.i37 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %write_readback.i37 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %write_readback.i37, align 1, !range !238
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool.not.i38 = icmp eq i8 %51, 0
  br i1 %tobool.not.i38, label %sw.bb13.cleanup_crit_edge, label %if.then.i40

sw.bb13.cleanup_crit_edge:                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i40:                                      ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #11
  %read32_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %3, i32 0, i32 13, i32 11
  %52 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %read32_sync.i, align 4
  %call.i39 = call i32 %53(ptr noundef %3, i32 noundef %43) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i40, %sw.bb13.cleanup_crit_edge, %if.then.i35, %sw.bb11.cleanup_crit_edge, %if.then.i30, %sw.bb.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.then11.i.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -14, %entry.cleanup_crit_edge ], [ %count, %if.end.cleanup_crit_edge ], [ %count, %if.end5.cleanup_crit_edge ], [ %count, %if.end10.cleanup_crit_edge ], [ %count, %sw.bb.cleanup_crit_edge ], [ %count, %if.then.i30 ], [ %count, %sw.bb11.cleanup_crit_edge ], [ %count, %if.then.i35 ], [ %count, %sw.bb13.cleanup_crit_edge ], [ %count, %if.then.i40 ], [ %count, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr) #9
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %tmp) #9
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl_debugfs_common_write(ptr noundef %filp, ptr noundef %buffer, i32 noundef %count, ptr noundef %loff) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %cb_write = getelementptr inbounds %struct.rtl_debugfs_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cb_write to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cb_write, align 4
  %call = tail call i32 %3(ptr noundef %filp, ptr noundef %buffer, i32 noundef %count, ptr noundef %loff) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rtl_debugfs_close(ptr nocapture noundef readnone %inode, ptr nocapture noundef readnone %filp) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl_debugfs_set_write_h2c(ptr nocapture noundef readonly %filp, ptr noundef %buffer, i32 noundef %count, ptr nocapture noundef readnone %loff) #0 align 64 {
entry:
  %tmp = alloca [33 x i8], align 1
  %h2c_data_packed = alloca [8 x i8], align 8
  %h2c_data = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %tmp) #9
  %6 = call ptr @memset(ptr %tmp, i32 255, i32 33)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %h2c_data_packed) #9
  %7 = getelementptr inbounds [8 x i8], ptr %h2c_data_packed, i32 0, i32 1
  %8 = ptrtoint ptr %h2c_data_packed to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 -1, ptr %h2c_data_packed, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %h2c_data) #9
  %9 = getelementptr inbounds [8 x i32], ptr %h2c_data, i32 0, i32 1
  %10 = getelementptr inbounds [8 x i32], ptr %h2c_data, i32 0, i32 2
  %11 = getelementptr inbounds [8 x i32], ptr %h2c_data, i32 0, i32 3
  %12 = getelementptr inbounds [8 x i32], ptr %h2c_data, i32 0, i32 4
  %13 = getelementptr inbounds [8 x i32], ptr %h2c_data, i32 0, i32 5
  %14 = getelementptr inbounds [8 x i32], ptr %h2c_data, i32 0, i32 6
  %15 = getelementptr inbounds [8 x i32], ptr %h2c_data, i32 0, i32 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %count)
  %cmp = icmp ult i32 %count, 3
  %16 = call ptr @memset(ptr %h2c_data, i32 255, i32 32)
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %17 = tail call i32 @llvm.umin.i32(i32 %count, i32 32)
  %tobool.not = icmp eq ptr %buffer, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then.i.i.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.end
  call void @__check_object_size(ptr noundef nonnull %tmp, i32 noundef %17, i1 noundef zeroext false) #9
  call void @__might_fault(ptr noundef nonnull @.str.60, i32 noundef 156) #9
  %call.i.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.then.i.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.then11.i.i_crit_edge:            ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %18 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %buffer, i32 %17, i32 -1226833920) #13, !srcloc !239
  %asmresult.i.i = extractvalue { i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !235

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %tmp, i32 noundef %17) #9
  %19 = call i32 @llvm.read_register.i32(metadata !225) #9
  %and.i.i.i.i.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 4
  %21 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !240
  %and.i.i.i.i = and i32 %21, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #9, !srcloc !241
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !242
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %tmp, ptr noundef nonnull %buffer, i32 noundef %17) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %21) #9, !srcloc !241
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !242
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end6, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !235

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.then.i.i.i.if.then11.i.i_crit_edge
  %res.0.i.i54 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ %17, %if.then.i.i.i.if.then11.i.i_crit_edge ], [ %17, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 %17, %res.0.i.i54
  %add.ptr.i.i = getelementptr i8, ptr %tmp, i32 %sub.i.i
  %22 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i54)
  br label %cleanup

if.end6:                                          ; preds = %if.end.i.i
  %arrayidx = getelementptr [33 x i8], ptr %tmp, i32 0, i32 %17
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %arrayidx, align 1
  %call16 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %tmp, ptr noundef nonnull @.str.61, ptr noundef nonnull %h2c_data, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %15)
  %conv17 = and i32 %call16, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv17)
  %cmp18 = icmp eq i32 %conv17, 0
  br i1 %cmp18, label %if.end6.cleanup_crit_edge, label %if.end6.for.body_crit_edge

if.end6.for.body_crit_edge:                       ; preds = %if.end6
  br label %for.body

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end6.for.body_crit_edge
  %i.058 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end6.for.body_crit_edge ]
  %arrayidx25 = getelementptr [8 x i32], ptr %h2c_data, i32 0, i32 %i.058
  %24 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx25, align 4
  %conv26 = trunc i32 %25 to i8
  %arrayidx27 = getelementptr [8 x i8], ptr %h2c_data_packed, i32 0, i32 %i.058
  %26 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv26, ptr %arrayidx27, align 1
  %inc = add nuw nsw i32 %i.058, 1
  %exitcond.not = icmp eq i32 %inc, %conv17
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %cfg = getelementptr inbounds %struct.rtl_priv, ptr %3, i32 0, i32 32
  %27 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cfg, align 8
  %ops = getelementptr inbounds %struct.rtl_hal_cfg, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ops, align 4
  %fill_h2c_cmd = getelementptr inbounds %struct.rtl_hal_ops, ptr %30, i32 0, i32 64
  %31 = ptrtoint ptr %fill_h2c_cmd to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %fill_h2c_cmd, align 4
  %33 = ptrtoint ptr %h2c_data_packed to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %h2c_data_packed, align 8
  %sub = add nsw i32 %conv17, -1
  call void %32(ptr noundef %5, i8 noundef zeroext %34, i32 noundef %sub, ptr noundef %7) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end6.cleanup_crit_edge, %if.then11.i.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %for.end ], [ -14, %entry.cleanup_crit_edge ], [ %count, %if.end.cleanup_crit_edge ], [ %count, %if.end6.cleanup_crit_edge ], [ %count, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %h2c_data) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %h2c_data_packed) #9
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %tmp) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl_debugfs_set_write_rfreg(ptr nocapture noundef readonly %filp, ptr noundef %buffer, i32 noundef %count, ptr nocapture noundef readnone %loff) #0 align 64 {
entry:
  %tmp = alloca [33 x i8], align 1
  %path = alloca i32, align 4
  %addr = alloca i32, align 4
  %bitmask = alloca i32, align 4
  %data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %tmp) #9
  %6 = call ptr @memset(ptr %tmp, i32 255, i32 33)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %path) #9
  %7 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %path, align 4, !annotation !236
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr) #9
  %8 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %addr, align 4, !annotation !236
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bitmask) #9
  %9 = ptrtoint ptr %bitmask to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %bitmask, align 4, !annotation !236
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #9
  %10 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %data, align 4, !annotation !236
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %count)
  %cmp = icmp ult i32 %count, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = tail call i32 @llvm.umin.i32(i32 %count, i32 32)
  %tobool.not = icmp eq ptr %buffer, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then.i.i.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.end
  call void @__check_object_size(ptr noundef nonnull %tmp, i32 noundef %11, i1 noundef zeroext false) #9
  call void @__might_fault(ptr noundef nonnull @.str.60, i32 noundef 156) #9
  %call.i.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.then.i.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.then11.i.i_crit_edge:            ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %12 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %buffer, i32 %11, i32 -1226833920) #13, !srcloc !239
  %asmresult.i.i = extractvalue { i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !235

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %tmp, i32 noundef %11) #9
  %13 = call i32 @llvm.read_register.i32(metadata !225) #9
  %and.i.i.i.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 4
  %15 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !240
  %and.i.i.i.i = and i32 %15, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #9, !srcloc !241
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !242
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %tmp, ptr noundef nonnull %buffer, i32 noundef %11) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #9, !srcloc !241
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !242
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end6, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !235

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.then.i.i.i.if.then11.i.i_crit_edge
  %res.0.i.i31 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ %11, %if.then.i.i.i.if.then11.i.i_crit_edge ], [ %11, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 %11, %res.0.i.i31
  %add.ptr.i.i = getelementptr i8, ptr %tmp, i32 %sub.i.i
  %16 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i31)
  br label %cleanup

if.end6:                                          ; preds = %if.end.i.i
  %arrayidx = getelementptr [33 x i8], ptr %tmp, i32 0, i32 %11
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %arrayidx, align 1
  %call8 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %tmp, ptr noundef nonnull @.str.62, ptr noundef nonnull %path, ptr noundef nonnull %addr, ptr noundef nonnull %bitmask, ptr noundef nonnull %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call8)
  %cmp9.not = icmp eq i32 %call8, 4
  br i1 %cmp9.not, label %if.end11, label %if.then10

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %3, i64 noundef 1, i32 noundef 3, ptr noundef nonnull @.str.63)
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %path, align 4
  %20 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %addr, align 4
  %22 = ptrtoint ptr %bitmask to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bitmask, align 4
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %data, align 4
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %5, i32 0, i32 3
  %26 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %priv.i, align 8
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %27, i32 0, i32 32
  %28 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cfg.i, align 8
  %ops.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %29, i32 0, i32 4
  %30 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ops.i, align 4
  %set_rfreg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %31, i32 0, i32 48
  %32 = ptrtoint ptr %set_rfreg.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %set_rfreg.i, align 4
  call void %33(ptr noundef %5, i32 noundef %19, i32 noundef %21, i32 noundef %23, i32 noundef %25) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then10, %if.then11.i.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.then10 ], [ %count, %if.end11 ], [ -14, %entry.cleanup_crit_edge ], [ %count, %if.end.cleanup_crit_edge ], [ %count, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bitmask) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %path) #9
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %tmp) #9
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 108)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 108)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !12, !13, !15, !16, !17, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !209, !211, !213, !215, !217, !219, !221, !223}
!llvm.named.register.sp = !{!225}
!llvm.module.flags = !{!226, !227, !228, !229, !230, !231, !232, !233}
!llvm.ident = !{!234}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 24, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @_rtl_dbg_print._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @_rtl_dbg_print._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @__ksymtab__rtl_dbg_print, !7, !"__ksymtab__rtl_dbg_print", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 29, i32 1}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 37, i32 3}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @_rtl_dbg_print_data._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @_rtl_dbg_print_data._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 39, i32 3}
!15 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @_rtl_dbg_print_data.__UNIQUE_ID_ddebug354, !14, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!17 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @__ksymtab__rtl_dbg_print_data, !19, !"__ksymtab__rtl_dbg_print_data", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 43, i32 1}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 441, i32 42}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 448, i32 2}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 449, i32 2}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 450, i32 2}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 451, i32 2}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 452, i32 2}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 453, i32 2}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 454, i32 2}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 455, i32 2}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 456, i32 2}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 457, i32 2}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 458, i32 2}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 459, i32 2}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 460, i32 2}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 461, i32 2}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 462, i32 2}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 463, i32 2}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 464, i32 2}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 465, i32 2}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 466, i32 2}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 467, i32 2}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 468, i32 2}
!64 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 469, i32 2}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 470, i32 2}
!68 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 471, i32 2}
!70 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 472, i32 2}
!72 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 473, i32 2}
!74 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 474, i32 2}
!76 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 475, i32 2}
!78 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 476, i32 2}
!80 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 477, i32 2}
!82 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 478, i32 2}
!84 = !{ptr @.str.40, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 479, i32 2}
!86 = !{ptr @.str.41, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 480, i32 2}
!88 = !{ptr @.str.42, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 481, i32 2}
!90 = !{ptr @.str.43, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 483, i32 2}
!92 = !{ptr @.str.44, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 484, i32 2}
!94 = !{ptr @.str.45, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 485, i32 2}
!96 = !{ptr @.str.46, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 487, i32 2}
!98 = !{ptr @.str.47, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 489, i32 2}
!100 = !{ptr @.str.48, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 490, i32 2}
!102 = !{ptr @.str.49, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 491, i32 2}
!104 = !{ptr @__ksymtab_rtl_debug_add_one, !105, !"__ksymtab_rtl_debug_add_one", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 493, i32 1}
!106 = !{ptr @__ksymtab_rtl_debug_remove_one, !107, !"__ksymtab_rtl_debug_remove_one", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 502, i32 1}
!108 = !{ptr @debugfs_topdir, !109, !"debugfs_topdir", i1 false, i1 false}
!109 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 53, i32 23}
!110 = !{ptr @rtl_debug_priv_mac_0, !111, !"rtl_debug_priv_mac_0", i1 false, i1 false}
!111 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 98, i32 1}
!112 = !{ptr @.str.50, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 83, i32 17}
!114 = !{ptr @.str.51, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 85, i32 18}
!116 = !{ptr @.str.52, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 88, i32 14}
!118 = !{ptr @file_ops_common, !119, !"file_ops_common", i1 false, i1 false}
!119 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 67, i32 37}
!120 = !{ptr @rtl_debug_priv_mac_1, !121, !"rtl_debug_priv_mac_1", i1 false, i1 false}
!121 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 99, i32 1}
!122 = !{ptr @rtl_debug_priv_mac_2, !123, !"rtl_debug_priv_mac_2", i1 false, i1 false}
!123 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 100, i32 1}
!124 = !{ptr @rtl_debug_priv_mac_3, !125, !"rtl_debug_priv_mac_3", i1 false, i1 false}
!125 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 101, i32 1}
!126 = !{ptr @rtl_debug_priv_mac_4, !127, !"rtl_debug_priv_mac_4", i1 false, i1 false}
!127 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 102, i32 1}
!128 = !{ptr @rtl_debug_priv_mac_5, !129, !"rtl_debug_priv_mac_5", i1 false, i1 false}
!129 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 103, i32 1}
!130 = !{ptr @rtl_debug_priv_mac_6, !131, !"rtl_debug_priv_mac_6", i1 false, i1 false}
!131 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 104, i32 1}
!132 = !{ptr @rtl_debug_priv_mac_7, !133, !"rtl_debug_priv_mac_7", i1 false, i1 false}
!133 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 105, i32 1}
!134 = !{ptr @rtl_debug_priv_bb_8, !135, !"rtl_debug_priv_bb_8", i1 false, i1 false}
!135 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 140, i32 1}
!136 = !{ptr @rtl_debug_priv_bb_9, !137, !"rtl_debug_priv_bb_9", i1 false, i1 false}
!137 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 141, i32 1}
!138 = !{ptr @rtl_debug_priv_bb_a, !139, !"rtl_debug_priv_bb_a", i1 false, i1 false}
!139 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 142, i32 1}
!140 = !{ptr @rtl_debug_priv_bb_b, !141, !"rtl_debug_priv_bb_b", i1 false, i1 false}
!141 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 143, i32 1}
!142 = !{ptr @rtl_debug_priv_bb_c, !143, !"rtl_debug_priv_bb_c", i1 false, i1 false}
!143 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 144, i32 1}
!144 = !{ptr @rtl_debug_priv_bb_d, !145, !"rtl_debug_priv_bb_d", i1 false, i1 false}
!145 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 145, i32 1}
!146 = !{ptr @rtl_debug_priv_bb_e, !147, !"rtl_debug_priv_bb_e", i1 false, i1 false}
!147 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 146, i32 1}
!148 = !{ptr @rtl_debug_priv_bb_f, !149, !"rtl_debug_priv_bb_f", i1 false, i1 false}
!149 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 147, i32 1}
!150 = !{ptr @rtl_debug_priv_mac_10, !151, !"rtl_debug_priv_mac_10", i1 false, i1 false}
!151 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 106, i32 1}
!152 = !{ptr @rtl_debug_priv_mac_11, !153, !"rtl_debug_priv_mac_11", i1 false, i1 false}
!153 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 107, i32 1}
!154 = !{ptr @rtl_debug_priv_mac_12, !155, !"rtl_debug_priv_mac_12", i1 false, i1 false}
!155 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 108, i32 1}
!156 = !{ptr @rtl_debug_priv_mac_13, !157, !"rtl_debug_priv_mac_13", i1 false, i1 false}
!157 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 109, i32 1}
!158 = !{ptr @rtl_debug_priv_mac_14, !159, !"rtl_debug_priv_mac_14", i1 false, i1 false}
!159 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 110, i32 1}
!160 = !{ptr @rtl_debug_priv_mac_15, !161, !"rtl_debug_priv_mac_15", i1 false, i1 false}
!161 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 111, i32 1}
!162 = !{ptr @rtl_debug_priv_mac_16, !163, !"rtl_debug_priv_mac_16", i1 false, i1 false}
!163 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 112, i32 1}
!164 = !{ptr @rtl_debug_priv_mac_17, !165, !"rtl_debug_priv_mac_17", i1 false, i1 false}
!165 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 113, i32 1}
!166 = !{ptr @rtl_debug_priv_bb_18, !167, !"rtl_debug_priv_bb_18", i1 false, i1 false}
!167 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 148, i32 1}
!168 = !{ptr @rtl_debug_priv_bb_19, !169, !"rtl_debug_priv_bb_19", i1 false, i1 false}
!169 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 149, i32 1}
!170 = !{ptr @rtl_debug_priv_bb_1a, !171, !"rtl_debug_priv_bb_1a", i1 false, i1 false}
!171 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 150, i32 1}
!172 = !{ptr @rtl_debug_priv_bb_1b, !173, !"rtl_debug_priv_bb_1b", i1 false, i1 false}
!173 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 151, i32 1}
!174 = !{ptr @rtl_debug_priv_bb_1c, !175, !"rtl_debug_priv_bb_1c", i1 false, i1 false}
!175 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 152, i32 1}
!176 = !{ptr @rtl_debug_priv_bb_1d, !177, !"rtl_debug_priv_bb_1d", i1 false, i1 false}
!177 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 153, i32 1}
!178 = !{ptr @rtl_debug_priv_bb_1e, !179, !"rtl_debug_priv_bb_1e", i1 false, i1 false}
!179 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 154, i32 1}
!180 = !{ptr @rtl_debug_priv_bb_1f, !181, !"rtl_debug_priv_bb_1f", i1 false, i1 false}
!181 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 155, i32 1}
!182 = !{ptr @rtl_debug_priv_rf_a, !183, !"rtl_debug_priv_rf_a", i1 false, i1 false}
!183 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 187, i32 1}
!184 = !{ptr @.str.53, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 169, i32 16}
!186 = !{ptr @rtl_debug_priv_rf_b, !187, !"rtl_debug_priv_rf_b", i1 false, i1 false}
!187 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 188, i32 1}
!188 = !{ptr @rtl_debug_priv_cam_1, !189, !"rtl_debug_priv_cam_1", i1 false, i1 false}
!189 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 242, i32 1}
!190 = !{ptr @.str.54, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 204, i32 6}
!192 = !{ptr @.str.55, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 208, i32 17}
!194 = !{ptr @.str.56, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 229, i32 18}
!196 = !{ptr @rtl_debug_priv_cam_2, !197, !"rtl_debug_priv_cam_2", i1 false, i1 false}
!197 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 243, i32 1}
!198 = !{ptr @rtl_debug_priv_cam_3, !199, !"rtl_debug_priv_cam_3", i1 false, i1 false}
!199 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 244, i32 1}
!200 = !{ptr @rtl_debug_priv_btcoex, !201, !"rtl_debug_priv_btcoex", i1 false, i1 false}
!201 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 260, i32 32}
!202 = !{ptr @rtl_debug_priv_write_reg, !203, !"rtl_debug_priv_write_reg", i1 false, i1 false}
!203 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 310, i32 32}
!204 = !{ptr @.str.57, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 287, i32 20}
!206 = distinct !{null, !207, !"__already_done", i1 false, i1 false}
!207 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!208 = distinct !{null, !207, !"<string literal>", i1 false, i1 false}
!209 = distinct !{null, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!211 = !{ptr @.str.60, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!213 = !{ptr @file_ops_common_write, !214, !"file_ops_common_write", i1 false, i1 false}
!214 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 415, i32 37}
!215 = !{ptr @rtl_debug_priv_write_h2c, !216, !"rtl_debug_priv_write_h2c", i1 false, i1 false}
!216 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 356, i32 32}
!217 = !{ptr @.str.61, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 337, i32 24}
!219 = !{ptr @rtl_debug_priv_write_rfreg, !220, !"rtl_debug_priv_write_rfreg", i1 false, i1 false}
!220 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 397, i32 32}
!221 = !{ptr @.str.62, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 383, i32 20}
!223 = !{ptr @.str.63, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/net/wireless/realtek/rtlwifi/debug.c", i32 387, i32 3}
!225 = !{!"sp"}
!226 = !{i32 1, !"wchar_size", i32 2}
!227 = !{i32 1, !"min_enum_size", i32 4}
!228 = !{i32 8, !"branch-target-enforcement", i32 0}
!229 = !{i32 8, !"sign-return-address", i32 0}
!230 = !{i32 8, !"sign-return-address-all", i32 0}
!231 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!232 = !{i32 7, !"uwtable", i32 1}
!233 = !{i32 7, !"frame-pointer", i32 2}
!234 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!235 = !{!"branch_weights", i32 2000, i32 1}
!236 = !{!"auto-init"}
!237 = !{i64 2148317892, i64 2148317897, i64 2148317910, i64 2148317954, i64 2148317988, i64 2148318009}
!238 = !{i8 0, i8 2}
!239 = !{i64 2152429093, i64 2152429118}
!240 = !{i64 4924648}
!241 = !{i64 4924845}
!242 = !{i64 2152410078}
