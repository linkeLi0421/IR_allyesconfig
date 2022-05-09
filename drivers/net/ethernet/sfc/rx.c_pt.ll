; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/sfc/rx.c_pt.bc'
source_filename = "../drivers/net/ethernet/sfc/rx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.163 }
%struct.atomic_t = type { i32 }
%union.anon.163 = type { i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.efx_rx_queue = type { ptr, i32, ptr, %struct.efx_special_buffer, i32, i8, i8, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, [92 x i8], %struct.xdp_rxq_info, i8, [127 x i8] }
%struct.efx_special_buffer = type { %struct.efx_buffer, i32, i32 }
%struct.efx_buffer = type { ptr, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.efx_rx_buffer = type { i32, ptr, i16, i16, i16 }
%struct.efx_nic = type { [16 x i8], %struct.list_head, ptr, %struct.list_head, ptr, i32, ptr, i32, i8, ptr, [16 x i8], %struct.work_struct, i32, ptr, i32, i32, i32, i32, i8, i8, i32, i32, i32, i32, i32, [32 x ptr], [32 x %struct.efx_msi_context], [2 x ptr], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.efx_rss_context, %struct.mutex, i32, i32, i32, i8, i8, %struct.efx_buffer, i32, i32, %struct.delayed_work, %struct.list_head, ptr, ptr, %struct.mutex, %struct.work_struct, i8, i8, i8, ptr, i64, i16, %struct.efx_buffer, i64, i64, i8, i32, ptr, %struct.mdio_if_info, i32, i32, [3 x i32], i32, %struct.efx_link_state, i32, i8, %union.efx_multicast_hash, i8, i32, %struct.atomic_t, i32, i64, ptr, ptr, %struct.rw_semaphore, ptr, %struct.mutex, i32, [8 x %struct.efx_async_filter_insertion], %struct.spinlock, ptr, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, ptr, i8, ptr, i8, %struct.notifier_block, i32, i32, %struct.delayed_work, %struct.spinlock, i32, %struct.spinlock, %struct.atomic_t, [60 x i8] }
%struct.efx_msi_context = type { ptr, i32, [22 x i8] }
%struct.efx_rss_context = type { %struct.list_head, i32, i32, i8, [40 x i8], [128 x i32] }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mdio_if_info = type { i32, i32, i32, ptr, ptr, ptr }
%struct.efx_link_state = type { i8, i8, i8, i32 }
%union.efx_multicast_hash = type { [2 x %union.efx_oword] }
%union.efx_oword = type { [2 x i64] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.efx_async_filter_insertion = type { ptr, %struct.efx_filter_spec, %struct.work_struct, i16, i32 }
%struct.efx_filter_spec = type { i32, i32, i16, i16, [6 x i8], [6 x i8], i16, i8, [4 x i32], [4 x i32], i16, i16, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.efx_nic_type = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i8, i8, i8, i32, i32, i64, i32, i32, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.167, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.167 = type { ptr }
%struct.efx_channel = type { ptr, i32, ptr, i8, i8, i32, i32, ptr, %struct.napi_struct, i32, %struct.efx_special_buffer, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.delayed_work, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.efx_rx_queue, [4 x %struct.efx_tx_queue], [8 x ptr], i32, i32, i32, [84 x i8] }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.efx_tx_queue = type { ptr, i32, i32, i32, i32, i8, ptr, ptr, ptr, ptr, %struct.efx_special_buffer, i32, ptr, i32, i8, i8, i8, [53 x i8], i32, i32, i32, i32, i32, i32, i32, [100 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, [72 x i8], i32, %struct.atomic_t, [120 x i8] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.168, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.189, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.168 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.189 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.efx_channel_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8 }
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%union.anon.53 = type { ptr }
%union.anon.54 = type { i64 }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { i32, ptr }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.59, i32, i32, i32, i16, i16, %union.anon.61, i32, %union.anon.62, %union.anon.63, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.59 = type { i32 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.xdp_buff = type { ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.bpf_prog = type { i16, i16, i32, i32, i32, i32, [8 x i8], ptr, ptr, ptr, ptr, ptr, %union.anon.112 }
%union.anon.112 = type { %struct.anon.113 }
%struct.anon.113 = type { %struct.anon.114, [0 x %struct.sock_filter] }
%struct.anon.114 = type {}
%struct.sock_filter = type { i16, i8, i8, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.bpf_prog_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync, [8 x i8] }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.xdp_frame = type { ptr, i16, i16, i32, %struct.xdp_mem_info, ptr }

@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/net/ethernet/sfc/rx.c\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"RX queue %d overlength RX event (%#x > %#x)\0A\00", [51 x i8] zeroinitializer }, align 32
@efx_do_xdp.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"XDP is not possible with multiple receive fragments (%d)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"XDP TX failed (%d)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"XDP redirect failed (%d)\0A\00", [38 x i8] zeroinitializer }, align 32
@bpf_master_redirect_enabled_key = external dso_local global %struct.static_key_false, align 4
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/filter.h\00", [41 x i8] zeroinitializer }, align 32
@bpf_stats_enabled_key = external dso_local global %struct.static_key_false, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Driver BUG: missing reserved tailroom\00", [58 x i8] zeroinitializer }, align 32
@__func__.xdp_update_frame_from_buff = private unnamed_addr constant [27 x i8] c"xdp_update_frame_from_buff\00", align 1
@__tracepoint_xdp_exception = external dso_local global %struct.tracepoint, align 4
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/trace/events/xdp.h\00", [37 x i8] zeroinitializer }, align 32
@trace_xdp_exception.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 144, i32 3 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 59, i32 3 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 263, i32 13 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 274, i32 4 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 317, i32 5 }
@___asan_gen_.27 = private constant [33 x i8] c"../drivers/net/ethernet/sfc/rx.c\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 331, i32 5 }
@___asan_gen_.30 = private unnamed_addr constant [26 x i8] c"../include/linux/filter.h\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 613, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 271, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant [21 x i8] c"../include/net/xdp.h\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 200, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant [30 x i8] c"../include/trace/events/xdp.h\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 28, i32 1 }
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.42 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 108, i32 2 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_rx_packet(ptr noundef %rx_queue, i32 noundef %index, i32 noundef %n_frags, i32 noundef %len, i16 noundef zeroext %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rx_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_queue, align 128
  %add.ptr.i = getelementptr i8, ptr %rx_queue, i32 -512
  %rx_packets = getelementptr inbounds %struct.efx_rx_queue, ptr %rx_queue, i32 0, i32 26
  %2 = ptrtoint ptr %rx_packets to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_packets, align 32
  %inc = add i32 %3, 1
  store i32 %inc, ptr %rx_packets, align 32
  %buffer.i = getelementptr inbounds %struct.efx_rx_queue, ptr %rx_queue, i32 0, i32 2
  %4 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buffer.i, align 8
  %arrayidx.i = getelementptr %struct.efx_rx_buffer, ptr %5, i32 %index
  %conv = zext i16 %flags to i32
  %flags3 = getelementptr %struct.efx_rx_buffer, ptr %5, i32 %index, i32 4
  %6 = ptrtoint ptr %flags3 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %flags3, align 4
  %or193 = or i16 %7, %flags
  store i16 %or193, ptr %flags3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %n_frags)
  %cmp = icmp eq i32 %n_frags, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %and = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then8, label %if.then.if.end81_crit_edge

if.then.if.end81_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end81

if.then8:                                         ; preds = %if.then
  %8 = ptrtoint ptr %rx_queue to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rx_queue, align 128
  %len2.i = getelementptr %struct.efx_rx_buffer, ptr %5, i32 %index, i32 3
  %10 = ptrtoint ptr %len2.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %len2.i, align 2
  %conv.i = zext i16 %11 to i32
  %type.i = getelementptr inbounds %struct.efx_nic, ptr %9, i32 0, i32 6
  %12 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %type.i, align 4
  %rx_buffer_padding.i = getelementptr inbounds %struct.efx_nic_type, ptr %13, i32 0, i32 128
  %14 = ptrtoint ptr %rx_buffer_padding.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rx_buffer_padding.i, align 4
  %sub.i = sub i32 %conv.i, %15
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %len)
  %cmp.not.i = icmp ult i32 %sub.i, %len
  br i1 %cmp.not.i, label %if.end.i, label %if.then8.if.end81_crit_edge, !prof !38

if.then8.if.end81_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end81

if.end.i:                                         ; preds = %if.then8
  %16 = or i16 %or193, 4
  %17 = ptrtoint ptr %flags3 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %flags3, align 4
  %call.i = tail call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool7.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool7.not.i, label %if.end.i.if.end13.i_crit_edge, label %do.body.i

if.end.i.if.end13.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i

do.body.i:                                        ; preds = %if.end.i
  %msg_enable.i = getelementptr inbounds %struct.efx_nic, ptr %9, i32 0, i32 22
  %18 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %msg_enable.i, align 4
  %and.i = and i32 %19, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool9.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool9.not.i, label %do.body.i.if.end13.i_crit_edge, label %if.then10.i

do.body.i.if.end13.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i

if.then10.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %net_dev.i = getelementptr inbounds %struct.efx_nic, ptr %9, i32 0, i32 83
  %20 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %net_dev.i, align 4
  %channel.i.i = getelementptr i8, ptr %rx_queue, i32 -508
  %22 = ptrtoint ptr %channel.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %channel.i.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %21, ptr noundef nonnull @.str.1, i32 noundef %23, i32 noundef %len, i32 noundef %sub.i) #12
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then10.i, %do.body.i.if.end13.i_crit_edge, %if.end.i.if.end13.i_crit_edge
  %n_rx_overlength.i = getelementptr i8, ptr %rx_queue, i32 -48
  %24 = ptrtoint ptr %n_rx_overlength.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %n_rx_overlength.i, align 16
  %inc.i = add i32 %25, 1
  store i32 %inc.i, ptr %n_rx_overlength.i, align 16
  br label %if.end81

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %n_frags)
  %cmp9 = icmp ugt i32 %n_frags, 6
  br i1 %cmp9, label %if.else.if.then42_crit_edge, label %lor.lhs.false, !prof !38

if.else.if.then42_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then42

lor.lhs.false:                                    ; preds = %if.else
  %sub = add nsw i32 %n_frags, -1
  %rx_dma_len = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 53
  %26 = ptrtoint ptr %rx_dma_len to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rx_dma_len, align 4
  %mul = mul i32 %27, %sub
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %len)
  %cmp13.not = icmp uge i32 %mul, %len
  %mul23 = mul i32 %27, %n_frags
  call void @__sanitizer_cov_trace_cmp4(i32 %mul23, i32 %len)
  %cmp24 = icmp ult i32 %mul23, %len
  %or.cond = or i1 %cmp13.not, %cmp24
  br i1 %or.cond, label %lor.lhs.false.if.then42_crit_edge, label %lor.lhs.false32, !prof !39

