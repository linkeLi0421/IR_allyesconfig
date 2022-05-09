; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/chelsio/cxgb4/cxgb4_tc_mqprio.c_pt.bc'
source_filename = "../drivers/net/ethernet/chelsio/cxgb4/cxgb4_tc_mqprio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.14 }
%union.anon.14 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ch_sched_flowc = type { i32, i8 }
%struct.ch_sched_params = type { i8, %union.anon.23 }
%union.anon.23 = type { %struct.anon.24 }
%struct.anon.24 = type { i8, i8, i8, i8, i8, i8, i32, i32, i16, i16, i16 }
%struct.tc_mqprio_qopt = type { i8, [16 x i8], i8, [16 x i16], [16 x i16] }
%struct.tc_mqprio_qopt_offload = type { %struct.tc_mqprio_qopt, i16, i16, i32, [16 x i64], [16 x i64] }
%struct.adapter = type { ptr, ptr, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i16, i16, %struct.adapter_params, %struct.cxgb4_virt_res, i32, ptr, %struct.msix_bmap, %struct.doorbell_stats, [36 x i8], %struct.sge, [4 x ptr], [4 x i8], ptr, i8, i32, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, ptr, [8 x ptr], i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, [64 x i8], %struct.tid_info, ptr, %struct.spinlock, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, i8, %struct.spinlock, %struct.mbox_list, ptr, %struct.mutex, ptr, i8, i8, ptr, %struct.ptp_clock_info, ptr, %struct.spinlock, %struct.spinlock, [48 x i8], %struct.spinlock, ptr, %struct.chcr_ktls, %struct.chcr_stats_debug, %struct.ch_ktls_stats_debug, %struct.ch_ipsec_stats_debug, i8, %struct.rhashtable, %struct.rhashtable_params, %struct.timer_list, %struct.work_struct, %struct.ethtool_dump, %struct.hma_data, ptr, %struct.vmcoredd_data, %struct.ch_thermal, ptr, ptr, ptr, [88 x i8] }
%struct.adapter_params = type { %struct.sge_params, %struct.tp_params, %struct.vpd_params, %struct.pf_resources, %struct.pci_params, %struct.devlog_params, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [7 x i8], [16 x i16], [32 x i16], [32 x i16], i8, i8, i32, %struct.arch_specific_params, i8, i8, i8, i8, i8, i32, i8, i32, i32, i32, i8, i8, i8, i8, [4 x i8], i8, i8 }
%struct.sge_params = type { i32, i32, i32 }
%struct.tp_params = type { i32, i32, i16, i32, [4 x i16], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.vpd_params = type { i32, [25 x i8], [17 x i8], [17 x i8], [13 x i8] }
%struct.pf_resources = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pci_params = type { i8, i8 }
%struct.devlog_params = type { i32, i32, i32 }
%struct.arch_specific_params = type { i8, i8, i8, i16, i16, i32, i16 }
%struct.cxgb4_virt_res = type { %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, i32, %struct.cxgb4_range }
%struct.cxgb4_range = type { i32, i32 }
%struct.msix_bmap = type { ptr, i32, %struct.spinlock }
%struct.doorbell_stats = type { i32, i32, i32 }
%struct.sge = type { [32 x %struct.sge_eth_txq], %struct.sge_eth_txq, [4 x %struct.sge_ctrl_txq], [32 x %struct.sge_eth_rxq], %struct.sge_rspq, ptr, ptr, [16 x i8], %struct.sge_rspq, %struct.spinlock, ptr, ptr, [4 x ptr], i16, i16, i16, i16, i16, i16, i16, [6 x i16], [4 x i8], i16, [8 x i16], i32, i32, i32, i32, i32, %struct.sge_idma_monitor_state, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, %struct.timer_list, i32, i32, [96 x i8] }
%struct.sge_eth_txq = type { %struct.sge_txq, ptr, i8, i8, i32, i32, i32, i32, i32, i32, [116 x i8] }
%struct.sge_txq = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, %struct.spinlock, i32, i16, i16, ptr, i32 }
%struct.sge_ctrl_txq = type { %struct.sge_txq, ptr, %struct.sk_buff_head, %struct.tasklet_struct, i8, [63 x i8] }
%struct.sk_buff_head = type { %union.anon.55, i32, %struct.spinlock }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.198, i32 }
%struct.atomic_t = type { i32 }
%union.anon.198 = type { ptr }
%struct.sge_eth_rxq = type { %struct.sge_rspq, %struct.sge_fl, %struct.sge_eth_stats, ptr, [56 x i8] }
%struct.sge_fl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, i32 }
%struct.sge_eth_stats = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.sge_rspq = type { %struct.napi_struct, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i32, i16, i16, ptr, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, %struct.t4_lro_mgr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.t4_lro_mgr = type { i8, i32, i32, %struct.sk_buff_head }
%struct.sge_idma_monitor_state = type { i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32] }
%struct.list_head = type { ptr, ptr }
%struct.tid_info = type { ptr, i32, i32, ptr, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.spinlock, ptr, i32, %struct.spinlock, i32, i32, i32, ptr, ptr, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i32, [68 x i8] }
%struct.mbox_list = type { %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.chcr_ktls = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.chcr_stats_debug = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.ch_ktls_stats_debug = type { [4 x %struct.ch_ktls_port_stats_debug], %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.ch_ktls_port_stats_debug = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.ch_ipsec_stats_debug = type { %struct.atomic_t }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ethtool_dump = type { i32, i32, i32, i32, [0 x i8] }
%struct.hma_data = type { i8, ptr, ptr }
%struct.vmcoredd_data = type { [44 x i8], i32, ptr }
%struct.ch_thermal = type { ptr, i32, i32 }
%struct.cxgb4_tc_mqprio = type { %struct.refcount_struct, %struct.mutex, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.191, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.191 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.sched_class = type { i8, i8, %struct.ch_sched_params, i32, %struct.list_head, %struct.atomic_t }
%struct.cxgb4_tc_port_mqprio = type { i32, %struct.tc_mqprio_qopt_offload, ptr, [16 x i8] }
%struct.sge_ofld_rxq = type { %struct.sge_rspq, %struct.sge_fl, %struct.sge_ofld_stats, ptr, [68 x i8] }
%struct.sge_ofld_stats = type { i32, i32, i32, i32 }
%struct.sge_eohw_txq = type { %struct.spinlock, %struct.sge_txq, ptr, i32, i32, i32, i32, i32 }
%struct.msix_info = type { i16, [26 x i8], i32, ptr }
%struct.sge_eosw_txq = type { %struct.spinlock, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.tasklet_struct, %struct.completion }
%struct.eotid_entry = type { ptr }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }

@cxgb4_init_tc_mqprio.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&tc_mqprio->mqprio_mutex\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Only full TC hardware offload is supported\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Only channel mode offload is supported\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Only bandwidth rate shaper supported\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Only %u traffic classes supported by hardware\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to get link speed, ret: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Queues can't overlap across tc\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Total Min/Max (%llu/%llu) Rate > supported (%llu)\0A\00", [45 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s-eorxq%d\00", [21 x i8] zeroinitializer }, align 32
@cxgb4_init_eosw_txq.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&eosw_txq->lock\00", [16 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 671, i32 2 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 23, i32 19 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 26, i32 19 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 29, i32 19 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 33, i32 7 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 40, i32 19 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 71, i32 9 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 86, i32 7 }
@___asan_gen_.42 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 87, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 197, i32 6 }
@___asan_gen_.47 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.50 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.51 = private constant [56 x i8] c"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_tc_mqprio.c\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 110, i32 2 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @cxgb4_init_tc_mqprio.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @init_completion.__key, ptr @.str.8, ptr @.str.9, ptr @cxgb4_init_eosw_txq.__key, ptr @.str.10], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4_init_tc_mqprio.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4_init_eosw_txq.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxgb4_setup_tc_mqprio(ptr noundef %dev, ptr noundef readonly %mqprio) local_unnamed_addr #0 align 64 {
entry:
  %fe.i231.i = alloca %struct.ch_sched_flowc, align 8
  %fe.i.i = alloca %struct.ch_sched_flowc, align 8
  %p.i = alloca %struct.ch_sched_params, align 4
  %speed.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %speed.i) #9
  %2 = ptrtoint ptr %speed.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %speed.i, align 4, !annotation !34
  %3 = ptrtoint ptr %mqprio to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %mqprio, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %entry
  %hw.i = getelementptr inbounds %struct.tc_mqprio_qopt, ptr %mqprio, i32 0, i32 2
  %5 = ptrtoint ptr %hw.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %hw.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp.not.i = icmp eq i8 %6, 1
  br i1 %cmp.not.i, label %if.else.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #12
  br label %cxgb4_mqprio_validate.exit.thread

if.else.i:                                        ; preds = %if.end.i
  %mode.i = getelementptr inbounds %struct.tc_mqprio_qopt_offload, ptr %mqprio, i32 0, i32 1
  %7 = ptrtoint ptr %mode.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %mode.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %8)
  %cmp6.not.i = icmp eq i16 %8, 1
  br i1 %cmp6.not.i, label %if.else9.i, label %if.then8.i

if.then8.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #12
  br label %cxgb4_mqprio_validate.exit.thread

if.else9.i:                                       ; preds = %if.else.i
  %shaper.i = getelementptr inbounds %struct.tc_mqprio_qopt_offload, ptr %mqprio, i32 0, i32 2
  %9 = ptrtoint ptr %shaper.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %shaper.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %10)
  %cmp11.not.i = icmp eq i16 %10, 1
  br i1 %cmp11.not.i, label %if.else14.i, label %if.then13.i

if.then13.i:                                      ; preds = %if.else9.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.3) #12
  br label %cxgb4_mqprio_validate.exit.thread

if.else14.i:                                      ; preds = %if.else9.i
  %conv17.i = zext i8 %4 to i32
  %nsched_cls.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 15, i32 31
  %11 = ptrtoint ptr %nsched_cls.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nsched_cls.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %conv17.i)
  %cmp18.i = icmp ult i32 %12, %conv17.i
  br i1 %cmp18.i, label %if.then20.i, label %if.end26.i

if.then20.i:                                      ; preds = %if.else14.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.4, i32 noundef %12) #12
  br label %cxgb4_mqprio_validate.exit.thread

if.end26.i:                                       ; preds = %if.else14.i
  %call27.i = call i32 @t4_get_link_params(ptr noundef %add.ptr.i.i.i, ptr noundef null, ptr noundef nonnull %speed.i, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool28.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool28.not.i, label %if.end30.i, label %if.then29.i

if.then29.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.5, i32 noundef %call27.i) #12
  br label %cxgb4_mqprio_validate.exit.thread

if.end30.i:                                       ; preds = %if.end26.i
  %13 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %speed.i, align 4
  %conv31.i = zext i32 %14 to i64
  %mul32.i = mul nuw nsw i64 %conv31.i, 1000000
  %15 = ptrtoint ptr %mqprio to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %mqprio, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp37227.not.i = icmp eq i8 %16, 0
  br i1 %cmp37227.not.i, label %if.end30.i.for.end129.i_crit_edge, label %for.body.preheader.i

if.end30.i.for.end129.i_crit_edge:                ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end129.i

for.body.preheader.i:                             ; preds = %if.end30.i
  %17 = zext i8 %16 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.end.i.for.body.i_crit_edge, %for.body.preheader.i
  %indvars.iv242.i = phi i32 [ 0, %for.body.preheader.i ], [ %indvars.iv.next243.i, %for.end.i.for.body.i_crit_edge ]
  %indvars.iv.i = phi i32 [ 1, %for.body.preheader.i ], [ %indvars.iv.next.i, %for.end.i.for.body.i_crit_edge ]
  %min_rate.0232.i = phi i64 [ 0, %for.body.preheader.i ], [ %add121.i, %for.end.i.for.body.i_crit_edge ]
  %max_rate.0231.i = phi i64 [ 0, %for.body.preheader.i ], [ %add126.i, %for.end.i.for.body.i_crit_edge ]
  %qoffset.0229.i = phi i32 [ 0, %for.body.preheader.i ], [ %20, %for.end.i.for.body.i_crit_edge ]
  %qcount.0228.i = phi i32 [ 0, %for.body.preheader.i ], [ %add.i, %for.end.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.tc_mqprio_qopt, ptr %mqprio, i32 0, i32 4, i32 %indvars.iv242.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx.i, align 2
  %conv41.i = zext i16 %19 to i32
  %conv42.i = and i32 %qoffset.0229.i, 65535
  %20 = call i32 @llvm.umax.i32(i32 %conv42.i, i32 %conv41.i) #9
  %arrayidx49.i = getelementptr %struct.tc_mqprio_qopt, ptr %mqprio, i32 0, i32 3, i32 %indvars.iv242.i
  %21 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx49.i, align 2
  %conv50.i = zext i16 %22 to i32
  %add.i = add i32 %qcount.0228.i, %conv50.i
  %add61.i = add nsw i32 %conv41.i, -1
  %sub.i = add nsw i32 %add61.i, %conv50.i
  %indvars.iv.next243.i = add nuw nsw i32 %indvars.iv242.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %indvars.iv.next243.i, i32 %17)
  %cmp70225.i = icmp uge i32 %indvars.iv.next243.i, %17
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool89.not.i = icmp eq i16 %22, 0
  %or.cond237.i = select i1 %cmp70225.i, i1 true, i1 %tobool89.not.i
  br i1 %or.cond237.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body72.i_crit_edge

for.body.i.for.body72.i_crit_edge:                ; preds = %for.body.i
  br label %for.body72.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body72.i:                                     ; preds = %for.inc.i.for.body72.i_crit_edge, %for.body.i.for.body72.i_crit_edge
  %indvars.iv240.i = phi i32 [ %indvars.iv.next241.i, %for.inc.i.for.body72.i_crit_edge ], [ %indvars.iv.i, %for.body.i.for.body72.i_crit_edge ]
  %arrayidx81.i = getelementptr %struct.tc_mqprio_qopt, ptr %mqprio, i32 0, i32 3, i32 %indvars.iv240.i
  %23 = ptrtoint ptr %arrayidx81.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %arrayidx81.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool96.not.i = icmp eq i16 %24, 0
  br i1 %tobool96.not.i, label %for.body72.i.for.inc.i_crit_edge, label %if.end98.i

for.body72.i.for.inc.i_crit_edge:                 ; preds = %for.body72.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end98.i:                                       ; preds = %for.body72.i
  %arrayidx76.i = getelementptr %struct.tc_mqprio_qopt, ptr %mqprio, i32 0, i32 4, i32 %indvars.iv240.i
  %25 = ptrtoint ptr %arrayidx76.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %arrayidx76.i, align 2
  %conv77.i = zext i16 %26 to i32
  %conv82.i = zext i16 %24 to i32
  %add83.i = add nsw i32 %conv82.i, -1
  %sub84.i = add nuw nsw i32 %add83.i, %conv77.i
  %27 = call i16 @llvm.umax.i16(i16 %19, i16 %26) #9
  %28 = zext i16 %27 to i32
  %29 = call i32 @llvm.umin.i32(i32 %sub.i, i32 %sub84.i) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %28)
  %cmp113.not.i = icmp ult i32 %29, %28
  br i1 %cmp113.not.i, label %if.end98.i.for.inc.i_crit_edge, label %if.then115.i

if.end98.i.for.inc.i_crit_edge:                   ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then115.i:                                     ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.6) #12
  br label %cxgb4_mqprio_validate.exit.thread

for.inc.i:                                        ; preds = %if.end98.i.for.inc.i_crit_edge, %for.body72.i.for.inc.i_crit_edge
  %indvars.iv.next241.i = add nuw nsw i32 %indvars.iv240.i, 1
  %lftr.wideiv = trunc i32 %indvars.iv.next241.i to i8
  %exitcond = icmp eq i8 %16, %lftr.wideiv
  br i1 %exitcond, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body72.i_crit_edge

