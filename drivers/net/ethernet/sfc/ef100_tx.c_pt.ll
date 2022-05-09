; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/sfc/ef100_tx.c_pt.bc'
source_filename = "../drivers/net/ethernet/sfc/ef100_tx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.softnet_data = type { %struct.list_head, %struct.sk_buff_head, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.sk_buff_head, %struct.anon.153, [100 x i8], i32, [124 x i8], %struct.__call_single_data, ptr, i32, i32, i32, %struct.sk_buff_head, %struct.napi_struct, [72 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.anon.153 = type { i16, i8 }
%struct.__call_single_data = type { %struct.__call_single_node, ptr, ptr }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.efx_tx_queue = type { ptr, i32, i32, i32, i32, i8, ptr, ptr, ptr, ptr, %struct.efx_special_buffer, i32, ptr, i32, i8, i8, i8, [53 x i8], i32, i32, i32, i32, i32, i32, i32, [100 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, [72 x i8], i32, %struct.atomic_t, [120 x i8] }
%struct.efx_special_buffer = type { %struct.efx_buffer, i32, i32 }
%struct.efx_buffer = type { ptr, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.efx_nic = type { [16 x i8], %struct.list_head, ptr, %struct.list_head, ptr, i32, ptr, i32, i8, ptr, [16 x i8], %struct.work_struct, i32, ptr, i32, i32, i32, i32, i8, i8, i32, i32, i32, i32, i32, [32 x ptr], [32 x %struct.efx_msi_context], [2 x ptr], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.efx_rss_context, %struct.mutex, i32, i32, i32, i8, i8, %struct.efx_buffer, i32, i32, %struct.delayed_work, %struct.list_head, ptr, ptr, %struct.mutex, %struct.work_struct, i8, i8, i8, ptr, i64, i16, %struct.efx_buffer, i64, i64, i8, i32, ptr, %struct.mdio_if_info, i32, i32, [3 x i32], i32, %struct.efx_link_state, i32, i8, %union.efx_multicast_hash, i8, i32, %struct.atomic_t, i32, i64, ptr, ptr, %struct.rw_semaphore, ptr, %struct.mutex, i32, [8 x %struct.efx_async_filter_insertion], %struct.spinlock, ptr, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, ptr, i8, ptr, i8, %struct.notifier_block, i32, i32, %struct.delayed_work, %struct.spinlock, i32, %struct.spinlock, %struct.atomic_t, [60 x i8] }
%struct.efx_msi_context = type { ptr, i32, [22 x i8] }
%struct.efx_rss_context = type { %struct.list_head, i32, i32, i8, [40 x i8], [128 x i32] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mdio_if_info = type { i32, i32, i32, ptr, ptr, ptr }
%struct.efx_link_state = type { i8, i8, i8, i32 }
%union.efx_multicast_hash = type { [2 x %union.efx_oword] }
%union.efx_oword = type { [2 x i64] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.efx_async_filter_insertion = type { ptr, %struct.efx_filter_spec, %struct.work_struct, i16, i32 }
%struct.efx_filter_spec = type { i32, i32, i16, i16, [6 x i8], [6 x i8], i16, i8, [4 x i32], [4 x i32], i16, i16, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.efx_channel = type { ptr, i32, ptr, i8, i8, i32, i32, ptr, %struct.napi_struct, i32, %struct.efx_special_buffer, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.delayed_work, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.efx_rx_queue, [4 x %struct.efx_tx_queue], [8 x ptr], i32, i32, i32, [84 x i8] }
%struct.efx_rx_queue = type { ptr, i32, ptr, %struct.efx_special_buffer, i32, i8, i8, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, [92 x i8], %struct.xdp_rxq_info, i8, [127 x i8] }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.128, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.145, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.128 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.145 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.efx_tx_buffer = type { %union.anon.147, %union.anon.148, i16, i16, i16, i16 }
%union.anon.147 = type { ptr }
%union.anon.148 = type { %union.efx_qword }
%union.efx_qword = type { [1 x i64] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
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
%struct.ef100_nic_data = type { ptr, %struct.efx_buffer, i32, i32, i32, i32, i16, [6 x i8], [1 x i32], [38 x i64], i16, i16, i16, i32 }
%struct.anon.60 = type { i16, i16 }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }

@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/net/ethernet/sfc/ef100_tx.c\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"netdevice: %s%s: failed to initialise TXQ %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"(unnamed net_device)\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c" (uninitialized)\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c" (unregistering)\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c" (unregistered)\00", [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c" (released)\00", [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" (dummy)\00", [23 x i8] zeroinitializer }, align 32
@netdev_reg_state.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/netdevice.h\00", [38 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: unknown reg_state %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c" (unknown)\00", [21 x i8] zeroinitializer }, align 32
@ef100_tx_make_descriptors.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@softnet_data = external dso_local global %struct.softnet_data, section ".data..percpu..shared_aligned", align 128
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@ef100_tx_can_tso.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"MSS of %u is too small for TSO\0A\00", [32 x i8] zeroinitializer }, align 32
@ef100_tx_can_tso.__already_done.14 = internal unnamed_addr global i1 false, section ".data.once", align 1
@ef100_tx_can_tso.__already_done.15 = internal unnamed_addr global i1 false, section ".data.once", align 1
@switch.table.ef100_tx_init = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 48, i32 3 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 4963, i32 10 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 4975, i32 36 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 4976, i32 33 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 4977, i32 36 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 4978, i32 35 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 4979, i32 31 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 4980, i32 28 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 4983, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant [29 x i8] c"../include/linux/netdevice.h\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 4984, i32 9 }
@___asan_gen_.52 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.53 = private constant [39 x i8] c"../drivers/net/ethernet/sfc/ef100_tx.c\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 69, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant [27 x i8] c"switch.table.ef100_tx_init\00", align 1
@llvm.compiler.used = appending global [14 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @switch.table.ef100_tx_init], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ef100_tx_init to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ef100_tx_probe(ptr noundef %tx_queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_queue, align 128
  %txd = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 10
  %ptr_mask = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 11
  %2 = ptrtoint ptr %ptr_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ptr_mask, align 4
  %add = shl i32 %3, 4
  %mul = add i32 %add, 32
  %call = tail call i32 @efx_nic_alloc_buffer(ptr noundef %1, ptr noundef %txd, i32 noundef %mul, i32 noundef 3264) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_nic_alloc_buffer(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ef100_tx_init(ptr noundef %tx_queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_queue, align 128
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 83
  %2 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net_dev, align 4
  %channel = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 6
  %4 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %channel, align 8
  %channel1 = getelementptr inbounds %struct.efx_channel, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %channel1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channel1, align 4
  %tx_channel_offset = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 45
  %8 = ptrtoint ptr %tx_channel_offset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_channel_offset, align 4
  %sub = sub i32 %7, %9
  %_tx.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 103
  %10 = ptrtoint ptr %_tx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %_tx.i, align 128
  %arrayidx.i = getelementptr %struct.netdev_queue, ptr %11, i32 %sub
  %core_txq = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 7
  %12 = ptrtoint ptr %core_txq to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %arrayidx.i, ptr %core_txq, align 4
  %tso_version = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 4
  %13 = ptrtoint ptr %tso_version to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 3, ptr %tso_version, align 16
  %call3 = tail call i32 @efx_mcdi_tx_init(ptr noundef %tx_queue) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %entry.if.end26_crit_edge, label %do.end

entry.if.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

do.end:                                           ; preds = %entry
  %14 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tx_queue, align 128
  %net_dev10 = getelementptr inbounds %struct.efx_nic, ptr %15, i32 0, i32 83
  %16 = ptrtoint ptr %net_dev10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %net_dev10, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %17, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i = icmp eq i8 %19, 0
  br i1 %tobool.not.i, label %do.end.netdev_name.exit_crit_edge, label %lor.lhs.false.i

do.end.netdev_name.exit_crit_edge:                ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %netdev_name.exit

lor.lhs.false.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call ptr @strchr(ptr noundef %17, i32 noundef 37) #5
  %tobool2.not.i = icmp eq ptr %call.i, null
  %spec.select.i = select i1 %tobool2.not.i, ptr %17, ptr @.str.2
  br label %netdev_name.exit

netdev_name.exit:                                 ; preds = %lor.lhs.false.i, %do.end.netdev_name.exit_crit_edge
  %retval.0.i = phi ptr [ @.str.2, %do.end.netdev_name.exit_crit_edge ], [ %spec.select.i, %lor.lhs.false.i ]
  %reg_state.i = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 121
  %20 = ptrtoint ptr %reg_state.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load45.i = load i8, ptr %reg_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %bf.load45.i)
  %21 = icmp ult i8 %bf.load45.i, 6
  br i1 %21, label %switch.lookup, label %land.end.i

land.end.i:                                       ; preds = %netdev_name.exit
  %.b46.i = load i1, ptr @netdev_reg_state.__already_done, align 1
  br i1 %.b46.i, label %land.end.i.netdev_reg_state.exit_crit_edge, label %if.then.i, !prof !44

land.end.i.netdev_reg_state.exit_crit_edge:       ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %netdev_reg_state.exit

if.then.i:                                        ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @netdev_reg_state.__already_done, align 1
  %bf.cast21.i = zext i8 %bf.load45.i to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 4983, i32 noundef 9, ptr noundef nonnull @.str.10, ptr noundef %17, i32 noundef %bf.cast21.i) #5
  br label %netdev_reg_state.exit

switch.lookup:                                    ; preds = %netdev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  %22 = sext i8 %bf.load45.i to i32
  %switch.gep = getelementptr inbounds [6 x ptr], ptr @switch.table.ef100_tx_init, i32 0, i32 %22
  %23 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %23)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %netdev_reg_state.exit

netdev_reg_state.exit:                            ; preds = %switch.lookup, %if.then.i, %land.end.i.netdev_reg_state.exit_crit_edge
  %retval.0.i36 = phi ptr [ @.str.11, %if.then.i ], [ @.str.11, %land.end.i.netdev_reg_state.exit_crit_edge ], [ %switch.load, %switch.lookup ]
  %queue = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 1
  %24 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %queue, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 49, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %retval.0.i, ptr noundef nonnull %retval.0.i36, i32 noundef %25) #5
  br label %if.end26

if.end26:                                         ; preds = %netdev_reg_state.exit, %entry.if.end26_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_tx_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ef100_tx_write(ptr nocapture noundef %tx_queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %write_count.i = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 27
  %0 = ptrtoint ptr %write_count.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %write_count.i, align 4
  %insert_count.i = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 26
  %2 = ptrtoint ptr %insert_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %insert_count.i, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp.i = icmp eq i32 %3, %1
  br i1 %cmp.i, label %entry.ef100_tx_make_descriptors.exit_crit_edge, label %if.end.i, !prof !45

entry.ef100_tx_make_descriptors.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %ef100_tx_make_descriptors.exit

if.end.i:                                         ; preds = %entry
  %ptr_mask.i = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 11
  %buffer8.i = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 8
  %txd.i.i = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 10
  %packet_write_count.i = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 28
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.end.i
  %new_write_count.0.i = phi i32 [ %inc.i, %do.body.i.do.body.i_crit_edge ], [ %1, %if.end.i ]
  %4 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ptr_mask.i, align 4
  %and.i = and i32 %5, %new_write_count.0.i
  %6 = ptrtoint ptr %buffer8.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buffer8.i, align 32
  %8 = ptrtoint ptr %txd.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %txd.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %9, null
  %add.ptr.i.i = getelementptr %union.efx_oword, ptr %9, i32 %and.i
  %retval.0.i.i = select i1 %tobool.not.i.i, ptr null, ptr %add.ptr.i.i, !prof !45
  %inc.i = add i32 %new_write_count.0.i, 1
  %10 = ptrtoint ptr %packet_write_count.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %inc.i, ptr %packet_write_count.i, align 8
  %11 = getelementptr %struct.efx_tx_buffer, ptr %7, i32 %and.i, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 8
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #5
  %15 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %retval.0.i.i, align 8
  %arrayidx6.i.i = getelementptr [4 x i32], ptr %retval.0.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %arrayidx6.i.i, align 4
  %len.i.i = getelementptr %struct.efx_tx_buffer, ptr %7, i32 %and.i, i32 3
  %17 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %len.i.i, align 2
  %19 = or i16 %18, 16384
  %or12.i.i = zext i16 %19 to i32
  %20 = tail call i32 @llvm.bswap.i32(i32 %or12.i.i) #5
  %arrayidx15.i.i = getelementptr [4 x i32], ptr %retval.0.i.i, i32 0, i32 2
  %21 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %arrayidx15.i.i, align 8
  %arrayidx16.i.i = getelementptr [4 x i32], ptr %retval.0.i.i, i32 0, i32 3
  %22 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %arrayidx16.i.i, align 4
  %23 = ptrtoint ptr %insert_count.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %insert_count.i, align 128
  %cmp83.not.i = icmp eq i32 %inc.i, %24
  br i1 %cmp83.not.i, label %do.body86.i, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

do.body86.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  tail call void @arm_heavy_mb() #5
  %25 = ptrtoint ptr %write_count.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %inc.i, ptr %write_count.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !47
  br label %ef100_tx_make_descriptors.exit

ef100_tx_make_descriptors.exit:                   ; preds = %do.body86.i, %entry.ef100_tx_make_descriptors.exit_crit_edge
  %xmit_pending.i.i = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 36
  %26 = ptrtoint ptr %xmit_pending.i.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %xmit_pending.i.i, align 8
  %notify_count.i.i = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 38
  %27 = ptrtoint ptr %notify_count.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %notify_count.i.i, align 16
  %29 = ptrtoint ptr %write_count.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %write_count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %30)
  %cmp.i.i = icmp eq i32 %28, %30
  br i1 %cmp.i.i, label %ef100_tx_make_descriptors.exit.ef100_tx_push_buffers.exit_crit_edge, label %if.end.i.i, !prof !45

ef100_tx_make_descriptors.exit.ef100_tx_push_buffers.exit_crit_edge: ; preds = %ef100_tx_make_descriptors.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %ef100_tx_push_buffers.exit

if.end.i.i:                                       ; preds = %ef100_tx_make_descriptors.exit
  call void @__sanitizer_cov_trace_pc() #7
  %ptr_mask.i.i = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 11
  %31 = ptrtoint ptr %ptr_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ptr_mask.i.i, align 4
  %and.i.i2 = and i32 %32, %30
  %33 = tail call i32 @llvm.bswap.i32(i32 %and.i.i2) #5
  %34 = lshr i32 %33, 16
  %35 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %tx_queue, align 128
  %queue.i.i = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 1
  %37 = ptrtoint ptr %queue.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %queue.i.i, align 4
  %vi_stride.i.i.i.i = getelementptr inbounds %struct.efx_nic, ptr %36, i32 0, i32 14
  %39 = ptrtoint ptr %vi_stride.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %vi_stride.i.i.i.i, align 128
  %mul.i.i.i.i = mul i32 %40, %38
  %add.i.i.i.i = add i32 %mul.i.i.i.i, 512
  %membase.i.i.i.i.i = getelementptr inbounds %struct.efx_nic, ptr %36, i32 0, i32 13
  %41 = ptrtoint ptr %membase.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %membase.i.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %42, i32 %add.i.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i.i, i32 %34) #5, !srcloc !48
  %43 = ptrtoint ptr %write_count.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %write_count.i, align 4
  %45 = ptrtoint ptr %notify_count.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %notify_count.i.i, align 16
  br label %ef100_tx_push_buffers.exit

ef100_tx_push_buffers.exit:                       ; preds = %if.end.i.i, %ef100_tx_make_descriptors.exit.ef100_tx_push_buffers.exit_crit_edge
  %pushes.i = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 34
  %46 = ptrtoint ptr %pushes.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %pushes.i, align 32
  %inc.i3 = add i32 %47, 1
  store i32 %inc.i3, ptr %pushes.i, align 32
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ef100_ev_tx(ptr nocapture noundef readonly %channel, ptr nocapture noundef readonly %p_event) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p_event to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p_event, align 8
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %and = and i32 %2, 65535
  %shr = lshr i32 %2, 16
  %and3 = and i32 %shr, 63
  %arrayidx.i = getelementptr %struct.efx_channel, ptr %channel, i32 0, i32 47, i32 %and3
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i, align 4
  %read_count = getelementptr inbounds %struct.efx_tx_queue, ptr %4, i32 0, i32 18
  %5 = ptrtoint ptr %read_count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %read_count, align 128
  %add = add nsw i32 %and, -1
  %sub = add i32 %add, %6
  %ptr_mask = getelementptr inbounds %struct.efx_tx_queue, ptr %4, i32 0, i32 11
  %7 = ptrtoint ptr %ptr_mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ptr_mask, align 4
  %and4 = and i32 %sub, %8
  tail call void @efx_xmit_done(ptr noundef %4, i32 noundef %and4) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_xmit_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ef100_enqueue_skb(ptr noundef %tx_queue, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %insert_count = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 26
  %0 = ptrtoint ptr %insert_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %insert_count, align 128
  %2 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_queue, align 128
  %4 = tail call i32 @llvm.read_register.i32(metadata !34) #5
  %and.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %9, ptrtoint (ptr getelementptr inbounds (%struct.softnet_data, ptr @softnet_data, i32 0, i32 11, i32 1) to i32)
  %10 = inttoptr i32 %add.i to ptr
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.i = icmp ne i8 %12, 0
  %buffer = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 8
  %13 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %buffer, align 32
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %ptr_mask = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 11
  %15 = ptrtoint ptr %ptr_mask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ptr_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool2.not = icmp eq i32 %16, 0
  br i1 %tobool2.not, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %3, i32 0, i32 83
  %17 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %net_dev, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 103
  %19 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %20, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #5
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #5
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %21 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %end.i.i, align 4
  %gso_size.i = getelementptr inbounds %struct.skb_shared_info, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %gso_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool.i137.not = icmp eq i16 %24, 0
  br i1 %tobool.i137.not, label %if.end.if.end14_crit_edge, label %cond.end

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

cond.end:                                         ; preds = %if.end
  %gso_segs = getelementptr inbounds %struct.skb_shared_info, ptr %22, i32 0, i32 5
  %25 = ptrtoint ptr %gso_segs to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %gso_segs, align 2
  %conv = zext i16 %26 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %26)
  %switch = icmp ult i16 %26, 2
  br i1 %switch, label %cond.end.if.end14_crit_edge, label %land.lhs.true

cond.end.if.end14_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

land.lhs.true:                                    ; preds = %cond.end
  %nic_data2.i = getelementptr inbounds %struct.efx_nic, ptr %3, i32 0, i32 76
  %27 = ptrtoint ptr %nic_data2.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %nic_data2.i, align 8
  %gso_type.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %22, i32 0, i32 8
  %29 = ptrtoint ptr %gso_type.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %gso_type.i.i, align 8
  %and.i.i138 = and i32 %30, 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i138)
  %tobool.i.not.i = icmp eq i32 %and.i.i138, 0
  br i1 %tobool.i.not.i, label %land.lhs.true.if.then10_crit_edge, label %if.end.i

land.lhs.true.if.then10_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10

if.end.i:                                         ; preds = %land.lhs.true
  %net_dev.i = getelementptr inbounds %struct.efx_nic, ptr %3, i32 0, i32 83
  %31 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %net_dev.i, align 4
  %features.i = getelementptr inbounds %struct.net_device, ptr %32, i32 0, i32 23
  %33 = ptrtoint ptr %features.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %features.i, align 16
  %and.i = and i64 %34, 65536
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i.if.then10_crit_edge, label %if.end4.i

if.end.i.if.then10_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10

if.end4.i:                                        ; preds = %if.end.i
  %conv.i = zext i16 %24 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %24)
  %cmp.i = icmp ult i16 %24, 4
  br i1 %cmp.i, label %land.end.i, label %if.end51.i, !prof !45

land.end.i:                                       ; preds = %if.end4.i
  %.b212.i = load i1, ptr @ef100_tx_can_tso.__already_done, align 1
  br i1 %.b212.i, label %land.end.i.if.then10_crit_edge, label %if.then21.i, !prof !44

land.end.i.if.then10_crit_edge:                   ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10

if.then21.i:                                      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @ef100_tx_can_tso.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 69, i32 noundef 9, ptr noundef nonnull @.str.13, i32 noundef %conv.i) #5
  br label %if.then10

