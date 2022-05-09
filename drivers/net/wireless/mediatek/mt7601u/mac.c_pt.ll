; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/mediatek/mt7601u/mac.c_pt.bc'
source_filename = "../drivers/net/wireless/mediatek/mt7601u/mac.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.91 }
%struct.atomic_t = type { i32 }
%union.anon.91 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.mt7601u_dev = type { ptr, ptr, i32, %struct.mutex, [4 x i32], %struct.cfg80211_chan_def, ptr, %struct.mt7601u_mcu, %struct.delayed_work, %struct.delayed_work, ptr, %struct.delayed_work, ptr, [128 x ptr], %struct.spinlock, %struct.spinlock, ptr, [6 x i8], ptr, %struct.mutex, ptr, %struct.mutex, %struct.mutex, i32, i32, [8 x i8], [8 x i8], i16, i16, %struct.spinlock, %struct.tasklet_struct, ptr, %struct.sk_buff_head, %struct.atomic_t, %struct.spinlock, %struct.tasklet_struct, %struct.mt7601u_rx_queue, %struct.spinlock, [6 x i8], i8, i8, %struct.ewma_rssi, i8, %struct.mt7601u_freq_cal, i8, i8, i8, i16, i32, i32, i32, i32, i8, i8, i8, i8, [2 x i32], %struct.mac_stats }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.mt7601u_mcu = type { %struct.mutex, i8, %struct.mt7601u_dma_buf, %struct.completion }
%struct.mt7601u_dma_buf = type { ptr, ptr, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.129, i32 }
%union.anon.129 = type { ptr }
%struct.mt7601u_rx_queue = type { ptr, [16 x %struct.mt7601u_dma_buf_rx], i32, i32, i32, i32 }
%struct.mt7601u_dma_buf_rx = type { ptr, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.ewma_rssi = type { i32 }
%struct.mt7601u_freq_cal = type { %struct.delayed_work, i8, i8, i8 }
%struct.mac_stats = type { [6 x i64], [6 x i64], [2 x i64], [32 x i64], [2 x i64] }
%struct.ieee80211_tx_rate = type <{ i8, i16 }>
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.anon.128 = type { i32, i16 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.127, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type { ptr }
%struct.anon.127 = type { i64, i64, i8 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.mt76_wcid = type { i8, i8, i16, i8, i8 }
%struct.mt76_tx_status = type { i8, i8, i8, i8, i16 }
%struct.ieee80211_tx_status = type { ptr, ptr, ptr, ptr, ptr }
%struct.ieee80211_tx_info = type { i32, i32, %union.anon.130 }
%union.anon.130 = type { %struct.anon.137, [32 x i8] }
%struct.anon.137 = type { i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.anon.140 = type { i32, i32, ptr }
%struct.mt7601u_rxwi = type { i32, i32, i16, i16, i8, [3 x i8], i8, i8, i8, i8, i32, i32 }
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
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_hdr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8] }
%struct.ieee80211_key_conf = type { %struct.atomic64_t, i32, i8, i8, i8, i8, i16, i8, [0 x i8] }
%struct.atomic64_t = type { i64 }

@mt7601u_set_macaddr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 19, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Invalid MAC address, using random address %pM\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mt7601u_set_macaddr\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/net/wireless/mediatek/mt7601u/mac.c\00", [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mt7601u_set_macaddr._entry_ptr = internal global ptr @mt7601u_set_macaddr._entry, section ".printk_index", align 4
@mt76_send_tx_status.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@mt7601u_mac_set_ampdu_factor.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@mt7601u_check_mac_err._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 294, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Error: MAC specific condition occurred\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mt7601u_check_mac_err\00", [42 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@mt7601u_check_mac_err._entry_ptr = internal global ptr @mt7601u_check_mac_err._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__tracepoint_set_key = external dso_local global %struct.tracepoint, align 4
@.str.12 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/net/wireless/mediatek/mt7601u/trace.h\00", [50 x i8] zeroinitializer }, align 32
@trace_set_key.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_set_shared_key = external dso_local global %struct.tracepoint, align 4
@trace_set_shared_key.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@switch.table.mt76_mac_shared_key_setup = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 1, i32 3, i32 1, i32 4, i32 2], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 32, i64 5920, i64 5964]
@__sancov_gen_cov_switch_values.15 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.16 = internal global [6 x i64] [i64 4, i64 32, i64 1027073, i64 1027074, i64 1027076, i64 1027077]
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 17, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 183, i32 10 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 695, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 723, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.57 = private constant [47 x i8] c"../drivers/net/wireless/mediatek/mt7601u/mac.c\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 294, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant [49 x i8] c"../drivers/net/wireless/mediatek/mt7601u/trace.h\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 363, i32 1 }
@___asan_gen_.62 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.63 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 108, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant [39 x i8] c"switch.table.mt76_mac_shared_key_setup\00", align 1
@llvm.compiler.used = appending global [19 x ptr] [ptr @mt7601u_check_mac_err._entry, ptr @mt7601u_check_mac_err._entry_ptr, ptr @mt7601u_set_macaddr._entry, ptr @mt7601u_set_macaddr._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @switch.table.mt76_mac_shared_key_setup], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7601u_set_macaddr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7601u_check_mac_err._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mt76_mac_shared_key_setup to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7601u_set_macaddr(ptr noundef %dev, ptr nocapture noundef readonly %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %macaddr = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 17
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %addr, align 4
  %2 = ptrtoint ptr %macaddr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %macaddr, align 4
  %add.ptr.i = getelementptr i8, ptr %addr, i32 4
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.mt7601u_dev, ptr %dev, i32 0, i32 17, i32 4
  %5 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %add.ptr1.i, align 2
  %6 = and i32 %1, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.not.i = icmp eq i32 %6, 0
  %conv.i.i = zext i16 %4 to i32
  %or.i.i = or i32 %1, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp ne i32 %or.i.i, 0
  %or.cond = select i1 %tobool.i.not.i, i1 %cmp.i.i, i1 false
  br i1 %or.cond, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @get_random_bytes(ptr noundef %macaddr, i32 noundef 6) #7
  %7 = ptrtoint ptr %macaddr to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %macaddr, align 1
  %9 = and i8 %8, -4
  %10 = or i8 %9, 2
  store i8 %10, ptr %macaddr, align 1
  %dev5 = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 1
  %11 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev5, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %12, ptr noundef nonnull @.str, ptr noundef %macaddr) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %13 = ptrtoint ptr %macaddr to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %macaddr, align 1
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #7
  tail call void @mt7601u_wr(ptr noundef %dev, i32 noundef 4104, i32 noundef %15) #7
  %16 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %add.ptr1.i, align 1
  %18 = tail call i16 @llvm.bswap.i16(i16 %17) #7
  %conv = zext i16 %18 to i32
  %or = or i32 %conv, 16711680
  tail call void @mt7601u_wr(ptr noundef %dev, i32 noundef 4108, i32 noundef %or) #7
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @mt76_mac_tx_rate_val(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %rate, ptr nocapture noundef writeonly %nss_val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.ieee80211_tx_rate, ptr %rate, i32 0, i32 1
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %bf.load = load i16, ptr %flags, align 1
  %bf.clear = and i16 %bf.load, 2047
  %conv = zext i16 %bf.clear to i32
  %and = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %rate to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %rate, align 1
  %3 = ashr i8 %2, 3
  %narrow = add nsw i8 %3, 1
  %and8 = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  %spec.store.select = select i1 %tobool9.not, i8 2, i8 3
  %4 = trunc i16 %bf.load to i8
  %5 = shl i8 %4, 2
  %phi.bo = and i8 %5, -128
  br label %do.end79

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %chandef = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 5
  %6 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chandef, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wiphy, align 8
  %arrayidx = getelementptr %struct.wiphy, ptr %13, i32 0, i32 53, i32 %9
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %bitrates = getelementptr inbounds %struct.ieee80211_supported_band, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %bitrates to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bitrates, align 4
  %18 = ptrtoint ptr %rate to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %rate, align 1
  %idxprom = sext i8 %19 to i32
  %and26 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  %hw_value_short = getelementptr %struct.ieee80211_rate, ptr %17, i32 %idxprom, i32 3
  %hw_value = getelementptr %struct.ieee80211_rate, ptr %17, i32 %idxprom, i32 2
  %val.0.in = select i1 %tobool27.not, ptr %hw_value, ptr %hw_value_short
  %20 = ptrtoint ptr %val.0.in to i32
  call void @__asan_load2_noabort(i32 %20)
  %val.0 = load i16, ptr %val.0.in, align 2
  %21 = lshr i16 %val.0, 8
  %conv33 = trunc i16 %21 to i8
  %conv36 = trunc i16 %val.0 to i8
  br label %do.end79

do.end79:                                         ; preds = %if.else, %if.then
  %bw.0 = phi i8 [ 0, %if.else ], [ %phi.bo, %if.then ]
  %nss.0 = phi i8 [ 1, %if.else ], [ %narrow, %if.then ]
  %rate_idx.0 = phi i8 [ %conv36, %if.else ], [ %2, %if.then ]
  %phy.0 = phi i8 [ %conv33, %if.else ], [ %spec.store.select, %if.then ]
  %conv81 = zext i8 %phy.0 to i16
  %shl82 = shl i16 %conv81, 14
  %shl110 = zext i8 %bw.0 to i16
  %22 = and i8 %rate_idx.0, 127
  %conv84.masked = zext i8 %22 to i16
  %conv112 = or i16 %shl82, %conv84.masked
  %or113 = or i16 %conv112, %shl110
  %23 = shl i16 %bf.load, 1
  %24 = and i16 %23, 256
  %25 = or i16 %or113, %24
  %26 = ptrtoint ptr %nss_val to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %nss.0, ptr %nss_val, align 1
  ret i16 %25
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt76_mac_wcid_set_rate(ptr noundef %dev, ptr nocapture noundef writeonly %wcid, ptr nocapture noundef readonly %rate) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 14
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %flags.i = getelementptr inbounds %struct.ieee80211_tx_rate, ptr %rate, i32 0, i32 1
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %bf.load.i = load i16, ptr %flags.i, align 1
  %bf.clear.i = and i16 %bf.load.i, 2047
  %conv.i = zext i16 %bf.clear.i to i32
  %and.i = and i32 %conv.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %rate to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %rate, align 1
  %3 = ashr i8 %2, 3
  %narrow.i = add nsw i8 %3, 1
  %and8.i = and i32 %conv.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  %spec.store.select.i = select i1 %tobool9.not.i, i8 2, i8 3
  %4 = trunc i16 %bf.load.i to i8
  %5 = shl i8 %4, 2
  %phi.bo.i = and i8 %5, -128
  br label %mt76_mac_tx_rate_val.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %chandef.i = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 5
  %6 = ptrtoint ptr %chandef.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chandef.i, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 8
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wiphy.i, align 8
  %arrayidx.i = getelementptr %struct.wiphy, ptr %13, i32 0, i32 53, i32 %9
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  %bitrates.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %bitrates.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bitrates.i, align 4
  %18 = ptrtoint ptr %rate to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %rate, align 1
  %idxprom.i = sext i8 %19 to i32
  %and26.i = and i32 %conv.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  %hw_value_short.i = getelementptr %struct.ieee80211_rate, ptr %17, i32 %idxprom.i, i32 3
  %hw_value.i = getelementptr %struct.ieee80211_rate, ptr %17, i32 %idxprom.i, i32 2
  %val.0.in.i = select i1 %tobool27.not.i, ptr %hw_value.i, ptr %hw_value_short.i
  %20 = ptrtoint ptr %val.0.in.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %val.0.i = load i16, ptr %val.0.in.i, align 2
  %21 = lshr i16 %val.0.i, 8
  %conv33.i = trunc i16 %21 to i8
  %conv36.i = trunc i16 %val.0.i to i8
  br label %mt76_mac_tx_rate_val.exit

mt76_mac_tx_rate_val.exit:                        ; preds = %if.else.i, %if.then.i
  %bw.0.i = phi i8 [ 0, %if.else.i ], [ %phi.bo.i, %if.then.i ]
  %nss.0.i = phi i8 [ 1, %if.else.i ], [ %narrow.i, %if.then.i ]
  %rate_idx.0.i = phi i8 [ %conv36.i, %if.else.i ], [ %2, %if.then.i ]
  %phy.0.i = phi i8 [ %conv33.i, %if.else.i ], [ %spec.store.select.i, %if.then.i ]
  %tx_rate_nss = getelementptr inbounds %struct.mt76_wcid, ptr %wcid, i32 0, i32 4
  %conv81.i = zext i8 %phy.0.i to i16
  %shl82.i = shl i16 %conv81.i, 14
  %shl110.i = zext i8 %bw.0.i to i16
  %22 = and i8 %rate_idx.0.i, 127
  %conv84.masked.i = zext i8 %22 to i16
  %conv112.i = or i16 %shl82.i, %conv84.masked.i
  %or113.i = or i16 %conv112.i, %shl110.i
  %23 = shl i16 %bf.load.i, 1
  %24 = and i16 %23, 256
  %25 = or i16 %or113.i, %24
  %26 = ptrtoint ptr %tx_rate_nss to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %nss.0.i, ptr %tx_rate_nss, align 1
  %tx_rate = getelementptr inbounds %struct.mt76_wcid, ptr %wcid, i32 0, i32 2
  %27 = ptrtoint ptr %tx_rate to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %25, ptr %tx_rate, align 2
  %tx_rate_set = getelementptr inbounds %struct.mt76_wcid, ptr %wcid, i32 0, i32 3
  %28 = ptrtoint ptr %tx_rate_set to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %tx_rate_set, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7601u_mac_fetch_tx_status(ptr noalias nocapture sret(%struct.mt76_tx_status) align 2 %agg.result, ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds i8, ptr %agg.result, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %0, align 2
  %call = tail call i32 @mt7601u_rr(ptr noundef %dev, i32 noundef 5912) #7
  %2 = trunc i32 %call to i8
  %bf.shl = shl i8 %2, 7
  %3 = shl i8 %2, 1
  %bf.shl11 = and i8 %3, 64
  %bf.set13 = or i8 %bf.shl, %bf.shl11
  %4 = lshr i8 %2, 1
  %bf.shl23 = and i8 %4, 32
  %bf.set25 = or i8 %bf.set13, %bf.shl23
  %5 = lshr i8 %2, 3
  %bf.shl35 = and i8 %5, 16
  %bf.set37 = or i8 %bf.set25, %bf.shl35
  %6 = ptrtoint ptr %agg.result to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %bf.set37, ptr %agg.result, align 2
  %conv51 = and i8 %4, 15
  %pktid = getelementptr inbounds %struct.mt76_tx_status, ptr %agg.result, i32 0, i32 2
  %7 = ptrtoint ptr %pktid to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv51, ptr %pktid, align 2
  %and68 = lshr i32 %call, 8
  %conv70 = trunc i32 %and68 to i8
  %wcid = getelementptr inbounds %struct.mt76_tx_status, ptr %agg.result, i32 0, i32 1
  %8 = ptrtoint ptr %wcid to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv70, ptr %wcid, align 1
  %shr88 = lshr i32 %call, 16
  %conv89 = trunc i32 %shr88 to i16
  %rate = getelementptr inbounds %struct.mt76_tx_status, ptr %agg.result, i32 0, i32 4
  %9 = ptrtoint ptr %rate to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv89, ptr %rate, align 2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7601u_rr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt76_send_tx_status(ptr noundef %dev, ptr nocapture noundef readonly %stat) local_unnamed_addr #0 align 64 {
entry:
  %status.i = alloca %struct.ieee80211_tx_status, align 4
  %info = alloca %struct.ieee80211_tx_info, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %info) #7
  %0 = call ptr @memset(ptr %info, i32 0, i32 48)
  %1 = tail call i32 @llvm.read_register.i32(metadata !36) #7
  %and.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !46
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 696, ptr noundef nonnull @.str.7) #7
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %wcid1 = getelementptr inbounds %struct.mt76_tx_status, ptr %stat, i32 0, i32 1
  %5 = ptrtoint ptr %wcid1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %wcid1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %6)
  %cmp = icmp sgt i8 %6, -1
  br i1 %cmp, label %if.then, label %rcu_read_lock.exit.if.end14_crit_edge

