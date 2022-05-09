; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/chelsio/cxgb4/cxgb4_tc_matchall.c_pt.bc'
source_filename = "../drivers/net/ethernet/chelsio/cxgb4/cxgb4_tc_matchall.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ch_sched_queue = type { i8, i8 }
%struct.ch_sched_params = type { i8, %union.anon.23 }
%union.anon.23 = type { %struct.anon.24 }
%struct.anon.24 = type { i8, i8, i8, i8, i8, i8, i32, i32, i16, i16, i16 }
%struct.flow_cls_common_offload = type { i32, i16, i32, ptr }
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
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.211, i32 }
%struct.atomic_t = type { i32 }
%union.anon.211 = type { ptr }
%struct.sge_eth_rxq = type { %struct.sge_rspq, %struct.sge_fl, %struct.sge_eth_stats, ptr, [56 x i8] }
%struct.sge_fl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, i32 }
%struct.sge_eth_stats = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.sge_rspq = type { %struct.napi_struct, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i32, i16, i16, ptr, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, %struct.t4_lro_mgr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
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
%struct.cxgb4_tc_port_matchall = type { %struct.cxgb4_matchall_egress_entry, %struct.cxgb4_matchall_ingress_entry }
%struct.cxgb4_matchall_egress_entry = type { i32, i8, i64 }
%struct.cxgb4_matchall_ingress_entry = type { i32, [2 x i32], [2 x %struct.ch_filter_specification], i16, i64, i64, i64 }
%struct.ch_filter_specification = type { i32, [6 x i8], [6 x i8], i16, [16 x i8], [16 x i8], i16, i16, i32, i64, [12 x i8], %struct.ch_filter_tuple, %struct.ch_filter_tuple }
%struct.ch_filter_tuple = type { i32, i32, i24, i16, [2 x i8], [3 x i8], [16 x i8], [16 x i8], i16, i16 }
%struct.tc_cls_matchall_offload = type { %struct.flow_cls_common_offload, i32, ptr, %struct.flow_stats, i32 }
%struct.flow_stats = type { i64, i64, i64, i64, i32, i8 }
%struct.flow_rule = type { %struct.flow_match, %struct.flow_action }
%struct.flow_match = type { ptr, ptr, ptr }
%struct.flow_action = type { i32, [0 x %struct.flow_action_entry] }
%struct.flow_action_entry = type { i32, i32, i32, ptr, ptr, %union.anon.197, ptr }
%union.anon.197 = type { %struct.anon.202 }
%struct.anon.202 = type { i32, i64, i64, i64, i32 }
%struct.sched_class = type { i8, i8, %struct.ch_sched_params, i32, %struct.list_head, %struct.atomic_t }
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

@cxgb4_tc_matchall_replace.__msg = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"cxgb4: Only 1 Ingress MATCHALL can be offloaded\00", [48 x i8] zeroinitializer }, align 32
@cxgb4_tc_matchall_replace.__msg.1 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"cxgb4: Only 1 Egress MATCHALL can be offloaded\00", [49 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@cxgb4_matchall_mirror_alloc.__msg = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"cxgb4: Couldn't allocate mirror\00", [32 x i8] zeroinitializer }, align 32
@cxgb4_matchall_add_filter.__msg = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"cxgb4: No free LETCAM index available\00", [58 x i8] zeroinitializer }, align 32
@cxgb4_matchall_egress_validate.__msg = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"cxgb4: Egress MATCHALL offload needs at least 1 policing action\00", [32 x i8] zeroinitializer }, align 32
@cxgb4_matchall_egress_validate.__msg.2 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"cxgb4: Egress MATCHALL offload only supports 1 policing action\00", [33 x i8] zeroinitializer }, align 32
@cxgb4_matchall_egress_validate.__msg.3 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"cxgb4: Egress MATCHALL offload not supported with shared blocks\00", [32 x i8] zeroinitializer }, align 32
@cxgb4_matchall_egress_validate.__msg.4 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"cxgb4: Failed to get max speed supported by the link\00", [43 x i8] zeroinitializer }, align 32
@cxgb4_matchall_egress_validate.__msg.5 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"cxgb4: QoS offload not support packets per second\00", [46 x i8] zeroinitializer }, align 32
@cxgb4_matchall_egress_validate.__msg.6 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"cxgb4: Specified policing max rate is larger than underlying link speed\00", [56 x i8] zeroinitializer }, align 32
@cxgb4_matchall_egress_validate.__msg.7 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"cxgb4: Only policing action supported with Egress MATCHALL offload\00", [61 x i8] zeroinitializer }, align 32
@cxgb4_matchall_egress_validate.__msg.8 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"cxgb4: Some queues are already bound to different class\00", [40 x i8] zeroinitializer }, align 32
@cxgb4_matchall_alloc_tc.__msg = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"cxgb4: QoS offload not support packets per second\00", [46 x i8] zeroinitializer }, align 32
@cxgb4_matchall_alloc_tc.__msg.9 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"cxgb4: No free traffic class available for policing action\00", [37 x i8] zeroinitializer }, align 32
@cxgb4_matchall_alloc_tc.__msg.10 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"cxgb4: Could not bind queues to traffic class\00", [50 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 378, i32 4 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 393, i32 3 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 216, i32 5 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 278, i32 3 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 25, i32 3 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 29, i32 3 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 33, i32 3 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 40, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 52, i32 5 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 58, i32 5 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 64, i32 4 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 76, i32 4 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 154, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 163, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.54 = private constant [58 x i8] c"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_tc_matchall.c\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 170, i32 3 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @cxgb4_tc_matchall_replace.__msg, ptr @cxgb4_tc_matchall_replace.__msg.1, ptr @cxgb4_matchall_mirror_alloc.__msg, ptr @cxgb4_matchall_add_filter.__msg, ptr @cxgb4_matchall_egress_validate.__msg, ptr @cxgb4_matchall_egress_validate.__msg.2, ptr @cxgb4_matchall_egress_validate.__msg.3, ptr @cxgb4_matchall_egress_validate.__msg.4, ptr @cxgb4_matchall_egress_validate.__msg.5, ptr @cxgb4_matchall_egress_validate.__msg.6, ptr @cxgb4_matchall_egress_validate.__msg.7, ptr @cxgb4_matchall_egress_validate.__msg.8, ptr @cxgb4_matchall_alloc_tc.__msg, ptr @cxgb4_matchall_alloc_tc.__msg.9, ptr @cxgb4_matchall_alloc_tc.__msg.10], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4_tc_matchall_replace.__msg to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4_tc_matchall_replace.__msg.1 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4_matchall_mirror_alloc.__msg to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4_matchall_add_filter.__msg to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4_matchall_egress_validate.__msg to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4_matchall_egress_validate.__msg.2 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4_matchall_egress_validate.__msg.3 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4_matchall_egress_validate.__msg.4 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4_matchall_egress_validate.__msg.5 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4_matchall_egress_validate.__msg.6 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4_matchall_egress_validate.__msg.7 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4_matchall_egress_validate.__msg.8 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4_matchall_alloc_tc.__msg to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4_matchall_alloc_tc.__msg.9 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4_matchall_alloc_tc.__msg.10 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxgb4_tc_matchall_replace(ptr noundef %dev, ptr nocapture noundef readonly %cls_matchall, i1 noundef zeroext %ingress) local_unnamed_addr #0 align 64 {
entry:
  %qe.i.i = alloca %struct.ch_sched_queue, align 1
  %p.i = alloca %struct.ch_sched_params, align 4
  %qe.i = alloca %struct.ch_sched_queue, align 2
  %speed.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %extack1 = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_matchall, i32 0, i32 3
  %0 = ptrtoint ptr %extack1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %extack1, align 4
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i.i, align 8
  %tc_matchall = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 87
  %4 = ptrtoint ptr %tc_matchall to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tc_matchall, align 32
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %port_id = getelementptr i8, ptr %dev, i32 2325
  %8 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %port_id, align 1
  %idxprom = zext i8 %9 to i32
  br i1 %ingress, label %if.then, label %if.end13

if.then:                                          ; preds = %entry
  %ingress3 = getelementptr %struct.cxgb4_tc_port_matchall, ptr %7, i32 %idxprom, i32 1
  %10 = ptrtoint ptr %ingress3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ingress3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp = icmp eq i32 %11, 1
  br i1 %cmp, label %do.body, label %if.end7

do.body:                                          ; preds = %if.then
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @cxgb4_tc_matchall_replace.__msg) #6
  %tobool5.not = icmp eq ptr %1, null
  br i1 %tobool5.not, label %do.body.cleanup_crit_edge, label %if.then6

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @cxgb4_tc_matchall_replace.__msg, ptr %1, align 4
  br label %cleanup

if.end7:                                          ; preds = %if.then
  %rule = getelementptr inbounds %struct.tc_cls_matchall_offload, ptr %cls_matchall, i32 0, i32 2
  %13 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rule, align 4
  %action = getelementptr inbounds %struct.flow_rule, ptr %14, i32 0, i32 1
  %call8 = tail call i32 @cxgb4_validate_flow_actions(ptr noundef %dev, ptr noundef %action, ptr noundef %1, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %15 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr.i.i, align 8
  %tc_matchall.i = getelementptr inbounds %struct.adapter, ptr %16, i32 0, i32 87
  %17 = ptrtoint ptr %tc_matchall.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tc_matchall.i, align 32
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %21 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %port_id, align 1
  %idxprom.i = zext i8 %22 to i32
  %23 = ptrtoint ptr %extack1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %extack1, align 4
  %25 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rule, align 4
  %entries.i.i = getelementptr inbounds %struct.flow_rule, ptr %26, i32 1
  %action5.i.i = getelementptr inbounds %struct.flow_rule, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %action5.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %action5.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp33.not.i.i = icmp eq i32 %28, 0
  br i1 %cmp33.not.i.i, label %if.end11.cxgb4_matchall_mirror_alloc.exit.i_crit_edge, label %if.end11.for.body.i.i_crit_edge

if.end11.for.body.i.i_crit_edge:                  ; preds = %if.end11
  br label %for.body.i.i

if.end11.cxgb4_matchall_mirror_alloc.exit.i_crit_edge: ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cxgb4_matchall_mirror_alloc.exit.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end11.for.body.i.i_crit_edge
  %i.035.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.end11.for.body.i.i_crit_edge ]
  %act.034.i.i = phi ptr [ %arrayidx17.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %entries.i.i, %if.end11.for.body.i.i_crit_edge ]
  %29 = ptrtoint ptr %act.034.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %act.034.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %30)
  %cmp6.i.i = icmp eq i32 %30, 5
  br i1 %cmp6.i.i, label %if.then.i.i, label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  %call7.i.i = tail call i32 @cxgb4_port_mirror_alloc(ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool.not.i.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool.not.i.i, label %if.end11.i.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %if.then.i.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @cxgb4_matchall_mirror_alloc.__msg) #6
  %tobool9.not.i.i = icmp eq ptr %24, null
  br i1 %tobool9.not.i.i, label %do.body.i.i.cleanup_crit_edge, label %if.then10.i.i

do.body.i.i.cleanup_crit_edge:                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then10.i.i:                                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @cxgb4_matchall_mirror_alloc.__msg, ptr %24, align 4
  br label %cleanup

if.end11.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %viid_mirror.i.i = getelementptr i8, ptr %dev, i32 2970
  %32 = ptrtoint ptr %viid_mirror.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %viid_mirror.i.i, align 2
  %viid_mirror12.i.i = getelementptr %struct.cxgb4_tc_port_matchall, ptr %20, i32 %idxprom.i, i32 1, i32 3
  %34 = ptrtoint ptr %viid_mirror12.i.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %viid_mirror12.i.i, align 8
  br label %cxgb4_matchall_mirror_alloc.exit.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw i32 %i.035.i.i, 1
  %arrayidx17.i.i = getelementptr [0 x %struct.flow_action_entry], ptr %entries.i.i, i32 0, i32 %inc.i.i
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %28
  br i1 %exitcond.not.i.i, label %for.inc.i.i.cxgb4_matchall_mirror_alloc.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.inc.i.i.cxgb4_matchall_mirror_alloc.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cxgb4_matchall_mirror_alloc.exit.i