if.end51.i:                                       ; preds = %if.end4.i
  %call52.i = tail call i32 @efx_tx_tso_header_length(ptr noundef %skb) #5
  %tso_max_hdr_len.i = getelementptr inbounds %struct.ef100_nic_data, ptr %28, i32 0, i32 10
  %35 = ptrtoint ptr %tso_max_hdr_len.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %tso_max_hdr_len.i, align 8
  %conv53.i = zext i16 %36 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call52.i, i32 %conv53.i)
  %cmp54.i = icmp ugt i32 %call52.i, %conv53.i
  br i1 %cmp54.i, label %if.end51.i.if.then10_crit_edge, label %if.end57.i

if.end51.i.if.then10_crit_edge:                   ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10

if.end57.i:                                       ; preds = %if.end51.i
  %37 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %end.i.i, align 4
  %gso_segs.i = getelementptr inbounds %struct.skb_shared_info, ptr %38, i32 0, i32 5
  %39 = ptrtoint ptr %gso_segs.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %gso_segs.i, align 2
  %tso_max_payload_num_segs.i = getelementptr inbounds %struct.ef100_nic_data, ptr %28, i32 0, i32 11
  %41 = ptrtoint ptr %tso_max_payload_num_segs.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %tso_max_payload_num_segs.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %40, i16 %42)
  %cmp61.i = icmp ugt i16 %40, %42
  br i1 %cmp61.i, label %land.end71.i, label %if.end113.i

