; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/st/cw1200/wsm.c_pt.bc'
source_filename = "../drivers/net/wireless/st/cw1200/wsm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cw1200_common = type <{ ptr, ptr, ptr, %struct.ieee80211_low_level_stats, [6 x i8], [2 x i8], ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr, ptr, %struct.mutex, [4 x %struct.cw1200_queue], %struct.cw1200_queue_stats, i32, i32, i32, ptr, ptr, ptr, %struct.wsm_edca_params, %struct.wsm_tx_queue_params, %struct.wsm_mib_association_mode, %struct.wsm_set_bss_params, %struct.cw1200_ht_info, %struct.wsm_set_pm, %struct.wsm_set_pm, i32, i32, i8, [3 x i8], i32, i32, %struct.wait_queue_head, i8, i8, [2 x i8], i32, i8, [3 x i8], i32, i8, %struct.wsm_rx_filter, %struct.wsm_mib_multicast_filter, i8, i8, i8, %struct.work_struct, %struct.work_struct, i8, i8, [2 x i8], %struct.cw1200_pm_state, %struct.wsm_p2p_ps_modeinfo, %struct.wsm_uapsd_info, i8, i8, i8, i8, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, %struct.work_struct, i32, %struct.wait_queue_head, %struct.wait_queue_head, i8, i8, i8, i8, i32, i8, i8, [2 x i8], %struct.cw1200_scan, %struct.atomic_t, %struct.delayed_work, %struct.wsm_startup_ind, %struct.mutex, %struct.wsm_buf, %struct.wsm_cmd, %struct.wait_queue_head, %struct.wait_queue_head, i32, %struct.atomic_t, i32, i32, i32, i8, [3 x i8], %struct.delayed_work, %struct.work_struct, %struct.work_struct, i32, i32, i8, i8, [2 x i8], %struct.work_struct, i32, [11 x %struct.wsm_add_key], i32, [5 x %struct.cw1200_link_entry], %struct.work_struct, %struct.delayed_work, i32, i32, i8, [3 x i8], %struct.spinlock, i8, i8, [2 x i8], %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.timer_list, %struct.spinlock, %struct.list_head, %struct.work_struct, %struct.delayed_work, %struct.spinlock, i32, i32, i32, %struct.work_struct, %struct.tx_policy_cache, %struct.work_struct, i32, %struct.wait_queue_head, %struct.work_struct, [6 x i8], i8, i8 }>
%struct.ieee80211_low_level_stats = type { i32, i32, i32, i32 }
%struct.cw1200_queue = type { ptr, i32, i32, i32, i32, ptr, %struct.list_head, %struct.list_head, %struct.list_head, i32, ptr, i8, %struct.spinlock, i8, i8, %struct.timer_list, i32 }
%struct.cw1200_queue_stats = type { %struct.spinlock, ptr, i32, i32, %struct.wait_queue_head, ptr, ptr }
%struct.wsm_edca_params = type { [4 x %struct.wsm_edca_queue_params], [4 x i8] }
%struct.wsm_edca_queue_params = type { i16, i16, i16, i16, i32 }
%struct.wsm_tx_queue_params = type { [4 x %struct.wsm_set_tx_queue_params] }
%struct.wsm_set_tx_queue_params = type { i8, i16, i32 }
%struct.wsm_mib_association_mode = type { i8, i8, i8, i8, i32 }
%struct.wsm_set_bss_params = type { i8, i8, i16, i32 }
%struct.cw1200_ht_info = type { %struct.ieee80211_sta_ht_cap, i32, i16 }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.wsm_set_pm = type { i8, i8, i8, i8 }
%struct.wsm_rx_filter = type { i8, i8, i8, i8 }
%struct.wsm_mib_multicast_filter = type { i32, i32, [8 x [6 x i8]] }
%struct.cw1200_pm_state = type { ptr, %struct.timer_list, ptr, %struct.spinlock }
%struct.wsm_p2p_ps_modeinfo = type { i8, i8, i8, i8, i32, i32, i32 }
%struct.wsm_uapsd_info = type { i16, i16, i16, i16 }
%struct.cw1200_scan = type { %struct.semaphore, %struct.work_struct, %struct.delayed_work, ptr, ptr, ptr, ptr, [2 x %struct.wsm_ssid], i32, i32, i32, %struct.atomic_t, %struct.delayed_work, i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wsm_ssid = type { [32 x i8], i32 }
%struct.wsm_startup_ind = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [128 x i8], [4 x i32] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wsm_buf = type { ptr, ptr, ptr }
%struct.wsm_cmd = type { %struct.spinlock, i32, ptr, i32, ptr, i32, i16 }
%struct.wsm_add_key = type { i8, i8, i16, %union.anon.132 }
%union.anon.132 = type { %struct.anon.135 }
%struct.anon.135 = type { [6 x i8], i16, [16 x i8], [8 x i8], [8 x i8] }
%struct.cw1200_link_entry = type { i32, i32, i32, [6 x i8], [8 x i8], %struct.sk_buff_head }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.tx_policy_cache = type { [8 x %struct.tx_policy_cache_entry], %struct.list_head, %struct.list_head, %struct.spinlock }
%struct.tx_policy_cache_entry = type { %struct.tx_policy, %struct.list_head }
%struct.tx_policy = type { %union.anon.141, i8, i8, i8, i8 }
%union.anon.141 = type { [3 x i32] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wsm_configuration = type { i32, i32, i32, ptr, ptr, i32, i8, i32, [2 x %struct.wsm_tx_power_range] }
%struct.wsm_tx_power_range = type { i32, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.wsm_reset = type { i32, i8 }
%struct.wsm_mib = type { i16, ptr, i32 }
%struct.wsm_scan = type { i8, i8, i8, i8, i32, i32, i8, i8, i8, ptr, ptr }
%struct.wsm_scan_ch = type { i16, i32, i32, i32 }
%struct.wsm_join_cnf = type { i32, i32, i32 }
%struct.wsm_join = type { i8, i8, i16, [6 x i8], i16, i8, i8, i8, i8, i32, [32 x i8], i32, i32 }
%struct.wsm_switch_channel = type { i8, i8, i16 }
%struct.wsm_start = type { i8, i8, i16, i32, i32, i8, i8, i8, i8, [32 x i8], i32 }
%struct.wsm_map_link = type { [6 x i8], i8 }
%struct.wsm_update_ie = type { i16, i16, ptr, i32 }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.128 = type { i32, i16 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.127, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type { ptr }
%struct.anon.127 = type { i64, i64, i8 }
%struct.wsm_tx_confirm = type { i32, i32, i8, i8, i16, i32, i32 }
%struct.wsm_hdr = type { i16, i16 }
%struct.cw1200_debug_priv = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.wsm_rx = type { i32, i16, i8, i8, i32 }
%struct.sk_buff = type { %union.anon.40, %union.anon.43, %union.anon.44, [48 x i8], %union.anon.45, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.47, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.40 = type { %struct.anon.41 }
%struct.anon.41 = type { ptr, ptr, %union.anon.42 }
%union.anon.42 = type { ptr }
%union.anon.43 = type { ptr }
%union.anon.44 = type { i64 }
%union.anon.45 = type { %struct.anon.46 }
%struct.anon.46 = type { i32, ptr }
%union.anon.47 = type { %struct.anon.48 }
%struct.anon.48 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.49, i32, i32, i32, i16, i16, %union.anon.51, i32, %union.anon.52, %union.anon.53, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.49 = type { i32 }
%union.anon.51 = type { i32 }
%union.anon.52 = type { i32 }
%union.anon.53 = type { i16 }
%struct.cw1200_wsm_event = type { %struct.list_head, %struct.wsm_event }
%struct.wsm_event = type { i32, i32 }
%struct.wsm_scan_complete = type { i32, i8, i8 }
%struct.wsm_suspend_resume = type { i32, i8, i8, i32 }
%struct.wsm_join_complete = type { i32 }
%struct.cw1200_txpriv = type { i8, i8, i8, i8, i8 }
%struct.wsm_tx = type { %struct.wsm_hdr, i32, i8, i8, i8, i8, i32, i32, i32 }
%struct.ieee80211_tx_info = type { i32, i32, %union.anon.143 }
%union.anon.143 = type { %struct.anon.147, [32 x i8] }
%struct.anon.147 = type { i64 }
%struct.ieee80211_key_conf = type { %struct.atomic64_t, i32, i8, i8, i8, i8, i16, i8, [0 x i8] }
%struct.atomic64_t = type { i64 }

@__const.wsm_set_tx_queue_params.queue_id_to_wmm_aci = private unnamed_addr constant [4 x i8] c"\03\02\00\01", align 1
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ETF\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"WFM\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"WSM\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"HI test\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Platform test\00", [18 x i8] zeroinitializer }, align 32
@cw1200_fw_types = dso_local constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], [44 x i8] zeroinitializer }, align 32
@wsm_lock_tx.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, i8 1, i8 35, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cw1200_core\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wsm_lock_tx\00", [20 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/net/wireless/st/cw1200/wsm.c\00", [59 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"[WSM] TX is locked.\0A\00", [43 x i8] zeroinitializer }, align 32
@wsm_lock_tx_async.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.9, ptr @.str.7, ptr @.str.10, i8 1, i8 37, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wsm_lock_tx_async\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[WSM] TX is locked (async).\0A\00", [35 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@wsm_flush_tx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.7, i32 1195, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013[WSM] Fatal error occurred, will not flush TX.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wsm_flush_tx\00", [19 x i8] zeroinitializer }, align 32
@wsm_flush_tx._entry_ptr = internal global ptr @wsm_flush_tx._entry, section ".printk_index", align 4
@wsm_flush_tx._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.7, i32 1213, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"[WSM] TX Frames (%d) stuck in firmware, killing BH\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@wsm_flush_tx._entry_ptr.17 = internal global ptr @wsm_flush_tx._entry.13, section ".printk_index", align 4
@wsm_unlock_tx.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.18, ptr @.str.7, ptr @.str.19, i8 1, i8 52, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wsm_unlock_tx\00", [18 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"[WSM] TX is unlocked.\0A\00", [41 x i8] zeroinitializer }, align 32
@wsm_handle_exception.reason_str = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], [16 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"undefined instruction\00", [42 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"prefetch abort\00", [17 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"data abort\00", [21 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"unknown error\00", [18 x i8] zeroinitializer }, align 32
@wsm_handle_exception._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.7, i32 1265, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Firmware exception: %s.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"wsm_handle_exception\00", [43 x i8] zeroinitializer }, align 32
@wsm_handle_exception._entry_ptr = internal global ptr @wsm_handle_exception._entry, section ".printk_index", align 4
@wsm_handle_exception._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.7, i32 1269, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Firmware assert at %.*s, line %d\0A\00", [62 x i8] zeroinitializer }, align 32
@wsm_handle_exception._entry_ptr.28 = internal global ptr @wsm_handle_exception._entry.26, section ".printk_index", align 4
@wsm_handle_exception._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.25, ptr @.str.7, i32 1275, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"R%d: 0x%.8X, R%d: 0x%.8X, R%d: 0x%.8X, R%d: 0x%.8X,\0A\00", [43 x i8] zeroinitializer }, align 32
@wsm_handle_exception._entry_ptr.31 = internal global ptr @wsm_handle_exception._entry.29, section ".printk_index", align 4
@wsm_handle_exception._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.25, ptr @.str.7, i32 1278, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"R12: 0x%.8X, SP: 0x%.8X, LR: 0x%.8X, PC: 0x%.8X,\0A\00", [46 x i8] zeroinitializer }, align 32
@wsm_handle_exception._entry_ptr.34 = internal global ptr @wsm_handle_exception._entry.32, section ".printk_index", align 4
@wsm_handle_exception._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.25, ptr @.str.7, i32 1282, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"CPSR: 0x%.8X, SPSR: 0x%.8X\0A\00", [36 x i8] zeroinitializer }, align 32
@wsm_handle_exception._entry_ptr.37 = internal global ptr @wsm_handle_exception._entry.35, section ".printk_index", align 4
@wsm_handle_exception.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.25, ptr @.str.7, ptr @.str.38, i8 1, i8 65, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"R1: \00", [27 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@wsm_handle_exception._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.25, ptr @.str.7, i32 1289, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Firmware exception.\0A\00", [43 x i8] zeroinitializer }, align 32
@wsm_handle_exception._entry_ptr.42 = internal global ptr @wsm_handle_exception._entry.40, section ".printk_index", align 4
@wsm_handle_exception.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.25, ptr @.str.7, ptr @.str.43, i8 1, i8 66, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Exception: \00", [20 x i8] zeroinitializer }, align 32
@wsm_handle_rx.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.44, ptr @.str.7, ptr @.str.45, i8 1, i8 71, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wsm_handle_rx\00", [18 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"[WSM] <<< 0x%.4X (%td)\0A\00", [40 x i8] zeroinitializer }, align 32
@wsm_handle_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.7, i32 1384, ptr @.str.47, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"wsm_generic_confirm failed for request 0x%04x.\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@wsm_handle_rx._entry_ptr = internal global ptr @wsm_handle_rx._entry, section ".printk_index", align 4
@wsm_handle_rx._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.44, ptr @.str.7, i32 1397, ptr @.str.47, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unrecognized confirmation 0x%04x\0A\00", [62 x i8] zeroinitializer }, align 32
@wsm_handle_rx._entry_ptr.50 = internal global ptr @wsm_handle_rx._entry.48, section ".printk_index", align 4
@wsm_handle_rx._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.44, ptr @.str.7, i32 1443, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\014Unrecognised WSM ID %04x\0A\00", [36 x i8] zeroinitializer }, align 32
@wsm_handle_rx._entry_ptr.53 = internal global ptr @wsm_handle_rx._entry.51, section ".printk_index", align 4
@wsm_get_tx.__UNIQUE_ID_ddebug367 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.54, ptr @.str.7, ptr @.str.55, i8 1, i8 -74, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"wsm_get_tx\00", [21 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[WSM] >>> 0x%.4X (%zu) %p %c\0A\00", [34 x i8] zeroinitializer }, align 32
@wsm_cmd_send.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.56, ptr @.str.7, ptr @.str.57, i8 1, i8 18, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wsm_cmd_send\00", [19 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"[WSM] >>> 0x%.4X [MIB: 0x%.4X] (%zu)\0A\00", [58 x i8] zeroinitializer }, align 32
@wsm_cmd_send.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.56, ptr @.str.7, ptr @.str.58, i8 1, i8 19, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"[WSM] >>> 0x%.4X (%zu)\0A\00", [40 x i8] zeroinitializer }, align 32
@wsm_cmd_send._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.56, ptr @.str.7, i32 1136, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013CMD req (0x%04x) stuck in firmware, killing BH\0A\00", [46 x i8] zeroinitializer }, align 32
@wsm_cmd_send._entry_ptr = internal global ptr @wsm_cmd_send._entry, section ".printk_index", align 4
@wsm_cmd_send.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.56, ptr @.str.7, ptr @.str.60, i8 1, i8 28, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"REQDUMP: \00", [22 x i8] zeroinitializer }, align 32
@wsm_cmd_send._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.56, ptr @.str.7, i32 1139, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013Outstanding outgoing frames:  %d\0A\00", [60 x i8] zeroinitializer }, align 32
@wsm_cmd_send._entry_ptr.63 = internal global ptr @wsm_cmd_send._entry.61, section ".printk_index", align 4
@wsm_startup_indication._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.7, i32 843, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [140 x i8], [52 x i8] } { [140 x i8] c"\016CW1200 WSM init done.\0A   Input buffers: %d x %d bytes\0A   Hardware: %d.%d\0A   %s firmware [%s], ver: %d, build: %d,   api: %d, cap: 0x%.4X\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"wsm_startup_indication\00", [41 x i8] zeroinitializer }, align 32
@wsm_startup_indication._entry_ptr = internal global ptr @wsm_startup_indication._entry, section ".printk_index", align 4
@wsm_receive_indication.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.66, ptr @.str.7, ptr @.str.67, i8 0, i8 -32, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"wsm_receive_indication\00", [41 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"[WSM] Issue unjoin command (RX).\0A\00", [62 x i8] zeroinitializer }, align 32
@wsm_event_indication.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.68, ptr @.str.7, ptr @.str.69, i8 0, i8 -23, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"wsm_event_indication\00", [43 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"[WSM] Event: %d(%d)\0A\00", [43 x i8] zeroinitializer }, align 32
@wsm_ba_timeout_indication._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.7, i32 1040, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016BlockACK timeout, tid %d, addr %pM\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"wsm_ba_timeout_indication\00", [38 x i8] zeroinitializer }, align 32
@wsm_ba_timeout_indication._entry_ptr = internal global ptr @wsm_ba_timeout_indication._entry, section ".printk_index", align 4
@wsm_find_complete_indication._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.7, i32 1024, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014Implement find_complete_indication\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"wsm_find_complete_indication\00", [35 x i8] zeroinitializer }, align 32
@wsm_find_complete_indication._entry_ptr = internal global ptr @wsm_find_complete_indication._entry, section ".printk_index", align 4
@wsm_join_complete_indication.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.74, ptr @.str.7, ptr @.str.75, i8 0, i8 -3, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"wsm_join_complete_indication\00", [35 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"[WSM] Join complete indication, status: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@wsm_handle_tx_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.7, i32 1483, ptr @.str.47, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"A frame with expired link id is dropped.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wsm_handle_tx_data\00", [45 x i8] zeroinitializer }, align 32
@wsm_handle_tx_data._entry_ptr = internal global ptr @wsm_handle_tx_data._entry, section ".printk_index", align 4
@wsm_handle_tx_data._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.77, ptr @.str.7, i32 1495, ptr @.str.47, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Too many attempts to requeue a frame; dropped.\0A\00", [48 x i8] zeroinitializer }, align 32
@wsm_handle_tx_data._entry_ptr.80 = internal global ptr @wsm_handle_tx_data._entry.78, section ".printk_index", align 4
@wsm_handle_tx_data.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.77, ptr @.str.7, ptr @.str.81, i8 1, i8 125, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"[WSM] Issue unjoin command due to tx deauth.\0A\00", [50 x i8] zeroinitializer }, align 32
@wsm_handle_tx_data.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.77, ptr @.str.7, ptr @.str.82, i8 1, i8 -126, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"[WSM] Convert probe request to scan.\0A\00", [58 x i8] zeroinitializer }, align 32
@wsm_handle_tx_data.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.77, ptr @.str.7, ptr @.str.83, i8 1, i8 -124, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"[WSM] Drop frame (0x%.4X).\0A\00", [36 x i8] zeroinitializer }, align 32
@wsm_handle_tx_data.__UNIQUE_ID_ddebug363 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.77, ptr @.str.7, ptr @.str.84, i8 1, i8 -123, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"[WSM] Issue set_default_wep_key.\0A\00", [62 x i8] zeroinitializer }, align 32
@wsm_handle_tx_data.__UNIQUE_ID_ddebug364 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.77, ptr @.str.7, ptr @.str.85, i8 1, i8 -121, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"[WSM] Transmit frame.\0A\00", [41 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 1028, i64 1054]
@__sancov_gen_cov_switch_values.86 = internal global [22 x i64] [i64 20, i64 16, i64 1029, i64 1030, i64 1031, i64 1032, i64 1033, i64 1034, i64 1035, i64 1036, i64 1037, i64 1040, i64 1041, i64 1042, i64 1043, i64 1046, i64 1047, i64 1048, i64 1049, i64 1050, i64 1051, i64 1052]
@__sancov_gen_cov_switch_values.87 = internal global [12 x i64] [i64 10, i64 16, i64 2049, i64 2052, i64 2053, i64 2054, i64 2056, i64 2057, i64 2058, i64 2059, i64 2060, i64 2063]
@__sancov_gen_cov_switch_values.88 = internal global [4 x i64] [i64 2, i64 16, i64 20480, i64 32768]
@__sancov_gen_cov_switch_values.89 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 7]
@__sancov_gen_cov_switch_values.90 = internal global [5 x i64] [i64 3, i64 16, i64 16384, i64 18432, i64 49152]
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 803, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 804, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 805, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 806, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 807, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant [16 x i8] c"cw1200_fw_types\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 802, i32 20 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1165, i32 4 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1173, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1195, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1213, i32 4 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1232, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant [11 x i8] c"reason_str\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1247, i32 28 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1248, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1249, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1250, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1251, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1263, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1267, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1272, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1276, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1280, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1284, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1289, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1290, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1309, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1382, i32 5 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1395, i32 4 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1443, i32 4 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1752, i32 4 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1096, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1100, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1136, i32 4 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1137, i32 4 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1139, i32 4 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 832, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 898, i32 4 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 932, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1039, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1024, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1012, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1482, i32 4 }
@___asan_gen_.328 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1494, i32 4 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1524, i32 4 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1544, i32 3 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1553, i32 3 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1558, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.347 = private constant [40 x i8] c"../drivers/net/wireless/st/cw1200/wsm.c\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1567, i32 3 }
@llvm.compiler.used = appending global [104 x ptr] [ptr @wsm_ba_timeout_indication._entry, ptr @wsm_ba_timeout_indication._entry_ptr, ptr @wsm_cmd_send._entry, ptr @wsm_cmd_send._entry.61, ptr @wsm_cmd_send._entry_ptr, ptr @wsm_cmd_send._entry_ptr.63, ptr @wsm_find_complete_indication._entry, ptr @wsm_find_complete_indication._entry_ptr, ptr @wsm_flush_tx._entry, ptr @wsm_flush_tx._entry.13, ptr @wsm_flush_tx._entry_ptr, ptr @wsm_flush_tx._entry_ptr.17, ptr @wsm_handle_exception._entry, ptr @wsm_handle_exception._entry.26, ptr @wsm_handle_exception._entry.29, ptr @wsm_handle_exception._entry.32, ptr @wsm_handle_exception._entry.35, ptr @wsm_handle_exception._entry.40, ptr @wsm_handle_exception._entry_ptr, ptr @wsm_handle_exception._entry_ptr.28, ptr @wsm_handle_exception._entry_ptr.31, ptr @wsm_handle_exception._entry_ptr.34, ptr @wsm_handle_exception._entry_ptr.37, ptr @wsm_handle_exception._entry_ptr.42, ptr @wsm_handle_rx._entry, ptr @wsm_handle_rx._entry.48, ptr @wsm_handle_rx._entry.51, ptr @wsm_handle_rx._entry_ptr, ptr @wsm_handle_rx._entry_ptr.50, ptr @wsm_handle_rx._entry_ptr.53, ptr @wsm_handle_tx_data._entry, ptr @wsm_handle_tx_data._entry.78, ptr @wsm_handle_tx_data._entry_ptr, ptr @wsm_handle_tx_data._entry_ptr.80, ptr @wsm_startup_indication._entry, ptr @wsm_startup_indication._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @cw1200_fw_types, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @wsm_handle_exception.reason_str, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.79, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85], section "llvm.metadata"
@0 = internal global [86 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_fw_types to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wsm_flush_tx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wsm_flush_tx._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wsm_handle_exception.reason_str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wsm_handle_exception._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wsm_handle_exception._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wsm_handle_exception._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wsm_handle_exception._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wsm_handle_exception._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wsm_handle_exception._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wsm_handle_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wsm_handle_rx._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wsm_handle_rx._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wsm_cmd_send._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wsm_cmd_send._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wsm_startup_indication._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wsm_ba_timeout_indication._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wsm_find_complete_indication._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wsm_handle_tx_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wsm_handle_tx_data._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wsm_configuration(ptr noundef %priv, ptr noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %wsm_cmd_buf = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 90
  %wsm_cmd_mux = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 89
  tail call void @mutex_lock_nested(ptr noundef %wsm_cmd_mux, i32 noundef 0) #8
  %data = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 90, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %end = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 90, i32 2
  %2 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %end, align 4
  %cmp = icmp ugt ptr %add.ptr, %3
  br i1 %cmp, label %if.then, label %entry.if.end2_crit_edge

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end2

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %6 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wsm_cmd_buf, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %7 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.i = add i32 %sub.ptr.sub.i, 3
  %or.i = or i32 %sub.i, 1023
  %add1.i = add i32 %or.i, 1
  %call.i = tail call noalias ptr @krealloc(ptr noundef %7, i32 noundef %add1.i, i32 noundef 3265) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.nomem_crit_edge, label %wsm_buf_reserve.exit.thread

if.then.nomem_crit_edge:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %nomem

wsm_buf_reserve.exit.thread:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %wsm_cmd_buf, align 4
  %arrayidx.i = getelementptr i8, ptr %call.i, i32 %sub.ptr.sub.i
  %9 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %arrayidx.i, ptr %data, align 4
  %arrayidx7.i = getelementptr i8, ptr %call.i, i32 %add1.i
  %10 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %arrayidx7.i, ptr %end, align 4
  br label %if.end2

if.end2:                                          ; preds = %wsm_buf_reserve.exit.thread, %entry.if.end2_crit_edge
  %11 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arg, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %13, ptr %15, align 4
  %17 = load ptr, ptr %data, align 4
  %add.ptr5 = getelementptr i8, ptr %17, i32 4
  store ptr %add.ptr5, ptr %data, align 4
  %add.ptr8 = getelementptr i8, ptr %17, i32 8
  %18 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %end, align 4
  %cmp10 = icmp ugt ptr %add.ptr8, %19
  br i1 %cmp10, label %if.then11, label %if.end2.if.end16_crit_edge

if.end2.if.end16_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then11:                                        ; preds = %if.end2
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data, align 4
  %22 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %wsm_cmd_buf, align 4
  %sub.ptr.lhs.cast.i185 = ptrtoint ptr %21 to i32
  %sub.ptr.rhs.cast.i186 = ptrtoint ptr %23 to i32
  %sub.ptr.sub.i187 = sub i32 %sub.ptr.lhs.cast.i185, %sub.ptr.rhs.cast.i186
  %sub.i188 = add i32 %sub.ptr.sub.i187, 3
  %or.i189 = or i32 %sub.i188, 1023
  %add1.i190 = add i32 %or.i189, 1
  %call.i191 = tail call noalias ptr @krealloc(ptr noundef %23, i32 noundef %add1.i190, i32 noundef 3265) #11
  %tobool.not.i192 = icmp eq ptr %call.i191, null
  br i1 %tobool.not.i192, label %if.then11.nomem_crit_edge, label %wsm_buf_reserve.exit200.thread

if.then11.nomem_crit_edge:                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %nomem

wsm_buf_reserve.exit200.thread:                   ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i191, ptr %wsm_cmd_buf, align 4
  %arrayidx.i195 = getelementptr i8, ptr %call.i191, i32 %sub.ptr.sub.i187
  %25 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %arrayidx.i195, ptr %data, align 4
  %arrayidx7.i196 = getelementptr i8, ptr %call.i191, i32 %add1.i190
  %26 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %arrayidx7.i196, ptr %end, align 4
  br label %if.end16

if.end16:                                         ; preds = %wsm_buf_reserve.exit200.thread, %if.end2.if.end16_crit_edge
  %dot11MaxReceiveLifeTime = getelementptr inbounds %struct.wsm_configuration, ptr %arg, i32 0, i32 1
  %27 = ptrtoint ptr %dot11MaxReceiveLifeTime to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dot11MaxReceiveLifeTime, align 4
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  %30 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %29, ptr %31, align 4
  %33 = load ptr, ptr %data, align 4
  %add.ptr19 = getelementptr i8, ptr %33, i32 4
  store ptr %add.ptr19, ptr %data, align 4
  %add.ptr24 = getelementptr i8, ptr %33, i32 8
  %34 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %end, align 4
  %cmp26 = icmp ugt ptr %add.ptr24, %35
  br i1 %cmp26, label %if.then27, label %if.end16.if.end32_crit_edge

if.end16.if.end32_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.then27:                                        ; preds = %if.end16
  %36 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data, align 4
  %38 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %wsm_cmd_buf, align 4
  %sub.ptr.lhs.cast.i202 = ptrtoint ptr %37 to i32
  %sub.ptr.rhs.cast.i203 = ptrtoint ptr %39 to i32
  %sub.ptr.sub.i204 = sub i32 %sub.ptr.lhs.cast.i202, %sub.ptr.rhs.cast.i203
  %sub.i205 = add i32 %sub.ptr.sub.i204, 3
  %or.i206 = or i32 %sub.i205, 1023
  %add1.i207 = add i32 %or.i206, 1
  %call.i208 = tail call noalias ptr @krealloc(ptr noundef %39, i32 noundef %add1.i207, i32 noundef 3265) #11
  %tobool.not.i209 = icmp eq ptr %call.i208, null
  br i1 %tobool.not.i209, label %if.then27.nomem_crit_edge, label %wsm_buf_reserve.exit217.thread

if.then27.nomem_crit_edge:                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  br label %nomem

wsm_buf_reserve.exit217.thread:                   ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call.i208, ptr %wsm_cmd_buf, align 4
  %arrayidx.i212 = getelementptr i8, ptr %call.i208, i32 %sub.ptr.sub.i204
  %41 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %arrayidx.i212, ptr %data, align 4
  %arrayidx7.i213 = getelementptr i8, ptr %call.i208, i32 %add1.i207
  %42 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %arrayidx7.i213, ptr %end, align 4
  br label %if.end32

if.end32:                                         ; preds = %wsm_buf_reserve.exit217.thread, %if.end16.if.end32_crit_edge
  %dot11RtsThreshold = getelementptr inbounds %struct.wsm_configuration, ptr %arg, i32 0, i32 2
  %43 = ptrtoint ptr %dot11RtsThreshold to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %dot11RtsThreshold, align 4
  %45 = tail call i32 @llvm.bswap.i32(i32 %44)
  %46 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %data, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %45, ptr %47, align 4
  %49 = load ptr, ptr %data, align 4
  %add.ptr35 = getelementptr i8, ptr %49, i32 4
  store ptr %add.ptr35, ptr %data, align 4
  %add.ptr40 = getelementptr i8, ptr %49, i32 6
  %50 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %end, align 4
  %cmp42 = icmp ugt ptr %add.ptr40, %51
  br i1 %cmp42, label %if.then43, label %if.end32.if.end48_crit_edge

if.end32.if.end48_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.then43:                                        ; preds = %if.end32
  %52 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %data, align 4
  %54 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %wsm_cmd_buf, align 4
  %sub.ptr.lhs.cast.i219 = ptrtoint ptr %53 to i32
  %sub.ptr.rhs.cast.i220 = ptrtoint ptr %55 to i32
  %sub.ptr.sub.i221 = sub i32 %sub.ptr.lhs.cast.i219, %sub.ptr.rhs.cast.i220
  %sub.i222 = add i32 %sub.ptr.sub.i221, 1
  %or.i223 = or i32 %sub.i222, 1023
  %add1.i224 = add i32 %or.i223, 1
  %call.i225 = tail call noalias ptr @krealloc(ptr noundef %55, i32 noundef %add1.i224, i32 noundef 3265) #11
  %tobool.not.i226 = icmp eq ptr %call.i225, null
  br i1 %tobool.not.i226, label %if.then43.nomem_crit_edge, label %wsm_buf_reserve.exit234.thread

if.then43.nomem_crit_edge:                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #10
  br label %nomem

wsm_buf_reserve.exit234.thread:                   ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #10
  %56 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call.i225, ptr %wsm_cmd_buf, align 4
  %arrayidx.i229 = getelementptr i8, ptr %call.i225, i32 %sub.ptr.sub.i221
  %57 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %arrayidx.i229, ptr %data, align 4
  %arrayidx7.i230 = getelementptr i8, ptr %call.i225, i32 %add1.i224
  %58 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %arrayidx7.i230, ptr %end, align 4
  br label %if.end48

if.end48:                                         ; preds = %wsm_buf_reserve.exit234.thread, %if.end32.if.end48_crit_edge
  %dpdData_size = getelementptr inbounds %struct.wsm_configuration, ptr %arg, i32 0, i32 5
  %59 = ptrtoint ptr %dpdData_size to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %dpdData_size, align 4
  %61 = trunc i32 %60 to i16
  %conv = add i16 %61, 12
  %62 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %63 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %data, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %62, ptr %64, align 2
  %66 = load ptr, ptr %data, align 4
  %add.ptr51 = getelementptr i8, ptr %66, i32 2
  store ptr %add.ptr51, ptr %data, align 4
  %add.ptr56 = getelementptr i8, ptr %66, i32 4
  %67 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %end, align 4
  %cmp58 = icmp ugt ptr %add.ptr56, %68
  br i1 %cmp58, label %if.then60, label %if.end48.if.end65_crit_edge

if.end48.if.end65_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65

if.then60:                                        ; preds = %if.end48
  %69 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %data, align 4
  %71 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %wsm_cmd_buf, align 4
  %sub.ptr.lhs.cast.i236 = ptrtoint ptr %70 to i32
  %sub.ptr.rhs.cast.i237 = ptrtoint ptr %72 to i32
  %sub.ptr.sub.i238 = sub i32 %sub.ptr.lhs.cast.i236, %sub.ptr.rhs.cast.i237
  %sub.i239 = add i32 %sub.ptr.sub.i238, 1
  %or.i240 = or i32 %sub.i239, 1023
  %add1.i241 = add i32 %or.i240, 1
  %call.i242 = tail call noalias ptr @krealloc(ptr noundef %72, i32 noundef %add1.i241, i32 noundef 3265) #11
  %tobool.not.i243 = icmp eq ptr %call.i242, null
  br i1 %tobool.not.i243, label %if.then60.nomem_crit_edge, label %wsm_buf_reserve.exit251.thread

if.then60.nomem_crit_edge:                        ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #10
  br label %nomem

wsm_buf_reserve.exit251.thread:                   ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #10
  %73 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call.i242, ptr %wsm_cmd_buf, align 4
  %arrayidx.i246 = getelementptr i8, ptr %call.i242, i32 %sub.ptr.sub.i238
  %74 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %arrayidx.i246, ptr %data, align 4
  %arrayidx7.i247 = getelementptr i8, ptr %call.i242, i32 %add1.i241
  %75 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %arrayidx7.i247, ptr %end, align 4
  br label %if.end65

if.end65:                                         ; preds = %wsm_buf_reserve.exit251.thread, %if.end48.if.end65_crit_edge
  %76 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %data, align 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 256, ptr %77, align 2
  %79 = load ptr, ptr %data, align 4
  %add.ptr68 = getelementptr i8, ptr %79, i32 2
  store ptr %add.ptr68, ptr %data, align 4
  %add.ptr73 = getelementptr i8, ptr %79, i32 8
  %80 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %end, align 4
  %cmp75 = icmp ugt ptr %add.ptr73, %81
  br i1 %cmp75, label %if.then77, label %if.end65.if.end82_crit_edge

if.end65.if.end82_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end82

if.then77:                                        ; preds = %if.end65
  %82 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %data, align 4
  %84 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %wsm_cmd_buf, align 4
  %sub.ptr.lhs.cast.i253 = ptrtoint ptr %83 to i32
  %sub.ptr.rhs.cast.i254 = ptrtoint ptr %85 to i32
  %sub.ptr.sub.i255 = sub i32 %sub.ptr.lhs.cast.i253, %sub.ptr.rhs.cast.i254
  %sub.i256 = add i32 %sub.ptr.sub.i255, 5
  %or.i257 = or i32 %sub.i256, 1023
  %add1.i258 = add i32 %or.i257, 1
  %call.i259 = tail call noalias ptr @krealloc(ptr noundef %85, i32 noundef %add1.i258, i32 noundef 3265) #11
  %tobool.not.i260 = icmp eq ptr %call.i259, null
  br i1 %tobool.not.i260, label %if.then77.nomem_crit_edge, label %wsm_buf_reserve.exit268.thread

if.then77.nomem_crit_edge:                        ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #10
  br label %nomem

wsm_buf_reserve.exit268.thread:                   ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #10
  %86 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %call.i259, ptr %wsm_cmd_buf, align 4
  %arrayidx.i263 = getelementptr i8, ptr %call.i259, i32 %sub.ptr.sub.i255
  %87 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %arrayidx.i263, ptr %data, align 4
  %arrayidx7.i264 = getelementptr i8, ptr %call.i259, i32 %add1.i258
  %88 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %arrayidx7.i264, ptr %end, align 4
  br label %if.end82

if.end82:                                         ; preds = %wsm_buf_reserve.exit268.thread, %if.end65.if.end82_crit_edge
  %89 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %data, align 4
  %dot11StationId = getelementptr inbounds %struct.wsm_configuration, ptr %arg, i32 0, i32 3
  %91 = ptrtoint ptr %dot11StationId to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dot11StationId, align 4
  %93 = call ptr @memcpy(ptr %90, ptr %92, i32 6)
  %94 = load ptr, ptr %data, align 4
  %add.ptr85 = getelementptr i8, ptr %94, i32 6
  store ptr %add.ptr85, ptr %data, align 4
  %add.ptr90 = getelementptr i8, ptr %94, i32 8
  %95 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %end, align 4
  %cmp92 = icmp ugt ptr %add.ptr90, %96
  br i1 %cmp92, label %if.then94, label %if.end82.if.end99_crit_edge

if.end82.if.end99_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end99

if.then94:                                        ; preds = %if.end82
  %97 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %data, align 4
  %99 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %wsm_cmd_buf, align 4
  %sub.ptr.lhs.cast.i270 = ptrtoint ptr %98 to i32
  %sub.ptr.rhs.cast.i271 = ptrtoint ptr %100 to i32
  %sub.ptr.sub.i272 = sub i32 %sub.ptr.lhs.cast.i270, %sub.ptr.rhs.cast.i271
  %sub.i273 = add i32 %sub.ptr.sub.i272, 1
  %or.i274 = or i32 %sub.i273, 1023
  %add1.i275 = add i32 %or.i274, 1
  %call.i276 = tail call noalias ptr @krealloc(ptr noundef %100, i32 noundef %add1.i275, i32 noundef 3265) #11
  %tobool.not.i277 = icmp eq ptr %call.i276, null
  br i1 %tobool.not.i277, label %if.then94.nomem_crit_edge, label %wsm_buf_reserve.exit285.thread

if.then94.nomem_crit_edge:                        ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #10
  br label %nomem

wsm_buf_reserve.exit285.thread:                   ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #10
  %101 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %call.i276, ptr %wsm_cmd_buf, align 4
  %arrayidx.i280 = getelementptr i8, ptr %call.i276, i32 %sub.ptr.sub.i272
  %102 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %arrayidx.i280, ptr %data, align 4
  %arrayidx7.i281 = getelementptr i8, ptr %call.i276, i32 %add1.i275
  %103 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %arrayidx7.i281, ptr %end, align 4
  br label %if.end99

if.end99:                                         ; preds = %wsm_buf_reserve.exit285.thread, %if.end82.if.end99_crit_edge
  %104 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %data, align 4
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 1280, ptr %105, align 2
  %107 = load ptr, ptr %data, align 4
  %add.ptr102 = getelementptr i8, ptr %107, i32 2
  store ptr %add.ptr102, ptr %data, align 4
  %108 = ptrtoint ptr %dpdData_size to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %dpdData_size, align 4
  %add.ptr108 = getelementptr i8, ptr %add.ptr102, i32 %109
  %110 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %end, align 4
  %cmp110 = icmp ugt ptr %add.ptr108, %111
  br i1 %cmp110, label %if.then112, label %if.end99.if.end118_crit_edge

if.end99.if.end118_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end118

if.then112:                                       ; preds = %if.end99
  %112 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %data, align 4
  %114 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %wsm_cmd_buf, align 4
  %sub.ptr.lhs.cast.i287 = ptrtoint ptr %113 to i32
  %sub.ptr.rhs.cast.i288 = ptrtoint ptr %115 to i32
  %sub.ptr.sub.i289 = sub i32 %sub.ptr.lhs.cast.i287, %sub.ptr.rhs.cast.i288
  %add.i = add i32 %109, -1
  %sub.i290 = add i32 %add.i, %sub.ptr.sub.i289
  %or.i291 = or i32 %sub.i290, 1023
  %add1.i292 = add i32 %or.i291, 1
  %call.i293 = tail call noalias ptr @krealloc(ptr noundef %115, i32 noundef %add1.i292, i32 noundef 3265) #11
  %tobool.not.i294 = icmp eq ptr %call.i293, null
  br i1 %tobool.not.i294, label %if.then112.nomem_crit_edge, label %wsm_buf_reserve.exit302.thread

if.then112.nomem_crit_edge:                       ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #10
  br label %nomem

wsm_buf_reserve.exit302.thread:                   ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #10
  %116 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %call.i293, ptr %wsm_cmd_buf, align 4
  %arrayidx.i297 = getelementptr i8, ptr %call.i293, i32 %sub.ptr.sub.i289
  %117 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %arrayidx.i297, ptr %data, align 4
  %arrayidx7.i298 = getelementptr i8, ptr %call.i293, i32 %add1.i292
  %118 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %arrayidx7.i298, ptr %end, align 4
  br label %if.end118

if.end118:                                        ; preds = %wsm_buf_reserve.exit302.thread, %if.end99.if.end118_crit_edge
  %119 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %data, align 4
  %dpdData = getelementptr inbounds %struct.wsm_configuration, ptr %arg, i32 0, i32 4
  %121 = ptrtoint ptr %dpdData to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %dpdData, align 4
  %123 = ptrtoint ptr %dpdData_size to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %dpdData_size, align 4
  %125 = call ptr @memcpy(ptr %120, ptr %122, i32 %124)
  %126 = load i32, ptr %dpdData_size, align 4
  %127 = load ptr, ptr %data, align 4
  %add.ptr123 = getelementptr i8, ptr %127, i32 %126
  store ptr %add.ptr123, ptr %data, align 4
  %call126 = tail call fastcc i32 @wsm_cmd_send(ptr noundef %priv, ptr noundef %wsm_cmd_buf, ptr noundef %arg, i16 noundef zeroext 9, i32 noundef 200)
  br label %cleanup

nomem:                                            ; preds = %if.then112.nomem_crit_edge, %if.then94.nomem_crit_edge, %if.then77.nomem_crit_edge, %if.then60.nomem_crit_edge, %if.then43.nomem_crit_edge, %if.then27.nomem_crit_edge, %if.then11.nomem_crit_edge, %if.then.nomem_crit_edge
  %128 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %wsm_cmd_buf, align 4
  tail call void @kfree(ptr noundef %129) #8
  %130 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr null, ptr %end, align 4
  %131 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr null, ptr %data, align 4
  %132 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr null, ptr %wsm_cmd_buf, align 4
  br label %cleanup

cleanup:                                          ; preds = %nomem, %if.end118
  %retval.0 = phi i32 [ -12, %nomem ], [ %call126, %if.end118 ]
  tail call void @mutex_unlock(ptr noundef %wsm_cmd_mux) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wsm_buf_reserve(ptr nocapture noundef %buf, i32 noundef %extra_size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.wsm_buf, ptr %buf, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buf, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %3 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add = add i32 %extra_size, -1
  %sub = add i32 %add, %sub.ptr.sub
  %or = or i32 %sub, 1023
  %add1 = add i32 %or, 1
  %call = tail call noalias ptr @krealloc(ptr noundef %3, i32 noundef %add1, i32 noundef 3265) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buf, align 4
  tail call void @kfree(ptr noundef %5) #8
  %end.i = getelementptr inbounds %struct.wsm_buf, ptr %buf, i32 0, i32 2
  %6 = ptrtoint ptr %end.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %end.i, align 4
  %7 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %data, align 4
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %buf, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call, ptr %buf, align 4
  %arrayidx = getelementptr i8, ptr %call, i32 %sub.ptr.sub
  %10 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %arrayidx, ptr %data, align 4
  %arrayidx7 = getelementptr i8, ptr %call, i32 %add1
  %end = getelementptr inbounds %struct.wsm_buf, ptr %buf, i32 0, i32 2
  %11 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %arrayidx7, ptr %end, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wsm_cmd_send(ptr noundef %priv, ptr nocapture noundef %buf, ptr noundef %arg, i16 noundef zeroext %cmd, i32 noundef %tmo) unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.wsm_buf, ptr %buf, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buf, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %3 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %bh_error = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 74
  %4 = ptrtoint ptr %bh_error to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bh_error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.done211_crit_edge

entry.done211_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %done211

if.end:                                           ; preds = %entry
  %wsm_cmd = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 91
  tail call void @_raw_spin_lock(ptr noundef %wsm_cmd) #8
  %done = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 91, i32 1
  %6 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %done, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not287 = icmp eq i32 %7, 0
  br i1 %tobool2.not287, label %if.end.while.body_crit_edge, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end.while.body_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %wsm_cmd) #8
  tail call void @_raw_spin_lock(ptr noundef %wsm_cmd) #8
  %8 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %done, align 4
  %tobool2.not = icmp eq i32 %9, 0
  br i1 %tobool2.not, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end.while.end_crit_edge
  %10 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %done, align 4
  tail call void @_raw_spin_unlock(ptr noundef %wsm_cmd) #8
  %conv = zext i16 %cmd to i32
  %cmd.off = add i16 %cmd, -5
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %cmd.off)
  %switch273 = icmp ult i16 %cmd.off, 2
  br i1 %switch273, label %do.body, label %do.body25

do.body:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wsm_cmd_send.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wsm_cmd_send, %if.then20)) #8
          to label %if.end42 [label %if.then20], !srcloc !180

if.then20:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %buf, align 4
  %arrayidx = getelementptr i16, ptr %12, i32 2
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx, align 2
  %15 = tail call i16 @llvm.bswap.i16(i16 %14)
  %conv23 = zext i16 %15 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wsm_cmd_send.__UNIQUE_ID_ddebug351, ptr noundef nonnull @.str.57, i32 noundef %conv, i32 noundef %conv23, i32 noundef %sub.ptr.sub) #8
  br label %if.end42

do.body25:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wsm_cmd_send.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wsm_cmd_send, %if.then37)) #8
          to label %if.end42 [label %if.then37], !srcloc !180

if.then37:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wsm_cmd_send.__UNIQUE_ID_ddebug352, ptr noundef nonnull @.str.58, i32 noundef %conv, i32 noundef %sub.ptr.sub) #8
  br label %if.end42

if.end42:                                         ; preds = %if.then37, %do.body25, %if.then20, %do.body
  %add = add i32 %sub.ptr.sub, 4
  %conv43 = trunc i32 %add to i16
  %16 = tail call i16 @llvm.bswap.i16(i16 %conv43)
  %17 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %buf, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %16, ptr %18, align 2
  %20 = tail call i16 @llvm.bswap.i16(i16 %cmd)
  %21 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %buf, align 4
  %arrayidx47 = getelementptr i16, ptr %22, i32 1
  %23 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %20, ptr %arrayidx47, align 2
  tail call void @_raw_spin_lock(ptr noundef %wsm_cmd) #8
  %ptr = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 91, i32 2
  %24 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ptr, align 4
  %tobool52.not = icmp eq ptr %25, null
  br i1 %tobool52.not, label %do.end68, label %do.body60, !prof !181

do.body60:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/st/cw1200/wsm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1114, 0\0A.popsection", ""() #8, !srcloc !182
  unreachable

do.end68:                                         ; preds = %if.end42
  %26 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %buf, align 4
  %28 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %ptr, align 4
  %len = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 91, i32 3
  %29 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %add, ptr %len, align 4
  %arg74 = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 91, i32 4
  %30 = ptrtoint ptr %arg74 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %arg, ptr %arg74, align 4
  %cmd76 = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 91, i32 6
  %31 = ptrtoint ptr %cmd76 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %cmd, ptr %cmd76, align 4
  tail call void @_raw_spin_unlock(ptr noundef %wsm_cmd) #8
  tail call void @cw1200_bh_wakeup(ptr noundef %priv) #8
  tail call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 1125) #8
  %32 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %done, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool87.not = icmp eq i32 %33, 0
  br i1 %tobool87.not, label %if.then101, label %do.end68.if.end130_crit_edge

do.end68.if.end130_crit_edge:                     ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end130

if.then101:                                       ; preds = %do.end68
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #8
  %34 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #8
  %wsm_cmd_wq = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 92
  %call103288 = call i32 @prepare_to_wait_event(ptr noundef %wsm_cmd_wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #8
  %35 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %done, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool107.not289 = icmp eq i32 %36, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tmo)
  %tobool112.not290 = icmp eq i32 %tmo, 0
  %spec.store.select214291 = select i1 %tobool112.not290, i32 1, i32 %tmo
  %__ret102.1292 = select i1 %tobool107.not289, i32 %tmo, i32 %spec.store.select214291
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret102.1292)
  %tobool119.not293 = icmp ne i32 %__ret102.1292, 0
  %37 = and i1 %tobool107.not289, %tobool119.not293
  br i1 %37, label %if.then101.cleanup_crit_edge, label %if.then101.for.end_crit_edge

if.then101.for.end_crit_edge:                     ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.then101.cleanup_crit_edge:                     ; preds = %if.then101
  br label %cleanup

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then101.cleanup_crit_edge
  %__ret102.1295 = phi i32 [ %__ret102.1, %cleanup.cleanup_crit_edge ], [ %__ret102.1292, %if.then101.cleanup_crit_edge ]
  %call127 = call i32 @schedule_timeout(i32 noundef %__ret102.1295) #8
  %call103 = call i32 @prepare_to_wait_event(ptr noundef %wsm_cmd_wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #8
  %38 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %done, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool107.not = icmp eq i32 %39, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call127)
  %tobool112.not = icmp eq i32 %call127, 0
  %spec.store.select214 = select i1 %tobool112.not, i32 1, i32 %call127
  %__ret102.1 = select i1 %tobool107.not, i32 %call127, i32 %spec.store.select214
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret102.1)
  %tobool119.not = icmp eq i32 %__ret102.1, 0
  %not.tobool107.not = xor i1 %tobool107.not, true
  %40 = select i1 %not.tobool107.not, i1 true, i1 %tobool119.not
  br i1 %40, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then101.for.end_crit_edge
  %__ret102.1.lcssa = phi i32 [ %__ret102.1292, %if.then101.for.end_crit_edge ], [ %__ret102.1, %cleanup.for.end_crit_edge ]
  call void @finish_wait(ptr noundef %wsm_cmd_wq, ptr noundef nonnull %__wq_entry) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  br label %if.end130

if.end130:                                        ; preds = %for.end, %do.end68.if.end130_crit_edge
  %__ret.1 = phi i32 [ %tmo, %do.end68.if.end130_crit_edge ], [ %__ret102.1.lcssa, %for.end ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.1)
  %tobool132.not = icmp eq i32 %__ret.1, 0
  br i1 %tobool132.not, label %land.lhs.true133, label %if.end130.if.else181_crit_edge

if.end130.if.else181_crit_edge:                   ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else181

land.lhs.true133:                                 ; preds = %if.end130
  %41 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %done, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool136.not = icmp eq i32 %42, 0
  br i1 %tobool136.not, label %if.then137, label %land.lhs.true133.if.else181_crit_edge

land.lhs.true133.if.else181_crit_edge:            ; preds = %land.lhs.true133
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else181

if.then137:                                       ; preds = %land.lhs.true133
  call void @_raw_spin_lock(ptr noundef %wsm_cmd) #8
  %43 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %done, align 4
  %44 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %ptr, align 4
  call void @_raw_spin_unlock(ptr noundef %wsm_cmd) #8
  %45 = ptrtoint ptr %bh_error to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %bh_error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool147.not = icmp eq i32 %46, 0
  br i1 %tobool147.not, label %do.end152, label %if.then137.done211_crit_edge

if.then137.done211_crit_edge:                     ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #10
  br label %done211

do.end152:                                        ; preds = %if.then137
  %47 = ptrtoint ptr %cmd76 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %cmd76, align 4
  %conv156 = zext i16 %48 to i32
  %call157 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, i32 noundef %conv156) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wsm_cmd_send.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wsm_cmd_send, %if.then170)) #8
          to label %do.end177 [label %if.then170], !srcloc !180

if.then170:                                       ; preds = %do.end152
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %buf, align 4
  call void @print_hex_dump(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.60, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef %50, i32 noundef %add, i1 noundef zeroext true) #8
  br label %do.end177

do.end177:                                        ; preds = %if.then170, %do.end152
  %hw_bufs_used = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 81
  %51 = ptrtoint ptr %hw_bufs_used to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %hw_bufs_used, align 4
  %call179 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, i32 noundef %52) #12
  %bh_term = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 70
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %bh_term, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %bh_term, i32 1, i32 3, i32 1) #8
  %53 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bh_term, ptr %bh_term, i32 1, ptr elementtype(i32) %bh_term) #8, !srcloc !183
  %bh_wq = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 75
  call void @__wake_up(ptr noundef %bh_wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  br label %done211

if.else181:                                       ; preds = %land.lhs.true133.if.else181_crit_edge, %if.end130.if.else181_crit_edge
  call void @_raw_spin_lock(ptr noundef %wsm_cmd) #8
  %54 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %done, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool187.not = icmp eq i32 %55, 0
  br i1 %tobool187.not, label %do.body197, label %do.end205, !prof !184

do.body197:                                       ; preds = %if.else181
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/st/cw1200/wsm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1148, 0\0A.popsection", ""() #8, !srcloc !185
  unreachable

do.end205:                                        ; preds = %if.else181
  call void @__sanitizer_cov_trace_pc() #10
  %ret207 = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 91, i32 5
  %56 = ptrtoint ptr %ret207 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %ret207, align 4
  call void @_raw_spin_unlock(ptr noundef %wsm_cmd) #8
  br label %done211

done211:                                          ; preds = %do.end205, %do.end177, %if.then137.done211_crit_edge, %entry.done211_crit_edge
  %ret.0 = phi i32 [ %57, %do.end205 ], [ -110, %do.end177 ], [ 0, %entry.done211_crit_edge ], [ 0, %if.then137.done211_crit_edge ]
  %58 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %buf, align 4
  %tobool.not.i = icmp eq ptr %59, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %done211
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr i8, ptr %59, i32 4
  %60 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %arrayidx.i, ptr %data, align 4
  %61 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %59, align 4
  br label %wsm_buf_reset.exit

if.else.i:                                        ; preds = %done211
  call void @__sanitizer_cov_trace_pc() #10
  %62 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %data, align 4
  br label %wsm_buf_reset.exit

wsm_buf_reset.exit:                               ; preds = %if.else.i, %if.then.i
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wsm_reset(ptr noundef %priv, ptr nocapture noundef readonly %arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %wsm_cmd_buf = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 90
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arg, align 4
  %.tr = trunc i32 %1 to i16
  %2 = shl i16 %.tr, 6
  %3 = and i16 %2, 960
  %conv = or i16 %3, 10
  %wsm_cmd_mux = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 89
  tail call void @mutex_lock_nested(ptr noundef %wsm_cmd_mux, i32 noundef 0) #8
  %data = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 90, i32 1
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 4
  %end = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 90, i32 2
  %6 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %end, align 4
  %cmp = icmp ugt ptr %add.ptr, %7
  br i1 %cmp, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.then:                                          ; preds = %entry
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %10 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wsm_cmd_buf, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %9 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %11 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.i = add i32 %sub.ptr.sub.i, 3
  %or.i = or i32 %sub.i, 1023
  %add1.i = add i32 %or.i, 1
  %call.i = tail call noalias ptr @krealloc(ptr noundef %11, i32 noundef %add1.i, i32 noundef 3265) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %nomem, label %wsm_buf_reserve.exit.thread

wsm_buf_reserve.exit.thread:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %wsm_cmd_buf, align 4
  %arrayidx.i = getelementptr i8, ptr %call.i, i32 %sub.ptr.sub.i
  %13 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %arrayidx.i, ptr %data, align 4
  %arrayidx7.i = getelementptr i8, ptr %call.i, i32 %add1.i
  %14 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %arrayidx7.i, ptr %end, align 4
  br label %if.end3

if.end3:                                          ; preds = %wsm_buf_reserve.exit.thread, %entry.if.end3_crit_edge
  %reset_statistics = getelementptr inbounds %struct.wsm_reset, ptr %arg, i32 0, i32 1
  %15 = ptrtoint ptr %reset_statistics to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %reset_statistics, align 4, !range !186
  %17 = xor i8 %16, 1
  %18 = zext i8 %17 to i32
  %19 = shl nuw nsw i32 %18, 24
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %19, ptr %21, align 4
  %23 = load ptr, ptr %data, align 4
  %add.ptr8 = getelementptr i8, ptr %23, i32 4
  store ptr %add.ptr8, ptr %data, align 4
  %call9 = tail call fastcc i32 @wsm_cmd_send(ptr noundef %priv, ptr noundef %wsm_cmd_buf, ptr noundef null, i16 noundef zeroext %conv, i32 noundef 300)
  br label %cleanup

nomem:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %wsm_cmd_buf, align 4
  tail call void @kfree(ptr noundef %25) #8
  %26 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %end, align 4
  %27 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %data, align 4
  %28 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %wsm_cmd_buf, align 4
  br label %cleanup

cleanup:                                          ; preds = %nomem, %if.end3
  %retval.0 = phi i32 [ -12, %nomem ], [ %call9, %if.end3 ]
  tail call void @mutex_unlock(ptr noundef %wsm_cmd_mux) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wsm_read_mib(ptr noundef %priv, i16 noundef zeroext %mib_id, ptr noundef %_buf, i32 noundef %buf_size) local_unnamed_addr #0 align 64 {
entry:
  %mib_buf = alloca %struct.wsm_mib, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %wsm_cmd_buf = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 90
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %mib_buf) #8
  %0 = ptrtoint ptr %mib_buf to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %mib_buf, align 4
  store i16 %mib_id, ptr %mib_buf, align 4
  %buf2 = getelementptr inbounds %struct.wsm_mib, ptr %mib_buf, i32 0, i32 1
  %1 = ptrtoint ptr %buf2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %_buf, ptr %buf2, align 4
  %buf_size3 = getelementptr inbounds %struct.wsm_mib, ptr %mib_buf, i32 0, i32 2
  %2 = ptrtoint ptr %buf_size3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %buf_size, ptr %buf_size3, align 4
  %wsm_cmd_mux = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 89
  tail call void @mutex_lock_nested(ptr noundef %wsm_cmd_mux, i32 noundef 0) #8
  %data = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 90, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 2
  %end = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 90, i32 2
  %5 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %end, align 4
  %cmp = icmp ugt ptr %add.ptr, %6
  br i1 %cmp, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then:                                          ; preds = %entry
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %9 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %wsm_cmd_buf, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %8 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %10 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.i = add i32 %sub.ptr.sub.i, 1
  %or.i = or i32 %sub.i, 1023
  %add1.i = add i32 %or.i, 1
  %call.i = tail call noalias ptr @krealloc(ptr noundef %10, i32 noundef %add1.i, i32 noundef 3265) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.nomem_crit_edge, label %wsm_buf_reserve.exit.thread

if.then.nomem_crit_edge:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %nomem

wsm_buf_reserve.exit.thread:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %wsm_cmd_buf, align 4
  %arrayidx.i = getelementptr i8, ptr %call.i, i32 %sub.ptr.sub.i
  %12 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %arrayidx.i, ptr %data, align 4
  %arrayidx7.i = getelementptr i8, ptr %call.i, i32 %add1.i
  %13 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %arrayidx7.i, ptr %end, align 4
  br label %if.end5

if.end5:                                          ; preds = %wsm_buf_reserve.exit.thread, %entry.if.end5_crit_edge
  %14 = tail call i16 @llvm.bswap.i16(i16 %mib_id)
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %14, ptr %16, align 2
  %18 = load ptr, ptr %data, align 4
  %add.ptr8 = getelementptr i8, ptr %18, i32 2
  store ptr %add.ptr8, ptr %data, align 4
  %add.ptr11 = getelementptr i8, ptr %18, i32 4
  %19 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %end, align 4
  %cmp13 = icmp ugt ptr %add.ptr11, %20
  br i1 %cmp13, label %if.then14, label %if.end5.if.end19_crit_edge

if.end5.if.end19_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then14:                                        ; preds = %if.end5
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data, align 4
  %23 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %wsm_cmd_buf, align 4
  %sub.ptr.lhs.cast.i46 = ptrtoint ptr %22 to i32
  %sub.ptr.rhs.cast.i47 = ptrtoint ptr %24 to i32
  %sub.ptr.sub.i48 = sub i32 %sub.ptr.lhs.cast.i46, %sub.ptr.rhs.cast.i47
  %sub.i49 = add i32 %sub.ptr.sub.i48, 1
  %or.i50 = or i32 %sub.i49, 1023
  %add1.i51 = add i32 %or.i50, 1
  %call.i52 = tail call noalias ptr @krealloc(ptr noundef %24, i32 noundef %add1.i51, i32 noundef 3265) #11
  %tobool.not.i53 = icmp eq ptr %call.i52, null
  br i1 %tobool.not.i53, label %if.then14.nomem_crit_edge, label %wsm_buf_reserve.exit61.thread

if.then14.nomem_crit_edge:                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %nomem

wsm_buf_reserve.exit61.thread:                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i52, ptr %wsm_cmd_buf, align 4
  %arrayidx.i56 = getelementptr i8, ptr %call.i52, i32 %sub.ptr.sub.i48
  %26 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %arrayidx.i56, ptr %data, align 4
  %arrayidx7.i57 = getelementptr i8, ptr %call.i52, i32 %add1.i51
  %27 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %arrayidx7.i57, ptr %end, align 4
  br label %if.end19

if.end19:                                         ; preds = %wsm_buf_reserve.exit61.thread, %if.end5.if.end19_crit_edge
  %28 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 0, ptr %29, align 2
  %31 = load ptr, ptr %data, align 4
  %add.ptr22 = getelementptr i8, ptr %31, i32 2
  store ptr %add.ptr22, ptr %data, align 4
  %call25 = call fastcc i32 @wsm_cmd_send(ptr noundef %priv, ptr noundef %wsm_cmd_buf, ptr noundef nonnull %mib_buf, i16 noundef zeroext 5, i32 noundef 200)
  call void @mutex_unlock(ptr noundef %wsm_cmd_mux) #8
  br label %cleanup

nomem:                                            ; preds = %if.then14.nomem_crit_edge, %if.then.nomem_crit_edge
  %32 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %wsm_cmd_buf, align 4
  tail call void @kfree(ptr noundef %33) #8
  %34 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %end, align 4
  %35 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %data, align 4
  %36 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %wsm_cmd_buf, align 4
  tail call void @mutex_unlock(ptr noundef %wsm_cmd_mux) #8
  br label %cleanup

cleanup:                                          ; preds = %nomem, %if.end19
  %retval.0 = phi i32 [ -12, %nomem ], [ %call25, %if.end19 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %mib_buf) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wsm_write_mib(ptr noundef %priv, i16 noundef zeroext %mib_id, ptr noundef %_buf, i32 noundef %buf_size) local_unnamed_addr #0 align 64 {
entry:
  %mib_buf = alloca %struct.wsm_mib, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %wsm_cmd_buf = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 90
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %mib_buf) #8
  %0 = ptrtoint ptr %mib_buf to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %mib_buf, align 4
  store i16 %mib_id, ptr %mib_buf, align 4
  %buf2 = getelementptr inbounds %struct.wsm_mib, ptr %mib_buf, i32 0, i32 1
  %1 = ptrtoint ptr %buf2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %_buf, ptr %buf2, align 4
  %buf_size3 = getelementptr inbounds %struct.wsm_mib, ptr %mib_buf, i32 0, i32 2
  %2 = ptrtoint ptr %buf_size3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %buf_size, ptr %buf_size3, align 4
  %wsm_cmd_mux = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 89
  tail call void @mutex_lock_nested(ptr noundef %wsm_cmd_mux, i32 noundef 0) #8
  %data = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 90, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 2
  %end = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 90, i32 2
  %5 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %end, align 4
  %cmp = icmp ugt ptr %add.ptr, %6
  br i1 %cmp, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then:                                          ; preds = %entry
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %9 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %wsm_cmd_buf, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %8 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %10 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.i = add i32 %sub.ptr.sub.i, 1
  %or.i = or i32 %sub.i, 1023
  %add1.i = add i32 %or.i, 1
  %call.i = tail call noalias ptr @krealloc(ptr noundef %10, i32 noundef %add1.i, i32 noundef 3265) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.nomem_crit_edge, label %wsm_buf_reserve.exit.thread

if.then.nomem_crit_edge:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %nomem

wsm_buf_reserve.exit.thread:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %wsm_cmd_buf, align 4
  %arrayidx.i = getelementptr i8, ptr %call.i, i32 %sub.ptr.sub.i
  %12 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %arrayidx.i, ptr %data, align 4
  %arrayidx7.i = getelementptr i8, ptr %call.i, i32 %add1.i
  %13 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %arrayidx7.i, ptr %end, align 4
  br label %if.end5

if.end5:                                          ; preds = %wsm_buf_reserve.exit.thread, %entry.if.end5_crit_edge
  %14 = tail call i16 @llvm.bswap.i16(i16 %mib_id)
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %14, ptr %16, align 2
  %18 = load ptr, ptr %data, align 4
  %add.ptr8 = getelementptr i8, ptr %18, i32 2
  store ptr %add.ptr8, ptr %data, align 4
  %add.ptr11 = getelementptr i8, ptr %18, i32 4
  %19 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %end, align 4
  %cmp13 = icmp ugt ptr %add.ptr11, %20
  br i1 %cmp13, label %if.then14, label %if.end5.if.end19_crit_edge

if.end5.if.end19_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then14:                                        ; preds = %if.end5
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data, align 4
  %23 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %wsm_cmd_buf, align 4
  %sub.ptr.lhs.cast.i74 = ptrtoint ptr %22 to i32
  %sub.ptr.rhs.cast.i75 = ptrtoint ptr %24 to i32
  %sub.ptr.sub.i76 = sub i32 %sub.ptr.lhs.cast.i74, %sub.ptr.rhs.cast.i75
  %sub.i77 = add i32 %sub.ptr.sub.i76, 1
  %or.i78 = or i32 %sub.i77, 1023
  %add1.i79 = add i32 %or.i78, 1
  %call.i80 = tail call noalias ptr @krealloc(ptr noundef %24, i32 noundef %add1.i79, i32 noundef 3265) #11
  %tobool.not.i81 = icmp eq ptr %call.i80, null
  br i1 %tobool.not.i81, label %if.then14.nomem_crit_edge, label %wsm_buf_reserve.exit89.thread

if.then14.nomem_crit_edge:                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %nomem

wsm_buf_reserve.exit89.thread:                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i80, ptr %wsm_cmd_buf, align 4
  %arrayidx.i84 = getelementptr i8, ptr %call.i80, i32 %sub.ptr.sub.i76
  %26 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %arrayidx.i84, ptr %data, align 4
  %arrayidx7.i85 = getelementptr i8, ptr %call.i80, i32 %add1.i79
  %27 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %arrayidx7.i85, ptr %end, align 4
  br label %if.end19

if.end19:                                         ; preds = %wsm_buf_reserve.exit89.thread, %if.end5.if.end19_crit_edge
  %conv = trunc i32 %buf_size to i16
  %28 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %29 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %28, ptr %30, align 2
  %32 = load ptr, ptr %data, align 4
  %add.ptr22 = getelementptr i8, ptr %32, i32 2
  store ptr %add.ptr22, ptr %data, align 4
  %add.ptr27 = getelementptr i8, ptr %add.ptr22, i32 %buf_size
  %33 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %end, align 4
  %cmp29 = icmp ugt ptr %add.ptr27, %34
  br i1 %cmp29, label %if.then31, label %if.end19.if.end36_crit_edge

if.end19.if.end36_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then31:                                        ; preds = %if.end19
  %35 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data, align 4
  %37 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %wsm_cmd_buf, align 4
  %sub.ptr.lhs.cast.i91 = ptrtoint ptr %36 to i32
  %sub.ptr.rhs.cast.i92 = ptrtoint ptr %38 to i32
  %sub.ptr.sub.i93 = sub i32 %sub.ptr.lhs.cast.i91, %sub.ptr.rhs.cast.i92
  %add.i = add i32 %buf_size, -1
  %sub.i94 = add i32 %add.i, %sub.ptr.sub.i93
  %or.i95 = or i32 %sub.i94, 1023
  %add1.i96 = add i32 %or.i95, 1
  %call.i97 = tail call noalias ptr @krealloc(ptr noundef %38, i32 noundef %add1.i96, i32 noundef 3265) #11
  %tobool.not.i98 = icmp eq ptr %call.i97, null
  br i1 %tobool.not.i98, label %if.then31.nomem_crit_edge, label %wsm_buf_reserve.exit106.thread

if.then31.nomem_crit_edge:                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #10
  br label %nomem

wsm_buf_reserve.exit106.thread:                   ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.i97, ptr %wsm_cmd_buf, align 4
  %arrayidx.i101 = getelementptr i8, ptr %call.i97, i32 %sub.ptr.sub.i93
  %40 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %arrayidx.i101, ptr %data, align 4
  %arrayidx7.i102 = getelementptr i8, ptr %call.i97, i32 %add1.i96
  %41 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %arrayidx7.i102, ptr %end, align 4
  br label %if.end36

if.end36:                                         ; preds = %wsm_buf_reserve.exit106.thread, %if.end19.if.end36_crit_edge
  %42 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data, align 4
  %44 = call ptr @memcpy(ptr %43, ptr %_buf, i32 %buf_size)
  %45 = load ptr, ptr %data, align 4
  %add.ptr39 = getelementptr i8, ptr %45, i32 %buf_size
  store ptr %add.ptr39, ptr %data, align 4
  %call42 = call fastcc i32 @wsm_cmd_send(ptr noundef %priv, ptr noundef %wsm_cmd_buf, ptr noundef nonnull %mib_buf, i16 noundef zeroext 6, i32 noundef 200)
  call void @mutex_unlock(ptr noundef %wsm_cmd_mux) #8
  br label %cleanup

nomem:                                            ; preds = %if.then31.nomem_crit_edge, %if.then14.nomem_crit_edge, %if.then.nomem_crit_edge
  %46 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %wsm_cmd_buf, align 4
  tail call void @kfree(ptr noundef %47) #8
  %48 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %end, align 4
  %49 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %data, align 4
  %50 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %wsm_cmd_buf, align 4
  tail call void @mutex_unlock(ptr noundef %wsm_cmd_mux) #8
  br label %cleanup

cleanup:                                          ; preds = %nomem, %if.end36
  %retval.0 = phi i32 [ -12, %nomem ], [ %call42, %if.end36 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %mib_buf) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wsm_scan(ptr noundef %priv, ptr nocapture noundef readonly %arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %wsm_cmd_buf = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 90
  %num_channels = getelementptr inbounds %struct.wsm_scan, ptr %arg, i32 0, i32 6
  %0 = ptrtoint ptr %num_channels to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %num_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %1)
  %cmp = icmp ugt i8 %1, 48
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %num_ssids = getelementptr inbounds %struct.wsm_scan, ptr %arg, i32 0, i32 7
  %2 = ptrtoint ptr %num_ssids to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num_ssids, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp3 = icmp ugt i8 %3, 2
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %4 = ptrtoint ptr %arg to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arg, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp8 = icmp ugt i8 %5, 1
  br i1 %cmp8, label %if.end6.cleanup_crit_edge, label %if.end11

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %wsm_cmd_mux = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 89
  tail call void @mutex_lock_nested(ptr noundef %wsm_cmd_mux, i32 noundef 0) #8
  %data = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 90, i32 1
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 1
  %end = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 90, i32 2
  %8 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %end, align 4
  %cmp12 = icmp ugt ptr %add.ptr, %9
  br i1 %cmp12, label %if.then14, label %if.end11.if.end17_crit_edge

if.end11.if.end17_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then14:                                        ; preds = %if.end11
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %12 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wsm_cmd_buf, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %11 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %13 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %or.i = or i32 %sub.ptr.sub.i, 1023
  %add1.i = add i32 %or.i, 1
  %call.i = tail call noalias ptr @krealloc(ptr noundef %13, i32 noundef %add1.i, i32 noundef 3265) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then14.nomem.sink.split_crit_edge, label %wsm_buf_reserve.exit.thread

if.then14.nomem.sink.split_crit_edge:             ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %nomem.sink.split

wsm_buf_reserve.exit.thread:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %wsm_cmd_buf, align 4
  %arrayidx.i = getelementptr i8, ptr %call.i, i32 %sub.ptr.sub.i
  %15 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %arrayidx.i, ptr %data, align 4
  %arrayidx7.i = getelementptr i8, ptr %call.i, i32 %add1.i
  %16 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %arrayidx7.i, ptr %end, align 4
  br label %if.end17

if.end17:                                         ; preds = %wsm_buf_reserve.exit.thread, %if.end11.if.end17_crit_edge
  %17 = ptrtoint ptr %arg to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arg, align 4
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %18, ptr %20, align 1
  %22 = load ptr, ptr %data, align 4
  %add.ptr21 = getelementptr i8, ptr %22, i32 1
  store ptr %add.ptr21, ptr %data, align 4
  %add.ptr24 = getelementptr i8, ptr %22, i32 2
  %23 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %end, align 4
  %cmp26 = icmp ugt ptr %add.ptr24, %24
  br i1 %cmp26, label %if.then28, label %if.end17.if.end33_crit_edge

if.end17.if.end33_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.then28:                                        ; preds = %if.end17
  %25 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data, align 4
  %27 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %wsm_cmd_buf, align 4
  %sub.ptr.lhs.cast.i417 = ptrtoint ptr %26 to i32
  %sub.ptr.rhs.cast.i418 = ptrtoint ptr %28 to i32
  %sub.ptr.sub.i419 = sub i32 %sub.ptr.lhs.cast.i417, %sub.ptr.rhs.cast.i418
  %or.i420 = or i32 %sub.ptr.sub.i419, 1023
  %add1.i421 = add i32 %or.i420, 1
  %call.i422 = tail call noalias ptr @krealloc(ptr noundef %28, i32 noundef %add1.i421, i32 noundef 3265) #11
  %tobool.not.i423 = icmp eq ptr %call.i422, null
  br i1 %tobool.not.i423, label %if.then28.nomem.sink.split_crit_edge, label %wsm_buf_reserve.exit431.thread

if.then28.nomem.sink.split_crit_edge:             ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  br label %nomem.sink.split

wsm_buf_reserve.exit431.thread:                   ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i422, ptr %wsm_cmd_buf, align 4
  %arrayidx.i426 = getelementptr i8, ptr %call.i422, i32 %sub.ptr.sub.i419
  %30 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %arrayidx.i426, ptr %data, align 4
  %arrayidx7.i427 = getelementptr i8, ptr %call.i422, i32 %add1.i421
  %31 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %arrayidx7.i427, ptr %end, align 4
  br label %if.end33

if.end33:                                         ; preds = %wsm_buf_reserve.exit431.thread, %if.end17.if.end33_crit_edge
  %type = getelementptr inbounds %struct.wsm_scan, ptr %arg, i32 0, i32 1
  %32 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %type, align 1
  %34 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %33, ptr %35, align 1
  %37 = load ptr, ptr %data, align 4
  %add.ptr36 = getelementptr i8, ptr %37, i32 1
  store ptr %add.ptr36, ptr %data, align 4
  %add.ptr41 = getelementptr i8, ptr %37, i32 2
  %38 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %end, align 4
  %cmp43 = icmp ugt ptr %add.ptr41, %39
  br i1 %cmp43, label %if.then45, label %if.end33.if.end50_crit_edge

if.end33.if.end50_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

if.then45:                                        ; preds = %if.end33
  %40 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %data, align 4
  %42 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %wsm_cmd_buf, align 4
  %sub.ptr.lhs.cast.i433 = ptrtoint ptr %41 to i32
  %sub.ptr.rhs.cast.i434 = ptrtoint ptr %43 to i32
  %sub.ptr.sub.i435 = sub i32 %sub.ptr.lhs.cast.i433, %sub.ptr.rhs.cast.i434
  %or.i436 = or i32 %sub.ptr.sub.i435, 1023
  %add1.i437 = add i32 %or.i436, 1
  %call.i438 = tail call noalias ptr @krealloc(ptr noundef %43, i32 noundef %add1.i437, i32 noundef 3265) #11
  %tobool.not.i439 = icmp eq ptr %call.i438, null
  br i1 %tobool.not.i439, label %if.then45.nomem.sink.split_crit_edge, label %wsm_buf_reserve.exit447.thread

if.then45.nomem.sink.split_crit_edge:             ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #10
  br label %nomem.sink.split

wsm_buf_reserve.exit447.thread:                   ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call.i438, ptr %wsm_cmd_buf, align 4
  %arrayidx.i442 = getelementptr i8, ptr %call.i438, i32 %sub.ptr.sub.i435
  %45 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %arrayidx.i442, ptr %data, align 4
  %arrayidx7.i443 = getelementptr i8, ptr %call.i438, i32 %add1.i437
  %46 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %arrayidx7.i443, ptr %end, align 4
  br label %if.end50

if.end50:                                         ; preds = %wsm_buf_reserve.exit447.thread, %if.end33.if.end50_crit_edge
  %flags = getelementptr inbounds %struct.wsm_scan, ptr %arg, i32 0, i32 2
  %47 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %flags, align 2
  %49 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %data, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %48, ptr %50, align 1
  %52 = load ptr, ptr %data, align 4
  %add.ptr53 = getelementptr i8, ptr %52, i32 1
  store ptr %add.ptr53, ptr %data, align 4
  %add.ptr58 = getelementptr i8, ptr %52, i32 2
  %53 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %end, align 4
  %cmp60 = icmp ugt ptr %add.ptr58, %54
  br i1 %cmp60, label %if.then62, label %if.end50.if.end67_crit_edge

if.end50.if.end67_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

if.then62:                                        ; preds = %if.end50
  %55 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %data, align 4
  %57 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %wsm_cmd_buf, align 4
  %sub.ptr.lhs.cast.i449 = ptrtoint ptr %56 to i32
  %sub.ptr.rhs.cast.i450 = ptrtoint ptr %58 to i32
  %sub.ptr.sub.i451 = sub i32 %sub.ptr.lhs.cast.i449, %sub.ptr.rhs.cast.i450
  %or.i452 = or i32 %sub.ptr.sub.i451, 1023
  %add1.i453 = add i32 %or.i452, 1
  %call.i454 = tail call noalias ptr @krealloc(ptr noundef %58, i32 noundef %add1.i453, i32 noundef 3265) #11
  %tobool.not.i455 = icmp eq ptr %call.i454, null
  br i1 %tobool.not.i455, label %if.then62.nomem.sink.split_crit_edge, label %wsm_buf_reserve.exit463.thread

if.then62.nomem.sink.split_crit_edge:             ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #10
  br label %nomem.sink.split

wsm_buf_reserve.exit463.thread:                   ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #10
  %59 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call.i454, ptr %wsm_cmd_buf, align 4
  %arrayidx.i458 = getelementptr i8, ptr %call.i454, i32 %sub.ptr.sub.i451
  %60 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %arrayidx.i458, ptr %data, align 4
  %arrayidx7.i459 = getelementptr i8, ptr %call.i454, i32 %add1.i453
  %61 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %arrayidx7.i459, ptr %end, align 4
  br label %if.end67

if.end67:                                         ; preds = %wsm_buf_reserve.exit463.thread, %if.end50.if.end67_crit_edge
  %max_tx_rate = getelementptr inbounds %struct.wsm_scan, ptr %arg, i32 0, i32 3
  %62 = ptrtoint ptr %max_tx_rate to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %max_tx_rate, align 1
  %64 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %data, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %63, ptr %65, align 1
  %67 = load ptr, ptr %data, align 4
  %add.ptr70 = getelementptr i8, ptr %67, i32 1
  store ptr %add.ptr70, ptr %data, align 4
  %add.ptr75 = getelementptr i8, ptr %67, i32 5
  %68 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %end, align 4
  %cmp77 = icmp ugt ptr %add.ptr75, %69
  br i1 %cmp77, label %if.then79, label %if.end67.if.end84_crit_edge

if.end67.if.end84_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end84

if.then79:                                        ; preds = %if.end67
  %call80 = tail call fastcc i32 @wsm_buf_reserve(ptr noundef %wsm_cmd_buf, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.then79.if.end84_crit_edge, label %if.then79.cleanup.sink.split_crit_edge

if.then79.cleanup.sink.split_crit_edge:           ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.then79.if.end84_crit_edge:                     ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end84

if.end84:                                         ; preds = %if.then79.if.end84_crit_edge, %if.end67.if.end84_crit_edge
  %auto_scan_interval = getelementptr inbounds %struct.wsm_scan, ptr %arg, i32 0, i32 4
  %70 = ptrtoint ptr %auto_scan_interval to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %auto_scan_interval, align 4
  %72 = tail call i32 @llvm.bswap.i32(i32 %71)
  %73 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %data, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %72, ptr %74, align 4
  %76 = load ptr, ptr %data, align 4
  %add.ptr87 = getelementptr i8, ptr %76, i32 4
  store ptr %add.ptr87, ptr %data, align 4
  %add.ptr92 = getelementptr i8, ptr %76, i32 5
  %77 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %end, align 4
  %cmp94 = icmp ugt ptr %add.ptr92, %78
  br i1 %cmp94, label %if.then96, label %if.end84.if.end101_crit_edge

if.end84.if.end101_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end101

if.then96:                                        ; preds = %if.end84
  %call97 = tail call fastcc i32 @wsm_buf_reserve(ptr noundef %wsm_cmd_buf, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %if.then96.if.end101_crit_edge, label %if.then96.cleanup.sink.split_crit_edge

if.then96.cleanup.sink.split_crit_edge:           ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.then96.if.end101_crit_edge:                    ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end101

if.end101:                                        ; preds = %if.then96.if.end101_crit_edge, %if.end84.if.end101_crit_edge
  %num_probes = getelementptr inbounds %struct.wsm_scan, ptr %arg, i32 0, i32 5
  %79 = ptrtoint ptr %num_probes to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %num_probes, align 4
  %conv102 = trunc i32 %80 to i8
  %81 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %data, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %conv102, ptr %82, align 1
  %84 = load ptr, ptr %data, align 4
  %add.ptr105 = getelementptr i8, ptr %84, i32 1
  store ptr %add.ptr105, ptr %data, align 4
  %add.ptr110 = getelementptr i8, ptr %84, i32 2
  %85 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %end, align 4
  %cmp112 = icmp ugt ptr %add.ptr110, %86
  br i1 %cmp112, label %if.then114, label %if.end101.if.end119_crit_edge

if.end101.if.end119_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end119

if.then114:                                       ; preds = %if.end101
  %call115 = tail call fastcc i32 @wsm_buf_reserve(ptr noundef %wsm_cmd_buf, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %tobool116.not = icmp eq i32 %call115, 0
  br i1 %tobool116.not, label %if.then114.if.end119_crit_edge, label %if.then114.cleanup.sink.split_crit_edge

if.then114.cleanup.sink.split_crit_edge:          ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.then114.if.end119_crit_edge:                   ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end119

if.end119:                                        ; preds = %if.then114.if.end119_crit_edge, %if.end101.if.end119_crit_edge
  %87 = ptrtoint ptr %num_channels to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %num_channels, align 4
  %89 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %data, align 4
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %88, ptr %90, align 1
  %92 = load ptr, ptr %data, align 4
  %add.ptr123 = getelementptr i8, ptr %92, i32 1
  store ptr %add.ptr123, ptr %data, align 4
  %add.ptr128 = getelementptr i8, ptr %92, i32 2
  %93 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %end, align 4
  %cmp130 = icmp ugt ptr %add.ptr128, %94
  br i1 %cmp130, label %if.then132, label %if.end119.if.end137_crit_edge

if.end119.if.end137_crit_edge:                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end137

if.then132:                                       ; preds = %if.end119
  %call133 = tail call fastcc i32 @wsm_buf_reserve(ptr noundef %wsm_cmd_buf, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133)
  %tobool134.not = icmp eq i32 %call133, 0
  br i1 %tobool134.not, label %if.then132.if.end137_crit_edge, label %if.then132.cleanup.sink.split_crit_edge

if.then132.cleanup.sink.split_crit_edge:          ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.then132.if.end137_crit_edge:                   ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end137

if.end137:                                        ; preds = %if.then132.if.end137_crit_edge, %if.end119.if.end137_crit_edge
  %95 = ptrtoint ptr %num_ssids to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %num_ssids, align 1
  %97 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %data, align 4
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %96, ptr %98, align 1
  %100 = load ptr, ptr %data, align 4
  %add.ptr141 = getelementptr i8, ptr %100, i32 1
  store ptr %add.ptr141, ptr %data, align 4
  %add.ptr146 = getelementptr i8, ptr %100, i32 2
  %101 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %end, align 4
  %cmp148 = icmp ugt ptr %add.ptr146, %102
  br i1 %cmp148, label %if.then150, label %if.end137.if.end155_crit_edge

if.end137.if.end155_crit_edge:                    ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end155

if.then150:                                       ; preds = %if.end137
  %call151 = tail call fastcc i32 @wsm_buf_reserve(ptr noundef %wsm_cmd_buf, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call151)
  %tobool152.not = icmp eq i32 %call151, 0
  br i1 %tobool152.not, label %if.then150.if.end155_crit_edge, label %if.then150.cleanup.sink.split_crit_edge

if.then150.cleanup.sink.split_crit_edge:          ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.then150.if.end155_crit_edge:                   ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end155

if.end155:                                        ; preds = %if.then150.if.end155_crit_edge, %if.end137.if.end155_crit_edge
  %probe_delay = getelementptr inbounds %struct.wsm_scan, ptr %arg, i32 0, i32 8
  %103 = ptrtoint ptr %probe_delay to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %probe_delay, align 2
  %105 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %data, align 4
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %104, ptr %106, align 1
  %108 = load ptr, ptr %data, align 4
  %add.ptr158 = getelementptr i8, ptr %108, i32 1
  store ptr %add.ptr158, ptr %data, align 4
  %109 = ptrtoint ptr %num_channels to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %num_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %cmp163474.not = icmp eq i8 %110, 0
  br i1 %cmp163474.not, label %if.end155.for.cond254.preheader_crit_edge, label %do.body165.lr.ph

if.end155.for.cond254.preheader_crit_edge:        ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond254.preheader

do.body165.lr.ph:                                 ; preds = %if.end155
  %ch = getelementptr inbounds %struct.wsm_scan, ptr %arg, i32 0, i32 10
  br label %do.body165

for.cond254.preheader:                            ; preds = %if.end248.for.cond254.preheader_crit_edge, %if.end155.for.cond254.preheader_crit_edge
  %111 = ptrtoint ptr %num_ssids to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %num_ssids, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %cmp257477.not = icmp eq i8 %112, 0
  br i1 %cmp257477.not, label %for.cond254.preheader.for.end300_crit_edge, label %do.body260.lr.ph

for.cond254.preheader.for.end300_crit_edge:       ; preds = %for.cond254.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end300

do.body260.lr.ph:                                 ; preds = %for.cond254.preheader
  %ssids = getelementptr inbounds %struct.wsm_scan, ptr %arg, i32 0, i32 9
  br label %do.body260

do.body165:                                       ; preds = %if.end248.do.body165_crit_edge, %do.body165.lr.ph
  %i.0475 = phi i32 [ 0, %do.body165.lr.ph ], [ %inc, %if.end248.do.body165_crit_edge ]
  %113 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %data, align 4
  %add.ptr167 = getelementptr i8, ptr %114, i32 2
  %115 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %end, align 4
  %cmp169 = icmp ugt ptr %add.ptr167, %116
  br i1 %cmp169, label %if.then171, label %do.body165.if.end176_crit_edge

do.body165.if.end176_crit_edge:                   ; preds = %do.body165
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end176

if.then171:                                       ; preds = %do.body165
  %call172 = tail call fastcc i32 @wsm_buf_reserve(ptr noundef %wsm_cmd_buf, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call172)
  %tobool173.not = icmp eq i32 %call172, 0
  br i1 %tobool173.not, label %if.then171.if.end176_crit_edge, label %if.then171.cleanup.sink.split_crit_edge

if.then171.cleanup.sink.split_crit_edge:          ; preds = %if.then171
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.then171.if.end176_crit_edge:                   ; preds = %if.then171
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end176

if.end176:                                        ; preds = %if.then171.if.end176_crit_edge, %do.body165.if.end176_crit_edge
  %117 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %ch, align 4
  %arrayidx = getelementptr %struct.wsm_scan_ch, ptr %118, i32 %i.0475
  %119 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %arrayidx, align 4
  %121 = tail call i16 @llvm.bswap.i16(i16 %120)
  %122 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %data, align 4
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 %121, ptr %123, align 2
  %125 = load ptr, ptr %data, align 4
  %add.ptr179 = getelementptr i8, ptr %125, i32 2
  store ptr %add.ptr179, ptr %data, align 4
  %add.ptr184 = getelementptr i8, ptr %125, i32 4
  %126 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %end, align 4
  %cmp186 = icmp ugt ptr %add.ptr184, %127
  br i1 %cmp186, label %if.then188, label %if.end176.if.end193_crit_edge

if.end176.if.end193_crit_edge:                    ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end193

if.then188:                                       ; preds = %if.end176
  %call189 = tail call fastcc i32 @wsm_buf_reserve(ptr noundef %wsm_cmd_buf, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call189)
  %tobool190.not = icmp eq i32 %call189, 0
  br i1 %tobool190.not, label %if.then188.if.end193_crit_edge, label %if.then188.cleanup.sink.split_crit_edge

if.then188.cleanup.sink.split_crit_edge:          ; preds = %if.then188
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.then188.if.end193_crit_edge:                   ; preds = %if.then188
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end193

if.end193:                                        ; preds = %if.then188.if.end193_crit_edge, %if.end176.if.end193_crit_edge
  %128 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %data, align 4
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 0, ptr %129, align 2
  %131 = load ptr, ptr %data, align 4
  %add.ptr196 = getelementptr i8, ptr %131, i32 2
  store ptr %add.ptr196, ptr %data, align 4
  %add.ptr201 = getelementptr i8, ptr %131, i32 6
  %132 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %end, align 4
  %cmp203 = icmp ugt ptr %add.ptr201, %133
  br i1 %cmp203, label %if.then205, label %if.end193.if.end210_crit_edge

if.end193.if.end210_crit_edge:                    ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end210

if.then205:                                       ; preds = %if.end193
  %call206 = tail call fastcc i32 @wsm_buf_reserve(ptr noundef %wsm_cmd_buf, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call206)
  %tobool207.not = icmp eq i32 %call206, 0
  br i1 %tobool207.not, label %if.then205.if.end210_crit_edge, label %if.then205.cleanup.sink.split_crit_edge

if.then205.cleanup.sink.split_crit_edge:          ; preds = %if.then205
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.then205.if.end210_crit_edge:                   ; preds = %if.then205
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end210

if.end210:                                        ; preds = %if.then205.if.end210_crit_edge, %if.end193.if.end210_crit_edge
  %134 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %ch, align 4
  %min_chan_time = getelementptr %struct.wsm_scan_ch, ptr %135, i32 %i.0475, i32 1
  %136 = ptrtoint ptr %min_chan_time to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %min_chan_time, align 4
  %138 = tail call i32 @llvm.bswap.i32(i32 %137)
  %139 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %data, align 4
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %138, ptr %140, align 4
  %142 = load ptr, ptr %data, align 4
  %add.ptr215 = getelementptr i8, ptr %142, i32 4
  store ptr %add.ptr215, ptr %data, align 4
  %add.ptr220 = getelementptr i8, ptr %142, i32 8
  %143 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %end, align 4
  %cmp222 = icmp ugt ptr %add.ptr220, %144
  br i1 %cmp222, label %if.then224, label %if.end210.if.end229_crit_edge

if.end210.if.end229_crit_edge:                    ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end229

if.then224:                                       ; preds = %if.end210
  %call225 = tail call fastcc i32 @wsm_buf_reserve(ptr noundef %wsm_cmd_buf, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call225)
  %tobool226.not = icmp eq i32 %call225, 0
  br i1 %tobool226.not, label %if.then224.if.end229_crit_edge, label %if.then224.cleanup.sink.split_crit_edge

if.then224.cleanup.sink.split_crit_edge:          ; preds = %if.then224
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.then224.if.end229_crit_edge:                   ; preds = %if.then224
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end229

if.end229:                                        ; preds = %if.then224.if.end229_crit_edge, %if.end210.if.end229_crit_edge
  %145 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %ch, align 4
  %max_chan_time = getelementptr %struct.wsm_scan_ch, ptr %146, i32 %i.0475, i32 2
  %147 = ptrtoint ptr %max_chan_time to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %max_chan_time, align 4
  %149 = tail call i32 @llvm.bswap.i32(i32 %148)
  %150 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %data, align 4
  %152 = ptrtoint ptr %151 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %149, ptr %151, align 4
  %153 = load ptr, ptr %data, align 4
  %add.ptr234 = getelementptr i8, ptr %153, i32 4
  store ptr %add.ptr234, ptr %data, align 4
  %add.ptr239 = getelementptr i8, ptr %153, i32 8
  %154 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %end, align 4
  %cmp241 = icmp ugt ptr %add.ptr239, %155
  br i1 %cmp241, label %if.then243, label %if.end229.if.end248_crit_edge

if.end229.if.end248_crit_edge:                    ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end248

if.then243:                                       ; preds = %if.end229
  %call244 = tail call fastcc i32 @wsm_buf_reserve(ptr noundef %wsm_cmd_buf, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call244)
  %tobool245.not = icmp eq i32 %call244, 0
  br i1 %tobool245.not, label %if.then243.if.end248_crit_edge, label %if.then243.cleanup.sink.split_crit_edge

if.then243.cleanup.sink.split_crit_edge:          ; preds = %if.then243
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.then243.if.end248_crit_edge:                   ; preds = %if.then243
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end248

if.end248:                                        ; preds = %if.then243.if.end248_crit_edge, %if.end229.if.end248_crit_edge
  %156 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %data, align 4
  %158 = ptrtoint ptr %157 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 0, ptr %157, align 4
  %159 = load ptr, ptr %data, align 4
  %add.ptr251 = getelementptr i8, ptr %159, i32 4
  store ptr %add.ptr251, ptr %data, align 4
  %inc = add nuw nsw i32 %i.0475, 1
  %160 = ptrtoint ptr %num_channels to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %num_channels, align 4
  %conv162 = zext i8 %161 to i32
  %cmp163 = icmp ult i32 %inc, %conv162
  br i1 %cmp163, label %if.end248.do.body165_crit_edge, label %if.end248.for.cond254.preheader_crit_edge

if.end248.for.cond254.preheader_crit_edge:        ; preds = %if.end248
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond254.preheader

if.end248.do.body165_crit_edge:                   ; preds = %if.end248
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body165

do.body260:                                       ; preds = %if.end289.do.body260_crit_edge, %do.body260.lr.ph
  %i.1478 = phi i32 [ 0, %do.body260.lr.ph ], [ %inc299, %if.end289.do.body260_crit_edge ]
  %162 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %data, align 4
  %add.ptr262 = getelementptr i8, ptr %163, i32 4
  %164 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %end, align 4
  %cmp264 = icmp ugt ptr %add.ptr262, %165
  br i1 %cmp264, label %if.then266, label %do.body260.if.end271_crit_edge

do.body260.if.end271_crit_edge:                   ; preds = %do.body260
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end271

if.then266:                                       ; preds = %do.body260
  %call267 = tail call fastcc i32 @wsm_buf_reserve(ptr noundef %wsm_cmd_buf, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call267)
  %tobool268.not = icmp eq i32 %call267, 0
  br i1 %tobool268.not, label %if.then266.if.end271_crit_edge, label %if.then266.cleanup.sink.split_crit_edge

if.then266.cleanup.sink.split_crit_edge:          ; preds = %if.then266
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.then266.if.end271_crit_edge:                   ; preds = %if.then266
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end271

if.end271:                                        ; preds = %if.then266.if.end271_crit_edge, %do.body260.if.end271_crit_edge
  %166 = ptrtoint ptr %ssids to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %ssids, align 4
  %length = getelementptr %struct.wsm_ssid, ptr %167, i32 %i.1478, i32 1
  %168 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %length, align 4
  %170 = tail call i32 @llvm.bswap.i32(i32 %169)
  %171 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %data, align 4
  %173 = ptrtoint ptr %172 to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %170, ptr %172, align 4
  %174 = load ptr, ptr %data, align 4
  %add.ptr275 = getelementptr i8, ptr %174, i32 4
  store ptr %add.ptr275, ptr %data, align 4
  %add.ptr280 = getelementptr i8, ptr %174, i32 36
  %175 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %end, align 4
  %cmp282 = icmp ugt ptr %add.ptr280, %176
  br i1 %cmp282, label %if.then284, label %if.end271.if.end289_crit_edge

if.end271.if.end289_crit_edge:                    ; preds = %if.end271
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end289

if.then284:                                       ; preds = %if.end271
  %call285 = tail call fastcc i32 @wsm_buf_reserve(ptr noundef %wsm_cmd_buf, i32 noundef 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call285)
  %tobool286.not = icmp eq i32 %call285, 0
  br i1 %tobool286.not, label %if.then284.if.end289_crit_edge, label %if.then284.cleanup.sink.split_crit_edge

if.then284.cleanup.sink.split_crit_edge:          ; preds = %if.then284
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.then284.if.end289_crit_edge:                   ; preds = %if.then284
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end289

if.end289:                                        ; preds = %if.then284.if.end289_crit_edge, %if.end271.if.end289_crit_edge
  %177 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %data, align 4
  %179 = ptrtoint ptr %ssids to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %ssids, align 4
  %arrayidx292 = getelementptr %struct.wsm_ssid, ptr %180, i32 %i.1478
  %181 = call ptr @memcpy(ptr %178, ptr %arrayidx292, i32 32)
  %182 = load ptr, ptr %data, align 4
  %add.ptr295 = getelementptr i8, ptr %182, i32 32
  store ptr %add.ptr295, ptr %data, align 4
  %inc299 = add nuw nsw i32 %i.1478, 1
  %183 = ptrtoint ptr %num_ssids to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %num_ssids, align 1
  %conv256 = zext i8 %184 to i32
  %cmp257 = icmp ult i32 %inc299, %conv256
  br i1 %cmp257, label %if.end289.do.body260_crit_edge, label %if.end289.for.end300_crit_edge

if.end289.for.end300_crit_edge:                   ; preds = %if.end289
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end300

if.end289.do.body260_crit_edge:                   ; preds = %if.end289
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body260

for.end300:                                       ; preds = %if.end289.for.end300_crit_edge, %for.cond254.preheader.for.end300_crit_edge
  %call301 = tail call fastcc i32 @wsm_cmd_send(ptr noundef %priv, ptr noundef %wsm_cmd_buf, ptr noundef null, i16 noundef zeroext 7, i32 noundef 200)
  br label %cleanup.sink.split

nomem.sink.split:                                 ; preds = %if.then62.nomem.sink.split_crit_edge, %if.then45.nomem.sink.split_crit_edge, %if.then28.nomem.sink.split_crit_edge, %if.then14.nomem.sink.split_crit_edge
  %185 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %wsm_cmd_buf, align 4
  tail call void @kfree(ptr noundef %186) #8
  %187 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %187)
  store ptr null, ptr %end, align 4
  %188 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr null, ptr %data, align 4
  %189 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr null, ptr %wsm_cmd_buf, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %nomem.sink.split, %for.end300, %if.then284.cleanup.sink.split_crit_edge, %if.then266.cleanup.sink.split_crit_edge, %if.then243.cleanup.sink.split_crit_edge, %if.then224.cleanup.sink.split_crit_edge, %if.then205.cleanup.sink.split_crit_edge, %if.then188.cleanup.sink.split_crit_edge, %if.then171.cleanup.sink.split_crit_edge, %if.then150.cleanup.sink.split_crit_edge, %if.then132.cleanup.sink.split_crit_edge, %if.then114.cleanup.sink.split_crit_edge, %if.then96.cleanup.sink.split_crit_edge, %if.then79.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call301, %for.end300 ], [ -12, %nomem.sink.split ], [ -12, %if.then150.cleanup.sink.split_crit_edge ], [ -12, %if.then132.cleanup.sink.split_crit_edge ], [ -12, %if.then114.cleanup.sink.split_crit_edge ], [ -12, %if.then96.cleanup.sink.split_crit_edge ], [ -12, %if.then79.cleanup.sink.split_crit_edge ], [ -12, %if.then284.cleanup.sink.split_crit_edge ], [ -12, %if.then266.cleanup.sink.split_crit_edge ], [ -12, %if.then243.cleanup.sink.split_crit_edge ], [ -12, %if.then224.cleanup.sink.split_crit_edge ], [ -12, %if.then205.cleanup.sink.split_crit_edge ], [ -12, %if.then188.cleanup.sink.split_crit_edge ], [ -12, %if.then171.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %wsm_cmd_mux) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wsm_stop_scan(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %wsm_cmd_buf = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 90
  %wsm_cmd_mux = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 89
  tail call void @mutex_lock_nested(ptr noundef %wsm_cmd_mux, i32 noundef 0) #8
  %call = tail call fastcc i32 @wsm_cmd_send(ptr noundef %priv, ptr noundef %wsm_cmd_buf, ptr noundef null, i16 noundef zeroext 8, i32 noundef 200)
  tail call void @mutex_unlock(ptr noundef %wsm_cmd_mux) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wsm_join(ptr noundef %priv, ptr nocapture noundef readonly %arg) local_unnamed_addr #0 align 64 {
entry:
  %resp = alloca %struct.wsm_join_cnf, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %wsm_cmd_buf = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 90
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %resp) #8
  %0 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %resp, align 4, !annotation !187
  %1 = getelementptr inbounds %struct.wsm_join_cnf, ptr %resp, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !187
  %3 = getelementptr inbounds %struct.wsm_join_cnf, ptr %resp, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !187
  %wsm_cmd_mux = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 89
  tail call void @mutex_lock_nested(ptr noundef %wsm_cmd_mux, i32 noundef 0) #8
  %data = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 90, i32 1
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 1
  %end = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 90, i32 2
  %7 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %end, align 4
  %cmp = icmp ugt ptr %add.ptr, %8
  br i1 %cmp, label %if.then, label %entry.if.end2_crit_edge

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end2

if.then:                                          ; preds = %entry
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %11 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %wsm_cmd_buf, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %10 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %12 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %or.i = or i32 %sub.ptr.sub.i, 1023
  %add1.i = add i32 %or.i, 1
  %call.i = tail call noalias ptr @krealloc(ptr noundef %12, i32 noundef %add1.i, i32 noundef 3265) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.nomem.sink.split_crit_edge, label %wsm_buf_reserve.exit.thread

if.then.nomem.sink.split_crit_edge:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %nomem.sink.split

wsm_buf_reserve.exit.thread:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i, ptr %wsm_cmd_buf, align 4
  %arrayidx.i = getelementptr i8, ptr %call.i, i32 %sub.ptr.sub.i
  %14 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %arrayidx.i, ptr %data, align 4
  %arrayidx7.i = getelementptr i8, ptr %call.i, i32 %add1.i
  %15 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %arrayidx7.i, ptr %end, align 4
  br label %if.end2

if.end2:                                          ; preds = %wsm_buf_reserve.exit.thread, %entry.if.end2_crit_edge
  %16 = ptrtoint ptr %arg to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arg, align 4
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %17, ptr %19, align 1
  %21 = load ptr, ptr %data, align 4
  %add.ptr5 = getelementptr i8, ptr %21, i32 1
  store ptr %add.ptr5, ptr %data, align 4
  %add.ptr8 = getelementptr i8, ptr %21, i32 2
  %22 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %end, align 4
  %cmp10 = icmp ugt ptr %add.ptr8, %23
  br i1 %cmp10, label %if.then11, label %if.end2.if.end16_crit_edge

if.end2.if.end16_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then11:                                        ; preds = %if.end2
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data, align 4
  %26 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %wsm_cmd_buf, align 4
  %sub.ptr.lhs.cast.i288 = ptrtoint ptr %25 to i32
  %sub.ptr.rhs.cast.i289 = ptrtoint ptr %27 to i32
  %sub.ptr.sub.i290 = sub i32 %sub.ptr.lhs.cast.i288, %sub.ptr.rhs.cast.i289
  %or.i291 = or i32 %sub.ptr.sub.i290, 1023
  %add1.i292 = add i32 %or.i291, 1
  %call.i293 = tail call noalias ptr @krealloc(ptr noundef %27, i32 noundef %add1.i292, i32 noundef 3265) #11
  %tobool.not.i294 = icmp eq ptr %call.i293, null
  br i1 %tobool.not.i294, label %if.then11.nomem.sink.split_crit_edge, label %wsm_buf_reserve.exit302.thread

if.then11.nomem.sink.split_crit_edge:             ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %nomem.sink.split

wsm_buf_reserve.exit302.thread:                   ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i293, ptr %wsm_cmd_buf, align 4
  %arrayidx.i297 = getelementptr i8, ptr %call.i293, i32 %sub.ptr.sub.i290
  %29 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %arrayidx.i297, ptr %data, align 4
  %arrayidx7.i298 = getelementptr i8, ptr %call.i293, i32 %add1.i292
  %30 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %arrayidx7.i298, ptr %end, align 4
  br label %if.end16

if.end16:                                         ; preds = %wsm_buf_reserve.exit302.thread, %if.end2.if.end16_crit_edge
  %band = getelementptr inbounds %struct.wsm_join, ptr %arg, i32 0, i32 1
  %31 = ptrtoint ptr %band to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %band, align 1
  %33 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %32, ptr %34, align 1
  %36 = load ptr, ptr %data, align 4
  %add.ptr19 = getelementptr i8, ptr %36, i32 1
  store ptr %add.ptr19, ptr %data, align 4
  %add.ptr24 = getelementptr i8, ptr %36, i32 3
  %37 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %end, align 4
  %cmp26 = icmp ugt ptr %add.ptr24, %38
  br i1 %cmp26, label %if.then27, label %if.end16.if.end32_crit_edge

if.end16.if.end32_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.then27:                                        ; preds = %if.end16
  %39 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data, align 4
  %41 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %wsm_cmd_buf, align 4
  %sub.ptr.lhs.cast.i304 = ptrtoint ptr %40 to i32
  %sub.ptr.rhs.cast.i305 = ptrtoint ptr %42 to i32
  %sub.ptr.sub.i306 = sub i32 %sub.ptr.lhs.cast.i304, %sub.ptr.rhs.cast.i305
  %sub.i = add i32 %sub.ptr.sub.i306, 1
  %or.i307 = or i32 %sub.i, 1023
  %add1.i308 = add i32 %or.i307, 1
  %call.i309 = tail call noalias ptr @krealloc(ptr noundef %42, i32 noundef %add1.i308, i32 noundef 3265) #11
  %tobool.not.i310 = icmp eq ptr %call.i309, null
  br i1 %tobool.not.i310, label %if.then27.nomem.sink.split_crit_edge, label %wsm_buf_reserve.exit318.thread

if.then27.nomem.sink.split_crit_edge:             ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  br label %nomem.sink.split

wsm_buf_reserve.exit318.thread:                   ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call.i309, ptr %wsm_cmd_buf, align 4
  %arrayidx.i313 = getelementptr i8, ptr %call.i309, i32 %sub.ptr.sub.i306
  %44 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %arrayidx.i313, ptr %data, align 4
  %arrayidx7.i314 = getelementptr i8, ptr %call.i309, i32 %add1.i308
  %45 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %arrayidx7.i314, ptr %end, align 4
  br label %if.end32

if.end32:                                         ; preds = %wsm_buf_reserve.exit318.thread, %if.end16.if.end32_crit_edge
  %channel_number = getelementptr inbounds %struct.wsm_join, ptr %arg, i32 0, i32 2
  %46 = ptrtoint ptr %channel_number to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %channel_number, align 2
  %48 = tail call i16 @llvm.bswap.i16(i16 %47)
  %49 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %data, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %48, ptr %50, align 2
  %52 = load ptr, ptr %data, align 4
  %add.ptr35 = getelementptr i8, ptr %52, i32 2
  store ptr %add.ptr35, ptr %data, align 4
  %add.ptr40 = getelementptr i8, ptr %52, i32 8
  %53 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %end, align 4
  %cmp42 = icmp ugt ptr %add.ptr40, %54
  br i1 %cmp42, label %if.then43, label %if.end32.if.end48_crit_edge

if.end32.if.end48_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.then43:                                        ; preds = %if.end32
  %55 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %data, align 4
  %57 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %wsm_cmd_buf, align 4
  %sub.ptr.lhs.cast.i320 = ptrtoint ptr %56 to i32
  %sub.ptr.rhs.cast.i321 = ptrtoint ptr %58 to i32
  %sub.ptr.sub.i322 = sub i32 %sub.ptr.lhs.cast.i320, %sub.ptr.rhs.cast.i321
  %sub.i323 = add i32 %sub.ptr.sub.i322, 5
  %or.i324 = or i32 %sub.i323, 1023
  %add1.i325 = add i32 %or.i324, 1
  %call.i326 = tail call noalias ptr @krealloc(ptr noundef %58, i32 noundef %add1.i325, i32 noundef 3265) #11
  %tobool.not.i327 = icmp eq ptr %call.i326, null
  br i1 %tobool.not.i327, label %if.then43.nomem.sink.split_crit_edge, label %wsm_buf_reserve.exit335.thread

if.then43.nomem.sink.split_crit_edge:             ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #10
  br label %nomem.sink.split

wsm_buf_reserve.exit335.thread:                   ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #10
  %59 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call.i326, ptr %wsm_cmd_buf, align 4
  %arrayidx.i330 = getelementptr i8, ptr %call.i326, i32 %sub.ptr.sub.i322
  %60 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %arrayidx.i330, ptr %data, align 4
  %arrayidx7.i331 = getelementptr i8, ptr %call.i326, i32 %add1.i325
  %61 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %arrayidx7.i331, ptr %end, align 4
  br label %if.end48

if.end48:                                         ; preds = %wsm_buf_reserve.exit335.thread, %if.end32.if.end48_crit_edge
  %62 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %data, align 4
  %bssid = getelementptr inbounds %struct.wsm_join, ptr %arg, i32 0, i32 3
  %64 = call ptr @memcpy(ptr %63, ptr %bssid, i32 6)
  %65 = load ptr, ptr %data, align 4
  %add.ptr51 = getelementptr i8, ptr %65, i32 6
  store ptr %add.ptr51, ptr %data, align 4
  %add.ptr56 = getelementptr i8, ptr %65, i32 8
  %66 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %end, align 4
  %cmp58 = icmp ugt ptr %add.ptr56, %67
  br i1 %cmp58, label %if.then59, label %if.end48.if.end64_crit_edge

if.end48.if.end64_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

if.then59:                                        ; preds = %if.end48
  %68 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %data, align 4
  %70 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %wsm_cmd_buf, align 4
  %sub.ptr.lhs.cast.i337 = ptrtoint ptr %69 to i32
  %sub.ptr.rhs.cast.i338 = ptrtoint ptr %71 to i32
  %sub.ptr.sub.i339 = sub i32 %sub.ptr.lhs.cast.i337, %sub.ptr.rhs.cast.i338
  %sub.i340 = add i32 %sub.ptr.sub.i339, 1
  %or.i341 = or i32 %sub.i340, 1023
  %add1.i342 = add i32 %or.i341, 1
  %call.i343 = tail call noalias ptr @krealloc(ptr noundef %71, i32 noundef %add1.i342, i32 noundef 3265) #11
  %tobool.not.i344 = icmp eq ptr %call.i343, null
  br i1 %tobool.not.i344, label %if.then59.nomem.sink.split_crit_edge, label %wsm_buf_reserve.exit352.thread

if.then59.nomem.sink.split_crit_edge:             ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #10
  br label %nomem.sink.split

wsm_buf_reserve.exit352.thread:                   ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #10
  %72 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call.i343, ptr %wsm_cmd_buf, align 4
  %arrayidx.i347 = getelementptr i8, ptr %call.i343, i32 %sub.ptr.sub.i339
  %73 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %arrayidx.i347, ptr %data, align 4
  %arrayidx7.i348 = getelementptr i8, ptr %call.i343, i32 %add1.i342
  %74 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %arrayidx7.i348, ptr %end, align 4
  br label %if.end64

if.end64:                                         ; preds = %wsm_buf_reserve.exit352.thread, %if.end48.if.end64_crit_edge
  %atim_window = getelementptr inbounds %struct.wsm_join, ptr %arg, i32 0, i32 4
  %75 = ptrtoint ptr %atim_window to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %atim_window, align 2
  %77 = tail call i16 @llvm.bswap.i16(i16 %76)
  %78 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %data, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %77, ptr %79, align 2
  %81 = load ptr, ptr %data, align 4
  %add.ptr67 = getelementptr i8, ptr %81, i32 2
  store ptr %add.ptr67, ptr %data, align 4
  %add.ptr72 = getelementptr i8, ptr %81, i32 3
  %82 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %end, align 4
  %cmp74 = icmp ugt ptr %add.ptr72, %83
  br i1 %cmp74, label %if.then75, label %if.end64.if.end80_crit_edge

if.end64.if.end80_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end80

if.then75:                                        ; preds = %if.end64
  %84 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %data, align 4
  %86 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %wsm_cmd_buf, align 4
  %sub.ptr.lhs.cast.i354 = ptrtoint ptr %85 to i32
  %sub.ptr.rhs.cast.i355 = ptrtoint ptr %87 to i32
  %sub.ptr.sub.i356 = sub i32 %sub.ptr.lhs.cast.i354, %sub.ptr.rhs.cast.i355
  %or.i357 = or i32 %sub.ptr.sub.i356, 1023
  %add1.i358 = add i32 %or.i357, 1
  %call.i359 = tail call noalias ptr @krealloc(ptr noundef %87, i32 noundef %add1.i358, i32 noundef 3265) #11
  %tobool.not.i360 = icmp eq ptr %call.i359, null
  br i1 %tobool.not.i360, label %if.then75.nomem.sink.split_crit_edge, label %wsm_buf_reserve.exit368.thread

if.then75.nomem.sink.split_crit_edge:             ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #10
  br label %nomem.sink.split

wsm_buf_reserve.exit368.thread:                   ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #10
  %88 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %call.i359, ptr %wsm_cmd_buf, align 4
  %arrayidx.i363 = getelementptr i8, ptr %call.i359, i32 %sub.ptr.sub.i356
  %89 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %arrayidx.i363, ptr %data, align 4
  %arrayidx7.i364 = getelementptr i8, ptr %call.i359, i32 %add1.i358
  %90 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %arrayidx7.i364, ptr %end, align 4
  br label %if.end80

if.end80:                                         ; preds = %wsm_buf_reserve.exit368.thread, %if.end64.if.end80_crit_edge
  %preamble_type = getelementptr inbounds %struct.wsm_join, ptr %arg, i32 0, i32 5
  %91 = ptrtoint ptr %preamble_type to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %preamble_type, align 4
  %93 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %data, align 4
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %92, ptr %94, align 1
  %96 = load ptr, ptr %data, align 4
  %add.ptr83 = getelementptr i8, ptr %96, i32 1
  store ptr %add.ptr83, ptr %data, align 4
  %add.ptr88 = getelementptr i8, ptr %96, i32 2
  %97 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %end, align 4
  %cmp90 = icmp ugt ptr %add.ptr88, %98
  br i1 %cmp90, label %if.then91, label %if.end80.if.end96_crit_edge

if.end80.if.end96_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end96

if.then91:                                        ; preds = %if.end80
  %99 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %data, align 4
  %101 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %wsm_cmd_buf, align 4
  %sub.ptr.lhs.cast.i370 = ptrtoint ptr %100 to i32
  %sub.ptr.rhs.cast.i371 = ptrtoint ptr %102 to i32
  %sub.ptr.sub.i372 = sub i32 %sub.ptr.lhs.cast.i370, %sub.ptr.rhs.cast.i371
  %or.i373 = or i32 %sub.ptr.sub.i372, 1023
  %add1.i374 = add i32 %or.i373, 1
  %call.i375 = tail call noalias ptr @krealloc(ptr noundef %102, i32 noundef %add1.i374, i32 noundef 3265) #11
  %tobool.not.i376 = icmp eq ptr %call.i375, null
  br i1 %tobool.not.i376, label %if.then91.nomem.sink.split_crit_edge, label %wsm_buf_reserve.exit384.thread

if.then91.nomem.sink.split_crit_edge:             ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #10
  br label %nomem.sink.split

wsm_buf_reserve.exit384.thread:                   ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #10
  %103 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %call.i375, ptr %wsm_cmd_buf, align 4
  %arrayidx.i379 = getelementptr i8, ptr %call.i375, i32 %sub.ptr.sub.i372
  %104 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %arrayidx.i379, ptr %data, align 4
  %arrayidx7.i380 = getelementptr i8, ptr %call.i375, i32 %add1.i374
  %105 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %arrayidx7.i380, ptr %end, align 4
  br label %if.end96

if.end96:                                         ; preds = %wsm_buf_reserve.exit384.thread, %if.end80.if.end96_crit_edge
  %probe_for_join = getelementptr inbounds %struct.wsm_join, ptr %arg, i32 0, i32 6
  %106 = ptrtoint ptr %probe_for_join to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %probe_for_join, align 1
  %108 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %data, align 4
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %107, ptr %109, align 1
  %111 = load ptr, ptr %data, align 4
  %add.ptr99 = getelementptr i8, ptr %111, i32 1
  store ptr %add.ptr99, ptr %data, align 4
  %add.ptr104 = getelementptr i8, ptr %111, i32 2
  %112 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %end, align 4
  %cmp106 = icmp ugt ptr %add.ptr104, %113
  br i1 %cmp106, label %if.then107, label %if.end96.if.end112_crit_edge

if.end96.if.end112_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end112

if.then107:                                       ; preds = %if.end96
  %114 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %data, align 4
  %116 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %wsm_cmd_buf, align 4
  %sub.ptr.lhs.cast.i386 = ptrtoint ptr %115 to i32
  %sub.ptr.rhs.cast.i387 = ptrtoint ptr %117 to i32
  %sub.ptr.sub.i388 = sub i32 %sub.ptr.lhs.cast.i386, %sub.ptr.rhs.cast.i387
  %or.i389 = or i32 %sub.ptr.sub.i388, 1023
  %add1.i390 = add i32 %or.i389, 1
  %call.i391 = tail call noalias ptr @krealloc(ptr noundef %117, i32 noundef %add1.i390, i32 noundef 3265) #11
  %tobool.not.i392 = icmp eq ptr %call.i391, null
  br i1 %tobool.not.i392, label %if.then107.nomem.sink.split_crit_edge, label %wsm_buf_reserve.exit400.thread

if.then107.nomem.sink.split_crit_edge:            ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #10
  br label %nomem.sink.split

wsm_buf_reserve.exit400.thread:                   ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #10
  %118 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %call.i391, ptr %wsm_cmd_buf, align 4
  %arrayidx.i395 = getelementptr i8, ptr %call.i391, i32 %sub.ptr.sub.i388
  %119 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %arrayidx.i395, ptr %data, align 4
  %arrayidx7.i396 = getelementptr i8, ptr %call.i391, i32 %add1.i390
  %120 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %arrayidx7.i396, ptr %end, align 4
  br label %if.end112

if.end112:                                        ; preds = %wsm_buf_reserve.exit400.thread, %if.end96.if.end112_crit_edge
  %dtim_period = getelementptr inbounds %struct.wsm_join, ptr %arg, i32 0, i32 7
  %121 = ptrtoint ptr %dtim_period to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %dtim_period, align 2
  %123 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %data, align 4
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %122, ptr %124, align 1
  %126 = load ptr, ptr %data, align 4
  %add.ptr115 = getelementptr i8, ptr %126, i32 1
  store ptr %add.ptr115, ptr %data, align 4
  %add.ptr120 = getelementptr i8, ptr %126, i32 2
  %127 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %end, align 4
  %cmp122 = icmp ugt ptr %add.ptr120, %128
  br i1 %cmp122, label %if.then123, label %if.end112.if.end128_crit_edge

if.end112.if.end128_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end128

if.then123:                                       ; preds = %if.end112
  %129 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %data, align 4
  %131 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %wsm_cmd_buf, align 4
  %sub.ptr.lhs.cast.i402 = ptrtoint ptr %130 to i32
  %sub.ptr.rhs.cast.i403 = ptrtoint ptr %132 to i32
  %sub.ptr.sub.i404 = sub i32 %sub.ptr.lhs.cast.i402, %sub.ptr.rhs.cast.i403
  %or.i405 = or i32 %sub.ptr.sub.i404, 1023
  %add1.i406 = add i32 %or.i405, 1
  %call.i407 = tail call noalias ptr @krealloc(ptr noundef %132, i32 noundef %add1.i406, i32 noundef 3265) #11
  %tobool.not.i408 = icmp eq ptr %call.i407, null
  br i1 %tobool.not.i408, label %if.then123.nomem.sink.split_crit_edge, label %wsm_buf_reserve.exit416.thread

if.then123.nomem.sink.split_crit_edge:            ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #10
  br label %nomem.sink.split

wsm_buf_reserve.exit416.thread:                   ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #10
  %133 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %call.i407, ptr %wsm_cmd_buf, align 4
  %arrayidx.i411 = getelementptr i8, ptr %call.i407, i32 %sub.ptr.sub.i404
  %134 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %arrayidx.i411, ptr %data, align 4
  %arrayidx7.i412 = getelementptr i8, ptr %call.i407, i32 %add1.i406
  %135 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %arrayidx7.i412, ptr %end, align 4
  br label %if.end128

if.end128:                                        ; preds = %wsm_buf_reserve.exit416.thread, %if.end112.if.end128_crit_edge
  %flags = getelementptr inbounds %struct.wsm_join, ptr %arg, i32 0, i32 8
  %136 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %flags, align 1
  %138 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %data, align 4
  %140 = ptrtoint ptr %139 to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %137, ptr %139, align 1
  %141 = load ptr, ptr %data, align 4
  %add.ptr131 = getelementptr i8, ptr %141, i32 1
  store ptr %add.ptr131, ptr %data, align 4
  %add.ptr136 = getelementptr i8, ptr %141, i32 5
  %142 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %end, align 4
  %cmp138 = icmp ugt ptr %add.ptr136, %143
  br i1 %cmp138, label %if.then139, label %if.end128.if.end144_crit_edge

if.end128.if.end144_crit_edge:                    ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end144

if.then139:                                       ; preds = %if.end128
  %call140 = tail call fastcc i32 @wsm_buf_reserve(ptr noundef %wsm_cmd_buf, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140)
  %tobool141.not = icmp eq i32 %call140, 0
  br i1 %tobool141.not, label %if.then139.if.end144_crit_edge, label %if.then139.nomem_crit_edge

if.then139.nomem_crit_edge:                       ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #10
  br label %nomem

if.then139.if.end144_crit_edge:                   ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end144

if.end144:                                        ; preds = %if.then139.if.end144_crit_edge, %if.end128.if.end144_crit_edge
  %ssid_len = getelementptr inbounds %struct.wsm_join, ptr %arg, i32 0, i32 9
  %144 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %ssid_len, align 4
  %146 = tail call i32 @llvm.bswap.i32(i32 %145)
  %147 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %data, align 4
  %149 = ptrtoint ptr %148 to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %146, ptr %148, align 4
  %150 = load ptr, ptr %data, align 4
  %add.ptr147 = getelementptr i8, ptr %150, i32 4
  store ptr %add.ptr147, ptr %data, align 4
  %add.ptr152 = getelementptr i8, ptr %150, i32 36
  %151 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %end, align 4
  %cmp154 = icmp ugt ptr %add.ptr152, %152
  br i1 %cmp154, label %if.then155, label %if.end144.if.end160_crit_edge

if.end144.if.end160_crit_edge:                    ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end160

if.then155:                                       ; preds = %if.end144
  %call156 = tail call fastcc i32 @wsm_buf_reserve(ptr noundef %wsm_cmd_buf, i32 noundef 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call156)
  %tobool157.not = icmp eq i32 %call156, 0
  br i1 %tobool157.not, label %if.then155.if.end160_crit_edge, label %if.then155.nomem_crit_edge

if.then155.nomem_crit_edge:                       ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #10
  br label %nomem

if.then155.if.end160_crit_edge:                   ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end160

if.end160:                                        ; preds = %if.then155.if.end160_crit_edge, %if.end144.if.end160_crit_edge
  %153 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %data, align 4
  %ssid = getelementptr inbounds %struct.wsm_join, ptr %arg, i32 0, i32 10
  %155 = call ptr @memcpy(ptr %154, ptr %ssid, i32 32)
  %156 = load ptr, ptr %data, align 4
  %add.ptr164 = getelementptr i8, ptr %156, i32 32
  store ptr %add.ptr164, ptr %data, align 4
  %add.ptr169 = getelementptr i8, ptr %156, i32 36
  %157 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %end, align 4
  %cmp171 = icmp ugt ptr %add.ptr169, %158
  br i1 %cmp171, label %if.then172, label %if.end160.if.end177_crit_edge

if.end160.if.end177_crit_edge:                    ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end177

if.then172:                                       ; preds = %if.end160
  %call173 = tail call fastcc i32 @wsm_buf_reserve(ptr noundef %wsm_cmd_buf, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call173)
  %tobool174.not = icmp eq i32 %call173, 0
  br i1 %tobool174.not, label %if.then172.if.end177_crit_edge, label %if.then172.nomem_crit_edge

if.then172.nomem_crit_edge:                       ; preds = %if.then172
  call void @__sanitizer_cov_trace_pc() #10
  br label %nomem

if.then172.if.end177_crit_edge:                   ; preds = %if.then172
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end177

if.end177:                                        ; preds = %if.then172.if.end177_crit_edge, %if.end160.if.end177_crit_edge
  %beacon_interval = getelementptr inbounds %struct.wsm_join, ptr %arg, i32 0, i32 11
  %159 = ptrtoint ptr %beacon_interval to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %beacon_interval, align 4
  %161 = tail call i32 @llvm.bswap.i32(i32 %160)
  %162 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %data, align 4
  %164 = ptrtoint ptr %163 to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %161, ptr %163, align 4
  %165 = load ptr, ptr %data, align 4
  %add.ptr180 = getelementptr i8, ptr %165, i32 4
  store ptr %add.ptr180, ptr %data, align 4
  %add.ptr185 = getelementptr i8, ptr %165, i32 8
  %166 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %end, align 4
  %cmp187 = icmp ugt ptr %add.ptr185, %167
  br i1 %cmp187, label %if.then188, label %if.end177.if.end193_crit_edge

if.end177.if.end193_crit_edge:                    ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end193

if.then188:                                       ; preds = %if.end177
  %call189 = tail call fastcc i32 @wsm_buf_reserve(ptr noundef %wsm_cmd_buf, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call189)
  %tobool190.not = icmp eq i32 %call189, 0
  br i1 %tobool190.not, label %if.then188.if.end193_crit_edge, label %if.then188.nomem_crit_edge

if.then188.nomem_crit_edge:                       ; preds = %if.then188
  call void @__sanitizer_cov_trace_pc() #10
  br label %nomem

if.then188.if.end193_crit_edge:                   ; preds = %if.then188
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end193

if.end193:                                        ; preds = %if.then188.if.end193_crit_edge, %if.end177.if.end193_crit_edge
  %basic_rate_set = getelementptr inbounds %struct.wsm_join, ptr %arg, i32 0, i32 12
  %168 = ptrtoint ptr %basic_rate_set to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %basic_rate_set, align 4
  %170 = tail call i32 @llvm.bswap.i32(i32 %169)
  %171 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %data, align 4
  %173 = ptrtoint ptr %172 to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %170, ptr %172, align 4
  %174 = load ptr, ptr %data, align 4
  %add.ptr196 = getelementptr i8, ptr %174, i32 4
  store ptr %add.ptr196, ptr %data, align 4
  %tx_burst_idx = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 20
  %175 = ptrtoint ptr %tx_burst_idx to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 -1, ptr %tx_burst_idx, align 4
  %call199 = call fastcc i32 @wsm_cmd_send(ptr noundef %priv, ptr noundef %wsm_cmd_buf, ptr noundef nonnull %resp, i16 noundef zeroext 11, i32 noundef 200)
  %176 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %resp, align 4
  %join_complete_status = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 104
  %178 = ptrtoint ptr %join_complete_status to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %177, ptr %join_complete_status, align 4
  call void @mutex_unlock(ptr noundef %wsm_cmd_mux) #8
  br label %cleanup

nomem.sink.split:                                 ; preds = %if.then123.nomem.sink.split_crit_edge, %if.then107.nomem.sink.split_crit_edge, %if.then91.nomem.sink.split_crit_edge, %if.then75.nomem.sink.split_crit_edge, %if.then59.nomem.sink.split_crit_edge, %if.then43.nomem.sink.split_crit_edge, %if.then27.nomem.sink.split_crit_edge, %if.then11.nomem.sink.split_crit_edge, %if.then.nomem.sink.split_crit_edge
  %179 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %wsm_cmd_buf, align 4
  tail call void @kfree(ptr noundef %180) #8
  %181 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr null, ptr %end, align 4
  %182 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr null, ptr %data, align 4
  %183 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr null, ptr %wsm_cmd_buf, align 4
  br label %nomem

nomem:                                            ; preds = %nomem.sink.split, %if.then188.nomem_crit_edge, %if.then172.nomem_crit_edge, %if.then155.nomem_crit_edge, %if.then139.nomem_crit_edge
  tail call void @mutex_unlock(ptr noundef %wsm_cmd_mux) #8
  br label %cleanup

cleanup:                                          ; preds = %nomem, %if.end193
  %retval.0 = phi i32 [ -12, %nomem ], [ %call199, %if.end193 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %resp) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wsm_set_bss_params(ptr noundef %priv, ptr nocapture noundef readonly %arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %wsm_cmd_buf = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 90
  %wsm_cmd_mux = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 89
  tail call void @mutex_lock_nested(ptr noundef %wsm_cmd_mux, i32 noundef 0) #8
  %data = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 90, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 1
  %end = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 90, i32 2
  %2 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %end, align 4
  %cmp = icmp ugt ptr %add.ptr, %3
  br i1 %cmp, label %if.then, label %entry.if.end2_crit_edge

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end2

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %6 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wsm_cmd_buf, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %7 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %or.i = or i32 %sub.ptr.sub.i, 1023
  %add1.i = add i32 %or.i, 1
  %call.i = tail call noalias ptr @krealloc(ptr noundef %7, i32 noundef %add1.i, i32 noundef 3265) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.nomem_crit_edge, label %wsm_buf_reserve.exit.thread

if.then.nomem_crit_edge:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %nomem

wsm_buf_reserve.exit.thread:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %wsm_cmd_buf, align 4
  %arrayidx.i = getelementptr i8, ptr %call.i, i32 %sub.ptr.sub.i
  %9 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %arrayidx.i, ptr %data, align 4
  %arrayidx7.i = getelementptr i8, ptr %call.i, i32 %add1.i
  %10 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %arrayidx7.i, ptr %end, align 4
  br label %if.end2

if.end2:                                          ; preds = %wsm_buf_reserve.exit.thread, %entry.if.end2_crit_edge
  %11 = ptrtoint ptr %arg to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arg, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool3.not = icmp ne i8 %12, 0
  %conv4 = zext i1 %tobool3.not to i8
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv4, ptr %14, align 1
  %16 = load ptr, ptr %data, align 4
  %add.ptr7 = getelementptr i8, ptr %16, i32 1
  store ptr %add.ptr7, ptr %data, align 4
  %add.ptr10 = getelementptr i8, ptr %16, i32 2
  %17 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %end, align 4
  %cmp12 = icmp ugt ptr %add.ptr10, %18
  br i1 %cmp12, label %if.then14, label %if.end2.if.end19_crit_edge

if.end2.if.end19_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then14:                                        ; preds = %if.end2
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data, align 4
  %21 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %wsm_cmd_buf, align 4
  %sub.ptr.lhs.cast.i91 = ptrtoint ptr %20 to i32
  %sub.ptr.rhs.cast.i92 = ptrtoint ptr %22 to i32
  %sub.ptr.sub.i93 = sub i32 %sub.ptr.lhs.cast.i91, %sub.ptr.rhs.cast.i92
  %or.i94 = or i32 %sub.ptr.sub.i93, 1023
  %add1.i95 = add i32 %or.i94, 1
  %call.i96 = tail call noalias ptr @krealloc(ptr noundef %22, i32 noundef %add1.i95, i32 noundef 3265) #11
  %tobool.not.i97 = icmp eq ptr %call.i96, null
  br i1 %tobool.not.i97, label %if.then14.nomem_crit_edge, label %wsm_buf_reserve.exit105.thread

if.then14.nomem_crit_edge:                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %nomem

wsm_buf_reserve.exit105.thread:                   ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i96, ptr %wsm_cmd_buf, align 4
  %arrayidx.i100 = getelementptr i8, ptr %call.i96, i32 %sub.ptr.sub.i93
  %24 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %arrayidx.i100, ptr %data, align 4
  %arrayidx7.i101 = getelementptr i8, ptr %call.i96, i32 %add1.i95
  %25 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %arrayidx7.i101, ptr %end, align 4
  br label %if.end19

if.end19:                                         ; preds = %wsm_buf_reserve.exit105.thread, %if.end2.if.end19_crit_edge
  %beacon_lost_count = getelementptr inbounds %struct.wsm_set_bss_params, ptr %arg, i32 0, i32 1
  %26 = ptrtoint ptr %beacon_lost_count to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %beacon_lost_count, align 1
  %28 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %27, ptr %29, align 1
  %31 = load ptr, ptr %data, align 4
  %add.ptr22 = getelementptr i8, ptr %31, i32 1
  store ptr %add.ptr22, ptr %data, align 4
  %add.ptr27 = getelementptr i8, ptr %31, i32 3
  %32 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %end, align 4
  %cmp29 = icmp ugt ptr %add.ptr27, %33
  br i1 %cmp29, label %if.then31, label %if.end19.if.end36_crit_edge

if.end19.if.end36_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then31:                                        ; preds = %if.end19
  %34 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data, align 4
  %36 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %wsm_cmd_buf, align 4
  %sub.ptr.lhs.cast.i107 = ptrtoint ptr %35 to i32
  %sub.ptr.rhs.cast.i108 = ptrtoint ptr %37 to i32
  %sub.ptr.sub.i109 = sub i32 %sub.ptr.lhs.cast.i107, %sub.ptr.rhs.cast.i108
  %sub.i = add i32 %sub.ptr.sub.i109, 1
  %or.i110 = or i32 %sub.i, 1023
  %add1.i111 = add i32 %or.i110, 1
  %call.i112 = tail call noalias ptr @krealloc(ptr noundef %37, i32 noundef %add1.i111, i32 noundef 3265) #11
  %tobool.not.i113 = icmp eq ptr %call.i112, null
  br i1 %tobool.not.i113, label %if.then31.nomem_crit_edge, label %wsm_buf_reserve.exit121.thread

if.then31.nomem_crit_edge:                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #10
  br label %nomem

wsm_buf_reserve.exit121.thread:                   ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call.i112, ptr %wsm_cmd_buf, align 4
  %arrayidx.i116 = getelementptr i8, ptr %call.i112, i32 %sub.ptr.sub.i109
  %39 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %arrayidx.i116, ptr %data, align 4
  %arrayidx7.i117 = getelementptr i8, ptr %call.i112, i32 %add1.i111
  %40 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %arrayidx7.i117, ptr %end, align 4
  br label %if.end36

if.end36:                                         ; preds = %wsm_buf_reserve.exit121.thread, %if.end19.if.end36_crit_edge
  %aid = getelementptr inbounds %struct.wsm_set_bss_params, ptr %arg, i32 0, i32 2
  %41 = ptrtoint ptr %aid to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %aid, align 2
  %43 = tail call i16 @llvm.bswap.i16(i16 %42)
  %44 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %data, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %43, ptr %45, align 2
  %47 = load ptr, ptr %data, align 4
  %add.ptr39 = getelementptr i8, ptr %47, i32 2
  store ptr %add.ptr39, ptr %data, align 4
  %add.ptr44 = getelementptr i8, ptr %47, i32 6
  %48 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %end, align 4
  %cmp46 = icmp ugt ptr %add.ptr44, %49
  br i1 %cmp46, label %if.then48, label %if.end36.if.end53_crit_edge

if.end36.if.end53_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.then48:                                        ; preds = %if.end36
  %50 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data, align 4
  %52 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %wsm_cmd_buf, align 4
  %sub.ptr.lhs.cast.i123 = ptrtoint ptr %51 to i32
  %sub.ptr.rhs.cast.i124 = ptrtoint ptr %53 to i32
  %sub.ptr.sub.i125 = sub i32 %sub.ptr.lhs.cast.i123, %sub.ptr.rhs.cast.i124
  %sub.i126 = add i32 %sub.ptr.sub.i125, 3
  %or.i127 = or i32 %sub.i126, 1023
  %add1.i128 = add i32 %or.i127, 1
  %call.i129 = tail call noalias ptr @krealloc(ptr noundef %53, i32 noundef %add1.i128, i32 noundef 3265) #11
  %tobool.not.i130 = icmp eq ptr %call.i129, null
  br i1 %tobool.not.i130, label %if.then48.nomem_crit_edge, label %wsm_buf_reserve.exit138.thread

if.then48.nomem_crit_edge:                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #10
  br label %nomem

wsm_buf_reserve.exit138.thread:                   ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call.i129, ptr %wsm_cmd_buf, align 4
  %arrayidx.i133 = getelementptr i8, ptr %call.i129, i32 %sub.ptr.sub.i125
  %55 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %arrayidx.i133, ptr %data, align 4
  %arrayidx7.i134 = getelementptr i8, ptr %call.i129, i32 %add1.i128
  %56 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %arrayidx7.i134, ptr %end, align 4
  br label %if.end53

if.end53:                                         ; preds = %wsm_buf_reserve.exit138.thread, %if.end36.if.end53_crit_edge
  %operational_rate_set = getelementptr inbounds %struct.wsm_set_bss_params, ptr %arg, i32 0, i32 3
  %57 = ptrtoint ptr %operational_rate_set to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %operational_rate_set, align 4
  %59 = tail call i32 @llvm.bswap.i32(i32 %58)
  %60 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %data, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %59, ptr %61, align 4
  %63 = load ptr, ptr %data, align 4
  %add.ptr56 = getelementptr i8, ptr %63, i32 4
  store ptr %add.ptr56, ptr %data, align 4
  %call59 = tail call fastcc i32 @wsm_cmd_send(ptr noundef %priv, ptr noundef %wsm_cmd_buf, ptr noundef null, i16 noundef zeroext 17, i32 noundef 200)
  br label %cleanup

nomem:                                            ; preds = %if.then48.nomem_crit_edge, %if.then31.nomem_crit_edge, %if.then14.nomem_crit_edge, %if.then.nomem_crit_edge
  %64 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %wsm_cmd_buf, align 4
  tail call void @kfree(ptr noundef %65) #8
  %66 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %end, align 4
  %67 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr null, ptr %data, align 4
  %68 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %wsm_cmd_buf, align 4
  br label %cleanup

cleanup:                                          ; preds = %nomem, %if.end53
  %retval.0 = phi i32 [ -12, %nomem ], [ %call59, %if.end53 ]
  tail call void @mutex_unlock(ptr noundef %wsm_cmd_mux) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wsm_add_key(ptr noundef %priv, ptr nocapture noundef readonly %arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %wsm_cmd_buf = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 90
  %wsm_cmd_mux = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 89
  tail call void @mutex_lock_nested(ptr noundef %wsm_cmd_mux, i32 noundef 0) #8
  %data = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 90, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 44
  %end = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 90, i32 2
  %2 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %end, align 4
  %cmp = icmp ugt ptr %add.ptr, %3
  br i1 %cmp, label %if.then, label %entry.if.end2_crit_edge

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end2

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %6 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wsm_cmd_buf, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %7 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.i = add i32 %sub.ptr.sub.i, 43
  %or.i = or i32 %sub.i, 1023
  %add1.i = add i32 %or.i, 1
  %call.i = tail call noalias ptr @krealloc(ptr noundef %7, i32 noundef %add1.i, i32 noundef 3265) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %nomem, label %wsm_buf_reserve.exit.thread

wsm_buf_reserve.exit.thread:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %wsm_cmd_buf, align 4
  %arrayidx.i = getelementptr i8, ptr %call.i, i32 %sub.ptr.sub.i
  %9 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %arrayidx.i, ptr %data, align 4
  %arrayidx7.i = getelementptr i8, ptr %call.i, i32 %add1.i
  %10 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %arrayidx7.i, ptr %end, align 4
  br label %if.end2

if.end2:                                          ; preds = %wsm_buf_reserve.exit.thread, %entry.if.end2_crit_edge
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %13 = call ptr @memcpy(ptr %12, ptr %arg, i32 44)
  %14 = load ptr, ptr %data, align 4
  %add.ptr5 = getelementptr i8, ptr %14, i32 44
  store ptr %add.ptr5, ptr %data, align 4
  %call6 = tail call fastcc i32 @wsm_cmd_send(ptr noundef %priv, ptr noundef %wsm_cmd_buf, ptr noundef null, i16 noundef zeroext 12, i32 noundef 200)
  br label %cleanup

nomem:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %wsm_cmd_buf, align 4
  tail call void @kfree(ptr noundef %16) #8
  %17 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %end, align 4
  %18 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %data, align 4
  %19 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %wsm_cmd_buf, align 4
  br label %cleanup

cleanup:                                          ; preds = %nomem, %if.end2
  %retval.0 = phi i32 [ -12, %nomem ], [ %call6, %if.end2 ]
  tail call void @mutex_unlock(ptr noundef %wsm_cmd_mux) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wsm_remove_key(ptr noundef %priv, ptr nocapture noundef readonly %arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %wsm_cmd_buf = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 90
  %wsm_cmd_mux = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 89
  tail call void @mutex_lock_nested(ptr noundef %wsm_cmd_mux, i32 noundef 0) #8
  %data = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 90, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 1
  %end = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 90, i32 2
  %2 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %end, align 4
  %cmp = icmp ugt ptr %add.ptr, %3
  br i1 %cmp, label %if.then, label %entry.if.end2_crit_edge

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end2

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %6 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wsm_cmd_buf, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %7 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %or.i = or i32 %sub.ptr.sub.i, 1023
  %add1.i = add i32 %or.i, 1
  %call.i = tail call noalias ptr @krealloc(ptr noundef %7, i32 noundef %add1.i, i32 noundef 3265) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.nomem_crit_edge, label %wsm_buf_reserve.exit.thread

if.then.nomem_crit_edge:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %nomem

wsm_buf_reserve.exit.thread:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %wsm_cmd_buf, align 4
  %arrayidx.i = getelementptr i8, ptr %call.i, i32 %sub.ptr.sub.i
  %9 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %arrayidx.i, ptr %data, align 4
  %arrayidx7.i = getelementptr i8, ptr %call.i, i32 %add1.i
  %10 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %arrayidx7.i, ptr %end, align 4
  br label %if.end2

if.end2:                                          ; preds = %wsm_buf_reserve.exit.thread, %entry.if.end2_crit_edge
  %11 = ptrtoint ptr %arg to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arg, align 1
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %12, ptr %14, align 1
  %16 = load ptr, ptr %data, align 4
  %add.ptr5 = getelementptr i8, ptr %16, i32 1
  store ptr %add.ptr5, ptr %data, align 4
  %add.ptr8 = getelementptr i8, ptr %16, i32 2
  %17 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %end, align 4
  %cmp10 = icmp ugt ptr %add.ptr8, %18
  br i1 %cmp10, label %if.then11, label %if.end2.if.end16_crit_edge

if.end2.if.end16_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then11:                                        ; preds = %if.end2
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data, align 4
  %21 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %wsm_cmd_buf, align 4
  %sub.ptr.lhs.cast.i62 = ptrtoint ptr %20 to i32
  %sub.ptr.rhs.cast.i63 = ptrtoint ptr %22 to i32
  %sub.ptr.sub.i64 = sub i32 %sub.ptr.lhs.cast.i62, %sub.ptr.rhs.cast.i63
  %or.i65 = or i32 %sub.ptr.sub.i64, 1023
  %add1.i66 = add i32 %or.i65, 1
  %call.i67 = tail call noalias ptr @krealloc(ptr noundef %22, i32 noundef %add1.i66, i32 noundef 3265) #11
  %tobool.not.i68 = icmp eq ptr %call.i67, null
  br i1 %tobool.not.i68, label %if.then11.nomem_crit_edge, label %wsm_buf_reserve.exit76.thread

if.then11.nomem_crit_edge:                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %nomem

wsm_buf_reserve.exit76.thread:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i67, ptr %wsm_cmd_buf, align 4
  %arrayidx.i71 = getelementptr i8, ptr %call.i67, i32 %sub.ptr.sub.i64
  %24 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %arrayidx.i71, ptr %data, align 4
  %arrayidx7.i72 = getelementptr i8, ptr %call.i67, i32 %add1.i66
  %25 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %arrayidx7.i72, ptr %end, align 4
  br label %if.end16

if.end16:                                         ; preds = %wsm_buf_reserve.exit76.thread, %if.end2.if.end16_crit_edge
  %26 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %27, align 1
  %29 = load ptr, ptr %data, align 4
  %add.ptr19 = getelementptr i8, ptr %29, i32 1
  store ptr %add.ptr19, ptr %data, align 4
  %add.ptr24 = getelementptr i8, ptr %29, i32 3
  %30 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %end, align 4
  %cmp26 = icmp ugt ptr %add.ptr24, %31
  br i1 %cmp26, label %if.then27, label %if.end16.if.end32_crit_edge

if.end16.if.end32_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.then27:                                        ; preds = %if.end16
  %32 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data, align 4
  %34 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %wsm_cmd_buf, align 4
  %sub.ptr.lhs.cast.i78 = ptrtoint ptr %33 to i32
  %sub.ptr.rhs.cast.i79 = ptrtoint ptr %35 to i32
  %sub.ptr.sub.i80 = sub i32 %sub.ptr.lhs.cast.i78, %sub.ptr.rhs.cast.i79
  %sub.i = add i32 %sub.ptr.sub.i80, 1
  %or.i81 = or i32 %sub.i, 1023
  %add1.i82 = add i32 %or.i81, 1
  %call.i83 = tail call noalias ptr @krealloc(ptr noundef %35, i32 noundef %add1.i82, i32 noundef 3265) #11
  %tobool.not.i84 = icmp eq ptr %call.i83, null
  br i1 %tobool.not.i84, label %if.then27.nomem_crit_edge, label %wsm_buf_reserve.exit92.thread

if.then27.nomem_crit_edge:                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  br label %nomem

wsm_buf_reserve.exit92.thread:                    ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i83, ptr %wsm_cmd_buf, align 4
  %arrayidx.i87 = getelementptr i8, ptr %call.i83, i32 %sub.ptr.sub.i80
  %37 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %arrayidx.i87, ptr %data, align 4
  %arrayidx7.i88 = getelementptr i8, ptr %call.i83, i32 %add1.i82
  %38 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %arrayidx7.i88, ptr %end, align 4
  br label %if.end32

if.end32:                                         ; preds = %wsm_buf_reserve.exit92.thread, %if.end16.if.end32_crit_edge
  %39 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 0, ptr %40, align 2
  %42 = load ptr, ptr %data, align 4
  %add.ptr35 = getelementptr i8, ptr %42, i32 2
  store ptr %add.ptr35, ptr %data, align 4
  %call38 = tail call fastcc i32 @wsm_cmd_send(ptr noundef %priv, ptr noundef %wsm_cmd_buf, ptr noundef null, i16 noundef zeroext 13, i32 noundef 200)
  br label %cleanup

nomem:                                            ; preds = %if.then27.nomem_crit_edge, %if.then11.nomem_crit_edge, %if.then.nomem_crit_edge
  %43 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %wsm_cmd_buf, align 4
  tail call void @kfree(ptr noundef %44) #8
  %45 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %end, align 4
  %46 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %data, align 4
  %47 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %wsm_cmd_buf, align 4
  br label %cleanup

cleanup:                                          ; preds = %nomem, %if.end32
  %retval.0 = phi i32 [ -12, %nomem ], [ %call38, %if.end32 ]
  tail call void @mutex_unlock(ptr noundef %wsm_cmd_mux) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wsm_set_tx_queue_params(ptr noundef %priv, ptr nocapture noundef readonly %arg, i8 noundef zeroext %id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %wsm_cmd_buf = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 90
  %wsm_cmd_mux = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 89
  tail call void @mutex_lock_nested(ptr noundef %wsm_cmd_mux, i32 noundef 0) #8
  %data = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 90, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 1
  %end = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 90, i32 2
  %2 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %end, align 4
  %cmp = icmp ugt ptr %add.ptr, %3
  br i1 %cmp, label %if.then, label %entry.if.end2_crit_edge

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end2

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %6 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wsm_cmd_buf, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %7 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %or.i = or i32 %sub.ptr.sub.i, 1023
  %add1.i = add i32 %or.i, 1
  %call.i = tail call noalias ptr @krealloc(ptr noundef %7, i32 noundef %add1.i, i32 noundef 3265) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.nomem_crit_edge, label %wsm_buf_reserve.exit.thread

if.then.nomem_crit_edge:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %nomem

wsm_buf_reserve.exit.thread:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %wsm_cmd_buf, align 4
  %arrayidx.i = getelementptr i8, ptr %call.i, i32 %sub.ptr.sub.i
  %9 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %arrayidx.i, ptr %data, align 4
  %arrayidx7.i = getelementptr i8, ptr %call.i, i32 %add1.i
  %10 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %arrayidx7.i, ptr %end, align 4
  br label %if.end2

if.end2:                                          ; preds = %wsm_buf_reserve.exit.thread, %entry.if.end2_crit_edge
  %idxprom = zext i8 %id to i32
  %arrayidx = getelementptr [4 x i8], ptr @__const.wsm_set_tx_queue_params.queue_id_to_wmm_aci, i32 0, i32 %idxprom
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx, align 1
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %12, ptr %14, align 1
  %16 = load ptr, ptr %data, align 4
  %add.ptr5 = getelementptr i8, ptr %16, i32 1
  store ptr %add.ptr5, ptr %data, align 4
  %add.ptr8 = getelementptr i8, ptr %16, i32 2
  %17 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %end, align 4
  %cmp10 = icmp ugt ptr %add.ptr8, %18
  br i1 %cmp10, label %if.then11, label %if.end2.if.end16_crit_edge

if.end2.if.end16_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then11:                                        ; preds = %if.end2
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data, align 4
  %21 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %wsm_cmd_buf, align 4
  %sub.ptr.lhs.cast.i149 = ptrtoint ptr %20 to i32
  %sub.ptr.rhs.cast.i150 = ptrtoint ptr %22 to i32
  %sub.ptr.sub.i151 = sub i32 %sub.ptr.lhs.cast.i149, %sub.ptr.rhs.cast.i150
  %or.i152 = or i32 %sub.ptr.sub.i151, 1023
  %add1.i153 = add i32 %or.i152, 1
  %call.i154 = tail call noalias ptr @krealloc(ptr noundef %22, i32 noundef %add1.i153, i32 noundef 3265) #11
  %tobool.not.i155 = icmp eq ptr %call.i154, null
  br i1 %tobool.not.i155, label %if.then11.nomem_crit_edge, label %wsm_buf_reserve.exit163.thread

if.then11.nomem_crit_edge:                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %nomem

wsm_buf_reserve.exit163.thread:                   ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i154, ptr %wsm_cmd_buf, align 4
  %arrayidx.i158 = getelementptr i8, ptr %call.i154, i32 %sub.ptr.sub.i151
  %24 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %arrayidx.i158, ptr %data, align 4
  %arrayidx7.i159 = getelementptr i8, ptr %call.i154, i32 %add1.i153
  %25 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %arrayidx7.i159, ptr %end, align 4
  br label %if.end16

if.end16:                                         ; preds = %wsm_buf_reserve.exit163.thread, %if.end2.if.end16_crit_edge
  %26 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %27, align 1
  %29 = load ptr, ptr %data, align 4
  %add.ptr19 = getelementptr i8, ptr %29, i32 1
  store ptr %add.ptr19, ptr %data, align 4
  %add.ptr24 = getelementptr i8, ptr %29, i32 2
  %30 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %end, align 4
  %cmp26 = icmp ugt ptr %add.ptr24, %31
  br i1 %cmp26, label %if.then27, label %if.end16.if.end32_crit_edge

if.end16.if.end32_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.then27:                                        ; preds = %if.end16
  %32 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data, align 4
  %34 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %wsm_cmd_buf, align 4
  %sub.ptr.lhs.cast.i165 = ptrtoint ptr %33 to i32
  %sub.ptr.rhs.cast.i166 = ptrtoint ptr %35 to i32
  %sub.ptr.sub.i167 = sub i32 %sub.ptr.lhs.cast.i165, %sub.ptr.rhs.cast.i166
  %or.i168 = or i32 %sub.ptr.sub.i167, 1023
  %add1.i169 = add i32 %or.i168, 1
  %call.i170 = tail call noalias ptr @krealloc(ptr noundef %35, i32 noundef %add1.i169, i32 noundef 3265) #11
  %tobool.not.i171 = icmp eq ptr %call.i170, null
  br i1 %tobool.not.i171, label %if.then27.nomem_crit_edge, label %wsm_buf_reserve.exit179.thread

if.then27.nomem_crit_edge:                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  br label %nomem

wsm_buf_reserve.exit179.thread:                   ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i170, ptr %wsm_cmd_buf, align 4
  %arrayidx.i174 = getelementptr i8, ptr %call.i170, i32 %sub.ptr.sub.i167
  %37 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %arrayidx.i174, ptr %data, align 4
  %arrayidx7.i175 = getelementptr i8, ptr %call.i170, i32 %add1.i169
  %38 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %arrayidx7.i175, ptr %end, align 4
  br label %if.end32

if.end32:                                         ; preds = %wsm_buf_reserve.exit179.thread, %if.end16.if.end32_crit_edge
  %39 = ptrtoint ptr %arg to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arg, align 4
  %41 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %data, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %40, ptr %42, align 1
  %44 = load ptr, ptr %data, align 4
  %add.ptr35 = getelementptr i8, ptr %44, i32 1
  store ptr %add.ptr35, ptr %data, align 4
  %add.ptr40 = getelementptr i8, ptr %44, i32 2
  %45 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %end, align 4
  %cmp42 = icmp ugt ptr %add.ptr40, %46
  br i1 %cmp42, label %if.then43, label %if.end32.if.end48_crit_edge

if.end32.if.end48_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.then43:                                        ; preds = %if.end32
  %47 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %data, align 4
  %49 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %wsm_cmd_buf, align 4
  %sub.ptr.lhs.cast.i181 = ptrtoint ptr %48 to i32
  %sub.ptr.rhs.cast.i182 = ptrtoint ptr %50 to i32
  %sub.ptr.sub.i183 = sub i32 %sub.ptr.lhs.cast.i181, %sub.ptr.rhs.cast.i182
  %or.i184 = or i32 %sub.ptr.sub.i183, 1023
  %add1.i185 = add i32 %or.i184, 1
  %call.i186 = tail call noalias ptr @krealloc(ptr noundef %50, i32 noundef %add1.i185, i32 noundef 3265) #11
  %tobool.not.i187 = icmp eq ptr %call.i186, null
  br i1 %tobool.not.i187, label %if.then43.nomem_crit_edge, label %wsm_buf_reserve.exit195.thread

if.then43.nomem_crit_edge:                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #10
  br label %nomem

wsm_buf_reserve.exit195.thread:                   ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #10
  %51 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call.i186, ptr %wsm_cmd_buf, align 4
  %arrayidx.i190 = getelementptr i8, ptr %call.i186, i32 %sub.ptr.sub.i183
  %52 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %arrayidx.i190, ptr %data, align 4
  %arrayidx7.i191 = getelementptr i8, ptr %call.i186, i32 %add1.i185
  %53 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %arrayidx7.i191, ptr %end, align 4
  br label %if.end48

if.end48:                                         ; preds = %wsm_buf_reserve.exit195.thread, %if.end32.if.end48_crit_edge
  %54 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %55, align 1
  %57 = load ptr, ptr %data, align 4
  %add.ptr51 = getelementptr i8, ptr %57, i32 1
  store ptr %add.ptr51, ptr %data, align 4
  %add.ptr56 = getelementptr i8, ptr %57, i32 5
  %58 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %end, align 4
  %cmp58 = icmp ugt ptr %add.ptr56, %59
  br i1 %cmp58, label %if.then59, label %if.end48.if.end64_crit_edge

if.end48.if.end64_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

if.then59:                                        ; preds = %if.end48
  %60 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %data, align 4
  %62 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %wsm_cmd_buf, align 4
  %sub.ptr.lhs.cast.i197 = ptrtoint ptr %61 to i32
  %sub.ptr.rhs.cast.i198 = ptrtoint ptr %63 to i32
  %sub.ptr.sub.i199 = sub i32 %sub.ptr.lhs.cast.i197, %sub.ptr.rhs.cast.i198
  %sub.i = add i32 %sub.ptr.sub.i199, 3
  %or.i200 = or i32 %sub.i, 1023
  %add1.i201 = add i32 %or.i200, 1
  %call.i202 = tail call noalias ptr @krealloc(ptr noundef %63, i32 noundef %add1.i201, i32 noundef 3265) #11
  %tobool.not.i203 = icmp eq ptr %call.i202, null
  br i1 %tobool.not.i203, label %if.then59.nomem_crit_edge, label %wsm_buf_reserve.exit211.thread

if.then59.nomem_crit_edge:                        ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #10
  br label %nomem

wsm_buf_reserve.exit211.thread:                   ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #10
  %64 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call.i202, ptr %wsm_cmd_buf, align 4
  %arrayidx.i206 = getelementptr i8, ptr %call.i202, i32 %sub.ptr.sub.i199
  %65 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %arrayidx.i206, ptr %data, align 4
  %arrayidx7.i207 = getelementptr i8, ptr %call.i202, i32 %add1.i201
  %66 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %arrayidx7.i207, ptr %end, align 4
  br label %if.end64

if.end64:                                         ; preds = %wsm_buf_reserve.exit211.thread, %if.end48.if.end64_crit_edge
  %maxTransmitLifetime = getelementptr inbounds %struct.wsm_set_tx_queue_params, ptr %arg, i32 0, i32 2
  %67 = ptrtoint ptr %maxTransmitLifetime to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %maxTransmitLifetime, align 4
  %69 = tail call i32 @llvm.bswap.i32(i32 %68)
  %70 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %data, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %69, ptr %71, align 4
  %73 = load ptr, ptr %data, align 4
  %add.ptr67 = getelementptr i8, ptr %73, i32 4
  store ptr %add.ptr67, ptr %data, align 4
  %add.ptr72 = getelementptr i8, ptr %73, i32 6
  %74 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %end, align 4
  %cmp74 = icmp ugt ptr %add.ptr72, %75
  br i1 %cmp74, label %if.then75, label %if.end64.if.end80_crit_edge

if.end64.if.end80_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end80

if.then75:                                        ; preds = %if.end64
  %76 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %data, align 4
  %78 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %wsm_cmd_buf, align 4
  %sub.ptr.lhs.cast.i213 = ptrtoint ptr %77 to i32
  %sub.ptr.rhs.cast.i214 = ptrtoint ptr %79 to i32
  %sub.ptr.sub.i215 = sub i32 %sub.ptr.lhs.cast.i213, %sub.ptr.rhs.cast.i214
  %sub.i216 = add i32 %sub.ptr.sub.i215, 1
  %or.i217 = or i32 %sub.i216, 1023
  %add1.i218 = add i32 %or.i217, 1
  %call.i219 = tail call noalias ptr @krealloc(ptr noundef %79, i32 noundef %add1.i218, i32 noundef 3265) #11
  %tobool.not.i220 = icmp eq ptr %call.i219, null
  br i1 %tobool.not.i220, label %if.then75.nomem_crit_edge, label %wsm_buf_reserve.exit228.thread

if.then75.nomem_crit_edge:                        ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #10
  br label %nomem

wsm_buf_reserve.exit228.thread:                   ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #10
  %80 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %call.i219, ptr %wsm_cmd_buf, align 4
  %arrayidx.i223 = getelementptr i8, ptr %call.i219, i32 %sub.ptr.sub.i215
  %81 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %arrayidx.i223, ptr %data, align 4
  %arrayidx7.i224 = getelementptr i8, ptr %call.i219, i32 %add1.i218
  %82 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %arrayidx7.i224, ptr %end, align 4
  br label %if.end80

if.end80:                                         ; preds = %wsm_buf_reserve.exit228.thread, %if.end64.if.end80_crit_edge
  %allowedMediumTime = getelementptr inbounds %struct.wsm_set_tx_queue_params, ptr %arg, i32 0, i32 1
  %83 = ptrtoint ptr %allowedMediumTime to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %allowedMediumTime, align 2
  %85 = tail call i16 @llvm.bswap.i16(i16 %84)
  %86 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %data, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %85, ptr %87, align 2
  %89 = load ptr, ptr %data, align 4
  %add.ptr83 = getelementptr i8, ptr %89, i32 2
  store ptr %add.ptr83, ptr %data, align 4
  %add.ptr88 = getelementptr i8, ptr %89, i32 4
  %90 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %end, align 4
  %cmp90 = icmp ugt ptr %add.ptr88, %91
  br i1 %cmp90, label %if.then91, label %if.end80.if.end96_crit_edge

if.end80.if.end96_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end96

if.then91:                                        ; preds = %if.end80
  %92 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %data, align 4
  %94 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %wsm_cmd_buf, align 4
  %sub.ptr.lhs.cast.i230 = ptrtoint ptr %93 to i32
  %sub.ptr.rhs.cast.i231 = ptrtoint ptr %95 to i32
  %sub.ptr.sub.i232 = sub i32 %sub.ptr.lhs.cast.i230, %sub.ptr.rhs.cast.i231
  %sub.i233 = add i32 %sub.ptr.sub.i232, 1
  %or.i234 = or i32 %sub.i233, 1023
  %add1.i235 = add i32 %or.i234, 1
  %call.i236 = tail call noalias ptr @krealloc(ptr noundef %95, i32 noundef %add1.i235, i32 noundef 3265) #11
  %tobool.not.i237 = icmp eq ptr %call.i236, null
  br i1 %tobool.not.i237, label %if.then91.nomem_crit_edge, label %wsm_buf_reserve.exit245.thread

if.then91.nomem_crit_edge:                        ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #10
  br label %nomem

wsm_buf_reserve.exit245.thread:                   ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #10
  %96 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %call.i236, ptr %wsm_cmd_buf, align 4
  %arrayidx.i240 = getelementptr i8, ptr %call.i236, i32 %sub.ptr.sub.i232
  %97 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %arrayidx.i240, ptr %data, align 4
  %arrayidx7.i241 = getelementptr i8, ptr %call.i236, i32 %add1.i235
  %98 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %arrayidx7.i241, ptr %end, align 4
  br label %if.end96

if.end96:                                         ; preds = %wsm_buf_reserve.exit245.thread, %if.end80.if.end96_crit_edge
  %99 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %data, align 4
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 0, ptr %100, align 2
  %102 = load ptr, ptr %data, align 4
  %add.ptr99 = getelementptr i8, ptr %102, i32 2
  store ptr %add.ptr99, ptr %data, align 4
  %call102 = tail call fastcc i32 @wsm_cmd_send(ptr noundef %priv, ptr noundef %wsm_cmd_buf, ptr noundef null, i16 noundef zeroext 18, i32 noundef 200)
  br label %cleanup

nomem:                                            ; preds = %if.then91.nomem_crit_edge, %if.then75.nomem_crit_edge, %if.then59.nomem_crit_edge, %if.then43.nomem_crit_edge, %if.then27.nomem_crit_edge, %if.then11.nomem_crit_edge, %if.then.nomem_crit_edge
  %103 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %wsm_cmd_buf, align 4
  tail call void @kfree(ptr noundef %104) #8
  %105 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr null, ptr %end, align 4
  %106 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr null, ptr %data, align 4
  %107 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr null, ptr %wsm_cmd_buf, align 4
  br label %cleanup

cleanup:                                          ; preds = %nomem, %if.end96
  %retval.0 = phi i32 [ -12, %nomem ], [ %call102, %if.end96 ]
  tail call void @mutex_unlock(ptr noundef %wsm_cmd_mux) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wsm_set_edca_params(ptr noundef %priv, ptr nocapture noundef readonly %arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %wsm_cmd_buf = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 90
  %wsm_cmd_mux = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 89
  tail call void @mutex_lock_nested(ptr noundef %wsm_cmd_mux, i32 noundef 0) #8
  %data = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 90, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 2
  %end = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 90, i32 2
  %2 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %end, align 4
  %cmp = icmp ugt ptr %add.ptr, %3
  br i1 %cmp, label %if.then, label %entry.if.end2_crit_edge

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end2

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %6 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wsm_cmd_buf, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %7 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.i = add i32 %sub.ptr.sub.i, 1
  %or.i = or i32 %sub.i, 1023
  %add1.i = add i32 %or.i, 1
  %call.i = tail call noalias ptr @krealloc(ptr noundef %7, i32 noundef %add1.i, i32 noundef 3265) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.nomem.sink.split_crit_edge, label %wsm_buf_reserve.exit.thread

if.then.nomem.sink.split_crit_edge:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %nomem.sink.split

wsm_buf_reserve.exit.thread:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %wsm_cmd_buf, align 4
  %arrayidx.i = getelementptr i8, ptr %call.i, i32 %sub.ptr.sub.i
  %9 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %arrayidx.i, ptr %data, align 4
  %arrayidx7.i = getelementptr i8, ptr %call.i, i32 %add1.i
  %10 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %arrayidx7.i, ptr %end, align 4
  br label %if.end2

if.end2:                                          ; preds = %wsm_buf_reserve.exit.thread, %entry.if.end2_crit_edge
  %arrayidx = getelementptr [4 x %struct.wsm_edca_queue_params], ptr %arg, i32 0, i32 3
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx, align 4
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %13, ptr %15, align 2
  %17 = load ptr, ptr %data, align 4
  %add.ptr5 = getelementptr i8, ptr %17, i32 2
  store ptr %add.ptr5, ptr %data, align 4
  %add.ptr8 = getelementptr i8, ptr %17, i32 4
  %18 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %end, align 4
  %cmp10 = icmp ugt ptr %add.ptr8, %19
  br i1 %cmp10, label %if.then11, label %if.end2.if.end16_crit_edge

if.end2.if.end16_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then11:                                        ; preds = %if.end2
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data, align 4
  %22 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %wsm_cmd_buf, align 4
  %sub.ptr.lhs.cast.i505 = ptrtoint ptr %21 to i32
  %sub.ptr.rhs.cast.i506 = ptrtoint ptr %23 to i32
  %sub.ptr.sub.i507 = sub i32 %sub.ptr.lhs.cast.i505, %sub.ptr.rhs.cast.i506
  %sub.i508 = add i32 %sub.ptr.sub.i507, 1
  %or.i509 = or i32 %sub.i508, 1023
  %add1.i510 = add i32 %or.i509, 1
  %call.i511 = tail call noalias ptr @krealloc(ptr noundef %23, i32 noundef %add1.i510, i32 noundef 3265) #11
  %tobool.not.i512 = icmp eq ptr %call.i511, null
  br i1 %tobool.not.i512, label %if.then11.nomem.sink.split_crit_edge, label %wsm_buf_reserve.exit520.thread

if.then11.nomem.sink.split_crit_edge:             ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %nomem.sink.split

wsm_buf_reserve.exit520.thread:                   ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i511, ptr %wsm_cmd_buf, align 4
  %arrayidx.i515 = getelementptr i8, ptr %call.i511, i32 %sub.ptr.sub.i507
  %25 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %arrayidx.i515, ptr %data, align 4
  %arrayidx7.i516 = getelementptr i8, ptr %call.i511, i32 %add1.i510
  %26 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %arrayidx7.i516, ptr %end, align 4
  br label %if.end16

if.end16:                                         ; preds = %wsm_buf_reserve.exit520.thread, %if.end2.if.end16_crit_edge
  %arrayidx18 = getelementptr [4 x %struct.wsm_edca_queue_params], ptr %arg, i32 0, i32 2
  %27 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %arrayidx18, align 4
  %29 = tail call i16 @llvm.bswap.i16(i16 %28)
  %30 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %29, ptr %31, align 2
  %33 = load ptr, ptr %data, align 4
  %add.ptr22 = getelementptr i8, ptr %33, i32 2
  store ptr %add.ptr22, ptr %data, align 4
  %add.ptr27 = getelementptr i8, ptr %33, i32 4
  %34 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %end, align 4
  %cmp29 = icmp ugt ptr %add.ptr27, %35
  br i1 %cmp29, label %if.then30, label %if.end16.if.end35_crit_edge

if.end16.if.end35_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.then30:                                        ; preds = %if.end16
  %36 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data, align 4
  %38 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %wsm_cmd_buf, align 4
  %sub.ptr.lhs.cast.i522 = ptrtoint ptr %37 to i32
  %sub.ptr.rhs.cast.i523 = ptrtoint ptr %39 to i32
  %sub.ptr.sub.i524 = sub i32 %sub.ptr.lhs.cast.i522, %sub.ptr.rhs.cast.i523
  %sub.i525 = add i32 %sub.ptr.sub.i524, 1
  %or.i526 = or i32 %sub.i525, 1023
  %add1.i527 = add i32 %or.i526, 1
  %call.i528 = tail call noalias ptr @krealloc(ptr noundef %39, i32 noundef %add1.i527, i32 noundef 3265) #11
  %tobool.not.i529 = icmp eq ptr %call.i528, null
  br i1 %tobool.not.i529, label %if.then30.nomem.sink.split_crit_edge, label %wsm_buf_reserve.exit537.thread

if.then30.nomem.sink.split_crit_edge:             ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  br label %nomem.sink.split

wsm_buf_reserve.exit537.thread:                   ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call.i528, ptr %wsm_cmd_buf, align 4
  %arrayidx.i532 = getelementptr i8, ptr %call.i528, i32 %sub.ptr.sub.i524
  %41 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %arrayidx.i532, ptr %data, align 4
  %arrayidx7.i533 = getelementptr i8, ptr %call.i528, i32 %add1.i527
  %42 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %arrayidx7.i533, ptr %end, align 4
  br label %if.end35

if.end35:                                         ; preds = %wsm_buf_reserve.exit537.thread, %if.end16.if.end35_crit_edge
  %arrayidx37 = getelementptr [4 x %struct.wsm_edca_queue_params], ptr %arg, i32 0, i32 1
  %43 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %arrayidx37, align 4
  %45 = tail call i16 @llvm.bswap.i16(i16 %44)
  %46 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %data, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %45, ptr %47, align 2
  %49 = load ptr, ptr %data, align 4
  %add.ptr41 = getelementptr i8, ptr %49, i32 2
  store ptr %add.ptr41, ptr %data, align 4
  %add.ptr46 = getelementptr i8, ptr %49, i32 4
  %50 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %end, align 4
  %cmp48 = icmp ugt ptr %add.ptr46, %51
  br i1 %cmp48, label %if.then49, label %if.end35.if.end54_crit_edge

if.end35.if.end54_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

if.then49:                                        ; preds = %if.end35
  %52 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %data, align 4
  %54 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %wsm_cmd_buf, align 4
  %sub.ptr.lhs.cast.i539 = ptrtoint ptr %53 to i32
  %sub.ptr.rhs.cast.i540 = ptrtoint ptr %55 to i32
  %sub.ptr.sub.i541 = sub i32 %sub.ptr.lhs.cast.i539, %sub.ptr.rhs.cast.i540
  %sub.i542 = add i32 %sub.ptr.sub.i541, 1
  %or.i543 = or i32 %sub.i542, 1023
  %add1.i544 = add i32 %or.i543, 1
  %call.i545 = tail call noalias ptr @krealloc(ptr noundef %55, i32 noundef %add1.i544, i32 noundef 3265) #11
  %tobool.not.i546 = icmp eq ptr %call.i545, null
  br i1 %tobool.not.i546, label %if.then49.nomem.sink.split_crit_edge, label %wsm_buf_reserve.exit554.thread

if.then49.nomem.sink.split_crit_edge:             ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #10
  br label %nomem.sink.split

wsm_buf_reserve.exit554.thread:                   ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #10
  %56 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call.i545, ptr %wsm_cmd_buf, align 4
  %arrayidx.i549 = getelementptr i8, ptr %call.i545, i32 %sub.ptr.sub.i541
  %57 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %arrayidx.i549, ptr %data, align 4
  %arrayidx7.i550 = getelementptr i8, ptr %call.i545, i32 %add1.i544
  %58 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %arrayidx7.i550, ptr %end, align 4
  br label %if.end54

if.end54:                                         ; preds = %wsm_buf_reserve.exit554.thread, %if.end35.if.end54_crit_edge
  %59 = ptrtoint ptr %arg to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %arg, align 4
  %61 = tail call i16 @llvm.bswap.i16(i16 %60)
  %62 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %data, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %61, ptr %63, align 2
  %65 = load ptr, ptr %data, align 4
  %add.ptr60 = getelementptr i8, ptr %65, i32 2
  store ptr %add.ptr60, ptr %data, align 4
  %add.ptr65 = getelementptr i8, ptr %65, i32 4
  %66 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %end, align 4
  %cmp67 = icmp ugt ptr %add.ptr65, %67
  br i1 %cmp67, label %if.then68, label %if.end54.if.end73_crit_edge

if.end54.if.end73_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end73

if.then68:                                        ; preds = %if.end54
  %68 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %data, align 4
  %70 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %wsm_cmd_buf, align 4
  %sub.ptr.lhs.cast.i556 = ptrtoint ptr %69 to i32
  %sub.ptr.rhs.cast.i557 = ptrtoint ptr %71 to i32
  %sub.ptr.sub.i558 = sub i32 %sub.ptr.lhs.cast.i556, %sub.ptr.rhs.cast.i557
  %sub.i559 = add i32 %sub.ptr.sub.i558, 1
  %or.i560 = or i32 %sub.i559, 1023
  %add1.i561 = add i32 %or.i560, 1
  %call.i562 = tail call noalias ptr @krealloc(ptr noundef %71, i32 noundef %add1.i561, i32 noundef 3265) #11
  %tobool.not.i563 = icmp eq ptr %call.i562, null
  br i1 %tobool.not.i563, label %if.then68.nomem.sink.split_crit_edge, label %wsm_buf_reserve.exit571.thread

if.then68.nomem.sink.split_crit_edge:             ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #10
  br label %nomem.sink.split

wsm_buf_reserve.exit571.thread:                   ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #10
  %72 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call.i562, ptr %wsm_cmd_buf, align 4
  %arrayidx.i566 = getelementptr i8, ptr %call.i562, i32 %sub.ptr.sub.i558
  %73 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %arrayidx.i566, ptr %data, align 4
  %arrayidx7.i567 = getelementptr i8, ptr %call.i562, i32 %add1.i561
  %74 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %arrayidx7.i567, ptr %end, align 4
  br label %if.end73

if.end73:                                         ; preds = %wsm_buf_reserve.exit571.thread, %if.end54.if.end73_crit_edge
  %cwmax = getelementptr [4 x %struct.wsm_edca_queue_params], ptr %arg, i32 0, i32 3, i32 1
  %75 = ptrtoint ptr %cwmax to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %cwmax, align 2
  %77 = tail call i16 @llvm.bswap.i16(i16 %76)
  %78 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %data, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %77, ptr %79, align 2
  %81 = load ptr, ptr %data, align 4
  %add.ptr78 = getelementptr i8, ptr %81, i32 2
  store ptr %add.ptr78, ptr %data, align 4
  %add.ptr83 = getelementptr i8, ptr %81, i32 4
  %82 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %end, align 4
  %cmp85 = icmp ugt ptr %add.ptr83, %83
  br i1 %cmp85, label %if.then86, label %if.end73.if.end91_crit_edge

if.end73.if.end91_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end91

if.then86:                                        ; preds = %if.end73
  %84 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %data, align 4
  %86 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %wsm_cmd_buf, align 4
  %sub.ptr.lhs.cast.i573 = ptrtoint ptr %85 to i32
  %sub.ptr.rhs.cast.i574 = ptrtoint ptr %87 to i32
  %sub.ptr.sub.i575 = sub i32 %sub.ptr.lhs.cast.i573, %sub.ptr.rhs.cast.i574
  %sub.i576 = add i32 %sub.ptr.sub.i575, 1
  %or.i577 = or i32 %sub.i576, 1023
  %add1.i578 = add i32 %or.i577, 1
  %call.i579 = tail call noalias ptr @krealloc(ptr noundef %87, i32 noundef %add1.i578, i32 noundef 3265) #11
  %tobool.not.i580 = icmp eq ptr %call.i579, null
  br i1 %tobool.not.i580, label %if.then86.nomem.sink.split_crit_edge, label %wsm_buf_reserve.exit588.thread

if.then86.nomem.sink.split_crit_edge:             ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #10
  br label %nomem.sink.split

wsm_buf_reserve.exit588.thread:                   ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #10
  %88 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %call.i579, ptr %wsm_cmd_buf, align 4
  %arrayidx.i583 = getelementptr i8, ptr %call.i579, i32 %sub.ptr.sub.i575
  %89 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %arrayidx.i583, ptr %data, align 4
  %arrayidx7.i584 = getelementptr i8, ptr %call.i579, i32 %add1.i578
  %90 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %arrayidx7.i584, ptr %end, align 4
  br label %if.end91

if.end91:                                         ; preds = %wsm_buf_reserve.exit588.thread, %if.end73.if.end91_crit_edge
  %cwmax94 = getelementptr [4 x %struct.wsm_edca_queue_params], ptr %arg, i32 0, i32 2, i32 1
  %91 = ptrtoint ptr %cwmax94 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %cwmax94, align 2
  %93 = tail call i16 @llvm.bswap.i16(i16 %92)
  %94 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %data, align 4
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 %93, ptr %95, align 2
  %97 = load ptr, ptr %data, align 4
  %add.ptr97 = getelementptr i8, ptr %97, i32 2
  store ptr %add.ptr97, ptr %data, align 4
  %add.ptr102 = getelementptr i8, ptr %97, i32 4
  %98 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %end, align 4
  %cmp104 = icmp ugt ptr %add.ptr102, %99
  br i1 %cmp104, label %if.then105, label %if.end91.if.end110_crit_edge

if.end91.if.end110_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end110

if.then105:                                       ; preds = %if.end91
  %100 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %data, align 4
  %102 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %wsm_cmd_buf, align 4
  %sub.ptr.lhs.cast.i590 = ptrtoint ptr %101 to i32
  %sub.ptr.rhs.cast.i591 = ptrtoint ptr %103 to i32
  %sub.ptr.sub.i592 = sub i32 %sub.ptr.lhs.cast.i590, %sub.ptr.rhs.cast.i591
  %sub.i593 = add i32 %sub.ptr.sub.i592, 1
  %or.i594 = or i32 %sub.i593, 1023
  %add1.i595 = add i32 %or.i594, 1
  %call.i596 = tail call noalias ptr @krealloc(ptr noundef %103, i32 noundef %add1.i595, i32 noundef 3265) #11
  %tobool.not.i597 = icmp eq ptr %call.i596, null
  br i1 %tobool.not.i597, label %if.then105.nomem.sink.split_crit_edge, label %wsm_buf_reserve.exit605.thread

if.then105.nomem.sink.split_crit_edge:            ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #10
  br label %nomem.sink.split

wsm_buf_reserve.exit605.thread:                   ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #10
  %104 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %call.i596, ptr %wsm_cmd_buf, align 4
  %arrayidx.i600 = getelementptr i8, ptr %call.i596, i32 %sub.ptr.sub.i592
  %105 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %arrayidx.i600, ptr %data, align 4
  %arrayidx7.i601 = getelementptr i8, ptr %call.i596, i32 %add1.i595
  %106 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %arrayidx7.i601, ptr %end, align 4
  br label %if.end110

if.end110:                                        ; preds = %wsm_buf_reserve.exit605.thread, %if.end91.if.end110_crit_edge
  %cwmax113 = getelementptr [4 x %struct.wsm_edca_queue_params], ptr %arg, i32 0, i32 1, i32 1
  %107 = ptrtoint ptr %cwmax113 to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %cwmax113, align 2
  %109 = tail call i16 @llvm.bswap.i16(i16 %108)
  %110 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %data, align 4
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 %109, ptr %111, align 2
  %113 = load ptr, ptr %data, align 4
  %add.ptr116 = getelementptr i8, ptr %113, i32 2
  store ptr %add.ptr116, ptr %data, align 4
  %add.ptr121 = getelementptr i8, ptr %113, i32 4
  %114 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %end, align 4
  %cmp123 = icmp ugt ptr %add.ptr121, %115
  br i1 %cmp123, label %if.then124, label %if.end110.if.end129_crit_edge

if.end110.if.end129_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end129

if.then124:                                       ; preds = %if.end110
  %116 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %data, align 4
  %118 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %wsm_cmd_buf, align 4
  %sub.ptr.lhs.cast.i607 = ptrtoint ptr %117 to i32
  %sub.ptr.rhs.cast.i608 = ptrtoint ptr %119 to i32
  %sub.ptr.sub.i609 = sub i32 %sub.ptr.lhs.cast.i607, %sub.ptr.rhs.cast.i608
  %sub.i610 = add i32 %sub.ptr.sub.i609, 1
  %or.i611 = or i32 %sub.i610, 1023
  %add1.i612 = add i32 %or.i611, 1
  %call.i613 = tail call noalias ptr @krealloc(ptr noundef %119, i32 noundef %add1.i612, i32 noundef 3265) #11
  %tobool.not.i614 = icmp eq ptr %call.i613, null
  br i1 %tobool.not.i614, label %if.then124.nomem.sink.split_crit_edge, label %wsm_buf_reserve.exit622.thread

if.then124.nomem.sink.split_crit_edge:            ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #10
  br label %nomem.sink.split

wsm_buf_reserve.exit622.thread:                   ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #10
  %120 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %call.i613, ptr %wsm_cmd_buf, align 4
  %arrayidx.i617 = getelementptr i8, ptr %call.i613, i32 %sub.ptr.sub.i609
  %121 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %arrayidx.i617, ptr %data, align 4
  %arrayidx7.i618 = getelementptr i8, ptr %call.i613, i32 %add1.i612
  %122 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %arrayidx7.i618, ptr %end, align 4
  br label %if.end129

if.end129:                                        ; preds = %wsm_buf_reserve.exit622.thread, %if.end110.if.end129_crit_edge
  %cwmax132 = getelementptr inbounds %struct.wsm_edca_queue_params, ptr %arg, i32 0, i32 1
  %123 = ptrtoint ptr %cwmax132 to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %cwmax132, align 2
  %125 = tail call i16 @llvm.bswap.i16(i16 %124)
  %126 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %data, align 4
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_store2_noabort(i32 %128)
  store i16 %125, ptr %127, align 2
  %129 = load ptr, ptr %data, align 4
  %add.ptr135 = getelementptr i8, ptr %129, i32 2
  store ptr %add.ptr135, ptr %data, align 4
  %add.ptr140 = getelementptr i8, ptr %129, i32 3
  %130 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %end, align 4
  %cmp142 = icmp ugt ptr %add.ptr140, %131
  br i1 %cmp142, label %if.then143, label %if.end129.if.end148_crit_edge

if.end129.if.end148_crit_edge:                    ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end148

if.then143:                                       ; preds = %if.end129
  %132 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %data, align 4
  %134 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %wsm_cmd_buf, align 4
  %sub.ptr.lhs.cast.i624 = ptrtoint ptr %133 to i32
  %sub.ptr.rhs.cast.i625 = ptrtoint ptr %135 to i32
  %sub.ptr.sub.i626 = sub i32 %sub.ptr.lhs.cast.i624, %sub.ptr.rhs.cast.i625
  %or.i627 = or i32 %sub.ptr.sub.i626, 1023
  %add1.i628 = add i32 %or.i627, 1
  %call.i629 = tail call noalias ptr @krealloc(ptr noundef %135, i32 noundef %add1.i628, i32 noundef 3265) #11
  %tobool.not.i630 = icmp eq ptr %call.i629, null
  br i1 %tobool.not.i630, label %if.then143.nomem.sink.split_crit_edge, label %wsm_buf_reserve.exit638.thread

if.then143.nomem.sink.split_crit_edge:            ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #10
  br label %nomem.sink.split

wsm_buf_reserve.exit638.thread:                   ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #10
  %136 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %call.i629, ptr %wsm_cmd_buf, align 4
  %arrayidx.i633 = getelementptr i8, ptr %call.i629, i32 %sub.ptr.sub.i626
  %137 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %arrayidx.i633, ptr %data, align 4
  %arrayidx7.i634 = getelementptr i8, ptr %call.i629, i32 %add1.i628
  %138 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %arrayidx7.i634, ptr %end, align 4
  br label %if.end148

if.end148:                                        ; preds = %wsm_buf_reserve.exit638.thread, %if.end129.if.end148_crit_edge
  %aifns = getelementptr [4 x %struct.wsm_edca_queue_params], ptr %arg, i32 0, i32 3, i32 2
  %139 = ptrtoint ptr %aifns to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %aifns, align 4
  %conv = trunc i16 %140 to i8
  %141 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %data, align 4
  %143 = ptrtoint ptr %142 to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %conv, ptr %142, align 1
  %144 = load ptr, ptr %data, align 4
  %add.ptr153 = getelementptr i8, ptr %144, i32 1
  store ptr %add.ptr153, ptr %data, align 4
  %add.ptr158 = getelementptr i8, ptr %144, i32 2
  %145 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %end, align 4
  %cmp160 = icmp ugt ptr %add.ptr158, %146
  br i1 %cmp160, label %if.then162, label %if.end148.if.end167_crit_edge

if.end148.if.end167_crit_edge:                    ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end167

if.then162:                                       ; preds = %if.end148
  %call163 = tail call fastcc i32 @wsm_buf_reserve(ptr noundef %wsm_cmd_buf, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call163)
  %tobool164.not = icmp eq i32 %call163, 0
  br i1 %tobool164.not, label %if.then162.if.end167_crit_edge, label %if.then162.cleanup_crit_edge

if.then162.cleanup_crit_edge:                     ; preds = %if.then162
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then162.if.end167_crit_edge:                   ; preds = %if.then162
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end167

if.end167:                                        ; preds = %if.then162.if.end167_crit_edge, %if.end148.if.end167_crit_edge
  %aifns170 = getelementptr [4 x %struct.wsm_edca_queue_params], ptr %arg, i32 0, i32 2, i32 2
  %147 = ptrtoint ptr %aifns170 to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %aifns170, align 4
  %conv171 = trunc i16 %148 to i8
  %149 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %data, align 4
  %151 = ptrtoint ptr %150 to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 %conv171, ptr %150, align 1
  %152 = load ptr, ptr %data, align 4
  %add.ptr174 = getelementptr i8, ptr %152, i32 1
  store ptr %add.ptr174, ptr %data, align 4
  %add.ptr179 = getelementptr i8, ptr %152, i32 2
  %153 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %end, align 4
  %cmp181 = icmp ugt ptr %add.ptr179, %154
  br i1 %cmp181, label %if.then183, label %if.end167.if.end188_crit_edge

if.end167.if.end188_crit_edge:                    ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end188

if.then183:                                       ; preds = %if.end167
  %call184 = tail call fastcc i32 @wsm_buf_reserve(ptr noundef %wsm_cmd_buf, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call184)
  %tobool185.not = icmp eq i32 %call184, 0
  br i1 %tobool185.not, label %if.then183.if.end188_crit_edge, label %if.then183.cleanup_crit_edge

if.then183.cleanup_crit_edge:                     ; preds = %if.then183
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then183.if.end188_crit_edge:                   ; preds = %if.then183
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end188

if.end188:                                        ; preds = %if.then183.if.end188_crit_edge, %if.end167.if.end188_crit_edge
  %aifns191 = getelementptr [4 x %struct.wsm_edca_queue_params], ptr %arg, i32 0, i32 1, i32 2
  %155 = ptrtoint ptr %aifns191 to i32
  call void @__asan_load2_noabort(i32 %155)
  %156 = load i16, ptr %aifns191, align 4
  %conv192 = trunc i16 %156 to i8
  %157 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %data, align 4
  %159 = ptrtoint ptr %158 to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 %conv192, ptr %158, align 1
  %160 = load ptr, ptr %data, align 4
  %add.ptr195 = getelementptr i8, ptr %160, i32 1
  store ptr %add.ptr195, ptr %data, align 4
  %add.ptr200 = getelementptr i8, ptr %160, i32 2
  %161 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %end, align 4
  %cmp202 = icmp ugt ptr %add.ptr200, %162
  br i1 %cmp202, label %if.then204, label %if.end188.if.end209_crit_edge

if.end188.if.end209_crit_edge:                    ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end209

if.then204:                                       ; preds = %if.end188
  %call205 = tail call fastcc i32 @wsm_buf_reserve(ptr noundef %wsm_cmd_buf, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call205)
  %tobool206.not = icmp eq i32 %call205, 0
  br i1 %tobool206.not, label %if.then204.if.end209_crit_edge, label %if.then204.cleanup_crit_edge

if.then204.cleanup_crit_edge:                     ; preds = %if.then204
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then204.if.end209_crit_edge:                   ; preds = %if.then204
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end209

if.end209:                                        ; preds = %if.then204.if.end209_crit_edge, %if.end188.if.end209_crit_edge
  %aifns212 = getelementptr inbounds %struct.wsm_edca_queue_params, ptr %arg, i32 0, i32 2
  %163 = ptrtoint ptr %aifns212 to i32
  call void @__asan_load2_noabort(i32 %163)
  %164 = load i16, ptr %aifns212, align 4
  %conv213 = trunc i16 %164 to i8
  %165 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %data, align 4
  %167 = ptrtoint ptr %166 to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 %conv213, ptr %166, align 1
  %168 = load ptr, ptr %data, align 4
  %add.ptr216 = getelementptr i8, ptr %168, i32 1
  store ptr %add.ptr216, ptr %data, align 4
  %add.ptr221 = getelementptr i8, ptr %168, i32 3
  %169 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %end, align 4
  %cmp223 = icmp ugt ptr %add.ptr221, %170
  br i1 %cmp223, label %if.then225, label %if.end209.if.end230_crit_edge

if.end209.if.end230_crit_edge:                    ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end230

if.then225:                                       ; preds = %if.end209
  %call226 = tail call fastcc i32 @wsm_buf_reserve(ptr noundef %wsm_cmd_buf, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call226)
  %tobool227.not = icmp eq i32 %call226, 0
  br i1 %tobool227.not, label %if.then225.if.end230_crit_edge, label %if.then225.cleanup_crit_edge

if.then225.cleanup_crit_edge:                     ; preds = %if.then225
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then225.if.end230_crit_edge:                   ; preds = %if.then225
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end230

if.end230:                                        ; preds = %if.then225.if.end230_crit_edge, %if.end209.if.end230_crit_edge
  %txop_limit = getelementptr [4 x %struct.wsm_edca_queue_params], ptr %arg, i32 0, i32 3, i32 3
  %171 = ptrtoint ptr %txop_limit to i32
  call void @__asan_load2_noabort(i32 %171)
  %172 = load i16, ptr %txop_limit, align 2
  %173 = tail call i16 @llvm.bswap.i16(i16 %172)
  %174 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %data, align 4
  %176 = ptrtoint ptr %175 to i32
  call void @__asan_store2_noabort(i32 %176)
  store i16 %173, ptr %175, align 2
  %177 = load ptr, ptr %data, align 4
  %add.ptr235 = getelementptr i8, ptr %177, i32 2
  store ptr %add.ptr235, ptr %data, align 4
  %add.ptr240 = getelementptr i8, ptr %177, i32 4
  %178 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %end, align 4
  %cmp242 = icmp ugt ptr %add.ptr240, %179
  br i1 %cmp242, label %if.then244, label %if.end230.if.end249_crit_edge

if.end230.if.end249_crit_edge:                    ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end249

if.then244:                                       ; preds = %if.end230
  %call245 = tail call fastcc i32 @wsm_buf_reserve(ptr noundef %wsm_cmd_buf, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call245)
  %tobool246.not = icmp eq i32 %call245, 0
  br i1 %tobool246.not, label %if.then244.if.end249_crit_edge, label %if.then244.cleanup_crit_edge

if.then244.cleanup_crit_edge:                     ; preds = %if.then244
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then244.if.end249_crit_edge:                   ; preds = %if.then244
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end249

if.end249:                                        ; preds = %if.then244.if.end249_crit_edge, %if.end230.if.end249_crit_edge
  %txop_limit252 = getelementptr [4 x %struct.wsm_edca_queue_params], ptr %arg, i32 0, i32 2, i32 3
  %180 = ptrtoint ptr %txop_limit252 to i32
  call void @__asan_load2_noabort(i32 %180)
  %181 = load i16, ptr %txop_limit252, align 2
  %182 = tail call i16 @llvm.bswap.i16(i16 %181)
  %183 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %data, align 4
  %185 = ptrtoint ptr %184 to i32
  call void @__asan_store2_noabort(i32 %185)
  store i16 %182, ptr %184, align 2
  %186 = load ptr, ptr %data, align 4
  %add.ptr255 = getelementptr i8, ptr %186, i32 2
  store ptr %add.ptr255, ptr %data, align 4
  %add.ptr260 = getelementptr i8, ptr %186, i32 4
  %187 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %end, align 4
  %cmp262 = icmp ugt ptr %add.ptr260, %188
  br i1 %cmp262, label %if.then264, label %if.end249.if.end269_crit_edge

if.end249.if.end269_crit_edge:                    ; preds = %if.end249
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end269

if.then264:                                       ; preds = %if.end249
  %call265 = tail call fastcc i32 @wsm_buf_reserve(ptr noundef %wsm_cmd_buf, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call265)
  %tobool266.not = icmp eq i32 %call265, 0
  br i1 %tobool266.not, label %if.then264.if.end269_crit_edge, label %if.then264.cleanup_crit_edge

if.then264.cleanup_crit_edge:                     ; preds = %if.then264
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then264.if.end269_crit_edge:                   ; preds = %if.then264
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end269

if.end269:                                        ; preds = %if.then264.if.end269_crit_edge, %if.end249.if.end269_crit_edge
  %txop_limit272 = getelementptr [4 x %struct.wsm_edca_queue_params], ptr %arg, i32 0, i32 1, i32 3
  %189 = ptrtoint ptr %txop_limit272 to i32
  call void @__asan_load2_noabort(i32 %189)
  %190 = load i16, ptr %txop_limit272, align 2
  %191 = tail call i16 @llvm.bswap.i16(i16 %190)
  %192 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %data, align 4
  %194 = ptrtoint ptr %193 to i32
  call void @__asan_store2_noabort(i32 %194)
  store i16 %191, ptr %193, align 2
  %195 = load ptr, ptr %data, align 4
  %add.ptr275 = getelementptr i8, ptr %195, i32 2
  store ptr %add.ptr275, ptr %data, align 4
  %add.ptr280 = getelementptr i8, ptr %195, i32 4
  %196 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %end, align 4
  %cmp282 = icmp ugt ptr %add.ptr280, %197
  br i1 %cmp282, label %if.then284, label %if.end269.if.end289_crit_edge

if.end269.if.end289_crit_edge:                    ; preds = %if.end269
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end289

if.then284:                                       ; preds = %if.end269
  %call285 = tail call fastcc i32 @wsm_buf_reserve(ptr noundef %wsm_cmd_buf, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call285)
  %tobool286.not = icmp eq i32 %call285, 0
  br i1 %tobool286.not, label %if.then284.if.end289_crit_edge, label %if.then284.cleanup_crit_edge

if.then284.cleanup_crit_edge:                     ; preds = %if.then284
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then284.if.end289_crit_edge:                   ; preds = %if.then284
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end289

if.end289:                                        ; preds = %if.then284.if.end289_crit_edge, %if.end269.if.end289_crit_edge
  %txop_limit292 = getelementptr inbounds %struct.wsm_edca_queue_params, ptr %arg, i32 0, i32 3
  %198 = ptrtoint ptr %txop_limit292 to i32
  call void @__asan_load2_noabort(i32 %198)
  %199 = load i16, ptr %txop_limit292, align 2
  %200 = tail call i16 @llvm.bswap.i16(i16 %199)
  %201 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %data, align 4
  %203 = ptrtoint ptr %202 to i32
  call void @__asan_store2_noabort(i32 %203)
  store i16 %200, ptr %202, align 2
  %204 = load ptr, ptr %data, align 4
  %add.ptr295 = getelementptr i8, ptr %204, i32 2
  store ptr %add.ptr295, ptr %data, align 4
  %add.ptr300 = getelementptr i8, ptr %204, i32 6
  %205 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %end, align 4
  %cmp302 = icmp ugt ptr %add.ptr300, %206
  br i1 %cmp302, label %if.then304, label %if.end289.if.end309_crit_edge

if.end289.if.end309_crit_edge:                    ; preds = %if.end289
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end309

if.then304:                                       ; preds = %if.end289
  %call305 = tail call fastcc i32 @wsm_buf_reserve(ptr noundef %wsm_cmd_buf, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call305)
  %tobool306.not = icmp eq i32 %call305, 0
  br i1 %tobool306.not, label %if.then304.if.end309_crit_edge, label %if.then304.cleanup_crit_edge

if.then304.cleanup_crit_edge:                     ; preds = %if.then304
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then304.if.end309_crit_edge:                   ; preds = %if.then304
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end309

if.end309:                                        ; preds = %if.then304.if.end309_crit_edge, %if.end289.if.end309_crit_edge
  %max_rx_lifetime = getelementptr [4 x %struct.wsm_edca_queue_params], ptr %arg, i32 0, i32 3, i32 4
  %207 = ptrtoint ptr %max_rx_lifetime to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %max_rx_lifetime, align 4
  %209 = tail call i32 @llvm.bswap.i32(i32 %208)
  %210 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %data, align 4
  %212 = ptrtoint ptr %211 to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 %209, ptr %211, align 4
  %213 = load ptr, ptr %data, align 4
  %add.ptr314 = getelementptr i8, ptr %213, i32 4
  store ptr %add.ptr314, ptr %data, align 4
  %add.ptr319 = getelementptr i8, ptr %213, i32 8
  %214 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %end, align 4
  %cmp321 = icmp ugt ptr %add.ptr319, %215
  br i1 %cmp321, label %if.then323, label %if.end309.if.end328_crit_edge

if.end309.if.end328_crit_edge:                    ; preds = %if.end309
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end328

if.then323:                                       ; preds = %if.end309
  %call324 = tail call fastcc i32 @wsm_buf_reserve(ptr noundef %wsm_cmd_buf, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call324)
  %tobool325.not = icmp eq i32 %call324, 0
  br i1 %tobool325.not, label %if.then323.if.end328_crit_edge, label %if.then323.cleanup_crit_edge

if.then323.cleanup_crit_edge:                     ; preds = %if.then323
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then323.if.end328_crit_edge:                   ; preds = %if.then323
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end328

if.end328:                                        ; preds = %if.then323.if.end328_crit_edge, %if.end309.if.end328_crit_edge
  %max_rx_lifetime331 = getelementptr [4 x %struct.wsm_edca_queue_params], ptr %arg, i32 0, i32 2, i32 4
  %216 = ptrtoint ptr %max_rx_lifetime331 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %max_rx_lifetime331, align 4
  %218 = tail call i32 @llvm.bswap.i32(i32 %217)
  %219 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %data, align 4
  %221 = ptrtoint ptr %220 to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 %218, ptr %220, align 4
  %222 = load ptr, ptr %data, align 4
  %add.ptr334 = getelementptr i8, ptr %222, i32 4
  store ptr %add.ptr334, ptr %data, align 4
  %add.ptr339 = getelementptr i8, ptr %222, i32 8
  %223 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %end, align 4
  %cmp341 = icmp ugt ptr %add.ptr339, %224
  br i1 %cmp341, label %if.then343, label %if.end328.if.end348_crit_edge

if.end328.if.end348_crit_edge:                    ; preds = %if.end328
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end348

if.then343:                                       ; preds = %if.end328
  %call344 = tail call fastcc i32 @wsm_buf_reserve(ptr noundef %wsm_cmd_buf, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call344)
  %tobool345.not = icmp eq i32 %call344, 0
  br i1 %tobool345.not, label %if.then343.if.end348_crit_edge, label %if.then343.cleanup_crit_edge

if.then343.cleanup_crit_edge:                     ; preds = %if.then343
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then343.if.end348_crit_edge:                   ; preds = %if.then343
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end348

if.end348:                                        ; preds = %if.then343.if.end348_crit_edge, %if.end328.if.end348_crit_edge
  %max_rx_lifetime351 = getelementptr [4 x %struct.wsm_edca_queue_params], ptr %arg, i32 0, i32 1, i32 4
  %225 = ptrtoint ptr %max_rx_lifetime351 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %max_rx_lifetime351, align 4
  %227 = tail call i32 @llvm.bswap.i32(i32 %226)
  %228 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %data, align 4
  %230 = ptrtoint ptr %229 to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 %227, ptr %229, align 4
  %231 = load ptr, ptr %data, align 4
  %add.ptr354 = getelementptr i8, ptr %231, i32 4
  store ptr %add.ptr354, ptr %data, align 4
  %add.ptr359 = getelementptr i8, ptr %231, i32 8
  %232 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %end, align 4
  %cmp361 = icmp ugt ptr %add.ptr359, %233
  br i1 %cmp361, label %if.then363, label %if.end348.if.end368_crit_edge

if.end348.if.end368_crit_edge:                    ; preds = %if.end348
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end368

if.then363:                                       ; preds = %if.end348
  %call364 = tail call fastcc i32 @wsm_buf_reserve(ptr noundef %wsm_cmd_buf, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call364)
  %tobool365.not = icmp eq i32 %call364, 0
  br i1 %tobool365.not, label %if.then363.if.end368_crit_edge, label %if.then363.cleanup_crit_edge

if.then363.cleanup_crit_edge:                     ; preds = %if.then363
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then363.if.end368_crit_edge:                   ; preds = %if.then363
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end368

if.end368:                                        ; preds = %if.then363.if.end368_crit_edge, %if.end348.if.end368_crit_edge
  %max_rx_lifetime371 = getelementptr inbounds %struct.wsm_edca_queue_params, ptr %arg, i32 0, i32 4
  %234 = ptrtoint ptr %max_rx_lifetime371 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %max_rx_lifetime371, align 4
  %236 = tail call i32 @llvm.bswap.i32(i32 %235)
  %237 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %data, align 4
  %239 = ptrtoint ptr %238 to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 %236, ptr %238, align 4
  %240 = load ptr, ptr %data, align 4
  %add.ptr374 = getelementptr i8, ptr %240, i32 4
  store ptr %add.ptr374, ptr %data, align 4
  %call377 = tail call fastcc i32 @wsm_cmd_send(ptr noundef %priv, ptr noundef %wsm_cmd_buf, ptr noundef null, i16 noundef zeroext 19, i32 noundef 200)
  br label %cleanup

nomem.sink.split:                                 ; preds = %if.then143.nomem.sink.split_crit_edge, %if.then124.nomem.sink.split_crit_edge, %if.then105.nomem.sink.split_crit_edge, %if.then86.nomem.sink.split_crit_edge, %if.then68.nomem.sink.split_crit_edge, %if.then49.nomem.sink.split_crit_edge, %if.then30.nomem.sink.split_crit_edge, %if.then11.nomem.sink.split_crit_edge, %if.then.nomem.sink.split_crit_edge
  %241 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %wsm_cmd_buf, align 4
  tail call void @kfree(ptr noundef %242) #8
  %243 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %243)
  store ptr null, ptr %end, align 4
  %244 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %244)
  store ptr null, ptr %data, align 4
  %245 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_store4_noabort(i32 %245)
  store ptr null, ptr %wsm_cmd_buf, align 4
  br label %cleanup

cleanup:                                          ; preds = %nomem.sink.split, %if.end368, %if.then363.cleanup_crit_edge, %if.then343.cleanup_crit_edge, %if.then323.cleanup_crit_edge, %if.then304.cleanup_crit_edge, %if.then284.cleanup_crit_edge, %if.then264.cleanup_crit_edge, %if.then244.cleanup_crit_edge, %if.then225.cleanup_crit_edge, %if.then204.cleanup_crit_edge, %if.then183.cleanup_crit_edge, %if.then162.cleanup_crit_edge
  %retval.0 = phi i32 [ %call377, %if.end368 ], [ -12, %nomem.sink.split ], [ -12, %if.then363.cleanup_crit_edge ], [ -12, %if.then343.cleanup_crit_edge ], [ -12, %if.then323.cleanup_crit_edge ], [ -12, %if.then304.cleanup_crit_edge ], [ -12, %if.then284.cleanup_crit_edge ], [ -12, %if.then264.cleanup_crit_edge ], [ -12, %if.then244.cleanup_crit_edge ], [ -12, %if.then225.cleanup_crit_edge ], [ -12, %if.then204.cleanup_crit_edge ], [ -12, %if.then183.cleanup_crit_edge ], [ -12, %if.then162.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %wsm_cmd_mux) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wsm_switch_channel(ptr noundef %priv, ptr nocapture noundef readonly %arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %wsm_cmd_buf = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 90
  %wsm_cmd_mux = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 89
  tail call void @mutex_lock_nested(ptr noundef %wsm_cmd_mux, i32 noundef 0) #8
  %data = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 90, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 1
  %end = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 90, i32 2
  %2 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %end, align 4
  %cmp = icmp ugt ptr %add.ptr, %3
  br i1 %cmp, label %if.then, label %entry.if.end2_crit_edge

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end2

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %6 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wsm_cmd_buf, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %7 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %or.i = or i32 %sub.ptr.sub.i, 1023
  %add1.i = add i32 %or.i, 1
  %call.i = tail call noalias ptr @krealloc(ptr noundef %7, i32 noundef %add1.i, i32 noundef 3265) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.nomem_crit_edge, label %wsm_buf_reserve.exit.thread

if.then.nomem_crit_edge:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %nomem

wsm_buf_reserve.exit.thread:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %wsm_cmd_buf, align 4
  %arrayidx.i = getelementptr i8, ptr %call.i, i32 %sub.ptr.sub.i
  %9 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %arrayidx.i, ptr %data, align 4
  %arrayidx7.i = getelementptr i8, ptr %call.i, i32 %add1.i
  %10 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %arrayidx7.i, ptr %end, align 4
  br label %if.end2

if.end2:                                          ; preds = %wsm_buf_reserve.exit.thread, %entry.if.end2_crit_edge
  %11 = ptrtoint ptr %arg to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arg, align 2
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %12, ptr %14, align 1
  %16 = load ptr, ptr %data, align 4
  %add.ptr5 = getelementptr i8, ptr %16, i32 1
  store ptr %add.ptr5, ptr %data, align 4
  %add.ptr8 = getelementptr i8, ptr %16, i32 2
  %17 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %end, align 4
  %cmp10 = icmp ugt ptr %add.ptr8, %18
  br i1 %cmp10, label %if.then11, label %if.end2.if.end16_crit_edge

if.end2.if.end16_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then11:                                        ; preds = %if.end2
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data, align 4
  %21 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %wsm_cmd_buf, align 4
  %sub.ptr.lhs.cast.i71 = ptrtoint ptr %20 to i32
  %sub.ptr.rhs.cast.i72 = ptrtoint ptr %22 to i32
  %sub.ptr.sub.i73 = sub i32 %sub.ptr.lhs.cast.i71, %sub.ptr.rhs.cast.i72
  %or.i74 = or i32 %sub.ptr.sub.i73, 1023
  %add1.i75 = add i32 %or.i74, 1
  %call.i76 = tail call noalias ptr @krealloc(ptr noundef %22, i32 noundef %add1.i75, i32 noundef 3265) #11
  %tobool.not.i77 = icmp eq ptr %call.i76, null
  br i1 %tobool.not.i77, label %if.then11.nomem_crit_edge, label %wsm_buf_reserve.exit85.thread

if.then11.nomem_crit_edge:                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %nomem

wsm_buf_reserve.exit85.thread:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i76, ptr %wsm_cmd_buf, align 4
  %arrayidx.i80 = getelementptr i8, ptr %call.i76, i32 %sub.ptr.sub.i73
  %24 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %arrayidx.i80, ptr %data, align 4
  %arrayidx7.i81 = getelementptr i8, ptr %call.i76, i32 %add1.i75
  %25 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %arrayidx7.i81, ptr %end, align 4
  br label %if.end16

if.end16:                                         ; preds = %wsm_buf_reserve.exit85.thread, %if.end2.if.end16_crit_edge
  %switch_count = getelementptr inbounds %struct.wsm_switch_channel, ptr %arg, i32 0, i32 1
  %26 = ptrtoint ptr %switch_count to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %switch_count, align 1
  %28 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %27, ptr %29, align 1
  %31 = load ptr, ptr %data, align 4
  %add.ptr19 = getelementptr i8, ptr %31, i32 1
  store ptr %add.ptr19, ptr %data, align 4
  %add.ptr24 = getelementptr i8, ptr %31, i32 3
  %32 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %end, align 4
  %cmp26 = icmp ugt ptr %add.ptr24, %33
  br i1 %cmp26, label %if.then27, label %if.end16.if.end32_crit_edge

if.end16.if.end32_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.then27:                                        ; preds = %if.end16
  %34 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data, align 4
  %36 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %wsm_cmd_buf, align 4
  %sub.ptr.lhs.cast.i87 = ptrtoint ptr %35 to i32
  %sub.ptr.rhs.cast.i88 = ptrtoint ptr %37 to i32
  %sub.ptr.sub.i89 = sub i32 %sub.ptr.lhs.cast.i87, %sub.ptr.rhs.cast.i88
  %sub.i = add i32 %sub.ptr.sub.i89, 1
  %or.i90 = or i32 %sub.i, 1023
  %add1.i91 = add i32 %or.i90, 1
  %call.i92 = tail call noalias ptr @krealloc(ptr noundef %37, i32 noundef %add1.i91, i32 noundef 3265) #11
  %tobool.not.i93 = icmp eq ptr %call.i92, null
  br i1 %tobool.not.i93, label %if.then27.nomem_crit_edge, label %wsm_buf_reserve.exit101.thread

if.then27.nomem_crit_edge:                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  br label %nomem

wsm_buf_reserve.exit101.thread:                   ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call.i92, ptr %wsm_cmd_buf, align 4
  %arrayidx.i96 = getelementptr i8, ptr %call.i92, i32 %sub.ptr.sub.i89
  %39 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %arrayidx.i96, ptr %data, align 4
  %arrayidx7.i97 = getelementptr i8, ptr %call.i92, i32 %add1.i91
  %40 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %arrayidx7.i97, ptr %end, align 4
  br label %if.end32

if.end32:                                         ; preds = %wsm_buf_reserve.exit101.thread, %if.end16.if.end32_crit_edge
  %channel_number = getelementptr inbounds %struct.wsm_switch_channel, ptr %arg, i32 0, i32 2
  %41 = ptrtoint ptr %channel_number to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %channel_number, align 2
  %43 = tail call i16 @llvm.bswap.i16(i16 %42)
  %44 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %data, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %43, ptr %45, align 2
  %47 = load ptr, ptr %data, align 4
  %add.ptr35 = getelementptr i8, ptr %47, i32 2
  store ptr %add.ptr35, ptr %data, align 4
  %channel_switch_in_progress = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 38
  %48 = ptrtoint ptr %channel_switch_in_progress to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1, ptr %channel_switch_in_progress, align 4
  %call38 = tail call fastcc i32 @wsm_cmd_send(ptr noundef %priv, ptr noundef %wsm_cmd_buf, ptr noundef null, i16 noundef zeroext 22, i32 noundef 200)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end32.cleanup_crit_edge, label %if.then40

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then40:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %channel_switch_in_progress to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %channel_switch_in_progress, align 4
  br label %cleanup

nomem:                                            ; preds = %if.then27.nomem_crit_edge, %if.then11.nomem_crit_edge, %if.then.nomem_crit_edge
  %50 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %wsm_cmd_buf, align 4
  tail call void @kfree(ptr noundef %51) #8
  %52 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %end, align 4
  %53 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %data, align 4
  %54 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %wsm_cmd_buf, align 4
  br label %cleanup

cleanup:                                          ; preds = %nomem, %if.then40, %if.end32.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %nomem ], [ %call38, %if.then40 ], [ %call38, %if.end32.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %wsm_cmd_mux) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wsm_set_pm(ptr noundef %priv, ptr nocapture noundef readonly %arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %wsm_cmd_buf = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 90
  %ps_mode_switch_in_progress = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 140
  %0 = ptrtoint ptr %ps_mode_switch_in_progress to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %ps_mode_switch_in_progress, align 4
  %wsm_cmd_mux = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 89
  tail call void @mutex_lock_nested(ptr noundef %wsm_cmd_mux, i32 noundef 0) #8
  %data = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 90, i32 1
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 1
  %end = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 90, i32 2
  %3 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %end, align 4
  %cmp = icmp ugt ptr %add.ptr, %4
  br i1 %cmp, label %if.then, label %entry.if.end2_crit_edge

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end2

if.then:                                          ; preds = %entry
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %7 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wsm_cmd_buf, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %6 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %8 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %or.i = or i32 %sub.ptr.sub.i, 1023
  %add1.i = add i32 %or.i, 1
  %call.i = tail call noalias ptr @krealloc(ptr noundef %8, i32 noundef %add1.i, i32 noundef 3265) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.nomem_crit_edge, label %wsm_buf_reserve.exit.thread

if.then.nomem_crit_edge:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %nomem

wsm_buf_reserve.exit.thread:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %wsm_cmd_buf, align 4
  %arrayidx.i = getelementptr i8, ptr %call.i, i32 %sub.ptr.sub.i
  %10 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %arrayidx.i, ptr %data, align 4
  %arrayidx7.i = getelementptr i8, ptr %call.i, i32 %add1.i
  %11 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %arrayidx7.i, ptr %end, align 4
  br label %if.end2

if.end2:                                          ; preds = %wsm_buf_reserve.exit.thread, %entry.if.end2_crit_edge
  %12 = ptrtoint ptr %arg to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arg, align 1
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %13, ptr %15, align 1
  %17 = load ptr, ptr %data, align 4
  %add.ptr5 = getelementptr i8, ptr %17, i32 1
  store ptr %add.ptr5, ptr %data, align 4
  %add.ptr8 = getelementptr i8, ptr %17, i32 2
  %18 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %end, align 4
  %cmp10 = icmp ugt ptr %add.ptr8, %19
  br i1 %cmp10, label %if.then11, label %if.end2.if.end16_crit_edge

if.end2.if.end16_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then11:                                        ; preds = %if.end2
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data, align 4
  %22 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %wsm_cmd_buf, align 4
  %sub.ptr.lhs.cast.i87 = ptrtoint ptr %21 to i32
  %sub.ptr.rhs.cast.i88 = ptrtoint ptr %23 to i32
  %sub.ptr.sub.i89 = sub i32 %sub.ptr.lhs.cast.i87, %sub.ptr.rhs.cast.i88
  %or.i90 = or i32 %sub.ptr.sub.i89, 1023
  %add1.i91 = add i32 %or.i90, 1
  %call.i92 = tail call noalias ptr @krealloc(ptr noundef %23, i32 noundef %add1.i91, i32 noundef 3265) #11
  %tobool.not.i93 = icmp eq ptr %call.i92, null
  br i1 %tobool.not.i93, label %if.then11.nomem_crit_edge, label %wsm_buf_reserve.exit101.thread

if.then11.nomem_crit_edge:                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %nomem

wsm_buf_reserve.exit101.thread:                   ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i92, ptr %wsm_cmd_buf, align 4
  %arrayidx.i96 = getelementptr i8, ptr %call.i92, i32 %sub.ptr.sub.i89
  %25 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %arrayidx.i96, ptr %data, align 4
  %arrayidx7.i97 = getelementptr i8, ptr %call.i92, i32 %add1.i91
  %26 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %arrayidx7.i97, ptr %end, align 4
  br label %if.end16

if.end16:                                         ; preds = %wsm_buf_reserve.exit101.thread, %if.end2.if.end16_crit_edge
  %fast_psm_idle_period = getelementptr inbounds %struct.wsm_set_pm, ptr %arg, i32 0, i32 1
  %27 = ptrtoint ptr %fast_psm_idle_period to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %fast_psm_idle_period, align 1
  %29 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %28, ptr %30, align 1
  %32 = load ptr, ptr %data, align 4
  %add.ptr19 = getelementptr i8, ptr %32, i32 1
  store ptr %add.ptr19, ptr %data, align 4
  %add.ptr24 = getelementptr i8, ptr %32, i32 2
  %33 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %end, align 4
  %cmp26 = icmp ugt ptr %add.ptr24, %34
  br i1 %cmp26, label %if.then27, label %if.end16.if.end32_crit_edge

if.end16.if.end32_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.then27:                                        ; preds = %if.end16
  %35 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data, align 4
  %37 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %wsm_cmd_buf, align 4
  %sub.ptr.lhs.cast.i103 = ptrtoint ptr %36 to i32
  %sub.ptr.rhs.cast.i104 = ptrtoint ptr %38 to i32
  %sub.ptr.sub.i105 = sub i32 %sub.ptr.lhs.cast.i103, %sub.ptr.rhs.cast.i104
  %or.i106 = or i32 %sub.ptr.sub.i105, 1023
  %add1.i107 = add i32 %or.i106, 1
  %call.i108 = tail call noalias ptr @krealloc(ptr noundef %38, i32 noundef %add1.i107, i32 noundef 3265) #11
  %tobool.not.i109 = icmp eq ptr %call.i108, null
  br i1 %tobool.not.i109, label %if.then27.nomem_crit_edge, label %wsm_buf_reserve.exit117.thread

if.then27.nomem_crit_edge:                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  br label %nomem

wsm_buf_reserve.exit117.thread:                   ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.i108, ptr %wsm_cmd_buf, align 4
  %arrayidx.i112 = getelementptr i8, ptr %call.i108, i32 %sub.ptr.sub.i105
  %40 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %arrayidx.i112, ptr %data, align 4
  %arrayidx7.i113 = getelementptr i8, ptr %call.i108, i32 %add1.i107
  %41 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %arrayidx7.i113, ptr %end, align 4
  br label %if.end32

if.end32:                                         ; preds = %wsm_buf_reserve.exit117.thread, %if.end16.if.end32_crit_edge
  %ap_psm_change_period = getelementptr inbounds %struct.wsm_set_pm, ptr %arg, i32 0, i32 2
  %42 = ptrtoint ptr %ap_psm_change_period to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %ap_psm_change_period, align 1
  %44 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %data, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %43, ptr %45, align 1
  %47 = load ptr, ptr %data, align 4
  %add.ptr35 = getelementptr i8, ptr %47, i32 1
  store ptr %add.ptr35, ptr %data, align 4
  %add.ptr40 = getelementptr i8, ptr %47, i32 2
  %48 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %end, align 4
  %cmp42 = icmp ugt ptr %add.ptr40, %49
  br i1 %cmp42, label %if.then43, label %if.end32.if.end48_crit_edge

if.end32.if.end48_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.then43:                                        ; preds = %if.end32
  %50 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data, align 4
  %52 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %wsm_cmd_buf, align 4
  %sub.ptr.lhs.cast.i119 = ptrtoint ptr %51 to i32
  %sub.ptr.rhs.cast.i120 = ptrtoint ptr %53 to i32
  %sub.ptr.sub.i121 = sub i32 %sub.ptr.lhs.cast.i119, %sub.ptr.rhs.cast.i120
  %or.i122 = or i32 %sub.ptr.sub.i121, 1023
  %add1.i123 = add i32 %or.i122, 1
  %call.i124 = tail call noalias ptr @krealloc(ptr noundef %53, i32 noundef %add1.i123, i32 noundef 3265) #11
  %tobool.not.i125 = icmp eq ptr %call.i124, null
  br i1 %tobool.not.i125, label %if.then43.nomem_crit_edge, label %wsm_buf_reserve.exit133.thread

if.then43.nomem_crit_edge:                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #10
  br label %nomem

wsm_buf_reserve.exit133.thread:                   ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call.i124, ptr %wsm_cmd_buf, align 4
  %arrayidx.i128 = getelementptr i8, ptr %call.i124, i32 %sub.ptr.sub.i121
  %55 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %arrayidx.i128, ptr %data, align 4
  %arrayidx7.i129 = getelementptr i8, ptr %call.i124, i32 %add1.i123
  %56 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %arrayidx7.i129, ptr %end, align 4
  br label %if.end48

if.end48:                                         ; preds = %wsm_buf_reserve.exit133.thread, %if.end32.if.end48_crit_edge
  %min_auto_pspoll_period = getelementptr inbounds %struct.wsm_set_pm, ptr %arg, i32 0, i32 3
  %57 = ptrtoint ptr %min_auto_pspoll_period to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %min_auto_pspoll_period, align 1
  %59 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %data, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %58, ptr %60, align 1
  %62 = load ptr, ptr %data, align 4
  %add.ptr51 = getelementptr i8, ptr %62, i32 1
  store ptr %add.ptr51, ptr %data, align 4
  %call54 = tail call fastcc i32 @wsm_cmd_send(ptr noundef %priv, ptr noundef %wsm_cmd_buf, ptr noundef null, i16 noundef zeroext 16, i32 noundef 200)
  br label %cleanup

nomem:                                            ; preds = %if.then43.nomem_crit_edge, %if.then27.nomem_crit_edge, %if.then11.nomem_crit_edge, %if.then.nomem_crit_edge
  %63 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %wsm_cmd_buf, align 4
  tail call void @kfree(ptr noundef %64) #8
  %65 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %end, align 4
  %66 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %data, align 4
  %67 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr null, ptr %wsm_cmd_buf, align 4
  br label %cleanup

cleanup:                                          ; preds = %nomem, %if.end48
  %retval.0 = phi i32 [ -12, %nomem ], [ %call54, %if.end48 ]
  tail call void @mutex_unlock(ptr noundef %wsm_cmd_mux) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wsm_start(ptr noundef %priv, ptr nocapture noundef readonly %arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %wsm_cmd_buf = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 90
  %wsm_cmd_mux = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 89
  tail call void @mutex_lock_nested(ptr noundef %wsm_cmd_mux, i32 noundef 0) #8
  %data = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 90, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 1
  %end = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 90, i32 2
  %2 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %end, align 4
  %cmp = icmp ugt ptr %add.ptr, %3
  br i1 %cmp, label %if.then, label %entry.if.end2_crit_edge

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end2

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %6 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wsm_cmd_buf, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %7 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %or.i = or i32 %sub.ptr.sub.i, 1023
  %add1.i = add i32 %or.i, 1
  %call.i = tail call noalias ptr @krealloc(ptr noundef %7, i32 noundef %add1.i, i32 noundef 3265) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.nomem.sink.split_crit_edge, label %wsm_buf_reserve.exit.thread

if.then.nomem.sink.split_crit_edge:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %nomem.sink.split

wsm_buf_reserve.exit.thread:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %wsm_cmd_buf, align 4
  %arrayidx.i = getelementptr i8, ptr %call.i, i32 %sub.ptr.sub.i
  %9 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %arrayidx.i, ptr %data, align 4
  %arrayidx7.i = getelementptr i8, ptr %call.i, i32 %add1.i
  %10 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %arrayidx7.i, ptr %end, align 4
  br label %if.end2

if.end2:                                          ; preds = %wsm_buf_reserve.exit.thread, %entry.if.end2_crit_edge
  %11 = ptrtoint ptr %arg to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arg, align 4
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %12, ptr %14, align 1
  %16 = load ptr, ptr %data, align 4
  %add.ptr5 = getelementptr i8, ptr %16, i32 1
  store ptr %add.ptr5, ptr %data, align 4
  %add.ptr8 = getelementptr i8, ptr %16, i32 2
  %17 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %end, align 4
  %cmp10 = icmp ugt ptr %add.ptr8, %18
  br i1 %cmp10, label %if.then11, label %if.end2.if.end16_crit_edge

if.end2.if.end16_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then11:                                        ; preds = %if.end2
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data, align 4
  %21 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %wsm_cmd_buf, align 4
  %sub.ptr.lhs.cast.i241 = ptrtoint ptr %20 to i32
  %sub.ptr.rhs.cast.i242 = ptrtoint ptr %22 to i32
  %sub.ptr.sub.i243 = sub i32 %sub.ptr.lhs.cast.i241, %sub.ptr.rhs.cast.i242
  %or.i244 = or i32 %sub.ptr.sub.i243, 1023
  %add1.i245 = add i32 %or.i244, 1
  %call.i246 = tail call noalias ptr @krealloc(ptr noundef %22, i32 noundef %add1.i245, i32 noundef 3265) #11
  %tobool.not.i247 = icmp eq ptr %call.i246, null
  br i1 %tobool.not.i247, label %if.then11.nomem.sink.split_crit_edge, label %wsm_buf_reserve.exit255.thread

if.then11.nomem.sink.split_crit_edge:             ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %nomem.sink.split

wsm_buf_reserve.exit255.thread:                   ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i246, ptr %wsm_cmd_buf, align 4
  %arrayidx.i250 = getelementptr i8, ptr %call.i246, i32 %sub.ptr.sub.i243
  %24 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %arrayidx.i250, ptr %data, align 4
  %arrayidx7.i251 = getelementptr i8, ptr %call.i246, i32 %add1.i245
  %25 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %arrayidx7.i251, ptr %end, align 4
  br label %if.end16

if.end16:                                         ; preds = %wsm_buf_reserve.exit255.thread, %if.end2.if.end16_crit_edge
  %band = getelementptr inbounds %struct.wsm_start, ptr %arg, i32 0, i32 1
  %26 = ptrtoint ptr %band to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %band, align 1
  %28 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %27, ptr %29, align 1
  %31 = load ptr, ptr %data, align 4
  %add.ptr19 = getelementptr i8, ptr %31, i32 1
  store ptr %add.ptr19, ptr %data, align 4
  %add.ptr24 = getelementptr i8, ptr %31, i32 3
  %32 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %end, align 4
  %cmp26 = icmp ugt ptr %add.ptr24, %33
  br i1 %cmp26, label %if.then27, label %if.end16.if.end32_crit_edge

if.end16.if.end32_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.then27:                                        ; preds = %if.end16
  %34 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data, align 4
  %36 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %wsm_cmd_buf, align 4
  %sub.ptr.lhs.cast.i257 = ptrtoint ptr %35 to i32
  %sub.ptr.rhs.cast.i258 = ptrtoint ptr %37 to i32
  %sub.ptr.sub.i259 = sub i32 %sub.ptr.lhs.cast.i257, %sub.ptr.rhs.cast.i258
  %sub.i = add i32 %sub.ptr.sub.i259, 1
  %or.i260 = or i32 %sub.i, 1023
  %add1.i261 = add i32 %or.i260, 1
  %call.i262 = tail call noalias ptr @krealloc(ptr noundef %37, i32 noundef %add1.i261, i32 noundef 3265) #11
  %tobool.not.i263 = icmp eq ptr %call.i262, null
  br i1 %tobool.not.i263, label %if.then27.nomem.sink.split_crit_edge, label %wsm_buf_reserve.exit271.thread

if.then27.nomem.sink.split_crit_edge:             ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  br label %nomem.sink.split

wsm_buf_reserve.exit271.thread:                   ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call.i262, ptr %wsm_cmd_buf, align 4
  %arrayidx.i266 = getelementptr i8, ptr %call.i262, i32 %sub.ptr.sub.i259
  %39 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %arrayidx.i266, ptr %data, align 4
  %arrayidx7.i267 = getelementptr i8, ptr %call.i262, i32 %add1.i261
  %40 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %arrayidx7.i267, ptr %end, align 4
  br label %if.end32

if.end32:                                         ; preds = %wsm_buf_reserve.exit271.thread, %if.end16.if.end32_crit_edge
  %channel_number = getelementptr inbounds %struct.wsm_start, ptr %arg, i32 0, i32 2
  %41 = ptrtoint ptr %channel_number to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %channel_number, align 2
  %43 = tail call i16 @llvm.bswap.i16(i16 %42)
  %44 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %data, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %43, ptr %45, align 2
  %47 = load ptr, ptr %data, align 4
  %add.ptr35 = getelementptr i8, ptr %47, i32 2
  store ptr %add.ptr35, ptr %data, align 4
  %add.ptr40 = getelementptr i8, ptr %47, i32 6
  %48 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %end, align 4
  %cmp42 = icmp ugt ptr %add.ptr40, %49
  br i1 %cmp42, label %if.then43, label %if.end32.if.end48_crit_edge

if.end32.if.end48_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.then43:                                        ; preds = %if.end32
  %50 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data, align 4
  %52 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %wsm_cmd_buf, align 4
  %sub.ptr.lhs.cast.i273 = ptrtoint ptr %51 to i32
  %sub.ptr.rhs.cast.i274 = ptrtoint ptr %53 to i32
  %sub.ptr.sub.i275 = sub i32 %sub.ptr.lhs.cast.i273, %sub.ptr.rhs.cast.i274
  %sub.i276 = add i32 %sub.ptr.sub.i275, 3
  %or.i277 = or i32 %sub.i276, 1023
  %add1.i278 = add i32 %or.i277, 1
  %call.i279 = tail call noalias ptr @krealloc(ptr noundef %53, i32 noundef %add1.i278, i32 noundef 3265) #11
  %tobool.not.i280 = icmp eq ptr %call.i279, null
  br i1 %tobool.not.i280, label %if.then43.nomem.sink.split_crit_edge, label %wsm_buf_reserve.exit288.thread

if.then43.nomem.sink.split_crit_edge:             ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #10
  br label %nomem.sink.split

wsm_buf_reserve.exit288.thread:                   ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call.i279, ptr %wsm_cmd_buf, align 4
  %arrayidx.i283 = getelementptr i8, ptr %call.i279, i32 %sub.ptr.sub.i275
  %55 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %arrayidx.i283, ptr %data, align 4
  %arrayidx7.i284 = getelementptr i8, ptr %call.i279, i32 %add1.i278
  %56 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %arrayidx7.i284, ptr %end, align 4
  br label %if.end48

if.end48:                                         ; preds = %wsm_buf_reserve.exit288.thread, %if.end32.if.end48_crit_edge
  %ct_window = getelementptr inbounds %struct.wsm_start, ptr %arg, i32 0, i32 3
  %57 = ptrtoint ptr %ct_window to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ct_window, align 4
  %59 = tail call i32 @llvm.bswap.i32(i32 %58)
  %60 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %data, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %59, ptr %61, align 4
  %63 = load ptr, ptr %data, align 4
  %add.ptr51 = getelementptr i8, ptr %63, i32 4
  store ptr %add.ptr51, ptr %data, align 4
  %add.ptr56 = getelementptr i8, ptr %63, i32 8
  %64 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %end, align 4
  %cmp58 = icmp ugt ptr %add.ptr56, %65
  br i1 %cmp58, label %if.then59, label %if.end48.if.end64_crit_edge

if.end48.if.end64_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

if.then59:                                        ; preds = %if.end48
  %66 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %data, align 4
  %68 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %wsm_cmd_buf, align 4
  %sub.ptr.lhs.cast.i290 = ptrtoint ptr %67 to i32
  %sub.ptr.rhs.cast.i291 = ptrtoint ptr %69 to i32
  %sub.ptr.sub.i292 = sub i32 %sub.ptr.lhs.cast.i290, %sub.ptr.rhs.cast.i291
  %sub.i293 = add i32 %sub.ptr.sub.i292, 3
  %or.i294 = or i32 %sub.i293, 1023
  %add1.i295 = add i32 %or.i294, 1
  %call.i296 = tail call noalias ptr @krealloc(ptr noundef %69, i32 noundef %add1.i295, i32 noundef 3265) #11
  %tobool.not.i297 = icmp eq ptr %call.i296, null
  br i1 %tobool.not.i297, label %if.then59.nomem.sink.split_crit_edge, label %wsm_buf_reserve.exit305.thread

if.then59.nomem.sink.split_crit_edge:             ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #10
  br label %nomem.sink.split

wsm_buf_reserve.exit305.thread:                   ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #10
  %70 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call.i296, ptr %wsm_cmd_buf, align 4
  %arrayidx.i300 = getelementptr i8, ptr %call.i296, i32 %sub.ptr.sub.i292
  %71 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %arrayidx.i300, ptr %data, align 4
  %arrayidx7.i301 = getelementptr i8, ptr %call.i296, i32 %add1.i295
  %72 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %arrayidx7.i301, ptr %end, align 4
  br label %if.end64

if.end64:                                         ; preds = %wsm_buf_reserve.exit305.thread, %if.end48.if.end64_crit_edge
  %beacon_interval = getelementptr inbounds %struct.wsm_start, ptr %arg, i32 0, i32 4
  %73 = ptrtoint ptr %beacon_interval to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %beacon_interval, align 4
  %75 = tail call i32 @llvm.bswap.i32(i32 %74)
  %76 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %data, align 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %75, ptr %77, align 4
  %79 = load ptr, ptr %data, align 4
  %add.ptr67 = getelementptr i8, ptr %79, i32 4
  store ptr %add.ptr67, ptr %data, align 4
  %add.ptr72 = getelementptr i8, ptr %79, i32 5
  %80 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %end, align 4
  %cmp74 = icmp ugt ptr %add.ptr72, %81
  br i1 %cmp74, label %if.then75, label %if.end64.if.end80_crit_edge

if.end64.if.end80_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end80

if.then75:                                        ; preds = %if.end64
  %82 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %data, align 4
  %84 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %wsm_cmd_buf, align 4
  %sub.ptr.lhs.cast.i307 = ptrtoint ptr %83 to i32
  %sub.ptr.rhs.cast.i308 = ptrtoint ptr %85 to i32
  %sub.ptr.sub.i309 = sub i32 %sub.ptr.lhs.cast.i307, %sub.ptr.rhs.cast.i308
  %or.i310 = or i32 %sub.ptr.sub.i309, 1023
  %add1.i311 = add i32 %or.i310, 1
  %call.i312 = tail call noalias ptr @krealloc(ptr noundef %85, i32 noundef %add1.i311, i32 noundef 3265) #11
  %tobool.not.i313 = icmp eq ptr %call.i312, null
  br i1 %tobool.not.i313, label %if.then75.nomem.sink.split_crit_edge, label %wsm_buf_reserve.exit321.thread

if.then75.nomem.sink.split_crit_edge:             ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #10
  br label %nomem.sink.split

wsm_buf_reserve.exit321.thread:                   ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #10
  %86 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %call.i312, ptr %wsm_cmd_buf, align 4
  %arrayidx.i316 = getelementptr i8, ptr %call.i312, i32 %sub.ptr.sub.i309
  %87 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %arrayidx.i316, ptr %data, align 4
  %arrayidx7.i317 = getelementptr i8, ptr %call.i312, i32 %add1.i311
  %88 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %arrayidx7.i317, ptr %end, align 4
  br label %if.end80

if.end80:                                         ; preds = %wsm_buf_reserve.exit321.thread, %if.end64.if.end80_crit_edge
  %dtim_period = getelementptr inbounds %struct.wsm_start, ptr %arg, i32 0, i32 5
  %89 = ptrtoint ptr %dtim_period to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %dtim_period, align 4
  %91 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %data, align 4
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %90, ptr %92, align 1
  %94 = load ptr, ptr %data, align 4
  %add.ptr83 = getelementptr i8, ptr %94, i32 1
  store ptr %add.ptr83, ptr %data, align 4
  %add.ptr88 = getelementptr i8, ptr %94, i32 2
  %95 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %end, align 4
  %cmp90 = icmp ugt ptr %add.ptr88, %96
  br i1 %cmp90, label %if.then91, label %if.end80.if.end96_crit_edge

if.end80.if.end96_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end96

if.then91:                                        ; preds = %if.end80
  %97 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %data, align 4
  %99 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %wsm_cmd_buf, align 4
  %sub.ptr.lhs.cast.i323 = ptrtoint ptr %98 to i32
  %sub.ptr.rhs.cast.i324 = ptrtoint ptr %100 to i32
  %sub.ptr.sub.i325 = sub i32 %sub.ptr.lhs.cast.i323, %sub.ptr.rhs.cast.i324
  %or.i326 = or i32 %sub.ptr.sub.i325, 1023
  %add1.i327 = add i32 %or.i326, 1
  %call.i328 = tail call noalias ptr @krealloc(ptr noundef %100, i32 noundef %add1.i327, i32 noundef 3265) #11
  %tobool.not.i329 = icmp eq ptr %call.i328, null
  br i1 %tobool.not.i329, label %if.then91.nomem.sink.split_crit_edge, label %wsm_buf_reserve.exit337.thread

if.then91.nomem.sink.split_crit_edge:             ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #10
  br label %nomem.sink.split

wsm_buf_reserve.exit337.thread:                   ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #10
  %101 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %call.i328, ptr %wsm_cmd_buf, align 4
  %arrayidx.i332 = getelementptr i8, ptr %call.i328, i32 %sub.ptr.sub.i325
  %102 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %arrayidx.i332, ptr %data, align 4
  %arrayidx7.i333 = getelementptr i8, ptr %call.i328, i32 %add1.i327
  %103 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %arrayidx7.i333, ptr %end, align 4
  br label %if.end96

if.end96:                                         ; preds = %wsm_buf_reserve.exit337.thread, %if.end80.if.end96_crit_edge
  %preamble = getelementptr inbounds %struct.wsm_start, ptr %arg, i32 0, i32 6
  %104 = ptrtoint ptr %preamble to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %preamble, align 1
  %106 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %data, align 4
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %105, ptr %107, align 1
  %109 = load ptr, ptr %data, align 4
  %add.ptr99 = getelementptr i8, ptr %109, i32 1
  store ptr %add.ptr99, ptr %data, align 4
  %add.ptr104 = getelementptr i8, ptr %109, i32 2
  %110 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %end, align 4
  %cmp106 = icmp ugt ptr %add.ptr104, %111
  br i1 %cmp106, label %if.then107, label %if.end96.if.end112_crit_edge

if.end96.if.end112_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end112

if.then107:                                       ; preds = %if.end96
  %112 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %data, align 4
  %114 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %wsm_cmd_buf, align 4
  %sub.ptr.lhs.cast.i339 = ptrtoint ptr %113 to i32
  %sub.ptr.rhs.cast.i340 = ptrtoint ptr %115 to i32
  %sub.ptr.sub.i341 = sub i32 %sub.ptr.lhs.cast.i339, %sub.ptr.rhs.cast.i340
  %or.i342 = or i32 %sub.ptr.sub.i341, 1023
  %add1.i343 = add i32 %or.i342, 1
  %call.i344 = tail call noalias ptr @krealloc(ptr noundef %115, i32 noundef %add1.i343, i32 noundef 3265) #11
  %tobool.not.i345 = icmp eq ptr %call.i344, null
  br i1 %tobool.not.i345, label %if.then107.nomem.sink.split_crit_edge, label %wsm_buf_reserve.exit353.thread

if.then107.nomem.sink.split_crit_edge:            ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #10
  br label %nomem.sink.split

wsm_buf_reserve.exit353.thread:                   ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #10
  %116 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %call.i344, ptr %wsm_cmd_buf, align 4
  %arrayidx.i348 = getelementptr i8, ptr %call.i344, i32 %sub.ptr.sub.i341
  %117 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %arrayidx.i348, ptr %data, align 4
  %arrayidx7.i349 = getelementptr i8, ptr %call.i344, i32 %add1.i343
  %118 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %arrayidx7.i349, ptr %end, align 4
  br label %if.end112

if.end112:                                        ; preds = %wsm_buf_reserve.exit353.thread, %if.end96.if.end112_crit_edge
  %probe_delay = getelementptr inbounds %struct.wsm_start, ptr %arg, i32 0, i32 7
  %119 = ptrtoint ptr %probe_delay to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %probe_delay, align 2
  %121 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %data, align 4
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %120, ptr %122, align 1
  %124 = load ptr, ptr %data, align 4
  %add.ptr115 = getelementptr i8, ptr %124, i32 1
  store ptr %add.ptr115, ptr %data, align 4
  %add.ptr120 = getelementptr i8, ptr %124, i32 2
  %125 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %end, align 4
  %cmp122 = icmp ugt ptr %add.ptr120, %126
  br i1 %cmp122, label %if.then123, label %if.end112.if.end128_crit_edge

if.end112.if.end128_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end128

if.then123:                                       ; preds = %if.end112
  %127 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %data, align 4
  %129 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %wsm_cmd_buf, align 4
  %sub.ptr.lhs.cast.i355 = ptrtoint ptr %128 to i32
  %sub.ptr.rhs.cast.i356 = ptrtoint ptr %130 to i32
  %sub.ptr.sub.i357 = sub i32 %sub.ptr.lhs.cast.i355, %sub.ptr.rhs.cast.i356
  %or.i358 = or i32 %sub.ptr.sub.i357, 1023
  %add1.i359 = add i32 %or.i358, 1
  %call.i360 = tail call noalias ptr @krealloc(ptr noundef %130, i32 noundef %add1.i359, i32 noundef 3265) #11
  %tobool.not.i361 = icmp eq ptr %call.i360, null
  br i1 %tobool.not.i361, label %if.then123.nomem.sink.split_crit_edge, label %wsm_buf_reserve.exit369.thread

if.then123.nomem.sink.split_crit_edge:            ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #10
  br label %nomem.sink.split

wsm_buf_reserve.exit369.thread:                   ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #10
  %131 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %call.i360, ptr %wsm_cmd_buf, align 4
  %arrayidx.i364 = getelementptr i8, ptr %call.i360, i32 %sub.ptr.sub.i357
  %132 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %arrayidx.i364, ptr %data, align 4
  %arrayidx7.i365 = getelementptr i8, ptr %call.i360, i32 %add1.i359
  %133 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %arrayidx7.i365, ptr %end, align 4
  br label %if.end128

if.end128:                                        ; preds = %wsm_buf_reserve.exit369.thread, %if.end112.if.end128_crit_edge
  %ssid_len = getelementptr inbounds %struct.wsm_start, ptr %arg, i32 0, i32 8
  %134 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %ssid_len, align 1
  %136 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %data, align 4
  %138 = ptrtoint ptr %137 to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 %135, ptr %137, align 1
  %139 = load ptr, ptr %data, align 4
  %add.ptr131 = getelementptr i8, ptr %139, i32 1
  store ptr %add.ptr131, ptr %data, align 4
  %add.ptr136 = getelementptr i8, ptr %139, i32 33
  %140 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %end, align 4
  %cmp138 = icmp ugt ptr %add.ptr136, %141
  br i1 %cmp138, label %if.then139, label %if.end128.if.end144_crit_edge

if.end128.if.end144_crit_edge:                    ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end144

if.then139:                                       ; preds = %if.end128
  %call140 = tail call fastcc i32 @wsm_buf_reserve(ptr noundef %wsm_cmd_buf, i32 noundef 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140)
  %tobool141.not = icmp eq i32 %call140, 0
  br i1 %tobool141.not, label %if.then139.if.end144_crit_edge, label %if.then139.cleanup_crit_edge

if.then139.cleanup_crit_edge:                     ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then139.if.end144_crit_edge:                   ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end144

if.end144:                                        ; preds = %if.then139.if.end144_crit_edge, %if.end128.if.end144_crit_edge
  %142 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %data, align 4
  %ssid = getelementptr inbounds %struct.wsm_start, ptr %arg, i32 0, i32 9
  %144 = call ptr @memcpy(ptr %143, ptr %ssid, i32 32)
  %145 = load ptr, ptr %data, align 4
  %add.ptr147 = getelementptr i8, ptr %145, i32 32
  store ptr %add.ptr147, ptr %data, align 4
  %add.ptr152 = getelementptr i8, ptr %145, i32 36
  %146 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %end, align 4
  %cmp154 = icmp ugt ptr %add.ptr152, %147
  br i1 %cmp154, label %if.then155, label %if.end144.if.end160_crit_edge

if.end144.if.end160_crit_edge:                    ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end160

if.then155:                                       ; preds = %if.end144
  %call156 = tail call fastcc i32 @wsm_buf_reserve(ptr noundef %wsm_cmd_buf, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call156)
  %tobool157.not = icmp eq i32 %call156, 0
  br i1 %tobool157.not, label %if.then155.if.end160_crit_edge, label %if.then155.cleanup_crit_edge

if.then155.cleanup_crit_edge:                     ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then155.if.end160_crit_edge:                   ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end160

if.end160:                                        ; preds = %if.then155.if.end160_crit_edge, %if.end144.if.end160_crit_edge
  %basic_rate_set = getelementptr inbounds %struct.wsm_start, ptr %arg, i32 0, i32 10
  %148 = ptrtoint ptr %basic_rate_set to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %basic_rate_set, align 4
  %150 = tail call i32 @llvm.bswap.i32(i32 %149)
  %151 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %data, align 4
  %153 = ptrtoint ptr %152 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %150, ptr %152, align 4
  %154 = load ptr, ptr %data, align 4
  %add.ptr163 = getelementptr i8, ptr %154, i32 4
  store ptr %add.ptr163, ptr %data, align 4
  %tx_burst_idx = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 20
  %155 = ptrtoint ptr %tx_burst_idx to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 -1, ptr %tx_burst_idx, align 4
  %call166 = tail call fastcc i32 @wsm_cmd_send(ptr noundef %priv, ptr noundef %wsm_cmd_buf, ptr noundef null, i16 noundef zeroext 23, i32 noundef 700)
  br label %cleanup

nomem.sink.split:                                 ; preds = %if.then123.nomem.sink.split_crit_edge, %if.then107.nomem.sink.split_crit_edge, %if.then91.nomem.sink.split_crit_edge, %if.then75.nomem.sink.split_crit_edge, %if.then59.nomem.sink.split_crit_edge, %if.then43.nomem.sink.split_crit_edge, %if.then27.nomem.sink.split_crit_edge, %if.then11.nomem.sink.split_crit_edge, %if.then.nomem.sink.split_crit_edge
  %156 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %wsm_cmd_buf, align 4
  tail call void @kfree(ptr noundef %157) #8
  %158 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr null, ptr %end, align 4
  %159 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr null, ptr %data, align 4
  %160 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr null, ptr %wsm_cmd_buf, align 4
  br label %cleanup

cleanup:                                          ; preds = %nomem.sink.split, %if.end160, %if.then155.cleanup_crit_edge, %if.then139.cleanup_crit_edge
  %retval.0 = phi i32 [ %call166, %if.end160 ], [ -12, %nomem.sink.split ], [ -12, %if.then155.cleanup_crit_edge ], [ -12, %if.then139.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %wsm_cmd_mux) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wsm_beacon_transmit(ptr noundef %priv, ptr nocapture noundef readonly %arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %wsm_cmd_buf = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 90
  %wsm_cmd_mux = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 89
  tail call void @mutex_lock_nested(ptr noundef %wsm_cmd_mux, i32 noundef 0) #8
  %data = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 90, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %end = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 90, i32 2
  %2 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %end, align 4
  %cmp = icmp ugt ptr %add.ptr, %3
  br i1 %cmp, label %if.then, label %entry.if.end2_crit_edge

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end2

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %6 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wsm_cmd_buf, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %7 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.i = add i32 %sub.ptr.sub.i, 3
  %or.i = or i32 %sub.i, 1023
  %add1.i = add i32 %or.i, 1
  %call.i = tail call noalias ptr @krealloc(ptr noundef %7, i32 noundef %add1.i, i32 noundef 3265) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %nomem, label %wsm_buf_reserve.exit.thread

wsm_buf_reserve.exit.thread:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %wsm_cmd_buf, align 4
  %arrayidx.i = getelementptr i8, ptr %call.i, i32 %sub.ptr.sub.i
  %9 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %arrayidx.i, ptr %data, align 4
  %arrayidx7.i = getelementptr i8, ptr %call.i, i32 %add1.i
  %10 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %arrayidx7.i, ptr %end, align 4
  br label %if.end2

if.end2:                                          ; preds = %wsm_buf_reserve.exit.thread, %entry.if.end2_crit_edge
  %11 = ptrtoint ptr %arg to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool3.not.not = icmp eq i8 %12, 0
  %13 = select i1 %tobool3.not.not, i32 0, i32 16777216
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %13, ptr %15, align 4
  %17 = load ptr, ptr %data, align 4
  %add.ptr6 = getelementptr i8, ptr %17, i32 4
  store ptr %add.ptr6, ptr %data, align 4
  %call7 = tail call fastcc i32 @wsm_cmd_send(ptr noundef %priv, ptr noundef %wsm_cmd_buf, ptr noundef null, i16 noundef zeroext 24, i32 noundef 200)
  br label %cleanup

nomem:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %wsm_cmd_buf, align 4
  tail call void @kfree(ptr noundef %19) #8
  %20 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %end, align 4
  %21 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %data, align 4
  %22 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %wsm_cmd_buf, align 4
  br label %cleanup

cleanup:                                          ; preds = %nomem, %if.end2
  %retval.0 = phi i32 [ -12, %nomem ], [ %call7, %if.end2 ]
  tail call void @mutex_unlock(ptr noundef %wsm_cmd_mux) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wsm_start_find(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %wsm_cmd_buf = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 90
  %wsm_cmd_mux = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 89
  tail call void @mutex_lock_nested(ptr noundef %wsm_cmd_mux, i32 noundef 0) #8
  %call = tail call fastcc i32 @wsm_cmd_send(ptr noundef %priv, ptr noundef %wsm_cmd_buf, ptr noundef null, i16 noundef zeroext 25, i32 noundef 200)
  tail call void @mutex_unlock(ptr noundef %wsm_cmd_mux) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wsm_stop_find(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %wsm_cmd_buf = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 90
  %wsm_cmd_mux = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 89
  tail call void @mutex_lock_nested(ptr noundef %wsm_cmd_mux, i32 noundef 0) #8
  %call = tail call fastcc i32 @wsm_cmd_send(ptr noundef %priv, ptr noundef %wsm_cmd_buf, ptr noundef null, i16 noundef zeroext 26, i32 noundef 200)
  tail call void @mutex_unlock(ptr noundef %wsm_cmd_mux) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wsm_map_link(ptr noundef %priv, ptr nocapture noundef readonly %arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %wsm_cmd_buf = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 90
  %link_id = getelementptr inbounds %struct.wsm_map_link, ptr %arg, i32 0, i32 1
  %0 = ptrtoint ptr %link_id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %link_id, align 1
  %2 = and i8 %1, 15
  %and = zext i8 %2 to i16
  %shl = shl nuw nsw i16 %and, 6
  %or = or i16 %shl, 28
  %wsm_cmd_mux = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 89
  tail call void @mutex_lock_nested(ptr noundef %wsm_cmd_mux, i32 noundef 0) #8
  %data = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 90, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 6
  %end = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 90, i32 2
  %5 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %end, align 4
  %cmp = icmp ugt ptr %add.ptr, %6
  br i1 %cmp, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then:                                          ; preds = %entry
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %9 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %wsm_cmd_buf, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %8 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %10 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.i = add i32 %sub.ptr.sub.i, 5
  %or.i = or i32 %sub.i, 1023
  %add1.i = add i32 %or.i, 1
  %call.i = tail call noalias ptr @krealloc(ptr noundef %10, i32 noundef %add1.i, i32 noundef 3265) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.nomem_crit_edge, label %wsm_buf_reserve.exit.thread

if.then.nomem_crit_edge:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %nomem

wsm_buf_reserve.exit.thread:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %wsm_cmd_buf, align 4
  %arrayidx.i = getelementptr i8, ptr %call.i, i32 %sub.ptr.sub.i
  %12 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %arrayidx.i, ptr %data, align 4
  %arrayidx7.i = getelementptr i8, ptr %call.i, i32 %add1.i
  %13 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %arrayidx7.i, ptr %end, align 4
  br label %if.end4

if.end4:                                          ; preds = %wsm_buf_reserve.exit.thread, %entry.if.end4_crit_edge
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  %16 = call ptr @memcpy(ptr %15, ptr %arg, i32 6)
  %17 = load ptr, ptr %data, align 4
  %add.ptr7 = getelementptr i8, ptr %17, i32 6
  store ptr %add.ptr7, ptr %data, align 4
  %add.ptr10 = getelementptr i8, ptr %17, i32 8
  %18 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %end, align 4
  %cmp12 = icmp ugt ptr %add.ptr10, %19
  br i1 %cmp12, label %if.then14, label %if.end4.if.end19_crit_edge

if.end4.if.end19_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then14:                                        ; preds = %if.end4
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data, align 4
  %22 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %wsm_cmd_buf, align 4
  %sub.ptr.lhs.cast.i46 = ptrtoint ptr %21 to i32
  %sub.ptr.rhs.cast.i47 = ptrtoint ptr %23 to i32
  %sub.ptr.sub.i48 = sub i32 %sub.ptr.lhs.cast.i46, %sub.ptr.rhs.cast.i47
  %sub.i49 = add i32 %sub.ptr.sub.i48, 1
  %or.i50 = or i32 %sub.i49, 1023
  %add1.i51 = add i32 %or.i50, 1
  %call.i52 = tail call noalias ptr @krealloc(ptr noundef %23, i32 noundef %add1.i51, i32 noundef 3265) #11
  %tobool.not.i53 = icmp eq ptr %call.i52, null
  br i1 %tobool.not.i53, label %if.then14.nomem_crit_edge, label %wsm_buf_reserve.exit61.thread

if.then14.nomem_crit_edge:                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %nomem

wsm_buf_reserve.exit61.thread:                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i52, ptr %wsm_cmd_buf, align 4
  %arrayidx.i56 = getelementptr i8, ptr %call.i52, i32 %sub.ptr.sub.i48
  %25 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %arrayidx.i56, ptr %data, align 4
  %arrayidx7.i57 = getelementptr i8, ptr %call.i52, i32 %add1.i51
  %26 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %arrayidx7.i57, ptr %end, align 4
  br label %if.end19

if.end19:                                         ; preds = %wsm_buf_reserve.exit61.thread, %if.end4.if.end19_crit_edge
  %27 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 0, ptr %28, align 2
  %30 = load ptr, ptr %data, align 4
  %add.ptr22 = getelementptr i8, ptr %30, i32 2
  store ptr %add.ptr22, ptr %data, align 4
  %call25 = tail call fastcc i32 @wsm_cmd_send(ptr noundef %priv, ptr noundef %wsm_cmd_buf, ptr noundef null, i16 noundef zeroext %or, i32 noundef 200)
  br label %cleanup

nomem:                                            ; preds = %if.then14.nomem_crit_edge, %if.then.nomem_crit_edge
  %31 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %wsm_cmd_buf, align 4
  tail call void @kfree(ptr noundef %32) #8
  %33 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %end, align 4
  %34 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %data, align 4
  %35 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %wsm_cmd_buf, align 4
  br label %cleanup

cleanup:                                          ; preds = %nomem, %if.end19
  %retval.0 = phi i32 [ -12, %nomem ], [ %call25, %if.end19 ]
  tail call void @mutex_unlock(ptr noundef %wsm_cmd_mux) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wsm_update_ie(ptr noundef %priv, ptr nocapture noundef readonly %arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %wsm_cmd_buf = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 90
  %wsm_cmd_mux = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 89
  tail call void @mutex_lock_nested(ptr noundef %wsm_cmd_mux, i32 noundef 0) #8
  %data = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 90, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 2
  %end = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 90, i32 2
  %2 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %end, align 4
  %cmp = icmp ugt ptr %add.ptr, %3
  br i1 %cmp, label %if.then, label %entry.if.end2_crit_edge

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end2

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %6 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wsm_cmd_buf, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %7 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.i = add i32 %sub.ptr.sub.i, 1
  %or.i = or i32 %sub.i, 1023
  %add1.i = add i32 %or.i, 1
  %call.i = tail call noalias ptr @krealloc(ptr noundef %7, i32 noundef %add1.i, i32 noundef 3265) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.nomem_crit_edge, label %wsm_buf_reserve.exit.thread

if.then.nomem_crit_edge:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %nomem

wsm_buf_reserve.exit.thread:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %wsm_cmd_buf, align 4
  %arrayidx.i = getelementptr i8, ptr %call.i, i32 %sub.ptr.sub.i
  %9 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %arrayidx.i, ptr %data, align 4
  %arrayidx7.i = getelementptr i8, ptr %call.i, i32 %add1.i
  %10 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %arrayidx7.i, ptr %end, align 4
  br label %if.end2

if.end2:                                          ; preds = %wsm_buf_reserve.exit.thread, %entry.if.end2_crit_edge
  %11 = ptrtoint ptr %arg to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arg, align 4
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %13, ptr %15, align 2
  %17 = load ptr, ptr %data, align 4
  %add.ptr5 = getelementptr i8, ptr %17, i32 2
  store ptr %add.ptr5, ptr %data, align 4
  %add.ptr8 = getelementptr i8, ptr %17, i32 4
  %18 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %end, align 4
  %cmp10 = icmp ugt ptr %add.ptr8, %19
  br i1 %cmp10, label %if.then11, label %if.end2.if.end16_crit_edge

if.end2.if.end16_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then11:                                        ; preds = %if.end2
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data, align 4
  %22 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %wsm_cmd_buf, align 4
  %sub.ptr.lhs.cast.i71 = ptrtoint ptr %21 to i32
  %sub.ptr.rhs.cast.i72 = ptrtoint ptr %23 to i32
  %sub.ptr.sub.i73 = sub i32 %sub.ptr.lhs.cast.i71, %sub.ptr.rhs.cast.i72
  %sub.i74 = add i32 %sub.ptr.sub.i73, 1
  %or.i75 = or i32 %sub.i74, 1023
  %add1.i76 = add i32 %or.i75, 1
  %call.i77 = tail call noalias ptr @krealloc(ptr noundef %23, i32 noundef %add1.i76, i32 noundef 3265) #11
  %tobool.not.i78 = icmp eq ptr %call.i77, null
  br i1 %tobool.not.i78, label %if.then11.nomem_crit_edge, label %wsm_buf_reserve.exit86.thread

if.then11.nomem_crit_edge:                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %nomem

wsm_buf_reserve.exit86.thread:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i77, ptr %wsm_cmd_buf, align 4
  %arrayidx.i81 = getelementptr i8, ptr %call.i77, i32 %sub.ptr.sub.i73
  %25 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %arrayidx.i81, ptr %data, align 4
  %arrayidx7.i82 = getelementptr i8, ptr %call.i77, i32 %add1.i76
  %26 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %arrayidx7.i82, ptr %end, align 4
  br label %if.end16

if.end16:                                         ; preds = %wsm_buf_reserve.exit86.thread, %if.end2.if.end16_crit_edge
  %count = getelementptr inbounds %struct.wsm_update_ie, ptr %arg, i32 0, i32 1
  %27 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %count, align 2
  %29 = tail call i16 @llvm.bswap.i16(i16 %28)
  %30 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %29, ptr %31, align 2
  %33 = load ptr, ptr %data, align 4
  %add.ptr19 = getelementptr i8, ptr %33, i32 2
  store ptr %add.ptr19, ptr %data, align 4
  %length = getelementptr inbounds %struct.wsm_update_ie, ptr %arg, i32 0, i32 3
  %34 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %length, align 4
  %add.ptr24 = getelementptr i8, ptr %add.ptr19, i32 %35
  %36 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %end, align 4
  %cmp26 = icmp ugt ptr %add.ptr24, %37
  br i1 %cmp26, label %if.then27, label %if.end16.if.end33_crit_edge

if.end16.if.end33_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.then27:                                        ; preds = %if.end16
  %38 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data, align 4
  %40 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %wsm_cmd_buf, align 4
  %sub.ptr.lhs.cast.i88 = ptrtoint ptr %39 to i32
  %sub.ptr.rhs.cast.i89 = ptrtoint ptr %41 to i32
  %sub.ptr.sub.i90 = sub i32 %sub.ptr.lhs.cast.i88, %sub.ptr.rhs.cast.i89
  %add.i = add i32 %35, -1
  %sub.i91 = add i32 %add.i, %sub.ptr.sub.i90
  %or.i92 = or i32 %sub.i91, 1023
  %add1.i93 = add i32 %or.i92, 1
  %call.i94 = tail call noalias ptr @krealloc(ptr noundef %41, i32 noundef %add1.i93, i32 noundef 3265) #11
  %tobool.not.i95 = icmp eq ptr %call.i94, null
  br i1 %tobool.not.i95, label %if.then27.nomem_crit_edge, label %wsm_buf_reserve.exit103.thread

if.then27.nomem_crit_edge:                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  br label %nomem

wsm_buf_reserve.exit103.thread:                   ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call.i94, ptr %wsm_cmd_buf, align 4
  %arrayidx.i98 = getelementptr i8, ptr %call.i94, i32 %sub.ptr.sub.i90
  %43 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %arrayidx.i98, ptr %data, align 4
  %arrayidx7.i99 = getelementptr i8, ptr %call.i94, i32 %add1.i93
  %44 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %arrayidx7.i99, ptr %end, align 4
  br label %if.end33

if.end33:                                         ; preds = %wsm_buf_reserve.exit103.thread, %if.end16.if.end33_crit_edge
  %45 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %data, align 4
  %ies = getelementptr inbounds %struct.wsm_update_ie, ptr %arg, i32 0, i32 2
  %47 = ptrtoint ptr %ies to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ies, align 4
  %49 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %length, align 4
  %51 = call ptr @memcpy(ptr %46, ptr %48, i32 %50)
  %52 = load i32, ptr %length, align 4
  %53 = load ptr, ptr %data, align 4
  %add.ptr38 = getelementptr i8, ptr %53, i32 %52
  store ptr %add.ptr38, ptr %data, align 4
  %call41 = tail call fastcc i32 @wsm_cmd_send(ptr noundef %priv, ptr noundef %wsm_cmd_buf, ptr noundef null, i16 noundef zeroext 27, i32 noundef 200)
  br label %cleanup

nomem:                                            ; preds = %if.then27.nomem_crit_edge, %if.then11.nomem_crit_edge, %if.then.nomem_crit_edge
  %54 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %wsm_cmd_buf, align 4
  tail call void @kfree(ptr noundef %55) #8
  %56 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %end, align 4
  %57 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %data, align 4
  %58 = ptrtoint ptr %wsm_cmd_buf to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %wsm_cmd_buf, align 4
  br label %cleanup

cleanup:                                          ; preds = %nomem, %if.end33
  %retval.0 = phi i32 [ -12, %nomem ], [ %call41, %if.end33 ]
  tail call void @mutex_unlock(ptr noundef %wsm_cmd_mux) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wsm_set_probe_responder(ptr noundef %priv, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %enable to i8
  %rx_filter = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 48
  %probeResponder = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 48, i32 3
  %0 = ptrtoint ptr %probeResponder to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %frombool, ptr %probeResponder, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #8
  %1 = ptrtoint ptr %rx_filter to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %rx_filter, align 1, !range !186
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i = icmp eq i8 %2, 0
  %spec.store.select.i = select i1 %tobool.not.i, i32 0, i32 16777216
  %3 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %spec.store.select.i, ptr %val.i, align 4
  %bssid.i = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 48, i32 1
  %4 = ptrtoint ptr %bssid.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bssid.i, align 1, !range !186
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not.i = icmp eq i8 %5, 0
  br i1 %tobool1.not.i, label %entry.if.end4.i_crit_edge, label %if.then2.i

entry.if.end4.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i

if.then2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %or3.i = or i32 %spec.store.select.i, 33554432
  %6 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or3.i, ptr %val.i, align 4
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then2.i, %entry.if.end4.i_crit_edge
  %fcs.i = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 48, i32 2
  %7 = ptrtoint ptr %fcs.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %fcs.i, align 1, !range !186
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool5.not.i = icmp eq i8 %8, 0
  br i1 %tobool5.not.i, label %if.end4.i.if.end8.i_crit_edge, label %if.then6.i

if.end4.i.if.end8.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i

if.then6.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val.i, align 4
  %or7.i = or i32 %10, 67108864
  store i32 %or7.i, ptr %val.i, align 4
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then6.i, %if.end4.i.if.end8.i_crit_edge
  %11 = ptrtoint ptr %probeResponder to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %probeResponder, align 1, !range !186
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool9.not.i = icmp eq i8 %12, 0
  br i1 %tobool9.not.i, label %if.end8.i.wsm_set_rx_filter.exit_crit_edge, label %if.then10.i

if.end8.i.wsm_set_rx_filter.exit_crit_edge:       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wsm_set_rx_filter.exit

if.then10.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val.i, align 4
  %or11.i = or i32 %14, 134217728
  store i32 %or11.i, ptr %val.i, align 4
  br label %wsm_set_rx_filter.exit

wsm_set_rx_filter.exit:                           ; preds = %if.then10.i, %if.end8.i.wsm_set_rx_filter.exit_crit_edge
  %call.i = call i32 @wsm_write_mib(ptr noundef %priv, i16 noundef zeroext 4099, ptr noundef nonnull %val.i, i32 noundef 4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #8
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wsm_lock_tx(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %wsm_cmd_mux = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 89
  tail call void @mutex_lock_nested(ptr noundef %wsm_cmd_mux, i32 noundef 0) #8
  %tx_lock = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 95
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_lock, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !188
  tail call void @llvm.prefetch.p0(ptr %tx_lock, i32 1, i32 3, i32 1) #8
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_lock, ptr %tx_lock, i32 1, ptr elementtype(i32) %tx_lock) #8, !srcloc !189
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !190
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i)
  %cmp = icmp eq i32 %asmresult.i.i.i.i, 1
  br i1 %cmp, label %if.then, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then:                                          ; preds = %entry
  %call1 = tail call zeroext i1 @wsm_flush_tx(ptr noundef %priv)
  br i1 %call1, label %do.body, label %if.then.if.end8_crit_edge

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wsm_lock_tx.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wsm_lock_tx, %if.then6)) #8
          to label %if.end8 [label %if.then6], !srcloc !180

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wsm_lock_tx.__UNIQUE_ID_ddebug354, ptr noundef nonnull @.str.8) #8
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %do.body, %if.then.if.end8_crit_edge, %entry.if.end8_crit_edge
  tail call void @mutex_unlock(ptr noundef %wsm_cmd_mux) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @wsm_flush_tx(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  %timestamp = alloca i32, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %timestamp) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %1 = ptrtoint ptr %timestamp to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %timestamp, align 4
  %tx_lock = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 95
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tx_lock, i32 noundef 4) #8
  %2 = ptrtoint ptr %tx_lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %tx_lock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !184

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/st/cw1200/wsm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1184, 0\0A.popsection", ""() #8, !srcloc !191
  unreachable

do.end9:                                          ; preds = %entry
  %hw_bufs_used = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 81
  %4 = ptrtoint ptr %hw_bufs_used to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hw_bufs_used, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool10.not = icmp eq i32 %5, 0
  br i1 %tobool10.not, label %do.end9.cleanup94_crit_edge, label %if.end12

do.end9.cleanup94_crit_edge:                      ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup94

if.end12:                                         ; preds = %do.end9
  %bh_error = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 74
  %6 = ptrtoint ptr %bh_error to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bh_error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool13.not = icmp eq i32 %7, 0
  br i1 %tobool13.not, label %for.body.preheader, label %do.end17

for.body.preheader:                               ; preds = %if.end12
  %arrayidx = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 18, i32 0
  %call19 = call zeroext i1 @cw1200_queue_get_xmit_timestamp(ptr noundef %arrayidx, ptr noundef nonnull %timestamp, i32 noundef -1) #8
  %arrayidx.1 = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 18, i32 1
  %call19.1 = call zeroext i1 @cw1200_queue_get_xmit_timestamp(ptr noundef %arrayidx.1, ptr noundef nonnull %timestamp, i32 noundef -1) #8
  %or122.1 = or i1 %call19, %call19.1
  %arrayidx.2 = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 18, i32 2
  %call19.2 = call zeroext i1 @cw1200_queue_get_xmit_timestamp(ptr noundef %arrayidx.2, ptr noundef nonnull %timestamp, i32 noundef -1) #8
  %or122.2 = or i1 %or122.1, %call19.2
  %arrayidx.3 = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 18, i32 3
  %call19.3 = call zeroext i1 @cw1200_queue_get_xmit_timestamp(ptr noundef %arrayidx.3, ptr noundef nonnull %timestamp, i32 noundef -1) #8
  %or122.3 = or i1 %or122.2, %call19.3
  br i1 %or122.3, label %if.end25, label %for.body.preheader.cleanup94_crit_edge

for.body.preheader.cleanup94_crit_edge:           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup94

do.end17:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #12
  br label %cleanup94

if.end25:                                         ; preds = %for.body.preheader
  %8 = ptrtoint ptr %timestamp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %timestamp, align 4
  %add = add i32 %9, 150
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp26 = icmp slt i32 %sub, 0
  br i1 %cmp26, label %if.end25.if.then87_crit_edge, label %lor.lhs.false

if.end25.if.then87_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then87

lor.lhs.false:                                    ; preds = %if.end25
  call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 1210) #8
  %11 = ptrtoint ptr %hw_bufs_used to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hw_bufs_used, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool35.not = icmp eq i32 %12, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %10)
  %tobool41.not = icmp eq i32 %add, %10
  %13 = select i1 %tobool35.not, i1 %tobool41.not, i1 false
  %__ret.0 = select i1 %13, i32 1, i32 %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.0)
  %tobool47.not = icmp eq i32 %__ret.0, 0
  %14 = select i1 %tobool35.not, i1 true, i1 %tobool47.not
  br i1 %14, label %lor.lhs.false.if.end83_crit_edge, label %if.then51

lor.lhs.false.if.end83_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end83

if.then51:                                        ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #8
  %15 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #8
  %bh_evt_wq = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 76
  %call54129 = call i32 @prepare_to_wait_event(ptr noundef %bh_evt_wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #8
  %16 = ptrtoint ptr %hw_bufs_used to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %hw_bufs_used, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool57.not130 = icmp eq i32 %17, 0
  %18 = select i1 %tobool57.not130, i1 %tobool41.not, i1 false
  %__ret52.1132 = select i1 %18, i32 1, i32 %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret52.1132)
  %tobool71.not133 = icmp eq i32 %__ret52.1132, 0
  %19 = select i1 %tobool57.not130, i1 true, i1 %tobool71.not133
  br i1 %19, label %if.then51.for.end80_crit_edge, label %if.then51.cleanup_crit_edge

if.then51.cleanup_crit_edge:                      ; preds = %if.then51
  br label %cleanup

if.then51.for.end80_crit_edge:                    ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end80

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then51.cleanup_crit_edge
  %__ret52.1134 = phi i32 [ %__ret52.1, %cleanup.cleanup_crit_edge ], [ %__ret52.1132, %if.then51.cleanup_crit_edge ]
  %call79 = call i32 @schedule_timeout(i32 noundef %__ret52.1134) #8
  %call54 = call i32 @prepare_to_wait_event(ptr noundef %bh_evt_wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #8
  %20 = ptrtoint ptr %hw_bufs_used to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %hw_bufs_used, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool57.not = icmp eq i32 %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool64.not = icmp eq i32 %call79, 0
  %22 = select i1 %tobool57.not, i1 %tobool64.not, i1 false
  %__ret52.1 = select i1 %22, i32 1, i32 %call79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret52.1)
  %tobool71.not = icmp eq i32 %__ret52.1, 0
  %23 = select i1 %tobool57.not, i1 true, i1 %tobool71.not
  br i1 %23, label %cleanup.for.end80_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.for.end80_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end80

for.end80:                                        ; preds = %cleanup.for.end80_crit_edge, %if.then51.for.end80_crit_edge
  %__ret52.1.lcssa = phi i32 [ %__ret52.1132, %if.then51.for.end80_crit_edge ], [ %__ret52.1, %cleanup.for.end80_crit_edge ]
  call void @finish_wait(ptr noundef %bh_evt_wq, ptr noundef nonnull %__wq_entry) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  br label %if.end83

if.end83:                                         ; preds = %for.end80, %lor.lhs.false.if.end83_crit_edge
  %__ret.1 = phi i32 [ %__ret.0, %lor.lhs.false.if.end83_crit_edge ], [ %__ret52.1.lcssa, %for.end80 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %__ret.1)
  %cmp85 = icmp slt i32 %__ret.1, 1
  br i1 %cmp85, label %if.end83.if.then87_crit_edge, label %if.end83.cleanup94_crit_edge

if.end83.cleanup94_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup94

if.end83.if.then87_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then87

if.then87:                                        ; preds = %if.end83.if.then87_crit_edge, %if.end25.if.then87_crit_edge
  %24 = ptrtoint ptr %bh_error to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %bh_error, align 4
  %25 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %priv, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %28, i32 0, i32 56
  %29 = ptrtoint ptr %hw_bufs_used to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %hw_bufs_used, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %30) #12
  %bh_wq = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 75
  call void @__wake_up(ptr noundef %bh_wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  br label %cleanup94

cleanup94:                                        ; preds = %if.then87, %if.end83.cleanup94_crit_edge, %do.end17, %for.body.preheader.cleanup94_crit_edge, %do.end9.cleanup94_crit_edge
  %retval.0 = phi i1 [ false, %do.end17 ], [ false, %if.then87 ], [ true, %do.end9.cleanup94_crit_edge ], [ true, %for.body.preheader.cleanup94_crit_edge ], [ true, %if.end83.cleanup94_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %timestamp) #8
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wsm_lock_tx_async(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_lock = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 95
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_lock, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !188
  tail call void @llvm.prefetch.p0(ptr %tx_lock, i32 1, i32 3, i32 1) #8
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_lock, ptr %tx_lock, i32 1, ptr elementtype(i32) %tx_lock) #8, !srcloc !189
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !190
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i)
  %cmp = icmp eq i32 %asmresult.i.i.i.i, 1
  br i1 %cmp, label %do.body, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wsm_lock_tx_async.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wsm_lock_tx_async, %if.then4)) #8
          to label %if.end5 [label %if.then4], !srcloc !180

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wsm_lock_tx_async.__UNIQUE_ID_ddebug355, ptr noundef nonnull @.str.10) #8
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %do.body, %entry.if.end5_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cw1200_queue_get_xmit_timestamp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wsm_unlock_tx(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_lock1 = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 95
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_lock1, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !192
  tail call void @llvm.prefetch.p0(ptr %tx_lock1, i32 1, i32 3, i32 1) #8
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_lock1, ptr %tx_lock1, i32 1, ptr elementtype(i32) %tx_lock1) #8, !srcloc !193
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !194
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp = icmp slt i32 %asmresult.i.i.i.i, 0
  br i1 %cmp, label %do.body3, label %do.end8, !prof !184

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/st/cw1200/wsm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1227, 0\0A.popsection", ""() #8, !srcloc !195
  unreachable

do.end8:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp9 = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp9, label %if.then10, label %do.end8.if.end27_crit_edge

do.end8.if.end27_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then10:                                        ; preds = %do.end8
  %bh_error = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 74
  %1 = ptrtoint ptr %bh_error to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %bh_error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool11.not = icmp eq i32 %2, 0
  br i1 %tobool11.not, label %if.then12, label %if.then10.do.body14_crit_edge

if.then10.do.body14_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body14

if.then12:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @cw1200_bh_wakeup(ptr noundef %priv) #8
  br label %do.body14

do.body14:                                        ; preds = %if.then12, %if.then10.do.body14_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wsm_unlock_tx.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wsm_unlock_tx, %if.then23)) #8
          to label %if.end27 [label %if.then23], !srcloc !180

if.then23:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wsm_unlock_tx.__UNIQUE_ID_ddebug356, ptr noundef nonnull @.str.19) #8
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %do.body14, %do.end8.if.end27_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cw1200_bh_wakeup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wsm_handle_exception(ptr nocapture noundef readonly %priv, ptr noundef %data, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %fname = alloca [48 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %fname) #8
  %arrayidx = getelementptr i8, ptr %data, i32 %len
  %add.ptr = getelementptr i8, ptr %data, i32 4
  %cmp = icmp ugt ptr %add.ptr, %arrayidx
  br i1 %cmp, label %entry.do.end107_crit_edge, label %cleanup

entry.do.end107_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end107

cleanup:                                          ; preds = %entry
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %add.ptr11 = getelementptr i8, ptr %data, i32 8
  %cmp13 = icmp ugt ptr %add.ptr11, %arrayidx
  br i1 %cmp13, label %cleanup.do.end107_crit_edge, label %cleanup.cont22

cleanup.do.end107_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end107

cleanup.cont22:                                   ; preds = %cleanup
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %add.ptr11.1 = getelementptr i8, ptr %data, i32 12
  %cmp13.1 = icmp ugt ptr %add.ptr11.1, %arrayidx
  br i1 %cmp13.1, label %cleanup.cont22.do.end107_crit_edge, label %cleanup.cont22.1

cleanup.cont22.do.end107_crit_edge:               ; preds = %cleanup.cont22
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end107

cleanup.cont22.1:                                 ; preds = %cleanup.cont22
  %6 = ptrtoint ptr %add.ptr11 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr11, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %add.ptr11.2 = getelementptr i8, ptr %data, i32 16
  %cmp13.2 = icmp ugt ptr %add.ptr11.2, %arrayidx
  br i1 %cmp13.2, label %cleanup.cont22.1.do.end107_crit_edge, label %cleanup.cont22.2

cleanup.cont22.1.do.end107_crit_edge:             ; preds = %cleanup.cont22.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end107

cleanup.cont22.2:                                 ; preds = %cleanup.cont22.1
  %9 = ptrtoint ptr %add.ptr11.1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr11.1, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %add.ptr11.3 = getelementptr i8, ptr %data, i32 20
  %cmp13.3 = icmp ugt ptr %add.ptr11.3, %arrayidx
  br i1 %cmp13.3, label %cleanup.cont22.2.do.end107_crit_edge, label %cleanup.cont22.3

cleanup.cont22.2.do.end107_crit_edge:             ; preds = %cleanup.cont22.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end107

cleanup.cont22.3:                                 ; preds = %cleanup.cont22.2
  %12 = ptrtoint ptr %add.ptr11.2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr11.2, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %add.ptr11.4 = getelementptr i8, ptr %data, i32 24
  %cmp13.4 = icmp ugt ptr %add.ptr11.4, %arrayidx
  br i1 %cmp13.4, label %cleanup.cont22.3.do.end107_crit_edge, label %cleanup.cont22.4

cleanup.cont22.3.do.end107_crit_edge:             ; preds = %cleanup.cont22.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end107

cleanup.cont22.4:                                 ; preds = %cleanup.cont22.3
  %15 = ptrtoint ptr %add.ptr11.3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr11.3, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %add.ptr11.5 = getelementptr i8, ptr %data, i32 28
  %cmp13.5 = icmp ugt ptr %add.ptr11.5, %arrayidx
  br i1 %cmp13.5, label %cleanup.cont22.4.do.end107_crit_edge, label %cleanup.cont22.5

cleanup.cont22.4.do.end107_crit_edge:             ; preds = %cleanup.cont22.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end107

cleanup.cont22.5:                                 ; preds = %cleanup.cont22.4
  %18 = ptrtoint ptr %add.ptr11.4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr11.4, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %add.ptr11.6 = getelementptr i8, ptr %data, i32 32
  %cmp13.6 = icmp ugt ptr %add.ptr11.6, %arrayidx
  br i1 %cmp13.6, label %cleanup.cont22.5.do.end107_crit_edge, label %cleanup.cont22.6

cleanup.cont22.5.do.end107_crit_edge:             ; preds = %cleanup.cont22.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end107

cleanup.cont22.6:                                 ; preds = %cleanup.cont22.5
  %21 = ptrtoint ptr %add.ptr11.5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr11.5, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  %add.ptr11.7 = getelementptr i8, ptr %data, i32 36
  %cmp13.7 = icmp ugt ptr %add.ptr11.7, %arrayidx
  br i1 %cmp13.7, label %cleanup.cont22.6.do.end107_crit_edge, label %cleanup.cont22.7

cleanup.cont22.6.do.end107_crit_edge:             ; preds = %cleanup.cont22.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end107

cleanup.cont22.7:                                 ; preds = %cleanup.cont22.6
  %24 = ptrtoint ptr %add.ptr11.6 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr11.6, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  %add.ptr11.8 = getelementptr i8, ptr %data, i32 40
  %cmp13.8 = icmp ugt ptr %add.ptr11.8, %arrayidx
  br i1 %cmp13.8, label %cleanup.cont22.7.do.end107_crit_edge, label %cleanup.cont22.8

cleanup.cont22.7.do.end107_crit_edge:             ; preds = %cleanup.cont22.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end107

cleanup.cont22.8:                                 ; preds = %cleanup.cont22.7
  %27 = ptrtoint ptr %add.ptr11.7 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr11.7, align 4
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  %add.ptr11.9 = getelementptr i8, ptr %data, i32 44
  %cmp13.9 = icmp ugt ptr %add.ptr11.9, %arrayidx
  br i1 %cmp13.9, label %cleanup.cont22.8.do.end107_crit_edge, label %cleanup.cont22.9

cleanup.cont22.8.do.end107_crit_edge:             ; preds = %cleanup.cont22.8
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end107

cleanup.cont22.9:                                 ; preds = %cleanup.cont22.8
  %30 = ptrtoint ptr %add.ptr11.8 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add.ptr11.8, align 4
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  %add.ptr11.10 = getelementptr i8, ptr %data, i32 48
  %cmp13.10 = icmp ugt ptr %add.ptr11.10, %arrayidx
  br i1 %cmp13.10, label %cleanup.cont22.9.do.end107_crit_edge, label %cleanup.cont22.10

cleanup.cont22.9.do.end107_crit_edge:             ; preds = %cleanup.cont22.9
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end107

cleanup.cont22.10:                                ; preds = %cleanup.cont22.9
  %33 = ptrtoint ptr %add.ptr11.9 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %add.ptr11.9, align 4
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  %add.ptr11.11 = getelementptr i8, ptr %data, i32 52
  %cmp13.11 = icmp ugt ptr %add.ptr11.11, %arrayidx
  br i1 %cmp13.11, label %cleanup.cont22.10.do.end107_crit_edge, label %cleanup.cont22.11

cleanup.cont22.10.do.end107_crit_edge:            ; preds = %cleanup.cont22.10
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end107

cleanup.cont22.11:                                ; preds = %cleanup.cont22.10
  %36 = ptrtoint ptr %add.ptr11.10 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %add.ptr11.10, align 4
  %38 = tail call i32 @llvm.bswap.i32(i32 %37)
  %add.ptr11.12 = getelementptr i8, ptr %data, i32 56
  %cmp13.12 = icmp ugt ptr %add.ptr11.12, %arrayidx
  br i1 %cmp13.12, label %cleanup.cont22.11.do.end107_crit_edge, label %cleanup.cont22.12

cleanup.cont22.11.do.end107_crit_edge:            ; preds = %cleanup.cont22.11
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end107

cleanup.cont22.12:                                ; preds = %cleanup.cont22.11
  %39 = ptrtoint ptr %add.ptr11.11 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %add.ptr11.11, align 4
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  %add.ptr11.13 = getelementptr i8, ptr %data, i32 60
  %cmp13.13 = icmp ugt ptr %add.ptr11.13, %arrayidx
  br i1 %cmp13.13, label %cleanup.cont22.12.do.end107_crit_edge, label %cleanup.cont22.13

cleanup.cont22.12.do.end107_crit_edge:            ; preds = %cleanup.cont22.12
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end107

cleanup.cont22.13:                                ; preds = %cleanup.cont22.12
  %42 = ptrtoint ptr %add.ptr11.12 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %add.ptr11.12, align 4
  %44 = tail call i32 @llvm.bswap.i32(i32 %43)
  %add.ptr11.14 = getelementptr i8, ptr %data, i32 64
  %cmp13.14 = icmp ugt ptr %add.ptr11.14, %arrayidx
  br i1 %cmp13.14, label %cleanup.cont22.13.do.end107_crit_edge, label %cleanup.cont22.14

cleanup.cont22.13.do.end107_crit_edge:            ; preds = %cleanup.cont22.13
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end107

cleanup.cont22.14:                                ; preds = %cleanup.cont22.13
  %45 = ptrtoint ptr %add.ptr11.13 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %add.ptr11.13, align 4
  %47 = tail call i32 @llvm.bswap.i32(i32 %46)
  %add.ptr11.15 = getelementptr i8, ptr %data, i32 68
  %cmp13.15 = icmp ugt ptr %add.ptr11.15, %arrayidx
  br i1 %cmp13.15, label %cleanup.cont22.14.do.end107_crit_edge, label %cleanup.cont22.15

cleanup.cont22.14.do.end107_crit_edge:            ; preds = %cleanup.cont22.14
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end107

cleanup.cont22.15:                                ; preds = %cleanup.cont22.14
  %48 = ptrtoint ptr %add.ptr11.14 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %add.ptr11.14, align 4
  %50 = tail call i32 @llvm.bswap.i32(i32 %49)
  %add.ptr11.16 = getelementptr i8, ptr %data, i32 72
  %cmp13.16 = icmp ugt ptr %add.ptr11.16, %arrayidx
  br i1 %cmp13.16, label %cleanup.cont22.15.do.end107_crit_edge, label %cleanup.cont22.16

cleanup.cont22.15.do.end107_crit_edge:            ; preds = %cleanup.cont22.15
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end107

cleanup.cont22.16:                                ; preds = %cleanup.cont22.15
  %51 = ptrtoint ptr %add.ptr11.15 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %add.ptr11.15, align 4
  %53 = tail call i32 @llvm.bswap.i32(i32 %52)
  %add.ptr11.17 = getelementptr i8, ptr %data, i32 76
  %cmp13.17 = icmp ugt ptr %add.ptr11.17, %arrayidx
  br i1 %cmp13.17, label %cleanup.cont22.16.do.end107_crit_edge, label %cleanup.cont22.17

cleanup.cont22.16.do.end107_crit_edge:            ; preds = %cleanup.cont22.16
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end107

cleanup.cont22.17:                                ; preds = %cleanup.cont22.16
  %54 = ptrtoint ptr %add.ptr11.16 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %add.ptr11.16, align 4
  %56 = tail call i32 @llvm.bswap.i32(i32 %55)
  %add.ptr25 = getelementptr i8, ptr %data, i32 124
  %cmp27 = icmp ugt ptr %add.ptr25, %arrayidx
  br i1 %cmp27, label %cleanup.cont22.17.do.end107_crit_edge, label %if.end29

cleanup.cont22.17.do.end107_crit_edge:            ; preds = %cleanup.cont22.17
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end107

if.end29:                                         ; preds = %cleanup.cont22.17
  %57 = call ptr @memcpy(ptr %fname, ptr %add.ptr11.17, i32 48)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %2)
  %cmp33 = icmp ult i32 %2, 4
  %58 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %priv, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %61, i32 0, i32 56
  br i1 %cmp33, label %do.end37, label %do.end41

do.end37:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx38 = getelementptr [4 x ptr], ptr @wsm_handle_exception.reason_str, i32 0, i32 %2
  %62 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx38, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24, ptr noundef %63) #12
  br label %if.end47

do.end41:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27, i32 noundef 48, ptr noundef nonnull %fname, i32 noundef %8) #12
  br label %if.end47

if.end47:                                         ; preds = %do.end41, %do.end37
  %64 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %priv, align 4
  %wiphy55 = getelementptr inbounds %struct.ieee80211_hw, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %wiphy55 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %wiphy55, align 8
  %dev56 = getelementptr inbounds %struct.wiphy, ptr %67, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev56, ptr noundef nonnull @.str.30, i32 noundef 0, i32 noundef %5, i32 noundef 1, i32 noundef %8, i32 noundef 2, i32 noundef %11, i32 noundef 3, i32 noundef %14) #12
  %68 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %priv, align 4
  %wiphy55.1 = getelementptr inbounds %struct.ieee80211_hw, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %wiphy55.1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %wiphy55.1, align 8
  %dev56.1 = getelementptr inbounds %struct.wiphy, ptr %71, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev56.1, ptr noundef nonnull @.str.30, i32 noundef 4, i32 noundef %17, i32 noundef 5, i32 noundef %20, i32 noundef 6, i32 noundef %23, i32 noundef 7, i32 noundef %26) #12
  %72 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %priv, align 4
  %wiphy55.2 = getelementptr inbounds %struct.ieee80211_hw, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %wiphy55.2 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %wiphy55.2, align 8
  %dev56.2 = getelementptr inbounds %struct.wiphy, ptr %75, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev56.2, ptr noundef nonnull @.str.30, i32 noundef 8, i32 noundef %29, i32 noundef 9, i32 noundef %32, i32 noundef 10, i32 noundef %35, i32 noundef 11, i32 noundef %38) #12
  %76 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %priv, align 4
  %wiphy75 = getelementptr inbounds %struct.ieee80211_hw, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %wiphy75 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %wiphy75, align 8
  %dev76 = getelementptr inbounds %struct.wiphy, ptr %79, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev76, ptr noundef nonnull @.str.33, i32 noundef %41, i32 noundef %44, i32 noundef %47, i32 noundef %50) #12
  %80 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %priv, align 4
  %wiphy90 = getelementptr inbounds %struct.ieee80211_hw, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %wiphy90 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %wiphy90, align 8
  %dev91 = getelementptr inbounds %struct.wiphy, ptr %83, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev91, ptr noundef nonnull @.str.36, i32 noundef %53, i32 noundef %56) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wsm_handle_exception.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wsm_handle_exception, %if.then100)) #8
          to label %cleanup127 [label %if.then100], !srcloc !180

if.then100:                                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  call void @print_hex_dump(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.38, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef nonnull %fname, i32 noundef 48, i1 noundef zeroext true) #8
  br label %cleanup127

do.end107:                                        ; preds = %cleanup.cont22.17.do.end107_crit_edge, %cleanup.cont22.16.do.end107_crit_edge, %cleanup.cont22.15.do.end107_crit_edge, %cleanup.cont22.14.do.end107_crit_edge, %cleanup.cont22.13.do.end107_crit_edge, %cleanup.cont22.12.do.end107_crit_edge, %cleanup.cont22.11.do.end107_crit_edge, %cleanup.cont22.10.do.end107_crit_edge, %cleanup.cont22.9.do.end107_crit_edge, %cleanup.cont22.8.do.end107_crit_edge, %cleanup.cont22.7.do.end107_crit_edge, %cleanup.cont22.6.do.end107_crit_edge, %cleanup.cont22.5.do.end107_crit_edge, %cleanup.cont22.4.do.end107_crit_edge, %cleanup.cont22.3.do.end107_crit_edge, %cleanup.cont22.2.do.end107_crit_edge, %cleanup.cont22.1.do.end107_crit_edge, %cleanup.cont22.do.end107_crit_edge, %cleanup.do.end107_crit_edge, %entry.do.end107_crit_edge
  %84 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %priv, align 4
  %wiphy109 = getelementptr inbounds %struct.ieee80211_hw, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %wiphy109 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %wiphy109, align 8
  %dev110 = getelementptr inbounds %struct.wiphy, ptr %87, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev110, ptr noundef nonnull @.str.41) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wsm_handle_exception.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wsm_handle_exception, %if.then123)) #8
          to label %cleanup127 [label %if.then123], !srcloc !180

if.then123:                                       ; preds = %do.end107
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @print_hex_dump(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.43, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef %data, i32 noundef %len, i1 noundef zeroext true) #8
  br label %cleanup127

cleanup127:                                       ; preds = %if.then123, %do.end107, %if.then100, %if.end47
  %retval.0 = phi i32 [ 0, %if.then100 ], [ -22, %if.then123 ], [ 0, %if.end47 ], [ -22, %do.end107 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %fname) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wsm_handle_rx(ptr noundef %priv, i16 noundef zeroext %id, ptr noundef %wsm, ptr noundef %skb_p) local_unnamed_addr #0 align 64 {
entry:
  %tx_confirm.i317 = alloca %struct.wsm_tx_confirm, align 4
  %tx_confirm.i = alloca %struct.wsm_tx_confirm, align 4
  %wsm_buf = alloca %struct.wsm_buf, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %wsm_buf) #8
  %0 = getelementptr inbounds %struct.wsm_buf, ptr %wsm_buf, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wsm_buf, ptr %wsm_buf, i32 0, i32 2
  %2 = lshr i16 %id, 6
  %3 = and i16 %2, 15
  %and = zext i16 %3 to i32
  %and2 = and i16 %id, -961
  %4 = ptrtoint ptr %wsm_buf to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %wsm, ptr %wsm_buf, align 4
  %arrayidx4 = getelementptr %struct.wsm_hdr, ptr %wsm, i32 1
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %arrayidx4, ptr %0, align 4
  %6 = ptrtoint ptr %wsm to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %wsm, align 2
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  %idxprom = zext i16 %8 to i32
  %arrayidx6 = getelementptr i8, ptr %wsm, i32 %idxprom
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %arrayidx6, ptr %1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wsm_handle_rx.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wsm_handle_rx, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !180

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv9 = zext i16 %and2 to i32
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %12 = ptrtoint ptr %wsm_buf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wsm_buf, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %11 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %13 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wsm_handle_rx.__UNIQUE_ID_ddebug359, ptr noundef nonnull @.str.45, i32 noundef %conv9, i32 noundef %sub.ptr.sub) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %conv12 = zext i16 %and2 to i32
  %14 = zext i16 %and2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i16 %and2, label %if.else21 [
    i16 1028, label %if.then14
    i16 1054, label %if.then19
  ]

if.then14:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tx_confirm.i) #8
  %15 = getelementptr inbounds %struct.wsm_tx_confirm, ptr %tx_confirm.i, i32 0, i32 1
  %16 = getelementptr inbounds %struct.wsm_tx_confirm, ptr %tx_confirm.i, i32 0, i32 2
  %17 = getelementptr inbounds %struct.wsm_tx_confirm, ptr %tx_confirm.i, i32 0, i32 3
  %18 = getelementptr inbounds %struct.wsm_tx_confirm, ptr %tx_confirm.i, i32 0, i32 4
  %19 = getelementptr inbounds %struct.wsm_tx_confirm, ptr %tx_confirm.i, i32 0, i32 5
  %20 = getelementptr inbounds %struct.wsm_tx_confirm, ptr %tx_confirm.i, i32 0, i32 6
  %21 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %0, align 4
  %add.ptr.i = getelementptr i8, ptr %22, i32 4
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %cmp.i = icmp ugt ptr %add.ptr.i, %24
  br i1 %cmp.i, label %if.then14.do.end.i_crit_edge, label %cleanup.cont.i

if.then14.do.end.i_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

cleanup.cont.i:                                   ; preds = %if.then14
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %22, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #8
  %28 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %add.ptr.i, ptr %0, align 4
  %29 = ptrtoint ptr %tx_confirm.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %27, ptr %tx_confirm.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %22, i32 8
  %cmp8.i = icmp ugt ptr %add.ptr6.i, %24
  br i1 %cmp8.i, label %cleanup.cont.i.do.end.i_crit_edge, label %cleanup.cont17.i

cleanup.cont.i.do.end.i_crit_edge:                ; preds = %cleanup.cont.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

cleanup.cont17.i:                                 ; preds = %cleanup.cont.i
  %30 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add.ptr.i, align 4
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #8
  %33 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %add.ptr6.i, ptr %0, align 4
  %34 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %32, ptr %15, align 4
  %add.ptr20.i = getelementptr i8, ptr %22, i32 9
  %cmp22.i = icmp ugt ptr %add.ptr20.i, %24
  br i1 %cmp22.i, label %cleanup.cont17.i.do.end.i_crit_edge, label %cleanup.cont31.i

cleanup.cont17.i.do.end.i_crit_edge:              ; preds = %cleanup.cont17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

cleanup.cont31.i:                                 ; preds = %cleanup.cont17.i
  %35 = ptrtoint ptr %add.ptr6.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %add.ptr6.i, align 1
  %37 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %add.ptr20.i, ptr %0, align 4
  %38 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %36, ptr %16, align 4
  %add.ptr34.i = getelementptr i8, ptr %22, i32 10
  %cmp36.i = icmp ugt ptr %add.ptr34.i, %24
  br i1 %cmp36.i, label %cleanup.cont31.i.do.end.i_crit_edge, label %cleanup.cont45.i

cleanup.cont31.i.do.end.i_crit_edge:              ; preds = %cleanup.cont31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

cleanup.cont45.i:                                 ; preds = %cleanup.cont31.i
  %39 = ptrtoint ptr %add.ptr20.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %add.ptr20.i, align 1
  %41 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %add.ptr34.i, ptr %0, align 4
  %42 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %40, ptr %17, align 1
  %add.ptr48.i = getelementptr i8, ptr %22, i32 12
  %cmp50.i = icmp ugt ptr %add.ptr48.i, %24
  br i1 %cmp50.i, label %cleanup.cont45.i.do.end.i_crit_edge, label %cleanup.cont59.i

cleanup.cont45.i.do.end.i_crit_edge:              ; preds = %cleanup.cont45.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

cleanup.cont59.i:                                 ; preds = %cleanup.cont45.i
  %43 = ptrtoint ptr %add.ptr34.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %add.ptr34.i, align 2
  %45 = tail call i16 @llvm.bswap.i16(i16 %44) #8
  %46 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %add.ptr48.i, ptr %0, align 4
  %47 = ptrtoint ptr %18 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %45, ptr %18, align 2
  %add.ptr62.i = getelementptr i8, ptr %22, i32 16
  %cmp64.i = icmp ugt ptr %add.ptr62.i, %24
  br i1 %cmp64.i, label %cleanup.cont59.i.do.end.i_crit_edge, label %cleanup.cont73.i

cleanup.cont59.i.do.end.i_crit_edge:              ; preds = %cleanup.cont59.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

cleanup.cont73.i:                                 ; preds = %cleanup.cont59.i
  %48 = ptrtoint ptr %add.ptr48.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %add.ptr48.i, align 4
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #8
  %51 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %add.ptr62.i, ptr %0, align 4
  %52 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %50, ptr %19, align 4
  %add.ptr76.i = getelementptr i8, ptr %22, i32 20
  %cmp78.i = icmp ugt ptr %add.ptr76.i, %24
  br i1 %cmp78.i, label %cleanup.cont73.i.do.end.i_crit_edge, label %cleanup.cont87.i

cleanup.cont73.i.do.end.i_crit_edge:              ; preds = %cleanup.cont73.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

cleanup.cont87.i:                                 ; preds = %cleanup.cont73.i
  call void @__sanitizer_cov_trace_pc() #10
  %53 = ptrtoint ptr %add.ptr62.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %add.ptr62.i, align 4
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #8
  %56 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %add.ptr76.i, ptr %0, align 4
  %57 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %55, ptr %20, align 4
  call void @cw1200_tx_confirm_cb(ptr noundef %priv, i32 noundef %and, ptr noundef nonnull %tx_confirm.i) #8
  br label %wsm_tx_confirm.exit

do.end.i:                                         ; preds = %cleanup.cont73.i.do.end.i_crit_edge, %cleanup.cont59.i.do.end.i_crit_edge, %cleanup.cont45.i.do.end.i_crit_edge, %cleanup.cont31.i.do.end.i_crit_edge, %cleanup.cont17.i.do.end.i_crit_edge, %cleanup.cont.i.do.end.i_crit_edge, %if.then14.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 370, i32 noundef 9, ptr noundef null) #8
  br label %wsm_tx_confirm.exit

wsm_tx_confirm.exit:                              ; preds = %do.end.i, %cleanup.cont87.i
  %retval.0.i301 = phi i32 [ -22, %do.end.i ], [ 0, %cleanup.cont87.i ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tx_confirm.i) #8
  br label %cleanup231

if.then19:                                        ; preds = %do.end
  %58 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %0, align 4
  %add.ptr.i303 = getelementptr i8, ptr %59, i32 4
  %60 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %1, align 4
  %cmp.i305 = icmp ugt ptr %add.ptr.i303, %61
  br i1 %cmp.i305, label %if.then19.cleanup70.sink.split.i_crit_edge, label %cleanup.cont.i306

if.then19.cleanup70.sink.split.i_crit_edge:       ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup70.sink.split.i

cleanup.cont.i306:                                ; preds = %if.then19
  %62 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %59, align 4
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #8
  %65 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %add.ptr.i303, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %64)
  %cmp4.i = icmp slt i32 %64, 1
  br i1 %cmp4.i, label %cleanup.cont.i306.cleanup70.sink.split.i_crit_edge, label %if.end28.i, !prof !184

cleanup.cont.i306.cleanup70.sink.split.i_crit_edge: ; preds = %cleanup.cont.i306
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup70.sink.split.i

if.end28.i:                                       ; preds = %cleanup.cont.i306
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %63)
  %cmp29.not.i = icmp eq i32 %63, 16777216
  br i1 %cmp29.not.i, label %if.end28.i.if.end37.i_crit_edge, label %if.then30.i

if.end28.i.if.end37.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37.i

if.then30.i:                                      ; preds = %if.end28.i
  %sub.i = add nsw i32 %64, -1
  %call.i = tail call i32 @wsm_release_tx_buffer(ptr noundef %priv, i32 noundef %sub.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp31.i = icmp slt i32 %call.i, 0
  br i1 %cmp31.i, label %if.then30.i.cleanup231_crit_edge, label %if.else.i

if.then30.i.cleanup231_crit_edge:                 ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup231

if.else.i:                                        ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp33.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp33.not.i, label %if.else.i.if.end37.i_crit_edge, label %if.then34.i

if.else.i.if.end37.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37.i

if.then34.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @cw1200_bh_wakeup(ptr noundef %priv) #8
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.then34.i, %if.else.i.if.end37.i_crit_edge, %if.end28.i.if.end37.i_crit_edge
  %tmp.094.i = phi i32 [ %64, %if.then34.i ], [ %64, %if.else.i.if.end37.i_crit_edge ], [ 1, %if.end28.i.if.end37.i_crit_edge ]
  %debug.i.i = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 15
  %66 = ptrtoint ptr %debug.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %debug.i.i, align 4
  %tx_multi.i.i = getelementptr inbounds %struct.cw1200_debug_priv, ptr %67, i32 0, i32 5
  %68 = ptrtoint ptr %tx_multi.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %tx_multi.i.i, align 4
  %inc.i.i = add i32 %69, 1
  store i32 %inc.i.i, ptr %tx_multi.i.i, align 4
  %70 = load ptr, ptr %debug.i.i, align 4
  %tx_multi_frames.i.i = getelementptr inbounds %struct.cw1200_debug_priv, ptr %70, i32 0, i32 6
  %71 = ptrtoint ptr %tx_multi_frames.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %tx_multi_frames.i.i, align 4
  %add.i.i = add i32 %72, %64
  store i32 %add.i.i, ptr %tx_multi_frames.i.i, align 4
  %73 = getelementptr inbounds %struct.wsm_tx_confirm, ptr %tx_confirm.i317, i32 0, i32 1
  %74 = getelementptr inbounds %struct.wsm_tx_confirm, ptr %tx_confirm.i317, i32 0, i32 2
  %75 = getelementptr inbounds %struct.wsm_tx_confirm, ptr %tx_confirm.i317, i32 0, i32 3
  %76 = getelementptr inbounds %struct.wsm_tx_confirm, ptr %tx_confirm.i317, i32 0, i32 4
  %77 = getelementptr inbounds %struct.wsm_tx_confirm, ptr %tx_confirm.i317, i32 0, i32 5
  %78 = getelementptr inbounds %struct.wsm_tx_confirm, ptr %tx_confirm.i317, i32 0, i32 6
  br label %do.body38.i

do.body38.i:                                      ; preds = %wsm_tx_confirm.exit343.do.body38.i_crit_edge, %if.end37.i
  %count.0.i = phi i32 [ %tmp.094.i, %if.end37.i ], [ %dec.i, %wsm_tx_confirm.exit343.do.body38.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tx_confirm.i317) #8
  %79 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %0, align 4
  %add.ptr.i319 = getelementptr i8, ptr %80, i32 4
  %81 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %1, align 4
  %cmp.i321 = icmp ugt ptr %add.ptr.i319, %82
  br i1 %cmp.i321, label %do.body38.i.wsm_tx_confirm.exit343.thread_crit_edge, label %cleanup.cont.i324

do.body38.i.wsm_tx_confirm.exit343.thread_crit_edge: ; preds = %do.body38.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wsm_tx_confirm.exit343.thread

cleanup.cont.i324:                                ; preds = %do.body38.i
  %83 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %80, align 4
  %85 = call i32 @llvm.bswap.i32(i32 %84) #8
  %86 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %add.ptr.i319, ptr %0, align 4
  %87 = ptrtoint ptr %tx_confirm.i317 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %85, ptr %tx_confirm.i317, align 4
  %add.ptr6.i322 = getelementptr i8, ptr %80, i32 8
  %cmp8.i323 = icmp ugt ptr %add.ptr6.i322, %82
  br i1 %cmp8.i323, label %cleanup.cont.i324.wsm_tx_confirm.exit343.thread_crit_edge, label %cleanup.cont17.i327

cleanup.cont.i324.wsm_tx_confirm.exit343.thread_crit_edge: ; preds = %cleanup.cont.i324
  call void @__sanitizer_cov_trace_pc() #10
  br label %wsm_tx_confirm.exit343.thread

cleanup.cont17.i327:                              ; preds = %cleanup.cont.i324
  %88 = ptrtoint ptr %add.ptr.i319 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %add.ptr.i319, align 4
  %90 = call i32 @llvm.bswap.i32(i32 %89) #8
  %91 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %add.ptr6.i322, ptr %0, align 4
  %92 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %90, ptr %73, align 4
  %add.ptr20.i325 = getelementptr i8, ptr %80, i32 9
  %cmp22.i326 = icmp ugt ptr %add.ptr20.i325, %82
  br i1 %cmp22.i326, label %cleanup.cont17.i327.wsm_tx_confirm.exit343.thread_crit_edge, label %cleanup.cont31.i330

cleanup.cont17.i327.wsm_tx_confirm.exit343.thread_crit_edge: ; preds = %cleanup.cont17.i327
  call void @__sanitizer_cov_trace_pc() #10
  br label %wsm_tx_confirm.exit343.thread

cleanup.cont31.i330:                              ; preds = %cleanup.cont17.i327
  %93 = ptrtoint ptr %add.ptr6.i322 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %add.ptr6.i322, align 1
  %95 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %add.ptr20.i325, ptr %0, align 4
  %96 = ptrtoint ptr %74 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %94, ptr %74, align 4
  %add.ptr34.i328 = getelementptr i8, ptr %80, i32 10
  %cmp36.i329 = icmp ugt ptr %add.ptr34.i328, %82
  br i1 %cmp36.i329, label %cleanup.cont31.i330.wsm_tx_confirm.exit343.thread_crit_edge, label %cleanup.cont45.i333

cleanup.cont31.i330.wsm_tx_confirm.exit343.thread_crit_edge: ; preds = %cleanup.cont31.i330
  call void @__sanitizer_cov_trace_pc() #10
  br label %wsm_tx_confirm.exit343.thread

cleanup.cont45.i333:                              ; preds = %cleanup.cont31.i330
  %97 = ptrtoint ptr %add.ptr20.i325 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %add.ptr20.i325, align 1
  %99 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %add.ptr34.i328, ptr %0, align 4
  %100 = ptrtoint ptr %75 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %98, ptr %75, align 1
  %add.ptr48.i331 = getelementptr i8, ptr %80, i32 12
  %cmp50.i332 = icmp ugt ptr %add.ptr48.i331, %82
  br i1 %cmp50.i332, label %cleanup.cont45.i333.wsm_tx_confirm.exit343.thread_crit_edge, label %cleanup.cont59.i336

cleanup.cont45.i333.wsm_tx_confirm.exit343.thread_crit_edge: ; preds = %cleanup.cont45.i333
  call void @__sanitizer_cov_trace_pc() #10
  br label %wsm_tx_confirm.exit343.thread

cleanup.cont59.i336:                              ; preds = %cleanup.cont45.i333
  %101 = ptrtoint ptr %add.ptr34.i328 to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %add.ptr34.i328, align 2
  %103 = call i16 @llvm.bswap.i16(i16 %102) #8
  %104 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %add.ptr48.i331, ptr %0, align 4
  %105 = ptrtoint ptr %76 to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 %103, ptr %76, align 2
  %add.ptr62.i334 = getelementptr i8, ptr %80, i32 16
  %cmp64.i335 = icmp ugt ptr %add.ptr62.i334, %82
  br i1 %cmp64.i335, label %cleanup.cont59.i336.wsm_tx_confirm.exit343.thread_crit_edge, label %cleanup.cont73.i339

cleanup.cont59.i336.wsm_tx_confirm.exit343.thread_crit_edge: ; preds = %cleanup.cont59.i336
  call void @__sanitizer_cov_trace_pc() #10
  br label %wsm_tx_confirm.exit343.thread

cleanup.cont73.i339:                              ; preds = %cleanup.cont59.i336
  %106 = ptrtoint ptr %add.ptr48.i331 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %add.ptr48.i331, align 4
  %108 = call i32 @llvm.bswap.i32(i32 %107) #8
  %109 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %add.ptr62.i334, ptr %0, align 4
  %110 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %108, ptr %77, align 4
  %add.ptr76.i337 = getelementptr i8, ptr %80, i32 20
  %cmp78.i338 = icmp ugt ptr %add.ptr76.i337, %82
  br i1 %cmp78.i338, label %cleanup.cont73.i339.wsm_tx_confirm.exit343.thread_crit_edge, label %wsm_tx_confirm.exit343

cleanup.cont73.i339.wsm_tx_confirm.exit343.thread_crit_edge: ; preds = %cleanup.cont73.i339
  call void @__sanitizer_cov_trace_pc() #10
  br label %wsm_tx_confirm.exit343.thread

wsm_tx_confirm.exit343.thread:                    ; preds = %cleanup.cont73.i339.wsm_tx_confirm.exit343.thread_crit_edge, %cleanup.cont59.i336.wsm_tx_confirm.exit343.thread_crit_edge, %cleanup.cont45.i333.wsm_tx_confirm.exit343.thread_crit_edge, %cleanup.cont31.i330.wsm_tx_confirm.exit343.thread_crit_edge, %cleanup.cont17.i327.wsm_tx_confirm.exit343.thread_crit_edge, %cleanup.cont.i324.wsm_tx_confirm.exit343.thread_crit_edge, %do.body38.i.wsm_tx_confirm.exit343.thread_crit_edge
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 370, i32 noundef 9, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tx_confirm.i317) #8
  br label %cleanup231

wsm_tx_confirm.exit343:                           ; preds = %cleanup.cont73.i339
  %111 = ptrtoint ptr %add.ptr62.i334 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %add.ptr62.i334, align 4
  %113 = call i32 @llvm.bswap.i32(i32 %112) #8
  %114 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %add.ptr76.i337, ptr %0, align 4
  %115 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %113, ptr %78, align 4
  call void @cw1200_tx_confirm_cb(ptr noundef %priv, i32 noundef %and, ptr noundef nonnull %tx_confirm.i317) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tx_confirm.i317) #8
  %dec.i = add i32 %count.0.i, -1
  %tobool42.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool42.not.i, label %wsm_tx_confirm.exit343.cleanup231_crit_edge, label %wsm_tx_confirm.exit343.do.body38.i_crit_edge

wsm_tx_confirm.exit343.do.body38.i_crit_edge:     ; preds = %wsm_tx_confirm.exit343
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body38.i

wsm_tx_confirm.exit343.cleanup231_crit_edge:      ; preds = %wsm_tx_confirm.exit343
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup231

cleanup70.sink.split.i:                           ; preds = %cleanup.cont.i306.cleanup70.sink.split.i_crit_edge, %if.then19.cleanup70.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 381, %cleanup.cont.i306.cleanup70.sink.split.i_crit_edge ], [ 401, %if.then19.cleanup70.sink.split.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef %.sink.i, i32 noundef 9, ptr noundef null) #8
  br label %cleanup231

if.else21:                                        ; preds = %do.end
  %and23 = and i32 %conv12, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.else166, label %if.then25

if.then25:                                        ; preds = %if.else21
  %wsm_cmd26 = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 91
  tail call void @_raw_spin_lock(ptr noundef %wsm_cmd26) #8
  %arg = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 91, i32 4
  %116 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %arg, align 4
  %cmd = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 91, i32 6
  %118 = ptrtoint ptr %cmd to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %cmd, align 4
  %120 = and i16 %119, -961
  store i16 -1, ptr %cmd, align 4
  tail call void @_raw_spin_unlock(ptr noundef %wsm_cmd26) #8
  %and37 = and i32 %conv12, 63551
  %conv38 = zext i16 %120 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and37, i32 %conv38)
  %cmp39.not = icmp eq i32 %and37, %conv38
  br i1 %cmp39.not, label %if.end72, label %do.end56, !prof !181

do.end56:                                         ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1330, i32 noundef 9, ptr noundef null) #8
  br label %cleanup231

if.end72:                                         ; preds = %if.then25
  %121 = zext i16 %and2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %121, ptr @__sancov_gen_cov_switch_values.86)
  switch i16 %and2, label %do.end152 [
    i16 1029, label %sw.bb
    i16 1030, label %sw.bb78
    i16 1031, label %sw.bb83
    i16 1033, label %sw.bb88
    i16 1035, label %sw.bb93
    i16 1032, label %if.end72.sw.bb98_crit_edge
    i16 1034, label %if.end72.sw.bb98_crit_edge353
    i16 1036, label %if.end72.sw.bb98_crit_edge354
    i16 1037, label %if.end72.sw.bb98_crit_edge355
    i16 1040, label %if.end72.sw.bb98_crit_edge356
    i16 1041, label %if.end72.sw.bb98_crit_edge357
    i16 1042, label %if.end72.sw.bb98_crit_edge358
    i16 1043, label %if.end72.sw.bb98_crit_edge359
    i16 1046, label %if.end72.sw.bb98_crit_edge360
    i16 1047, label %if.end72.sw.bb98_crit_edge361
    i16 1048, label %if.end72.sw.bb98_crit_edge362
    i16 1049, label %if.end72.sw.bb98_crit_edge363
    i16 1050, label %if.end72.sw.bb98_crit_edge364
    i16 1051, label %if.end72.sw.bb98_crit_edge365
    i16 1052, label %if.end72.sw.bb98_crit_edge366
  ]

if.end72.sw.bb98_crit_edge366:                    ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb98

if.end72.sw.bb98_crit_edge365:                    ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb98

if.end72.sw.bb98_crit_edge364:                    ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb98

if.end72.sw.bb98_crit_edge363:                    ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb98

if.end72.sw.bb98_crit_edge362:                    ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb98

if.end72.sw.bb98_crit_edge361:                    ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb98

if.end72.sw.bb98_crit_edge360:                    ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb98

if.end72.sw.bb98_crit_edge359:                    ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb98

if.end72.sw.bb98_crit_edge358:                    ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb98

if.end72.sw.bb98_crit_edge357:                    ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb98

if.end72.sw.bb98_crit_edge356:                    ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb98

if.end72.sw.bb98_crit_edge355:                    ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb98

if.end72.sw.bb98_crit_edge354:                    ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb98

if.end72.sw.bb98_crit_edge353:                    ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb98

if.end72.sw.bb98_crit_edge:                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb98

sw.bb:                                            ; preds = %if.end72
  %tobool74.not = icmp eq ptr %117, null
  br i1 %tobool74.not, label %sw.bb.sw.epilog_crit_edge, label %if.then75

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then75:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %call76 = call fastcc i32 @wsm_read_mib_confirm(ptr noundef nonnull %117, ptr noundef nonnull %wsm_buf)
  br label %sw.epilog

sw.bb78:                                          ; preds = %if.end72
  %tobool79.not = icmp eq ptr %117, null
  br i1 %tobool79.not, label %sw.bb78.sw.epilog_crit_edge, label %if.then80

sw.bb78.sw.epilog_crit_edge:                      ; preds = %sw.bb78
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then80:                                        ; preds = %sw.bb78
  call void @__sanitizer_cov_trace_pc() #10
  %call81 = call fastcc i32 @wsm_write_mib_confirm(ptr noundef %priv, ptr noundef nonnull %117, ptr noundef nonnull %wsm_buf)
  br label %sw.epilog

sw.bb83:                                          ; preds = %if.end72
  %tobool84.not = icmp eq ptr %117, null
  br i1 %tobool84.not, label %sw.bb83.sw.epilog_crit_edge, label %if.then85

sw.bb83.sw.epilog_crit_edge:                      ; preds = %sw.bb83
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then85:                                        ; preds = %sw.bb83
  call void @__sanitizer_cov_trace_pc() #10
  %call86 = call fastcc i32 @wsm_scan_started(ptr noundef %priv, ptr noundef nonnull %wsm_buf)
  br label %sw.epilog

sw.bb88:                                          ; preds = %if.end72
  %tobool89.not = icmp eq ptr %117, null
  br i1 %tobool89.not, label %sw.bb88.sw.epilog_crit_edge, label %if.then90

sw.bb88.sw.epilog_crit_edge:                      ; preds = %sw.bb88
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then90:                                        ; preds = %sw.bb88
  call void @__sanitizer_cov_trace_pc() #10
  %call91 = call fastcc i32 @wsm_configuration_confirm(ptr noundef nonnull %117, ptr noundef nonnull %wsm_buf)
  br label %sw.epilog

sw.bb93:                                          ; preds = %if.end72
  %tobool94.not = icmp eq ptr %117, null
  br i1 %tobool94.not, label %sw.bb93.sw.epilog_crit_edge, label %if.then95

sw.bb93.sw.epilog_crit_edge:                      ; preds = %sw.bb93
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then95:                                        ; preds = %sw.bb93
  call void @__sanitizer_cov_trace_pc() #10
  %call96 = call fastcc i32 @wsm_join_confirm(ptr noundef nonnull %117, ptr noundef nonnull %wsm_buf)
  br label %sw.epilog

sw.bb98:                                          ; preds = %if.end72.sw.bb98_crit_edge, %if.end72.sw.bb98_crit_edge353, %if.end72.sw.bb98_crit_edge354, %if.end72.sw.bb98_crit_edge355, %if.end72.sw.bb98_crit_edge356, %if.end72.sw.bb98_crit_edge357, %if.end72.sw.bb98_crit_edge358, %if.end72.sw.bb98_crit_edge359, %if.end72.sw.bb98_crit_edge360, %if.end72.sw.bb98_crit_edge361, %if.end72.sw.bb98_crit_edge362, %if.end72.sw.bb98_crit_edge363, %if.end72.sw.bb98_crit_edge364, %if.end72.sw.bb98_crit_edge365, %if.end72.sw.bb98_crit_edge366
  %cmp100.not = icmp eq ptr %117, null
  br i1 %cmp100.not, label %sw.bb98.if.end123_crit_edge, label %do.end117, !prof !181

sw.bb98.if.end123_crit_edge:                      ; preds = %sw.bb98
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end123

do.end117:                                        ; preds = %sw.bb98
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1379, i32 noundef 9, ptr noundef null) #8
  br label %if.end123

if.end123:                                        ; preds = %do.end117, %sw.bb98.if.end123_crit_edge
  %122 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %0, align 4
  %add.ptr.i309 = getelementptr i8, ptr %123, i32 4
  %124 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %1, align 4
  %cmp.i311 = icmp ugt ptr %add.ptr.i309, %125
  br i1 %cmp.i311, label %do.end.i313, label %cleanup.cont.i312

cleanup.cont.i312:                                ; preds = %if.end123
  %126 = ptrtoint ptr %123 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %123, align 4
  %128 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %add.ptr.i309, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %cmp4.not.i = icmp eq i32 %127, 0
  br i1 %cmp4.not.i, label %cleanup.cont.i312.sw.epilog_crit_edge, label %cleanup.cont.i312.do.end136_crit_edge

cleanup.cont.i312.do.end136_crit_edge:            ; preds = %cleanup.cont.i312
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end136

cleanup.cont.i312.sw.epilog_crit_edge:            ; preds = %cleanup.cont.i312
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end.i313:                                      ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 101, i32 noundef 9, ptr noundef null) #8
  br label %do.end136

do.end136:                                        ; preds = %do.end.i313, %cleanup.cont.i312.do.end136_crit_edge
  %129 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %priv, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %130, i32 0, i32 1
  %131 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %132, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.46, i32 noundef %and37) #12
  %join_status = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 97
  %133 = ptrtoint ptr %join_status to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %join_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %134)
  %cmp139 = icmp ugt i32 %134, 1
  br i1 %cmp139, label %if.then141, label %do.end136.sw.epilog_crit_edge

do.end136.sw.epilog_crit_edge:                    ; preds = %do.end136
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then141:                                       ; preds = %do.end136
  tail call void @wsm_lock_tx(ptr noundef %priv)
  %workqueue = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 16
  %135 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %workqueue, align 4
  %unjoin_work = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 102
  %call.i315 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %136, ptr noundef %unjoin_work) #8
  br i1 %call.i315, label %if.then141.sw.epilog_crit_edge, label %if.then146

if.then141.sw.epilog_crit_edge:                   ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then146:                                       ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @wsm_unlock_tx(ptr noundef %priv)
  br label %sw.epilog

do.end152:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  %137 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %priv, align 4
  %wiphy154 = getelementptr inbounds %struct.ieee80211_hw, ptr %138, i32 0, i32 1
  %139 = ptrtoint ptr %wiphy154 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %wiphy154, align 8
  %dev155 = getelementptr inbounds %struct.wiphy, ptr %140, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev155, ptr noundef nonnull @.str.49, i32 noundef %and37) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end152, %if.then146, %if.then141.sw.epilog_crit_edge, %do.end136.sw.epilog_crit_edge, %cleanup.cont.i312.sw.epilog_crit_edge, %if.then95, %sw.bb93.sw.epilog_crit_edge, %if.then90, %sw.bb88.sw.epilog_crit_edge, %if.then85, %sw.bb83.sw.epilog_crit_edge, %if.then80, %sw.bb78.sw.epilog_crit_edge, %if.then75, %sw.bb.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %do.end152 ], [ -22, %if.then146 ], [ -22, %if.then141.sw.epilog_crit_edge ], [ -22, %do.end136.sw.epilog_crit_edge ], [ %call96, %if.then95 ], [ 0, %sw.bb93.sw.epilog_crit_edge ], [ %call91, %if.then90 ], [ 0, %sw.bb88.sw.epilog_crit_edge ], [ %call86, %if.then85 ], [ 0, %sw.bb83.sw.epilog_crit_edge ], [ %call81, %if.then80 ], [ 0, %sw.bb78.sw.epilog_crit_edge ], [ %call76, %if.then75 ], [ 0, %sw.bb.sw.epilog_crit_edge ], [ 0, %cleanup.cont.i312.sw.epilog_crit_edge ]
  tail call void @_raw_spin_lock(ptr noundef %wsm_cmd26) #8
  %ret161 = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 91, i32 5
  %141 = ptrtoint ptr %ret161 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %ret.0, ptr %ret161, align 4
  %done = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 91, i32 1
  %142 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 1, ptr %done, align 4
  tail call void @_raw_spin_unlock(ptr noundef %wsm_cmd26) #8
  %wsm_cmd_wq = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 92
  tail call void @__wake_up(ptr noundef %wsm_cmd_wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  br label %cleanup231

if.else166:                                       ; preds = %if.else21
  %and168 = and i32 %conv12, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and168)
  %tobool169.not = icmp eq i32 %and168, 0
  br i1 %tobool169.not, label %do.end213, label %if.then170

if.then170:                                       ; preds = %if.else166
  %143 = zext i16 %and2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %143, ptr @__sancov_gen_cov_switch_values.87)
  switch i16 %and2, label %do.end195 [
    i16 2049, label %sw.bb172
    i16 2052, label %sw.bb174
    i16 2053, label %sw.bb176
    i16 2054, label %sw.bb178
    i16 2056, label %sw.bb180
    i16 2057, label %sw.bb182
    i16 2058, label %sw.bb184
    i16 2059, label %sw.bb186
    i16 2060, label %sw.bb188
    i16 2063, label %sw.bb190
  ]

sw.bb172:                                         ; preds = %if.then170
  call void @__sanitizer_cov_trace_pc() #10
  %call173 = call fastcc i32 @wsm_startup_indication(ptr noundef %priv, ptr noundef nonnull %wsm_buf)
  br label %cleanup231

sw.bb174:                                         ; preds = %if.then170
  call void @__sanitizer_cov_trace_pc() #10
  %call175 = call fastcc i32 @wsm_receive_indication(ptr noundef %priv, i32 noundef %and, ptr noundef nonnull %wsm_buf, ptr noundef %skb_p)
  br label %cleanup231

sw.bb176:                                         ; preds = %if.then170
  call void @__sanitizer_cov_trace_pc() #10
  %call177 = call fastcc i32 @wsm_event_indication(ptr noundef %priv, ptr noundef nonnull %wsm_buf)
  br label %cleanup231

sw.bb178:                                         ; preds = %if.then170
  call void @__sanitizer_cov_trace_pc() #10
  %call179 = call fastcc i32 @wsm_scan_complete_indication(ptr noundef %priv, ptr noundef nonnull %wsm_buf)
  br label %cleanup231

sw.bb180:                                         ; preds = %if.then170
  call void @__sanitizer_cov_trace_pc() #10
  %call181 = call fastcc i32 @wsm_ba_timeout_indication(ptr noundef nonnull %wsm_buf)
  br label %cleanup231

sw.bb182:                                         ; preds = %if.then170
  %ps_mode_switch_in_progress.i = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 140
  %144 = ptrtoint ptr %ps_mode_switch_in_progress.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %ps_mode_switch_in_progress.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %tobool.not.i = icmp eq i32 %145, 0
  br i1 %tobool.not.i, label %sw.bb182.cleanup231_crit_edge, label %if.then.i

sw.bb182.cleanup231_crit_edge:                    ; preds = %sw.bb182
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup231

if.then.i:                                        ; preds = %sw.bb182
  call void @__sanitizer_cov_trace_pc() #10
  %146 = ptrtoint ptr %ps_mode_switch_in_progress.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 0, ptr %ps_mode_switch_in_progress.i, align 4
  %ps_mode_switch_done.i = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 141
  tail call void @__wake_up(ptr noundef %ps_mode_switch_done.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  br label %cleanup231

sw.bb184:                                         ; preds = %if.then170
  call void @__sanitizer_cov_trace_pc() #10
  %call185 = call fastcc i32 @wsm_channel_switch_indication(ptr noundef %priv, ptr noundef nonnull %wsm_buf)
  br label %cleanup231

sw.bb186:                                         ; preds = %if.then170
  call void @__sanitizer_cov_trace_pc() #10
  %call.i316 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72) #12
  br label %cleanup231

sw.bb188:                                         ; preds = %if.then170
  call void @__sanitizer_cov_trace_pc() #10
  %call189 = call fastcc i32 @wsm_suspend_resume_indication(ptr noundef %priv, i32 noundef %and, ptr noundef nonnull %wsm_buf)
  br label %cleanup231

sw.bb190:                                         ; preds = %if.then170
  call void @__sanitizer_cov_trace_pc() #10
  %call191 = call fastcc i32 @wsm_join_complete_indication(ptr noundef %priv, ptr noundef nonnull %wsm_buf)
  br label %cleanup231

do.end195:                                        ; preds = %if.then170
  call void @__sanitizer_cov_trace_pc() #10
  %call198 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, i32 noundef %conv12) #12
  br label %cleanup231

do.end213:                                        ; preds = %if.else166
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1446, i32 noundef 9, ptr noundef null) #8
  br label %cleanup231

cleanup231:                                       ; preds = %do.end213, %do.end195, %sw.bb190, %sw.bb188, %sw.bb186, %sw.bb184, %if.then.i, %sw.bb182.cleanup231_crit_edge, %sw.bb180, %sw.bb178, %sw.bb176, %sw.bb174, %sw.bb172, %sw.epilog, %do.end56, %cleanup70.sink.split.i, %wsm_tx_confirm.exit343.cleanup231_crit_edge, %wsm_tx_confirm.exit343.thread, %if.then30.i.cleanup231_crit_edge, %wsm_tx_confirm.exit
  %retval.0 = phi i32 [ %retval.0.i301, %wsm_tx_confirm.exit ], [ 0, %do.end195 ], [ %call191, %sw.bb190 ], [ %call189, %sw.bb188 ], [ 0, %sw.bb186 ], [ %call185, %sw.bb184 ], [ %call181, %sw.bb180 ], [ %call179, %sw.bb178 ], [ %call177, %sw.bb176 ], [ %call175, %sw.bb174 ], [ %call173, %sw.bb172 ], [ -22, %do.end213 ], [ -22, %do.end56 ], [ 0, %sw.epilog ], [ %call.i, %if.then30.i.cleanup231_crit_edge ], [ -22, %cleanup70.sink.split.i ], [ -22, %wsm_tx_confirm.exit343.thread ], [ 0, %sw.bb182.cleanup231_crit_edge ], [ 0, %if.then.i ], [ 0, %wsm_tx_confirm.exit343.cleanup231_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %wsm_buf) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wsm_read_mib_confirm(ptr nocapture noundef %arg, ptr nocapture noundef %buf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.wsm_buf, ptr %buf, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %end = getelementptr inbounds %struct.wsm_buf, ptr %buf, i32 0, i32 2
  %2 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %end, align 4
  %cmp = icmp ugt ptr %add.ptr, %3
  br i1 %cmp, label %entry.do.end138_crit_edge, label %cleanup.cont

entry.do.end138_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end138

cleanup.cont:                                     ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %6 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp4.not = icmp eq i32 %5, 0
  br i1 %cmp4.not, label %if.end31, label %cleanup.cont28, !prof !181

cleanup.cont28:                                   ; preds = %cleanup.cont
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 219, i32 noundef 9, ptr noundef null) #8
  br label %cleanup152

if.end31:                                         ; preds = %cleanup.cont
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %add.ptr35 = getelementptr i8, ptr %8, i32 2
  %9 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %end, align 4
  %cmp37 = icmp ugt ptr %add.ptr35, %10
  br i1 %cmp37, label %if.end31.do.end138_crit_edge, label %cleanup.cont46

if.end31.do.end138_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end138

cleanup.cont46:                                   ; preds = %if.end31
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %8, align 2
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  %14 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %add.ptr35, ptr %data, align 4
  %15 = ptrtoint ptr %arg to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arg, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %13, i16 %16)
  %cmp48.not = icmp eq i16 %13, %16
  br i1 %cmp48.not, label %if.end84, label %cleanup.cont81, !prof !181

cleanup.cont81:                                   ; preds = %cleanup.cont46
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 222, i32 noundef 9, ptr noundef null) #8
  br label %cleanup152

if.end84:                                         ; preds = %cleanup.cont46
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data, align 4
  %add.ptr87 = getelementptr i8, ptr %18, i32 2
  %19 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %end, align 4
  %cmp89 = icmp ugt ptr %add.ptr87, %20
  br i1 %cmp89, label %if.end84.do.end138_crit_edge, label %cleanup.cont99

if.end84.do.end138_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end138

cleanup.cont99:                                   ; preds = %if.end84
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %18, align 2
  %23 = tail call i16 @llvm.bswap.i16(i16 %22)
  %24 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %add.ptr87, ptr %data, align 4
  %conv100 = zext i16 %23 to i32
  %buf_size = getelementptr inbounds %struct.wsm_mib, ptr %arg, i32 0, i32 2
  %25 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %buf_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %conv100)
  %cmp101 = icmp ult i32 %26, %conv100
  %conv105 = trunc i32 %26 to i16
  %spec.select = select i1 %cmp101, i16 %conv105, i16 %23
  %conv109 = zext i16 %spec.select to i32
  %add.ptr110 = getelementptr i8, ptr %add.ptr87, i32 %conv109
  %cmp112 = icmp ugt ptr %add.ptr110, %20
  br i1 %cmp112, label %cleanup.cont99.do.end138_crit_edge, label %if.end115

cleanup.cont99.do.end138_crit_edge:               ; preds = %cleanup.cont99
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end138

if.end115:                                        ; preds = %cleanup.cont99
  call void @__sanitizer_cov_trace_pc() #10
  %buf116 = getelementptr inbounds %struct.wsm_mib, ptr %arg, i32 0, i32 1
  %27 = ptrtoint ptr %buf116 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %buf116, align 4
  %29 = call ptr @memcpy(ptr %28, ptr %add.ptr87, i32 %conv109)
  %30 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data, align 4
  %add.ptr121 = getelementptr i8, ptr %31, i32 %conv109
  store ptr %add.ptr121, ptr %data, align 4
  %32 = ptrtoint ptr %buf_size to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %conv109, ptr %buf_size, align 4
  br label %cleanup152

do.end138:                                        ; preds = %cleanup.cont99.do.end138_crit_edge, %if.end84.do.end138_crit_edge, %if.end31.do.end138_crit_edge, %entry.do.end138_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 234, i32 noundef 9, ptr noundef null) #8
  br label %cleanup152

cleanup152:                                       ; preds = %do.end138, %if.end115, %cleanup.cont81, %cleanup.cont28
  %retval.0 = phi i32 [ -22, %do.end138 ], [ 0, %if.end115 ], [ -22, %cleanup.cont28 ], [ -22, %cleanup.cont81 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wsm_write_mib_confirm(ptr noundef %priv, ptr nocapture noundef readonly %arg, ptr nocapture noundef %buf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.wsm_buf, ptr %buf, i32 0, i32 1
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 4
  %end.i = getelementptr inbounds %struct.wsm_buf, ptr %buf, i32 0, i32 2
  %2 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %end.i, align 4
  %cmp.i = icmp ugt ptr %add.ptr.i, %3
  br i1 %cmp.i, label %do.end.i, label %cleanup.cont.i

cleanup.cont.i:                                   ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr.i, ptr %data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp4.not.i = icmp eq i32 %5, 0
  br i1 %cmp4.not.i, label %if.end, label %cleanup.cont.i.cleanup_crit_edge

cleanup.cont.i.cleanup_crit_edge:                 ; preds = %cleanup.cont.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 101, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end:                                           ; preds = %cleanup.cont.i
  %7 = ptrtoint ptr %arg to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arg, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4102, i16 %8)
  %cmp = icmp eq i16 %8, 4102
  br i1 %cmp, label %if.then2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %buf3 = getelementptr inbounds %struct.wsm_mib, ptr %arg, i32 0, i32 1
  %9 = ptrtoint ptr %buf3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %buf3, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 1
  %13 = and i8 %12, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool5 = icmp ne i8 %13, 0
  tail call void @cw1200_enable_powersave(ptr noundef %priv, i1 noundef zeroext %tobool5) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %do.end.i, %cleanup.cont.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then2 ], [ 0, %if.end.cleanup_crit_edge ], [ -22, %do.end.i ], [ -22, %cleanup.cont.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wsm_scan_started(ptr noundef %priv, ptr nocapture noundef %buf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.wsm_buf, ptr %buf, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %end = getelementptr inbounds %struct.wsm_buf, ptr %buf, i32 0, i32 2
  %2 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %end, align 4
  %cmp = icmp ugt ptr %add.ptr, %3
  br i1 %cmp, label %do.end, label %cleanup.cont

cleanup.cont:                                     ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %6 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp4.not = icmp eq i32 %5, 0
  br i1 %cmp4.not, label %cleanup.cont.cleanup24_crit_edge, label %if.then5

cleanup.cont.cleanup24_crit_edge:                 ; preds = %cleanup.cont
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup24

if.then5:                                         ; preds = %cleanup.cont
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @cw1200_scan_failed_cb(ptr noundef %priv) #8
  br label %cleanup24

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 988, i32 noundef 9, ptr noundef null) #8
  br label %cleanup24

cleanup24:                                        ; preds = %do.end, %if.then5, %cleanup.cont.cleanup24_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %if.then5 ], [ 0, %cleanup.cont.cleanup24_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wsm_configuration_confirm(ptr nocapture noundef %arg, ptr nocapture noundef %buf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.wsm_buf, ptr %buf, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %end = getelementptr inbounds %struct.wsm_buf, ptr %buf, i32 0, i32 2
  %2 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %end, align 4
  %cmp = icmp ugt ptr %add.ptr, %3
  br i1 %cmp, label %entry.do.end139_crit_edge, label %cleanup.cont

entry.do.end139_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end139

cleanup.cont:                                     ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %6 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp4.not = icmp eq i32 %5, 0
  br i1 %cmp4.not, label %do.body29, label %do.end, !prof !181

do.end:                                           ; preds = %cleanup.cont
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 142, i32 noundef 9, ptr noundef null) #8
  br label %cleanup153

do.body29:                                        ; preds = %cleanup.cont
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %add.ptr31 = getelementptr i8, ptr %8, i32 6
  %cmp33 = icmp ugt ptr %add.ptr31, %3
  br i1 %cmp33, label %do.body29.do.end139_crit_edge, label %if.end35

do.body29.do.end139_crit_edge:                    ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end139

if.end35:                                         ; preds = %do.body29
  %dot11StationId = getelementptr inbounds %struct.wsm_configuration, ptr %arg, i32 0, i32 3
  %9 = ptrtoint ptr %dot11StationId to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dot11StationId, align 4
  %11 = call ptr @memcpy(ptr %10, ptr %8, i32 6)
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  %add.ptr38 = getelementptr i8, ptr %13, i32 6
  store ptr %add.ptr38, ptr %data, align 4
  %add.ptr43 = getelementptr i8, ptr %13, i32 7
  %14 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %end, align 4
  %cmp45 = icmp ugt ptr %add.ptr43, %15
  br i1 %cmp45, label %if.end35.do.end139_crit_edge, label %cleanup.cont54

if.end35.do.end139_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end139

cleanup.cont54:                                   ; preds = %if.end35
  %16 = ptrtoint ptr %add.ptr38 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %add.ptr38, align 1
  %18 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %add.ptr43, ptr %data, align 4
  %dot11FrequencyBandsSupported = getelementptr inbounds %struct.wsm_configuration, ptr %arg, i32 0, i32 6
  %19 = ptrtoint ptr %dot11FrequencyBandsSupported to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %17, ptr %dot11FrequencyBandsSupported, align 4
  %20 = load ptr, ptr %data, align 4
  %add.ptr57 = getelementptr i8, ptr %20, i32 1
  %21 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %end, align 4
  %cmp59 = icmp ugt ptr %add.ptr57, %22
  br i1 %cmp59, label %cleanup.cont54.do.end139_crit_edge, label %if.end61

cleanup.cont54.do.end139_crit_edge:               ; preds = %cleanup.cont54
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end139

if.end61:                                         ; preds = %cleanup.cont54
  %23 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %add.ptr57, ptr %data, align 4
  %add.ptr68 = getelementptr i8, ptr %20, i32 5
  %cmp70 = icmp ugt ptr %add.ptr68, %22
  br i1 %cmp70, label %if.end61.do.end139_crit_edge, label %cleanup.cont79

if.end61.do.end139_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end139

cleanup.cont79:                                   ; preds = %if.end61
  %24 = ptrtoint ptr %add.ptr57 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr57, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  %27 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %add.ptr68, ptr %data, align 4
  %supportedRateMask = getelementptr inbounds %struct.wsm_configuration, ptr %arg, i32 0, i32 7
  %28 = ptrtoint ptr %supportedRateMask to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %26, ptr %supportedRateMask, align 4
  %29 = load ptr, ptr %data, align 4
  %add.ptr83 = getelementptr i8, ptr %29, i32 4
  %30 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %end, align 4
  %cmp85 = icmp ugt ptr %add.ptr83, %31
  br i1 %cmp85, label %cleanup.cont79.do.end139_crit_edge, label %cleanup.cont94

cleanup.cont79.do.end139_crit_edge:               ; preds = %cleanup.cont79
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end139

cleanup.cont94:                                   ; preds = %cleanup.cont79
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %29, align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  %35 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %add.ptr83, ptr %data, align 4
  %arrayidx = getelementptr %struct.wsm_configuration, ptr %arg, i32 0, i32 8, i32 0
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %34, ptr %arrayidx, align 4
  %37 = load ptr, ptr %data, align 4
  %add.ptr97 = getelementptr i8, ptr %37, i32 4
  %38 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %end, align 4
  %cmp99 = icmp ugt ptr %add.ptr97, %39
  br i1 %cmp99, label %cleanup.cont94.do.end139_crit_edge, label %cleanup.cont108

cleanup.cont94.do.end139_crit_edge:               ; preds = %cleanup.cont94
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end139

cleanup.cont108:                                  ; preds = %cleanup.cont94
  %40 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %37, align 4
  %42 = tail call i32 @llvm.bswap.i32(i32 %41)
  %43 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %add.ptr97, ptr %data, align 4
  %max_power_level = getelementptr %struct.wsm_configuration, ptr %arg, i32 0, i32 8, i32 0, i32 1
  %44 = ptrtoint ptr %max_power_level to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %42, ptr %max_power_level, align 4
  %45 = load ptr, ptr %data, align 4
  %add.ptr113 = getelementptr i8, ptr %45, i32 4
  %46 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %end, align 4
  %cmp115 = icmp ugt ptr %add.ptr113, %47
  br i1 %cmp115, label %cleanup.cont108.do.end139_crit_edge, label %cleanup.cont124

cleanup.cont108.do.end139_crit_edge:              ; preds = %cleanup.cont108
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end139

cleanup.cont124:                                  ; preds = %cleanup.cont108
  %48 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %45, align 4
  %50 = tail call i32 @llvm.bswap.i32(i32 %49)
  %51 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %add.ptr113, ptr %data, align 4
  %stepping = getelementptr %struct.wsm_configuration, ptr %arg, i32 0, i32 8, i32 0, i32 2
  %52 = ptrtoint ptr %stepping to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %50, ptr %stepping, align 4
  %53 = load ptr, ptr %data, align 4
  %add.ptr83.1 = getelementptr i8, ptr %53, i32 4
  %54 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %end, align 4
  %cmp85.1 = icmp ugt ptr %add.ptr83.1, %55
  br i1 %cmp85.1, label %cleanup.cont124.do.end139_crit_edge, label %cleanup.cont94.1

cleanup.cont124.do.end139_crit_edge:              ; preds = %cleanup.cont124
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end139

cleanup.cont94.1:                                 ; preds = %cleanup.cont124
  %56 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %53, align 4
  %58 = tail call i32 @llvm.bswap.i32(i32 %57)
  %59 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %add.ptr83.1, ptr %data, align 4
  %arrayidx.1 = getelementptr %struct.wsm_configuration, ptr %arg, i32 0, i32 8, i32 1
  %60 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %58, ptr %arrayidx.1, align 4
  %61 = load ptr, ptr %data, align 4
  %add.ptr97.1 = getelementptr i8, ptr %61, i32 4
  %62 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %end, align 4
  %cmp99.1 = icmp ugt ptr %add.ptr97.1, %63
  br i1 %cmp99.1, label %cleanup.cont94.1.do.end139_crit_edge, label %cleanup.cont108.1

cleanup.cont94.1.do.end139_crit_edge:             ; preds = %cleanup.cont94.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end139

cleanup.cont108.1:                                ; preds = %cleanup.cont94.1
  %64 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %61, align 4
  %66 = tail call i32 @llvm.bswap.i32(i32 %65)
  %67 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %add.ptr97.1, ptr %data, align 4
  %max_power_level.1 = getelementptr %struct.wsm_configuration, ptr %arg, i32 0, i32 8, i32 1, i32 1
  %68 = ptrtoint ptr %max_power_level.1 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %66, ptr %max_power_level.1, align 4
  %69 = load ptr, ptr %data, align 4
  %add.ptr113.1 = getelementptr i8, ptr %69, i32 4
  %70 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %end, align 4
  %cmp115.1 = icmp ugt ptr %add.ptr113.1, %71
  br i1 %cmp115.1, label %cleanup.cont108.1.do.end139_crit_edge, label %cleanup.cont124.1

cleanup.cont108.1.do.end139_crit_edge:            ; preds = %cleanup.cont108.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end139

cleanup.cont124.1:                                ; preds = %cleanup.cont108.1
  call void @__sanitizer_cov_trace_pc() #10
  %72 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %69, align 4
  %74 = tail call i32 @llvm.bswap.i32(i32 %73)
  %75 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %add.ptr113.1, ptr %data, align 4
  %stepping.1 = getelementptr %struct.wsm_configuration, ptr %arg, i32 0, i32 8, i32 1, i32 2
  %76 = ptrtoint ptr %stepping.1 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %74, ptr %stepping.1, align 4
  br label %cleanup153

do.end139:                                        ; preds = %cleanup.cont108.1.do.end139_crit_edge, %cleanup.cont94.1.do.end139_crit_edge, %cleanup.cont124.do.end139_crit_edge, %cleanup.cont108.do.end139_crit_edge, %cleanup.cont94.do.end139_crit_edge, %cleanup.cont79.do.end139_crit_edge, %if.end61.do.end139_crit_edge, %cleanup.cont54.do.end139_crit_edge, %if.end35.do.end139_crit_edge, %do.body29.do.end139_crit_edge, %entry.do.end139_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 157, i32 noundef 9, ptr noundef null) #8
  br label %cleanup153

cleanup153:                                       ; preds = %do.end139, %cleanup.cont124.1, %do.end
  %retval.0 = phi i32 [ -22, %do.end139 ], [ -22, %do.end ], [ 0, %cleanup.cont124.1 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wsm_join_confirm(ptr nocapture noundef writeonly %arg, ptr nocapture noundef %buf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.wsm_buf, ptr %buf, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %end = getelementptr inbounds %struct.wsm_buf, ptr %buf, i32 0, i32 2
  %2 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %end, align 4
  %cmp = icmp ugt ptr %add.ptr, %3
  br i1 %cmp, label %entry.do.end70_crit_edge, label %cleanup.cont

entry.do.end70_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end70

cleanup.cont:                                     ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %7 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %add.ptr, ptr %data, align 4
  %8 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %6, ptr %arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end29, label %do.end, !prof !181

do.end:                                           ; preds = %cleanup.cont
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 412, i32 noundef 9, ptr noundef null) #8
  br label %return

if.end29:                                         ; preds = %cleanup.cont
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %add.ptr32 = getelementptr i8, ptr %10, i32 4
  %11 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %end, align 4
  %cmp34 = icmp ugt ptr %add.ptr32, %12
  br i1 %cmp34, label %if.end29.do.end70_crit_edge, label %cleanup.cont43

if.end29.do.end70_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end70

cleanup.cont43:                                   ; preds = %if.end29
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %10, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %16 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %add.ptr32, ptr %data, align 4
  %min_power_level = getelementptr inbounds %struct.wsm_join_cnf, ptr %arg, i32 0, i32 1
  %17 = ptrtoint ptr %min_power_level to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %15, ptr %min_power_level, align 4
  %18 = load ptr, ptr %data, align 4
  %add.ptr46 = getelementptr i8, ptr %18, i32 4
  %19 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %end, align 4
  %cmp48 = icmp ugt ptr %add.ptr46, %20
  br i1 %cmp48, label %cleanup.cont43.do.end70_crit_edge, label %cleanup.cont57

cleanup.cont43.do.end70_crit_edge:                ; preds = %cleanup.cont43
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end70

cleanup.cont57:                                   ; preds = %cleanup.cont43
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %18, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  %24 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %add.ptr46, ptr %data, align 4
  %max_power_level = getelementptr inbounds %struct.wsm_join_cnf, ptr %arg, i32 0, i32 2
  %25 = ptrtoint ptr %max_power_level to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %23, ptr %max_power_level, align 4
  br label %return

do.end70:                                         ; preds = %cleanup.cont43.do.end70_crit_edge, %if.end29.do.end70_crit_edge, %entry.do.end70_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 421, i32 noundef 9, ptr noundef null) #8
  br label %return

return:                                           ; preds = %do.end70, %cleanup.cont57, %do.end
  %retval.0 = phi i32 [ -22, %do.end70 ], [ -22, %do.end ], [ 0, %cleanup.cont57 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wsm_startup_indication(ptr noundef %priv, ptr noundef %buf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.wsm_buf, ptr %buf, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 2
  %end = getelementptr inbounds %struct.wsm_buf, ptr %buf, i32 0, i32 2
  %2 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %end, align 4
  %cmp = icmp ugt ptr %add.ptr, %3
  br i1 %cmp, label %entry.do.end281_crit_edge, label %cleanup.cont

entry.do.end281_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end281

cleanup.cont:                                     ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %1, align 2
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %7 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %add.ptr, ptr %data, align 4
  %wsm_caps = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 88
  %8 = ptrtoint ptr %wsm_caps to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %6, ptr %wsm_caps, align 4
  %9 = load ptr, ptr %data, align 4
  %add.ptr6 = getelementptr i8, ptr %9, i32 2
  %10 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %end, align 4
  %cmp8 = icmp ugt ptr %add.ptr6, %11
  br i1 %cmp8, label %cleanup.cont.do.end281_crit_edge, label %cleanup.cont17

cleanup.cont.do.end281_crit_edge:                 ; preds = %cleanup.cont
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end281

cleanup.cont17:                                   ; preds = %cleanup.cont
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %9, align 2
  %14 = tail call i16 @llvm.bswap.i16(i16 %13)
  %15 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr6, ptr %data, align 4
  %input_buffer_size = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 88, i32 1
  %16 = ptrtoint ptr %input_buffer_size to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %14, ptr %input_buffer_size, align 2
  %17 = load ptr, ptr %data, align 4
  %add.ptr21 = getelementptr i8, ptr %17, i32 2
  %18 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %end, align 4
  %cmp23 = icmp ugt ptr %add.ptr21, %19
  br i1 %cmp23, label %cleanup.cont17.do.end281_crit_edge, label %cleanup.cont32

cleanup.cont17.do.end281_crit_edge:               ; preds = %cleanup.cont17
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end281

cleanup.cont32:                                   ; preds = %cleanup.cont17
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %17, align 2
  %22 = tail call i16 @llvm.bswap.i16(i16 %21)
  %23 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %add.ptr21, ptr %data, align 4
  %hw_id = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 88, i32 3
  %24 = ptrtoint ptr %hw_id to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %22, ptr %hw_id, align 2
  %25 = load ptr, ptr %data, align 4
  %add.ptr36 = getelementptr i8, ptr %25, i32 2
  %26 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %end, align 4
  %cmp38 = icmp ugt ptr %add.ptr36, %27
  br i1 %cmp38, label %cleanup.cont32.do.end281_crit_edge, label %cleanup.cont47

cleanup.cont32.do.end281_crit_edge:               ; preds = %cleanup.cont32
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end281

cleanup.cont47:                                   ; preds = %cleanup.cont32
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %25, align 2
  %30 = tail call i16 @llvm.bswap.i16(i16 %29)
  %31 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %add.ptr36, ptr %data, align 4
  %hw_subid = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 88, i32 4
  %32 = ptrtoint ptr %hw_subid to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %30, ptr %hw_subid, align 4
  %33 = load ptr, ptr %data, align 4
  %add.ptr51 = getelementptr i8, ptr %33, i32 2
  %34 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %end, align 4
  %cmp53 = icmp ugt ptr %add.ptr51, %35
  br i1 %cmp53, label %cleanup.cont47.do.end281_crit_edge, label %cleanup.cont62

cleanup.cont47.do.end281_crit_edge:               ; preds = %cleanup.cont47
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end281

cleanup.cont62:                                   ; preds = %cleanup.cont47
  %36 = ptrtoint ptr %33 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %33, align 2
  %38 = tail call i16 @llvm.bswap.i16(i16 %37)
  %39 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %add.ptr51, ptr %data, align 4
  %status = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 88, i32 2
  %40 = ptrtoint ptr %status to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %38, ptr %status, align 4
  %41 = load ptr, ptr %data, align 4
  %add.ptr66 = getelementptr i8, ptr %41, i32 2
  %42 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %end, align 4
  %cmp68 = icmp ugt ptr %add.ptr66, %43
  br i1 %cmp68, label %cleanup.cont62.do.end281_crit_edge, label %cleanup.cont77

cleanup.cont62.do.end281_crit_edge:               ; preds = %cleanup.cont62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end281

cleanup.cont77:                                   ; preds = %cleanup.cont62
  %44 = ptrtoint ptr %41 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %41, align 2
  %46 = tail call i16 @llvm.bswap.i16(i16 %45)
  %47 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %add.ptr66, ptr %data, align 4
  %fw_cap = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 88, i32 5
  %48 = ptrtoint ptr %fw_cap to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %46, ptr %fw_cap, align 2
  %49 = load ptr, ptr %data, align 4
  %add.ptr81 = getelementptr i8, ptr %49, i32 2
  %50 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %end, align 4
  %cmp83 = icmp ugt ptr %add.ptr81, %51
  br i1 %cmp83, label %cleanup.cont77.do.end281_crit_edge, label %cleanup.cont92

cleanup.cont77.do.end281_crit_edge:               ; preds = %cleanup.cont77
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end281

cleanup.cont92:                                   ; preds = %cleanup.cont77
  %52 = ptrtoint ptr %49 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %49, align 2
  %54 = tail call i16 @llvm.bswap.i16(i16 %53)
  %55 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %add.ptr81, ptr %data, align 4
  %fw_type = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 88, i32 6
  %56 = ptrtoint ptr %fw_type to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %54, ptr %fw_type, align 4
  %57 = load ptr, ptr %data, align 4
  %add.ptr96 = getelementptr i8, ptr %57, i32 2
  %58 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %end, align 4
  %cmp98 = icmp ugt ptr %add.ptr96, %59
  br i1 %cmp98, label %cleanup.cont92.do.end281_crit_edge, label %cleanup.cont107

cleanup.cont92.do.end281_crit_edge:               ; preds = %cleanup.cont92
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end281

cleanup.cont107:                                  ; preds = %cleanup.cont92
  %60 = ptrtoint ptr %57 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %57, align 2
  %62 = tail call i16 @llvm.bswap.i16(i16 %61)
  %63 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %add.ptr96, ptr %data, align 4
  %fw_api = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 88, i32 7
  %64 = ptrtoint ptr %fw_api to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %62, ptr %fw_api, align 2
  %65 = load ptr, ptr %data, align 4
  %add.ptr111 = getelementptr i8, ptr %65, i32 2
  %66 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %end, align 4
  %cmp113 = icmp ugt ptr %add.ptr111, %67
  br i1 %cmp113, label %cleanup.cont107.do.end281_crit_edge, label %cleanup.cont122

cleanup.cont107.do.end281_crit_edge:              ; preds = %cleanup.cont107
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end281

cleanup.cont122:                                  ; preds = %cleanup.cont107
  %68 = ptrtoint ptr %65 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %65, align 2
  %70 = tail call i16 @llvm.bswap.i16(i16 %69)
  %71 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %add.ptr111, ptr %data, align 4
  %fw_build = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 88, i32 8
  %72 = ptrtoint ptr %fw_build to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %70, ptr %fw_build, align 4
  %73 = load ptr, ptr %data, align 4
  %add.ptr126 = getelementptr i8, ptr %73, i32 2
  %74 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %end, align 4
  %cmp128 = icmp ugt ptr %add.ptr126, %75
  br i1 %cmp128, label %cleanup.cont122.do.end281_crit_edge, label %cleanup.cont137

cleanup.cont122.do.end281_crit_edge:              ; preds = %cleanup.cont122
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end281

cleanup.cont137:                                  ; preds = %cleanup.cont122
  %76 = ptrtoint ptr %73 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %73, align 2
  %78 = tail call i16 @llvm.bswap.i16(i16 %77)
  %79 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %add.ptr126, ptr %data, align 4
  %fw_ver = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 88, i32 9
  %80 = ptrtoint ptr %fw_ver to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %78, ptr %fw_ver, align 2
  %81 = load ptr, ptr %data, align 4
  %add.ptr140 = getelementptr i8, ptr %81, i32 128
  %82 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %end, align 4
  %cmp142 = icmp ugt ptr %add.ptr140, %83
  br i1 %cmp142, label %cleanup.cont137.do.end281_crit_edge, label %if.end144

cleanup.cont137.do.end281_crit_edge:              ; preds = %cleanup.cont137
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end281

if.end144:                                        ; preds = %cleanup.cont137
  %fw_label = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 88, i32 10
  %84 = call ptr @memcpy(ptr %fw_label, ptr %81, i32 128)
  %85 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %data, align 4
  %add.ptr148 = getelementptr i8, ptr %86, i32 128
  store ptr %add.ptr148, ptr %data, align 4
  %arrayidx = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 88, i32 10, i32 127
  %87 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 0, ptr %arrayidx, align 1
  %88 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %89)
  %tobool.not = icmp eq i16 %89, 0
  br i1 %tobool.not, label %if.end179, label %do.end163, !prof !181

do.end163:                                        ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 826, i32 noundef 9, ptr noundef null) #8
  br label %return

if.end179:                                        ; preds = %if.end144
  %90 = ptrtoint ptr %fw_type to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %fw_type, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %91)
  %cmp183 = icmp ugt i16 %91, 4
  br i1 %cmp183, label %do.end200, label %do.end219, !prof !184

do.end200:                                        ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 829, i32 noundef 9, ptr noundef null) #8
  br label %return

do.end219:                                        ; preds = %if.end179
  %92 = ptrtoint ptr %wsm_caps to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %wsm_caps, align 4
  %conv223 = zext i16 %93 to i32
  %94 = ptrtoint ptr %input_buffer_size to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %input_buffer_size, align 2
  %conv226 = zext i16 %95 to i32
  %96 = ptrtoint ptr %hw_id to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %hw_id, align 2
  %conv229 = zext i16 %97 to i32
  %98 = ptrtoint ptr %hw_subid to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %hw_subid, align 4
  %conv232 = zext i16 %99 to i32
  %idxprom = zext i16 %91 to i32
  %arrayidx235 = getelementptr [5 x ptr], ptr @cw1200_fw_types, i32 0, i32 %idxprom
  %100 = ptrtoint ptr %arrayidx235 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %arrayidx235, align 4
  %102 = ptrtoint ptr %fw_ver to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %fw_ver, align 2
  %conv241 = zext i16 %103 to i32
  %104 = ptrtoint ptr %fw_build to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %fw_build, align 4
  %conv244 = zext i16 %105 to i32
  %106 = ptrtoint ptr %fw_api to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %fw_api, align 2
  %conv247 = zext i16 %107 to i32
  %108 = ptrtoint ptr %fw_cap to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %fw_cap, align 2
  %conv250 = zext i16 %109 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, i32 noundef %conv223, i32 noundef %conv226, i32 noundef %conv229, i32 noundef %conv232, ptr noundef %101, ptr noundef %fw_label, i32 noundef %conv241, i32 noundef %conv244, i32 noundef %conv247, i32 noundef %conv250) #12
  %110 = ptrtoint ptr %fw_cap to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %fw_cap, align 2
  %112 = and i16 %111, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %112)
  %tobool254.not = icmp eq i16 %112, 0
  br i1 %tobool254.not, label %if.then255, label %do.end219.if.end257_crit_edge

do.end219.if.end257_crit_edge:                    ; preds = %do.end219
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end257

if.then255:                                       ; preds = %do.end219
  call void @__sanitizer_cov_trace_pc() #10
  %113 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %priv, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %114, i32 0, i32 1
  %115 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %wiphy, align 8
  %bands = getelementptr inbounds %struct.wiphy, ptr %116, i32 0, i32 53
  %117 = ptrtoint ptr %bands to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr null, ptr %bands, align 16
  br label %if.end257

if.end257:                                        ; preds = %if.then255, %do.end219.if.end257_crit_edge
  %118 = ptrtoint ptr %fw_cap to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %fw_cap, align 2
  %120 = and i16 %119, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %120)
  %tobool262.not = icmp eq i16 %120, 0
  br i1 %tobool262.not, label %if.then263, label %if.end257.if.end268_crit_edge

if.end257.if.end268_crit_edge:                    ; preds = %if.end257
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end268

if.then263:                                       ; preds = %if.end257
  call void @__sanitizer_cov_trace_pc() #10
  %121 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %priv, align 4
  %wiphy265 = getelementptr inbounds %struct.ieee80211_hw, ptr %122, i32 0, i32 1
  %123 = ptrtoint ptr %wiphy265 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %wiphy265, align 8
  %arrayidx267 = getelementptr %struct.wiphy, ptr %124, i32 0, i32 53, i32 1
  %125 = ptrtoint ptr %arrayidx267 to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr null, ptr %arrayidx267, align 4
  br label %if.end268

if.end268:                                        ; preds = %if.then263, %if.end257.if.end268_crit_edge
  %firmware_ready = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 94
  %126 = ptrtoint ptr %firmware_ready to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 1, ptr %firmware_ready, align 4
  %wsm_startup_done = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 93
  tail call void @__wake_up(ptr noundef %wsm_startup_done, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  br label %return

do.end281:                                        ; preds = %cleanup.cont137.do.end281_crit_edge, %cleanup.cont122.do.end281_crit_edge, %cleanup.cont107.do.end281_crit_edge, %cleanup.cont92.do.end281_crit_edge, %cleanup.cont77.do.end281_crit_edge, %cleanup.cont62.do.end281_crit_edge, %cleanup.cont47.do.end281_crit_edge, %cleanup.cont32.do.end281_crit_edge, %cleanup.cont17.do.end281_crit_edge, %cleanup.cont.do.end281_crit_edge, %entry.do.end281_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 856, i32 noundef 9, ptr noundef null) #8
  br label %return

return:                                           ; preds = %do.end281, %if.end268, %do.end200, %do.end163
  %retval.0 = phi i32 [ -22, %do.end281 ], [ -22, %do.end163 ], [ -22, %do.end200 ], [ 0, %if.end268 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wsm_receive_indication(ptr noundef %priv, i32 noundef %link_id, ptr nocapture noundef %buf, ptr noundef %skb_p) unnamed_addr #0 align 64 {
entry:
  %rx = alloca %struct.wsm_rx, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %rx) #8
  %0 = getelementptr inbounds %struct.wsm_rx, ptr %rx, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wsm_rx, ptr %rx, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wsm_rx, ptr %rx, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wsm_rx, ptr %rx, i32 0, i32 4
  %data = getelementptr inbounds %struct.wsm_buf, ptr %buf, i32 0, i32 1
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 4
  %end = getelementptr inbounds %struct.wsm_buf, ptr %buf, i32 0, i32 2
  %6 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %end, align 4
  %cmp = icmp ugt ptr %add.ptr, %7
  br i1 %cmp, label %entry.cleanup103_crit_edge, label %cleanup.cont

entry.cleanup103_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup103

cleanup.cont:                                     ; preds = %entry
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %5, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %11 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %add.ptr, ptr %data, align 4
  %12 = ptrtoint ptr %rx to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %10, ptr %rx, align 4
  %add.ptr6 = getelementptr i8, ptr %5, i32 6
  %cmp8 = icmp ugt ptr %add.ptr6, %7
  br i1 %cmp8, label %cleanup.cont.cleanup103_crit_edge, label %cleanup.cont17

cleanup.cont.cleanup103_crit_edge:                ; preds = %cleanup.cont
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup103

cleanup.cont17:                                   ; preds = %cleanup.cont
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %add.ptr, align 2
  %15 = tail call i16 @llvm.bswap.i16(i16 %14)
  %16 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %add.ptr6, ptr %data, align 4
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %15, ptr %0, align 4
  %add.ptr20 = getelementptr i8, ptr %5, i32 7
  %cmp22 = icmp ugt ptr %add.ptr20, %7
  br i1 %cmp22, label %cleanup.cont17.cleanup103_crit_edge, label %cleanup.cont31

cleanup.cont17.cleanup103_crit_edge:              ; preds = %cleanup.cont17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup103

cleanup.cont31:                                   ; preds = %cleanup.cont17
  %18 = ptrtoint ptr %add.ptr6 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %add.ptr6, align 1
  %20 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %add.ptr20, ptr %data, align 4
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %19, ptr %1, align 2
  %add.ptr34 = getelementptr i8, ptr %5, i32 8
  %cmp36 = icmp ugt ptr %add.ptr34, %7
  br i1 %cmp36, label %cleanup.cont31.cleanup103_crit_edge, label %cleanup.cont45

cleanup.cont31.cleanup103_crit_edge:              ; preds = %cleanup.cont31
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup103

cleanup.cont45:                                   ; preds = %cleanup.cont31
  %22 = ptrtoint ptr %add.ptr20 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %add.ptr20, align 1
  %24 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %add.ptr34, ptr %data, align 4
  %25 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %23, ptr %2, align 1
  %add.ptr48 = getelementptr i8, ptr %5, i32 12
  %cmp50 = icmp ugt ptr %add.ptr48, %7
  br i1 %cmp50, label %cleanup.cont45.cleanup103_crit_edge, label %cleanup.cont59

cleanup.cont45.cleanup103_crit_edge:              ; preds = %cleanup.cont45
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup103

cleanup.cont59:                                   ; preds = %cleanup.cont45
  %26 = ptrtoint ptr %add.ptr34 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr34, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %29 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %add.ptr48, ptr %data, align 4
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %28, ptr %3, align 4
  %31 = ptrtoint ptr %skb_p to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %skb_p, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not = icmp eq i8 %23, 0
  br i1 %tobool.not, label %land.lhs.true, label %cleanup.cont59.if.end65_crit_edge

cleanup.cont59.if.end65_crit_edge:                ; preds = %cleanup.cont59
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65

land.lhs.true:                                    ; preds = %cleanup.cont59
  %data60 = getelementptr inbounds %struct.sk_buff, ptr %32, i32 0, i32 19
  %33 = ptrtoint ptr %data60 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data60, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %34, align 2
  %37 = and i16 %36, -1024
  %38 = zext i16 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.88)
  switch i16 %37, label %land.lhs.true.if.end65_crit_edge [
    i16 20480, label %land.lhs.true.cleanup103_crit_edge
    i16 -32768, label %land.lhs.true.cleanup103_crit_edge177
  ]

land.lhs.true.cleanup103_crit_edge177:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup103

land.lhs.true.cleanup103_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup103

land.lhs.true.if.end65_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65

if.end65:                                         ; preds = %land.lhs.true.if.end65_crit_edge, %cleanup.cont59.if.end65_crit_edge
  %cqm_use_rssi = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 35
  %39 = ptrtoint ptr %cqm_use_rssi to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %cqm_use_rssi, align 4, !range !186
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool66.not = icmp eq i8 %40, 0
  br i1 %tobool66.not, label %if.then67, label %if.end65.if.end71_crit_edge

if.end65.if.end71_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

if.then67:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  %41 = lshr i8 %23, 1
  %sub = add nsw i8 %41, -110
  %42 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %sub, ptr %2, align 1
  br label %if.end71

if.end71:                                         ; preds = %if.then67, %if.end65.if.end71_crit_edge
  %43 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %data, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %44, align 2
  %47 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %buf, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %44 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %48 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call74 = tail call ptr @skb_pull(ptr noundef %32, i32 noundef %sub.ptr.sub) #8
  %49 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %rx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool76.not = icmp eq i32 %50, 0
  %51 = and i16 %46, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -16384, i16 %51)
  %cmp.i155 = icmp eq i16 %51, -16384
  %or.cond = select i1 %tobool76.not, i1 %cmp.i155, i1 false
  br i1 %or.cond, label %if.then80, label %if.end71.if.end98_crit_edge

if.end71.if.end98_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end98

if.then80:                                        ; preds = %if.end71
  %join_status = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 97
  %52 = ptrtoint ptr %join_status to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %join_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %53)
  %cmp81 = icmp eq i32 %53, 4
  br i1 %cmp81, label %do.body, label %if.then80.if.end98_crit_edge

if.then80.if.end98_crit_edge:                     ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end98

do.body:                                          ; preds = %if.then80
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wsm_receive_indication.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wsm_receive_indication, %if.then89)) #8
          to label %do.end [label %if.then89], !srcloc !180

if.then89:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wsm_receive_indication.__UNIQUE_ID_ddebug348, ptr noundef nonnull @.str.67) #8
  br label %do.end

do.end:                                           ; preds = %if.then89, %do.body
  tail call void @wsm_lock_tx_async(ptr noundef %priv)
  %workqueue = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 16
  %54 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %workqueue, align 4
  %unjoin_work = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 102
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %55, ptr noundef %unjoin_work) #8
  br i1 %call.i, label %do.end.if.end98_crit_edge, label %if.then95

do.end.if.end98_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end98

if.then95:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @wsm_unlock_tx(ptr noundef %priv)
  br label %if.end98

if.end98:                                         ; preds = %if.then95, %do.end.if.end98_crit_edge, %if.then80.if.end98_crit_edge, %if.end71.if.end98_crit_edge
  call void @cw1200_rx_cb(ptr noundef %priv, ptr noundef nonnull %rx, i32 noundef %link_id, ptr noundef %skb_p) #8
  %56 = ptrtoint ptr %skb_p to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %skb_p, align 4
  %tobool99.not = icmp eq ptr %57, null
  br i1 %tobool99.not, label %if.end98.cleanup103_crit_edge, label %if.then100

if.end98.cleanup103_crit_edge:                    ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup103

if.then100:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #10
  %call101 = call ptr @skb_push(ptr noundef nonnull %57, i32 noundef %sub.ptr.sub) #8
  br label %cleanup103

cleanup103:                                       ; preds = %if.then100, %if.end98.cleanup103_crit_edge, %land.lhs.true.cleanup103_crit_edge, %land.lhs.true.cleanup103_crit_edge177, %cleanup.cont45.cleanup103_crit_edge, %cleanup.cont31.cleanup103_crit_edge, %cleanup.cont17.cleanup103_crit_edge, %cleanup.cont.cleanup103_crit_edge, %entry.cleanup103_crit_edge
  %retval.0 = phi i32 [ 0, %land.lhs.true.cleanup103_crit_edge ], [ 0, %if.then100 ], [ 0, %if.end98.cleanup103_crit_edge ], [ -22, %entry.cleanup103_crit_edge ], [ -22, %cleanup.cont.cleanup103_crit_edge ], [ -22, %cleanup.cont17.cleanup103_crit_edge ], [ -22, %cleanup.cont31.cleanup103_crit_edge ], [ -22, %cleanup.cont45.cleanup103_crit_edge ], [ 0, %land.lhs.true.cleanup103_crit_edge177 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %rx) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wsm_event_indication(ptr noundef %priv, ptr nocapture noundef %buf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mode = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 43
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup43_crit_edge, label %if.end

entry.cleanup43_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup43

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 16) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup43_crit_edge, label %if.end2

if.end.cleanup43_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup43

if.end2:                                          ; preds = %if.end
  %data = getelementptr inbounds %struct.wsm_buf, ptr %buf, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 4
  %end = getelementptr inbounds %struct.wsm_buf, ptr %buf, i32 0, i32 2
  %5 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %end, align 4
  %cmp3 = icmp ugt ptr %add.ptr, %6
  br i1 %cmp3, label %if.end2.underflow_crit_edge, label %cleanup.cont

if.end2.underflow_crit_edge:                      ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  br label %underflow

cleanup.cont:                                     ; preds = %if.end2
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %4, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %10 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr, ptr %data, align 4
  %evt = getelementptr inbounds %struct.cw1200_wsm_event, ptr %call7.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %evt to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %9, ptr %evt, align 8
  %add.ptr11 = getelementptr i8, ptr %4, i32 8
  %cmp13 = icmp ugt ptr %add.ptr11, %6
  br i1 %cmp13, label %cleanup.cont.underflow_crit_edge, label %cleanup.cont22

cleanup.cont.underflow_crit_edge:                 ; preds = %cleanup.cont
  call void @__sanitizer_cov_trace_pc() #10
  br label %underflow

cleanup.cont22:                                   ; preds = %cleanup.cont
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %15 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr11, ptr %data, align 4
  %data24 = getelementptr inbounds %struct.cw1200_wsm_event, ptr %call7.i.i, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %data24 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %14, ptr %data24, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wsm_event_indication.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wsm_event_indication, %if.then30)) #8
          to label %do.end [label %if.then30], !srcloc !180

if.then30:                                        ; preds = %cleanup.cont22
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %evt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %evt, align 8
  %19 = ptrtoint ptr %data24 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %data24, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wsm_event_indication.__UNIQUE_ID_ddebug349, ptr noundef nonnull @.str.69, i32 noundef %18, i32 noundef %20) #8
  br label %do.end

do.end:                                           ; preds = %if.then30, %cleanup.cont22
  %event_queue_lock = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 129
  tail call void @_raw_spin_lock(ptr noundef %event_queue_lock) #8
  %event_queue = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 130
  %21 = ptrtoint ptr %event_queue to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %event_queue, align 4
  %cmp.i.not = icmp eq ptr %22, %event_queue
  %prev.i = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 130, i32 1
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %24, ptr noundef %event_queue) #8
  br i1 %call.i.i, label %if.end.i.i, label %do.end.list_add_tail.exit_crit_edge

do.end.list_add_tail.exit_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %26 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %event_queue, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev3.i.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %call7.i.i, ptr %24, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.end.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %event_queue_lock) #8
  br i1 %cmp.i.not, label %if.then40, label %list_add_tail.exit.cleanup43_crit_edge

list_add_tail.exit.cleanup43_crit_edge:           ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup43

if.then40:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  %workqueue = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 16
  %29 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %workqueue, align 4
  %event_handler = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 131
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %30, ptr noundef %event_handler) #8
  br label %cleanup43

underflow:                                        ; preds = %cleanup.cont.underflow_crit_edge, %if.end2.underflow_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup43

cleanup43:                                        ; preds = %underflow, %if.then40, %list_add_tail.exit.cleanup43_crit_edge, %if.end.cleanup43_crit_edge, %entry.cleanup43_crit_edge
  %retval.0 = phi i32 [ -22, %underflow ], [ 0, %entry.cleanup43_crit_edge ], [ -12, %if.end.cleanup43_crit_edge ], [ 0, %if.then40 ], [ 0, %list_add_tail.exit.cleanup43_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wsm_scan_complete_indication(ptr noundef %priv, ptr nocapture noundef %buf) unnamed_addr #0 align 64 {
entry:
  %arg = alloca %struct.wsm_scan_complete, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %arg) #8
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %arg, align 8, !annotation !187
  %data = getelementptr inbounds %struct.wsm_buf, ptr %buf, i32 0, i32 1
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 4
  %end = getelementptr inbounds %struct.wsm_buf, ptr %buf, i32 0, i32 2
  %3 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %end, align 4
  %cmp = icmp ugt ptr %add.ptr, %4
  br i1 %cmp, label %entry.cleanup32_crit_edge, label %cleanup.cont

entry.cleanup32_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup32

cleanup.cont:                                     ; preds = %entry
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %2, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %8 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %add.ptr, ptr %data, align 4
  %9 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %7, ptr %arg, align 8
  %add.ptr6 = getelementptr i8, ptr %2, i32 5
  %cmp8 = icmp ugt ptr %add.ptr6, %4
  br i1 %cmp8, label %cleanup.cont.cleanup32_crit_edge, label %cleanup.cont17

cleanup.cont.cleanup32_crit_edge:                 ; preds = %cleanup.cont
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup32

cleanup.cont17:                                   ; preds = %cleanup.cont
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %add.ptr, align 1
  %12 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %add.ptr6, ptr %data, align 4
  %psm = getelementptr inbounds %struct.wsm_scan_complete, ptr %arg, i32 0, i32 1
  %13 = ptrtoint ptr %psm to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %11, ptr %psm, align 4
  %add.ptr20 = getelementptr i8, ptr %2, i32 6
  %cmp22 = icmp ugt ptr %add.ptr20, %4
  br i1 %cmp22, label %cleanup.cont17.cleanup32_crit_edge, label %cleanup.cont31

cleanup.cont17.cleanup32_crit_edge:               ; preds = %cleanup.cont17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup32

cleanup.cont31:                                   ; preds = %cleanup.cont17
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %add.ptr6 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %add.ptr6, align 1
  %16 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %add.ptr20, ptr %data, align 4
  %num_channels = getelementptr inbounds %struct.wsm_scan_complete, ptr %arg, i32 0, i32 2
  %17 = ptrtoint ptr %num_channels to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %15, ptr %num_channels, align 1
  call void @cw1200_scan_complete_cb(ptr noundef %priv, ptr noundef nonnull %arg) #8
  br label %cleanup32

cleanup32:                                        ; preds = %cleanup.cont31, %cleanup.cont17.cleanup32_crit_edge, %cleanup.cont.cleanup32_crit_edge, %entry.cleanup32_crit_edge
  %retval.0 = phi i32 [ 0, %cleanup.cont31 ], [ -22, %entry.cleanup32_crit_edge ], [ -22, %cleanup.cont.cleanup32_crit_edge ], [ -22, %cleanup.cont17.cleanup32_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %arg) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wsm_ba_timeout_indication(ptr nocapture noundef %buf) unnamed_addr #0 align 64 {
entry:
  %addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #8
  %data = getelementptr inbounds %struct.wsm_buf, ptr %buf, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %end = getelementptr inbounds %struct.wsm_buf, ptr %buf, i32 0, i32 2
  %2 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %end, align 4
  %cmp = icmp ugt ptr %add.ptr, %3
  br i1 %cmp, label %entry.cleanup46_crit_edge, label %cleanup.cont

entry.cleanup46_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup46

cleanup.cont:                                     ; preds = %entry
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %add.ptr, ptr %data, align 4
  %add.ptr6 = getelementptr i8, ptr %1, i32 5
  %cmp8 = icmp ugt ptr %add.ptr6, %3
  br i1 %cmp8, label %cleanup.cont.cleanup46_crit_edge, label %cleanup.cont17

cleanup.cont.cleanup46_crit_edge:                 ; preds = %cleanup.cont
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup46

cleanup.cont17:                                   ; preds = %cleanup.cont
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %add.ptr, align 1
  %7 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %add.ptr6, ptr %data, align 4
  %phi.cast = zext i8 %6 to i32
  %add.ptr20 = getelementptr i8, ptr %1, i32 6
  %cmp22 = icmp ugt ptr %add.ptr20, %3
  br i1 %cmp22, label %cleanup.cont17.cleanup46_crit_edge, label %cleanup.cont31

cleanup.cont17.cleanup46_crit_edge:               ; preds = %cleanup.cont17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup46

cleanup.cont31:                                   ; preds = %cleanup.cont17
  %8 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %add.ptr20, ptr %data, align 4
  %add.ptr33 = getelementptr i8, ptr %1, i32 12
  %cmp35 = icmp ugt ptr %add.ptr33, %3
  br i1 %cmp35, label %cleanup.cont31.cleanup46_crit_edge, label %if.end37

cleanup.cont31.cleanup46_crit_edge:               ; preds = %cleanup.cont31
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup46

if.end37:                                         ; preds = %cleanup.cont31
  call void @__sanitizer_cov_trace_pc() #10
  %9 = call ptr @memcpy(ptr %addr, ptr %add.ptr20, i32 6)
  %10 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr33, ptr %data, align 4
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, i32 noundef %phi.cast, ptr noundef nonnull %addr) #12
  br label %cleanup46

cleanup46:                                        ; preds = %if.end37, %cleanup.cont31.cleanup46_crit_edge, %cleanup.cont17.cleanup46_crit_edge, %cleanup.cont.cleanup46_crit_edge, %entry.cleanup46_crit_edge
  %retval.0 = phi i32 [ 0, %if.end37 ], [ -22, %cleanup.cont31.cleanup46_crit_edge ], [ -22, %entry.cleanup46_crit_edge ], [ -22, %cleanup.cont.cleanup46_crit_edge ], [ -22, %cleanup.cont17.cleanup46_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wsm_channel_switch_indication(ptr noundef %priv, ptr nocapture noundef %buf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.wsm_buf, ptr %buf, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %end = getelementptr inbounds %struct.wsm_buf, ptr %buf, i32 0, i32 2
  %2 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %end, align 4
  %cmp = icmp ugt ptr %add.ptr, %3
  br i1 %cmp, label %entry.return_crit_edge, label %cleanup.cont

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

cleanup.cont:                                     ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %6 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %cleanup.cont.cleanup.cont28_crit_edge, label %do.end, !prof !181

cleanup.cont.cleanup.cont28_crit_edge:            ; preds = %cleanup.cont
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.cont28

do.end:                                           ; preds = %cleanup.cont
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 953, i32 noundef 9, ptr noundef null) #8
  br label %cleanup.cont28

cleanup.cont28:                                   ; preds = %do.end, %cleanup.cont.cleanup.cont28_crit_edge
  %channel_switch_in_progress = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 38
  %7 = ptrtoint ptr %channel_switch_in_progress to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %channel_switch_in_progress, align 4
  %channel_switch_done = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 39
  tail call void @__wake_up(ptr noundef %channel_switch_done, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  %tx_lock1.i = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 95
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_lock1.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !192
  tail call void @llvm.prefetch.p0(ptr %tx_lock1.i, i32 1, i32 3, i32 1) #8
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_lock1.i, ptr %tx_lock1.i, i32 1, ptr elementtype(i32) %tx_lock1.i) #8, !srcloc !193
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %8, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !194
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i = icmp slt i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i, label %do.body3.i, label %do.end8.i, !prof !184

do.body3.i:                                       ; preds = %cleanup.cont28
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/st/cw1200/wsm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1227, 0\0A.popsection", ""() #8, !srcloc !195
  unreachable

do.end8.i:                                        ; preds = %cleanup.cont28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp9.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp9.i, label %if.then10.i, label %do.end8.i.return_crit_edge

do.end8.i.return_crit_edge:                       ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then10.i:                                      ; preds = %do.end8.i
  %bh_error.i = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 74
  %9 = ptrtoint ptr %bh_error.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bh_error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool11.not.i = icmp eq i32 %10, 0
  br i1 %tobool11.not.i, label %if.then12.i, label %if.then10.i.do.body14.i_crit_edge

if.then10.i.do.body14.i_crit_edge:                ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body14.i

if.then12.i:                                      ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @cw1200_bh_wakeup(ptr noundef %priv) #8
  br label %do.body14.i

do.body14.i:                                      ; preds = %if.then12.i, %if.then10.i.do.body14.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wsm_unlock_tx.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wsm_channel_switch_indication, %if.then23.i)) #8
          to label %return [label %if.then23.i], !srcloc !180

if.then23.i:                                      ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wsm_unlock_tx.__UNIQUE_ID_ddebug356, ptr noundef nonnull @.str.19) #8
  br label %return

return:                                           ; preds = %if.then23.i, %do.body14.i, %do.end8.i.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ 0, %do.end8.i.return_crit_edge ], [ 0, %do.body14.i ], [ 0, %if.then23.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wsm_suspend_resume_indication(ptr noundef %priv, i32 noundef %link_id, ptr nocapture noundef %buf) unnamed_addr #0 align 64 {
entry:
  %arg = alloca %struct.wsm_suspend_resume, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %arg) #8
  %0 = getelementptr inbounds i8, ptr %arg, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4
  %data = getelementptr inbounds %struct.wsm_buf, ptr %buf, i32 0, i32 1
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 4
  %end = getelementptr inbounds %struct.wsm_buf, ptr %buf, i32 0, i32 2
  %4 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %end, align 4
  %cmp = icmp ugt ptr %add.ptr, %5
  br i1 %cmp, label %entry.cleanup11_crit_edge, label %cleanup.cont

entry.cleanup11_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup11

cleanup.cont:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %3, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %9 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %add.ptr, ptr %data, align 4
  %10 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %link_id, ptr %arg, align 4
  %stop = getelementptr inbounds %struct.wsm_suspend_resume, ptr %arg, i32 0, i32 1
  %11 = trunc i32 %8 to i8
  %12 = and i8 %11, 1
  %13 = xor i8 %12, 1
  %14 = ptrtoint ptr %stop to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %stop, align 4
  %multicast = getelementptr inbounds %struct.wsm_suspend_resume, ptr %arg, i32 0, i32 2
  %15 = lshr i8 %11, 3
  %16 = and i8 %15, 1
  %17 = ptrtoint ptr %multicast to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %multicast, align 1
  %shr = lshr i32 %8, 1
  %and10 = and i32 %shr, 3
  %queue = getelementptr inbounds %struct.wsm_suspend_resume, ptr %arg, i32 0, i32 3
  %18 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %and10, ptr %queue, align 4
  call void @cw1200_suspend_resume(ptr noundef %priv, ptr noundef nonnull %arg) #8
  br label %cleanup11

cleanup11:                                        ; preds = %cleanup.cont, %entry.cleanup11_crit_edge
  %retval.0 = phi i32 [ 0, %cleanup.cont ], [ -22, %entry.cleanup11_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %arg) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wsm_join_complete_indication(ptr noundef %priv, ptr nocapture noundef %buf) unnamed_addr #0 align 64 {
entry:
  %arg = alloca %struct.wsm_join_complete, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %arg) #8
  %data = getelementptr inbounds %struct.wsm_buf, ptr %buf, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %end = getelementptr inbounds %struct.wsm_buf, ptr %buf, i32 0, i32 2
  %2 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %end, align 4
  %cmp = icmp ugt ptr %add.ptr, %3
  br i1 %cmp, label %entry.cleanup10_crit_edge, label %cleanup.cont

entry.cleanup10_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup10

cleanup.cont:                                     ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %7 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %add.ptr, ptr %data, align 4
  %8 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %6, ptr %arg, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wsm_join_complete_indication.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wsm_join_complete_indication, %if.then7)) #8
          to label %do.end [label %if.then7], !srcloc !180

if.then7:                                         ; preds = %cleanup.cont
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arg, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wsm_join_complete_indication.__UNIQUE_ID_ddebug350, ptr noundef nonnull @.str.75, i32 noundef %10) #8
  br label %do.end

do.end:                                           ; preds = %if.then7, %cleanup.cont
  call void @cw1200_join_complete_cb(ptr noundef %priv, ptr noundef nonnull %arg) #8
  br label %cleanup10

cleanup10:                                        ; preds = %do.end, %entry.cleanup10_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ -22, %entry.cleanup10_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %arg) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wsm_get_tx(ptr noundef %priv, ptr nocapture noundef %data, ptr nocapture noundef %tx_len, ptr nocapture noundef %burst) local_unnamed_addr #0 align 64 {
entry:
  %total.i = alloca i32, align 4
  %wsm = alloca ptr, align 4
  %tx_info = alloca ptr, align 4
  %txpriv = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wsm) #8
  %0 = ptrtoint ptr %wsm to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %wsm, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tx_info) #8
  %1 = ptrtoint ptr %tx_info to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %tx_info, align 4, !annotation !187
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %txpriv) #8
  %2 = ptrtoint ptr %txpriv to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %txpriv, align 4
  %wsm_cmd = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 91
  %ptr = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 91, i32 2
  %3 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ptr, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %for.cond.preheader, label %if.then

for.cond.preheader:                               ; preds = %entry
  %tx_lock = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 95
  %call.i.i223 = call zeroext i1 @__kasan_check_write(ptr noundef %tx_lock, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !188
  call void @llvm.prefetch.p0(ptr %tx_lock, i32 1, i32 3, i32 1) #8
  %5 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_lock, ptr %tx_lock, i32 0, ptr elementtype(i32) %tx_lock) #8, !srcloc !189
  %asmresult.i.i.i224 = extractvalue { i32, i32 } %5, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !190
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i224)
  %tobool20.not225 = icmp eq i32 %asmresult.i.i.i224, 0
  br i1 %tobool20.not225, label %if.end22.lr.ph, label %for.cond.preheader.if.end106_crit_edge

for.cond.preheader.if.end106_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end106

if.end22.lr.ph:                                   ; preds = %for.cond.preheader
  %ps_state_lock = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 120
  %tx_multicast.i = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 122
  %sta_asleep_mask.i = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 116
  %pspoll_mask.i = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 117
  %buffered_multicasts = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 121
  %tx_queue164 = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 18
  %sub.ptr.rhs.cast166 = ptrtoint ptr %tx_queue164 to i32
  %workqueue = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 16
  %multicast_stop_work = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 127
  br label %if.end22

if.then:                                          ; preds = %entry
  tail call void @_raw_spin_lock(ptr noundef %wsm_cmd) #8
  %6 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ptr, align 4
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %do.body9, label %do.end14, !prof !184

do.body9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/st/cw1200/wsm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1675, 0\0A.popsection", ""() #8, !srcloc !196
  unreachable

do.end14:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %data, align 4
  %len = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 91, i32 3
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len, align 4
  %11 = ptrtoint ptr %tx_len to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %tx_len, align 4
  %12 = ptrtoint ptr %burst to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %burst, align 4
  tail call void @_raw_spin_unlock(ptr noundef %wsm_cmd) #8
  br label %if.end106

if.end22:                                         ; preds = %cleanup.if.end22_crit_edge, %if.end22.lr.ph
  %more.0228 = phi i8 [ 0, %if.end22.lr.ph ], [ %more.2176202, %cleanup.if.end22_crit_edge ]
  %tx_allowed_mask.0227 = phi i32 [ 0, %if.end22.lr.ph ], [ %tx_allowed_mask.1174203, %cleanup.if.end22_crit_edge ]
  %queue.0226 = phi ptr [ null, %if.end22.lr.ph ], [ %queue.1172204, %cleanup.if.end22_crit_edge ]
  call void @_raw_spin_lock_bh(ptr noundef %ps_state_lock) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %total.i) #8
  %13 = ptrtoint ptr %total.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %total.i, align 4
  %14 = ptrtoint ptr %tx_multicast.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %tx_multicast.i, align 1, !range !186
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i, label %if.end22.if.end3.i_crit_edge, label %if.then.i

if.end22.if.end3.i_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3.i

if.then.i:                                        ; preds = %if.end22
  %call.i = call fastcc i32 @cw1200_get_prio_queue(ptr noundef %priv, i32 noundef 64, ptr noundef nonnull %total.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, -1
  br i1 %cmp.i, label %if.then1.i, label %if.then.i.if.end3.i_crit_edge

if.then.i.if.end3.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3.i

if.then1.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %total.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %total.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp2.i = icmp sgt i32 %17, 1
  %frombool.i = zext i1 %cmp2.i to i8
  br label %wsm_get_tx_queue_and_mask.exit

if.end3.i:                                        ; preds = %if.then.i.if.end3.i_crit_edge, %if.end22.if.end3.i_crit_edge
  %18 = ptrtoint ptr %sta_asleep_mask.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sta_asleep_mask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool5.not.i = icmp eq i32 %19, 0
  br i1 %tobool5.not.i, label %if.end3.i.if.end9.i_crit_edge, label %if.then6.i

if.end3.i.if.end9.i_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

if.then6.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  %neg.i = xor i32 %19, -1
  %20 = ptrtoint ptr %pspoll_mask.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pspoll_mask.i, align 4
  %or.i = or i32 %21, %neg.i
  %or7.i = and i32 %or.i, -193
  %and.i = or i32 %or7.i, 128
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then6.i, %if.end3.i.if.end9.i_crit_edge
  %tx_allowed_mask.0.i = phi i32 [ %and.i, %if.then6.i ], [ -1, %if.end3.i.if.end9.i_crit_edge ]
  %call10.i = call fastcc i32 @cw1200_get_prio_queue(ptr noundef %priv, i32 noundef %tx_allowed_mask.0.i, ptr noundef nonnull %total.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp11.i = icmp slt i32 %call10.i, 0
  br i1 %cmp11.i, label %wsm_get_tx_queue_and_mask.exit.thread, label %if.end9.i.wsm_get_tx_queue_and_mask.exit_crit_edge

if.end9.i.wsm_get_tx_queue_and_mask.exit_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wsm_get_tx_queue_and_mask.exit

wsm_get_tx_queue_and_mask.exit:                   ; preds = %if.end9.i.wsm_get_tx_queue_and_mask.exit_crit_edge, %if.then1.i
  %more.1 = phi i8 [ %more.0228, %if.end9.i.wsm_get_tx_queue_and_mask.exit_crit_edge ], [ %frombool.i, %if.then1.i ]
  %idx.0.i = phi i32 [ %call10.i, %if.end9.i.wsm_get_tx_queue_and_mask.exit_crit_edge ], [ %call.i, %if.then1.i ]
  %tx_allowed_mask.1.i = phi i32 [ %tx_allowed_mask.0.i, %if.end9.i.wsm_get_tx_queue_and_mask.exit_crit_edge ], [ 64, %if.then1.i ]
  %arrayidx.i = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 18, i32 %idx.0.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %total.i) #8
  %arrayidx.i.idx = mul i32 %idx.0.i, 160
  %sub.ptr.div = sdiv exact i32 %arrayidx.i.idx, 160
  %22 = ptrtoint ptr %buffered_multicasts to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %buffered_multicasts, align 4, !range !186
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool24.not = icmp ne i8 %23, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %more.1)
  %tobool26.not = icmp eq i8 %more.1, 0
  %or.cond = select i1 %tobool24.not, i1 %tobool26.not, i1 false
  br i1 %or.cond, label %wsm_get_tx_queue_and_mask.exit.land.lhs.true27_crit_edge, label %if.end39.thread

wsm_get_tx_queue_and_mask.exit.land.lhs.true27_crit_edge: ; preds = %wsm_get_tx_queue_and_mask.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true27

wsm_get_tx_queue_and_mask.exit.thread:            ; preds = %if.end9.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %total.i) #8
  %sub.ptr.lhs.cast165 = ptrtoint ptr %queue.0226 to i32
  %sub.ptr.sub167 = sub i32 %sub.ptr.lhs.cast165, %sub.ptr.rhs.cast166
  %sub.ptr.div168 = sdiv exact i32 %sub.ptr.sub167, 160
  %24 = ptrtoint ptr %buffered_multicasts to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %buffered_multicasts, align 4, !range !186
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool24.not170 = icmp eq i8 %25, 0
  br i1 %tobool24.not170, label %if.end39.thread205, label %wsm_get_tx_queue_and_mask.exit.thread.land.lhs.true27_crit_edge

wsm_get_tx_queue_and_mask.exit.thread.land.lhs.true27_crit_edge: ; preds = %wsm_get_tx_queue_and_mask.exit.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true27

if.end39.thread205:                               ; preds = %wsm_get_tx_queue_and_mask.exit.thread
  call void @__sanitizer_cov_trace_pc() #10
  call void @_raw_spin_unlock_bh(ptr noundef %ps_state_lock) #8
  br label %if.end106

land.lhs.true27:                                  ; preds = %wsm_get_tx_queue_and_mask.exit.thread.land.lhs.true27_crit_edge, %wsm_get_tx_queue_and_mask.exit.land.lhs.true27_crit_edge
  %queue.1171194 = phi ptr [ %queue.0226, %wsm_get_tx_queue_and_mask.exit.thread.land.lhs.true27_crit_edge ], [ %arrayidx.i, %wsm_get_tx_queue_and_mask.exit.land.lhs.true27_crit_edge ]
  %tx_allowed_mask.1173193 = phi i32 [ %tx_allowed_mask.0227, %wsm_get_tx_queue_and_mask.exit.thread.land.lhs.true27_crit_edge ], [ %tx_allowed_mask.1.i, %wsm_get_tx_queue_and_mask.exit.land.lhs.true27_crit_edge ]
  %more.2175192 = phi i8 [ %more.0228, %wsm_get_tx_queue_and_mask.exit.thread.land.lhs.true27_crit_edge ], [ 0, %wsm_get_tx_queue_and_mask.exit.land.lhs.true27_crit_edge ]
  %tobool41.not = phi i1 [ false, %wsm_get_tx_queue_and_mask.exit.thread.land.lhs.true27_crit_edge ], [ true, %wsm_get_tx_queue_and_mask.exit.land.lhs.true27_crit_edge ]
  %sub.ptr.div179190 = phi i32 [ %sub.ptr.div168, %wsm_get_tx_queue_and_mask.exit.thread.land.lhs.true27_crit_edge ], [ %sub.ptr.div, %wsm_get_tx_queue_and_mask.exit.land.lhs.true27_crit_edge ]
  %26 = ptrtoint ptr %tx_multicast.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %tx_multicast.i, align 1, !range !186
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool28.not = icmp eq i8 %27, 0
  br i1 %tobool28.not, label %lor.lhs.false29, label %if.then35

lor.lhs.false29:                                  ; preds = %land.lhs.true27
  %28 = ptrtoint ptr %sta_asleep_mask.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sta_asleep_mask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool30.not = icmp eq i32 %29, 0
  br i1 %tobool30.not, label %if.then31.thread, label %lor.lhs.false29.if.end39_crit_edge

lor.lhs.false29.if.end39_crit_edge:               ; preds = %lor.lhs.false29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.then31.thread:                                 ; preds = %lor.lhs.false29
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %buffered_multicasts to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %buffered_multicasts, align 4
  br label %if.end39

if.then35:                                        ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %buffered_multicasts to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %buffered_multicasts, align 4
  %32 = ptrtoint ptr %tx_multicast.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %tx_multicast.i, align 1
  %33 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %workqueue, align 4
  %call.i154 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %34, ptr noundef %multicast_stop_work) #8
  br label %if.end39

if.end39.thread:                                  ; preds = %wsm_get_tx_queue_and_mask.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @_raw_spin_unlock_bh(ptr noundef %ps_state_lock) #8
  br label %if.end43

if.end39:                                         ; preds = %if.then35, %if.then31.thread, %lor.lhs.false29.if.end39_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %ps_state_lock) #8
  br i1 %tobool41.not, label %if.end39.if.end43_crit_edge, label %if.end39.if.end106_crit_edge

if.end39.if.end106_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end106

if.end39.if.end43_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.end43:                                         ; preds = %if.end39.if.end43_crit_edge, %if.end39.thread
  %queue.1172204 = phi ptr [ %arrayidx.i, %if.end39.thread ], [ %queue.1171194, %if.end39.if.end43_crit_edge ]
  %tx_allowed_mask.1174203 = phi i32 [ %tx_allowed_mask.1.i, %if.end39.thread ], [ %tx_allowed_mask.1173193, %if.end39.if.end43_crit_edge ]
  %more.2176202 = phi i8 [ %more.1, %if.end39.thread ], [ %more.2175192, %if.end39.if.end43_crit_edge ]
  %sub.ptr.div180201 = phi i32 [ %sub.ptr.div, %if.end39.thread ], [ %sub.ptr.div179190, %if.end39.if.end43_crit_edge ]
  %call44 = call i32 @cw1200_queue_get(ptr noundef %queue.1172204, i32 noundef %tx_allowed_mask.1174203, ptr noundef nonnull %wsm, ptr noundef nonnull %tx_info, ptr noundef nonnull %txpriv) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %if.end43.cleanup_crit_edge

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end47:                                         ; preds = %if.end43
  %35 = ptrtoint ptr %wsm to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %wsm, align 4
  %37 = ptrtoint ptr %tx_info to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tx_info, align 4
  %39 = ptrtoint ptr %txpriv to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %txpriv, align 4
  %call48 = call fastcc zeroext i1 @wsm_handle_tx_data(ptr noundef %priv, ptr noundef %36, ptr noundef %38, ptr noundef %40, ptr noundef %queue.1172204)
  br i1 %call48, label %if.end47.cleanup_crit_edge, label %if.end50

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end50:                                         ; preds = %if.end47
  %41 = ptrtoint ptr %wsm to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %wsm, align 4
  %id = getelementptr inbounds %struct.wsm_hdr, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %id to i32
  call void @__asan_loadN_noabort(i32 %43, i32 2)
  %44 = load i16, ptr %id, align 1
  %45 = and i16 %44, 16380
  store i16 %45, ptr %id, align 1
  %46 = ptrtoint ptr %txpriv to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %txpriv, align 4
  %raw_link_id = getelementptr inbounds %struct.cw1200_txpriv, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %raw_link_id to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %raw_link_id, align 1
  %50 = and i8 %49, 15
  %and53 = zext i8 %50 to i16
  %shl = shl nuw nsw i16 %and53, 6
  %51 = call i16 @llvm.bswap.i16(i16 %shl)
  %52 = ptrtoint ptr %wsm to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %wsm, align 4
  %id57 = getelementptr inbounds %struct.wsm_hdr, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %id57 to i32
  call void @__asan_loadN_noabort(i32 %54, i32 2)
  %55 = load i16, ptr %id57, align 1
  %or152 = or i16 %51, %55
  store i16 %or152, ptr %id57, align 1
  %56 = ptrtoint ptr %txpriv to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %txpriv, align 4
  %raw_link_id60 = getelementptr inbounds %struct.cw1200_txpriv, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %raw_link_id60 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %raw_link_id60, align 1
  %conv61 = zext i8 %59 to i32
  %shl62 = shl nuw i32 1, %conv61
  %neg = xor i32 %shl62, -1
  %60 = ptrtoint ptr %pspoll_mask.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %pspoll_mask.i, align 4
  %and63 = and i32 %61, %neg
  store i32 %and63, ptr %pspoll_mask.i, align 4
  %62 = load ptr, ptr %wsm, align 4
  %63 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %62, ptr %data, align 4
  %64 = ptrtoint ptr %62 to i32
  call void @__asan_loadN_noabort(i32 %64, i32 2)
  %65 = load i16, ptr %62, align 1
  %66 = call i16 @llvm.bswap.i16(i16 %65)
  %conv66 = zext i16 %66 to i32
  %67 = ptrtoint ptr %tx_len to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %conv66, ptr %tx_len, align 4
  %edca = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 26
  %txop_limit = getelementptr [4 x %struct.wsm_edca_queue_params], ptr %edca, i32 0, i32 %sub.ptr.div180201, i32 3
  %68 = ptrtoint ptr %txop_limit to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %txop_limit, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %69)
  %tobool67.not = icmp eq i16 %69, 0
  br i1 %tobool67.not, label %if.end72.thread, label %if.end72

if.end72.thread:                                  ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  %70 = ptrtoint ptr %burst to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 1, ptr %burst, align 4
  br label %if.else76

if.end72:                                         ; preds = %if.end50
  %71 = ptrtoint ptr %burst to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %burst, align 4
  %call69 = call i32 @cw1200_queue_get_num_queued(ptr noundef %queue.1172204, i32 noundef %tx_allowed_mask.1174203) #8
  %add = add i32 %call69, 1
  %73 = call i32 @llvm.smin.i32(i32 %72, i32 %add)
  %74 = ptrtoint ptr %burst to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %burst, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %73)
  %cmp73 = icmp sgt i32 %73, 1
  br i1 %cmp73, label %if.end72.if.end78_crit_edge, label %if.end72.if.else76_crit_edge

if.end72.if.else76_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else76

if.end72.if.end78_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78

if.else76:                                        ; preds = %if.end72.if.else76_crit_edge, %if.end72.thread
  br label %if.end78

if.end78:                                         ; preds = %if.else76, %if.end72.if.end78_crit_edge
  %.sink = phi i32 [ -1, %if.else76 ], [ %sub.ptr.div180201, %if.end72.if.end78_crit_edge ]
  %tx_burst_idx77 = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 20
  %75 = ptrtoint ptr %tx_burst_idx77 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %.sink, ptr %tx_burst_idx77, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %more.2176202)
  %tobool79.not = icmp eq i8 %more.2176202, 0
  br i1 %tobool79.not, label %if.end78.do.body87_crit_edge, label %if.then80

if.end78.do.body87_crit_edge:                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body87

if.then80:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  %76 = ptrtoint ptr %wsm to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %wsm, align 4
  %78 = ptrtoint ptr %txpriv to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %txpriv, align 4
  %offset = getelementptr inbounds %struct.cw1200_txpriv, ptr %79, i32 0, i32 4
  %80 = ptrtoint ptr %offset to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %offset, align 1
  %idxprom = zext i8 %81 to i32
  %arrayidx82 = getelementptr i8, ptr %77, i32 %idxprom
  %82 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %arrayidx82, align 2
  %84 = or i16 %83, 32
  store i16 %84, ptr %arrayidx82, align 2
  br label %do.body87

do.body87:                                        ; preds = %if.then80, %if.end78.do.body87_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wsm_get_tx.__UNIQUE_ID_ddebug367, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wsm_get_tx, %if.then97)) #8
          to label %if.end106 [label %if.then97], !srcloc !180

if.then97:                                        ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #10
  %85 = ptrtoint ptr %tx_len to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %tx_len, align 4
  %87 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %data, align 4
  %89 = ptrtoint ptr %wsm to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %wsm, align 4
  %more98 = getelementptr inbounds %struct.wsm_tx, ptr %90, i32 0, i32 4
  %91 = ptrtoint ptr %more98 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %more98, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool100.not = icmp eq i8 %92, 0
  %cond101 = select i1 %tobool100.not, i32 32, i32 77
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wsm_get_tx.__UNIQUE_ID_ddebug367, ptr noundef nonnull @.str.55, i32 noundef 4, i32 noundef %86, ptr noundef %88, i32 noundef %cond101) #8
  br label %if.end106

cleanup:                                          ; preds = %if.end47.cleanup_crit_edge, %if.end43.cleanup_crit_edge
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %tx_lock, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !188
  call void @llvm.prefetch.p0(ptr %tx_lock, i32 1, i32 3, i32 1) #8
  %93 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_lock, ptr %tx_lock, i32 0, ptr elementtype(i32) %tx_lock) #8, !srcloc !189
  %asmresult.i.i.i = extractvalue { i32, i32 } %93, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !190
  %tobool20.not = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool20.not, label %cleanup.if.end22_crit_edge, label %cleanup.if.end106_crit_edge

cleanup.if.end106_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end106

cleanup.if.end22_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.end106:                                        ; preds = %cleanup.if.end106_crit_edge, %if.then97, %do.body87, %if.end39.if.end106_crit_edge, %if.end39.thread205, %do.end14, %for.cond.preheader.if.end106_crit_edge
  %count.2 = phi i32 [ 1, %do.end14 ], [ 0, %if.end39.thread205 ], [ 1, %do.body87 ], [ 1, %if.then97 ], [ 0, %for.cond.preheader.if.end106_crit_edge ], [ 0, %if.end39.if.end106_crit_edge ], [ 0, %cleanup.if.end106_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %txpriv) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tx_info) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wsm) #8
  ret i32 %count.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cw1200_queue_get(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @wsm_handle_tx_data(ptr noundef %priv, ptr nocapture noundef %wsm, ptr nocapture noundef readonly %tx_info, ptr nocapture noundef readonly %txpriv, ptr noundef %queue) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %offset = getelementptr inbounds %struct.cw1200_txpriv, ptr %txpriv, i32 0, i32 4
  %0 = ptrtoint ptr %offset to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %offset, align 1
  %idxprom = zext i8 %1 to i32
  %arrayidx = getelementptr i8, ptr %wsm, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 2
  %mode = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 43
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %5, label %entry.do.body118_crit_edge [
    i32 2, label %sw.bb
    i32 3, label %sw.bb5
    i32 1, label %sw.bb24
    i32 7, label %entry.if.then34_crit_edge
  ]

entry.if.then34_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then34

entry.do.body118_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body118

sw.bb:                                            ; preds = %entry
  %join_status = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 97
  %7 = ptrtoint ptr %join_status to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %join_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp = icmp ne i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %8)
  %cmp2 = icmp ult i32 %8, 3
  %or.cond = and i1 %cmp, %cmp2
  br i1 %or.cond, label %sw.bb.do.body118_crit_edge, label %sw.bb.if.then34_crit_edge

sw.bb.if.then34_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then34

sw.bb.do.body118_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body118

sw.bb5:                                           ; preds = %entry
  %join_status6 = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 97
  %9 = ptrtoint ptr %join_status6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %join_status6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %sw.bb5.if.end12_crit_edge, label %if.else8

sw.bb5.if.end12_crit_edge:                        ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.else8:                                         ; preds = %sw.bb5
  %raw_link_id = getelementptr inbounds %struct.cw1200_txpriv, ptr %txpriv, i32 0, i32 1
  %11 = ptrtoint ptr %raw_link_id to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %raw_link_id, align 1
  %conv = zext i8 %12 to i32
  %shl = shl nuw i32 1, %conv
  %link_id_map = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 112
  %13 = ptrtoint ptr %link_id_map to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %link_id_map, align 4
  %or = or i32 %14, 1
  %and = and i32 %shl, %or
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %do.end, label %if.end12.thread

do.end:                                           ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %priv, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %18, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.76) #12
  br label %if.end12

if.end12:                                         ; preds = %do.end, %sw.bb5.if.end12_crit_edge
  %packet_id = getelementptr inbounds %struct.wsm_tx, ptr %wsm, i32 0, i32 1
  %19 = ptrtoint ptr %packet_id to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %packet_id, align 1
  %shr.i = lshr i32 %20, 8
  %conv.i = trunc i32 %shr.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %conv.i)
  %cmp14 = icmp ugt i8 %conv.i, 5
  br i1 %cmp14, label %if.end12.do.end19_crit_edge, label %if.end12.do.body118_crit_edge

if.end12.do.body118_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body118

if.end12.do.end19_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end19

if.end12.thread:                                  ; preds = %if.else8
  %packet_id322 = getelementptr inbounds %struct.wsm_tx, ptr %wsm, i32 0, i32 1
  %21 = ptrtoint ptr %packet_id322 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %packet_id322, align 1
  %shr.i323 = lshr i32 %22, 8
  %conv.i324 = trunc i32 %shr.i323 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %conv.i324)
  %cmp14325 = icmp ugt i8 %conv.i324, 5
  br i1 %cmp14325, label %if.end12.thread.do.end19_crit_edge, label %if.end12.thread.if.then34_crit_edge

if.end12.thread.if.then34_crit_edge:              ; preds = %if.end12.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then34

if.end12.thread.do.end19_crit_edge:               ; preds = %if.end12.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end19

do.end19:                                         ; preds = %if.end12.thread.do.end19_crit_edge, %if.end12.do.end19_crit_edge
  %23 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %priv, align 4
  %wiphy21 = getelementptr inbounds %struct.ieee80211_hw, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %wiphy21 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %wiphy21, align 8
  %dev22 = getelementptr inbounds %struct.wiphy, ptr %26, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev22, ptr noundef nonnull @.str.79) #12
  br label %do.body118

sw.bb24:                                          ; preds = %entry
  %join_status25 = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 97
  %27 = ptrtoint ptr %join_status25 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %join_status25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %28)
  %cmp26.not = icmp eq i32 %28, 5
  br i1 %cmp26.not, label %sw.bb24.if.then34_crit_edge, label %sw.bb24.do.body118_crit_edge

sw.bb24.do.body118_crit_edge:                     ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body118

sw.bb24.if.then34_crit_edge:                      ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then34

if.then34:                                        ; preds = %sw.bb24.if.then34_crit_edge, %if.end12.thread.if.then34_crit_edge, %sw.bb.if.then34_crit_edge, %entry.if.then34_crit_edge
  %29 = and i16 %3, -1024
  %30 = zext i16 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.90)
  switch i16 %29, label %if.then34.if.else67_crit_edge [
    i16 18432, label %if.then36
    i16 16384, label %do.body93
    i16 -16384, label %land.lhs.true
  ]

if.then34.if.else67_crit_edge:                    ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else67

if.then36:                                        ; preds = %if.then34
  %bss_loss_lock = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 133
  tail call void @_raw_spin_lock(ptr noundef %bss_loss_lock) #8
  %bss_loss_state = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 134
  %31 = ptrtoint ptr %bss_loss_state to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %bss_loss_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool37.not = icmp eq i32 %32, 0
  br i1 %tobool37.not, label %if.then36.if.end40_crit_edge, label %if.then38

if.then36.if.end40_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.then38:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  %packet_id39 = getelementptr inbounds %struct.wsm_tx, ptr %wsm, i32 0, i32 1
  %33 = ptrtoint ptr %packet_id39 to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %packet_id39, align 1
  %bss_loss_confirm_id = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 135
  %35 = ptrtoint ptr %bss_loss_confirm_id to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %bss_loss_confirm_id, align 4
  %queue_id = getelementptr inbounds %struct.wsm_tx, ptr %wsm, i32 0, i32 3
  %36 = ptrtoint ptr %queue_id to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 3, ptr %queue_id, align 1
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %if.then36.if.end40_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %bss_loss_lock) #8
  br label %do.body185

land.lhs.true:                                    ; preds = %if.then34
  %37 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %38)
  %cmp49.not = icmp eq i32 %38, 3
  br i1 %cmp49.not, label %land.lhs.true.if.else67_crit_edge, label %do.body52

land.lhs.true.if.else67_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else67

do.body52:                                        ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wsm_handle_tx_data.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wsm_handle_tx_data, %if.then57)) #8
          to label %do.end60 [label %if.then57], !srcloc !180

if.then57:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wsm_handle_tx_data.__UNIQUE_ID_ddebug360, ptr noundef nonnull @.str.81) #8
  br label %do.end60

do.end60:                                         ; preds = %if.then57, %do.body52
  %tx_lock.i = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 95
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_lock.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !188
  tail call void @llvm.prefetch.p0(ptr %tx_lock.i, i32 1, i32 3, i32 1) #8
  %39 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_lock.i, ptr %tx_lock.i, i32 1, ptr elementtype(i32) %tx_lock.i) #8, !srcloc !189
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %39, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !190
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i)
  %cmp.i265 = icmp eq i32 %asmresult.i.i.i.i.i, 1
  br i1 %cmp.i265, label %do.body.i, label %do.end60.wsm_lock_tx_async.exit_crit_edge

do.end60.wsm_lock_tx_async.exit_crit_edge:        ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %wsm_lock_tx_async.exit

do.body.i:                                        ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wsm_lock_tx_async.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wsm_handle_tx_data, %if.then4.i)) #8
          to label %wsm_lock_tx_async.exit [label %if.then4.i], !srcloc !180

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wsm_lock_tx_async.__UNIQUE_ID_ddebug355, ptr noundef nonnull @.str.10) #8
  br label %wsm_lock_tx_async.exit

wsm_lock_tx_async.exit:                           ; preds = %if.then4.i, %do.body.i, %do.end60.wsm_lock_tx_async.exit_crit_edge
  %workqueue = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 16
  %40 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %workqueue, align 4
  %unjoin_work = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 102
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %41, ptr noundef %unjoin_work) #8
  br i1 %call.i, label %wsm_lock_tx_async.exit.do.body185_crit_edge, label %if.then65

wsm_lock_tx_async.exit.do.body185_crit_edge:      ; preds = %wsm_lock_tx_async.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body185

if.then65:                                        ; preds = %wsm_lock_tx_async.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @wsm_unlock_tx(ptr noundef %priv)
  br label %do.body185

if.else67:                                        ; preds = %land.lhs.true.if.else67_crit_edge, %if.then34.if.else67_crit_edge
  %42 = and i16 %3, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %cmp.i266.not = icmp eq i16 %42, 0
  br i1 %cmp.i266.not, label %if.else67.do.body185_crit_edge, label %land.lhs.true70

if.else67.do.body185_crit_edge:                   ; preds = %if.else67
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body185

land.lhs.true70:                                  ; preds = %if.else67
  %hw_key = getelementptr inbounds %struct.ieee80211_tx_info, ptr %tx_info, i32 0, i32 2, i32 1, i32 12
  %43 = ptrtoint ptr %hw_key to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hw_key, align 4
  %tobool71.not = icmp eq ptr %44, null
  br i1 %tobool71.not, label %land.lhs.true70.do.body185_crit_edge, label %land.lhs.true72

land.lhs.true70.do.body185_crit_edge:             ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body185

land.lhs.true72:                                  ; preds = %land.lhs.true70
  %keyidx = getelementptr inbounds %struct.ieee80211_key_conf, ptr %44, i32 0, i32 5
  %45 = ptrtoint ptr %keyidx to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %keyidx, align 1
  %wep_default_key_id = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 107
  %47 = ptrtoint ptr %wep_default_key_id to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %wep_default_key_id, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %46, i8 %48)
  %cmp76.not = icmp eq i8 %46, %48
  br i1 %cmp76.not, label %land.lhs.true72.do.body185_crit_edge, label %land.lhs.true78

land.lhs.true72.do.body185_crit_edge:             ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body185

land.lhs.true78:                                  ; preds = %land.lhs.true72
  %cipher = getelementptr inbounds %struct.ieee80211_key_conf, ptr %44, i32 0, i32 1
  %49 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %cipher, align 8
  %51 = add i32 %50, -1027073
  %switch.and = and i32 %51, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and)
  %switch.selectcmp = icmp eq i32 %switch.and, 0
  br i1 %switch.selectcmp, label %do.body156, label %land.lhs.true78.do.body185_crit_edge

land.lhs.true78.do.body185_crit_edge:             ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body185

do.body93:                                        ; preds = %if.then34
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wsm_handle_tx_data.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wsm_handle_tx_data, %if.then105)) #8
          to label %do.end108 [label %if.then105], !srcloc !180

if.then105:                                       ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wsm_handle_tx_data.__UNIQUE_ID_ddebug361, ptr noundef nonnull @.str.82) #8
  br label %do.end108

do.end108:                                        ; preds = %if.then105, %do.body93
  %tx_lock.i267 = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 95
  %call.i.i.i268 = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_lock.i267, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !188
  tail call void @llvm.prefetch.p0(ptr %tx_lock.i267, i32 1, i32 3, i32 1) #8
  %52 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_lock.i267, ptr %tx_lock.i267, i32 1, ptr elementtype(i32) %tx_lock.i267) #8, !srcloc !189
  %asmresult.i.i.i.i.i269 = extractvalue { i32, i32 } %52, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !190
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i269)
  %cmp.i270 = icmp eq i32 %asmresult.i.i.i.i.i269, 1
  br i1 %cmp.i270, label %do.body.i271, label %do.end108.wsm_lock_tx_async.exit273_crit_edge

do.end108.wsm_lock_tx_async.exit273_crit_edge:    ; preds = %do.end108
  call void @__sanitizer_cov_trace_pc() #10
  br label %wsm_lock_tx_async.exit273

do.body.i271:                                     ; preds = %do.end108
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wsm_lock_tx_async.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wsm_handle_tx_data, %if.then4.i272)) #8
          to label %wsm_lock_tx_async.exit273 [label %if.then4.i272], !srcloc !180

if.then4.i272:                                    ; preds = %do.body.i271
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wsm_lock_tx_async.__UNIQUE_ID_ddebug355, ptr noundef nonnull @.str.10) #8
  br label %wsm_lock_tx_async.exit273

wsm_lock_tx_async.exit273:                        ; preds = %if.then4.i272, %do.body.i271, %do.end108.wsm_lock_tx_async.exit273_crit_edge
  %packet_id109 = getelementptr inbounds %struct.wsm_tx, ptr %wsm, i32 0, i32 1
  %53 = ptrtoint ptr %packet_id109 to i32
  call void @__asan_loadN_noabort(i32 %53, i32 4)
  %54 = load i32, ptr %packet_id109, align 1
  %pending_frame_id = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 98
  %55 = ptrtoint ptr %pending_frame_id to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %pending_frame_id, align 4
  %workqueue110 = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 16
  %56 = ptrtoint ptr %workqueue110 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %workqueue110, align 4
  %probe_work = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 85, i32 12
  %call.i274 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %57, ptr noundef %probe_work, i32 noundef 0) #8
  br i1 %call.i274, label %wsm_lock_tx_async.exit273.sw.epilog202_crit_edge, label %if.then115

wsm_lock_tx_async.exit273.sw.epilog202_crit_edge: ; preds = %wsm_lock_tx_async.exit273
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog202

if.then115:                                       ; preds = %wsm_lock_tx_async.exit273
  %call.i.i.i275 = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_lock.i267, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !192
  tail call void @llvm.prefetch.p0(ptr %tx_lock.i267, i32 1, i32 3, i32 1) #8
  %58 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_lock.i267, ptr %tx_lock.i267, i32 1, ptr elementtype(i32) %tx_lock.i267) #8, !srcloc !193
  %asmresult.i.i.i.i.i276 = extractvalue { i32, i32 } %58, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !194
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i276)
  %cmp.i277 = icmp slt i32 %asmresult.i.i.i.i.i276, 0
  br i1 %cmp.i277, label %do.body3.i, label %do.end8.i, !prof !184

do.body3.i:                                       ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/st/cw1200/wsm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1227, 0\0A.popsection", ""() #8, !srcloc !195
  unreachable

do.end8.i:                                        ; preds = %if.then115
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i276)
  %cmp9.i = icmp eq i32 %asmresult.i.i.i.i.i276, 0
  br i1 %cmp9.i, label %if.then10.i, label %do.end8.i.sw.epilog202_crit_edge

do.end8.i.sw.epilog202_crit_edge:                 ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog202

if.then10.i:                                      ; preds = %do.end8.i
  %bh_error.i = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 74
  %59 = ptrtoint ptr %bh_error.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %bh_error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool11.not.i = icmp eq i32 %60, 0
  br i1 %tobool11.not.i, label %if.then12.i, label %if.then10.i.do.body14.i_crit_edge

if.then10.i.do.body14.i_crit_edge:                ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body14.i

if.then12.i:                                      ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @cw1200_bh_wakeup(ptr noundef %priv) #8
  br label %do.body14.i

do.body14.i:                                      ; preds = %if.then12.i, %if.then10.i.do.body14.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wsm_unlock_tx.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wsm_handle_tx_data, %if.then23.i)) #8
          to label %sw.epilog202 [label %if.then23.i], !srcloc !180

if.then23.i:                                      ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wsm_unlock_tx.__UNIQUE_ID_ddebug356, ptr noundef nonnull @.str.19) #8
  br label %sw.epilog202

do.body118:                                       ; preds = %sw.bb24.do.body118_crit_edge, %do.end19, %if.end12.do.body118_crit_edge, %sw.bb.do.body118_crit_edge, %entry.do.body118_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wsm_handle_tx_data.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wsm_handle_tx_data, %if.then130)) #8
          to label %do.body135 [label %if.then130], !srcloc !180

if.then130:                                       ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #10
  %conv131 = zext i16 %3 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wsm_handle_tx_data.__UNIQUE_ID_ddebug362, ptr noundef nonnull @.str.83, i32 noundef %conv131) #8
  br label %do.body135

do.body135:                                       ; preds = %if.then130, %do.body118
  %packet_id136 = getelementptr inbounds %struct.wsm_tx, ptr %wsm, i32 0, i32 1
  %61 = ptrtoint ptr %packet_id136 to i32
  call void @__asan_loadN_noabort(i32 %61, i32 4)
  %62 = load i32, ptr %packet_id136, align 1
  %call137 = tail call i32 @cw1200_queue_remove(ptr noundef %queue, i32 noundef %62) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137)
  %tobool138.not = icmp eq i32 %call137, 0
  br i1 %tobool138.not, label %do.body135.sw.epilog202_crit_edge, label %do.body146, !prof !181

do.body135.sw.epilog202_crit_edge:                ; preds = %do.body135
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog202

do.body146:                                       ; preds = %do.body135
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/st/cw1200/wsm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1554, 0\0A.popsection", ""() #8, !srcloc !197
  unreachable

do.body156:                                       ; preds = %land.lhs.true78
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wsm_handle_tx_data.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wsm_handle_tx_data, %if.then168)) #8
          to label %do.end171 [label %if.then168], !srcloc !180

if.then168:                                       ; preds = %do.body156
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wsm_handle_tx_data.__UNIQUE_ID_ddebug363, ptr noundef nonnull @.str.84) #8
  br label %do.end171

do.end171:                                        ; preds = %if.then168, %do.body156
  %tx_lock.i278 = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 95
  %call.i.i.i279 = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_lock.i278, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !188
  tail call void @llvm.prefetch.p0(ptr %tx_lock.i278, i32 1, i32 3, i32 1) #8
  %63 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_lock.i278, ptr %tx_lock.i278, i32 1, ptr elementtype(i32) %tx_lock.i278) #8, !srcloc !189
  %asmresult.i.i.i.i.i280 = extractvalue { i32, i32 } %63, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !190
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i280)
  %cmp.i281 = icmp eq i32 %asmresult.i.i.i.i.i280, 1
  br i1 %cmp.i281, label %do.body.i282, label %do.end171.wsm_lock_tx_async.exit284_crit_edge

do.end171.wsm_lock_tx_async.exit284_crit_edge:    ; preds = %do.end171
  call void @__sanitizer_cov_trace_pc() #10
  br label %wsm_lock_tx_async.exit284

do.body.i282:                                     ; preds = %do.end171
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wsm_lock_tx_async.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wsm_handle_tx_data, %if.then4.i283)) #8
          to label %wsm_lock_tx_async.exit284 [label %if.then4.i283], !srcloc !180

if.then4.i283:                                    ; preds = %do.body.i282
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wsm_lock_tx_async.__UNIQUE_ID_ddebug355, ptr noundef nonnull @.str.10) #8
  br label %wsm_lock_tx_async.exit284

wsm_lock_tx_async.exit284:                        ; preds = %if.then4.i283, %do.body.i282, %do.end171.wsm_lock_tx_async.exit284_crit_edge
  %64 = ptrtoint ptr %hw_key to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %hw_key, align 4
  %keyidx173 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %65, i32 0, i32 5
  %66 = ptrtoint ptr %keyidx173 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %keyidx173, align 1
  %68 = ptrtoint ptr %wep_default_key_id to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %67, ptr %wep_default_key_id, align 1
  %packet_id175 = getelementptr inbounds %struct.wsm_tx, ptr %wsm, i32 0, i32 1
  %69 = ptrtoint ptr %packet_id175 to i32
  call void @__asan_loadN_noabort(i32 %69, i32 4)
  %70 = load i32, ptr %packet_id175, align 1
  %pending_frame_id176 = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 98
  %71 = ptrtoint ptr %pending_frame_id176 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %pending_frame_id176, align 4
  %workqueue177 = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 16
  %72 = ptrtoint ptr %workqueue177 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %workqueue177, align 4
  %wep_key_work = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 109
  %call.i285 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %73, ptr noundef %wep_key_work) #8
  br i1 %call.i285, label %wsm_lock_tx_async.exit284.sw.epilog202_crit_edge, label %if.then182

wsm_lock_tx_async.exit284.sw.epilog202_crit_edge: ; preds = %wsm_lock_tx_async.exit284
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog202

if.then182:                                       ; preds = %wsm_lock_tx_async.exit284
  %call.i.i.i287 = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_lock.i278, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !192
  tail call void @llvm.prefetch.p0(ptr %tx_lock.i278, i32 1, i32 3, i32 1) #8
  %74 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_lock.i278, ptr %tx_lock.i278, i32 1, ptr elementtype(i32) %tx_lock.i278) #8, !srcloc !193
  %asmresult.i.i.i.i.i288 = extractvalue { i32, i32 } %74, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !194
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i288)
  %cmp.i289 = icmp slt i32 %asmresult.i.i.i.i.i288, 0
  br i1 %cmp.i289, label %do.body3.i290, label %do.end8.i292, !prof !184

do.body3.i290:                                    ; preds = %if.then182
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/st/cw1200/wsm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1227, 0\0A.popsection", ""() #8, !srcloc !195
  unreachable

do.end8.i292:                                     ; preds = %if.then182
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i288)
  %cmp9.i291 = icmp eq i32 %asmresult.i.i.i.i.i288, 0
  br i1 %cmp9.i291, label %if.then10.i295, label %do.end8.i292.sw.epilog202_crit_edge

do.end8.i292.sw.epilog202_crit_edge:              ; preds = %do.end8.i292
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog202

if.then10.i295:                                   ; preds = %do.end8.i292
  %bh_error.i293 = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 74
  %75 = ptrtoint ptr %bh_error.i293 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %bh_error.i293, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool11.not.i294 = icmp eq i32 %76, 0
  br i1 %tobool11.not.i294, label %if.then12.i296, label %if.then10.i295.do.body14.i297_crit_edge

if.then10.i295.do.body14.i297_crit_edge:          ; preds = %if.then10.i295
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body14.i297

if.then12.i296:                                   ; preds = %if.then10.i295
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @cw1200_bh_wakeup(ptr noundef %priv) #8
  br label %do.body14.i297

do.body14.i297:                                   ; preds = %if.then12.i296, %if.then10.i295.do.body14.i297_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wsm_unlock_tx.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wsm_handle_tx_data, %if.then23.i298)) #8
          to label %sw.epilog202 [label %if.then23.i298], !srcloc !180

if.then23.i298:                                   ; preds = %do.body14.i297
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wsm_unlock_tx.__UNIQUE_ID_ddebug356, ptr noundef nonnull @.str.19) #8
  br label %sw.epilog202

do.body185:                                       ; preds = %land.lhs.true78.do.body185_crit_edge, %land.lhs.true72.do.body185_crit_edge, %land.lhs.true70.do.body185_crit_edge, %if.else67.do.body185_crit_edge, %if.then65, %wsm_lock_tx_async.exit.do.body185_crit_edge, %if.end40
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wsm_handle_tx_data.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wsm_handle_tx_data, %if.then197)) #8
          to label %sw.epilog202 [label %if.then197], !srcloc !180

if.then197:                                       ; preds = %do.body185
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wsm_handle_tx_data.__UNIQUE_ID_ddebug364, ptr noundef nonnull @.str.85) #8
  br label %sw.epilog202

sw.epilog202:                                     ; preds = %if.then197, %do.body185, %if.then23.i298, %do.body14.i297, %do.end8.i292.sw.epilog202_crit_edge, %wsm_lock_tx_async.exit284.sw.epilog202_crit_edge, %do.body135.sw.epilog202_crit_edge, %if.then23.i, %do.body14.i, %do.end8.i.sw.epilog202_crit_edge, %wsm_lock_tx_async.exit273.sw.epilog202_crit_edge
  %handled.0.off0 = phi i1 [ false, %if.then197 ], [ true, %wsm_lock_tx_async.exit273.sw.epilog202_crit_edge ], [ true, %do.body135.sw.epilog202_crit_edge ], [ true, %wsm_lock_tx_async.exit284.sw.epilog202_crit_edge ], [ true, %do.end8.i.sw.epilog202_crit_edge ], [ true, %do.body14.i ], [ true, %if.then23.i ], [ true, %do.end8.i292.sw.epilog202_crit_edge ], [ true, %do.body14.i297 ], [ true, %if.then23.i298 ], [ false, %do.body185 ]
  ret i1 %handled.0.off0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cw1200_queue_get_num_queued(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wsm_txed(ptr noundef %priv, ptr noundef readnone %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ptr = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 91, i32 2
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %cmp = icmp eq ptr %1, %data
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %wsm_cmd = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 91
  tail call void @_raw_spin_lock(ptr noundef %wsm_cmd) #8
  %2 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %ptr, align 4
  tail call void @_raw_spin_unlock(ptr noundef %wsm_cmd) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wsm_buf_init(ptr nocapture noundef %buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buf, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end6, label %do.body3, !prof !181

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/st/cw1200/wsm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1777, 0\0A.popsection", ""() #8, !srcloc !198
  unreachable

do.end6:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 3, i32 10) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 3, i32 10), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3265, i32 noundef 1024) #13
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i, ptr %buf, align 4
  %tobool9.not = icmp eq ptr %call7.i, null
  %arrayidx = getelementptr i8, ptr %call7.i, i32 1024
  %cond = select i1 %tobool9.not, ptr null, ptr %arrayidx
  %end = getelementptr inbounds %struct.wsm_buf, ptr %buf, i32 0, i32 2
  %4 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %cond, ptr %end, align 4
  br i1 %tobool9.not, label %do.end6.wsm_buf_reset.exit_crit_edge, label %if.then.i

do.end6.wsm_buf_reset.exit_crit_edge:             ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %wsm_buf_reset.exit

if.then.i:                                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr i8, ptr %call7.i, i32 4
  %5 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %call7.i, align 8
  br label %wsm_buf_reset.exit

wsm_buf_reset.exit:                               ; preds = %if.then.i, %do.end6.wsm_buf_reset.exit_crit_edge
  %arrayidx.i.sink = phi ptr [ %arrayidx.i, %if.then.i ], [ null, %do.end6.wsm_buf_reset.exit_crit_edge ]
  %6 = getelementptr inbounds %struct.wsm_buf, ptr %buf, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %arrayidx.i.sink, ptr %6, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wsm_buf_deinit(ptr nocapture noundef %buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buf, align 4
  tail call void @kfree(ptr noundef %1) #8
  %end = getelementptr inbounds %struct.wsm_buf, ptr %buf, i32 0, i32 2
  %2 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %end, align 4
  %data = getelementptr inbounds %struct.wsm_buf, ptr %buf, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %data, align 4
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %buf, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cw1200_tx_confirm_cb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wsm_release_tx_buffer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @cw1200_enable_powersave(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cw1200_scan_failed_cb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cw1200_rx_cb(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cw1200_scan_complete_cb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cw1200_suspend_resume(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cw1200_join_complete_cb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cw1200_get_prio_queue(ptr noundef %priv, i32 noundef %link_id_map, ptr nocapture noundef %total) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 18, i32 0
  %call = tail call i32 @cw1200_queue_get_num_queued(ptr noundef %arrayidx, i32 noundef %link_id_map) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.end

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %edca1 = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 26
  %0 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %total, align 4
  %add = add i32 %1, %call
  store i32 %add, ptr %total, align 4
  %aifns = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 26, i32 0, i32 0, i32 2
  %2 = ptrtoint ptr %aifns to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %aifns, align 4
  %conv = zext i16 %3 to i32
  %4 = ptrtoint ptr %edca1 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %edca1, align 4
  %conv3 = zext i16 %5 to i32
  %add4 = add nuw nsw i32 %conv3, %conv
  %shl = shl i32 %add4, 16
  %cwmax = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 26, i32 0, i32 0, i32 1
  %6 = ptrtoint ptr %cwmax to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %cwmax, align 2
  %conv5 = zext i16 %7 to i32
  %sub = sub nsw i32 %conv5, %conv3
  %call.i = tail call i32 @get_random_u32() #8
  %and = and i32 %call.i, 65535
  %mul = mul i32 %sub, %and
  %add9 = add i32 %mul, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %add9)
  %cmp10.not = icmp eq i32 %add9, -1
  %spec.select74 = sext i1 %cmp10.not to i32
  br label %for.inc

for.inc:                                          ; preds = %if.end, %entry.for.inc_crit_edge
  %best.1 = phi i32 [ -1, %entry.for.inc_crit_edge ], [ %add9, %if.end ]
  %winner.1 = phi i32 [ -1, %entry.for.inc_crit_edge ], [ %spec.select74, %if.end ]
  %arrayidx.1 = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 18, i32 1
  %call.1 = tail call i32 @cw1200_queue_get_num_queued(ptr noundef %arrayidx.1, i32 noundef %link_id_map) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

if.end.1:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %total, align 4
  %add.1 = add i32 %9, %call.1
  store i32 %add.1, ptr %total, align 4
  %arrayidx2.1 = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 26, i32 0, i32 1
  %aifns.1 = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 26, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %aifns.1 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %aifns.1, align 4
  %conv.1 = zext i16 %11 to i32
  %12 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx2.1, align 4
  %conv3.1 = zext i16 %13 to i32
  %add4.1 = add nuw nsw i32 %conv3.1, %conv.1
  %shl.1 = shl i32 %add4.1, 16
  %cwmax.1 = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 26, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %cwmax.1 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %cwmax.1, align 2
  %conv5.1 = zext i16 %15 to i32
  %sub.1 = sub nsw i32 %conv5.1, %conv3.1
  %call.i.1 = tail call i32 @get_random_u32() #8
  %and.1 = and i32 %call.i.1, 65535
  %mul.1 = mul i32 %sub.1, %and.1
  %add9.1 = add i32 %mul.1, %shl.1
  call void @__sanitizer_cov_trace_cmp4(i32 %add9.1, i32 %best.1)
  %cmp10.1 = icmp ult i32 %add9.1, %best.1
  %16 = call i32 @llvm.umin.i32(i32 %add9.1, i32 %best.1)
  %spec.select76 = select i1 %cmp10.1, i32 1, i32 %winner.1
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end.1, %for.inc.for.inc.1_crit_edge
  %best.1.1 = phi i32 [ %best.1, %for.inc.for.inc.1_crit_edge ], [ %16, %if.end.1 ]
  %winner.1.1 = phi i32 [ %winner.1, %for.inc.for.inc.1_crit_edge ], [ %spec.select76, %if.end.1 ]
  %arrayidx.2 = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 18, i32 2
  %call.2 = tail call i32 @cw1200_queue_get_num_queued(ptr noundef %arrayidx.2, i32 noundef %link_id_map) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %tobool.not.2 = icmp eq i32 %call.2, 0
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2

if.end.2:                                         ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %total, align 4
  %add.2 = add i32 %18, %call.2
  store i32 %add.2, ptr %total, align 4
  %arrayidx2.2 = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 26, i32 0, i32 2
  %aifns.2 = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 26, i32 0, i32 2, i32 2
  %19 = ptrtoint ptr %aifns.2 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %aifns.2, align 4
  %conv.2 = zext i16 %20 to i32
  %21 = ptrtoint ptr %arrayidx2.2 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx2.2, align 4
  %conv3.2 = zext i16 %22 to i32
  %add4.2 = add nuw nsw i32 %conv3.2, %conv.2
  %shl.2 = shl i32 %add4.2, 16
  %cwmax.2 = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 26, i32 0, i32 2, i32 1
  %23 = ptrtoint ptr %cwmax.2 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %cwmax.2, align 2
  %conv5.2 = zext i16 %24 to i32
  %sub.2 = sub nsw i32 %conv5.2, %conv3.2
  %call.i.2 = tail call i32 @get_random_u32() #8
  %and.2 = and i32 %call.i.2, 65535
  %mul.2 = mul i32 %sub.2, %and.2
  %add9.2 = add i32 %mul.2, %shl.2
  call void @__sanitizer_cov_trace_cmp4(i32 %add9.2, i32 %best.1.1)
  %cmp10.2 = icmp ult i32 %add9.2, %best.1.1
  %25 = call i32 @llvm.umin.i32(i32 %add9.2, i32 %best.1.1)
  %spec.select78 = select i1 %cmp10.2, i32 2, i32 %winner.1.1
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end.2, %for.inc.1.for.inc.2_crit_edge
  %best.1.2 = phi i32 [ %best.1.1, %for.inc.1.for.inc.2_crit_edge ], [ %25, %if.end.2 ]
  %winner.1.2 = phi i32 [ %winner.1.1, %for.inc.1.for.inc.2_crit_edge ], [ %spec.select78, %if.end.2 ]
  %arrayidx.3 = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 18, i32 3
  %call.3 = tail call i32 @cw1200_queue_get_num_queued(ptr noundef %arrayidx.3, i32 noundef %link_id_map) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3)
  %tobool.not.3 = icmp eq i32 %call.3, 0
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.end.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.3

if.end.3:                                         ; preds = %for.inc.2
  %26 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %total, align 4
  %add.3 = add i32 %27, %call.3
  store i32 %add.3, ptr %total, align 4
  %arrayidx2.3 = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 26, i32 0, i32 3
  %aifns.3 = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 26, i32 0, i32 3, i32 2
  %28 = ptrtoint ptr %aifns.3 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %aifns.3, align 4
  %conv.3 = zext i16 %29 to i32
  %30 = ptrtoint ptr %arrayidx2.3 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %arrayidx2.3, align 4
  %conv3.3 = zext i16 %31 to i32
  %add4.3 = add nuw nsw i32 %conv3.3, %conv.3
  %shl.3 = shl i32 %add4.3, 16
  %cwmax.3 = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 26, i32 0, i32 3, i32 1
  %32 = ptrtoint ptr %cwmax.3 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %cwmax.3, align 2
  %conv5.3 = zext i16 %33 to i32
  %sub.3 = sub nsw i32 %conv5.3, %conv3.3
  %call.i.3 = tail call i32 @get_random_u32() #8
  %and.3 = and i32 %call.i.3, 65535
  %mul.3 = mul i32 %sub.3, %and.3
  %add9.3 = add i32 %mul.3, %shl.3
  call void @__sanitizer_cov_trace_cmp4(i32 %add9.3, i32 %best.1.2)
  %cmp10.3 = icmp ult i32 %add9.3, %best.1.2
  br i1 %cmp10.3, label %land.lhs.true.3, label %if.end.3.for.inc.3_crit_edge

if.end.3.for.inc.3_crit_edge:                     ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.3

land.lhs.true.3:                                  ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %winner.1.2)
  %cmp12.3 = icmp sgt i32 %winner.1.2, -1
  %spec.select79 = select i1 %cmp12.3, i32 %winner.1.2, i32 3
  br label %land.lhs.true20

for.inc.3:                                        ; preds = %if.end.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %winner.1.2)
  %cmp18 = icmp sgt i32 %winner.1.2, -1
  br i1 %cmp18, label %for.inc.3.land.lhs.true20_crit_edge, label %for.inc.3.if.end41_crit_edge

for.inc.3.if.end41_crit_edge:                     ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

for.inc.3.land.lhs.true20_crit_edge:              ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true20

land.lhs.true20:                                  ; preds = %for.inc.3.land.lhs.true20_crit_edge, %land.lhs.true.3
  %winner.1.373 = phi i32 [ %winner.1.2, %for.inc.3.land.lhs.true20_crit_edge ], [ %spec.select79, %land.lhs.true.3 ]
  %tx_burst_idx = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 20
  %34 = ptrtoint ptr %tx_burst_idx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tx_burst_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp21 = icmp slt i32 %35, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %winner.1.373, i32 %35)
  %cmp25.not = icmp eq i32 %winner.1.373, %35
  %or.cond65 = or i1 %cmp21, %cmp25.not
  br i1 %or.cond65, label %land.lhs.true20.if.end41_crit_edge, label %land.lhs.true27

land.lhs.true20.if.end41_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

land.lhs.true27:                                  ; preds = %land.lhs.true20
  %arrayidx29 = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 18, i32 %winner.1.373
  %and30 = and i32 %link_id_map, 192
  %call31 = tail call i32 @cw1200_queue_get_num_queued(ptr noundef %arrayidx29, i32 noundef %and30) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %land.lhs.true33, label %land.lhs.true27.if.end41_crit_edge

land.lhs.true27.if.end41_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

land.lhs.true33:                                  ; preds = %land.lhs.true27
  %36 = ptrtoint ptr %tx_burst_idx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tx_burst_idx, align 4
  %arrayidx36 = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 18, i32 %37
  %call37 = tail call i32 @cw1200_queue_get_num_queued(ptr noundef %arrayidx36, i32 noundef %link_id_map) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %land.lhs.true33.if.end41_crit_edge, label %if.then39

land.lhs.true33.if.end41_crit_edge:               ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

if.then39:                                        ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %tx_burst_idx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tx_burst_idx, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %land.lhs.true33.if.end41_crit_edge, %land.lhs.true27.if.end41_crit_edge, %land.lhs.true20.if.end41_crit_edge, %for.inc.3.if.end41_crit_edge
  %winner.2 = phi i32 [ %winner.1.373, %land.lhs.true27.if.end41_crit_edge ], [ %39, %if.then39 ], [ %winner.1.373, %land.lhs.true33.if.end41_crit_edge ], [ %winner.1.373, %land.lhs.true20.if.end41_crit_edge ], [ -1, %for.inc.3.if.end41_crit_edge ]
  ret i32 %winner.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_random_u32() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cw1200_queue_remove(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 86)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 86)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(1) }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !16, !17, !18, !20, !21, !22, !24, !25, !26, !27, !29, !30, !31, !32, !33, !35, !36, !37, !39, !41, !43, !45, !47, !49, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !81, !82, !83, !85, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !109, !110, !111, !113, !114, !116, !117, !118, !120, !121, !122, !123, !125, !126, !127, !129, !130, !131, !133, !134, !135, !136, !138, !139, !140, !141, !143, !144, !145, !147, !149, !150, !151, !152, !154, !155, !156, !158, !159, !161, !162, !164, !165, !167, !168, !170}
!llvm.module.flags = !{!171, !172, !173, !174, !175, !176, !177, !178}
!llvm.ident = !{!179}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/st/cw1200/wsm.c", i32 803, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/st/cw1200/wsm.c", i32 804, i32 2}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/st/cw1200/wsm.c", i32 805, i32 2}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/st/cw1200/wsm.c", i32 806, i32 2}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/st/cw1200/wsm.c", i32 807, i32 2}
!10 = !{ptr @cw1200_fw_types, !11, !"cw1200_fw_types", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/st/cw1200/wsm.c", i32 802, i32 20}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/st/cw1200/wsm.c", i32 1165, i32 4}
!14 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @wsm_lock_tx.__UNIQUE_ID_ddebug354, !13, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/st/cw1200/wsm.c", i32 1173, i32 3}
!20 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @wsm_lock_tx_async.__UNIQUE_ID_ddebug355, !19, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/st/cw1200/wsm.c", i32 1195, i32 3}
!24 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @wsm_flush_tx._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @wsm_flush_tx._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/st/cw1200/wsm.c", i32 1213, i32 4}
!29 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @wsm_flush_tx._entry.13, !28, !"_entry", i1 false, i1 false}
!32 = !{ptr @wsm_flush_tx._entry_ptr.17, !28, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/st/cw1200/wsm.c", i32 1232, i32 3}
!35 = !{ptr @.str.19, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @wsm_unlock_tx.__UNIQUE_ID_ddebug356, !34, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!37 = !{ptr @.str.20, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/st/cw1200/wsm.c", i32 1248, i32 3}
!39 = !{ptr @.str.21, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/st/cw1200/wsm.c", i32 1249, i32 3}
!41 = !{ptr @.str.22, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/st/cw1200/wsm.c", i32 1250, i32 3}
!43 = !{ptr @.str.23, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/st/cw1200/wsm.c", i32 1251, i32 3}
!45 = !{ptr @wsm_handle_exception.reason_str, !46, !"reason_str", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/st/cw1200/wsm.c", i32 1247, i32 28}
!47 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/st/cw1200/wsm.c", i32 1263, i32 3}
!49 = !{ptr @.str.25, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @wsm_handle_exception._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @wsm_handle_exception._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/st/cw1200/wsm.c", i32 1267, i32 3}
!54 = !{ptr @wsm_handle_exception._entry.26, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @wsm_handle_exception._entry_ptr.28, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.30, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/st/cw1200/wsm.c", i32 1272, i32 3}
!58 = !{ptr @wsm_handle_exception._entry.29, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @wsm_handle_exception._entry_ptr.31, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.33, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/st/cw1200/wsm.c", i32 1276, i32 2}
!62 = !{ptr @wsm_handle_exception._entry.32, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @wsm_handle_exception._entry_ptr.34, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.36, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/st/cw1200/wsm.c", i32 1280, i32 2}
!66 = !{ptr @wsm_handle_exception._entry.35, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @wsm_handle_exception._entry_ptr.37, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.38, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/st/cw1200/wsm.c", i32 1284, i32 2}
!70 = !{ptr @wsm_handle_exception.__UNIQUE_ID_ddebug357, !69, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!71 = !{ptr @.str.39, !69, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.41, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/st/cw1200/wsm.c", i32 1289, i32 2}
!74 = !{ptr @wsm_handle_exception._entry.40, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @wsm_handle_exception._entry_ptr.42, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.43, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/st/cw1200/wsm.c", i32 1290, i32 2}
!78 = !{ptr @wsm_handle_exception.__UNIQUE_ID_ddebug358, !77, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!79 = !{ptr @.str.44, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/wireless/st/cw1200/wsm.c", i32 1309, i32 2}
!81 = !{ptr @.str.45, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @wsm_handle_rx.__UNIQUE_ID_ddebug359, !80, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!83 = !{ptr @.str.46, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/wireless/st/cw1200/wsm.c", i32 1382, i32 5}
!85 = !{ptr @.str.47, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @wsm_handle_rx._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @wsm_handle_rx._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.49, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/st/cw1200/wsm.c", i32 1395, i32 4}
!90 = !{ptr @wsm_handle_rx._entry.48, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @wsm_handle_rx._entry_ptr.50, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.52, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/st/cw1200/wsm.c", i32 1443, i32 4}
!94 = !{ptr @wsm_handle_rx._entry.51, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @wsm_handle_rx._entry_ptr.53, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.54, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/st/cw1200/wsm.c", i32 1752, i32 4}
!98 = !{ptr @.str.55, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @wsm_get_tx.__UNIQUE_ID_ddebug367, !97, !"__UNIQUE_ID_ddebug367", i1 false, i1 false}
!100 = !{ptr @.str.56, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/st/cw1200/wsm.c", i32 1096, i32 3}
!102 = !{ptr @.str.57, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @wsm_cmd_send.__UNIQUE_ID_ddebug351, !101, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!104 = !{ptr @.str.58, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/st/cw1200/wsm.c", i32 1100, i32 3}
!106 = !{ptr @wsm_cmd_send.__UNIQUE_ID_ddebug352, !105, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!107 = !{ptr @.str.59, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/wireless/st/cw1200/wsm.c", i32 1136, i32 4}
!109 = !{ptr @wsm_cmd_send._entry, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @wsm_cmd_send._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.60, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/wireless/st/cw1200/wsm.c", i32 1137, i32 4}
!113 = !{ptr @wsm_cmd_send.__UNIQUE_ID_ddebug353, !112, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!114 = !{ptr @.str.62, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/st/cw1200/wsm.c", i32 1139, i32 4}
!116 = !{ptr @wsm_cmd_send._entry.61, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @wsm_cmd_send._entry_ptr.63, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.64, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/wireless/st/cw1200/wsm.c", i32 832, i32 2}
!120 = !{ptr @.str.65, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @wsm_startup_indication._entry, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @wsm_startup_indication._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.66, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/wireless/st/cw1200/wsm.c", i32 898, i32 4}
!125 = !{ptr @.str.67, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @wsm_receive_indication.__UNIQUE_ID_ddebug348, !124, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!127 = !{ptr @.str.68, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/wireless/st/cw1200/wsm.c", i32 932, i32 2}
!129 = !{ptr @.str.69, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @wsm_event_indication.__UNIQUE_ID_ddebug349, !128, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!131 = !{ptr @.str.70, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/wireless/st/cw1200/wsm.c", i32 1039, i32 2}
!133 = !{ptr @.str.71, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @wsm_ba_timeout_indication._entry, !132, !"_entry", i1 false, i1 false}
!135 = !{ptr @wsm_ba_timeout_indication._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.72, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/wireless/st/cw1200/wsm.c", i32 1024, i32 2}
!138 = !{ptr @.str.73, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @wsm_find_complete_indication._entry, !137, !"_entry", i1 false, i1 false}
!140 = !{ptr @wsm_find_complete_indication._entry_ptr, !137, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.74, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/wireless/st/cw1200/wsm.c", i32 1012, i32 2}
!143 = !{ptr @.str.75, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @wsm_join_complete_indication.__UNIQUE_ID_ddebug350, !142, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!145 = distinct !{null, !146, !"urgent", i1 false, i1 false}
!146 = !{!"../drivers/net/wireless/st/cw1200/wsm.c", i32 1579, i32 19}
!147 = !{ptr @.str.76, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/wireless/st/cw1200/wsm.c", i32 1482, i32 4}
!149 = !{ptr @.str.77, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @wsm_handle_tx_data._entry, !148, !"_entry", i1 false, i1 false}
!151 = !{ptr @wsm_handle_tx_data._entry_ptr, !148, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.79, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/wireless/st/cw1200/wsm.c", i32 1494, i32 4}
!154 = !{ptr @wsm_handle_tx_data._entry.78, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @wsm_handle_tx_data._entry_ptr.80, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.81, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/wireless/st/cw1200/wsm.c", i32 1524, i32 4}
!158 = !{ptr @wsm_handle_tx_data.__UNIQUE_ID_ddebug360, !157, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!159 = !{ptr @.str.82, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/wireless/st/cw1200/wsm.c", i32 1544, i32 3}
!161 = !{ptr @wsm_handle_tx_data.__UNIQUE_ID_ddebug361, !160, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!162 = !{ptr @.str.83, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/wireless/st/cw1200/wsm.c", i32 1553, i32 3}
!164 = !{ptr @wsm_handle_tx_data.__UNIQUE_ID_ddebug362, !163, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!165 = !{ptr @.str.84, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/net/wireless/st/cw1200/wsm.c", i32 1558, i32 3}
!167 = !{ptr @wsm_handle_tx_data.__UNIQUE_ID_ddebug363, !166, !"__UNIQUE_ID_ddebug363", i1 false, i1 false}
!168 = !{ptr @.str.85, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/wireless/st/cw1200/wsm.c", i32 1567, i32 3}
!170 = !{ptr @wsm_handle_tx_data.__UNIQUE_ID_ddebug364, !169, !"__UNIQUE_ID_ddebug364", i1 false, i1 false}
!171 = !{i32 1, !"wchar_size", i32 2}
!172 = !{i32 1, !"min_enum_size", i32 4}
!173 = !{i32 8, !"branch-target-enforcement", i32 0}
!174 = !{i32 8, !"sign-return-address", i32 0}
!175 = !{i32 8, !"sign-return-address-all", i32 0}
!176 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!177 = !{i32 7, !"uwtable", i32 1}
!178 = !{i32 7, !"frame-pointer", i32 2}
!179 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!180 = !{i64 2148872724, i64 2148872729, i64 2148872742, i64 2148872786, i64 2148872820, i64 2148872841}
!181 = !{!"branch_weights", i32 2000, i32 1}
!182 = !{i64 2157547565, i64 2157548067, i64 2157547602, i64 2157547658, i64 2157547692, i64 2157547716, i64 2157547757, i64 2157547778, i64 2157547806, i64 2157547840}
!183 = !{i64 2148390909, i64 2148390935, i64 2148390964, i64 2148390998, i64 2148391029, i64 2148391052}
!184 = !{!"branch_weights", i32 1, i32 2000}
!185 = !{i64 2157557417, i64 2157557919, i64 2157557454, i64 2157557510, i64 2157557544, i64 2157557568, i64 2157557609, i64 2157557630, i64 2157557658, i64 2157557692}
!186 = !{i8 0, i8 2}
!187 = !{!"auto-init"}
!188 = !{i64 2148476320}
!189 = !{i64 2148391629, i64 2148391661, i64 2148391690, i64 2148391724, i64 2148391755, i64 2148391778}
!190 = !{i64 2148476549}
!191 = !{i64 2157563705, i64 2157564207, i64 2157563742, i64 2157563798, i64 2157563832, i64 2157563856, i64 2157563897, i64 2157563918, i64 2157563946, i64 2157563980}
!192 = !{i64 2148479361}
!193 = !{i64 2148394094, i64 2148394126, i64 2148394155, i64 2148394189, i64 2148394220, i64 2148394243}
!194 = !{i64 2148479590}
!195 = !{i64 2157571168, i64 2157571670, i64 2157571205, i64 2157571261, i64 2157571295, i64 2157571319, i64 2157571360, i64 2157571381, i64 2157571409, i64 2157571443}
!196 = !{i64 2157621564, i64 2157622066, i64 2157621601, i64 2157621657, i64 2157621691, i64 2157621715, i64 2157621756, i64 2157621777, i64 2157621805, i64 2157621839}
!197 = !{i64 2157614613, i64 2157615115, i64 2157614650, i64 2157614706, i64 2157614740, i64 2157614764, i64 2157614805, i64 2157614826, i64 2157614854, i64 2157614888}
!198 = !{i64 2157632544, i64 2157633046, i64 2157632581, i64 2157632637, i64 2157632671, i64 2157632695, i64 2157632736, i64 2157632757, i64 2157632785, i64 2157632819}
