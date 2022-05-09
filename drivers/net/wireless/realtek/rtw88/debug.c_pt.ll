; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtw88/debug.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtw88/debug.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+__rtw_dbg\22, \22a\22\09"
module asm "\09.weak\09__crc___rtw_dbg\09\09\09\09"
module asm "\09.long\09__crc___rtw_dbg\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___rtw_dbg:\09\09\09\09\09"
module asm "\09.asciz \09\22__rtw_dbg\22\09\09\09\09\09"
module asm "__kstrtabns___rtw_dbg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.rtw_debugfs_priv = type { ptr, ptr, ptr, %union.anon.135 }
%union.anon.135 = type { %struct.anon.137 }
%struct.anon.137 = type { i8, i32, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rtw_dev = type { ptr, ptr, %struct.rtw_hci, %struct.rtw_hw_scan_info, ptr, %struct.rtw_hal, %struct.rtw_fifo_conf, %struct.rtw_fw_state, %struct.rtw_efuse, %struct.rtw_sec_desc, %struct.rtw_traffic_stats, %struct.rtw_regd, %struct.rtw_bf_info, %struct.rtw_dm_info, %struct.rtw_coex, %struct.mutex, %struct.spinlock, %struct.delayed_work, i32, %struct.list_head, %struct.sk_buff_head, %struct.work_struct, %struct.work_struct, %struct.spinlock, %struct.list_head, ptr, %struct.work_struct, %struct.work_struct, %struct.rtw_tx_report, %struct.anon.134, %struct.rtw_lps_conf, i8, i8, %struct.completion, ptr, i8, i32, [1 x i32], [1 x i32], i8, %struct.rtw_path_div, %struct.rtw_fw_state, %struct.rtw_wow_param, i8, %struct.completion, [0 x i8] }
%struct.rtw_hci = type { ptr, i32, i32, i32, i8 }
%struct.rtw_hw_scan_info = type { ptr, i8, i8, i8, i8 }
%struct.rtw_hal = type { i32, i32, i8, i8, i8, %struct.rtw_phy_cond, i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i32, i32, i8, %struct.mutex, [4 x [84 x i8]], [4 x [84 x i8]], [4 x [6 x i8]], [4 x [6 x i8]], [11 x [3 x [6 x [14 x i8]]]], [11 x [3 x [6 x [49 x i8]]]], [4 x [84 x i8]], i32, %struct.rtw_sar }
%struct.rtw_phy_cond = type { i32 }
%struct.rtw_sar = type { i32, [4 x [6 x %union.rtw_sar_cfg]] }
%union.rtw_sar_cfg = type { [4 x i8] }
%struct.rtw_fifo_conf = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr }
%struct.rtw_efuse = type { i32, i32, i32, i32, [6 x i8], i8, [2 x i8], i8, i8, i8, [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.anon.132, [4 x %struct.rtw_txpwr_idx] }
%struct.anon.132 = type { i8, i8, i8, i8, i8 }
%struct.rtw_txpwr_idx = type { %struct.rtw_2g_txpwr_idx, %struct.rtw_5g_txpwr_idx }
%struct.rtw_2g_txpwr_idx = type { [6 x i8], [5 x i8], %struct.rtw_2g_1s_pwr_idx_diff, %struct.rtw_2g_ns_pwr_idx_diff, %struct.rtw_2g_ns_pwr_idx_diff, %struct.rtw_2g_ns_pwr_idx_diff }
%struct.rtw_2g_1s_pwr_idx_diff = type { i8 }
%struct.rtw_2g_ns_pwr_idx_diff = type { i16 }
%struct.rtw_5g_txpwr_idx = type { [14 x i8], %struct.rtw_5g_ht_1s_pwr_idx_diff, %struct.rtw_5g_ht_ns_pwr_idx_diff, %struct.rtw_5g_ht_ns_pwr_idx_diff, %struct.rtw_5g_ht_ns_pwr_idx_diff, %struct.rtw_5g_ofdm_ns_pwr_idx_diff, %struct.rtw_5g_vht_ns_pwr_idx_diff, %struct.rtw_5g_vht_ns_pwr_idx_diff, %struct.rtw_5g_vht_ns_pwr_idx_diff, %struct.rtw_5g_vht_ns_pwr_idx_diff }
%struct.rtw_5g_ht_1s_pwr_idx_diff = type { i8 }
%struct.rtw_5g_ht_ns_pwr_idx_diff = type { i8 }
%struct.rtw_5g_ofdm_ns_pwr_idx_diff = type { i16 }
%struct.rtw_5g_vht_ns_pwr_idx_diff = type { i8 }
%struct.rtw_sec_desc = type { i8, i32, [32 x %struct.rtw_cam_entry], [1 x i32] }
%struct.rtw_cam_entry = type { i8, i8, [6 x i8], i8, ptr }
%struct.rtw_traffic_stats = type { i64, i64, i64, i64, i32, i32, %struct.ewma_tp, %struct.ewma_tp }
%struct.ewma_tp = type { i32 }
%struct.rtw_regd = type { i32, ptr, i32 }
%struct.rtw_bf_info = type { i8, i8, [1 x i32], i8 }
%struct.rtw_dm_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [4 x i16], [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, [4 x i8], i8, i8, [4 x i8], [4 x i8], i8, i8, i8, [4 x %struct.ewma_thermal], i8, i8, [4 x i32], [4 x [2 x [15 x i16]]], [4 x [2 x [2 x i8]]], %struct.rtw_dpk_info, %struct.rtw_cfo_track, [2 x [4 x i8]], i32, i8, [4 x i8], [4 x i8], [4 x i16], [4 x i8], i8, %struct.rtw_pkt_count, %struct.rtw_pkt_count, [4 x %struct.ewma_evm], [12 x %struct.ewma_snr], i32, %struct.rtw_iqk_info, %struct.rtw_gapk_info, i8, i8, i32, i8 }
%struct.ewma_thermal = type { i32 }
%struct.rtw_dpk_info = type { i8, i8, [1 x i32], [2 x i8], [2 x %struct.ewma_thermal], i32, i32, [4 x i8], [4 x i8], [4 x [20 x i32]], [4 x i16], [4 x i8], [4 x i8], i8, i8, i8 }
%struct.rtw_cfo_track = type { i8, i8, [4 x i32], [4 x i32], i32, i32 }
%struct.rtw_pkt_count = type { i16, [84 x i16] }
%struct.ewma_evm = type { i32 }
%struct.ewma_snr = type { i32 }
%struct.rtw_iqk_info = type { i8, %struct.anon.133 }
%struct.anon.133 = type { i32, i32, i32, i32 }
%struct.rtw_gapk_info = type { [5 x [11 x [4 x i32]]], [4 x [11 x i32]], i8, [11 x [4 x i8]], [11 x [4 x i8]], i8, i8 }
%struct.rtw_coex = type { %struct.mutex, %struct.sk_buff_head, %struct.wait_queue_head, i8, i8, i8, i8, i8, i8, %struct.rtw_coex_stat, %struct.rtw_coex_dm, %struct.rtw_coex_rfe, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.rtw_coex_stat = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, [6 x [10 x i8]], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, [10 x i8], [10 x i8], i8, i8, i8, i8, i8, i8, i8, [6 x i8], i8, i16, i16, [13 x i32], [8 x i32], [6 x i32], i32, i32 }
%struct.rtw_coex_dm = type { i8, i8, i8, i8, [4 x i8], [4 x i8], [3 x i8], i8, i8, [5 x i8], i8, i8, i8, i8, i32, i32, i32, [5 x i8] }
%struct.rtw_coex_rfe = type { i8, i8, i8, i8, i8, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rtw_tx_report = type { %struct.spinlock, %struct.sk_buff_head, %struct.atomic_t, %struct.timer_list }
%struct.anon.134 = type { i8, %struct.spinlock, i32 }
%struct.rtw_lps_conf = type { i32, i32, i32, i32, i8, i8, i8, i8, i8, i8 }
%struct.rtw_path_div = type { i32, i32, i32, i16, i16 }
%struct.rtw_fw_state = type { ptr, ptr, %struct.completion, %struct.rtw_fwcd_desc, i16, i8, i8, i16, i32 }
%struct.rtw_fwcd_desc = type { i32, ptr, ptr }
%struct.rtw_wow_param = type { ptr, [1 x i32], i8, i8, [12 x %struct.rtw_wow_pattern], i8, %struct.rtw_pno_request }
%struct.rtw_wow_pattern = type { i16, i8, i8, [16 x i8] }
%struct.rtw_pno_request = type { i8, i32, ptr, i8, ptr, %struct.cfg80211_sched_scan_plan }
%struct.cfg80211_sched_scan_plan = type { i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.128 = type { i32, i16 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.124, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type { ptr }
%struct.anon.124 = type { i64, i64, i8 }
%struct.rtw_chip_info = type { ptr, i8, ptr, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [6 x i16], ptr, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x i32], [2 x i32], ptr, i8, ptr, ptr, ptr, ptr, [4 x ptr], ptr, ptr, i32, i8, i16, i8, i8, ptr, i8, i8, ptr, i8, i8, ptr, ptr, i8, [3 x i32], i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.va_format = type { ptr, ptr }
%struct.__va_list = type { ptr }
%struct.file = type { %union.anon.1, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.1 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.rtw_hci_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.93, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.94, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.95, ptr, %struct.address_space, %struct.list_head, %union.anon.98, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.93 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.94 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.95 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.98 = type { ptr }
%struct.rtw_chip_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rtw_power_params = type { i8, i8, i8, i8, i8 }

@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%-40s = %ddBm/ %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"RSSI/ STA Channel\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"TP {Tx, Rx} = {%u, %u}Mbps\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"[Tx Rate] = \00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"(0x%x)\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"[Rx Rate] = \00", [19 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rtw88\00", [26 x i8] zeroinitializer }, align 32
@rtw_debug_priv_write_reg = internal global { %struct.rtw_debugfs_priv, [40 x i8] } { %struct.rtw_debugfs_priv { ptr null, ptr null, ptr @rtw_debugfs_set_write_reg, %union.anon.135 zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"write_reg\00", [22 x i8] zeroinitializer }, align 32
@file_ops_common_write = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr null, ptr @rtw_debugfs_common_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr @rtw_debugfs_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@rtw_debugfs_init.__UNIQUE_ID_ddebug422 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, i8 1, i8 47, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rtw88_core\00", [21 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rtw_debugfs_init\00", [47 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/wireless/realtek/rtw88/debug.c\00", [53 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unable to initialize debugfs:%s\0A\00", [63 x i8] zeroinitializer }, align 32
@rtw_debug_priv_read_reg = internal global { %struct.rtw_debugfs_priv, [40 x i8] } { %struct.rtw_debugfs_priv { ptr null, ptr @rtw_debugfs_get_read_reg, ptr @rtw_debugfs_set_read_reg, %union.anon.135 zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"read_reg\00", [23 x i8] zeroinitializer }, align 32
@file_ops_single_rw = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @rtw_debugfs_single_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @rtw_debugfs_single_open_rw, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@rtw_debugfs_init.__UNIQUE_ID_ddebug423 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, i8 1, i8 47, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@rtw_debug_priv_rf_write = internal global { %struct.rtw_debugfs_priv, [40 x i8] } { %struct.rtw_debugfs_priv { ptr null, ptr null, ptr @rtw_debugfs_set_rf_write, %union.anon.135 zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rf_write\00", [23 x i8] zeroinitializer }, align 32
@rtw_debugfs_init.__UNIQUE_ID_ddebug424 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, i8 1, i8 47, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@rtw_debug_priv_rf_read = internal global { %struct.rtw_debugfs_priv, [40 x i8] } { %struct.rtw_debugfs_priv { ptr null, ptr @rtw_debugfs_get_rf_read, ptr @rtw_debugfs_set_rf_read, %union.anon.135 zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rf_read\00", [24 x i8] zeroinitializer }, align 32
@rtw_debugfs_init.__UNIQUE_ID_ddebug425 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, i8 1, i8 48, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@rtw_debug_priv_fix_rate = internal global { %struct.rtw_debugfs_priv, [40 x i8] } { %struct.rtw_debugfs_priv { ptr null, ptr @rtw_debugfs_get_fix_rate, ptr @rtw_debugfs_set_fix_rate, %union.anon.135 zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fix_rate\00", [23 x i8] zeroinitializer }, align 32
@rtw_debugfs_init.__UNIQUE_ID_ddebug426 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, i8 1, i8 48, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@rtw_debug_priv_dump_cam = internal global { %struct.rtw_debugfs_priv, [40 x i8] } { %struct.rtw_debugfs_priv { ptr null, ptr @rtw_debugfs_get_dump_cam, ptr @rtw_debugfs_set_single_input, %union.anon.135 zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dump_cam\00", [23 x i8] zeroinitializer }, align 32
@rtw_debugfs_init.__UNIQUE_ID_ddebug427 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, i8 1, i8 48, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@rtw_debug_priv_rsvd_page = internal global { %struct.rtw_debugfs_priv, [40 x i8] } { %struct.rtw_debugfs_priv { ptr null, ptr @rtw_debugfs_get_rsvd_page, ptr @rtw_debugfs_set_rsvd_page, %union.anon.135 zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rsvd_page\00", [22 x i8] zeroinitializer }, align 32
@rtw_debugfs_init.__UNIQUE_ID_ddebug428 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, i8 1, i8 48, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@rtw_debug_priv_phy_info = internal global { %struct.rtw_debugfs_priv, [40 x i8] } { %struct.rtw_debugfs_priv { ptr null, ptr @rtw_debugfs_get_phy_info, ptr null, %union.anon.135 zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"phy_info\00", [23 x i8] zeroinitializer }, align 32
@file_ops_single_r = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @rtw_debugfs_single_open_rw, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@rtw_debugfs_init.__UNIQUE_ID_ddebug429 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, i8 1, i8 49, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@rtw_debug_priv_coex_info = internal global { %struct.rtw_debugfs_priv, [40 x i8] } { %struct.rtw_debugfs_priv { ptr null, ptr @rtw_debugfs_get_coex_info, ptr null, %union.anon.135 zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"coex_info\00", [22 x i8] zeroinitializer }, align 32
@rtw_debugfs_init.__UNIQUE_ID_ddebug430 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, i8 1, i8 49, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@rtw_debug_priv_coex_enable = internal global { %struct.rtw_debugfs_priv, [40 x i8] } { %struct.rtw_debugfs_priv { ptr null, ptr @rtw_debugfs_get_coex_enable, ptr @rtw_debugfs_set_coex_enable, %union.anon.135 zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"coex_enable\00", [20 x i8] zeroinitializer }, align 32
@rtw_debugfs_init.__UNIQUE_ID_ddebug431 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, i8 1, i8 49, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@rtw_debug_priv_h2c = internal global { %struct.rtw_debugfs_priv, [40 x i8] } { %struct.rtw_debugfs_priv { ptr null, ptr null, ptr @rtw_debugfs_set_h2c, %union.anon.135 zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"h2c\00", [28 x i8] zeroinitializer }, align 32
@rtw_debugfs_init.__UNIQUE_ID_ddebug432 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, i8 1, i8 49, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mac_0\00", [26 x i8] zeroinitializer }, align 32
@rtw_debugfs_init.__UNIQUE_ID_ddebug433 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, i8 1, i8 50, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mac_1\00", [26 x i8] zeroinitializer }, align 32
@rtw_debugfs_init.__UNIQUE_ID_ddebug434 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, i8 1, i8 50, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mac_2\00", [26 x i8] zeroinitializer }, align 32
@rtw_debugfs_init.__UNIQUE_ID_ddebug435 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, i8 1, i8 50, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mac_3\00", [26 x i8] zeroinitializer }, align 32
@rtw_debugfs_init.__UNIQUE_ID_ddebug436 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, i8 1, i8 50, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mac_4\00", [26 x i8] zeroinitializer }, align 32
@rtw_debugfs_init.__UNIQUE_ID_ddebug437 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, i8 1, i8 51, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mac_5\00", [26 x i8] zeroinitializer }, align 32
@rtw_debugfs_init.__UNIQUE_ID_ddebug438 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, i8 1, i8 51, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mac_6\00", [26 x i8] zeroinitializer }, align 32
@rtw_debugfs_init.__UNIQUE_ID_ddebug439 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, i8 1, i8 51, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mac_7\00", [26 x i8] zeroinitializer }, align 32
@rtw_debugfs_init.__UNIQUE_ID_ddebug440 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, i8 1, i8 51, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bb_8\00", [27 x i8] zeroinitializer }, align 32
@rtw_debugfs_init.__UNIQUE_ID_ddebug441 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, i8 1, i8 52, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bb_9\00", [27 x i8] zeroinitializer }, align 32
@rtw_debugfs_init.__UNIQUE_ID_ddebug442 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, i8 1, i8 52, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bb_a\00", [27 x i8] zeroinitializer }, align 32
@rtw_debugfs_init.__UNIQUE_ID_ddebug443 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, i8 1, i8 52, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bb_b\00", [27 x i8] zeroinitializer }, align 32
@rtw_debugfs_init.__UNIQUE_ID_ddebug444 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, i8 1, i8 52, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bb_c\00", [27 x i8] zeroinitializer }, align 32
@rtw_debugfs_init.__UNIQUE_ID_ddebug445 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, i8 1, i8 53, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bb_d\00", [27 x i8] zeroinitializer }, align 32
@rtw_debugfs_init.__UNIQUE_ID_ddebug446 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, i8 1, i8 53, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bb_e\00", [27 x i8] zeroinitializer }, align 32
@rtw_debugfs_init.__UNIQUE_ID_ddebug447 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, i8 1, i8 53, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bb_f\00", [27 x i8] zeroinitializer }, align 32
@rtw_debugfs_init.__UNIQUE_ID_ddebug448 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, i8 1, i8 53, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mac_10\00", [25 x i8] zeroinitializer }, align 32
@rtw_debugfs_init.__UNIQUE_ID_ddebug449 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, i8 1, i8 54, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mac_11\00", [25 x i8] zeroinitializer }, align 32
@rtw_debugfs_init.__UNIQUE_ID_ddebug450 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, i8 1, i8 54, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mac_12\00", [25 x i8] zeroinitializer }, align 32
@rtw_debugfs_init.__UNIQUE_ID_ddebug451 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, i8 1, i8 54, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mac_13\00", [25 x i8] zeroinitializer }, align 32
@rtw_debugfs_init.__UNIQUE_ID_ddebug452 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, i8 1, i8 54, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mac_14\00", [25 x i8] zeroinitializer }, align 32
@rtw_debugfs_init.__UNIQUE_ID_ddebug453 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, i8 1, i8 55, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mac_15\00", [25 x i8] zeroinitializer }, align 32
@rtw_debugfs_init.__UNIQUE_ID_ddebug454 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, i8 1, i8 55, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mac_16\00", [25 x i8] zeroinitializer }, align 32
@rtw_debugfs_init.__UNIQUE_ID_ddebug455 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, i8 1, i8 55, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mac_17\00", [25 x i8] zeroinitializer }, align 32
@rtw_debugfs_init.__UNIQUE_ID_ddebug456 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, i8 1, i8 55, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"bb_18\00", [26 x i8] zeroinitializer }, align 32
@rtw_debugfs_init.__UNIQUE_ID_ddebug457 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, i8 1, i8 56, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"bb_19\00", [26 x i8] zeroinitializer }, align 32
@rtw_debugfs_init.__UNIQUE_ID_ddebug458 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, i8 1, i8 56, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"bb_1a\00", [26 x i8] zeroinitializer }, align 32
@rtw_debugfs_init.__UNIQUE_ID_ddebug459 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, i8 1, i8 56, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"bb_1b\00", [26 x i8] zeroinitializer }, align 32
@rtw_debugfs_init.__UNIQUE_ID_ddebug460 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, i8 1, i8 56, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"bb_1c\00", [26 x i8] zeroinitializer }, align 32
@rtw_debugfs_init.__UNIQUE_ID_ddebug461 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, i8 1, i8 57, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"bb_1d\00", [26 x i8] zeroinitializer }, align 32
@rtw_debugfs_init.__UNIQUE_ID_ddebug462 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, i8 1, i8 57, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"bb_1e\00", [26 x i8] zeroinitializer }, align 32
@rtw_debugfs_init.__UNIQUE_ID_ddebug463 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, i8 1, i8 57, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"bb_1f\00", [26 x i8] zeroinitializer }, align 32
@rtw_debugfs_init.__UNIQUE_ID_ddebug464 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, i8 1, i8 57, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"bb_2c\00", [26 x i8] zeroinitializer }, align 32
@rtw_debugfs_init.__UNIQUE_ID_ddebug465 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, i8 1, i8 58, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"bb_2d\00", [26 x i8] zeroinitializer }, align 32
@rtw_debugfs_init.__UNIQUE_ID_ddebug466 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, i8 1, i8 58, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"bb_40\00", [26 x i8] zeroinitializer }, align 32
@rtw_debugfs_init.__UNIQUE_ID_ddebug467 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, i8 1, i8 58, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"bb_41\00", [26 x i8] zeroinitializer }, align 32
@rtw_debugfs_init.__UNIQUE_ID_ddebug468 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, i8 1, i8 59, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@rtw_debug_priv_rf_dump = internal global { %struct.rtw_debugfs_priv, [40 x i8] } { %struct.rtw_debugfs_priv { ptr null, ptr @rtw_debug_get_rf_dump, ptr null, %union.anon.135 zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rf_dump\00", [24 x i8] zeroinitializer }, align 32
@rtw_debugfs_init.__UNIQUE_ID_ddebug469 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, i8 1, i8 59, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@rtw_debug_priv_tx_pwr_tbl = internal global { %struct.rtw_debugfs_priv, [40 x i8] } { %struct.rtw_debugfs_priv { ptr null, ptr @rtw_debugfs_get_tx_pwr_tbl, ptr null, %union.anon.135 zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tx_pwr_tbl\00", [21 x i8] zeroinitializer }, align 32
@rtw_debugfs_init.__UNIQUE_ID_ddebug470 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, i8 1, i8 59, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@rtw_debug_priv_edcca_enable = internal global { %struct.rtw_debugfs_priv, [40 x i8] } { %struct.rtw_debugfs_priv { ptr null, ptr @rtw_debugfs_get_edcca_enable, ptr @rtw_debugfs_set_edcca_enable, %union.anon.135 zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"edcca_enable\00", [19 x i8] zeroinitializer }, align 32
@rtw_debugfs_init.__UNIQUE_ID_ddebug471 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, i8 1, i8 60, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@rtw_debug_priv_fw_crash = internal global { %struct.rtw_debugfs_priv, [40 x i8] } { %struct.rtw_debugfs_priv { ptr null, ptr @rtw_debugfs_get_fw_crash, ptr @rtw_debugfs_set_fw_crash, %union.anon.135 zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fw_crash\00", [23 x i8] zeroinitializer }, align 32
@rtw_debugfs_init.__UNIQUE_ID_ddebug472 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, i8 1, i8 60, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@rtw_debug_priv_force_lowest_basic_rate = internal global { %struct.rtw_debugfs_priv, [40 x i8] } { %struct.rtw_debugfs_priv { ptr null, ptr @rtw_debugfs_get_force_lowest_basic_rate, ptr @rtw_debugfs_set_force_lowest_basic_rate, %union.anon.135 zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"force_lowest_basic_rate\00", [40 x i8] zeroinitializer }, align 32
@rtw_debugfs_init.__UNIQUE_ID_ddebug473 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, i8 1, i8 60, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@rtw_debug_priv_dm_cap = internal global { %struct.rtw_debugfs_priv, [40 x i8] } { %struct.rtw_debugfs_priv { ptr null, ptr @rtw_debugfs_get_dm_cap, ptr @rtw_debugfs_set_dm_cap, %union.anon.135 zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dm_cap\00", [25 x i8] zeroinitializer }, align 32
@rtw_debugfs_init.__UNIQUE_ID_ddebug474 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, i8 1, i8 60, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@rtw_debug_mask = external dso_local local_unnamed_addr global i32, align 4
@__rtw_dbg._entry = internal constant %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.10, i32 1286, ptr @.str.66, ptr @.str.67 }, align 1
@.str.64 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%pV\00", [28 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"__rtw_dbg\00", [22 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@__rtw_dbg._entry_ptr = internal global ptr @__rtw_dbg._entry, section ".printk_index", align 4
@__kstrtab___rtw_dbg = external dso_local constant [0 x i8], align 1
@__kstrtabns___rtw_dbg = external dso_local constant [0 x i8], align 1
@__ksymtab___rtw_dbg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__rtw_dbg to i32), ptr @__kstrtab___rtw_dbg, ptr @__kstrtabns___rtw_dbg }, section "___ksymtab+__rtw_dbg", align 4
@.str.68 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c" Unknown rate=0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@rtw_print_cck_rate_txt.cck_rate = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72], [16 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"1M\00", [29 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"2M\00", [29 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"5.5M\00", [27 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"11M\00", [28 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" CCK_%-5s\00", [22 x i8] zeroinitializer }, align 32
@rtw_print_ofdm_rate_txt.ofdm_rate = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81], [32 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"6M\00", [29 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"9M\00", [29 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"12M\00", [28 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"18M\00", [28 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"24M\00", [28 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"36M\00", [28 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"48M\00", [28 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"54M\00", [28 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c" OFDM_%-4s\00", [21 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" MCS%-6u\00", [23 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c" VHT%uSMCS%u\00", [19 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%x %x %x\00", [23 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"reg write8 0x%03x: 0x%08x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"reg write16 0x%03x: 0x%08x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"reg write32 0x%03x: 0x%08x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"error write length = %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"reg 0x%03x: 0x%02x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"reg 0x%03x: 0x%04x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"reg 0x%03x: 0x%08x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%x %x\00", [26 x i8] zeroinitializer }, align 32
@rtw_debugfs_set_read_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.98, ptr @.str.10, i32 211, ptr @.str.99, ptr @.str.67 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"read reg setting wrong len\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rtw_debugfs_set_read_reg\00", [39 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@rtw_debugfs_set_read_reg._entry_ptr = internal global ptr @rtw_debugfs_set_read_reg._entry, section ".printk_index", align 4
@.str.100 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%x %x %x %x\00", [20 x i8] zeroinitializer }, align 32
@rtw_debugfs_set_rf_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.102, ptr @.str.10, i32 417, ptr @.str.99, ptr @.str.67 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"invalid args, [path] [addr] [mask] [val]\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rtw_debugfs_set_rf_write\00", [39 x i8] zeroinitializer }, align 32
@rtw_debugfs_set_rf_write._entry_ptr = internal global ptr @rtw_debugfs_set_rf_write._entry, section ".printk_index", align 4
@.str.103 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"write_rf path:%d addr:0x%08x mask:0x%08x, val:0x%08x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"rf_read path:%d addr:0x%08x mask:0x%08x val=0x%08x\0A\00", [44 x i8] zeroinitializer }, align 32
@rtw_debugfs_set_rf_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.105, ptr @.str.10, i32 445, ptr @.str.99, ptr @.str.67 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rtw_debugfs_set_rf_read\00", [40 x i8] zeroinitializer }, align 32
@rtw_debugfs_set_rf_read._entry_ptr = internal global ptr @rtw_debugfs_set_rf_read._entry, section ".printk_index", align 4
@.str.106 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Fix rate disabled, fix_rate = %u\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Data frames fixed at desc rate %u\0A\00", [61 x i8] zeroinitializer }, align 32
@rtw_debugfs_set_fix_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.109, ptr @.str.10, i32 472, ptr @.str.99, ptr @.str.67 }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"invalid args, [rate]\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rtw_debugfs_set_fix_rate\00", [39 x i8] zeroinitializer }, align 32
@rtw_debugfs_set_fix_rate._entry_ptr = internal global ptr @rtw_debugfs_set_fix_rate._entry, section ".printk_index", align 4
@.str.110 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cam entry%d\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"0x0      0x1      0x2     0x3     \00", [61 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"0x4     0x5\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%8.8x\00", [26 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@rtw_debugfs_set_single_input._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.117, ptr @.str.10, i32 325, ptr @.str.99, ptr @.str.67 }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"kstrtoint failed\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"rtw_debugfs_set_single_input\00", [35 x i8] zeroinitializer }, align 32
@rtw_debugfs_set_single_input._entry_ptr = internal global ptr @rtw_debugfs_set_single_input._entry, section ".printk_index", align 4
@rtw_debugfs_get_rsvd_page._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.119, ptr @.str.10, i32 264, ptr @.str.120, ptr @.str.67 }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to dump rsvd page\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rtw_debugfs_get_rsvd_page\00", [38 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@rtw_debugfs_get_rsvd_page._entry_ptr = internal global ptr @rtw_debugfs_get_rsvd_page._entry, section ".printk_index", align 4
@.str.121 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PAGE %d\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%2.2x %2.2x %2.2x %2.2x %2.2x %2.2x %2.2x %2.2x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%d %d\00", [26 x i8] zeroinitializer }, align 32
@rtw_debugfs_set_rsvd_page._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.125, ptr @.str.10, i32 299, ptr @.str.99, ptr @.str.67 }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"invalid arguments\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rtw_debugfs_set_rsvd_page\00", [38 x i8] zeroinitializer }, align 32
@rtw_debugfs_set_rsvd_page._entry_ptr = internal global ptr @rtw_debugfs_set_rsvd_page._entry, section ".printk_index", align 4
@.str.126 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"==========[Common Info]========\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Is link = %c\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Current CH(fc) = %u\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Current BW = %u\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Current IGI = 0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"TP {Tx, Rx} = {%u, %u}Mbps\0A\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"==========[Tx Phy Info]========\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"(0x%x)\0A\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"==========[Rx Phy Info]========\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"[Rx Beacon Count] = %u\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"[Rx Rate Count]:\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c" * CCK = {%u, %u, %u, %u}\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c" * OFDM = {%u, %u, %u, %u, %u, %u, %u, %u}\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c" * HT_MCS[%u:%u] = {%u, %u, %u, %u, %u, %u, %u, %u}\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c" * VHT_MCS-%uss MCS[0:9] = {%u, %u, %u, %u, %u, %u, %u, %u, %u, %u}\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"[RSSI(dBm)] = {%d, %d}\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"[Rx EVM(dB)] = {-%d, -%d}\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"[Rx SNR] = {%d, %d}\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"[CFO_tail(KHz)] = {%d, %d}\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"[Rx Average Status]:\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c" * OFDM, EVM: {-%d}, SNR: {%d}\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c" * 1SS, EVM: {-%d}, SNR: {%d}\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c" * 2SS, EVM: {-%d, -%d}, SNR: {%d, %d}\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"[Rx Counter]:\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c" * CCA (CCK, OFDM, Total) = (%u, %u, %u)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c" * False Alarm (CCK, OFDM, Total) = (%u, %u, %u)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c" * CCK cnt (ok, err) = (%u, %u)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c" * OFDM cnt (ok, err) = (%u, %u)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c" * HT cnt (ok, err) = (%u, %u)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c" * VHT cnt (ok, err) = (%u, %u)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"coex mechanism %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@rtw_debugfs_set_coex_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.159, ptr @.str.10, i32 854, ptr @.str.99, ptr @.str.67 }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rtw_debugfs_set_coex_enable\00", [36 x i8] zeroinitializer }, align 32
@rtw_debugfs_set_coex_enable._entry_ptr = internal global ptr @rtw_debugfs_set_coex_enable._entry, section ".printk_index", align 4
@.str.160 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%hhx,%hhx,%hhx,%hhx,%hhx,%hhx,%hhx,%hhx\00", [56 x i8] zeroinitializer }, align 32
@rtw_debugfs_set_h2c._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.161, ptr @.str.162, ptr @.str.10, i32 393, ptr @.str.163, ptr @.str.67 }, [40 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"invalid H2C command format for debug\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rtw_debugfs_set_h2c\00", [44 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@rtw_debugfs_set_h2c._entry_ptr = internal global ptr @rtw_debugfs_set_h2c._entry, section ".printk_index", align 4
@rtw_debug_priv_mac_0 = internal global { { ptr, ptr, ptr, { i32, [8 x i8] } }, [40 x i8] } { { ptr, ptr, ptr, { i32, [8 x i8] } } { ptr null, ptr @rtw_debug_get_mac_page, ptr null, { i32, [8 x i8] } { i32 0, [8 x i8] undef } }, [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\0A%8.8x  \00", [23 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%8.8x    \00", [22 x i8] zeroinitializer }, align 32
@rtw_debug_priv_mac_1 = internal global { { ptr, ptr, ptr, { i32, [8 x i8] } }, [40 x i8] } { { ptr, ptr, ptr, { i32, [8 x i8] } } { ptr null, ptr @rtw_debug_get_mac_page, ptr null, { i32, [8 x i8] } { i32 256, [8 x i8] undef } }, [40 x i8] zeroinitializer }, align 32
@rtw_debug_priv_mac_2 = internal global { { ptr, ptr, ptr, { i32, [8 x i8] } }, [40 x i8] } { { ptr, ptr, ptr, { i32, [8 x i8] } } { ptr null, ptr @rtw_debug_get_mac_page, ptr null, { i32, [8 x i8] } { i32 512, [8 x i8] undef } }, [40 x i8] zeroinitializer }, align 32
@rtw_debug_priv_mac_3 = internal global { { ptr, ptr, ptr, { i32, [8 x i8] } }, [40 x i8] } { { ptr, ptr, ptr, { i32, [8 x i8] } } { ptr null, ptr @rtw_debug_get_mac_page, ptr null, { i32, [8 x i8] } { i32 768, [8 x i8] undef } }, [40 x i8] zeroinitializer }, align 32
@rtw_debug_priv_mac_4 = internal global { { ptr, ptr, ptr, { i32, [8 x i8] } }, [40 x i8] } { { ptr, ptr, ptr, { i32, [8 x i8] } } { ptr null, ptr @rtw_debug_get_mac_page, ptr null, { i32, [8 x i8] } { i32 1024, [8 x i8] undef } }, [40 x i8] zeroinitializer }, align 32
@rtw_debug_priv_mac_5 = internal global { { ptr, ptr, ptr, { i32, [8 x i8] } }, [40 x i8] } { { ptr, ptr, ptr, { i32, [8 x i8] } } { ptr null, ptr @rtw_debug_get_mac_page, ptr null, { i32, [8 x i8] } { i32 1280, [8 x i8] undef } }, [40 x i8] zeroinitializer }, align 32
@rtw_debug_priv_mac_6 = internal global { { ptr, ptr, ptr, { i32, [8 x i8] } }, [40 x i8] } { { ptr, ptr, ptr, { i32, [8 x i8] } } { ptr null, ptr @rtw_debug_get_mac_page, ptr null, { i32, [8 x i8] } { i32 1536, [8 x i8] undef } }, [40 x i8] zeroinitializer }, align 32
@rtw_debug_priv_mac_7 = internal global { { ptr, ptr, ptr, { i32, [8 x i8] } }, [40 x i8] } { { ptr, ptr, ptr, { i32, [8 x i8] } } { ptr null, ptr @rtw_debug_get_mac_page, ptr null, { i32, [8 x i8] } { i32 1792, [8 x i8] undef } }, [40 x i8] zeroinitializer }, align 32
@rtw_debug_priv_bb_8 = internal global { { ptr, ptr, ptr, { i32, [8 x i8] } }, [40 x i8] } { { ptr, ptr, ptr, { i32, [8 x i8] } } { ptr null, ptr @rtw_debug_get_bb_page, ptr null, { i32, [8 x i8] } { i32 2048, [8 x i8] undef } }, [40 x i8] zeroinitializer }, align 32
@rtw_debug_priv_bb_9 = internal global { { ptr, ptr, ptr, { i32, [8 x i8] } }, [40 x i8] } { { ptr, ptr, ptr, { i32, [8 x i8] } } { ptr null, ptr @rtw_debug_get_bb_page, ptr null, { i32, [8 x i8] } { i32 2304, [8 x i8] undef } }, [40 x i8] zeroinitializer }, align 32
@rtw_debug_priv_bb_a = internal global { { ptr, ptr, ptr, { i32, [8 x i8] } }, [40 x i8] } { { ptr, ptr, ptr, { i32, [8 x i8] } } { ptr null, ptr @rtw_debug_get_bb_page, ptr null, { i32, [8 x i8] } { i32 2560, [8 x i8] undef } }, [40 x i8] zeroinitializer }, align 32
@rtw_debug_priv_bb_b = internal global { { ptr, ptr, ptr, { i32, [8 x i8] } }, [40 x i8] } { { ptr, ptr, ptr, { i32, [8 x i8] } } { ptr null, ptr @rtw_debug_get_bb_page, ptr null, { i32, [8 x i8] } { i32 2816, [8 x i8] undef } }, [40 x i8] zeroinitializer }, align 32
@rtw_debug_priv_bb_c = internal global { { ptr, ptr, ptr, { i32, [8 x i8] } }, [40 x i8] } { { ptr, ptr, ptr, { i32, [8 x i8] } } { ptr null, ptr @rtw_debug_get_bb_page, ptr null, { i32, [8 x i8] } { i32 3072, [8 x i8] undef } }, [40 x i8] zeroinitializer }, align 32
@rtw_debug_priv_bb_d = internal global { { ptr, ptr, ptr, { i32, [8 x i8] } }, [40 x i8] } { { ptr, ptr, ptr, { i32, [8 x i8] } } { ptr null, ptr @rtw_debug_get_bb_page, ptr null, { i32, [8 x i8] } { i32 3328, [8 x i8] undef } }, [40 x i8] zeroinitializer }, align 32
@rtw_debug_priv_bb_e = internal global { { ptr, ptr, ptr, { i32, [8 x i8] } }, [40 x i8] } { { ptr, ptr, ptr, { i32, [8 x i8] } } { ptr null, ptr @rtw_debug_get_bb_page, ptr null, { i32, [8 x i8] } { i32 3584, [8 x i8] undef } }, [40 x i8] zeroinitializer }, align 32
@rtw_debug_priv_bb_f = internal global { { ptr, ptr, ptr, { i32, [8 x i8] } }, [40 x i8] } { { ptr, ptr, ptr, { i32, [8 x i8] } } { ptr null, ptr @rtw_debug_get_bb_page, ptr null, { i32, [8 x i8] } { i32 3840, [8 x i8] undef } }, [40 x i8] zeroinitializer }, align 32
@rtw_debug_priv_mac_10 = internal global { { ptr, ptr, ptr, { i32, [8 x i8] } }, [40 x i8] } { { ptr, ptr, ptr, { i32, [8 x i8] } } { ptr null, ptr @rtw_debug_get_mac_page, ptr null, { i32, [8 x i8] } { i32 4096, [8 x i8] undef } }, [40 x i8] zeroinitializer }, align 32
@rtw_debug_priv_mac_11 = internal global { { ptr, ptr, ptr, { i32, [8 x i8] } }, [40 x i8] } { { ptr, ptr, ptr, { i32, [8 x i8] } } { ptr null, ptr @rtw_debug_get_mac_page, ptr null, { i32, [8 x i8] } { i32 4352, [8 x i8] undef } }, [40 x i8] zeroinitializer }, align 32
@rtw_debug_priv_mac_12 = internal global { { ptr, ptr, ptr, { i32, [8 x i8] } }, [40 x i8] } { { ptr, ptr, ptr, { i32, [8 x i8] } } { ptr null, ptr @rtw_debug_get_mac_page, ptr null, { i32, [8 x i8] } { i32 4608, [8 x i8] undef } }, [40 x i8] zeroinitializer }, align 32
@rtw_debug_priv_mac_13 = internal global { { ptr, ptr, ptr, { i32, [8 x i8] } }, [40 x i8] } { { ptr, ptr, ptr, { i32, [8 x i8] } } { ptr null, ptr @rtw_debug_get_mac_page, ptr null, { i32, [8 x i8] } { i32 4864, [8 x i8] undef } }, [40 x i8] zeroinitializer }, align 32
@rtw_debug_priv_mac_14 = internal global { { ptr, ptr, ptr, { i32, [8 x i8] } }, [40 x i8] } { { ptr, ptr, ptr, { i32, [8 x i8] } } { ptr null, ptr @rtw_debug_get_mac_page, ptr null, { i32, [8 x i8] } { i32 5120, [8 x i8] undef } }, [40 x i8] zeroinitializer }, align 32
@rtw_debug_priv_mac_15 = internal global { { ptr, ptr, ptr, { i32, [8 x i8] } }, [40 x i8] } { { ptr, ptr, ptr, { i32, [8 x i8] } } { ptr null, ptr @rtw_debug_get_mac_page, ptr null, { i32, [8 x i8] } { i32 5376, [8 x i8] undef } }, [40 x i8] zeroinitializer }, align 32
@rtw_debug_priv_mac_16 = internal global { { ptr, ptr, ptr, { i32, [8 x i8] } }, [40 x i8] } { { ptr, ptr, ptr, { i32, [8 x i8] } } { ptr null, ptr @rtw_debug_get_mac_page, ptr null, { i32, [8 x i8] } { i32 5632, [8 x i8] undef } }, [40 x i8] zeroinitializer }, align 32
@rtw_debug_priv_mac_17 = internal global { { ptr, ptr, ptr, { i32, [8 x i8] } }, [40 x i8] } { { ptr, ptr, ptr, { i32, [8 x i8] } } { ptr null, ptr @rtw_debug_get_mac_page, ptr null, { i32, [8 x i8] } { i32 5888, [8 x i8] undef } }, [40 x i8] zeroinitializer }, align 32
@rtw_debug_priv_bb_18 = internal global { { ptr, ptr, ptr, { i32, [8 x i8] } }, [40 x i8] } { { ptr, ptr, ptr, { i32, [8 x i8] } } { ptr null, ptr @rtw_debug_get_bb_page, ptr null, { i32, [8 x i8] } { i32 6144, [8 x i8] undef } }, [40 x i8] zeroinitializer }, align 32
@rtw_debug_priv_bb_19 = internal global { { ptr, ptr, ptr, { i32, [8 x i8] } }, [40 x i8] } { { ptr, ptr, ptr, { i32, [8 x i8] } } { ptr null, ptr @rtw_debug_get_bb_page, ptr null, { i32, [8 x i8] } { i32 6400, [8 x i8] undef } }, [40 x i8] zeroinitializer }, align 32
@rtw_debug_priv_bb_1a = internal global { { ptr, ptr, ptr, { i32, [8 x i8] } }, [40 x i8] } { { ptr, ptr, ptr, { i32, [8 x i8] } } { ptr null, ptr @rtw_debug_get_bb_page, ptr null, { i32, [8 x i8] } { i32 6656, [8 x i8] undef } }, [40 x i8] zeroinitializer }, align 32
@rtw_debug_priv_bb_1b = internal global { { ptr, ptr, ptr, { i32, [8 x i8] } }, [40 x i8] } { { ptr, ptr, ptr, { i32, [8 x i8] } } { ptr null, ptr @rtw_debug_get_bb_page, ptr null, { i32, [8 x i8] } { i32 6912, [8 x i8] undef } }, [40 x i8] zeroinitializer }, align 32
@rtw_debug_priv_bb_1c = internal global { { ptr, ptr, ptr, { i32, [8 x i8] } }, [40 x i8] } { { ptr, ptr, ptr, { i32, [8 x i8] } } { ptr null, ptr @rtw_debug_get_bb_page, ptr null, { i32, [8 x i8] } { i32 7168, [8 x i8] undef } }, [40 x i8] zeroinitializer }, align 32
@rtw_debug_priv_bb_1d = internal global { { ptr, ptr, ptr, { i32, [8 x i8] } }, [40 x i8] } { { ptr, ptr, ptr, { i32, [8 x i8] } } { ptr null, ptr @rtw_debug_get_bb_page, ptr null, { i32, [8 x i8] } { i32 7424, [8 x i8] undef } }, [40 x i8] zeroinitializer }, align 32
@rtw_debug_priv_bb_1e = internal global { { ptr, ptr, ptr, { i32, [8 x i8] } }, [40 x i8] } { { ptr, ptr, ptr, { i32, [8 x i8] } } { ptr null, ptr @rtw_debug_get_bb_page, ptr null, { i32, [8 x i8] } { i32 7680, [8 x i8] undef } }, [40 x i8] zeroinitializer }, align 32
@rtw_debug_priv_bb_1f = internal global { { ptr, ptr, ptr, { i32, [8 x i8] } }, [40 x i8] } { { ptr, ptr, ptr, { i32, [8 x i8] } } { ptr null, ptr @rtw_debug_get_bb_page, ptr null, { i32, [8 x i8] } { i32 7936, [8 x i8] undef } }, [40 x i8] zeroinitializer }, align 32
@rtw_debug_priv_bb_2c = internal global { { ptr, ptr, ptr, { i32, [8 x i8] } }, [40 x i8] } { { ptr, ptr, ptr, { i32, [8 x i8] } } { ptr null, ptr @rtw_debug_get_bb_page, ptr null, { i32, [8 x i8] } { i32 11264, [8 x i8] undef } }, [40 x i8] zeroinitializer }, align 32
@rtw_debug_priv_bb_2d = internal global { { ptr, ptr, ptr, { i32, [8 x i8] } }, [40 x i8] } { { ptr, ptr, ptr, { i32, [8 x i8] } } { ptr null, ptr @rtw_debug_get_bb_page, ptr null, { i32, [8 x i8] } { i32 11520, [8 x i8] undef } }, [40 x i8] zeroinitializer }, align 32
@rtw_debug_priv_bb_40 = internal global { { ptr, ptr, ptr, { i32, [8 x i8] } }, [40 x i8] } { { ptr, ptr, ptr, { i32, [8 x i8] } } { ptr null, ptr @rtw_debug_get_bb_page, ptr null, { i32, [8 x i8] } { i32 16384, [8 x i8] undef } }, [40 x i8] zeroinitializer }, align 32
@rtw_debug_priv_bb_41 = internal global { { ptr, ptr, ptr, { i32, [8 x i8] } }, [40 x i8] } { { ptr, ptr, ptr, { i32, [8 x i8] } } { ptr null, ptr @rtw_debug_get_bb_page, ptr null, { i32, [8 x i8] } { i32 16640, [8 x i8] undef } }, [40 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RF path:%d\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%8.8x  \00", [24 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"channel: %u\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bandwidth: %u\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"regulatory: %s\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%-4s %-10s %-9s %-9s (%-4s %-4s %-4s) %-4s\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"path\00", [27 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rate\00", [27 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pwr\00", [28 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"base\00", [27 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"byr\00", [28 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"lmt\00", [28 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sar\00", [28 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rem\00", [28 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%4c \00", [27 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c" %3u(0x%02x) %4u %4d (%4d %4d %4d) %4d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"FCC\00", [28 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MKK\00", [28 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ETSI\00", [27 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"IC\00", [29 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"KCC\00", [28 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ACMA\00", [27 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"CHILE\00", [26 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UKRAINE\00", [24 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MEXICO\00", [25 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"CN\00", [29 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"WW\00", [29 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"EDCCA %s: EDCCA mode %d\0A\00", [39 x i8] zeroinitializer }, align 32
@rtw_edcca_enabled = external dso_local local_unnamed_addr global i8, align 1
@.str.231 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"force lowest basic rate: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"(%2d) %c%s\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\0A(%2d) %c%s\0A\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"path %d:\0A0x%x = 0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"[TXGAPK] offset %d %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"TXGAPK\00", [25 x i8] zeroinitializer }, align 32
@rtw_debugfs_set_dm_cap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.239, ptr @.str.240, ptr @.str.10, i32 1003, ptr @.str.99, ptr @.str.67 }, [40 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"unknown DM CAP %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rtw_debugfs_set_dm_cap\00", [41 x i8] zeroinitializer }, align 32
@rtw_debugfs_set_dm_cap._entry_ptr = internal global ptr @rtw_debugfs_set_dm_cap._entry, section ".printk_index", align 4
@switch.table.rtw_debugfs_get_tx_pwr_tbl = internal constant { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228], [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [50 x i64] [i64 48, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 44, i64 45, i64 46, i64 47, i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55, i64 56, i64 57, i64 58, i64 59, i64 60, i64 61, i64 62, i64 63]
@__sancov_gen_cov_switch_values.241 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.242 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.243 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 686, i32 16 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 686, i32 39 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 689, i32 16 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 692, i32 14 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 694, i32 16 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 696, i32 14 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1211, i32 38 }
@___asan_gen_.265 = private unnamed_addr constant [25 x i8] c"rtw_debug_priv_write_reg\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1120, i32 32 }
@___asan_gen_.271 = private unnamed_addr constant [22 x i8] c"file_ops_common_write\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 104, i32 37 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1213, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant [24 x i8] c"rtw_debug_priv_read_reg\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1137, i32 32 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1214, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant [19 x i8] c"file_ops_single_rw\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 95, i32 37 }
@___asan_gen_.295 = private unnamed_addr constant [24 x i8] c"rtw_debug_priv_rf_write\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1128, i32 32 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1215, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant [23 x i8] c"rtw_debug_priv_rf_read\00", align 1
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1132, i32 32 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1216, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant [24 x i8] c"rtw_debug_priv_fix_rate\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1142, i32 32 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1217, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant [24 x i8] c"rtw_debug_priv_dump_cam\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1147, i32 32 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1218, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant [25 x i8] c"rtw_debug_priv_rsvd_page\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1152, i32 32 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1219, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant [24 x i8] c"rtw_debug_priv_phy_info\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1157, i32 32 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1220, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant [18 x i8] c"file_ops_single_r\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 87, i32 37 }
@___asan_gen_.334 = private unnamed_addr constant [25 x i8] c"rtw_debug_priv_coex_info\00", align 1
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1166, i32 32 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1221, i32 2 }
@___asan_gen_.340 = private unnamed_addr constant [27 x i8] c"rtw_debug_priv_coex_enable\00", align 1
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1161, i32 32 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1222, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant [19 x i8] c"rtw_debug_priv_h2c\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1124, i32 32 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1223, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1224, i32 2 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1225, i32 2 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1226, i32 2 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1227, i32 2 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1228, i32 2 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1229, i32 2 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1230, i32 2 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1231, i32 2 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1232, i32 2 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1233, i32 2 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1234, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1235, i32 2 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1236, i32 2 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1237, i32 2 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1238, i32 2 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1239, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1240, i32 2 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1241, i32 2 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1242, i32 2 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1243, i32 2 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1244, i32 2 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1245, i32 2 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1246, i32 2 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1247, i32 2 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1248, i32 2 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1249, i32 2 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1250, i32 2 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1251, i32 2 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1252, i32 2 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1253, i32 2 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1254, i32 2 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1255, i32 2 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1257, i32 3 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1258, i32 3 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1259, i32 3 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1260, i32 3 }
@___asan_gen_.460 = private unnamed_addr constant [23 x i8] c"rtw_debug_priv_rf_dump\00", align 1
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1112, i32 32 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1262, i32 2 }
@___asan_gen_.466 = private unnamed_addr constant [26 x i8] c"rtw_debug_priv_tx_pwr_tbl\00", align 1
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1116, i32 32 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1263, i32 2 }
@___asan_gen_.472 = private unnamed_addr constant [28 x i8] c"rtw_debug_priv_edcca_enable\00", align 1
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1170, i32 32 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1264, i32 2 }
@___asan_gen_.478 = private unnamed_addr constant [24 x i8] c"rtw_debug_priv_fw_crash\00", align 1
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1175, i32 32 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1265, i32 2 }
@___asan_gen_.484 = private unnamed_addr constant [39 x i8] c"rtw_debug_priv_force_lowest_basic_rate\00", align 1
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1180, i32 32 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1266, i32 2 }
@___asan_gen_.490 = private unnamed_addr constant [22 x i8] c"rtw_debug_priv_dm_cap\00", align 1
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1185, i32 32 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1267, i32 2 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1286, i32 3 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 596, i32 17 }
@___asan_gen_.511 = private unnamed_addr constant [9 x i8] c"cck_rate\00", align 1
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 546, i32 2 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 546, i32 16 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 546, i32 22 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 546, i32 28 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 546, i32 36 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 549, i32 16 }
@___asan_gen_.529 = private unnamed_addr constant [10 x i8] c"ofdm_rate\00", align 1
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 555, i32 2 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 555, i32 17 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 555, i32 23 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 555, i32 29 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 555, i32 36 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 555, i32 43 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 555, i32 50 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 555, i32 57 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 555, i32 64 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 558, i32 16 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 565, i32 16 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 577, i32 16 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 347, i32 20 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 354, i32 3 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 359, i32 3 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 364, i32 3 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 369, i32 3 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 230, i32 6 }
@___asan_gen_.584 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 214, i32 2 }
@___asan_gen_.587 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 156, i32 2 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 122, i32 17 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 126, i32 17 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 130, i32 17 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 205, i32 20 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 211, i32 3 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 414, i32 20 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 417, i32 3 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 422, i32 2 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 149, i32 16 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 445, i32 3 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 163, i32 17 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 167, i32 16 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 472, i32 3 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 229, i32 16 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 230, i32 14 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 231, i32 14 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 237, i32 17 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 239, i32 16 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 241, i32 14 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 325, i32 3 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 264, i32 3 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 271, i32 18 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 272, i32 17 }
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 296, i32 20 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 299, i32 3 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 713, i32 14 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 714, i32 16 }
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 715, i32 16 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 716, i32 16 }
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 717, i32 16 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 718, i32 16 }
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 721, i32 14 }
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 724, i32 16 }
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 726, i32 14 }
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 727, i32 16 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 732, i32 14 }
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 733, i32 16 }
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 739, i32 16 }
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 751, i32 17 }
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 765, i32 17 }
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 779, i32 16 }
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 782, i32 16 }
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 785, i32 16 }
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 788, i32 16 }
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 793, i32 15 }
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 794, i32 17 }
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 797, i32 17 }
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 800, i32 17 }
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 807, i32 14 }
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 808, i32 16 }
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 812, i32 16 }
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 816, i32 16 }
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 818, i32 16 }
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 820, i32 16 }
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 822, i32 16 }
@___asan_gen_.801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 871, i32 16 }
@___asan_gen_.804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 872, i32 29 }
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 872, i32 42 }
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 854, i32 3 }
@___asan_gen_.816 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 389, i32 20 }
@___asan_gen_.828 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 393, i32 3 }
@___asan_gen_.829 = private unnamed_addr constant [21 x i8] c"rtw_debug_priv_mac_0\00", align 1
@___asan_gen_.831 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1068, i32 1 }
@___asan_gen_.834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 491, i32 17 }
@___asan_gen_.837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 493, i32 18 }
@___asan_gen_.838 = private unnamed_addr constant [21 x i8] c"rtw_debug_priv_mac_1\00", align 1
@___asan_gen_.840 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1069, i32 1 }
@___asan_gen_.841 = private unnamed_addr constant [21 x i8] c"rtw_debug_priv_mac_2\00", align 1
@___asan_gen_.843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1070, i32 1 }
@___asan_gen_.844 = private unnamed_addr constant [21 x i8] c"rtw_debug_priv_mac_3\00", align 1
@___asan_gen_.846 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1071, i32 1 }
@___asan_gen_.847 = private unnamed_addr constant [21 x i8] c"rtw_debug_priv_mac_4\00", align 1
@___asan_gen_.849 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1072, i32 1 }
@___asan_gen_.850 = private unnamed_addr constant [21 x i8] c"rtw_debug_priv_mac_5\00", align 1
@___asan_gen_.852 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1073, i32 1 }
@___asan_gen_.853 = private unnamed_addr constant [21 x i8] c"rtw_debug_priv_mac_6\00", align 1
@___asan_gen_.855 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1074, i32 1 }
@___asan_gen_.856 = private unnamed_addr constant [21 x i8] c"rtw_debug_priv_mac_7\00", align 1
@___asan_gen_.858 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1075, i32 1 }
@___asan_gen_.859 = private unnamed_addr constant [20 x i8] c"rtw_debug_priv_bb_8\00", align 1
@___asan_gen_.861 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1091, i32 1 }
@___asan_gen_.862 = private unnamed_addr constant [20 x i8] c"rtw_debug_priv_bb_9\00", align 1
@___asan_gen_.864 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1092, i32 1 }
@___asan_gen_.865 = private unnamed_addr constant [20 x i8] c"rtw_debug_priv_bb_a\00", align 1
@___asan_gen_.867 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1093, i32 1 }
@___asan_gen_.868 = private unnamed_addr constant [20 x i8] c"rtw_debug_priv_bb_b\00", align 1
@___asan_gen_.870 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1094, i32 1 }
@___asan_gen_.871 = private unnamed_addr constant [20 x i8] c"rtw_debug_priv_bb_c\00", align 1
@___asan_gen_.873 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1095, i32 1 }
@___asan_gen_.874 = private unnamed_addr constant [20 x i8] c"rtw_debug_priv_bb_d\00", align 1
@___asan_gen_.876 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1096, i32 1 }
@___asan_gen_.877 = private unnamed_addr constant [20 x i8] c"rtw_debug_priv_bb_e\00", align 1
@___asan_gen_.879 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1097, i32 1 }
@___asan_gen_.880 = private unnamed_addr constant [20 x i8] c"rtw_debug_priv_bb_f\00", align 1
@___asan_gen_.882 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1098, i32 1 }
@___asan_gen_.883 = private unnamed_addr constant [22 x i8] c"rtw_debug_priv_mac_10\00", align 1
@___asan_gen_.885 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1076, i32 1 }
@___asan_gen_.886 = private unnamed_addr constant [22 x i8] c"rtw_debug_priv_mac_11\00", align 1
@___asan_gen_.888 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1077, i32 1 }
@___asan_gen_.889 = private unnamed_addr constant [22 x i8] c"rtw_debug_priv_mac_12\00", align 1
@___asan_gen_.891 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1078, i32 1 }
@___asan_gen_.892 = private unnamed_addr constant [22 x i8] c"rtw_debug_priv_mac_13\00", align 1
@___asan_gen_.894 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1079, i32 1 }
@___asan_gen_.895 = private unnamed_addr constant [22 x i8] c"rtw_debug_priv_mac_14\00", align 1
@___asan_gen_.897 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1080, i32 1 }
@___asan_gen_.898 = private unnamed_addr constant [22 x i8] c"rtw_debug_priv_mac_15\00", align 1
@___asan_gen_.900 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1081, i32 1 }
@___asan_gen_.901 = private unnamed_addr constant [22 x i8] c"rtw_debug_priv_mac_16\00", align 1
@___asan_gen_.903 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1082, i32 1 }
@___asan_gen_.904 = private unnamed_addr constant [22 x i8] c"rtw_debug_priv_mac_17\00", align 1
@___asan_gen_.906 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1083, i32 1 }
@___asan_gen_.907 = private unnamed_addr constant [21 x i8] c"rtw_debug_priv_bb_18\00", align 1
@___asan_gen_.909 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1099, i32 1 }
@___asan_gen_.910 = private unnamed_addr constant [21 x i8] c"rtw_debug_priv_bb_19\00", align 1
@___asan_gen_.912 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1100, i32 1 }
@___asan_gen_.913 = private unnamed_addr constant [21 x i8] c"rtw_debug_priv_bb_1a\00", align 1
@___asan_gen_.915 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1101, i32 1 }
@___asan_gen_.916 = private unnamed_addr constant [21 x i8] c"rtw_debug_priv_bb_1b\00", align 1
@___asan_gen_.918 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1102, i32 1 }
@___asan_gen_.919 = private unnamed_addr constant [21 x i8] c"rtw_debug_priv_bb_1c\00", align 1
@___asan_gen_.921 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1103, i32 1 }
@___asan_gen_.922 = private unnamed_addr constant [21 x i8] c"rtw_debug_priv_bb_1d\00", align 1
@___asan_gen_.924 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1104, i32 1 }
@___asan_gen_.925 = private unnamed_addr constant [21 x i8] c"rtw_debug_priv_bb_1e\00", align 1
@___asan_gen_.927 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1105, i32 1 }
@___asan_gen_.928 = private unnamed_addr constant [21 x i8] c"rtw_debug_priv_bb_1f\00", align 1
@___asan_gen_.930 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1106, i32 1 }
@___asan_gen_.931 = private unnamed_addr constant [21 x i8] c"rtw_debug_priv_bb_2c\00", align 1
@___asan_gen_.933 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1107, i32 1 }
@___asan_gen_.934 = private unnamed_addr constant [21 x i8] c"rtw_debug_priv_bb_2d\00", align 1
@___asan_gen_.936 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1108, i32 1 }
@___asan_gen_.937 = private unnamed_addr constant [21 x i8] c"rtw_debug_priv_bb_40\00", align 1
@___asan_gen_.939 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1109, i32 1 }
@___asan_gen_.940 = private unnamed_addr constant [21 x i8] c"rtw_debug_priv_bb_41\00", align 1
@___asan_gen_.942 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1110, i32 1 }
@___asan_gen_.945 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 527, i32 17 }
@___asan_gen_.948 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 529, i32 18 }
@___asan_gen_.951 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 634, i32 16 }
@___asan_gen_.954 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 635, i32 16 }
@___asan_gen_.957 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 636, i32 16 }
@___asan_gen_.960 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 637, i32 16 }
@___asan_gen_.963 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 638, i32 6 }
@___asan_gen_.966 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 638, i32 14 }
@___asan_gen_.969 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 638, i32 22 }
@___asan_gen_.972 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 638, i32 29 }
@___asan_gen_.975 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 638, i32 37 }
@___asan_gen_.978 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 638, i32 44 }
@___asan_gen_.981 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 638, i32 51 }
@___asan_gen_.984 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 638, i32 58 }
@___asan_gen_.987 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 658, i32 18 }
@___asan_gen_.990 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 660, i32 18 }
@___asan_gen_.993 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 607, i32 2 }
@___asan_gen_.996 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 608, i32 2 }
@___asan_gen_.999 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 609, i32 2 }
@___asan_gen_.1002 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 610, i32 2 }
@___asan_gen_.1005 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 611, i32 2 }
@___asan_gen_.1008 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 612, i32 2 }
@___asan_gen_.1011 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 613, i32 2 }
@___asan_gen_.1014 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 614, i32 2 }
@___asan_gen_.1017 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 615, i32 2 }
@___asan_gen_.1020 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 616, i32 2 }
@___asan_gen_.1023 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 617, i32 2 }
@___asan_gen_.1026 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 619, i32 10 }
@___asan_gen_.1029 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 903, i32 16 }
@___asan_gen_.1032 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 946, i32 16 }
@___asan_gen_.1035 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 979, i32 16 }
@___asan_gen_.1038 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1052, i32 18 }
@___asan_gen_.1041 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1024, i32 16 }
@___asan_gen_.1044 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1030, i32 17 }
@___asan_gen_.1047 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1033, i32 18 }
@___asan_gen_.1050 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 48, i32 24 }
@___asan_gen_.1051 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1057 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1058 = private constant [46 x i8] c"../drivers/net/wireless/realtek/rtw88/debug.c\00", align 1
@___asan_gen_.1059 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1003, i32 3 }
@___asan_gen_.1060 = private unnamed_addr constant [40 x i8] c"switch.table.rtw_debugfs_get_tx_pwr_tbl\00", align 1
@llvm.compiler.used = appending global [286 x ptr] [ptr @__ksymtab___rtw_dbg, ptr @__rtw_dbg._entry, ptr @__rtw_dbg._entry_ptr, ptr @rtw_debugfs_get_rsvd_page._entry, ptr @rtw_debugfs_get_rsvd_page._entry_ptr, ptr @rtw_debugfs_set_coex_enable._entry, ptr @rtw_debugfs_set_coex_enable._entry_ptr, ptr @rtw_debugfs_set_dm_cap._entry, ptr @rtw_debugfs_set_dm_cap._entry_ptr, ptr @rtw_debugfs_set_fix_rate._entry, ptr @rtw_debugfs_set_fix_rate._entry_ptr, ptr @rtw_debugfs_set_h2c._entry, ptr @rtw_debugfs_set_h2c._entry_ptr, ptr @rtw_debugfs_set_read_reg._entry, ptr @rtw_debugfs_set_read_reg._entry_ptr, ptr @rtw_debugfs_set_rf_read._entry, ptr @rtw_debugfs_set_rf_read._entry_ptr, ptr @rtw_debugfs_set_rf_write._entry, ptr @rtw_debugfs_set_rf_write._entry_ptr, ptr @rtw_debugfs_set_rsvd_page._entry, ptr @rtw_debugfs_set_rsvd_page._entry_ptr, ptr @rtw_debugfs_set_single_input._entry, ptr @rtw_debugfs_set_single_input._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @rtw_debug_priv_write_reg, ptr @.str.7, ptr @file_ops_common_write, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @rtw_debug_priv_read_reg, ptr @.str.12, ptr @file_ops_single_rw, ptr @rtw_debug_priv_rf_write, ptr @.str.13, ptr @rtw_debug_priv_rf_read, ptr @.str.14, ptr @rtw_debug_priv_fix_rate, ptr @.str.15, ptr @rtw_debug_priv_dump_cam, ptr @.str.16, ptr @rtw_debug_priv_rsvd_page, ptr @.str.17, ptr @rtw_debug_priv_phy_info, ptr @.str.18, ptr @file_ops_single_r, ptr @rtw_debug_priv_coex_info, ptr @.str.19, ptr @rtw_debug_priv_coex_enable, ptr @.str.20, ptr @rtw_debug_priv_h2c, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @rtw_debug_priv_rf_dump, ptr @.str.58, ptr @rtw_debug_priv_tx_pwr_tbl, ptr @.str.59, ptr @rtw_debug_priv_edcca_enable, ptr @.str.60, ptr @rtw_debug_priv_fw_crash, ptr @.str.61, ptr @rtw_debug_priv_force_lowest_basic_rate, ptr @.str.62, ptr @rtw_debug_priv_dm_cap, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @rtw_print_cck_rate_txt.cck_rate, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @rtw_print_ofdm_rate_txt.ofdm_rate, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @rtw_debug_priv_mac_0, ptr @.str.165, ptr @.str.166, ptr @rtw_debug_priv_mac_1, ptr @rtw_debug_priv_mac_2, ptr @rtw_debug_priv_mac_3, ptr @rtw_debug_priv_mac_4, ptr @rtw_debug_priv_mac_5, ptr @rtw_debug_priv_mac_6, ptr @rtw_debug_priv_mac_7, ptr @rtw_debug_priv_bb_8, ptr @rtw_debug_priv_bb_9, ptr @rtw_debug_priv_bb_a, ptr @rtw_debug_priv_bb_b, ptr @rtw_debug_priv_bb_c, ptr @rtw_debug_priv_bb_d, ptr @rtw_debug_priv_bb_e, ptr @rtw_debug_priv_bb_f, ptr @rtw_debug_priv_mac_10, ptr @rtw_debug_priv_mac_11, ptr @rtw_debug_priv_mac_12, ptr @rtw_debug_priv_mac_13, ptr @rtw_debug_priv_mac_14, ptr @rtw_debug_priv_mac_15, ptr @rtw_debug_priv_mac_16, ptr @rtw_debug_priv_mac_17, ptr @rtw_debug_priv_bb_18, ptr @rtw_debug_priv_bb_19, ptr @rtw_debug_priv_bb_1a, ptr @rtw_debug_priv_bb_1b, ptr @rtw_debug_priv_bb_1c, ptr @rtw_debug_priv_bb_1d, ptr @rtw_debug_priv_bb_1e, ptr @rtw_debug_priv_bb_1f, ptr @rtw_debug_priv_bb_2c, ptr @rtw_debug_priv_bb_2d, ptr @rtw_debug_priv_bb_40, ptr @rtw_debug_priv_bb_41, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @switch.table.rtw_debugfs_get_tx_pwr_tbl], section "llvm.metadata"
@0 = internal global [273 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_debug_priv_write_reg to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @file_ops_common_write to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_debug_priv_read_reg to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @file_ops_single_rw to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_debug_priv_rf_write to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_debug_priv_rf_read to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_debug_priv_fix_rate to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_debug_priv_dump_cam to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_debug_priv_rsvd_page to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_debug_priv_phy_info to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @file_ops_single_r to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_debug_priv_coex_info to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_debug_priv_coex_enable to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_debug_priv_h2c to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_debug_priv_rf_dump to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_debug_priv_tx_pwr_tbl to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_debug_priv_edcca_enable to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_debug_priv_fw_crash to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_debug_priv_force_lowest_basic_rate to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_debug_priv_dm_cap to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_print_cck_rate_txt.cck_rate to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_print_ofdm_rate_txt.ofdm_rate to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_debugfs_set_read_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1051 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_debugfs_set_rf_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1051 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_debugfs_set_rf_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1051 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_debugfs_set_fix_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1051 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_debugfs_set_single_input._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1051 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_debugfs_get_rsvd_page._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1051 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_debugfs_set_rsvd_page._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1051 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_debugfs_set_coex_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1051 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_debugfs_set_h2c._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1051 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_debug_priv_mac_0 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_debug_priv_mac_1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_debug_priv_mac_2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_debug_priv_mac_3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_debug_priv_mac_4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_debug_priv_mac_5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_debug_priv_mac_6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_debug_priv_mac_7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_debug_priv_bb_8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_debug_priv_bb_9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_debug_priv_bb_a to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_debug_priv_bb_b to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_debug_priv_bb_c to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_debug_priv_bb_d to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_debug_priv_bb_e to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_debug_priv_bb_f to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_debug_priv_mac_10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_debug_priv_mac_11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_debug_priv_mac_12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_debug_priv_mac_13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_debug_priv_mac_14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_debug_priv_mac_15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_debug_priv_mac_16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_debug_priv_mac_17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_debug_priv_bb_18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_debug_priv_bb_19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_debug_priv_bb_1a to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_debug_priv_bb_1b to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_debug_priv_bb_1c to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_debug_priv_bb_1d to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_debug_priv_bb_1e to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_debug_priv_bb_1f to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_debug_priv_bb_2c to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_debug_priv_bb_2d to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_debug_priv_bb_40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_debug_priv_bb_41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1035 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1050 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_debugfs_set_dm_cap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1051 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtw_debugfs_get_tx_pwr_tbl to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1060 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_debugfs_get_simple_phy_info(ptr noundef %m) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %rssi = getelementptr inbounds %struct.rtw_dev, ptr %3, i32 0, i32 13, i32 50
  %4 = ptrtoint ptr %rssi to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %rssi, align 2
  %conv = zext i8 %5 to i32
  %sub = add nsw i32 %conv, -100
  %current_channel = getelementptr inbounds %struct.rtw_dev, ptr %3, i32 0, i32 5, i32 7
  %6 = ptrtoint ptr %current_channel to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %current_channel, align 1
  %conv5 = zext i8 %7 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %sub, i32 noundef %conv5) #10
  %tx_throughput = getelementptr inbounds %struct.rtw_dev, ptr %3, i32 0, i32 10, i32 4
  %8 = ptrtoint ptr %tx_throughput to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_throughput, align 8
  %rx_throughput = getelementptr inbounds %struct.rtw_dev, ptr %3, i32 0, i32 10, i32 5
  %10 = ptrtoint ptr %rx_throughput to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_throughput, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.2, i32 noundef %9, i32 noundef %11) #10
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.3) #10
  %tx_rate = getelementptr inbounds %struct.rtw_dev, ptr %3, i32 0, i32 13, i32 25
  %12 = ptrtoint ptr %tx_rate to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %tx_rate, align 1
  tail call fastcc void @rtw_print_rate(ptr noundef %m, i8 noundef zeroext %13)
  %14 = ptrtoint ptr %tx_rate to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %tx_rate, align 1
  %conv7 = zext i8 %15 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.4, i32 noundef %conv7) #10
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.5) #10
  %curr_rx_rate = getelementptr inbounds %struct.rtw_dev, ptr %3, i32 0, i32 13, i32 51
  %16 = ptrtoint ptr %curr_rx_rate to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %curr_rx_rate, align 2
  tail call fastcc void @rtw_print_rate(ptr noundef %m, i8 noundef zeroext %17)
  %18 = ptrtoint ptr %curr_rx_rate to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %curr_rx_rate, align 2
  %conv9 = zext i8 %19 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.4, i32 noundef %conv9) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtw_print_rate(ptr noundef %m, i8 noundef zeroext %rate) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %rate to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i8 %rate, label %sw.default [
    i8 0, label %entry.sw.bb_crit_edge
    i8 1, label %entry.sw.bb_crit_edge17
    i8 2, label %entry.sw.bb_crit_edge18
    i8 3, label %entry.sw.bb_crit_edge19
    i8 4, label %entry.sw.bb1_crit_edge
    i8 5, label %entry.sw.bb1_crit_edge20
    i8 6, label %entry.sw.bb1_crit_edge21
    i8 7, label %entry.sw.bb1_crit_edge22
    i8 8, label %entry.sw.bb1_crit_edge23
    i8 9, label %entry.sw.bb1_crit_edge24
    i8 10, label %entry.sw.bb1_crit_edge25
    i8 11, label %entry.sw.bb1_crit_edge26
    i8 12, label %entry.sw.bb2_crit_edge
    i8 13, label %entry.sw.bb2_crit_edge27
    i8 14, label %entry.sw.bb2_crit_edge28
    i8 15, label %entry.sw.bb2_crit_edge29
    i8 16, label %entry.sw.bb2_crit_edge30
    i8 17, label %entry.sw.bb2_crit_edge31
    i8 18, label %entry.sw.bb2_crit_edge32
    i8 19, label %entry.sw.bb2_crit_edge33
    i8 20, label %entry.sw.bb2_crit_edge34
    i8 21, label %entry.sw.bb2_crit_edge35
    i8 22, label %entry.sw.bb2_crit_edge36
    i8 23, label %entry.sw.bb2_crit_edge37
    i8 24, label %entry.sw.bb2_crit_edge38
    i8 25, label %entry.sw.bb2_crit_edge39
    i8 26, label %entry.sw.bb2_crit_edge40
    i8 27, label %entry.sw.bb2_crit_edge41
    i8 44, label %entry.sw.bb3_crit_edge
    i8 45, label %entry.sw.bb3_crit_edge42
    i8 46, label %entry.sw.bb3_crit_edge43
    i8 47, label %entry.sw.bb3_crit_edge44
    i8 48, label %entry.sw.bb3_crit_edge45
    i8 49, label %entry.sw.bb3_crit_edge46
    i8 50, label %entry.sw.bb3_crit_edge47
    i8 51, label %entry.sw.bb3_crit_edge48
    i8 52, label %entry.sw.bb3_crit_edge49
    i8 53, label %entry.sw.bb3_crit_edge50
    i8 54, label %entry.sw.bb3_crit_edge51
    i8 55, label %entry.sw.bb3_crit_edge52
    i8 56, label %entry.sw.bb3_crit_edge53
    i8 57, label %entry.sw.bb3_crit_edge54
    i8 58, label %entry.sw.bb3_crit_edge55
    i8 59, label %entry.sw.bb3_crit_edge56
    i8 60, label %entry.sw.bb3_crit_edge57
    i8 61, label %entry.sw.bb3_crit_edge58
    i8 62, label %entry.sw.bb3_crit_edge59
    i8 63, label %entry.sw.bb3_crit_edge60
  ]

