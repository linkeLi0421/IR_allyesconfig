; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/mediatek/mt7601u/dma.c_pt.bc'
source_filename = "../drivers/net/wireless/mediatek/mt7601u/dma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.91 }
%struct.atomic_t = type { i32 }
%union.anon.91 = type { i32 }
%struct.cpumask = type { [1 x i32] }
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
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mt76_wcid = type { i8, i8, i16, i8, i8 }
%struct.mt7601u_dev = type { ptr, ptr, i32, %struct.mutex, [4 x i32], %struct.cfg80211_chan_def, ptr, %struct.mt7601u_mcu, %struct.delayed_work, %struct.delayed_work, ptr, %struct.delayed_work, ptr, [128 x ptr], %struct.spinlock, %struct.spinlock, ptr, [6 x i8], ptr, %struct.mutex, ptr, %struct.mutex, %struct.mutex, i32, i32, [8 x i8], [8 x i8], i16, i16, %struct.spinlock, %struct.tasklet_struct, ptr, %struct.sk_buff_head, %struct.atomic_t, %struct.spinlock, %struct.tasklet_struct, %struct.mt7601u_rx_queue, %struct.spinlock, [6 x i8], i8, i8, %struct.ewma_rssi, i8, %struct.mt7601u_freq_cal, i8, i8, i8, i16, i32, i32, i32, i32, i8, i8, i8, i8, [2 x i32], %struct.mac_stats }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.mt7601u_mcu = type { %struct.mutex, i8, %struct.mt7601u_dma_buf, %struct.completion }
%struct.mt7601u_dma_buf = type { ptr, ptr, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
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
%struct.mt7601u_tx_queue = type { ptr, [64 x %struct.mt7601u_dma_buf_tx], i32, i32, i32, i32, i32 }
%struct.mt7601u_dma_buf_tx = type { ptr, ptr }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.kref = type { %struct.refcount_struct }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon.17, %union.anon.86, %struct.atomic_t, i32 }
%union.anon.17 = type { %struct.anon.18 }
%struct.anon.18 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.86 = type { %struct.atomic_t }

@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/net/wireless/mediatek/mt7601u/dma.c\00", [52 x i8] zeroinitializer }, align 32
@mt7601u_dma_submit_tx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 334, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Error: TX urb submit failed:%d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mt7601u_dma_submit_tx\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mt7601u_dma_submit_tx._entry_ptr = internal global ptr @mt7601u_dma_submit_tx._entry, section ".printk_index", align 4
@mt7601u_complete_tx._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.mt7601u_complete_tx = private unnamed_addr constant [20 x i8] c"mt7601u_complete_tx\00", align 1
@mt7601u_complete_tx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @__func__.mt7601u_complete_tx, ptr @.str, i32 253, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tx urb failed: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@mt7601u_complete_tx._entry_ptr = internal global ptr @mt7601u_complete_tx._entry, section ".printk_index", align 4
@mt7601u_complete_tx.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TX urb mismatch\00", [16 x i8] zeroinitializer }, align 32
@__tracepoint_mt_tx_dma_done = external dso_local global %struct.tracepoint, align 4
@.str.8 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/net/wireless/mediatek/mt7601u/trace.h\00", [50 x i8] zeroinitializer }, align 32
@trace_mt_tx_dma_done.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@mt7601u_rx_next_seg_len.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@mt7601u_rx_next_seg_len.__already_done.12 = internal unnamed_addr global i1 false, section ".data.once", align 1
@mt7601u_rx_next_seg_len.__already_done.13 = internal unnamed_addr global i1 false, section ".data.once", align 1
@mt7601u_rx_process_seg.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@mt7601u_rx_process_seg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str, i32 98, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Error: RXWI zero fields are set\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mt7601u_rx_process_seg\00", [41 x i8] zeroinitializer }, align 32
@mt7601u_rx_process_seg._entry_ptr = internal global ptr @mt7601u_rx_process_seg._entry, section ".printk_index", align 4
@mt7601u_rx_process_seg.__print_once.16 = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@mt7601u_rx_process_seg._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.15, ptr @.str, i32 100, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Error: RX path seen a non-pkt urb\0A\00", [61 x i8] zeroinitializer }, align 32
@mt7601u_rx_process_seg._entry_ptr.19 = internal global ptr @mt7601u_rx_process_seg._entry.17, section ".printk_index", align 4
@__tracepoint_mt_rx = external dso_local global %struct.tracepoint, align 4
@trace_mt_rx.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@mt7601u_rx_skb_from_seg._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.mt7601u_rx_skb_from_seg = private unnamed_addr constant [24 x i8] c"mt7601u_rx_skb_from_seg\00", align 1
@mt7601u_rx_skb_from_seg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @__func__.mt7601u_rx_skb_from_seg, ptr @.str, i32 71, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Error: incorrect frame len:%u hdr:%u\0A\00", [58 x i8] zeroinitializer }, align 32
@mt7601u_rx_skb_from_seg._entry_ptr = internal global ptr @mt7601u_rx_skb_from_seg._entry, section ".printk_index", align 4
@.str.21 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.24 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__tracepoint_mt_rx_dma_aggr = external dso_local global %struct.tracepoint, align 4
@trace_mt_rx_dma_aggr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.25 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@mt7601u_submit_rx_buf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str, i32 413, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Error: submit RX URB failed:%d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mt7601u_submit_rx_buf\00", [42 x i8] zeroinitializer }, align 32
@mt7601u_submit_rx_buf._entry_ptr = internal global ptr @mt7601u_submit_rx_buf._entry, section ".printk_index", align 4
@mt7601u_complete_rx._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.mt7601u_complete_rx = private unnamed_addr constant [20 x i8] c"mt7601u_complete_rx\00", align 1
@mt7601u_complete_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @__func__.mt7601u_complete_rx, ptr @.str, i32 207, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rx urb failed: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@mt7601u_complete_rx._entry_ptr = internal global ptr @mt7601u_complete_rx._entry, section ".printk_index", align 4
@mt7601u_complete_rx.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RX urb mismatch\00", [16 x i8] zeroinitializer }, align 32
@__tracepoint_mt_submit_urb = external dso_local global %struct.tracepoint, align 4
@trace_mt_submit_urb.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@__sancov_gen_cov_switch_values.30 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967225, i64 4294967294]
@__sancov_gen_cov_switch_values.31 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967225, i64 4294967294]
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 317, i32 6 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 333, i32 4 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 252, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 260, i32 6 }
@___asan_gen_.69 = private unnamed_addr constant [49 x i8] c"../drivers/net/wireless/mediatek/mt7601u/trace.h\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 302, i32 1 }
@___asan_gen_.72 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 108, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 98, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 100, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 70, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 1160, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 695, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 723, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 717, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 413, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.125 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 206, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.132 = private constant [47 x i8] c"../drivers/net/wireless/mediatek/mt7601u/dma.c\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 214, i32 6 }
@llvm.compiler.used = appending global [41 x ptr] [ptr @mt7601u_complete_rx._entry, ptr @mt7601u_complete_rx._entry_ptr, ptr @mt7601u_complete_tx._entry, ptr @mt7601u_complete_tx._entry_ptr, ptr @mt7601u_dma_submit_tx._entry, ptr @mt7601u_dma_submit_tx._entry_ptr, ptr @mt7601u_rx_process_seg._entry, ptr @mt7601u_rx_process_seg._entry.17, ptr @mt7601u_rx_process_seg._entry_ptr, ptr @mt7601u_rx_process_seg._entry_ptr.19, ptr @mt7601u_rx_skb_from_seg._entry, ptr @mt7601u_rx_skb_from_seg._entry_ptr, ptr @mt7601u_submit_rx_buf._entry, ptr @mt7601u_submit_rx_buf._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @mt7601u_complete_tx._rs, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.14, ptr @.str.15, ptr @.str.18, ptr @mt7601u_rx_skb_from_seg._rs, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @mt7601u_complete_rx._rs, ptr @.str.28, ptr @.str.29], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7601u_dma_submit_tx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7601u_complete_tx._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7601u_complete_tx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7601u_rx_process_seg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7601u_rx_process_seg._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7601u_rx_skb_from_seg._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7601u_rx_skb_from_seg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7601u_submit_rx_buf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7601u_complete_rx._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7601u_complete_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7601u_dma_enqueue_tx(ptr noundef %dev, ptr noundef %skb, ptr nocapture noundef readonly %wcid, i32 noundef %hw_q) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %hw_q to i8
  %add.i = add i8 %conv, 1
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %add.i)
  %cmp.i = icmp eq i8 %add.i, 5
  %..i = select i1 %cmp.i, i32 0, i32 67108864
  %hw_key_idx = getelementptr inbounds %struct.mt76_wcid, ptr %wcid, i32 0, i32 1
  %2 = ptrtoint ptr %hw_key_idx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hw_key_idx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %cmp = icmp eq i8 %3, -1
  %spec.select = select i1 %cmp, i32 17301504, i32 524288
  %sub18.i.i = add i32 %1, 65535
  %or19.i.i = or i32 %sub18.i.i, 3
  %add20.i.i = add i32 %or19.i.i, 1
  %and21.i.i = and i32 %add20.i.i, 65532
  %or.i = or i32 %and21.i.i, %..i
  %or22.i.i = or i32 %or.i, %spec.select
  %call.i.i = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 4) #9
  %4 = tail call i32 @llvm.bswap.i32(i32 %or22.i.i) #9
  %5 = ptrtoint ptr %call.i.i to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 %4, ptr %call.i.i, align 1
  %6 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len.i.i, align 4
  %sub74.i.i = add i32 %7, -1
  %or75.i.i = or i32 %sub74.i.i, 3
  %add77.i.i = add i32 %or75.i.i, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %add77.i.i, i32 %7)
  %cmp.i.i.i.i = icmp ugt i32 %add77.i.i, %7
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %entry.if.end6_crit_edge, !prof !96

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then.i.i.i.i:                                  ; preds = %entry
  %sub.i.i.i.i = sub i32 %add77.i.i, %7
  %call.i.i.i.i = tail call i32 @__skb_pad(ptr noundef %skb, i32 noundef %sub.i.i.i.i, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool4.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.i.i.cleanup_crit_edge

if.then.i.i.i.i.cleanup_crit_edge:                ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i.i.i:                                   ; preds = %if.then.i.i.i.i
  %data_len.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %8 = ptrtoint ptr %data_len.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data_len.i.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.i.not.i.i.i.i.i = icmp eq i32 %9, 0
  br i1 %tobool.i.not.i.i.i.i.i, label %__skb_put.exit.i.i.i.i, label %do.body3.i.i.i.i.i, !prof !97

do.body3.i.i.i.i.i:                               ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #9, !srcloc !98
  unreachable

__skb_put.exit.i.i.i.i:                           ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %tail.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %10 = ptrtoint ptr %tail.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tail.i.i.i.i.i, align 8
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %11, i32 %sub.i.i.i.i
  store ptr %add.ptr.i.i.i.i.i, ptr %tail.i.i.i.i.i, align 8
  %12 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len.i.i, align 4
  %add.i.i.i.i.i = add i32 %13, %sub.i.i.i.i
  store i32 %add.i.i.i.i.i, ptr %len.i.i, align 4
  br label %if.end6

if.end6:                                          ; preds = %__skb_put.exit.i.i.i.i, %entry.if.end6_crit_edge
  %dev.i.i = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 1
  %14 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i.i, align 4
  %parent.i.i.i = getelementptr i8, ptr %15, i32 136
  %16 = ptrtoint ptr %parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %parent.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %17, i32 -128
  %idxprom.i = zext i8 %add.i to i32
  %arrayidx.i = getelementptr %struct.mt7601u_dev, ptr %dev, i32 0, i32 25, i32 %idxprom.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i, align 1
  %20 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr.i.i.i, align 8
  %tx_q.i = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 31
  %22 = ptrtoint ptr %tx_q.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tx_q.i, align 4
  %tx_lock.i = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 29
  %call7.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_lock.i) #9
  %entries.i = getelementptr %struct.mt7601u_tx_queue, ptr %23, i32 %idxprom.i, i32 4
  %24 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %entries.i, align 4
  %used.i = getelementptr %struct.mt7601u_tx_queue, ptr %23, i32 %idxprom.i, i32 5
  %26 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %used.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp10.not.i = icmp ugt i32 %25, %27
  br i1 %cmp10.not.i, label %if.end36.i, label %do.end21.i, !prof !97

do.end21.i:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 317, i32 noundef 9, ptr noundef null) #9
  br label %if.then9