lor.lhs.false.if.then42_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then42

lor.lhs.false32:                                  ; preds = %lor.lhs.false
  %rx_scatter = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 63
  %28 = ptrtoint ptr %rx_scatter to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %rx_scatter, align 4, !range !40
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool33.not = icmp eq i8 %29, 0
  br i1 %tobool33.not, label %lor.lhs.false32.do.end_crit_edge, label %lor.lhs.false32.if.end81_crit_edge, !prof !38

lor.lhs.false32.if.end81_crit_edge:               ; preds = %lor.lhs.false32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end81

lor.lhs.false32.do.end_crit_edge:                 ; preds = %lor.lhs.false32
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then42:                                        ; preds = %lor.lhs.false.if.then42_crit_edge, %if.else.if.then42_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp43 = icmp ne i32 %len, 0
  %30 = and i16 %or193, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool48 = icmp eq i16 %30, 0
  %or.cond215 = select i1 %cmp43, i1 true, i1 %tobool48
  br i1 %or.cond215, label %if.then42.do.end_crit_edge, label %if.then42.if.end69_crit_edge, !prof !41

if.then42.if.end69_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then42.do.end_crit_edge:                       ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %if.then42.do.end_crit_edge, %lor.lhs.false32.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 144, i32 noundef 9, ptr noundef null) #9
  br label %if.end69

if.end69:                                         ; preds = %do.end, %if.then42.if.end69_crit_edge
  %31 = ptrtoint ptr %flags3 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %flags3, align 4
  %33 = or i16 %32, 4
  store i16 %33, ptr %flags3, align 4
  br label %if.end81

if.end81:                                         ; preds = %if.end69, %lor.lhs.false32.if.end81_crit_edge, %if.end13.i, %if.then8.if.end81_crit_edge, %if.then.if.end81_crit_edge
  %34 = ptrtoint ptr %flags3 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %flags3, align 4
  %36 = and i16 %35, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %tobool86.not = icmp eq i16 %36, 0
  br i1 %tobool86.not, label %if.end94, label %if.then93, !prof !42

if.then93:                                        ; preds = %if.end81
  %rx_pkt_n_frags.i = getelementptr i8, ptr %rx_queue, i32 -12
  %37 = ptrtoint ptr %rx_pkt_n_frags.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rx_pkt_n_frags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i = icmp eq i32 %38, 0
  br i1 %tobool.not.i, label %if.then93.efx_rx_flush_packet.exit_crit_edge, label %if.then.i

if.then93.efx_rx_flush_packet.exit_crit_edge:     ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #11
  br label %efx_rx_flush_packet.exit

if.then.i:                                        ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %add.ptr.i, align 128
  %type.i195 = getelementptr inbounds %struct.efx_nic, ptr %40, i32 0, i32 6
  %41 = ptrtoint ptr %type.i195 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %type.i195, align 4
  %rx_packet.i = getelementptr inbounds %struct.efx_nic_type, ptr %42, i32 0, i32 64
  %43 = ptrtoint ptr %rx_packet.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rx_packet.i, align 8
  tail call void %44(ptr noundef %add.ptr.i) #9
  br label %efx_rx_flush_packet.exit

efx_rx_flush_packet.exit:                         ; preds = %if.then.i, %if.then93.efx_rx_flush_packet.exit_crit_edge
  tail call void @efx_discard_rx_packet(ptr noundef %add.ptr.i, ptr noundef %arrayidx.i, i32 noundef %n_frags) #9
  br label %cleanup

if.end94:                                         ; preds = %if.end81
  %and98 = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98)
  %tobool99.not = icmp eq i32 %and98, 0
  %or.cond194 = and i1 %cmp, %tobool99.not
  br i1 %or.cond194, label %if.then100, label %if.end94.if.end103_crit_edge

if.end94.if.end103_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end103

if.then100:                                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  %conv101 = trunc i32 %len to i16
  %len102 = getelementptr %struct.efx_rx_buffer, ptr %5, i32 %index, i32 3
  %45 = ptrtoint ptr %len102 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv101, ptr %len102, align 2
  br label %if.end103

if.end103:                                        ; preds = %if.then100, %if.end94.if.end103_crit_edge
  %len104 = getelementptr %struct.efx_rx_buffer, ptr %5, i32 %index, i32 3
  %46 = ptrtoint ptr %len104 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %len104, align 2
  %conv105 = zext i16 %47 to i32
  %pci_dev.i = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 4
  %48 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pci_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %49, i32 0, i32 44
  %50 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx.i, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %dev.i, i32 noundef %51, i32 noundef %conv105, i32 noundef 2) #9
  %page.i = getelementptr %struct.efx_rx_buffer, ptr %5, i32 %index, i32 1
  %52 = ptrtoint ptr %page.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %page.i, align 4
  %call.i197 = tail call ptr @page_address(ptr noundef %53) #9
  %page_offset.i = getelementptr %struct.efx_rx_buffer, ptr %5, i32 %index, i32 2
  %54 = ptrtoint ptr %page_offset.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %page_offset.i, align 4
  %conv.i198 = zext i16 %55 to i32
  %add.ptr.i199 = getelementptr i8, ptr %call.i197, i32 %conv.i198
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %add.ptr.i199) #9, !srcloc !43
  %rx_prefix_size = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 59
  %56 = ptrtoint ptr %rx_prefix_size to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %rx_prefix_size, align 4
  %58 = ptrtoint ptr %page_offset.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %page_offset.i, align 4
  %60 = trunc i32 %57 to i16
  %conv108 = add i16 %59, %60
  store i16 %conv108, ptr %page_offset.i, align 4
  %61 = load i32, ptr %rx_prefix_size, align 4
  %62 = ptrtoint ptr %len104 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %len104, align 2
  %64 = trunc i32 %61 to i16
  %conv113 = sub i16 %63, %64
  store i16 %conv113, ptr %len104, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %n_frags)
  %cmp114 = icmp ugt i32 %n_frags, 1
  br i1 %cmp114, label %if.then116, label %if.end103.if.end132_crit_edge

if.end103.if.end132_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end132

if.then116:                                       ; preds = %if.end103
  %sub117 = add i32 %n_frags, -1
  %ptr_mask.i = getelementptr inbounds %struct.efx_rx_queue, ptr %rx_queue, i32 0, i32 4
  %65 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %ptr_mask.i, align 32
  %67 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %buffer.i, align 8
  %arrayidx.i.i216 = getelementptr %struct.efx_rx_buffer, ptr %68, i32 %66
  %cmp.i217 = icmp eq ptr %arrayidx.i.i216, %arrayidx.i
  %add.ptr.i200218 = getelementptr %struct.efx_rx_buffer, ptr %arrayidx.i, i32 1
  %spec.select.i219 = select i1 %cmp.i217, ptr %68, ptr %add.ptr.i200218, !prof !38
  %dec220 = add i32 %n_frags, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec220)
  %cmp119221 = icmp eq i32 %dec220, 0
  br i1 %cmp119221, label %if.then116.for.end_crit_edge, label %if.end122.lr.ph

if.then116.for.end_crit_edge:                     ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end122.lr.ph:                                  ; preds = %if.then116
  %rx_dma_len123 = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 53
  br label %if.end122

if.end122:                                        ; preds = %if.end122.if.end122_crit_edge, %if.end122.lr.ph
  %dec223 = phi i32 [ %dec220, %if.end122.lr.ph ], [ %dec, %if.end122.if.end122_crit_edge ]
  %spec.select.i222 = phi ptr [ %spec.select.i219, %if.end122.lr.ph ], [ %spec.select.i, %if.end122.if.end122_crit_edge ]
  %69 = ptrtoint ptr %rx_dma_len123 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %rx_dma_len123, align 4
  %71 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %pci_dev.i, align 4
  %dev.i202 = getelementptr inbounds %struct.pci_dev, ptr %72, i32 0, i32 44
  %73 = ptrtoint ptr %spec.select.i222 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %spec.select.i222, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %dev.i202, i32 noundef %74, i32 noundef %70, i32 noundef 2) #9
  %75 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %ptr_mask.i, align 32
  %77 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %buffer.i, align 8
  %arrayidx.i.i = getelementptr %struct.efx_rx_buffer, ptr %78, i32 %76
  %cmp.i = icmp eq ptr %arrayidx.i.i, %spec.select.i222
  %add.ptr.i200 = getelementptr %struct.efx_rx_buffer, ptr %spec.select.i222, i32 1
  %spec.select.i = select i1 %cmp.i, ptr %78, ptr %add.ptr.i200, !prof !38
  %dec = add i32 %dec223, -1
  %cmp119 = icmp eq i32 %dec, 0
  br i1 %cmp119, label %if.end122.for.end_crit_edge, label %if.end122.if.end122_crit_edge

if.end122.if.end122_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end122