entry.sw.bb3_crit_edge60:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3

entry.sw.bb3_crit_edge59:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3

entry.sw.bb3_crit_edge58:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3

entry.sw.bb3_crit_edge57:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3

entry.sw.bb3_crit_edge56:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3

entry.sw.bb3_crit_edge55:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3

entry.sw.bb3_crit_edge54:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3

entry.sw.bb3_crit_edge53:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3

entry.sw.bb3_crit_edge52:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3

entry.sw.bb3_crit_edge51:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3

entry.sw.bb3_crit_edge50:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3

entry.sw.bb3_crit_edge49:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3

entry.sw.bb3_crit_edge48:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3

entry.sw.bb3_crit_edge47:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3

entry.sw.bb3_crit_edge46:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3

entry.sw.bb3_crit_edge45:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3

entry.sw.bb3_crit_edge44:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3

entry.sw.bb3_crit_edge43:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3

entry.sw.bb3_crit_edge42:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3

entry.sw.bb2_crit_edge41:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2

entry.sw.bb2_crit_edge40:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2

entry.sw.bb2_crit_edge39:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2

entry.sw.bb2_crit_edge38:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2

entry.sw.bb2_crit_edge37:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2

entry.sw.bb2_crit_edge36:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2

entry.sw.bb2_crit_edge35:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2