cxgb4_matchall_mirror_alloc.exit.i:               ; preds = %for.inc.i.i.cxgb4_matchall_mirror_alloc.exit.i_crit_edge, %if.end11.i.i, %if.end11.cxgb4_matchall_mirror_alloc.exit.i_crit_edge
  %prio.i.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_matchall, i32 0, i32 2
  %cookie.i.i = getelementptr inbounds %struct.tc_cls_matchall_offload, ptr %cls_matchall, i32 0, i32 4
  %vin.i.i = getelementptr i8, ptr %dev, i32 2964
  %35 = ptrtoint ptr %extack1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %extack1, align 4
  %37 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %add.ptr.i.i, align 8
  %39 = ptrtoint ptr %prio.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %prio.i.i, align 8
  %call5.i.i = tail call i32 @cxgb4_get_free_ftid(ptr noundef %dev, i8 noundef zeroext 2, i1 noundef zeroext false, i32 noundef %40) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %cmp.i.i = icmp slt i32 %call5.i.i, 0
  br i1 %cmp.i.i, label %cxgb4_matchall_mirror_alloc.exit.i.do.body.i32.i_crit_edge, label %if.end9.i.i

cxgb4_matchall_mirror_alloc.exit.i.do.body.i32.i_crit_edge: ; preds = %cxgb4_matchall_mirror_alloc.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i32.i

do.body.i32.i:                                    ; preds = %for.inc.i.do.body.i32.i_crit_edge, %cxgb4_matchall_mirror_alloc.exit.i.do.body.i32.i_crit_edge
  %.lcssa.i = phi ptr [ %36, %cxgb4_matchall_mirror_alloc.exit.i.do.body.i32.i_crit_edge ], [ %80, %for.inc.i.do.body.i32.i_crit_edge ]
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @cxgb4_matchall_add_filter.__msg) #6
  %tobool7.not.i.i = icmp eq ptr %.lcssa.i, null
  br i1 %tobool7.not.i.i, label %do.body.i32.i.cxgb4_matchall_add_filter.exit.i_crit_edge, label %if.then8.i.i

do.body.i32.i.cxgb4_matchall_add_filter.exit.i_crit_edge: ; preds = %do.body.i32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cxgb4_matchall_add_filter.exit.i

if.then8.i.i:                                     ; preds = %do.body.i32.i
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @cxgb4_matchall_add_filter.__msg, ptr %.lcssa.i, align 4
  br label %cxgb4_matchall_add_filter.exit.i

if.end9.i.i:                                      ; preds = %cxgb4_matchall_mirror_alloc.exit.i
  %tc_matchall.i33.i = getelementptr inbounds %struct.adapter, ptr %38, i32 0, i32 87
  %42 = ptrtoint ptr %tc_matchall.i33.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tc_matchall.i33.i, align 32
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %46 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %port_id, align 1
  %idxprom.i35.i = zext i8 %47 to i32
  %arrayidx12.i.i = getelementptr %struct.cxgb4_tc_port_matchall, ptr %45, i32 %idxprom.i35.i, i32 1, i32 2, i32 0
  %48 = call ptr @memset(ptr %arrayidx12.i.i, i32 0, i32 200)
  %nhpftids.i.i = getelementptr inbounds %struct.adapter, ptr %38, i32 0, i32 48, i32 14
  %49 = ptrtoint ptr %nhpftids.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %nhpftids.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call5.i.i, i32 %50)
  %cmp13.i.i = icmp ult i32 %call5.i.i, %50
  br i1 %cmp13.i.i, label %if.then15.i.i, label %if.end9.i.i.if.end16.i.i_crit_edge

if.end9.i.i.if.end16.i.i_crit_edge:               ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16.i.i

if.then15.i.i:                                    ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %bf.load.i.i = load i32, ptr %arrayidx12.i.i, align 8
  %bf.set.i.i = or i32 %bf.load.i.i, 1073741824
  store i32 %bf.set.i.i, ptr %arrayidx12.i.i, align 8
  br label %if.end16.i.i

if.end16.i.i:                                     ; preds = %if.then15.i.i, %if.end9.i.i.if.end16.i.i_crit_edge
  %52 = ptrtoint ptr %prio.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %prio.i.i, align 8
  %tc_prio.i.i = getelementptr %struct.cxgb4_tc_port_matchall, ptr %45, i32 %idxprom.i35.i, i32 1, i32 2, i32 0, i32 8
  %54 = ptrtoint ptr %tc_prio.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %tc_prio.i.i, align 8
  %55 = ptrtoint ptr %cookie.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %cookie.i.i, align 8
  %conv19.i.i = zext i32 %56 to i64
  %tc_cookie.i.i = getelementptr %struct.cxgb4_tc_port_matchall, ptr %45, i32 %idxprom.i35.i, i32 1, i32 2, i32 0, i32 9
  %57 = ptrtoint ptr %tc_cookie.i.i to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %conv19.i.i, ptr %tc_cookie.i.i, align 8
  %58 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %bf.load21.i.i = load i32, ptr %arrayidx12.i.i, align 8
  %bf.clear22.i.i = and i32 %bf.load21.i.i, 1610612735
  %bf.set26.i.i = or i32 %bf.clear22.i.i, -2147483648
  store i32 %bf.set26.i.i, ptr %arrayidx12.i.i, align 8
  %val.i.i = getelementptr %struct.cxgb4_tc_port_matchall, ptr %45, i32 %idxprom.i35.i, i32 1, i32 2, i32 0, i32 11
  %59 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %bf.load27.i.i = load i32, ptr %val.i.i, align 4
  %bf.set29.i.i = or i32 %bf.load27.i.i, 4096
  store i32 %bf.set29.i.i, ptr %val.i.i, align 4
  %pf.i.i = getelementptr inbounds %struct.adapter, ptr %38, i32 0, i32 7
  %60 = ptrtoint ptr %pf.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %pf.i.i, align 4
  %pf31.i.i = getelementptr %struct.cxgb4_tc_port_matchall, ptr %45, i32 %idxprom.i35.i, i32 1, i32 2, i32 0, i32 11, i32 1
  %62 = ptrtoint ptr %pf31.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %bf.load32.i.i = load i32, ptr %pf31.i.i, align 4
  %bf.value33.i.i = shl i32 %61, 2
  %bf.shl34.i.i = and i32 %bf.value33.i.i, 1020
  %bf.clear35.i.i = and i32 %bf.load32.i.i, -1021
  %bf.set36.i.i = or i32 %bf.clear35.i.i, %bf.shl34.i.i
  store i32 %bf.set36.i.i, ptr %pf31.i.i, align 4
  %63 = ptrtoint ptr %vin.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %vin.i.i, align 4
  %conv37.i.i = zext i8 %64 to i32
  %vf.i.i = getelementptr %struct.cxgb4_tc_port_matchall, ptr %45, i32 %idxprom.i35.i, i32 1, i32 2, i32 0, i32 11, i32 2
  %65 = ptrtoint ptr %vf.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %bf.load39.i.i = load i32, ptr %vf.i.i, align 4
  %bf.shl41.i.i = shl nuw i32 %conv37.i.i, 24
  %bf.clear42.i.i = and i32 %bf.load39.i.i, 16777215
  %bf.set43.i.i = or i32 %bf.clear42.i.i, %bf.shl41.i.i
  store i32 %bf.set43.i.i, ptr %vf.i.i, align 4
  %66 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %rule, align 4
  %action.i.i = getelementptr inbounds %struct.flow_rule, ptr %67, i32 0, i32 1
  tail call void @cxgb4_process_flow_actions(ptr noundef %dev, ptr noundef %action.i.i, ptr noundef %arrayidx12.i.i) #6
  %call44.i.i = tail call i32 @cxgb4_set_filter(ptr noundef %dev, i32 noundef %call5.i.i, ptr noundef %arrayidx12.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i.i)
  %tobool45.not.i.i = icmp eq i32 %call44.i.i, 0
  br i1 %tobool45.not.i.i, label %for.inc.i, label %if.end16.i.i.while.end.i_crit_edge

if.end16.i.i.while.end.i_crit_edge:               ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

cxgb4_matchall_add_filter.exit.i:                 ; preds = %if.then8.i.i, %do.body.i32.i.cxgb4_matchall_add_filter.exit.i_crit_edge
  br i1 %cmp.i.i, label %cxgb4_matchall_add_filter.exit.i.while.end.i_crit_edge, label %cxgb4_matchall_add_filter.exit.i.while.body.preheader.i_crit_edge

cxgb4_matchall_add_filter.exit.i.while.body.preheader.i_crit_edge: ; preds = %cxgb4_matchall_add_filter.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.preheader.i

cxgb4_matchall_add_filter.exit.i.while.end.i_crit_edge: ; preds = %cxgb4_matchall_add_filter.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

while.body.preheader.i:                           ; preds = %if.end16.i.1.i.while.body.preheader.i_crit_edge, %cxgb4_matchall_add_filter.exit.i.while.body.preheader.i_crit_edge
  %retval.0.i3777.i = phi i32 [ -12, %cxgb4_matchall_add_filter.exit.i.while.body.preheader.i_crit_edge ], [ %call44.i.1.i, %if.end16.i.1.i.while.body.preheader.i_crit_edge ]
  %68 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %add.ptr.i.i, align 8
  %tc_matchall.i39.i = getelementptr inbounds %struct.adapter, ptr %69, i32 0, i32 87
  %70 = ptrtoint ptr %tc_matchall.i39.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %tc_matchall.i39.i, align 32
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %71, align 4
  %74 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %port_id, align 1
  %idxprom.i41.i = zext i8 %75 to i32
  %arrayidx3.i.i = getelementptr %struct.cxgb4_tc_port_matchall, ptr %73, i32 %idxprom.i41.i, i32 1, i32 1, i32 0
  %76 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx3.i.i, align 4
  %arrayidx6.i.i = getelementptr %struct.cxgb4_tc_port_matchall, ptr %73, i32 %idxprom.i41.i, i32 1, i32 2, i32 0
  %call7.i42.i = tail call i32 @cxgb4_del_filter(ptr noundef %dev, i32 noundef %77, ptr noundef %arrayidx6.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i42.i)
  %tobool.not.i43.i = icmp eq i32 %call7.i42.i, 0
  br i1 %tobool.not.i43.i, label %if.end.i.i, label %while.body.preheader.i.while.end.i_crit_edge

while.body.preheader.i.while.end.i_crit_edge:     ; preds = %while.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

for.inc.i:                                        ; preds = %if.end16.i.i
  %arrayidx50.i.i = getelementptr %struct.cxgb4_tc_port_matchall, ptr %45, i32 %idxprom.i35.i, i32 1, i32 1, i32 0
  %78 = ptrtoint ptr %arrayidx50.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %call5.i.i, ptr %arrayidx50.i.i, align 4
  %79 = ptrtoint ptr %extack1 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %extack1, align 4
  %81 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %add.ptr.i.i, align 8
  %83 = ptrtoint ptr %prio.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %prio.i.i, align 8
  %call5.i.1.i = tail call i32 @cxgb4_get_free_ftid(ptr noundef %dev, i8 noundef zeroext 10, i1 noundef zeroext false, i32 noundef %84) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.1.i)
  %cmp.i.1.i = icmp slt i32 %call5.i.1.i, 0
  br i1 %cmp.i.1.i, label %for.inc.i.do.body.i32.i_crit_edge, label %if.end9.i.1.i

for.inc.i.do.body.i32.i_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i32.i