for.inc.i.for.body72.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body72.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge
  %arrayidx119.i = getelementptr %struct.tc_mqprio_qopt_offload, ptr %mqprio, i32 0, i32 4, i32 %indvars.iv242.i
  %30 = ptrtoint ptr %arrayidx119.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %arrayidx119.i, align 8
  %mul120.i = shl i64 %31, 3
  %add121.i = add i64 %mul120.i, %min_rate.0232.i
  %arrayidx124.i = getelementptr %struct.tc_mqprio_qopt_offload, ptr %mqprio, i32 0, i32 5, i32 %indvars.iv242.i
  %32 = ptrtoint ptr %arrayidx124.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %arrayidx124.i, align 8
  %mul125.i = shl i64 %33, 3
  %add126.i = add i64 %mul125.i, %max_rate.0231.i
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond244.not.i = icmp eq i32 %indvars.iv.next243.i, %17
  br i1 %exitcond244.not.i, label %for.end.i.for.end129.i_crit_edge, label %for.end.i.for.body.i_crit_edge

for.end.i.for.body.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i.for.end129.i_crit_edge:                 ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end129.i

for.end129.i:                                     ; preds = %for.end.i.for.end129.i_crit_edge, %if.end30.i.for.end129.i_crit_edge
  %qcount.0.lcssa.i = phi i32 [ 0, %if.end30.i.for.end129.i_crit_edge ], [ %add.i, %for.end.i.for.end129.i_crit_edge ]
  %qoffset.0.lcssa.i = phi i32 [ 0, %if.end30.i.for.end129.i_crit_edge ], [ %20, %for.end.i.for.end129.i_crit_edge ]
  %max_rate.0.lcssa.i = phi i64 [ 0, %if.end30.i.for.end129.i_crit_edge ], [ %add126.i, %for.end.i.for.end129.i_crit_edge ]
  %min_rate.0.lcssa.i = phi i64 [ 0, %if.end30.i.for.end129.i_crit_edge ], [ %add121.i, %for.end.i.for.end129.i_crit_edge ]
  %neotids.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 48, i32 35
  %34 = ptrtoint ptr %neotids.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %neotids.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %qoffset.0.lcssa.i, i32 %35)
  %cmp130.not.i = icmp uge i32 %qoffset.0.lcssa.i, %35
  call void @__sanitizer_cov_trace_cmp4(i32 %qcount.0.lcssa.i, i32 %35)
  %cmp134.i = icmp ugt i32 %qcount.0.lcssa.i, %35
  %or.cond.i = select i1 %cmp130.not.i, i1 true, i1 %cmp134.i
  br i1 %or.cond.i, label %for.end129.i.cxgb4_mqprio_validate.exit.thread_crit_edge, label %if.end137.i

for.end129.i.cxgb4_mqprio_validate.exit.thread_crit_edge: ; preds = %for.end129.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cxgb4_mqprio_validate.exit.thread

if.end137.i:                                      ; preds = %for.end129.i
  call void @__sanitizer_cov_trace_cmp8(i64 %min_rate.0.lcssa.i, i64 %mul32.i)
  %cmp138.i = icmp ugt i64 %min_rate.0.lcssa.i, %mul32.i
  call void @__sanitizer_cov_trace_cmp8(i64 %max_rate.0.lcssa.i, i64 %mul32.i)
  %cmp141.i = icmp ugt i64 %max_rate.0.lcssa.i, %mul32.i
  %or.cond218.i = select i1 %cmp138.i, i1 true, i1 %cmp141.i
  br i1 %or.cond218.i, label %if.then143.i, label %if.end137.i.if.end_crit_edge

if.end137.i.if.end_crit_edge:                     ; preds = %if.end137.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then143.i:                                     ; preds = %if.end137.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, i64 noundef %min_rate.0.lcssa.i, i64 noundef %max_rate.0.lcssa.i, i64 noundef %mul32.i) #12
  br label %cxgb4_mqprio_validate.exit.thread

cxgb4_mqprio_validate.exit.thread:                ; preds = %if.then143.i, %for.end129.i.cxgb4_mqprio_validate.exit.thread_crit_edge, %if.then115.i, %if.then29.i, %if.then20.i, %if.then13.i, %if.then8.i, %if.then4.i
  %retval.0.i.ph = phi i32 [ -12, %for.end129.i.cxgb4_mqprio_validate.exit.thread_crit_edge ], [ -22, %if.then143.i ], [ -22, %if.then115.i ], [ -22, %if.then29.i ], [ -34, %if.then20.i ], [ -22, %if.then13.i ], [ -22, %if.then8.i ], [ -22, %if.then4.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %speed.i) #9
  br label %cleanup

if.end:                                           ; preds = %if.end137.i.if.end_crit_edge, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %speed.i) #9
  %tc_mqprio = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 86
  %36 = ptrtoint ptr %tc_mqprio to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tc_mqprio, align 4
  %mqprio_mutex = getelementptr inbounds %struct.cxgb4_tc_mqprio, ptr %37, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %mqprio_mutex, i32 noundef 0) #9
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %38 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @netif_tx_stop_all_queues(ptr noundef %dev) #9
  call void @netif_carrier_off(ptr noundef %dev) #9
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  call fastcc void @cxgb4_mqprio_disable_offload(ptr noundef %dev)
  %40 = ptrtoint ptr %mqprio to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %mqprio, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool5.not = icmp eq i8 %41, 0
  br i1 %tobool5.not, label %if.end4.out_crit_edge, label %if.end7

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end7:                                          ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %p.i) #9
  %42 = call ptr @memset(ptr %p.i, i32 255, i32 28)
  %43 = ptrtoint ptr %p.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %p.i, align 4
  %u.i = getelementptr inbounds %struct.ch_sched_params, ptr %p.i, i32 0, i32 1
  %44 = ptrtoint ptr %u.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %u.i, align 4
  %mode.i42 = getelementptr inbounds %struct.ch_sched_params, ptr %p.i, i32 0, i32 1, i32 0, i32 1
  %45 = ptrtoint ptr %mode.i42 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %mode.i42, align 1
  %rateunit.i = getelementptr inbounds %struct.ch_sched_params, ptr %p.i, i32 0, i32 1, i32 0, i32 2
  %46 = ptrtoint ptr %rateunit.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %rateunit.i, align 2
  %ratemode.i = getelementptr inbounds %struct.ch_sched_params, ptr %p.i, i32 0, i32 1, i32 0, i32 3
  %47 = ptrtoint ptr %ratemode.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %ratemode.i, align 1
  %channel.i = getelementptr inbounds %struct.ch_sched_params, ptr %p.i, i32 0, i32 1, i32 0, i32 4
  %minrate.i = getelementptr inbounds %struct.ch_sched_params, ptr %p.i, i32 0, i32 1, i32 0, i32 6
  %maxrate.i = getelementptr inbounds %struct.ch_sched_params, ptr %p.i, i32 0, i32 1, i32 0, i32 7
  %weight.i = getelementptr inbounds %struct.ch_sched_params, ptr %p.i, i32 0, i32 1, i32 0, i32 8
  %48 = ptrtoint ptr %weight.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 0, ptr %weight.i, align 4
  %pktsize.i = getelementptr inbounds %struct.ch_sched_params, ptr %p.i, i32 0, i32 1, i32 0, i32 9
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %49 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %mtu.i, align 4
  %conv.i = trunc i32 %50 to i16
  %51 = ptrtoint ptr %pktsize.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %conv.i, ptr %pktsize.i, align 2
  %burstsize.i = getelementptr inbounds %struct.ch_sched_params, ptr %p.i, i32 0, i32 1, i32 0, i32 10
  %52 = ptrtoint ptr %burstsize.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 0, ptr %burstsize.i, align 4
  %53 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %add.ptr.i.i.i, align 8
  %tc_mqprio.i = getelementptr inbounds %struct.adapter, ptr %54, i32 0, i32 86
  %55 = ptrtoint ptr %tc_mqprio.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %tc_mqprio.i, align 4
  %port_mqprio.i = getelementptr inbounds %struct.cxgb4_tc_mqprio, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %port_mqprio.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %port_mqprio.i, align 4
  %port_id.i = getelementptr i8, ptr %dev, i32 2325
  %59 = ptrtoint ptr %port_id.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %port_id.i, align 1
  %idxprom.i = zext i8 %60 to i32
  %tx_chan.i = getelementptr i8, ptr %dev, i32 2326
  %61 = ptrtoint ptr %tx_chan.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %tx_chan.i, align 2
  %63 = ptrtoint ptr %channel.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %62, ptr %channel.i, align 4
  br label %for.body.i46

for.body.i46:                                     ; preds = %if.end30.i50.for.body.i46_crit_edge, %if.end7
  %indvars.iv.i44 = phi i32 [ %indvars.iv.next.i49, %if.end30.i50.for.body.i46_crit_edge ], [ 0, %if.end7 ]
  %arrayidx8.i = getelementptr %struct.tc_mqprio_qopt_offload, ptr %mqprio, i32 0, i32 4, i32 %indvars.iv.i44
  %64 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %arrayidx8.i, align 8
  %mul.i = shl i64 %65, 3
  %66 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %mul.i, i32 0) #13, !srcloc !35
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %66, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %66, 1
  %67 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %mul.i, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #13, !srcloc !36
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %67, 0
  %div1581.i.i.i = lshr i64 %asmresult10.i.i.i.i, 9
  %conv10.i = trunc i64 %div1581.i.i.i to i32
  %68 = ptrtoint ptr %minrate.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %conv10.i, ptr %minrate.i, align 4
  %arrayidx14.i = getelementptr %struct.tc_mqprio_qopt_offload, ptr %mqprio, i32 0, i32 5, i32 %indvars.iv.i44
  %69 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %arrayidx14.i, align 8
  %mul15.i = shl i64 %70, 3
  %71 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %mul15.i, i32 0) #13, !srcloc !35
  %asmresult.i.i.i60.i = extractvalue { i64, i32 } %71, 0
  %asmresult4.i.i.i61.i = extractvalue { i64, i32 } %71, 1
  %72 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %mul15.i, i64 %asmresult.i.i.i60.i, i32 %asmresult4.i.i.i61.i) #13, !srcloc !36
  %asmresult10.i.i.i62.i = extractvalue { i64, i32 } %72, 0
  %div1581.i.i63.i = lshr i64 %asmresult10.i.i.i62.i, 9
  %conv17.i45 = trunc i64 %div1581.i.i63.i to i32
  %73 = ptrtoint ptr %maxrate.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %conv17.i45, ptr %maxrate.i, align 4
  %74 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %mtu.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1501, i32 %75)
  %cmp21.i = icmp ult i32 %75, 1501
  br i1 %cmp21.i, label %if.then.i, label %for.body.i46.if.end.i48_crit_edge

for.body.i46.if.end.i48_crit_edge:                ; preds = %for.body.i46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i48

if.then.i:                                        ; preds = %for.body.i46
  call void @__sanitizer_cov_trace_pc() #11
  %.tr.i = trunc i32 %75 to i16
  %conv25.i = shl nuw nsw i16 %.tr.i, 3
  %76 = ptrtoint ptr %burstsize.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %conv25.i, ptr %burstsize.i, align 4
  br label %if.end.i48

if.end.i48:                                       ; preds = %if.then.i, %for.body.i46.if.end.i48_crit_edge
  %call28.i = call ptr @cxgb4_sched_class_alloc(ptr noundef %dev, ptr noundef nonnull %p.i) #9
  %tobool.not.i47 = icmp eq ptr %call28.i, null
  br i1 %tobool.not.i47, label %while.cond.preheader.i, label %if.end30.i50

while.cond.preheader.i:                           ; preds = %if.end.i48
  %77 = trunc i32 %indvars.iv.i44 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool33.not69.i = icmp eq i8 %77, 0
  br i1 %tobool33.not69.i, label %while.cond.preheader.i.cxgb4_mqprio_alloc_tc.exit.thread_crit_edge, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.preheader.i.cxgb4_mqprio_alloc_tc.exit.thread_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cxgb4_mqprio_alloc_tc.exit.thread

if.end30.i50:                                     ; preds = %if.end.i48
  %idx.i = getelementptr inbounds %struct.sched_class, ptr %call28.i, i32 0, i32 1
  %78 = ptrtoint ptr %idx.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %idx.i, align 1
  %arrayidx32.i = getelementptr %struct.cxgb4_tc_port_mqprio, ptr %58, i32 %idxprom.i, i32 3, i32 %indvars.iv.i44
  %80 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %79, ptr %arrayidx32.i, align 1
  %indvars.iv.next.i49 = add nuw nsw i32 %indvars.iv.i44, 1
  %81 = ptrtoint ptr %mqprio to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %mqprio, align 8
  %83 = zext i8 %82 to i32
  %cmp.i = icmp ult i32 %indvars.iv.next.i49, %83
  br i1 %cmp.i, label %if.end30.i50.for.body.i46_crit_edge, label %if.end11

if.end30.i50.for.body.i46_crit_edge:              ; preds = %if.end30.i50
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i46

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %indvars.iv73.i = phi i32 [ %84, %while.body.i.while.body.i_crit_edge ], [ %indvars.iv.i44, %while.cond.preheader.i.while.body.i_crit_edge ]
  %84 = add nsw i32 %indvars.iv73.i, -1
  %arrayidx36.i = getelementptr %struct.cxgb4_tc_port_mqprio, ptr %58, i32 %idxprom.i, i32 3, i32 %84
  %85 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx36.i, align 1
  call void @cxgb4_sched_class_free(ptr noundef %dev, i8 noundef zeroext %86) #9
  %tobool33.not.wide.i = icmp eq i32 %84, 0
  br i1 %tobool33.not.wide.i, label %while.body.i.cxgb4_mqprio_alloc_tc.exit.thread_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i.cxgb4_mqprio_alloc_tc.exit.thread_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cxgb4_mqprio_alloc_tc.exit.thread

cxgb4_mqprio_alloc_tc.exit.thread:                ; preds = %while.body.i.cxgb4_mqprio_alloc_tc.exit.thread_crit_edge, %while.cond.preheader.i.cxgb4_mqprio_alloc_tc.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %p.i) #9
  br label %out

if.end11:                                         ; preds = %if.end30.i50
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %p.i) #9
  %87 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %add.ptr.i.i.i, align 8
  %tc_mqprio.i.i = getelementptr inbounds %struct.adapter, ptr %88, i32 0, i32 86
  %89 = ptrtoint ptr %tc_mqprio.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %tc_mqprio.i.i, align 4
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %90, i32 noundef 4) #9
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load volatile i32, ptr %90, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool.not.i.i = icmp eq i32 %92, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end11
  %eoqsets.i.i = getelementptr inbounds %struct.adapter, ptr %88, i32 0, i32 22, i32 18
  %93 = ptrtoint ptr %eoqsets.i.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %eoqsets.i.i, align 2
  %conv.i.i = zext i16 %94 to i32
  %95 = shl nuw nsw i32 %conv.i.i, 9
  %call8.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %95, i32 noundef 3520) #14
  %eohw_rxq.i.i = getelementptr inbounds %struct.adapter, ptr %88, i32 0, i32 22, i32 11
  %96 = ptrtoint ptr %eohw_rxq.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %call8.i.i.i.i, ptr %eohw_rxq.i.i, align 8
  %tobool7.not.i.i = icmp eq ptr %call8.i.i.i.i, null
  br i1 %tobool7.not.i.i, label %if.then.i.i.if.then14_crit_edge, label %if.end7.i.i286.i.i

if.then.i.i.if.then14_crit_edge:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then14

if.end7.i.i286.i.i:                               ; preds = %if.then.i.i
  %97 = ptrtoint ptr %eoqsets.i.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %eoqsets.i.i, align 2
  %conv11.i.i = zext i16 %98 to i32
  %99 = mul nuw nsw i32 %conv11.i.i, 176
  %call8.i.i285.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %99, i32 noundef 3520) #14
  %eohw_txq.i.i = getelementptr inbounds %struct.adapter, ptr %88, i32 0, i32 22, i32 10
  %100 = ptrtoint ptr %eohw_txq.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %call8.i.i285.i.i, ptr %eohw_txq.i.i, align 4
  %tobool16.not.i.i = icmp eq ptr %call8.i.i285.i.i, null
  br i1 %tobool16.not.i.i, label %if.then17.i.i, label %if.end20.i.i

if.then17.i.i:                                    ; preds = %if.end7.i.i286.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %101 = ptrtoint ptr %eohw_rxq.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %eohw_rxq.i.i, align 8
  call void @kfree(ptr noundef %102) #9
  br label %if.then14