rcu_read_lock.exit.if.end14_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then:                                          ; preds = %rcu_read_lock.exit
  %conv = zext i8 %6 to i32
  %arrayidx = getelementptr %struct.mt7601u_dev, ptr %dev, i32 0, i32 13, i32 %conv
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %arrayidx, align 4
  %call = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.then.if.end14_crit_edge

if.then.if.end14_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

land.lhs.true:                                    ; preds = %if.then
  %call6 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true.if.end14_crit_edge, label %land.lhs.true8

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

land.lhs.true8:                                   ; preds = %land.lhs.true
  %.b30 = load i1, ptr @mt76_send_tx_status.__warned, align 1
  br i1 %.b30, label %land.lhs.true8.if.end14_crit_edge, label %if.then10

land.lhs.true8.if.end14_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then10:                                        ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @mt76_send_tx_status.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 183, ptr noundef nonnull @.str.5) #7
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %land.lhs.true8.if.end14_crit_edge, %land.lhs.true.if.end14_crit_edge, %if.then.if.end14_crit_edge, %rcu_read_lock.exit.if.end14_crit_edge
  %wcid.0 = phi ptr [ null, %rcu_read_lock.exit.if.end14_crit_edge ], [ %8, %if.then10 ], [ %8, %land.lhs.true8.if.end14_crit_edge ], [ %8, %land.lhs.true.if.end14_crit_edge ], [ %8, %if.then.if.end14_crit_edge ]
  %tobool15.not = icmp eq ptr %wcid.0, null
  %add.ptr20 = getelementptr i8, ptr %wcid.0, i32 -268
  %spec.select = select i1 %tobool15.not, ptr null, ptr %add.ptr20
  %9 = getelementptr inbounds %struct.ieee80211_tx_info, ptr %info, i32 0, i32 2
  %retry.i = getelementptr inbounds %struct.mt76_tx_status, ptr %stat, i32 0, i32 3
  %10 = ptrtoint ptr %retry.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %retry.i, align 1
  %12 = tail call i8 @llvm.umin.i8(i8 %11, i8 3) #7
  %cond.i = zext i8 %12 to i32
  %arrayidx.i = getelementptr %struct.ieee80211_tx_rate, ptr %9, i32 %cond.i
  %rate2.i = getelementptr inbounds %struct.mt76_tx_status, ptr %stat, i32 0, i32 4
  %13 = ptrtoint ptr %rate2.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %rate2.i, align 2
  %conv.i.i = zext i16 %14 to i32
  %15 = trunc i16 %14 to i8
  %conv13.i.i = and i8 %15, 127
  %flags.i.i = getelementptr %struct.ieee80211_tx_rate, ptr %9, i32 %cond.i, i32 1
  %16 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_storeN_noabort(i32 %16, i32 2)
  store i16 2048, ptr %flags.i.i, align 1
  %shr36.i.i = lshr i32 %conv.i.i, 14
  %17 = zext i32 %shr36.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr36.i.i, label %entry.unreachabledefault.i.i [
    i32 1, label %sw.bb.i.i
    i32 0, label %sw.bb40.i.i
    i32 3, label %sw.bb46.i.i
    i32 2, label %if.end14.sw.bb55.i.i_crit_edge
  ]

if.end14.sw.bb55.i.i_crit_edge:                   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb55.i.i

sw.bb.i.i:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %narrow.i.i = add nuw i8 %conv13.i.i, 4
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %narrow.i.i, ptr %arrayidx.i, align 1
  br label %mt76_mac_process_tx_rate.exit.i

sw.bb40.i.i:                                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %conv13.i.i)
  %cmp.i.i = icmp ugt i8 %conv13.i.i, 7
  %sub.i.i = add nsw i8 %conv13.i.i, -8
  %spec.select.i.i = select i1 %cmp.i.i, i8 %sub.i.i, i8 %conv13.i.i
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %spec.select.i.i, ptr %arrayidx.i, align 1
  br label %mt76_mac_process_tx_rate.exit.i

sw.bb46.i.i:                                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_storeN_noabort(i32 %20, i32 2)
  store i16 2064, ptr %flags.i.i, align 1
  br label %sw.bb55.i.i

