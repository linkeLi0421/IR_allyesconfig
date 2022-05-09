; ModuleID = '/llk/IR_all_yes/drivers/staging/wfx/queue.c_pt.bc'
source_filename = "../drivers/staging/wfx/queue.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.98 }
%union.anon.98 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.wfx_dev = type { %struct.wfx_platform_data, ptr, ptr, [2 x ptr], [2 x %struct.mac_address], ptr, ptr, i8, %struct.completion, %struct.hif_ind_startup, %struct.wfx_hif, %struct.delayed_work, i8, i8, %struct.mutex, %struct.wfx_hif_cmd, %struct.sk_buff_head, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic_t, i32, %struct.hif_rx_stats, %struct.mutex, %struct.hif_tx_power_loop_info, %struct.mutex, i32 }
%struct.wfx_platform_data = type { ptr, ptr, ptr, i8 }
%struct.mac_address = type { [6 x i8] }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.hif_ind_startup = type { i32, i16, [14 x i8], [8 x i8], i16, i16, i8, i8, [2 x [6 x i8]], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8], i16, i32, [128 x i8] }
%struct.wfx_hif = type { %struct.work_struct, %struct.completion, %struct.wait_queue_head, %struct.atomic_t, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.wfx_hif_cmd = type { %struct.mutex, %struct.completion, %struct.completion, ptr, ptr, i32, i32 }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.hif_rx_stats = type <{ i32, i32, i32, i32, [22 x i32], [22 x i16], [22 x i16], [22 x i16], [22 x i16], i32, i32, i8, i8 }>
%struct.hif_tx_power_loop_info = type { i16, i16, i16, i16, i16, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.hif_msg = type { i16, i8, i8, [0 x i8] }
%struct.wfx_vif = type { ptr, ptr, ptr, i32, i32, i8, i8, %struct.delayed_work, [4 x %struct.wfx_queue], %struct.tx_policy_cache, %struct.work_struct, %struct.work_struct, i32, %struct.mutex, %struct.work_struct, %struct.completion, i32, i8, ptr, %struct.completion }
%struct.wfx_queue = type { %struct.sk_buff_head, %struct.sk_buff_head, %struct.atomic_t, i32 }
%struct.tx_policy_cache = type { [15 x %struct.tx_policy], %struct.list_head, %struct.list_head, %struct.spinlock }
%struct.tx_policy = type { %struct.list_head, i32, [12 x i8], i8 }
%struct.ieee80211_vif = type { i32, %struct.ieee80211_bss_conf, [6 x i8], i8, i8, i8, i8, [4 x i8], ptr, ptr, i32, i32, ptr, i8, i8, [4 x i8], i8, i8, ptr, [0 x i8] }
%struct.ieee80211_bss_conf = type { ptr, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i16, i16, i64, i32, i8, i32, ptr, [6 x i32], i16, i32, i32, i32, i32, %struct.cfg80211_chan_def, %struct.ieee80211_mu_group_data, [4 x i32], i32, i8, i8, i8, [32 x i8], i32, i8, i32, i32, %struct.ieee80211_p2p_noa_attr, i8, i16, i8, i8, ptr, i8, [6 x i8], i8, i8, i8, i8, %struct.anon.125, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.ieee80211_fils_discovery, i32, i8, %struct.cfg80211_bitrate_mask, i32, [8 x %struct.ieee80211_tx_pwr_env], i8, i8 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.ieee80211_mu_group_data = type { [8 x i8], [16 x i8] }
%struct.ieee80211_p2p_noa_attr = type { i8, i8, [4 x %struct.ieee80211_p2p_noa_desc] }
%struct.ieee80211_p2p_noa_desc = type <{ i8, i32, i32, i32 }>
%struct.anon.125 = type { i32, i16 }
%struct.ieee80211_he_obss_pd = type { i8, i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cfg80211_he_bss_color = type { i8, i8, i8 }
%struct.ieee80211_fils_discovery = type { i32, i32 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.126] }
%struct.anon.126 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_tx_pwr_env = type { i8, [8 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/staging/wfx/queue.c\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"inconsistent tx_lock value\00", [37 x i8] zeroinitializer }, align 32
@wfx_tx_flush._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str, i32 46, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"cannot flush tx buffers (%d still busy)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wfx_tx_flush\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@wfx_tx_flush._entry_ptr = internal global ptr @wfx_tx_flush._entry, section ".printk_index", align 4
@.str.6 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s should only be used to recover a frozen device\00", [46 x i8] zeroinitializer }, align 32
@__func__.wfx_pending_drop = private unnamed_addr constant [17 x i8] c"wfx_pending_drop\00", align 1
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"cannot find packet in pending queue\00", [60 x i8] zeroinitializer }, align 32
@wfx_pending_dump_old_frames._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str, i32 194, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"frames stuck in firmware since %dms or more:\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"wfx_pending_dump_old_frames\00", [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@wfx_pending_dump_old_frames._entry_ptr = internal global ptr @wfx_pending_dump_old_frames._entry, section ".printk_index", align 4
@wfx_pending_dump_old_frames._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.9, ptr @.str, i32 199, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"   id %08x sent %lldms ago\0A\00", [36 x i8] zeroinitializer }, align 32
@wfx_pending_dump_old_frames._entry_ptr.13 = internal global ptr @wfx_pending_dump_old_frames._entry.11, section ".printk_index", align 4
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@wdev_to_wvif.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, i8 0, i8 24, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"wfx\00", [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wdev_to_wvif\00", [19 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/staging/wfx/wfx.h\00", [38 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"requesting non-existent vif: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@__tracepoint_queues_stats = external dso_local global %struct.tracepoint, align 4
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/staging/wfx/traces.h\00", [35 x i8] zeroinitializer }, align 32
@trace_queues_stats.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.20 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 26, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 45, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 133, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 174, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 193, i32 5 }
@___asan_gen_.61 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.65 = private constant [31 x i8] c"../drivers/staging/wfx/queue.c\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 197, i32 4 }
@___asan_gen_.67 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.71 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 1984, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant [29 x i8] c"../drivers/staging/wfx/wfx.h\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 98, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant [32 x i8] c"../drivers/staging/wfx/traces.h\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 442, i32 1 }
@___asan_gen_.91 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.92 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 108, i32 2 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @wfx_pending_dump_old_frames._entry, ptr @wfx_pending_dump_old_frames._entry.11, ptr @wfx_pending_dump_old_frames._entry_ptr, ptr @wfx_pending_dump_old_frames._entry_ptr.13, ptr @wfx_tx_flush._entry, ptr @wfx_tx_flush._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @skb_queue_head_init.__key, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wfx_tx_flush._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wfx_pending_dump_old_frames._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wfx_pending_dump_old_frames._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wfx_tx_lock(ptr noundef %wdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_lock = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 18
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_lock, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %tx_lock, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_lock, ptr %tx_lock, i32 1, ptr elementtype(i32) %tx_lock) #10, !srcloc !52
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wfx_tx_unlock(ptr noundef %wdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_lock1 = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 18
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_lock1, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !53
  tail call void @llvm.prefetch.p0(ptr %tx_lock1, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_lock1, ptr %tx_lock1, i32 1, ptr elementtype(i32) %tx_lock1) #10, !srcloc !54
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp = icmp slt i32 %asmresult.i.i.i.i, 0
  br i1 %cmp, label %if.end.thread, label %if.end, !prof !56

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 26, i32 noundef 9, ptr noundef nonnull @.str.1) #10
  br label %if.end22

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %tobool20.not = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool20.not, label %if.then21, label %if.end.if.end22_crit_edge

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then21:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @wfx_bh_request_tx(ptr noundef %wdev) #10
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end.if.end22_crit_edge, %if.end.thread
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wfx_bh_request_tx(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wfx_tx_flush(ptr noundef %wdev) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_frozen = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 13
  %0 = ptrtoint ptr %chip_frozen to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %chip_frozen, align 1, !range !57
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup56_crit_edge

entry.cleanup56_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup56

if.end:                                           ; preds = %entry
  %tx_lock.i = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 18
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_lock.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %tx_lock.i, i32 1, i32 3, i32 1) #10
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_lock.i, ptr %tx_lock.i, i32 1, ptr elementtype(i32) %tx_lock.i) #10, !srcloc !52
  %hif_cmd = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %hif_cmd, i32 noundef 0) #10
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 43) #10
  %tx_buffers_used = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 10, i32 6
  %3 = ptrtoint ptr %tx_buffers_used to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tx_buffers_used, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool4.not = icmp eq i32 %4, 0
  br i1 %tobool4.not, label %if.end.if.end53_crit_edge, label %if.then13

if.end.if.end53_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

if.then13:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #10
  %5 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #10
  %tx_buffers_empty = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 10, i32 2
  %call1786 = call i32 @prepare_to_wait_event(ptr noundef %tx_buffers_empty, ptr noundef nonnull %__wq_entry, i32 noundef 2) #10
  %6 = ptrtoint ptr %tx_buffers_used to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_buffers_used, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool21.not87 = icmp eq i32 %7, 0
  br i1 %tobool21.not87, label %if.end43.thread, label %if.then13.cleanup_crit_edge

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  br label %cleanup