entry.sw.bb2_crit_edge34:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2

entry.sw.bb2_crit_edge33:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2

entry.sw.bb2_crit_edge32:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2

entry.sw.bb2_crit_edge31:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2

entry.sw.bb2_crit_edge30:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2

entry.sw.bb2_crit_edge29:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2

entry.sw.bb2_crit_edge28:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2

entry.sw.bb2_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2

entry.sw.bb1_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1

entry.sw.bb1_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1

entry.sw.bb1_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1

entry.sw.bb1_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1

entry.sw.bb1_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1

entry.sw.bb1_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1

entry.sw.bb1_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1

entry.sw.bb_crit_edge19:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge18:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge17:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge17, %entry.sw.bb_crit_edge18, %entry.sw.bb_crit_edge19
  %conv.i = zext i8 %rate to i32
  %arrayidx.i = getelementptr [4 x ptr], ptr @rtw_print_cck_rate_txt.cck_rate, i32 0, i32 %conv.i
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.73, ptr noundef %2) #10
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge20, %entry.sw.bb1_crit_edge21, %entry.sw.bb1_crit_edge22, %entry.sw.bb1_crit_edge23, %entry.sw.bb1_crit_edge24, %entry.sw.bb1_crit_edge25, %entry.sw.bb1_crit_edge26
  %sub.i = add nsw i8 %rate, -4
  %idxprom.i = zext i8 %sub.i to i32
  %arrayidx.i14 = getelementptr [8 x ptr], ptr @rtw_print_ofdm_rate_txt.ofdm_rate, i32 0, i32 %idxprom.i
  %3 = ptrtoint ptr %arrayidx.i14 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i14, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.82, ptr noundef %4) #10
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge27, %entry.sw.bb2_crit_edge28, %entry.sw.bb2_crit_edge29, %entry.sw.bb2_crit_edge30, %entry.sw.bb2_crit_edge31, %entry.sw.bb2_crit_edge32, %entry.sw.bb2_crit_edge33, %entry.sw.bb2_crit_edge34, %entry.sw.bb2_crit_edge35, %entry.sw.bb2_crit_edge36, %entry.sw.bb2_crit_edge37, %entry.sw.bb2_crit_edge38, %entry.sw.bb2_crit_edge39, %entry.sw.bb2_crit_edge40, %entry.sw.bb2_crit_edge41
  %sub.i15 = add nsw i8 %rate, -12
  %conv2.i = zext i8 %sub.i15 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.83, i32 noundef %conv2.i) #10
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge42, %entry.sw.bb3_crit_edge43, %entry.sw.bb3_crit_edge44, %entry.sw.bb3_crit_edge45, %entry.sw.bb3_crit_edge46, %entry.sw.bb3_crit_edge47, %entry.sw.bb3_crit_edge48, %entry.sw.bb3_crit_edge49, %entry.sw.bb3_crit_edge50, %entry.sw.bb3_crit_edge51, %entry.sw.bb3_crit_edge52, %entry.sw.bb3_crit_edge53, %entry.sw.bb3_crit_edge54, %entry.sw.bb3_crit_edge55, %entry.sw.bb3_crit_edge56, %entry.sw.bb3_crit_edge57, %entry.sw.bb3_crit_edge58, %entry.sw.bb3_crit_edge59, %entry.sw.bb3_crit_edge60
  %sub.i16 = add nsw i8 %rate, -44
  %sub.i16.frozen = freeze i8 %sub.i16
  %div.i = udiv i8 %sub.i16.frozen, 10
  %add.i = add nuw nsw i8 %div.i, 1
  %5 = mul i8 %div.i, 10
  %.decomposed = sub i8 %sub.i16.frozen, %5
  %conv6.i = zext i8 %add.i to i32
  %conv7.i = zext i8 %.decomposed to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.84, i32 noundef %conv6.i, i32 noundef %conv7.i) #10
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i8 %rate to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.68, i32 noundef %conv) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_debugfs_init(ptr noundef %rtwdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rtwdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtwdev, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wiphy, align 8
  %debugfsdir = getelementptr inbounds %struct.wiphy, ptr %3, i32 0, i32 58
  %4 = ptrtoint ptr %debugfsdir to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %debugfsdir, align 4
  %call = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.6, ptr noundef %5) #10
  store ptr %rtwdev, ptr @rtw_debug_priv_write_reg, align 4
  %call1 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.7, i16 noundef zeroext -32622, ptr noundef %call, ptr noundef nonnull @rtw_debug_priv_write_reg, ptr noundef nonnull @file_ops_common_write) #10
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %do.body2, label %entry.do.body11_crit_edge

entry.do.body11_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body11

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug422, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_debugfs_init, %if.then7)) #10
          to label %do.body11 [label %if.then7], !srcloc !598

if.then7:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtw_debugfs_init.__UNIQUE_ID_ddebug422, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.7) #10
  br label %do.body11

do.body11:                                        ; preds = %if.then7, %do.body2, %entry.do.body11_crit_edge
  store ptr %rtwdev, ptr @rtw_debug_priv_read_reg, align 4
  %call12 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.12, i16 noundef zeroext -32330, ptr noundef %call, ptr noundef nonnull @rtw_debug_priv_read_reg, ptr noundef nonnull @file_ops_single_rw) #10
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %do.body15, label %do.body11.do.body34_crit_edge

do.body11.do.body34_crit_edge:                    ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body34

do.body15:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug423, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_debugfs_init, %if.then27)) #10
          to label %do.body34 [label %if.then27], !srcloc !598

if.then27:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtw_debugfs_init.__UNIQUE_ID_ddebug423, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #10
  br label %do.body34

do.body34:                                        ; preds = %if.then27, %do.body15, %do.body11.do.body34_crit_edge
  store ptr %rtwdev, ptr @rtw_debug_priv_rf_write, align 4
  %call35 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.13, i16 noundef zeroext -32622, ptr noundef %call, ptr noundef nonnull @rtw_debug_priv_rf_write, ptr noundef nonnull @file_ops_common_write) #10
  %tobool36.not = icmp eq ptr %call35, null
  br i1 %tobool36.not, label %do.body38, label %do.body34.do.body57_crit_edge

do.body34.do.body57_crit_edge:                    ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body57

do.body38:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug424, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_debugfs_init, %if.then50)) #10
          to label %do.body57 [label %if.then50], !srcloc !598

if.then50:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtw_debugfs_init.__UNIQUE_ID_ddebug424, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.13) #10
  br label %do.body57

do.body57:                                        ; preds = %if.then50, %do.body38, %do.body34.do.body57_crit_edge
  store ptr %rtwdev, ptr @rtw_debug_priv_rf_read, align 4
  %call58 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.14, i16 noundef zeroext -32330, ptr noundef %call, ptr noundef nonnull @rtw_debug_priv_rf_read, ptr noundef nonnull @file_ops_single_rw) #10
  %tobool59.not = icmp eq ptr %call58, null
  br i1 %tobool59.not, label %do.body61, label %do.body57.do.body80_crit_edge

do.body57.do.body80_crit_edge:                    ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body80

do.body61:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug425, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_debugfs_init, %if.then73)) #10
          to label %do.body80 [label %if.then73], !srcloc !598

if.then73:                                        ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtw_debugfs_init.__UNIQUE_ID_ddebug425, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.14) #10
  br label %do.body80

do.body80:                                        ; preds = %if.then73, %do.body61, %do.body57.do.body80_crit_edge
  store ptr %rtwdev, ptr @rtw_debug_priv_fix_rate, align 4
  %call81 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.15, i16 noundef zeroext -32330, ptr noundef %call, ptr noundef nonnull @rtw_debug_priv_fix_rate, ptr noundef nonnull @file_ops_single_rw) #10
  %tobool82.not = icmp eq ptr %call81, null
  br i1 %tobool82.not, label %do.body84, label %do.body80.do.body103_crit_edge

do.body80.do.body103_crit_edge:                   ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body103

do.body84:                                        ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug426, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_debugfs_init, %if.then96)) #10
          to label %do.body103 [label %if.then96], !srcloc !598

if.then96:                                        ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtw_debugfs_init.__UNIQUE_ID_ddebug426, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.15) #10
  br label %do.body103

do.body103:                                       ; preds = %if.then96, %do.body84, %do.body80.do.body103_crit_edge
  store ptr %rtwdev, ptr @rtw_debug_priv_dump_cam, align 4
  %call104 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.16, i16 noundef zeroext -32330, ptr noundef %call, ptr noundef nonnull @rtw_debug_priv_dump_cam, ptr noundef nonnull @file_ops_single_rw) #10
  %tobool105.not = icmp eq ptr %call104, null
  br i1 %tobool105.not, label %do.body107, label %do.body103.do.body126_crit_edge

do.body103.do.body126_crit_edge:                  ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body126

do.body107:                                       ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug427, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_debugfs_init, %if.then119)) #10
          to label %do.body126 [label %if.then119], !srcloc !598

if.then119:                                       ; preds = %do.body107
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtw_debugfs_init.__UNIQUE_ID_ddebug427, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.16) #10
  br label %do.body126

do.body126:                                       ; preds = %if.then119, %do.body107, %do.body103.do.body126_crit_edge
  store ptr %rtwdev, ptr @rtw_debug_priv_rsvd_page, align 4
  %call127 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.17, i16 noundef zeroext -32330, ptr noundef %call, ptr noundef nonnull @rtw_debug_priv_rsvd_page, ptr noundef nonnull @file_ops_single_rw) #10
  %tobool128.not = icmp eq ptr %call127, null
  br i1 %tobool128.not, label %do.body130, label %do.body126.do.body149_crit_edge

do.body126.do.body149_crit_edge:                  ; preds = %do.body126
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body149

do.body130:                                       ; preds = %do.body126
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug428, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_debugfs_init, %if.then142)) #10
          to label %do.body149 [label %if.then142], !srcloc !598

if.then142:                                       ; preds = %do.body130
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtw_debugfs_init.__UNIQUE_ID_ddebug428, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.17) #10
  br label %do.body149

do.body149:                                       ; preds = %if.then142, %do.body130, %do.body126.do.body149_crit_edge
  store ptr %rtwdev, ptr @rtw_debug_priv_phy_info, align 4
  %call150 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.18, i16 noundef zeroext -32476, ptr noundef %call, ptr noundef nonnull @rtw_debug_priv_phy_info, ptr noundef nonnull @file_ops_single_r) #10
  %tobool151.not = icmp eq ptr %call150, null
  br i1 %tobool151.not, label %do.body153, label %do.body149.do.body172_crit_edge

do.body149.do.body172_crit_edge:                  ; preds = %do.body149
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body172

do.body153:                                       ; preds = %do.body149
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug429, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_debugfs_init, %if.then165)) #10
          to label %do.body172 [label %if.then165], !srcloc !598

if.then165:                                       ; preds = %do.body153
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtw_debugfs_init.__UNIQUE_ID_ddebug429, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.18) #10
  br label %do.body172

do.body172:                                       ; preds = %if.then165, %do.body153, %do.body149.do.body172_crit_edge
  store ptr %rtwdev, ptr @rtw_debug_priv_coex_info, align 4
  %call173 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.19, i16 noundef zeroext -32476, ptr noundef %call, ptr noundef nonnull @rtw_debug_priv_coex_info, ptr noundef nonnull @file_ops_single_r) #10
  %tobool174.not = icmp eq ptr %call173, null
  br i1 %tobool174.not, label %do.body176, label %do.body172.do.body195_crit_edge

do.body172.do.body195_crit_edge:                  ; preds = %do.body172
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body195

do.body176:                                       ; preds = %do.body172
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug430, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_debugfs_init, %if.then188)) #10
          to label %do.body195 [label %if.then188], !srcloc !598

if.then188:                                       ; preds = %do.body176
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtw_debugfs_init.__UNIQUE_ID_ddebug430, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.19) #10
  br label %do.body195

do.body195:                                       ; preds = %if.then188, %do.body176, %do.body172.do.body195_crit_edge
  store ptr %rtwdev, ptr @rtw_debug_priv_coex_enable, align 4
  %call196 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.20, i16 noundef zeroext -32330, ptr noundef %call, ptr noundef nonnull @rtw_debug_priv_coex_enable, ptr noundef nonnull @file_ops_single_rw) #10
  %tobool197.not = icmp eq ptr %call196, null
  br i1 %tobool197.not, label %do.body199, label %do.body195.do.body218_crit_edge

do.body195.do.body218_crit_edge:                  ; preds = %do.body195
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body218

do.body199:                                       ; preds = %do.body195
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug431, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_debugfs_init, %if.then211)) #10
          to label %do.body218 [label %if.then211], !srcloc !598

if.then211:                                       ; preds = %do.body199
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtw_debugfs_init.__UNIQUE_ID_ddebug431, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.20) #10
  br label %do.body218

do.body218:                                       ; preds = %if.then211, %do.body199, %do.body195.do.body218_crit_edge
  store ptr %rtwdev, ptr @rtw_debug_priv_h2c, align 4
  %call219 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.21, i16 noundef zeroext -32622, ptr noundef %call, ptr noundef nonnull @rtw_debug_priv_h2c, ptr noundef nonnull @file_ops_common_write) #10
  %tobool220.not = icmp eq ptr %call219, null
  br i1 %tobool220.not, label %do.body222, label %do.body218.do.body241_crit_edge

do.body218.do.body241_crit_edge:                  ; preds = %do.body218
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body241

do.body222:                                       ; preds = %do.body218
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug432, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_debugfs_init, %if.then234)) #10
          to label %do.body241 [label %if.then234], !srcloc !598

if.then234:                                       ; preds = %do.body222
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtw_debugfs_init.__UNIQUE_ID_ddebug432, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.21) #10
  br label %do.body241

do.body241:                                       ; preds = %if.then234, %do.body222, %do.body218.do.body241_crit_edge
  store ptr %rtwdev, ptr @rtw_debug_priv_mac_0, align 4
  %call242 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.22, i16 noundef zeroext -32476, ptr noundef %call, ptr noundef nonnull @rtw_debug_priv_mac_0, ptr noundef nonnull @file_ops_single_r) #10
  %tobool243.not = icmp eq ptr %call242, null
  br i1 %tobool243.not, label %do.body245, label %do.body241.do.body264_crit_edge

do.body241.do.body264_crit_edge:                  ; preds = %do.body241
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body264

do.body245:                                       ; preds = %do.body241
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug433, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_debugfs_init, %if.then257)) #10
          to label %do.body264 [label %if.then257], !srcloc !598

if.then257:                                       ; preds = %do.body245
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtw_debugfs_init.__UNIQUE_ID_ddebug433, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.22) #10
  br label %do.body264

do.body264:                                       ; preds = %if.then257, %do.body245, %do.body241.do.body264_crit_edge
  store ptr %rtwdev, ptr @rtw_debug_priv_mac_1, align 4
  %call265 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.23, i16 noundef zeroext -32476, ptr noundef %call, ptr noundef nonnull @rtw_debug_priv_mac_1, ptr noundef nonnull @file_ops_single_r) #10
  %tobool266.not = icmp eq ptr %call265, null
  br i1 %tobool266.not, label %do.body268, label %do.body264.do.body287_crit_edge

do.body264.do.body287_crit_edge:                  ; preds = %do.body264
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body287

do.body268:                                       ; preds = %do.body264
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug434, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_debugfs_init, %if.then280)) #10
          to label %do.body287 [label %if.then280], !srcloc !598

if.then280:                                       ; preds = %do.body268
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtw_debugfs_init.__UNIQUE_ID_ddebug434, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.23) #10
  br label %do.body287

do.body287:                                       ; preds = %if.then280, %do.body268, %do.body264.do.body287_crit_edge
  store ptr %rtwdev, ptr @rtw_debug_priv_mac_2, align 4
  %call288 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.24, i16 noundef zeroext -32476, ptr noundef %call, ptr noundef nonnull @rtw_debug_priv_mac_2, ptr noundef nonnull @file_ops_single_r) #10
  %tobool289.not = icmp eq ptr %call288, null
  br i1 %tobool289.not, label %do.body291, label %do.body287.do.body310_crit_edge

do.body287.do.body310_crit_edge:                  ; preds = %do.body287
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body310

do.body291:                                       ; preds = %do.body287
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug435, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_debugfs_init, %if.then303)) #10
          to label %do.body310 [label %if.then303], !srcloc !598

if.then303:                                       ; preds = %do.body291
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtw_debugfs_init.__UNIQUE_ID_ddebug435, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.24) #10
  br label %do.body310

do.body310:                                       ; preds = %if.then303, %do.body291, %do.body287.do.body310_crit_edge
  store ptr %rtwdev, ptr @rtw_debug_priv_mac_3, align 4
  %call311 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.25, i16 noundef zeroext -32476, ptr noundef %call, ptr noundef nonnull @rtw_debug_priv_mac_3, ptr noundef nonnull @file_ops_single_r) #10
  %tobool312.not = icmp eq ptr %call311, null
  br i1 %tobool312.not, label %do.body314, label %do.body310.do.body333_crit_edge

do.body310.do.body333_crit_edge:                  ; preds = %do.body310
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body333

do.body314:                                       ; preds = %do.body310
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug436, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_debugfs_init, %if.then326)) #10
          to label %do.body333 [label %if.then326], !srcloc !598

if.then326:                                       ; preds = %do.body314
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtw_debugfs_init.__UNIQUE_ID_ddebug436, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.25) #10
  br label %do.body333

do.body333:                                       ; preds = %if.then326, %do.body314, %do.body310.do.body333_crit_edge
  store ptr %rtwdev, ptr @rtw_debug_priv_mac_4, align 4
  %call334 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.26, i16 noundef zeroext -32476, ptr noundef %call, ptr noundef nonnull @rtw_debug_priv_mac_4, ptr noundef nonnull @file_ops_single_r) #10
  %tobool335.not = icmp eq ptr %call334, null
  br i1 %tobool335.not, label %do.body337, label %do.body333.do.body356_crit_edge

do.body333.do.body356_crit_edge:                  ; preds = %do.body333
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body356

do.body337:                                       ; preds = %do.body333
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug437, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_debugfs_init, %if.then349)) #10
          to label %do.body356 [label %if.then349], !srcloc !598

if.then349:                                       ; preds = %do.body337
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtw_debugfs_init.__UNIQUE_ID_ddebug437, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.26) #10
  br label %do.body356

do.body356:                                       ; preds = %if.then349, %do.body337, %do.body333.do.body356_crit_edge
  store ptr %rtwdev, ptr @rtw_debug_priv_mac_5, align 4
  %call357 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.27, i16 noundef zeroext -32476, ptr noundef %call, ptr noundef nonnull @rtw_debug_priv_mac_5, ptr noundef nonnull @file_ops_single_r) #10
  %tobool358.not = icmp eq ptr %call357, null
  br i1 %tobool358.not, label %do.body360, label %do.body356.do.body379_crit_edge

do.body356.do.body379_crit_edge:                  ; preds = %do.body356
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body379

do.body360:                                       ; preds = %do.body356
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug438, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_debugfs_init, %if.then372)) #10
          to label %do.body379 [label %if.then372], !srcloc !598

if.then372:                                       ; preds = %do.body360
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtw_debugfs_init.__UNIQUE_ID_ddebug438, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.27) #10
  br label %do.body379

do.body379:                                       ; preds = %if.then372, %do.body360, %do.body356.do.body379_crit_edge
  store ptr %rtwdev, ptr @rtw_debug_priv_mac_6, align 4
  %call380 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.28, i16 noundef zeroext -32476, ptr noundef %call, ptr noundef nonnull @rtw_debug_priv_mac_6, ptr noundef nonnull @file_ops_single_r) #10
  %tobool381.not = icmp eq ptr %call380, null
  br i1 %tobool381.not, label %do.body383, label %do.body379.do.body402_crit_edge