if.end122.for.end_crit_edge:                      ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %if.end122.for.end_crit_edge, %if.then116.for.end_crit_edge
  %spec.select.i.lcssa = phi ptr [ %spec.select.i219, %if.then116.for.end_crit_edge ], [ %spec.select.i, %if.end122.for.end_crit_edge ]
  %rx_dma_len125 = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 53
  %79 = ptrtoint ptr %rx_dma_len125 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %rx_dma_len125, align 4
  %mul126 = mul i32 %80, %sub117
  %sub127 = sub i32 %len, %mul126
  %conv128 = trunc i32 %sub127 to i16
  %len129 = getelementptr inbounds %struct.efx_rx_buffer, ptr %spec.select.i.lcssa, i32 0, i32 3
  %81 = ptrtoint ptr %len129 to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %conv128, ptr %len129, align 2
  %conv131 = and i32 %sub127, 65535
  %82 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %pci_dev.i, align 4
  %dev.i204 = getelementptr inbounds %struct.pci_dev, ptr %83, i32 0, i32 44
  %84 = ptrtoint ptr %spec.select.i.lcssa to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %spec.select.i.lcssa, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %dev.i204, i32 noundef %85, i32 noundef %conv131, i32 noundef 2) #9
  br label %if.end132

if.end132:                                        ; preds = %for.end, %if.end103.if.end132_crit_edge
  %86 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %buffer.i, align 8
  %arrayidx.i206 = getelementptr %struct.efx_rx_buffer, ptr %87, i32 %index
  tail call void @efx_recycle_rx_pages(ptr noundef %add.ptr.i, ptr noundef %arrayidx.i206, i32 noundef %n_frags) #9
  %rx_pkt_n_frags.i207 = getelementptr i8, ptr %rx_queue, i32 -12
  %88 = ptrtoint ptr %rx_pkt_n_frags.i207 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %rx_pkt_n_frags.i207, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool.not.i208 = icmp eq i32 %89, 0
  br i1 %tobool.not.i208, label %if.end132.efx_rx_flush_packet.exit213_crit_edge, label %if.then.i211

if.end132.efx_rx_flush_packet.exit213_crit_edge:  ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #11
  br label %efx_rx_flush_packet.exit213

if.then.i211:                                     ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #11
  %90 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %add.ptr.i, align 128
  %type.i209 = getelementptr inbounds %struct.efx_nic, ptr %91, i32 0, i32 6
  %92 = ptrtoint ptr %type.i209 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %type.i209, align 4
  %rx_packet.i210 = getelementptr inbounds %struct.efx_nic_type, ptr %93, i32 0, i32 64
  %94 = ptrtoint ptr %rx_packet.i210 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %rx_packet.i210, align 8
  tail call void %95(ptr noundef %add.ptr.i) #9
  br label %efx_rx_flush_packet.exit213

efx_rx_flush_packet.exit213:                      ; preds = %if.then.i211, %if.end132.efx_rx_flush_packet.exit213_crit_edge
  %96 = ptrtoint ptr %rx_pkt_n_frags.i207 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %n_frags, ptr %rx_pkt_n_frags.i207, align 4
  %rx_pkt_index = getelementptr i8, ptr %rx_queue, i32 -8
  %97 = ptrtoint ptr %rx_pkt_index to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %index, ptr %rx_pkt_index, align 8
  br label %cleanup

cleanup:                                          ; preds = %efx_rx_flush_packet.exit213, %efx_rx_flush_packet.exit
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_discard_rx_packet(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_recycle_rx_pages(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__efx_rx_packet(ptr noundef %channel) local_unnamed_addr #0 align 64 {
entry:
  %eh = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel, align 128
  %rx_queue = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 45
  %rx_pkt_index = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 43
  %2 = ptrtoint ptr %rx_pkt_index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_pkt_index, align 8
  %buffer.i = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 45, i32 2
  %4 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buffer.i, align 8
  %arrayidx.i = getelementptr %struct.efx_rx_buffer, ptr %5, i32 %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %eh) #9
  %page.i = getelementptr %struct.efx_rx_buffer, ptr %5, i32 %3, i32 1
  %6 = ptrtoint ptr %page.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %page.i, align 4
  %call.i = tail call ptr @page_address(ptr noundef %7) #9
  %page_offset.i = getelementptr %struct.efx_rx_buffer, ptr %5, i32 %3, i32 2
  %8 = ptrtoint ptr %page_offset.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %page_offset.i, align 4
  %conv.i = zext i16 %9 to i32
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %conv.i
  %10 = ptrtoint ptr %eh to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr.i, ptr %eh, align 4
  %flags = getelementptr %struct.efx_rx_buffer, ptr %5, i32 %3, i32 4
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %flags, align 4
  %13 = and i16 %12, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool.not = icmp eq i16 %13, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %rx_packet_len_offset = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 61
  %14 = ptrtoint ptr %rx_packet_len_offset to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rx_packet_len_offset, align 4
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 %15
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %add.ptr, align 2
  %18 = tail call i16 @llvm.bswap.i16(i16 %17) #9
  %len = getelementptr %struct.efx_rx_buffer, ptr %5, i32 %3, i32 3
  %19 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %len, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %loopback_selftest = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 106
  %20 = ptrtoint ptr %loopback_selftest to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %loopback_selftest, align 16
  %tobool4.not = icmp eq ptr %21, null
  br i1 %tobool4.not, label %if.end12, label %if.then7, !prof !42

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %len9 = getelementptr %struct.efx_rx_buffer, ptr %5, i32 %3, i32 3
  %22 = ptrtoint ptr %len9 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %len9, align 2
  %conv10 = zext i16 %23 to i32
  tail call void @efx_loopback_rx_packet(ptr noundef %1, ptr noundef %add.ptr.i, i32 noundef %conv10) #9
  %rx_pkt_n_frags = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 42
  %24 = ptrtoint ptr %rx_pkt_n_frags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rx_pkt_n_frags, align 4
  tail call void @efx_free_rx_buffers(ptr noundef %rx_queue, ptr noundef %arrayidx.i, i32 noundef %25) #9
  br label %out

if.end12:                                         ; preds = %if.end
  %call13 = call fastcc zeroext i1 @efx_do_xdp(ptr noundef %1, ptr noundef %channel, ptr noundef %arrayidx.i, ptr noundef nonnull %eh)
  br i1 %call13, label %if.end15, label %if.end12.out_crit_edge

if.end12.out_crit_edge:                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end15:                                         ; preds = %if.end12
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 83
  %26 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %net_dev, align 4
  %features = getelementptr inbounds %struct.net_device, ptr %27, i32 0, i32 23
  %28 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %features, align 16
  %and16 = and i64 %29, 1099511627776
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and16)
  %tobool17.not = icmp eq i64 %and16, 0
  br i1 %tobool17.not, label %if.then26, label %if.end15.if.end31_crit_edge, !prof !38

if.end15.if.end31_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.then26:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %flags, align 4
  %32 = and i16 %31, -3
  store i16 %32, ptr %flags, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then26, %if.end15.if.end31_crit_edge
  %33 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %flags, align 4
  %35 = and i16 %34, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool35.not = icmp eq i16 %35, 0
  br i1 %tobool35.not, label %if.end31.if.else_crit_edge, label %land.lhs.true

if.end31.if.else_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %if.end31
  %type = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 2
  %36 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %type, align 8
  %receive_skb = getelementptr inbounds %struct.efx_channel_type, ptr %37, i32 0, i32 5
  %38 = ptrtoint ptr %receive_skb to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %receive_skb, align 4
  %tobool36.not = icmp eq ptr %39, null
  br i1 %tobool36.not, label %if.then37, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then37:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %rx_pkt_n_frags38 = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 42
  %40 = ptrtoint ptr %rx_pkt_n_frags38 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rx_pkt_n_frags38, align 4
  %42 = ptrtoint ptr %eh to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %eh, align 4
  tail call void @efx_rx_packet_gro(ptr noundef %channel, ptr noundef %arrayidx.i, i32 noundef %41, ptr noundef %43, i32 noundef 0) #9
  br label %out

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end31.if.else_crit_edge
  %44 = ptrtoint ptr %eh to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %eh, align 4
  %rx_pkt_n_frags39 = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 42
  %46 = ptrtoint ptr %rx_pkt_n_frags39 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rx_pkt_n_frags39, align 4
  %len.i = getelementptr %struct.efx_rx_buffer, ptr %5, i32 %3, i32 3
  %48 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %len.i, align 2
  %50 = tail call i16 @llvm.umin.i16(i16 %49, i16 128) #9
  %cond.i = zext i16 %50 to i32
  %51 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %channel, align 128
  %net_dev.i.i = getelementptr inbounds %struct.efx_nic, ptr %52, i32 0, i32 83
  %53 = ptrtoint ptr %net_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %net_dev.i.i, align 4
  %rx_ip_align.i.i = getelementptr inbounds %struct.efx_nic, ptr %52, i32 0, i32 52
  %55 = ptrtoint ptr %rx_ip_align.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rx_ip_align.i.i, align 16
  %rx_prefix_size.i.i = getelementptr inbounds %struct.efx_nic, ptr %52, i32 0, i32 59
  %57 = ptrtoint ptr %rx_prefix_size.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %rx_prefix_size.i.i, align 4
  %add.i.i = add i32 %56, %cond.i
  %add2.i.i = add i32 %add.i.i, %58
  %call.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef %54, i32 noundef %add2.i.i, i32 noundef 2592) #9
  %cmp.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %cmp.i.i, label %if.then.i, label %do.end.i.i, !prof !38