land.end71.i:                                     ; preds = %if.end57.i
  %.b208211.i = load i1, ptr @ef100_tx_can_tso.__already_done.14, align 1
  br i1 %.b208211.i, label %land.end71.i.if.then10_crit_edge, label %if.then78.i, !prof !44

land.end71.i.if.then10_crit_edge:                 ; preds = %land.end71.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10

if.then78.i:                                      ; preds = %land.end71.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @ef100_tx_can_tso.__already_done.14, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 79, i32 noundef 9, ptr noundef null) #5
  br label %if.then10

if.end113.i:                                      ; preds = %if.end57.i
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %43 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %data_len.i, align 8
  %div.i = udiv i32 %44, %conv.i
  %tso_max_frames.i = getelementptr inbounds %struct.ef100_nic_data, ptr %28, i32 0, i32 12
  %45 = ptrtoint ptr %tso_max_frames.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %tso_max_frames.i, align 4
  %conv114.i = zext i16 %46 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %conv114.i)
  %cmp115.i = icmp ugt i32 %div.i, %conv114.i
  br i1 %cmp115.i, label %if.end113.i.if.then10_crit_edge, label %if.end118.i

if.end113.i.if.then10_crit_edge:                  ; preds = %if.end113.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10

if.end118.i:                                      ; preds = %if.end113.i
  %tso_max_payload_len.i = getelementptr inbounds %struct.ef100_nic_data, ptr %28, i32 0, i32 13
  %47 = ptrtoint ptr %tso_max_payload_len.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %tso_max_payload_len.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %48)
  %cmp121.i = icmp ugt i32 %44, %48
  br i1 %cmp121.i, label %land.rhs129.i, label %ef100_tx_can_tso.exit

land.rhs129.i:                                    ; preds = %if.end118.i
  %.b209210.i = load i1, ptr @ef100_tx_can_tso.__already_done.15, align 1
  br i1 %.b209210.i, label %land.rhs129.i.if.then10_crit_edge, label %if.then140.i, !prof !44

land.rhs129.i.if.then10_crit_edge:                ; preds = %land.rhs129.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10

if.then140.i:                                     ; preds = %land.rhs129.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @ef100_tx_can_tso.__already_done.15, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 87, i32 noundef 9, ptr noundef null) #5
  br label %if.then10

ef100_tx_can_tso.exit:                            ; preds = %if.end118.i
  call void @__sanitizer_cov_trace_pc() #7
  %49 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %buffer, align 32
  %51 = ptrtoint ptr %insert_count to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %insert_count, align 128
  %53 = ptrtoint ptr %ptr_mask to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %ptr_mask, align 4
  %and.i.i.i.i = and i32 %54, %52
  %arrayidx.i.i.i = getelementptr %struct.efx_tx_buffer, ptr %50, i32 %and.i.i.i.i
  %flags.i = getelementptr %struct.efx_tx_buffer, ptr %50, i32 %and.i.i.i.i, i32 2
  %55 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 65, ptr %flags.i, align 8
  %conv179.i = trunc i32 %call52.i to i16
  %len.i = getelementptr %struct.efx_tx_buffer, ptr %50, i32 %and.i.i.i.i, i32 3
  %56 = ptrtoint ptr %len.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %conv179.i, ptr %len.i, align 2
  %unmap_len.i = getelementptr %struct.efx_tx_buffer, ptr %50, i32 %and.i.i.i.i, i32 4
  %57 = ptrtoint ptr %unmap_len.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 0, ptr %unmap_len.i, align 4
  %58 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %skb, ptr %arrayidx.i.i.i, align 8
  %59 = load i32, ptr %insert_count, align 128
  %inc.i = add i32 %59, 1
  store i32 %inc.i, ptr %insert_count, align 128
  br label %if.end14

if.then10:                                        ; preds = %if.then140.i, %land.rhs129.i.if.then10_crit_edge, %if.end113.i.if.then10_crit_edge, %if.then78.i, %land.end71.i.if.then10_crit_edge, %if.end51.i.if.then10_crit_edge, %if.then21.i, %land.end.i.if.then10_crit_edge, %if.end.i.if.then10_crit_edge, %land.lhs.true.if.then10_crit_edge
  %call11 = tail call i32 @efx_tx_tso_fallback(ptr noundef %tx_queue, ptr noundef %skb) #5
  %tso_fallbacks = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 33
  %60 = ptrtoint ptr %tso_fallbacks to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %tso_fallbacks, align 4
  %inc = add i32 %61, 1
  store i32 %inc, ptr %tso_fallbacks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then10.cleanup_crit_edge, label %if.then10.err_crit_edge

if.then10.err_crit_edge:                          ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end14:                                         ; preds = %ef100_tx_can_tso.exit, %cond.end.if.end14_crit_edge, %if.end.if.end14_crit_edge
  %tobool8.not213 = phi i1 [ false, %ef100_tx_can_tso.exit ], [ true, %if.end.if.end14_crit_edge ], [ true, %cond.end.if.end14_crit_edge ]
  %62 = phi i32 [ %conv, %ef100_tx_can_tso.exit ], [ 0, %if.end.if.end14_crit_edge ], [ 0, %cond.end.if.end14_crit_edge ]
  %call15 = tail call i32 @efx_tx_map_data(ptr noundef %tx_queue, ptr noundef %skb, i32 noundef %62) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end14.err_crit_edge

if.end14.err_crit_edge:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end18:                                         ; preds = %if.end14
  %write_count.i = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 27
  %63 = ptrtoint ptr %write_count.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %write_count.i, align 4
  %65 = ptrtoint ptr %insert_count to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %insert_count, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %64)
  %cmp.i140 = icmp eq i32 %66, %64
  br i1 %cmp.i140, label %if.end18.ef100_tx_make_descriptors.exit_crit_edge, label %if.end.i142, !prof !45

if.end18.ef100_tx_make_descriptors.exit_crit_edge: ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %ef100_tx_make_descriptors.exit

if.end.i142:                                      ; preds = %if.end18
  %sub.i = sub i32 %66, %64
  %tobool5.not.i = icmp eq ptr %skb, null
  %nr_descs.0.i = select i1 %tobool5.not.i, i32 1, i32 %sub.i
  %txd.i.i = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 10
  %packet_write_count.i = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 28
  %vlan_tci1.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 10
  %encapsulation.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %vlan_present.i139.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %len17.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %head.i.i218.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %network_header.i.i219.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %data.i222.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %transport_header.i.i227.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %inner_network_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 16
  %inner_transport_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 15
  %sub20.i.i = shl i32 %nr_descs.0.i, 17
  %shl.i143.i = add i32 %sub20.i.i, -262144
  %shl.i.i = shl i32 %nr_descs.0.i, 14
  %67 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %csum_offset.i.i.i = getelementptr inbounds %struct.anon.60, ptr %67, i32 0, i32 1
  %cond.i = select i1 %tobool5.not.i, i32 0, i32 3
  %spec.select = select i1 %tobool8.not213, i32 0, i32 2
  br label %do.body.i

do.body.i:                                        ; preds = %sw.epilog.i.do.body.i_crit_edge, %if.end.i142
  %next_desc_type.1.i = phi i32 [ %cond.i, %sw.epilog.i.do.body.i_crit_edge ], [ %spec.select, %if.end.i142 ]
  %new_write_count.0.i = phi i32 [ %inc.i144, %sw.epilog.i.do.body.i_crit_edge ], [ %64, %if.end.i142 ]
  %68 = ptrtoint ptr %ptr_mask to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %ptr_mask, align 4
  %and.i143 = and i32 %69, %new_write_count.0.i
  %70 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %buffer, align 32
  %72 = ptrtoint ptr %txd.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %txd.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %73, null
  %add.ptr.i.i = getelementptr %union.efx_oword, ptr %73, i32 %and.i143
  %retval.0.i.i = select i1 %tobool.not.i.i, ptr null, ptr %add.ptr.i.i, !prof !45
  %inc.i144 = add i32 %new_write_count.0.i, 1
  %74 = ptrtoint ptr %packet_write_count.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %inc.i144, ptr %packet_write_count.i, align 8
  %75 = zext i32 %next_desc_type.1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values)
  switch i32 %next_desc_type.1.i, label %do.body61.i [
    i32 0, label %sw.bb.i
    i32 2, label %sw.bb9.i
  ]

sw.bb.i:                                          ; preds = %do.body.i
  %76 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %tx_queue, align 128
  %78 = getelementptr %struct.efx_tx_buffer, ptr %71, i32 %and.i143, i32 1
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %78, align 8
  %81 = tail call i32 @llvm.bswap.i32(i32 %80) #5
  %82 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %retval.0.i.i, align 8
  %arrayidx6.i.i = getelementptr [4 x i32], ptr %retval.0.i.i, i32 0, i32 1
  %83 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %arrayidx6.i.i, align 4
  %len.i.i = getelementptr %struct.efx_tx_buffer, ptr %71, i32 %and.i143, i32 3
  %84 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %len.i.i, align 2
  %conv11.i.i = zext i16 %85 to i32
  %or12.i.i = or i32 %shl.i.i, %conv11.i.i
  %86 = tail call i32 @llvm.bswap.i32(i32 %or12.i.i) #5
  %arrayidx15.i.i = getelementptr [4 x i32], ptr %retval.0.i.i, i32 0, i32 2
  %87 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %arrayidx15.i.i, align 8
  %arrayidx16.i.i = getelementptr [4 x i32], ptr %retval.0.i.i, i32 0, i32 3
  %88 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %arrayidx16.i.i, align 4
  %net_dev.i.i = getelementptr inbounds %struct.efx_nic, ptr %77, i32 0, i32 83
  %89 = ptrtoint ptr %net_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %net_dev.i.i, align 4
  %features.i.i = getelementptr inbounds %struct.net_device, ptr %90, i32 0, i32 23
  %91 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %features.i.i, align 16
  %and.i.i145 = and i64 %92, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i145)
  %tobool.not.i135.i = icmp eq i64 %and.i.i145, 0
  %or.cond42.i.i = or i1 %tobool5.not.i, %tobool.not.i135.i
  br i1 %or.cond42.i.i, label %sw.bb.i.if.end.i.i_crit_edge, label %lor.lhs.false.i.i.i, !prof !49