do.body379.do.body402_crit_edge:                  ; preds = %do.body379
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body402

do.body383:                                       ; preds = %do.body379
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug439, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_debugfs_init, %if.then395)) #10
          to label %do.body402 [label %if.then395], !srcloc !598

if.then395:                                       ; preds = %do.body383
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtw_debugfs_init.__UNIQUE_ID_ddebug439, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.28) #10
  br label %do.body402

do.body402:                                       ; preds = %if.then395, %do.body383, %do.body379.do.body402_crit_edge
  store ptr %rtwdev, ptr @rtw_debug_priv_mac_7, align 4
  %call403 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.29, i16 noundef zeroext -32476, ptr noundef %call, ptr noundef nonnull @rtw_debug_priv_mac_7, ptr noundef nonnull @file_ops_single_r) #10
  %tobool404.not = icmp eq ptr %call403, null
  br i1 %tobool404.not, label %do.body406, label %do.body402.do.body425_crit_edge

do.body402.do.body425_crit_edge:                  ; preds = %do.body402
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body425

do.body406:                                       ; preds = %do.body402
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug440, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_debugfs_init, %if.then418)) #10
          to label %do.body425 [label %if.then418], !srcloc !598

if.then418:                                       ; preds = %do.body406
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtw_debugfs_init.__UNIQUE_ID_ddebug440, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.29) #10
  br label %do.body425

do.body425:                                       ; preds = %if.then418, %do.body406, %do.body402.do.body425_crit_edge
  store ptr %rtwdev, ptr @rtw_debug_priv_bb_8, align 4
  %call426 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.30, i16 noundef zeroext -32476, ptr noundef %call, ptr noundef nonnull @rtw_debug_priv_bb_8, ptr noundef nonnull @file_ops_single_r) #10
  %tobool427.not = icmp eq ptr %call426, null
  br i1 %tobool427.not, label %do.body429, label %do.body425.do.body448_crit_edge

do.body425.do.body448_crit_edge:                  ; preds = %do.body425
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body448

do.body429:                                       ; preds = %do.body425
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug441, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_debugfs_init, %if.then441)) #10
          to label %do.body448 [label %if.then441], !srcloc !598

if.then441:                                       ; preds = %do.body429
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtw_debugfs_init.__UNIQUE_ID_ddebug441, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.30) #10
  br label %do.body448

do.body448:                                       ; preds = %if.then441, %do.body429, %do.body425.do.body448_crit_edge
  store ptr %rtwdev, ptr @rtw_debug_priv_bb_9, align 4
  %call449 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.31, i16 noundef zeroext -32476, ptr noundef %call, ptr noundef nonnull @rtw_debug_priv_bb_9, ptr noundef nonnull @file_ops_single_r) #10
  %tobool450.not = icmp eq ptr %call449, null
  br i1 %tobool450.not, label %do.body452, label %do.body448.do.body471_crit_edge

do.body448.do.body471_crit_edge:                  ; preds = %do.body448
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body471

do.body452:                                       ; preds = %do.body448
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug442, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_debugfs_init, %if.then464)) #10
          to label %do.body471 [label %if.then464], !srcloc !598

if.then464:                                       ; preds = %do.body452
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtw_debugfs_init.__UNIQUE_ID_ddebug442, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.31) #10
  br label %do.body471

do.body471:                                       ; preds = %if.then464, %do.body452, %do.body448.do.body471_crit_edge
  store ptr %rtwdev, ptr @rtw_debug_priv_bb_a, align 4
  %call472 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.32, i16 noundef zeroext -32476, ptr noundef %call, ptr noundef nonnull @rtw_debug_priv_bb_a, ptr noundef nonnull @file_ops_single_r) #10
  %tobool473.not = icmp eq ptr %call472, null
  br i1 %tobool473.not, label %do.body475, label %do.body471.do.body494_crit_edge

do.body471.do.body494_crit_edge:                  ; preds = %do.body471
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body494

do.body475:                                       ; preds = %do.body471
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug443, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_debugfs_init, %if.then487)) #10
          to label %do.body494 [label %if.then487], !srcloc !598

if.then487:                                       ; preds = %do.body475
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtw_debugfs_init.__UNIQUE_ID_ddebug443, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.32) #10
  br label %do.body494

do.body494:                                       ; preds = %if.then487, %do.body475, %do.body471.do.body494_crit_edge
  store ptr %rtwdev, ptr @rtw_debug_priv_bb_b, align 4
  %call495 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.33, i16 noundef zeroext -32476, ptr noundef %call, ptr noundef nonnull @rtw_debug_priv_bb_b, ptr noundef nonnull @file_ops_single_r) #10
  %tobool496.not = icmp eq ptr %call495, null
  br i1 %tobool496.not, label %do.body498, label %do.body494.do.body517_crit_edge

do.body494.do.body517_crit_edge:                  ; preds = %do.body494
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body517

do.body498:                                       ; preds = %do.body494
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug444, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_debugfs_init, %if.then510)) #10
          to label %do.body517 [label %if.then510], !srcloc !598

if.then510:                                       ; preds = %do.body498
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtw_debugfs_init.__UNIQUE_ID_ddebug444, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.33) #10
  br label %do.body517

do.body517:                                       ; preds = %if.then510, %do.body498, %do.body494.do.body517_crit_edge
  store ptr %rtwdev, ptr @rtw_debug_priv_bb_c, align 4
  %call518 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.34, i16 noundef zeroext -32476, ptr noundef %call, ptr noundef nonnull @rtw_debug_priv_bb_c, ptr noundef nonnull @file_ops_single_r) #10
  %tobool519.not = icmp eq ptr %call518, null
  br i1 %tobool519.not, label %do.body521, label %do.body517.do.body540_crit_edge

do.body517.do.body540_crit_edge:                  ; preds = %do.body517
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body540

do.body521:                                       ; preds = %do.body517
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug445, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_debugfs_init, %if.then533)) #10
          to label %do.body540 [label %if.then533], !srcloc !598

if.then533:                                       ; preds = %do.body521
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtw_debugfs_init.__UNIQUE_ID_ddebug445, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.34) #10
  br label %do.body540

do.body540:                                       ; preds = %if.then533, %do.body521, %do.body517.do.body540_crit_edge
  store ptr %rtwdev, ptr @rtw_debug_priv_bb_d, align 4
  %call541 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.35, i16 noundef zeroext -32476, ptr noundef %call, ptr noundef nonnull @rtw_debug_priv_bb_d, ptr noundef nonnull @file_ops_single_r) #10
  %tobool542.not = icmp eq ptr %call541, null
  br i1 %tobool542.not, label %do.body544, label %do.body540.do.body563_crit_edge

do.body540.do.body563_crit_edge:                  ; preds = %do.body540
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body563

do.body544:                                       ; preds = %do.body540
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug446, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_debugfs_init, %if.then556)) #10
          to label %do.body563 [label %if.then556], !srcloc !598

if.then556:                                       ; preds = %do.body544
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtw_debugfs_init.__UNIQUE_ID_ddebug446, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.35) #10
  br label %do.body563

do.body563:                                       ; preds = %if.then556, %do.body544, %do.body540.do.body563_crit_edge
  store ptr %rtwdev, ptr @rtw_debug_priv_bb_e, align 4
  %call564 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.36, i16 noundef zeroext -32476, ptr noundef %call, ptr noundef nonnull @rtw_debug_priv_bb_e, ptr noundef nonnull @file_ops_single_r) #10
  %tobool565.not = icmp eq ptr %call564, null
  br i1 %tobool565.not, label %do.body567, label %do.body563.do.body586_crit_edge

do.body563.do.body586_crit_edge:                  ; preds = %do.body563
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body586

do.body567:                                       ; preds = %do.body563
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug447, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_debugfs_init, %if.then579)) #10
          to label %do.body586 [label %if.then579], !srcloc !598

if.then579:                                       ; preds = %do.body567
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtw_debugfs_init.__UNIQUE_ID_ddebug447, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.36) #10
  br label %do.body586

do.body586:                                       ; preds = %if.then579, %do.body567, %do.body563.do.body586_crit_edge
  store ptr %rtwdev, ptr @rtw_debug_priv_bb_f, align 4
  %call587 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.37, i16 noundef zeroext -32476, ptr noundef %call, ptr noundef nonnull @rtw_debug_priv_bb_f, ptr noundef nonnull @file_ops_single_r) #10
  %tobool588.not = icmp eq ptr %call587, null
  br i1 %tobool588.not, label %do.body590, label %do.body586.do.body609_crit_edge

do.body586.do.body609_crit_edge:                  ; preds = %do.body586
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body609

do.body590:                                       ; preds = %do.body586
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug448, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_debugfs_init, %if.then602)) #10
          to label %do.body609 [label %if.then602], !srcloc !598

if.then602:                                       ; preds = %do.body590
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtw_debugfs_init.__UNIQUE_ID_ddebug448, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.37) #10
  br label %do.body609

do.body609:                                       ; preds = %if.then602, %do.body590, %do.body586.do.body609_crit_edge
  store ptr %rtwdev, ptr @rtw_debug_priv_mac_10, align 4
  %call610 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.38, i16 noundef zeroext -32476, ptr noundef %call, ptr noundef nonnull @rtw_debug_priv_mac_10, ptr noundef nonnull @file_ops_single_r) #10
  %tobool611.not = icmp eq ptr %call610, null
  br i1 %tobool611.not, label %do.body613, label %do.body609.do.body632_crit_edge

do.body609.do.body632_crit_edge:                  ; preds = %do.body609
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body632

do.body613:                                       ; preds = %do.body609
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug449, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_debugfs_init, %if.then625)) #10
          to label %do.body632 [label %if.then625], !srcloc !598

if.then625:                                       ; preds = %do.body613
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtw_debugfs_init.__UNIQUE_ID_ddebug449, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.38) #10
  br label %do.body632

do.body632:                                       ; preds = %if.then625, %do.body613, %do.body609.do.body632_crit_edge
  store ptr %rtwdev, ptr @rtw_debug_priv_mac_11, align 4
  %call633 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.39, i16 noundef zeroext -32476, ptr noundef %call, ptr noundef nonnull @rtw_debug_priv_mac_11, ptr noundef nonnull @file_ops_single_r) #10
  %tobool634.not = icmp eq ptr %call633, null
  br i1 %tobool634.not, label %do.body636, label %do.body632.do.body655_crit_edge

do.body632.do.body655_crit_edge:                  ; preds = %do.body632
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body655

do.body636:                                       ; preds = %do.body632
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug450, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_debugfs_init, %if.then648)) #10
          to label %do.body655 [label %if.then648], !srcloc !598

if.then648:                                       ; preds = %do.body636
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtw_debugfs_init.__UNIQUE_ID_ddebug450, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.39) #10
  br label %do.body655

do.body655:                                       ; preds = %if.then648, %do.body636, %do.body632.do.body655_crit_edge
  store ptr %rtwdev, ptr @rtw_debug_priv_mac_12, align 4
  %call656 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.40, i16 noundef zeroext -32476, ptr noundef %call, ptr noundef nonnull @rtw_debug_priv_mac_12, ptr noundef nonnull @file_ops_single_r) #10
  %tobool657.not = icmp eq ptr %call656, null
  br i1 %tobool657.not, label %do.body659, label %do.body655.do.body678_crit_edge

do.body655.do.body678_crit_edge:                  ; preds = %do.body655
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body678

do.body659:                                       ; preds = %do.body655
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug451, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_debugfs_init, %if.then671)) #10
          to label %do.body678 [label %if.then671], !srcloc !598

if.then671:                                       ; preds = %do.body659
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtw_debugfs_init.__UNIQUE_ID_ddebug451, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.40) #10
  br label %do.body678

do.body678:                                       ; preds = %if.then671, %do.body659, %do.body655.do.body678_crit_edge
  store ptr %rtwdev, ptr @rtw_debug_priv_mac_13, align 4
  %call679 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.41, i16 noundef zeroext -32476, ptr noundef %call, ptr noundef nonnull @rtw_debug_priv_mac_13, ptr noundef nonnull @file_ops_single_r) #10
  %tobool680.not = icmp eq ptr %call679, null
  br i1 %tobool680.not, label %do.body682, label %do.body678.do.body701_crit_edge

do.body678.do.body701_crit_edge:                  ; preds = %do.body678
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body701

do.body682:                                       ; preds = %do.body678
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug452, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_debugfs_init, %if.then694)) #10
          to label %do.body701 [label %if.then694], !srcloc !598

if.then694:                                       ; preds = %do.body682
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtw_debugfs_init.__UNIQUE_ID_ddebug452, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.41) #10
  br label %do.body701

do.body701:                                       ; preds = %if.then694, %do.body682, %do.body678.do.body701_crit_edge
  store ptr %rtwdev, ptr @rtw_debug_priv_mac_14, align 4
  %call702 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.42, i16 noundef zeroext -32476, ptr noundef %call, ptr noundef nonnull @rtw_debug_priv_mac_14, ptr noundef nonnull @file_ops_single_r) #10
  %tobool703.not = icmp eq ptr %call702, null
  br i1 %tobool703.not, label %do.body705, label %do.body701.do.body724_crit_edge

do.body701.do.body724_crit_edge:                  ; preds = %do.body701
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body724

do.body705:                                       ; preds = %do.body701
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug453, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_debugfs_init, %if.then717)) #10
          to label %do.body724 [label %if.then717], !srcloc !598

if.then717:                                       ; preds = %do.body705
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtw_debugfs_init.__UNIQUE_ID_ddebug453, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.42) #10
  br label %do.body724

do.body724:                                       ; preds = %if.then717, %do.body705, %do.body701.do.body724_crit_edge
  store ptr %rtwdev, ptr @rtw_debug_priv_mac_15, align 4
  %call725 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.43, i16 noundef zeroext -32476, ptr noundef %call, ptr noundef nonnull @rtw_debug_priv_mac_15, ptr noundef nonnull @file_ops_single_r) #10
  %tobool726.not = icmp eq ptr %call725, null
  br i1 %tobool726.not, label %do.body728, label %do.body724.do.body747_crit_edge

do.body724.do.body747_crit_edge:                  ; preds = %do.body724
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body747

do.body728:                                       ; preds = %do.body724
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug454, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_debugfs_init, %if.then740)) #10
          to label %do.body747 [label %if.then740], !srcloc !598

if.then740:                                       ; preds = %do.body728
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtw_debugfs_init.__UNIQUE_ID_ddebug454, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.43) #10
  br label %do.body747

do.body747:                                       ; preds = %if.then740, %do.body728, %do.body724.do.body747_crit_edge
  store ptr %rtwdev, ptr @rtw_debug_priv_mac_16, align 4
  %call748 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.44, i16 noundef zeroext -32476, ptr noundef %call, ptr noundef nonnull @rtw_debug_priv_mac_16, ptr noundef nonnull @file_ops_single_r) #10
  %tobool749.not = icmp eq ptr %call748, null
  br i1 %tobool749.not, label %do.body751, label %do.body747.do.body770_crit_edge

do.body747.do.body770_crit_edge:                  ; preds = %do.body747
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body770

do.body751:                                       ; preds = %do.body747
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug455, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_debugfs_init, %if.then763)) #10
          to label %do.body770 [label %if.then763], !srcloc !598

if.then763:                                       ; preds = %do.body751
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtw_debugfs_init.__UNIQUE_ID_ddebug455, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.44) #10
  br label %do.body770

do.body770:                                       ; preds = %if.then763, %do.body751, %do.body747.do.body770_crit_edge
  store ptr %rtwdev, ptr @rtw_debug_priv_mac_17, align 4
  %call771 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.45, i16 noundef zeroext -32476, ptr noundef %call, ptr noundef nonnull @rtw_debug_priv_mac_17, ptr noundef nonnull @file_ops_single_r) #10
  %tobool772.not = icmp eq ptr %call771, null
  br i1 %tobool772.not, label %do.body774, label %do.body770.do.body793_crit_edge

do.body770.do.body793_crit_edge:                  ; preds = %do.body770
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body793

do.body774:                                       ; preds = %do.body770
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug456, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_debugfs_init, %if.then786)) #10
          to label %do.body793 [label %if.then786], !srcloc !598

if.then786:                                       ; preds = %do.body774
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtw_debugfs_init.__UNIQUE_ID_ddebug456, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.45) #10
  br label %do.body793

do.body793:                                       ; preds = %if.then786, %do.body774, %do.body770.do.body793_crit_edge
  store ptr %rtwdev, ptr @rtw_debug_priv_bb_18, align 4
  %call794 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.46, i16 noundef zeroext -32476, ptr noundef %call, ptr noundef nonnull @rtw_debug_priv_bb_18, ptr noundef nonnull @file_ops_single_r) #10
  %tobool795.not = icmp eq ptr %call794, null
  br i1 %tobool795.not, label %do.body797, label %do.body793.do.body816_crit_edge

do.body793.do.body816_crit_edge:                  ; preds = %do.body793
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body816

do.body797:                                       ; preds = %do.body793
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug457, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_debugfs_init, %if.then809)) #10
          to label %do.body816 [label %if.then809], !srcloc !598

if.then809:                                       ; preds = %do.body797
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtw_debugfs_init.__UNIQUE_ID_ddebug457, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.46) #10
  br label %do.body816

do.body816:                                       ; preds = %if.then809, %do.body797, %do.body793.do.body816_crit_edge
  store ptr %rtwdev, ptr @rtw_debug_priv_bb_19, align 4
  %call817 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.47, i16 noundef zeroext -32476, ptr noundef %call, ptr noundef nonnull @rtw_debug_priv_bb_19, ptr noundef nonnull @file_ops_single_r) #10
  %tobool818.not = icmp eq ptr %call817, null
  br i1 %tobool818.not, label %do.body820, label %do.body816.do.body839_crit_edge

do.body816.do.body839_crit_edge:                  ; preds = %do.body816
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body839

do.body820:                                       ; preds = %do.body816
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug458, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_debugfs_init, %if.then832)) #10
          to label %do.body839 [label %if.then832], !srcloc !598

if.then832:                                       ; preds = %do.body820
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtw_debugfs_init.__UNIQUE_ID_ddebug458, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.47) #10
  br label %do.body839

do.body839:                                       ; preds = %if.then832, %do.body820, %do.body816.do.body839_crit_edge
  store ptr %rtwdev, ptr @rtw_debug_priv_bb_1a, align 4
  %call840 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.48, i16 noundef zeroext -32476, ptr noundef %call, ptr noundef nonnull @rtw_debug_priv_bb_1a, ptr noundef nonnull @file_ops_single_r) #10
  %tobool841.not = icmp eq ptr %call840, null
  br i1 %tobool841.not, label %do.body843, label %do.body839.do.body862_crit_edge

do.body839.do.body862_crit_edge:                  ; preds = %do.body839
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body862

do.body843:                                       ; preds = %do.body839
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug459, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_debugfs_init, %if.then855)) #10
          to label %do.body862 [label %if.then855], !srcloc !598

if.then855:                                       ; preds = %do.body843
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtw_debugfs_init.__UNIQUE_ID_ddebug459, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.48) #10
  br label %do.body862

do.body862:                                       ; preds = %if.then855, %do.body843, %do.body839.do.body862_crit_edge
  store ptr %rtwdev, ptr @rtw_debug_priv_bb_1b, align 4
  %call863 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.49, i16 noundef zeroext -32476, ptr noundef %call, ptr noundef nonnull @rtw_debug_priv_bb_1b, ptr noundef nonnull @file_ops_single_r) #10
  %tobool864.not = icmp eq ptr %call863, null
  br i1 %tobool864.not, label %do.body866, label %do.body862.do.body885_crit_edge

do.body862.do.body885_crit_edge:                  ; preds = %do.body862
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body885

do.body866:                                       ; preds = %do.body862
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug460, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_debugfs_init, %if.then878)) #10
          to label %do.body885 [label %if.then878], !srcloc !598

if.then878:                                       ; preds = %do.body866
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtw_debugfs_init.__UNIQUE_ID_ddebug460, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.49) #10
  br label %do.body885

do.body885:                                       ; preds = %if.then878, %do.body866, %do.body862.do.body885_crit_edge
  store ptr %rtwdev, ptr @rtw_debug_priv_bb_1c, align 4
  %call886 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.50, i16 noundef zeroext -32476, ptr noundef %call, ptr noundef nonnull @rtw_debug_priv_bb_1c, ptr noundef nonnull @file_ops_single_r) #10
  %tobool887.not = icmp eq ptr %call886, null
  br i1 %tobool887.not, label %do.body889, label %do.body885.do.body908_crit_edge

do.body885.do.body908_crit_edge:                  ; preds = %do.body885
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body908

do.body889:                                       ; preds = %do.body885
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug461, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_debugfs_init, %if.then901)) #10
          to label %do.body908 [label %if.then901], !srcloc !598

if.then901:                                       ; preds = %do.body889
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtw_debugfs_init.__UNIQUE_ID_ddebug461, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.50) #10
  br label %do.body908

do.body908:                                       ; preds = %if.then901, %do.body889, %do.body885.do.body908_crit_edge
  store ptr %rtwdev, ptr @rtw_debug_priv_bb_1d, align 4
  %call909 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.51, i16 noundef zeroext -32476, ptr noundef %call, ptr noundef nonnull @rtw_debug_priv_bb_1d, ptr noundef nonnull @file_ops_single_r) #10
  %tobool910.not = icmp eq ptr %call909, null
  br i1 %tobool910.not, label %do.body912, label %do.body908.do.body931_crit_edge

do.body908.do.body931_crit_edge:                  ; preds = %do.body908
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body931

do.body912:                                       ; preds = %do.body908
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug462, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_debugfs_init, %if.then924)) #10
          to label %do.body931 [label %if.then924], !srcloc !598

if.then924:                                       ; preds = %do.body912
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtw_debugfs_init.__UNIQUE_ID_ddebug462, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.51) #10
  br label %do.body931

do.body931:                                       ; preds = %if.then924, %do.body912, %do.body908.do.body931_crit_edge
  store ptr %rtwdev, ptr @rtw_debug_priv_bb_1e, align 4
  %call932 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.52, i16 noundef zeroext -32476, ptr noundef %call, ptr noundef nonnull @rtw_debug_priv_bb_1e, ptr noundef nonnull @file_ops_single_r) #10
  %tobool933.not = icmp eq ptr %call932, null
  br i1 %tobool933.not, label %do.body935, label %do.body931.do.body954_crit_edge

do.body931.do.body954_crit_edge:                  ; preds = %do.body931
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body954

do.body935:                                       ; preds = %do.body931
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug463, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_debugfs_init, %if.then947)) #10
          to label %do.body954 [label %if.then947], !srcloc !598

if.then947:                                       ; preds = %do.body935
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtw_debugfs_init.__UNIQUE_ID_ddebug463, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.52) #10
  br label %do.body954

do.body954:                                       ; preds = %if.then947, %do.body935, %do.body931.do.body954_crit_edge
  store ptr %rtwdev, ptr @rtw_debug_priv_bb_1f, align 4
  %call955 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.53, i16 noundef zeroext -32476, ptr noundef %call, ptr noundef nonnull @rtw_debug_priv_bb_1f, ptr noundef nonnull @file_ops_single_r) #10
  %tobool956.not = icmp eq ptr %call955, null
  br i1 %tobool956.not, label %do.body958, label %do.body954.do.end976_crit_edge

do.body954.do.end976_crit_edge:                   ; preds = %do.body954
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end976

do.body958:                                       ; preds = %do.body954
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug464, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_debugfs_init, %if.then970)) #10
          to label %do.end976 [label %if.then970], !srcloc !598

if.then970:                                       ; preds = %do.body958
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtw_debugfs_init.__UNIQUE_ID_ddebug464, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.53) #10
  br label %do.end976

do.end976:                                        ; preds = %if.then970, %do.body958, %do.body954.do.end976_crit_edge
  %chip = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
  %6 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chip, align 4
  %id = getelementptr inbounds %struct.rtw_chip_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cmp = icmp eq i8 %9, 1
  br i1 %cmp, label %do.body979, label %do.end976.do.body1072_crit_edge

do.end976.do.body1072_crit_edge:                  ; preds = %do.end976
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body1072

do.body979:                                       ; preds = %do.end976
  store ptr %rtwdev, ptr @rtw_debug_priv_bb_2c, align 4
  %call980 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.54, i16 noundef zeroext -32476, ptr noundef %call, ptr noundef nonnull @rtw_debug_priv_bb_2c, ptr noundef nonnull @file_ops_single_r) #10
  %tobool981.not = icmp eq ptr %call980, null
  br i1 %tobool981.not, label %do.body983, label %do.body979.do.body1002_crit_edge

do.body979.do.body1002_crit_edge:                 ; preds = %do.body979
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body1002

do.body983:                                       ; preds = %do.body979
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug465, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_debugfs_init, %if.then995)) #10
          to label %do.body1002 [label %if.then995], !srcloc !598

if.then995:                                       ; preds = %do.body983
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtw_debugfs_init.__UNIQUE_ID_ddebug465, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.54) #10
  br label %do.body1002

do.body1002:                                      ; preds = %if.then995, %do.body983, %do.body979.do.body1002_crit_edge
  store ptr %rtwdev, ptr @rtw_debug_priv_bb_2d, align 4
  %call1003 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.55, i16 noundef zeroext -32476, ptr noundef %call, ptr noundef nonnull @rtw_debug_priv_bb_2d, ptr noundef nonnull @file_ops_single_r) #10
  %tobool1004.not = icmp eq ptr %call1003, null
  br i1 %tobool1004.not, label %do.body1006, label %do.body1002.do.body1025_crit_edge

do.body1002.do.body1025_crit_edge:                ; preds = %do.body1002
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body1025

do.body1006:                                      ; preds = %do.body1002
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug466, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_debugfs_init, %if.then1018)) #10
          to label %do.body1025 [label %if.then1018], !srcloc !598

if.then1018:                                      ; preds = %do.body1006
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtw_debugfs_init.__UNIQUE_ID_ddebug466, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.55) #10
  br label %do.body1025

do.body1025:                                      ; preds = %if.then1018, %do.body1006, %do.body1002.do.body1025_crit_edge
  store ptr %rtwdev, ptr @rtw_debug_priv_bb_40, align 4
  %call1026 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.56, i16 noundef zeroext -32476, ptr noundef %call, ptr noundef nonnull @rtw_debug_priv_bb_40, ptr noundef nonnull @file_ops_single_r) #10
  %tobool1027.not = icmp eq ptr %call1026, null
  br i1 %tobool1027.not, label %do.body1029, label %do.body1025.do.body1048_crit_edge

do.body1025.do.body1048_crit_edge:                ; preds = %do.body1025
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body1048

do.body1029:                                      ; preds = %do.body1025
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug467, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_debugfs_init, %if.then1041)) #10
          to label %do.body1048 [label %if.then1041], !srcloc !598

if.then1041:                                      ; preds = %do.body1029
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtw_debugfs_init.__UNIQUE_ID_ddebug467, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.56) #10
  br label %do.body1048

do.body1048:                                      ; preds = %if.then1041, %do.body1029, %do.body1025.do.body1048_crit_edge
  store ptr %rtwdev, ptr @rtw_debug_priv_bb_41, align 4
  %call1049 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.57, i16 noundef zeroext -32476, ptr noundef %call, ptr noundef nonnull @rtw_debug_priv_bb_41, ptr noundef nonnull @file_ops_single_r) #10
  %tobool1050.not = icmp eq ptr %call1049, null
  br i1 %tobool1050.not, label %do.body1052, label %do.body1048.do.body1072_crit_edge

do.body1048.do.body1072_crit_edge:                ; preds = %do.body1048
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body1072

do.body1052:                                      ; preds = %do.body1048
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug468, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_debugfs_init, %if.then1064)) #10
          to label %do.body1072 [label %if.then1064], !srcloc !598

if.then1064:                                      ; preds = %do.body1052
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtw_debugfs_init.__UNIQUE_ID_ddebug468, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.57) #10
  br label %do.body1072

do.body1072:                                      ; preds = %if.then1064, %do.body1052, %do.body1048.do.body1072_crit_edge, %do.end976.do.body1072_crit_edge
  store ptr %rtwdev, ptr @rtw_debug_priv_rf_dump, align 4
  %call1073 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.58, i16 noundef zeroext -32476, ptr noundef %call, ptr noundef nonnull @rtw_debug_priv_rf_dump, ptr noundef nonnull @file_ops_single_r) #10
  %tobool1074.not = icmp eq ptr %call1073, null
  br i1 %tobool1074.not, label %do.body1076, label %do.body1072.do.body1095_crit_edge

do.body1072.do.body1095_crit_edge:                ; preds = %do.body1072
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body1095

do.body1076:                                      ; preds = %do.body1072
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug469, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_debugfs_init, %if.then1088)) #10
          to label %do.body1095 [label %if.then1088], !srcloc !598

if.then1088:                                      ; preds = %do.body1076
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtw_debugfs_init.__UNIQUE_ID_ddebug469, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.58) #10
  br label %do.body1095

do.body1095:                                      ; preds = %if.then1088, %do.body1076, %do.body1072.do.body1095_crit_edge
  store ptr %rtwdev, ptr @rtw_debug_priv_tx_pwr_tbl, align 4
  %call1096 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.59, i16 noundef zeroext -32476, ptr noundef %call, ptr noundef nonnull @rtw_debug_priv_tx_pwr_tbl, ptr noundef nonnull @file_ops_single_r) #10
  %tobool1097.not = icmp eq ptr %call1096, null
  br i1 %tobool1097.not, label %do.body1099, label %do.body1095.do.body1118_crit_edge

do.body1095.do.body1118_crit_edge:                ; preds = %do.body1095
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body1118

do.body1099:                                      ; preds = %do.body1095
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug470, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_debugfs_init, %if.then1111)) #10
          to label %do.body1118 [label %if.then1111], !srcloc !598

if.then1111:                                      ; preds = %do.body1099
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtw_debugfs_init.__UNIQUE_ID_ddebug470, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.59) #10
  br label %do.body1118

do.body1118:                                      ; preds = %if.then1111, %do.body1099, %do.body1095.do.body1118_crit_edge
  store ptr %rtwdev, ptr @rtw_debug_priv_edcca_enable, align 4
  %call1119 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.60, i16 noundef zeroext -32330, ptr noundef %call, ptr noundef nonnull @rtw_debug_priv_edcca_enable, ptr noundef nonnull @file_ops_single_rw) #10
  %tobool1120.not = icmp eq ptr %call1119, null
  br i1 %tobool1120.not, label %do.body1122, label %do.body1118.do.body1141_crit_edge

do.body1118.do.body1141_crit_edge:                ; preds = %do.body1118
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body1141

do.body1122:                                      ; preds = %do.body1118
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug471, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_debugfs_init, %if.then1134)) #10
          to label %do.body1141 [label %if.then1134], !srcloc !598

if.then1134:                                      ; preds = %do.body1122
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtw_debugfs_init.__UNIQUE_ID_ddebug471, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.60) #10
  br label %do.body1141

do.body1141:                                      ; preds = %if.then1134, %do.body1122, %do.body1118.do.body1141_crit_edge
  store ptr %rtwdev, ptr @rtw_debug_priv_fw_crash, align 4
  %call1142 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.61, i16 noundef zeroext -32330, ptr noundef %call, ptr noundef nonnull @rtw_debug_priv_fw_crash, ptr noundef nonnull @file_ops_single_rw) #10
  %tobool1143.not = icmp eq ptr %call1142, null
  br i1 %tobool1143.not, label %do.body1145, label %do.body1141.do.body1164_crit_edge

do.body1141.do.body1164_crit_edge:                ; preds = %do.body1141
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body1164

do.body1145:                                      ; preds = %do.body1141
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug472, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_debugfs_init, %if.then1157)) #10
          to label %do.body1164 [label %if.then1157], !srcloc !598

if.then1157:                                      ; preds = %do.body1145
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtw_debugfs_init.__UNIQUE_ID_ddebug472, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.61) #10
  br label %do.body1164