if.end43.thread:                                  ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  call void @finish_wait(ptr noundef %tx_buffers_empty, ptr noundef nonnull %__wq_entry) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br label %if.end53

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then13.cleanup_crit_edge
  %__ret14.188 = phi i32 [ %__ret14.1, %cleanup.cleanup_crit_edge ], [ 300, %if.then13.cleanup_crit_edge ]
  %call39 = call i32 @schedule_timeout(i32 noundef %__ret14.188) #10
  %call17 = call i32 @prepare_to_wait_event(ptr noundef %tx_buffers_empty, ptr noundef nonnull %__wq_entry, i32 noundef 2) #10
  %8 = ptrtoint ptr %tx_buffers_used to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_buffers_used, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool21.not = icmp eq i32 %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool26.not = icmp eq i32 %call39, 0
  %10 = select i1 %tobool21.not, i1 %tobool26.not, i1 false
  %__ret14.1 = select i1 %10, i32 1, i32 %call39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret14.1)
  %tobool32.not = icmp eq i32 %__ret14.1, 0
  %11 = select i1 %tobool21.not, i1 true, i1 %tobool32.not
  br i1 %11, label %if.end43, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end43:                                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret14.1)
  %phi.cmp = icmp eq i32 %__ret14.1, 0
  call void @finish_wait(ptr noundef %tx_buffers_empty, ptr noundef nonnull %__wq_entry) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br i1 %phi.cmp, label %do.end49, label %if.end43.if.end53_crit_edge

if.end43.if.end53_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

do.end49:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 1
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %14 = ptrtoint ptr %tx_buffers_used to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tx_buffers_used, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str.2, i32 noundef %15) #13
  call void @wfx_pending_dump_old_frames(ptr noundef %wdev, i32 noundef 3000)
  %16 = ptrtoint ptr %chip_frozen to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %chip_frozen, align 1
  br label %if.end53

if.end53:                                         ; preds = %do.end49, %if.end43.if.end53_crit_edge, %if.end43.thread, %if.end.if.end53_crit_edge
  call void @mutex_unlock(ptr noundef %hif_cmd) #10
  %call.i.i.i79 = call zeroext i1 @__kasan_check_write(ptr noundef %tx_lock.i, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !53
  call void @llvm.prefetch.p0(ptr %tx_lock.i, i32 1, i32 3, i32 1) #10
  %17 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_lock.i, ptr %tx_lock.i, i32 1, ptr elementtype(i32) %tx_lock.i) #10, !srcloc !54
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %17, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i = icmp slt i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i, label %if.end.thread.i, label %if.end.i, !prof !56

if.end.thread.i:                                  ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 26, i32 noundef 9, ptr noundef nonnull @.str.1) #10
  br label %cleanup56

if.end.i:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool20.not.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool20.not.i, label %if.then21.i, label %if.end.i.cleanup56_crit_edge

if.end.i.cleanup56_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup56

if.then21.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @wfx_bh_request_tx(ptr noundef %wdev) #10
  br label %cleanup56

cleanup56:                                        ; preds = %if.then21.i, %if.end.i.cleanup56_crit_edge, %if.end.thread.i, %entry.cleanup56_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

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
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wfx_pending_dump_old_frames(ptr noundef %wdev, i32 noundef %limit_ms) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get() #10
  %tx_pending = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 16
  %lock = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 16, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  %0 = ptrtoint ptr %tx_pending to i32
  call void @__asan_load4_noabort(i32 %0)
  %skb.032 = load ptr, ptr %tx_pending, align 4
  %cmp.not33 = icmp eq ptr %skb.032, %tx_pending
  br i1 %cmp.not33, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %conv = zext i32 %limit_ms to i64
  %mul.i = mul nuw nsw i64 %conv, 1000000
  %dev = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %skb.035 = phi ptr [ %skb.032, %for.body.lr.ph ], [ %skb.0, %for.inc.for.body_crit_edge ]
  %first.0.off034 = phi i1 [ true, %for.body.lr.ph ], [ %first.2.off0, %for.inc.for.body_crit_edge ]
  %tobool.not.i = icmp eq ptr %skb.035, null
  %rate_driver_data.i = getelementptr inbounds %struct.sk_buff, ptr %skb.035, i32 0, i32 3, i32 24
  %retval.0.i = select i1 %tobool.not.i, ptr null, ptr %rate_driver_data.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb.035, i32 0, i32 19
  %1 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data.i, align 4
  %body.i = getelementptr inbounds %struct.hif_msg, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %retval.0.i, align 8
  %add.i = add i64 %4, %mul.i
  call void @__sanitizer_cov_trace_cmp8(i64 %call, i64 %add.i)
  %cmp3.i.i = icmp sgt i64 %call, %add.i
  br i1 %cmp3.i.i, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then:                                          ; preds = %for.body
  br i1 %first.0.off034, label %do.end, label %if.then.do.end10_crit_edge

if.then.do.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %6, ptr noundef nonnull @.str.8, i32 noundef %limit_ms) #13
  br label %do.end10

do.end10:                                         ; preds = %do.end, %if.then.do.end10_crit_edge
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %9 = ptrtoint ptr %body.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %body.i, align 1
  %11 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %retval.0.i, align 8
  %sub.i = sub i64 %call, %12
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i)
  %cmp8.i.i.i = icmp slt i64 %sub.i, 0
  %13 = tail call i64 @llvm.abs.i64(i64 %sub.i, i1 false) #10
  %14 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %13) #14, !srcloc !58
  %15 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %13, i64 %14, i32 0) #14, !srcloc !59
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %15, 0
  %div181.i1.i.i = lshr i64 %asmresult10.i.i.i.i, 18
  %sub210.i.i.i = sub nsw i64 0, %div181.i1.i.i
  %spec.select.i.i.i = select i1 %cmp8.i.i.i, i64 %sub210.i.i.i, i64 %div181.i1.i.i
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %8, ptr noundef nonnull @.str.12, i32 noundef %10, i64 noundef %spec.select.i.i.i) #13
  br label %for.inc