do.end.i.i:                                       ; preds = %if.else
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %59 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %data.i.i, align 4
  %61 = ptrtoint ptr %rx_ip_align.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %rx_ip_align.i.i, align 16
  %add.ptr.i.i = getelementptr i8, ptr %60, i32 %62
  %63 = ptrtoint ptr %rx_prefix_size.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %rx_prefix_size.i.i, align 4
  %idx.neg.i.i = sub i32 0, %64
  %add.ptr6.i.i = getelementptr i8, ptr %45, i32 %idx.neg.i.i
  %add8.i.i = add i32 %64, %cond.i
  %65 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %add.ptr6.i.i, i32 %add8.i.i)
  %66 = load i32, ptr %rx_ip_align.i.i, align 16
  %67 = load i32, ptr %rx_prefix_size.i.i, align 4
  %add11.i.i = add i32 %67, %66
  %68 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %68, i32 %add11.i.i
  store ptr %add.ptr.i.i.i, ptr %data.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %69 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %70, i32 %add11.i.i
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 7
  %71 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool.i.not.i.i.i = icmp eq i32 %72, 0
  br i1 %tobool.i.not.i.i.i, label %__skb_put.exit.i.i, label %do.body3.i.i.i, !prof !42

do.body3.i.i.i:                                   ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #9, !srcloc !44
  unreachable

__skb_put.exit.i.i:                               ; preds = %do.end.i.i
  %add.ptr.i81.i.i = getelementptr i8, ptr %add.ptr1.i.i.i, i32 %cond.i
  %73 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %add.ptr.i81.i.i, ptr %tail.i.i.i, align 8
  %len9.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 6
  %74 = ptrtoint ptr %len9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %len9.i.i.i, align 4
  %add.i.i.i = add i32 %75, %cond.i
  store i32 %add.i.i.i, ptr %len9.i.i.i, align 4
  %76 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %len.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %77, i16 %50)
  %cmp13.i.i = icmp ugt i16 %77, %50
  br i1 %cmp13.i.i, label %if.then15.i.i, label %if.else.i.i

if.then15.i.i:                                    ; preds = %__skb_put.exit.i.i
  %78 = ptrtoint ptr %page_offset.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %page_offset.i, align 4
  %conv18.i.i = add i16 %79, %50
  store i16 %conv18.i.i, ptr %page_offset.i, align 4
  %conv21.i.i = sub i16 %77, %50
  %80 = ptrtoint ptr %len.i to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %conv21.i.i, ptr %len.i, align 2
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 17
  %rx_buffer_truesize.i.i = getelementptr inbounds %struct.efx_nic, ptr %52, i32 0, i32 55
  %ptr_mask.i.i.i = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 45, i32 4
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %if.end35.i.i, %if.then15.i.i
  %rx_buf.addr.0.i.i = phi ptr [ %arrayidx.i, %if.then15.i.i ], [ %spec.select.i.i.i, %if.end35.i.i ]
  %81 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %end.i.i.i, align 4
  %nr_frags.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %82, i32 0, i32 2
  %83 = ptrtoint ptr %nr_frags.i.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %nr_frags.i.i, align 2
  %conv23.i.i = zext i8 %84 to i32
  %page.i.i = getelementptr inbounds %struct.efx_rx_buffer, ptr %rx_buf.addr.0.i.i, i32 0, i32 1
  %85 = ptrtoint ptr %page.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %page.i.i, align 4
  %page_offset24.i.i = getelementptr inbounds %struct.efx_rx_buffer, ptr %rx_buf.addr.0.i.i, i32 0, i32 2
  %87 = ptrtoint ptr %page_offset24.i.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %page_offset24.i.i, align 4
  %conv25.i.i = zext i16 %88 to i32
  %len26.i.i = getelementptr inbounds %struct.efx_rx_buffer, ptr %rx_buf.addr.0.i.i, i32 0, i32 3
  %89 = ptrtoint ptr %len26.i.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %len26.i.i, align 2
  %conv27.i.i = zext i16 %90 to i32
  %91 = ptrtoint ptr %rx_buffer_truesize.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %rx_buffer_truesize.i.i, align 4
  tail call void @skb_add_rx_frag(ptr noundef nonnull %call.i.i.i, i32 noundef %conv23.i.i, ptr noundef %86, i32 noundef %conv25.i.i, i32 noundef %conv27.i.i, i32 noundef %92) #9
  %93 = ptrtoint ptr %page.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr null, ptr %page.i.i, align 4
  %94 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %end.i.i.i, align 4
  %nr_frags30.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %95, i32 0, i32 2
  %96 = ptrtoint ptr %nr_frags30.i.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %nr_frags30.i.i, align 2
  %conv31.i.i = zext i8 %97 to i32
  %cmp32.i.i = icmp eq i32 %47, %conv31.i.i
  br i1 %cmp32.i.i, label %for.cond.i.i.if.end39.i.i_crit_edge, label %if.end35.i.i

for.cond.i.i.if.end39.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39.i.i

if.end35.i.i:                                     ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %98 = ptrtoint ptr %ptr_mask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %ptr_mask.i.i.i, align 32
  %100 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %buffer.i, align 8
  %arrayidx.i.i.i.i = getelementptr %struct.efx_rx_buffer, ptr %101, i32 %99
  %cmp.i.i.i = icmp eq ptr %arrayidx.i.i.i.i, %rx_buf.addr.0.i.i
  %add.ptr.i83.i.i = getelementptr %struct.efx_rx_buffer, ptr %rx_buf.addr.0.i.i, i32 1
  %spec.select.i.i.i = select i1 %cmp.i.i.i, ptr %101, ptr %add.ptr.i83.i.i, !prof !38
  br label %for.cond.i.i

if.else.i.i:                                      ; preds = %__skb_put.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %102 = ptrtoint ptr %page.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %page.i, align 4
  %rx_buffer_order.i.i = getelementptr inbounds %struct.efx_nic, ptr %52, i32 0, i32 54
  %104 = ptrtoint ptr %rx_buffer_order.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %rx_buffer_order.i.i, align 8
  tail call void @__free_pages(ptr noundef %103, i32 noundef %105) #9
  %106 = ptrtoint ptr %page.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr null, ptr %page.i, align 4
  br label %if.end39.i.i

if.end39.i.i:                                     ; preds = %if.else.i.i, %for.cond.i.i.if.end39.i.i_crit_edge
  %107 = ptrtoint ptr %net_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %net_dev.i.i, align 4
  %call41.i.i = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %call.i.i.i, ptr noundef %108) #9
  %protocol.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 15, i32 0, i32 18
  %109 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 %call41.i.i, ptr %protocol.i.i, align 8
  %110 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 15, i32 0, i32 11
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %110, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %112)
  %cmp.i84.i.i = icmp ult i32 %112, 5
  br i1 %cmp.i84.i.i, label %if.then.i.i.i, label %if.end39.i.i.if.end.i_crit_edge

if.end39.i.i.if.end.i_crit_edge:                  ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i.i.i:                                    ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %napi_id.i.i.i = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 8, i32 15
  %113 = ptrtoint ptr %napi_id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %napi_id.i.i.i, align 8
  %115 = ptrtoint ptr %110 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %110, align 4
  br label %if.end.i

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %n_rx_noskb_drops.i.i = getelementptr inbounds %struct.efx_nic, ptr %52, i32 0, i32 134
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %n_rx_noskb_drops.i.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %n_rx_noskb_drops.i.i, i32 1, i32 3, i32 1) #9
  %116 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %n_rx_noskb_drops.i.i, ptr %n_rx_noskb_drops.i.i, i32 1, ptr elementtype(i32) %n_rx_noskb_drops.i.i) #9, !srcloc !45
  tail call void @efx_free_rx_buffers(ptr noundef %rx_queue, ptr noundef %arrayidx.i, i32 noundef %47) #9
  br label %out

if.end.i:                                         ; preds = %if.then.i.i.i, %if.end39.i.i.if.end.i_crit_edge
  %core_index.i = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 45, i32 1
  %117 = ptrtoint ptr %core_index.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %core_index.i, align 4
  %conv12.i = trunc i32 %118 to i16
  %add.i74.i = add i16 %conv12.i, 1
  %queue_mapping.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 10
  %119 = ptrtoint ptr %queue_mapping.i.i to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 %add.i74.i, ptr %queue_mapping.i.i, align 8
  %120 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %flags, align 4
  %122 = and i16 %121, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %122)
  %tobool14.not.i = icmp eq i16 %122, 0
  br i1 %tobool14.not.i, label %if.end.i.if.end34.i_crit_edge, label %if.then21.i, !prof !38

if.end.i.if.end34.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i

if.then21.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 15
  %123 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %123)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %bf.clear.i = and i16 %bf.load.i, -1537
  %bf.set.i = or i16 %bf.clear.i, 512
  store i16 %bf.set.i, ptr %ip_summed.i, align 8
  %124 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %flags, align 4
  %126 = lshr i16 %125, 9
  %csum_level.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 15, i32 0, i32 3
  %127 = ptrtoint ptr %csum_level.i to i32
  call void @__asan_loadN_noabort(i32 %127, i32 4)
  %bf.load31.i = load i32, ptr %csum_level.i, align 2
  %128 = and i16 %126, 1
  %bf.value.i = zext i16 %128 to i32
  %bf.shl.i = shl nuw nsw i32 %bf.value.i, 28
  %bf.clear32.i = and i32 %bf.load31.i, -805306369
  %bf.set33.i = or i32 %bf.shl.i, %bf.clear32.i
  store i32 %bf.set33.i, ptr %csum_level.i, align 2
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then21.i, %if.end.i.if.end34.i_crit_edge
  %sync_events_state.i.i = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 48
  %129 = ptrtoint ptr %sync_events_state.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %sync_events_state.i.i, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %130)
  %cmp.i75.i = icmp eq i32 %130, 3
  br i1 %cmp.i75.i, label %if.then.i76.i, label %if.end34.i.efx_rx_skb_attach_timestamp.exit.i_crit_edge

if.end34.i.efx_rx_skb_attach_timestamp.exit.i_crit_edge: ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %efx_rx_skb_attach_timestamp.exit.i

if.then.i76.i:                                    ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__efx_rx_skb_attach_timestamp(ptr noundef %channel, ptr noundef nonnull %call.i.i.i) #9
  br label %efx_rx_skb_attach_timestamp.exit.i