do.body1164:                                      ; preds = %if.then1157, %do.body1145, %do.body1141.do.body1164_crit_edge
  store ptr %rtwdev, ptr @rtw_debug_priv_force_lowest_basic_rate, align 4
  %call1165 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.62, i16 noundef zeroext -32330, ptr noundef %call, ptr noundef nonnull @rtw_debug_priv_force_lowest_basic_rate, ptr noundef nonnull @file_ops_single_rw) #10
  %tobool1166.not = icmp eq ptr %call1165, null
  br i1 %tobool1166.not, label %do.body1168, label %do.body1164.do.body1187_crit_edge

do.body1164.do.body1187_crit_edge:                ; preds = %do.body1164
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body1187

do.body1168:                                      ; preds = %do.body1164
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug473, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_debugfs_init, %if.then1180)) #10
          to label %do.body1187 [label %if.then1180], !srcloc !598

if.then1180:                                      ; preds = %do.body1168
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtw_debugfs_init.__UNIQUE_ID_ddebug473, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.62) #10
  br label %do.body1187

do.body1187:                                      ; preds = %if.then1180, %do.body1168, %do.body1164.do.body1187_crit_edge
  store ptr %rtwdev, ptr @rtw_debug_priv_dm_cap, align 4
  %call1188 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.63, i16 noundef zeroext -32330, ptr noundef %call, ptr noundef nonnull @rtw_debug_priv_dm_cap, ptr noundef nonnull @file_ops_single_rw) #10
  %tobool1189.not = icmp eq ptr %call1188, null
  br i1 %tobool1189.not, label %do.body1191, label %do.body1187.do.end1209_crit_edge

do.body1187.do.end1209_crit_edge:                 ; preds = %do.body1187
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end1209

do.body1191:                                      ; preds = %do.body1187
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug474, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_debugfs_init, %if.then1203)) #10
          to label %do.end1209 [label %if.then1203], !srcloc !598

if.then1203:                                      ; preds = %do.body1191
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtw_debugfs_init.__UNIQUE_ID_ddebug474, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.63) #10
  br label %do.end1209

do.end1209:                                       ; preds = %if.then1203, %do.body1191, %do.body1187.do.end1209_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__rtw_dbg(ptr nocapture noundef readonly %rtwdev, i32 noundef %mask, ptr noundef %fmt, ...) #0 align 64 {
entry:
  %vaf = alloca %struct.va_format, align 4
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vaf) #10
  %0 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  %1 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %fmt, ptr %vaf, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #10
  %2 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !599
  call void @llvm.va_start(ptr nonnull %args)
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %args, ptr %0, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rtw_debug_mask to i32))
  %4 = load i32, ptr @rtw_debug_mask, align 4
  %and = and i32 %4, %mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.66, ptr noundef %6, ptr noundef nonnull @.str.64, ptr noundef nonnull %vaf) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @llvm.va_end(ptr nonnull %args)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vaf) #10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw_debugfs_set_write_reg(ptr nocapture noundef readonly %filp, ptr noundef %buffer, i32 noundef returned %count, ptr nocapture noundef readnone %loff) #0 align 64 {
entry:
  %tmp = alloca [33 x i8], align 1
  %addr = alloca i32, align 4
  %val = alloca i32, align 4
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %tmp) #10
  %4 = call ptr @memset(ptr %tmp, i32 255, i32 33)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr) #10
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %addr, align 4, !annotation !599
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #10
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !599
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #10
  %7 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %len, align 4, !annotation !599
  call fastcc void @rtw_debugfs_copy_from_user(ptr noundef nonnull %tmp, ptr noundef %buffer, i32 noundef %count, i32 noundef 3)
  %call3 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %tmp, ptr noundef nonnull @.str.85, ptr noundef nonnull %addr, ptr noundef nonnull %val, ptr noundef nonnull %len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call3)
  %cmp.not = icmp eq i32 %call3, 3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.241)
  switch i32 %9, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb4
    i32 4, label %sw.bb6
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %addr, align 4
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val, align 4
  call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %3, i32 noundef 512, ptr noundef nonnull @.str.86, i32 noundef %12, i32 noundef %14)
  %15 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %addr, align 4
  %17 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val, align 4
  %conv = trunc i32 %18 to i8
  %hci.i = getelementptr inbounds %struct.rtw_dev, ptr %3, i32 0, i32 2
  %19 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hci.i, align 8
  %write8.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %20, i32 0, i32 14
  %21 = ptrtoint ptr %write8.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write8.i, align 4
  call void %22(ptr noundef %3, i32 noundef %16, i8 noundef zeroext %conv) #10
  br label %cleanup

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %addr, align 4
  %25 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %val, align 4
  call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %3, i32 noundef 512, ptr noundef nonnull @.str.87, i32 noundef %24, i32 noundef %26)
  %27 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %addr, align 4
  %29 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %val, align 4
  %conv5 = trunc i32 %30 to i16
  %hci.i21 = getelementptr inbounds %struct.rtw_dev, ptr %3, i32 0, i32 2
  %31 = ptrtoint ptr %hci.i21 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hci.i21, align 8
  %write16.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %32, i32 0, i32 15
  %33 = ptrtoint ptr %write16.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %write16.i, align 4
  call void %34(ptr noundef %3, i32 noundef %28, i16 noundef zeroext %conv5) #10
  br label %cleanup

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %addr, align 4
  %37 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %val, align 4
  call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %3, i32 noundef 512, ptr noundef nonnull @.str.88, i32 noundef %36, i32 noundef %38)
  %39 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %addr, align 4
  %41 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %val, align 4
  %hci.i22 = getelementptr inbounds %struct.rtw_dev, ptr %3, i32 0, i32 2
  %43 = ptrtoint ptr %hci.i22 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hci.i22, align 8
  %write32.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %44, i32 0, i32 16
  %45 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %write32.i, align 4
  call void %46(ptr noundef %3, i32 noundef %40, i32 noundef %42) #10
  br label %cleanup

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %3, i32 noundef 512, ptr noundef nonnull @.str.89, i32 noundef %9)
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb6, %sw.bb4, %sw.bb, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr) #10
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %tmp) #10
  ret i32 %count
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtw_debugfs_copy_from_user(ptr noundef %tmp, ptr noundef %buffer, i32 noundef %count, i32 noundef %num) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %tmp, i32 0, i32 33)
  call void @__sanitizer_cov_trace_cmp4(i32 %count, i32 %num)
  %cmp = icmp ult i32 %count, %num
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = tail call i32 @llvm.umin.i32(i32 %count, i32 32)
  %tobool.not = icmp eq ptr %buffer, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then.i.i.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.end
  tail call void @__check_object_size(ptr noundef %tmp, i32 noundef %1, i1 noundef zeroext false) #10
  tail call void @__might_fault(ptr noundef nonnull @.str.92, i32 noundef 156) #10
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %2 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %buffer, i32 %1, i32 -1226833920) #14, !srcloc !600
  %asmresult.i.i = extractvalue { i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !601

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tmp, i32 noundef %1) #10
  %3 = tail call i32 @llvm.read_register.i32(metadata !588) #10
  %and.i.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 4
  %5 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !602
  %and.i.i.i.i = and i32 %5, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #10, !srcloc !603
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !604
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %tmp, ptr noundef nonnull %buffer, i32 noundef %1) #10
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %5) #10, !srcloc !603
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !604
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %1, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %1, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end5, label %if.then11.i.i, !prof !601

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = sub i32 %1, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %tmp, i32 %sub.i.i
  %6 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end5:                                          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr i8, ptr %tmp, i32 %1
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %arrayidx, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then11.i.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw_debugfs_common_write(ptr noundef %filp, ptr noundef %buffer, i32 noundef %count, ptr noundef %loff) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %cb_write = getelementptr inbounds %struct.rtw_debugfs_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cb_write to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cb_write, align 4
  %call = tail call i32 %3(ptr noundef %filp, ptr noundef %buffer, i32 noundef %count, ptr noundef %loff) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rtw_debugfs_close(ptr nocapture noundef readnone %inode, ptr nocapture noundef readnone %filp) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw_debugfs_get_read_reg(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr inbounds %struct.rtw_debugfs_priv, ptr %1, i32 0, i32 3
  %len2 = getelementptr inbounds %struct.rtw_debugfs_priv, ptr %1, i32 0, i32 3, i32 0, i32 1
  %5 = ptrtoint ptr %len2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len2, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %4, align 4
  %9 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.242)
  switch i32 %6, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb4
    i32 4, label %sw.bb7
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %hci.i = getelementptr inbounds %struct.rtw_dev, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hci.i, align 8
  %read8.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %11, i32 0, i32 11
  %12 = ptrtoint ptr %read8.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read8.i, align 4
  %call.i = tail call zeroext i8 %13(ptr noundef %3, i32 noundef %8) #10
  %conv = zext i8 %call.i to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.93, i32 noundef %8, i32 noundef %conv) #10
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %hci.i23 = getelementptr inbounds %struct.rtw_dev, ptr %3, i32 0, i32 2
  %14 = ptrtoint ptr %hci.i23 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hci.i23, align 8
  %read16.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %15, i32 0, i32 12
  %16 = ptrtoint ptr %read16.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read16.i, align 4
  %call.i24 = tail call zeroext i16 %17(ptr noundef %3, i32 noundef %8) #10
  %conv6 = zext i16 %call.i24 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.94, i32 noundef %8, i32 noundef %conv6) #10
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %hci.i25 = getelementptr inbounds %struct.rtw_dev, ptr %3, i32 0, i32 2
  %18 = ptrtoint ptr %hci.i25 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hci.i25, align 8
  %read32.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %19, i32 0, i32 13
  %20 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read32.i, align 4
  %call.i26 = tail call i32 %21(ptr noundef %3, i32 noundef %8) #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.95, i32 noundef %8, i32 noundef %call.i26) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb7, %sw.bb4, %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw_debugfs_set_read_reg(ptr nocapture noundef readonly %filp, ptr noundef %buffer, i32 noundef %count, ptr nocapture noundef readnone %loff) #0 align 64 {
entry:
  %tmp = alloca [33 x i8], align 1
  %addr = alloca i32, align 4
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %tmp) #10
  %6 = call ptr @memset(ptr %tmp, i32 255, i32 33)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr) #10
  %7 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %addr, align 4, !annotation !599
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #10
  %8 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %len, align 4, !annotation !599
  call fastcc void @rtw_debugfs_copy_from_user(ptr noundef nonnull %tmp, ptr noundef %buffer, i32 noundef %count, i32 noundef 2)
  %call3 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %tmp, ptr noundef nonnull @.str.96, ptr noundef nonnull %addr, ptr noundef nonnull %len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call3)
  %cmp.not = icmp eq i32 %call3, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.243)
  switch i32 %10, label %do.end [
    i32 1, label %if.end.if.end9_crit_edge
    i32 2, label %if.end.if.end9_crit_edge22
    i32 4, label %if.end.if.end9_crit_edge23
  ]

if.end.if.end9_crit_edge23:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.end.if.end9_crit_edge22:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.rtw_dev, ptr %5, i32 0, i32 1
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str.97) #13
  br label %cleanup

if.end9:                                          ; preds = %if.end.if.end9_crit_edge, %if.end.if.end9_crit_edge22, %if.end.if.end9_crit_edge23
  %14 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %addr, align 4
  %16 = getelementptr inbounds %struct.rtw_debugfs_priv, ptr %3, i32 0, i32 3
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %15, ptr %16, align 4
  %len11 = getelementptr inbounds %struct.rtw_debugfs_priv, ptr %3, i32 0, i32 3, i32 0, i32 1
  %18 = ptrtoint ptr %len11 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %10, ptr %len11, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %count, %if.end9 ], [ %count, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr) #10
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %tmp) #10
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw_debugfs_single_write(ptr noundef %filp, ptr noundef %buffer, i32 noundef %count, ptr noundef %loff) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  %cb_write = getelementptr inbounds %struct.rtw_debugfs_priv, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %cb_write to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cb_write, align 4
  %call = tail call i32 %5(ptr noundef %filp, ptr noundef %buffer, i32 noundef %count, ptr noundef %loff) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw_debugfs_single_open_rw(ptr nocapture noundef readonly %inode, ptr noundef %filp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %filp, ptr noundef nonnull @rtw_debugfs_single_show, ptr noundef %1) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw_debugfs_single_show(ptr noundef %m, ptr noundef %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %cb_read = getelementptr inbounds %struct.rtw_debugfs_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %cb_read to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cb_read, align 4
  %call = tail call i32 %3(ptr noundef %m, ptr noundef %v) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw_debugfs_set_rf_write(ptr nocapture noundef readonly %filp, ptr noundef %buffer, i32 noundef returned %count, ptr nocapture noundef readnone %loff) #0 align 64 {
entry:
  %tmp = alloca [33 x i8], align 1
  %path = alloca i32, align 4
  %addr = alloca i32, align 4
  %mask = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %tmp) #10
  %4 = call ptr @memset(ptr %tmp, i32 255, i32 33)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %path) #10
  %5 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %path, align 4, !annotation !599
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr) #10
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %addr, align 4, !annotation !599
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #10
  %7 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %mask, align 4, !annotation !599
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #10
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %val, align 4, !annotation !599
  call fastcc void @rtw_debugfs_copy_from_user(ptr noundef nonnull %tmp, ptr noundef %buffer, i32 noundef %count, i32 noundef 4)
  %call3 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %tmp, ptr noundef nonnull @.str.100, ptr noundef nonnull %path, ptr noundef nonnull %addr, ptr noundef nonnull %mask, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call3)
  %cmp.not = icmp eq i32 %call3, 4
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.rtw_dev, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %10, ptr noundef nonnull @.str.101) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %path, align 4
  %13 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %addr, align 4
  %15 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mask, align 4
  %17 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val, align 4
  %rf_lock.i = getelementptr inbounds %struct.rtw_dev, ptr %3, i32 0, i32 16
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_lock.i) #10
  %chip.i = getelementptr inbounds %struct.rtw_dev, ptr %3, i32 0, i32 4
  %19 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %chip.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %write_rf.i = getelementptr inbounds %struct.rtw_chip_ops, ptr %22, i32 0, i32 8
  %23 = ptrtoint ptr %write_rf.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write_rf.i, align 4
  %call5.i = call zeroext i1 %24(ptr noundef %3, i32 noundef %12, i32 noundef %14, i32 noundef %16, i32 noundef %18) #10
  call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_lock.i, i32 noundef %call2.i) #10
  %25 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %path, align 4
  %27 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %addr, align 4
  %29 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mask, align 4
  %31 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %val, align 4
  call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %3, i32 noundef 512, ptr noundef nonnull @.str.103, i32 noundef %26, i32 noundef %28, i32 noundef %30, i32 noundef %32)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %path) #10
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %tmp) #10
  ret i32 %count
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw_debugfs_get_rf_read(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr inbounds %struct.rtw_debugfs_priv, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %4, align 4
  %rf_addr = getelementptr inbounds %struct.rtw_debugfs_priv, ptr %1, i32 0, i32 3, i32 0, i32 1
  %7 = ptrtoint ptr %rf_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rf_addr, align 4
  %rf_mask = getelementptr inbounds %struct.rtw_debugfs_priv, ptr %1, i32 0, i32 3, i32 0, i32 2
  %9 = ptrtoint ptr %rf_mask to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rf_mask, align 4
  %conv = zext i8 %6 to i32
  %rf_lock.i = getelementptr inbounds %struct.rtw_dev, ptr %3, i32 0, i32 16
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_lock.i) #10
  %chip.i = getelementptr inbounds %struct.rtw_dev, ptr %3, i32 0, i32 4
  %11 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chip.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %read_rf.i = getelementptr inbounds %struct.rtw_chip_ops, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %read_rf.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %read_rf.i, align 4
  %call5.i = tail call i32 %16(ptr noundef %3, i32 noundef %conv, i32 noundef %8, i32 noundef %10) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_lock.i, i32 noundef %call2.i) #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.104, i32 noundef %conv, i32 noundef %8, i32 noundef %10, i32 noundef %call5.i) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw_debugfs_set_rf_read(ptr nocapture noundef readonly %filp, ptr noundef %buffer, i32 noundef returned %count, ptr nocapture noundef readnone %loff) #0 align 64 {
entry:
  %tmp = alloca [33 x i8], align 1
  %path = alloca i32, align 4
  %addr = alloca i32, align 4
  %mask = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %tmp) #10
  %6 = call ptr @memset(ptr %tmp, i32 255, i32 33)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %path) #10
  %7 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %path, align 4, !annotation !599
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr) #10
  %8 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %addr, align 4, !annotation !599
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #10
  %9 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %mask, align 4, !annotation !599
  call fastcc void @rtw_debugfs_copy_from_user(ptr noundef nonnull %tmp, ptr noundef %buffer, i32 noundef %count, i32 noundef 3)
  %call3 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %tmp, ptr noundef nonnull @.str.85, ptr noundef nonnull %path, ptr noundef nonnull %addr, ptr noundef nonnull %mask)
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call3)
  %cmp.not = icmp eq i32 %call3, 3
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.rtw_dev, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.101) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %path, align 4
  %conv = trunc i32 %13 to i8
  %14 = getelementptr inbounds %struct.rtw_debugfs_priv, ptr %3, i32 0, i32 3
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv, ptr %14, align 4
  %16 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %addr, align 4
  %rf_addr = getelementptr inbounds %struct.rtw_debugfs_priv, ptr %3, i32 0, i32 3, i32 0, i32 1
  %18 = ptrtoint ptr %rf_addr to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %rf_addr, align 4
  %19 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mask, align 4
  %rf_mask = getelementptr inbounds %struct.rtw_debugfs_priv, ptr %3, i32 0, i32 3, i32 0, i32 2
  %21 = ptrtoint ptr %rf_mask to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %rf_mask, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %path) #10
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %tmp) #10
  ret i32 %count
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw_debugfs_get_fix_rate(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %fix_rate3 = getelementptr inbounds %struct.rtw_dev, ptr %3, i32 0, i32 13, i32 24
  %4 = ptrtoint ptr %fix_rate3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %fix_rate3, align 4
  %conv = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 83, i8 %5)
  %cmp = icmp ugt i8 %5, 83
  %.str.106..str.107 = select i1 %cmp, ptr @.str.106, ptr @.str.107
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull %.str.106..str.107, i32 noundef %conv) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw_debugfs_set_fix_rate(ptr nocapture noundef readonly %filp, ptr noundef %buffer, i32 noundef %count, ptr nocapture noundef readnone %loff) #0 align 64 {
entry:
  %fix_rate = alloca i8, align 1
  %tmp = alloca [33 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %fix_rate) #10
  %6 = ptrtoint ptr %fix_rate to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %fix_rate, align 1, !annotation !599
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %tmp) #10
  %7 = call ptr @memset(ptr %tmp, i32 255, i32 33)
  call fastcc void @rtw_debugfs_copy_from_user(ptr noundef nonnull %tmp, ptr noundef %buffer, i32 noundef %count, i32 noundef 1)
  %call4 = call i32 @kstrtou8(ptr noundef nonnull %tmp, i32 noundef 0, ptr noundef nonnull %fix_rate) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.rtw_dev, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.108) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %fix_rate to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %fix_rate, align 1
  %fix_rate5 = getelementptr inbounds %struct.rtw_dev, ptr %5, i32 0, i32 13, i32 24
  %12 = ptrtoint ptr %fix_rate5 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %fix_rate5, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call4, %do.end ], [ %count, %if.end ]
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %tmp) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %fix_rate) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou8(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw_debugfs_get_dump_cam(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
for.inc.5:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr inbounds %struct.rtw_debugfs_priv, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %shl = shl i32 %6, 3
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.110, i32 noundef %6) #10
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.111) #10
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.112) #10
  %mutex = getelementptr inbounds %struct.rtw_dev, ptr %3, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %hci.i = getelementptr inbounds %struct.rtw_dev, ptr %3, i32 0, i32 2
  %or = or i32 %shl, -2147483648
  %7 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hci.i, align 8
  %write32.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %8, i32 0, i32 16
  %9 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write32.i, align 4
  tail call void %10(ptr noundef %3, i32 noundef 1648, i32 noundef %or) #10
  %11 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hci.i, align 8
  %read32.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %12, i32 0, i32 13
  %13 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read32.i, align 4
  %call.i = tail call i32 %14(ptr noundef %3, i32 noundef 1656) #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.113, i32 noundef %call.i) #10
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.114) #10
  %or.1 = or i32 %shl, -2147483647
  %15 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hci.i, align 8
  %write32.i.1 = getelementptr inbounds %struct.rtw_hci_ops, ptr %16, i32 0, i32 16
  %17 = ptrtoint ptr %write32.i.1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write32.i.1, align 4
  tail call void %18(ptr noundef %3, i32 noundef 1648, i32 noundef %or.1) #10
  %19 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hci.i, align 8
  %read32.i.1 = getelementptr inbounds %struct.rtw_hci_ops, ptr %20, i32 0, i32 13
  %21 = ptrtoint ptr %read32.i.1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %read32.i.1, align 4
  %call.i.1 = tail call i32 %22(ptr noundef %3, i32 noundef 1656) #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.113, i32 noundef %call.i.1) #10
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.114) #10
  %or.2 = or i32 %shl, -2147483646
  %23 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hci.i, align 8
  %write32.i.2 = getelementptr inbounds %struct.rtw_hci_ops, ptr %24, i32 0, i32 16
  %25 = ptrtoint ptr %write32.i.2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %write32.i.2, align 4
  tail call void %26(ptr noundef %3, i32 noundef 1648, i32 noundef %or.2) #10
  %27 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hci.i, align 8
  %read32.i.2 = getelementptr inbounds %struct.rtw_hci_ops, ptr %28, i32 0, i32 13
  %29 = ptrtoint ptr %read32.i.2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %read32.i.2, align 4
  %call.i.2 = tail call i32 %30(ptr noundef %3, i32 noundef 1656) #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.113, i32 noundef %call.i.2) #10
  %or.3 = or i32 %shl, -2147483645
  %31 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hci.i, align 8
  %write32.i.3 = getelementptr inbounds %struct.rtw_hci_ops, ptr %32, i32 0, i32 16
  %33 = ptrtoint ptr %write32.i.3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %write32.i.3, align 4
  tail call void %34(ptr noundef %3, i32 noundef 1648, i32 noundef %or.3) #10
  %35 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hci.i, align 8
  %read32.i.3 = getelementptr inbounds %struct.rtw_hci_ops, ptr %36, i32 0, i32 13
  %37 = ptrtoint ptr %read32.i.3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %read32.i.3, align 4
  %call.i.3 = tail call i32 %38(ptr noundef %3, i32 noundef 1656) #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.113, i32 noundef %call.i.3) #10
  %or.4 = or i32 %shl, -2147483644
  %39 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hci.i, align 8
  %write32.i.4 = getelementptr inbounds %struct.rtw_hci_ops, ptr %40, i32 0, i32 16
  %41 = ptrtoint ptr %write32.i.4 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %write32.i.4, align 4
  tail call void %42(ptr noundef %3, i32 noundef 1648, i32 noundef %or.4) #10
  %43 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hci.i, align 8
  %read32.i.4 = getelementptr inbounds %struct.rtw_hci_ops, ptr %44, i32 0, i32 13
  %45 = ptrtoint ptr %read32.i.4 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %read32.i.4, align 4
  %call.i.4 = tail call i32 %46(ptr noundef %3, i32 noundef 1656) #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.113, i32 noundef %call.i.4) #10
  %or.5 = or i32 %shl, -2147483643
  %47 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %hci.i, align 8
  %write32.i.5 = getelementptr inbounds %struct.rtw_hci_ops, ptr %48, i32 0, i32 16
  %49 = ptrtoint ptr %write32.i.5 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %write32.i.5, align 4
  tail call void %50(ptr noundef %3, i32 noundef 1648, i32 noundef %or.5) #10
  %51 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %hci.i, align 8
  %read32.i.5 = getelementptr inbounds %struct.rtw_hci_ops, ptr %52, i32 0, i32 13
  %53 = ptrtoint ptr %read32.i.5 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %read32.i.5, align 4
  %call.i.5 = tail call i32 %54(ptr noundef %3, i32 noundef 1656) #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.113, i32 noundef %call.i.5) #10
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.115) #10
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw_debugfs_set_single_input(ptr nocapture noundef readonly %filp, ptr noundef %buffer, i32 noundef %count, ptr nocapture noundef readnone %loff) #0 align 64 {
entry:
  %tmp = alloca [33 x i8], align 1
  %input = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %tmp) #10
  %6 = call ptr @memset(ptr %tmp, i32 255, i32 33)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %input) #10
  %7 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %input, align 4, !annotation !599
  call fastcc void @rtw_debugfs_copy_from_user(ptr noundef nonnull %tmp, ptr noundef %buffer, i32 noundef %count, i32 noundef 1)
  %call3 = call i32 @kstrtoint(ptr noundef nonnull %tmp, i32 noundef 0, ptr noundef nonnull %input) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.rtw_dev, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.116) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %input, align 4
  %12 = getelementptr inbounds %struct.rtw_debugfs_priv, ptr %3, i32 0, i32 3
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %11, ptr %12, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call3, %do.end ], [ %count, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %input) #10
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %tmp) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw_debugfs_get_rsvd_page(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %chip = getelementptr inbounds %struct.rtw_dev, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip, align 4
  %page_size2 = getelementptr inbounds %struct.rtw_chip_info, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %page_size2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %page_size2, align 1
  %8 = getelementptr inbounds %struct.rtw_debugfs_priv, ptr %1, i32 0, i32 3
  %page_num = getelementptr inbounds %struct.rtw_debugfs_priv, ptr %1, i32 0, i32 3, i32 0, i32 1
  %9 = ptrtoint ptr %page_num to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %page_num, align 4
  %conv = zext i8 %7 to i32
  %mul = mul i32 %10, %conv
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %8, align 4
  %mul4 = mul i32 %12, %conv
  %call = tail call noalias ptr @vzalloc(i32 noundef %mul) #15
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = tail call i32 @rtw_fw_dump_fifo(ptr noundef %3, i8 noundef zeroext 2, i32 noundef %mul4, i32 noundef %mul, ptr noundef nonnull %call) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %for.cond.preheader, label %do.end

for.cond.preheader:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp81.not = icmp eq i32 %mul, 0
  br i1 %cmp81.not, label %for.cond.preheader.cleanup.sink.split_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup.sink.split_crit_edge:  ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.rtw_dev, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.118) #13
  br label %cleanup.sink.split

for.body:                                         ; preds = %if.end15.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.082 = phi i32 [ %add38, %if.end15.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %rem = srem i32 %i.082, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp11 = icmp eq i32 %rem, 0
  br i1 %cmp11, label %if.then13, label %for.body.if.end15_crit_edge

for.body.if.end15_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then13:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %add = add i32 %i.082, %mul4
  %div = udiv i32 %add, %conv
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.121, i32 noundef %div) #10
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %for.body.if.end15_crit_edge
  %add.ptr = getelementptr i8, ptr %call, i32 %i.082
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %add.ptr, align 1
  %conv16 = zext i8 %16 to i32
  %add.ptr18 = getelementptr i8, ptr %add.ptr, i32 1
  %17 = ptrtoint ptr %add.ptr18 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %add.ptr18, align 1
  %conv19 = zext i8 %18 to i32
  %add.ptr21 = getelementptr i8, ptr %add.ptr, i32 2
  %19 = ptrtoint ptr %add.ptr21 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %add.ptr21, align 1
  %conv22 = zext i8 %20 to i32
  %add.ptr24 = getelementptr i8, ptr %add.ptr, i32 3
  %21 = ptrtoint ptr %add.ptr24 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %add.ptr24, align 1
  %conv25 = zext i8 %22 to i32
  %add.ptr27 = getelementptr i8, ptr %add.ptr, i32 4
  %23 = ptrtoint ptr %add.ptr27 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %add.ptr27, align 1
  %conv28 = zext i8 %24 to i32
  %add.ptr30 = getelementptr i8, ptr %add.ptr, i32 5
  %25 = ptrtoint ptr %add.ptr30 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %add.ptr30, align 1
  %conv31 = zext i8 %26 to i32
  %add.ptr33 = getelementptr i8, ptr %add.ptr, i32 6
  %27 = ptrtoint ptr %add.ptr33 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %add.ptr33, align 1
  %conv34 = zext i8 %28 to i32
  %add.ptr36 = getelementptr i8, ptr %add.ptr, i32 7
  %29 = ptrtoint ptr %add.ptr36 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %add.ptr36, align 1
  %conv37 = zext i8 %30 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.122, i32 noundef %conv16, i32 noundef %conv19, i32 noundef %conv22, i32 noundef %conv25, i32 noundef %conv28, i32 noundef %conv31, i32 noundef %conv34, i32 noundef %conv37) #10
  %add38 = add i32 %i.082, 8
  %cmp = icmp ult i32 %add38, %mul
  br i1 %cmp, label %if.end15.for.body_crit_edge, label %if.end15.cleanup.sink.split_crit_edge

if.end15.cleanup.sink.split_crit_edge:            ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end15.for.body_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup.sink.split:                               ; preds = %if.end15.cleanup.sink.split_crit_edge, %do.end, %for.cond.preheader.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call5, %do.end ], [ 0, %for.cond.preheader.cleanup.sink.split_crit_edge ], [ 0, %if.end15.cleanup.sink.split_crit_edge ]
  tail call void @vfree(ptr noundef nonnull %call) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw_debugfs_set_rsvd_page(ptr nocapture noundef readonly %filp, ptr noundef %buffer, i32 noundef %count, ptr nocapture noundef readnone %loff) #0 align 64 {