sw.bb.i.if.end.i.i_crit_edge:                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

lor.lhs.false.i.i.i:                              ; preds = %sw.bb.i
  %93 = ptrtoint ptr %encapsulation.i.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %bf.load.i.i.i = load i16, ptr %encapsulation.i.i, align 8
  %94 = and i16 %bf.load.i.i.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %94)
  %cmp.not.i.i.i = icmp eq i16 %94, 1536
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %lor.lhs.false.i.i.i.if.end.i.i_crit_edge

lor.lhs.false.i.i.i.if.end.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

if.end.i.i.i:                                     ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %95 = ptrtoint ptr %67 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %67, align 8
  %conv.i.i.i.i = zext i16 %96 to i32
  %97 = ptrtoint ptr %data.i222.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %data.i222.i.i, align 4
  %99 = ptrtoint ptr %head.i.i218.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %head.i.i218.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i.i.i = ptrtoint ptr %98 to i32
  %sub.ptr.rhs.cast.i.i.i.i.i = ptrtoint ptr %100 to i32
  %sub.ptr.sub.i.neg.i.i.i.i = sub i32 %conv.i.i.i.i, %sub.ptr.lhs.cast.i.i.i.i.i
  %sub.i.i.i.i = add i32 %sub.ptr.sub.i.neg.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i.i
  %101 = shl i32 %sub.i.i.i.i, 18
  %shl.i.i.i = and i32 %101, -524288
  %102 = ptrtoint ptr %csum_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %csum_offset.i.i.i, align 2
  %104 = lshr i16 %103, 1
  %105 = zext i16 %104 to i32
  %shl6.i.i.i = shl i32 %105, 28
  %or81.i.i.i = or i32 %shl.i.i.i, %shl6.i.i.i
  %shr14.i.i.i = lshr i32 %105, 4
  %106 = or i32 %shr14.i.i.i, 2
  %107 = zext i32 %or81.i.i.i to i64
  %108 = zext i32 %106 to i64
  %109 = shl nuw nsw i64 %108, 32
  %110 = or i64 %109, %107
  %111 = tail call i64 @llvm.bswap.i64(i64 %110) #5
  %112 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %arrayidx15.i.i, align 8
  %or26.i.i.i = or i64 %111, %113
  store i64 %or26.i.i.i, ptr %arrayidx15.i.i, align 8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.end.i.i.i, %lor.lhs.false.i.i.i.if.end.i.i_crit_edge, %sw.bb.i.if.end.i.i_crit_edge
  %114 = ptrtoint ptr %net_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %net_dev.i.i, align 4
  %features20.i.i = getelementptr inbounds %struct.net_device, ptr %115, i32 0, i32 23
  %116 = ptrtoint ptr %features20.i.i to i32
  call void @__asan_load8_noabort(i32 %116)
  %117 = load i64, ptr %features20.i.i, align 16
  %and21.i.i = and i64 %117, 128
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and21.i.i)
  %tobool22.not.i.i = icmp eq i64 %and21.i.i, 0
  %or.cond.i.i = or i1 %tobool5.not.i, %tobool22.not.i.i
  br i1 %or.cond.i.i, label %if.end.i.i.sw.epilog.i_crit_edge, label %land.lhs.true24.i.i

if.end.i.i.sw.epilog.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

land.lhs.true24.i.i:                              ; preds = %if.end.i.i
  %118 = ptrtoint ptr %vlan_present.i139.i to i32
  call void @__asan_loadN_noabort(i32 %118, i32 4)
  %bf.load.i.i = load i32, ptr %vlan_present.i139.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i.i)
  %tobool26.not.i.i = icmp sgt i32 %bf.load.i.i, -1
  br i1 %tobool26.not.i.i, label %land.lhs.true24.i.i.sw.epilog.i_crit_edge, label %if.then27.i.i

land.lhs.true24.i.i.sw.epilog.i_crit_edge:        ; preds = %land.lhs.true24.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

if.then27.i.i:                                    ; preds = %land.lhs.true24.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %119 = ptrtoint ptr %vlan_tci1.i.i to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %vlan_tci1.i.i, align 2
  %conv.i.i.i = zext i16 %120 to i32
  %shl.i41.i.i = shl nuw nsw i32 %conv.i.i.i, 12
  %121 = or i32 %shl.i41.i.i, 2048
  %122 = tail call i32 @llvm.bswap.i32(i32 %121) #5
  %vlan.sroa.6.12.insert.ext.i.i.i = zext i32 %122 to i64
  %123 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load8_noabort(i32 %123)
  %124 = load i64, ptr %arrayidx15.i.i, align 8
  %or14.i.i.i = or i64 %124, %vlan.sroa.6.12.insert.ext.i.i.i
  store i64 %or14.i.i.i, ptr %arrayidx15.i.i, align 8
  br label %sw.epilog.i

sw.bb9.i:                                         ; preds = %do.body.i
  %flags.i146 = getelementptr %struct.efx_tx_buffer, ptr %71, i32 %and.i143, i32 2
  %125 = ptrtoint ptr %flags.i146 to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %flags.i146, align 8
  %127 = and i16 %126, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %127)
  %tobool11.not.i = icmp eq i16 %127, 0
  br i1 %tobool11.not.i, label %land.rhs.i, label %sw.bb9.i.if.end52.i_crit_edge

sw.bb9.i.if.end52.i_crit_edge:                    ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end52.i

land.rhs.i:                                       ; preds = %sw.bb9.i
  %.b134.i = load i1, ptr @ef100_tx_make_descriptors.__already_done, align 1
  br i1 %.b134.i, label %land.rhs.i.if.end52.i_crit_edge, label %if.then29.i, !prof !44

land.rhs.i.if.end52.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end52.i

if.then29.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @ef100_tx_make_descriptors.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 295, i32 noundef 9, ptr noundef null) #5
  br label %if.end52.i

if.end52.i:                                       ; preds = %if.then29.i, %land.rhs.i.if.end52.i_crit_edge, %sw.bb9.i.if.end52.i_crit_edge
  %128 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %tx_queue, align 128
  %130 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %end.i.i, align 4
  %gso_type.i.i147 = getelementptr inbounds %struct.skb_shared_info, ptr %131, i32 0, i32 8
  %132 = ptrtoint ptr %gso_type.i.i147 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %gso_type.i.i147, align 8
  %134 = ptrtoint ptr %vlan_tci1.i.i to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %vlan_tci1.i.i, align 2
  %gso_size.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %131, i32 0, i32 4
  %136 = ptrtoint ptr %gso_size.i.i to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %gso_size.i.i, align 4
  %138 = ptrtoint ptr %encapsulation.i.i to i32
  call void @__asan_load2_noabort(i32 %138)
  %bf.load.i136.i = load i16, ptr %encapsulation.i.i, align 8
  %139 = and i16 %bf.load.i136.i, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %139)
  %tobool3.not.i.i = icmp eq i16 %139, 0
  %net_dev.i137.i = getelementptr inbounds %struct.efx_nic, ptr %129, i32 0, i32 83
  %140 = ptrtoint ptr %net_dev.i137.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %net_dev.i137.i, align 4
  %features.i138.i = getelementptr inbounds %struct.net_device, ptr %141, i32 0, i32 23
  %142 = ptrtoint ptr %features.i138.i to i32
  call void @__asan_load8_noabort(i32 %142)
  %143 = load i64, ptr %features.i138.i, align 16
  %and9.i.i = and i64 %143, 128
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and9.i.i)
  %tobool10.not.i.i = icmp eq i64 %and9.i.i, 0
  br i1 %tobool10.not.i.i, label %if.end52.i.if.end16.i.i_crit_edge, label %if.then11.i.i

if.end52.i.if.end16.i.i_crit_edge:                ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16.i.i

if.then11.i.i:                                    ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #7
  %144 = ptrtoint ptr %vlan_present.i139.i to i32
  call void @__asan_loadN_noabort(i32 %144, i32 4)
  %bf.load12.i.i = load i32, ptr %vlan_present.i139.i, align 2
  %145 = lshr i32 %bf.load12.i.i, 20
  %phi.bo189.i.i = and i32 %145, 2048
  br label %if.end16.i.i

if.end16.i.i:                                     ; preds = %if.then11.i.i, %if.end52.i.if.end16.i.i_crit_edge
  %vlan_enable.0.i.i = phi i32 [ %phi.bo189.i.i, %if.then11.i.i ], [ 0, %if.end52.i.if.end16.i.i_crit_edge ]
  %146 = ptrtoint ptr %len17.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %len17.i.i, align 4
  %len18.i.i = getelementptr %struct.efx_tx_buffer, ptr %71, i32 %and.i143, i32 3
  %148 = ptrtoint ptr %len18.i.i to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %len18.i.i, align 2
  %150 = ptrtoint ptr %head.i.i218.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %head.i.i218.i.i, align 8
  %152 = ptrtoint ptr %network_header.i.i219.i.i to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %network_header.i.i219.i.i, align 4
  %conv.i.i220.i.i = zext i16 %153 to i32
  %add.ptr.i.i221.i.i = getelementptr i8, ptr %151, i32 %conv.i.i220.i.i
  %154 = ptrtoint ptr %data.i222.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %data.i222.i.i, align 4
  %sub.ptr.lhs.cast.i223.i.i = ptrtoint ptr %add.ptr.i.i221.i.i to i32
  %sub.ptr.rhs.cast.i224.i.i = ptrtoint ptr %155 to i32
  %sub.ptr.sub.i225.i.i = sub i32 %sub.ptr.lhs.cast.i223.i.i, %sub.ptr.rhs.cast.i224.i.i
  %156 = ptrtoint ptr %transport_header.i.i227.i.i to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %transport_header.i.i227.i.i, align 2
  %conv.i.i228.i.i = zext i16 %157 to i32
  %add.ptr.i.i229.i.i = getelementptr i8, ptr %151, i32 %conv.i.i228.i.i
  %sub.ptr.lhs.cast.i231.i.i = ptrtoint ptr %add.ptr.i.i229.i.i to i32
  %sub.ptr.sub.i233.i.i = sub i32 %sub.ptr.lhs.cast.i231.i.i, %sub.ptr.rhs.cast.i224.i.i
  br i1 %tobool3.not.i.i, label %if.end16.i.i.ef100_make_tso_desc.exit.i_crit_edge, label %if.then22.i.i