if.end9.i.1.i:                                    ; preds = %for.inc.i
  %tc_matchall.i33.1.i = getelementptr inbounds %struct.adapter, ptr %82, i32 0, i32 87
  %85 = ptrtoint ptr %tc_matchall.i33.1.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %tc_matchall.i33.1.i, align 32
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %86, align 4
  %89 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %port_id, align 1
  %idxprom.i35.1.i = zext i8 %90 to i32
  %arrayidx12.i.1.i = getelementptr %struct.cxgb4_tc_port_matchall, ptr %88, i32 %idxprom.i35.1.i, i32 1, i32 2, i32 1
  %91 = call ptr @memset(ptr %arrayidx12.i.1.i, i32 0, i32 200)
  %nhpftids.i.1.i = getelementptr inbounds %struct.adapter, ptr %82, i32 0, i32 48, i32 14
  %92 = ptrtoint ptr %nhpftids.i.1.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %nhpftids.i.1.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call5.i.1.i, i32 %93)
  %cmp13.i.1.i = icmp ult i32 %call5.i.1.i, %93
  br i1 %cmp13.i.1.i, label %if.then15.i.1.i, label %if.end9.i.1.i.if.end16.i.1.i_crit_edge

if.end9.i.1.i.if.end16.i.1.i_crit_edge:           ; preds = %if.end9.i.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16.i.1.i

if.then15.i.1.i:                                  ; preds = %if.end9.i.1.i
  call void @__sanitizer_cov_trace_pc() #8
  %94 = ptrtoint ptr %arrayidx12.i.1.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %bf.load.i.1.i = load i32, ptr %arrayidx12.i.1.i, align 8
  %bf.set.i.1.i = or i32 %bf.load.i.1.i, 1073741824
  store i32 %bf.set.i.1.i, ptr %arrayidx12.i.1.i, align 8
  br label %if.end16.i.1.i

if.end16.i.1.i:                                   ; preds = %if.then15.i.1.i, %if.end9.i.1.i.if.end16.i.1.i_crit_edge
  %95 = ptrtoint ptr %prio.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %prio.i.i, align 8
  %tc_prio.i.1.i = getelementptr %struct.cxgb4_tc_port_matchall, ptr %88, i32 %idxprom.i35.1.i, i32 1, i32 2, i32 1, i32 8
  %97 = ptrtoint ptr %tc_prio.i.1.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %tc_prio.i.1.i, align 8
  %98 = ptrtoint ptr %cookie.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %cookie.i.i, align 8
  %conv19.i.1.i = zext i32 %99 to i64
  %tc_cookie.i.1.i = getelementptr %struct.cxgb4_tc_port_matchall, ptr %88, i32 %idxprom.i35.1.i, i32 1, i32 2, i32 1, i32 9
  %100 = ptrtoint ptr %tc_cookie.i.1.i to i32
  call void @__asan_store8_noabort(i32 %100)
  store i64 %conv19.i.1.i, ptr %tc_cookie.i.1.i, align 8
  %101 = ptrtoint ptr %arrayidx12.i.1.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %bf.load21.i.1.i = load i32, ptr %arrayidx12.i.1.i, align 8
  %bf.set26.i.1.i = or i32 %bf.load21.i.1.i, -1610612736
  store i32 %bf.set26.i.1.i, ptr %arrayidx12.i.1.i, align 8
  %val.i.1.i = getelementptr %struct.cxgb4_tc_port_matchall, ptr %88, i32 %idxprom.i35.1.i, i32 1, i32 2, i32 1, i32 11
  %102 = ptrtoint ptr %val.i.1.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %bf.load27.i.1.i = load i32, ptr %val.i.1.i, align 4
  %bf.set29.i.1.i = or i32 %bf.load27.i.1.i, 4096
  store i32 %bf.set29.i.1.i, ptr %val.i.1.i, align 4
  %pf.i.1.i = getelementptr inbounds %struct.adapter, ptr %82, i32 0, i32 7
  %103 = ptrtoint ptr %pf.i.1.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %pf.i.1.i, align 4
  %pf31.i.1.i = getelementptr %struct.cxgb4_tc_port_matchall, ptr %88, i32 %idxprom.i35.1.i, i32 1, i32 2, i32 1, i32 11, i32 1
  %105 = ptrtoint ptr %pf31.i.1.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %bf.load32.i.1.i = load i32, ptr %pf31.i.1.i, align 4
  %bf.value33.i.1.i = shl i32 %104, 2
  %bf.shl34.i.1.i = and i32 %bf.value33.i.1.i, 1020
  %bf.clear35.i.1.i = and i32 %bf.load32.i.1.i, -1021
  %bf.set36.i.1.i = or i32 %bf.clear35.i.1.i, %bf.shl34.i.1.i
  store i32 %bf.set36.i.1.i, ptr %pf31.i.1.i, align 4
  %106 = ptrtoint ptr %vin.i.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %vin.i.i, align 4
  %conv37.i.1.i = zext i8 %107 to i32
  %vf.i.1.i = getelementptr %struct.cxgb4_tc_port_matchall, ptr %88, i32 %idxprom.i35.1.i, i32 1, i32 2, i32 1, i32 11, i32 2
  %108 = ptrtoint ptr %vf.i.1.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %bf.load39.i.1.i = load i32, ptr %vf.i.1.i, align 4
  %bf.shl41.i.1.i = shl nuw i32 %conv37.i.1.i, 24
  %bf.clear42.i.1.i = and i32 %bf.load39.i.1.i, 16777215
  %bf.set43.i.1.i = or i32 %bf.clear42.i.1.i, %bf.shl41.i.1.i
  store i32 %bf.set43.i.1.i, ptr %vf.i.1.i, align 4
  %109 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %rule, align 4
  %action.i.1.i = getelementptr inbounds %struct.flow_rule, ptr %110, i32 0, i32 1
  tail call void @cxgb4_process_flow_actions(ptr noundef %dev, ptr noundef %action.i.1.i, ptr noundef %arrayidx12.i.1.i) #6
  %call44.i.1.i = tail call i32 @cxgb4_set_filter(ptr noundef %dev, i32 noundef %call5.i.1.i, ptr noundef %arrayidx12.i.1.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i.1.i)
  %tobool45.not.i.1.i = icmp eq i32 %call44.i.1.i, 0
  br i1 %tobool45.not.i.1.i, label %for.inc.1.i, label %if.end16.i.1.i.while.body.preheader.i_crit_edge

if.end16.i.1.i.while.body.preheader.i_crit_edge:  ; preds = %if.end16.i.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.preheader.i

for.inc.1.i:                                      ; preds = %if.end16.i.1.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx50.i.1.i = getelementptr %struct.cxgb4_tc_port_matchall, ptr %88, i32 %idxprom.i35.1.i, i32 1, i32 1, i32 1
  %111 = ptrtoint ptr %arrayidx50.i.1.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %call5.i.1.i, ptr %arrayidx50.i.1.i, align 4
  %ingress.i = getelementptr %struct.cxgb4_tc_port_matchall, ptr %20, i32 %idxprom.i, i32 1
  %112 = ptrtoint ptr %ingress.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 1, ptr %ingress.i, align 8
  br label %cleanup

if.end.i.i:                                       ; preds = %while.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  %113 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 0, ptr %arrayidx3.i.i, align 4
  br label %while.end.i

while.end.i:                                      ; preds = %if.end.i.i, %while.body.preheader.i.while.end.i_crit_edge, %cxgb4_matchall_add_filter.exit.i.while.end.i_crit_edge, %if.end16.i.i.while.end.i_crit_edge
  %retval.0.i3771.i = phi i32 [ -12, %cxgb4_matchall_add_filter.exit.i.while.end.i_crit_edge ], [ %retval.0.i3777.i, %while.body.preheader.i.while.end.i_crit_edge ], [ %retval.0.i3777.i, %if.end.i.i ], [ %call44.i.i, %if.end16.i.i.while.end.i_crit_edge ]
  %114 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %add.ptr.i.i, align 8
  %tc_matchall.i45.i = getelementptr inbounds %struct.adapter, ptr %115, i32 0, i32 87
  %116 = ptrtoint ptr %tc_matchall.i45.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %tc_matchall.i45.i, align 32
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %117, align 4
  %120 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %port_id, align 1
  %idxprom.i47.i = zext i8 %121 to i32
  %viid_mirror.i48.i = getelementptr %struct.cxgb4_tc_port_matchall, ptr %119, i32 %idxprom.i47.i, i32 1, i32 3
  %122 = ptrtoint ptr %viid_mirror.i48.i to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %viid_mirror.i48.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %123)
  %tobool.not.i49.i = icmp eq i16 %123, 0
  br i1 %tobool.not.i49.i, label %while.end.i.cleanup_crit_edge, label %if.end.i50.i

while.end.i.cleanup_crit_edge:                    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i50.i:                                     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @cxgb4_port_mirror_free(ptr noundef %dev) #6
  %124 = ptrtoint ptr %viid_mirror.i48.i to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 0, ptr %viid_mirror.i48.i, align 8
  br label %cleanup

if.end13:                                         ; preds = %entry
  %arrayidx = getelementptr %struct.cxgb4_tc_port_matchall, ptr %7, i32 %idxprom
  %125 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %126)
  %cmp15 = icmp eq i32 %126, 1
  br i1 %cmp15, label %do.body17, label %if.end25

do.body17:                                        ; preds = %if.end13
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @cxgb4_tc_matchall_replace.__msg.1) #6
  %tobool19.not = icmp eq ptr %1, null
  br i1 %tobool19.not, label %do.body17.cleanup_crit_edge, label %if.then20

do.body17.cleanup_crit_edge:                      ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then20:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #8
  %127 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr @cxgb4_tc_matchall_replace.__msg.1, ptr %1, align 4
  br label %cleanup

if.end25:                                         ; preds = %if.end13
  %rule.i = getelementptr inbounds %struct.tc_cls_matchall_offload, ptr %cls_matchall, i32 0, i32 2
  %128 = ptrtoint ptr %rule.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %rule.i, align 4
  %action.i = getelementptr inbounds %struct.flow_rule, ptr %129, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %qe.i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %speed.i) #6
  %130 = ptrtoint ptr %speed.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 -1, ptr %speed.i, align 4, !annotation !41
  %131 = ptrtoint ptr %action.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %action.i, align 8
  %133 = zext i32 %132 to i64
  call void @__sanitizer_cov_trace_switch(i64 %133, ptr @__sancov_gen_cov_switch_values)
  switch i32 %132, label %do.body7.i [
    i32 0, label %do.body.i
    i32 1, label %if.else15.i
  ]

do.body.i:                                        ; preds = %if.end25
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @cxgb4_matchall_egress_validate.__msg) #6
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %do.body.i.cxgb4_matchall_egress_validate.exit.thread_crit_edge, label %do.body.i.cleanup.sink.split.i_crit_edge

do.body.i.cleanup.sink.split.i_crit_edge:         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

do.body.i.cxgb4_matchall_egress_validate.exit.thread_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cxgb4_matchall_egress_validate.exit.thread

do.body7.i:                                       ; preds = %if.end25
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @cxgb4_matchall_egress_validate.__msg.2) #6
  %tobool9.not.i = icmp eq ptr %1, null
  br i1 %tobool9.not.i, label %do.body7.i.cxgb4_matchall_egress_validate.exit.thread_crit_edge, label %do.body7.i.cleanup.sink.split.i_crit_edge

do.body7.i.cleanup.sink.split.i_crit_edge:        ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

do.body7.i.cxgb4_matchall_egress_validate.exit.thread_crit_edge: ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cxgb4_matchall_egress_validate.exit.thread

if.else15.i:                                      ; preds = %if.end25
  %tc_block_shared.i = getelementptr i8, ptr %dev, i32 2968
  %134 = ptrtoint ptr %tc_block_shared.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %tc_block_shared.i, align 8, !range !42
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %135)
  %tobool16.not.i = icmp eq i8 %135, 0
  br i1 %tobool16.not.i, label %if.end28.i, label %do.body18.i