entry:
  %tmp = alloca [33 x i8], align 1
  %offset = alloca i32, align 4
  %page_num = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %tmp) #10
  %6 = call ptr @memset(ptr %tmp, i32 255, i32 33)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset) #10
  %7 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %offset, align 4, !annotation !599
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %page_num) #10
  %8 = ptrtoint ptr %page_num to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %page_num, align 4, !annotation !599
  call fastcc void @rtw_debugfs_copy_from_user(ptr noundef nonnull %tmp, ptr noundef %buffer, i32 noundef %count, i32 noundef 2)
  %call3 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %tmp, ptr noundef nonnull @.str.123, ptr noundef nonnull %offset, ptr noundef nonnull %page_num)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call3)
  %cmp.not = icmp eq i32 %call3, 2
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.rtw_dev, ptr %5, i32 0, i32 1
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %10, ptr noundef nonnull @.str.124) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %offset, align 4
  %13 = getelementptr inbounds %struct.rtw_debugfs_priv, ptr %3, i32 0, i32 3
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %12, ptr %13, align 4
  %15 = ptrtoint ptr %page_num to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %page_num, align 4
  %page_num4 = getelementptr inbounds %struct.rtw_debugfs_priv, ptr %3, i32 0, i32 3, i32 0, i32 1
  %17 = ptrtoint ptr %page_num4 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %page_num4, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %count, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page_num) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset) #10
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %tmp) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_fw_dump_fifo(ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw_debugfs_get_phy_info(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %last_pkt_count = getelementptr inbounds %struct.rtw_dev, ptr %3, i32 0, i32 13, i32 53
  %ewma_evm5 = getelementptr inbounds %struct.rtw_dev, ptr %3, i32 0, i32 13, i32 54
  %ewma_snr6 = getelementptr inbounds %struct.rtw_dev, ptr %3, i32 0, i32 13, i32 55
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.126) #10
  %sta_cnt.i = getelementptr inbounds %struct.rtw_dev, ptr %3, i32 0, i32 35
  %4 = ptrtoint ptr %sta_cnt.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sta_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.i.not = icmp eq i8 %5, 0
  %cond = select i1 %tobool.i.not, i32 78, i32 89
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.127, i32 noundef %cond) #10
  %current_channel = getelementptr inbounds %struct.rtw_dev, ptr %3, i32 0, i32 5, i32 7
  %6 = ptrtoint ptr %current_channel to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %current_channel, align 1
  %conv = zext i8 %7 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.128, i32 noundef %conv) #10
  %current_band_width = getelementptr inbounds %struct.rtw_dev, ptr %3, i32 0, i32 5, i32 9
  %8 = ptrtoint ptr %current_band_width to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %current_band_width, align 1
  %conv9 = zext i8 %9 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.129, i32 noundef %conv9) #10
  %igi_history = getelementptr inbounds %struct.rtw_dev, ptr %3, i32 0, i32 13, i32 17
  %10 = ptrtoint ptr %igi_history to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %igi_history, align 2
  %conv10 = zext i8 %11 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.130, i32 noundef %conv10) #10
  %tx_throughput = getelementptr inbounds %struct.rtw_dev, ptr %3, i32 0, i32 10, i32 4
  %12 = ptrtoint ptr %tx_throughput to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_throughput, align 8
  %rx_throughput = getelementptr inbounds %struct.rtw_dev, ptr %3, i32 0, i32 10, i32 5
  %14 = ptrtoint ptr %rx_throughput to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rx_throughput, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.131, i32 noundef %13, i32 noundef %15) #10
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.132) #10
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.3) #10
  %tx_rate = getelementptr inbounds %struct.rtw_dev, ptr %3, i32 0, i32 13, i32 25
  %16 = ptrtoint ptr %tx_rate to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %tx_rate, align 1
  tail call fastcc void @rtw_print_rate(ptr noundef %m, i8 noundef zeroext %17)
  %18 = ptrtoint ptr %tx_rate to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %tx_rate, align 1
  %conv12 = zext i8 %19 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.133, i32 noundef %conv12) #10
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.134) #10
  %20 = ptrtoint ptr %last_pkt_count to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %last_pkt_count, align 2
  %conv13 = zext i16 %21 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.135, i32 noundef %conv13) #10
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.5) #10
  %curr_rx_rate = getelementptr inbounds %struct.rtw_dev, ptr %3, i32 0, i32 13, i32 51
  %22 = ptrtoint ptr %curr_rx_rate to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %curr_rx_rate, align 2
  tail call fastcc void @rtw_print_rate(ptr noundef %m, i8 noundef zeroext %23)
  %24 = ptrtoint ptr %curr_rx_rate to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %curr_rx_rate, align 2
  %conv15 = zext i8 %25 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.4, i32 noundef %conv15) #10
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.136) #10
  %num_qry_pkt = getelementptr inbounds %struct.rtw_dev, ptr %3, i32 0, i32 13, i32 53, i32 1
  %26 = ptrtoint ptr %num_qry_pkt to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %num_qry_pkt, align 2
  %conv17 = zext i16 %27 to i32
  %arrayidx19 = getelementptr %struct.rtw_dev, ptr %3, i32 0, i32 13, i32 53, i32 1, i32 1
  %28 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx19, align 2
  %conv20 = zext i16 %29 to i32
  %arrayidx22 = getelementptr %struct.rtw_dev, ptr %3, i32 0, i32 13, i32 53, i32 1, i32 2
  %30 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %arrayidx22, align 2
  %conv23 = zext i16 %31 to i32
  %arrayidx25 = getelementptr %struct.rtw_dev, ptr %3, i32 0, i32 13, i32 53, i32 1, i32 3
  %32 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %arrayidx25, align 2
  %conv26 = zext i16 %33 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.137, i32 noundef %conv17, i32 noundef %conv20, i32 noundef %conv23, i32 noundef %conv26) #10
  %arrayidx28 = getelementptr %struct.rtw_dev, ptr %3, i32 0, i32 13, i32 53, i32 1, i32 4
  %34 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %arrayidx28, align 2
  %conv29 = zext i16 %35 to i32
  %arrayidx31 = getelementptr %struct.rtw_dev, ptr %3, i32 0, i32 13, i32 53, i32 1, i32 5
  %36 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx31, align 2
  %conv32 = zext i16 %37 to i32
  %arrayidx34 = getelementptr %struct.rtw_dev, ptr %3, i32 0, i32 13, i32 53, i32 1, i32 6
  %38 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %arrayidx34, align 2
  %conv35 = zext i16 %39 to i32
  %arrayidx37 = getelementptr %struct.rtw_dev, ptr %3, i32 0, i32 13, i32 53, i32 1, i32 7
  %40 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %arrayidx37, align 2
  %conv38 = zext i16 %41 to i32
  %arrayidx40 = getelementptr %struct.rtw_dev, ptr %3, i32 0, i32 13, i32 53, i32 1, i32 8
  %42 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %arrayidx40, align 2
  %conv41 = zext i16 %43 to i32
  %arrayidx43 = getelementptr %struct.rtw_dev, ptr %3, i32 0, i32 13, i32 53, i32 1, i32 9
  %44 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %arrayidx43, align 2
  %conv44 = zext i16 %45 to i32
  %arrayidx46 = getelementptr %struct.rtw_dev, ptr %3, i32 0, i32 13, i32 53, i32 1, i32 10
  %46 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %arrayidx46, align 2
  %conv47 = zext i16 %47 to i32
  %arrayidx49 = getelementptr %struct.rtw_dev, ptr %3, i32 0, i32 13, i32 53, i32 1, i32 11
  %48 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %arrayidx49, align 2
  %conv50 = zext i16 %49 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.138, i32 noundef %conv29, i32 noundef %conv32, i32 noundef %conv35, i32 noundef %conv38, i32 noundef %conv41, i32 noundef %conv44, i32 noundef %conv47, i32 noundef %conv50) #10
  %nss = getelementptr inbounds %struct.rtw_dev, ptr %3, i32 0, i32 8, i32 34, i32 3
  %50 = ptrtoint ptr %nss to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %nss, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %cmp362.not = icmp eq i8 %51, 0
  br i1 %cmp362.not, label %entry.for.end164_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end164_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end164

for.cond99.preheader:                             ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %cmp104364.not = icmp eq i8 %69, 0
  br i1 %cmp104364.not, label %for.cond99.preheader.for.end164_crit_edge, label %for.cond99.preheader.for.body106_crit_edge

for.cond99.preheader.for.body106_crit_edge:       ; preds = %for.cond99.preheader
  br label %for.body106

for.cond99.preheader.for.end164_crit_edge:        ; preds = %for.cond99.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end164

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %mul = shl nuw nsw i32 %indvars.iv, 3
  %conv55 = add nuw nsw i32 %mul, 12
  %add60 = or i32 %mul, 7
  %idxprom = and i32 %conv55, 252
  %arrayidx62 = getelementptr %struct.rtw_dev, ptr %3, i32 0, i32 13, i32 53, i32 1, i32 %idxprom
  %52 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %arrayidx62, align 2
  %conv63 = zext i16 %53 to i32
  %add66 = or i32 %idxprom, 1
  %arrayidx67 = getelementptr %struct.rtw_dev, ptr %3, i32 0, i32 13, i32 53, i32 1, i32 %add66
  %54 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %arrayidx67, align 2
  %conv68 = zext i16 %55 to i32
  %add71 = or i32 %idxprom, 2
  %arrayidx72 = getelementptr %struct.rtw_dev, ptr %3, i32 0, i32 13, i32 53, i32 1, i32 %add71
  %56 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %arrayidx72, align 2
  %conv73 = zext i16 %57 to i32
  %add76 = or i32 %idxprom, 3
  %arrayidx77 = getelementptr %struct.rtw_dev, ptr %3, i32 0, i32 13, i32 53, i32 1, i32 %add76
  %58 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %arrayidx77, align 2
  %conv78 = zext i16 %59 to i32
  %add81 = add nuw nsw i32 %idxprom, 4
  %arrayidx82 = getelementptr %struct.rtw_dev, ptr %3, i32 0, i32 13, i32 53, i32 1, i32 %add81
  %60 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %arrayidx82, align 2
  %conv83 = zext i16 %61 to i32
  %add86 = add nuw nsw i32 %idxprom, 5
  %arrayidx87 = getelementptr %struct.rtw_dev, ptr %3, i32 0, i32 13, i32 53, i32 1, i32 %add86
  %62 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %arrayidx87, align 2
  %conv88 = zext i16 %63 to i32
  %add91 = add nuw nsw i32 %idxprom, 6
  %arrayidx92 = getelementptr %struct.rtw_dev, ptr %3, i32 0, i32 13, i32 53, i32 1, i32 %add91
  %64 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %arrayidx92, align 2
  %conv93 = zext i16 %65 to i32
  %add96 = add nuw nsw i32 %idxprom, 7
  %arrayidx97 = getelementptr %struct.rtw_dev, ptr %3, i32 0, i32 13, i32 53, i32 1, i32 %add96
  %66 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %arrayidx97, align 2
  %conv98 = zext i16 %67 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.139, i32 noundef %mul, i32 noundef %add60, i32 noundef %conv63, i32 noundef %conv68, i32 noundef %conv73, i32 noundef %conv78, i32 noundef %conv83, i32 noundef %conv88, i32 noundef %conv93, i32 noundef %conv98) #10
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %68 = ptrtoint ptr %nss to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %nss, align 1
  %70 = zext i8 %69 to i32
  %cmp = icmp ult i32 %indvars.iv.next, %70
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.cond99.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body106:                                      ; preds = %for.body106.for.body106_crit_edge, %for.cond99.preheader.for.body106_crit_edge
  %indvars.iv366 = phi i32 [ %add112, %for.body106.for.body106_crit_edge ], [ 0, %for.cond99.preheader.for.body106_crit_edge ]
  %mul108 = mul i32 %indvars.iv366, 10
  %add109 = add i32 %mul108, 44
  %add112 = add nuw nsw i32 %indvars.iv366, 1
  %idxprom114 = and i32 %add109, 254
  %arrayidx115 = getelementptr %struct.rtw_dev, ptr %3, i32 0, i32 13, i32 53, i32 1, i32 %idxprom114
  %71 = ptrtoint ptr %arrayidx115 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %arrayidx115, align 2
  %conv116 = zext i16 %72 to i32
  %add119 = or i32 %idxprom114, 1
  %arrayidx120 = getelementptr %struct.rtw_dev, ptr %3, i32 0, i32 13, i32 53, i32 1, i32 %add119
  %73 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %arrayidx120, align 2
  %conv121 = zext i16 %74 to i32
  %add124 = add nuw nsw i32 %idxprom114, 2
  %arrayidx125 = getelementptr %struct.rtw_dev, ptr %3, i32 0, i32 13, i32 53, i32 1, i32 %add124
  %75 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %arrayidx125, align 2
  %conv126 = zext i16 %76 to i32
  %add129 = add nuw nsw i32 %idxprom114, 3
  %arrayidx130 = getelementptr %struct.rtw_dev, ptr %3, i32 0, i32 13, i32 53, i32 1, i32 %add129
  %77 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %arrayidx130, align 2
  %conv131 = zext i16 %78 to i32
  %add134 = add nuw nsw i32 %idxprom114, 4
  %arrayidx135 = getelementptr %struct.rtw_dev, ptr %3, i32 0, i32 13, i32 53, i32 1, i32 %add134
  %79 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %arrayidx135, align 2
  %conv136 = zext i16 %80 to i32
  %add139 = add nuw nsw i32 %idxprom114, 5
  %arrayidx140 = getelementptr %struct.rtw_dev, ptr %3, i32 0, i32 13, i32 53, i32 1, i32 %add139
  %81 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %arrayidx140, align 2
  %conv141 = zext i16 %82 to i32
  %add144 = add nuw nsw i32 %idxprom114, 6
  %arrayidx145 = getelementptr %struct.rtw_dev, ptr %3, i32 0, i32 13, i32 53, i32 1, i32 %add144
  %83 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %arrayidx145, align 2
  %conv146 = zext i16 %84 to i32
  %add149 = add nuw nsw i32 %idxprom114, 7
  %arrayidx150 = getelementptr %struct.rtw_dev, ptr %3, i32 0, i32 13, i32 53, i32 1, i32 %add149
  %85 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %arrayidx150, align 2
  %conv151 = zext i16 %86 to i32
  %add154 = add nuw nsw i32 %idxprom114, 8
  %arrayidx155 = getelementptr %struct.rtw_dev, ptr %3, i32 0, i32 13, i32 53, i32 1, i32 %add154
  %87 = ptrtoint ptr %arrayidx155 to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %arrayidx155, align 2
  %conv156 = zext i16 %88 to i32
  %add159 = add nuw nsw i32 %idxprom114, 9
  %arrayidx160 = getelementptr %struct.rtw_dev, ptr %3, i32 0, i32 13, i32 53, i32 1, i32 %add159
  %89 = ptrtoint ptr %arrayidx160 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %arrayidx160, align 2
  %conv161 = zext i16 %90 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.140, i32 noundef %add112, i32 noundef %conv116, i32 noundef %conv121, i32 noundef %conv126, i32 noundef %conv131, i32 noundef %conv136, i32 noundef %conv141, i32 noundef %conv146, i32 noundef %conv151, i32 noundef %conv156, i32 noundef %conv161) #10
  %91 = ptrtoint ptr %nss to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %nss, align 1
  %93 = zext i8 %92 to i32
  %cmp104 = icmp ult i32 %add112, %93
  br i1 %cmp104, label %for.body106.for.body106_crit_edge, label %for.body106.for.end164_crit_edge

for.body106.for.end164_crit_edge:                 ; preds = %for.body106
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end164

for.body106.for.body106_crit_edge:                ; preds = %for.body106
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body106

for.end164:                                       ; preds = %for.body106.for.end164_crit_edge, %for.cond99.preheader.for.end164_crit_edge, %entry.for.end164_crit_edge
  %rssi = getelementptr inbounds %struct.rtw_dev, ptr %3, i32 0, i32 13, i32 50
  %94 = ptrtoint ptr %rssi to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %rssi, align 2
  %conv166 = zext i8 %95 to i32
  %sub = add nsw i32 %conv166, -100
  %arrayidx168 = getelementptr %struct.rtw_dev, ptr %3, i32 0, i32 13, i32 50, i32 1
  %96 = ptrtoint ptr %arrayidx168 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx168, align 1
  %conv169 = zext i8 %97 to i32
  %sub170 = add nsw i32 %conv169, -100
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.141, i32 noundef %sub, i32 noundef %sub170) #10
  %rx_evm_dbm = getelementptr inbounds %struct.rtw_dev, ptr %3, i32 0, i32 13, i32 48
  %98 = ptrtoint ptr %rx_evm_dbm to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %rx_evm_dbm, align 1
  %conv172 = zext i8 %99 to i32
  %arrayidx174 = getelementptr %struct.rtw_dev, ptr %3, i32 0, i32 13, i32 48, i32 1
  %100 = ptrtoint ptr %arrayidx174 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx174, align 1
  %conv175 = zext i8 %101 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.142, i32 noundef %conv172, i32 noundef %conv175) #10
  %rx_snr = getelementptr inbounds %struct.rtw_dev, ptr %3, i32 0, i32 13, i32 47
  %102 = ptrtoint ptr %rx_snr to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %rx_snr, align 1
  %conv177 = sext i8 %103 to i32
  %arrayidx179 = getelementptr %struct.rtw_dev, ptr %3, i32 0, i32 13, i32 47, i32 1
  %104 = ptrtoint ptr %arrayidx179 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx179, align 1
  %conv180 = sext i8 %105 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.143, i32 noundef %conv177, i32 noundef %conv180) #10
  %cfo_tail = getelementptr inbounds %struct.rtw_dev, ptr %3, i32 0, i32 13, i32 49
  %106 = ptrtoint ptr %cfo_tail to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %cfo_tail, align 2
  %conv182 = sext i16 %107 to i32
  %arrayidx184 = getelementptr %struct.rtw_dev, ptr %3, i32 0, i32 13, i32 49, i32 1
  %108 = ptrtoint ptr %arrayidx184 to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %arrayidx184, align 2
  %conv185 = sext i16 %109 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.144, i32 noundef %conv182, i32 noundef %conv185) #10
  %110 = ptrtoint ptr %curr_rx_rate to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %curr_rx_rate, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %111)
  %cmp188 = icmp ugt i8 %111, 2
  br i1 %cmp188, label %if.then, label %for.end164.if.end_crit_edge

for.end164.if.end_crit_edge:                      ; preds = %for.end164
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %for.end164
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.145) #10
  %112 = ptrtoint ptr %ewma_evm5 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %ewma_evm5, align 4
  %shr.i = lshr i32 %113, 10
  %conv193 = and i32 %shr.i, 255
  %114 = ptrtoint ptr %ewma_snr6 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %ewma_snr6, align 4
  %shr.i355 = lshr i32 %115, 10
  %conv197 = and i32 %shr.i355, 255
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.146, i32 noundef %conv193, i32 noundef %conv197) #10
  %arrayidx198 = getelementptr %struct.rtw_dev, ptr %3, i32 0, i32 13, i32 54, i32 1
  %116 = ptrtoint ptr %arrayidx198 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx198, align 4
  %shr.i356 = lshr i32 %117, 10
  %conv201 = and i32 %shr.i356, 255
  %arrayidx202 = getelementptr %struct.rtw_dev, ptr %3, i32 0, i32 13, i32 55, i32 4
  %118 = ptrtoint ptr %arrayidx202 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %arrayidx202, align 4
  %shr.i357 = lshr i32 %119, 10
  %conv205 = and i32 %shr.i357, 255
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.147, i32 noundef %conv201, i32 noundef %conv205) #10
  %arrayidx206 = getelementptr %struct.rtw_dev, ptr %3, i32 0, i32 13, i32 54, i32 2
  %120 = ptrtoint ptr %arrayidx206 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %arrayidx206, align 4
  %shr.i358 = lshr i32 %121, 10
  %conv209 = and i32 %shr.i358, 255
  %arrayidx210 = getelementptr %struct.rtw_dev, ptr %3, i32 0, i32 13, i32 54, i32 3
  %122 = ptrtoint ptr %arrayidx210 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %arrayidx210, align 4
  %shr.i359 = lshr i32 %123, 10
  %conv213 = and i32 %shr.i359, 255
  %arrayidx214 = getelementptr %struct.rtw_dev, ptr %3, i32 0, i32 13, i32 55, i32 8
  %124 = ptrtoint ptr %arrayidx214 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %arrayidx214, align 4
  %shr.i360 = lshr i32 %125, 10
  %conv217 = and i32 %shr.i360, 255
  %arrayidx218 = getelementptr %struct.rtw_dev, ptr %3, i32 0, i32 13, i32 55, i32 9
  %126 = ptrtoint ptr %arrayidx218 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %arrayidx218, align 4
  %shr.i361 = lshr i32 %127, 10
  %conv221 = and i32 %shr.i361, 255
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.148, i32 noundef %conv209, i32 noundef %conv213, i32 noundef %conv217, i32 noundef %conv221) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end164.if.end_crit_edge
  %dm_info2 = getelementptr inbounds %struct.rtw_dev, ptr %3, i32 0, i32 13
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.149) #10
  %cck_cca_cnt = getelementptr inbounds %struct.rtw_dev, ptr %3, i32 0, i32 13, i32 3
  %128 = ptrtoint ptr %cck_cca_cnt to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %cck_cca_cnt, align 4
  %ofdm_cca_cnt = getelementptr inbounds %struct.rtw_dev, ptr %3, i32 0, i32 13, i32 4
  %130 = ptrtoint ptr %ofdm_cca_cnt to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %ofdm_cca_cnt, align 4
  %total_cca_cnt = getelementptr inbounds %struct.rtw_dev, ptr %3, i32 0, i32 13, i32 5
  %132 = ptrtoint ptr %total_cca_cnt to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %total_cca_cnt, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.150, i32 noundef %129, i32 noundef %131, i32 noundef %133) #10
  %134 = ptrtoint ptr %dm_info2 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %dm_info2, align 4
  %ofdm_fa_cnt = getelementptr inbounds %struct.rtw_dev, ptr %3, i32 0, i32 13, i32 1
  %136 = ptrtoint ptr %ofdm_fa_cnt to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %ofdm_fa_cnt, align 4
  %total_fa_cnt = getelementptr inbounds %struct.rtw_dev, ptr %3, i32 0, i32 13, i32 2
  %138 = ptrtoint ptr %total_fa_cnt to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %total_fa_cnt, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.151, i32 noundef %135, i32 noundef %137, i32 noundef %139) #10
  %cck_ok_cnt = getelementptr inbounds %struct.rtw_dev, ptr %3, i32 0, i32 13, i32 6
  %140 = ptrtoint ptr %cck_ok_cnt to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %cck_ok_cnt, align 4
  %cck_err_cnt = getelementptr inbounds %struct.rtw_dev, ptr %3, i32 0, i32 13, i32 7
  %142 = ptrtoint ptr %cck_err_cnt to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %cck_err_cnt, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.152, i32 noundef %141, i32 noundef %143) #10
  %ofdm_ok_cnt = getelementptr inbounds %struct.rtw_dev, ptr %3, i32 0, i32 13, i32 8
  %144 = ptrtoint ptr %ofdm_ok_cnt to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %ofdm_ok_cnt, align 4
  %ofdm_err_cnt = getelementptr inbounds %struct.rtw_dev, ptr %3, i32 0, i32 13, i32 9
  %146 = ptrtoint ptr %ofdm_err_cnt to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %ofdm_err_cnt, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.153, i32 noundef %145, i32 noundef %147) #10
  %ht_ok_cnt = getelementptr inbounds %struct.rtw_dev, ptr %3, i32 0, i32 13, i32 10
  %148 = ptrtoint ptr %ht_ok_cnt to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %ht_ok_cnt, align 4
  %ht_err_cnt = getelementptr inbounds %struct.rtw_dev, ptr %3, i32 0, i32 13, i32 11
  %150 = ptrtoint ptr %ht_err_cnt to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %ht_err_cnt, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.154, i32 noundef %149, i32 noundef %151) #10
  %vht_ok_cnt = getelementptr inbounds %struct.rtw_dev, ptr %3, i32 0, i32 13, i32 12
  %152 = ptrtoint ptr %vht_ok_cnt to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %vht_ok_cnt, align 4
  %vht_err_cnt = getelementptr inbounds %struct.rtw_dev, ptr %3, i32 0, i32 13, i32 13
  %154 = ptrtoint ptr %vht_err_cnt to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %vht_err_cnt, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.155, i32 noundef %153, i32 noundef %155) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw_debugfs_get_coex_info(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @rtw_coex_display_coex_info(ptr noundef %3, ptr noundef %m) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_coex_display_coex_info(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw_debugfs_get_coex_enable(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %manual_control = getelementptr inbounds %struct.rtw_dev, ptr %3, i32 0, i32 14, i32 8
  %4 = ptrtoint ptr %manual_control to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %manual_control, align 1, !range !605
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %cond = select i1 %tobool.not, ptr @.str.158, ptr @.str.157
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.156, ptr noundef nonnull %cond) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw_debugfs_set_coex_enable(ptr nocapture noundef readonly %filp, ptr noundef %buffer, i32 noundef %count, ptr nocapture noundef readnone %loff) #0 align 64 {
entry:
  %tmp = alloca [33 x i8], align 1
  %enable = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %tmp) #10
  %6 = call ptr @memset(ptr %tmp, i32 255, i32 33)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %enable) #10
  %7 = ptrtoint ptr %enable to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %enable, align 1, !annotation !599
  call fastcc void @rtw_debugfs_copy_from_user(ptr noundef nonnull %tmp, ptr noundef %buffer, i32 noundef %count, i32 noundef 1)
  %call4 = call i32 @kstrtobool(ptr noundef nonnull %tmp, ptr noundef nonnull %enable) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.rtw_dev, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.124) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %mutex = getelementptr inbounds %struct.rtw_dev, ptr %5, i32 0, i32 15
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %10 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %enable, align 1, !range !605
  %manual_control = getelementptr inbounds %struct.rtw_dev, ptr %5, i32 0, i32 14, i32 8
  %12 = xor i8 %11, 1
  %13 = ptrtoint ptr %manual_control to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %manual_control, align 1
  call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call4, %do.end ], [ %count, %if.end ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %enable) #10
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %tmp) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw_debugfs_set_h2c(ptr nocapture noundef readonly %filp, ptr noundef %buffer, i32 noundef %count, ptr nocapture noundef readnone %loff) #0 align 64 {
entry:
  %tmp = alloca [33 x i8], align 1
  %param = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %tmp) #10
  %4 = call ptr @memset(ptr %tmp, i32 255, i32 33)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %param) #10
  %5 = getelementptr inbounds [8 x i8], ptr %param, i32 0, i32 1
  %6 = getelementptr inbounds [8 x i8], ptr %param, i32 0, i32 2
  %7 = getelementptr inbounds [8 x i8], ptr %param, i32 0, i32 3
  %8 = getelementptr inbounds [8 x i8], ptr %param, i32 0, i32 4
  %9 = getelementptr inbounds [8 x i8], ptr %param, i32 0, i32 5
  %10 = getelementptr inbounds [8 x i8], ptr %param, i32 0, i32 6
  %11 = getelementptr inbounds [8 x i8], ptr %param, i32 0, i32 7
  %12 = ptrtoint ptr %param to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 -1, ptr %param, align 8
  call fastcc void @rtw_debugfs_copy_from_user(ptr noundef nonnull %tmp, ptr noundef %buffer, i32 noundef %count, i32 noundef 3)
  %call10 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %tmp, ptr noundef nonnull @.str.160, ptr noundef nonnull %param, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call10)
  %cmp.not = icmp eq i32 %call10, 8
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.rtw_dev, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %14, ptr noundef nonnull @.str.161) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @rtw_fw_h2c_cmd_dbg(ptr noundef %3, ptr noundef nonnull %param) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %count, %if.end ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %param) #10
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %tmp) #10
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_fw_h2c_cmd_dbg(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw_debug_get_mac_page(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr inbounds %struct.rtw_debugfs_priv, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %hci.i = getelementptr inbounds %struct.rtw_dev, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hci.i, align 8
  %read32.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %8, i32 0, i32 13
  %9 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read32.i, align 4
  %call.i = tail call i32 %10(ptr noundef %3, i32 noundef %6) #10
  br label %for.body5.preheader

for.cond.loopexit:                                ; preds = %for.body5.3, %for.body5.2.for.cond.loopexit_crit_edge, %for.body5.1.for.cond.loopexit_crit_edge, %for.body5.preheader.for.cond.loopexit_crit_edge
  %n.128.lcssa = phi i32 [ %n.029, %for.body5.preheader.for.cond.loopexit_crit_edge ], [ %add7, %for.body5.1.for.cond.loopexit_crit_edge ], [ %add7.1, %for.body5.2.for.cond.loopexit_crit_edge ], [ %add7.2, %for.body5.3 ]
  %add7.lcssa = phi i32 [ %add7, %for.body5.preheader.for.cond.loopexit_crit_edge ], [ %add7.1, %for.body5.1.for.cond.loopexit_crit_edge ], [ %add7.2, %for.body5.2.for.cond.loopexit_crit_edge ], [ %add7.3, %for.body5.3 ]
  %cmp = icmp slt i32 %n.128.lcssa, 252
  br i1 %cmp, label %for.cond.loopexit.for.body5.preheader_crit_edge, label %for.end8

for.cond.loopexit.for.body5.preheader_crit_edge:  ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body5.preheader

for.body5.preheader:                              ; preds = %for.cond.loopexit.for.body5.preheader_crit_edge, %entry
  %n.029 = phi i32 [ 0, %entry ], [ %add7.lcssa, %for.cond.loopexit.for.body5.preheader_crit_edge ]
  %add = add i32 %n.029, %6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.165, i32 noundef %add) #10
  %or = or i32 %n.029, %6
  %11 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hci.i, align 8
  %read32.i23 = getelementptr inbounds %struct.rtw_hci_ops, ptr %12, i32 0, i32 13
  %13 = ptrtoint ptr %read32.i23 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read32.i23, align 4
  %call.i24 = tail call i32 %14(ptr noundef %3, i32 noundef %or) #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.166, i32 noundef %call.i24) #10
  %add7 = add nsw i32 %n.029, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 252, i32 %n.029)
  %cmp4 = icmp slt i32 %n.029, 252
  br i1 %cmp4, label %for.body5.1, label %for.body5.preheader.for.cond.loopexit_crit_edge

for.body5.preheader.for.cond.loopexit_crit_edge:  ; preds = %for.body5.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.loopexit

for.body5.1:                                      ; preds = %for.body5.preheader
  %or.1 = or i32 %add7, %6
  %15 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hci.i, align 8
  %read32.i23.1 = getelementptr inbounds %struct.rtw_hci_ops, ptr %16, i32 0, i32 13
  %17 = ptrtoint ptr %read32.i23.1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read32.i23.1, align 4
  %call.i24.1 = tail call i32 %18(ptr noundef %3, i32 noundef %or.1) #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.166, i32 noundef %call.i24.1) #10
  %add7.1 = add nsw i32 %n.029, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 248, i32 %n.029)
  %cmp4.1 = icmp slt i32 %n.029, 248
  br i1 %cmp4.1, label %for.body5.2, label %for.body5.1.for.cond.loopexit_crit_edge

for.body5.1.for.cond.loopexit_crit_edge:          ; preds = %for.body5.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.loopexit

for.body5.2:                                      ; preds = %for.body5.1
  %or.2 = or i32 %add7.1, %6
  %19 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hci.i, align 8
  %read32.i23.2 = getelementptr inbounds %struct.rtw_hci_ops, ptr %20, i32 0, i32 13
  %21 = ptrtoint ptr %read32.i23.2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %read32.i23.2, align 4
  %call.i24.2 = tail call i32 %22(ptr noundef %3, i32 noundef %or.2) #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.166, i32 noundef %call.i24.2) #10
  %add7.2 = add nsw i32 %n.029, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 244, i32 %n.029)
  %cmp4.2 = icmp slt i32 %n.029, 244
  br i1 %cmp4.2, label %for.body5.3, label %for.body5.2.for.cond.loopexit_crit_edge

for.body5.2.for.cond.loopexit_crit_edge:          ; preds = %for.body5.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.loopexit

for.body5.3:                                      ; preds = %for.body5.2
  call void @__sanitizer_cov_trace_pc() #12
  %or.3 = or i32 %add7.2, %6
  %23 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hci.i, align 8
  %read32.i23.3 = getelementptr inbounds %struct.rtw_hci_ops, ptr %24, i32 0, i32 13
  %25 = ptrtoint ptr %read32.i23.3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %read32.i23.3, align 4
  %call.i24.3 = tail call i32 %26(ptr noundef %3, i32 noundef %or.3) #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.166, i32 noundef %call.i24.3) #10
  %add7.3 = add nsw i32 %n.029, 16
  br label %for.cond.loopexit

for.end8:                                         ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.115) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw_debug_get_bb_page(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr inbounds %struct.rtw_debugfs_priv, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %hci.i = getelementptr inbounds %struct.rtw_dev, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hci.i, align 8
  %read32.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %8, i32 0, i32 13
  %9 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read32.i, align 4
  %call.i = tail call i32 %10(ptr noundef %3, i32 noundef %6) #10
  br label %for.body5.preheader

for.cond.loopexit:                                ; preds = %for.body5.3, %for.body5.2.for.cond.loopexit_crit_edge, %for.body5.1.for.cond.loopexit_crit_edge, %for.body5.preheader.for.cond.loopexit_crit_edge
  %n.128.lcssa = phi i32 [ %n.029, %for.body5.preheader.for.cond.loopexit_crit_edge ], [ %add7, %for.body5.1.for.cond.loopexit_crit_edge ], [ %add7.1, %for.body5.2.for.cond.loopexit_crit_edge ], [ %add7.2, %for.body5.3 ]
  %add7.lcssa = phi i32 [ %add7, %for.body5.preheader.for.cond.loopexit_crit_edge ], [ %add7.1, %for.body5.1.for.cond.loopexit_crit_edge ], [ %add7.2, %for.body5.2.for.cond.loopexit_crit_edge ], [ %add7.3, %for.body5.3 ]
  %cmp = icmp slt i32 %n.128.lcssa, 252
  br i1 %cmp, label %for.cond.loopexit.for.body5.preheader_crit_edge, label %for.end8

for.cond.loopexit.for.body5.preheader_crit_edge:  ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body5.preheader

for.body5.preheader:                              ; preds = %for.cond.loopexit.for.body5.preheader_crit_edge, %entry
  %n.029 = phi i32 [ 0, %entry ], [ %add7.lcssa, %for.cond.loopexit.for.body5.preheader_crit_edge ]
  %add = add i32 %n.029, %6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.165, i32 noundef %add) #10
  %or = or i32 %n.029, %6
  %11 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hci.i, align 8
  %read32.i23 = getelementptr inbounds %struct.rtw_hci_ops, ptr %12, i32 0, i32 13
  %13 = ptrtoint ptr %read32.i23 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read32.i23, align 4
  %call.i24 = tail call i32 %14(ptr noundef %3, i32 noundef %or) #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.166, i32 noundef %call.i24) #10
  %add7 = add nsw i32 %n.029, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 252, i32 %n.029)
  %cmp4 = icmp slt i32 %n.029, 252
  br i1 %cmp4, label %for.body5.1, label %for.body5.preheader.for.cond.loopexit_crit_edge