efx_rx_skb_attach_timestamp.exit.i:               ; preds = %if.then.i76.i, %if.end34.i.efx_rx_skb_attach_timestamp.exit.i_crit_edge
  %type.i = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 2
  %131 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %type.i, align 8
  %receive_skb.i = getelementptr inbounds %struct.efx_channel_type, ptr %132, i32 0, i32 5
  %133 = ptrtoint ptr %receive_skb.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %receive_skb.i, align 4
  %tobool35.not.i = icmp eq ptr %134, null
  br i1 %tobool35.not.i, label %efx_rx_skb_attach_timestamp.exit.i.if.end42.i_crit_edge, label %if.then36.i

efx_rx_skb_attach_timestamp.exit.i.if.end42.i_crit_edge: ; preds = %efx_rx_skb_attach_timestamp.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42.i

if.then36.i:                                      ; preds = %efx_rx_skb_attach_timestamp.exit.i
  %call39.i = tail call zeroext i1 %134(ptr noundef %channel, ptr noundef nonnull %call.i.i.i) #9
  br i1 %call39.i, label %if.then36.i.out_crit_edge, label %if.then36.i.if.end42.i_crit_edge

if.then36.i.if.end42.i_crit_edge:                 ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42.i

if.then36.i.out_crit_edge:                        ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end42.i:                                       ; preds = %if.then36.i.if.end42.i_crit_edge, %efx_rx_skb_attach_timestamp.exit.i.if.end42.i_crit_edge
  %rx_list.i = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 44
  %135 = ptrtoint ptr %rx_list.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %rx_list.i, align 4
  %cmp43.not.i = icmp eq ptr %136, null
  br i1 %cmp43.not.i, label %if.else.i, label %if.then45.i

if.then45.i:                                      ; preds = %if.end42.i
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %136, i32 0, i32 1
  %137 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %prev.i.i, align 4
  %call.i.i77.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i.i.i, ptr noundef %138, ptr noundef nonnull %136) #9
  br i1 %call.i.i77.i, label %if.end.i.i.i, label %if.then45.i.out_crit_edge

if.then45.i.out_crit_edge:                        ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end.i.i.i:                                     ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #11
  %139 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %call.i.i.i, ptr %prev.i.i, align 4
  %140 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %136, ptr %call.i.i.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call.i.i.i, i32 0, i32 1
  %141 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %138, ptr %prev3.i.i.i, align 4
  %142 = ptrtoint ptr %138 to i32
  call void @__asan_store4_noabort(i32 %142)
  store volatile ptr %call.i.i.i, ptr %138, align 4
  br label %out

if.else.i:                                        ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #11
  %call47.i = tail call i32 @netif_receive_skb(ptr noundef nonnull %call.i.i.i) #9
  br label %out

out:                                              ; preds = %if.else.i, %if.end.i.i.i, %if.then45.i.out_crit_edge, %if.then36.i.out_crit_edge, %if.then.i, %if.then37, %if.end12.out_crit_edge, %if.then7
  %rx_pkt_n_frags41 = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 42
  %143 = ptrtoint ptr %rx_pkt_n_frags41 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 0, ptr %rx_pkt_n_frags41, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %eh) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_loopback_rx_packet(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_free_rx_buffers(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @efx_do_xdp(ptr noundef %efx, ptr noundef %channel, ptr noundef %rx_buf, ptr nocapture noundef %ehp) unnamed_addr #0 align 64 {
entry:
  %rx_prefix = alloca [16 x i8], align 1
  %xdpf = alloca ptr, align 4
  %xdp = alloca %struct.xdp_buff, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %rx_prefix)
  %0 = call ptr @memset(ptr %rx_prefix, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %xdpf) #9
  %1 = ptrtoint ptr %xdpf to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %xdpf, align 4, !annotation !46
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %xdp) #9
  %2 = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 1
  %3 = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 2
  %4 = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 3
  %5 = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 4
  %6 = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 6
  %xdp_prog1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 107
  %7 = call ptr @memset(ptr %xdp, i32 255, i32 28)
  %8 = ptrtoint ptr %xdp_prog1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %xdp_prog1, align 4
  %call = tail call i32 @rcu_read_lock_bh_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end8_crit_edge

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

land.lhs.true:                                    ; preds = %entry
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b200 = load i1, ptr @efx_do_xdp.__warned, align 1
  br i1 %.b200, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @efx_do_xdp.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 263, ptr noundef nonnull @.str.2) #9
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %entry.do.end8_crit_edge
  %tobool10.not = icmp eq ptr %9, null
  br i1 %tobool10.not, label %do.end8.cleanup_crit_edge, label %if.end12

do.end8.cleanup_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %do.end8
  %rx_queue.i = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 45
  %rx_pkt_n_frags = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 42
  %10 = ptrtoint ptr %rx_pkt_n_frags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_pkt_n_frags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp = icmp ugt i32 %11, 1
  br i1 %cmp, label %if.then16, label %if.end29, !prof !38

if.then16:                                        ; preds = %if.end12
  tail call void @efx_free_rx_buffers(ptr noundef %rx_queue.i, ptr noundef %rx_buf, i32 noundef %11) #9
  %call18 = tail call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then16.if.end28_crit_edge, label %do.body21

if.then16.if.end28_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

do.body21:                                        ; preds = %if.then16
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %12 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %msg_enable, align 4
  %and = and i32 %13, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  br i1 %tobool22.not, label %do.body21.if.end28_crit_edge, label %if.then23

do.body21.if.end28_crit_edge:                     ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then23:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #11
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %14 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %net_dev, align 4
  %16 = ptrtoint ptr %rx_pkt_n_frags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rx_pkt_n_frags, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %15, ptr noundef nonnull @.str.3, i32 noundef %17) #12
  br label %if.end28

if.end28:                                         ; preds = %if.then23, %do.body21.if.end28_crit_edge, %if.then16.if.end28_crit_edge
  %n_rx_xdp_bad_drops = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 39
  %18 = ptrtoint ptr %n_rx_xdp_bad_drops to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %n_rx_xdp_bad_drops, align 8
  %inc = add i32 %19, 1
  store i32 %inc, ptr %n_rx_xdp_bad_drops, align 8
  br label %cleanup

if.end29:                                         ; preds = %if.end12
  %pci_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 4
  %20 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  %22 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rx_buf, align 4
  %len = getelementptr inbounds %struct.efx_rx_buffer, ptr %rx_buf, i32 0, i32 3
  %24 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %len, align 2
  %conv = zext i16 %25 to i32
  tail call void @dma_sync_single_for_cpu(ptr noundef %dev, i32 noundef %23, i32 noundef %conv, i32 noundef 2) #9
  %26 = ptrtoint ptr %ehp to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ehp, align 4
  %rx_prefix_size = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 59
  %28 = ptrtoint ptr %rx_prefix_size to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rx_prefix_size, align 4
  %idx.neg = sub i32 0, %29
  %add.ptr = getelementptr i8, ptr %27, i32 %idx.neg
  %30 = call ptr @memcpy(ptr %rx_prefix, ptr %add.ptr, i32 %29)
  %rx_page_buf_step = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 56
  %31 = ptrtoint ptr %rx_page_buf_step to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rx_page_buf_step, align 32
  %xdp_rxq_info = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 45, i32 28
  %33 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %6, align 4
  %34 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %xdp_rxq_info, ptr %5, align 4
  %add.ptr34 = getelementptr i8, ptr %27, i32 -128
  %35 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %len, align 2
  %conv36 = zext i16 %36 to i32
  %37 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %add.ptr34, ptr %4, align 4
  %38 = ptrtoint ptr %xdp to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %27, ptr %xdp, align 4
  %add.ptr2.i = getelementptr i8, ptr %27, i32 %conv36
  %39 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %add.ptr2.i, ptr %2, align 4
  %add.ptr3.i = getelementptr i8, ptr %27, i32 1
  %40 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %add.ptr3.i, ptr %3, align 4
  tail call void @__cant_migrate(ptr noundef nonnull @.str.6, i32 noundef 613) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @bpf_stats_enabled_key, ptr blockaddress(@efx_do_xdp, %if.then.i.i)) #9
          to label %if.else.i.i [label %if.then.i.i], !srcloc !47

if.then.i.i:                                      ; preds = %if.end29
  %call3.i.i = tail call i64 @sched_clock() #9
  %insnsi.i.i = getelementptr inbounds %struct.bpf_prog, ptr %9, i32 1
  %bpf_func.i.i = getelementptr inbounds %struct.bpf_prog, ptr %9, i32 0, i32 9
  %41 = ptrtoint ptr %bpf_func.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %bpf_func.i.i, align 4
  %call4.i.i = call i32 @bpf_dispatcher_xdp_func(ptr noundef nonnull %xdp, ptr noundef %insnsi.i.i, ptr noundef %42) #9
  %stats9.i.i = getelementptr inbounds %struct.bpf_prog, ptr %9, i32 0, i32 7
  %43 = ptrtoint ptr %stats9.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %stats9.i.i, align 4
  %45 = ptrtoint ptr %44 to i32
  %46 = call i32 @llvm.read_register.i32(metadata !28) #9
  %and.i.i.i = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %49
  %50 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %51, %45
  %52 = inttoptr i32 %add.i.i to ptr
  %syncp.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %52, i32 0, i32 3
  %53 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !48
  %and.i.i.i.i = and i32 %53, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.then.i.i.do.body12.i.i.i_crit_edge

if.then.i.i.do.body12.i.i.i_crit_edge:            ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body12.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @trace_hardirqs_off() #9
  br label %do.body12.i.i.i

do.body12.i.i.i:                                  ; preds = %if.then.i.i.i, %if.then.i.i.do.body12.i.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %54 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool.not.i.i.i.i = icmp eq i32 %54, 0
  br i1 %tobool.not.i.i.i.i, label %do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %land.lhs.true.i.i.i.i