sw.bb55.i.i:                                      ; preds = %sw.bb46.i.i, %if.end14.sw.bb55.i.i_crit_edge
  %21 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %bf.load57.i.i = load i16, ptr %flags.i.i, align 1
  %bf.set65.i.i = or i16 %bf.load57.i.i, 8
  store i16 %bf.set65.i.i, ptr %flags.i.i, align 1
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv13.i.i, ptr %arrayidx.i, align 1
  %23 = and i32 %conv.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp106.not.i.i = icmp eq i32 %23, 0
  br i1 %cmp106.not.i.i, label %sw.bb55.i.i.if.end119.i.i_crit_edge, label %if.then108.i.i

sw.bb55.i.i.if.end119.i.i_crit_edge:              ; preds = %sw.bb55.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end119.i.i

entry.unreachabledefault.i.i:                     ; preds = %if.end14
  unreachable

if.then108.i.i:                                   ; preds = %sw.bb55.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %bf.set118.i.i = or i16 %bf.load57.i.i, 40
  %24 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_storeN_noabort(i32 %24, i32 2)
  store i16 %bf.set118.i.i, ptr %flags.i.i, align 1
  br label %if.end119.i.i

if.end119.i.i:                                    ; preds = %if.then108.i.i, %sw.bb55.i.i.if.end119.i.i_crit_edge
  %and121.i.i = and i32 %conv.i.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and121.i.i)
  %tobool122.not.i.i = icmp eq i32 %and121.i.i, 0
  br i1 %tobool122.not.i.i, label %if.end119.i.i.mt76_mac_process_tx_rate.exit.i_crit_edge, label %if.then123.i.i

if.end119.i.i.mt76_mac_process_tx_rate.exit.i_crit_edge: ; preds = %if.end119.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt76_mac_process_tx_rate.exit.i

if.then123.i.i:                                   ; preds = %if.end119.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 2)
  %bf.load125.i.i = load i16, ptr %flags.i.i, align 1
  %bf.set133.i.i = or i16 %bf.load125.i.i, 128
  store i16 %bf.set133.i.i, ptr %flags.i.i, align 1
  br label %mt76_mac_process_tx_rate.exit.i

mt76_mac_process_tx_rate.exit.i:                  ; preds = %if.then123.i.i, %if.end119.i.i.mt76_mac_process_tx_rate.exit.i_crit_edge, %sw.bb40.i.i, %sw.bb.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %11)
  %cmp3.not.i = icmp ugt i8 %11, 2
  br i1 %cmp3.not.i, label %mt76_mac_process_tx_rate.exit.i.if.end.i_crit_edge, label %if.then.i31

mt76_mac_process_tx_rate.exit.i.if.end.i_crit_edge: ; preds = %mt76_mac_process_tx_rate.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i31:                                      ; preds = %mt76_mac_process_tx_rate.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %.pre.i = add nuw nsw i32 %cond.i, 1
  %arrayidx5.i = getelementptr %struct.ieee80211_tx_rate, ptr %9, i32 %.pre.i
  %26 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -1, ptr %arrayidx5.i, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i31, %mt76_mac_process_tx_rate.exit.i.if.end.i_crit_edge
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.i, align 1
  %conv8.i = sext i8 %28 to i32
  %conv10.i = zext i8 %11 to i32
  %add11.i = add nsw i32 %conv8.i, %conv10.i
  %29 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_loadN_noabort(i32 %29, i32 2)
  %bf.load.i = load i16, ptr %flags.i.i, align 1
  %bf.clear.i = and i16 %bf.load.i, 2047
  %flags16.i = getelementptr inbounds %struct.ieee80211_tx_rate, ptr %9, i32 0, i32 1
  %30 = tail call i32 @llvm.smax.i32(i32 %add11.i, i32 0) #7
  %conv26.i = trunc i32 %30 to i8
  %31 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv26.i, ptr %9, align 8
  %bf.set32.i = or i16 %bf.clear.i, 2048
  %32 = ptrtoint ptr %flags16.i to i32
  call void @__asan_storeN_noabort(i32 %32, i32 2)
  store i16 %bf.set32.i, ptr %flags16.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cond = icmp eq i8 %12, 0
  br i1 %cond, label %if.end.i.if.end48.i_crit_edge, label %for.body.i.1

if.end.i.if.end48.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48.i

for.body.i.1:                                     ; preds = %if.end.i
  %33 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_loadN_noabort(i32 %33, i32 2)
  %bf.load.i.1 = load i16, ptr %flags.i.i, align 1
  %bf.clear.i.1 = and i16 %bf.load.i.1, 2047
  %arrayidx15.i.1 = getelementptr inbounds %struct.ieee80211_tx_rate, ptr %9, i32 1
  %flags16.i.1 = getelementptr inbounds %struct.ieee80211_tx_rate, ptr %9, i32 1, i32 1
  %34 = call i32 @llvm.smax.i32(i32 %add11.i, i32 1)
  %35 = trunc i32 %34 to i8
  %conv26.i.1 = add i8 %35, -1
  %36 = ptrtoint ptr %arrayidx15.i.1 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv26.i.1, ptr %arrayidx15.i.1, align 1
  %bf.set32.i.1 = or i16 %bf.clear.i.1, 2048
  %37 = ptrtoint ptr %flags16.i.1 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %bf.set32.i.1, ptr %flags16.i.1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %12)
  %cond42 = icmp eq i8 %12, 1
  br i1 %cond42, label %for.body.i.1.if.then35.i_crit_edge, label %for.body.i.2

for.body.i.1.if.then35.i_crit_edge:               ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then35.i

for.body.i.2:                                     ; preds = %for.body.i.1
  %38 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_loadN_noabort(i32 %38, i32 2)
  %bf.load.i.2 = load i16, ptr %flags.i.i, align 1
  %bf.clear.i.2 = and i16 %bf.load.i.2, 2047
  %arrayidx15.i.2 = getelementptr inbounds %struct.ieee80211_tx_rate, ptr %9, i32 2
  %flags16.i.2 = getelementptr inbounds %struct.ieee80211_tx_rate, ptr %9, i32 2, i32 1
  %39 = call i32 @llvm.smax.i32(i32 %add11.i, i32 2)
  %40 = trunc i32 %39 to i8
  %conv26.i.2 = add i8 %40, -2
  %41 = ptrtoint ptr %arrayidx15.i.2 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv26.i.2, ptr %arrayidx15.i.2, align 2
  %bf.set32.i.2 = or i16 %bf.clear.i.2, 2048
  %42 = ptrtoint ptr %flags16.i.2 to i32
  call void @__asan_storeN_noabort(i32 %42, i32 2)
  store i16 %bf.set32.i.2, ptr %flags16.i.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %12)
  %cond43 = icmp eq i8 %12, 2
  br i1 %cond43, label %for.body.i.2.if.then35.i_crit_edge, label %for.body.i.3

for.body.i.2.if.then35.i_crit_edge:               ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then35.i

for.body.i.3:                                     ; preds = %for.body.i.2
  %43 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_loadN_noabort(i32 %43, i32 2)
  %bf.load.i.3 = load i16, ptr %flags.i.i, align 1
  %bf.clear.i.3 = and i16 %bf.load.i.3, 2047
  %arrayidx15.i.3 = getelementptr inbounds %struct.ieee80211_tx_info, ptr %info, i32 0, i32 2, i32 1, i32 1
  %flags16.i.3 = getelementptr inbounds %struct.ieee80211_tx_info, ptr %info, i32 0, i32 2, i32 1, i32 2
  %44 = call i32 @llvm.smax.i32(i32 %add11.i, i32 3)
  %45 = trunc i32 %44 to i8
  %conv26.i.3 = add i8 %45, -3
  %46 = ptrtoint ptr %arrayidx15.i.3 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv26.i.3, ptr %arrayidx15.i.3, align 1
  %bf.set32.i.3 = or i16 %bf.clear.i.3, 2048
  %47 = ptrtoint ptr %flags16.i.3 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %bf.set32.i.3, ptr %flags16.i.3, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp33.not.i = icmp eq i8 %12, 0
  br i1 %cmp33.not.i, label %for.body.i.3.if.end48.i_crit_edge, label %for.body.i.3.if.then35.i_crit_edge

for.body.i.3.if.then35.i_crit_edge:               ; preds = %for.body.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then35.i

for.body.i.3.if.end48.i_crit_edge:                ; preds = %for.body.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48.i

if.then35.i:                                      ; preds = %for.body.i.3.if.then35.i_crit_edge, %for.body.i.2.if.then35.i_crit_edge, %for.body.i.1.if.then35.i_crit_edge
  %add38.i = add nuw nsw i32 %conv10.i, 1
  %sub39.i = sub nsw i32 %add38.i, %cond.i
  %conv40.i = trunc i32 %sub39.i to i16
  %sub41.i = add nsw i32 %cond.i, -1
  %count43.i = getelementptr %struct.ieee80211_tx_rate, ptr %9, i32 %sub41.i, i32 1
  %48 = ptrtoint ptr %count43.i to i32
  call void @__asan_loadN_noabort(i32 %48, i32 2)
  %bf.load44.i = load i16, ptr %count43.i, align 1
  %bf.shl.i = shl i16 %conv40.i, 11
  %bf.clear46.i = and i16 %bf.load44.i, 2047
  %bf.set47.i = or i16 %bf.clear46.i, %bf.shl.i
  store i16 %bf.set47.i, ptr %count43.i, align 1
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.then35.i, %for.body.i.3.if.end48.i_crit_edge, %if.end.i.if.end48.i_crit_edge
  %ampdu_len.i = getelementptr inbounds %struct.ieee80211_tx_info, ptr %info, i32 0, i32 2, i32 1, i32 9
  %49 = ptrtoint ptr %ampdu_len.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %ampdu_len.i, align 1
  %50 = ptrtoint ptr %stat to i32
  call void @__asan_load1_noabort(i32 %50)
  %bf.load49.i = load i8, ptr %stat, align 2
  %bf.lshr.i = lshr i8 %bf.load49.i, 6
  %bf.clear50.i = and i8 %bf.lshr.i, 1
  %ampdu_ack_len.i = getelementptr inbounds %struct.ieee80211_tx_info, ptr %info, i32 0, i32 2, i32 1, i32 8
  %51 = ptrtoint ptr %ampdu_ack_len.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %bf.clear50.i, ptr %ampdu_ack_len.i, align 8
  %52 = and i8 %bf.load49.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool.not.i32 = icmp eq i8 %52, 0
  br i1 %tobool.not.i32, label %if.end48.i.if.end56.i_crit_edge, label %if.then54.i

if.end48.i.if.end56.i_crit_edge:                  ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56.i