if.end16.i.i.ef100_make_tso_desc.exit.i_crit_edge: ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ef100_make_tso_desc.exit.i

if.then22.i.i:                                    ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %158 = ptrtoint ptr %inner_network_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %inner_network_header.i.i.i.i, align 4
  %conv.i.i204.i.i = zext i16 %159 to i32
  %add.ptr.i.i205.i.i = getelementptr i8, ptr %151, i32 %conv.i.i204.i.i
  %sub.ptr.lhs.cast.i207.i.i = ptrtoint ptr %add.ptr.i.i205.i.i to i32
  %sub.ptr.sub.i209.i.i = sub i32 %sub.ptr.lhs.cast.i207.i.i, %sub.ptr.rhs.cast.i224.i.i
  %160 = ptrtoint ptr %inner_transport_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %160)
  %161 = load i16, ptr %inner_transport_header.i.i.i.i, align 2
  %conv.i.i211.i.i = zext i16 %161 to i32
  %add.ptr.i.i212.i.i = getelementptr i8, ptr %151, i32 %conv.i.i211.i.i
  %sub.ptr.lhs.cast.i214.i.i = ptrtoint ptr %add.ptr.i.i212.i.i to i32
  %sub.ptr.sub.i216.i.i = sub i32 %sub.ptr.lhs.cast.i214.i.i, %sub.ptr.rhs.cast.i224.i.i
  %and29.i.i = and i32 %133, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i.i)
  %tobool30.not.i.i = icmp ne i32 %and29.i.i, 0
  %phi.bo236.i.i = lshr i32 %sub.ptr.sub.i225.i.i, 1
  %phi.bo237.i.i = shl i32 %sub.ptr.sub.i233.i.i, 4
  %phi.bo238.i.i = and i32 %phi.bo237.i.i, -536870944
  br label %ef100_make_tso_desc.exit.i

ef100_make_tso_desc.exit.i:                       ; preds = %if.then22.i.i, %if.end16.i.i.ef100_make_tso_desc.exit.i_crit_edge
  %ip_offset.0.i.i = phi i32 [ %sub.ptr.sub.i209.i.i, %if.then22.i.i ], [ %sub.ptr.sub.i225.i.i, %if.end16.i.i.ef100_make_tso_desc.exit.i_crit_edge ]
  %tcp_offset.0.i.i = phi i32 [ %sub.ptr.sub.i216.i.i, %if.then22.i.i ], [ %sub.ptr.sub.i233.i.i, %if.end16.i.i.ef100_make_tso_desc.exit.i_crit_edge ]
  %outer_ip_offset.0.i.i = phi i32 [ %phi.bo236.i.i, %if.then22.i.i ], [ 0, %if.end16.i.i.ef100_make_tso_desc.exit.i_crit_edge ]
  %outer_l4_offset.0.i.i = phi i32 [ %phi.bo238.i.i, %if.then22.i.i ], [ 0, %if.end16.i.i.ef100_make_tso_desc.exit.i_crit_edge ]
  %udp_encap.0.off0.i.i = phi i1 [ %tobool30.not.i.i, %if.then22.i.i ], [ false, %if.end16.i.i.ef100_make_tso_desc.exit.i_crit_edge ]
  %and7.i.i = lshr i32 %133, 2
  %162 = and i32 %and7.i.i, 2
  %163 = xor i32 %162, 2
  %and.i140.i = and i32 %133, 4096
  %add.ptr.i141.i = getelementptr i8, ptr %155, i32 %tcp_offset.0.i.i
  %sub42.i.i = sub i32 %147, %tcp_offset.0.i.i
  %check.i.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i141.i, i32 0, i32 6
  %164 = ptrtoint ptr %check.i.i to i32
  call void @__asan_load2_noabort(i32 %164)
  %165 = load i16, ptr %check.i.i, align 2
  %conv.i.i.i142.i = zext i16 %165 to i32
  %neg.i.i.i = xor i32 %conv.i.i.i142.i, -1
  %add.i.i.i.i = add i32 %sub42.i.i, %neg.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i.i, i32 %neg.i.i.i)
  %cmp.i.i.i.i = icmp ult i32 %add.i.i.i.i, %neg.i.i.i
  %conv.i4.i.i.i = zext i1 %cmp.i.i.i.i to i32
  %add1.i.i.i.i = add i32 %add.i.i.i.i, %conv.i4.i.i.i
  %166 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %add1.i.i.i.i) #8, !srcloc !50
  %neg.i.i.i.i = xor i32 %166, -1
  %shr.i.i.i.i = lshr i32 %neg.i.i.i.i, 16
  %conv.i5.i.i.i = trunc i32 %shr.i.i.i.i to i16
  %167 = ptrtoint ptr %check.i.i to i32
  call void @__asan_store2_noabort(i32 %167)
  store i16 %conv.i5.i.i.i, ptr %check.i.i, align 2
  %168 = or i16 %137, 16384
  %or44.i.i = zext i16 %168 to i32
  %or46.i.i = or i32 %shl.i143.i, %or44.i.i
  %shl53.i.i = shl nuw nsw i32 %163, 29
  %or55.i.i = or i32 %or46.i.i, %shl53.i.i
  %and.lobit.i.i = lshr exact i32 %and.i140.i, 12
  %169 = xor i32 %and.lobit.i.i, -1
  %phi.bo.i.i = shl i32 %169, 31
  %170 = select i1 %tobool3.not.i.i, i32 0, i32 %phi.bo.i.i
  %or65.i.i = or i32 %or55.i.i, %170
  %.op.i.i = shl nuw nsw i32 %163, 27
  %shl68.i.i = select i1 %tobool3.not.i.i, i32 0, i32 %.op.i.i
  %or70.i.i = or i32 %or65.i.i, %shl68.i.i
  %171 = tail call i32 @llvm.bswap.i32(i32 %or70.i.i) #5
  %172 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %171, ptr %retval.0.i.i, align 8
  %173 = ptrtoint ptr %len18.i.i to i32
  call void @__asan_load2_noabort(i32 %173)
  %174 = load i16, ptr %len18.i.i, align 2
  %and.lobit184.i.i = lshr exact i32 %and.i140.i, 11
  %175 = xor i32 %and.lobit184.i.i, 2
  %spec.select241 = select i1 %udp_encap.0.off0.i.i, i32 %175, i32 0
  %176 = lshr i16 %174, 1
  %177 = zext i16 %176 to i32
  %shl77.i.i = shl nuw nsw i32 %177, 2
  %conv19.i.i = zext i16 %149 to i32
  %sub.i.i = sub i32 %147, %conv19.i.i
  %shl80.i.i = shl i32 %sub.i.i, 10
  %or82183.i.i = or i32 %spec.select241, %shl80.i.i
  %178 = or i32 %or82183.i.i, %shl77.i.i
  %or100185.i.i = or i32 %178, 1
  %179 = tail call i32 @llvm.bswap.i32(i32 %or100185.i.i) #5
  %arrayidx106.i.i = getelementptr [4 x i32], ptr %retval.0.i.i, i32 0, i32 1
  %180 = ptrtoint ptr %arrayidx106.i.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %179, ptr %arrayidx106.i.i, align 4
  %181 = shl i32 %ip_offset.0.i.i, 12
  %shl108.i.i = and i32 %181, -536879104
  %182 = shl i32 %tcp_offset.0.i.i, 20
  %shl112.i.i = and i32 %182, -538968064
  %183 = or i32 %shl108.i.i, %outer_ip_offset.0.i.i
  %or114186.i.i = or i32 %183, %shl112.i.i
  %or120187.i.i = or i32 %or114186.i.i, %outer_l4_offset.0.i.i
  %or124188.i.i = or i32 %or120187.i.i, 536870912
  %184 = tail call i32 @llvm.bswap.i32(i32 %or124188.i.i) #5
  %arrayidx131.i.i = getelementptr [4 x i32], ptr %retval.0.i.i, i32 0, i32 2
  %185 = ptrtoint ptr %arrayidx131.i.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %184, ptr %arrayidx131.i.i, align 8
  %shl134.i.i = and i32 %and7.i.i, 512
  %186 = or i32 %shl134.i.i, %vlan_enable.0.i.i
  %conv151.i.i = zext i16 %135 to i32
  %shl152.i.i = shl nuw nsw i32 %conv151.i.i, 12
  %or150190.i.i = or i32 %186, %shl152.i.i
  %or154191.i.i = or i32 %or150190.i.i, 536870912
  %187 = tail call i32 @llvm.bswap.i32(i32 %or154191.i.i) #5
  %arrayidx156.i.i = getelementptr [4 x i32], ptr %retval.0.i.i, i32 0, i32 3
  %188 = ptrtoint ptr %arrayidx156.i.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 %187, ptr %arrayidx156.i.i, align 4
  br label %sw.epilog.i

do.body61.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %189 = getelementptr %struct.efx_tx_buffer, ptr %71, i32 %and.i143, i32 1
  %190 = ptrtoint ptr %189 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %189, align 8
  %192 = tail call i32 @llvm.bswap.i32(i32 %191) #5
  %193 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 %192, ptr %retval.0.i.i, align 8
  %arrayidx69.i = getelementptr [4 x i32], ptr %retval.0.i.i, i32 0, i32 1
  %194 = ptrtoint ptr %arrayidx69.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 0, ptr %arrayidx69.i, align 4
  %len.i148 = getelementptr %struct.efx_tx_buffer, ptr %71, i32 %and.i143, i32 3
  %195 = ptrtoint ptr %len.i148 to i32
  call void @__asan_load2_noabort(i32 %195)
  %196 = load i16, ptr %len.i148, align 2
  %conv70.i = zext i16 %196 to i32
  %197 = tail call i32 @llvm.bswap.i32(i32 %conv70.i) #5
  %arrayidx76.i = getelementptr [4 x i32], ptr %retval.0.i.i, i32 0, i32 2
  %198 = ptrtoint ptr %arrayidx76.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 %197, ptr %arrayidx76.i, align 8
  %arrayidx77.i = getelementptr [4 x i32], ptr %retval.0.i.i, i32 0, i32 3
  %199 = ptrtoint ptr %arrayidx77.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 48, ptr %arrayidx77.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %do.body61.i, %ef100_make_tso_desc.exit.i, %if.then27.i.i, %land.lhs.true24.i.i.sw.epilog.i_crit_edge, %if.end.i.i.sw.epilog.i_crit_edge
  %200 = ptrtoint ptr %insert_count to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %insert_count, align 128
  %cmp83.not.i = icmp eq i32 %inc.i144, %201
  br i1 %cmp83.not.i, label %do.body86.i, label %sw.epilog.i.do.body.i_crit_edge