do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %do.body12.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.lhs.true.i.i.i.i:                            ; preds = %do.body12.i.i.i
  %55 = call i32 @llvm.read_register.i32(metadata !28) #9
  %and.i.i.i.i.i.i.i = and i32 %55, -16384
  %56 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %58, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !49
  %59 = call i32 @llvm.read_register.i32(metadata !28) #9
  %and.i.i.i.i.i = and i32 %59, -16384
  %60 = inttoptr i32 %and.i.i.i.i.i to ptr
  %cpu.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 3
  %61 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %62
  %63 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %64, ptrtoint (ptr @lockdep_recursion to i32)
  %65 = inttoptr i32 %add.i.i.i.i to ptr
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %65, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !50
  %68 = call i32 @llvm.read_register.i32(metadata !28) #9
  %and.i.i.i7.i.i.i.i = and i32 %68, -16384
  %69 = inttoptr i32 %and.i.i.i7.i.i.i.i to ptr
  %preempt_count.i.i8.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %preempt_count.i.i8.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %preempt_count.i.i8.i.i.i.i, align 4
  %sub.i.i.i.i.i = add i32 %71, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i8.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool20.not.i.i.i.i = icmp eq i32 %67, 0
  br i1 %tobool20.not.i.i.i.i, label %land.rhs.i.i.i.i, label %land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge

land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  %72 = call i32 @llvm.read_register.i32(metadata !28) #9
  %and.i.i.i.i.i.i = and i32 %72, -16384
  %73 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp.i.i.i.i = icmp eq i32 %75, 0
  br i1 %cmp.i.i.i.i, label %land.rhs22.i.i.i.i, label %land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge

land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs22.i.i.i.i:                               ; preds = %land.rhs.i.i.i.i
  %76 = call i32 @llvm.read_register.i32(metadata !28) #9
  %and.i.i.i9.i.i.i.i = and i32 %76, -16384
  %77 = inttoptr i32 %and.i.i.i9.i.i.i.i to ptr
  %preempt_count.i.i10.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %preempt_count.i.i10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %preempt_count.i.i10.i.i.i.i, align 4
  %add.i11.i.i.i.i = add i32 %79, 1
  store volatile i32 %add.i11.i.i.i.i, ptr %preempt_count.i.i10.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !51
  %80 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx46.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %81
  %82 = ptrtoint ptr %arrayidx46.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx46.i.i.i.i, align 4
  %add47.i.i.i.i = add i32 %83, ptrtoint (ptr @hardirqs_enabled to i32)
  %84 = inttoptr i32 %add47.i.i.i.i to ptr
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile i32, ptr %84, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !52
  %87 = call i32 @llvm.read_register.i32(metadata !28) #9
  %and.i.i.i12.i.i.i.i = and i32 %87, -16384
  %88 = inttoptr i32 %and.i.i.i12.i.i.i.i to ptr
  %preempt_count.i.i13.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %preempt_count.i.i13.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %preempt_count.i.i13.i.i.i.i, align 4
  %sub.i14.i.i.i.i = add i32 %90, -1
  store volatile i32 %sub.i14.i.i.i.i, ptr %preempt_count.i.i13.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool54.not.i.i.i.i = icmp eq i32 %86, 0
  br i1 %tobool54.not.i.i.i.i, label %land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %land.rhs58.i.i.i.i

land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs22.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs58.i.i.i.i:                               ; preds = %land.rhs22.i.i.i.i
  %.b1.i.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i.i, label %land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %if.then.i.i.i.i, !prof !42

land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %u64_stats_update_begin_irqsave.exit.i.i

if.then.i.i.i.i:                                  ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 271, i32 noundef 9, ptr noundef null) #9
  br label %u64_stats_update_begin_irqsave.exit.i.i

u64_stats_update_begin_irqsave.exit.i.i:          ; preds = %if.then.i.i.i.i, %land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge
  %91 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i.i = add i32 %92, 1
  store i32 %inc.i.i.i.i.i.i, ptr %syncp.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !53
  %dep_map.i.i.i.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %52, i32 0, i32 3, i32 0, i32 1
  %93 = call ptr @llvm.returnaddress(i32 0) #9
  %94 = ptrtoint ptr %93 to i32
  call void @lock_acquire(ptr noundef %dep_map.i.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %94) #9
  %95 = ptrtoint ptr %52 to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %52, align 8
  %inc.i.i.i = add i64 %96, 1
  store i64 %inc.i.i.i, ptr %52, align 8
  %nsecs.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %52, i32 0, i32 1
  %call13.i.i = call i64 @sched_clock() #9
  %sub.i.i = sub i64 %call13.i.i, %call3.i.i
  %conv.i.i.i = and i64 %sub.i.i, 4294967295
  %97 = ptrtoint ptr %nsecs.i.i to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %nsecs.i.i, align 8
  %add.i.i.i = add i64 %conv.i.i.i, %98
  store i64 %add.i.i.i, ptr %nsecs.i.i, align 8
  call void @lock_release(ptr noundef %dep_map.i.i.i.i.i, i32 noundef %94) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !54
  %99 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i = add i32 %100, 1
  store i32 %inc.i.i.i.i.i, ptr %syncp.i.i, align 4
  br i1 %tobool.not.i.i.i, label %if.then8.i.i.i, label %u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge

u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge: ; preds = %u64_stats_update_begin_irqsave.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body10.i.i.i

if.then8.i.i.i:                                   ; preds = %u64_stats_update_begin_irqsave.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @trace_hardirqs_on() #9
  br label %do.body10.i.i.i

do.body10.i.i.i:                                  ; preds = %if.then8.i.i.i, %u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge
  %101 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !55
  %and.i.i.i3.i.i = and i32 %101, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i3.i.i)
  %tobool18.not.i.i.i = icmp eq i32 %and.i.i.i3.i.i, 0
  br i1 %tobool18.not.i.i.i, label %if.then22.i.i.i, label %do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge, !prof !38

do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge: ; preds = %do.body10.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %u64_stats_update_end_irqrestore.exit.i.i

if.then22.i.i.i:                                  ; preds = %do.body10.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @warn_bogus_irq_restore() #9
  br label %u64_stats_update_end_irqrestore.exit.i.i

u64_stats_update_end_irqrestore.exit.i.i:         ; preds = %if.then22.i.i.i, %do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %53) #9, !srcloc !56
  br label %__bpf_prog_run.exit.i

if.else.i.i:                                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  %insnsi15.i.i = getelementptr inbounds %struct.bpf_prog, ptr %9, i32 1
  %bpf_func17.i.i = getelementptr inbounds %struct.bpf_prog, ptr %9, i32 0, i32 9
  %102 = ptrtoint ptr %bpf_func17.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %bpf_func17.i.i, align 4
  %call18.i.i = call i32 @bpf_dispatcher_xdp_func(ptr noundef nonnull %xdp, ptr noundef %insnsi15.i.i, ptr noundef %103) #9
  br label %__bpf_prog_run.exit.i

__bpf_prog_run.exit.i:                            ; preds = %if.else.i.i, %u64_stats_update_end_irqrestore.exit.i.i
  %ret.0.i.i = phi i32 [ %call4.i.i, %u64_stats_update_end_irqrestore.exit.i.i ], [ %call18.i.i, %if.else.i.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @bpf_master_redirect_enabled_key, ptr blockaddress(@efx_do_xdp, %l_yes.i.i)) #9
          to label %arch_static_branch.exit.i [label %l_yes.i.i], !srcloc !47

l_yes.i.i:                                        ; preds = %__bpf_prog_run.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %arch_static_branch.exit.i

arch_static_branch.exit.i:                        ; preds = %l_yes.i.i, %__bpf_prog_run.exit.i
  %retval.0.i.i = phi i1 [ true, %l_yes.i.i ], [ false, %__bpf_prog_run.exit.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %ret.0.i.i)
  %cmp.i = icmp eq i32 %ret.0.i.i, 3
  %or.cond.i = select i1 %retval.0.i.i, i1 %cmp.i, i1 false
  br i1 %or.cond.i, label %land.lhs.true.i, label %arch_static_branch.exit.i.bpf_prog_run_xdp.exit_crit_edge

arch_static_branch.exit.i.bpf_prog_run_xdp.exit_crit_edge: ; preds = %arch_static_branch.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bpf_prog_run_xdp.exit

land.lhs.true.i:                                  ; preds = %arch_static_branch.exit.i
  %104 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %5, align 4
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %105, align 128
  %flags.i.i = getelementptr inbounds %struct.net_device, ptr %107, i32 0, i32 14
  %108 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %109, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.bpf_prog_run_xdp.exit.thread_crit_edge, label %netif_is_bond_slave.exit.i

land.lhs.true.i.bpf_prog_run_xdp.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bpf_prog_run_xdp.exit.thread

netif_is_bond_slave.exit.i:                       ; preds = %land.lhs.true.i
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %107, i32 0, i32 15
  %110 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %priv_flags.i.i, align 16
  %and1.i.i = and i64 %111, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i.i)
  %tobool2.i.not.i = icmp eq i64 %and1.i.i, 0
  br i1 %tobool2.i.not.i, label %netif_is_bond_slave.exit.i.bpf_prog_run_xdp.exit.thread_crit_edge, label %if.then5.i

netif_is_bond_slave.exit.i.bpf_prog_run_xdp.exit.thread_crit_edge: ; preds = %netif_is_bond_slave.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bpf_prog_run_xdp.exit.thread

if.then5.i:                                       ; preds = %netif_is_bond_slave.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %call6.i = call i32 @xdp_master_redirect(ptr noundef nonnull %xdp) #9
  br label %bpf_prog_run_xdp.exit