for.inc:                                          ; preds = %do.end10, %for.body.for.inc_crit_edge
  %first.2.off0 = phi i1 [ false, %do.end10 ], [ %first.0.off034, %for.body.for.inc_crit_edge ]
  %16 = ptrtoint ptr %skb.035 to i32
  call void @__asan_load4_noabort(i32 %16)
  %skb.0 = load ptr, ptr %skb.035, align 4
  %cmp.not = icmp eq ptr %skb.0, %tx_pending
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wfx_tx_lock_flush(ptr noundef %wdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_lock.i = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 18
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_lock.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %tx_lock.i, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_lock.i, ptr %tx_lock.i, i32 1, ptr elementtype(i32) %tx_lock.i) #10, !srcloc !52
  tail call void @wfx_tx_flush(ptr noundef %wdev)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wfx_tx_queues_init(ptr noundef %wvif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.wfx_vif, ptr %wvif, i32 0, i32 8, i32 0
  %lock.i = getelementptr %struct.wfx_vif, ptr %wvif, i32 0, i32 8, i32 0, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #10
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %arrayidx, ptr %arrayidx, align 4
  %prev.i.i = getelementptr %struct.wfx_vif, ptr %wvif, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0, i32 1
  %1 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %arrayidx, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr %struct.wfx_vif, ptr %wvif, i32 0, i32 8, i32 0, i32 0, i32 1
  %2 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %qlen.i.i, align 4
  %cab = getelementptr %struct.wfx_vif, ptr %wvif, i32 0, i32 8, i32 0, i32 1
  %lock.i13 = getelementptr %struct.wfx_vif, ptr %wvif, i32 0, i32 8, i32 0, i32 1, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i13, ptr noundef nonnull @.str.14, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #10
  %3 = ptrtoint ptr %cab to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %cab, ptr %cab, align 4
  %prev.i.i14 = getelementptr %struct.wfx_vif, ptr %wvif, i32 0, i32 8, i32 0, i32 1, i32 0, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i14 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %cab, ptr %prev.i.i14, align 4
  %qlen.i.i15 = getelementptr %struct.wfx_vif, ptr %wvif, i32 0, i32 8, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %qlen.i.i15 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %qlen.i.i15, align 4
  %priority = getelementptr %struct.wfx_vif, ptr %wvif, i32 0, i32 8, i32 0, i32 3
  %6 = ptrtoint ptr %priority to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %priority, align 4
  %arrayidx.1 = getelementptr %struct.wfx_vif, ptr %wvif, i32 0, i32 8, i32 1
  %lock.i.1 = getelementptr %struct.wfx_vif, ptr %wvif, i32 0, i32 8, i32 1, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.1, ptr noundef nonnull @.str.14, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #10
  %7 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %arrayidx.1, ptr %arrayidx.1, align 4
  %prev.i.i.1 = getelementptr %struct.wfx_vif, ptr %wvif, i32 0, i32 8, i32 1, i32 0, i32 0, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %arrayidx.1, ptr %prev.i.i.1, align 4
  %qlen.i.i.1 = getelementptr %struct.wfx_vif, ptr %wvif, i32 0, i32 8, i32 1, i32 0, i32 1
  %9 = ptrtoint ptr %qlen.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %qlen.i.i.1, align 4
  %cab.1 = getelementptr %struct.wfx_vif, ptr %wvif, i32 0, i32 8, i32 1, i32 1
  %lock.i13.1 = getelementptr %struct.wfx_vif, ptr %wvif, i32 0, i32 8, i32 1, i32 1, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i13.1, ptr noundef nonnull @.str.14, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #10
  %10 = ptrtoint ptr %cab.1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %cab.1, ptr %cab.1, align 4
  %prev.i.i14.1 = getelementptr %struct.wfx_vif, ptr %wvif, i32 0, i32 8, i32 1, i32 1, i32 0, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i14.1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %cab.1, ptr %prev.i.i14.1, align 4
  %qlen.i.i15.1 = getelementptr %struct.wfx_vif, ptr %wvif, i32 0, i32 8, i32 1, i32 1, i32 1
  %12 = ptrtoint ptr %qlen.i.i15.1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %qlen.i.i15.1, align 4
  %priority.1 = getelementptr %struct.wfx_vif, ptr %wvif, i32 0, i32 8, i32 1, i32 3
  %13 = ptrtoint ptr %priority.1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %priority.1, align 4
  %arrayidx.2 = getelementptr %struct.wfx_vif, ptr %wvif, i32 0, i32 8, i32 2
  %lock.i.2 = getelementptr %struct.wfx_vif, ptr %wvif, i32 0, i32 8, i32 2, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.2, ptr noundef nonnull @.str.14, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #10
  %14 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %arrayidx.2, ptr %arrayidx.2, align 4
  %prev.i.i.2 = getelementptr %struct.wfx_vif, ptr %wvif, i32 0, i32 8, i32 2, i32 0, i32 0, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i.2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %arrayidx.2, ptr %prev.i.i.2, align 4
  %qlen.i.i.2 = getelementptr %struct.wfx_vif, ptr %wvif, i32 0, i32 8, i32 2, i32 0, i32 1
  %16 = ptrtoint ptr %qlen.i.i.2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %qlen.i.i.2, align 4
  %cab.2 = getelementptr %struct.wfx_vif, ptr %wvif, i32 0, i32 8, i32 2, i32 1
  %lock.i13.2 = getelementptr %struct.wfx_vif, ptr %wvif, i32 0, i32 8, i32 2, i32 1, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i13.2, ptr noundef nonnull @.str.14, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #10
  %17 = ptrtoint ptr %cab.2 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %cab.2, ptr %cab.2, align 4
  %prev.i.i14.2 = getelementptr %struct.wfx_vif, ptr %wvif, i32 0, i32 8, i32 2, i32 1, i32 0, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i14.2 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %cab.2, ptr %prev.i.i14.2, align 4
  %qlen.i.i15.2 = getelementptr %struct.wfx_vif, ptr %wvif, i32 0, i32 8, i32 2, i32 1, i32 1
  %19 = ptrtoint ptr %qlen.i.i15.2 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %qlen.i.i15.2, align 4
  %priority.2 = getelementptr %struct.wfx_vif, ptr %wvif, i32 0, i32 8, i32 2, i32 3
  %20 = ptrtoint ptr %priority.2 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 64, ptr %priority.2, align 4
  %arrayidx.3 = getelementptr %struct.wfx_vif, ptr %wvif, i32 0, i32 8, i32 3
  %lock.i.3 = getelementptr %struct.wfx_vif, ptr %wvif, i32 0, i32 8, i32 3, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.3, ptr noundef nonnull @.str.14, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #10
  %21 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %arrayidx.3, ptr %arrayidx.3, align 4
  %prev.i.i.3 = getelementptr %struct.wfx_vif, ptr %wvif, i32 0, i32 8, i32 3, i32 0, i32 0, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i.3 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %arrayidx.3, ptr %prev.i.i.3, align 4
  %qlen.i.i.3 = getelementptr %struct.wfx_vif, ptr %wvif, i32 0, i32 8, i32 3, i32 0, i32 1
  %23 = ptrtoint ptr %qlen.i.i.3 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %qlen.i.i.3, align 4
  %cab.3 = getelementptr %struct.wfx_vif, ptr %wvif, i32 0, i32 8, i32 3, i32 1
  %lock.i13.3 = getelementptr %struct.wfx_vif, ptr %wvif, i32 0, i32 8, i32 3, i32 1, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i13.3, ptr noundef nonnull @.str.14, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #10
  %24 = ptrtoint ptr %cab.3 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %cab.3, ptr %cab.3, align 4
  %prev.i.i14.3 = getelementptr %struct.wfx_vif, ptr %wvif, i32 0, i32 8, i32 3, i32 1, i32 0, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i.i14.3 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %cab.3, ptr %prev.i.i14.3, align 4
  %qlen.i.i15.3 = getelementptr %struct.wfx_vif, ptr %wvif, i32 0, i32 8, i32 3, i32 1, i32 1
  %26 = ptrtoint ptr %qlen.i.i15.3 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %qlen.i.i15.3, align 4
  %priority.3 = getelementptr %struct.wfx_vif, ptr %wvif, i32 0, i32 8, i32 3, i32 3
  %27 = ptrtoint ptr %priority.3 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 128, ptr %priority.3, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @wfx_tx_queue_empty(ptr nocapture readnone %wvif, ptr noundef %queue) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %queue, align 4
  %cmp.i = icmp eq ptr %1, %queue
  br i1 %cmp.i, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %cab = getelementptr inbounds %struct.wfx_queue, ptr %queue, i32 0, i32 1
  %2 = ptrtoint ptr %cab to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %cab, align 4
  %cmp.i3 = icmp eq ptr %3, %cab
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %4 = phi i1 [ false, %entry.land.end_crit_edge ], [ %cmp.i3, %land.rhs ]
  ret i1 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wfx_tx_queues_check_empty(ptr noundef %wvif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.wfx_vif, ptr %wvif, i32 0, i32 8, i32 0
  %pending_frames = getelementptr %struct.wfx_vif, ptr %wvif, i32 0, i32 8, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %pending_frames, i32 noundef 4) #10
  %0 = ptrtoint ptr %pending_frames to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %pending_frames, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !60

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 88, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %arrayidx, align 4
  %cmp.i.i = icmp eq ptr %3, %arrayidx
  br i1 %cmp.i.i, label %wfx_tx_queue_empty.exit, label %if.end.do.end41_crit_edge, !prof !61

if.end.do.end41_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end41

wfx_tx_queue_empty.exit:                          ; preds = %if.end
  %cab.i = getelementptr %struct.wfx_vif, ptr %wvif, i32 0, i32 8, i32 0, i32 1
  %4 = ptrtoint ptr %cab.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %cab.i, align 4
  %cmp.i3.i = icmp eq ptr %5, %cab.i
  br i1 %cmp.i3.i, label %wfx_tx_queue_empty.exit.if.end47_crit_edge, label %wfx_tx_queue_empty.exit.do.end41_crit_edge, !prof !60

wfx_tx_queue_empty.exit.do.end41_crit_edge:       ; preds = %wfx_tx_queue_empty.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end41

wfx_tx_queue_empty.exit.if.end47_crit_edge:       ; preds = %wfx_tx_queue_empty.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

do.end41:                                         ; preds = %wfx_tx_queue_empty.exit.do.end41_crit_edge, %if.end.do.end41_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 89, i32 noundef 9, ptr noundef null) #10
  br label %if.end47

if.end47:                                         ; preds = %do.end41, %wfx_tx_queue_empty.exit.if.end47_crit_edge
  %arrayidx.1 = getelementptr %struct.wfx_vif, ptr %wvif, i32 0, i32 8, i32 1
  %pending_frames.1 = getelementptr %struct.wfx_vif, ptr %wvif, i32 0, i32 8, i32 1, i32 2
  %call.i.i.1 = tail call zeroext i1 @__kasan_check_read(ptr noundef %pending_frames.1, i32 noundef 4) #10
  %6 = ptrtoint ptr %pending_frames.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %pending_frames.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.1 = icmp eq i32 %7, 0
  br i1 %tobool.not.1, label %if.end47.if.end.1_crit_edge, label %do.end.1, !prof !60

if.end47.if.end.1_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.1

do.end.1:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 88, i32 noundef 9, ptr noundef null) #10
  br label %if.end.1

if.end.1:                                         ; preds = %do.end.1, %if.end47.if.end.1_crit_edge
  %8 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %arrayidx.1, align 4
  %cmp.i.i.1 = icmp eq ptr %9, %arrayidx.1
  br i1 %cmp.i.i.1, label %wfx_tx_queue_empty.exit.1, label %if.end.1.do.end41.1_crit_edge, !prof !61

if.end.1.do.end41.1_crit_edge:                    ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end41.1

wfx_tx_queue_empty.exit.1:                        ; preds = %if.end.1
  %cab.i.1 = getelementptr %struct.wfx_vif, ptr %wvif, i32 0, i32 8, i32 1, i32 1
  %10 = ptrtoint ptr %cab.i.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %cab.i.1, align 4
  %cmp.i3.i.1 = icmp eq ptr %11, %cab.i.1
  br i1 %cmp.i3.i.1, label %wfx_tx_queue_empty.exit.1.if.end47.1_crit_edge, label %wfx_tx_queue_empty.exit.1.do.end41.1_crit_edge, !prof !60

wfx_tx_queue_empty.exit.1.do.end41.1_crit_edge:   ; preds = %wfx_tx_queue_empty.exit.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end41.1

wfx_tx_queue_empty.exit.1.if.end47.1_crit_edge:   ; preds = %wfx_tx_queue_empty.exit.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47.1

do.end41.1:                                       ; preds = %wfx_tx_queue_empty.exit.1.do.end41.1_crit_edge, %if.end.1.do.end41.1_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 89, i32 noundef 9, ptr noundef null) #10
  br label %if.end47.1

if.end47.1:                                       ; preds = %do.end41.1, %wfx_tx_queue_empty.exit.1.if.end47.1_crit_edge
  %arrayidx.2 = getelementptr %struct.wfx_vif, ptr %wvif, i32 0, i32 8, i32 2
  %pending_frames.2 = getelementptr %struct.wfx_vif, ptr %wvif, i32 0, i32 8, i32 2, i32 2
  %call.i.i.2 = tail call zeroext i1 @__kasan_check_read(ptr noundef %pending_frames.2, i32 noundef 4) #10
  %12 = ptrtoint ptr %pending_frames.2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %pending_frames.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.2 = icmp eq i32 %13, 0
  br i1 %tobool.not.2, label %if.end47.1.if.end.2_crit_edge, label %do.end.2, !prof !60

if.end47.1.if.end.2_crit_edge:                    ; preds = %if.end47.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.2

do.end.2:                                         ; preds = %if.end47.1
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 88, i32 noundef 9, ptr noundef null) #10
  br label %if.end.2

if.end.2:                                         ; preds = %do.end.2, %if.end47.1.if.end.2_crit_edge
  %14 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %arrayidx.2, align 4
  %cmp.i.i.2 = icmp eq ptr %15, %arrayidx.2
  br i1 %cmp.i.i.2, label %wfx_tx_queue_empty.exit.2, label %if.end.2.do.end41.2_crit_edge, !prof !61

if.end.2.do.end41.2_crit_edge:                    ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end41.2