if.then54.i:                                      ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %info, align 8
  %or.i = or i32 %54, 4096
  store i32 %or.i, ptr %info, align 8
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.then54.i, %if.end48.i.if.end56.i_crit_edge
  %55 = and i8 %bf.load49.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool60.not.i = icmp eq i8 %55, 0
  br i1 %tobool60.not.i, label %if.end56.i.if.end64.i_crit_edge, label %if.then61.i

if.end56.i.if.end64.i_crit_edge:                  ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end64.i

if.then61.i:                                      ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %info, align 8
  %or63.i = or i32 %57, 1088
  store i32 %or63.i, ptr %info, align 8
  br label %if.end64.i

if.end64.i:                                       ; preds = %if.then61.i, %if.end56.i.if.end64.i_crit_edge
  %58 = and i8 %bf.load49.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool68.not.i = icmp eq i8 %58, 0
  br i1 %tobool68.not.i, label %if.end64.i.if.end80.sink.split.i_crit_edge, label %if.else.i

if.end64.i.if.end80.sink.split.i_crit_edge:       ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end80.sink.split.i

if.else.i:                                        ; preds = %if.end64.i
  %59 = and i8 %bf.load49.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool75.not.i = icmp eq i8 %59, 0
  br i1 %tobool75.not.i, label %if.else.i.mt76_mac_fill_tx_status.exit_crit_edge, label %if.else.i.if.end80.sink.split.i_crit_edge

if.else.i.if.end80.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end80.sink.split.i

if.else.i.mt76_mac_fill_tx_status.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt76_mac_fill_tx_status.exit

if.end80.sink.split.i:                            ; preds = %if.else.i.if.end80.sink.split.i_crit_edge, %if.end64.i.if.end80.sink.split.i_crit_edge
  %.sink2.i = phi i32 [ 4, %if.end64.i.if.end80.sink.split.i_crit_edge ], [ 512, %if.else.i.if.end80.sink.split.i_crit_edge ]
  %60 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %info, align 8
  %or78.i = or i32 %61, %.sink2.i
  store i32 %or78.i, ptr %info, align 8
  br label %mt76_mac_fill_tx_status.exit

mt76_mac_fill_tx_status.exit:                     ; preds = %if.end80.sink.split.i, %if.else.i.mt76_mac_fill_tx_status.exit_crit_edge
  %mac_lock = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 15
  tail call void @_raw_spin_lock_bh(ptr noundef %mac_lock) #7
  %62 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %status.i) #7
  %64 = getelementptr inbounds %struct.ieee80211_tx_status, ptr %status.i, i32 0, i32 1
  %65 = getelementptr inbounds %struct.ieee80211_tx_status, ptr %status.i, i32 0, i32 2
  %66 = getelementptr inbounds %struct.ieee80211_tx_status, ptr %status.i, i32 0, i32 3
  %67 = getelementptr inbounds %struct.ieee80211_tx_status, ptr %status.i, i32 0, i32 4
  %68 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %spec.select, ptr %status.i, align 4
  %69 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %info, ptr %64, align 4
  %70 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr null, ptr %65, align 4
  %71 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %66, align 4
  %72 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %67, align 4
  call void @ieee80211_tx_status_ext(ptr noundef %63, ptr noundef nonnull %status.i) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %status.i) #7
  call void @_raw_spin_unlock_bh(ptr noundef %mac_lock) #7
  %call.i33 = call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i33, label %mt76_mac_fill_tx_status.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i36

mt76_mac_fill_tx_status.exit.rcu_read_unlock.exit_crit_edge: ; preds = %mt76_mac_fill_tx_status.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i36:                                ; preds = %mt76_mac_fill_tx_status.exit
  %call1.i34 = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i34)
  %tobool.not.i35 = icmp eq i32 %call1.i34, 0
  br i1 %tobool.not.i35, label %land.lhs.true.i36.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i38

land.lhs.true.i36.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i36
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true2.i38:                               ; preds = %land.lhs.true.i36
  %.b4.i37 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i37, label %land.lhs.true2.i38.rcu_read_unlock.exit_crit_edge, label %if.then.i39

land.lhs.true2.i38.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i38
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