if.end20.i.i:                                     ; preds = %if.end7.i.i286.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %103 = ptrtoint ptr %tc_mqprio.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %tc_mqprio.i.i, align 4
  %call.i.i.i289.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %104, i32 noundef 4) #9
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_store4_noabort(i32 %105)
  store volatile i32 1, ptr %104, align 4
  br label %if.end25.i.i

if.else.i.i:                                      ; preds = %if.end11
  %106 = ptrtoint ptr %tc_mqprio.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %tc_mqprio.i.i, align 4
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %107, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %107, i32 1, i32 3, i32 1) #9
  %108 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %107, ptr %107, i32 1, ptr elementtype(i32) %107) #9, !srcloc !37
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %108, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.else.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !38

if.else.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.else.i.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %109 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %109)
  %.not.i.i.i.i.i = icmp sgt i32 %109, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.if.end25.i.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !39

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.if.end25.i.i_crit_edge:         ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25.i.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.else.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.else.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %107, i32 noundef %.sink.i.i.i.i.i) #9
  br label %if.end25.i.i

if.end25.i.i:                                     ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.if.end25.i.i_crit_edge, %if.end20.i.i
  %flags.i.i = getelementptr inbounds %struct.adapter, ptr %88, i32 0, i32 8
  %110 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %flags.i.i, align 32
  %and.i.i = and i32 %111, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool26.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool26.not.i.i, label %if.then27.i.i, label %if.end25.i.i.if.end30.i.i_crit_edge

if.end25.i.i.if.end30.i.i_crit_edge:              ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30.i.i

if.then27.i.i:                                    ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %abs_id.i.i = getelementptr inbounds %struct.adapter, ptr %88, i32 0, i32 22, i32 8, i32 12
  %112 = ptrtoint ptr %abs_id.i.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %abs_id.i.i, align 2
  %conv29.i.i = zext i16 %113 to i32
  %sub.i.i = xor i32 %conv29.i.i, -1
  br label %if.end30.i.i

if.end30.i.i:                                     ; preds = %if.then27.i.i, %if.end25.i.i.if.end30.i.i_crit_edge
  %msix.0.i.i = phi i32 [ 0, %if.end25.i.i.if.end30.i.i_crit_edge ], [ %sub.i.i, %if.then27.i.i ]
  %nqsets.i.i = getelementptr i8, ptr %dev, i32 2328
  %114 = ptrtoint ptr %nqsets.i.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %nqsets.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %cmp324.not.i.i = icmp eq i8 %115, 0
  br i1 %cmp324.not.i.i, label %if.end30.i.i.if.end.i58_crit_edge, label %for.body.lr.ph.i.i

if.end30.i.i.if.end.i58_crit_edge:                ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i58

for.body.lr.ph.i.i:                               ; preds = %if.end30.i.i
  %eohw_rxq34.i.i = getelementptr inbounds %struct.adapter, ptr %88, i32 0, i32 22, i32 11
  %first_qset.i.i = getelementptr i8, ptr %dev, i32 2329
  %eohw_txq38.i.i = getelementptr inbounds %struct.adapter, ptr %88, i32 0, i32 22, i32 10
  %msix_info.i.i = getelementptr inbounds %struct.adapter, ptr %88, i32 0, i32 18
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.0326.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %msix.1325.i.i = phi i32 [ %msix.0.i.i, %for.body.lr.ph.i.i ], [ %msix.2.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %116 = ptrtoint ptr %eohw_rxq34.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %eohw_rxq34.i.i, align 8
  %118 = ptrtoint ptr %first_qset.i.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %first_qset.i.i, align 1
  %conv35.i.i = zext i8 %119 to i32
  %add36.i.i = add nuw i32 %i.0326.i.i, %conv35.i.i
  %arrayidx.i.i = getelementptr %struct.sge_ofld_rxq, ptr %117, i32 %add36.i.i
  %120 = ptrtoint ptr %eohw_txq38.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %eohw_txq38.i.i, align 4
  %arrayidx42.i.i = getelementptr %struct.sge_eohw_txq, ptr %121, i32 %add36.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %msix.1325.i.i)
  %cmp43.i.i = icmp sgt i32 %msix.1325.i.i, -1
  br i1 %cmp43.i.i, label %if.then45.i.i, label %for.body.i.i.if.end56.i.i_crit_edge

for.body.i.i.if.end56.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56.i.i

if.then45.i.i:                                    ; preds = %for.body.i.i
  %call46.i.i = call i32 @cxgb4_get_msix_idx_from_bmap(ptr noundef %88) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i.i)
  %cmp47.i.i = icmp slt i32 %call46.i.i, 0
  br i1 %cmp47.i.i, label %if.then45.i.i.out_free_queues.i.i_crit_edge, label %if.end50.i.i

if.then45.i.i.out_free_queues.i.i_crit_edge:      ; preds = %if.then45.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free_queues.i.i

if.end50.i.i:                                     ; preds = %if.then45.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %122 = ptrtoint ptr %msix_info.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %msix_info.i.i, align 8
  %arrayidx51.i.i = getelementptr %struct.msix_info, ptr %123, i32 %call46.i.i
  %msix52.i.i = getelementptr %struct.sge_ofld_rxq, ptr %117, i32 %add36.i.i, i32 3
  %124 = ptrtoint ptr %msix52.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %arrayidx51.i.i, ptr %msix52.i.i, align 8
  %desc.i.i = getelementptr %struct.msix_info, ptr %123, i32 %call46.i.i, i32 1
  %call55.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %desc.i.i, i32 noundef 26, ptr noundef nonnull @.str.9, ptr noundef %dev, i32 noundef %i.0326.i.i) #9
  br label %if.end56.i.i

if.end56.i.i:                                     ; preds = %if.end50.i.i, %for.body.i.i.if.end56.i.i_crit_edge
  %msix.2.i.i = phi i32 [ %call46.i.i, %if.end50.i.i ], [ %msix.1325.i.i, %for.body.i.i.if.end56.i.i_crit_edge ]
  %adap1.i.i.i = getelementptr inbounds %struct.sge_rspq, ptr %arrayidx.i.i, i32 0, i32 19
  %125 = ptrtoint ptr %adap1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %88, ptr %adap1.i.i.i, align 8
  %call.i.i.i = call i32 @cxgb4_set_rspq_intr_params(ptr noundef %arrayidx.i.i, i32 noundef 5, i32 noundef 8) #9
  %iqe_len.i.i.i = getelementptr inbounds %struct.sge_rspq, ptr %arrayidx.i.i, i32 0, i32 17
  %126 = ptrtoint ptr %iqe_len.i.i.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 64, ptr %iqe_len.i.i.i, align 8
  %size2.i.i.i = getelementptr inbounds %struct.sge_rspq, ptr %arrayidx.i.i, i32 0, i32 18
  %127 = ptrtoint ptr %size2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 1024, ptr %size2.i.i.i, align 4
  %fl.i.i = getelementptr %struct.sge_ofld_rxq, ptr %117, i32 %add36.i.i, i32 1
  %size.i.i = getelementptr %struct.sge_ofld_rxq, ptr %117, i32 %add36.i.i, i32 1, i32 10
  %128 = ptrtoint ptr %size.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 72, ptr %size.i.i, align 8
  %call59.i.i = call i32 @t4_sge_alloc_rxq(ptr noundef %88, ptr noundef %arrayidx.i.i, i1 noundef zeroext false, ptr noundef %dev, i32 noundef %msix.2.i.i, ptr noundef %fl.i.i, ptr noundef nonnull @cxgb4_ethofld_rx_handler, ptr noundef null, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59.i.i)
  %tobool60.not.i.i = icmp eq i32 %call59.i.i, 0
  br i1 %tobool60.not.i.i, label %if.end62.i.i, label %if.end56.i.i.out_free_queues.i.i_crit_edge

if.end56.i.i.out_free_queues.i.i_crit_edge:       ; preds = %if.end56.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free_queues.i.i

if.end62.i.i:                                     ; preds = %if.end56.i.i
  %size63.i.i = getelementptr %struct.sge_eohw_txq, ptr %121, i32 %add36.i.i, i32 1, i32 2
  %129 = ptrtoint ptr %size63.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 1024, ptr %size63.i.i, align 4
  %cntxt_id.i.i = getelementptr inbounds %struct.sge_rspq, ptr %arrayidx.i.i, i32 0, i32 11
  %130 = ptrtoint ptr %cntxt_id.i.i to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %cntxt_id.i.i, align 4
  %conv65.i.i = zext i16 %131 to i32
  %call66.i.i = call i32 @t4_sge_alloc_ethofld_txq(ptr noundef %88, ptr noundef %arrayidx42.i.i, ptr noundef %dev, i32 noundef %conv65.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66.i.i)
  %tobool67.not.i.i = icmp eq i32 %call66.i.i, 0
  br i1 %tobool67.not.i.i, label %if.end69.i.i, label %if.end62.i.i.out_free_queues.i.i_crit_edge

if.end62.i.i.out_free_queues.i.i_crit_edge:       ; preds = %if.end62.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free_queues.i.i

if.end69.i.i:                                     ; preds = %if.end62.i.i
  %132 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %flags.i.i, align 32
  %and71.i.i = and i32 %133, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71.i.i)
  %tobool72.not.i.i = icmp eq i32 %and71.i.i, 0
  br i1 %tobool72.not.i.i, label %if.end69.i.i.if.end88.i.i_crit_edge, label %if.then73.i.i

if.end69.i.i.if.end88.i.i_crit_edge:              ; preds = %if.end69.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end88.i.i

if.then73.i.i:                                    ; preds = %if.end69.i.i
  %msix74.i.i = getelementptr %struct.sge_ofld_rxq, ptr %117, i32 %add36.i.i, i32 3
  %134 = ptrtoint ptr %msix74.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %msix74.i.i, align 8
  %136 = ptrtoint ptr %135 to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %135, align 4
  %conv75.i.i = zext i16 %137 to i32
  %desc77.i.i = getelementptr inbounds %struct.msix_info, ptr %135, i32 0, i32 1
  %call.i290.i.i = call i32 @request_threaded_irq(i32 noundef %conv75.i.i, ptr noundef nonnull @t4_sge_intr_msix, ptr noundef null, i32 noundef 0, ptr noundef %desc77.i.i, ptr noundef %arrayidx.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i290.i.i)
  %tobool81.not.i.i = icmp eq i32 %call.i290.i.i, 0
  br i1 %tobool81.not.i.i, label %if.end83.i.i, label %while.cond.preheader.i.i

while.cond.preheader.i.i:                         ; preds = %if.then73.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0326.i.i)
  %cmp95.not329.i.i = icmp eq i32 %i.0326.i.i, 0
  br i1 %cmp95.not329.i.i, label %while.cond.preheader.i.i.out_free_queues.i.i_crit_edge, label %while.cond.preheader.i.i.while.body.i.i_crit_edge

while.cond.preheader.i.i.while.body.i.i_crit_edge: ; preds = %while.cond.preheader.i.i
  br label %while.body.i.i

while.cond.preheader.i.i.out_free_queues.i.i_crit_edge: ; preds = %while.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free_queues.i.i

if.end83.i.i:                                     ; preds = %if.then73.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %138 = ptrtoint ptr %msix74.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %msix74.i.i, align 8
  %140 = ptrtoint ptr %139 to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %139, align 4
  %aff_mask.i.i = getelementptr inbounds %struct.msix_info, ptr %139, i32 0, i32 3
  %call87.i.i = call i32 @cxgb4_set_msix_aff(ptr noundef %88, i16 noundef zeroext %141, ptr noundef %aff_mask.i.i, i32 noundef %i.0326.i.i) #9
  br label %if.end88.i.i

if.end88.i.i:                                     ; preds = %if.end83.i.i, %if.end69.i.i.if.end88.i.i_crit_edge
  %142 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %flags.i.i, align 32
  %and90.i.i = and i32 %143, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90.i.i)
  %tobool91.not.i.i = icmp eq i32 %and90.i.i, 0
  br i1 %tobool91.not.i.i, label %if.end88.i.i.for.inc.i.i_crit_edge, label %if.then92.i.i

if.end88.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end88.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.then92.i.i:                                    ; preds = %if.end88.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @cxgb4_enable_rx(ptr noundef %88, ptr noundef %arrayidx.i.i) #9
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then92.i.i, %if.end88.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.0326.i.i, 1
  %144 = ptrtoint ptr %nqsets.i.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %nqsets.i.i, align 8
  %conv31.i.i = zext i8 %145 to i32
  %cmp.i.i = icmp ult i32 %inc.i.i, %conv31.i.i
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.if.end.i58_crit_edge

for.inc.i.i.if.end.i58_crit_edge:                 ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i58

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

while.body.i.i:                                   ; preds = %if.end122.i.i.while.body.i.i_crit_edge, %while.cond.preheader.i.i.while.body.i.i_crit_edge
  %dec330.in.i.i = phi i32 [ %dec330.i.i, %if.end122.i.i.while.body.i.i_crit_edge ], [ %i.0326.i.i, %while.cond.preheader.i.i.while.body.i.i_crit_edge ]
  %dec330.i.i = add nsw i32 %dec330.in.i.i, -1
  %146 = ptrtoint ptr %eohw_rxq34.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %eohw_rxq34.i.i, align 8
  %148 = ptrtoint ptr %first_qset.i.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %first_qset.i.i, align 1
  %conv100.i.i = zext i8 %149 to i32
  %add101.i.i = add i32 %dec330.i.i, %conv100.i.i
  %arrayidx102.i.i = getelementptr %struct.sge_ofld_rxq, ptr %147, i32 %add101.i.i
  %150 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %flags.i.i, align 32
  %and104.i.i = and i32 %151, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104.i.i)
  %tobool105.not.i.i = icmp eq i32 %and104.i.i, 0
  br i1 %tobool105.not.i.i, label %while.body.i.i.if.end108.i.i_crit_edge, label %if.then106.i.i

while.body.i.i.if.end108.i.i_crit_edge:           ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end108.i.i

if.then106.i.i:                                   ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @cxgb4_quiesce_rx(ptr noundef %arrayidx102.i.i) #9
  br label %if.end108.i.i

if.end108.i.i:                                    ; preds = %if.then106.i.i, %while.body.i.i.if.end108.i.i_crit_edge
  %152 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %flags.i.i, align 32
  %and110.i.i = and i32 %153, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and110.i.i)
  %tobool111.not.i.i = icmp eq i32 %and110.i.i, 0
  br i1 %tobool111.not.i.i, label %if.end108.i.i.if.end122.i.i_crit_edge, label %if.then112.i.i

if.end108.i.i.if.end122.i.i_crit_edge:            ; preds = %if.end108.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end122.i.i

if.then112.i.i:                                   ; preds = %if.end108.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %msix113.i.i = getelementptr %struct.sge_ofld_rxq, ptr %147, i32 %add101.i.i, i32 3
  %154 = ptrtoint ptr %msix113.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %msix113.i.i, align 8
  %156 = ptrtoint ptr %155 to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %155, align 4
  %aff_mask116.i.i = getelementptr inbounds %struct.msix_info, ptr %155, i32 0, i32 3
  %158 = ptrtoint ptr %aff_mask116.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %aff_mask116.i.i, align 4
  call void @cxgb4_clear_msix_aff(i16 noundef zeroext %157, ptr noundef %159) #9
  %160 = ptrtoint ptr %msix113.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %msix113.i.i, align 8
  %162 = ptrtoint ptr %161 to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %161, align 4
  %conv119.i.i = zext i16 %163 to i32
  %call121.i.i = call ptr @free_irq(i32 noundef %conv119.i.i, ptr noundef %arrayidx102.i.i) #9
  br label %if.end122.i.i

if.end122.i.i:                                    ; preds = %if.then112.i.i, %if.end108.i.i.if.end122.i.i_crit_edge
  %cmp95.not.i.i = icmp eq i32 %dec330.i.i, 0
  br i1 %cmp95.not.i.i, label %if.end122.i.i.out_free_queues.i.i_crit_edge, label %if.end122.i.i.while.body.i.i_crit_edge

if.end122.i.i.while.body.i.i_crit_edge:           ; preds = %if.end122.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i

if.end122.i.i.out_free_queues.i.i_crit_edge:      ; preds = %if.end122.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free_queues.i.i