bpf_prog_run_xdp.exit.thread:                     ; preds = %netif_is_bond_slave.exit.i.bpf_prog_run_xdp.exit.thread_crit_edge, %land.lhs.true.i.bpf_prog_run_xdp.exit.thread_crit_edge
  %112 = ptrtoint ptr %xdp to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %xdp, align 4
  %sub.ptr.lhs.cast206 = ptrtoint ptr %113 to i32
  br label %sw.bb56

bpf_prog_run_xdp.exit:                            ; preds = %if.then5.i, %arch_static_branch.exit.i.bpf_prog_run_xdp.exit_crit_edge
  %act.0.i = phi i32 [ %call6.i, %if.then5.i ], [ %ret.0.i.i, %arch_static_branch.exit.i.bpf_prog_run_xdp.exit_crit_edge ]
  %114 = ptrtoint ptr %xdp to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %xdp, align 4
  %116 = ptrtoint ptr %ehp to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %ehp, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %115 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %117 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %118 = zext i32 %act.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %118, ptr @__sancov_gen_cov_switch_values)
  switch i32 %act.0.i, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %bpf_prog_run_xdp.exit.sw.bb56_crit_edge
    i32 4, label %sw.bb86
    i32 0, label %sw.bb120
    i32 1, label %bpf_prog_run_xdp.exit.sw.bb122_crit_edge
  ]

bpf_prog_run_xdp.exit.sw.bb122_crit_edge:         ; preds = %bpf_prog_run_xdp.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb122

bpf_prog_run_xdp.exit.sw.bb56_crit_edge:          ; preds = %bpf_prog_run_xdp.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb56

sw.bb:                                            ; preds = %bpf_prog_run_xdp.exit
  %conv38 = trunc i32 %sub.ptr.sub to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv38)
  %tobool39.not = icmp eq i16 %conv38, 0
  br i1 %tobool39.not, label %sw.bb.sw.epilog_crit_edge, label %if.then40

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then40:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %sext = shl i32 %sub.ptr.sub, 16
  %conv41 = ashr exact i32 %sext, 16
  %add.ptr42 = getelementptr i8, ptr %117, i32 %conv41
  %119 = ptrtoint ptr %ehp to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %add.ptr42, ptr %ehp, align 4
  %page_offset = getelementptr inbounds %struct.efx_rx_buffer, ptr %rx_buf, i32 0, i32 2
  %120 = ptrtoint ptr %page_offset to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %page_offset, align 4
  %conv45 = add i16 %121, %conv38
  store i16 %conv45, ptr %page_offset, align 4
  %122 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %len, align 2
  %conv49 = sub i16 %123, %conv38
  store i16 %conv49, ptr %len, align 2
  %124 = load ptr, ptr %ehp, align 4
  %125 = ptrtoint ptr %rx_prefix_size to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %rx_prefix_size, align 4
  %idx.neg51 = sub i32 0, %126
  %add.ptr52 = getelementptr i8, ptr %124, i32 %idx.neg51
  %127 = call ptr @memcpy(ptr %add.ptr52, ptr %rx_prefix, i32 %126)
  br label %sw.epilog

sw.bb56:                                          ; preds = %bpf_prog_run_xdp.exit.sw.bb56_crit_edge, %bpf_prog_run_xdp.exit.thread
  %sub.ptr.lhs.cast211 = phi i32 [ %sub.ptr.lhs.cast206, %bpf_prog_run_xdp.exit.thread ], [ %sub.ptr.lhs.cast, %bpf_prog_run_xdp.exit.sw.bb56_crit_edge ]
  %128 = phi ptr [ %113, %bpf_prog_run_xdp.exit.thread ], [ %115, %bpf_prog_run_xdp.exit.sw.bb56_crit_edge ]
  %129 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %5, align 4
  %mem.i = getelementptr inbounds %struct.xdp_rxq_info, ptr %130, i32 0, i32 3
  %131 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %mem.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %132)
  %cmp.i202 = icmp eq i32 %132, 3
  br i1 %cmp.i202, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = call ptr @xdp_convert_zc_to_xdp_frame(ptr noundef nonnull %xdp) #9
  br label %xdp_convert_buff_to_frame.exit

if.end.i:                                         ; preds = %sw.bb56
  %133 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %4, align 4
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %134 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast211, %sub.ptr.rhs.cast.i.i
  %135 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %3, align 4
  %sub.ptr.rhs.cast3.i.i = ptrtoint ptr %136 to i32
  %sub.ptr.sub4.i.i = sub i32 %sub.ptr.lhs.cast211, %sub.ptr.rhs.cast3.i.i
  %137 = call i32 @llvm.smax.i32(i32 %sub.ptr.sub4.i.i, i32 0) #9
  %sub.i.i204 = sub i32 %sub.ptr.sub.i.i, %137
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %sub.i.i204)
  %cmp5.i.i = icmp ult i32 %sub.i.i204, 24
  br i1 %cmp5.i.i, label %if.end.i.xdp_convert_buff_to_frame.exit_crit_edge, label %if.end.i.i, !prof !38

if.end.i.xdp_convert_buff_to_frame.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xdp_convert_buff_to_frame.exit

if.end.i.i:                                       ; preds = %if.end.i
  %138 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %2, align 4
  %140 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %6, align 4
  %add.ptr.i.i = getelementptr i8, ptr %134, i32 %141
  %add.ptr8.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 -256
  %cmp9.i.i = icmp ugt ptr %139, %add.ptr8.i.i
  br i1 %cmp9.i.i, label %if.then16.i.i, label %if.end5.i, !prof !38

if.then16.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @xdp_warn(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.xdp_update_frame_from_buff, i32 noundef 200) #9
  br label %xdp_convert_buff_to_frame.exit

if.end5.i:                                        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %142 = ptrtoint ptr %134 to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %128, ptr %134, align 4
  %143 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %2, align 4
  %145 = ptrtoint ptr %xdp to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %xdp, align 4
  %sub.ptr.lhs.cast22.i.i = ptrtoint ptr %144 to i32
  %sub.ptr.rhs.cast23.i.i = ptrtoint ptr %146 to i32
  %sub.ptr.sub24.i.i = sub i32 %sub.ptr.lhs.cast22.i.i, %sub.ptr.rhs.cast23.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub24.i.i to i16
  %len.i.i = getelementptr inbounds %struct.xdp_frame, ptr %134, i32 0, i32 1
  %147 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store2_noabort(i32 %147)
  store i16 %conv.i.i, ptr %len.i.i, align 4
  %148 = trunc i32 %sub.ptr.sub.i.i to i16
  %conv26.i.i = add i16 %148, -24
  %headroom27.i.i = getelementptr inbounds %struct.xdp_frame, ptr %134, i32 0, i32 2
  %149 = ptrtoint ptr %headroom27.i.i to i32
  call void @__asan_store2_noabort(i32 %149)
  store i16 %conv26.i.i, ptr %headroom27.i.i, align 2
  %metasize28.i.i = getelementptr inbounds %struct.xdp_frame, ptr %134, i32 0, i32 3
  %150 = ptrtoint ptr %metasize28.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %bf.load.i.i = load i32, ptr %metasize28.i.i, align 4
  %bf.shl.i.i = shl i32 %137, 24
  %bf.clear.i.i = and i32 %bf.load.i.i, 16777215
  %bf.set.i.i = or i32 %bf.clear.i.i, %bf.shl.i.i
  store i32 %bf.set.i.i, ptr %metasize28.i.i, align 4
  %151 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %6, align 4
  %bf.value32.i.i = and i32 %152, 16777215
  %bf.set34.i.i = or i32 %bf.value32.i.i, %bf.shl.i.i
  store i32 %bf.set34.i.i, ptr %metasize28.i.i, align 4
  %mem6.i = getelementptr inbounds %struct.xdp_frame, ptr %134, i32 0, i32 4
  %153 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %5, align 4
  %mem8.i = getelementptr inbounds %struct.xdp_rxq_info, ptr %154, i32 0, i32 3
  %155 = ptrtoint ptr %mem8.i to i32
  call void @__asan_loadN_noabort(i32 %155, i32 8)
  %156 = load i64, ptr %mem8.i, align 4
  %157 = ptrtoint ptr %mem6.i to i32
  call void @__asan_storeN_noabort(i32 %157, i32 8)
  store i64 %156, ptr %mem6.i, align 4
  br label %xdp_convert_buff_to_frame.exit

xdp_convert_buff_to_frame.exit:                   ; preds = %if.end5.i, %if.then16.i.i, %if.end.i.xdp_convert_buff_to_frame.exit_crit_edge, %if.then.i
  %retval.0.i = phi ptr [ %call.i, %if.then.i ], [ %134, %if.end5.i ], [ null, %if.then16.i.i ], [ null, %if.end.i.xdp_convert_buff_to_frame.exit_crit_edge ]
  %158 = ptrtoint ptr %xdpf to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr %retval.0.i, ptr %xdpf, align 4
  %call58 = call i32 @efx_xdp_tx_buffers(ptr noundef %efx, i32 noundef 1, ptr noundef nonnull %xdpf, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call58)
  %cmp59.not = icmp eq i32 %call58, 1
  br i1 %cmp59.not, label %if.else, label %if.then67, !prof !42

if.then67:                                        ; preds = %xdp_convert_buff_to_frame.exit
  call void @efx_free_rx_buffers(ptr noundef %rx_queue.i, ptr noundef %rx_buf, i32 noundef 1) #9
  %call68 = call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.then67.if.end80_crit_edge, label %do.body71

if.then67.if.end80_crit_edge:                     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80

do.body71:                                        ; preds = %if.then67
  %msg_enable72 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %159 = ptrtoint ptr %msg_enable72 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %msg_enable72, align 4
  %and73 = and i32 %160, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool74.not = icmp eq i32 %and73, 0
  br i1 %tobool74.not, label %do.body71.if.end80_crit_edge, label %if.then75

do.body71.if.end80_crit_edge:                     ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80

if.then75:                                        ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #11
  %net_dev76 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %161 = ptrtoint ptr %net_dev76 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %net_dev76, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %162, ptr noundef nonnull @.str.4, i32 noundef %call58) #12
  br label %if.end80