if.end36.i:                                       ; preds = %if.end6
  %arrayidx3.i = getelementptr %struct.mt7601u_tx_queue, ptr %23, i32 %idxprom.i
  %shl.i.i = shl i32 %21, 8
  %conv.i = zext i8 %19 to i32
  %shl1.i.i = shl nuw nsw i32 %conv.i, 15
  %or.i.i21 = or i32 %shl.i.i, %shl1.i.i
  %or.i22 = or i32 %or.i.i21, -1073741824
  %end.i = getelementptr %struct.mt7601u_tx_queue, ptr %23, i32 %idxprom.i, i32 3
  %28 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %end.i, align 4
  %arrayidx38.i = getelementptr %struct.mt7601u_tx_queue, ptr %23, i32 %idxprom.i, i32 1, i32 %29
  %30 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx38.i, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %32 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data.i, align 4
  %34 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %len.i.i, align 4
  %dev1.i.i = getelementptr inbounds %struct.urb, ptr %31, i32 0, i32 8
  %36 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %add.ptr.i.i.i, ptr %dev1.i.i, align 4
  %pipe2.i.i = getelementptr inbounds %struct.urb, ptr %31, i32 0, i32 10
  %37 = ptrtoint ptr %pipe2.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %or.i22, ptr %pipe2.i.i, align 4
  %transfer_buffer3.i.i = getelementptr inbounds %struct.urb, ptr %31, i32 0, i32 14
  %38 = ptrtoint ptr %transfer_buffer3.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %33, ptr %transfer_buffer3.i.i, align 4
  %transfer_buffer_length.i.i = getelementptr inbounds %struct.urb, ptr %31, i32 0, i32 19
  %39 = ptrtoint ptr %transfer_buffer_length.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %35, ptr %transfer_buffer_length.i.i, align 4
  %complete.i.i = getelementptr inbounds %struct.urb, ptr %31, i32 0, i32 28
  %40 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @mt7601u_complete_tx, ptr %complete.i.i, align 4
  %context4.i.i = getelementptr inbounds %struct.urb, ptr %31, i32 0, i32 27
  %41 = ptrtoint ptr %context4.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %arrayidx3.i, ptr %context4.i.i, align 4
  %42 = load ptr, ptr %arrayidx38.i, align 4
  %call40.i = tail call i32 @usb_submit_urb(ptr noundef %42, i32 noundef 2592) #9
  %43 = zext i32 %call40.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call40.i, label %mt7601u_dma_submit_tx.exit [
    i32 0, label %if.end51.i
    i32 -19, label %if.then45.i
  ]

if.then45.i:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #11
  %state.i = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 1, ptr noundef %state.i) #9
  br label %if.then9

if.end51.i:                                       ; preds = %if.end36.i
  %44 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %end.i, align 4
  %add.i23 = add i32 %45, 1
  %46 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %entries.i, align 4
  %rem.i = urem i32 %add.i23, %47
  store i32 %rem.i, ptr %end.i, align 4
  %48 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %used.i, align 4
  %inc.i = add i32 %49, 1
  store i32 %inc.i, ptr %used.i, align 4
  %skb56.i = getelementptr %struct.mt7601u_tx_queue, ptr %23, i32 %idxprom.i, i32 1, i32 %29, i32 1
  %50 = ptrtoint ptr %skb56.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %skb, ptr %skb56.i, align 4
  %51 = load i32, ptr %used.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %47)
  %cmp59.not.i = icmp ult i32 %51, %47
  br i1 %cmp59.not.i, label %if.end51.i.mt7601u_dma_submit_tx.exit.thread_crit_edge, label %if.then61.i

if.end51.i.mt7601u_dma_submit_tx.exit.thread_crit_edge: ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mt7601u_dma_submit_tx.exit.thread

if.then61.i:                                      ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev, align 8
  %queue_mapping.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %54 = ptrtoint ptr %queue_mapping.i.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %queue_mapping.i.i, align 8
  %conv63.i = zext i16 %55 to i32
  tail call void @ieee80211_stop_queue(ptr noundef %53, i32 noundef %conv63.i) #9
  br label %mt7601u_dma_submit_tx.exit.thread

mt7601u_dma_submit_tx.exit.thread:                ; preds = %if.then61.i, %if.end51.i.mt7601u_dma_submit_tx.exit.thread_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_lock.i, i32 noundef %call7.i) #9
  br label %cleanup

mt7601u_dma_submit_tx.exit:                       ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #11
  %56 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.1, i32 noundef %call40.i) #12
  br label %if.then9

if.then9:                                         ; preds = %mt7601u_dma_submit_tx.exit, %if.then45.i, %do.end21.i
  %ret.0.i32 = phi i32 [ %call40.i, %mt7601u_dma_submit_tx.exit ], [ -19, %if.then45.i ], [ -28, %do.end21.i ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_lock.i, i32 noundef %call7.i) #9
  %58 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev, align 8
  tail call void @ieee80211_free_txskb(ptr noundef %59, ptr noundef %skb) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %mt7601u_dma_submit_tx.exit.thread, %if.then.i.i.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0.i32, %if.then9 ], [ -12, %if.then.i.i.i.i.cleanup_crit_edge ], [ 0, %mt7601u_dma_submit_tx.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_free_txskb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7601u_dma_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_tasklet = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 30
  tail call void @tasklet_setup(ptr noundef %tx_tasklet, ptr noundef nonnull @mt7601u_tx_tasklet) #9
  %rx_tasklet = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 35
  tail call void @tasklet_setup(ptr noundef %rx_tasklet, ptr noundef nonnull @mt7601u_rx_tasklet) #9
  %dev1.i = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1.i, align 4
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 3216, i32 noundef 3520) #9
  %tx_q.i = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 31
  %2 = ptrtoint ptr %tx_q.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call5.i.i.i, ptr %tx_q.i, align 4
  %tobool.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool.not.i, label %entry.err_crit_edge, label %for.body.preheader.i

entry.err_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

for.body.preheader.i:                             ; preds = %entry
  %3 = ptrtoint ptr %call5.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %call5.i.i.i, align 4
  %entries.i.i = getelementptr %struct.mt7601u_tx_queue, ptr %call5.i.i.i, i32 0, i32 4
  %4 = ptrtoint ptr %entries.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 64, ptr %entries.i.i, align 4
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.011.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 64
  br i1 %exitcond.not.i.i, label %for.inc.i, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %for.body.preheader.i
  %i.011.i.i = phi i32 [ 0, %for.body.preheader.i ], [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ]
  %call.i.i = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #9
  %arrayidx.i.i = getelementptr %struct.mt7601u_tx_queue, ptr %call5.i.i.i, i32 0, i32 1, i32 %i.011.i.i
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i.i, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %for.body.i.i.err_crit_edge, label %for.cond.i.i

for.body.i.i.err_crit_edge:                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

for.inc.i:                                        ; preds = %for.cond.i.i
  %6 = ptrtoint ptr %tx_q.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tx_q.i, align 4
  %arrayidx.1.i = getelementptr %struct.mt7601u_tx_queue, ptr %7, i32 1
  %8 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev, ptr %arrayidx.1.i, align 4
  %entries.i.1.i = getelementptr %struct.mt7601u_tx_queue, ptr %7, i32 1, i32 4
  %9 = ptrtoint ptr %entries.i.1.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 64, ptr %entries.i.1.i, align 4
  br label %for.body.i.1.i

for.body.i.1.i:                                   ; preds = %for.cond.i.1.i.for.body.i.1.i_crit_edge, %for.inc.i
  %i.011.i.1.i = phi i32 [ 0, %for.inc.i ], [ %inc.i.1.i, %for.cond.i.1.i.for.body.i.1.i_crit_edge ]
  %call.i.1.i = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #9
  %arrayidx.i.1.i = getelementptr %struct.mt7601u_tx_queue, ptr %7, i32 1, i32 1, i32 %i.011.i.1.i
  %10 = ptrtoint ptr %arrayidx.i.1.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i.1.i, ptr %arrayidx.i.1.i, align 4
  %tobool.not.i.1.i = icmp eq ptr %call.i.1.i, null
  br i1 %tobool.not.i.1.i, label %for.body.i.1.i.err_crit_edge, label %for.cond.i.1.i

for.body.i.1.i.err_crit_edge:                     ; preds = %for.body.i.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

for.cond.i.1.i:                                   ; preds = %for.body.i.1.i
  %inc.i.1.i = add nuw nsw i32 %i.011.i.1.i, 1
  %exitcond.not.i.1.i = icmp eq i32 %inc.i.1.i, 64
  br i1 %exitcond.not.i.1.i, label %for.inc.1.i, label %for.cond.i.1.i.for.body.i.1.i_crit_edge

for.cond.i.1.i.for.body.i.1.i_crit_edge:          ; preds = %for.cond.i.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.1.i

for.inc.1.i:                                      ; preds = %for.cond.i.1.i
  %11 = ptrtoint ptr %tx_q.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tx_q.i, align 4
  %arrayidx.2.i = getelementptr %struct.mt7601u_tx_queue, ptr %12, i32 2
  %13 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %dev, ptr %arrayidx.2.i, align 4
  %entries.i.2.i = getelementptr %struct.mt7601u_tx_queue, ptr %12, i32 2, i32 4
  %14 = ptrtoint ptr %entries.i.2.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 64, ptr %entries.i.2.i, align 4
  br label %for.body.i.2.i

for.body.i.2.i:                                   ; preds = %for.cond.i.2.i.for.body.i.2.i_crit_edge, %for.inc.1.i
  %i.011.i.2.i = phi i32 [ 0, %for.inc.1.i ], [ %inc.i.2.i, %for.cond.i.2.i.for.body.i.2.i_crit_edge ]
  %call.i.2.i = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #9
  %arrayidx.i.2.i = getelementptr %struct.mt7601u_tx_queue, ptr %12, i32 2, i32 1, i32 %i.011.i.2.i
  %15 = ptrtoint ptr %arrayidx.i.2.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i.2.i, ptr %arrayidx.i.2.i, align 4
  %tobool.not.i.2.i = icmp eq ptr %call.i.2.i, null
  br i1 %tobool.not.i.2.i, label %for.body.i.2.i.err_crit_edge, label %for.cond.i.2.i

for.body.i.2.i.err_crit_edge:                     ; preds = %for.body.i.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

for.cond.i.2.i:                                   ; preds = %for.body.i.2.i
  %inc.i.2.i = add nuw nsw i32 %i.011.i.2.i, 1
  %exitcond.not.i.2.i = icmp eq i32 %inc.i.2.i, 64
  br i1 %exitcond.not.i.2.i, label %for.inc.2.i, label %for.cond.i.2.i.for.body.i.2.i_crit_edge

for.cond.i.2.i.for.body.i.2.i_crit_edge:          ; preds = %for.cond.i.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.2.i

for.inc.2.i:                                      ; preds = %for.cond.i.2.i
  %16 = ptrtoint ptr %tx_q.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tx_q.i, align 4
  %arrayidx.3.i = getelementptr %struct.mt7601u_tx_queue, ptr %17, i32 3
  %18 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %dev, ptr %arrayidx.3.i, align 4
  %entries.i.3.i = getelementptr %struct.mt7601u_tx_queue, ptr %17, i32 3, i32 4
  %19 = ptrtoint ptr %entries.i.3.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 64, ptr %entries.i.3.i, align 4
  br label %for.body.i.3.i

for.body.i.3.i:                                   ; preds = %for.cond.i.3.i.for.body.i.3.i_crit_edge, %for.inc.2.i
  %i.011.i.3.i = phi i32 [ 0, %for.inc.2.i ], [ %inc.i.3.i, %for.cond.i.3.i.for.body.i.3.i_crit_edge ]
  %call.i.3.i = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #9
  %arrayidx.i.3.i = getelementptr %struct.mt7601u_tx_queue, ptr %17, i32 3, i32 1, i32 %i.011.i.3.i
  %20 = ptrtoint ptr %arrayidx.i.3.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i.3.i, ptr %arrayidx.i.3.i, align 4
  %tobool.not.i.3.i = icmp eq ptr %call.i.3.i, null
  br i1 %tobool.not.i.3.i, label %for.body.i.3.i.err_crit_edge, label %for.cond.i.3.i

for.body.i.3.i.err_crit_edge:                     ; preds = %for.body.i.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

for.cond.i.3.i:                                   ; preds = %for.body.i.3.i
  %inc.i.3.i = add nuw nsw i32 %i.011.i.3.i, 1
  %exitcond.not.i.3.i = icmp eq i32 %inc.i.3.i, 64
  br i1 %exitcond.not.i.3.i, label %for.inc.3.i, label %for.cond.i.3.i.for.body.i.3.i_crit_edge

for.cond.i.3.i.for.body.i.3.i_crit_edge:          ; preds = %for.cond.i.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.3.i