out_free_queues.i.i:                              ; preds = %if.end122.i.i.out_free_queues.i.i_crit_edge, %while.cond.preheader.i.i.out_free_queues.i.i_crit_edge, %if.end62.i.i.out_free_queues.i.i_crit_edge, %if.end56.i.i.out_free_queues.i.i_crit_edge, %if.then45.i.i.out_free_queues.i.i_crit_edge
  %ret.0.i.i = phi i32 [ 1, %while.cond.preheader.i.i.out_free_queues.i.i_crit_edge ], [ 1, %if.end122.i.i.out_free_queues.i.i_crit_edge ], [ %call59.i.i, %if.end56.i.i.out_free_queues.i.i_crit_edge ], [ %call66.i.i, %if.end62.i.i.out_free_queues.i.i_crit_edge ], [ %call46.i.i, %if.then45.i.i.out_free_queues.i.i_crit_edge ]
  %164 = ptrtoint ptr %nqsets.i.i to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %nqsets.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %165)
  %cmp126332.not.i.i = icmp eq i8 %165, 0
  br i1 %cmp126332.not.i.i, label %out_free_queues.i.i.for.end155.i.i_crit_edge, label %out_free_queues.i.i.for.body128.i.i_crit_edge

out_free_queues.i.i.for.body128.i.i_crit_edge:    ; preds = %out_free_queues.i.i
  br label %for.body128.i.i

out_free_queues.i.i.for.end155.i.i_crit_edge:     ; preds = %out_free_queues.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end155.i.i

for.body128.i.i:                                  ; preds = %if.end152.i.i.for.body128.i.i_crit_edge, %out_free_queues.i.i.for.body128.i.i_crit_edge
  %i.2333.i.i = phi i32 [ %inc154.i.i, %if.end152.i.i.for.body128.i.i_crit_edge ], [ 0, %out_free_queues.i.i.for.body128.i.i_crit_edge ]
  %166 = ptrtoint ptr %eohw_rxq34.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %eohw_rxq34.i.i, align 8
  %168 = ptrtoint ptr %first_qset.i.i to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %first_qset.i.i, align 1
  %conv132.i.i = zext i8 %169 to i32
  %add133.i.i = add nuw nsw i32 %i.2333.i.i, %conv132.i.i
  %arrayidx134.i.i = getelementptr %struct.sge_ofld_rxq, ptr %167, i32 %add133.i.i
  %170 = ptrtoint ptr %eohw_txq38.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %eohw_txq38.i.i, align 4
  %arrayidx140.i.i = getelementptr %struct.sge_eohw_txq, ptr %171, i32 %add133.i.i
  %desc142.i.i = getelementptr inbounds %struct.sge_rspq, ptr %arrayidx134.i.i, i32 0, i32 13
  %172 = ptrtoint ptr %desc142.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %desc142.i.i, align 8
  %tobool143.not.i.i = icmp eq ptr %173, null
  br i1 %tobool143.not.i.i, label %for.body128.i.i.if.end147.i.i_crit_edge, label %if.then144.i.i

for.body128.i.i.if.end147.i.i_crit_edge:          ; preds = %for.body128.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end147.i.i

if.then144.i.i:                                   ; preds = %for.body128.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %fl146.i.i = getelementptr %struct.sge_ofld_rxq, ptr %167, i32 %add133.i.i, i32 1
  call void @free_rspq_fl(ptr noundef %88, ptr noundef %arrayidx134.i.i, ptr noundef %fl146.i.i) #9
  br label %if.end147.i.i

if.end147.i.i:                                    ; preds = %if.then144.i.i, %for.body128.i.i.if.end147.i.i_crit_edge
  %msix148.i.i = getelementptr %struct.sge_ofld_rxq, ptr %167, i32 %add133.i.i, i32 3
  %174 = ptrtoint ptr %msix148.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %msix148.i.i, align 8
  %tobool149.not.i.i = icmp eq ptr %175, null
  br i1 %tobool149.not.i.i, label %if.end147.i.i.if.end152.i.i_crit_edge, label %if.then150.i.i

if.end147.i.i.if.end152.i.i_crit_edge:            ; preds = %if.end147.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end152.i.i

if.then150.i.i:                                   ; preds = %if.end147.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %idx.i.i = getelementptr inbounds %struct.msix_info, ptr %175, i32 0, i32 2
  %176 = ptrtoint ptr %idx.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %idx.i.i, align 4
  call void @cxgb4_free_msix_idx_in_bmap(ptr noundef %88, i32 noundef %177) #9
  br label %if.end152.i.i

if.end152.i.i:                                    ; preds = %if.then150.i.i, %if.end147.i.i.if.end152.i.i_crit_edge
  call void @t4_sge_free_ethofld_txq(ptr noundef %88, ptr noundef %arrayidx140.i.i) #9
  %inc154.i.i = add nuw nsw i32 %i.2333.i.i, 1
  %178 = ptrtoint ptr %nqsets.i.i to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %nqsets.i.i, align 8
  %conv125.i.i = zext i8 %179 to i32
  %cmp126.i.i = icmp ult i32 %inc154.i.i, %conv125.i.i
  br i1 %cmp126.i.i, label %if.end152.i.i.for.body128.i.i_crit_edge, label %if.end152.i.i.for.end155.i.i_crit_edge

if.end152.i.i.for.end155.i.i_crit_edge:           ; preds = %if.end152.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end155.i.i

if.end152.i.i.for.body128.i.i_crit_edge:          ; preds = %if.end152.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body128.i.i

for.end155.i.i:                                   ; preds = %if.end152.i.i.for.end155.i.i_crit_edge, %out_free_queues.i.i.for.end155.i.i_crit_edge
  %180 = ptrtoint ptr %tc_mqprio.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %tc_mqprio.i.i, align 4
  %call.i.i.i.i.i291.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %181, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !40
  call void @llvm.prefetch.p0(ptr %181, i32 1, i32 3, i32 1) #9
  %182 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %181, ptr %181, i32 1, ptr elementtype(i32) %181) #9, !srcloc !41
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %182, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i292.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i292.i.i, label %if.then159.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %for.end155.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i293.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i293.i.i, label %if.end5.i.i.i.i.i.cxgb4_mqprio_alloc_hw_resources.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !39

if.end5.i.i.i.i.i.cxgb4_mqprio_alloc_hw_resources.exit.i_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cxgb4_mqprio_alloc_hw_resources.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %181, i32 noundef 3) #9
  br label %cxgb4_mqprio_alloc_hw_resources.exit.i

if.then159.i.i:                                   ; preds = %for.end155.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !42
  %183 = ptrtoint ptr %eohw_txq38.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %eohw_txq38.i.i, align 4
  call void @kfree(ptr noundef %184) #9
  %185 = ptrtoint ptr %eohw_rxq34.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %eohw_rxq34.i.i, align 8
  call void @kfree(ptr noundef %186) #9
  br label %cxgb4_mqprio_alloc_hw_resources.exit.i

cxgb4_mqprio_alloc_hw_resources.exit.i:           ; preds = %if.then159.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cxgb4_mqprio_alloc_hw_resources.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i.i)
  %tobool.not.i53 = icmp eq i32 %ret.0.i.i, 0
  br i1 %tobool.not.i53, label %cxgb4_mqprio_alloc_hw_resources.exit.i.if.end.i58_crit_edge, label %cxgb4_mqprio_alloc_hw_resources.exit.i.if.then14_crit_edge

cxgb4_mqprio_alloc_hw_resources.exit.i.if.then14_crit_edge: ; preds = %cxgb4_mqprio_alloc_hw_resources.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then14

cxgb4_mqprio_alloc_hw_resources.exit.i.if.end.i58_crit_edge: ; preds = %cxgb4_mqprio_alloc_hw_resources.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i58

if.end.i58:                                       ; preds = %cxgb4_mqprio_alloc_hw_resources.exit.i.if.end.i58_crit_edge, %for.inc.i.i.if.end.i58_crit_edge, %if.end30.i.i.if.end.i58_crit_edge
  %187 = ptrtoint ptr %tc_mqprio.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %tc_mqprio.i.i, align 4
  %port_mqprio.i54 = getelementptr inbounds %struct.cxgb4_tc_mqprio, ptr %188, i32 0, i32 2
  %189 = ptrtoint ptr %port_mqprio.i54 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %port_mqprio.i54, align 4
  %191 = ptrtoint ptr %port_id.i to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %port_id.i, align 1
  %idxprom.i56 = zext i8 %192 to i32
  %arrayidx.i57 = getelementptr %struct.cxgb4_tc_port_mqprio, ptr %190, i32 %idxprom.i56
  %193 = ptrtoint ptr %mqprio to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %mqprio, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %194)
  %cmp269.not.i = icmp eq i8 %194, 0
  br i1 %cmp269.not.i, label %if.end.i58.for.end42.i_crit_edge, label %for.body.lr.ph.i

if.end.i58.for.end42.i_crit_edge:                 ; preds = %if.end.i58
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end42.i

for.body.lr.ph.i:                                 ; preds = %if.end.i58
  %eotid_bmap.i.i = getelementptr inbounds %struct.adapter, ptr %88, i32 0, i32 48, i32 33
  %neotids.i.i = getelementptr inbounds %struct.adapter, ptr %88, i32 0, i32 48, i32 35
  %first_qset.i = getelementptr i8, ptr %dev, i32 2329
  %eosw_txq27.i = getelementptr %struct.cxgb4_tc_port_mqprio, ptr %190, i32 %idxprom.i56, i32 2
  %eotid_tab.i.i = getelementptr inbounds %struct.adapter, ptr %88, i32 0, i32 48, i32 32
  %eotids_in_use.i.i = getelementptr inbounds %struct.adapter, ptr %88, i32 0, i32 48, i32 39
  %class.i.i = getelementptr inbounds %struct.ch_sched_flowc, ptr %fe.i.i, i32 0, i32 1
  br label %for.body.i59

for.body.i59:                                     ; preds = %for.inc40.i.for.body.i59_crit_edge, %for.body.lr.ph.i
  %indvars.iv289.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next290.i, %for.inc40.i.for.body.i59_crit_edge ]
  %arrayidx7.i = getelementptr %struct.tc_mqprio_qopt, ptr %mqprio, i32 0, i32 4, i32 %indvars.iv289.i
  %195 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load2_noabort(i32 %195)
  %196 = load i16, ptr %arrayidx7.i, align 2
  %conv8.i = zext i16 %196 to i32
  %arrayidx11.i = getelementptr %struct.tc_mqprio_qopt, ptr %mqprio, i32 0, i32 3, i32 %indvars.iv289.i
  %197 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load2_noabort(i32 %197)
  %198 = load i16, ptr %arrayidx11.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %198)
  %cmp15266.not.i = icmp eq i16 %198, 0
  br i1 %cmp15266.not.i, label %for.body.i59.for.inc40.i_crit_edge, label %for.body17.lr.ph.i

for.body.i59.for.inc40.i_crit_edge:               ; preds = %for.body.i59
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc40.i

for.body17.lr.ph.i:                               ; preds = %for.body.i59
  %arrayidx35.i = getelementptr %struct.cxgb4_tc_port_mqprio, ptr %190, i32 %idxprom.i56, i32 3, i32 %indvars.iv289.i
  %wide.trip.count.i = zext i16 %198 to i32
  br label %for.body17.i

for.body17.i:                                     ; preds = %for.inc.i65.for.body17.i_crit_edge, %for.body17.lr.ph.i
  %indvars.iv.i60 = phi i32 [ 0, %for.body17.lr.ph.i ], [ %indvars.iv.next.i63, %for.inc.i65.for.body17.i_crit_edge ]
  %199 = ptrtoint ptr %eotid_bmap.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %eotid_bmap.i.i, align 16
  %201 = ptrtoint ptr %neotids.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %neotids.i.i, align 8
  %call.i.i = call i32 @_find_first_zero_bit_be(ptr noundef %200, i32 noundef %202) #9
  %203 = ptrtoint ptr %neotids.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %neotids.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %204)
  %cmp.not.i.i = icmp ult i32 %call.i.i, %204
  %spec.store.select.i.i = select i1 %cmp.not.i.i, i32 %call.i.i, i32 -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select.i.i)
  %cmp19.i = icmp slt i32 %spec.store.select.i.i, 0
  br i1 %cmp19.i, label %for.body17.i.out_free_eotids.loopexit.i_crit_edge, label %if.end22.i

for.body17.i.out_free_eotids.loopexit.i_crit_edge: ; preds = %for.body17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free_eotids.loopexit.i

if.end22.i:                                       ; preds = %for.body17.i
  %add.i61 = add nuw nsw i32 %indvars.iv.i60, %conv8.i
  %205 = ptrtoint ptr %first_qset.i to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %first_qset.i, align 1
  %207 = ptrtoint ptr %nqsets.i.i to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %nqsets.i.i, align 8
  %209 = ptrtoint ptr %eosw_txq27.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %eosw_txq27.i, align 8
  %arrayidx28.i = getelementptr %struct.sge_eosw_txq, ptr %210, i32 %add.i61
  %211 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %add.ptr.i.i.i, align 8
  %213 = call ptr @memset(ptr %arrayidx28.i, i32 0, i32 188)
  %call1.i.i.i.i.i220.i = call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 9728, i32 noundef 3520, i32 noundef 2) #14
  %tobool.not.i221.i = icmp eq ptr %call1.i.i.i.i.i220.i, null
  br i1 %tobool.not.i221.i, label %if.end22.i.out_free_eotids.loopexit.i_crit_edge, label %if.end32.i

if.end22.i.out_free_eotids.loopexit.i_crit_edge:  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free_eotids.loopexit.i

if.end32.i:                                       ; preds = %if.end22.i
  %conv25.i62 = zext i8 %208 to i32
  %rem259.i = urem i32 %spec.store.select.i.i, %conv25.i62
  %conv24.i = zext i8 %206 to i32
  %add26.i = add nuw nsw i32 %rem259.i, %conv24.i
  %desc.i222.i = getelementptr %struct.sge_eosw_txq, ptr %210, i32 %add.i61, i32 2
  %214 = ptrtoint ptr %desc.i222.i to i32
  call void @__asan_store4_noabort(i32 %214)
  store ptr %call1.i.i.i.i.i220.i, ptr %desc.i222.i, align 4
  %ndesc.i.i = getelementptr %struct.sge_eosw_txq, ptr %210, i32 %add.i61, i32 3
  %215 = ptrtoint ptr %ndesc.i.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 128, ptr %ndesc.i.i, align 4
  call void @__raw_spin_lock_init(ptr noundef %arrayidx28.i, ptr noundef nonnull @.str.10, ptr noundef nonnull @cxgb4_init_eosw_txq.__key, i16 noundef signext 3) #9
  %state.i.i = getelementptr %struct.sge_eosw_txq, ptr %210, i32 %add.i61, i32 1
  %216 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 0, ptr %state.i.i, align 4
  %eotid3.i.i = getelementptr %struct.sge_eosw_txq, ptr %210, i32 %add.i61, i32 13
  %217 = ptrtoint ptr %eotid3.i.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 %spec.store.select.i.i, ptr %eotid3.i.i, align 4
  %eotid_base.i.i = getelementptr inbounds %struct.adapter, ptr %212, i32 0, i32 48, i32 34
  %218 = ptrtoint ptr %eotid_base.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %eotid_base.i.i, align 4
  %add.i.i = add i32 %219, %spec.store.select.i.i
  %hwtid.i.i = getelementptr %struct.sge_eosw_txq, ptr %210, i32 %add.i61, i32 14
  %220 = ptrtoint ptr %hwtid.i.i to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 %add.i.i, ptr %hwtid.i.i, align 4
  %ofldq_wr_cred.i.i = getelementptr inbounds %struct.adapter, ptr %212, i32 0, i32 15, i32 29
  %221 = ptrtoint ptr %ofldq_wr_cred.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %ofldq_wr_cred.i.i, align 4
  %cred.i.i = getelementptr %struct.sge_eosw_txq, ptr %210, i32 %add.i61, i32 10
  %223 = ptrtoint ptr %cred.i.i to i32
  call void @__asan_store4_noabort(i32 %223)
  store i32 %222, ptr %cred.i.i, align 4
  %hwqid5.i.i = getelementptr %struct.sge_eosw_txq, ptr %210, i32 %add.i61, i32 15
  %224 = ptrtoint ptr %hwqid5.i.i to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 %add26.i, ptr %hwqid5.i.i, align 4
  %netdev.i.i = getelementptr %struct.sge_eosw_txq, ptr %210, i32 %add.i61, i32 16
  %225 = ptrtoint ptr %netdev.i.i to i32
  call void @__asan_store4_noabort(i32 %225)
  store ptr %dev, ptr %netdev.i.i, align 4
  %qresume_tsk.i.i = getelementptr %struct.sge_eosw_txq, ptr %210, i32 %add.i61, i32 17
  call void @tasklet_setup(ptr noundef %qresume_tsk.i.i, ptr noundef nonnull @cxgb4_ethofld_restart) #9
  %226 = ptrtoint ptr %eotid_bmap.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %eotid_bmap.i.i, align 16
  call void @_set_bit(i32 noundef %spec.store.select.i.i, ptr noundef %227) #9
  %228 = ptrtoint ptr %eotid_tab.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %eotid_tab.i.i, align 4
  %arrayidx.i226.i = getelementptr %struct.eotid_entry, ptr %229, i32 %spec.store.select.i.i
  %230 = ptrtoint ptr %arrayidx.i226.i to i32
  call void @__asan_store4_noabort(i32 %230)
  store ptr %arrayidx28.i, ptr %arrayidx.i226.i, align 4
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %eotids_in_use.i.i, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %eotids_in_use.i.i, i32 1, i32 3, i32 1) #9
  %231 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %eotids_in_use.i.i, ptr %eotids_in_use.i.i, i32 1, ptr elementtype(i32) %eotids_in_use.i.i) #9, !srcloc !43
  %232 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %arrayidx35.i, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %fe.i.i) #9
  %234 = ptrtoint ptr %fe.i.i to i32
  call void @__asan_store8_noabort(i32 %234)
  store i64 -1, ptr %fe.i.i, align 8, !annotation !34
  %completion.i.i = getelementptr %struct.sge_eosw_txq, ptr %210, i32 %add.i61, i32 18
  %235 = ptrtoint ptr %completion.i.i to i32
  call void @__asan_store4_noabort(i32 %235)
  store i32 0, ptr %completion.i.i, align 4
  %wait.i.i.i = getelementptr %struct.sge_eosw_txq, ptr %210, i32 %add.i61, i32 18, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i.i, ptr noundef nonnull @.str.8, ptr noundef nonnull @init_completion.__key) #9
  %236 = ptrtoint ptr %eotid3.i.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %eotid3.i.i, align 4
  %238 = ptrtoint ptr %fe.i.i to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 %237, ptr %fe.i.i, align 8
  %239 = ptrtoint ptr %class.i.i to i32
  call void @__asan_store1_noabort(i32 %239)
  store i8 %233, ptr %class.i.i, align 4
  %call.i227.i = call i32 @cxgb4_sched_class_bind(ptr noundef %dev, ptr noundef nonnull %fe.i.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i227.i)
  %tobool.not.i228.i = icmp eq i32 %call.i227.i, 0
  br i1 %tobool.not.i228.i, label %if.end.i229.i, label %if.end32.i.cxgb4_mqprio_class_bind.exit.thread.i_crit_edge