do.body18.i:                                      ; preds = %if.else15.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @cxgb4_matchall_egress_validate.__msg.3) #6
  %tobool20.not.i = icmp eq ptr %1, null
  br i1 %tobool20.not.i, label %do.body18.i.cxgb4_matchall_egress_validate.exit.thread_crit_edge, label %do.body18.i.cleanup.sink.split.i_crit_edge

do.body18.i.cleanup.sink.split.i_crit_edge:       ; preds = %do.body18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

do.body18.i.cxgb4_matchall_egress_validate.exit.thread_crit_edge: ; preds = %do.body18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cxgb4_matchall_egress_validate.exit.thread

if.end28.i:                                       ; preds = %if.else15.i
  %call29.i = call i32 @t4_get_link_params(ptr noundef %add.ptr.i.i, ptr noundef null, ptr noundef nonnull %speed.i, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool30.not.i, label %if.end40.i, label %do.body32.i

do.body32.i:                                      ; preds = %if.end28.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @cxgb4_matchall_egress_validate.__msg.4) #6
  %tobool34.not.i = icmp eq ptr %1, null
  br i1 %tobool34.not.i, label %do.body32.i.cxgb4_matchall_egress_validate.exit.thread_crit_edge, label %do.body32.i.cleanup.sink.split.i_crit_edge

do.body32.i.cleanup.sink.split.i_crit_edge:       ; preds = %do.body32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

do.body32.i.cxgb4_matchall_egress_validate.exit.thread_crit_edge: ; preds = %do.body32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cxgb4_matchall_egress_validate.exit.thread

if.end40.i:                                       ; preds = %if.end28.i
  %136 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %speed.i, align 4
  %conv.i = zext i32 %137 to i64
  %mul41.i = mul nuw nsw i64 %conv.i, 1000000
  %entries.i = getelementptr inbounds %struct.flow_rule, ptr %129, i32 1
  %138 = ptrtoint ptr %action.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %action.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %cmp140.not.i = icmp eq i32 %139, 0
  br i1 %cmp140.not.i, label %if.end40.i.for.cond77.preheader.i_crit_edge, label %if.end40.i.for.body.i_crit_edge

if.end40.i.for.body.i_crit_edge:                  ; preds = %if.end40.i
  br label %for.body.i

if.end40.i.for.cond77.preheader.i_crit_edge:      ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond77.preheader.i

for.cond77.preheader.i:                           ; preds = %for.inc.i54.for.cond77.preheader.i_crit_edge, %if.end40.i.for.cond77.preheader.i_crit_edge
  %nqsets.i = getelementptr i8, ptr %dev, i32 2328
  %140 = ptrtoint ptr %nqsets.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %nqsets.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %141)
  %cmp79144.not.i = icmp eq i8 %141, 0
  br i1 %cmp79144.not.i, label %for.cond77.preheader.i.if.end29_crit_edge, label %for.cond77.preheader.i.for.body81.i_crit_edge

for.cond77.preheader.i.for.body81.i_crit_edge:    ; preds = %for.cond77.preheader.i
  br label %for.body81.i

for.cond77.preheader.i.if.end29_crit_edge:        ; preds = %for.cond77.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

for.body.i:                                       ; preds = %for.inc.i54.for.body.i_crit_edge, %if.end40.i.for.body.i_crit_edge
  %i.0142.i = phi i32 [ %inc.i, %for.inc.i54.for.body.i_crit_edge ], [ 0, %if.end40.i.for.body.i_crit_edge ]
  %entry2.0141.i = phi ptr [ %arrayidx76.i, %for.inc.i54.for.body.i_crit_edge ], [ %entries.i, %if.end40.i.for.body.i_crit_edge ]
  %142 = ptrtoint ptr %entry2.0141.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %entry2.0141.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %143)
  %cond.i = icmp eq i32 %143, 22
  br i1 %cond.i, label %sw.bb.i, label %do.body67.i

sw.bb.i:                                          ; preds = %for.body.i
  %rate_pkt_ps.i = getelementptr inbounds %struct.flow_action_entry, ptr %entry2.0141.i, i32 0, i32 5, i32 0, i32 3
  %144 = ptrtoint ptr %rate_pkt_ps.i to i32
  call void @__asan_load8_noabort(i32 %144)
  %145 = load i64, ptr %rate_pkt_ps.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %145)
  %tobool43.not.i = icmp eq i64 %145, 0
  br i1 %tobool43.not.i, label %if.end53.i, label %do.body45.i

do.body45.i:                                      ; preds = %sw.bb.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @cxgb4_matchall_egress_validate.__msg.5) #6
  %tobool47.not.i = icmp eq ptr %1, null
  br i1 %tobool47.not.i, label %do.body45.i.cxgb4_matchall_egress_validate.exit.thread_crit_edge, label %do.body45.i.cleanup.sink.split.i_crit_edge

do.body45.i.cleanup.sink.split.i_crit_edge:       ; preds = %do.body45.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

do.body45.i.cxgb4_matchall_egress_validate.exit.thread_crit_edge: ; preds = %do.body45.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cxgb4_matchall_egress_validate.exit.thread

if.end53.i:                                       ; preds = %sw.bb.i
  %rate_bytes_ps.i = getelementptr inbounds %struct.flow_action_entry, ptr %entry2.0141.i, i32 0, i32 5, i32 0, i32 1
  %146 = ptrtoint ptr %rate_bytes_ps.i to i32
  call void @__asan_load8_noabort(i32 %146)
  %147 = load i64, ptr %rate_bytes_ps.i, align 8
  %mul54.i = shl i64 %147, 3
  call void @__sanitizer_cov_trace_cmp8(i64 %mul54.i, i64 %mul41.i)
  %cmp55.i = icmp ugt i64 %mul54.i, %mul41.i
  br i1 %cmp55.i, label %do.body58.i, label %for.inc.i54

do.body58.i:                                      ; preds = %if.end53.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @cxgb4_matchall_egress_validate.__msg.6) #6
  %tobool60.not.i = icmp eq ptr %1, null
  br i1 %tobool60.not.i, label %do.body58.i.cxgb4_matchall_egress_validate.exit.thread_crit_edge, label %do.body58.i.cleanup.sink.split.i_crit_edge

do.body58.i.cleanup.sink.split.i_crit_edge:       ; preds = %do.body58.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

do.body58.i.cxgb4_matchall_egress_validate.exit.thread_crit_edge: ; preds = %do.body58.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cxgb4_matchall_egress_validate.exit.thread

do.body67.i:                                      ; preds = %for.body.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @cxgb4_matchall_egress_validate.__msg.7) #6
  %tobool69.not.i = icmp eq ptr %1, null
  br i1 %tobool69.not.i, label %do.body67.i.cxgb4_matchall_egress_validate.exit.thread_crit_edge, label %do.body67.i.cleanup.sink.split.i_crit_edge

do.body67.i.cleanup.sink.split.i_crit_edge:       ; preds = %do.body67.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

do.body67.i.cxgb4_matchall_egress_validate.exit.thread_crit_edge: ; preds = %do.body67.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cxgb4_matchall_egress_validate.exit.thread

for.inc.i54:                                      ; preds = %if.end53.i
  %inc.i = add nuw i32 %i.0142.i, 1
  %arrayidx76.i = getelementptr [0 x %struct.flow_action_entry], ptr %entries.i, i32 0, i32 %inc.i
  %exitcond.not.i = icmp eq i32 %inc.i, %139
  br i1 %exitcond.not.i, label %for.inc.i54.for.cond77.preheader.i_crit_edge, label %for.inc.i54.for.body.i_crit_edge

for.inc.i54.for.body.i_crit_edge:                 ; preds = %for.inc.i54
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i54.for.cond77.preheader.i_crit_edge:     ; preds = %for.inc.i54
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond77.preheader.i

for.body81.i:                                     ; preds = %for.inc98.i.for.body81.i_crit_edge, %for.cond77.preheader.i.for.body81.i_crit_edge
  %i.1145.i = phi i32 [ %inc99.i, %for.inc98.i.for.body81.i_crit_edge ], [ 0, %for.cond77.preheader.i.for.body81.i_crit_edge ]
  %148 = ptrtoint ptr %qe.i to i32
  call void @__asan_store2_noabort(i32 %148)
  store i16 0, ptr %qe.i, align 2
  %conv82.i = trunc i32 %i.1145.i to i8
  store i8 %conv82.i, ptr %qe.i, align 2
  %call83.i = call ptr @cxgb4_sched_queue_lookup(ptr noundef %dev, ptr noundef nonnull %qe.i) #6
  %tobool84.not.i = icmp eq ptr %call83.i, null
  br i1 %tobool84.not.i, label %for.body81.i.for.inc98.i_crit_edge, label %land.lhs.true.i

for.body81.i.for.inc98.i_crit_edge:               ; preds = %for.body81.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc98.i

land.lhs.true.i:                                  ; preds = %for.body81.i
  %u.i = getelementptr inbounds %struct.sched_class, ptr %call83.i, i32 0, i32 2, i32 1
  %149 = ptrtoint ptr %u.i to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %u.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %150)
  %cmp86.not.i = icmp eq i8 %150, 2
  br i1 %cmp86.not.i, label %land.lhs.true.i.for.inc98.i_crit_edge, label %do.body89.i

land.lhs.true.i.for.inc98.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc98.i

do.body89.i:                                      ; preds = %land.lhs.true.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @cxgb4_matchall_egress_validate.__msg.8) #6
  %tobool91.not.i = icmp eq ptr %1, null
  br i1 %tobool91.not.i, label %do.body89.i.cxgb4_matchall_egress_validate.exit.thread_crit_edge, label %do.body89.i.cleanup.sink.split.i_crit_edge

do.body89.i.cleanup.sink.split.i_crit_edge:       ; preds = %do.body89.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

do.body89.i.cxgb4_matchall_egress_validate.exit.thread_crit_edge: ; preds = %do.body89.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cxgb4_matchall_egress_validate.exit.thread

for.inc98.i:                                      ; preds = %land.lhs.true.i.for.inc98.i_crit_edge, %for.body81.i.for.inc98.i_crit_edge
  %inc99.i = add nuw nsw i32 %i.1145.i, 1
  %151 = ptrtoint ptr %nqsets.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %nqsets.i, align 8
  %conv78.i = zext i8 %152 to i32
  %cmp79.i = icmp ult i32 %inc99.i, %conv78.i
  br i1 %cmp79.i, label %for.inc98.i.for.body81.i_crit_edge, label %for.inc98.i.if.end29_crit_edge

for.inc98.i.if.end29_crit_edge:                   ; preds = %for.inc98.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

for.inc98.i.for.body81.i_crit_edge:               ; preds = %for.inc98.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body81.i