wfx_tx_queue_empty.exit.2:                        ; preds = %if.end.2
  %cab.i.2 = getelementptr %struct.wfx_vif, ptr %wvif, i32 0, i32 8, i32 2, i32 1
  %16 = ptrtoint ptr %cab.i.2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %cab.i.2, align 4
  %cmp.i3.i.2 = icmp eq ptr %17, %cab.i.2
  br i1 %cmp.i3.i.2, label %wfx_tx_queue_empty.exit.2.if.end47.2_crit_edge, label %wfx_tx_queue_empty.exit.2.do.end41.2_crit_edge, !prof !60

wfx_tx_queue_empty.exit.2.do.end41.2_crit_edge:   ; preds = %wfx_tx_queue_empty.exit.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end41.2

wfx_tx_queue_empty.exit.2.if.end47.2_crit_edge:   ; preds = %wfx_tx_queue_empty.exit.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47.2

do.end41.2:                                       ; preds = %wfx_tx_queue_empty.exit.2.do.end41.2_crit_edge, %if.end.2.do.end41.2_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 89, i32 noundef 9, ptr noundef null) #10
  br label %if.end47.2

if.end47.2:                                       ; preds = %do.end41.2, %wfx_tx_queue_empty.exit.2.if.end47.2_crit_edge
  %arrayidx.3 = getelementptr %struct.wfx_vif, ptr %wvif, i32 0, i32 8, i32 3
  %pending_frames.3 = getelementptr %struct.wfx_vif, ptr %wvif, i32 0, i32 8, i32 3, i32 2
  %call.i.i.3 = tail call zeroext i1 @__kasan_check_read(ptr noundef %pending_frames.3, i32 noundef 4) #10
  %18 = ptrtoint ptr %pending_frames.3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %pending_frames.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.3 = icmp eq i32 %19, 0
  br i1 %tobool.not.3, label %if.end47.2.if.end.3_crit_edge, label %do.end.3, !prof !60

if.end47.2.if.end.3_crit_edge:                    ; preds = %if.end47.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.3

do.end.3:                                         ; preds = %if.end47.2
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 88, i32 noundef 9, ptr noundef null) #10
  br label %if.end.3

if.end.3:                                         ; preds = %do.end.3, %if.end47.2.if.end.3_crit_edge
  %20 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %arrayidx.3, align 4
  %cmp.i.i.3 = icmp eq ptr %21, %arrayidx.3
  br i1 %cmp.i.i.3, label %wfx_tx_queue_empty.exit.3, label %if.end.3.do.end41.3_crit_edge, !prof !61

if.end.3.do.end41.3_crit_edge:                    ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end41.3

wfx_tx_queue_empty.exit.3:                        ; preds = %if.end.3
  %cab.i.3 = getelementptr %struct.wfx_vif, ptr %wvif, i32 0, i32 8, i32 3, i32 1
  %22 = ptrtoint ptr %cab.i.3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %cab.i.3, align 4
  %cmp.i3.i.3 = icmp eq ptr %23, %cab.i.3
  br i1 %cmp.i3.i.3, label %wfx_tx_queue_empty.exit.3.if.end47.3_crit_edge, label %wfx_tx_queue_empty.exit.3.do.end41.3_crit_edge, !prof !60

wfx_tx_queue_empty.exit.3.do.end41.3_crit_edge:   ; preds = %wfx_tx_queue_empty.exit.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end41.3

wfx_tx_queue_empty.exit.3.if.end47.3_crit_edge:   ; preds = %wfx_tx_queue_empty.exit.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47.3

do.end41.3:                                       ; preds = %wfx_tx_queue_empty.exit.3.do.end41.3_crit_edge, %if.end.3.do.end41.3_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 89, i32 noundef 9, ptr noundef null) #10
  br label %if.end47.3

if.end47.3:                                       ; preds = %do.end41.3, %wfx_tx_queue_empty.exit.3.if.end47.3_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wfx_tx_queue_drop(ptr nocapture noundef readonly %wvif, ptr noundef %queue, ptr noundef %dropped) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cab = getelementptr inbounds %struct.wfx_queue, ptr %queue, i32 0, i32 1
  %lock.i = getelementptr inbounds %struct.wfx_queue, ptr %queue, i32 0, i32 1, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #10
  %0 = ptrtoint ptr %cab to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cab, align 4
  %cmp.not1.i = icmp eq ptr %1, %cab
  br i1 %cmp.not1.i, label %entry.__wfx_tx_queue_drop.exit_crit_edge, label %for.body.lr.ph.i

entry.__wfx_tx_queue_drop.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__wfx_tx_queue_drop.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %qlen.i.i = getelementptr inbounds %struct.wfx_queue, ptr %queue, i32 0, i32 1, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %skb.02.i = phi ptr [ %1, %for.body.lr.ph.i ], [ %tmp.0.i, %for.body.i.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %skb.02.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp.0.i = load ptr, ptr %skb.02.i, align 8
  %3 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %qlen.i.i, align 4
  %sub.i.i = add i32 %4, -1
  store volatile i32 %sub.i.i, ptr %qlen.i.i, align 4
  %5 = load ptr, ptr %skb.02.i, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.44, ptr %skb.02.i, i32 0, i32 1
  %6 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %skb.02.i, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.44, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %7, ptr %prev17.i.i, align 4
  %9 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %5, ptr %7, align 8
  tail call void @skb_queue_head(ptr noundef %dropped, ptr noundef %skb.02.i) #10
  %cmp.not.i = icmp eq ptr %tmp.0.i, %cab
  br i1 %cmp.not.i, label %for.body.i.__wfx_tx_queue_drop.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.__wfx_tx_queue_drop.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__wfx_tx_queue_drop.exit

__wfx_tx_queue_drop.exit:                         ; preds = %for.body.i.__wfx_tx_queue_drop.exit_crit_edge, %entry.__wfx_tx_queue_drop.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #10
  %lock.i5 = getelementptr inbounds %struct.sk_buff_head, ptr %queue, i32 0, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i5) #10
  %10 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %queue, align 4
  %cmp.not1.i6 = icmp eq ptr %11, %queue
  br i1 %cmp.not1.i6, label %__wfx_tx_queue_drop.exit.__wfx_tx_queue_drop.exit16_crit_edge, label %for.body.lr.ph.i8

__wfx_tx_queue_drop.exit.__wfx_tx_queue_drop.exit16_crit_edge: ; preds = %__wfx_tx_queue_drop.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %__wfx_tx_queue_drop.exit16

for.body.lr.ph.i8:                                ; preds = %__wfx_tx_queue_drop.exit
  %qlen.i.i7 = getelementptr inbounds %struct.sk_buff_head, ptr %queue, i32 0, i32 1
  br label %for.body.i15

for.body.i15:                                     ; preds = %for.body.i15.for.body.i15_crit_edge, %for.body.lr.ph.i8
  %skb.02.i9 = phi ptr [ %11, %for.body.lr.ph.i8 ], [ %tmp.0.i10, %for.body.i15.for.body.i15_crit_edge ]
  %12 = ptrtoint ptr %skb.02.i9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %tmp.0.i10 = load ptr, ptr %skb.02.i9, align 8
  %13 = ptrtoint ptr %qlen.i.i7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %qlen.i.i7, align 4
  %sub.i.i11 = add i32 %14, -1
  store volatile i32 %sub.i.i11, ptr %qlen.i.i7, align 4
  %15 = load ptr, ptr %skb.02.i9, align 8
  %prev9.i.i12 = getelementptr inbounds %struct.anon.44, ptr %skb.02.i9, i32 0, i32 1
  %16 = ptrtoint ptr %prev9.i.i12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev9.i.i12, align 4
  store ptr null, ptr %prev9.i.i12, align 4
  store ptr null, ptr %skb.02.i9, align 8
  %prev17.i.i13 = getelementptr inbounds %struct.anon.44, ptr %15, i32 0, i32 1
  %18 = ptrtoint ptr %prev17.i.i13 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %17, ptr %prev17.i.i13, align 4
  %19 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %15, ptr %17, align 8
  tail call void @skb_queue_head(ptr noundef %dropped, ptr noundef %skb.02.i9) #10
  %cmp.not.i14 = icmp eq ptr %tmp.0.i10, %queue
  br i1 %cmp.not.i14, label %for.body.i15.__wfx_tx_queue_drop.exit16_crit_edge, label %for.body.i15.for.body.i15_crit_edge

for.body.i15.for.body.i15_crit_edge:              ; preds = %for.body.i15
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i15

for.body.i15.__wfx_tx_queue_drop.exit16_crit_edge: ; preds = %for.body.i15
  call void @__sanitizer_cov_trace_pc() #12
  br label %__wfx_tx_queue_drop.exit16

__wfx_tx_queue_drop.exit16:                       ; preds = %for.body.i15.__wfx_tx_queue_drop.exit16_crit_edge, %__wfx_tx_queue_drop.exit.__wfx_tx_queue_drop.exit16_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i5) #10
  %20 = ptrtoint ptr %wvif to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %wvif, align 4
  %tx_dequeue = getelementptr inbounds %struct.wfx_dev, ptr %21, i32 0, i32 17
  tail call void @__wake_up(ptr noundef %tx_dequeue, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wfx_tx_queues_put(ptr noundef %wvif, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %queue_mapping.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %0 = ptrtoint ptr %queue_mapping.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %queue_mapping.i, align 8
  %idxprom = zext i16 %1 to i32
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %2 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cb.i, align 8
  %and = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %arrayidx = getelementptr %struct.wfx_vif, ptr %wvif, i32 0, i32 8, i32 %idxprom
  %cab = getelementptr %struct.wfx_vif, ptr %wvif, i32 0, i32 8, i32 %idxprom, i32 1
  %arrayidx.sink = select i1 %tobool.not, ptr %arrayidx, ptr %cab
  tail call void @skb_queue_tail(ptr noundef %arrayidx.sink, ptr noundef %skb) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wfx_pending_drop(ptr noundef %wdev, ptr noundef %dropped) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_frozen = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 13
  %0 = ptrtoint ptr %chip_frozen to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %chip_frozen, align 1, !range !57
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !56

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 134, i32 noundef 9, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.wfx_pending_drop) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %tx_pending = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 16
  %call109 = tail call ptr @skb_dequeue(ptr noundef %tx_pending) #10
  %cmp.not110 = icmp eq ptr %call109, null
  br i1 %cmp.not110, label %if.end.while.end_crit_edge, label %while.body.lr.ph

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end
  %dev.i = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end94.while.body_crit_edge, %while.body.lr.ph
  %call111 = phi ptr [ %call109, %while.body.lr.ph ], [ %call, %if.end94.while.body_crit_edge ]
  %data = getelementptr inbounds %struct.sk_buff, ptr %call111, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %interface = getelementptr inbounds %struct.hif_msg, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %interface to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %interface, align 1
  %bf.lshr = lshr i8 %bf.load, 5
  %bf.clear = and i8 %bf.lshr, 3
  %conv = zext i8 %bf.clear to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.clear)
  %cmp.i = icmp ugt i8 %bf.clear, 1
  br i1 %cmp.i, label %do.body.i, label %if.end4.i