if.end32.i.cxgb4_mqprio_class_bind.exit.thread.i_crit_edge: ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cxgb4_mqprio_class_bind.exit.thread.i

if.end.i229.i:                                    ; preds = %if.end32.i
  %call2.i.i = call i32 @wait_for_completion_timeout(ptr noundef %completion.i.i, i32 noundef 500) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %if.end.i229.i.cxgb4_mqprio_class_bind.exit.thread.i_crit_edge, label %for.inc.i65

if.end.i229.i.cxgb4_mqprio_class_bind.exit.thread.i_crit_edge: ; preds = %if.end.i229.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cxgb4_mqprio_class_bind.exit.thread.i

cxgb4_mqprio_class_bind.exit.thread.i:            ; preds = %if.end.i229.i.cxgb4_mqprio_class_bind.exit.thread.i_crit_edge, %if.end32.i.cxgb4_mqprio_class_bind.exit.thread.i_crit_edge
  %retval.0.i230.ph.i = phi i32 [ %call.i227.i, %if.end32.i.cxgb4_mqprio_class_bind.exit.thread.i_crit_edge ], [ -110, %if.end.i229.i.cxgb4_mqprio_class_bind.exit.thread.i_crit_edge ]
  %240 = trunc i32 %indvars.iv289.i to i16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %fe.i.i) #9
  br label %out_free_eotids.i

for.inc.i65:                                      ; preds = %if.end.i229.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %fe.i.i) #9
  %indvars.iv.next.i63 = add nuw nsw i32 %indvars.iv.i60, 1
  %exitcond.not.i64 = icmp eq i32 %indvars.iv.next.i63, %wide.trip.count.i
  br i1 %exitcond.not.i64, label %for.inc.i65.for.inc40.i_crit_edge, label %for.inc.i65.for.body17.i_crit_edge

for.inc.i65.for.body17.i_crit_edge:               ; preds = %for.inc.i65
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body17.i

for.inc.i65.for.inc40.i_crit_edge:                ; preds = %for.inc.i65
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc40.i

for.inc40.i:                                      ; preds = %for.inc.i65.for.inc40.i_crit_edge, %for.body.i59.for.inc40.i_crit_edge
  %indvars.iv.next290.i = add nuw nsw i32 %indvars.iv289.i, 1
  %241 = ptrtoint ptr %mqprio to i32
  call void @__asan_load1_noabort(i32 %241)
  %242 = load i8, ptr %mqprio, align 8
  %243 = zext i8 %242 to i32
  %cmp.i66 = icmp ult i32 %indvars.iv.next290.i, %243
  br i1 %cmp.i66, label %for.inc40.i.for.body.i59_crit_edge, label %for.end42.loopexit.i

for.inc40.i.for.body.i59_crit_edge:               ; preds = %for.inc40.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i59

for.end42.loopexit.i:                             ; preds = %for.inc40.i
  call void @__sanitizer_cov_trace_pc() #11
  %244 = trunc i32 %indvars.iv.next290.i to i16
  br label %for.end42.i

for.end42.i:                                      ; preds = %for.end42.loopexit.i, %if.end.i58.for.end42.i_crit_edge
  %i.0.lcssa.i = phi i16 [ 0, %if.end.i58.for.end42.i_crit_edge ], [ %244, %for.end42.loopexit.i ]
  %mqprio43.i = getelementptr %struct.cxgb4_tc_port_mqprio, ptr %190, i32 %idxprom.i56, i32 1
  %245 = call ptr @memcpy(ptr %mqprio43.i, ptr %mqprio, i32 352)
  %246 = ptrtoint ptr %mqprio to i32
  call void @__asan_load1_noabort(i32 %246)
  %247 = load i8, ptr %mqprio, align 8
  %call46.i = call i32 @netdev_set_num_tc(ptr noundef %dev, i8 noundef zeroext %247) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %tobool47.not.i = icmp eq i32 %call46.i, 0
  br i1 %tobool47.not.i, label %if.end49.i, label %for.end42.i.out_free_eotids.i_crit_edge

for.end42.i.out_free_eotids.i_crit_edge:          ; preds = %for.end42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free_eotids.i

if.end49.i:                                       ; preds = %for.end42.i
  %248 = ptrtoint ptr %nqsets.i.i to i32
  call void @__asan_load1_noabort(i32 %248)
  %249 = load i8, ptr %nqsets.i.i, align 8
  %conv51.i = zext i8 %249 to i32
  %250 = ptrtoint ptr %mqprio to i32
  call void @__asan_load1_noabort(i32 %250)
  %251 = load i8, ptr %mqprio, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %251)
  %cmp57273.not.i = icmp eq i8 %251, 0
  br i1 %cmp57273.not.i, label %if.end49.i.for.end93.i_crit_edge, label %if.end49.i.for.body59.i_crit_edge

if.end49.i.for.body59.i_crit_edge:                ; preds = %if.end49.i
  br label %for.body59.i

if.end49.i.for.end93.i_crit_edge:                 ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end93.i

for.body59.i:                                     ; preds = %if.end84.i.for.body59.i_crit_edge, %if.end49.i.for.body59.i_crit_edge
  %indvars.iv291.i = phi i32 [ %indvars.iv.next292.i, %if.end84.i.for.body59.i_crit_edge ], [ 0, %if.end49.i.for.body59.i_crit_edge ]
  %i.1275.i = phi i16 [ %inc92.i, %if.end84.i.for.body59.i_crit_edge ], [ 0, %if.end49.i.for.body59.i_crit_edge ]
  %tot_qcount.0274.i = phi i32 [ %add90.i, %if.end84.i.for.body59.i_crit_edge ], [ %conv51.i, %if.end49.i.for.body59.i_crit_edge ]
  %arrayidx63.i = getelementptr %struct.tc_mqprio_qopt, ptr %mqprio, i32 0, i32 3, i32 %indvars.iv291.i
  %252 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_load2_noabort(i32 %252)
  %253 = load i16, ptr %arrayidx63.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %253)
  %tobool65.not.i = icmp eq i16 %253, 0
  br i1 %tobool65.not.i, label %if.else.i67, label %if.then66.i

if.then66.i:                                      ; preds = %for.body59.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx70.i = getelementptr %struct.tc_mqprio_qopt, ptr %mqprio, i32 0, i32 4, i32 %indvars.iv291.i
  %254 = ptrtoint ptr %arrayidx70.i to i32
  call void @__asan_load2_noabort(i32 %254)
  %255 = load i16, ptr %arrayidx70.i, align 2
  %256 = ptrtoint ptr %nqsets.i.i to i32
  call void @__asan_load1_noabort(i32 %256)
  %257 = load i8, ptr %nqsets.i.i, align 8
  %conv73.i = zext i8 %257 to i16
  %add74.i = add i16 %255, %conv73.i
  br label %if.end77.i

if.else.i67:                                      ; preds = %for.body59.i
  call void @__sanitizer_cov_trace_pc() #11
  %258 = ptrtoint ptr %nqsets.i.i to i32
  call void @__asan_load1_noabort(i32 %258)
  %259 = load i8, ptr %nqsets.i.i, align 8
  %conv76.i = zext i8 %259 to i16
  br label %if.end77.i

if.end77.i:                                       ; preds = %if.else.i67, %if.then66.i
  %qoffset.0.i = phi i16 [ %add74.i, %if.then66.i ], [ 0, %if.else.i67 ]
  %qcount.0.i = phi i16 [ %253, %if.then66.i ], [ %conv76.i, %if.else.i67 ]
  %conv78.i = trunc i16 %i.1275.i to i8
  %call81.i = call i32 @netdev_set_tc_queue(ptr noundef %dev, i8 noundef zeroext %conv78.i, i16 noundef zeroext %qcount.0.i, i16 noundef zeroext %qoffset.0.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81.i)
  %tobool82.not.i = icmp eq i32 %call81.i, 0
  br i1 %tobool82.not.i, label %if.end84.i, label %if.end77.i.out_reset_tc.i_crit_edge

if.end77.i.out_reset_tc.i_crit_edge:              ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_reset_tc.i

if.end84.i:                                       ; preds = %if.end77.i
  %260 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_load2_noabort(i32 %260)
  %261 = load i16, ptr %arrayidx63.i, align 2
  %conv89.i = zext i16 %261 to i32
  %add90.i = add i32 %tot_qcount.0274.i, %conv89.i
  %indvars.iv.next292.i = add nuw nsw i32 %indvars.iv291.i, 1
  %inc92.i = add nuw nsw i16 %i.1275.i, 1
  %262 = ptrtoint ptr %mqprio to i32
  call void @__asan_load1_noabort(i32 %262)
  %263 = load i8, ptr %mqprio, align 8
  %264 = zext i8 %263 to i32
  %cmp57.i = icmp ult i32 %indvars.iv.next292.i, %264
  br i1 %cmp57.i, label %if.end84.i.for.body59.i_crit_edge, label %if.end84.i.for.end93.i_crit_edge

if.end84.i.for.end93.i_crit_edge:                 ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end93.i

if.end84.i.for.body59.i_crit_edge:                ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body59.i

for.end93.i:                                      ; preds = %if.end84.i.for.end93.i_crit_edge, %if.end49.i.for.end93.i_crit_edge
  %tot_qcount.0.lcssa.i = phi i32 [ %conv51.i, %if.end49.i.for.end93.i_crit_edge ], [ %add90.i, %if.end84.i.for.end93.i_crit_edge ]
  %call94.i = call i32 @netif_set_real_num_tx_queues(ptr noundef %dev, i32 noundef %tot_qcount.0.lcssa.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94.i)
  %tobool95.not.i = icmp eq i32 %call94.i, 0
  br i1 %tobool95.not.i, label %cxgb4_mqprio_enable_offload.exit.thread94, label %for.end93.i.out_reset_tc.i_crit_edge

for.end93.i.out_reset_tc.i_crit_edge:             ; preds = %for.end93.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_reset_tc.i

cxgb4_mqprio_enable_offload.exit.thread94:        ; preds = %for.end93.i
  call void @__sanitizer_cov_trace_pc() #11
  %265 = ptrtoint ptr %arrayidx.i57 to i32
  call void @__asan_store4_noabort(i32 %265)
  store i32 1, ptr %arrayidx.i57, align 8
  br label %out

out_reset_tc.i:                                   ; preds = %for.end93.i.out_reset_tc.i_crit_edge, %if.end77.i.out_reset_tc.i_crit_edge
  %ret.0.i = phi i32 [ %call94.i, %for.end93.i.out_reset_tc.i_crit_edge ], [ %call81.i, %if.end77.i.out_reset_tc.i_crit_edge ]
  call void @netdev_reset_tc(ptr noundef %dev) #9
  %266 = ptrtoint ptr %mqprio to i32
  call void @__asan_load1_noabort(i32 %266)
  %267 = load i8, ptr %mqprio, align 8
  %conv100.i = zext i8 %267 to i16
  br label %out_free_eotids.i

out_free_eotids.loopexit.i:                       ; preds = %if.end22.i.out_free_eotids.loopexit.i_crit_edge, %for.body17.i.out_free_eotids.loopexit.i_crit_edge
  %268 = trunc i32 %indvars.iv289.i to i16
  br label %out_free_eotids.i

out_free_eotids.i:                                ; preds = %out_free_eotids.loopexit.i, %out_reset_tc.i, %for.end42.i.out_free_eotids.i_crit_edge, %cxgb4_mqprio_class_bind.exit.thread.i
  %ret.1.i = phi i32 [ %call46.i, %for.end42.i.out_free_eotids.i_crit_edge ], [ %ret.0.i, %out_reset_tc.i ], [ %retval.0.i230.ph.i, %cxgb4_mqprio_class_bind.exit.thread.i ], [ -12, %out_free_eotids.loopexit.i ]
  %i.2.i = phi i16 [ %i.0.lcssa.i, %for.end42.i.out_free_eotids.i_crit_edge ], [ %conv100.i, %out_reset_tc.i ], [ %240, %cxgb4_mqprio_class_bind.exit.thread.i ], [ %268, %out_free_eotids.loopexit.i ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %i.2.i)
  %cmp102.not281.i = icmp eq i16 %i.2.i, 0
  br i1 %cmp102.not281.i, label %cxgb4_mqprio_enable_offload.exit.thread97, label %while.body.lr.ph.i

cxgb4_mqprio_enable_offload.exit.thread97:        ; preds = %out_free_eotids.i
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @cxgb4_mqprio_free_hw_resources(ptr noundef %dev) #9
  br label %if.then14

while.body.lr.ph.i:                               ; preds = %out_free_eotids.i
  %eosw_txq119.i = getelementptr %struct.cxgb4_tc_port_mqprio, ptr %190, i32 %idxprom.i56, i32 2
  %class.i240.i = getelementptr inbounds %struct.ch_sched_flowc, ptr %fe.i231.i, i32 0, i32 1
  %eotid_bmap.i242.i = getelementptr inbounds %struct.adapter, ptr %88, i32 0, i32 48, i32 33
  %eotid_tab.i243.i = getelementptr inbounds %struct.adapter, ptr %88, i32 0, i32 48, i32 32
  %eotids_in_use.i245.i = getelementptr inbounds %struct.adapter, ptr %88, i32 0, i32 48, i32 39
  %269 = zext i16 %i.2.i to i32
  br label %while.body.i68