cleanup.sink.split.i:                             ; preds = %do.body89.i.cleanup.sink.split.i_crit_edge, %do.body67.i.cleanup.sink.split.i_crit_edge, %do.body58.i.cleanup.sink.split.i_crit_edge, %do.body45.i.cleanup.sink.split.i_crit_edge, %do.body32.i.cleanup.sink.split.i_crit_edge, %do.body18.i.cleanup.sink.split.i_crit_edge, %do.body7.i.cleanup.sink.split.i_crit_edge, %do.body.i.cleanup.sink.split.i_crit_edge
  %cxgb4_matchall_egress_validate.__msg.8.sink.i = phi ptr [ @cxgb4_matchall_egress_validate.__msg, %do.body.i.cleanup.sink.split.i_crit_edge ], [ @cxgb4_matchall_egress_validate.__msg.2, %do.body7.i.cleanup.sink.split.i_crit_edge ], [ @cxgb4_matchall_egress_validate.__msg.3, %do.body18.i.cleanup.sink.split.i_crit_edge ], [ @cxgb4_matchall_egress_validate.__msg.4, %do.body32.i.cleanup.sink.split.i_crit_edge ], [ @cxgb4_matchall_egress_validate.__msg.5, %do.body45.i.cleanup.sink.split.i_crit_edge ], [ @cxgb4_matchall_egress_validate.__msg.6, %do.body58.i.cleanup.sink.split.i_crit_edge ], [ @cxgb4_matchall_egress_validate.__msg.7, %do.body67.i.cleanup.sink.split.i_crit_edge ], [ @cxgb4_matchall_egress_validate.__msg.8, %do.body89.i.cleanup.sink.split.i_crit_edge ]
  %retval.0.ph.i = phi i32 [ -22, %do.body.i.cleanup.sink.split.i_crit_edge ], [ -22, %do.body7.i.cleanup.sink.split.i_crit_edge ], [ -22, %do.body18.i.cleanup.sink.split.i_crit_edge ], [ -22, %do.body32.i.cleanup.sink.split.i_crit_edge ], [ -95, %do.body45.i.cleanup.sink.split.i_crit_edge ], [ -34, %do.body58.i.cleanup.sink.split.i_crit_edge ], [ -95, %do.body67.i.cleanup.sink.split.i_crit_edge ], [ -16, %do.body89.i.cleanup.sink.split.i_crit_edge ]
  %153 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %cxgb4_matchall_egress_validate.__msg.8.sink.i, ptr %1, align 4
  br label %cxgb4_matchall_egress_validate.exit.thread

cxgb4_matchall_egress_validate.exit.thread:       ; preds = %cleanup.sink.split.i, %do.body89.i.cxgb4_matchall_egress_validate.exit.thread_crit_edge, %do.body67.i.cxgb4_matchall_egress_validate.exit.thread_crit_edge, %do.body58.i.cxgb4_matchall_egress_validate.exit.thread_crit_edge, %do.body45.i.cxgb4_matchall_egress_validate.exit.thread_crit_edge, %do.body32.i.cxgb4_matchall_egress_validate.exit.thread_crit_edge, %do.body18.i.cxgb4_matchall_egress_validate.exit.thread_crit_edge, %do.body7.i.cxgb4_matchall_egress_validate.exit.thread_crit_edge, %do.body.i.cxgb4_matchall_egress_validate.exit.thread_crit_edge
  %retval.0.i55.ph = phi i32 [ %retval.0.ph.i, %cleanup.sink.split.i ], [ -16, %do.body89.i.cxgb4_matchall_egress_validate.exit.thread_crit_edge ], [ -95, %do.body67.i.cxgb4_matchall_egress_validate.exit.thread_crit_edge ], [ -34, %do.body58.i.cxgb4_matchall_egress_validate.exit.thread_crit_edge ], [ -95, %do.body45.i.cxgb4_matchall_egress_validate.exit.thread_crit_edge ], [ -22, %do.body32.i.cxgb4_matchall_egress_validate.exit.thread_crit_edge ], [ -22, %do.body18.i.cxgb4_matchall_egress_validate.exit.thread_crit_edge ], [ -22, %do.body7.i.cxgb4_matchall_egress_validate.exit.thread_crit_edge ], [ -22, %do.body.i.cxgb4_matchall_egress_validate.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %speed.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %qe.i) #6
  br label %cleanup

if.end29:                                         ; preds = %for.inc98.i.if.end29_crit_edge, %for.cond77.preheader.i.if.end29_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %speed.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %qe.i) #6
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %p.i) #6
  %154 = call ptr @memset(ptr %p.i, i32 255, i32 28)
  %155 = ptrtoint ptr %p.i to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 0, ptr %p.i, align 4
  %u.i56 = getelementptr inbounds %struct.ch_sched_params, ptr %p.i, i32 0, i32 1
  %156 = ptrtoint ptr %u.i56 to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 2, ptr %u.i56, align 4
  %mode.i = getelementptr inbounds %struct.ch_sched_params, ptr %p.i, i32 0, i32 1, i32 0, i32 1
  %157 = ptrtoint ptr %mode.i to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 0, ptr %mode.i, align 1
  %rateunit.i = getelementptr inbounds %struct.ch_sched_params, ptr %p.i, i32 0, i32 1, i32 0, i32 2
  %158 = ptrtoint ptr %rateunit.i to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 0, ptr %rateunit.i, align 2
  %ratemode.i = getelementptr inbounds %struct.ch_sched_params, ptr %p.i, i32 0, i32 1, i32 0, i32 3
  %159 = ptrtoint ptr %ratemode.i to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 1, ptr %ratemode.i, align 1
  %channel.i = getelementptr inbounds %struct.ch_sched_params, ptr %p.i, i32 0, i32 1, i32 0, i32 4
  %minrate.i = getelementptr inbounds %struct.ch_sched_params, ptr %p.i, i32 0, i32 1, i32 0, i32 6
  %160 = ptrtoint ptr %minrate.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 0, ptr %minrate.i, align 4
  %maxrate.i = getelementptr inbounds %struct.ch_sched_params, ptr %p.i, i32 0, i32 1, i32 0, i32 7
  %weight.i = getelementptr inbounds %struct.ch_sched_params, ptr %p.i, i32 0, i32 1, i32 0, i32 8
  %161 = ptrtoint ptr %weight.i to i32
  call void @__asan_store2_noabort(i32 %161)
  store i16 0, ptr %weight.i, align 4
  %pktsize.i = getelementptr inbounds %struct.ch_sched_params, ptr %p.i, i32 0, i32 1, i32 0, i32 9
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %162 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %mtu.i, align 4
  %conv.i57 = trunc i32 %163 to i16
  %164 = ptrtoint ptr %pktsize.i to i32
  call void @__asan_store2_noabort(i32 %164)
  store i16 %conv.i57, ptr %pktsize.i, align 2
  %burstsize.i = getelementptr inbounds %struct.ch_sched_params, ptr %p.i, i32 0, i32 1, i32 0, i32 10
  %165 = ptrtoint ptr %burstsize.i to i32
  call void @__asan_store2_noabort(i32 %165)
  store i16 0, ptr %burstsize.i, align 4
  %166 = ptrtoint ptr %extack1 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %extack1, align 4
  %168 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %add.ptr.i.i, align 8
  %tc_matchall.i60 = getelementptr inbounds %struct.adapter, ptr %169, i32 0, i32 87
  %170 = ptrtoint ptr %tc_matchall.i60 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %tc_matchall.i60, align 32
  %172 = ptrtoint ptr %171 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %171, align 4
  %174 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %port_id, align 1
  %idxprom.i62 = zext i8 %175 to i32
  %arrayidx.i = getelementptr %struct.cxgb4_tc_port_matchall, ptr %173, i32 %idxprom.i62
  %176 = ptrtoint ptr %rule.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %rule.i, align 4
  %entries.i64 = getelementptr inbounds %struct.flow_rule, ptr %177, i32 1
  %action6.i = getelementptr inbounds %struct.flow_rule, ptr %177, i32 0, i32 1
  %178 = ptrtoint ptr %action6.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %action6.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %179)
  %cmp96.not.i = icmp eq i32 %179, 0
  br i1 %cmp96.not.i, label %if.end29.for.end.i_crit_edge, label %for.body.preheader.i

if.end29.for.end.i_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.preheader.i:                             ; preds = %if.end29
  %180 = mul i32 %179, 72
  %181 = add i32 %180, 24
  %uglygep.i = getelementptr i8, ptr %177, i32 %181
  br label %for.body.i65

for.body.i65:                                     ; preds = %for.inc.i68.for.body.i65_crit_edge, %for.body.preheader.i
  %i.098.i = phi i32 [ %inc.i66, %for.inc.i68.for.body.i65_crit_edge ], [ 0, %for.body.preheader.i ]
  %entry3.097.i = phi ptr [ %arrayidx13.i, %for.inc.i68.for.body.i65_crit_edge ], [ %entries.i64, %for.body.preheader.i ]
  %182 = ptrtoint ptr %entry3.097.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %entry3.097.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %183)
  %cmp8.i = icmp eq i32 %183, 22
  br i1 %cmp8.i, label %for.body.i65.for.end.i_crit_edge, label %for.inc.i68

for.body.i65.for.end.i_crit_edge:                 ; preds = %for.body.i65
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.inc.i68:                                      ; preds = %for.body.i65
  %inc.i66 = add nuw i32 %i.098.i, 1
  %arrayidx13.i = getelementptr [0 x %struct.flow_action_entry], ptr %entries.i64, i32 0, i32 %inc.i66
  %exitcond.not.i67 = icmp eq i32 %inc.i66, %179
  br i1 %exitcond.not.i67, label %for.inc.i68.for.end.i_crit_edge, label %for.inc.i68.for.body.i65_crit_edge

for.inc.i68.for.body.i65_crit_edge:               ; preds = %for.inc.i68
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i65

for.inc.i68.for.end.i_crit_edge:                  ; preds = %for.inc.i68
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i68.for.end.i_crit_edge, %for.body.i65.for.end.i_crit_edge, %if.end29.for.end.i_crit_edge
  %entry3.0.lcssa.i = phi ptr [ %entries.i64, %if.end29.for.end.i_crit_edge ], [ %uglygep.i, %for.inc.i68.for.end.i_crit_edge ], [ %entry3.097.i, %for.body.i65.for.end.i_crit_edge ]
  %rate_pkt_ps.i69 = getelementptr inbounds %struct.flow_action_entry, ptr %entry3.0.lcssa.i, i32 0, i32 5, i32 0, i32 3
  %184 = ptrtoint ptr %rate_pkt_ps.i69 to i32
  call void @__asan_load8_noabort(i32 %184)
  %185 = load i64, ptr %rate_pkt_ps.i69, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %185)
  %tobool.not.i70 = icmp eq i64 %185, 0
  br i1 %tobool.not.i70, label %if.end18.i, label %do.body.i71

do.body.i71:                                      ; preds = %for.end.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @cxgb4_matchall_alloc_tc.__msg) #6
  %tobool15.not.i = icmp eq ptr %167, null
  br i1 %tobool15.not.i, label %do.body.i71.cxgb4_matchall_alloc_tc.exit_crit_edge, label %if.then16.i

do.body.i71.cxgb4_matchall_alloc_tc.exit_crit_edge: ; preds = %do.body.i71
  call void @__sanitizer_cov_trace_pc() #8
  br label %cxgb4_matchall_alloc_tc.exit

if.then16.i:                                      ; preds = %do.body.i71
  call void @__sanitizer_cov_trace_pc() #8
  %186 = ptrtoint ptr %167 to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr @cxgb4_matchall_alloc_tc.__msg, ptr %167, align 4
  br label %cxgb4_matchall_alloc_tc.exit

if.end18.i:                                       ; preds = %for.end.i
  %rate_bytes_ps.i72 = getelementptr inbounds %struct.flow_action_entry, ptr %entry3.0.lcssa.i, i32 0, i32 5, i32 0, i32 1
  %187 = ptrtoint ptr %rate_bytes_ps.i72 to i32
  call void @__asan_load8_noabort(i32 %187)
  %188 = load i64, ptr %rate_bytes_ps.i72, align 8
  %mul.i = shl i64 %188, 3
  %189 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %mul.i, i32 0) #9, !srcloc !43
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %189, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %189, 1
  %190 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %mul.i, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #9, !srcloc !44
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %190, 0
  %div1581.i.i.i = lshr i64 %asmresult10.i.i.i.i, 9
  %conv20.i = trunc i64 %div1581.i.i.i to i32
  %191 = ptrtoint ptr %maxrate.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 %conv20.i, ptr %maxrate.i, align 4
  %tx_chan.i = getelementptr i8, ptr %dev, i32 2326
  %192 = ptrtoint ptr %tx_chan.i to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %tx_chan.i, align 2
  %194 = ptrtoint ptr %channel.i to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 %193, ptr %channel.i, align 4
  %call25.i = call ptr @cxgb4_sched_class_alloc(ptr noundef %dev, ptr noundef nonnull %p.i) #6
  %tobool26.not.i = icmp eq ptr %call25.i, null
  br i1 %tobool26.not.i, label %do.body28.i, label %if.end36.i