for.inc.3.i:                                      ; preds = %for.cond.i.3.i
  %21 = ptrtoint ptr %tx_q.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tx_q.i, align 4
  %arrayidx.4.i = getelementptr %struct.mt7601u_tx_queue, ptr %22, i32 4
  %23 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %dev, ptr %arrayidx.4.i, align 4
  %entries.i.4.i = getelementptr %struct.mt7601u_tx_queue, ptr %22, i32 4, i32 4
  %24 = ptrtoint ptr %entries.i.4.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 64, ptr %entries.i.4.i, align 4
  br label %for.body.i.4.i

for.body.i.4.i:                                   ; preds = %for.cond.i.4.i.for.body.i.4.i_crit_edge, %for.inc.3.i
  %i.011.i.4.i = phi i32 [ 0, %for.inc.3.i ], [ %inc.i.4.i, %for.cond.i.4.i.for.body.i.4.i_crit_edge ]
  %call.i.4.i = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #9
  %arrayidx.i.4.i = getelementptr %struct.mt7601u_tx_queue, ptr %22, i32 4, i32 1, i32 %i.011.i.4.i
  %25 = ptrtoint ptr %arrayidx.i.4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i.4.i, ptr %arrayidx.i.4.i, align 4
  %tobool.not.i.4.i = icmp eq ptr %call.i.4.i, null
  br i1 %tobool.not.i.4.i, label %for.body.i.4.i.err_crit_edge, label %for.cond.i.4.i

for.body.i.4.i.err_crit_edge:                     ; preds = %for.body.i.4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

for.cond.i.4.i:                                   ; preds = %for.body.i.4.i
  %inc.i.4.i = add nuw nsw i32 %i.011.i.4.i, 1
  %exitcond.not.i.4.i = icmp eq i32 %inc.i.4.i, 64
  br i1 %exitcond.not.i.4.i, label %for.inc.4.i, label %for.cond.i.4.i.for.body.i.4.i_crit_edge

for.cond.i.4.i.for.body.i.4.i_crit_edge:          ; preds = %for.cond.i.4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.4.i

for.inc.4.i:                                      ; preds = %for.cond.i.4.i
  %26 = ptrtoint ptr %tx_q.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tx_q.i, align 4
  %arrayidx.5.i = getelementptr %struct.mt7601u_tx_queue, ptr %27, i32 5
  %28 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %dev, ptr %arrayidx.5.i, align 4
  %entries.i.5.i = getelementptr %struct.mt7601u_tx_queue, ptr %27, i32 5, i32 4
  %29 = ptrtoint ptr %entries.i.5.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 64, ptr %entries.i.5.i, align 4
  br label %for.body.i.5.i

for.body.i.5.i:                                   ; preds = %for.cond.i.5.i.for.body.i.5.i_crit_edge, %for.inc.4.i
  %i.011.i.5.i = phi i32 [ 0, %for.inc.4.i ], [ %inc.i.5.i, %for.cond.i.5.i.for.body.i.5.i_crit_edge ]
  %call.i.5.i = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #9
  %arrayidx.i.5.i = getelementptr %struct.mt7601u_tx_queue, ptr %27, i32 5, i32 1, i32 %i.011.i.5.i
  %30 = ptrtoint ptr %arrayidx.i.5.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i.5.i, ptr %arrayidx.i.5.i, align 4
  %tobool.not.i.5.i = icmp eq ptr %call.i.5.i, null
  br i1 %tobool.not.i.5.i, label %for.body.i.5.i.err_crit_edge, label %for.cond.i.5.i

for.body.i.5.i.err_crit_edge:                     ; preds = %for.body.i.5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

for.cond.i.5.i:                                   ; preds = %for.body.i.5.i
  %inc.i.5.i = add nuw nsw i32 %i.011.i.5.i, 1
  %exitcond.not.i.5.i = icmp eq i32 %inc.i.5.i, 64
  br i1 %exitcond.not.i.5.i, label %if.end, label %for.cond.i.5.i.for.body.i.5.i_crit_edge

for.cond.i.5.i.for.body.i.5.i_crit_edge:          ; preds = %for.cond.i.5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.5.i

if.end:                                           ; preds = %for.cond.i.5.i
  %rx_q.i = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 36
  %31 = call ptr @memset(ptr %rx_q.i, i32 0, i32 148)
  %32 = ptrtoint ptr %rx_q.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %dev, ptr %rx_q.i, align 8
  %entries.i = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 36, i32 4
  %33 = ptrtoint ptr %entries.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 16, ptr %entries.i, align 4
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.030.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %if.end4, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end
  %i.030.i = phi i32 [ 0, %if.end ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %call.i = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #9
  %arrayidx.i = getelementptr %struct.mt7601u_dev, ptr %dev, i32 0, i32 36, i32 1, i32 %i.030.i
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call.i, ptr %arrayidx.i, align 4
  %call38.i.i.i.i.i = tail call ptr @__alloc_pages(i32 noundef 404000, i32 noundef 3, i32 noundef 0, ptr noundef null) #9
  %p.i = getelementptr %struct.mt7601u_dev, ptr %dev, i32 0, i32 36, i32 1, i32 %i.030.i, i32 1
  %35 = ptrtoint ptr %p.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call38.i.i.i.i.i, ptr %p.i, align 4
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i17 = icmp eq ptr %37, null
  %tobool17.not.i = icmp eq ptr %call38.i.i.i.i.i, null
  %or.cond.i = select i1 %tobool.not.i17, i1 true, i1 %tobool17.not.i
  br i1 %or.cond.i, label %for.body.i.err_crit_edge, label %for.cond.i

for.body.i.err_crit_edge:                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end4:                                          ; preds = %for.cond.i
  %38 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %entries.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp8.not.i = icmp eq i32 %39, 0
  br i1 %cmp8.not.i, label %if.end4.cleanup_crit_edge, label %for.body.lr.ph.i

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.end4
  %in_eps.i.i = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 26
  br label %for.body.i24

for.cond.i21:                                     ; preds = %for.body.i24
  %inc.i20 = add nuw i32 %i.09.i, 1
  %40 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %entries.i, align 4
  %cmp.i = icmp ult i32 %inc.i20, %41
  br i1 %cmp.i, label %for.cond.i21.for.body.i24_crit_edge, label %for.cond.i21.cleanup_crit_edge

for.cond.i21.cleanup_crit_edge:                   ; preds = %for.cond.i21
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.i21.for.body.i24_crit_edge:              ; preds = %for.cond.i21
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i24

for.body.i24:                                     ; preds = %for.cond.i21.for.body.i24_crit_edge, %for.body.lr.ph.i
  %i.09.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i20, %for.cond.i21.for.body.i24_crit_edge ]
  %arrayidx.i22 = getelementptr %struct.mt7601u_dev, ptr %dev, i32 0, i32 36, i32 1, i32 %i.09.i
  %42 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev1.i, align 4
  %parent.i.i.i.i = getelementptr i8, ptr %43, i32 136
  %44 = ptrtoint ptr %parent.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %parent.i.i.i.i, align 8
  %add.ptr.i.i.i.i = getelementptr i8, ptr %45, i32 -128
  %p.i.i = getelementptr %struct.mt7601u_dev, ptr %dev, i32 0, i32 36, i32 1, i32 %i.09.i, i32 1
  %46 = ptrtoint ptr %p.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %p.i.i, align 4
  %call1.i.i = tail call ptr @page_address(ptr noundef %47) #9
  %48 = ptrtoint ptr %in_eps.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %in_eps.i.i, align 4
  %conv.i.i = zext i8 %49 to i32
  %50 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %add.ptr.i.i.i.i, align 8
  %shl.i.i.i = shl i32 %51, 8
  %shl1.i.i.i = shl nuw nsw i32 %conv.i.i, 15
  %or.i.i.i = or i32 %shl1.i.i.i, %shl.i.i.i
  %or3.i.i = or i32 %or.i.i.i, -1073741696
  %52 = ptrtoint ptr %arrayidx.i22 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx.i22, align 4
  %dev1.i.i.i = getelementptr inbounds %struct.urb, ptr %53, i32 0, i32 8
  %54 = ptrtoint ptr %dev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %add.ptr.i.i.i.i, ptr %dev1.i.i.i, align 4
  %pipe2.i.i.i = getelementptr inbounds %struct.urb, ptr %53, i32 0, i32 10
  %55 = ptrtoint ptr %pipe2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %or3.i.i, ptr %pipe2.i.i.i, align 4
  %transfer_buffer3.i.i.i = getelementptr inbounds %struct.urb, ptr %53, i32 0, i32 14
  %56 = ptrtoint ptr %transfer_buffer3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call1.i.i, ptr %transfer_buffer3.i.i.i, align 4
  %transfer_buffer_length.i.i.i = getelementptr inbounds %struct.urb, ptr %53, i32 0, i32 19
  %57 = ptrtoint ptr %transfer_buffer_length.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 32768, ptr %transfer_buffer_length.i.i.i, align 4
  %complete.i.i.i = getelementptr inbounds %struct.urb, ptr %53, i32 0, i32 28
  %58 = ptrtoint ptr %complete.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @mt7601u_complete_rx, ptr %complete.i.i.i, align 4
  %context4.i.i.i = getelementptr inbounds %struct.urb, ptr %53, i32 0, i32 27
  %59 = ptrtoint ptr %context4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %dev, ptr %context4.i.i.i, align 4
  %60 = load ptr, ptr %arrayidx.i22, align 4
  tail call fastcc void @trace_mt_submit_urb(ptr noundef %dev, ptr noundef %60) #9
  %61 = ptrtoint ptr %arrayidx.i22 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx.i22, align 4
  %call6.i.i = tail call i32 @usb_submit_urb(ptr noundef %62, i32 noundef 3264) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool.not.i.i23 = icmp eq i32 %call6.i.i, 0
  br i1 %tobool.not.i.i23, label %for.cond.i21, label %mt7601u_submit_rx.exit

mt7601u_submit_rx.exit:                           ; preds = %for.body.i24
  call void @__sanitizer_cov_trace_pc() #11
  %63 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev1.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.26, i32 noundef %call6.i.i) #12
  br label %err

err:                                              ; preds = %mt7601u_submit_rx.exit, %for.body.i.err_crit_edge, %for.body.i.5.i.err_crit_edge, %for.body.i.4.i.err_crit_edge, %for.body.i.3.i.err_crit_edge, %for.body.i.2.i.err_crit_edge, %for.body.i.1.i.err_crit_edge, %for.body.i.i.err_crit_edge, %entry.err_crit_edge
  %ret.0 = phi i32 [ %call6.i.i, %mt7601u_submit_rx.exit ], [ -12, %entry.err_crit_edge ], [ -12, %for.body.i.err_crit_edge ], [ -12, %for.body.i.5.i.err_crit_edge ], [ -12, %for.body.i.4.i.err_crit_edge ], [ -12, %for.body.i.3.i.err_crit_edge ], [ -12, %for.body.i.2.i.err_crit_edge ], [ -12, %for.body.i.1.i.err_crit_edge ], [ -12, %for.body.i.i.err_crit_edge ]
  tail call void @mt7601u_dma_cleanup(ptr noundef %dev)
  br label %cleanup

cleanup:                                          ; preds = %err, %for.cond.i21.cleanup_crit_edge, %if.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err ], [ 0, %if.end4.cleanup_crit_edge ], [ 0, %for.cond.i21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7601u_tx_tasklet(ptr noundef %t) #0 align 64 {
entry:
  %skbs = alloca %struct.sk_buff_head, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -1596
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %skbs) #9
  %0 = getelementptr inbounds i8, ptr %skbs, i32 12
  %1 = call ptr @memset(ptr %0, i32 255, i32 44)
  %2 = ptrtoint ptr %skbs to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %skbs, ptr %skbs, align 4
  %prev.i = getelementptr inbounds %struct.anon.62, ptr %skbs, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %skbs, ptr %prev.i, align 4
  %qlen.i = getelementptr inbounds %struct.sk_buff_head, ptr %skbs, i32 0, i32 1
  %4 = ptrtoint ptr %qlen.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %qlen.i, align 4
  %tx_lock = getelementptr i8, ptr %t, i32 -44
  %call3 = call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_lock) #9
  %state = getelementptr i8, ptr %t, i32 -1588
  call void @_set_bit(i32 noundef 6, ptr noundef %state) #9
  %call7 = call i32 @_test_and_set_bit(i32 noundef 5, ptr noundef %state) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %stat_wq = getelementptr i8, ptr %t, i32 -1076
  %5 = ptrtoint ptr %stat_wq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %stat_wq, align 8
  %stat_work = getelementptr i8, ptr %t, i32 -1072
  %call.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %stat_work, i32 noundef 1) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tx_skb_done = getelementptr i8, ptr %t, i32 28
  %7 = ptrtoint ptr %tx_skb_done to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tx_skb_done, align 4
  %cmp.i.not.i = icmp eq ptr %8, %tx_skb_done
  br i1 %cmp.i.not.i, label %if.end.skb_queue_splice_init.exit_crit_edge, label %if.then.i