if.then.i39:                                      ; preds = %land.lhs.true2.i38
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.8) #7
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i39, %land.lhs.true2.i38.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i36.rcu_read_unlock.exit_crit_edge, %mt76_mac_fill_tx_status.exit.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !47
  %73 = call i32 @llvm.read_register.i32(metadata !36) #7
  %and.i.i.i.i.i40 = and i32 %73, -16384
  %74 = inttoptr i32 %and.i.i.i.i.i40 to ptr
  %preempt_count.i.i.i.i41 = getelementptr inbounds %struct.thread_info, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %preempt_count.i.i.i.i41 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %preempt_count.i.i.i.i41, align 4
  %sub.i.i.i = add i32 %76, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i41, align 4
  call void @rcu_read_unlock_strict() #7
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %info) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7601u_mac_set_protection(ptr noundef %dev, i1 noundef zeroext %legacy_prot, i32 noundef %ht_mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %ht_mode, 3
  %switch.tableidx = add nsw i32 %and, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 3
  %1 = and i32 %switch.tableidx, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %switch.idx.cast = icmp ne i32 %1, 0
  %not. = xor i1 %0, true
  %not.89 = xor i1 %0, true
  %spec.select88 = or i1 %switch.idx.cast, %not.89
  %.75 = select i1 %legacy_prot, i32 66322435, i32 66338948
  %. = select i1 %legacy_prot, i32 24379395, i32 24395780
  %and1 = and i32 %ht_mode, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  %or52 = or i32 %., 65536
  %prot.sroa.8.0 = select i1 %spec.select88, i32 %., i32 %or52
  %or52.1 = or i32 %.75, 65536
  %prot.sroa.14.0 = select i1 %0, i32 %or52.1, i32 %.75
  %tobool49.not.2 = and i1 %tobool.not, %spec.select88
  %or52.2 = or i32 %., 65536
  %prot.sroa.20.0 = select i1 %tobool49.not.2, i32 %., i32 %or52.2
  %tobool49.not.3 = and i1 %tobool.not, %not.
  %or52.3 = or i32 %.75, 65536
  %prot.sroa.26.0 = select i1 %tobool49.not.3, i32 %.75, i32 %or52.3
  %spec.select = select i1 %legacy_prot, i32 133562368, i32 133431296
  tail call void @mt7601u_wr(ptr noundef %dev, i32 noundef 4964, i32 noundef 133431296) #7
  tail call void @mt7601u_wr(ptr noundef %dev, i32 noundef 4968, i32 noundef %spec.select) #7
  tail call void @mt7601u_wr(ptr noundef %dev, i32 noundef 4972, i32 noundef %prot.sroa.8.0) #7
  tail call void @mt7601u_wr(ptr noundef %dev, i32 noundef 4976, i32 noundef %prot.sroa.14.0) #7
  tail call void @mt7601u_wr(ptr noundef %dev, i32 noundef 4980, i32 noundef %prot.sroa.20.0) #7
  tail call void @mt7601u_wr(ptr noundef %dev, i32 noundef 4984, i32 noundef %prot.sroa.26.0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7601u_wr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7601u_mac_set_short_preamble(ptr noundef %dev, i1 noundef zeroext %short_preamb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %short_preamb, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i = tail call i32 @mt7601u_rmw(ptr noundef %dev, i32 noundef 5124, i32 noundef 0, i32 noundef 16) #7
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i3 = tail call i32 @mt7601u_rmw(ptr noundef %dev, i32 noundef 5124, i32 noundef 16, i32 noundef 0) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7601u_mac_config_tsf(ptr noundef %dev, i1 noundef zeroext %enable, i32 noundef %interval) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mt7601u_rr(ptr noundef %dev, i32 noundef 4372) #7
  br i1 %enable, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %and = and i32 %call, -983041
  tail call void @mt7601u_wr(ptr noundef %dev, i32 noundef 4372, i32 noundef %and) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7601u_mac_work(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  %spans = alloca [6 x %struct.anon.140], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -420
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %spans) #7
  %0 = ptrtoint ptr %spans to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 5888, ptr %spans, align 4
  %span = getelementptr inbounds %struct.anon.140, ptr %spans, i32 0, i32 1
  %1 = ptrtoint ptr %span to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 3, ptr %span, align 4
  %stat_base = getelementptr inbounds %struct.anon.140, ptr %spans, i32 0, i32 2
  %stats = getelementptr i8, ptr %work, i32 1684
  %2 = ptrtoint ptr %stat_base to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %stats, ptr %stat_base, align 4
  %arrayinit.element = getelementptr inbounds %struct.anon.140, ptr %spans, i32 1
  %3 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 5900, ptr %arrayinit.element, align 4
  %span2 = getelementptr inbounds %struct.anon.140, ptr %spans, i32 1, i32 1
  %4 = ptrtoint ptr %span2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 3, ptr %span2, align 4
  %stat_base3 = getelementptr inbounds %struct.anon.140, ptr %spans, i32 1, i32 2
  %tx_stat = getelementptr i8, ptr %work, i32 1732
  %5 = ptrtoint ptr %stat_base3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %tx_stat, ptr %stat_base3, align 4
  %arrayinit.element6 = getelementptr inbounds %struct.anon.140, ptr %spans, i32 2
  %6 = ptrtoint ptr %arrayinit.element6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 5916, ptr %arrayinit.element6, align 4
  %span8 = getelementptr inbounds %struct.anon.140, ptr %spans, i32 2, i32 1
  %7 = ptrtoint ptr %span8 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %span8, align 4
  %stat_base9 = getelementptr inbounds %struct.anon.140, ptr %spans, i32 2, i32 2
  %aggr_stat = getelementptr i8, ptr %work, i32 1780
  %8 = ptrtoint ptr %stat_base9 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %aggr_stat, ptr %stat_base9, align 4
  %arrayinit.element12 = getelementptr inbounds %struct.anon.140, ptr %spans, i32 3
  %9 = ptrtoint ptr %arrayinit.element12 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 5952, ptr %arrayinit.element12, align 4
  %span14 = getelementptr inbounds %struct.anon.140, ptr %spans, i32 3, i32 1
  %10 = ptrtoint ptr %span14 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %span14, align 4
  %stat_base15 = getelementptr inbounds %struct.anon.140, ptr %spans, i32 3, i32 2
  %zero_len_del = getelementptr i8, ptr %work, i32 2052
  %11 = ptrtoint ptr %stat_base15 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %zero_len_del, ptr %stat_base15, align 4
  %arrayinit.element18 = getelementptr inbounds %struct.anon.140, ptr %spans, i32 4
  %12 = ptrtoint ptr %arrayinit.element18 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 5920, ptr %arrayinit.element18, align 4
  %span20 = getelementptr inbounds %struct.anon.140, ptr %spans, i32 4, i32 1
  %13 = ptrtoint ptr %span20 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 8, ptr %span20, align 4
  %stat_base21 = getelementptr inbounds %struct.anon.140, ptr %spans, i32 4, i32 2
  %aggr_n = getelementptr i8, ptr %work, i32 1796
  %14 = ptrtoint ptr %stat_base21 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %aggr_n, ptr %stat_base21, align 4
  %arrayinit.element23 = getelementptr inbounds %struct.anon.140, ptr %spans, i32 5
  %15 = ptrtoint ptr %arrayinit.element23 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 5964, ptr %arrayinit.element23, align 4
  %span25 = getelementptr inbounds %struct.anon.140, ptr %spans, i32 5, i32 1
  %16 = ptrtoint ptr %span25 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 8, ptr %span25, align 4
  %stat_base26 = getelementptr inbounds %struct.anon.140, ptr %spans, i32 5, i32 2
  %arrayidx29 = getelementptr i8, ptr %work, i32 1924
  %17 = ptrtoint ptr %stat_base26 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %arrayidx29, ptr %stat_base26, align 4
  br label %for.cond30.preheader

for.cond30.preheader:                             ; preds = %for.inc72.for.cond30.preheader_crit_edge, %entry
  %sum.0122 = phi i32 [ 0, %entry ], [ %sum.1.lcssa, %for.inc72.for.cond30.preheader_crit_edge ]
  %n.0121 = phi i32 [ 0, %entry ], [ %n.1.lcssa, %for.inc72.for.cond30.preheader_crit_edge ]
  %k.0120 = phi i32 [ 0, %entry ], [ %k.1.lcssa, %for.inc72.for.cond30.preheader_crit_edge ]
  %i.0118 = phi i32 [ 0, %entry ], [ %inc73, %for.inc72.for.cond30.preheader_crit_edge ]
  %span32 = getelementptr [6 x %struct.anon.140], ptr %spans, i32 0, i32 %i.0118, i32 1
  %18 = ptrtoint ptr %span32 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %span32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp33111.not = icmp eq i32 %19, 0
  br i1 %cmp33111.not, label %for.cond30.preheader.for.inc72_crit_edge, label %for.body34.lr.ph

for.cond30.preheader.for.inc72_crit_edge:         ; preds = %for.cond30.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc72

for.body34.lr.ph:                                 ; preds = %for.cond30.preheader
  %arrayidx31 = getelementptr [6 x %struct.anon.140], ptr %spans, i32 0, i32 %i.0118
  %stat_base38 = getelementptr [6 x %struct.anon.140], ptr %spans, i32 0, i32 %i.0118, i32 2
  br label %for.body34

for.body34:                                       ; preds = %cleanup.for.body34_crit_edge, %for.body34.lr.ph
  %sum.1115 = phi i32 [ %sum.0122, %for.body34.lr.ph ], [ %sum.2, %cleanup.for.body34_crit_edge ]
  %n.1114 = phi i32 [ %n.0121, %for.body34.lr.ph ], [ %n.2, %cleanup.for.body34_crit_edge ]
  %k.1113 = phi i32 [ %k.0120, %for.body34.lr.ph ], [ %k.2, %cleanup.for.body34_crit_edge ]
  %j.0112 = phi i32 [ 0, %for.body34.lr.ph ], [ %inc71, %cleanup.for.body34_crit_edge ]
  %20 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx31, align 4
  %mul = shl i32 %j.0112, 2
  %add = add i32 %21, %mul
  %call = tail call i32 @mt7601u_rr(ptr noundef %add.ptr, i32 noundef %add) #7
  %and = and i32 %call, 65535
  %conv = zext i32 %and to i64
  %22 = ptrtoint ptr %stat_base38 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %stat_base38, align 4
  %mul39 = shl i32 %j.0112, 1
  %arrayidx40 = getelementptr i64, ptr %23, i32 %mul39
  %24 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %arrayidx40, align 8
  %add41 = add i64 %25, %conv
  store i64 %add41, ptr %arrayidx40, align 8
  %shr = lshr i32 %call, 16
  %conv42 = zext i32 %shr to i64
  %26 = load ptr, ptr %stat_base38, align 4
  %add46 = or i32 %mul39, 1
  %arrayidx47 = getelementptr i64, ptr %26, i32 %add46
  %27 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %arrayidx47, align 8
  %add48 = add i64 %28, %conv42
  store i64 %add48, ptr %arrayidx47, align 8
  %29 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx31, align 4
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %30, label %for.body34.cleanup_crit_edge [
    i32 5920, label %for.body34.if.end_crit_edge
    i32 5964, label %for.body34.if.end_crit_edge123
  ]

for.body34.if.end_crit_edge123:                   ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.body34.if.end_crit_edge:                      ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.body34.cleanup_crit_edge:                     ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %for.body34.if.end_crit_edge, %for.body34.if.end_crit_edge123
  %add59 = add i32 %and, %n.1114
  %add60 = add i32 %add59, %shr
  %mul62 = shl i32 %k.1113, 1
  %add63 = or i32 %mul62, 1
  %mul64 = mul i32 %and, %add63
  %add67 = add i32 %mul62, 2
  %mul68 = mul i32 %shr, %add67
  %add69 = add i32 %mul68, %sum.1115
  %add70 = add i32 %add69, %mul64
  %inc = add i32 %k.1113, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.body34.cleanup_crit_edge
  %k.2 = phi i32 [ %inc, %if.end ], [ %k.1113, %for.body34.cleanup_crit_edge ]
  %n.2 = phi i32 [ %add60, %if.end ], [ %n.1114, %for.body34.cleanup_crit_edge ]
  %sum.2 = phi i32 [ %add70, %if.end ], [ %sum.1115, %for.body34.cleanup_crit_edge ]
  %inc71 = add nuw i32 %j.0112, 1
  %32 = ptrtoint ptr %span32 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %span32, align 4
  %cmp33 = icmp ult i32 %inc71, %33
  br i1 %cmp33, label %cleanup.for.body34_crit_edge, label %cleanup.for.inc72_crit_edge

cleanup.for.inc72_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc72

cleanup.for.body34_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body34

for.inc72:                                        ; preds = %cleanup.for.inc72_crit_edge, %for.cond30.preheader.for.inc72_crit_edge
  %k.1.lcssa = phi i32 [ %k.0120, %for.cond30.preheader.for.inc72_crit_edge ], [ %k.2, %cleanup.for.inc72_crit_edge ]
  %n.1.lcssa = phi i32 [ %n.0121, %for.cond30.preheader.for.inc72_crit_edge ], [ %n.2, %cleanup.for.inc72_crit_edge ]
  %sum.1.lcssa = phi i32 [ %sum.0122, %for.cond30.preheader.for.inc72_crit_edge ], [ %sum.2, %cleanup.for.inc72_crit_edge ]
  %inc73 = add nuw nsw i32 %i.0118, 1
  %exitcond.not = icmp eq i32 %inc73, 6
  br i1 %exitcond.not, label %for.end74, label %for.inc72.for.cond30.preheader_crit_edge

for.inc72.for.cond30.preheader_crit_edge:         ; preds = %for.inc72
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond30.preheader

for.end74:                                        ; preds = %for.inc72
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.1.lcssa)
  %tobool.not = icmp eq i32 %n.1.lcssa, 0
  br i1 %tobool.not, label %for.end74.cond.end_crit_edge, label %cond.true

for.end74.cond.end_crit_edge:                     ; preds = %for.end74
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %for.end74
  call void @__sanitizer_cov_trace_pc() #9
  %div110 = lshr i32 %n.1.lcssa, 1
  %add76 = add i32 %sum.1.lcssa, %div110
  %div77 = udiv i32 %add76, %n.1.lcssa
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %for.end74.cond.end_crit_edge
  %cond = phi i32 [ %div77, %cond.true ], [ 1, %for.end74.cond.end_crit_edge ]
  %avg_ampdu_len = getelementptr i8, ptr %work, i32 1260
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %avg_ampdu_len, i32 noundef 4) #7
  %34 = ptrtoint ptr %avg_ampdu_len to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile i32 %cond, ptr %avg_ampdu_len, align 4
  %call.i = tail call i32 @mt7601u_rr(ptr noundef %add.ptr, i32 noundef 4340) #7
  %and.i = and i32 %call.i, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %and1.i = and i32 %call.i, 160
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  %or.cond.i = or i1 %tobool.not.i, %tobool2.not.i
  br i1 %or.cond.i, label %cond.end.mt7601u_check_mac_err.exit_crit_edge, label %do.end.i

cond.end.mt7601u_check_mac_err.exit_crit_edge:    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt7601u_check_mac_err.exit

do.end.i:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev3.i = getelementptr i8, ptr %work, i32 -416
  %35 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev3.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.9) #10
  %call.i.i.i = tail call i32 @mt7601u_rmw(ptr noundef %add.ptr, i32 noundef 4100, i32 noundef 0, i32 noundef 1) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 2147480) #7
  %call.i.i10.i = tail call i32 @mt7601u_rmw(ptr noundef %add.ptr, i32 noundef 4100, i32 noundef 1, i32 noundef 0) #7
  br label %mt7601u_check_mac_err.exit

mt7601u_check_mac_err.exit:                       ; preds = %do.end.i, %cond.end.mt7601u_check_mac_err.exit_crit_edge
  %38 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %add.ptr, align 8
  tail call void @ieee80211_queue_delayed_work(ptr noundef %39, ptr noundef %work, i32 noundef 1000) #7
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %spans) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_delayed_work(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7601u_mac_wcid_setup(ptr noundef %dev, i8 noundef zeroext %idx, i8 noundef zeroext %vif_idx, ptr noundef readonly %mac) local_unnamed_addr #0 align 64 {
entry:
  %zmac = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %zmac) #7
  %0 = call ptr @memset(ptr %zmac, i32 0, i32 6)
  %conv = zext i8 %vif_idx to i32
  %shl = shl nuw nsw i32 %conv, 4
  %and18 = and i32 %shl, 112
  %1 = shl nuw nsw i32 %conv, 8
  %and60 = and i32 %1, 2048
  %or = or i32 %and18, %and60
  %conv61 = zext i8 %idx to i32
  %mul = shl nuw nsw i32 %conv61, 2
  %add = or i32 %mul, 43008
  tail call void @mt7601u_wr(ptr noundef %dev, i32 noundef %add, i32 noundef %or) #7
  %tobool62.not = icmp eq ptr %mac, null
  br i1 %tobool62.not, label %entry.if.end64_crit_edge, label %if.then63