do.body28.i:                                      ; preds = %if.end18.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @cxgb4_matchall_alloc_tc.__msg.9) #6
  %tobool30.not.i73 = icmp eq ptr %167, null
  br i1 %tobool30.not.i73, label %do.body28.i.cxgb4_matchall_alloc_tc.exit_crit_edge, label %if.then31.i

do.body28.i.cxgb4_matchall_alloc_tc.exit_crit_edge: ; preds = %do.body28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cxgb4_matchall_alloc_tc.exit

if.then31.i:                                      ; preds = %do.body28.i
  call void @__sanitizer_cov_trace_pc() #8
  %195 = ptrtoint ptr %167 to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr @cxgb4_matchall_alloc_tc.__msg.9, ptr %167, align 4
  br label %cxgb4_matchall_alloc_tc.exit

if.end36.i:                                       ; preds = %if.end18.i
  %idx.i = getelementptr inbounds %struct.sched_class, ptr %call25.i, i32 0, i32 1
  %196 = ptrtoint ptr %idx.i to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %idx.i, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %qe.i.i) #6
  %198 = getelementptr inbounds %struct.ch_sched_queue, ptr %qe.i.i, i32 0, i32 1
  %199 = ptrtoint ptr %nqsets.i to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %nqsets.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %200)
  %cmp23.not.i.i = icmp eq i8 %200, 0
  br i1 %cmp23.not.i.i, label %if.end36.i.cxgb4_matchall_tc_bind_queues.exit.thread.i_crit_edge, label %if.end36.i.for.body.i.i75_crit_edge

if.end36.i.for.body.i.i75_crit_edge:              ; preds = %if.end36.i
  br label %for.body.i.i75

if.end36.i.cxgb4_matchall_tc_bind_queues.exit.thread.i_crit_edge: ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cxgb4_matchall_tc_bind_queues.exit.thread.i

for.body.i.i75:                                   ; preds = %for.inc.i.i78.for.body.i.i75_crit_edge, %if.end36.i.for.body.i.i75_crit_edge
  %i.024.i.i = phi i32 [ %inc.i.i76, %for.inc.i.i78.for.body.i.i75_crit_edge ], [ 0, %if.end36.i.for.body.i.i75_crit_edge ]
  %conv2.i.i = trunc i32 %i.024.i.i to i8
  %201 = ptrtoint ptr %qe.i.i to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 %conv2.i.i, ptr %qe.i.i, align 1
  %202 = ptrtoint ptr %198 to i32
  call void @__asan_store1_noabort(i32 %202)
  store i8 %197, ptr %198, align 1
  %call4.i.i = call i32 @cxgb4_sched_class_bind(ptr noundef %dev, ptr noundef nonnull %qe.i.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool.not.i.i74 = icmp eq i32 %call4.i.i, 0
  br i1 %tobool.not.i.i74, label %for.inc.i.i78, label %while.cond.preheader.i.i

while.cond.preheader.i.i:                         ; preds = %for.body.i.i75
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.024.i.i)
  %tobool5.not25.i.i = icmp eq i32 %i.024.i.i, 0
  br i1 %tobool5.not25.i.i, label %cxgb4_matchall_tc_bind_queues.exit.thread90.i, label %while.cond.preheader.i.i.while.body.i.i_crit_edge

while.cond.preheader.i.i.while.body.i.i_crit_edge: ; preds = %while.cond.preheader.i.i
  br label %while.body.i.i

cxgb4_matchall_tc_bind_queues.exit.thread90.i:    ; preds = %while.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %qe.i.i) #6
  br label %do.body41.i

for.inc.i.i78:                                    ; preds = %for.body.i.i75
  %inc.i.i76 = add nuw nsw i32 %i.024.i.i, 1
  %203 = ptrtoint ptr %nqsets.i to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %nqsets.i, align 8
  %conv.i.i = zext i8 %204 to i32
  %cmp.i.i77 = icmp ult i32 %inc.i.i76, %conv.i.i
  br i1 %cmp.i.i77, label %for.inc.i.i78.for.body.i.i75_crit_edge, label %for.inc.i.i78.cxgb4_matchall_tc_bind_queues.exit.thread.i_crit_edge

for.inc.i.i78.cxgb4_matchall_tc_bind_queues.exit.thread.i_crit_edge: ; preds = %for.inc.i.i78
  call void @__sanitizer_cov_trace_pc() #8
  br label %cxgb4_matchall_tc_bind_queues.exit.thread.i

for.inc.i.i78.for.body.i.i75_crit_edge:           ; preds = %for.inc.i.i78
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i75

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.cond.preheader.i.i.while.body.i.i_crit_edge
  %i.126.i.i = phi i32 [ %dec.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %i.024.i.i, %while.cond.preheader.i.i.while.body.i.i_crit_edge ]
  %dec.i.i = add nsw i32 %i.126.i.i, -1
  %conv6.i.i = trunc i32 %dec.i.i to i8
  %205 = ptrtoint ptr %qe.i.i to i32
  call void @__asan_store1_noabort(i32 %205)
  store i8 %conv6.i.i, ptr %qe.i.i, align 1
  %206 = ptrtoint ptr %198 to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 -1, ptr %198, align 1
  %call9.i.i = call i32 @cxgb4_sched_class_unbind(ptr noundef %dev, ptr noundef nonnull %qe.i.i, i32 noundef 0) #6
  %tobool5.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool5.not.i.i, label %cxgb4_matchall_tc_bind_queues.exit.i, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.i

cxgb4_matchall_tc_bind_queues.exit.thread.i:      ; preds = %for.inc.i.i78.cxgb4_matchall_tc_bind_queues.exit.thread.i_crit_edge, %if.end36.i.cxgb4_matchall_tc_bind_queues.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %qe.i.i) #6
  %207 = ptrtoint ptr %idx.i to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %idx.i, align 1
  %hwtc.i = getelementptr inbounds %struct.cxgb4_matchall_egress_entry, ptr %arrayidx.i, i32 0, i32 1
  %209 = ptrtoint ptr %hwtc.i to i32
  call void @__asan_store1_noabort(i32 %209)
  store i8 %208, ptr %hwtc.i, align 4
  %cookie.i = getelementptr inbounds %struct.tc_cls_matchall_offload, ptr %cls_matchall, i32 0, i32 4
  %210 = ptrtoint ptr %cookie.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %cookie.i, align 8
  %conv51.i = zext i32 %211 to i64
  %cookie53.i = getelementptr inbounds %struct.cxgb4_matchall_egress_entry, ptr %arrayidx.i, i32 0, i32 2
  %212 = ptrtoint ptr %cookie53.i to i32
  call void @__asan_store8_noabort(i32 %212)
  store i64 %conv51.i, ptr %cookie53.i, align 8
  %213 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 1, ptr %arrayidx.i, align 8
  br label %cxgb4_matchall_alloc_tc.exit

cxgb4_matchall_tc_bind_queues.exit.i:             ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %qe.i.i) #6
  br label %do.body41.i

do.body41.i:                                      ; preds = %cxgb4_matchall_tc_bind_queues.exit.i, %cxgb4_matchall_tc_bind_queues.exit.thread90.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @cxgb4_matchall_alloc_tc.__msg.10) #6
  %tobool43.not.i79 = icmp eq ptr %167, null
  br i1 %tobool43.not.i79, label %do.body41.i.if.end46.i_crit_edge, label %if.then44.i

do.body41.i.if.end46.i_crit_edge:                 ; preds = %do.body41.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46.i

if.then44.i:                                      ; preds = %do.body41.i
  call void @__sanitizer_cov_trace_pc() #8
  %214 = ptrtoint ptr %167 to i32
  call void @__asan_store4_noabort(i32 %214)
  store ptr @cxgb4_matchall_alloc_tc.__msg.10, ptr %167, align 4
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.then44.i, %do.body41.i.if.end46.i_crit_edge
  %215 = ptrtoint ptr %idx.i to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %idx.i, align 1
  call void @cxgb4_sched_class_free(ptr noundef %dev, i8 noundef zeroext %216) #6
  br label %cxgb4_matchall_alloc_tc.exit

cxgb4_matchall_alloc_tc.exit:                     ; preds = %if.end46.i, %cxgb4_matchall_tc_bind_queues.exit.thread.i, %if.then31.i, %do.body28.i.cxgb4_matchall_alloc_tc.exit_crit_edge, %if.then16.i, %do.body.i71.cxgb4_matchall_alloc_tc.exit_crit_edge
  %retval.0.i80 = phi i32 [ %call4.i.i, %if.end46.i ], [ 0, %cxgb4_matchall_tc_bind_queues.exit.thread.i ], [ -95, %if.then16.i ], [ -95, %do.body.i71.cxgb4_matchall_alloc_tc.exit_crit_edge ], [ -12, %if.then31.i ], [ -12, %do.body28.i.cxgb4_matchall_alloc_tc.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %p.i) #6
  br label %cleanup

cleanup:                                          ; preds = %cxgb4_matchall_alloc_tc.exit, %cxgb4_matchall_egress_validate.exit.thread, %if.then20, %do.body17.cleanup_crit_edge, %if.end.i50.i, %while.end.i.cleanup_crit_edge, %for.inc.1.i, %if.then10.i.i, %do.body.i.i.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.then6, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i80, %cxgb4_matchall_alloc_tc.exit ], [ -12, %if.then6 ], [ -12, %do.body.cleanup_crit_edge ], [ %call8, %if.end7.cleanup_crit_edge ], [ -12, %if.then20 ], [ -12, %do.body17.cleanup_crit_edge ], [ 0, %for.inc.1.i ], [ %retval.0.i3771.i, %while.end.i.cleanup_crit_edge ], [ %retval.0.i3771.i, %if.end.i50.i ], [ %call7.i.i, %if.then10.i.i ], [ %call7.i.i, %do.body.i.i.cleanup_crit_edge ], [ %retval.0.i55.ph, %cxgb4_matchall_egress_validate.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgb4_validate_flow_actions(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxgb4_tc_matchall_destroy(ptr noundef %dev, ptr nocapture noundef readonly %cls_matchall, i1 noundef zeroext %ingress) local_unnamed_addr #0 align 64 {
entry:
  %qe.i.i = alloca %struct.ch_sched_queue, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 8
  %tc_matchall = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %tc_matchall to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tc_matchall, align 32
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %port_id = getelementptr i8, ptr %dev, i32 2325
  %6 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %port_id, align 1
  %idxprom = zext i8 %7 to i32
  %cookie = getelementptr inbounds %struct.tc_cls_matchall_offload, ptr %cls_matchall, i32 0, i32 4
  %8 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cookie, align 8
  %conv = zext i32 %9 to i64
  br i1 %ingress, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  %tc_cookie = getelementptr %struct.cxgb4_tc_port_matchall, ptr %5, i32 %idxprom, i32 1, i32 2, i32 0, i32 9
  %10 = ptrtoint ptr %tc_cookie to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %tc_cookie, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %conv)
  %cmp.not = icmp eq i64 %11, %conv
  br i1 %cmp.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call6 = tail call fastcc i32 @cxgb4_matchall_free_filter(ptr noundef %dev)
  br label %cleanup

if.end7:                                          ; preds = %entry
  %cookie10 = getelementptr %struct.cxgb4_tc_port_matchall, ptr %5, i32 %idxprom, i32 0, i32 2
  %12 = ptrtoint ptr %cookie10 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %cookie10, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %conv)
  %cmp11.not = icmp eq i64 %13, %conv
  br i1 %cmp11.not, label %if.end14, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14:                                         ; preds = %if.end7
  %14 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %port_id, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %qe.i.i) #6
  %16 = getelementptr inbounds %struct.ch_sched_queue, ptr %qe.i.i, i32 0, i32 1
  %nqsets.i.i = getelementptr i8, ptr %dev, i32 2328
  %17 = ptrtoint ptr %nqsets.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %nqsets.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp8.not.i.i = icmp eq i8 %18, 0
  br i1 %cmp8.not.i.i, label %if.end14.cxgb4_matchall_free_tc.exit_crit_edge, label %if.end14.for.body.i.i_crit_edge