while.cond.loopexit.i:                            ; preds = %cxgb4_mqprio_class_unbind.exit.i.while.cond.loopexit.i_crit_edge, %while.body.i68.while.cond.loopexit.i_crit_edge
  %cmp102.not.wide.i = icmp eq i32 %270, 0
  br i1 %cmp102.not.wide.i, label %cxgb4_mqprio_enable_offload.exit, label %while.cond.loopexit.i.while.body.i68_crit_edge

while.cond.loopexit.i.while.body.i68_crit_edge:   ; preds = %while.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i68

while.body.i68:                                   ; preds = %while.cond.loopexit.i.while.body.i68_crit_edge, %while.body.lr.ph.i
  %indvars.iv297.i = phi i32 [ %269, %while.body.lr.ph.i ], [ %270, %while.cond.loopexit.i.while.body.i68_crit_edge ]
  %270 = add nsw i32 %indvars.iv297.i, -1
  %arrayidx107.i = getelementptr %struct.tc_mqprio_qopt, ptr %mqprio, i32 0, i32 4, i32 %270
  %271 = ptrtoint ptr %arrayidx107.i to i32
  call void @__asan_load2_noabort(i32 %271)
  %272 = load i16, ptr %arrayidx107.i, align 2
  %conv108.i = zext i16 %272 to i32
  %arrayidx112.i = getelementptr %struct.tc_mqprio_qopt, ptr %mqprio, i32 0, i32 3, i32 %270
  %273 = ptrtoint ptr %arrayidx112.i to i32
  call void @__asan_load2_noabort(i32 %273)
  %274 = load i16, ptr %arrayidx112.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %274)
  %cmp116278.not.i = icmp eq i16 %274, 0
  br i1 %cmp116278.not.i, label %while.body.i68.while.cond.loopexit.i_crit_edge, label %for.body118.lr.ph.i

while.body.i68.while.cond.loopexit.i_crit_edge:   ; preds = %while.body.i68
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.loopexit.i

for.body118.lr.ph.i:                              ; preds = %while.body.i68
  %arrayidx125.i = getelementptr %struct.cxgb4_tc_port_mqprio, ptr %190, i32 %idxprom.i56, i32 3, i32 %270
  %wide.trip.count295.i = zext i16 %274 to i32
  br label %for.body118.i

for.body118.i:                                    ; preds = %cxgb4_mqprio_class_unbind.exit.i.for.body118.i_crit_edge, %for.body118.lr.ph.i
  %indvars.iv293.i = phi i32 [ 0, %for.body118.lr.ph.i ], [ %indvars.iv.next294.i, %cxgb4_mqprio_class_unbind.exit.i.for.body118.i_crit_edge ]
  %275 = ptrtoint ptr %eosw_txq119.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %eosw_txq119.i, align 8
  %add121.i69 = add nuw nsw i32 %indvars.iv293.i, %conv108.i
  %arrayidx122.i = getelementptr %struct.sge_eosw_txq, ptr %276, i32 %add121.i69
  %277 = ptrtoint ptr %arrayidx125.i to i32
  call void @__asan_load1_noabort(i32 %277)
  %278 = load i8, ptr %arrayidx125.i, align 1
  %279 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %add.ptr.i.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %fe.i231.i) #9
  %281 = ptrtoint ptr %fe.i231.i to i32
  call void @__asan_store8_noabort(i32 %281)
  store i64 -1, ptr %fe.i231.i, align 8, !annotation !34
  %flags.i233.i = getelementptr inbounds %struct.adapter, ptr %280, i32 0, i32 8
  %282 = ptrtoint ptr %flags.i233.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %flags.i233.i, align 32
  %and.i234.i = and i32 %283, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i234.i)
  %tobool.not.i235.i = icmp eq i32 %and.i234.i, 0
  br i1 %tobool.not.i235.i, label %if.then.i238.i, label %for.body118.i.if.end.i241.i_crit_edge

for.body118.i.if.end.i241.i_crit_edge:            ; preds = %for.body118.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i241.i

if.then.i238.i:                                   ; preds = %for.body118.i
  call void @__sanitizer_cov_trace_pc() #11
  %completion.i236.i = getelementptr %struct.sge_eosw_txq, ptr %276, i32 %add121.i69, i32 18
  %284 = ptrtoint ptr %completion.i236.i to i32
  call void @__asan_store4_noabort(i32 %284)
  store i32 0, ptr %completion.i236.i, align 4
  %wait.i.i237.i = getelementptr %struct.sge_eosw_txq, ptr %276, i32 %add121.i69, i32 18, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i237.i, ptr noundef nonnull @.str.8, ptr noundef nonnull @init_completion.__key) #9
  br label %if.end.i241.i

if.end.i241.i:                                    ; preds = %if.then.i238.i, %for.body118.i.if.end.i241.i_crit_edge
  %eotid.i239.i = getelementptr %struct.sge_eosw_txq, ptr %276, i32 %add121.i69, i32 13
  %285 = ptrtoint ptr %eotid.i239.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %eotid.i239.i, align 4
  %287 = ptrtoint ptr %fe.i231.i to i32
  call void @__asan_store4_noabort(i32 %287)
  store i32 %286, ptr %fe.i231.i, align 8
  %288 = ptrtoint ptr %class.i240.i to i32
  call void @__asan_store1_noabort(i32 %288)
  store i8 %278, ptr %class.i240.i, align 4
  %call1.i.i = call i32 @cxgb4_sched_class_unbind(ptr noundef %dev, ptr noundef nonnull %fe.i231.i, i32 noundef 1) #9
  %289 = ptrtoint ptr %flags.i233.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %flags.i233.i, align 32
  %and3.i.i = and i32 %290, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool4.not.i.i = icmp eq i32 %and3.i.i, 0
  br i1 %tobool4.not.i.i, label %if.then5.i.i, label %if.end.i241.i.cxgb4_mqprio_class_unbind.exit.i_crit_edge

if.end.i241.i.cxgb4_mqprio_class_unbind.exit.i_crit_edge: ; preds = %if.end.i241.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cxgb4_mqprio_class_unbind.exit.i

if.then5.i.i:                                     ; preds = %if.end.i241.i
  call void @__sanitizer_cov_trace_pc() #11
  %completion6.i.i = getelementptr %struct.sge_eosw_txq, ptr %276, i32 %add121.i69, i32 18
  %call7.i.i = call i32 @wait_for_completion_timeout(ptr noundef %completion6.i.i, i32 noundef 500) #9
  br label %cxgb4_mqprio_class_unbind.exit.i

cxgb4_mqprio_class_unbind.exit.i:                 ; preds = %if.then5.i.i, %if.end.i241.i.cxgb4_mqprio_class_unbind.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %fe.i231.i) #9
  %291 = ptrtoint ptr %eotid.i239.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %eotid.i239.i, align 4
  %293 = ptrtoint ptr %eotid_bmap.i242.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %eotid_bmap.i242.i, align 16
  call void @_clear_bit(i32 noundef %292, ptr noundef %294) #9
  %295 = ptrtoint ptr %eotid_tab.i243.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %eotid_tab.i243.i, align 4
  %arrayidx.i244.i = getelementptr %struct.eotid_entry, ptr %296, i32 %292
  %297 = ptrtoint ptr %arrayidx.i244.i to i32
  call void @__asan_store4_noabort(i32 %297)
  store ptr null, ptr %arrayidx.i244.i, align 4
  %call.i.i.i246.i = call zeroext i1 @__kasan_check_write(ptr noundef %eotids_in_use.i245.i, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %eotids_in_use.i245.i, i32 1, i32 3, i32 1) #9
  %298 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %eotids_in_use.i245.i, ptr %eotids_in_use.i245.i, i32 1, ptr elementtype(i32) %eotids_in_use.i245.i) #9, !srcloc !44
  call void @_raw_spin_lock_bh(ptr noundef %arrayidx122.i) #9
  %299 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %add.ptr.i.i.i, align 8
  %ndesc.i.i.i = getelementptr %struct.sge_eosw_txq, ptr %276, i32 %add121.i69, i32 3
  %301 = ptrtoint ptr %ndesc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %ndesc.i.i.i, align 4
  call void @cxgb4_eosw_txq_free_desc(ptr noundef %300, ptr noundef %arrayidx122.i, i32 noundef %302) #9
  %pidx.i.i.i = getelementptr %struct.sge_eosw_txq, ptr %276, i32 %add121.i69, i32 4
  %ofldq_wr_cred.i.i.i = getelementptr inbounds %struct.adapter, ptr %300, i32 0, i32 15, i32 29
  %303 = call ptr @memset(ptr %pidx.i.i.i, i32 0, i32 24)
  %304 = ptrtoint ptr %ofldq_wr_cred.i.i.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %ofldq_wr_cred.i.i.i, align 4
  %cred.i.i.i = getelementptr %struct.sge_eosw_txq, ptr %276, i32 %add121.i69, i32 10
  %306 = ptrtoint ptr %cred.i.i.i to i32
  call void @__asan_store4_noabort(i32 %306)
  store i32 %305, ptr %cred.i.i.i, align 4
  %ncompl.i.i.i = getelementptr %struct.sge_eosw_txq, ptr %276, i32 %add121.i69, i32 11
  %307 = ptrtoint ptr %ncompl.i.i.i to i32
  call void @__asan_store4_noabort(i32 %307)
  store i32 0, ptr %ncompl.i.i.i, align 4
  %last_compl.i.i.i = getelementptr %struct.sge_eosw_txq, ptr %276, i32 %add121.i69, i32 12
  %308 = ptrtoint ptr %last_compl.i.i.i to i32
  call void @__asan_store4_noabort(i32 %308)
  store i32 0, ptr %last_compl.i.i.i, align 4
  %state.i.i.i = getelementptr %struct.sge_eosw_txq, ptr %276, i32 %add121.i69, i32 1
  %309 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_store4_noabort(i32 %309)
  store i32 0, ptr %state.i.i.i, align 4
  %desc.i247.i = getelementptr %struct.sge_eosw_txq, ptr %276, i32 %add121.i69, i32 2
  %310 = ptrtoint ptr %desc.i247.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %desc.i247.i, align 4
  call void @kfree(ptr noundef %311) #9
  call void @_raw_spin_unlock_bh(ptr noundef %arrayidx122.i) #9
  %qresume_tsk.i248.i = getelementptr %struct.sge_eosw_txq, ptr %276, i32 %add121.i69, i32 17
  call void @tasklet_kill(ptr noundef %qresume_tsk.i248.i) #9
  %indvars.iv.next294.i = add nuw nsw i32 %indvars.iv293.i, 1
  %exitcond296.not.i = icmp eq i32 %indvars.iv.next294.i, %wide.trip.count295.i
  br i1 %exitcond296.not.i, label %cxgb4_mqprio_class_unbind.exit.i.while.cond.loopexit.i_crit_edge, label %cxgb4_mqprio_class_unbind.exit.i.for.body118.i_crit_edge

cxgb4_mqprio_class_unbind.exit.i.for.body118.i_crit_edge: ; preds = %cxgb4_mqprio_class_unbind.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body118.i

cxgb4_mqprio_class_unbind.exit.i.while.cond.loopexit.i_crit_edge: ; preds = %cxgb4_mqprio_class_unbind.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.loopexit.i

cxgb4_mqprio_enable_offload.exit:                 ; preds = %while.cond.loopexit.i
  call fastcc void @cxgb4_mqprio_free_hw_resources(ptr noundef %dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i)
  %tobool13.not = icmp eq i32 %ret.1.i, 0
  br i1 %tobool13.not, label %cxgb4_mqprio_enable_offload.exit.out_crit_edge, label %cxgb4_mqprio_enable_offload.exit.if.then14_crit_edge

cxgb4_mqprio_enable_offload.exit.if.then14_crit_edge: ; preds = %cxgb4_mqprio_enable_offload.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then14

cxgb4_mqprio_enable_offload.exit.out_crit_edge:   ; preds = %cxgb4_mqprio_enable_offload.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then14:                                        ; preds = %cxgb4_mqprio_enable_offload.exit.if.then14_crit_edge, %cxgb4_mqprio_enable_offload.exit.thread97, %cxgb4_mqprio_alloc_hw_resources.exit.i.if.then14_crit_edge, %if.then17.i.i, %if.then.i.i.if.then14_crit_edge
  %retval.0.i7093 = phi i32 [ %ret.1.i, %cxgb4_mqprio_enable_offload.exit.if.then14_crit_edge ], [ %ret.1.i, %cxgb4_mqprio_enable_offload.exit.thread97 ], [ -12, %cxgb4_mqprio_alloc_hw_resources.exit.i.if.then14_crit_edge ], [ -12, %if.then17.i.i ], [ -12, %if.then.i.i.if.then14_crit_edge ]
  %312 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %add.ptr.i.i.i, align 8
  %tc_mqprio.i72 = getelementptr inbounds %struct.adapter, ptr %313, i32 0, i32 86
  %314 = ptrtoint ptr %tc_mqprio.i72 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %tc_mqprio.i72, align 4
  %port_mqprio.i73 = getelementptr inbounds %struct.cxgb4_tc_mqprio, ptr %315, i32 0, i32 2
  %316 = ptrtoint ptr %port_mqprio.i73 to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %port_mqprio.i73, align 4
  %318 = ptrtoint ptr %port_id.i to i32
  call void @__asan_load1_noabort(i32 %318)
  %319 = load i8, ptr %port_id.i, align 1
  %idxprom.i75 = zext i8 %319 to i32
  %mqprio.i = getelementptr %struct.cxgb4_tc_port_mqprio, ptr %317, i32 %idxprom.i75, i32 1
  %320 = ptrtoint ptr %mqprio.i to i32
  call void @__asan_load1_noabort(i32 %320)
  %321 = load i8, ptr %mqprio.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %321)
  %cmp11.not.i76 = icmp eq i8 %321, 0
  br i1 %cmp11.not.i76, label %if.then14.out_crit_edge, label %if.then14.for.body.i80_crit_edge

if.then14.for.body.i80_crit_edge:                 ; preds = %if.then14
  br label %for.body.i80

if.then14.out_crit_edge:                          ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.body.i80:                                     ; preds = %for.body.i80.for.body.i80_crit_edge, %if.then14.for.body.i80_crit_edge
  %indvars.iv.i77 = phi i32 [ %indvars.iv.next.i78, %for.body.i80.for.body.i80_crit_edge ], [ 0, %if.then14.for.body.i80_crit_edge ]
  %arrayidx5.i = getelementptr %struct.cxgb4_tc_port_mqprio, ptr %317, i32 %idxprom.i75, i32 3, i32 %indvars.iv.i77
  %322 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %322)
  %323 = load i8, ptr %arrayidx5.i, align 1
  call void @cxgb4_sched_class_free(ptr noundef %dev, i8 noundef zeroext %323) #9
  %indvars.iv.next.i78 = add nuw nsw i32 %indvars.iv.i77, 1
  %324 = ptrtoint ptr %mqprio.i to i32
  call void @__asan_load1_noabort(i32 %324)
  %325 = load i8, ptr %mqprio.i, align 8
  %326 = zext i8 %325 to i32
  %cmp.i79 = icmp ult i32 %indvars.iv.next.i78, %326
  br i1 %cmp.i79, label %for.body.i80.for.body.i80_crit_edge, label %for.body.i80.out_crit_edge

for.body.i80.out_crit_edge:                       ; preds = %for.body.i80
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.body.i80.for.body.i80_crit_edge:              ; preds = %for.body.i80
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i80

out:                                              ; preds = %for.body.i80.out_crit_edge, %if.then14.out_crit_edge, %cxgb4_mqprio_enable_offload.exit.out_crit_edge, %cxgb4_mqprio_enable_offload.exit.thread94, %cxgb4_mqprio_alloc_tc.exit.thread, %if.end4.out_crit_edge
  %ret.0 = phi i32 [ 0, %cxgb4_mqprio_enable_offload.exit.out_crit_edge ], [ 0, %if.end4.out_crit_edge ], [ -12, %cxgb4_mqprio_alloc_tc.exit.thread ], [ 0, %cxgb4_mqprio_enable_offload.exit.thread94 ], [ %retval.0.i7093, %if.then14.out_crit_edge ], [ %retval.0.i7093, %for.body.i80.out_crit_edge ]
  br i1 %tobool.i.not, label %out.if.end18_crit_edge, label %if.then17