if.end80:                                         ; preds = %if.then75, %do.body71.if.end80_crit_edge, %if.then67.if.end80_crit_edge
  %n_rx_xdp_bad_drops81 = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 39
  %163 = ptrtoint ptr %n_rx_xdp_bad_drops81 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %n_rx_xdp_bad_drops81, align 8
  %inc82 = add i32 %164, 1
  store i32 %inc82, ptr %n_rx_xdp_bad_drops81, align 8
  %net_dev83 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %165 = ptrtoint ptr %net_dev83 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %net_dev83, align 4
  call fastcc void @trace_xdp_exception(ptr noundef %166, ptr noundef nonnull %9, i32 noundef 3)
  br label %sw.epilog

if.else:                                          ; preds = %xdp_convert_buff_to_frame.exit
  call void @__sanitizer_cov_trace_pc() #11
  %n_rx_xdp_tx = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 40
  %167 = ptrtoint ptr %n_rx_xdp_tx to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %n_rx_xdp_tx, align 4
  %inc84 = add i32 %168, 1
  store i32 %inc84, ptr %n_rx_xdp_tx, align 4
  br label %sw.epilog

sw.bb86:                                          ; preds = %bpf_prog_run_xdp.exit
  %net_dev87 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %169 = ptrtoint ptr %net_dev87 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %net_dev87, align 4
  %call88 = call i32 @xdp_do_redirect(ptr noundef %170, ptr noundef nonnull %xdp, ptr noundef nonnull %9) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %if.else113, label %if.then96, !prof !42

if.then96:                                        ; preds = %sw.bb86
  call void @efx_free_rx_buffers(ptr noundef %rx_queue.i, ptr noundef %rx_buf, i32 noundef 1) #9
  %call97 = call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %if.then96.if.end109_crit_edge, label %do.body100

if.then96.if.end109_crit_edge:                    ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end109

do.body100:                                       ; preds = %if.then96
  %msg_enable101 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %171 = ptrtoint ptr %msg_enable101 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %msg_enable101, align 4
  %and102 = and i32 %172, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and102)
  %tobool103.not = icmp eq i32 %and102, 0
  br i1 %tobool103.not, label %do.body100.if.end109_crit_edge, label %if.then104

do.body100.if.end109_crit_edge:                   ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end109

if.then104:                                       ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #11
  %173 = ptrtoint ptr %net_dev87 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %net_dev87, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %174, ptr noundef nonnull @.str.5, i32 noundef %call88) #12
  br label %if.end109

if.end109:                                        ; preds = %if.then104, %do.body100.if.end109_crit_edge, %if.then96.if.end109_crit_edge
  %n_rx_xdp_bad_drops110 = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 39
  %175 = ptrtoint ptr %n_rx_xdp_bad_drops110 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %n_rx_xdp_bad_drops110, align 8
  %inc111 = add i32 %176, 1
  store i32 %inc111, ptr %n_rx_xdp_bad_drops110, align 8
  %177 = ptrtoint ptr %net_dev87 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %net_dev87, align 4
  call fastcc void @trace_xdp_exception(ptr noundef %178, ptr noundef nonnull %9, i32 noundef 4)
  br label %sw.epilog

if.else113:                                       ; preds = %sw.bb86
  call void @__sanitizer_cov_trace_pc() #11
  %n_rx_xdp_redirect = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 41
  %179 = ptrtoint ptr %n_rx_xdp_redirect to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %n_rx_xdp_redirect, align 16
  %inc114 = add i32 %180, 1
  store i32 %inc114, ptr %n_rx_xdp_redirect, align 16
  br label %sw.epilog

sw.default:                                       ; preds = %bpf_prog_run_xdp.exit
  call void @__sanitizer_cov_trace_pc() #11
  %net_dev116 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %181 = ptrtoint ptr %net_dev116 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %net_dev116, align 4
  call void @bpf_warn_invalid_xdp_action(ptr noundef %182, ptr noundef nonnull %9, i32 noundef %act.0.i) #9
  call void @efx_free_rx_buffers(ptr noundef %rx_queue.i, ptr noundef %rx_buf, i32 noundef 1) #9
  %n_rx_xdp_bad_drops117 = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 39
  %183 = ptrtoint ptr %n_rx_xdp_bad_drops117 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %n_rx_xdp_bad_drops117, align 8
  %inc118 = add i32 %184, 1
  store i32 %inc118, ptr %n_rx_xdp_bad_drops117, align 8
  %185 = ptrtoint ptr %net_dev116 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %net_dev116, align 4
  call fastcc void @trace_xdp_exception(ptr noundef %186, ptr noundef nonnull %9, i32 noundef %act.0.i)
  br label %sw.epilog

sw.bb120:                                         ; preds = %bpf_prog_run_xdp.exit
  call void @__sanitizer_cov_trace_pc() #11
  %net_dev121 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %187 = ptrtoint ptr %net_dev121 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %net_dev121, align 4
  call fastcc void @trace_xdp_exception(ptr noundef %188, ptr noundef nonnull %9, i32 noundef 0)
  br label %sw.bb122

sw.bb122:                                         ; preds = %sw.bb120, %bpf_prog_run_xdp.exit.sw.bb122_crit_edge
  call void @efx_free_rx_buffers(ptr noundef %rx_queue.i, ptr noundef %rx_buf, i32 noundef 1) #9
  %n_rx_xdp_drops = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 38
  %189 = ptrtoint ptr %n_rx_xdp_drops to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %n_rx_xdp_drops, align 4
  %inc123 = add i32 %190, 1
  store i32 %inc123, ptr %n_rx_xdp_drops, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb122, %sw.default, %if.else113, %if.end109, %if.else, %if.end80, %if.then40, %sw.bb.sw.epilog_crit_edge
  %act.0.i209 = phi i32 [ 4, %if.end109 ], [ 4, %if.else113 ], [ 3, %if.end80 ], [ 3, %if.else ], [ 2, %sw.bb.sw.epilog_crit_edge ], [ 2, %if.then40 ], [ %act.0.i, %sw.bb122 ], [ %act.0.i, %sw.default ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %act.0.i209)
  %cmp124 = icmp eq i32 %act.0.i209, 2
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end28, %do.end8.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.end28 ], [ %cmp124, %sw.epilog ], [ true, %do.end8.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %xdp) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %xdpf) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rx_prefix)
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_rx_packet_gro(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_xdp_tx_buffers(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xdp_exception(ptr noundef %dev, ptr noundef %xdp, i32 noundef %act) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xdp_exception, i32 0, i32 1), ptr blockaddress(@trace_xdp_exception, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !47

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !28) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !42

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !28) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !57
  %call42 = tail call i32 @__traceiter_xdp_exception(ptr noundef null, ptr noundef %dev, ptr noundef %xdp, i32 noundef %act) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !58
  %13 = tail call i32 @llvm.read_register.i32(metadata !28) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !28) #9
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !42

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !28) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !59
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xdp_exception, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xdp_exception, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xdp_exception.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_xdp_exception.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 51, ptr noundef nonnull @.str.2) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !60
  %31 = tail call i32 @llvm.read_register.i32(metadata !28) #9
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
declare dso_local i32 @xdp_do_redirect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_warn_invalid_xdp_action(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_dispatcher_xdp_func(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdp_master_redirect(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cant_migrate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdp_convert_zc_to_xdp_frame(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdp_warn(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xdp_exception(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_receive_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_add_rx_frag(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__efx_rx_skb_attach_timestamp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !18, !20, !21, !23, !24, !25, !27}
!llvm.named.register.sp = !{!28}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/sfc/rx.c", i32 144, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/sfc/rx.c", i32 59, i32 3}
!4 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/sfc/rx.c", i32 263, i32 13}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/sfc/rx.c", i32 274, i32 4}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/sfc/rx.c", i32 317, i32 5}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/sfc/rx.c", i32 331, i32 5}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../include/linux/filter.h", i32 613, i32 2}
!15 = distinct !{null, !16, !"__already_done", i1 false, i1 false}
!16 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!17 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../include/net/xdp.h", i32 200, i32 3}
!20 = !{ptr @__func__.xdp_update_frame_from_buff, !19, !"<string literal>", i1 false, i1 false}
!21 = distinct !{null, !22, !"__already_done", i1 false, i1 false}
!22 = !{!"../include/trace/events/xdp.h", i32 28, i32 1}
!23 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!24 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!25 = distinct !{null, !26, !"__already_done", i1 false, i1 false}
!26 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!27 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!28 = !{!"sp"}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{!"branch_weights", i32 1, i32 2000}
!39 = !{!"branch_weights", i32 4001, i32 4000000}
!40 = !{i8 0, i8 2}
!41 = !{!"branch_weights", i32 2002, i32 2000}
!42 = !{!"branch_weights", i32 2000, i32 1}
!43 = !{i64 752371}
!44 = !{i64 2154589775, i64 2154590263, i64 2154589812, i64 2154589868, i64 2154589902, i64 2154589926, i64 2154589967, i64 2154589988, i64 2154590016, i64 2154590050}
!45 = !{i64 2148254880, i64 2148254906, i64 2148254935, i64 2148254969, i64 2148255000, i64 2148255023}
!46 = !{!"auto-init"}
!47 = !{i64 2148736695, i64 2148736700, i64 2148736713, i64 2148736757, i64 2148736791, i64 2148736812}
!48 = !{i64 647361, i64 647422}
!49 = !{i64 2149864369}
!50 = !{i64 2149869301}
!51 = !{i64 2149891013}
!52 = !{i64 2149895905}
!53 = !{i64 2149972362}
!54 = !{i64 2149972687}
!55 = !{i64 650093}
!56 = !{i64 650378}
!57 = !{i64 2158463190}
!58 = !{i64 2158463405}
!59 = !{i64 2149341278}
!60 = !{i64 2149342314}