entry.if.end64_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end64

if.then63:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = call ptr @memcpy(ptr %zmac, ptr %mac, i32 6)
  br label %if.end64

if.end64:                                         ; preds = %if.then63, %entry.if.end64_crit_edge
  %mul66 = shl nuw nsw i32 %conv61, 3
  %add67 = or i32 %mul66, 6144
  call void @mt7601u_addr_wr(ptr noundef %dev, i32 noundef %add67, ptr noundef nonnull %zmac) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %zmac) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7601u_addr_wr(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7601u_mac_set_ampdu_factor(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !36) #7
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !46
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i, label %entry.for.body.preheader_crit_edge, label %land.lhs.true.i

entry.for.body.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.preheader

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.for.body.preheader_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.for.body.preheader_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.preheader

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.for.body.preheader_crit_edge, label %if.then.i

land.lhs.true2.i.for.body.preheader_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.preheader

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 696, ptr noundef nonnull @.str.7) #7
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.then.i, %land.lhs.true2.i.for.body.preheader_crit_edge, %land.lhs.true.i.for.body.preheader_crit_edge, %entry.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %min_factor.068 = phi i8 [ %min_factor.1, %for.inc.for.body_crit_edge ], [ 3, %for.body.preheader ]
  %i.067 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr %struct.mt7601u_dev, ptr %dev, i32 0, i32 13, i32 %i.067
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %arrayidx, align 4
  %call = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %for.body.do.end8_crit_edge

for.body.do.end8_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end8

land.lhs.true:                                    ; preds = %for.body
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b57 = load i1, ptr @mt7601u_mac_set_ampdu_factor.__warned, align 1
  br i1 %.b57, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @mt7601u_mac_set_ampdu_factor.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 381, ptr noundef nonnull @.str.5) #7
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %for.body.do.end8_crit_edge
  %tobool10.not = icmp eq ptr %5, null
  br i1 %tobool10.not, label %do.end8.for.inc_crit_edge, label %if.end12

do.end8.for.inc_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end12:                                         ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #9
  %ampdu_factor = getelementptr i8, ptr %5, i32 -233
  %6 = ptrtoint ptr %ampdu_factor to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ampdu_factor, align 1
  %8 = tail call i8 @llvm.umin.i8(i8 %min_factor.068, i8 %7)
  br label %for.inc

for.inc:                                          ; preds = %if.end12, %do.end8.for.inc_crit_edge
  %min_factor.1 = phi i8 [ %8, %if.end12 ], [ %min_factor.068, %do.end8.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.067, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  %call.i58 = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i58, label %for.end.do.end44_crit_edge, label %land.lhs.true.i61

for.end.do.end44_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end44

land.lhs.true.i61:                                ; preds = %for.end
  %call1.i59 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i59)
  %tobool.not.i60 = icmp eq i32 %call1.i59, 0
  br i1 %tobool.not.i60, label %land.lhs.true.i61.do.end44_crit_edge, label %land.lhs.true2.i63

land.lhs.true.i61.do.end44_crit_edge:             ; preds = %land.lhs.true.i61
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end44

land.lhs.true2.i63:                               ; preds = %land.lhs.true.i61
  %.b4.i62 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i62, label %land.lhs.true2.i63.do.end44_crit_edge, label %if.then.i64

land.lhs.true2.i63.do.end44_crit_edge:            ; preds = %land.lhs.true2.i63
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end44

if.then.i64:                                      ; preds = %land.lhs.true2.i63
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.8) #7
  br label %do.end44

do.end44:                                         ; preds = %if.then.i64, %land.lhs.true2.i63.do.end44_crit_edge, %land.lhs.true.i61.do.end44_crit_edge, %for.end.do.end44_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !47
  %9 = tail call i32 @llvm.read_register.i32(metadata !36) #7
  %and.i.i.i.i.i65 = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i65 to ptr
  %preempt_count.i.i.i.i66 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i66 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i66, align 4
  %sub.i.i.i = add i32 %12, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i66, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  %conv46 = zext i8 %min_factor.1 to i32
  %shl = shl nuw nsw i32 %conv46, 12
  %and47 = and i32 %shl, 12288
  %or = or i32 %and47, 659455
  tail call void @mt7601u_wr(ptr noundef %dev, i32 noundef 4120, i32 noundef %or) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt76_mac_process_rx(ptr noundef %dev, ptr nocapture noundef %skb, ptr nocapture noundef readonly %data, ptr noundef %rxi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ctl1 = getelementptr inbounds %struct.mt7601u_rxwi, ptr %rxi, i32 0, i32 1
  %0 = ptrtoint ptr %ctl1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ctl1, align 4
  %rate2 = getelementptr inbounds %struct.mt7601u_rxwi, ptr %rxi, i32 0, i32 3
  %2 = ptrtoint ptr %rate2 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %rate2, align 2
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %5 = and i32 %1, 65295
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %shr = lshr exact i32 %6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 655360, i32 %6)
  %cmp = icmp ult i32 %6, 655360
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %rxi to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rxi, align 4
  %and15 = and i32 %8, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool.not = icmp eq i32 %and15, 0
  br i1 %tobool.not, label %if.end.if.end25_crit_edge, label %if.then16

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %flag = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %9 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flag, align 8
  %or24 = or i32 %10, 10485786
  store i32 %or24, ptr %flag, align 8
  br label %if.end25

if.end25:                                         ; preds = %if.then16, %if.end.if.end25_crit_edge
  %11 = ptrtoint ptr %rxi to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rxi, align 4
  %and27 = and i32 %12, 14336
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end25.if.end32_crit_edge, label %if.then29

if.end25.if.end32_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  %flag30 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %13 = ptrtoint ptr %flag30 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flag30, align 8
  %and31 = and i32 %14, -17
  store i32 %and31, ptr %flag30, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %if.end25.if.end32_crit_edge
  %chains = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 39
  %15 = ptrtoint ptr %chains to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %chains, align 1
  %call33 = tail call i32 @mt7601u_phy_get_rssi(ptr noundef %dev, ptr noundef %rxi, i16 noundef zeroext %4) #7
  %conv = trunc i32 %call33 to i8
  %signal = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 38
  %16 = ptrtoint ptr %signal to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv, ptr %signal, align 2
  %chain_signal = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 40
  %17 = ptrtoint ptr %chain_signal to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv, ptr %chain_signal, align 8
  %chandef = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 5
  %18 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %chandef, align 8
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %center_freq, align 4
  %conv34 = trunc i32 %21 to i16
  %freq = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %22 = ptrtoint ptr %freq to i32
  call void @__asan_load2_noabort(i32 %22)
  %bf.load = load i16, ptr %freq, align 4
  %bf.shl = shl i16 %conv34, 3
  %bf.clear = and i16 %bf.load, 7
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, ptr %freq, align 4
  %23 = load ptr, ptr %chandef, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %conv37 = trunc i32 %25 to i8
  %band38 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 36
  %26 = ptrtoint ptr %band38 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv37, ptr %band38, align 4
  %conv.i = zext i16 %4 to i32
  %27 = trunc i16 %4 to i8
  %conv13.i = and i8 %27, 127
  %shr32.i = lshr i32 %conv.i, 14
  %28 = zext i32 %shr32.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %shr32.i, label %entry.unreachabledefault.i [
    i32 1, label %sw.bb.i
    i32 0, label %sw.bb62.i
    i32 3, label %sw.bb109.i
    i32 2, label %if.end32.sw.bb114.i_crit_edge
  ]

if.end32.sw.bb114.i_crit_edge:                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb114.i

sw.bb.i:                                          ; preds = %if.end32
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %conv13.i)
  %cmp.i = icmp ugt i8 %conv13.i, 7
  br i1 %cmp.i, label %do.end44.i, label %sw.bb.i.if.end.i_crit_edge, !prof !48

sw.bb.i.if.end.i_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

do.end44.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 403, i32 noundef 9, ptr noundef null) #7
  br label %if.end.i

if.end.i:                                         ; preds = %do.end44.i, %sw.bb.i.if.end.i_crit_edge
  %spec.select.i = phi i8 [ 0, %do.end44.i ], [ %conv13.i, %sw.bb.i.if.end.i_crit_edge ]
  %narrow.i = add nuw nsw i8 %spec.select.i, 4
  %rate_idx.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 33
  %29 = ptrtoint ptr %rate_idx.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %narrow.i, ptr %rate_idx.i, align 1
  br label %mt76_mac_process_rate.exit

sw.bb62.i:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %conv13.i)
  %cmp64.i = icmp ugt i8 %conv13.i, 7
  br i1 %cmp64.i, label %if.then66.i, label %sw.bb62.i.if.end71.i_crit_edge

sw.bb62.i.if.end71.i_crit_edge:                   ; preds = %sw.bb62.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end71.i

if.then66.i:                                      ; preds = %sw.bb62.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = add nsw i8 %conv13.i, -8
  %enc_flags.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 30
  %30 = ptrtoint ptr %enc_flags.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %enc_flags.i, align 2
  %32 = or i8 %31, 1
  store i8 %32, ptr %enc_flags.i, align 2
  br label %if.end71.i

if.end71.i:                                       ; preds = %if.then66.i, %sw.bb62.i.if.end71.i_crit_edge
  %idx.1.i = phi i8 [ %sub.i, %if.then66.i ], [ %conv13.i, %sw.bb62.i.if.end71.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %idx.1.i)
  %cmp74.i = icmp ugt i8 %idx.1.i, 3
  br i1 %cmp74.i, label %do.end91.i, label %if.end71.i.if.end97.i_crit_edge, !prof !48

if.end71.i.if.end97.i_crit_edge:                  ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end97.i

do.end91.i:                                       ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 415, i32 noundef 9, ptr noundef null) #7
  br label %if.end97.i