do.body.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wdev_to_wvif.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wfx_pending_drop, %if.then3.i)) #10
          to label %wdev_to_wvif.exit [label %if.then3.i], !srcloc !62

if.then3.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wdev_to_wvif.__UNIQUE_ID_ddebug348, ptr noundef %6, ptr noundef nonnull @.str.18, i32 noundef %conv) #10
  br label %if.end94

if.end4.i:                                        ; preds = %while.body
  %7 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %conv, i32 2) #10, !srcloc !63
  %and.i = and i32 %7, %conv
  %arrayidx.i = getelementptr %struct.wfx_dev, ptr %wdev, i32 0, i32 3, i32 %and.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %tobool12.not.i = icmp eq ptr %9, null
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_vif, ptr %9, i32 0, i32 19
  br i1 %tobool12.not.i, label %if.end4.i.if.end94_crit_edge, label %if.end4.i.wdev_to_wvif.exit_crit_edge

if.end4.i.wdev_to_wvif.exit_crit_edge:            ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wdev_to_wvif.exit

if.end4.i.if.end94_crit_edge:                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end94

wdev_to_wvif.exit:                                ; preds = %if.end4.i.wdev_to_wvif.exit_crit_edge, %do.body.i
  %retval.0.i = phi ptr [ %drv_priv.i, %if.end4.i.wdev_to_wvif.exit_crit_edge ], [ null, %do.body.i ]
  %tobool22.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool22.not, label %wdev_to_wvif.exit.if.end94_crit_edge, label %if.then23

wdev_to_wvif.exit.if.end94_crit_edge:             ; preds = %wdev_to_wvif.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end94

if.then23:                                        ; preds = %wdev_to_wvif.exit
  %queue_mapping.i = getelementptr inbounds %struct.sk_buff, ptr %call111, i32 0, i32 10
  %10 = ptrtoint ptr %queue_mapping.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %queue_mapping.i, align 8
  %idxprom = zext i16 %11 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %11)
  %cmp28 = icmp ugt i16 %11, 3
  br i1 %cmp28, label %do.end45, label %if.then23.if.end51_crit_edge, !prof !56

if.then23.if.end51_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

do.end45:                                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 140, i32 noundef 9, ptr noundef null) #10
  br label %if.end51

if.end51:                                         ; preds = %do.end45, %if.then23.if.end51_crit_edge
  %pending_frames = getelementptr %struct.wfx_vif, ptr %retval.0.i, i32 0, i32 8, i32 %idxprom, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %pending_frames, i32 noundef 4) #10
  %12 = ptrtoint ptr %pending_frames to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %pending_frames, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool61.not = icmp eq i32 %13, 0
  br i1 %tobool61.not, label %do.end79, label %if.end51.if.end85_crit_edge, !prof !56

if.end51.if.end85_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end85

do.end79:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 141, i32 noundef 9, ptr noundef null) #10
  br label %if.end85

if.end85:                                         ; preds = %do.end79, %if.end51.if.end85_crit_edge
  %call.i.i105 = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending_frames, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %pending_frames, i32 1, i32 3, i32 1) #10
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pending_frames, ptr %pending_frames, i32 1, ptr elementtype(i32) %pending_frames) #10, !srcloc !64
  br label %if.end94

if.end94:                                         ; preds = %if.end85, %wdev_to_wvif.exit.if.end94_crit_edge, %if.end4.i.if.end94_crit_edge, %if.then3.i
  tail call void @skb_queue_head(ptr noundef %dropped, ptr noundef nonnull %call111) #10
  %call = tail call ptr @skb_dequeue(ptr noundef %tx_pending) #10
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %if.end94.while.end_crit_edge, label %if.end94.while.body_crit_edge

if.end94.while.body_crit_edge:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end94.while.end_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %if.end94.while.end_crit_edge, %if.end.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_head(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @wfx_pending_get(ptr noundef %wdev, i32 noundef %packet_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_pending = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 16
  %lock = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 16, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %skb.0.in = phi ptr [ %tx_pending, %entry ], [ %skb.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %skb.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %skb.0 = load ptr, ptr %skb.0.in, align 4
  %cmp.not = icmp eq ptr %skb.0, %tx_pending
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 19
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data, align 4
  %body = getelementptr inbounds %struct.hif_msg, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %body to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %body, align 1
  %cmp4.not = icmp eq i32 %4, %packet_id
  br i1 %cmp4.not, label %if.end, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

if.end:                                           ; preds = %for.body
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  %interface = getelementptr inbounds %struct.hif_msg, ptr %2, i32 0, i32 2
  %5 = ptrtoint ptr %interface to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %interface, align 1
  %bf.lshr = lshr i8 %bf.load, 5
  %bf.clear = and i8 %bf.lshr, 3
  %conv = zext i8 %bf.clear to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.clear)
  %cmp.i = icmp ugt i8 %bf.clear, 1
  br i1 %cmp.i, label %do.body.i, label %if.end4.i

do.body.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wdev_to_wvif.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wfx_pending_get, %if.then3.i)) #10
          to label %wdev_to_wvif.exit [label %if.then3.i], !srcloc !62

if.then3.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 1
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wdev_to_wvif.__UNIQUE_ID_ddebug348, ptr noundef %7, ptr noundef nonnull @.str.18, i32 noundef %conv) #10
  br label %if.end69

if.end4.i:                                        ; preds = %if.end
  %8 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %conv, i32 2) #10, !srcloc !63
  %and.i = and i32 %8, %conv
  %arrayidx.i = getelementptr %struct.wfx_dev, ptr %wdev, i32 0, i32 3, i32 %and.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 4
  %tobool12.not.i = icmp eq ptr %10, null
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_vif, ptr %10, i32 0, i32 19
  br i1 %tobool12.not.i, label %if.end4.i.if.end69_crit_edge, label %if.end4.i.wdev_to_wvif.exit_crit_edge

if.end4.i.wdev_to_wvif.exit_crit_edge:            ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wdev_to_wvif.exit

if.end4.i.if.end69_crit_edge:                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

wdev_to_wvif.exit:                                ; preds = %if.end4.i.wdev_to_wvif.exit_crit_edge, %do.body.i
  %retval.0.i = phi ptr [ %drv_priv.i, %if.end4.i.wdev_to_wvif.exit_crit_edge ], [ null, %do.body.i ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %wdev_to_wvif.exit.if.end69_crit_edge, label %if.then7

wdev_to_wvif.exit.if.end69_crit_edge:             ; preds = %wdev_to_wvif.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then7:                                         ; preds = %wdev_to_wvif.exit
  %queue_mapping.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 10
  %11 = ptrtoint ptr %queue_mapping.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %queue_mapping.i, align 8
  %idxprom = zext i16 %12 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %12)
  %cmp11 = icmp ugt i16 %12, 3
  br i1 %cmp11, label %do.end, label %if.then7.if.end27_crit_edge, !prof !56

if.then7.if.end27_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

do.end:                                           ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 166, i32 noundef 9, ptr noundef null) #10
  br label %if.end27

if.end27:                                         ; preds = %do.end, %if.then7.if.end27_crit_edge
  %pending_frames = getelementptr %struct.wfx_vif, ptr %retval.0.i, i32 0, i32 8, i32 %idxprom, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %pending_frames, i32 noundef 4) #10
  %13 = ptrtoint ptr %pending_frames to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %pending_frames, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool36.not = icmp eq i32 %14, 0
  br i1 %tobool36.not, label %do.end54, label %if.end27.if.end60_crit_edge, !prof !56

if.end27.if.end60_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

do.end54:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 167, i32 noundef 9, ptr noundef null) #10
  br label %if.end60

if.end60:                                         ; preds = %do.end54, %if.end27.if.end60_crit_edge
  %call.i.i122 = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending_frames, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %pending_frames, i32 1, i32 3, i32 1) #10
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pending_frames, ptr %pending_frames, i32 1, ptr elementtype(i32) %pending_frames) #10, !srcloc !64
  br label %if.end69