if.end.skb_queue_splice_init.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_queue_splice_init.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %skbs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %skbs, align 4
  %prev2.i.i = getelementptr i8, ptr %t, i32 32
  %11 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev2.i.i, align 4
  %prev5.i.i = getelementptr inbounds %struct.anon.41, ptr %8, i32 0, i32 1
  %13 = ptrtoint ptr %prev5.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %skbs, ptr %prev5.i.i, align 4
  store volatile ptr %8, ptr %skbs, align 8
  %14 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %10, ptr %12, align 8
  %prev35.i.i = getelementptr inbounds %struct.anon.41, ptr %10, i32 0, i32 1
  %15 = ptrtoint ptr %prev35.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %12, ptr %prev35.i.i, align 4
  %qlen.i21 = getelementptr i8, ptr %t, i32 36
  %16 = ptrtoint ptr %qlen.i21 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %qlen.i21, align 4
  %18 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %qlen.i, align 4
  %add.i = add i32 %19, %17
  store i32 %add.i, ptr %qlen.i, align 4
  %20 = ptrtoint ptr %tx_skb_done to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %tx_skb_done, ptr %tx_skb_done, align 4
  store ptr %tx_skb_done, ptr %prev2.i.i, align 4
  store i32 0, ptr %qlen.i21, align 4
  br label %skb_queue_splice_init.exit

skb_queue_splice_init.exit:                       ; preds = %if.then.i, %if.end.skb_queue_splice_init.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_lock, i32 noundef %call3) #9
  %21 = ptrtoint ptr %skbs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %skbs, align 4
  %cmp.i23 = icmp eq ptr %22, %skbs
  br i1 %cmp.i23, label %skb_queue_splice_init.exit.while.end_crit_edge, label %skb_queue_splice_init.exit.while.body_crit_edge

skb_queue_splice_init.exit.while.body_crit_edge:  ; preds = %skb_queue_splice_init.exit
  br label %while.body

skb_queue_splice_init.exit.while.end_crit_edge:   ; preds = %skb_queue_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %__skb_dequeue.exit.while.body_crit_edge, %skb_queue_splice_init.exit.while.body_crit_edge
  %23 = phi ptr [ %33, %__skb_dequeue.exit.while.body_crit_edge ], [ %22, %skb_queue_splice_init.exit.while.body_crit_edge ]
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %while.body.__skb_dequeue.exit_crit_edge, label %if.then.i22

while.body.__skb_dequeue.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %__skb_dequeue.exit

if.then.i22:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %qlen.i, align 4
  %sub.i.i = add i32 %25, -1
  store volatile i32 %sub.i.i, ptr %qlen.i, align 4
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %23, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.41, ptr %23, i32 0, i32 1
  %28 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %23, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.41, ptr %27, i32 0, i32 1
  %30 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %29, ptr %prev17.i.i, align 4
  %31 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %27, ptr %29, align 8
  br label %__skb_dequeue.exit

__skb_dequeue.exit:                               ; preds = %if.then.i22, %while.body.__skb_dequeue.exit_crit_edge
  call void @mt7601u_tx_status(ptr noundef %add.ptr, ptr noundef %23) #9
  %32 = ptrtoint ptr %skbs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %skbs, align 4
  %cmp.i = icmp eq ptr %33, %skbs
  br i1 %cmp.i, label %__skb_dequeue.exit.while.end_crit_edge, label %__skb_dequeue.exit.while.body_crit_edge

__skb_dequeue.exit.while.body_crit_edge:          ; preds = %__skb_dequeue.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

__skb_dequeue.exit.while.end_crit_edge:           ; preds = %__skb_dequeue.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %__skb_dequeue.exit.while.end_crit_edge, %skb_queue_splice_init.exit.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %skbs) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7601u_rx_tasklet(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -1728
  %rx_lock.i = getelementptr i8, ptr %t, i32 -44
  %call2.i13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rx_lock.i) #9
  %pending.i = getelementptr i8, ptr %t, i32 168
  %0 = ptrtoint ptr %pending.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pending.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i14 = icmp eq i32 %1, 0
  br i1 %tobool.not.i14, label %entry.mt7601u_rx_get_pending_entry.exit.thread_crit_edge, label %mt7601u_rx_get_pending_entry.exit.lr.ph

entry.mt7601u_rx_get_pending_entry.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %mt7601u_rx_get_pending_entry.exit.thread

mt7601u_rx_get_pending_entry.exit.lr.ph:          ; preds = %entry
  %start.i = getelementptr i8, ptr %t, i32 156
  %entries.i = getelementptr i8, ptr %t, i32 164
  %dev.i.i = getelementptr i8, ptr %t, i32 -1724
  %in_eps.i = getelementptr i8, ptr %t, i32 -188
  br label %mt7601u_rx_get_pending_entry.exit

mt7601u_rx_get_pending_entry.exit.thread:         ; preds = %while.cond.backedge.mt7601u_rx_get_pending_entry.exit.thread_crit_edge, %entry.mt7601u_rx_get_pending_entry.exit.thread_crit_edge
  %call2.i.lcssa = phi i32 [ %call2.i13, %entry.mt7601u_rx_get_pending_entry.exit.thread_crit_edge ], [ %call2.i, %while.cond.backedge.mt7601u_rx_get_pending_entry.exit.thread_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rx_lock.i, i32 noundef %call2.i.lcssa) #9
  br label %while.end

mt7601u_rx_get_pending_entry.exit:                ; preds = %while.cond.backedge.mt7601u_rx_get_pending_entry.exit_crit_edge, %mt7601u_rx_get_pending_entry.exit.lr.ph
  %2 = phi i32 [ %1, %mt7601u_rx_get_pending_entry.exit.lr.ph ], [ %36, %while.cond.backedge.mt7601u_rx_get_pending_entry.exit_crit_edge ]
  %call2.i15 = phi i32 [ %call2.i13, %mt7601u_rx_get_pending_entry.exit.lr.ph ], [ %call2.i, %while.cond.backedge.mt7601u_rx_get_pending_entry.exit_crit_edge ]
  %3 = ptrtoint ptr %start.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %start.i, align 4
  %arrayidx.i = getelementptr %struct.mt7601u_dev, ptr %add.ptr, i32 0, i32 36, i32 1, i32 %4
  %dec.i = add i32 %2, -1
  %5 = ptrtoint ptr %pending.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %dec.i, ptr %pending.i, align 4
  %add.i = add i32 %4, 1
  %6 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %entries.i, align 4
  %rem.i = urem i32 %add.i, %7
  store i32 %rem.i, ptr %start.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rx_lock.i, i32 noundef %call2.i15) #9
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %mt7601u_rx_get_pending_entry.exit.while.end_crit_edge, label %while.body

mt7601u_rx_get_pending_entry.exit.while.end_crit_edge: ; preds = %mt7601u_rx_get_pending_entry.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %mt7601u_rx_get_pending_entry.exit
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %status = getelementptr inbounds %struct.urb, ptr %9, i32 0, i32 12
  %10 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool1.not = icmp eq i32 %11, 0
  br i1 %tobool1.not, label %if.end, label %while.body.while.cond.backedge_crit_edge

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge

if.end:                                           ; preds = %while.body
  tail call fastcc void @mt7601u_rx_process_entry(ptr noundef %add.ptr, ptr noundef nonnull %arrayidx.i)
  %12 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i.i, align 4
  %parent.i.i.i = getelementptr i8, ptr %13, i32 136
  %14 = ptrtoint ptr %parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %parent.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %15, i32 -128
  %p.i = getelementptr inbounds %struct.mt7601u_dma_buf_rx, ptr %arrayidx.i, i32 0, i32 1
  %16 = ptrtoint ptr %p.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %p.i, align 4
  %call1.i = tail call ptr @page_address(ptr noundef %17) #9
  %18 = ptrtoint ptr %in_eps.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %in_eps.i, align 4
  %conv.i = zext i8 %19 to i32
  %20 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr.i.i.i, align 8
  %shl.i.i = shl i32 %21, 8
  %shl1.i.i = shl nuw nsw i32 %conv.i, 15
  %or.i.i = or i32 %shl.i.i, %shl1.i.i
  %or3.i = or i32 %or.i.i, -1073741696
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i, align 4
  %dev1.i.i = getelementptr inbounds %struct.urb, ptr %23, i32 0, i32 8
  %24 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %add.ptr.i.i.i, ptr %dev1.i.i, align 4
  %pipe2.i.i = getelementptr inbounds %struct.urb, ptr %23, i32 0, i32 10
  %25 = ptrtoint ptr %pipe2.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %or3.i, ptr %pipe2.i.i, align 4
  %transfer_buffer3.i.i = getelementptr inbounds %struct.urb, ptr %23, i32 0, i32 14
  %26 = ptrtoint ptr %transfer_buffer3.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call1.i, ptr %transfer_buffer3.i.i, align 4
  %transfer_buffer_length.i.i = getelementptr inbounds %struct.urb, ptr %23, i32 0, i32 19
  %27 = ptrtoint ptr %transfer_buffer_length.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 32768, ptr %transfer_buffer_length.i.i, align 4
  %complete.i.i = getelementptr inbounds %struct.urb, ptr %23, i32 0, i32 28
  %28 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @mt7601u_complete_rx, ptr %complete.i.i, align 4
  %context4.i.i = getelementptr inbounds %struct.urb, ptr %23, i32 0, i32 27
  %29 = ptrtoint ptr %context4.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %add.ptr, ptr %context4.i.i, align 4
  %30 = load ptr, ptr %arrayidx.i, align 4
  tail call fastcc void @trace_mt_submit_urb(ptr noundef %add.ptr, ptr noundef %30) #9
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i, align 4
  %call6.i = tail call i32 @usb_submit_urb(ptr noundef %32, i32 noundef 2592) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool.not.i7 = icmp eq i32 %call6.i, 0
  br i1 %tobool.not.i7, label %if.end.while.cond.backedge_crit_edge, label %do.end.i

if.end.while.cond.backedge_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.26, i32 noundef %call6.i) #12
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %do.end.i, %if.end.while.cond.backedge_crit_edge, %while.body.while.cond.backedge_crit_edge
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rx_lock.i) #9
  %35 = ptrtoint ptr %pending.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pending.i, align 4
  %tobool.not.i = icmp eq i32 %36, 0
  br i1 %tobool.not.i, label %while.cond.backedge.mt7601u_rx_get_pending_entry.exit.thread_crit_edge, label %while.cond.backedge.mt7601u_rx_get_pending_entry.exit_crit_edge

while.cond.backedge.mt7601u_rx_get_pending_entry.exit_crit_edge: ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %mt7601u_rx_get_pending_entry.exit

while.cond.backedge.mt7601u_rx_get_pending_entry.exit.thread_crit_edge: ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %mt7601u_rx_get_pending_entry.exit.thread