if.end97.i:                                       ; preds = %do.end91.i, %if.end71.i.if.end97.i_crit_edge
  %spec.select190.i = phi i8 [ 0, %do.end91.i ], [ %idx.1.i, %if.end71.i.if.end97.i_crit_edge ]
  %rate_idx108.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 33
  %33 = ptrtoint ptr %rate_idx108.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %spec.select190.i, ptr %rate_idx108.i, align 1
  br label %mt76_mac_process_rate.exit

sw.bb109.i:                                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %enc_flags110.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 30
  %34 = ptrtoint ptr %enc_flags110.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %enc_flags110.i, align 2
  %36 = or i8 %35, 8
  store i8 %36, ptr %enc_flags110.i, align 2
  br label %sw.bb114.i

sw.bb114.i:                                       ; preds = %sw.bb109.i, %if.end32.sw.bb114.i_crit_edge
  %encoding.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 31
  %37 = ptrtoint ptr %encoding.i to i32
  call void @__asan_loadN_noabort(i32 %37, i32 2)
  %bf.load.i = load i16, ptr %encoding.i, align 1
  %bf.clear.i = and i16 %bf.load.i, 16383
  %bf.set.i = or i16 %bf.clear.i, 16384
  store i16 %bf.set.i, ptr %encoding.i, align 1
  %rate_idx115.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 33
  %38 = ptrtoint ptr %rate_idx115.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv13.i, ptr %rate_idx115.i, align 1
  %and143.i = and i32 %conv.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and143.i)
  %tobool144.not.i = icmp eq i32 %and143.i, 0
  br i1 %tobool144.not.i, label %sw.bb114.i.if.end150.i_crit_edge, label %if.then145.i

sw.bb114.i.if.end150.i_crit_edge:                 ; preds = %sw.bb114.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end150.i

entry.unreachabledefault.i:                       ; preds = %if.end32
  unreachable

if.then145.i:                                     ; preds = %sw.bb114.i
  call void @__sanitizer_cov_trace_pc() #9
  %enc_flags146.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 30
  %39 = ptrtoint ptr %enc_flags146.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %enc_flags146.i, align 2
  %41 = or i8 %40, 4
  store i8 %41, ptr %enc_flags146.i, align 2
  br label %if.end150.i

if.end150.i:                                      ; preds = %if.then145.i, %sw.bb114.i.if.end150.i_crit_edge
  %and152.i = and i32 %conv.i, 1536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and152.i)
  %tobool153.not.i = icmp eq i32 %and152.i, 0
  br i1 %tobool153.not.i, label %if.end150.i.if.end159.i_crit_edge, label %if.then154.i

if.end150.i.if.end159.i_crit_edge:                ; preds = %if.end150.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end159.i

if.then154.i:                                     ; preds = %if.end150.i
  call void @__sanitizer_cov_trace_pc() #9
  %enc_flags155.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 30
  %42 = ptrtoint ptr %enc_flags155.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %enc_flags155.i, align 2
  %44 = or i8 %43, 16
  store i8 %44, ptr %enc_flags155.i, align 2
  br label %if.end159.i

if.end159.i:                                      ; preds = %if.then154.i, %if.end150.i.if.end159.i_crit_edge
  %and161.i = and i32 %conv.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and161.i)
  %tobool162.not.i = icmp eq i32 %and161.i, 0
  br i1 %tobool162.not.i, label %if.end159.i.mt76_mac_process_rate.exit_crit_edge, label %if.then163.i

if.end159.i.mt76_mac_process_rate.exit_crit_edge: ; preds = %if.end159.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt76_mac_process_rate.exit

if.then163.i:                                     ; preds = %if.end159.i
  call void @__sanitizer_cov_trace_pc() #9
  %bf.clear165.i = and i16 %bf.set.i, 18431
  %bf.set166.i = or i16 %bf.clear165.i, 6144
  %45 = ptrtoint ptr %encoding.i to i32
  call void @__asan_storeN_noabort(i32 %45, i32 2)
  store i16 %bf.set166.i, ptr %encoding.i, align 1
  br label %mt76_mac_process_rate.exit

mt76_mac_process_rate.exit:                       ; preds = %if.then163.i, %if.end159.i.mt76_mac_process_rate.exit_crit_edge, %if.end97.i, %if.end.i
  %con_mon_lock = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 37
  tail call void @_raw_spin_lock_bh(ptr noundef %con_mon_lock) #7
  %46 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %data, align 2
  %48 = and i16 %47, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %48)
  %cmp.i.i = icmp eq i16 %48, -32768
  br i1 %cmp.i.i, label %mt7601u_rx_is_our_beacon.exit, label %mt76_mac_process_rate.exit.if.else_crit_edge

mt76_mac_process_rate.exit.if.else_crit_edge:     ; preds = %mt76_mac_process_rate.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

mt7601u_rx_is_our_beacon.exit:                    ; preds = %mt76_mac_process_rate.exit
  %addr2.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %data, i32 0, i32 3
  %ap_bssid.i = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 38
  %49 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %addr2.i, align 4
  %51 = ptrtoint ptr %ap_bssid.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %ap_bssid.i, align 4
  %xor.i.i = xor i32 %52, %50
  %add.ptr.i.i = getelementptr %struct.ieee80211_hdr, ptr %data, i32 0, i32 3, i32 4
  %53 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr %struct.mt7601u_dev, ptr %dev, i32 0, i32 38, i32 4
  %55 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %add.ptr1.i.i, align 2
  %xor37.i.i = xor i16 %56, %54
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i4.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i4.i.not, label %if.then41, label %mt7601u_rx_is_our_beacon.exit.if.else_crit_edge

mt7601u_rx_is_our_beacon.exit.if.else_crit_edge:  ; preds = %mt7601u_rx_is_our_beacon.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then41:                                        ; preds = %mt7601u_rx_is_our_beacon.exit
  call void @__sanitizer_cov_trace_pc() #9
  %freq_off.i = getelementptr inbounds %struct.mt7601u_rxwi, ptr %rxi, i32 0, i32 9
  %57 = ptrtoint ptr %freq_off.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %freq_off.i, align 1
  %bcn_freq_off.i = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 39
  %59 = ptrtoint ptr %bcn_freq_off.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %bcn_freq_off.i, align 2
  %60 = lshr i16 %4, 14
  %conv9.i = trunc i16 %60 to i8
  %bcn_phy_mode.i = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 40
  %61 = ptrtoint ptr %bcn_phy_mode.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv9.i, ptr %bcn_phy_mode.i, align 1
  %avg_rssi.i = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 41
  %62 = ptrtoint ptr %avg_rssi.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %avg_rssi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool.not.i.i = icmp eq i32 %63, 0
  %sub.i.i = mul i32 %63, 3
  %.neg.i = mul i32 %call33, -1024
  %add.i.i = add i32 %sub.i.i, %.neg.i
  %shr.i.i = lshr i32 %add.i.i, 2
  %cond.i.i = select i1 %tobool.not.i.i, i32 %.neg.i, i32 %shr.i.i
  %64 = ptrtoint ptr %avg_rssi.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile i32 %cond.i.i, ptr %avg_rssi.i, align 4
  br label %if.end47

if.else:                                          ; preds = %mt7601u_rx_is_our_beacon.exit.if.else_crit_edge, %mt76_mac_process_rate.exit.if.else_crit_edge
  %65 = ptrtoint ptr %rxi to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %rxi, align 4
  %and43 = and i32 %66, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.else.if.end47_crit_edge, label %if.then45

if.else.if.end47_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

if.then45:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %avg_rssi = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 41
  %67 = ptrtoint ptr %avg_rssi to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %avg_rssi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool.not.i = icmp eq i32 %68, 0
  %sub.i83 = mul i32 %68, 3
  %.neg = mul i32 %call33, -1024
  %add.i = add i32 %sub.i83, %.neg
  %shr.i = lshr i32 %add.i, 2
  %cond.i = select i1 %tobool.not.i, i32 %.neg, i32 %shr.i
  %69 = ptrtoint ptr %avg_rssi to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile i32 %cond.i, ptr %avg_rssi, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %if.else.if.end47_crit_edge, %if.then41
  tail call void @_raw_spin_unlock_bh(ptr noundef %con_mon_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %shr, %if.end47 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7601u_phy_get_rssi(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt76_mac_wcid_set_key(ptr noundef %dev, i8 noundef zeroext %idx, ptr noundef readonly %key) local_unnamed_addr #0 align 64 {
entry:
  %key_data = alloca [32 x i8], align 1
  %iv_data = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %key_data) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iv_data) #7
  %0 = getelementptr inbounds [8 x i8], ptr %iv_data, i32 0, i32 3
  %1 = call ptr @memset(ptr %key_data, i32 0, i32 32)
  %tobool.not.i = icmp eq ptr %key, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %keylen.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 7
  %2 = ptrtoint ptr %keylen.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %keylen.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %3)
  %cmp.i = icmp ugt i8 %3, 32
  br i1 %cmp.i, label %if.end.i.cleanup_crit_edge, label %if.end3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i
  %conv.i = zext i8 %3 to i32
  %key4.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 8
  %4 = call ptr @memcpy(ptr %key_data, ptr %key4.i, i32 %conv.i)
  %cipher.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 1
  %5 = ptrtoint ptr %cipher.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cipher.i, align 8
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %6, label %if.end3.i.cleanup_crit_edge [
    i32 1027073, label %if.end3.i.if.end_crit_edge
    i32 1027077, label %sw.bb7.i
    i32 1027074, label %sw.bb8.i
    i32 1027076, label %sw.bb9.i
  ]

if.end3.i.if.end_crit_edge:                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end3.i.cleanup_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb7.i:                                         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

sw.bb8.i:                                         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