if.end69:                                         ; preds = %if.end60, %wdev_to_wvif.exit.if.end69_crit_edge, %if.end4.i.if.end69_crit_edge, %if.then3.i
  tail call void @skb_unlink(ptr noundef %skb.0, ptr noundef %tx_pending) #10
  br label %cleanup

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 174, i32 noundef 9, ptr noundef nonnull @.str.7) #10
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end69
  %retval.0 = phi ptr [ %skb.0, %if.end69 ], [ null, %for.end ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_unlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wfx_pending_get_pkt_us_delay(ptr nocapture noundef readnone %wdev, ptr noundef readonly %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get() #10
  %tobool.not.i = icmp eq ptr %skb, null
  %rate_driver_data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %retval.0.i = select i1 %tobool.not.i, ptr null, ptr %rate_driver_data.i
  %0 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %retval.0.i, align 8
  %sub.i = sub i64 %call, %1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i)
  %cmp8.i.i.i = icmp slt i64 %sub.i, 0
  %2 = tail call i64 @llvm.abs.i64(i64 %sub.i, i1 false) #10
  %3 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %2, i32 0) #14, !srcloc !65
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %3, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %3, 1
  %4 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %2, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #14, !srcloc !59
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %4, 0
  %div181.i1.i.i = lshr i64 %asmresult10.i.i.i.i, 9
  %sub210.i.i.i = sub nsw i64 0, %div181.i1.i.i
  %spec.select.i.i.i = select i1 %cmp8.i.i.i, i64 %sub210.i.i.i, i64 %div181.i1.i.i
  %conv = trunc i64 %spec.select.i.i.i to i32
  ret i32 %conv
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @wfx_tx_queues_has_cab(ptr noundef %wvif) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vif = getelementptr inbounds %struct.wfx_vif, ptr %wvif, i32 0, i32 1
  %0 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vif, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp.not = icmp eq i32 %3, 3
  br i1 %cmp.not, label %for.body.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %cab = getelementptr %struct.wfx_vif, ptr %wvif, i32 0, i32 8, i32 0, i32 1
  %4 = ptrtoint ptr %cab to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %cab, align 4
  %cmp.i = icmp eq ptr %5, %cab
  br i1 %cmp.i, label %for.cond, label %for.body.preheader.cleanup_crit_edge

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond:                                         ; preds = %for.body.preheader
  %cab.1 = getelementptr %struct.wfx_vif, ptr %wvif, i32 0, i32 8, i32 1, i32 1
  %6 = ptrtoint ptr %cab.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %cab.1, align 4
  %cmp.i.1 = icmp eq ptr %7, %cab.1
  br i1 %cmp.i.1, label %for.cond.1, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  %cab.2 = getelementptr %struct.wfx_vif, ptr %wvif, i32 0, i32 8, i32 2, i32 1
  %8 = ptrtoint ptr %cab.2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %cab.2, align 4
  %cmp.i.2 = icmp eq ptr %9, %cab.2
  br i1 %cmp.i.2, label %for.cond.2, label %for.cond.1.cleanup_crit_edge

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.2:                                       ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #12
  %cab.3 = getelementptr %struct.wfx_vif, ptr %wvif, i32 0, i32 8, i32 3, i32 1
  %10 = ptrtoint ptr %cab.3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %cab.3, align 4
  %cmp.i.3 = icmp ne ptr %11, %cab.3
  br label %cleanup

cleanup:                                          ; preds = %for.cond.2, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %for.body.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ true, %for.body.preheader.cleanup_crit_edge ], [ true, %for.cond.cleanup_crit_edge ], [ true, %for.cond.1.cleanup_crit_edge ], [ %cmp.i.3, %for.cond.2 ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @wfx_tx_queues_get(ptr noundef %wdev) local_unnamed_addr #0 align 64 {
entry:
  %queues.i = alloca [8 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_lock = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 18
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tx_lock, i32 noundef 4) #10
  %0 = ptrtoint ptr %tx_lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %tx_lock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %queues.i) #10
  %arrayidx.i.i.i = getelementptr %struct.wfx_dev, ptr %wdev, i32 0, i32 3, i32 0
  %2 = call ptr @memset(ptr %queues.i, i32 255, i32 32)
  br label %while.cond.i

while.cond.i:                                     ; preds = %for.end.i.while.cond.i_crit_edge, %if.end
  %wvif.0.i = phi ptr [ null, %if.end ], [ %retval.0.i.i, %for.end.i.while.cond.i_crit_edge ]
  %num_queues.0.i = phi i32 [ 0, %if.end ], [ %inc.i, %for.end.i.while.cond.i_crit_edge ]
  %tobool.not.i.i = icmp eq ptr %wvif.0.i, null
  %3 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 0, i32 2) #10, !srcloc !63
  %4 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i.i.i, align 4
  %tobool12.not.i.i.i = icmp eq ptr %5, null
  %drv_priv.i.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %5, i32 0, i32 19
  %tobool1.not.i.i = xor i1 %tobool.not.i.i, true
  %or.cond.i.i = select i1 %tobool1.not.i.i, i1 true, i1 %tobool12.not.i.i.i
  br i1 %or.cond.i.i, label %if.end4.i.i, label %while.cond.i.wvif_iterate.exit.i_crit_edge

while.cond.i.wvif_iterate.exit.i_crit_edge:       ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wvif_iterate.exit.i

if.end4.i.i:                                      ; preds = %while.cond.i
  %spec.select.i.i.i = select i1 %tobool12.not.i.i.i, ptr null, ptr %drv_priv.i.i.i
  %cmp5.i.i = icmp eq ptr %spec.select.i.i.i, %wvif.0.i
  %narrow.i.i = or i1 %tobool.not.i.i, %cmp5.i.i
  %6 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 1, i32 2) #10, !srcloc !63
  %and.i.1.i.i = and i32 %6, 1
  %arrayidx.i.1.i.i = getelementptr %struct.wfx_dev, ptr %wdev, i32 0, i32 3, i32 %and.i.1.i.i
  %7 = ptrtoint ptr %arrayidx.i.1.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i.1.i.i, align 4
  %tobool12.not.i.1.i.i = icmp eq ptr %8, null
  %drv_priv.i.1.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %8, i32 0, i32 19
  %tobool1.not.1.i.i = xor i1 %narrow.i.i, true
  %9 = select i1 %tobool1.not.1.i.i, i1 true, i1 %tobool12.not.i.1.i.i
  br i1 %9, label %if.end4.i.i.while.cond44.preheader.i_crit_edge, label %if.end4.i.i.wvif_iterate.exit.i_crit_edge

if.end4.i.i.wvif_iterate.exit.i_crit_edge:        ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wvif_iterate.exit.i

if.end4.i.i.while.cond44.preheader.i_crit_edge:   ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond44.preheader.i

wvif_iterate.exit.i:                              ; preds = %if.end4.i.i.wvif_iterate.exit.i_crit_edge, %while.cond.i.wvif_iterate.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %drv_priv.i.i.i, %while.cond.i.wvif_iterate.exit.i_crit_edge ], [ %drv_priv.i.1.i.i, %if.end4.i.i.wvif_iterate.exit.i_crit_edge ]
  %cmp.not.i = icmp eq ptr %retval.0.i.i, null
  br i1 %cmp.not.i, label %wvif_iterate.exit.i.while.cond44.preheader.i_crit_edge, label %wvif_iterate.exit.i.for.body.i_crit_edge

wvif_iterate.exit.i.for.body.i_crit_edge:         ; preds = %wvif_iterate.exit.i
  br label %for.body.i

wvif_iterate.exit.i.while.cond44.preheader.i_crit_edge: ; preds = %wvif_iterate.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond44.preheader.i

while.cond44.preheader.i:                         ; preds = %wvif_iterate.exit.i.while.cond44.preheader.i_crit_edge, %if.end4.i.i.while.cond44.preheader.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_queues.0.i)
  %cmp52232.i = icmp sgt i32 %num_queues.0.i, 0
  br label %while.cond44.i

for.body.i:                                       ; preds = %for.end.i.for.body.i_crit_edge, %wvif_iterate.exit.i.for.body.i_crit_edge
  %i.0231.i = phi i32 [ %inc42.i, %for.end.i.for.body.i_crit_edge ], [ 0, %wvif_iterate.exit.i.for.body.i_crit_edge ]
  %num_queues.1229.i = phi i32 [ %inc.i, %for.end.i.for.body.i_crit_edge ], [ %num_queues.0.i, %wvif_iterate.exit.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %num_queues.1229.i)
  %cmp2.i = icmp ugt i32 %num_queues.1229.i, 7
  br i1 %cmp2.i, label %do.end.i, label %for.body.i.if.end.i_crit_edge, !prof !56

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 246, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %for.body.i.if.end.i_crit_edge
  %arrayidx.i = getelementptr %struct.wfx_vif, ptr %retval.0.i.i, i32 0, i32 8, i32 %i.0231.i
  %arrayidx21.i = getelementptr [8 x ptr], ptr %queues.i, i32 0, i32 %num_queues.1229.i
  %10 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %arrayidx.i, ptr %arrayidx21.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_queues.1229.i)
  %cmp23227.i = icmp sgt i32 %num_queues.1229.i, 0
  br i1 %cmp23227.i, label %if.end.i.for.body24.i_crit_edge, label %if.end.i.for.end.i_crit_edge

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

if.end.i.for.body24.i_crit_edge:                  ; preds = %if.end.i
  br label %for.body24.i

for.body24.i:                                     ; preds = %for.inc.i.for.body24.i_crit_edge, %if.end.i.for.body24.i_crit_edge
  %j.0228.i = phi i32 [ %sub.i, %for.inc.i.for.body24.i_crit_edge ], [ %num_queues.1229.i, %if.end.i.for.body24.i_crit_edge ]
  %arrayidx25.i = getelementptr [8 x ptr], ptr %queues.i, i32 0, i32 %j.0228.i
  %11 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx25.i, align 4
  %pending_frames.i.i = getelementptr inbounds %struct.wfx_queue, ptr %12, i32 0, i32 2
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %pending_frames.i.i, i32 noundef 4) #10
  %13 = ptrtoint ptr %pending_frames.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %pending_frames.i.i, align 4
  %priority.i.i = getelementptr inbounds %struct.wfx_queue, ptr %12, i32 0, i32 3
  %15 = ptrtoint ptr %priority.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %priority.i.i, align 4
  %mul.i.i = mul i32 %16, %14
  %sub.i = add nsw i32 %j.0228.i, -1
  %arrayidx27.i = getelementptr [8 x ptr], ptr %queues.i, i32 0, i32 %sub.i
  %17 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx27.i, align 4
  %pending_frames.i200.i = getelementptr inbounds %struct.wfx_queue, ptr %18, i32 0, i32 2
  %call.i.i.i201.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %pending_frames.i200.i, i32 noundef 4) #10
  %19 = ptrtoint ptr %pending_frames.i200.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %pending_frames.i200.i, align 4
  %priority.i202.i = getelementptr inbounds %struct.wfx_queue, ptr %18, i32 0, i32 3
  %21 = ptrtoint ptr %priority.i202.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %priority.i202.i, align 4
  %mul.i203.i = mul i32 %22, %20
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i, i32 %mul.i203.i)
  %cmp29.i = icmp slt i32 %mul.i.i, %mul.i203.i
  br i1 %cmp29.i, label %do.body31.i, label %for.body24.i.for.inc.i_crit_edge