for.body5.preheader.for.cond.loopexit_crit_edge:  ; preds = %for.body5.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.loopexit

for.body5.1:                                      ; preds = %for.body5.preheader
  %or.1 = or i32 %add7, %6
  %15 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hci.i, align 8
  %read32.i23.1 = getelementptr inbounds %struct.rtw_hci_ops, ptr %16, i32 0, i32 13
  %17 = ptrtoint ptr %read32.i23.1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read32.i23.1, align 4
  %call.i24.1 = tail call i32 %18(ptr noundef %3, i32 noundef %or.1) #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.166, i32 noundef %call.i24.1) #10
  %add7.1 = add nsw i32 %n.029, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 248, i32 %n.029)
  %cmp4.1 = icmp slt i32 %n.029, 248
  br i1 %cmp4.1, label %for.body5.2, label %for.body5.1.for.cond.loopexit_crit_edge

for.body5.1.for.cond.loopexit_crit_edge:          ; preds = %for.body5.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.loopexit

for.body5.2:                                      ; preds = %for.body5.1
  %or.2 = or i32 %add7.1, %6
  %19 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hci.i, align 8
  %read32.i23.2 = getelementptr inbounds %struct.rtw_hci_ops, ptr %20, i32 0, i32 13
  %21 = ptrtoint ptr %read32.i23.2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %read32.i23.2, align 4
  %call.i24.2 = tail call i32 %22(ptr noundef %3, i32 noundef %or.2) #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.166, i32 noundef %call.i24.2) #10
  %add7.2 = add nsw i32 %n.029, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 244, i32 %n.029)
  %cmp4.2 = icmp slt i32 %n.029, 244
  br i1 %cmp4.2, label %for.body5.3, label %for.body5.2.for.cond.loopexit_crit_edge

for.body5.2.for.cond.loopexit_crit_edge:          ; preds = %for.body5.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.loopexit

for.body5.3:                                      ; preds = %for.body5.2
  call void @__sanitizer_cov_trace_pc() #12
  %or.3 = or i32 %add7.2, %6
  %23 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hci.i, align 8
  %read32.i23.3 = getelementptr inbounds %struct.rtw_hci_ops, ptr %24, i32 0, i32 13
  %25 = ptrtoint ptr %read32.i23.3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %read32.i23.3, align 4
  %call.i24.3 = tail call i32 %26(ptr noundef %3, i32 noundef %or.3) #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.166, i32 noundef %call.i24.3) #10
  %add7.3 = add nsw i32 %n.029, 16
  br label %for.cond.loopexit

for.end8:                                         ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.115) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw_debug_get_rf_dump(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %rf_path_num = getelementptr inbounds %struct.rtw_dev, ptr %3, i32 0, i32 5, i32 14
  %4 = ptrtoint ptr %rf_path_num to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %rf_path_num, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp36.not = icmp eq i8 %5, 0
  br i1 %cmp36.not, label %entry.for.end19_crit_edge, label %for.body.lr.ph

entry.for.end19_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end19

for.body.lr.ph:                                   ; preds = %entry
  %rf_lock.i = getelementptr inbounds %struct.rtw_dev, ptr %3, i32 0, i32 16
  %chip.i = getelementptr inbounds %struct.rtw_dev, ptr %3, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.end16.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.end16.for.body_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.202, i32 noundef %indvars.iv) #10
  br label %for.body8

for.body8:                                        ; preds = %for.body8.for.body8_crit_edge, %for.body
  %addr.035 = phi i32 [ 0, %for.body ], [ %add15, %for.body8.for.body8_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.203, i32 noundef %addr.035) #10
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_lock.i) #10
  %6 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chip.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %read_rf.i = getelementptr inbounds %struct.rtw_chip_ops, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %read_rf.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read_rf.i, align 4
  %call5.i = tail call i32 %11(ptr noundef %3, i32 noundef %indvars.iv, i32 noundef %addr.035, i32 noundef -1) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_lock.i, i32 noundef %call2.i) #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.166, i32 noundef %call5.i) #10
  %add.1 = or i32 %addr.035, 1
  %call2.i.1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_lock.i) #10
  %12 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chip.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %read_rf.i.1 = getelementptr inbounds %struct.rtw_chip_ops, ptr %15, i32 0, i32 7
  %16 = ptrtoint ptr %read_rf.i.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read_rf.i.1, align 4
  %call5.i.1 = tail call i32 %17(ptr noundef %3, i32 noundef %indvars.iv, i32 noundef %add.1, i32 noundef -1) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_lock.i, i32 noundef %call2.i.1) #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.166, i32 noundef %call5.i.1) #10
  %add.2 = or i32 %addr.035, 2
  %call2.i.2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_lock.i) #10
  %18 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %chip.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %read_rf.i.2 = getelementptr inbounds %struct.rtw_chip_ops, ptr %21, i32 0, i32 7
  %22 = ptrtoint ptr %read_rf.i.2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %read_rf.i.2, align 4
  %call5.i.2 = tail call i32 %23(ptr noundef %3, i32 noundef %indvars.iv, i32 noundef %add.2, i32 noundef -1) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_lock.i, i32 noundef %call2.i.2) #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.166, i32 noundef %call5.i.2) #10
  %add.3 = or i32 %addr.035, 3
  %call2.i.3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_lock.i) #10
  %24 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %chip.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %read_rf.i.3 = getelementptr inbounds %struct.rtw_chip_ops, ptr %27, i32 0, i32 7
  %28 = ptrtoint ptr %read_rf.i.3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %read_rf.i.3, align 4
  %call5.i.3 = tail call i32 %29(ptr noundef %3, i32 noundef %indvars.iv, i32 noundef %add.3, i32 noundef -1) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_lock.i, i32 noundef %call2.i.3) #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.166, i32 noundef %call5.i.3) #10
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.115) #10
  %add15 = add nuw nsw i32 %addr.035, 4
  %cmp6 = icmp ult i32 %addr.035, 252
  br i1 %cmp6, label %for.body8.for.body8_crit_edge, label %for.end16

for.body8.for.body8_crit_edge:                    ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body8

for.end16:                                        ; preds = %for.body8
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.115) #10
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %30 = ptrtoint ptr %rf_path_num to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %rf_path_num, align 2
  %32 = zext i8 %31 to i32
  %cmp = icmp ult i32 %indvars.iv.next, %32
  br i1 %cmp, label %for.end16.for.body_crit_edge, label %for.end16.for.end19_crit_edge

for.end16.for.end19_crit_edge:                    ; preds = %for.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end19

for.end16.for.body_crit_edge:                     ; preds = %for.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end19:                                        ; preds = %for.end16.for.end19_crit_edge, %entry.for.end19_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw_debugfs_get_tx_pwr_tbl(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  %pwr_param = alloca %struct.rtw_power_params, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %pwr_param) #10
  %4 = call ptr @memset(ptr %pwr_param, i32 0, i32 5)
  %current_band_width = getelementptr inbounds %struct.rtw_dev, ptr %3, i32 0, i32 5, i32 9
  %5 = ptrtoint ptr %current_band_width to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %current_band_width, align 1
  %current_channel = getelementptr inbounds %struct.rtw_dev, ptr %3, i32 0, i32 5, i32 7
  %7 = ptrtoint ptr %current_channel to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %current_channel, align 1
  %call = tail call zeroext i8 @rtw_regd_get(ptr noundef %3) #10
  %conv = zext i8 %8 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.204, i32 noundef %conv) #10
  %conv3 = zext i8 %6 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.205, i32 noundef %conv3) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %call)
  %9 = icmp ult i8 %call, 11
  br i1 %9, label %switch.lookup, label %entry.rtw_get_regd_string.exit_crit_edge

entry.rtw_get_regd_string.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw_get_regd_string.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %10 = sext i8 %call to i32
  %switch.gep = getelementptr inbounds [11 x ptr], ptr @switch.table.rtw_debugfs_get_tx_pwr_tbl, i32 0, i32 %10
  %11 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %11)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %rtw_get_regd_string.exit

rtw_get_regd_string.exit:                         ; preds = %switch.lookup, %entry.rtw_get_regd_string.exit_crit_edge
  %retval.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.229, %entry.rtw_get_regd_string.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.206, ptr noundef nonnull %retval.0.i) #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.207, ptr noundef nonnull @.str.208, ptr noundef nonnull @.str.209, ptr noundef nonnull @.str.210, ptr noundef nonnull @.str.211, ptr noundef nonnull @.str.212, ptr noundef nonnull @.str.213, ptr noundef nonnull @.str.214, ptr noundef nonnull @.str.215) #10
  %tx_power_mutex = getelementptr inbounds %struct.rtw_dev, ptr %3, i32 0, i32 5, i32 19
  tail call void @mutex_lock_nested(ptr noundef %tx_power_mutex, i32 noundef 0) #10
  %current_band_type = getelementptr inbounds %struct.rtw_dev, ptr %3, i32 0, i32 5, i32 10
  %pwr_offset = getelementptr inbounds %struct.rtw_power_params, ptr %pwr_param, i32 0, i32 1
  %pwr_limit = getelementptr inbounds %struct.rtw_power_params, ptr %pwr_param, i32 0, i32 2
  %pwr_sar = getelementptr inbounds %struct.rtw_power_params, ptr %pwr_param, i32 0, i32 4
  %pwr_remnant = getelementptr inbounds %struct.rtw_power_params, ptr %pwr_param, i32 0, i32 3
  %12 = ptrtoint ptr %current_band_type to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %current_band_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %13)
  %cmp8 = icmp eq i8 %13, 2
  %. = select i1 %cmp8, i32 4, i32 0
  br label %for.body14

for.body14:                                       ; preds = %for.inc.for.body14_crit_edge, %rtw_get_regd_string.exit
  %indvars.iv = phi i32 [ %., %rtw_get_regd_string.exit ], [ %indvars.iv.next, %for.inc.for.body14_crit_edge ]
  %14 = trunc i32 %indvars.iv to i8
  %15 = add i8 %14, -28
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %15)
  %16 = icmp ult i8 %15, 16
  br i1 %16, label %for.body14.for.inc_crit_edge, label %if.end22

for.body14.for.inc_crit_edge:                     ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end22:                                         ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #12
  %17 = trunc i32 %indvars.iv to i8
  call void @rtw_get_tx_power_params(ptr noundef %3, i8 noundef zeroext 0, i8 noundef zeroext %17, i8 noundef zeroext %6, i8 noundef zeroext %8, i8 noundef zeroext %call, ptr noundef nonnull %pwr_param) #10
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.216, i32 noundef 65) #10
  call fastcc void @rtw_print_rate(ptr noundef %m, i8 noundef zeroext %17)
  %arrayidx25 = getelementptr %struct.rtw_dev, ptr %3, i32 0, i32 5, i32 26, i32 0, i32 %indvars.iv
  %18 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx25, align 1
  %conv26 = sext i8 %19 to i32
  %20 = ptrtoint ptr %pwr_param to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %pwr_param, align 1
  %conv33 = zext i8 %21 to i32
  %22 = ptrtoint ptr %pwr_offset to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %pwr_offset, align 1
  %24 = ptrtoint ptr %pwr_limit to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %pwr_limit, align 1
  %26 = call i8 @llvm.smin.i8(i8 %23, i8 %25)
  %27 = ptrtoint ptr %pwr_sar to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %pwr_sar, align 1
  %29 = call i8 @llvm.smin.i8(i8 %26, i8 %28)
  %cond51 = sext i8 %29 to i32
  %conv53 = sext i8 %23 to i32
  %conv55 = sext i8 %25 to i32
  %conv57 = sext i8 %28 to i32
  %30 = ptrtoint ptr %pwr_remnant to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %pwr_remnant, align 1
  %conv58 = sext i8 %31 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.217, i32 noundef %conv26, i32 noundef %conv26, i32 noundef %conv33, i32 noundef %cond51, i32 noundef %conv53, i32 noundef %conv55, i32 noundef %conv57, i32 noundef %conv58) #10
  br label %for.inc

for.inc:                                          ; preds = %if.end22, %for.body14.for.inc_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 64
  br i1 %exitcond.not, label %for.inc59, label %for.inc.for.body14_crit_edge

for.inc.for.body14_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body14

for.inc59:                                        ; preds = %for.inc
  %32 = ptrtoint ptr %current_band_type to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %current_band_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %33)
  %cmp8.1 = icmp eq i8 %33, 2
  %..1 = select i1 %cmp8.1, i32 4, i32 0
  br label %for.body14.1

for.body14.1:                                     ; preds = %for.inc.1.for.body14.1_crit_edge, %for.inc59
  %indvars.iv.1 = phi i32 [ %..1, %for.inc59 ], [ %indvars.iv.next.1, %for.inc.1.for.body14.1_crit_edge ]
  %34 = trunc i32 %indvars.iv.1 to i8
  %35 = add i8 %34, -28
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %35)
  %36 = icmp ult i8 %35, 16
  br i1 %36, label %for.body14.1.for.inc.1_crit_edge, label %if.end22.1

for.body14.1.for.inc.1_crit_edge:                 ; preds = %for.body14.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

if.end22.1:                                       ; preds = %for.body14.1
  call void @__sanitizer_cov_trace_pc() #12
  %37 = trunc i32 %indvars.iv.1 to i8
  call void @rtw_get_tx_power_params(ptr noundef %3, i8 noundef zeroext 1, i8 noundef zeroext %37, i8 noundef zeroext %6, i8 noundef zeroext %8, i8 noundef zeroext %call, ptr noundef nonnull %pwr_param) #10
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.216, i32 noundef 66) #10
  call fastcc void @rtw_print_rate(ptr noundef %m, i8 noundef zeroext %37)
  %arrayidx25.1 = getelementptr %struct.rtw_dev, ptr %3, i32 0, i32 5, i32 26, i32 1, i32 %indvars.iv.1
  %38 = ptrtoint ptr %arrayidx25.1 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx25.1, align 1
  %conv26.1 = sext i8 %39 to i32
  %40 = ptrtoint ptr %pwr_param to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %pwr_param, align 1
  %conv33.1 = zext i8 %41 to i32
  %42 = ptrtoint ptr %pwr_offset to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %pwr_offset, align 1
  %44 = ptrtoint ptr %pwr_limit to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %pwr_limit, align 1
  %46 = call i8 @llvm.smin.i8(i8 %43, i8 %45)
  %47 = ptrtoint ptr %pwr_sar to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %pwr_sar, align 1
  %49 = call i8 @llvm.smin.i8(i8 %46, i8 %48)
  %cond51.1 = sext i8 %49 to i32
  %conv53.1 = sext i8 %43 to i32
  %conv55.1 = sext i8 %45 to i32
  %conv57.1 = sext i8 %48 to i32
  %50 = ptrtoint ptr %pwr_remnant to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %pwr_remnant, align 1
  %conv58.1 = sext i8 %51 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.217, i32 noundef %conv26.1, i32 noundef %conv26.1, i32 noundef %conv33.1, i32 noundef %cond51.1, i32 noundef %conv53.1, i32 noundef %conv55.1, i32 noundef %conv57.1, i32 noundef %conv58.1) #10
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end22.1, %for.body14.1.for.inc.1_crit_edge
  %indvars.iv.next.1 = add nuw nsw i32 %indvars.iv.1, 1
  %exitcond.1.not = icmp eq i32 %indvars.iv.next.1, 64
  br i1 %exitcond.1.not, label %for.inc59.1, label %for.inc.1.for.body14.1_crit_edge

for.inc.1.for.body14.1_crit_edge:                 ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body14.1

for.inc59.1:                                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  call void @mutex_unlock(ptr noundef %tx_power_mutex) #10
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %pwr_param) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_regd_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_get_tx_power_params(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw_debugfs_get_edcca_enable(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @rtw_edcca_enabled to i32))
  %4 = load i8, ptr @rtw_edcca_enabled, align 1, !range !605
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  %cond = select i1 %tobool.not, ptr @.str.157, ptr @.str.158
  %edcca_mode = getelementptr inbounds %struct.rtw_dev, ptr %3, i32 0, i32 13, i32 61
  %5 = ptrtoint ptr %edcca_mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %edcca_mode, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.230, ptr noundef nonnull %cond, i32 noundef %6) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw_debugfs_set_edcca_enable(ptr nocapture noundef readonly %filp, ptr noundef %buffer, i32 noundef %count, ptr nocapture noundef readnone %loff) #0 align 64 {
entry:
  %input = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %input) #10
  %6 = ptrtoint ptr %input to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %input, align 1, !annotation !599
  %call = call i32 @kstrtobool_from_user(ptr noundef %buffer, i32 noundef %count, ptr noundef nonnull %input) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %input to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %input, align 1, !range !605
  call void @__asan_store1_noabort(i32 ptrtoint (ptr @rtw_edcca_enabled to i32))
  store i8 %8, ptr @rtw_edcca_enabled, align 1
  call void @rtw_phy_adaptivity_set_mode(ptr noundef %5) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %input) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool_from_user(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_phy_adaptivity_set_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw_debugfs_get_fw_crash(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %flags = getelementptr inbounds %struct.rtw_dev, ptr %3, i32 0, i32 38
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags, align 4
  %6 = and i32 %5, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %lor.rhs, label %entry.lor.end_crit_edge

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.end

lor.rhs:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags, align 4
  %9 = lshr i32 %8, 9
  %.lobit = and i32 %9, 1
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry.lor.end_crit_edge
  %10 = phi i32 [ 1, %entry.lor.end_crit_edge ], [ %.lobit, %lor.rhs ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.231, i32 noundef %10) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw_debugfs_set_fw_crash(ptr nocapture noundef readonly %filp, ptr noundef %buffer, i32 noundef %count, ptr nocapture noundef readnone %loff) #0 align 64 {
entry:
  %tmp = alloca [33 x i8], align 1
  %input = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %tmp) #10
  %6 = call ptr @memset(ptr %tmp, i32 255, i32 33)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %input) #10
  %7 = ptrtoint ptr %input to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %input, align 1, !annotation !599
  call fastcc void @rtw_debugfs_copy_from_user(ptr noundef nonnull %tmp, ptr noundef %buffer, i32 noundef %count, i32 noundef 1)
  %call3 = call i32 @kstrtobool(ptr noundef nonnull %tmp, ptr noundef nonnull %input) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %input to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %input, align 1, !range !605
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool4.not = icmp eq i8 %9, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %flags = getelementptr inbounds %struct.rtw_dev, ptr %5, i32 0, i32 38
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %flags, align 4
  %12 = and i32 %11, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool9.not = icmp eq i32 %12, 0
  br i1 %tobool9.not, label %if.end11, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %mutex = getelementptr inbounds %struct.rtw_dev, ptr %5, i32 0, i32 15
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  call void @rtw_leave_lps_deep(ptr noundef %5) #10
  call void @_set_bit(i32 noundef 10, ptr noundef %flags) #10
  %hci.i = getelementptr inbounds %struct.rtw_dev, ptr %5, i32 0, i32 2
  %13 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hci.i, align 8
  %write8.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %14, i32 0, i32 14
  %15 = ptrtoint ptr %write8.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write8.i, align 4
  call void %16(ptr noundef %5, i32 noundef 463, i8 noundef zeroext 1) #10
  call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end11 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -115, %if.end6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %input) #10
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %tmp) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_leave_lps_deep(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw_debugfs_get_force_lowest_basic_rate(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %flags = getelementptr inbounds %struct.rtw_dev, ptr %3, i32 0, i32 38
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags, align 4
  %shr.i = lshr i32 %5, 11
  %and1.i = and i32 %shr.i, 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.232, i32 noundef %and1.i) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw_debugfs_set_force_lowest_basic_rate(ptr nocapture noundef readonly %filp, ptr noundef %buffer, i32 noundef %count, ptr nocapture noundef readnone %loff) #0 align 64 {
entry:
  %input = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %input) #10
  %6 = ptrtoint ptr %input to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %input, align 1, !annotation !599
  %call = call i32 @kstrtobool_from_user(ptr noundef %buffer, i32 noundef %count, ptr noundef nonnull %input) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %input to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %input, align 1, !range !605
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool2.not = icmp eq i8 %8, 0
  %flags4 = getelementptr inbounds %struct.rtw_dev, ptr %5, i32 0, i32 38
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @_set_bit(i32 noundef 11, ptr noundef %flags4) #10
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @_clear_bit(i32 noundef 11, ptr noundef %flags4) #10
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %count, %if.else ], [ %count, %if.then3 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %input) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw_debugfs_get_dm_cap(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr inbounds %struct.rtw_debugfs_priv, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cond5 = icmp eq i8 %6, 1
  %dm_flags.i = getelementptr inbounds %struct.rtw_dev, ptr %3, i32 0, i32 13, i32 56
  %7 = ptrtoint ptr %dm_flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dm_flags.i, align 4
  %and.i = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool.not.i, i32 43, i32 45
  br i1 %cond5, label %sw.bb, label %for.body

sw.bb:                                            ; preds = %entry
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.234, i32 noundef 1, i32 noundef %cond.i, ptr noundef nonnull @.str.238) #10
  %rf_path_num.i = getelementptr inbounds %struct.rtw_dev, ptr %3, i32 0, i32 5, i32 14
  %9 = ptrtoint ptr %rf_path_num.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %rf_path_num.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp27.not.i = icmp eq i8 %10, 0
  br i1 %cmp27.not.i, label %sw.bb.sw.epilog_crit_edge, label %for.body.lr.ph.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

for.body.lr.ph.i:                                 ; preds = %sw.bb
  %rf_lock.i.i = getelementptr inbounds %struct.rtw_dev, ptr %3, i32 0, i32 16
  %chip.i.i = getelementptr inbounds %struct.rtw_dev, ptr %3, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %path.028.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc10.i, %for.body.i.for.body.i_crit_edge ]
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_lock.i.i) #10
  %11 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chip.i.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %read_rf.i.i = getelementptr inbounds %struct.rtw_chip_ops, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %read_rf.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %read_rf.i.i, align 4
  %call5.i.i = tail call i32 %16(ptr noundef %3, i32 noundef %path.028.i, i32 noundef 86, i32 noundef 1048575) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_lock.i.i, i32 noundef %call2.i.i) #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.235, i32 noundef %path.028.i, i32 noundef 86, i32 noundef %call5.i.i) #10
  %arrayidx8.i = getelementptr %struct.rtw_dev, ptr %3, i32 0, i32 13, i32 58, i32 1, i32 %path.028.i, i32 0
  %17 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx8.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.236, i32 noundef %18, i32 noundef 0) #10
  %arrayidx8.1.i = getelementptr %struct.rtw_dev, ptr %3, i32 0, i32 13, i32 58, i32 1, i32 %path.028.i, i32 1
  %19 = ptrtoint ptr %arrayidx8.1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx8.1.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.236, i32 noundef %20, i32 noundef 1) #10
  %arrayidx8.2.i = getelementptr %struct.rtw_dev, ptr %3, i32 0, i32 13, i32 58, i32 1, i32 %path.028.i, i32 2
  %21 = ptrtoint ptr %arrayidx8.2.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx8.2.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.236, i32 noundef %22, i32 noundef 2) #10
  %arrayidx8.3.i = getelementptr %struct.rtw_dev, ptr %3, i32 0, i32 13, i32 58, i32 1, i32 %path.028.i, i32 3
  %23 = ptrtoint ptr %arrayidx8.3.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx8.3.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.236, i32 noundef %24, i32 noundef 3) #10
  %arrayidx8.4.i = getelementptr %struct.rtw_dev, ptr %3, i32 0, i32 13, i32 58, i32 1, i32 %path.028.i, i32 4
  %25 = ptrtoint ptr %arrayidx8.4.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx8.4.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.236, i32 noundef %26, i32 noundef 4) #10
  %arrayidx8.5.i = getelementptr %struct.rtw_dev, ptr %3, i32 0, i32 13, i32 58, i32 1, i32 %path.028.i, i32 5
  %27 = ptrtoint ptr %arrayidx8.5.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx8.5.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.236, i32 noundef %28, i32 noundef 5) #10
  %arrayidx8.6.i = getelementptr %struct.rtw_dev, ptr %3, i32 0, i32 13, i32 58, i32 1, i32 %path.028.i, i32 6
  %29 = ptrtoint ptr %arrayidx8.6.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx8.6.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.236, i32 noundef %30, i32 noundef 6) #10
  %arrayidx8.7.i = getelementptr %struct.rtw_dev, ptr %3, i32 0, i32 13, i32 58, i32 1, i32 %path.028.i, i32 7
  %31 = ptrtoint ptr %arrayidx8.7.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx8.7.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.236, i32 noundef %32, i32 noundef 7) #10
  %arrayidx8.8.i = getelementptr %struct.rtw_dev, ptr %3, i32 0, i32 13, i32 58, i32 1, i32 %path.028.i, i32 8
  %33 = ptrtoint ptr %arrayidx8.8.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx8.8.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.236, i32 noundef %34, i32 noundef 8) #10
  %arrayidx8.9.i = getelementptr %struct.rtw_dev, ptr %3, i32 0, i32 13, i32 58, i32 1, i32 %path.028.i, i32 9
  %35 = ptrtoint ptr %arrayidx8.9.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx8.9.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.236, i32 noundef %36, i32 noundef 9) #10
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.115) #10
  %inc10.i = add nuw nsw i32 %path.028.i, 1
  %37 = ptrtoint ptr %rf_path_num.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %rf_path_num.i, align 2
  %conv.i = zext i8 %38 to i32
  %cmp.i = icmp ult i32 %inc10.i, %conv.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.sw.epilog_crit_edge

for.body.i.sw.epilog_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.233, i32 noundef 1, i32 noundef %cond.i, ptr noundef nonnull @.str.238) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body, %for.body.i.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %39 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %4, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw_debugfs_set_dm_cap(ptr nocapture noundef readonly %filp, ptr noundef %buffer, i32 noundef %count, ptr nocapture noundef readnone %loff) #0 align 64 {
entry:
  %bit = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bit) #10
  %6 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %bit, align 4, !annotation !599
  %call = call i32 @kstrtoint_from_user(ptr noundef %buffer, i32 noundef %count, i32 noundef 10, ptr noundef nonnull %bit) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %bit to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bit, align 4
  %9 = call i32 @llvm.abs.i32(i32 %8, i1 false)
  %10 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %bit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp4 = icmp sgt i32 %9, 1
  br i1 %cmp4, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.rtw_dev, ptr %5, i32 0, i32 1
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %12, ptr noundef nonnull @.str.239, i32 noundef %9) #13
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp sgt i32 %8, 0
  %shl = shl nuw nsw i32 1, %9
  br i1 %cmp, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %neg = xor i32 %shl, -1
  %dm_flags = getelementptr inbounds %struct.rtw_dev, ptr %5, i32 0, i32 13, i32 56
  %13 = ptrtoint ptr %dm_flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dm_flags, align 4
  %and = and i32 %14, %neg
  store i32 %and, ptr %dm_flags, align 4
  br label %if.end11