sw.epilog.i.do.body.i_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

do.body86.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  tail call void @arm_heavy_mb() #5
  %202 = ptrtoint ptr %write_count.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 %inc.i144, ptr %write_count.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !47
  br label %ef100_tx_make_descriptors.exit

ef100_tx_make_descriptors.exit:                   ; preds = %do.body86.i, %if.end18.ef100_tx_make_descriptors.exit_crit_edge
  %channel = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 6
  %203 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %channel, align 8
  %tx_queue1.i = getelementptr inbounds %struct.efx_channel, ptr %204, i32 0, i32 46
  %channel1.i.i.i = getelementptr inbounds %struct.efx_channel, ptr %204, i32 0, i32 1
  %205 = ptrtoint ptr %channel1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %channel1.i.i.i, align 4
  %207 = ptrtoint ptr %204 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %204, align 128
  %xdp_channel_offset.i.i.i = getelementptr inbounds %struct.efx_nic, ptr %208, i32 0, i32 50
  %209 = ptrtoint ptr %xdp_channel_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %xdp_channel_offset.i.i.i, align 8
  %sub.i.i.i = sub i32 %206, %210
  %n_xdp_channels.i.i.i = getelementptr inbounds %struct.efx_nic, ptr %208, i32 0, i32 49
  %211 = ptrtoint ptr %n_xdp_channels.i.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %n_xdp_channels.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i, i32 %212)
  %cmp.i.i.i = icmp ult i32 %sub.i.i.i, %212
  %xdp_tx_per_channel.i.i = getelementptr inbounds %struct.efx_nic, ptr %208, i32 0, i32 51
  %tx_queues_per_channel.i.i = getelementptr inbounds %struct.efx_nic, ptr %208, i32 0, i32 48
  %retval.0.in.i.i = select i1 %cmp.i.i.i, ptr %xdp_tx_per_channel.i.i, ptr %tx_queues_per_channel.i.i
  %213 = ptrtoint ptr %retval.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %retval.0.i.i149 = load i32, ptr %retval.0.in.i.i, align 4
  %add.ptr.i = getelementptr %struct.efx_tx_queue, ptr %tx_queue1.i, i32 %retval.0.i.i149
  %cmp15.i = icmp ult ptr %tx_queue1.i, %add.ptr.i
  br i1 %cmp15.i, label %ef100_tx_make_descriptors.exit.for.body.i_crit_edge, label %ef100_tx_make_descriptors.exit.if.end51_crit_edge

ef100_tx_make_descriptors.exit.if.end51_crit_edge: ; preds = %ef100_tx_make_descriptors.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end51

ef100_tx_make_descriptors.exit.for.body.i_crit_edge: ; preds = %ef100_tx_make_descriptors.exit
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %ef100_tx_make_descriptors.exit.for.body.i_crit_edge
  %tx_queue.017.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %tx_queue1.i, %ef100_tx_make_descriptors.exit.for.body.i_crit_edge ]
  %fill_level.016.i = phi i32 [ %218, %for.body.i.for.body.i_crit_edge ], [ 0, %ef100_tx_make_descriptors.exit.for.body.i_crit_edge ]
  %insert_count.i150 = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue.017.i, i32 0, i32 26
  %214 = ptrtoint ptr %insert_count.i150 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %insert_count.i150, align 128
  %old_read_count.i = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue.017.i, i32 0, i32 29
  %216 = ptrtoint ptr %old_read_count.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %old_read_count.i, align 4
  %sub.i151 = sub i32 %215, %217
  %218 = tail call i32 @llvm.umax.i32(i32 %fill_level.016.i, i32 %sub.i151) #5
  %incdec.ptr.i = getelementptr %struct.efx_tx_queue, ptr %tx_queue.017.i, i32 1
  %cmp.i152 = icmp ult ptr %incdec.ptr.i, %add.ptr.i
  br i1 %cmp.i152, label %for.body.i.for.body.i_crit_edge, label %efx_channel_tx_old_fill_level.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

efx_channel_tx_old_fill_level.exit:               ; preds = %for.body.i
  %txq_stop_thresh = getelementptr inbounds %struct.efx_nic, ptr %3, i32 0, i32 33
  %219 = ptrtoint ptr %txq_stop_thresh to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %txq_stop_thresh, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %218, i32 %220)
  %cmp20 = icmp ugt i32 %218, %220
  br i1 %cmp20, label %if.then22, label %efx_channel_tx_old_fill_level.exit.if.end51_crit_edge

efx_channel_tx_old_fill_level.exit.if.end51_crit_edge: ; preds = %efx_channel_tx_old_fill_level.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end51

if.then22:                                        ; preds = %efx_channel_tx_old_fill_level.exit
  %core_txq = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 7
  %221 = ptrtoint ptr %core_txq to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %core_txq, align 4
  %state.i = getelementptr inbounds %struct.netdev_queue, ptr %222, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !51
  %223 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %channel, align 8
  %tx_queue31 = getelementptr inbounds %struct.efx_channel, ptr %224, i32 0, i32 46
  %channel1.i.i222 = getelementptr inbounds %struct.efx_channel, ptr %224, i32 0, i32 1
  %225 = ptrtoint ptr %channel1.i.i222 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %channel1.i.i222, align 4
  %227 = ptrtoint ptr %224 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %224, align 128
  %xdp_channel_offset.i.i223 = getelementptr inbounds %struct.efx_nic, ptr %228, i32 0, i32 50
  %229 = ptrtoint ptr %xdp_channel_offset.i.i223 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %xdp_channel_offset.i.i223, align 8
  %sub.i.i154224 = sub i32 %226, %230
  %n_xdp_channels.i.i225 = getelementptr inbounds %struct.efx_nic, ptr %228, i32 0, i32 49
  %231 = ptrtoint ptr %n_xdp_channels.i.i225 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %n_xdp_channels.i.i225, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i154224, i32 %232)
  %cmp.i.i226 = icmp ult i32 %sub.i.i154224, %232
  %xdp_tx_per_channel.i227 = getelementptr inbounds %struct.efx_nic, ptr %228, i32 0, i32 51
  %tx_queues_per_channel.i228 = getelementptr inbounds %struct.efx_nic, ptr %228, i32 0, i32 48
  %retval.0.in.i229 = select i1 %cmp.i.i226, ptr %xdp_tx_per_channel.i227, ptr %tx_queues_per_channel.i228
  %233 = ptrtoint ptr %retval.0.in.i229 to i32
  call void @__asan_load4_noabort(i32 %233)
  %retval.0.i155230 = load i32, ptr %retval.0.in.i229, align 4
  %add.ptr231 = getelementptr %struct.efx_tx_queue, ptr %tx_queue31, i32 %retval.0.i155230
  %cmp37232 = icmp ult ptr %tx_queue31, %add.ptr231
  br i1 %cmp37232, label %if.then22.do.end41_crit_edge, label %if.then22.if.end42_crit_edge

if.then22.if.end42_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42

if.then22.do.end41_crit_edge:                     ; preds = %if.then22
  br label %do.end41

do.end41:                                         ; preds = %do.end41.do.end41_crit_edge, %if.then22.do.end41_crit_edge
  %txq2.0233 = phi ptr [ %incdec.ptr, %do.end41.do.end41_crit_edge ], [ %tx_queue31, %if.then22.do.end41_crit_edge ]
  %read_count = getelementptr inbounds %struct.efx_tx_queue, ptr %txq2.0233, i32 0, i32 18
  %234 = ptrtoint ptr %read_count to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load volatile i32, ptr %read_count, align 128
  %old_read_count = getelementptr inbounds %struct.efx_tx_queue, ptr %txq2.0233, i32 0, i32 29
  %236 = ptrtoint ptr %old_read_count to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 %235, ptr %old_read_count, align 4
  %incdec.ptr = getelementptr %struct.efx_tx_queue, ptr %txq2.0233, i32 1
  %237 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %channel, align 8
  %tx_queue33 = getelementptr inbounds %struct.efx_channel, ptr %238, i32 0, i32 46
  %channel1.i.i = getelementptr inbounds %struct.efx_channel, ptr %238, i32 0, i32 1
  %239 = ptrtoint ptr %channel1.i.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %channel1.i.i, align 4
  %241 = ptrtoint ptr %238 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %238, align 128
  %xdp_channel_offset.i.i = getelementptr inbounds %struct.efx_nic, ptr %242, i32 0, i32 50
  %243 = ptrtoint ptr %xdp_channel_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %xdp_channel_offset.i.i, align 8
  %sub.i.i154 = sub i32 %240, %244
  %n_xdp_channels.i.i = getelementptr inbounds %struct.efx_nic, ptr %242, i32 0, i32 49
  %245 = ptrtoint ptr %n_xdp_channels.i.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %n_xdp_channels.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i154, i32 %246)
  %cmp.i.i = icmp ult i32 %sub.i.i154, %246
  %xdp_tx_per_channel.i = getelementptr inbounds %struct.efx_nic, ptr %242, i32 0, i32 51
  %tx_queues_per_channel.i = getelementptr inbounds %struct.efx_nic, ptr %242, i32 0, i32 48
  %retval.0.in.i = select i1 %cmp.i.i, ptr %xdp_tx_per_channel.i, ptr %tx_queues_per_channel.i
  %247 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %retval.0.i155 = load i32, ptr %retval.0.in.i, align 4
  %add.ptr = getelementptr %struct.efx_tx_queue, ptr %tx_queue33, i32 %retval.0.i155
  %cmp37 = icmp ult ptr %incdec.ptr, %add.ptr
  br i1 %cmp37, label %do.end41.do.end41_crit_edge, label %do.end41.if.end42_crit_edge

do.end41.if.end42_crit_edge:                      ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42

do.end41.do.end41_crit_edge:                      ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end41