while.end:                                        ; preds = %mt7601u_rx_get_pending_entry.exit.while.end_crit_edge, %mt7601u_rx_get_pending_entry.exit.thread
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7601u_dma_cleanup(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %entries.i = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 36, i32 4
  %0 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %entries.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp5.not.i = icmp eq i32 %1, 0
  br i1 %cmp5.not.i, label %entry.mt7601u_kill_rx.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.mt7601u_kill_rx.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %mt7601u_kill_rx.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.06.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mt7601u_dev, ptr %dev, i32 0, i32 36, i32 1, i32 %i.06.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  tail call void @usb_poison_urb(ptr noundef %3) #9
  %inc.i = add nuw i32 %i.06.i, 1
  %4 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %entries.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %5
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.mt7601u_kill_rx.exit_crit_edge

for.body.i.mt7601u_kill_rx.exit_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mt7601u_kill_rx.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

mt7601u_kill_rx.exit:                             ; preds = %for.body.i.mt7601u_kill_rx.exit_crit_edge, %entry.mt7601u_kill_rx.exit_crit_edge
  %rx_tasklet = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 35
  tail call void @tasklet_kill(ptr noundef %rx_tasklet) #9
  %6 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %entries.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp10.not.i = icmp eq i32 %7, 0
  br i1 %cmp10.not.i, label %mt7601u_kill_rx.exit.mt7601u_free_rx.exit_crit_edge, label %mt7601u_kill_rx.exit.for.body.i9_crit_edge

mt7601u_kill_rx.exit.for.body.i9_crit_edge:       ; preds = %mt7601u_kill_rx.exit
  br label %for.body.i9

mt7601u_kill_rx.exit.mt7601u_free_rx.exit_crit_edge: ; preds = %mt7601u_kill_rx.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %mt7601u_free_rx.exit

for.body.i9:                                      ; preds = %for.body.i9.for.body.i9_crit_edge, %mt7601u_kill_rx.exit.for.body.i9_crit_edge
  %i.011.i = phi i32 [ %inc.i7, %for.body.i9.for.body.i9_crit_edge ], [ 0, %mt7601u_kill_rx.exit.for.body.i9_crit_edge ]
  %arrayidx.i6 = getelementptr %struct.mt7601u_dev, ptr %dev, i32 0, i32 36, i32 1, i32 %i.011.i
  %p.i = getelementptr %struct.mt7601u_dev, ptr %dev, i32 0, i32 36, i32 1, i32 %i.011.i, i32 1
  %8 = ptrtoint ptr %p.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %p.i, align 4
  tail call void @__free_pages(ptr noundef %9, i32 noundef 3) #9
  %10 = ptrtoint ptr %arrayidx.i6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i6, align 4
  tail call void @usb_free_urb(ptr noundef %11) #9
  %inc.i7 = add nuw i32 %i.011.i, 1
  %12 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %entries.i, align 4
  %cmp.i8 = icmp ult i32 %inc.i7, %13
  br i1 %cmp.i8, label %for.body.i9.for.body.i9_crit_edge, label %for.body.i9.mt7601u_free_rx.exit_crit_edge

for.body.i9.mt7601u_free_rx.exit_crit_edge:       ; preds = %for.body.i9
  call void @__sanitizer_cov_trace_pc() #11
  br label %mt7601u_free_rx.exit

for.body.i9.for.body.i9_crit_edge:                ; preds = %for.body.i9
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i9

mt7601u_free_rx.exit:                             ; preds = %for.body.i9.mt7601u_free_rx.exit_crit_edge, %mt7601u_kill_rx.exit.mt7601u_free_rx.exit_crit_edge
  %tx_q.i = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 31
  %14 = ptrtoint ptr %tx_q.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tx_q.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %mt7601u_free_rx.exit.mt7601u_free_tx.exit_crit_edge, label %mt7601u_free_rx.exit.for.body.i11_crit_edge

mt7601u_free_rx.exit.for.body.i11_crit_edge:      ; preds = %mt7601u_free_rx.exit
  br label %for.body.i11

mt7601u_free_rx.exit.mt7601u_free_tx.exit_crit_edge: ; preds = %mt7601u_free_rx.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %mt7601u_free_tx.exit

for.body.i11:                                     ; preds = %mt7601u_free_tx_queue.exit.i.for.body.i11_crit_edge, %mt7601u_free_rx.exit.for.body.i11_crit_edge
  %i.05.i = phi i32 [ %inc.i12, %mt7601u_free_tx_queue.exit.i.for.body.i11_crit_edge ], [ 0, %mt7601u_free_rx.exit.for.body.i11_crit_edge ]
  %16 = ptrtoint ptr %tx_q.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tx_q.i, align 4
  %arrayidx.i10 = getelementptr %struct.mt7601u_tx_queue, ptr %17, i32 %i.05.i
  %entries.i.i = getelementptr %struct.mt7601u_tx_queue, ptr %17, i32 %i.05.i, i32 4
  %18 = ptrtoint ptr %entries.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %entries.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp19.not.i.i = icmp eq i32 %19, 0
  br i1 %cmp19.not.i.i, label %for.body.i11.mt7601u_free_tx_queue.exit.i_crit_edge, label %for.body.i11.for.body.i.i_crit_edge

for.body.i11.for.body.i.i_crit_edge:              ; preds = %for.body.i11
  br label %for.body.i.i

for.body.i11.mt7601u_free_tx_queue.exit.i_crit_edge: ; preds = %for.body.i11
  call void @__sanitizer_cov_trace_pc() #11
  br label %mt7601u_free_tx_queue.exit.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %for.body.i11.for.body.i.i_crit_edge
  %i.020.i.i = phi i32 [ %inc.i.i, %if.end.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i11.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.mt7601u_tx_queue, ptr %17, i32 %i.05.i, i32 1, i32 %i.020.i.i
  %20 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void @usb_poison_urb(ptr noundef %21) #9
  %skb.i.i = getelementptr %struct.mt7601u_tx_queue, ptr %17, i32 %i.05.i, i32 1, i32 %i.020.i.i, i32 1
  %22 = ptrtoint ptr %skb.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %skb.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %23, null
  br i1 %tobool.not.i.i, label %for.body.i.i.if.end.i.i_crit_edge, label %if.then.i.i

for.body.i.i.if.end.i.i_crit_edge:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %arrayidx.i10 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i10, align 4
  tail call void @mt7601u_tx_status(ptr noundef %25, ptr noundef nonnull %23) #9
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %for.body.i.i.if.end.i.i_crit_edge
  %26 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void @usb_free_urb(ptr noundef %27) #9
  %inc.i.i = add nuw i32 %i.020.i.i, 1
  %28 = ptrtoint ptr %entries.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %entries.i.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %29
  br i1 %cmp.i.i, label %if.end.i.i.for.body.i.i_crit_edge, label %if.end.i.i.mt7601u_free_tx_queue.exit.i_crit_edge

if.end.i.i.mt7601u_free_tx_queue.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mt7601u_free_tx_queue.exit.i

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

mt7601u_free_tx_queue.exit.i:                     ; preds = %if.end.i.i.mt7601u_free_tx_queue.exit.i_crit_edge, %for.body.i11.mt7601u_free_tx_queue.exit.i_crit_edge
  %inc.i12 = add nuw nsw i32 %i.05.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i12, 6
  br i1 %exitcond.not.i, label %mt7601u_free_tx_queue.exit.i.mt7601u_free_tx.exit_crit_edge, label %mt7601u_free_tx_queue.exit.i.for.body.i11_crit_edge

mt7601u_free_tx_queue.exit.i.for.body.i11_crit_edge: ; preds = %mt7601u_free_tx_queue.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i11

mt7601u_free_tx_queue.exit.i.mt7601u_free_tx.exit_crit_edge: ; preds = %mt7601u_free_tx_queue.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mt7601u_free_tx.exit

mt7601u_free_tx.exit:                             ; preds = %mt7601u_free_tx_queue.exit.i.mt7601u_free_tx.exit_crit_edge, %mt7601u_free_rx.exit.mt7601u_free_tx.exit_crit_edge
  %tx_tasklet = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 30
  tail call void @tasklet_kill(ptr noundef %tx_tasklet) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__skb_pad(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7601u_complete_tx(ptr noundef readonly %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %5, label %do.body [
    i32 -104, label %entry.cleanup_crit_edge
    i32 -108, label %entry.cleanup_crit_edge115
    i32 -2, label %entry.cleanup_crit_edge116
    i32 -71, label %entry.cleanup_crit_edge117
    i32 0, label %entry.do.body8_crit_edge
  ]

entry.do.body8_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body8

entry.cleanup_crit_edge117:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

entry.cleanup_crit_edge116:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

entry.cleanup_crit_edge115:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @mt7601u_complete_tx._rs, ptr noundef nonnull @__func__.mt7601u_complete_tx) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body.do.body8_crit_edge, label %do.end

do.body.do.body8_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body8

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev3 = getelementptr inbounds %struct.mt7601u_dev, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev3, align 4
  %9 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %status, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.6, i32 noundef %10) #12
  br label %do.body8

do.body8:                                         ; preds = %do.end, %do.body.do.body8_crit_edge, %entry.do.body8_crit_edge
  %tx_lock = getelementptr inbounds %struct.mt7601u_dev, ptr %3, i32 0, i32 29
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_lock) #9
  %start = getelementptr inbounds %struct.mt7601u_tx_queue, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %start, align 4
  %arrayidx = getelementptr %struct.mt7601u_tx_queue, ptr %1, i32 0, i32 1, i32 %12
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %cmp16.not = icmp eq ptr %14, %urb
  br i1 %cmp16.not, label %if.end62.critedge, label %land.rhs

land.rhs:                                         ; preds = %do.body8
  %.b113 = load i1, ptr @mt7601u_complete_tx.__already_done, align 1
  br i1 %.b113, label %land.rhs.out_crit_edge, label %if.then26, !prof !97

land.rhs.out_crit_edge:                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then26:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @mt7601u_complete_tx.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 260, i32 noundef 9, ptr noundef nonnull @.str.7) #9
  br label %out

if.end62.critedge:                                ; preds = %do.body8
  %skb66 = getelementptr %struct.mt7601u_tx_queue, ptr %1, i32 0, i32 1, i32 %12, i32 1
  %15 = ptrtoint ptr %skb66 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %skb66, align 4
  store ptr null, ptr %skb66, align 4
  tail call fastcc void @trace_mt_tx_dma_done(ptr noundef %3, ptr noundef %16)
  %tx_skb_done = getelementptr inbounds %struct.mt7601u_dev, ptr %3, i32 0, i32 32
  %prev.i.i = getelementptr inbounds %struct.mt7601u_dev, ptr %3, i32 0, i32 32, i32 0, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i, align 4
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %tx_skb_done, ptr %16, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon.41, ptr %16, i32 0, i32 1
  %20 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %prev10.i.i.i, align 4
  store volatile ptr %16, ptr %prev.i.i, align 4
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %16, ptr %18, align 4
  %qlen.i.i.i = getelementptr inbounds %struct.mt7601u_dev, ptr %3, i32 0, i32 32, i32 1
  %22 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %qlen.i.i.i, align 4
  %add.i.i.i = add i32 %23, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i.i.i, align 4
  %state.i = getelementptr inbounds %struct.mt7601u_dev, ptr %3, i32 0, i32 30, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end62.critedge.tasklet_schedule.exit_crit_edge

if.end62.critedge.tasklet_schedule.exit_crit_edge: ; preds = %if.end62.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %tasklet_schedule.exit

if.then.i:                                        ; preds = %if.end62.critedge
  call void @__sanitizer_cov_trace_pc() #11
  %tx_tasklet = getelementptr inbounds %struct.mt7601u_dev, ptr %3, i32 0, i32 30
  tail call void @__tasklet_schedule(ptr noundef %tx_tasklet) #9
  br label %tasklet_schedule.exit

tasklet_schedule.exit:                            ; preds = %if.then.i, %if.end62.critedge.tasklet_schedule.exit_crit_edge
  %used = getelementptr inbounds %struct.mt7601u_tx_queue, ptr %1, i32 0, i32 5
  %24 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %used, align 4
  %entries = getelementptr inbounds %struct.mt7601u_tx_queue, ptr %1, i32 0, i32 4
  %26 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %entries, align 4
  %div112 = lshr i32 %27, 3
  %sub = sub i32 %27, %div112
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %sub)
  %cmp72 = icmp eq i32 %25, %sub
  br i1 %cmp72, label %if.then74, label %tasklet_schedule.exit.if.end77_crit_edge

tasklet_schedule.exit.if.end77_crit_edge:         ; preds = %tasklet_schedule.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end77

if.then74:                                        ; preds = %tasklet_schedule.exit
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %3, align 8
  %queue_mapping.i = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 10
  %30 = ptrtoint ptr %queue_mapping.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %queue_mapping.i, align 8
  %conv76 = zext i16 %31 to i32
  tail call void @ieee80211_wake_queue(ptr noundef %29, i32 noundef %conv76) #9
  br label %if.end77

if.end77:                                         ; preds = %if.then74, %tasklet_schedule.exit.if.end77_crit_edge
  %32 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %start, align 4
  %add = add i32 %33, 1
  %34 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %entries, align 4
  %rem = urem i32 %add, %35
  store i32 %rem, ptr %start, align 4
  %36 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %used, align 4
  %dec = add i32 %37, -1
  store i32 %dec, ptr %used, align 4
  br label %out