for.body24.i.for.inc.i_crit_edge:                 ; preds = %for.body24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

do.body31.i:                                      ; preds = %for.body24.i
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %12, ptr %arrayidx27.i, align 4
  %24 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %18, ptr %arrayidx25.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.body31.i, %for.body24.i.for.inc.i_crit_edge
  %cmp23.i = icmp ugt i32 %j.0228.i, 1
  br i1 %cmp23.i, label %for.inc.i.for.body24.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.inc.i.for.body24.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body24.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  %inc.i = add i32 %num_queues.1229.i, 1
  %inc42.i = add nuw nsw i32 %i.0231.i, 1
  %exitcond.not.i = icmp eq i32 %inc42.i, 4
  br i1 %exitcond.not.i, label %for.end.i.while.cond.i_crit_edge, label %for.end.i.for.body.i_crit_edge

for.end.i.for.body.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i.while.cond.i_crit_edge:                 ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i

while.cond44.i:                                   ; preds = %while.cond44.i.backedge, %while.cond44.preheader.i
  %wvif.1.i = phi ptr [ null, %while.cond44.preheader.i ], [ %retval.0.i220.i, %while.cond44.i.backedge ]
  %tobool.not.i204.i = icmp eq ptr %wvif.1.i, null
  %25 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 0, i32 2) #10, !srcloc !63
  %26 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i.i.i, align 4
  %tobool12.not.i.i206.i = icmp eq ptr %27, null
  %drv_priv.i.i207.i = getelementptr inbounds %struct.ieee80211_vif, ptr %27, i32 0, i32 19
  %tobool1.not.i209.i = xor i1 %tobool.not.i204.i, true
  %or.cond.i210.i = select i1 %tobool1.not.i209.i, i1 true, i1 %tobool12.not.i.i206.i
  br i1 %or.cond.i210.i, label %if.end4.i219.i, label %while.cond44.i.wvif_iterate.exit221.i_crit_edge

while.cond44.i.wvif_iterate.exit221.i_crit_edge:  ; preds = %while.cond44.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wvif_iterate.exit221.i

if.end4.i219.i:                                   ; preds = %while.cond44.i
  %spec.select.i.i208.i = select i1 %tobool12.not.i.i206.i, ptr null, ptr %drv_priv.i.i207.i
  %cmp5.i211.i = icmp eq ptr %spec.select.i.i208.i, %wvif.1.i
  %narrow.i212.i = or i1 %tobool.not.i204.i, %cmp5.i211.i
  %28 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 1, i32 2) #10, !srcloc !63
  %and.i.1.i213.i = and i32 %28, 1
  %arrayidx.i.1.i214.i = getelementptr %struct.wfx_dev, ptr %wdev, i32 0, i32 3, i32 %and.i.1.i213.i
  %29 = ptrtoint ptr %arrayidx.i.1.i214.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i.1.i214.i, align 4
  %tobool12.not.i.1.i215.i = icmp eq ptr %30, null
  %drv_priv.i.1.i216.i = getelementptr inbounds %struct.ieee80211_vif, ptr %30, i32 0, i32 19
  %tobool1.not.1.i217.i = xor i1 %narrow.i212.i, true
  %31 = select i1 %tobool1.not.1.i217.i, i1 true, i1 %tobool12.not.i.1.i215.i
  br i1 %31, label %if.end4.i219.i.for.cond135.preheader.i_crit_edge, label %if.end4.i219.i.wvif_iterate.exit221.i_crit_edge

if.end4.i219.i.wvif_iterate.exit221.i_crit_edge:  ; preds = %if.end4.i219.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wvif_iterate.exit221.i

if.end4.i219.i.for.cond135.preheader.i_crit_edge: ; preds = %if.end4.i219.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond135.preheader.i

wvif_iterate.exit221.i:                           ; preds = %if.end4.i219.i.wvif_iterate.exit221.i_crit_edge, %while.cond44.i.wvif_iterate.exit221.i_crit_edge
  %retval.0.i220.i = phi ptr [ %drv_priv.i.i207.i, %while.cond44.i.wvif_iterate.exit221.i_crit_edge ], [ %drv_priv.i.1.i216.i, %if.end4.i219.i.wvif_iterate.exit221.i_crit_edge ]
  %cmp46.not.i = icmp eq ptr %retval.0.i220.i, null
  br i1 %cmp46.not.i, label %wvif_iterate.exit221.i.for.cond135.preheader.i_crit_edge, label %while.body47.i

wvif_iterate.exit221.i.for.cond135.preheader.i_crit_edge: ; preds = %wvif_iterate.exit221.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond135.preheader.i

for.cond135.preheader.i:                          ; preds = %wvif_iterate.exit221.i.for.cond135.preheader.i_crit_edge, %if.end4.i219.i.for.cond135.preheader.i_crit_edge
  br i1 %cmp52232.i, label %for.cond135.preheader.i.for.body138.i_crit_edge, label %for.cond135.preheader.i.wfx_tx_queues_get_skb.exit.thread_crit_edge

for.cond135.preheader.i.wfx_tx_queues_get_skb.exit.thread_crit_edge: ; preds = %for.cond135.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wfx_tx_queues_get_skb.exit.thread

for.cond135.preheader.i.for.body138.i_crit_edge:  ; preds = %for.cond135.preheader.i
  br label %for.body138.i

while.body47.i:                                   ; preds = %wvif_iterate.exit221.i
  %after_dtim_tx_allowed.i = getelementptr inbounds %struct.wfx_vif, ptr %retval.0.i220.i, i32 0, i32 5
  %32 = ptrtoint ptr %after_dtim_tx_allowed.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %after_dtim_tx_allowed.i, align 4, !range !57
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool48.not.i = icmp eq i8 %33, 0
  br i1 %tobool48.not.i, label %while.body47.i.while.cond44.i.backedge_crit_edge, label %for.cond51.preheader.i

while.body47.i.while.cond44.i.backedge_crit_edge: ; preds = %while.body47.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond44.i.backedge

for.cond51.preheader.i:                           ; preds = %while.body47.i
  br i1 %cmp52232.i, label %for.cond51.preheader.i.for.body53.i_crit_edge, label %for.cond51.preheader.i.for.end131.i_crit_edge

for.cond51.preheader.i.for.end131.i_crit_edge:    ; preds = %for.cond51.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end131.i

for.cond51.preheader.i.for.body53.i_crit_edge:    ; preds = %for.cond51.preheader.i
  br label %for.body53.i

for.cond51.i:                                     ; preds = %for.body53.i
  %inc130.i = add nuw nsw i32 %i.1233.i, 1
  %exitcond242.not.i = icmp eq i32 %inc130.i, %num_queues.0.i
  br i1 %exitcond242.not.i, label %for.cond51.i.for.end131.i_crit_edge, label %for.cond51.i.for.body53.i_crit_edge

for.cond51.i.for.body53.i_crit_edge:              ; preds = %for.cond51.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body53.i

for.cond51.i.for.end131.i_crit_edge:              ; preds = %for.cond51.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end131.i

for.body53.i:                                     ; preds = %for.cond51.i.for.body53.i_crit_edge, %for.cond51.preheader.i.for.body53.i_crit_edge
  %i.1233.i = phi i32 [ %inc130.i, %for.cond51.i.for.body53.i_crit_edge ], [ 0, %for.cond51.preheader.i.for.body53.i_crit_edge ]
  %arrayidx54.i = getelementptr [8 x ptr], ptr %queues.i, i32 0, i32 %i.1233.i
  %34 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx54.i, align 4
  %cab.i = getelementptr inbounds %struct.wfx_queue, ptr %35, i32 0, i32 1
  %call55.i = tail call ptr @skb_dequeue(ptr noundef %cab.i) #10
  %tobool56.not.i = icmp eq ptr %call55.i, null
  br i1 %tobool56.not.i, label %for.cond51.i, label %if.end58.i

if.end58.i:                                       ; preds = %for.body53.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call55.i, i32 0, i32 19
  %36 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data.i, align 4
  %interface.i = getelementptr inbounds %struct.hif_msg, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %interface.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load.i = load i8, ptr %interface.i, align 1
  %bf.lshr.i = lshr i8 %bf.load.i, 5
  %bf.clear.i = and i8 %bf.lshr.i, 3
  %conv.i = zext i8 %bf.clear.i to i32
  %id.i = getelementptr inbounds %struct.wfx_vif, ptr %retval.0.i220.i, i32 0, i32 3
  %39 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %conv.i)
  %cmp60.not.i = icmp eq i32 %40, %conv.i
  br i1 %cmp60.not.i, label %if.end58.i.if.end83.i_crit_edge, label %do.end77.i, !prof !60

if.end58.i.if.end83.i_crit_edge:                  ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end83.i

do.end77.i:                                       ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 269, i32 noundef 9, ptr noundef null) #10
  br label %if.end83.i