out.if.end18_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then17:                                        ; preds = %out
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 104
  %327 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %328)
  %cmp4.not.i = icmp eq i32 %328, 0
  br i1 %cmp4.not.i, label %if.then17.netif_tx_start_all_queues.exit_crit_edge, label %for.body.lr.ph.i82

if.then17.netif_tx_start_all_queues.exit_crit_edge: ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %netif_tx_start_all_queues.exit

for.body.lr.ph.i82:                               ; preds = %if.then17
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  br label %for.body.i85

for.body.i85:                                     ; preds = %for.body.i85.for.body.i85_crit_edge, %for.body.lr.ph.i82
  %i.05.i = phi i32 [ 0, %for.body.lr.ph.i82 ], [ %inc.i, %for.body.i85.for.body.i85_crit_edge ]
  %329 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i83 = getelementptr %struct.netdev_queue, ptr %330, i32 %i.05.i, i32 13
  call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i83) #9
  %inc.i = add nuw i32 %i.05.i, 1
  %331 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load i32, ptr %num_tx_queues.i, align 4
  %cmp.i84 = icmp ult i32 %inc.i, %332
  br i1 %cmp.i84, label %for.body.i85.for.body.i85_crit_edge, label %for.body.i85.netif_tx_start_all_queues.exit_crit_edge

for.body.i85.netif_tx_start_all_queues.exit_crit_edge: ; preds = %for.body.i85
  call void @__sanitizer_cov_trace_pc() #11
  br label %netif_tx_start_all_queues.exit

for.body.i85.for.body.i85_crit_edge:              ; preds = %for.body.i85
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i85

netif_tx_start_all_queues.exit:                   ; preds = %for.body.i85.netif_tx_start_all_queues.exit_crit_edge, %if.then17.netif_tx_start_all_queues.exit_crit_edge
  call void @netif_carrier_on(ptr noundef %dev) #9
  br label %if.end18

if.end18:                                         ; preds = %netif_tx_start_all_queues.exit, %out.if.end18_crit_edge
  %333 = ptrtoint ptr %tc_mqprio to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %tc_mqprio, align 4
  %mqprio_mutex20 = getelementptr inbounds %struct.cxgb4_tc_mqprio, ptr %334, i32 0, i32 1
  call void @mutex_unlock(ptr noundef %mqprio_mutex20) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %cxgb4_mqprio_validate.exit.thread
  %retval.0 = phi i32 [ %ret.0, %if.end18 ], [ %retval.0.i.ph, %cxgb4_mqprio_validate.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_stop_all_queues(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cxgb4_mqprio_disable_offload(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  %fe.i = alloca %struct.ch_sched_flowc, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 8
  %tc_mqprio = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 86
  %2 = ptrtoint ptr %tc_mqprio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tc_mqprio, align 4
  %port_mqprio = getelementptr inbounds %struct.cxgb4_tc_mqprio, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %port_mqprio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port_mqprio, align 4
  %port_id = getelementptr i8, ptr %dev, i32 2325
  %6 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %port_id, align 1
  %idxprom = zext i8 %7 to i32
  %arrayidx = getelementptr %struct.cxgb4_tc_port_mqprio, ptr %5, i32 %idxprom
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.not = icmp eq i32 %9, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @netdev_reset_tc(ptr noundef %dev) #9
  %nqsets = getelementptr i8, ptr %dev, i32 2328
  %10 = ptrtoint ptr %nqsets to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %nqsets, align 8
  %conv = zext i8 %11 to i32
  %call2 = tail call i32 @netif_set_real_num_tx_queues(ptr noundef %dev, i32 noundef %conv) #9
  %mqprio = getelementptr %struct.cxgb4_tc_port_mqprio, ptr %5, i32 %idxprom, i32 1
  %12 = ptrtoint ptr %mqprio to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %mqprio, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp567.not = icmp eq i8 %13, 0
  br i1 %cmp567.not, label %if.end.for.end29_crit_edge, label %for.body.lr.ph

if.end.for.end29_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end29

for.body.lr.ph:                                   ; preds = %if.end
  %eosw_txq22 = getelementptr %struct.cxgb4_tc_port_mqprio, ptr %5, i32 %idxprom, i32 2
  %class.i = getelementptr inbounds %struct.ch_sched_flowc, ptr %fe.i, i32 0, i32 1
  %eotid_bmap.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 48, i32 33
  %eotid_tab.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 48, i32 32
  %eotids_in_use.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 48, i32 39
  br label %for.body

for.body:                                         ; preds = %for.inc27.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv70 = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next71, %for.inc27.for.body_crit_edge ]
  %arrayidx10 = getelementptr %struct.tc_mqprio_qopt, ptr %mqprio, i32 0, i32 4, i32 %indvars.iv70
  %14 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx10, align 2
  %conv11 = zext i16 %15 to i32
  %arrayidx15 = getelementptr %struct.tc_mqprio_qopt, ptr %mqprio, i32 0, i32 3, i32 %indvars.iv70
  %16 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx15, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %cmp1965.not = icmp eq i16 %17, 0
  br i1 %cmp1965.not, label %for.body.for.inc27_crit_edge, label %for.body21.lr.ph

for.body.for.inc27_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc27

for.body21.lr.ph:                                 ; preds = %for.body
  %arrayidx26 = getelementptr %struct.cxgb4_tc_port_mqprio, ptr %5, i32 %idxprom, i32 3, i32 %indvars.iv70
  %wide.trip.count = zext i16 %17 to i32
  br label %for.body21

for.body21:                                       ; preds = %cxgb4_mqprio_class_unbind.exit.for.body21_crit_edge, %for.body21.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body21.lr.ph ], [ %indvars.iv.next, %cxgb4_mqprio_class_unbind.exit.for.body21_crit_edge ]
  %18 = ptrtoint ptr %eosw_txq22 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %eosw_txq22, align 8
  %add = add nuw nsw i32 %indvars.iv, %conv11
  %arrayidx24 = getelementptr %struct.sge_eosw_txq, ptr %19, i32 %add
  %20 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx26, align 1
  %22 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %fe.i) #9
  %24 = ptrtoint ptr %fe.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 -1, ptr %fe.i, align 8, !annotation !34
  %flags.i = getelementptr inbounds %struct.adapter, ptr %23, i32 0, i32 8
  %25 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags.i, align 32
  %and.i = and i32 %26, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %for.body21.if.end.i_crit_edge

for.body21.if.end.i_crit_edge:                    ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #11
  %completion.i = getelementptr %struct.sge_eosw_txq, ptr %19, i32 %add, i32 18
  %27 = ptrtoint ptr %completion.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %completion.i, align 4
  %wait.i.i = getelementptr %struct.sge_eosw_txq, ptr %19, i32 %add, i32 18, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.8, ptr noundef nonnull @init_completion.__key) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body21.if.end.i_crit_edge
  %eotid.i = getelementptr %struct.sge_eosw_txq, ptr %19, i32 %add, i32 13
  %28 = ptrtoint ptr %eotid.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %eotid.i, align 4
  %30 = ptrtoint ptr %fe.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %fe.i, align 8
  %31 = ptrtoint ptr %class.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %21, ptr %class.i, align 4
  %call1.i = call i32 @cxgb4_sched_class_unbind(ptr noundef %dev, ptr noundef nonnull %fe.i, i32 noundef 1) #9
  %32 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flags.i, align 32
  %and3.i = and i32 %33, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %if.then5.i, label %if.end.i.cxgb4_mqprio_class_unbind.exit_crit_edge

if.end.i.cxgb4_mqprio_class_unbind.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cxgb4_mqprio_class_unbind.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %completion6.i = getelementptr %struct.sge_eosw_txq, ptr %19, i32 %add, i32 18
  %call7.i = call i32 @wait_for_completion_timeout(ptr noundef %completion6.i, i32 noundef 500) #9
  br label %cxgb4_mqprio_class_unbind.exit

cxgb4_mqprio_class_unbind.exit:                   ; preds = %if.then5.i, %if.end.i.cxgb4_mqprio_class_unbind.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %fe.i) #9
  %34 = ptrtoint ptr %eotid.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %eotid.i, align 4
  %36 = ptrtoint ptr %eotid_bmap.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %eotid_bmap.i, align 16
  call void @_clear_bit(i32 noundef %35, ptr noundef %37) #9
  %38 = ptrtoint ptr %eotid_tab.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %eotid_tab.i, align 4
  %arrayidx.i = getelementptr %struct.eotid_entry, ptr %39, i32 %35
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %arrayidx.i, align 4
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %eotids_in_use.i, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %eotids_in_use.i, i32 1, i32 3, i32 1) #9
  %41 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %eotids_in_use.i, ptr %eotids_in_use.i, i32 1, ptr elementtype(i32) %eotids_in_use.i) #9, !srcloc !44
  call void @_raw_spin_lock_bh(ptr noundef %arrayidx24) #9
  %42 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %add.ptr.i.i, align 8
  %ndesc.i.i = getelementptr %struct.sge_eosw_txq, ptr %19, i32 %add, i32 3
  %44 = ptrtoint ptr %ndesc.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ndesc.i.i, align 4
  call void @cxgb4_eosw_txq_free_desc(ptr noundef %43, ptr noundef %arrayidx24, i32 noundef %45) #9
  %pidx.i.i = getelementptr %struct.sge_eosw_txq, ptr %19, i32 %add, i32 4
  %ofldq_wr_cred.i.i = getelementptr inbounds %struct.adapter, ptr %43, i32 0, i32 15, i32 29
  %46 = call ptr @memset(ptr %pidx.i.i, i32 0, i32 24)
  %47 = ptrtoint ptr %ofldq_wr_cred.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %ofldq_wr_cred.i.i, align 4
  %cred.i.i = getelementptr %struct.sge_eosw_txq, ptr %19, i32 %add, i32 10
  %49 = ptrtoint ptr %cred.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %cred.i.i, align 4
  %ncompl.i.i = getelementptr %struct.sge_eosw_txq, ptr %19, i32 %add, i32 11
  %50 = ptrtoint ptr %ncompl.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %ncompl.i.i, align 4
  %last_compl.i.i = getelementptr %struct.sge_eosw_txq, ptr %19, i32 %add, i32 12
  %51 = ptrtoint ptr %last_compl.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %last_compl.i.i, align 4
  %state.i.i = getelementptr %struct.sge_eosw_txq, ptr %19, i32 %add, i32 1
  %52 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %state.i.i, align 4
  %desc.i = getelementptr %struct.sge_eosw_txq, ptr %19, i32 %add, i32 2
  %53 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %desc.i, align 4
  call void @kfree(ptr noundef %54) #9
  call void @_raw_spin_unlock_bh(ptr noundef %arrayidx24) #9
  %qresume_tsk.i = getelementptr %struct.sge_eosw_txq, ptr %19, i32 %add, i32 17
  call void @tasklet_kill(ptr noundef %qresume_tsk.i) #9
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %cxgb4_mqprio_class_unbind.exit.for.inc27_crit_edge, label %cxgb4_mqprio_class_unbind.exit.for.body21_crit_edge

cxgb4_mqprio_class_unbind.exit.for.body21_crit_edge: ; preds = %cxgb4_mqprio_class_unbind.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body21

cxgb4_mqprio_class_unbind.exit.for.inc27_crit_edge: ; preds = %cxgb4_mqprio_class_unbind.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc27

for.inc27:                                        ; preds = %cxgb4_mqprio_class_unbind.exit.for.inc27_crit_edge, %for.body.for.inc27_crit_edge
  %indvars.iv.next71 = add nuw nsw i32 %indvars.iv70, 1
  %55 = ptrtoint ptr %mqprio to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %mqprio, align 8
  %57 = zext i8 %56 to i32
  %cmp5 = icmp ult i32 %indvars.iv.next71, %57
  br i1 %cmp5, label %for.inc27.for.body_crit_edge, label %for.inc27.for.end29_crit_edge

for.inc27.for.end29_crit_edge:                    ; preds = %for.inc27
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end29

for.inc27.for.body_crit_edge:                     ; preds = %for.inc27
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end29:                                        ; preds = %for.inc27.for.end29_crit_edge, %if.end.for.end29_crit_edge
  call fastcc void @cxgb4_mqprio_free_hw_resources(ptr noundef %dev)
  %58 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %add.ptr.i.i, align 8
  %tc_mqprio.i = getelementptr inbounds %struct.adapter, ptr %59, i32 0, i32 86
  %60 = ptrtoint ptr %tc_mqprio.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %tc_mqprio.i, align 4
  %port_mqprio.i = getelementptr inbounds %struct.cxgb4_tc_mqprio, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %port_mqprio.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %port_mqprio.i, align 4
  %64 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %port_id, align 1
  %idxprom.i = zext i8 %65 to i32
  %mqprio.i = getelementptr %struct.cxgb4_tc_port_mqprio, ptr %63, i32 %idxprom.i, i32 1
  %66 = ptrtoint ptr %mqprio.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %mqprio.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %cmp11.not.i = icmp eq i8 %67, 0
  br i1 %cmp11.not.i, label %for.end29.cxgb4_mqprio_free_tc.exit_crit_edge, label %for.end29.for.body.i_crit_edge

for.end29.for.body.i_crit_edge:                   ; preds = %for.end29
  br label %for.body.i

for.end29.cxgb4_mqprio_free_tc.exit_crit_edge:    ; preds = %for.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %cxgb4_mqprio_free_tc.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.end29.for.body.i_crit_edge
  %indvars.iv.i = phi i32 [ %indvars.iv.next.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.end29.for.body.i_crit_edge ]
  %arrayidx5.i = getelementptr %struct.cxgb4_tc_port_mqprio, ptr %63, i32 %idxprom.i, i32 3, i32 %indvars.iv.i
  %68 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx5.i, align 1
  call void @cxgb4_sched_class_free(ptr noundef %dev, i8 noundef zeroext %69) #9
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %70 = ptrtoint ptr %mqprio.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %mqprio.i, align 8
  %72 = zext i8 %71 to i32
  %cmp.i = icmp ult i32 %indvars.iv.next.i, %72
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.cxgb4_mqprio_free_tc.exit_crit_edge

for.body.i.cxgb4_mqprio_free_tc.exit_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cxgb4_mqprio_free_tc.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

cxgb4_mqprio_free_tc.exit:                        ; preds = %for.body.i.cxgb4_mqprio_free_tc.exit_crit_edge, %for.end29.cxgb4_mqprio_free_tc.exit_crit_edge
  %73 = call ptr @memset(ptr %mqprio, i32 0, i32 352)
  %74 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %arrayidx, align 8
  br label %cleanup

cleanup:                                          ; preds = %cxgb4_mqprio_free_tc.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cxgb4_mqprio_stop_offload(ptr nocapture noundef readonly %adap) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tc_mqprio = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 86
  %0 = ptrtoint ptr %tc_mqprio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tc_mqprio, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %port_mqprio = getelementptr inbounds %struct.cxgb4_tc_mqprio, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %port_mqprio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port_mqprio, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %mqprio_mutex = getelementptr inbounds %struct.cxgb4_tc_mqprio, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mqprio_mutex, i32 noundef 0) #9
  %nports = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 15, i32 20
  %4 = ptrtoint ptr %nports to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %nports, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp31.not = icmp eq i8 %5, 0
  br i1 %cmp31.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.adapter, ptr %adap, i32 0, i32 23, i32 %indvars.iv
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %for.body.for.inc_crit_edge, label %if.end8

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end8:                                          ; preds = %for.body
  %8 = ptrtoint ptr %tc_mqprio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tc_mqprio, align 4
  %port_mqprio10 = getelementptr inbounds %struct.cxgb4_tc_mqprio, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %port_mqprio10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %port_mqprio10, align 4
  %mqprio = getelementptr %struct.cxgb4_tc_port_mqprio, ptr %11, i32 %indvars.iv, i32 1
  %12 = ptrtoint ptr %mqprio to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %mqprio, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool13.not = icmp eq i8 %13, 0
  br i1 %tobool13.not, label %if.end8.for.inc_crit_edge, label %if.end15

if.end8.for.inc_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end15:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @cxgb4_mqprio_disable_offload(ptr noundef nonnull %7)
  br label %for.inc