out:                                              ; preds = %if.end77, %if.then26, %land.rhs.out_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_lock, i32 noundef %call10) #9
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge115, %entry.cleanup_crit_edge116, %entry.cleanup_crit_edge117
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_stop_queue(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_mt_tx_dma_done(ptr noundef %dev, ptr noundef %skb) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mt_tx_dma_done, i32 0, i32 1), ptr blockaddress(@trace_mt_tx_dma_done, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !99

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !86) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !97

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !86) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !100
  %call42 = tail call i32 @__traceiter_mt_tx_dma_done(ptr noundef null, ptr noundef %dev, ptr noundef %skb) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !101
  %13 = tail call i32 @llvm.read_register.i32(metadata !86) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !86) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !97

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !86) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !102
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mt_tx_dma_done, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mt_tx_dma_done, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_mt_tx_dma_done.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_mt_tx_dma_done.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 314, ptr noundef nonnull @.str.9) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !103
  %31 = tail call i32 @llvm.read_register.i32(metadata !86) #9
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
declare dso_local void @ieee80211_wake_queue(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_mt_tx_dma_done(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7601u_tx_status(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mt7601u_rx_process_entry(ptr noundef %dev, ptr nocapture noundef %e) unnamed_addr #0 align 64 {
entry:
  %list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %e, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %actual_length, align 4
  %p = getelementptr inbounds %struct.mt7601u_dma_buf_rx, ptr %e, i32 0, i32 1
  %4 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %p, align 4
  %call = tail call ptr @page_address(ptr noundef %5) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list) #9
  %6 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %7 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %list, ptr %list, align 4
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %list, ptr %6, align 4
  %state = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 2
  %9 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %state, align 4
  %and1.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %3)
  %cmp = icmp ugt i32 %3, 512
  br i1 %cmp, label %if.end4.thread, label %if.end4

if.end4.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call38.i.i.i.i = call ptr @__alloc_pages(i32 noundef 404000, i32 noundef 3, i32 noundef 0, ptr noundef null) #9
  br label %lor.lhs.false.i.lr.ph

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %3)
  %cmp.i53 = icmp ult i32 %3, 40
  br i1 %cmp.i53, label %if.end14.thread, label %if.end4.lor.lhs.false.i.lr.ph_crit_edge

if.end4.lor.lhs.false.i.lr.ph_crit_edge:          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.i.lr.ph

if.end14.thread:                                  ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  call void @netif_receive_skb_list(ptr noundef nonnull %list) #9
  br label %cleanup

lor.lhs.false.i.lr.ph:                            ; preds = %if.end4.lor.lhs.false.i.lr.ph_crit_edge, %if.end4.thread
  %new_p.063 = phi ptr [ %call38.i.i.i.i, %if.end4.thread ], [ null, %if.end4.lor.lhs.false.i.lr.ph_crit_edge ]
  %11 = ptrtoint ptr %call to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %call, align 1
  %13 = call i16 @llvm.bswap.i16(i16 %12) #9
  %tobool7.not = icmp eq ptr %new_p.063, null
  %dev19.i = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 1
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %mt7601u_rx_process_seg.exit.lor.lhs.false.i_crit_edge, %lor.lhs.false.i.lr.ph
  %14 = phi i16 [ %13, %lor.lhs.false.i.lr.ph ], [ %43, %mt7601u_rx_process_seg.exit.lor.lhs.false.i_crit_edge ]
  %15 = phi i16 [ %12, %lor.lhs.false.i.lr.ph ], [ %42, %mt7601u_rx_process_seg.exit.lor.lhs.false.i_crit_edge ]
  %cnt.056 = phi i32 [ 0, %lor.lhs.false.i.lr.ph ], [ %inc, %mt7601u_rx_process_seg.exit.lor.lhs.false.i_crit_edge ]
  %data.055 = phi ptr [ %call, %lor.lhs.false.i.lr.ph ], [ %add.ptr.i, %mt7601u_rx_process_seg.exit.lor.lhs.false.i_crit_edge ]
  %data_len.054 = phi i32 [ %3, %lor.lhs.false.i.lr.ph ], [ %sub, %mt7601u_rx_process_seg.exit.lor.lhs.false.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool.not.i = icmp eq i16 %15, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %lor.lhs.false38.critedge.i

land.rhs.i:                                       ; preds = %lor.lhs.false.i
  %.b174.i = load i1, ptr @mt7601u_rx_next_seg_len.__already_done, align 1
  br i1 %.b174.i, label %land.rhs.i.while.end_crit_edge, label %land.rhs.i.while.end.sink.split_crit_edge, !prof !97

land.rhs.i.while.end.sink.split_crit_edge:        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.sink.split

land.rhs.i.while.end_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

lor.lhs.false38.critedge.i:                       ; preds = %lor.lhs.false.i
  %conv.i = zext i16 %14 to i32
  %add.i = add nuw nsw i32 %conv.i, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %data_len.054)
  %cmp40.i = icmp ugt i32 %add.i, %data_len.054
  br i1 %cmp40.i, label %land.rhs49.i, label %lor.lhs.false96.critedge.i

land.rhs49.i:                                     ; preds = %lor.lhs.false38.critedge.i
  %.b170173.i = load i1, ptr @mt7601u_rx_next_seg_len.__already_done.12, align 1
  br i1 %.b170173.i, label %land.rhs49.i.while.end_crit_edge, label %land.rhs49.i.while.end.sink.split_crit_edge, !prof !97

land.rhs49.i.while.end.sink.split_crit_edge:      ; preds = %land.rhs49.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.sink.split

land.rhs49.i.while.end_crit_edge:                 ; preds = %land.rhs49.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

lor.lhs.false96.critedge.i:                       ; preds = %lor.lhs.false38.critedge.i
  %and.i = and i32 %conv.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool99.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool99.not.i, label %mt7601u_rx_next_seg_len.exit, label %land.rhs107.i

land.rhs107.i:                                    ; preds = %lor.lhs.false96.critedge.i
  %.b171172.i = load i1, ptr @mt7601u_rx_next_seg_len.__already_done.13, align 1
  br i1 %.b171172.i, label %land.rhs107.i.while.end_crit_edge, label %land.rhs107.i.while.end.sink.split_crit_edge, !prof !97

land.rhs107.i.while.end.sink.split_crit_edge:     ; preds = %land.rhs107.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.sink.split

land.rhs107.i.while.end_crit_edge:                ; preds = %land.rhs107.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

mt7601u_rx_next_seg_len.exit:                     ; preds = %lor.lhs.false96.critedge.i
  %conv158.i = trunc i32 %add.i to i16
  %conv = and i32 %add.i, 65535
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv158.i)
  %tobool6.not = icmp eq i16 %conv158.i, 0
  br i1 %tobool6.not, label %mt7601u_rx_next_seg_len.exit.while.end_crit_edge, label %while.body

mt7601u_rx_next_seg_len.exit.while.end_crit_edge: ; preds = %mt7601u_rx_next_seg_len.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %mt7601u_rx_next_seg_len.exit
  br i1 %tobool7.not, label %while.body.cond.end_crit_edge, label %cond.true

while.body.cond.end_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %p, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %while.body.cond.end_crit_edge
  %cond = phi ptr [ %17, %cond.true ], [ null, %while.body.cond.end_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %data.055, i32 %conv
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 -4
  %18 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %add.ptr1.i, align 1
  %20 = call i32 @llvm.bswap.i32(i32 %19) #9
  %add.ptr2.i = getelementptr i8, ptr %data.055, i32 4
  %add.ptr4.i = getelementptr i8, ptr %data.055, i32 32
  %sub5.i = add nsw i32 %conv, -36
  %zero.i = getelementptr i8, ptr %data.055, i32 17
  %21 = ptrtoint ptr %zero.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %zero.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i42 = icmp eq i8 %22, 0
  br i1 %tobool.not.i42, label %lor.lhs.false.i43, label %cond.end.do.body.i_crit_edge, !prof !97

cond.end.do.body.i_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

lor.lhs.false.i43:                                ; preds = %cond.end
  %arrayidx7.i = getelementptr i8, ptr %data.055, i32 18
  %23 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx7.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool9.not.i = icmp eq i8 %24, 0
  br i1 %tobool9.not.i, label %lor.rhs.i, label %lor.lhs.false.i43.do.body.i_crit_edge, !prof !97

lor.lhs.false.i43.do.body.i_crit_edge:            ; preds = %lor.lhs.false.i43
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

lor.rhs.i:                                        ; preds = %lor.lhs.false.i43
  %arrayidx11.i = getelementptr i8, ptr %data.055, i32 19
  %25 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx11.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool13.not.i = icmp eq i8 %26, 0
  br i1 %tobool13.not.i, label %lor.rhs.i.do.end37.i_crit_edge, label %lor.rhs.i.do.body.i_crit_edge, !prof !97

lor.rhs.i.do.body.i_crit_edge:                    ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

lor.rhs.i.do.end37.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end37.i

do.body.i:                                        ; preds = %lor.rhs.i.do.body.i_crit_edge, %lor.lhs.false.i43.do.body.i_crit_edge, %cond.end.do.body.i_crit_edge
  %.b85.i = load i1, ptr @mt7601u_rx_process_seg.__print_once, align 1
  br i1 %.b85.i, label %do.body.i.do.end37.i_crit_edge, label %if.then17.i

do.body.i.do.end37.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end37.i

if.then17.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @mt7601u_rx_process_seg.__print_once, align 1
  %27 = ptrtoint ptr %dev19.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev19.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.14) #12
  br label %do.end37.i

do.end37.i:                                       ; preds = %if.then17.i, %do.body.i.do.end37.i_crit_edge, %lor.rhs.i.do.end37.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %20)
  %tobool38.not.i = icmp ult i32 %20, 1073741824
  br i1 %tobool38.not.i, label %do.end37.i.if.end56.i_crit_edge, label %do.body46.i, !prof !97

do.end37.i.if.end56.i_crit_edge:                  ; preds = %do.end37.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56.i

do.body46.i:                                      ; preds = %do.end37.i
  %.b8384.i = load i1, ptr @mt7601u_rx_process_seg.__print_once.16, align 1
  br i1 %.b8384.i, label %do.body46.i.if.end56.i_crit_edge, label %if.then48.i

do.body46.i.if.end56.i_crit_edge:                 ; preds = %do.body46.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56.i

if.then48.i:                                      ; preds = %do.body46.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @mt7601u_rx_process_seg.__print_once.16, align 1
  %29 = ptrtoint ptr %dev19.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev19.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.18) #12
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.then48.i, %do.body46.i.if.end56.i_crit_edge, %do.end37.i.if.end56.i_crit_edge
  call fastcc void @trace_mt_rx(ptr noundef %dev, ptr noundef %add.ptr2.i, i32 noundef %20) #9
  %call57.i = call fastcc ptr @mt7601u_rx_skb_from_seg(ptr noundef %dev, ptr noundef %add.ptr2.i, ptr noundef %add.ptr4.i, i32 noundef %sub5.i, i32 noundef %conv, ptr noundef %cond) #9
  %tobool58.not.i = icmp eq ptr %call57.i, null
  br i1 %tobool58.not.i, label %if.end56.i.mt7601u_rx_process_seg.exit_crit_edge, label %if.end60.i

if.end56.i.mt7601u_rx_process_seg.exit_crit_edge: ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mt7601u_rx_process_seg.exit

if.end60.i:                                       ; preds = %if.end56.i
  call fastcc void @local_bh_disable() #9
  %31 = call i32 @llvm.read_register.i32(metadata !86) #9
  %and.i.i.i.i.i.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %34, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !104
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i.i = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i.i, label %if.end60.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end60.i.rcu_read_lock.exit.i_crit_edge:        ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end60.i
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 696, ptr noundef nonnull @.str.23) #9
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end60.i.rcu_read_lock.exit.i_crit_edge
  %35 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev, align 8
  call void @ieee80211_rx_list(ptr noundef %36, ptr noundef null, ptr noundef nonnull %call57.i, ptr noundef nonnull %list) #9
  %call.i87.i = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i87.i, label %rcu_read_lock.exit.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i90.i

rcu_read_lock.exit.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i

land.lhs.true.i90.i:                              ; preds = %rcu_read_lock.exit.i
  %call1.i88.i = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i88.i)
  %tobool.not.i89.i = icmp eq i32 %call1.i88.i, 0
  br i1 %tobool.not.i89.i, label %land.lhs.true.i90.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i92.i

land.lhs.true.i90.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i90.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i92.i:                             ; preds = %land.lhs.true.i90.i
  %.b4.i91.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i91.i, label %land.lhs.true2.i92.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i93.i

land.lhs.true2.i92.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i92.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i

if.then.i93.i:                                    ; preds = %land.lhs.true2.i92.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 724, ptr noundef nonnull @.str.24) #9
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i93.i, %land.lhs.true2.i92.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i90.i.rcu_read_unlock.exit.i_crit_edge, %rcu_read_lock.exit.i.rcu_read_unlock.exit.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !105
  %37 = call i32 @llvm.read_register.i32(metadata !86) #9
  %and.i.i.i.i.i94.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i.i.i94.i to ptr
  %preempt_count.i.i.i.i95.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i.i.i.i95.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i.i.i.i95.i, align 4
  %sub.i.i.i.i = add i32 %40, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i95.i, align 4
  call void @rcu_read_unlock_strict() #9
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  call fastcc void @local_bh_enable() #9
  br label %mt7601u_rx_process_seg.exit