if.end83.i:                                       ; preds = %do.end77.i, %if.end58.i.if.end83.i_crit_edge
  %queue_mapping.i.i = getelementptr inbounds %struct.sk_buff, ptr %call55.i, i32 0, i32 10
  %41 = ptrtoint ptr %queue_mapping.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %queue_mapping.i.i, align 8
  %idxprom.i = zext i16 %42 to i32
  %arrayidx95.i = getelementptr %struct.wfx_vif, ptr %retval.0.i220.i, i32 0, i32 8, i32 %idxprom.i
  %cmp96.not.i = icmp eq ptr %35, %arrayidx95.i
  br i1 %cmp96.not.i, label %if.end83.i.if.end119.i_crit_edge, label %do.end113.i, !prof !60

if.end83.i.if.end119.i_crit_edge:                 ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end119.i

do.end113.i:                                      ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 271, i32 noundef 9, ptr noundef null) #10
  br label %if.end119.i

if.end119.i:                                      ; preds = %do.end113.i, %if.end83.i.if.end119.i_crit_edge
  %pending_frames.i = getelementptr inbounds %struct.wfx_queue, ptr %35, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending_frames.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %pending_frames.i, i32 1, i32 3, i32 1) #10
  %43 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pending_frames.i, ptr %pending_frames.i, i32 1, ptr elementtype(i32) %pending_frames.i) #10, !srcloc !52
  br label %if.end4

for.end131.i:                                     ; preds = %for.cond51.i.for.end131.i_crit_edge, %for.cond51.preheader.i.for.end131.i_crit_edge
  %44 = ptrtoint ptr %after_dtim_tx_allowed.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %after_dtim_tx_allowed.i, align 4
  %update_tim_work.i = getelementptr inbounds %struct.wfx_vif, ptr %retval.0.i220.i, i32 0, i32 11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %45 = load ptr, ptr @system_wq, align 4
  %call.i.i222.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %45, ptr noundef %update_tim_work.i) #10
  br label %while.cond44.i.backedge

while.cond44.i.backedge:                          ; preds = %for.end131.i, %while.body47.i.while.cond44.i.backedge_crit_edge
  br label %while.cond44.i

for.cond135.i:                                    ; preds = %for.body138.i
  %inc148.i = add nuw nsw i32 %i.2235.i, 1
  %exitcond243.not.i = icmp eq i32 %inc148.i, %num_queues.0.i
  br i1 %exitcond243.not.i, label %for.cond135.i.wfx_tx_queues_get_skb.exit.thread_crit_edge, label %for.cond135.i.for.body138.i_crit_edge

for.cond135.i.for.body138.i_crit_edge:            ; preds = %for.cond135.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body138.i

for.cond135.i.wfx_tx_queues_get_skb.exit.thread_crit_edge: ; preds = %for.cond135.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wfx_tx_queues_get_skb.exit.thread

for.body138.i:                                    ; preds = %for.cond135.i.for.body138.i_crit_edge, %for.cond135.preheader.i.for.body138.i_crit_edge
  %i.2235.i = phi i32 [ %inc148.i, %for.cond135.i.for.body138.i_crit_edge ], [ 0, %for.cond135.preheader.i.for.body138.i_crit_edge ]
  %arrayidx139.i = getelementptr [8 x ptr], ptr %queues.i, i32 0, i32 %i.2235.i
  %46 = ptrtoint ptr %arrayidx139.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx139.i, align 4
  %call140.i = tail call ptr @skb_dequeue(ptr noundef %47) #10
  %tobool141.not.i = icmp eq ptr %call140.i, null
  br i1 %tobool141.not.i, label %for.cond135.i, label %if.then142.i

if.then142.i:                                     ; preds = %for.body138.i
  call void @__sanitizer_cov_trace_pc() #12
  %pending_frames144.i = getelementptr inbounds %struct.wfx_queue, ptr %47, i32 0, i32 2
  %call.i.i199.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending_frames144.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %pending_frames144.i, i32 1, i32 3, i32 1) #10
  %48 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pending_frames144.i, ptr %pending_frames144.i, i32 1, ptr elementtype(i32) %pending_frames144.i) #10, !srcloc !52
  br label %if.end4

wfx_tx_queues_get_skb.exit.thread:                ; preds = %for.cond135.i.wfx_tx_queues_get_skb.exit.thread_crit_edge, %for.cond135.preheader.i.wfx_tx_queues_get_skb.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %queues.i) #10
  br label %cleanup

if.end4:                                          ; preds = %if.then142.i, %if.end119.i
  %.lcssa.sink.i = phi ptr [ %47, %if.then142.i ], [ %35, %if.end119.i ]
  %retval.0.ph.i = phi ptr [ %call140.i, %if.then142.i ], [ %call55.i, %if.end119.i ]
  tail call fastcc void @trace_queues_stats(ptr noundef %wdev, ptr noundef %.lcssa.sink.i) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %queues.i) #10
  %tx_pending = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 16
  tail call void @skb_queue_tail(ptr noundef %tx_pending, ptr noundef nonnull %retval.0.ph.i) #10
  %tx_dequeue = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 17
  tail call void @__wake_up(ptr noundef %tx_dequeue, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  %rate_driver_data.i = getelementptr inbounds %struct.sk_buff, ptr %retval.0.ph.i, i32 0, i32 3, i32 24
  %call6 = tail call i64 @ktime_get() #10
  %49 = ptrtoint ptr %rate_driver_data.i to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %call6, ptr %rate_driver_data.i, align 8
  %data = getelementptr inbounds %struct.sk_buff, ptr %retval.0.ph.i, i32 0, i32 19
  %50 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %wfx_tx_queues_get_skb.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %51, %if.end4 ], [ null, %entry.cleanup_crit_edge ], [ null, %wfx_tx_queues_get_skb.exit.thread ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_queues_stats(ptr noundef %wdev, ptr noundef %elected_queue) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_queues_stats, i32 0, i32 1), ptr blockaddress(@trace_queues_stats, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !62

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !42) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !60

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !42) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !66
  %call42 = tail call i32 @__traceiter_queues_stats(ptr noundef null, ptr noundef %wdev, ptr noundef %elected_queue) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !67
  %13 = tail call i32 @llvm.read_register.i32(metadata !42) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !42) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !60

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !42) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !68
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_queues_stats, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_queues_stats, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_queues_stats.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_queues_stats.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 491, ptr noundef nonnull @.str.20) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !69
  %31 = tail call i32 @llvm.read_register.i32(metadata !42) #10
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
declare dso_local i32 @__traceiter_queues_stats(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !10, !12, !13, !15, !17, !18, !19, !20, !21, !23, !24, !25, !27, !28, !30, !31, !32, !33, !34, !36, !37, !38, !39, !41}
!llvm.named.register.sp = !{!42}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/wfx/queue.c", i32 26, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/staging/wfx/queue.c", i32 45, i32 3}
!5 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !4, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @wfx_tx_flush._entry, !4, !"_entry", i1 false, i1 false}
!9 = !{ptr @wfx_tx_flush._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/staging/wfx/queue.c", i32 133, i32 2}
!12 = !{ptr @__func__.wfx_pending_drop, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/staging/wfx/queue.c", i32 174, i32 2}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/staging/wfx/queue.c", i32 193, i32 5}
!17 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @wfx_pending_dump_old_frames._entry, !16, !"_entry", i1 false, i1 false}
!20 = !{ptr @wfx_pending_dump_old_frames._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/staging/wfx/queue.c", i32 197, i32 4}
!23 = !{ptr @wfx_pending_dump_old_frames._entry.11, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @wfx_pending_dump_old_frames._entry_ptr.13, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @skb_queue_head_init.__key, !26, !"__key", i1 false, i1 false}
!26 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!27 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/staging/wfx/wfx.h", i32 98, i32 3}
!30 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.18, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @wdev_to_wvif.__UNIQUE_ID_ddebug348, !29, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!34 = distinct !{null, !35, !"__already_done", i1 false, i1 false}
!35 = !{!"../drivers/staging/wfx/traces.h", i32 442, i32 1}
!36 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!37 = distinct !{null, !35, !"__warned", i1 false, i1 false}
!38 = !{ptr @.str.20, !35, !"<string literal>", i1 false, i1 false}
!39 = distinct !{null, !40, !"__already_done", i1 false, i1 false}
!40 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!41 = !{ptr @.str.21, !40, !"<string literal>", i1 false, i1 false}
!42 = !{!"sp"}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 1, !"min_enum_size", i32 4}
!45 = !{i32 8, !"branch-target-enforcement", i32 0}
!46 = !{i32 8, !"sign-return-address", i32 0}
!47 = !{i32 8, !"sign-return-address-all", i32 0}
!48 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!49 = !{i32 7, !"uwtable", i32 1}
!50 = !{i32 7, !"frame-pointer", i32 2}
!51 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!52 = !{i64 2148425410, i64 2148425436, i64 2148425465, i64 2148425499, i64 2148425530, i64 2148425553}
!53 = !{i64 2148513862}
!54 = !{i64 2148428595, i64 2148428627, i64 2148428656, i64 2148428690, i64 2148428721, i64 2148428744}
!55 = !{i64 2148514091}
!56 = !{!"branch_weights", i32 1, i32 2000}
!57 = !{i8 0, i8 2}
!58 = !{i64 778159, i64 778186}
!59 = !{i64 778854, i64 778881, i64 778914, i64 778935, i64 778962, i64 778988}
!60 = !{!"branch_weights", i32 2000, i32 1}
!61 = !{!"branch_weights", i32 2146410443, i32 1073205}
!62 = !{i64 2148238803, i64 2148238808, i64 2148238821, i64 2148238865, i64 2148238899, i64 2148238920}
!63 = !{i64 875192, i64 875209}
!64 = !{i64 2148427875, i64 2148427901, i64 2148427930, i64 2148427964, i64 2148427995, i64 2148428018}
!65 = !{i64 778446, i64 778473, i64 778495, i64 778523}
!66 = !{i64 2157772700}
!67 = !{i64 2157772925}
!68 = !{i64 2149261483}
!69 = !{i64 2149262519}