if.end42:                                         ; preds = %do.end41.if.end42_crit_edge, %if.then22.if.end42_crit_edge
  %tx_queue33.lcssa = phi ptr [ %tx_queue31, %if.then22.if.end42_crit_edge ], [ %tx_queue33, %do.end41.if.end42_crit_edge ]
  %add.ptr.lcssa = phi ptr [ %add.ptr231, %if.then22.if.end42_crit_edge ], [ %add.ptr, %do.end41.if.end42_crit_edge ]
  %cmp15.i167 = icmp ult ptr %tx_queue33.lcssa, %add.ptr.lcssa
  br i1 %cmp15.i167, label %if.end42.for.body.i175_crit_edge, label %if.end42.efx_channel_tx_old_fill_level.exit178_crit_edge

if.end42.efx_channel_tx_old_fill_level.exit178_crit_edge: ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  br label %efx_channel_tx_old_fill_level.exit178

if.end42.for.body.i175_crit_edge:                 ; preds = %if.end42
  br label %for.body.i175

for.body.i175:                                    ; preds = %for.body.i175.for.body.i175_crit_edge, %if.end42.for.body.i175_crit_edge
  %tx_queue.017.i168 = phi ptr [ %incdec.ptr.i173, %for.body.i175.for.body.i175_crit_edge ], [ %tx_queue33.lcssa, %if.end42.for.body.i175_crit_edge ]
  %fill_level.016.i169 = phi i32 [ %252, %for.body.i175.for.body.i175_crit_edge ], [ 0, %if.end42.for.body.i175_crit_edge ]
  %insert_count.i170 = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue.017.i168, i32 0, i32 26
  %248 = ptrtoint ptr %insert_count.i170 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %insert_count.i170, align 128
  %old_read_count.i171 = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue.017.i168, i32 0, i32 29
  %250 = ptrtoint ptr %old_read_count.i171 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %old_read_count.i171, align 4
  %sub.i172 = sub i32 %249, %251
  %252 = tail call i32 @llvm.umax.i32(i32 %fill_level.016.i169, i32 %sub.i172) #5
  %incdec.ptr.i173 = getelementptr %struct.efx_tx_queue, ptr %tx_queue.017.i168, i32 1
  %cmp.i174 = icmp ult ptr %incdec.ptr.i173, %add.ptr.lcssa
  br i1 %cmp.i174, label %for.body.i175.for.body.i175_crit_edge, label %for.body.i175.efx_channel_tx_old_fill_level.exit178_crit_edge

for.body.i175.efx_channel_tx_old_fill_level.exit178_crit_edge: ; preds = %for.body.i175
  call void @__sanitizer_cov_trace_pc() #7
  br label %efx_channel_tx_old_fill_level.exit178

for.body.i175.for.body.i175_crit_edge:            ; preds = %for.body.i175
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i175

efx_channel_tx_old_fill_level.exit178:            ; preds = %for.body.i175.efx_channel_tx_old_fill_level.exit178_crit_edge, %if.end42.efx_channel_tx_old_fill_level.exit178_crit_edge
  %fill_level.0.lcssa.i176 = phi i32 [ 0, %if.end42.efx_channel_tx_old_fill_level.exit178_crit_edge ], [ %252, %for.body.i175.efx_channel_tx_old_fill_level.exit178_crit_edge ]
  %253 = ptrtoint ptr %txq_stop_thresh to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %txq_stop_thresh, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %fill_level.0.lcssa.i176, i32 %254)
  %cmp46 = icmp ult i32 %fill_level.0.lcssa.i176, %254
  br i1 %cmp46, label %if.then48, label %efx_channel_tx_old_fill_level.exit178.if.end51_crit_edge

efx_channel_tx_old_fill_level.exit178.if.end51_crit_edge: ; preds = %efx_channel_tx_old_fill_level.exit178
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end51

if.then48:                                        ; preds = %efx_channel_tx_old_fill_level.exit178
  call void @__sanitizer_cov_trace_pc() #7
  %255 = ptrtoint ptr %core_txq to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %core_txq, align 4
  %state.i136 = getelementptr inbounds %struct.netdev_queue, ptr %256, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i136) #5
  br label %if.end51

if.end51:                                         ; preds = %if.then48, %efx_channel_tx_old_fill_level.exit178.if.end51_crit_edge, %efx_channel_tx_old_fill_level.exit.if.end51_crit_edge, %ef100_tx_make_descriptors.exit.if.end51_crit_edge
  %xmit_pending = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 36
  %257 = ptrtoint ptr %xmit_pending to i32
  call void @__asan_store1_noabort(i32 %257)
  store i8 1, ptr %xmit_pending, align 8
  %core_txq52 = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 7
  %258 = ptrtoint ptr %core_txq52 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %core_txq52, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %260 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %len, align 4
  br i1 %tobool.i, label %if.then.i, label %if.end.i182

if.then.i:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %261)
  %cmp.i.i179 = icmp ugt i32 %261, 268435455
  br i1 %cmp.i.i179, label %do.body2.i.i, label %__netdev_tx_sent_queue.exit, !prof !45

do.body2.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/dynamic_queue_limits.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #5, !srcloc !52
  unreachable

if.end.i182:                                      ; preds = %if.end51
  %dql.i.i = getelementptr inbounds %struct.netdev_queue, ptr %259, i32 0, i32 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %261)
  %cmp.i.i.i181 = icmp ugt i32 %261, 268435455
  br i1 %cmp.i.i.i181, label %do.body2.i.i.i, label %dql_queued.exit.i.i, !prof !45

do.body2.i.i.i:                                   ; preds = %if.end.i182
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/dynamic_queue_limits.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #5, !srcloc !52
  unreachable

dql_queued.exit.i.i:                              ; preds = %if.end.i182
  %last_obj_cnt.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %259, i32 0, i32 15, i32 2
  %262 = ptrtoint ptr %last_obj_cnt.i.i.i to i32
  call void @__asan_store4_noabort(i32 %262)
  store i32 %261, ptr %last_obj_cnt.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !53
  %263 = ptrtoint ptr %dql.i.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %dql.i.i, align 128
  %add.i.i.i = add i32 %264, %261
  store i32 %add.i.i.i, ptr %dql.i.i, align 128
  %adj_limit.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %259, i32 0, i32 15, i32 1
  %265 = ptrtoint ptr %adj_limit.i.i.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load volatile i32, ptr %adj_limit.i.i.i, align 4
  %267 = load volatile i32, ptr %dql.i.i, align 128
  %sub.i.i.i183 = sub i32 %266, %267
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i.i.i183)
  %cmp.i4.i = icmp sgt i32 %sub.i.i.i183, -1
  br i1 %cmp.i4.i, label %dql_queued.exit.i.i.if.then59_crit_edge, label %if.end.i.i184, !prof !44

dql_queued.exit.i.i.if.then59_crit_edge:          ; preds = %dql_queued.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then59

if.end.i.i184:                                    ; preds = %dql_queued.exit.i.i
  %state.i5.i = getelementptr inbounds %struct.netdev_queue, ptr %259, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 1, ptr noundef %state.i5.i) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !54
  %268 = ptrtoint ptr %adj_limit.i.i.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load volatile i32, ptr %adj_limit.i.i.i, align 4
  %270 = ptrtoint ptr %dql.i.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load volatile i32, ptr %dql.i.i, align 128
  %sub.i22.i.i = sub i32 %269, %271
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i22.i.i)
  %cmp7.i.i = icmp sgt i32 %sub.i22.i.i, -1
  br i1 %cmp7.i.i, label %if.then14.i.i, label %if.end.i.i184.if.then59_crit_edge, !prof !45

if.end.i.i184.if.then59_crit_edge:                ; preds = %if.end.i.i184
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then59

if.then14.i.i:                                    ; preds = %if.end.i.i184
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state.i5.i) #5
  br label %if.then59

__netdev_tx_sent_queue.exit:                      ; preds = %if.then.i
  %dql.i = getelementptr inbounds %struct.netdev_queue, ptr %259, i32 0, i32 15
  %last_obj_cnt.i.i = getelementptr inbounds %struct.netdev_queue, ptr %259, i32 0, i32 15, i32 2
  %272 = ptrtoint ptr %last_obj_cnt.i.i to i32
  call void @__asan_store4_noabort(i32 %272)
  store i32 %261, ptr %last_obj_cnt.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !53
  %273 = ptrtoint ptr %dql.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %dql.i, align 128
  %add.i.i = add i32 %274, %261
  store i32 %add.i.i, ptr %dql.i, align 128
  %state.i.i180 = getelementptr inbounds %struct.netdev_queue, ptr %259, i32 0, i32 13
  %275 = ptrtoint ptr %state.i.i180 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load volatile i32, ptr %state.i.i180, align 4
  %and1.i.i.i = and i32 %276, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.i.not = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.i.not, label %lor.lhs.false56, label %__netdev_tx_sent_queue.exit.if.then59_crit_edge

__netdev_tx_sent_queue.exit.if.then59_crit_edge:  ; preds = %__netdev_tx_sent_queue.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then59

lor.lhs.false56:                                  ; preds = %__netdev_tx_sent_queue.exit
  %277 = ptrtoint ptr %write_count.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %write_count.i, align 4
  %notify_count = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 38
  %279 = ptrtoint ptr %notify_count to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %notify_count, align 16
  %sub = sub i32 %278, %280
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %sub)
  %cmp57 = icmp ugt i32 %sub, 255
  br i1 %cmp57, label %lor.lhs.false56.if.then59_crit_edge, label %lor.lhs.false56.if.end60_crit_edge

lor.lhs.false56.if.end60_crit_edge:               ; preds = %lor.lhs.false56
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end60

lor.lhs.false56.if.then59_crit_edge:              ; preds = %lor.lhs.false56
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then59

if.then59:                                        ; preds = %lor.lhs.false56.if.then59_crit_edge, %__netdev_tx_sent_queue.exit.if.then59_crit_edge, %if.then14.i.i, %if.end.i.i184.if.then59_crit_edge, %dql_queued.exit.i.i.if.then59_crit_edge
  %281 = ptrtoint ptr %xmit_pending to i32
  call void @__asan_store1_noabort(i32 %281)
  store i8 0, ptr %xmit_pending, align 8
  %notify_count.i.i = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 38
  %282 = ptrtoint ptr %notify_count.i.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %notify_count.i.i, align 16
  %284 = ptrtoint ptr %write_count.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %write_count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %283, i32 %285)
  %cmp.i.i186 = icmp eq i32 %283, %285
  br i1 %cmp.i.i186, label %if.then59.ef100_tx_push_buffers.exit_crit_edge, label %if.end.i.i189, !prof !45