mt7601u_rx_process_seg.exit:                      ; preds = %rcu_read_unlock.exit.i, %if.end56.i.mt7601u_rx_process_seg.exit_crit_edge
  %sub = sub i32 %data_len.054, %conv
  %inc = add i32 %cnt.056, 1
  %41 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %41, i32 2)
  %42 = load i16, ptr %add.ptr.i, align 1
  %43 = call i16 @llvm.bswap.i16(i16 %42) #9
  %cmp.i = icmp ult i32 %sub, 40
  br i1 %cmp.i, label %mt7601u_rx_process_seg.exit.while.end_crit_edge, label %mt7601u_rx_process_seg.exit.lor.lhs.false.i_crit_edge

mt7601u_rx_process_seg.exit.lor.lhs.false.i_crit_edge: ; preds = %mt7601u_rx_process_seg.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.i

mt7601u_rx_process_seg.exit.while.end_crit_edge:  ; preds = %mt7601u_rx_process_seg.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end.sink.split:                             ; preds = %land.rhs107.i.while.end.sink.split_crit_edge, %land.rhs49.i.while.end.sink.split_crit_edge, %land.rhs.i.while.end.sink.split_crit_edge
  %mt7601u_rx_next_seg_len.__already_done.sink = phi ptr [ @mt7601u_rx_next_seg_len.__already_done, %land.rhs.i.while.end.sink.split_crit_edge ], [ @mt7601u_rx_next_seg_len.__already_done.12, %land.rhs49.i.while.end.sink.split_crit_edge ], [ @mt7601u_rx_next_seg_len.__already_done.13, %land.rhs107.i.while.end.sink.split_crit_edge ]
  %.sink = phi i32 [ 124, %land.rhs.i.while.end.sink.split_crit_edge ], [ 125, %land.rhs49.i.while.end.sink.split_crit_edge ], [ 126, %land.rhs107.i.while.end.sink.split_crit_edge ]
  %44 = ptrtoint ptr %mt7601u_rx_next_seg_len.__already_done.sink to i32
  call void @__asan_store1_noabort(i32 %44)
  store i1 true, ptr %mt7601u_rx_next_seg_len.__already_done.sink, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef %.sink, i32 noundef 9, ptr noundef null) #9
  br label %while.end

while.end:                                        ; preds = %while.end.sink.split, %mt7601u_rx_process_seg.exit.while.end_crit_edge, %mt7601u_rx_next_seg_len.exit.while.end_crit_edge, %land.rhs107.i.while.end_crit_edge, %land.rhs49.i.while.end_crit_edge, %land.rhs.i.while.end_crit_edge
  %cnt.052 = phi i32 [ %cnt.056, %land.rhs.i.while.end_crit_edge ], [ %cnt.056, %land.rhs49.i.while.end_crit_edge ], [ %cnt.056, %land.rhs107.i.while.end_crit_edge ], [ %cnt.056, %while.end.sink.split ], [ %cnt.056, %mt7601u_rx_next_seg_len.exit.while.end_crit_edge ], [ %inc, %mt7601u_rx_process_seg.exit.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cnt.052)
  %cmp9 = icmp sgt i32 %cnt.052, 1
  br i1 %cmp9, label %if.then11, label %while.end.if.end14_crit_edge

while.end.if.end14_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then11:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %tobool12 = icmp ne ptr %new_p.063, null
  call fastcc void @trace_mt_rx_dma_aggr(ptr noundef %dev, i32 noundef %cnt.052, i1 noundef zeroext %tobool12)
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %while.end.if.end14_crit_edge
  call void @netif_receive_skb_list(ptr noundef nonnull %list) #9
  %tobool15.not = icmp eq ptr %new_p.063, null
  br i1 %tobool15.not, label %if.end14.cleanup_crit_edge, label %if.then16

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then16:                                        ; preds = %if.end14
  %45 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %p, align 4
  %47 = getelementptr inbounds %struct.page, ptr %46, i32 0, i32 1
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %47, align 4
  %and.i.i = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i44 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i44, label %if.end.i.i, label %if.then.i.i45, !prof !97

if.then.i.i45:                                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %49, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %46 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i45
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i45 ], [ %50, %if.end.i.i ]
  %51 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %51, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  %52 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp.i.i.i.i = icmp eq i32 %53, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !96

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef %51, ptr noundef nonnull @.str.25) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !106
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !107
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #9
  %54 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #9, !srcloc !108
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %54, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !109
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@mt7601u_rx_process_entry, %if.then.i.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !99

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %51, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #9
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__put_page(ptr noundef %51) #9
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %55 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %new_p.063, ptr %p, align 4
  br label %cleanup

cleanup:                                          ; preds = %put_page.exit, %if.end14.cleanup_crit_edge, %if.end14.thread, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_mt_rx_dma_aggr(ptr noundef %dev, i32 noundef %cnt, i1 noundef zeroext %paged) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mt_rx_dma_aggr, i32 0, i32 1), ptr blockaddress(@trace_mt_rx_dma_aggr, %do.body)) #9
          to label %if.end49 [label %do.body], !srcloc !99

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !86) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !97

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i76 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i76
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end70_crit_edge, label %cleanup.thread

cpu_online.exit.if.end70_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !86) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !110
  %call43 = tail call i32 @__traceiter_mt_rx_dma_aggr(ptr noundef null, ptr noundef %dev, i32 noundef %cnt, i1 noundef zeroext %paged) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !111
  %13 = tail call i32 @llvm.read_register.i32(metadata !86) #9
  %and.i.i.i74 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i74 to ptr
  %preempt_count.i.i75 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i75 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i75, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i75, align 4
  br label %if.end49

if.end49:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !86) #9
  %and.i77 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i77 to ptr
  %cpu51 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu51, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i78 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i78, label %if.end49.cpu_online.exit86_crit_edge, label %land.rhs.i.i.i.i80

if.end49.cpu_online.exit86_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit86

land.rhs.i.i.i.i80:                               ; preds = %if.end49
  %.b37.i.i.i.i79 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !97

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit86

cpu_online.exit86:                                ; preds = %if.then.i.i.i.i81, %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, %if.end49.cpu_online.exit86_crit_edge
  %div3.i.i.i82 = lshr i32 %20, 5
  %arrayidx.i.i.i83 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i82
  %22 = ptrtoint ptr %arrayidx.i.i.i83 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i83, align 4
  %and.i.i.i84 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i84
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i85.not = icmp eq i32 %25, 0
  br i1 %tobool.i85.not, label %cpu_online.exit86.if.end70_crit_edge, label %if.then53

cpu_online.exit86.if.end70_crit_edge:             ; preds = %cpu_online.exit86
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit86
  %26 = tail call i32 @llvm.read_register.i32(metadata !86) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !102
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mt_rx_dma_aggr, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mt_rx_dma_aggr, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b73 = load i1, ptr @trace_mt_rx_dma_aggr.__warned, align 1
  br i1 %.b73, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_mt_rx_dma_aggr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 361, ptr noundef nonnull @.str.9) #9
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !103
  %31 = tail call i32 @llvm.read_register.i32(metadata !86) #9
  %and.i.i.i.i87 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i87 to ptr
  %preempt_count.i.i.i88 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i88, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i88, align 4
  br label %if.end70

if.end70:                                         ; preds = %do.end68, %cpu_online.exit86.if.end70_crit_edge, %cpu_online.exit.if.end70_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_receive_skb_list(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_mt_rx(ptr noundef %dev, ptr noundef %rxwi, i32 noundef %f) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mt_rx, i32 0, i32 1), ptr blockaddress(@trace_mt_rx, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !99

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !86) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !97

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !86) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !112
  %call42 = tail call i32 @__traceiter_mt_rx(ptr noundef null, ptr noundef %dev, ptr noundef %rxwi, i32 noundef %f) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !113
  %13 = tail call i32 @llvm.read_register.i32(metadata !86) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !86) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !97

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !86) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !102
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mt_rx, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mt_rx, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_mt_rx.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_mt_rx.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 275, ptr noundef nonnull @.str.9) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !103
  %31 = tail call i32 @llvm.read_register.i32(metadata !86) #9
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @mt7601u_rx_skb_from_seg(ptr noundef %dev, ptr noundef %rxwi, ptr noundef %data, i32 noundef %seg_len, i32 noundef %truesize, ptr noundef %p) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %p, null
  %spec.select = select i1 %tobool.not, i32 %seg_len, i32 128
  %call.i = tail call ptr @__alloc_skb(i32 noundef %spec.select, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #9
  %tobool1.not = icmp eq ptr %call.i, null
  br i1 %tobool1.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @mt76_mac_process_rx(ptr noundef %dev, ptr noundef nonnull %call.i, ptr noundef %data, ptr noundef %rxwi) #9
  %0 = add i32 %call2, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %seg_len)
  %1 = icmp uge i32 %0, %seg_len
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %call2)
  %cmp.i = icmp ult i32 %call2, 10
  %or.cond79 = or i1 %cmp.i, %1
  br i1 %or.cond79, label %if.end.do.body_crit_edge, label %if.end.i, !prof !114

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end.i:                                         ; preds = %if.end
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %data, align 2
  %call.i74 = tail call i32 @ieee80211_hdrlen(i16 noundef zeroext %3) #13
  %4 = add i32 %call.i74, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %call2)
  %.not = icmp ult i32 %4, %call2
  br i1 %.not, label %if.end9, label %if.end.i.do.body_crit_edge

if.end.i.do.body_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end9:                                          ; preds = %if.end.i
  %5 = ptrtoint ptr %rxwi to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rxwi, align 4
  %and = and i32 %6, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %if.end9.if.end13_crit_edge, label %if.then11

if.end9.if.end13_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %call.i75 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %call.i74) #9
  %7 = call ptr @memcpy(ptr %call.i75, ptr %data, i32 %call.i74)
  %add = add i32 %call.i74, 2
  %add.ptr = getelementptr i8, ptr %data, i32 %add
  %sub = sub i32 %call2, %call.i74
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end9.if.end13_crit_edge
  %data.addr.0 = phi ptr [ %add.ptr, %if.then11 ], [ %data, %if.end9.if.end13_crit_edge ]
  %true_len.0 = phi i32 [ %sub, %if.then11 ], [ %call2, %if.end9.if.end13_crit_edge ]
  %hdr_len.0 = phi i32 [ 0, %if.then11 ], [ %call.i74, %if.end9.if.end13_crit_edge ]
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 7
  %8 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.i.not.i = icmp eq i32 %9, 0
  br i1 %tobool.i.not.i, label %cond.false.i, label %if.end13.skb_tailroom.exit_crit_edge

if.end13.skb_tailroom.exit_crit_edge:             ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_tailroom.exit

cond.false.i:                                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 17
  %10 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %end.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %12 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %11 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %13 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  br label %skb_tailroom.exit

skb_tailroom.exit:                                ; preds = %cond.false.i, %if.end13.skb_tailroom.exit_crit_edge
  %cond.i = phi i32 [ %sub.ptr.sub.i, %cond.false.i ], [ 0, %if.end13.skb_tailroom.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %true_len.0, i32 %cond.i)
  %cmp15.not = icmp ugt i32 %true_len.0, %cond.i
  %add18 = add i32 %hdr_len.0, 8
  %cond20 = select i1 %cmp15.not, i32 %add18, i32 %true_len.0
  %call.i76 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %cond20) #9
  %14 = call ptr @memcpy(ptr %call.i76, ptr %data.addr.0, i32 %cond20)
  call void @__sanitizer_cov_trace_cmp4(i32 %true_len.0, i32 %cond20)
  %tobool24.not = icmp eq i32 %true_len.0, %cond20
  br i1 %tobool24.not, label %skb_tailroom.exit.cleanup_crit_edge, label %if.then25

skb_tailroom.exit.cleanup_crit_edge:              ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then25:                                        ; preds = %skb_tailroom.exit
  %sub21 = sub i32 %true_len.0, %cond20
  %add.ptr23 = getelementptr i8, ptr %data.addr.0, i32 %cond20
  %call26 = tail call ptr @page_address(ptr noundef %p) #9
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr23 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %call26 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  tail call void @skb_add_rx_frag(ptr noundef nonnull %call.i, i32 noundef 0, ptr noundef %p, i32 noundef %sub.ptr.sub, i32 noundef %sub21, i32 noundef %truesize) #9
  %15 = getelementptr inbounds %struct.page, ptr %p, i32 0, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %15, align 4
  %and.i.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !97

if.then.i.i:                                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %17, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %p to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %18, %if.end.i.i ]
  %19 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %19, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #9
  %20 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %21, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i1.i, label %do.end5.i.i, !prof !96