if.end14.for.body.i.i_crit_edge:                  ; preds = %if.end14
  br label %for.body.i.i

if.end14.cxgb4_matchall_free_tc.exit_crit_edge:   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cxgb4_matchall_free_tc.exit

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end14.for.body.i.i_crit_edge
  %i.09.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end14.for.body.i.i_crit_edge ]
  %conv2.i.i = trunc i32 %i.09.i.i to i8
  %19 = ptrtoint ptr %qe.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv2.i.i, ptr %qe.i.i, align 1
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -1, ptr %16, align 1
  %call3.i.i = call i32 @cxgb4_sched_class_unbind(ptr noundef %dev, ptr noundef nonnull %qe.i.i, i32 noundef 0) #6
  %inc.i.i = add nuw nsw i32 %i.09.i.i, 1
  %21 = ptrtoint ptr %nqsets.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %nqsets.i.i, align 8
  %conv.i.i = zext i8 %22 to i32
  %cmp.i.i = icmp ult i32 %inc.i.i, %conv.i.i
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.cxgb4_matchall_free_tc.exit_crit_edge

for.body.i.i.cxgb4_matchall_free_tc.exit_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cxgb4_matchall_free_tc.exit

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

cxgb4_matchall_free_tc.exit:                      ; preds = %for.body.i.i.cxgb4_matchall_free_tc.exit_crit_edge, %if.end14.cxgb4_matchall_free_tc.exit_crit_edge
  %idxprom.i = zext i8 %15 to i32
  %arrayidx.i = getelementptr %struct.cxgb4_tc_port_matchall, ptr %5, i32 %idxprom.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %qe.i.i) #6
  %hwtc.i = getelementptr inbounds %struct.cxgb4_matchall_egress_entry, ptr %arrayidx.i, i32 0, i32 1
  %23 = ptrtoint ptr %hwtc.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %hwtc.i, align 4
  call void @cxgb4_sched_class_free(ptr noundef %dev, i8 noundef zeroext %24) #6
  %25 = ptrtoint ptr %hwtc.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 -1, ptr %hwtc.i, align 4
  %cookie.i = getelementptr inbounds %struct.cxgb4_matchall_egress_entry, ptr %arrayidx.i, i32 0, i32 2
  %26 = ptrtoint ptr %cookie.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 0, ptr %cookie.i, align 8
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %arrayidx.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %cxgb4_matchall_free_tc.exit, %if.end7.cleanup_crit_edge, %if.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end ], [ 0, %cxgb4_matchall_free_tc.exit ], [ -2, %if.then.cleanup_crit_edge ], [ -2, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cxgb4_matchall_free_filter(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 8
  %tc_matchall = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %tc_matchall to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tc_matchall, align 32
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %port_id = getelementptr i8, ptr %dev, i32 2325
  %6 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %port_id, align 1
  %idxprom = zext i8 %7 to i32
  %arrayidx3.i = getelementptr %struct.cxgb4_tc_port_matchall, ptr %5, i32 %idxprom, i32 1, i32 1, i32 0
  %8 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx3.i, align 4
  %arrayidx6.i = getelementptr %struct.cxgb4_tc_port_matchall, ptr %5, i32 %idxprom, i32 1, i32 2, i32 0
  %call7.i = tail call i32 @cxgb4_del_filter(ptr noundef %dev, i32 noundef %9, ptr noundef %arrayidx6.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool.not.i, label %for.inc, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc:                                          ; preds = %entry
  %10 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %arrayidx3.i, align 4
  %11 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr.i.i, align 8
  %tc_matchall.i.1 = getelementptr inbounds %struct.adapter, ptr %12, i32 0, i32 87
  %13 = ptrtoint ptr %tc_matchall.i.1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tc_matchall.i.1, align 32
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %17 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %port_id, align 1
  %idxprom.i.1 = zext i8 %18 to i32
  %arrayidx3.i.1 = getelementptr %struct.cxgb4_tc_port_matchall, ptr %16, i32 %idxprom.i.1, i32 1, i32 1, i32 1
  %19 = ptrtoint ptr %arrayidx3.i.1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx3.i.1, align 4
  %arrayidx6.i.1 = getelementptr %struct.cxgb4_tc_port_matchall, ptr %16, i32 %idxprom.i.1, i32 1, i32 2, i32 1
  %call7.i.1 = tail call i32 @cxgb4_del_filter(ptr noundef %dev, i32 noundef %20, ptr noundef %arrayidx6.i.1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.1)
  %tobool.not.i.1 = icmp eq i32 %call7.i.1, 0
  br i1 %tobool.not.i.1, label %for.inc.1, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.1:                                        ; preds = %for.inc
  %21 = ptrtoint ptr %arrayidx3.i.1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %arrayidx3.i.1, align 4
  %22 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr.i.i, align 8
  %tc_matchall.i22 = getelementptr inbounds %struct.adapter, ptr %23, i32 0, i32 87
  %24 = ptrtoint ptr %tc_matchall.i22 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tc_matchall.i22, align 32
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %28 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %port_id, align 1
  %idxprom.i24 = zext i8 %29 to i32
  %viid_mirror.i = getelementptr %struct.cxgb4_tc_port_matchall, ptr %27, i32 %idxprom.i24, i32 1, i32 3
  %30 = ptrtoint ptr %viid_mirror.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %viid_mirror.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool.not.i25 = icmp eq i16 %31, 0
  br i1 %tobool.not.i25, label %for.inc.1.cxgb4_matchall_mirror_free.exit_crit_edge, label %if.end.i26

for.inc.1.cxgb4_matchall_mirror_free.exit_crit_edge: ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cxgb4_matchall_mirror_free.exit

if.end.i26:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @cxgb4_port_mirror_free(ptr noundef %dev) #6
  %32 = ptrtoint ptr %viid_mirror.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %viid_mirror.i, align 8
  br label %cxgb4_matchall_mirror_free.exit

cxgb4_matchall_mirror_free.exit:                  ; preds = %if.end.i26, %for.inc.1.cxgb4_matchall_mirror_free.exit_crit_edge
  %ingress = getelementptr %struct.cxgb4_tc_port_matchall, ptr %5, i32 %idxprom, i32 1
  %bytes = getelementptr %struct.cxgb4_tc_port_matchall, ptr %5, i32 %idxprom, i32 1, i32 4
  %33 = ptrtoint ptr %ingress to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %ingress, align 8
  %34 = call ptr @memset(ptr %bytes, i32 0, i32 24)
  br label %cleanup

cleanup:                                          ; preds = %cxgb4_matchall_mirror_free.exit, %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %cxgb4_matchall_mirror_free.exit ], [ %call7.i, %entry.cleanup_crit_edge ], [ %call7.i.1, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxgb4_tc_matchall_stats(ptr noundef %dev, ptr nocapture noundef %cls_matchall) local_unnamed_addr #0 align 64 {
entry:
  %tmp_packets = alloca i64, align 8
  %tmp_bytes = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp_packets) #6
  %0 = ptrtoint ptr %tmp_packets to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %tmp_packets, align 8, !annotation !41
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp_bytes) #6
  %1 = ptrtoint ptr %tmp_bytes to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %tmp_bytes, align 8, !annotation !41
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i.i, align 8
  %tc_matchall = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 87
  %4 = ptrtoint ptr %tc_matchall to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tc_matchall, align 32
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %port_id = getelementptr i8, ptr %dev, i32 2325
  %8 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %port_id, align 1
  %idxprom = zext i8 %9 to i32
  %ingress2 = getelementptr %struct.cxgb4_tc_port_matchall, ptr %7, i32 %idxprom, i32 1
  %10 = ptrtoint ptr %ingress2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ingress2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp = icmp eq i32 %11, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %arrayidx7 = getelementptr %struct.cxgb4_tc_port_matchall, ptr %7, i32 %idxprom, i32 1, i32 1, i32 0
  %12 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx7, align 4
  %arrayidx9 = getelementptr %struct.cxgb4_tc_port_matchall, ptr %7, i32 %idxprom, i32 1, i32 2, i32 0
  %14 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %bf.load = load i32, ptr %arrayidx9, align 8
  %15 = and i32 %bf.load, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool = icmp ne i32 %15, 0
  %call10 = call i32 @cxgb4_get_filter_counters(ptr noundef %dev, i32 noundef %13, ptr noundef nonnull %tmp_packets, ptr noundef nonnull %tmp_bytes, i1 noundef zeroext %tobool) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %for.body.preheader.cleanup_crit_edge

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13:                                         ; preds = %for.body.preheader
  %16 = ptrtoint ptr %tmp_packets to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %tmp_packets, align 8
  %18 = ptrtoint ptr %tmp_bytes to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %tmp_bytes, align 8
  %arrayidx7.1 = getelementptr %struct.cxgb4_tc_port_matchall, ptr %7, i32 %idxprom, i32 1, i32 1, i32 1
  %20 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx7.1, align 4
  %arrayidx9.1 = getelementptr %struct.cxgb4_tc_port_matchall, ptr %7, i32 %idxprom, i32 1, i32 2, i32 1
  %22 = ptrtoint ptr %arrayidx9.1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %bf.load.1 = load i32, ptr %arrayidx9.1, align 8
  %23 = and i32 %bf.load.1, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.1 = icmp ne i32 %23, 0
  %call10.1 = call i32 @cxgb4_get_filter_counters(ptr noundef %dev, i32 noundef %21, ptr noundef nonnull %tmp_packets, ptr noundef nonnull %tmp_bytes, i1 noundef zeroext %tobool.1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.1)
  %tobool11.not.1 = icmp eq i32 %call10.1, 0
  br i1 %tobool11.not.1, label %if.end13.1, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13.1:                                       ; preds = %if.end13
  %24 = ptrtoint ptr %tmp_packets to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %tmp_packets, align 8
  %add.1 = add i64 %25, %17
  %packets16 = getelementptr %struct.cxgb4_tc_port_matchall, ptr %7, i32 %idxprom, i32 1, i32 5
  %26 = ptrtoint ptr %packets16 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %packets16, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.1, i64 %27)
  %cmp17.not = icmp eq i64 %add.1, %27
  br i1 %cmp17.not, label %if.end13.1.cleanup_crit_edge, label %if.then19