if.else:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %dm_flags10 = getelementptr inbounds %struct.rtw_dev, ptr %5, i32 0, i32 13, i32 56
  %15 = ptrtoint ptr %dm_flags10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dm_flags10, align 4
  %or = or i32 %16, %shl
  store i32 %or, ptr %dm_flags10, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then8
  %conv = trunc i32 %9 to i8
  %17 = getelementptr inbounds %struct.rtw_debugfs_priv, ptr %3, i32 0, i32 3
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv, ptr %17, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %count, %if.end11 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bit) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint_from_user(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.smin.i8(i8, i8) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 273)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 273)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind readnone }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !23, !24, !26, !27, !29, !30, !32, !33, !35, !36, !38, !39, !41, !42, !44, !45, !47, !48, !50, !51, !53, !54, !56, !57, !59, !60, !62, !63, !65, !66, !68, !69, !71, !72, !74, !75, !77, !78, !80, !81, !83, !84, !86, !87, !89, !90, !92, !93, !95, !96, !98, !99, !101, !102, !104, !105, !107, !108, !110, !111, !113, !114, !116, !117, !119, !120, !122, !123, !125, !126, !128, !129, !131, !132, !134, !135, !137, !138, !140, !141, !143, !144, !146, !147, !149, !150, !152, !153, !155, !156, !158, !159, !161, !162, !164, !165, !167, !168, !170, !171, !173, !174, !176, !177, !179, !180, !181, !182, !183, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !258, !259, !260, !261, !263, !265, !267, !269, !270, !271, !272, !274, !276, !278, !280, !281, !282, !284, !286, !288, !290, !291, !292, !293, !295, !297, !299, !301, !303, !305, !307, !309, !310, !311, !312, !314, !316, !317, !318, !319, !320, !322, !324, !326, !328, !329, !330, !331, !333, !335, !337, !339, !341, !343, !345, !347, !349, !351, !353, !355, !357, !359, !361, !363, !365, !367, !369, !371, !373, !375, !377, !379, !381, !383, !385, !387, !389, !391, !393, !395, !397, !399, !401, !403, !405, !407, !408, !409, !411, !413, !415, !416, !417, !418, !419, !421, !423, !425, !427, !429, !431, !433, !435, !437, !439, !441, !443, !445, !447, !449, !451, !453, !455, !457, !459, !461, !463, !465, !467, !469, !471, !473, !475, !477, !479, !481, !483, !485, !487, !489, !491, !493, !495, !497, !499, !501, !503, !505, !507, !509, !511, !513, !515, !517, !519, !521, !523, !525, !527, !529, !531, !533, !535, !537, !539, !541, !543, !545, !547, !549, !551, !553, !555, !557, !559, !561, !563, !565, !567, !569, !571, !573, !575, !577, !579, !581, !583, !585, !586, !587}
!llvm.named.register.sp = !{!588}
!llvm.module.flags = !{!589, !590, !591, !592, !593, !594, !595, !596}
!llvm.ident = !{!597}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 686, i32 16}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 686, i32 39}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 689, i32 16}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 692, i32 14}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 694, i32 16}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 696, i32 14}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1211, i32 38}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1213, i32 2}
!16 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.11, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug422, !15, !"__UNIQUE_ID_ddebug422", i1 false, i1 false}
!21 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1214, i32 2}
!23 = !{ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug423, !22, !"__UNIQUE_ID_ddebug423", i1 false, i1 false}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1215, i32 2}
!26 = !{ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug424, !25, !"__UNIQUE_ID_ddebug424", i1 false, i1 false}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1216, i32 2}
!29 = !{ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug425, !28, !"__UNIQUE_ID_ddebug425", i1 false, i1 false}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1217, i32 2}
!32 = !{ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug426, !31, !"__UNIQUE_ID_ddebug426", i1 false, i1 false}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1218, i32 2}
!35 = !{ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug427, !34, !"__UNIQUE_ID_ddebug427", i1 false, i1 false}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1219, i32 2}
!38 = !{ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug428, !37, !"__UNIQUE_ID_ddebug428", i1 false, i1 false}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1220, i32 2}
!41 = !{ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug429, !40, !"__UNIQUE_ID_ddebug429", i1 false, i1 false}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1221, i32 2}
!44 = !{ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug430, !43, !"__UNIQUE_ID_ddebug430", i1 false, i1 false}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1222, i32 2}
!47 = !{ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug431, !46, !"__UNIQUE_ID_ddebug431", i1 false, i1 false}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1223, i32 2}
!50 = !{ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug432, !49, !"__UNIQUE_ID_ddebug432", i1 false, i1 false}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1224, i32 2}
!53 = !{ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug433, !52, !"__UNIQUE_ID_ddebug433", i1 false, i1 false}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1225, i32 2}
!56 = !{ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug434, !55, !"__UNIQUE_ID_ddebug434", i1 false, i1 false}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1226, i32 2}
!59 = !{ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug435, !58, !"__UNIQUE_ID_ddebug435", i1 false, i1 false}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1227, i32 2}
!62 = !{ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug436, !61, !"__UNIQUE_ID_ddebug436", i1 false, i1 false}
!63 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1228, i32 2}
!65 = !{ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug437, !64, !"__UNIQUE_ID_ddebug437", i1 false, i1 false}
!66 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1229, i32 2}
!68 = !{ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug438, !67, !"__UNIQUE_ID_ddebug438", i1 false, i1 false}
!69 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1230, i32 2}
!71 = !{ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug439, !70, !"__UNIQUE_ID_ddebug439", i1 false, i1 false}
!72 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1231, i32 2}
!74 = !{ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug440, !73, !"__UNIQUE_ID_ddebug440", i1 false, i1 false}
!75 = !{ptr @.str.30, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1232, i32 2}
!77 = !{ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug441, !76, !"__UNIQUE_ID_ddebug441", i1 false, i1 false}
!78 = !{ptr @.str.31, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1233, i32 2}
!80 = !{ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug442, !79, !"__UNIQUE_ID_ddebug442", i1 false, i1 false}
!81 = !{ptr @.str.32, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1234, i32 2}
!83 = !{ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug443, !82, !"__UNIQUE_ID_ddebug443", i1 false, i1 false}
!84 = !{ptr @.str.33, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1235, i32 2}
!86 = !{ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug444, !85, !"__UNIQUE_ID_ddebug444", i1 false, i1 false}
!87 = !{ptr @.str.34, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1236, i32 2}
!89 = !{ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug445, !88, !"__UNIQUE_ID_ddebug445", i1 false, i1 false}
!90 = !{ptr @.str.35, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1237, i32 2}
!92 = !{ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug446, !91, !"__UNIQUE_ID_ddebug446", i1 false, i1 false}
!93 = !{ptr @.str.36, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1238, i32 2}
!95 = !{ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug447, !94, !"__UNIQUE_ID_ddebug447", i1 false, i1 false}
!96 = !{ptr @.str.37, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1239, i32 2}
!98 = !{ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug448, !97, !"__UNIQUE_ID_ddebug448", i1 false, i1 false}
!99 = !{ptr @.str.38, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1240, i32 2}
!101 = !{ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug449, !100, !"__UNIQUE_ID_ddebug449", i1 false, i1 false}
!102 = !{ptr @.str.39, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1241, i32 2}
!104 = !{ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug450, !103, !"__UNIQUE_ID_ddebug450", i1 false, i1 false}
!105 = !{ptr @.str.40, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1242, i32 2}
!107 = !{ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug451, !106, !"__UNIQUE_ID_ddebug451", i1 false, i1 false}
!108 = !{ptr @.str.41, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1243, i32 2}
!110 = !{ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug452, !109, !"__UNIQUE_ID_ddebug452", i1 false, i1 false}
!111 = !{ptr @.str.42, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1244, i32 2}
!113 = !{ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug453, !112, !"__UNIQUE_ID_ddebug453", i1 false, i1 false}
!114 = !{ptr @.str.43, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1245, i32 2}
!116 = !{ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug454, !115, !"__UNIQUE_ID_ddebug454", i1 false, i1 false}
!117 = !{ptr @.str.44, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1246, i32 2}
!119 = !{ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug455, !118, !"__UNIQUE_ID_ddebug455", i1 false, i1 false}
!120 = !{ptr @.str.45, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1247, i32 2}
!122 = !{ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug456, !121, !"__UNIQUE_ID_ddebug456", i1 false, i1 false}
!123 = !{ptr @.str.46, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1248, i32 2}
!125 = !{ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug457, !124, !"__UNIQUE_ID_ddebug457", i1 false, i1 false}
!126 = !{ptr @.str.47, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1249, i32 2}
!128 = !{ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug458, !127, !"__UNIQUE_ID_ddebug458", i1 false, i1 false}
!129 = !{ptr @.str.48, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1250, i32 2}
!131 = !{ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug459, !130, !"__UNIQUE_ID_ddebug459", i1 false, i1 false}
!132 = !{ptr @.str.49, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1251, i32 2}
!134 = !{ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug460, !133, !"__UNIQUE_ID_ddebug460", i1 false, i1 false}
!135 = !{ptr @.str.50, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1252, i32 2}
!137 = !{ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug461, !136, !"__UNIQUE_ID_ddebug461", i1 false, i1 false}
!138 = !{ptr @.str.51, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1253, i32 2}
!140 = !{ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug462, !139, !"__UNIQUE_ID_ddebug462", i1 false, i1 false}
!141 = !{ptr @.str.52, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1254, i32 2}
!143 = !{ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug463, !142, !"__UNIQUE_ID_ddebug463", i1 false, i1 false}
!144 = !{ptr @.str.53, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1255, i32 2}
!146 = !{ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug464, !145, !"__UNIQUE_ID_ddebug464", i1 false, i1 false}
!147 = !{ptr @.str.54, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1257, i32 3}
!149 = !{ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug465, !148, !"__UNIQUE_ID_ddebug465", i1 false, i1 false}
!150 = !{ptr @.str.55, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1258, i32 3}
!152 = !{ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug466, !151, !"__UNIQUE_ID_ddebug466", i1 false, i1 false}
!153 = !{ptr @.str.56, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1259, i32 3}
!155 = !{ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug467, !154, !"__UNIQUE_ID_ddebug467", i1 false, i1 false}
!156 = !{ptr @.str.57, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1260, i32 3}
!158 = !{ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug468, !157, !"__UNIQUE_ID_ddebug468", i1 false, i1 false}
!159 = !{ptr @.str.58, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1262, i32 2}
!161 = !{ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug469, !160, !"__UNIQUE_ID_ddebug469", i1 false, i1 false}
!162 = !{ptr @.str.59, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1263, i32 2}
!164 = !{ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug470, !163, !"__UNIQUE_ID_ddebug470", i1 false, i1 false}
!165 = !{ptr @.str.60, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1264, i32 2}
!167 = !{ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug471, !166, !"__UNIQUE_ID_ddebug471", i1 false, i1 false}
!168 = !{ptr @.str.61, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1265, i32 2}
!170 = !{ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug472, !169, !"__UNIQUE_ID_ddebug472", i1 false, i1 false}
!171 = !{ptr @.str.62, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1266, i32 2}
!173 = !{ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug473, !172, !"__UNIQUE_ID_ddebug473", i1 false, i1 false}
!174 = !{ptr @.str.63, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1267, i32 2}
!176 = !{ptr @rtw_debugfs_init.__UNIQUE_ID_ddebug474, !175, !"__UNIQUE_ID_ddebug474", i1 false, i1 false}
!177 = !{ptr @.str.64, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1286, i32 3}
!179 = !{ptr @.str.65, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @.str.66, !178, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @.str.67, !178, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @__rtw_dbg._entry, !178, !"_entry", i1 false, i1 false}
!183 = !{ptr @__rtw_dbg._entry_ptr, !178, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @__ksymtab___rtw_dbg, !185, !"__ksymtab___rtw_dbg", i1 false, i1 false}
!185 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1290, i32 1}
!186 = !{ptr @.str.68, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 596, i32 17}
!188 = !{ptr @.str.69, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 546, i32 16}
!190 = !{ptr @.str.70, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 546, i32 22}
!192 = !{ptr @.str.71, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 546, i32 28}
!194 = !{ptr @.str.72, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 546, i32 36}
!196 = !{ptr @rtw_print_cck_rate_txt.cck_rate, !197, !"cck_rate", i1 false, i1 false}
!197 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 546, i32 2}
!198 = !{ptr @.str.73, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 549, i32 16}
!200 = !{ptr @.str.74, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 555, i32 17}
!202 = !{ptr @.str.75, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 555, i32 23}
!204 = !{ptr @.str.76, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 555, i32 29}
!206 = !{ptr @.str.77, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 555, i32 36}
!208 = !{ptr @.str.78, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 555, i32 43}
!210 = !{ptr @.str.79, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 555, i32 50}
!212 = !{ptr @.str.80, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 555, i32 57}
!214 = !{ptr @.str.81, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 555, i32 64}
!216 = !{ptr @rtw_print_ofdm_rate_txt.ofdm_rate, !217, !"ofdm_rate", i1 false, i1 false}
!217 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 555, i32 2}
!218 = !{ptr @.str.82, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 558, i32 16}
!220 = !{ptr @.str.83, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 565, i32 16}
!222 = !{ptr @.str.84, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 577, i32 16}
!224 = !{ptr @rtw_debug_priv_write_reg, !225, !"rtw_debug_priv_write_reg", i1 false, i1 false}
!225 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1120, i32 32}
!226 = !{ptr @.str.85, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 347, i32 20}
!228 = !{ptr @.str.86, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 354, i32 3}
!230 = !{ptr @.str.87, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 359, i32 3}
!232 = !{ptr @.str.88, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 364, i32 3}
!234 = !{ptr @.str.89, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 369, i32 3}
!236 = distinct !{null, !237, !"__already_done", i1 false, i1 false}
!237 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!238 = !{ptr @.str.90, !237, !"<string literal>", i1 false, i1 false}
!239 = !{ptr @.str.91, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!241 = !{ptr @.str.92, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!243 = !{ptr @file_ops_common_write, !244, !"file_ops_common_write", i1 false, i1 false}
!244 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 104, i32 37}
!245 = !{ptr @rtw_debug_priv_read_reg, !246, !"rtw_debug_priv_read_reg", i1 false, i1 false}
!246 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1137, i32 32}
!247 = !{ptr @.str.93, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 122, i32 17}
!249 = !{ptr @.str.94, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 126, i32 17}
!251 = !{ptr @.str.95, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 130, i32 17}
!253 = !{ptr @.str.96, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 205, i32 20}
!255 = !{ptr @.str.97, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 211, i32 3}
!257 = !{ptr @.str.98, !256, !"<string literal>", i1 false, i1 false}
!258 = !{ptr @.str.99, !256, !"<string literal>", i1 false, i1 false}
!259 = !{ptr @rtw_debugfs_set_read_reg._entry, !256, !"_entry", i1 false, i1 false}
!260 = !{ptr @rtw_debugfs_set_read_reg._entry_ptr, !256, !"_entry_ptr", i1 false, i1 false}
!261 = !{ptr @file_ops_single_rw, !262, !"file_ops_single_rw", i1 false, i1 false}
!262 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 95, i32 37}
!263 = !{ptr @rtw_debug_priv_rf_write, !264, !"rtw_debug_priv_rf_write", i1 false, i1 false}
!264 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1128, i32 32}
!265 = !{ptr @.str.100, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 414, i32 20}
!267 = !{ptr @.str.101, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 417, i32 3}
!269 = !{ptr @.str.102, !268, !"<string literal>", i1 false, i1 false}
!270 = !{ptr @rtw_debugfs_set_rf_write._entry, !268, !"_entry", i1 false, i1 false}
!271 = !{ptr @rtw_debugfs_set_rf_write._entry_ptr, !268, !"_entry_ptr", i1 false, i1 false}
!272 = !{ptr @.str.103, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 422, i32 2}
!274 = !{ptr @rtw_debug_priv_rf_read, !275, !"rtw_debug_priv_rf_read", i1 false, i1 false}
!275 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1132, i32 32}
!276 = !{ptr @.str.104, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 149, i32 16}
!278 = !{ptr @.str.105, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 445, i32 3}
!280 = !{ptr @rtw_debugfs_set_rf_read._entry, !279, !"_entry", i1 false, i1 false}
!281 = !{ptr @rtw_debugfs_set_rf_read._entry_ptr, !279, !"_entry_ptr", i1 false, i1 false}
!282 = !{ptr @rtw_debug_priv_fix_rate, !283, !"rtw_debug_priv_fix_rate", i1 false, i1 false}
!283 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1142, i32 32}
!284 = !{ptr @.str.106, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 163, i32 17}
!286 = !{ptr @.str.107, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 167, i32 16}
!288 = !{ptr @.str.108, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 472, i32 3}
!290 = !{ptr @.str.109, !289, !"<string literal>", i1 false, i1 false}
!291 = !{ptr @rtw_debugfs_set_fix_rate._entry, !289, !"_entry", i1 false, i1 false}
!292 = !{ptr @rtw_debugfs_set_fix_rate._entry_ptr, !289, !"_entry_ptr", i1 false, i1 false}
!293 = !{ptr @rtw_debug_priv_dump_cam, !294, !"rtw_debug_priv_dump_cam", i1 false, i1 false}
!294 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1147, i32 32}
!295 = !{ptr @.str.110, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 229, i32 16}
!297 = !{ptr @.str.111, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 230, i32 14}
!299 = !{ptr @.str.112, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 231, i32 14}
!301 = !{ptr @.str.113, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 237, i32 17}
!303 = !{ptr @.str.114, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 239, i32 16}
!305 = !{ptr @.str.115, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 241, i32 14}
!307 = !{ptr @.str.116, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 325, i32 3}
!309 = !{ptr @.str.117, !308, !"<string literal>", i1 false, i1 false}
!310 = !{ptr @rtw_debugfs_set_single_input._entry, !308, !"_entry", i1 false, i1 false}
!311 = !{ptr @rtw_debugfs_set_single_input._entry_ptr, !308, !"_entry_ptr", i1 false, i1 false}
!312 = !{ptr @rtw_debug_priv_rsvd_page, !313, !"rtw_debug_priv_rsvd_page", i1 false, i1 false}
!313 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1152, i32 32}
!314 = !{ptr @.str.118, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 264, i32 3}
!316 = !{ptr @.str.119, !315, !"<string literal>", i1 false, i1 false}
!317 = !{ptr @.str.120, !315, !"<string literal>", i1 false, i1 false}
!318 = !{ptr @rtw_debugfs_get_rsvd_page._entry, !315, !"_entry", i1 false, i1 false}
!319 = !{ptr @rtw_debugfs_get_rsvd_page._entry_ptr, !315, !"_entry_ptr", i1 false, i1 false}
!320 = !{ptr @.str.121, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 271, i32 18}
!322 = !{ptr @.str.122, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 272, i32 17}
!324 = !{ptr @.str.123, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 296, i32 20}
!326 = !{ptr @.str.124, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 299, i32 3}
!328 = !{ptr @.str.125, !327, !"<string literal>", i1 false, i1 false}
!329 = !{ptr @rtw_debugfs_set_rsvd_page._entry, !327, !"_entry", i1 false, i1 false}
!330 = !{ptr @rtw_debugfs_set_rsvd_page._entry_ptr, !327, !"_entry_ptr", i1 false, i1 false}
!331 = !{ptr @rtw_debug_priv_phy_info, !332, !"rtw_debug_priv_phy_info", i1 false, i1 false}
!332 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1157, i32 32}
!333 = !{ptr @.str.126, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 713, i32 14}
!335 = !{ptr @.str.127, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 714, i32 16}
!337 = !{ptr @.str.128, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 715, i32 16}
!339 = !{ptr @.str.129, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 716, i32 16}
!341 = !{ptr @.str.130, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 717, i32 16}
!343 = !{ptr @.str.131, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 718, i32 16}
!345 = !{ptr @.str.132, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 721, i32 14}
!347 = !{ptr @.str.133, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 724, i32 16}
!349 = !{ptr @.str.134, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 726, i32 14}
!351 = !{ptr @.str.135, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 727, i32 16}
!353 = !{ptr @.str.136, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 732, i32 14}
!355 = !{ptr @.str.137, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 733, i32 16}
!357 = !{ptr @.str.138, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 739, i32 16}
!359 = !{ptr @.str.139, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 751, i32 17}
!361 = !{ptr @.str.140, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 765, i32 17}
!363 = !{ptr @.str.141, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 779, i32 16}
!365 = !{ptr @.str.142, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 782, i32 16}
!367 = !{ptr @.str.143, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 785, i32 16}
!369 = !{ptr @.str.144, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 788, i32 16}
!371 = !{ptr @.str.145, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 793, i32 15}
!373 = !{ptr @.str.146, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 794, i32 17}
!375 = !{ptr @.str.147, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 797, i32 17}
!377 = !{ptr @.str.148, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 800, i32 17}
!379 = !{ptr @.str.149, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 807, i32 14}
!381 = !{ptr @.str.150, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 808, i32 16}
!383 = !{ptr @.str.151, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 812, i32 16}
!385 = !{ptr @.str.152, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 816, i32 16}
!387 = !{ptr @.str.153, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 818, i32 16}
!389 = !{ptr @.str.154, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 820, i32 16}
!391 = !{ptr @.str.155, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 822, i32 16}
!393 = !{ptr @file_ops_single_r, !394, !"file_ops_single_r", i1 false, i1 false}
!394 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 87, i32 37}
!395 = !{ptr @rtw_debug_priv_coex_info, !396, !"rtw_debug_priv_coex_info", i1 false, i1 false}
!396 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1166, i32 32}
!397 = !{ptr @rtw_debug_priv_coex_enable, !398, !"rtw_debug_priv_coex_enable", i1 false, i1 false}
!398 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1161, i32 32}
!399 = !{ptr @.str.156, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 871, i32 16}
!401 = !{ptr @.str.157, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 872, i32 29}
!403 = !{ptr @.str.158, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 872, i32 42}
!405 = !{ptr @.str.159, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 854, i32 3}
!407 = !{ptr @rtw_debugfs_set_coex_enable._entry, !406, !"_entry", i1 false, i1 false}
!408 = !{ptr @rtw_debugfs_set_coex_enable._entry_ptr, !406, !"_entry_ptr", i1 false, i1 false}
!409 = !{ptr @rtw_debug_priv_h2c, !410, !"rtw_debug_priv_h2c", i1 false, i1 false}
!410 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1124, i32 32}
!411 = !{ptr @.str.160, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 389, i32 20}
!413 = !{ptr @.str.161, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 393, i32 3}
!415 = !{ptr @.str.162, !414, !"<string literal>", i1 false, i1 false}
!416 = !{ptr @.str.163, !414, !"<string literal>", i1 false, i1 false}
!417 = !{ptr @rtw_debugfs_set_h2c._entry, !414, !"_entry", i1 false, i1 false}
!418 = !{ptr @rtw_debugfs_set_h2c._entry_ptr, !414, !"_entry_ptr", i1 false, i1 false}
!419 = !{ptr @rtw_debug_priv_mac_0, !420, !"rtw_debug_priv_mac_0", i1 false, i1 false}
!420 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1068, i32 1}
!421 = !{ptr @.str.165, !422, !"<string literal>", i1 false, i1 false}
!422 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 491, i32 17}
!423 = !{ptr @.str.166, !424, !"<string literal>", i1 false, i1 false}
!424 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 493, i32 18}
!425 = !{ptr @rtw_debug_priv_mac_1, !426, !"rtw_debug_priv_mac_1", i1 false, i1 false}
!426 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1069, i32 1}
!427 = !{ptr @rtw_debug_priv_mac_2, !428, !"rtw_debug_priv_mac_2", i1 false, i1 false}
!428 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1070, i32 1}
!429 = !{ptr @rtw_debug_priv_mac_3, !430, !"rtw_debug_priv_mac_3", i1 false, i1 false}
!430 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1071, i32 1}
!431 = !{ptr @rtw_debug_priv_mac_4, !432, !"rtw_debug_priv_mac_4", i1 false, i1 false}
!432 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1072, i32 1}
!433 = !{ptr @rtw_debug_priv_mac_5, !434, !"rtw_debug_priv_mac_5", i1 false, i1 false}
!434 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1073, i32 1}
!435 = !{ptr @rtw_debug_priv_mac_6, !436, !"rtw_debug_priv_mac_6", i1 false, i1 false}
!436 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1074, i32 1}
!437 = !{ptr @rtw_debug_priv_mac_7, !438, !"rtw_debug_priv_mac_7", i1 false, i1 false}
!438 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1075, i32 1}
!439 = !{ptr @rtw_debug_priv_bb_8, !440, !"rtw_debug_priv_bb_8", i1 false, i1 false}
!440 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1091, i32 1}
!441 = !{ptr @rtw_debug_priv_bb_9, !442, !"rtw_debug_priv_bb_9", i1 false, i1 false}
!442 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1092, i32 1}
!443 = !{ptr @rtw_debug_priv_bb_a, !444, !"rtw_debug_priv_bb_a", i1 false, i1 false}
!444 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1093, i32 1}
!445 = !{ptr @rtw_debug_priv_bb_b, !446, !"rtw_debug_priv_bb_b", i1 false, i1 false}
!446 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1094, i32 1}
!447 = !{ptr @rtw_debug_priv_bb_c, !448, !"rtw_debug_priv_bb_c", i1 false, i1 false}
!448 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1095, i32 1}
!449 = !{ptr @rtw_debug_priv_bb_d, !450, !"rtw_debug_priv_bb_d", i1 false, i1 false}
!450 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1096, i32 1}
!451 = !{ptr @rtw_debug_priv_bb_e, !452, !"rtw_debug_priv_bb_e", i1 false, i1 false}
!452 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1097, i32 1}
!453 = !{ptr @rtw_debug_priv_bb_f, !454, !"rtw_debug_priv_bb_f", i1 false, i1 false}
!454 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1098, i32 1}
!455 = !{ptr @rtw_debug_priv_mac_10, !456, !"rtw_debug_priv_mac_10", i1 false, i1 false}
!456 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1076, i32 1}
!457 = !{ptr @rtw_debug_priv_mac_11, !458, !"rtw_debug_priv_mac_11", i1 false, i1 false}
!458 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1077, i32 1}
!459 = !{ptr @rtw_debug_priv_mac_12, !460, !"rtw_debug_priv_mac_12", i1 false, i1 false}
!460 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1078, i32 1}
!461 = !{ptr @rtw_debug_priv_mac_13, !462, !"rtw_debug_priv_mac_13", i1 false, i1 false}
!462 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1079, i32 1}
!463 = !{ptr @rtw_debug_priv_mac_14, !464, !"rtw_debug_priv_mac_14", i1 false, i1 false}
!464 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1080, i32 1}
!465 = !{ptr @rtw_debug_priv_mac_15, !466, !"rtw_debug_priv_mac_15", i1 false, i1 false}
!466 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1081, i32 1}
!467 = !{ptr @rtw_debug_priv_mac_16, !468, !"rtw_debug_priv_mac_16", i1 false, i1 false}
!468 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1082, i32 1}
!469 = !{ptr @rtw_debug_priv_mac_17, !470, !"rtw_debug_priv_mac_17", i1 false, i1 false}
!470 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1083, i32 1}
!471 = !{ptr @rtw_debug_priv_bb_18, !472, !"rtw_debug_priv_bb_18", i1 false, i1 false}
!472 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1099, i32 1}
!473 = !{ptr @rtw_debug_priv_bb_19, !474, !"rtw_debug_priv_bb_19", i1 false, i1 false}
!474 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1100, i32 1}
!475 = !{ptr @rtw_debug_priv_bb_1a, !476, !"rtw_debug_priv_bb_1a", i1 false, i1 false}
!476 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1101, i32 1}
!477 = !{ptr @rtw_debug_priv_bb_1b, !478, !"rtw_debug_priv_bb_1b", i1 false, i1 false}
!478 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1102, i32 1}
!479 = !{ptr @rtw_debug_priv_bb_1c, !480, !"rtw_debug_priv_bb_1c", i1 false, i1 false}
!480 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1103, i32 1}
!481 = !{ptr @rtw_debug_priv_bb_1d, !482, !"rtw_debug_priv_bb_1d", i1 false, i1 false}
!482 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1104, i32 1}
!483 = !{ptr @rtw_debug_priv_bb_1e, !484, !"rtw_debug_priv_bb_1e", i1 false, i1 false}
!484 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1105, i32 1}
!485 = !{ptr @rtw_debug_priv_bb_1f, !486, !"rtw_debug_priv_bb_1f", i1 false, i1 false}
!486 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1106, i32 1}
!487 = !{ptr @rtw_debug_priv_bb_2c, !488, !"rtw_debug_priv_bb_2c", i1 false, i1 false}
!488 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1107, i32 1}
!489 = !{ptr @rtw_debug_priv_bb_2d, !490, !"rtw_debug_priv_bb_2d", i1 false, i1 false}
!490 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1108, i32 1}
!491 = !{ptr @rtw_debug_priv_bb_40, !492, !"rtw_debug_priv_bb_40", i1 false, i1 false}
!492 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1109, i32 1}
!493 = !{ptr @rtw_debug_priv_bb_41, !494, !"rtw_debug_priv_bb_41", i1 false, i1 false}
!494 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1110, i32 1}
!495 = !{ptr @rtw_debug_priv_rf_dump, !496, !"rtw_debug_priv_rf_dump", i1 false, i1 false}
!496 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1112, i32 32}
!497 = !{ptr @.str.202, !498, !"<string literal>", i1 false, i1 false}
!498 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 527, i32 17}
!499 = !{ptr @.str.203, !500, !"<string literal>", i1 false, i1 false}
!500 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 529, i32 18}
!501 = !{ptr @rtw_debug_priv_tx_pwr_tbl, !502, !"rtw_debug_priv_tx_pwr_tbl", i1 false, i1 false}
!502 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1116, i32 32}
!503 = !{ptr @.str.204, !504, !"<string literal>", i1 false, i1 false}
!504 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 634, i32 16}
!505 = !{ptr @.str.205, !506, !"<string literal>", i1 false, i1 false}
!506 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 635, i32 16}
!507 = !{ptr @.str.206, !508, !"<string literal>", i1 false, i1 false}
!508 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 636, i32 16}
!509 = !{ptr @.str.207, !510, !"<string literal>", i1 false, i1 false}
!510 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 637, i32 16}
!511 = !{ptr @.str.208, !512, !"<string literal>", i1 false, i1 false}
!512 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 638, i32 6}
!513 = !{ptr @.str.209, !514, !"<string literal>", i1 false, i1 false}
!514 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 638, i32 14}
!515 = !{ptr @.str.210, !516, !"<string literal>", i1 false, i1 false}
!516 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 638, i32 22}
!517 = !{ptr @.str.211, !518, !"<string literal>", i1 false, i1 false}
!518 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 638, i32 29}
!519 = !{ptr @.str.212, !520, !"<string literal>", i1 false, i1 false}
!520 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 638, i32 37}
!521 = !{ptr @.str.213, !522, !"<string literal>", i1 false, i1 false}
!522 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 638, i32 44}
!523 = !{ptr @.str.214, !524, !"<string literal>", i1 false, i1 false}
!524 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 638, i32 51}
!525 = !{ptr @.str.215, !526, !"<string literal>", i1 false, i1 false}
!526 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 638, i32 58}
!527 = !{ptr @.str.216, !528, !"<string literal>", i1 false, i1 false}
!528 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 658, i32 18}
!529 = !{ptr @.str.217, !530, !"<string literal>", i1 false, i1 false}
!530 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 660, i32 18}
!531 = !{ptr @.str.218, !532, !"<string literal>", i1 false, i1 false}
!532 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 607, i32 2}
!533 = !{ptr @.str.219, !534, !"<string literal>", i1 false, i1 false}
!534 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 608, i32 2}
!535 = !{ptr @.str.220, !536, !"<string literal>", i1 false, i1 false}
!536 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 609, i32 2}
!537 = !{ptr @.str.221, !538, !"<string literal>", i1 false, i1 false}
!538 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 610, i32 2}
!539 = !{ptr @.str.222, !540, !"<string literal>", i1 false, i1 false}
!540 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 611, i32 2}
!541 = !{ptr @.str.223, !542, !"<string literal>", i1 false, i1 false}
!542 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 612, i32 2}
!543 = !{ptr @.str.224, !544, !"<string literal>", i1 false, i1 false}
!544 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 613, i32 2}
!545 = !{ptr @.str.225, !546, !"<string literal>", i1 false, i1 false}
!546 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 614, i32 2}
!547 = !{ptr @.str.226, !548, !"<string literal>", i1 false, i1 false}
!548 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 615, i32 2}
!549 = !{ptr @.str.227, !550, !"<string literal>", i1 false, i1 false}
!550 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 616, i32 2}
!551 = !{ptr @.str.228, !552, !"<string literal>", i1 false, i1 false}
!552 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 617, i32 2}
!553 = !{ptr @.str.229, !554, !"<string literal>", i1 false, i1 false}
!554 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 619, i32 10}
!555 = !{ptr @rtw_debug_priv_edcca_enable, !556, !"rtw_debug_priv_edcca_enable", i1 false, i1 false}
!556 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1170, i32 32}
!557 = !{ptr @.str.230, !558, !"<string literal>", i1 false, i1 false}
!558 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 903, i32 16}
!559 = !{ptr @rtw_debug_priv_fw_crash, !560, !"rtw_debug_priv_fw_crash", i1 false, i1 false}
!560 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1175, i32 32}
!561 = !{ptr @.str.231, !562, !"<string literal>", i1 false, i1 false}
!562 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 946, i32 16}
!563 = !{ptr @rtw_debug_priv_force_lowest_basic_rate, !564, !"rtw_debug_priv_force_lowest_basic_rate", i1 false, i1 false}
!564 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1180, i32 32}
!565 = !{ptr @.str.232, !566, !"<string literal>", i1 false, i1 false}
!566 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 979, i32 16}
!567 = !{ptr @rtw_debug_priv_dm_cap, !568, !"rtw_debug_priv_dm_cap", i1 false, i1 false}
!568 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1185, i32 32}
!569 = !{ptr @.str.233, !570, !"<string literal>", i1 false, i1 false}
!570 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1052, i32 18}
!571 = !{ptr @.str.234, !572, !"<string literal>", i1 false, i1 false}
!572 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1024, i32 16}
!573 = !{ptr @.str.235, !574, !"<string literal>", i1 false, i1 false}
!574 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1030, i32 17}
!575 = !{ptr @.str.236, !576, !"<string literal>", i1 false, i1 false}
!576 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1033, i32 18}
!577 = distinct !{null, !578, !"<string literal>", i1 false, i1 false}
!578 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 47, i32 20}
!579 = !{ptr @.str.238, !580, !"<string literal>", i1 false, i1 false}
!580 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 48, i32 24}
!581 = distinct !{null, !582, !"rtw_dm_cap_strs", i1 false, i1 false}
!582 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 46, i32 27}
!583 = !{ptr @.str.239, !584, !"<string literal>", i1 false, i1 false}
!584 = !{!"../drivers/net/wireless/realtek/rtw88/debug.c", i32 1003, i32 3}
!585 = !{ptr @.str.240, !584, !"<string literal>", i1 false, i1 false}
!586 = !{ptr @rtw_debugfs_set_dm_cap._entry, !584, !"_entry", i1 false, i1 false}
!587 = !{ptr @rtw_debugfs_set_dm_cap._entry_ptr, !584, !"_entry_ptr", i1 false, i1 false}
!588 = !{!"sp"}
!589 = !{i32 1, !"wchar_size", i32 2}
!590 = !{i32 1, !"min_enum_size", i32 4}
!591 = !{i32 8, !"branch-target-enforcement", i32 0}
!592 = !{i32 8, !"sign-return-address", i32 0}
!593 = !{i32 8, !"sign-return-address-all", i32 0}
!594 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!595 = !{i32 7, !"uwtable", i32 1}
!596 = !{i32 7, !"frame-pointer", i32 2}
!597 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!598 = !{i64 2148521276, i64 2148521281, i64 2148521294, i64 2148521338, i64 2148521372, i64 2148521393}
!599 = !{!"auto-init"}
!600 = !{i64 2152209157, i64 2152209182}
!601 = !{!"branch_weights", i32 2000, i32 1}
!602 = !{i64 4704712}
!603 = !{i64 4704909}
!604 = !{i64 2152190142}
!605 = !{i8 0, i8 2}