if.then.i1.i:                                     ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %19, ptr noundef nonnull @.str.21) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #9, !srcloc !115
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #9
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #9, !srcloc !116
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@mt7601u_rx_skb_from_seg, %if.then.i.i.i.i)) #9
          to label %cleanup [label %if.then.i.i.i.i], !srcloc !99

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__page_ref_mod(ptr noundef %19, i32 noundef 1) #9
  br label %cleanup

do.body:                                          ; preds = %if.end.i.do.body_crit_edge, %if.end.do.body_crit_edge
  %call28 = tail call i32 @___ratelimit(ptr noundef nonnull @mt7601u_rx_skb_from_seg._rs, ptr noundef nonnull @__func__.mt7601u_rx_skb_from_seg) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %do.body.do.end35_crit_edge, label %do.end

do.body.do.end35_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end35

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev32 = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 1
  %23 = ptrtoint ptr %dev32 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev32, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.20, i32 noundef %call2, i32 noundef 0) #12
  br label %do.end35

do.end35:                                         ; preds = %do.end, %do.body.do.end35_crit_edge
  tail call void @consume_skb(ptr noundef nonnull %call.i) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end35, %if.then.i.i.i.i, %do.end5.i.i, %skb_tailroom.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.end35 ], [ null, %entry.cleanup_crit_edge ], [ %call.i, %skb_tailroom.exit.cleanup_crit_edge ], [ %call.i, %do.end5.i.i ], [ %call.i, %if.then.i.i.i.i ]
  ret ptr %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_rx_list(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_mt_rx(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_mac_process_rx(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_add_rx_frag(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @ieee80211_hdrlen(i16 noundef zeroext) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_mt_rx_dma_aggr(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7601u_complete_rx(ptr noundef readonly %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %3, label %do.body [
    i32 -104, label %entry.cleanup_crit_edge
    i32 -108, label %entry.cleanup_crit_edge83
    i32 -2, label %entry.cleanup_crit_edge84
    i32 -71, label %entry.cleanup_crit_edge85
    i32 0, label %entry.do.body7_crit_edge
  ]

entry.do.body7_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body7

entry.cleanup_crit_edge85:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

entry.cleanup_crit_edge84:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

entry.cleanup_crit_edge83:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @mt7601u_complete_rx._rs, ptr noundef nonnull @__func__.mt7601u_complete_rx) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body.do.body7_crit_edge, label %do.end

do.body.do.body7_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body7

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev2 = getelementptr inbounds %struct.mt7601u_dev, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev2, align 4
  %7 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %status, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.28, i32 noundef %8) #12
  br label %do.body7

do.body7:                                         ; preds = %do.end, %do.body.do.body7_crit_edge, %entry.do.body7_crit_edge
  %rx_lock = getelementptr inbounds %struct.mt7601u_dev, ptr %1, i32 0, i32 34
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rx_lock) #9
  %end = getelementptr inbounds %struct.mt7601u_dev, ptr %1, i32 0, i32 36, i32 3
  %9 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %end, align 4
  %arrayidx = getelementptr %struct.mt7601u_dev, ptr %1, i32 0, i32 36, i32 1, i32 %10
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %cmp15.not = icmp eq ptr %12, %urb
  br i1 %cmp15.not, label %if.end61.critedge, label %land.rhs

land.rhs:                                         ; preds = %do.body7
  %.b81 = load i1, ptr @mt7601u_complete_rx.__already_done, align 1
  br i1 %.b81, label %land.rhs.out_crit_edge, label %if.then25, !prof !97

land.rhs.out_crit_edge:                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then25:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @mt7601u_complete_rx.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 214, i32 noundef 9, ptr noundef nonnull @.str.29) #9
  br label %out

if.end61.critedge:                                ; preds = %do.body7
  %add = add i32 %10, 1
  %entries = getelementptr inbounds %struct.mt7601u_dev, ptr %1, i32 0, i32 36, i32 4
  %13 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %entries, align 4
  %rem = urem i32 %add, %14
  %15 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %rem, ptr %end, align 4
  %pending = getelementptr inbounds %struct.mt7601u_dev, ptr %1, i32 0, i32 36, i32 5
  %16 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pending, align 4
  %inc = add i32 %17, 1
  store i32 %inc, ptr %pending, align 4
  %state.i = getelementptr inbounds %struct.mt7601u_dev, ptr %1, i32 0, i32 35, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end61.critedge.out_crit_edge

if.end61.critedge.out_crit_edge:                  ; preds = %if.end61.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then.i:                                        ; preds = %if.end61.critedge
  call void @__sanitizer_cov_trace_pc() #11
  %rx_tasklet = getelementptr inbounds %struct.mt7601u_dev, ptr %1, i32 0, i32 35
  tail call void @__tasklet_schedule(ptr noundef %rx_tasklet) #9
  br label %out

out:                                              ; preds = %if.then.i, %if.end61.critedge.out_crit_edge, %if.then25, %land.rhs.out_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rx_lock, i32 noundef %call9) #9
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge83, %entry.cleanup_crit_edge84, %entry.cleanup_crit_edge85
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_mt_submit_urb(ptr noundef %dev, ptr noundef %u) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mt_submit_urb, i32 0, i32 1), ptr blockaddress(@trace_mt_submit_urb, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !99

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !86) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !97

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !86) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !117
  %call42 = tail call i32 @__traceiter_mt_submit_urb(ptr noundef null, ptr noundef %dev, ptr noundef %u) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !118
  %13 = tail call i32 @llvm.read_register.i32(metadata !86) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !86) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !97

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !86) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !102
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mt_submit_urb, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mt_submit_urb, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_mt_submit_urb.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_mt_submit_urb.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 69, ptr noundef nonnull @.str.9) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !103
  %31 = tail call i32 @llvm.read_register.i32(metadata !86) #9
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
declare dso_local i32 @__traceiter_mt_submit_urb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_poison_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !11, !12, !13, !14, !15, !16, !18, !19, !21, !22, !23, !24, !26, !27, !29, !31, !33, !35, !37, !38, !39, !40, !41, !43, !44, !45, !46, !48, !49, !51, !52, !53, !54, !55, !57, !59, !60, !61, !63, !64, !66, !67, !69, !71, !72, !73, !74, !76, !77, !78, !79, !80, !82, !83, !85}
!llvm.named.register.sp = !{!86}
!llvm.module.flags = !{!87, !88, !89, !90, !91, !92, !93, !94}
!llvm.ident = !{!95}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/mediatek/mt7601u/dma.c", i32 317, i32 6}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/mediatek/mt7601u/dma.c", i32 333, i32 4}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @mt7601u_dma_submit_tx._entry, !3, !"_entry", i1 false, i1 false}
!8 = !{ptr @mt7601u_dma_submit_tx._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/mediatek/mt7601u/dma.c", i32 252, i32 3}
!11 = !{ptr @mt7601u_complete_tx._rs, !10, !"_rs", i1 false, i1 false}
!12 = !{ptr @__func__.mt7601u_complete_tx, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @mt7601u_complete_tx._entry, !10, !"_entry", i1 false, i1 false}
!15 = !{ptr @mt7601u_complete_tx._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!16 = distinct !{null, !17, !"__already_done", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/mediatek/mt7601u/dma.c", i32 260, i32 6}
!18 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!19 = distinct !{null, !20, !"__already_done", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/mediatek/mt7601u/trace.h", i32 302, i32 1}
!21 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!22 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!23 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!24 = distinct !{null, !25, !"__already_done", i1 false, i1 false}
!25 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!26 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!27 = distinct !{null, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!29 = distinct !{null, !30, !"__already_done", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/mediatek/mt7601u/dma.c", i32 124, i32 6}
!31 = distinct !{null, !32, !"__already_done", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/mediatek/mt7601u/dma.c", i32 125, i32 6}
!33 = distinct !{null, !34, !"__already_done", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/mediatek/mt7601u/dma.c", i32 126, i32 6}
!35 = distinct !{null, !36, !"__print_once", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/mediatek/mt7601u/dma.c", i32 98, i32 3}
!37 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @mt7601u_rx_process_seg._entry, !36, !"_entry", i1 false, i1 false}
!40 = !{ptr @mt7601u_rx_process_seg._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!41 = distinct !{null, !42, !"__print_once", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/mediatek/mt7601u/dma.c", i32 100, i32 3}
!43 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @mt7601u_rx_process_seg._entry.17, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @mt7601u_rx_process_seg._entry_ptr.19, !42, !"_entry_ptr", i1 false, i1 false}
!46 = distinct !{null, !47, !"__already_done", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/mediatek/mt7601u/trace.h", i32 247, i32 1}
!48 = distinct !{null, !47, !"__warned", i1 false, i1 false}
!49 = !{ptr @mt7601u_rx_skb_from_seg._rs, !50, !"_rs", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/mediatek/mt7601u/dma.c", i32 70, i32 2}
!51 = !{ptr @__func__.mt7601u_rx_skb_from_seg, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @mt7601u_rx_skb_from_seg._entry, !50, !"_entry", i1 false, i1 false}
!54 = !{ptr @mt7601u_rx_skb_from_seg._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!57 = distinct !{null, !58, !"__warned", i1 false, i1 false}
!58 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!59 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!61 = distinct !{null, !62, !"__warned", i1 false, i1 false}
!62 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!63 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!64 = distinct !{null, !65, !"__already_done", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/mediatek/mt7601u/trace.h", i32 346, i32 1}
!66 = distinct !{null, !65, !"__warned", i1 false, i1 false}
!67 = !{ptr @.str.25, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../include/linux/mm.h", i32 717, i32 2}
!69 = !{ptr @.str.26, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/wireless/mediatek/mt7601u/dma.c", i32 413, i32 3}
!71 = !{ptr @.str.27, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @mt7601u_submit_rx_buf._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @mt7601u_submit_rx_buf._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @mt7601u_complete_rx._rs, !75, !"_rs", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/mediatek/mt7601u/dma.c", i32 206, i32 3}
!76 = !{ptr @__func__.mt7601u_complete_rx, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.28, !75, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @mt7601u_complete_rx._entry, !75, !"_entry", i1 false, i1 false}
!79 = !{ptr @mt7601u_complete_rx._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!80 = distinct !{null, !81, !"__already_done", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/mediatek/mt7601u/dma.c", i32 214, i32 6}
!82 = !{ptr @.str.29, !81, !"<string literal>", i1 false, i1 false}
!83 = distinct !{null, !84, !"__already_done", i1 false, i1 false}
!84 = !{!"../drivers/net/wireless/mediatek/mt7601u/trace.h", i32 56, i32 1}
!85 = distinct !{null, !84, !"__warned", i1 false, i1 false}
!86 = !{!"sp"}
!87 = !{i32 1, !"wchar_size", i32 2}
!88 = !{i32 1, !"min_enum_size", i32 4}
!89 = !{i32 8, !"branch-target-enforcement", i32 0}
!90 = !{i32 8, !"sign-return-address", i32 0}
!91 = !{i32 8, !"sign-return-address-all", i32 0}
!92 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!93 = !{i32 7, !"uwtable", i32 1}
!94 = !{i32 7, !"frame-pointer", i32 2}
!95 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!96 = !{!"branch_weights", i32 1, i32 2000}
!97 = !{!"branch_weights", i32 2000, i32 1}
!98 = !{i64 2155209872, i64 2155210360, i64 2155209909, i64 2155209965, i64 2155209999, i64 2155210023, i64 2155210064, i64 2155210085, i64 2155210113, i64 2155210147}
!99 = !{i64 2148742346, i64 2148742351, i64 2148742364, i64 2148742408, i64 2148742442, i64 2148742463}
!100 = !{i64 2158150336}
!101 = !{i64 2158150543}
!102 = !{i64 2149346874}
!103 = !{i64 2149347910}
!104 = !{i64 2149338315}
!105 = !{i64 2149338581}
!106 = !{i64 2154582309, i64 2154582792, i64 2154582346, i64 2154582402, i64 2154582436, i64 2154582460, i64 2154582501, i64 2154582522, i64 2154582550, i64 2154582584}
!107 = !{i64 2148376313}
!108 = !{i64 2148291046, i64 2148291078, i64 2148291107, i64 2148291141, i64 2148291172, i64 2148291195}
!109 = !{i64 2148376542}
!110 = !{i64 2158204230}
!111 = !{i64 2158204451}
!112 = !{i64 2158117858}
!113 = !{i64 2158118055}
!114 = !{!"branch_weights", i32 2002, i32 2000}
!115 = !{i64 2154602221, i64 2154602705, i64 2154602258, i64 2154602314, i64 2154602348, i64 2154602372, i64 2154602413, i64 2154602434, i64 2154602462, i64 2154602496}
!116 = !{i64 2148287861, i64 2148287887, i64 2148287916, i64 2148287950, i64 2148287981, i64 2148288004}
!117 = !{i64 2157909556}
!118 = !{i64 2157909757}