for.inc:                                          ; preds = %if.end15, %if.end8.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %14 = ptrtoint ptr %nports to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %nports, align 4
  %16 = zext i8 %15 to i32
  %cmp = icmp ult i32 %indvars.iv.next, %16
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %17 = ptrtoint ptr %tc_mqprio to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tc_mqprio, align 4
  %mqprio_mutex17 = getelementptr inbounds %struct.cxgb4_tc_mqprio, ptr %18, i32 0, i32 1
  tail call void @mutex_unlock(ptr noundef %mqprio_mutex17) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxgb4_init_tc_mqprio(ptr nocapture noundef %adap) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 100) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %nports = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 15, i32 20
  %1 = ptrtoint ptr %nports to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %nports, align 4
  %conv = zext i8 %2 to i32
  %3 = mul nuw nsw i32 %conv, 384
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %3, i32 noundef 3520) #14
  %tobool2.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool2.not, label %if.end.out_free_mqprio_crit_edge, label %do.body

if.end.out_free_mqprio_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free_mqprio

do.body:                                          ; preds = %if.end
  %mqprio_mutex = getelementptr inbounds %struct.cxgb4_tc_mqprio, ptr %call7.i.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %mqprio_mutex, ptr noundef nonnull @.str, ptr noundef nonnull @cxgb4_init_tc_mqprio.__key) #9
  %port_mqprio5 = getelementptr inbounds %struct.cxgb4_tc_mqprio, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %port_mqprio5 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call8.i.i, ptr %port_mqprio5, align 8
  %5 = ptrtoint ptr %nports to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %nports, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp101.not = icmp eq i8 %6, 0
  br i1 %cmp101.not, label %do.body.for.end_crit_edge, label %for.body.lr.ph

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.body
  %neotids = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 48, i32 35
  br label %for.body

for.body:                                         ; preds = %if.end15.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %if.end15.for.body_crit_edge ]
  %7 = ptrtoint ptr %port_mqprio5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %port_mqprio5, align 8
  %9 = ptrtoint ptr %neotids to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %neotids, align 8
  %11 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %10, i32 188) #9
  %12 = extractvalue { i32, i1 } %11, 1
  br i1 %12, label %for.body.for.cond19.preheader_crit_edge, label %if.end7.i.i89, !prof !38

for.body.for.cond19.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond19.preheader

if.end7.i.i89:                                    ; preds = %for.body
  %13 = extractvalue { i32, i1 } %11, 0
  %call8.i.i88 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %13, i32 noundef 3520) #14
  %tobool13.not = icmp eq ptr %call8.i.i88, null
  br i1 %tobool13.not, label %if.end7.i.i89.for.cond19.preheader_crit_edge, label %if.end15

if.end7.i.i89.for.cond19.preheader_crit_edge:     ; preds = %if.end7.i.i89
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond19.preheader

for.cond19.preheader:                             ; preds = %if.end7.i.i89.for.cond19.preheader_crit_edge, %for.body.for.cond19.preheader_crit_edge
  %14 = ptrtoint ptr %nports to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %nports, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp24103.not = icmp eq i8 %15, 0
  br i1 %cmp24103.not, label %for.cond19.preheader.for.end33_crit_edge, label %for.cond19.preheader.for.body26_crit_edge

for.cond19.preheader.for.body26_crit_edge:        ; preds = %for.cond19.preheader
  br label %for.body26

for.cond19.preheader.for.end33_crit_edge:         ; preds = %for.cond19.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end33

if.end15:                                         ; preds = %if.end7.i.i89
  %eosw_txq16 = getelementptr %struct.cxgb4_tc_port_mqprio, ptr %8, i32 %indvars.iv, i32 2
  %16 = ptrtoint ptr %eosw_txq16 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call8.i.i88, ptr %eosw_txq16, align 8
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %17 = ptrtoint ptr %nports to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %nports, align 4
  %19 = zext i8 %18 to i32
  %cmp = icmp ult i32 %indvars.iv.next, %19
  br i1 %cmp, label %if.end15.for.body_crit_edge, label %if.end15.for.end_crit_edge

if.end15.for.end_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end15.for.body_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %if.end15.for.end_crit_edge, %do.body.for.end_crit_edge
  %tc_mqprio17 = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 86
  %20 = ptrtoint ptr %tc_mqprio17 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i.i, ptr %tc_mqprio17, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i.i, i32 noundef 4) #9
  %21 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile i32 0, ptr %call7.i.i, align 8
  br label %cleanup

for.body26:                                       ; preds = %for.body26.for.body26_crit_edge, %for.cond19.preheader.for.body26_crit_edge
  %indvars.iv105 = phi i32 [ %indvars.iv.next106, %for.body26.for.body26_crit_edge ], [ 0, %for.cond19.preheader.for.body26_crit_edge ]
  %22 = ptrtoint ptr %port_mqprio5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %port_mqprio5, align 8
  %eosw_txq30 = getelementptr %struct.cxgb4_tc_port_mqprio, ptr %23, i32 %indvars.iv105, i32 2
  %24 = ptrtoint ptr %eosw_txq30 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %eosw_txq30, align 8
  tail call void @kfree(ptr noundef %25) #9
  %indvars.iv.next106 = add nuw nsw i32 %indvars.iv105, 1
  %26 = ptrtoint ptr %nports to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %nports, align 4
  %28 = zext i8 %27 to i32
  %cmp24 = icmp ult i32 %indvars.iv.next106, %28
  br i1 %cmp24, label %for.body26.for.body26_crit_edge, label %for.body26.for.end33_crit_edge

for.body26.for.end33_crit_edge:                   ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end33

for.body26.for.body26_crit_edge:                  ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body26

for.end33:                                        ; preds = %for.body26.for.end33_crit_edge, %for.cond19.preheader.for.end33_crit_edge
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #9
  br label %out_free_mqprio

out_free_mqprio:                                  ; preds = %for.end33, %if.end.out_free_mqprio_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %out_free_mqprio, %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %out_free_mqprio ], [ 0, %for.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cxgb4_cleanup_tc_mqprio(ptr nocapture noundef readonly %adap) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tc_mqprio = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 86
  %0 = ptrtoint ptr %tc_mqprio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tc_mqprio, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end20_crit_edge, label %if.then

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then:                                          ; preds = %entry
  %mqprio_mutex = getelementptr inbounds %struct.cxgb4_tc_mqprio, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mqprio_mutex, i32 noundef 0) #9
  %2 = ptrtoint ptr %tc_mqprio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tc_mqprio, align 4
  %port_mqprio3 = getelementptr inbounds %struct.cxgb4_tc_mqprio, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %port_mqprio3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port_mqprio3, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %if.then.if.end16_crit_edge, label %for.cond.preheader

if.then.if.end16_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

for.cond.preheader:                               ; preds = %if.then
  %nports = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 15, i32 20
  %6 = ptrtoint ptr %nports to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %nports, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp34.not = icmp eq i8 %7, 0
  br i1 %cmp34.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %if.end.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.adapter, ptr %adap, i32 0, i32 23, i32 %indvars.iv
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %tobool8.not = icmp eq ptr %9, null
  br i1 %tobool8.not, label %for.body.if.end_crit_edge, label %if.then9

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then9:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @cxgb4_mqprio_disable_offload(ptr noundef nonnull %9)
  br label %if.end

if.end:                                           ; preds = %if.then9, %for.body.if.end_crit_edge
  %10 = ptrtoint ptr %tc_mqprio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tc_mqprio, align 4
  %port_mqprio11 = getelementptr inbounds %struct.cxgb4_tc_mqprio, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %port_mqprio11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %port_mqprio11, align 4
  %eosw_txq = getelementptr %struct.cxgb4_tc_port_mqprio, ptr %13, i32 %indvars.iv, i32 2
  %14 = ptrtoint ptr %eosw_txq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %eosw_txq, align 8
  tail call void @kfree(ptr noundef %15) #9
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %16 = ptrtoint ptr %nports to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %nports, align 4
  %18 = zext i8 %17 to i32
  %cmp = icmp ult i32 %indvars.iv.next, %18
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %19 = ptrtoint ptr %tc_mqprio to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tc_mqprio, align 4
  %port_mqprio15 = getelementptr inbounds %struct.cxgb4_tc_mqprio, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %port_mqprio15 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %port_mqprio15, align 4
  tail call void @kfree(ptr noundef %22) #9
  br label %if.end16

if.end16:                                         ; preds = %for.end, %if.then.if.end16_crit_edge
  %23 = ptrtoint ptr %tc_mqprio to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tc_mqprio, align 4
  %mqprio_mutex18 = getelementptr inbounds %struct.cxgb4_tc_mqprio, ptr %24, i32 0, i32 1
  tail call void @mutex_unlock(ptr noundef %mqprio_mutex18) #9
  %25 = ptrtoint ptr %tc_mqprio to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tc_mqprio, align 4
  tail call void @kfree(ptr noundef %26) #9
  br label %if.end20

if.end20:                                         ; preds = %if.end16, %entry.if.end20_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4_get_link_params(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_reset_tc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_set_real_num_tx_queues(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cxgb4_mqprio_free_hw_resources(ptr nocapture noundef readonly %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 8
  %tc_mqprio = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 86
  %2 = ptrtoint ptr %tc_mqprio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tc_mqprio, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %3, i32 noundef 4) #9
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %eohw_rxq = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 22, i32 11
  %6 = ptrtoint ptr %eohw_rxq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %eohw_rxq, align 8
  %first_qset = getelementptr i8, ptr %dev, i32 2329
  %8 = ptrtoint ptr %first_qset to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %first_qset, align 1
  %idxprom = zext i8 %9 to i32
  %desc = getelementptr %struct.sge_ofld_rxq, ptr %7, i32 %idxprom, i32 0, i32 13
  %10 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %desc, align 8
  %tobool3.not = icmp eq ptr %11, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %for.cond.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  %nqsets = getelementptr i8, ptr %dev, i32 2328
  %12 = ptrtoint ptr %nqsets to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %nqsets, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp73.not = icmp eq i8 %13, 0
  br i1 %cmp73.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %eohw_txq = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 22, i32 10
  %flags = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %if.end32.for.body_crit_edge, %for.body.lr.ph
  %i.074 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end32.for.body_crit_edge ]
  %14 = ptrtoint ptr %eohw_rxq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %eohw_rxq, align 8
  %16 = ptrtoint ptr %first_qset to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %first_qset, align 1
  %conv10 = zext i8 %17 to i32
  %add = add nuw i32 %i.074, %conv10
  %arrayidx11 = getelementptr %struct.sge_ofld_rxq, ptr %15, i32 %add
  %18 = ptrtoint ptr %eohw_txq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %eohw_txq, align 4
  %arrayidx16 = getelementptr %struct.sge_eohw_txq, ptr %19, i32 %add
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags, align 32
  %and = and i32 %21, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17.not = icmp eq i32 %and, 0
  br i1 %tobool17.not, label %if.then18, label %for.body.if.end20_crit_edge

for.body.if.end20_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then18:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @cxgb4_quiesce_rx(ptr noundef %arrayidx11) #9
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %for.body.if.end20_crit_edge
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags, align 32
  %and22 = and i32 %23, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end20.if.end32_crit_edge, label %if.then24

if.end20.if.end32_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %msix = getelementptr %struct.sge_ofld_rxq, ptr %15, i32 %add, i32 3
  %24 = ptrtoint ptr %msix to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %msix, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %25, align 4
  %aff_mask = getelementptr inbounds %struct.msix_info, ptr %25, i32 0, i32 3
  %28 = ptrtoint ptr %aff_mask to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %aff_mask, align 4
  tail call void @cxgb4_clear_msix_aff(i16 noundef zeroext %27, ptr noundef %29) #9
  %30 = ptrtoint ptr %msix to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %msix, align 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %31, align 4
  %conv28 = zext i16 %33 to i32
  %call30 = tail call ptr @free_irq(i32 noundef %conv28, ptr noundef %arrayidx11) #9
  %34 = ptrtoint ptr %msix to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %msix, align 8
  %idx = getelementptr inbounds %struct.msix_info, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %idx, align 4
  tail call void @cxgb4_free_msix_idx_in_bmap(ptr noundef %1, i32 noundef %37) #9
  br label %if.end32

if.end32:                                         ; preds = %if.then24, %if.end20.if.end32_crit_edge
  %fl = getelementptr %struct.sge_ofld_rxq, ptr %15, i32 %add, i32 1
  tail call void @free_rspq_fl(ptr noundef %1, ptr noundef %arrayidx11, ptr noundef %fl) #9
  tail call void @t4_sge_free_ethofld_txq(ptr noundef %1, ptr noundef %arrayidx16) #9
  %inc = add nuw nsw i32 %i.074, 1
  %38 = ptrtoint ptr %nqsets to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %nqsets, align 8
  %conv = zext i8 %39 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %if.end32.for.body_crit_edge, label %if.end32.for.end_crit_edge

if.end32.for.end_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end32.for.body_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %if.end32.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %40 = ptrtoint ptr %tc_mqprio to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tc_mqprio, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %41, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !40
  tail call void @llvm.prefetch.p0(ptr %41, i32 1, i32 3, i32 1) #9
  %42 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %41, ptr %41, i32 1, ptr elementtype(i32) %41) #9, !srcloc !41
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %42, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then37, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i, !prof !39

if.end5.i.i.i.cleanup_crit_edge:                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %41, i32 noundef 3) #9
  br label %cleanup

if.then37:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !42
  %eohw_txq39 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 22, i32 10
  %43 = ptrtoint ptr %eohw_txq39 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %eohw_txq39, align 4
  tail call void @kfree(ptr noundef %44) #9
  %45 = ptrtoint ptr %eohw_rxq to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %eohw_rxq, align 8
  tail call void @kfree(ptr noundef %46) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then37, %if.then10.i.i.i, %if.end5.i.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgb4_sched_class_unbind(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgb4_eosw_txq_free_desc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgb4_quiesce_rx(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgb4_clear_msix_aff(i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgb4_free_msix_idx_in_bmap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_rspq_fl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @t4_sge_free_ethofld_txq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cxgb4_sched_class_alloc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgb4_sched_class_free(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netdev_set_num_tc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netdev_set_tc_queue(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgb4_get_msix_idx_from_bmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4_sge_alloc_rxq(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgb4_ethofld_rx_handler(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4_sge_alloc_ethofld_txq(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4_sge_intr_msix(i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgb4_set_msix_aff(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgb4_enable_rx(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgb4_set_rspq_intr_params(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgb4_ethofld_restart(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgb4_sched_class_bind(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !20, !22, !24}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{ptr @cxgb4_init_tc_mqprio.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_tc_mqprio.c", i32 671, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_tc_mqprio.c", i32 23, i32 19}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_tc_mqprio.c", i32 26, i32 19}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_tc_mqprio.c", i32 29, i32 19}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_tc_mqprio.c", i32 33, i32 7}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_tc_mqprio.c", i32 40, i32 19}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_tc_mqprio.c", i32 71, i32 9}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_tc_mqprio.c", i32 86, i32 7}
!17 = !{ptr @init_completion.__key, !18, !"__key", i1 false, i1 false}
!18 = !{!"../include/linux/completion.h", i32 87, i32 2}
!19 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_tc_mqprio.c", i32 197, i32 6}
!22 = !{ptr @cxgb4_init_eosw_txq.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_tc_mqprio.c", i32 110, i32 2}
!24 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 1, !"min_enum_size", i32 4}
!27 = !{i32 8, !"branch-target-enforcement", i32 0}
!28 = !{i32 8, !"sign-return-address", i32 0}
!29 = !{i32 8, !"sign-return-address-all", i32 0}
!30 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!34 = !{!"auto-init"}
!35 = !{i64 1301523, i64 1301550, i64 1301572, i64 1301600}
!36 = !{i64 1301931, i64 1301958, i64 1301991, i64 1302012, i64 1302039, i64 1302065}
!37 = !{i64 2148267593, i64 2148267625, i64 2148267654, i64 2148267688, i64 2148267719, i64 2148267742}
!38 = !{!"branch_weights", i32 1, i32 2000}
!39 = !{!"branch_weights", i32 2000, i32 1}
!40 = !{i64 2148355594}
!41 = !{i64 2148270058, i64 2148270090, i64 2148270119, i64 2148270153, i64 2148270184, i64 2148270207}
!42 = !{i64 2149577343}
!43 = !{i64 2148266063, i64 2148266089, i64 2148266118, i64 2148266152, i64 2148266183, i64 2148266206}
!44 = !{i64 2148268528, i64 2148268554, i64 2148268583, i64 2148268617, i64 2148268648, i64 2148268671}