sw.bb9.i:                                         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %sw.bb9.i, %sw.bb8.i, %sw.bb7.i, %if.end3.i.if.end_crit_edge, %entry.if.end_crit_edge
  %cmp7 = phi i1 [ false, %entry.if.end_crit_edge ], [ false, %if.end3.i.if.end_crit_edge ], [ false, %sw.bb7.i ], [ true, %sw.bb8.i ], [ true, %sw.bb9.i ]
  %retval.0.i117 = phi i32 [ 0, %entry.if.end_crit_edge ], [ 2, %if.end3.i.if.end_crit_edge ], [ 4, %sw.bb7.i ], [ 6, %sw.bb8.i ], [ 8, %sw.bb9.i ]
  tail call fastcc void @trace_set_key(ptr noundef %dev, i8 noundef zeroext %idx)
  %conv = zext i8 %idx to i32
  %mul = shl nuw nsw i32 %conv, 5
  %add = or i32 %mul, 32768
  call void @mt7601u_wr_copy(ptr noundef %dev, i32 noundef %add, ptr noundef nonnull %key_data, i32 noundef 32) #7
  %8 = ptrtoint ptr %iv_data to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 0, ptr %iv_data, align 8
  br i1 %tobool.not.i, label %if.end.if.end18_crit_edge, label %if.then4

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then4:                                         ; preds = %if.end
  %keyidx = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 5
  %9 = ptrtoint ptr %keyidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %keyidx, align 1
  %shl = shl i8 %10, 6
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %shl, ptr %0, align 1
  br i1 %cmp7, label %if.then9, label %if.then4.if.end18_crit_edge

if.then4.if.end18_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then9:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %iv_data to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %iv_data, align 8
  %14 = or i8 %13, 1
  store i8 %14, ptr %iv_data, align 8
  %15 = or i8 %shl, 32
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %0, align 1
  br label %if.end18

if.end18:                                         ; preds = %if.then9, %if.then4.if.end18_crit_edge, %if.end.if.end18_crit_edge
  %mul20 = shl nuw nsw i32 %conv, 3
  %add21 = or i32 %mul20, 40960
  call void @mt7601u_wr_copy(ptr noundef %dev, i32 noundef %add21, ptr noundef nonnull %iv_data, i32 noundef 8) #7
  %mul24 = shl nuw nsw i32 %conv, 2
  %add25 = or i32 %mul24, 43008
  %call26 = call i32 @mt7601u_rr(ptr noundef %dev, i32 noundef %add25) #7
  %and = and i32 %call26, -1040
  %or75 = or i32 %and, %retval.0.i117
  br i1 %tobool.not.i, label %if.end18.land.end_crit_edge, label %land.rhs

if.end18.land.end_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end

land.rhs:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %flags = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 6
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %flags, align 8
  %19 = lshr i16 %18, 3
  %20 = and i16 %19, 1
  %and79.lobit = zext i16 %20 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end18.land.end_crit_edge
  %21 = phi i32 [ 0, %if.end18.land.end_crit_edge ], [ %and79.lobit, %land.rhs ]
  %or83 = or i32 %or75, %21
  call void @mt7601u_wr(ptr noundef %dev, i32 noundef %add25, i32 noundef %or83) #7
  br label %cleanup

cleanup:                                          ; preds = %land.end, %if.end3.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %land.end ], [ -22, %if.end3.i.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iv_data) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %key_data) #7
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_set_key(ptr noundef %dev, i8 noundef zeroext %val) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_set_key, i32 0, i32 1), ptr blockaddress(@trace_set_key, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !49

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !36) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !50

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !36) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !51
  %call42 = tail call i32 @__traceiter_set_key(ptr noundef null, ptr noundef %dev, i8 noundef zeroext %val) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !52
  %13 = tail call i32 @llvm.read_register.i32(metadata !36) #7
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !36) #7
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !50

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !36) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !53
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_set_key, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_set_key, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_set_key.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_set_key.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 366, ptr noundef nonnull @.str.5) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !54
  %31 = tail call i32 @llvm.read_register.i32(metadata !36) #7
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7601u_wr_copy(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt76_mac_shared_key_setup(ptr noundef %dev, i8 noundef zeroext %vif_idx, i8 noundef zeroext %key_idx, ptr noundef readonly %key) local_unnamed_addr #0 align 64 {
entry:
  %key_data = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %key_data) #7
  %0 = call ptr @memset(ptr %key_data, i32 0, i32 32)
  %tobool.not.i = icmp eq ptr %key, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %keylen.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 7
  %1 = ptrtoint ptr %keylen.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %keylen.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %2)
  %cmp.i = icmp ugt i8 %2, 32
  br i1 %cmp.i, label %if.end.i.cleanup_crit_edge, label %if.end3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i
  %conv.i = zext i8 %2 to i32
  %key4.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 8
  %3 = call ptr @memcpy(ptr %key_data, ptr %key4.i, i32 %conv.i)
  %cipher.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 1
  %4 = ptrtoint ptr %cipher.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cipher.i, align 8
  %switch.tableidx = add i32 %5, -1027073
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %6 = icmp ult i32 %switch.tableidx, 5
  br i1 %6, label %switch.hole_check, label %if.end3.i.cleanup_crit_edge

if.end3.i.cleanup_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

switch.hole_check:                                ; preds = %if.end3.i
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 27, %switch.maskindex
  %7 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %switch.lobit.not = icmp eq i8 %7, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.mt76_mac_shared_key_setup, i32 0, i32 %switch.tableidx
  %8 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.end

if.end:                                           ; preds = %switch.lookup, %entry.if.end_crit_edge
  %retval.0.i91 = phi i32 [ 0, %entry.if.end_crit_edge ], [ %switch.load, %switch.lookup ]
  tail call fastcc void @trace_set_shared_key(ptr noundef %dev, i8 noundef zeroext %vif_idx, i8 noundef zeroext %key_idx)
  %conv = zext i8 %vif_idx to i32
  %and = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  %mul8 = shl nuw nsw i32 %conv, 2
  br i1 %tobool1.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %mul = and i32 %mul8, 28
  %conv4 = zext i8 %key_idx to i32
  %add = add nuw nsw i32 %mul, %conv4
  br label %cond.end26

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv9 = zext i8 %key_idx to i32
  %add10 = add nuw nsw i32 %mul8, %conv9
  br label %cond.end26

cond.end26:                                       ; preds = %cond.false, %cond.true
  %add10.sink = phi i32 [ %add10, %cond.false ], [ %add, %cond.true ]
  %.sink98 = phi i32 [ 44032, %cond.false ], [ 46080, %cond.true ]
  %.sink97 = phi i32 [ 508, %cond.false ], [ 12, %cond.true ]
  %.sink = phi i32 [ 45056, %cond.false ], [ 46064, %cond.true ]
  %conv29.pre-phi = phi i32 [ %conv9, %cond.false ], [ %conv4, %cond.true ]
  %mul11 = shl nuw nsw i32 %add10.sink, 5
  %add12 = add nuw nsw i32 %mul11, %.sink98
  call void @mt7601u_wr_copy(ptr noundef %dev, i32 noundef %add12, ptr noundef nonnull %key_data, i32 noundef 32) #7
  %9 = shl nuw nsw i32 %conv, 1
  %shl24 = and i32 %9, %.sink97
  %add25 = or i32 %shl24, %.sink
  %call.i = call i32 @mt7601u_rr(ptr noundef %dev, i32 noundef %add25) #7
  %mul32 = and i32 %mul8, 4
  %add33 = add nuw nsw i32 %mul32, %conv29.pre-phi
  %mul34 = shl nuw nsw i32 %add33, 2
  %shl35 = shl i32 15, %mul34
  %neg = xor i32 %shl35, -1
  %and36 = and i32 %call.i, %neg
  %shl43 = shl i32 %retval.0.i91, %mul34
  %or = or i32 %and36, %shl43
  call void @mt7601u_wr(ptr noundef %dev, i32 noundef %add25, i32 noundef %or) #7
  br label %cleanup

cleanup:                                          ; preds = %cond.end26, %switch.hole_check.cleanup_crit_edge, %if.end3.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %cond.end26 ], [ -22, %if.end3.i.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ], [ -22, %switch.hole_check.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %key_data) #7
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_set_shared_key(ptr noundef %dev, i8 noundef zeroext %vid, i8 noundef zeroext %key) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_set_shared_key, i32 0, i32 1), ptr blockaddress(@trace_set_shared_key, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !49

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !36) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !50

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !36) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !55
  %call42 = tail call i32 @__traceiter_set_shared_key(ptr noundef null, ptr noundef %dev, i8 noundef zeroext %vid, i8 noundef zeroext %key) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !56
  %13 = tail call i32 @llvm.read_register.i32(metadata !36) #7
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !36) #7
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !50

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !36) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !53
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_set_shared_key, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_set_shared_key, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_set_shared_key.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_set_shared_key.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 383, ptr noundef nonnull @.str.5) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !54
  %31 = tail call i32 @llvm.read_register.i32(metadata !36) #7
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_tx_status_ext(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7601u_rmw(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_set_key(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_set_shared_key(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !13, !15, !16, !17, !19, !20, !22, !23, !24, !25, !26, !28, !29, !30, !32, !33, !35}
!llvm.named.register.sp = !{!36}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/mediatek/mt7601u/mac.c", i32 17, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mt7601u_set_macaddr._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @mt7601u_set_macaddr._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/mediatek/mt7601u/mac.c", i32 183, i32 10}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = distinct !{null, !12, !"__warned", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/mediatek/mt7601u/mac.c", i32 381, i32 10}
!13 = distinct !{null, !14, !"__warned", i1 false, i1 false}
!14 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!15 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!17 = distinct !{null, !18, !"__warned", i1 false, i1 false}
!18 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!19 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/mediatek/mt7601u/mac.c", i32 294, i32 2}
!22 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @mt7601u_check_mac_err._entry, !21, !"_entry", i1 false, i1 false}
!25 = !{ptr @mt7601u_check_mac_err._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!26 = distinct !{null, !27, !"__already_done", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/mediatek/mt7601u/trace.h", i32 363, i32 1}
!28 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!29 = distinct !{null, !27, !"__warned", i1 false, i1 false}
!30 = distinct !{null, !31, !"__already_done", i1 false, i1 false}
!31 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!32 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!33 = distinct !{null, !34, !"__already_done", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/mediatek/mt7601u/trace.h", i32 368, i32 1}
!35 = distinct !{null, !34, !"__warned", i1 false, i1 false}
!36 = !{!"sp"}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!46 = !{i64 2149341223}
!47 = !{i64 2149341489}
!48 = !{!"branch_weights", i32 1, i32 2000}
!49 = !{i64 2148745254, i64 2148745259, i64 2148745272, i64 2148745316, i64 2148745350, i64 2148745371}
!50 = !{!"branch_weights", i32 2000, i32 1}
!51 = !{i64 2158051059}
!52 = !{i64 2158051252}
!53 = !{i64 2149349782}
!54 = !{i64 2149350818}
!55 = !{i64 2158067061}
!56 = !{i64 2158067278}