if.end13.1.cleanup_crit_edge:                     ; preds = %if.end13.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then19:                                        ; preds = %if.end13.1
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %tmp_bytes to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %tmp_bytes, align 8
  %add14.1 = add i64 %29, %19
  %stats = getelementptr inbounds %struct.tc_cls_matchall_offload, ptr %cls_matchall, i32 0, i32 3
  %bytes21 = getelementptr %struct.cxgb4_tc_port_matchall, ptr %7, i32 %idxprom, i32 1, i32 4
  %30 = ptrtoint ptr %bytes21 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %bytes21, align 8
  %sub = sub i64 %add14.1, %31
  %sub24 = sub i64 %add.1, %27
  %last_used = getelementptr %struct.cxgb4_tc_port_matchall, ptr %7, i32 %idxprom, i32 1, i32 6
  %32 = ptrtoint ptr %last_used to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %last_used, align 8
  %34 = ptrtoint ptr %stats to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %stats, align 8
  %add.i = add i64 %sub24, %35
  store i64 %add.i, ptr %stats, align 8
  %bytes2.i = getelementptr inbounds %struct.tc_cls_matchall_offload, ptr %cls_matchall, i32 0, i32 3, i32 1
  %36 = ptrtoint ptr %bytes2.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %bytes2.i, align 8
  %add3.i = add i64 %sub, %37
  store i64 %add3.i, ptr %bytes2.i, align 8
  %lastused6.i = getelementptr inbounds %struct.tc_cls_matchall_offload, ptr %cls_matchall, i32 0, i32 3, i32 3
  %38 = ptrtoint ptr %lastused6.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %lastused6.i, align 8
  %40 = call i64 @llvm.umax.i64(i64 %39, i64 %33) #6
  %41 = ptrtoint ptr %lastused6.i to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %40, ptr %lastused6.i, align 8
  %used_hw_stats28.i = getelementptr inbounds %struct.tc_cls_matchall_offload, ptr %cls_matchall, i32 0, i32 3, i32 4
  %42 = ptrtoint ptr %used_hw_stats28.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %used_hw_stats28.i, align 8
  %or.i = or i32 %43, 1
  store i32 %or.i, ptr %used_hw_stats28.i, align 8
  %used_hw_stats_valid.i = getelementptr inbounds %struct.tc_cls_matchall_offload, ptr %cls_matchall, i32 0, i32 3, i32 5
  %44 = ptrtoint ptr %used_hw_stats_valid.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %used_hw_stats_valid.i, align 4
  %45 = ptrtoint ptr %packets16 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %add.1, ptr %packets16, align 8
  %46 = ptrtoint ptr %bytes21 to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %add14.1, ptr %bytes21, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %47 = load volatile i32, ptr @jiffies, align 128
  %conv30 = zext i32 %47 to i64
  %48 = ptrtoint ptr %last_used to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %conv30, ptr %last_used, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %if.end13.1.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %for.body.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %entry.cleanup_crit_edge ], [ 0, %if.then19 ], [ 0, %if.end13.1.cleanup_crit_edge ], [ %call10, %for.body.preheader.cleanup_crit_edge ], [ %call10.1, %if.end13.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp_bytes) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp_packets) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgb4_get_filter_counters(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxgb4_init_tc_matchall(ptr nocapture noundef %adap) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 4) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end7.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7.i.i:                                      ; preds = %entry
  %nports = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 15, i32 20
  %1 = ptrtoint ptr %nports to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %nports, align 4
  %conv = zext i8 %2 to i32
  %3 = mul nuw nsw i32 %conv, 464
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %3, i32 noundef 3520) #11
  %tobool2.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

if.end4:                                          ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call8.i.i, ptr %call7.i.i, align 8
  %tc_matchall5 = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 87
  %5 = ptrtoint ptr %tc_matchall5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %tc_matchall5, align 32
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -12, %if.then3 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cxgb4_cleanup_tc_matchall(ptr nocapture noundef readonly %adap) local_unnamed_addr #0 align 64 {
entry:
  %qe.i.i.i = alloca %struct.ch_sched_queue, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tc_matchall = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 87
  %0 = ptrtoint ptr %tc_matchall to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tc_matchall, align 32
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end12_crit_edge, label %if.then

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.then.if.end10_crit_edge, label %for.cond.preheader

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

for.cond.preheader:                               ; preds = %if.then
  %nports = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 15, i32 20
  %4 = ptrtoint ptr %nports to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %nports, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp22.not = icmp eq i8 %5, 0
  br i1 %cmp22.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %6 = getelementptr inbounds %struct.ch_sched_queue, ptr %qe.i.i.i, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.adapter, ptr %adap, i32 0, i32 23, i32 %indvars.iv
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %tobool6.not = icmp eq ptr %8, null
  br i1 %tobool6.not, label %for.body.if.end_crit_edge, label %if.then7

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then7:                                         ; preds = %for.body
  %add.ptr.i.i.i = getelementptr i8, ptr %8, i32 2304
  %9 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i.i.i, align 8
  %tc_matchall.i = getelementptr inbounds %struct.adapter, ptr %10, i32 0, i32 87
  %11 = ptrtoint ptr %tc_matchall.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tc_matchall.i, align 32
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %port_id.i = getelementptr i8, ptr %8, i32 2325
  %15 = ptrtoint ptr %port_id.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %port_id.i, align 1
  %idxprom.i = zext i8 %16 to i32
  %arrayidx.i = getelementptr %struct.cxgb4_tc_port_matchall, ptr %14, i32 %idxprom.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp.i = icmp eq i32 %18, 1
  br i1 %cmp.i, label %if.then.i, label %if.then7.if.end.i_crit_edge

if.then7.if.end.i_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %if.then7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %qe.i.i.i) #6
  %nqsets.i.i.i = getelementptr i8, ptr %8, i32 2328
  %19 = ptrtoint ptr %nqsets.i.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %nqsets.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp8.not.i.i.i = icmp eq i8 %20, 0
  br i1 %cmp8.not.i.i.i, label %if.then.i.cxgb4_matchall_free_tc.exit.i_crit_edge, label %if.then.i.for.body.i.i.i_crit_edge

if.then.i.for.body.i.i.i_crit_edge:               ; preds = %if.then.i
  br label %for.body.i.i.i

if.then.i.cxgb4_matchall_free_tc.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cxgb4_matchall_free_tc.exit.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %if.then.i.for.body.i.i.i_crit_edge
  %i.09.i.i.i = phi i32 [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.then.i.for.body.i.i.i_crit_edge ]
  %conv2.i.i.i = trunc i32 %i.09.i.i.i to i8
  %21 = ptrtoint ptr %qe.i.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv2.i.i.i, ptr %qe.i.i.i, align 1
  %22 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -1, ptr %6, align 1
  %call3.i.i.i = call i32 @cxgb4_sched_class_unbind(ptr noundef nonnull %8, ptr noundef nonnull %qe.i.i.i, i32 noundef 0) #6
  %inc.i.i.i = add nuw nsw i32 %i.09.i.i.i, 1
  %23 = ptrtoint ptr %nqsets.i.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %nqsets.i.i.i, align 8
  %conv.i.i.i = zext i8 %24 to i32
  %cmp.i.i.i = icmp ult i32 %inc.i.i.i, %conv.i.i.i
  br i1 %cmp.i.i.i, label %for.body.i.i.i.for.body.i.i.i_crit_edge, label %for.body.i.i.i.cxgb4_matchall_free_tc.exit.i_crit_edge

for.body.i.i.i.cxgb4_matchall_free_tc.exit.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cxgb4_matchall_free_tc.exit.i

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i.i

cxgb4_matchall_free_tc.exit.i:                    ; preds = %for.body.i.i.i.cxgb4_matchall_free_tc.exit.i_crit_edge, %if.then.i.cxgb4_matchall_free_tc.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %qe.i.i.i) #6
  %hwtc.i.i = getelementptr inbounds %struct.cxgb4_matchall_egress_entry, ptr %arrayidx.i, i32 0, i32 1
  %25 = ptrtoint ptr %hwtc.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %hwtc.i.i, align 4
  call void @cxgb4_sched_class_free(ptr noundef nonnull %8, i8 noundef zeroext %26) #6
  %27 = ptrtoint ptr %hwtc.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -1, ptr %hwtc.i.i, align 4
  %cookie.i.i = getelementptr inbounds %struct.cxgb4_matchall_egress_entry, ptr %arrayidx.i, i32 0, i32 2
  %28 = ptrtoint ptr %cookie.i.i to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 0, ptr %cookie.i.i, align 8
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %arrayidx.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %cxgb4_matchall_free_tc.exit.i, %if.then7.if.end.i_crit_edge
  %ingress.i = getelementptr %struct.cxgb4_tc_port_matchall, ptr %14, i32 %idxprom.i, i32 1
  %30 = ptrtoint ptr %ingress.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ingress.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %cmp3.i = icmp eq i32 %31, 1
  br i1 %cmp3.i, label %if.then4.i, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call5.i = call fastcc i32 @cxgb4_matchall_free_filter(ptr noundef nonnull %8) #6
  br label %if.end

if.end:                                           ; preds = %if.then4.i, %if.end.i.if.end_crit_edge, %for.body.if.end_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %32 = ptrtoint ptr %nports to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %nports, align 4
  %34 = zext i8 %33 to i32
  %cmp = icmp ult i32 %indvars.iv.next, %34
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %35 = ptrtoint ptr %tc_matchall to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %tc_matchall, align 32
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  call void @kfree(ptr noundef %38) #6
  br label %if.end10

if.end10:                                         ; preds = %for.end, %if.then.if.end10_crit_edge
  %39 = ptrtoint ptr %tc_matchall to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tc_matchall, align 32
  call void @kfree(ptr noundef %40) #6
  br label %if.end12

if.end12:                                         ; preds = %if.end10, %entry.if.end12_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgb4_port_mirror_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgb4_get_free_ftid(ptr noundef, i8 noundef zeroext, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgb4_process_flow_actions(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgb4_set_filter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgb4_del_filter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgb4_port_mirror_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4_get_link_params(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cxgb4_sched_queue_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cxgb4_sched_class_alloc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgb4_sched_class_free(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgb4_sched_class_bind(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgb4_sched_class_unbind(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind readnone }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @cxgb4_tc_matchall_replace.__msg, !1, !"__msg", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_tc_matchall.c", i32 378, i32 4}
!2 = !{ptr @cxgb4_tc_matchall_replace.__msg.1, !3, !"__msg", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_tc_matchall.c", i32 393, i32 3}
!4 = !{ptr @cxgb4_matchall_mirror_alloc.__msg, !5, !"__msg", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_tc_matchall.c", i32 216, i32 5}
!6 = !{ptr @cxgb4_matchall_add_filter.__msg, !7, !"__msg", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_tc_matchall.c", i32 278, i32 3}
!8 = !{ptr @cxgb4_matchall_egress_validate.__msg, !9, !"__msg", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_tc_matchall.c", i32 25, i32 3}
!10 = !{ptr @cxgb4_matchall_egress_validate.__msg.2, !11, !"__msg", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_tc_matchall.c", i32 29, i32 3}
!12 = !{ptr @cxgb4_matchall_egress_validate.__msg.3, !13, !"__msg", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_tc_matchall.c", i32 33, i32 3}
!14 = !{ptr @cxgb4_matchall_egress_validate.__msg.4, !15, !"__msg", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_tc_matchall.c", i32 40, i32 3}
!16 = !{ptr @cxgb4_matchall_egress_validate.__msg.5, !17, !"__msg", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_tc_matchall.c", i32 52, i32 5}
!18 = !{ptr @cxgb4_matchall_egress_validate.__msg.6, !19, !"__msg", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_tc_matchall.c", i32 58, i32 5}
!20 = !{ptr @cxgb4_matchall_egress_validate.__msg.7, !21, !"__msg", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_tc_matchall.c", i32 64, i32 4}
!22 = !{ptr @cxgb4_matchall_egress_validate.__msg.8, !23, !"__msg", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_tc_matchall.c", i32 76, i32 4}
!24 = !{ptr @cxgb4_matchall_alloc_tc.__msg, !25, !"__msg", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_tc_matchall.c", i32 154, i32 3}
!26 = !{ptr @cxgb4_matchall_alloc_tc.__msg.9, !27, !"__msg", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_tc_matchall.c", i32 163, i32 3}
!28 = !{ptr @cxgb4_matchall_alloc_tc.__msg.10, !29, !"__msg", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_tc_matchall.c", i32 170, i32 3}
!30 = distinct !{null, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../include/net/flow_offload.h", i32 418, i32 2}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!41 = !{!"auto-init"}
!42 = !{i8 0, i8 2}
!43 = !{i64 1297032, i64 1297059, i64 1297081, i64 1297109}
!44 = !{i64 1297440, i64 1297467, i64 1297500, i64 1297521, i64 1297548, i64 1297574}