if.then59.ef100_tx_push_buffers.exit_crit_edge:   ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #7
  br label %ef100_tx_push_buffers.exit

if.end.i.i189:                                    ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #7
  %286 = ptrtoint ptr %ptr_mask to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %ptr_mask, align 4
  %and.i.i187 = and i32 %287, %285
  %288 = tail call i32 @llvm.bswap.i32(i32 %and.i.i187) #5
  %289 = lshr i32 %288, 16
  %290 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %tx_queue, align 128
  %queue.i.i = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 1
  %292 = ptrtoint ptr %queue.i.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %queue.i.i, align 4
  %vi_stride.i.i.i.i = getelementptr inbounds %struct.efx_nic, ptr %291, i32 0, i32 14
  %294 = ptrtoint ptr %vi_stride.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %vi_stride.i.i.i.i, align 128
  %mul.i.i.i.i = mul i32 %295, %293
  %add.i.i.i.i188 = add i32 %mul.i.i.i.i, 512
  %membase.i.i.i.i.i = getelementptr inbounds %struct.efx_nic, ptr %291, i32 0, i32 13
  %296 = ptrtoint ptr %membase.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %membase.i.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %297, i32 %add.i.i.i.i188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i.i, i32 %289) #5, !srcloc !48
  %298 = ptrtoint ptr %write_count.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %write_count.i, align 4
  %300 = ptrtoint ptr %notify_count.i.i to i32
  call void @__asan_store4_noabort(i32 %300)
  store i32 %299, ptr %notify_count.i.i, align 16
  br label %ef100_tx_push_buffers.exit

ef100_tx_push_buffers.exit:                       ; preds = %if.end.i.i189, %if.then59.ef100_tx_push_buffers.exit_crit_edge
  %pushes.i = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 34
  %301 = ptrtoint ptr %pushes.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %pushes.i, align 32
  %inc.i190 = add i32 %302, 1
  store i32 %inc.i190, ptr %pushes.i, align 32
  br label %if.end60

if.end60:                                         ; preds = %ef100_tx_push_buffers.exit, %lor.lhs.false56.if.end60_crit_edge
  br i1 %tobool8.not213, label %if.else65, label %if.then62

if.then62:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #7
  %tso_bursts = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 30
  %303 = ptrtoint ptr %tso_bursts to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %tso_bursts, align 16
  %inc63 = add i32 %304, 1
  store i32 %inc63, ptr %tso_bursts, align 16
  %tso_packets = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 32
  %305 = ptrtoint ptr %tso_packets to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %tso_packets, align 8
  %add = add i32 %306, %62
  store i32 %add, ptr %tso_packets, align 8
  %tx_packets = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 39
  %307 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %tx_packets, align 4
  %add64 = add i32 %308, %62
  store i32 %add64, ptr %tx_packets, align 4
  br label %cleanup

if.else65:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #7
  %tx_packets66 = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 39
  %309 = ptrtoint ptr %tx_packets66 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %tx_packets66, align 4
  %inc67 = add i32 %310, 1
  store i32 %inc67, ptr %tx_packets66, align 4
  br label %cleanup

err:                                              ; preds = %if.end14.err_crit_edge, %if.then10.err_crit_edge
  %rc.0 = phi i32 [ %call15, %if.end14.err_crit_edge ], [ %call11, %if.then10.err_crit_edge ]
  tail call void @efx_enqueue_unwind(ptr noundef %tx_queue, i32 noundef %1) #5
  %tobool.not.i191 = icmp eq ptr %skb, null
  %cmp.i192 = icmp ugt ptr %skb, inttoptr (i32 -4096 to ptr)
  %spec.select.i193 = or i1 %tobool.not.i191, %cmp.i192
  br i1 %spec.select.i193, label %err.if.end71_crit_edge, label %if.then70

err.if.end71_crit_edge:                           ; preds = %err
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end71

if.then70:                                        ; preds = %err
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %skb, i32 noundef 1) #5
  br label %if.end71

if.end71:                                         ; preds = %if.then70, %err.if.end71_crit_edge
  %xmit_pending72 = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 36
  %311 = ptrtoint ptr %xmit_pending72 to i32
  call void @__asan_load1_noabort(i32 %311)
  %312 = load i8, ptr %xmit_pending72, align 8, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %312)
  %tobool73.not = icmp eq i8 %312, 0
  %brmerge = select i1 %tobool73.not, i1 true, i1 %tobool.i
  br i1 %brmerge, label %if.end71.cleanup_crit_edge, label %if.then77

if.end71.cleanup_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then77:                                        ; preds = %if.end71
  %313 = ptrtoint ptr %xmit_pending72 to i32
  call void @__asan_store1_noabort(i32 %313)
  store i8 0, ptr %xmit_pending72, align 8
  %notify_count.i.i195 = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 38
  %314 = ptrtoint ptr %notify_count.i.i195 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %notify_count.i.i195, align 16
  %write_count.i.i196 = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 27
  %316 = ptrtoint ptr %write_count.i.i196 to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %write_count.i.i196, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %315, i32 %317)
  %cmp.i.i197 = icmp eq i32 %315, %317
  br i1 %cmp.i.i197, label %if.then77.ef100_tx_push_buffers.exit209_crit_edge, label %if.end.i.i206, !prof !45

if.then77.ef100_tx_push_buffers.exit209_crit_edge: ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #7
  br label %ef100_tx_push_buffers.exit209

if.end.i.i206:                                    ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #7
  %318 = ptrtoint ptr %ptr_mask to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %ptr_mask, align 4
  %and.i.i199 = and i32 %319, %317
  %320 = tail call i32 @llvm.bswap.i32(i32 %and.i.i199) #5
  %321 = lshr i32 %320, 16
  %322 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %tx_queue, align 128
  %queue.i.i200 = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 1
  %324 = ptrtoint ptr %queue.i.i200 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %queue.i.i200, align 4
  %vi_stride.i.i.i.i201 = getelementptr inbounds %struct.efx_nic, ptr %323, i32 0, i32 14
  %326 = ptrtoint ptr %vi_stride.i.i.i.i201 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %vi_stride.i.i.i.i201, align 128
  %mul.i.i.i.i202 = mul i32 %327, %325
  %add.i.i.i.i203 = add i32 %mul.i.i.i.i202, 512
  %membase.i.i.i.i.i204 = getelementptr inbounds %struct.efx_nic, ptr %323, i32 0, i32 13
  %328 = ptrtoint ptr %membase.i.i.i.i.i204 to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %membase.i.i.i.i.i204, align 4
  %add.ptr.i.i.i.i.i205 = getelementptr i8, ptr %329, i32 %add.i.i.i.i203
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i.i205, i32 %321) #5, !srcloc !48
  %330 = ptrtoint ptr %write_count.i.i196 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %write_count.i.i196, align 4
  %332 = ptrtoint ptr %notify_count.i.i195 to i32
  call void @__asan_store4_noabort(i32 %332)
  store i32 %331, ptr %notify_count.i.i195, align 16
  br label %ef100_tx_push_buffers.exit209

ef100_tx_push_buffers.exit209:                    ; preds = %if.end.i.i206, %if.then77.ef100_tx_push_buffers.exit209_crit_edge
  %pushes.i207 = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 34
  %333 = ptrtoint ptr %pushes.i207 to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %pushes.i207, align 32
  %inc.i208 = add i32 %334, 1
  store i32 %inc.i208, ptr %pushes.i207, align 32
  br label %cleanup

cleanup:                                          ; preds = %ef100_tx_push_buffers.exit209, %if.end71.cleanup_crit_edge, %if.else65, %if.then62, %if.then10.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -19, %if.then ], [ 0, %if.then10.cleanup_crit_edge ], [ 0, %if.else65 ], [ 0, %if.then62 ], [ %rc.0, %if.end71.cleanup_crit_edge ], [ %rc.0, %ef100_tx_push_buffers.exit209 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_tx_tso_fallback(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_tx_map_data(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_enqueue_unwind(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_tx_tso_header_length(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !20, !21, !23, !25, !27, !29, !30, !32}
!llvm.named.register.sp = !{!34}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/sfc/ef100_tx.c", i32 48, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../include/linux/netdevice.h", i32 4963, i32 10}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../include/linux/netdevice.h", i32 4975, i32 36}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../include/linux/netdevice.h", i32 4976, i32 33}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../include/linux/netdevice.h", i32 4977, i32 36}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../include/linux/netdevice.h", i32 4978, i32 35}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../include/linux/netdevice.h", i32 4979, i32 31}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../include/linux/netdevice.h", i32 4980, i32 28}
!17 = distinct !{null, !18, !"__already_done", i1 false, i1 false}
!18 = !{!"../include/linux/netdevice.h", i32 4983, i32 2}
!19 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../include/linux/netdevice.h", i32 4984, i32 9}
!23 = distinct !{null, !24, !"__already_done", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/sfc/ef100_tx.c", i32 295, i32 4}
!25 = distinct !{null, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../include/linux/netdevice.h", i32 4690, i32 9}
!27 = distinct !{null, !28, !"__already_done", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/sfc/ef100_tx.c", i32 69, i32 3}
!29 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!30 = distinct !{null, !31, !"__already_done", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/sfc/ef100_tx.c", i32 79, i32 3}
!32 = distinct !{null, !33, !"__already_done", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/sfc/ef100_tx.c", i32 87, i32 6}
!34 = !{!"sp"}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"min_enum_size", i32 4}
!37 = !{i32 8, !"branch-target-enforcement", i32 0}
!38 = !{i32 8, !"sign-return-address", i32 0}
!39 = !{i32 8, !"sign-return-address-all", i32 0}
!40 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!44 = !{!"branch_weights", i32 2000, i32 1}
!45 = !{!"branch_weights", i32 1, i32 2000}
!46 = !{i64 2159471393}
!47 = !{i64 2159471545}
!48 = !{i64 6061449}
!49 = !{!"branch_weights", i32 2002, i32 2000}
!50 = !{i64 6487136}
!51 = !{i64 2159476220}
!52 = !{i64 2154883961, i64 2154884461, i64 2154883998, i64 2154884054, i64 2154884088, i64 2154884112, i64 2154884153, i64 2154884174, i64 2154884202, i64 2154884236}
!53 = !{i64 2154885305}
!54 = !{i64 2155816796}
!55 = !{i8 0, i8 2}
