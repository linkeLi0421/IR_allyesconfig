; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/aquantia/atlantic/aq_filters.c_pt.bc'
source_filename = "../drivers/net/ethernet/aquantia/atlantic/aq_filters.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.aq_nic_s = type { %struct.atomic_t, i32, [8 x ptr], [32 x ptr], ptr, ptr, i32, i32, i32, i8, ptr, ptr, %struct.aq_nic_cfg_s, %struct.timer_list, %struct.work_struct, %struct.timer_list, %struct.aq_hw_link_status_s, %struct.anon.122, [128 x i32], ptr, i32, i32, %struct.mutex, ptr, ptr, %struct.aq_hw_rx_fltrs_s }
%struct.atomic_t = type { i32 }
%struct.aq_nic_cfg_s = type { ptr, i64, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, %struct.aq_fc_info, i32, i32, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, [8 x i8], [8 x i32], i32, [8 x i32], %struct.aq_rss_parameters, i32 }
%struct.aq_fc_info = type { i32, i32 }
%struct.aq_rss_parameters = type { i16, i16, i16, [10 x i32], [64 x i8] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.aq_hw_link_status_s = type { i32, i8, i32, i32 }
%struct.anon.122 = type { i32, [32 x [6 x i8]] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.29 }
%union.anon.29 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.aq_hw_rx_fltrs_s = type { %struct.hlist_head, i16, %struct.aq_hw_rx_fl2, %struct.aq_hw_rx_fl3l4, i8 }
%struct.hlist_head = type { ptr }
%struct.aq_hw_rx_fl2 = type { [16 x %struct.aq_rx_filter_vlan] }
%struct.aq_rx_filter_vlan = type { i8, i8, i16, i8 }
%struct.aq_hw_rx_fl3l4 = type { i8, i8, i8, i8 }
%struct.aq_rx_filter = type { %struct.hlist_node, i32, %struct.ethtool_rx_flow_spec }
%struct.ethtool_rx_flow_spec = type { i32, %union.ethtool_flow_union, %struct.ethtool_flow_ext, %union.ethtool_flow_union, %struct.ethtool_flow_ext, i64, i32 }
%union.ethtool_flow_union = type { %struct.ethtool_tcpip6_spec, [12 x i8] }
%struct.ethtool_tcpip6_spec = type { [4 x i32], [4 x i32], i16, i16, i8 }
%struct.ethtool_flow_ext = type { [2 x i8], [6 x i8], i16, i16, [2 x i32] }
%struct.ethtool_rxnfc = type { i32, i32, i64, %struct.ethtool_rx_flow_spec, %union.anon.119, [0 x i32] }
%union.anon.119 = type { i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.3, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.121, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.3 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon.28 }
%union.anon.28 = type { %struct.raw_spinlock }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.121 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.ethtool_usrip4_spec = type { i32, i32, i32, i8, i8, i8 }
%struct.ethtool_usrip6_spec = type { [4 x i32], [4 x i32], i32, i8, i8 }
%struct.aq_rx_filter_l3l4 = type { i32, i8, [4 x i32], [4 x i32], i16, i16, i8 }
%struct.aq_rx_filter_l2 = type { i8, i8, i8, i8, i16 }
%struct.aq_hw_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_tcpip4_spec = type { i32, i32, i16, i16, i8 }

@.str = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"ethtool: The specified number %u rule is invalid\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"ethtool: The specified action is invalid.\0AMaximum allowable value action is %u.\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"ethtool: invalid vlan mask 0x%x specified\00", [54 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"ethtool: unknown flow-type specified\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"ethtool: location must be in range [%d, %d]\00", [52 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ethtool: unknown vlan-id specified\00", [61 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"ethtool: queue number must be in range [0, %d]\00", [49 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"ethtool: proto (ether_type) parameter must be specified\00", [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"ethtool: mixing ipv4 and ipv6 is not allowed\00", [51 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"ethtool: The specified location for ipv6 must be %d or %d\00", [38 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"ethtool: Please, to enable the RX flow control:\0Aethtool -K %s ntuple on\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"ethtool: The specified flow type is not supported\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"ethtool: The specified tos tclass are not supported\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"ethtool: This filter is already set\0A\00", [59 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@switch.table.aq_add_del_rule = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 -2113929216, i32 -2113929215, i32 -2113929214, i32 -2113929216, i32 -2113929216, i32 -2113929215, i32 -2113929214], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 4095, i64 57344]
@__sancov_gen_cov_switch_values.15 = internal global [13 x i64] [i64 11, i64 32, i64 1, i64 2, i64 3, i64 5, i64 6, i64 7, i64 13, i64 14, i64 16, i64 17, i64 18]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 32, i64 32, i64 36]
@__sancov_gen_cov_switch_values.17 = internal global [13 x i64] [i64 11, i64 32, i64 1, i64 2, i64 3, i64 5, i64 6, i64 7, i64 13, i64 14, i64 16, i64 17, i64 18]
@__sancov_gen_cov_switch_values.18 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 6, i64 17, i64 132]
@__sancov_gen_cov_switch_values.19 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 6, i64 17, i64 132]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 16, i64 4095, i64 57344]
@__sancov_gen_cov_switch_values.21 = internal global [11 x i64] [i64 9, i64 32, i64 1, i64 2, i64 3, i64 5, i64 6, i64 7, i64 13, i64 14, i64 18]
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 274, i32 7 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 282, i32 8 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 198, i32 8 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 225, i32 8 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 161, i32 7 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 171, i32 7 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 177, i32 7 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 144, i32 7 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 105, i32 7 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 116, i32 7 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 241, i32 7 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 246, i32 7 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 252, i32 7 }
@___asan_gen_.61 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.62 = private constant [55 x i8] c"../drivers/net/ethernet/aquantia/atlantic/aq_filters.c\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 80, i32 8 }
@___asan_gen_.64 = private unnamed_addr constant [29 x i8] c"switch.table.aq_add_del_rule\00", align 1
@llvm.compiler.used = appending global [15 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @switch.table.aq_add_del_rule], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.aq_add_del_rule to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aq_del_fvlan_by_vlan(ptr noundef %aq_nic, i16 noundef zeroext %vlan_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %aq_hw_rx_fltrs.i = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 25
  br label %for.cond

for.cond:                                         ; preds = %land.rhs.for.cond_crit_edge, %entry
  %rule.0.in = phi ptr [ %aq_hw_rx_fltrs.i, %entry ], [ %rule.0, %land.rhs.for.cond_crit_edge ]
  %0 = ptrtoint ptr %rule.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %rule.0 = load ptr, ptr %rule.0.in, align 4
  %tobool2.not = icmp eq ptr %rule.0, null
  br i1 %tobool2.not, label %for.cond.cleanup_crit_edge, label %land.rhs

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.rhs:                                         ; preds = %for.cond
  %vlan_tci = getelementptr inbounds %struct.aq_rx_filter, ptr %rule.0, i32 0, i32 2, i32 2, i32 3
  %1 = ptrtoint ptr %vlan_tci to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %vlan_tci, align 2
  %cmp = icmp eq i16 %2, %vlan_id
  br i1 %cmp, label %land.lhs.true.critedge, label %land.rhs.for.cond_crit_edge

land.rhs.for.cond_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

land.lhs.true.critedge:                           ; preds = %land.rhs
  %type = getelementptr inbounds %struct.aq_rx_filter, ptr %rule.0, i32 0, i32 1
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp18 = icmp eq i32 %4, 1
  br i1 %cmp18, label %if.then28, label %land.lhs.true.critedge.cleanup_crit_edge

land.lhs.true.critedge.cleanup_crit_edge:         ; preds = %land.lhs.true.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then28:                                        ; preds = %land.lhs.true.critedge
  %location = getelementptr inbounds %struct.aq_rx_filter, ptr %rule.0, i32 0, i32 2, i32 6
  %5 = ptrtoint ptr %location to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %location, align 8
  br label %for.cond.i

for.cond.i:                                       ; preds = %land.rhs.i.for.cond.i_crit_edge, %if.then28
  %rule.0.in.i = phi ptr [ %aq_hw_rx_fltrs.i, %if.then28 ], [ %rule.0.i, %land.rhs.i.for.cond.i_crit_edge ]
  %7 = ptrtoint ptr %rule.0.in.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %rule.0.i = load ptr, ptr %rule.0.in.i, align 4
  %tobool2.not.i = icmp eq ptr %rule.0.i, null
  br i1 %tobool2.not.i, label %for.cond.i.cleanup_crit_edge, label %land.rhs.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.rhs.i:                                       ; preds = %for.cond.i
  %location.i = getelementptr inbounds %struct.aq_rx_filter, ptr %rule.0.i, i32 0, i32 2, i32 6
  %8 = ptrtoint ptr %location.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %location.i, align 8
  %cmp.i = icmp eq i32 %9, %6
  br i1 %cmp.i, label %if.then22.i, label %land.rhs.i.for.cond.i_crit_edge

land.rhs.i.for.cond.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

if.then22.i:                                      ; preds = %land.rhs.i
  %call23.i = tail call fastcc i32 @aq_add_del_rule(ptr noundef %aq_nic, ptr noundef nonnull %rule.0.i, i1 noundef zeroext false) #10
  %10 = ptrtoint ptr %rule.0.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rule.0.i, align 4
  %pprev2.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %rule.0.i, i32 0, i32 1
  %12 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pprev2.i.i.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %11, ptr %13, align 4
  %tobool.not.i.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i.i, label %if.then22.i.hlist_del.exit.i_crit_edge, label %do.body13.i.i.i

if.then22.i.hlist_del.exit.i_crit_edge:           ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %hlist_del.exit.i

do.body13.i.i.i:                                  ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #12
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %11, i32 0, i32 1
  %15 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %pprev14.i.i.i, align 4
  br label %hlist_del.exit.i

hlist_del.exit.i:                                 ; preds = %do.body13.i.i.i, %if.then22.i.hlist_del.exit.i_crit_edge
  %16 = ptrtoint ptr %rule.0.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 256 to ptr), ptr %rule.0.i, align 4
  %17 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %rule.0.i) #10
  %active_filters.i = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 25, i32 1
  %18 = ptrtoint ptr %active_filters.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %active_filters.i, align 4
  %dec.i = add i16 %19, -1
  store i16 %dec.i, ptr %active_filters.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %hlist_del.exit.i, %for.cond.i.cleanup_crit_edge, %land.lhs.true.critedge.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %land.lhs.true.critedge.cleanup_crit_edge ], [ %call23.i, %hlist_del.exit.i ], [ -22, %for.cond.i.cleanup_crit_edge ], [ -2, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @aq_get_hw_rx_fltrs(ptr noundef readnone %aq_nic) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %aq_hw_rx_fltrs = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 25
  ret ptr %aq_hw_rx_fltrs
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aq_del_rxnfc_rule(ptr noundef %aq_nic, ptr nocapture noundef readonly %cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %aq_hw_rx_fltrs.i = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 25
  %location5 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 6
  br label %for.cond

for.cond:                                         ; preds = %land.rhs.for.cond_crit_edge, %entry
  %rule.0.in = phi ptr [ %aq_hw_rx_fltrs.i, %entry ], [ %rule.0, %land.rhs.for.cond_crit_edge ]
  %0 = ptrtoint ptr %rule.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %rule.0 = load ptr, ptr %rule.0.in, align 4
  %tobool2.not = icmp eq ptr %rule.0, null
  br i1 %tobool2.not, label %for.cond.if.end25_crit_edge, label %land.rhs

for.cond.if.end25_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

land.rhs:                                         ; preds = %for.cond
  %location = getelementptr inbounds %struct.aq_rx_filter, ptr %rule.0, i32 0, i32 2, i32 6
  %1 = ptrtoint ptr %location to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %location, align 8
  %3 = ptrtoint ptr %location5 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %location5, align 8
  %cmp = icmp eq i32 %2, %4
  br i1 %cmp, label %if.then22, label %land.rhs.for.cond_crit_edge

land.rhs.for.cond_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

if.then22:                                        ; preds = %land.rhs
  %call23 = tail call fastcc i32 @aq_add_del_rule(ptr noundef %aq_nic, ptr noundef nonnull %rule.0, i1 noundef zeroext false)
  %5 = ptrtoint ptr %rule.0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rule.0, align 4
  %pprev2.i.i = getelementptr inbounds %struct.hlist_node, ptr %rule.0, i32 0, i32 1
  %7 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pprev2.i.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %6, ptr %8, align 4
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %if.then22.hlist_del.exit_crit_edge, label %do.body13.i.i

if.then22.hlist_del.exit_crit_edge:               ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  br label %hlist_del.exit

do.body13.i.i:                                    ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %6, i32 0, i32 1
  %10 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %pprev14.i.i, align 4
  br label %hlist_del.exit

hlist_del.exit:                                   ; preds = %do.body13.i.i, %if.then22.hlist_del.exit_crit_edge
  %11 = ptrtoint ptr %rule.0 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %rule.0, align 4
  %12 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %rule.0) #10
  %active_filters = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 25, i32 1
  %13 = ptrtoint ptr %active_filters to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %active_filters, align 4
  %dec = add i16 %14, -1
  store i16 %dec, ptr %active_filters, align 4
  br label %if.end25

if.end25:                                         ; preds = %hlist_del.exit, %for.cond.if.end25_crit_edge
  %err.0 = phi i32 [ %call23, %hlist_del.exit ], [ -22, %for.cond.if.end25_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @aq_get_rxnfc_count_all_rules(ptr nocapture noundef readonly %aq_nic) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %active_filters = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 25, i32 1
  %0 = ptrtoint ptr %active_filters to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %active_filters, align 4
  ret i16 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aq_add_rxnfc_rule(ptr noundef %aq_nic, ptr nocapture noundef readonly %cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %aq_hw_rx_fltrs.i = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 25
  %fs = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3
  %tobool.not.i.i = icmp eq ptr %aq_nic, null
  br i1 %tobool.not.i.i, label %entry.cleanup_crit_edge, label %if.else.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else.i.i:                                      ; preds = %entry
  %location.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 6
  %0 = ptrtoint ptr %location.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %location.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 39, i32 %1)
  %cmp.i.i = icmp ugt i32 %1, 39
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.else3.i.i

if.then1.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %ndev.i.i = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 5
  %2 = ptrtoint ptr %ndev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndev.i.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull @.str, i32 noundef %1) #13
  br label %cleanup

if.else3.i.i:                                     ; preds = %if.else.i.i
  %4 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %tobool.not.i.i.i = icmp sgt i32 %5, -1
  br i1 %tobool.not.i.i.i, label %if.else16.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.else3.i.i
  %vlan_tci.i.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 4, i32 3
  %6 = ptrtoint ptr %vlan_tci.i.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %vlan_tci.i.i.i, align 2
  %8 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i16 %7, label %if.else11.i.i.i [
    i16 4095, label %if.then2.i.i.i
    i16 -8192, label %if.then9.i.i.i
  ]

if.then2.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %1)
  %cmp2.i.i.i.i = icmp ugt i32 %1, 15
  %ndev.i.i.i.i = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 5
  %9 = ptrtoint ptr %ndev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ndev.i.i.i.i, align 4
  br i1 %cmp2.i.i.i.i, label %if.then.i.i.i.i, label %if.end.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.then2.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %10, ptr noundef nonnull @.str.4, i32 noundef 0, i32 noundef 15) #13
  br label %cleanup

if.end.i.i.i.i:                                   ; preds = %if.then2.i.i.i
  %features.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 23
  %11 = ptrtoint ptr %features.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %features.i.i.i.i, align 16
  %and.i.i.i.i = and i64 %12, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i64 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i.if.end8.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.end.i.i.i.i.if.end8.i.i.i.i_crit_edge:         ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end.i.i.i.i
  %vlan_tci.i.i.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 2, i32 3
  %13 = ptrtoint ptr %vlan_tci.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %vlan_tci.i.i.i.i, align 2
  %15 = and i16 %14, 4095
  %and4.i.i.i.i = zext i16 %15 to i32
  %active_vlans.i.i.i.i = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 18
  %div3.i.i.i.i.i = lshr i32 %and4.i.i.i.i, 5
  %arrayidx.i.i.i.i.i = getelementptr i32, ptr %active_vlans.i.i.i.i, i32 %div3.i.i.i.i.i
  %16 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %arrayidx.i.i.i.i.i, align 4
  %and.i.i.i.i.i = and i32 %and4.i.i.i.i, 31
  %18 = shl nuw i32 1, %and.i.i.i.i.i
  %19 = and i32 %18, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool5.not.i.i.i.i = icmp eq i32 %19, 0
  br i1 %tobool5.not.i.i.i.i, label %if.then6.i.i.i.i, label %land.lhs.true.i.i.i.i.if.end8.i.i.i.i_crit_edge

land.lhs.true.i.i.i.i.if.end8.i.i.i.i_crit_edge:  ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i.i.i.i

if.then6.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %10, ptr noundef nonnull @.str.5) #13
  br label %cleanup

if.end8.i.i.i.i:                                  ; preds = %land.lhs.true.i.i.i.i.if.end8.i.i.i.i_crit_edge, %if.end.i.i.i.i.if.end8.i.i.i.i_crit_edge
  %ring_cookie.i.i.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 5
  %20 = ptrtoint ptr %ring_cookie.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %ring_cookie.i.i.i.i, align 8
  %num_rss_queues.i.i.i.i = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 12, i32 11
  %22 = ptrtoint ptr %num_rss_queues.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_rss_queues.i.i.i.i, align 8
  %tcs.i.i.i.i = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 12, i32 31
  %24 = ptrtoint ptr %tcs.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %tcs.i.i.i.i, align 4
  %conv9.i.i.i.i = zext i8 %25 to i32
  %mul.i.i.i.i = mul i32 %23, %conv9.i.i.i.i
  %conv10.i.i.i.i = zext i32 %mul.i.i.i.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %21, i64 %conv10.i.i.i.i)
  %cmp11.i.i.i.i = icmp ugt i64 %21, %conv10.i.i.i.i
  br i1 %cmp11.i.i.i.i, label %if.then13.i.i.i.i, label %if.end8.i.i.i.i.if.else6.i.i_crit_edge

if.end8.i.i.i.i.if.else6.i.i_crit_edge:           ; preds = %if.end8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else6.i.i

if.then13.i.i.i.i:                                ; preds = %if.end8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i.i.i = add i32 %mul.i.i.i.i, -1
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %10, ptr noundef nonnull @.str.6, i32 noundef %sub.i.i.i.i) #13
  br label %cleanup

if.then9.i.i.i:                                   ; preds = %if.then.i.i.i
  %fet_reserved_count.i.i.i.i = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 25, i32 4
  %26 = ptrtoint ptr %fet_reserved_count.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %fet_reserved_count.i.i.i.i, align 2
  %conv.i.i.i.i = zext i8 %27 to i32
  %sub.i50.i.i.i = sub nsw i32 31, %conv.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %1)
  %cmp.i.i.i.i = icmp ult i32 %1, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %sub.i50.i.i.i)
  %cmp3.i.i.i.i = icmp ugt i32 %1, %sub.i50.i.i.i
  %or.cond.i.i.i.i = select i1 %cmp.i.i.i.i, i1 true, i1 %cmp3.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %if.then.i53.i.i.i, label %land.lhs.true.i56.i.i.i

if.then.i53.i.i.i:                                ; preds = %if.then9.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %ndev.i52.i.i.i = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 5
  %28 = ptrtoint ptr %ndev.i52.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ndev.i52.i.i.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %29, ptr noundef nonnull @.str.4, i32 noundef 16, i32 noundef %sub.i50.i.i.i) #13
  br label %cleanup

land.lhs.true.i56.i.i.i:                          ; preds = %if.then9.i.i.i
  %h_proto.i.i.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 3
  %30 = ptrtoint ptr %h_proto.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %h_proto.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %cmp9.i.i.i.i = icmp eq i16 %31, 0
  br i1 %cmp9.i.i.i.i, label %if.then11.i.i.i.i, label %land.lhs.true.i56.i.i.i.if.else6.i.i_crit_edge

land.lhs.true.i56.i.i.i.if.else6.i.i_crit_edge:   ; preds = %land.lhs.true.i56.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else6.i.i

if.then11.i.i.i.i:                                ; preds = %land.lhs.true.i56.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %ndev12.i.i.i.i = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 5
  %32 = ptrtoint ptr %ndev12.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ndev12.i.i.i.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %33, ptr noundef nonnull @.str.7) #13
  br label %cleanup

if.else11.i.i.i:                                  ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i = zext i16 %7 to i32
  %ndev.i.i.i = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 5
  %34 = ptrtoint ptr %ndev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ndev.i.i.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %35, ptr noundef nonnull @.str.2, i32 noundef %conv.i.i.i) #13
  br label %cleanup

if.else16.i.i.i:                                  ; preds = %if.else3.i.i
  %36 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %5, label %sw.default.i.i.i [
    i32 18, label %sw.bb.i.i.i
    i32 1, label %if.else16.i.i.i.aq_check_filter.exit.i.i_crit_edge
    i32 2, label %if.else16.i.i.i.aq_check_filter.exit.i.i_crit_edge70
    i32 3, label %if.else16.i.i.i.aq_check_filter.exit.i.i_crit_edge71
    i32 16, label %if.else16.i.i.i.aq_check_filter.exit.i.i_crit_edge72
    i32 13, label %if.else16.i.i.i.aq_check_filter.exit.i.i_crit_edge73
    i32 5, label %if.else16.i.i.i.sw.bb22.i.i.i_crit_edge
    i32 6, label %if.else16.i.i.i.sw.bb22.i.i.i_crit_edge74
    i32 7, label %if.else16.i.i.i.sw.bb22.i.i.i_crit_edge75
    i32 17, label %if.else16.i.i.i.sw.bb22.i.i.i_crit_edge76
    i32 14, label %if.else16.i.i.i.sw.bb22.i.i.i_crit_edge77
  ]

if.else16.i.i.i.sw.bb22.i.i.i_crit_edge77:        ; preds = %if.else16.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb22.i.i.i

if.else16.i.i.i.sw.bb22.i.i.i_crit_edge76:        ; preds = %if.else16.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb22.i.i.i

if.else16.i.i.i.sw.bb22.i.i.i_crit_edge75:        ; preds = %if.else16.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb22.i.i.i

if.else16.i.i.i.sw.bb22.i.i.i_crit_edge74:        ; preds = %if.else16.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb22.i.i.i

if.else16.i.i.i.sw.bb22.i.i.i_crit_edge:          ; preds = %if.else16.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb22.i.i.i

if.else16.i.i.i.aq_check_filter.exit.i.i_crit_edge73: ; preds = %if.else16.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %aq_check_filter.exit.i.i

if.else16.i.i.i.aq_check_filter.exit.i.i_crit_edge72: ; preds = %if.else16.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %aq_check_filter.exit.i.i

if.else16.i.i.i.aq_check_filter.exit.i.i_crit_edge71: ; preds = %if.else16.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %aq_check_filter.exit.i.i

if.else16.i.i.i.aq_check_filter.exit.i.i_crit_edge70: ; preds = %if.else16.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %aq_check_filter.exit.i.i

if.else16.i.i.i.aq_check_filter.exit.i.i_crit_edge: ; preds = %if.else16.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %aq_check_filter.exit.i.i

sw.bb.i.i.i:                                      ; preds = %if.else16.i.i.i
  %fet_reserved_count.i58.i.i.i = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 25, i32 4
  %37 = ptrtoint ptr %fet_reserved_count.i58.i.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %fet_reserved_count.i58.i.i.i, align 2
  %conv.i59.i.i.i = zext i8 %38 to i32
  %sub.i60.i.i.i = sub nsw i32 31, %conv.i59.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %1)
  %cmp.i62.i.i.i = icmp ult i32 %1, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %sub.i60.i.i.i)
  %cmp3.i63.i.i.i = icmp ugt i32 %1, %sub.i60.i.i.i
  %or.cond.i64.i.i.i = select i1 %cmp.i62.i.i.i, i1 true, i1 %cmp3.i63.i.i.i
  br i1 %or.cond.i64.i.i.i, label %if.then.i66.i.i.i, label %if.end.i69.i.i.i

if.then.i66.i.i.i:                                ; preds = %sw.bb.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %ndev.i65.i.i.i = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 5
  %39 = ptrtoint ptr %ndev.i65.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ndev.i65.i.i.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %40, ptr noundef nonnull @.str.4, i32 noundef 16, i32 noundef %sub.i60.i.i.i) #13
  br label %cleanup

if.end.i69.i.i.i:                                 ; preds = %sw.bb.i.i.i
  %vlan_tci.i67.i.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 4, i32 3
  %41 = ptrtoint ptr %vlan_tci.i67.i.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %vlan_tci.i67.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -8192, i16 %42)
  %cmp6.i68.i.i.i = icmp eq i16 %42, -8192
  br i1 %cmp6.i68.i.i.i, label %land.lhs.true.i72.i.i.i, label %if.end.i69.i.i.i.if.else6.i.i_crit_edge

if.end.i69.i.i.i.if.else6.i.i_crit_edge:          ; preds = %if.end.i69.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else6.i.i

land.lhs.true.i72.i.i.i:                          ; preds = %if.end.i69.i.i.i
  %h_proto.i70.i.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 3
  %43 = ptrtoint ptr %h_proto.i70.i.i.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %h_proto.i70.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %cmp9.i71.i.i.i = icmp eq i16 %44, 0
  br i1 %cmp9.i71.i.i.i, label %if.then11.i74.i.i.i, label %land.lhs.true.i72.i.i.i.if.else6.i.i_crit_edge

land.lhs.true.i72.i.i.i.if.else6.i.i_crit_edge:   ; preds = %land.lhs.true.i72.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else6.i.i

if.then11.i74.i.i.i:                              ; preds = %land.lhs.true.i72.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %ndev12.i73.i.i.i = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 5
  %45 = ptrtoint ptr %ndev12.i73.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ndev12.i73.i.i.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %46, ptr noundef nonnull @.str.7) #13
  br label %cleanup

sw.bb22.i.i.i:                                    ; preds = %if.else16.i.i.i.sw.bb22.i.i.i_crit_edge, %if.else16.i.i.i.sw.bb22.i.i.i_crit_edge74, %if.else16.i.i.i.sw.bb22.i.i.i_crit_edge75, %if.else16.i.i.i.sw.bb22.i.i.i_crit_edge76, %if.else16.i.i.i.sw.bb22.i.i.i_crit_edge77
  br label %aq_check_filter.exit.i.i

sw.default.i.i.i:                                 ; preds = %if.else16.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %ndev26.i.i.i = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 5
  %47 = ptrtoint ptr %ndev26.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ndev26.i.i.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %48, ptr noundef nonnull @.str.3) #13
  br label %cleanup

aq_check_filter.exit.i.i:                         ; preds = %sw.bb22.i.i.i, %if.else16.i.i.i.aq_check_filter.exit.i.i_crit_edge, %if.else16.i.i.i.aq_check_filter.exit.i.i_crit_edge70, %if.else16.i.i.i.aq_check_filter.exit.i.i_crit_edge71, %if.else16.i.i.i.aq_check_filter.exit.i.i_crit_edge72, %if.else16.i.i.i.aq_check_filter.exit.i.i_crit_edge73
  %tobool.not.i28.i = phi i1 [ false, %sw.bb22.i.i.i ], [ true, %if.else16.i.i.i.aq_check_filter.exit.i.i_crit_edge ], [ true, %if.else16.i.i.i.aq_check_filter.exit.i.i_crit_edge70 ], [ true, %if.else16.i.i.i.aq_check_filter.exit.i.i_crit_edge71 ], [ true, %if.else16.i.i.i.aq_check_filter.exit.i.i_crit_edge72 ], [ true, %if.else16.i.i.i.aq_check_filter.exit.i.i_crit_edge73 ]
  %.sink.i.i = phi i8 [ 1, %sw.bb22.i.i.i ], [ 0, %if.else16.i.i.i.aq_check_filter.exit.i.i_crit_edge ], [ 0, %if.else16.i.i.i.aq_check_filter.exit.i.i_crit_edge70 ], [ 0, %if.else16.i.i.i.aq_check_filter.exit.i.i_crit_edge71 ], [ 0, %if.else16.i.i.i.aq_check_filter.exit.i.i_crit_edge72 ], [ 0, %if.else16.i.i.i.aq_check_filter.exit.i.i_crit_edge73 ]
  %is_ipv6.i.i.i = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 25, i32 3, i32 2
  %49 = ptrtoint ptr %is_ipv6.i.i.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %.sink.i.i, ptr %is_ipv6.i.i.i, align 2
  %reserved_count.i.i = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 25, i32 3, i32 3
  %50 = ptrtoint ptr %reserved_count.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %reserved_count.i.i, align 1
  %conv.i22.i = zext i8 %51 to i32
  %sub.i23.i = sub nsw i32 39, %conv.i22.i
  %52 = ptrtoint ptr %location.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %location.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %53)
  %cmp.i25.i = icmp ult i32 %53, 32
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %sub.i23.i)
  %cmp3.i.i = icmp ugt i32 %53, %sub.i23.i
  %or.cond.i.i = select i1 %cmp.i25.i, i1 true, i1 %cmp3.i.i
  br i1 %or.cond.i.i, label %if.then.i27.i, label %if.end.i29.i

if.then.i27.i:                                    ; preds = %aq_check_filter.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %ndev.i26.i = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 5
  %54 = ptrtoint ptr %ndev.i26.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ndev.i26.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %55, ptr noundef nonnull @.str.4, i32 noundef 32, i32 noundef %sub.i23.i) #13
  br label %cleanup

if.end.i29.i:                                     ; preds = %aq_check_filter.exit.i.i
  br i1 %tobool.not.i28.i, label %land.lhs.true17.i.i, label %land.lhs.true.i30.i

land.lhs.true.i30.i:                              ; preds = %if.end.i29.i
  %fl3l45.i.i = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 25, i32 3
  %56 = ptrtoint ptr %fl3l45.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %fl3l45.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool9.not.i.i = icmp eq i8 %57, 0
  br i1 %tobool9.not.i.i, label %land.lhs.true30.i.i, label %if.then10.i.i

if.then10.i.i:                                    ; preds = %land.lhs.true.i30.i
  call void @__sanitizer_cov_trace_pc() #12
  %58 = ptrtoint ptr %is_ipv6.i.i.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %is_ipv6.i.i.i, align 2
  %ndev13.i.i = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 5
  %59 = ptrtoint ptr %ndev13.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ndev13.i.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %60, ptr noundef nonnull @.str.8) #13
  br label %cleanup

land.lhs.true17.i.i:                              ; preds = %if.end.i29.i
  %active_ipv6.i.i = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 25, i32 3, i32 1
  %61 = ptrtoint ptr %active_ipv6.i.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %bf.load.i.i = load i8, ptr %active_ipv6.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.load.i.i)
  %tobool20.not.i.i = icmp ult i8 %bf.load.i.i, 64
  br i1 %tobool20.not.i.i, label %land.lhs.true17.i.i.if.else6.i.i_crit_edge, label %if.then21.i.i

land.lhs.true17.i.i.if.else6.i.i_crit_edge:       ; preds = %land.lhs.true17.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else6.i.i

if.then21.i.i:                                    ; preds = %land.lhs.true17.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %62 = ptrtoint ptr %is_ipv6.i.i.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 1, ptr %is_ipv6.i.i.i, align 2
  %ndev24.i.i = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 5
  %63 = ptrtoint ptr %ndev24.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ndev24.i.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %64, ptr noundef nonnull @.str.8) #13
  br label %cleanup

land.lhs.true30.i.i:                              ; preds = %land.lhs.true.i30.i
  %65 = zext i32 %53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %53, label %if.then38.i.i [
    i32 36, label %land.lhs.true30.i.i.if.else6.i.i_crit_edge
    i32 32, label %land.lhs.true30.i.i.if.else6.i.i_crit_edge78
  ]

land.lhs.true30.i.i.if.else6.i.i_crit_edge78:     ; preds = %land.lhs.true30.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else6.i.i

land.lhs.true30.i.i.if.else6.i.i_crit_edge:       ; preds = %land.lhs.true30.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else6.i.i

if.then38.i.i:                                    ; preds = %land.lhs.true30.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %ndev39.i.i = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 5
  %66 = ptrtoint ptr %ndev39.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ndev39.i.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %67, ptr noundef nonnull @.str.9, i32 noundef 32, i32 noundef 36) #13
  br label %cleanup

if.else6.i.i:                                     ; preds = %land.lhs.true30.i.i.if.else6.i.i_crit_edge, %land.lhs.true30.i.i.if.else6.i.i_crit_edge78, %land.lhs.true17.i.i.if.else6.i.i_crit_edge, %land.lhs.true.i72.i.i.i.if.else6.i.i_crit_edge, %if.end.i69.i.i.i.if.else6.i.i_crit_edge, %land.lhs.true.i56.i.i.i.if.else6.i.i_crit_edge, %if.end8.i.i.i.i.if.else6.i.i_crit_edge
  %ring_cookie.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 5
  %68 = ptrtoint ptr %ring_cookie.i.i to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %ring_cookie.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %69)
  %cmp7.not.i.i = icmp eq i64 %69, -1
  br i1 %cmp7.not.i.i, label %if.else6.i.i.if.else.i_crit_edge, label %if.then8.i.i

if.else6.i.i.if.else.i_crit_edge:                 ; preds = %if.else6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

if.then8.i.i:                                     ; preds = %if.else6.i.i
  %num_rss_queues.i.i = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 12, i32 11
  %70 = ptrtoint ptr %num_rss_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %num_rss_queues.i.i, align 8
  %tcs.i.i = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 12, i32 31
  %72 = ptrtoint ptr %tcs.i.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %tcs.i.i, align 4
  %conv.i.i = zext i8 %73 to i32
  %mul.i.i = mul i32 %71, %conv.i.i
  %conv10.i.i = zext i32 %mul.i.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %69, i64 %conv10.i.i)
  %cmp11.not.i.i = icmp ult i64 %69, %conv10.i.i
  br i1 %cmp11.not.i.i, label %if.then8.i.i.if.else.i_crit_edge, label %if.then13.i.i

if.then8.i.i.if.else.i_crit_edge:                 ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

if.then13.i.i:                                    ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %ndev14.i.i = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 5
  %74 = ptrtoint ptr %ndev14.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ndev14.i.i, align 4
  %sub.i.i = add i32 %mul.i.i, -1
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %75, ptr noundef nonnull @.str.1, i32 noundef %sub.i.i) #13
  br label %cleanup

if.else.i:                                        ; preds = %if.then8.i.i.if.else.i_crit_edge, %if.else6.i.i.if.else.i_crit_edge
  %ndev.i12.i = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 5
  %76 = ptrtoint ptr %ndev.i12.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ndev.i12.i, align 4
  %features.i.i = getelementptr inbounds %struct.net_device, ptr %77, i32 0, i32 23
  %78 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %features.i.i, align 16
  %and.i.i = and i64 %79, 274877906944
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.not.i13.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.not.i13.i, label %if.then.i.i, label %if.else.i15.i

if.then.i.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %77, ptr noundef nonnull @.str.10, ptr noundef %77) #13
  br label %cleanup

if.else.i15.i:                                    ; preds = %if.else.i
  %80 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %fs, align 8
  %and.i.i.i = and i32 %81, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i14.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i14.i, label %if.end.i.i.i, label %if.else.i15.i.if.then3.i.i_crit_edge

if.else.i15.i.if.then3.i.i_crit_edge:             ; preds = %if.else.i15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3.i.i

if.end.i.i.i:                                     ; preds = %if.else.i15.i
  %and2.i.i.i = and i32 %81, 2147483647
  %82 = zext i32 %and2.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %82, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %and2.i.i.i, label %if.end.i.i.i.if.then3.i.i_crit_edge [
    i32 14, label %sw.bb5.i.i.i
    i32 13, label %sw.bb3.i.i.i
    i32 18, label %if.end.i.i.i.if.else3.i_crit_edge
    i32 1, label %if.end.i.i.i.land.lhs.true.i.i_crit_edge
    i32 2, label %if.end.i.i.i.land.lhs.true.i.i_crit_edge79
    i32 3, label %if.end.i.i.i.land.lhs.true.i.i_crit_edge80
    i32 5, label %if.end.i.i.i.land.lhs.true.i.i_crit_edge81
    i32 6, label %if.end.i.i.i.land.lhs.true.i.i_crit_edge82
    i32 7, label %if.end.i.i.i.land.lhs.true.i.i_crit_edge83
    i32 16, label %if.end.i.i.i.land.lhs.true.i.i_crit_edge84
    i32 17, label %if.end.i.i.i.land.lhs.true.i.i_crit_edge85
  ]

if.end.i.i.i.land.lhs.true.i.i_crit_edge85:       ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i.i

if.end.i.i.i.land.lhs.true.i.i_crit_edge84:       ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i.i

if.end.i.i.i.land.lhs.true.i.i_crit_edge83:       ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i.i

if.end.i.i.i.land.lhs.true.i.i_crit_edge82:       ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i.i

if.end.i.i.i.land.lhs.true.i.i_crit_edge81:       ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i.i

if.end.i.i.i.land.lhs.true.i.i_crit_edge80:       ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i.i

if.end.i.i.i.land.lhs.true.i.i_crit_edge79:       ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i.i

if.end.i.i.i.land.lhs.true.i.i_crit_edge:         ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i.i

if.end.i.i.i.if.else3.i_crit_edge:                ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else3.i

if.end.i.i.i.if.then3.i.i_crit_edge:              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3.i.i

sw.bb3.i.i.i:                                     ; preds = %if.end.i.i.i
  %h_u.i.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1
  %proto.i.i.i = getelementptr inbounds %struct.ethtool_usrip4_spec, ptr %h_u.i.i.i, i32 0, i32 5
  %83 = ptrtoint ptr %proto.i.i.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %proto.i.i.i, align 2
  %85 = zext i8 %84 to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values.18)
  switch i8 %84, label %sw.bb3.i.i.i.if.then3.i.i_crit_edge [
    i8 6, label %sw.bb3.i.i.i.land.lhs.true.i.i_crit_edge
    i8 17, label %sw.bb3.i.i.i.land.lhs.true.i.i_crit_edge86
    i8 -124, label %sw.bb3.i.i.i.land.lhs.true.i.i_crit_edge87
    i8 0, label %sw.bb3.i.i.i.land.lhs.true.i.i_crit_edge88
  ]

sw.bb3.i.i.i.land.lhs.true.i.i_crit_edge88:       ; preds = %sw.bb3.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i.i

sw.bb3.i.i.i.land.lhs.true.i.i_crit_edge87:       ; preds = %sw.bb3.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i.i

sw.bb3.i.i.i.land.lhs.true.i.i_crit_edge86:       ; preds = %sw.bb3.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i.i

sw.bb3.i.i.i.land.lhs.true.i.i_crit_edge:         ; preds = %sw.bb3.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i.i

sw.bb3.i.i.i.if.then3.i.i_crit_edge:              ; preds = %sw.bb3.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3.i.i

sw.bb5.i.i.i:                                     ; preds = %if.end.i.i.i
  %h_u6.i.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1
  %l4_proto.i.i.i = getelementptr inbounds %struct.ethtool_usrip6_spec, ptr %h_u6.i.i.i, i32 0, i32 4
  %86 = ptrtoint ptr %l4_proto.i.i.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %l4_proto.i.i.i, align 1
  %88 = zext i8 %87 to i64
  call void @__sanitizer_cov_trace_switch(i64 %88, ptr @__sancov_gen_cov_switch_values.19)
  switch i8 %87, label %sw.bb5.i.i.i.if.then3.i.i_crit_edge [
    i8 6, label %sw.bb5.i.i.i.land.lhs.true.i.i_crit_edge
    i8 17, label %sw.bb5.i.i.i.land.lhs.true.i.i_crit_edge89
    i8 -124, label %sw.bb5.i.i.i.land.lhs.true.i.i_crit_edge90
    i8 0, label %sw.bb5.i.i.i.land.lhs.true.i.i_crit_edge91
  ]

sw.bb5.i.i.i.land.lhs.true.i.i_crit_edge91:       ; preds = %sw.bb5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i.i

sw.bb5.i.i.i.land.lhs.true.i.i_crit_edge90:       ; preds = %sw.bb5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i.i

sw.bb5.i.i.i.land.lhs.true.i.i_crit_edge89:       ; preds = %sw.bb5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i.i

sw.bb5.i.i.i.land.lhs.true.i.i_crit_edge:         ; preds = %sw.bb5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i.i

sw.bb5.i.i.i.if.then3.i.i_crit_edge:              ; preds = %sw.bb5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3.i.i

if.then3.i.i:                                     ; preds = %sw.bb5.i.i.i.if.then3.i.i_crit_edge, %sw.bb3.i.i.i.if.then3.i.i_crit_edge, %if.end.i.i.i.if.then3.i.i_crit_edge, %if.else.i15.i.if.then3.i.i_crit_edge
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %77, ptr noundef nonnull @.str.11) #13
  br label %cleanup

land.lhs.true.i.i:                                ; preds = %sw.bb5.i.i.i.land.lhs.true.i.i_crit_edge, %sw.bb5.i.i.i.land.lhs.true.i.i_crit_edge89, %sw.bb5.i.i.i.land.lhs.true.i.i_crit_edge90, %sw.bb5.i.i.i.land.lhs.true.i.i_crit_edge91, %sw.bb3.i.i.i.land.lhs.true.i.i_crit_edge, %sw.bb3.i.i.i.land.lhs.true.i.i_crit_edge86, %sw.bb3.i.i.i.land.lhs.true.i.i_crit_edge87, %sw.bb3.i.i.i.land.lhs.true.i.i_crit_edge88, %if.end.i.i.i.land.lhs.true.i.i_crit_edge, %if.end.i.i.i.land.lhs.true.i.i_crit_edge79, %if.end.i.i.i.land.lhs.true.i.i_crit_edge80, %if.end.i.i.i.land.lhs.true.i.i_crit_edge81, %if.end.i.i.i.land.lhs.true.i.i_crit_edge82, %if.end.i.i.i.land.lhs.true.i.i_crit_edge83, %if.end.i.i.i.land.lhs.true.i.i_crit_edge84, %if.end.i.i.i.land.lhs.true.i.i_crit_edge85
  %tos.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 0, i32 3
  %89 = ptrtoint ptr %tos.i.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %tos.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool7.not.i.i = icmp eq i8 %90, 0
  br i1 %tobool7.not.i.i, label %lor.lhs.false.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

lor.lhs.false.i.i:                                ; preds = %land.lhs.true.i.i
  %tclass.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 4
  %91 = ptrtoint ptr %tclass.i.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %tclass.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool10.not.i.i = icmp eq i8 %92, 0
  br i1 %tobool10.not.i.i, label %lor.lhs.false.i.i.if.else3.i_crit_edge, label %lor.lhs.false.i.i.if.then11.i.i_crit_edge

lor.lhs.false.i.i.if.then11.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

lor.lhs.false.i.i.if.else3.i_crit_edge:           ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else3.i

if.then11.i.i:                                    ; preds = %lor.lhs.false.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %77, ptr noundef nonnull @.str.12) #13
  br label %cleanup

if.else3.i:                                       ; preds = %lor.lhs.false.i.i.if.else3.i_crit_edge, %if.end.i.i.i.if.else3.i_crit_edge
  %93 = ptrtoint ptr %aq_hw_rx_fltrs.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %aq_hw_rx_fltrs.i, align 4
  %tobool2.not34.i.i = icmp eq ptr %94, null
  br i1 %tobool2.not34.i.i, label %if.else3.i.if.end_crit_edge, label %land.rhs.lr.ph.i.i

if.else3.i.if.end_crit_edge:                      ; preds = %if.else3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.rhs.lr.ph.i.i:                               ; preds = %if.else3.i
  %95 = ptrtoint ptr %location.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %location.i.i, align 8
  %h_u2.i.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1
  %h_ext4.i.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 2
  %m_u8.i.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3
  %m_ext12.i.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 4
  br label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %for.inc.i.i.land.rhs.i.i_crit_edge, %land.rhs.lr.ph.i.i
  %rule.035.i.i = phi ptr [ %94, %land.rhs.lr.ph.i.i ], [ %98, %for.inc.i.i.land.rhs.i.i_crit_edge ]
  %97 = ptrtoint ptr %rule.035.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %rule.035.i.i, align 8
  %location.i16.i = getelementptr inbounds %struct.aq_rx_filter, ptr %rule.035.i.i, i32 0, i32 2, i32 6
  %99 = ptrtoint ptr %location.i16.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %location.i16.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %100, i32 %96)
  %cmp.i17.i = icmp eq i32 %100, %96
  br i1 %cmp.i17.i, label %land.rhs.i.i.for.inc.i.i_crit_edge, label %if.end.i.i

land.rhs.i.i.for.inc.i.i_crit_edge:               ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %land.rhs.i.i
  %aq_fsp.i.i = getelementptr inbounds %struct.aq_rx_filter, ptr %rule.035.i.i, i32 0, i32 2
  %101 = ptrtoint ptr %aq_fsp.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %aq_fsp.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %102, i32 %81)
  %cmp.not.i.i.i = icmp eq i32 %102, %81
  br i1 %cmp.not.i.i.i, label %lor.lhs.false.i.i.i, label %if.end.i.i.for.inc.i.i_crit_edge

if.end.i.i.for.inc.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

lor.lhs.false.i.i.i:                              ; preds = %if.end.i.i
  %h_u.i.i18.i = getelementptr inbounds %struct.aq_rx_filter, ptr %rule.035.i.i, i32 0, i32 2, i32 1
  %bcmp.i.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(52) %h_u.i.i18.i, ptr noundef dereferenceable(52) %h_u2.i.i.i, i32 52) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i.i)
  %tobool.not.i.i19.i = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %tobool.not.i.i19.i, label %lor.lhs.false3.i.i.i, label %lor.lhs.false.i.i.i.for.inc.i.i_crit_edge

lor.lhs.false.i.i.i.for.inc.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

lor.lhs.false3.i.i.i:                             ; preds = %lor.lhs.false.i.i.i
  %h_ext.i.i.i = getelementptr inbounds %struct.aq_rx_filter, ptr %rule.035.i.i, i32 0, i32 2, i32 2
  %bcmp23.i.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(20) %h_ext.i.i.i, ptr noundef dereferenceable(20) %h_ext4.i.i.i, i32 20) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp23.i.i.i)
  %tobool6.not.i.i.i = icmp eq i32 %bcmp23.i.i.i, 0
  br i1 %tobool6.not.i.i.i, label %lor.lhs.false7.i.i.i, label %lor.lhs.false3.i.i.i.for.inc.i.i_crit_edge

lor.lhs.false3.i.i.i.for.inc.i.i_crit_edge:       ; preds = %lor.lhs.false3.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

lor.lhs.false7.i.i.i:                             ; preds = %lor.lhs.false3.i.i.i
  %m_u.i.i.i = getelementptr inbounds %struct.aq_rx_filter, ptr %rule.035.i.i, i32 0, i32 2, i32 3
  %bcmp24.i.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(52) %m_u.i.i.i, ptr noundef dereferenceable(52) %m_u8.i.i.i, i32 52) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp24.i.i.i)
  %tobool10.not.i.i.i = icmp eq i32 %bcmp24.i.i.i, 0
  br i1 %tobool10.not.i.i.i, label %aq_match_filter.exit.i.i, label %lor.lhs.false7.i.i.i.for.inc.i.i_crit_edge

lor.lhs.false7.i.i.i.for.inc.i.i_crit_edge:       ; preds = %lor.lhs.false7.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

aq_match_filter.exit.i.i:                         ; preds = %lor.lhs.false7.i.i.i
  %m_ext.i.i.i = getelementptr inbounds %struct.aq_rx_filter, ptr %rule.035.i.i, i32 0, i32 2, i32 4
  %bcmp25.i.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(20) %m_ext.i.i.i, ptr noundef dereferenceable(20) %m_ext12.i.i.i, i32 20) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp25.i.i.i)
  %tobool14.not.i.i.i = icmp eq i32 %bcmp25.i.i.i, 0
  br i1 %tobool14.not.i.i.i, label %103, label %aq_match_filter.exit.i.i.for.inc.i.i_crit_edge

aq_match_filter.exit.i.i.for.inc.i.i_crit_edge:   ; preds = %aq_match_filter.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %aq_match_filter.exit.i.i.for.inc.i.i_crit_edge, %lor.lhs.false7.i.i.i.for.inc.i.i_crit_edge, %lor.lhs.false3.i.i.i.for.inc.i.i_crit_edge, %lor.lhs.false.i.i.i.for.inc.i.i_crit_edge, %if.end.i.i.for.inc.i.i_crit_edge, %land.rhs.i.i.for.inc.i.i_crit_edge
  %tobool2.not.i.i = icmp eq ptr %98, null
  br i1 %tobool2.not.i.i, label %for.inc.i.i.if.end_crit_edge, label %for.inc.i.i.land.rhs.i.i_crit_edge

for.inc.i.i.land.rhs.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.i.i

for.inc.i.i.if.end_crit_edge:                     ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

103:                                              ; preds = %aq_match_filter.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %77, ptr noundef nonnull @.str.14) #13
  br label %cleanup

if.end:                                           ; preds = %for.inc.i.i.if.end_crit_edge, %if.else3.i.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %104 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %104, i32 noundef 3520, i32 noundef 184) #15
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end8, !prof !39

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %aq_fsp = getelementptr inbounds %struct.aq_rx_filter, ptr %call7.i.i, i32 0, i32 2
  %105 = call ptr @memcpy(ptr %aq_fsp, ptr %fs, i32 168)
  %106 = ptrtoint ptr %location.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %location.i.i, align 8
  %conv.i = and i32 %107, 65535
  br label %for.cond.i

for.cond.i:                                       ; preds = %land.rhs.i.for.cond.i_crit_edge, %if.end8
  %parent.0.i = phi ptr [ null, %if.end8 ], [ %rule.0.i, %land.rhs.i.for.cond.i_crit_edge ]
  %rule.0.in.i = phi ptr [ %aq_hw_rx_fltrs.i, %if.end8 ], [ %rule.0.i, %land.rhs.i.for.cond.i_crit_edge ]
  %108 = ptrtoint ptr %rule.0.in.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %rule.0.i = load ptr, ptr %rule.0.in.i, align 4
  %tobool2.not.i = icmp eq ptr %rule.0.i, null
  br i1 %tobool2.not.i, label %for.cond.i.if.end31.i_crit_edge, label %land.rhs.i

for.cond.i.if.end31.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31.i

land.rhs.i:                                       ; preds = %for.cond.i
  %location.i = getelementptr inbounds %struct.aq_rx_filter, ptr %rule.0.i, i32 0, i32 2, i32 6
  %109 = ptrtoint ptr %location.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %location.i, align 8
  %cmp.not.i = icmp ult i32 %110, %conv.i
  br i1 %cmp.not.i, label %land.rhs.i.for.cond.i_crit_edge, label %land.lhs.true.critedge.i

land.rhs.i.for.cond.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

land.lhs.true.critedge.i:                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_cmp4(i32 %110, i32 %conv.i)
  %cmp20.i = icmp eq i32 %110, %conv.i
  br i1 %cmp20.i, label %if.then22.i, label %land.lhs.true.critedge.i.if.end31.i_crit_edge

land.lhs.true.critedge.i.if.end31.i_crit_edge:    ; preds = %land.lhs.true.critedge.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31.i

if.then22.i:                                      ; preds = %land.lhs.true.critedge.i
  %call23.i = tail call fastcc i32 @aq_add_del_rule(ptr noundef %aq_nic, ptr noundef nonnull %rule.0.i, i1 noundef zeroext false) #10
  %111 = ptrtoint ptr %rule.0.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %rule.0.i, align 4
  %pprev2.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %rule.0.i, i32 0, i32 1
  %113 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %pprev2.i.i.i, align 4
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_store4_noabort(i32 %115)
  store volatile ptr %112, ptr %114, align 4
  %tobool.not.i.i.i45 = icmp eq ptr %112, null
  br i1 %tobool.not.i.i.i45, label %if.then22.i.hlist_del.exit.i_crit_edge, label %do.body13.i.i.i

if.then22.i.hlist_del.exit.i_crit_edge:           ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %hlist_del.exit.i

do.body13.i.i.i:                                  ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #12
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %112, i32 0, i32 1
  %116 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store volatile ptr %114, ptr %pprev14.i.i.i, align 4
  br label %hlist_del.exit.i

hlist_del.exit.i:                                 ; preds = %do.body13.i.i.i, %if.then22.i.hlist_del.exit.i_crit_edge
  %117 = ptrtoint ptr %rule.0.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr inttoptr (i32 256 to ptr), ptr %rule.0.i, align 4
  %118 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %rule.0.i) #10
  %active_filters.i = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 25, i32 1
  %119 = ptrtoint ptr %active_filters.i to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %active_filters.i, align 4
  %dec.i = add i16 %120, -1
  store i16 %dec.i, ptr %active_filters.i, align 4
  br label %if.end31.i

if.end31.i:                                       ; preds = %hlist_del.exit.i, %land.lhs.true.critedge.i.if.end31.i_crit_edge, %for.cond.i.if.end31.i_crit_edge
  %121 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr null, ptr %call7.i.i, align 8
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %call7.i.i, i32 0, i32 1
  %122 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr null, ptr %pprev.i.i, align 4
  %tobool33.not.i = icmp eq ptr %parent.0.i, null
  br i1 %tobool33.not.i, label %if.else.i48, label %if.then34.i

if.then34.i:                                      ; preds = %if.end31.i
  %123 = ptrtoint ptr %parent.0.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %parent.0.i, align 4
  %125 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store volatile ptr %124, ptr %call7.i.i, align 8
  store volatile ptr %call7.i.i, ptr %parent.0.i, align 4
  %126 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store volatile ptr %parent.0.i, ptr %pprev.i.i, align 4
  %127 = load ptr, ptr %call7.i.i, align 8
  %tobool.not.i.i47 = icmp eq ptr %127, null
  br i1 %tobool.not.i.i47, label %if.then34.i.if.end18_crit_edge, label %do.body24.i.i

if.then34.i.if.end18_crit_edge:                   ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

do.body24.i.i:                                    ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #12
  %pprev27.i.i = getelementptr inbounds %struct.hlist_node, ptr %127, i32 0, i32 1
  %128 = ptrtoint ptr %pprev27.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store volatile ptr %call7.i.i, ptr %pprev27.i.i, align 4
  br label %if.end18

if.else.i48:                                      ; preds = %if.end31.i
  %129 = ptrtoint ptr %aq_hw_rx_fltrs.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %aq_hw_rx_fltrs.i, align 4
  %131 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store volatile ptr %130, ptr %call7.i.i, align 8
  %tobool.not.i3.i = icmp eq ptr %130, null
  br i1 %tobool.not.i3.i, label %if.else.i48.hlist_add_head.exit.i_crit_edge, label %do.body12.i.i

if.else.i48.hlist_add_head.exit.i_crit_edge:      ; preds = %if.else.i48
  call void @__sanitizer_cov_trace_pc() #12
  br label %hlist_add_head.exit.i

do.body12.i.i:                                    ; preds = %if.else.i48
  call void @__sanitizer_cov_trace_pc() #12
  %pprev.i4.i = getelementptr inbounds %struct.hlist_node, ptr %130, i32 0, i32 1
  %132 = ptrtoint ptr %pprev.i4.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store volatile ptr %call7.i.i, ptr %pprev.i4.i, align 4
  br label %hlist_add_head.exit.i

hlist_add_head.exit.i:                            ; preds = %do.body12.i.i, %if.else.i48.hlist_add_head.exit.i_crit_edge
  %133 = ptrtoint ptr %aq_hw_rx_fltrs.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store volatile ptr %call7.i.i, ptr %aq_hw_rx_fltrs.i, align 4
  %134 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store volatile ptr %aq_hw_rx_fltrs.i, ptr %pprev.i.i, align 4
  br label %if.end18

if.end18:                                         ; preds = %hlist_add_head.exit.i, %do.body24.i.i, %if.then34.i.if.end18_crit_edge
  %active_filters40.i = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 25, i32 1
  %135 = ptrtoint ptr %active_filters40.i to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %active_filters40.i, align 4
  %inc.i = add i16 %136, 1
  store i16 %inc.i, ptr %active_filters40.i, align 4
  %call19 = tail call fastcc i32 @aq_add_del_rule(ptr noundef %aq_nic, ptr noundef nonnull %call7.i.i, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end18.cleanup_crit_edge, label %if.then27, !prof !40

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then27:                                        ; preds = %if.end18
  %137 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %call7.i.i, align 8
  %139 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %pprev.i.i, align 4
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_store4_noabort(i32 %141)
  store volatile ptr %138, ptr %140, align 4
  %tobool.not.i.i49 = icmp eq ptr %138, null
  br i1 %tobool.not.i.i49, label %if.then27.err_free_crit_edge, label %do.body13.i.i

if.then27.err_free_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free

do.body13.i.i:                                    ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %138, i32 0, i32 1
  %142 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store volatile ptr %140, ptr %pprev14.i.i, align 4
  br label %err_free

err_free:                                         ; preds = %do.body13.i.i, %if.then27.err_free_crit_edge
  %143 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr inttoptr (i32 256 to ptr), ptr %call7.i.i, align 8
  %144 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev.i.i, align 4
  %145 = ptrtoint ptr %active_filters40.i to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %active_filters40.i, align 4
  %dec = add i16 %146, -1
  store i16 %dec, ptr %active_filters40.i, align 4
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %err_free, %if.end18.cleanup_crit_edge, %if.end.cleanup_crit_edge, %103, %if.then11.i.i, %if.then3.i.i, %if.then.i.i, %if.then13.i.i, %if.then38.i.i, %if.then21.i.i, %if.then10.i.i, %if.then.i27.i, %sw.default.i.i.i, %if.then11.i74.i.i.i, %if.then.i66.i.i.i, %if.else11.i.i.i, %if.then11.i.i.i.i, %if.then.i53.i.i.i, %if.then13.i.i.i.i, %if.then6.i.i.i.i, %if.then.i.i.i.i, %if.then1.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end18.cleanup_crit_edge ], [ %call19, %err_free ], [ -12, %if.end.cleanup_crit_edge ], [ -95, %if.then.i.i ], [ -95, %if.then3.i.i ], [ -95, %if.then11.i.i ], [ -22, %if.then21.i.i ], [ -22, %if.then38.i.i ], [ -22, %if.then10.i.i ], [ -22, %if.then.i27.i ], [ -22, %if.then11.i74.i.i.i ], [ -22, %if.then.i66.i.i.i ], [ -22, %if.then11.i.i.i.i ], [ -22, %if.then.i53.i.i.i ], [ -22, %if.then6.i.i.i.i ], [ -22, %if.then13.i.i.i.i ], [ -22, %if.then.i.i.i.i ], [ -22, %sw.default.i.i.i ], [ -22, %if.else11.i.i.i ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.then13.i.i ], [ -22, %if.then1.i.i ], [ -17, %103 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @aq_add_del_rule(ptr noundef %aq_nic, ptr noundef %aq_rx_fltr, i1 noundef zeroext %add) unnamed_addr #0 align 64 {
entry:
  %data.i73 = alloca %struct.aq_rx_filter_l3l4, align 4
  %data.i50 = alloca %struct.aq_rx_filter_l2, align 2
  %data.i = alloca %struct.aq_rx_filter_l2, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %aq_fsp = getelementptr inbounds %struct.aq_rx_filter, ptr %aq_rx_fltr, i32 0, i32 2
  %0 = ptrtoint ptr %aq_fsp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %aq_fsp, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %tobool.not = icmp sgt i32 %1, -1
  br i1 %tobool.not, label %if.else16, label %if.then

if.then:                                          ; preds = %entry
  %vlan_tci = getelementptr inbounds %struct.aq_rx_filter, ptr %aq_rx_fltr, i32 0, i32 2, i32 4, i32 3
  %2 = ptrtoint ptr %vlan_tci to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vlan_tci, align 2
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.20)
  switch i16 %3, label %if.then.if.end27_crit_edge [
    i16 4095, label %if.then3
    i16 -8192, label %if.then11
  ]

if.then.if.end27_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then3:                                         ; preds = %if.then
  %type = getelementptr inbounds %struct.aq_rx_filter, ptr %aq_rx_fltr, i32 0, i32 1
  %5 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %type, align 8
  %aq_hw_ops1.i = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 10
  %6 = ptrtoint ptr %aq_hw_ops1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %aq_hw_ops1.i, align 8
  %hw_filter_vlan_set.i = getelementptr inbounds %struct.aq_hw_ops, ptr %7, i32 0, i32 25
  %8 = ptrtoint ptr %hw_filter_vlan_set.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw_filter_vlan_set.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.then3.if.end27_crit_edge, label %if.end.i, !prof !39

if.then3.if.end27_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.end.i:                                         ; preds = %if.then3
  %fl2.i = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 25, i32 2
  %location1.i.i = getelementptr inbounds %struct.aq_rx_filter, ptr %aq_rx_fltr, i32 0, i32 2, i32 6
  %10 = ptrtoint ptr %location1.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %location1.i.i, align 8
  %arrayidx.i.i = getelementptr %struct.aq_rx_filter_vlan, ptr %fl2.i, i32 %11
  %12 = call ptr @memset(ptr %arrayidx.i.i, i32 0, i32 6)
  br i1 %add, label %for.cond.preheader.i.i, label %if.end.i.aq_set_data_fvlan.exit.i_crit_edge

if.end.i.aq_set_data_fvlan.exit.i_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %aq_set_data_fvlan.exit.i

for.cond.preheader.i.i:                           ; preds = %if.end.i
  %vlan_tci.i.i = getelementptr inbounds %struct.aq_rx_filter, ptr %aq_rx_fltr, i32 0, i32 2, i32 2, i32 3
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i
  %i.01.i.i = phi i32 [ 0, %for.cond.preheader.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %vlan_id.i.i = getelementptr %struct.aq_rx_filter_vlan, ptr %fl2.i, i32 %i.01.i.i, i32 2
  %13 = ptrtoint ptr %vlan_id.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %vlan_id.i.i, align 2
  %15 = ptrtoint ptr %vlan_tci.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %vlan_tci.i.i, align 2
  %17 = and i16 %16, 4095
  call void @__sanitizer_cov_trace_cmp2(i16 %14, i16 %17)
  %cmp4.i.i = icmp eq i16 %14, %17
  br i1 %cmp4.i.i, label %if.then6.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

if.then6.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx2.i.i = getelementptr %struct.aq_rx_filter_vlan, ptr %fl2.i, i32 %i.01.i.i
  %18 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %arrayidx2.i.i, align 2
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then6.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.01.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 16
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv9.i.i = trunc i32 %11 to i8
  %location11.i.i = getelementptr %struct.aq_rx_filter_vlan, ptr %fl2.i, i32 %11, i32 1
  %19 = ptrtoint ptr %location11.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv9.i.i, ptr %location11.i.i, align 1
  %20 = ptrtoint ptr %vlan_tci.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %vlan_tci.i.i, align 2
  %22 = and i16 %21, 4095
  %vlan_id18.i.i = getelementptr %struct.aq_rx_filter_vlan, ptr %fl2.i, i32 %11, i32 2
  %23 = ptrtoint ptr %vlan_id18.i.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %vlan_id18.i.i, align 2
  %ring_cookie.i.i = getelementptr inbounds %struct.aq_rx_filter, ptr %aq_rx_fltr, i32 0, i32 2, i32 5
  %24 = ptrtoint ptr %ring_cookie.i.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %ring_cookie.i.i, align 8
  %26 = trunc i64 %25 to i8
  %conv20.i.i = and i8 %26, 31
  %queue.i.i = getelementptr %struct.aq_rx_filter_vlan, ptr %fl2.i, i32 %11, i32 3
  %27 = ptrtoint ptr %queue.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv20.i.i, ptr %queue.i.i, align 2
  %28 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %arrayidx.i.i, align 2
  br label %aq_set_data_fvlan.exit.i

aq_set_data_fvlan.exit.i:                         ; preds = %for.end.i.i, %if.end.i.aq_set_data_fvlan.exit.i_crit_edge
  %call6.i = tail call i32 @aq_filters_vlans_update(ptr noundef %aq_nic) #10
  br label %if.end27

if.then11:                                        ; preds = %if.then
  %type12 = getelementptr inbounds %struct.aq_rx_filter, ptr %aq_rx_fltr, i32 0, i32 1
  %29 = ptrtoint ptr %type12 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %type12, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i) #10
  %30 = getelementptr inbounds %struct.aq_rx_filter_l2, ptr %data.i, i32 0, i32 1
  %31 = getelementptr inbounds %struct.aq_rx_filter_l2, ptr %data.i, i32 0, i32 2
  %32 = getelementptr inbounds %struct.aq_rx_filter_l2, ptr %data.i, i32 0, i32 3
  %33 = getelementptr inbounds %struct.aq_rx_filter_l2, ptr %data.i, i32 0, i32 4
  %aq_hw1.i = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 4
  %34 = ptrtoint ptr %aq_hw1.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %aq_hw1.i, align 8
  %aq_hw_ops2.i = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 10
  %36 = ptrtoint ptr %aq_hw_ops2.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %aq_hw_ops2.i, align 8
  %location.i.i = getelementptr inbounds %struct.aq_rx_filter, ptr %aq_rx_fltr, i32 0, i32 2, i32 6
  %38 = ptrtoint ptr %location.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %location.i.i, align 8
  %40 = trunc i32 %39 to i8
  %conv.i.i = add i8 %40, -16
  %41 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv.i.i, ptr %30, align 1
  %ring_cookie.i.i45 = getelementptr inbounds %struct.aq_rx_filter, ptr %aq_rx_fltr, i32 0, i32 2, i32 5
  %42 = ptrtoint ptr %ring_cookie.i.i45 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %ring_cookie.i.i45, align 8
  %conv4.i.i = trunc i64 %43 to i8
  %44 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv4.i.i, ptr %data.i, align 2
  %h_proto.i.i = getelementptr inbounds %struct.aq_rx_filter, ptr %aq_rx_fltr, i32 0, i32 2, i32 1, i32 0, i32 0, i32 3
  %45 = ptrtoint ptr %h_proto.i.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %h_proto.i.i, align 4
  %47 = ptrtoint ptr %33 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %33, align 2
  %48 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %31, align 2
  %vlan_tci10.i.i = getelementptr inbounds %struct.aq_rx_filter, ptr %aq_rx_fltr, i32 0, i32 2, i32 2, i32 3
  %49 = ptrtoint ptr %vlan_tci10.i.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %vlan_tci10.i.i, align 2
  %51 = lshr i16 %50, 13
  %conv12.i.i = trunc i16 %51 to i8
  %52 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv12.i.i, ptr %32, align 1
  %hw_filter_l2_set.i = getelementptr inbounds %struct.aq_hw_ops, ptr %37, i32 0, i32 23
  %53 = ptrtoint ptr %hw_filter_l2_set.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %hw_filter_l2_set.i, align 4
  %tobool3.not.i = icmp eq ptr %54, null
  br i1 %tobool3.not.i, label %if.then11.aq_add_del_fether.exit_crit_edge, label %if.end.i48, !prof !39

if.then11.aq_add_del_fether.exit_crit_edge:       ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %aq_add_del_fether.exit

if.end.i48:                                       ; preds = %if.then11
  %hw_filter_l2_clear.i = getelementptr inbounds %struct.aq_hw_ops, ptr %37, i32 0, i32 24
  %55 = ptrtoint ptr %hw_filter_l2_clear.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %hw_filter_l2_clear.i, align 4
  %tobool7.not.i = icmp eq ptr %56, null
  br i1 %tobool7.not.i, label %if.end.i48.aq_add_del_fether.exit_crit_edge, label %if.end17.i, !prof !39

if.end.i48.aq_add_del_fether.exit_crit_edge:      ; preds = %if.end.i48
  call void @__sanitizer_cov_trace_pc() #12
  br label %aq_add_del_fether.exit

if.end17.i:                                       ; preds = %if.end.i48
  call void @__sanitizer_cov_trace_pc() #12
  %..i = select i1 %add, ptr %54, ptr %56
  %call22.i = call i32 %..i(ptr noundef %35, ptr noundef nonnull %data.i) #10
  br label %aq_add_del_fether.exit

aq_add_del_fether.exit:                           ; preds = %if.end17.i, %if.end.i48.aq_add_del_fether.exit_crit_edge, %if.then11.aq_add_del_fether.exit_crit_edge
  %retval.0.i49 = phi i32 [ -95, %if.then11.aq_add_del_fether.exit_crit_edge ], [ -95, %if.end.i48.aq_add_del_fether.exit_crit_edge ], [ %call22.i, %if.end17.i ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i) #10
  br label %if.end27

if.else16:                                        ; preds = %entry
  %57 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %1, label %if.else16.if.end27_crit_edge [
    i32 18, label %sw.bb
    i32 1, label %if.else16.sw.bb23_crit_edge
    i32 2, label %if.else16.sw.bb23_crit_edge78
    i32 3, label %if.else16.sw.bb23_crit_edge79
    i32 13, label %if.else16.sw.bb23_crit_edge80
    i32 5, label %if.else16.sw.bb23_crit_edge81
    i32 6, label %if.else16.sw.bb23_crit_edge82
    i32 7, label %if.else16.sw.bb23_crit_edge83
    i32 14, label %if.else16.sw.bb23_crit_edge84
  ]

if.else16.sw.bb23_crit_edge84:                    ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb23

if.else16.sw.bb23_crit_edge83:                    ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb23

if.else16.sw.bb23_crit_edge82:                    ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb23

if.else16.sw.bb23_crit_edge81:                    ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb23

if.else16.sw.bb23_crit_edge80:                    ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb23

if.else16.sw.bb23_crit_edge79:                    ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb23

if.else16.sw.bb23_crit_edge78:                    ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb23

if.else16.sw.bb23_crit_edge:                      ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb23

if.else16.if.end27_crit_edge:                     ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

sw.bb:                                            ; preds = %if.else16
  %type20 = getelementptr inbounds %struct.aq_rx_filter, ptr %aq_rx_fltr, i32 0, i32 1
  %58 = ptrtoint ptr %type20 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %type20, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i50) #10
  %59 = getelementptr inbounds %struct.aq_rx_filter_l2, ptr %data.i50, i32 0, i32 1
  %60 = getelementptr inbounds %struct.aq_rx_filter_l2, ptr %data.i50, i32 0, i32 2
  %61 = getelementptr inbounds %struct.aq_rx_filter_l2, ptr %data.i50, i32 0, i32 3
  %62 = getelementptr inbounds %struct.aq_rx_filter_l2, ptr %data.i50, i32 0, i32 4
  %aq_hw1.i51 = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 4
  %63 = ptrtoint ptr %aq_hw1.i51 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %aq_hw1.i51, align 8
  %aq_hw_ops2.i52 = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 10
  %65 = ptrtoint ptr %aq_hw_ops2.i52 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %aq_hw_ops2.i52, align 8
  %location.i.i53 = getelementptr inbounds %struct.aq_rx_filter, ptr %aq_rx_fltr, i32 0, i32 2, i32 6
  %67 = ptrtoint ptr %location.i.i53 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %location.i.i53, align 8
  %69 = trunc i32 %68 to i8
  %conv.i.i54 = add i8 %69, -16
  %70 = ptrtoint ptr %59 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %conv.i.i54, ptr %59, align 1
  %ring_cookie.i.i55 = getelementptr inbounds %struct.aq_rx_filter, ptr %aq_rx_fltr, i32 0, i32 2, i32 5
  %71 = ptrtoint ptr %ring_cookie.i.i55 to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %ring_cookie.i.i55, align 8
  %conv4.i.i56 = trunc i64 %72 to i8
  %73 = ptrtoint ptr %data.i50 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %conv4.i.i56, ptr %data.i50, align 2
  %h_proto.i.i57 = getelementptr inbounds %struct.aq_rx_filter, ptr %aq_rx_fltr, i32 0, i32 2, i32 1, i32 0, i32 0, i32 3
  %74 = ptrtoint ptr %h_proto.i.i57 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %h_proto.i.i57, align 4
  %76 = ptrtoint ptr %62 to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %75, ptr %62, align 2
  %vlan_tci.i.i58 = getelementptr inbounds %struct.aq_rx_filter, ptr %aq_rx_fltr, i32 0, i32 2, i32 4, i32 3
  %77 = ptrtoint ptr %vlan_tci.i.i58 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %vlan_tci.i.i58, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -8192, i16 %78)
  %cmp7.i.i59 = icmp eq i16 %78, -8192
  %conv9.i.i60 = zext i1 %cmp7.i.i59 to i8
  %79 = ptrtoint ptr %60 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %conv9.i.i60, ptr %60, align 2
  %vlan_tci10.i.i61 = getelementptr inbounds %struct.aq_rx_filter, ptr %aq_rx_fltr, i32 0, i32 2, i32 2, i32 3
  %80 = ptrtoint ptr %vlan_tci10.i.i61 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %vlan_tci10.i.i61, align 2
  %82 = lshr i16 %81, 13
  %conv12.i.i62 = trunc i16 %82 to i8
  %83 = ptrtoint ptr %61 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %conv12.i.i62, ptr %61, align 1
  %hw_filter_l2_set.i63 = getelementptr inbounds %struct.aq_hw_ops, ptr %66, i32 0, i32 23
  %84 = ptrtoint ptr %hw_filter_l2_set.i63 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %hw_filter_l2_set.i63, align 4
  %tobool3.not.i64 = icmp eq ptr %85, null
  br i1 %tobool3.not.i64, label %sw.bb.aq_add_del_fether.exit72_crit_edge, label %if.end.i67, !prof !39

sw.bb.aq_add_del_fether.exit72_crit_edge:         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %aq_add_del_fether.exit72

if.end.i67:                                       ; preds = %sw.bb
  %hw_filter_l2_clear.i65 = getelementptr inbounds %struct.aq_hw_ops, ptr %66, i32 0, i32 24
  %86 = ptrtoint ptr %hw_filter_l2_clear.i65 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %hw_filter_l2_clear.i65, align 4
  %tobool7.not.i66 = icmp eq ptr %87, null
  br i1 %tobool7.not.i66, label %if.end.i67.aq_add_del_fether.exit72_crit_edge, label %if.end17.i70, !prof !39

if.end.i67.aq_add_del_fether.exit72_crit_edge:    ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #12
  br label %aq_add_del_fether.exit72

if.end17.i70:                                     ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #12
  %..i68 = select i1 %add, ptr %85, ptr %87
  %call22.i69 = call i32 %..i68(ptr noundef %64, ptr noundef nonnull %data.i50) #10
  br label %aq_add_del_fether.exit72

aq_add_del_fether.exit72:                         ; preds = %if.end17.i70, %if.end.i67.aq_add_del_fether.exit72_crit_edge, %sw.bb.aq_add_del_fether.exit72_crit_edge
  %retval.0.i71 = phi i32 [ -95, %sw.bb.aq_add_del_fether.exit72_crit_edge ], [ -95, %if.end.i67.aq_add_del_fether.exit72_crit_edge ], [ %call22.i69, %if.end17.i70 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i50) #10
  br label %if.end27

sw.bb23:                                          ; preds = %if.else16.sw.bb23_crit_edge, %if.else16.sw.bb23_crit_edge78, %if.else16.sw.bb23_crit_edge79, %if.else16.sw.bb23_crit_edge80, %if.else16.sw.bb23_crit_edge81, %if.else16.sw.bb23_crit_edge82, %if.else16.sw.bb23_crit_edge83, %if.else16.sw.bb23_crit_edge84
  %type24 = getelementptr inbounds %struct.aq_rx_filter, ptr %aq_rx_fltr, i32 0, i32 1
  %88 = ptrtoint ptr %type24 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 2, ptr %type24, align 8
  %aq_hw_ops1.i74 = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 10
  %89 = ptrtoint ptr %aq_hw_ops1.i74 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %aq_hw_ops1.i74, align 8
  %aq_hw2.i = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 4
  %91 = ptrtoint ptr %aq_hw2.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %aq_hw2.i, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %data.i73) #10
  %location.i = getelementptr inbounds %struct.aq_rx_filter, ptr %aq_rx_fltr, i32 0, i32 2, i32 6
  %93 = ptrtoint ptr %location.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %location.i, align 8
  %95 = add i32 %94, -40
  call void @__sanitizer_cov_trace_const_cmp4(i32 -8, i32 %95)
  %96 = icmp ult i32 %95, -8
  br i1 %96, label %sw.bb23.aq_add_del_fl3l4.exit_crit_edge, label %lor.rhs.i, !prof !41

sw.bb23.aq_add_del_fl3l4.exit_crit_edge:          ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #12
  br label %aq_add_del_fl3l4.exit

lor.rhs.i:                                        ; preds = %sw.bb23
  %97 = call ptr @memset(ptr %data.i73, i32 0, i32 48)
  %fl3l4.i.i = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 25, i32 3
  %is_ipv6.i.i = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 25, i32 3, i32 2
  %98 = ptrtoint ptr %is_ipv6.i.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %is_ipv6.i.i, align 2
  %is_ipv61.i.i = getelementptr inbounds %struct.aq_rx_filter_l3l4, ptr %data.i73, i32 0, i32 6
  %100 = ptrtoint ptr %is_ipv61.i.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %99, ptr %is_ipv61.i.i, align 4
  %101 = trunc i32 %94 to i8
  %conv.i.i75 = add nsw i8 %101, -32
  %location2.i.i = getelementptr inbounds %struct.aq_rx_filter_l3l4, ptr %data.i73, i32 0, i32 1
  %102 = ptrtoint ptr %location2.i.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %conv.i.i75, ptr %location2.i.i, align 4
  br i1 %add, label %if.end20.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool4.not.i.i = icmp eq i8 %99, 0
  br i1 %tobool4.not.i.i, label %if.then5.i.i, label %if.else.i.i

if.then5.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv7.i.i = zext i8 %conv.i.i75 to i32
  %shl.i.i = shl nuw nsw i32 1, %conv7.i.i
  %103 = ptrtoint ptr %fl3l4.i.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %fl3l4.i.i, align 2
  %105 = trunc i32 %shl.i.i to i8
  %106 = xor i8 %105, -1
  %conv10.i.i = and i8 %104, %106
  store i8 %conv10.i.i, ptr %fl3l4.i.i, align 2
  br label %aq_set_data_fl3l4.exit.i

if.else.i.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %107 = lshr i8 %conv.i.i75, 2
  %div.i.i = zext i8 %107 to i32
  %shl13.i.i = shl nuw nsw i32 1, %div.i.i
  %active_ipv6.i.i = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 25, i32 3, i32 1
  %108 = ptrtoint ptr %active_ipv6.i.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %bf.load.i.i = load i8, ptr %active_ipv6.i.i, align 1
  %109 = trunc i32 %shl13.i.i to i8
  %110 = xor i8 %109, -1
  %conv181.i.i = shl i8 %110, 6
  %bf.lshr23.i.i = or i8 %conv181.i.i, 63
  %bf.set.i.i = and i8 %bf.load.i.i, %bf.lshr23.i.i
  store i8 %bf.set.i.i, ptr %active_ipv6.i.i, align 1
  br label %aq_set_data_fl3l4.exit.i

if.end20.i.i:                                     ; preds = %lor.rhs.i
  %111 = ptrtoint ptr %data.i73 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %data.i73, align 4
  %or.i.i = or i32 %112, -2147483648
  store i32 %or.i.i, ptr %data.i73, align 4
  %switch.tableidx = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx)
  %113 = icmp ult i32 %switch.tableidx, 7
  br i1 %113, label %switch.hole_check, label %if.end20.i.i.sw.epilog.i.i_crit_edge

if.end20.i.i.sw.epilog.i.i_crit_edge:             ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i.i

switch.hole_check:                                ; preds = %if.end20.i.i
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 119, %switch.maskindex
  %114 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %switch.lobit.not = icmp eq i8 %114, 0
  br i1 %switch.lobit.not, label %switch.hole_check.sw.epilog.i.i_crit_edge, label %switch.lookup

switch.hole_check.sw.epilog.i.i_crit_edge:        ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i.i

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.aq_add_del_rule, i32 0, i32 %switch.tableidx
  %115 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %115)
  %switch.load = load i32, ptr %switch.gep, align 4
  %or32.i.i = or i32 %switch.load, %112
  %116 = ptrtoint ptr %data.i73 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %or32.i.i, ptr %data.i73, align 4
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %switch.lookup, %switch.hole_check.sw.epilog.i.i_crit_edge, %if.end20.i.i.sw.epilog.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool34.not.i.i = icmp eq i8 %99, 0
  br i1 %tobool34.not.i.i, label %if.end74.i.i, label %if.end74.i.thread.i

if.end74.i.i:                                     ; preds = %sw.epilog.i.i
  %h_u.i.i = getelementptr inbounds %struct.aq_rx_filter, ptr %aq_rx_fltr, i32 0, i32 2, i32 1
  %117 = ptrtoint ptr %h_u.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %h_u.i.i, align 4
  %ip_src.i.i = getelementptr inbounds %struct.aq_rx_filter_l3l4, ptr %data.i73, i32 0, i32 3
  %119 = ptrtoint ptr %ip_src.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %118, ptr %ip_src.i.i, align 4
  %ip4dst.i.i = getelementptr inbounds %struct.aq_rx_filter, ptr %aq_rx_fltr, i32 0, i32 2, i32 1, i32 0, i32 0, i32 1
  %120 = ptrtoint ptr %ip4dst.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %ip4dst.i.i, align 4
  %ip_dst.i.i = getelementptr inbounds %struct.aq_rx_filter_l3l4, ptr %data.i73, i32 0, i32 2
  %122 = ptrtoint ptr %ip_dst.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %121, ptr %ip_dst.i.i, align 4
  %conv39.i.i = zext i8 %conv.i.i75 to i32
  %shl40.i.i = shl nuw nsw i32 1, %conv39.i.i
  %123 = ptrtoint ptr %fl3l4.i.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %fl3l4.i.i, align 2
  %125 = trunc i32 %shl40.i.i to i8
  %conv45.i.i = or i8 %124, %125
  store i8 %conv45.i.i, ptr %fl3l4.i.i, align 2
  %126 = ptrtoint ptr %aq_fsp to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %aq_fsp, align 8
  %.off.i.i = add i32 %127, -13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i.i)
  %switch.i.i = icmp ult i32 %.off.i.i, 2
  br i1 %switch.i.i, label %if.end74.i.i.if.end95.i.i_crit_edge, label %if.then84.i.i

if.end74.i.i.if.end95.i.i_crit_edge:              ; preds = %if.end74.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end95.i.i

if.end74.i.thread.i:                              ; preds = %sw.epilog.i.i
  %128 = lshr i8 %conv.i.i75, 2
  %div49.i.i = zext i8 %128 to i32
  %shl50.i.i = shl nuw nsw i32 1, %div49.i.i
  %active_ipv652.i.i = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 25, i32 3, i32 1
  %129 = ptrtoint ptr %active_ipv652.i.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %bf.load53.i.i = load i8, ptr %active_ipv652.i.i, align 1
  %130 = trunc i32 %shl50.i.i to i8
  %bf.value594.i.i = shl nuw i8 %130, 6
  %bf.load53.masked.i.i = and i8 %bf.load53.i.i, -64
  %bf.shl60.i.i = or i8 %bf.load53.masked.i.i, %bf.value594.i.i
  %bf.clear61.i.i = and i8 %bf.load53.i.i, 63
  %bf.set62.i.i = or i8 %bf.shl60.i.i, %bf.clear61.i.i
  store i8 %bf.set62.i.i, ptr %active_ipv652.i.i, align 1
  %h_u64.i.i = getelementptr inbounds %struct.aq_rx_filter, ptr %aq_rx_fltr, i32 0, i32 2, i32 1
  %arrayidx65.i.i = getelementptr %struct.aq_rx_filter, ptr %aq_rx_fltr, i32 0, i32 2, i32 1, i32 0, i32 1, i32 0
  %131 = ptrtoint ptr %arrayidx65.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %arrayidx65.i.i, align 4
  %arrayidx67.i.i = getelementptr inbounds %struct.aq_rx_filter_l3l4, ptr %data.i73, i32 0, i32 2, i32 0
  %133 = ptrtoint ptr %arrayidx67.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %132, ptr %arrayidx67.i.i, align 4
  %134 = ptrtoint ptr %h_u64.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %h_u64.i.i, align 4
  %arrayidx71.i.i = getelementptr inbounds %struct.aq_rx_filter_l3l4, ptr %data.i73, i32 0, i32 3, i32 0
  %136 = ptrtoint ptr %arrayidx71.i.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %135, ptr %arrayidx71.i.i, align 4
  %arrayidx65.1.i.i = getelementptr %struct.aq_rx_filter, ptr %aq_rx_fltr, i32 0, i32 2, i32 1, i32 0, i32 1, i32 1
  %137 = ptrtoint ptr %arrayidx65.1.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %arrayidx65.1.i.i, align 4
  %arrayidx67.1.i.i = getelementptr inbounds %struct.aq_rx_filter_l3l4, ptr %data.i73, i32 0, i32 2, i32 1
  %139 = ptrtoint ptr %arrayidx67.1.i.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %138, ptr %arrayidx67.1.i.i, align 4
  %arrayidx69.1.i.i = getelementptr %struct.aq_rx_filter, ptr %aq_rx_fltr, i32 0, i32 2, i32 1, i32 0, i32 0, i32 1
  %140 = ptrtoint ptr %arrayidx69.1.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %arrayidx69.1.i.i, align 4
  %arrayidx71.1.i.i = getelementptr inbounds %struct.aq_rx_filter_l3l4, ptr %data.i73, i32 0, i32 3, i32 1
  %142 = ptrtoint ptr %arrayidx71.1.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %141, ptr %arrayidx71.1.i.i, align 4
  %arrayidx65.2.i.i = getelementptr %struct.aq_rx_filter, ptr %aq_rx_fltr, i32 0, i32 2, i32 1, i32 0, i32 1, i32 2
  %143 = ptrtoint ptr %arrayidx65.2.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %arrayidx65.2.i.i, align 4
  %arrayidx67.2.i.i = getelementptr inbounds %struct.aq_rx_filter_l3l4, ptr %data.i73, i32 0, i32 2, i32 2
  %145 = ptrtoint ptr %arrayidx67.2.i.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %144, ptr %arrayidx67.2.i.i, align 4
  %arrayidx69.2.i.i = getelementptr %struct.aq_rx_filter, ptr %aq_rx_fltr, i32 0, i32 2, i32 1, i32 0, i32 0, i32 2
  %146 = ptrtoint ptr %arrayidx69.2.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %arrayidx69.2.i.i, align 4
  %arrayidx71.2.i.i = getelementptr inbounds %struct.aq_rx_filter_l3l4, ptr %data.i73, i32 0, i32 3, i32 2
  %148 = ptrtoint ptr %arrayidx71.2.i.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %147, ptr %arrayidx71.2.i.i, align 4
  %arrayidx65.3.i.i = getelementptr %struct.aq_rx_filter, ptr %aq_rx_fltr, i32 0, i32 2, i32 1, i32 0, i32 1, i32 3
  %149 = ptrtoint ptr %arrayidx65.3.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %arrayidx65.3.i.i, align 4
  %arrayidx67.3.i.i = getelementptr inbounds %struct.aq_rx_filter_l3l4, ptr %data.i73, i32 0, i32 2, i32 3
  %151 = ptrtoint ptr %arrayidx67.3.i.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %150, ptr %arrayidx67.3.i.i, align 4
  %arrayidx69.3.i.i = getelementptr %struct.aq_rx_filter, ptr %aq_rx_fltr, i32 0, i32 2, i32 1, i32 0, i32 0, i32 3
  %152 = ptrtoint ptr %arrayidx69.3.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %arrayidx69.3.i.i, align 4
  %arrayidx71.3.i.i = getelementptr inbounds %struct.aq_rx_filter_l3l4, ptr %data.i73, i32 0, i32 3, i32 3
  %154 = ptrtoint ptr %arrayidx71.3.i.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %153, ptr %arrayidx71.3.i.i, align 4
  %155 = ptrtoint ptr %data.i73 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %data.i73, align 4
  %or73.i.i = or i32 %156, 1073741824
  store i32 %or73.i.i, ptr %data.i73, align 4
  %157 = ptrtoint ptr %aq_fsp to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %aq_fsp, align 8
  %.off.i16.i = add i32 %158, -13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i16.i)
  %switch.i17.i = icmp ult i32 %.off.i16.i, 2
  br i1 %switch.i17.i, label %if.end74.i.thread.i.if.end115.i.i_crit_edge, label %if.else87.i.i

if.end74.i.thread.i.if.end115.i.i_crit_edge:      ; preds = %if.end74.i.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end115.i.i

if.then84.i.i:                                    ; preds = %if.end74.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %pdst.i.i = getelementptr inbounds %struct.ethtool_tcpip4_spec, ptr %h_u.i.i, i32 0, i32 3
  %159 = ptrtoint ptr %pdst.i.i to i32
  call void @__asan_load2_noabort(i32 %159)
  %160 = load i16, ptr %pdst.i.i, align 2
  %p_dst.i.i = getelementptr inbounds %struct.aq_rx_filter_l3l4, ptr %data.i73, i32 0, i32 4
  %161 = ptrtoint ptr %p_dst.i.i to i32
  call void @__asan_store2_noabort(i32 %161)
  store i16 %160, ptr %p_dst.i.i, align 4
  %psrc.i.i = getelementptr inbounds %struct.aq_rx_filter, ptr %aq_rx_fltr, i32 0, i32 2, i32 1, i32 0, i32 0, i32 2
  br label %if.end95.sink.split.i.i

if.else87.i.i:                                    ; preds = %if.end74.i.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  %pdst89.i.i = getelementptr inbounds %struct.aq_rx_filter, ptr %aq_rx_fltr, i32 0, i32 2, i32 1, i32 0, i32 3
  %162 = ptrtoint ptr %pdst89.i.i to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %pdst89.i.i, align 2
  %p_dst90.i.i = getelementptr inbounds %struct.aq_rx_filter_l3l4, ptr %data.i73, i32 0, i32 4
  %164 = ptrtoint ptr %p_dst90.i.i to i32
  call void @__asan_store2_noabort(i32 %164)
  store i16 %163, ptr %p_dst90.i.i, align 4
  %psrc92.i.i = getelementptr inbounds %struct.aq_rx_filter, ptr %aq_rx_fltr, i32 0, i32 2, i32 1, i32 0, i32 2
  br label %if.end95.sink.split.i.i

if.end95.sink.split.i.i:                          ; preds = %if.else87.i.i, %if.then84.i.i
  %psrc.sink.i.i = phi ptr [ %psrc.i.i, %if.then84.i.i ], [ %psrc92.i.i, %if.else87.i.i ]
  %165 = ptrtoint ptr %psrc.sink.i.i to i32
  call void @__asan_load2_noabort(i32 %165)
  %166 = load i16, ptr %psrc.sink.i.i, align 4
  %p_src.i.i = getelementptr inbounds %struct.aq_rx_filter_l3l4, ptr %data.i73, i32 0, i32 5
  %167 = ptrtoint ptr %p_src.i.i to i32
  call void @__asan_store2_noabort(i32 %167)
  store i16 %166, ptr %p_src.i.i, align 2
  br label %if.end95.i.i

if.end95.i.i:                                     ; preds = %if.end95.sink.split.i.i, %if.end74.i.i.if.end95.i.i_crit_edge
  %ip_src96.i.i = getelementptr inbounds %struct.aq_rx_filter_l3l4, ptr %data.i73, i32 0, i32 3
  %168 = ptrtoint ptr %ip_src96.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %ip_src96.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %169)
  %tobool98.not.i.i = icmp eq i32 %169, 0
  %tobool34.not.i.not.i = xor i1 %tobool34.not.i.i, true
  %brmerge.i = select i1 %tobool98.not.i.i, i1 true, i1 %tobool34.not.i.not.i
  br i1 %brmerge.i, label %if.end105.i.i, label %if.end105.i.thread.i

if.end105.i.i:                                    ; preds = %if.end95.i.i
  %ip_dst106.i.i = getelementptr inbounds %struct.aq_rx_filter_l3l4, ptr %data.i73, i32 0, i32 2
  %170 = ptrtoint ptr %ip_dst106.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %ip_dst106.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %171)
  %tobool108.not.i.i = icmp eq i32 %171, 0
  %brmerge23.i = select i1 %tobool108.not.i.i, i1 true, i1 %tobool34.not.i.not.i
  br i1 %brmerge23.i, label %if.end105.i.i.if.end115.i.i_crit_edge, label %if.end105.i.i.if.then112.i.i_crit_edge

if.end105.i.i.if.then112.i.i_crit_edge:           ; preds = %if.end105.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then112.i.i

if.end105.i.i.if.end115.i.i_crit_edge:            ; preds = %if.end105.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end115.i.i

if.end105.i.thread.i:                             ; preds = %if.end95.i.i
  %172 = ptrtoint ptr %data.i73 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %data.i73, align 4
  %or104.i.i = or i32 %173, 536870912
  store i32 %or104.i.i, ptr %data.i73, align 4
  %ip_dst106.i20.i = getelementptr inbounds %struct.aq_rx_filter_l3l4, ptr %data.i73, i32 0, i32 2
  %174 = ptrtoint ptr %ip_dst106.i20.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %ip_dst106.i20.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %175)
  %tobool108.not.i21.i = icmp eq i32 %175, 0
  br i1 %tobool108.not.i21.i, label %if.end105.i.thread.i.if.end115.i.i_crit_edge, label %if.end105.i.thread.i.if.then112.i.i_crit_edge

if.end105.i.thread.i.if.then112.i.i_crit_edge:    ; preds = %if.end105.i.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then112.i.i

if.end105.i.thread.i.if.end115.i.i_crit_edge:     ; preds = %if.end105.i.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end115.i.i

if.then112.i.i:                                   ; preds = %if.end105.i.thread.i.if.then112.i.i_crit_edge, %if.end105.i.i.if.then112.i.i_crit_edge
  %176 = ptrtoint ptr %data.i73 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %data.i73, align 4
  %or114.i.i = or i32 %177, 268435456
  store i32 %or114.i.i, ptr %data.i73, align 4
  br label %if.end115.i.i

if.end115.i.i:                                    ; preds = %if.then112.i.i, %if.end105.i.thread.i.if.end115.i.i_crit_edge, %if.end105.i.i.if.end115.i.i_crit_edge, %if.end74.i.thread.i.if.end115.i.i_crit_edge
  %p_dst116.i.i = getelementptr inbounds %struct.aq_rx_filter_l3l4, ptr %data.i73, i32 0, i32 4
  %178 = ptrtoint ptr %p_dst116.i.i to i32
  call void @__asan_load2_noabort(i32 %178)
  %179 = load i16, ptr %p_dst116.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %179)
  %tobool117.not.i.i = icmp eq i16 %179, 0
  br i1 %tobool117.not.i.i, label %if.end115.i.i.if.end121.i.i_crit_edge, label %if.then118.i.i

if.end115.i.i.if.end121.i.i_crit_edge:            ; preds = %if.end115.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end121.i.i

if.then118.i.i:                                   ; preds = %if.end115.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %180 = ptrtoint ptr %data.i73 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %data.i73, align 4
  %or120.i.i = or i32 %181, 67108864
  store i32 %or120.i.i, ptr %data.i73, align 4
  br label %if.end121.i.i

if.end121.i.i:                                    ; preds = %if.then118.i.i, %if.end115.i.i.if.end121.i.i_crit_edge
  %p_src122.i.i = getelementptr inbounds %struct.aq_rx_filter_l3l4, ptr %data.i73, i32 0, i32 5
  %182 = ptrtoint ptr %p_src122.i.i to i32
  call void @__asan_load2_noabort(i32 %182)
  %183 = load i16, ptr %p_src122.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %183)
  %tobool123.not.i.i = icmp eq i16 %183, 0
  br i1 %tobool123.not.i.i, label %if.end121.i.i.if.end127.i.i_crit_edge, label %if.then124.i.i

if.end121.i.i.if.end127.i.i_crit_edge:            ; preds = %if.end121.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end127.i.i

if.then124.i.i:                                   ; preds = %if.end121.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %184 = ptrtoint ptr %data.i73 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %data.i73, align 4
  %or126.i.i = or i32 %185, 134217728
  store i32 %or126.i.i, ptr %data.i73, align 4
  br label %if.end127.i.i

if.end127.i.i:                                    ; preds = %if.then124.i.i, %if.end121.i.i.if.end127.i.i_crit_edge
  %ring_cookie.i.i76 = getelementptr inbounds %struct.aq_rx_filter, ptr %aq_rx_fltr, i32 0, i32 2, i32 5
  %186 = ptrtoint ptr %ring_cookie.i.i76 to i32
  call void @__asan_load8_noabort(i32 %186)
  %187 = load i64, ptr %ring_cookie.i.i76, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %187)
  %cmp128.not.i.i = icmp eq i64 %187, -1
  br i1 %cmp128.not.i.i, label %if.end127.i.i.aq_set_data_fl3l4.exit.i_crit_edge, label %if.then130.i.i

if.end127.i.i.aq_set_data_fl3l4.exit.i_crit_edge: ; preds = %if.end127.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %aq_set_data_fl3l4.exit.i

if.then130.i.i:                                   ; preds = %if.end127.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %188 = ptrtoint ptr %data.i73 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %data.i73, align 4
  %.tr.i.i = trunc i64 %187 to i32
  %190 = shl i32 %.tr.i.i, 8
  %conv138.i.i = or i32 %190, %189
  %or140.i.i = or i32 %conv138.i.i, 8454144
  store i32 %or140.i.i, ptr %data.i73, align 4
  br label %aq_set_data_fl3l4.exit.i

aq_set_data_fl3l4.exit.i:                         ; preds = %if.then130.i.i, %if.end127.i.i.aq_set_data_fl3l4.exit.i_crit_edge, %if.else.i.i, %if.then5.i.i
  %hw_filter_l3l4_set.i.i = getelementptr inbounds %struct.aq_hw_ops, ptr %90, i32 0, i32 21
  %191 = ptrtoint ptr %hw_filter_l3l4_set.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %hw_filter_l3l4_set.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %192, null
  br i1 %tobool.not.i.i, label %aq_set_data_fl3l4.exit.i.aq_add_del_fl3l4.exit_crit_edge, label %if.end.i.i, !prof !39

aq_set_data_fl3l4.exit.i.aq_add_del_fl3l4.exit_crit_edge: ; preds = %aq_set_data_fl3l4.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %aq_add_del_fl3l4.exit

if.end.i.i:                                       ; preds = %aq_set_data_fl3l4.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = call i32 %192(ptr noundef %92, ptr noundef nonnull %data.i73) #10
  br label %aq_add_del_fl3l4.exit

aq_add_del_fl3l4.exit:                            ; preds = %if.end.i.i, %aq_set_data_fl3l4.exit.i.aq_add_del_fl3l4.exit_crit_edge, %sw.bb23.aq_add_del_fl3l4.exit_crit_edge
  %retval.0.i77 = phi i32 [ -22, %sw.bb23.aq_add_del_fl3l4.exit_crit_edge ], [ %call.i.i, %if.end.i.i ], [ -95, %aq_set_data_fl3l4.exit.i.aq_add_del_fl3l4.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %data.i73) #10
  br label %if.end27

if.end27:                                         ; preds = %aq_add_del_fl3l4.exit, %aq_add_del_fether.exit72, %if.else16.if.end27_crit_edge, %aq_add_del_fether.exit, %aq_set_data_fvlan.exit.i, %if.then3.if.end27_crit_edge, %if.then.if.end27_crit_edge
  %err.0 = phi i32 [ %retval.0.i49, %aq_add_del_fether.exit ], [ %retval.0.i77, %aq_add_del_fl3l4.exit ], [ %retval.0.i71, %aq_add_del_fether.exit72 ], [ -22, %if.then.if.end27_crit_edge ], [ -22, %if.else16.if.end27_crit_edge ], [ %call6.i, %aq_set_data_fvlan.exit.i ], [ -95, %if.then3.if.end27_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aq_get_rxnfc_rule(ptr nocapture noundef readonly %aq_nic, ptr nocapture noundef %cmd) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %aq_hw_rx_fltrs.i = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 25
  %fs = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3
  %location = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 6
  br label %for.cond

for.cond:                                         ; preds = %land.rhs.for.cond_crit_edge, %entry
  %rule.0.in = phi ptr [ %aq_hw_rx_fltrs.i, %entry ], [ %rule.0, %land.rhs.for.cond_crit_edge ]
  %0 = ptrtoint ptr %rule.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %rule.0 = load ptr, ptr %rule.0.in, align 4
  %tobool2.not = icmp eq ptr %rule.0, null
  br i1 %tobool2.not, label %for.cond.cleanup_crit_edge, label %land.rhs

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.rhs:                                         ; preds = %for.cond
  %1 = ptrtoint ptr %location to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %location, align 8
  %location5 = getelementptr inbounds %struct.aq_rx_filter, ptr %rule.0, i32 0, i32 2, i32 6
  %3 = ptrtoint ptr %location5 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %location5, align 8
  %cmp.not = icmp ugt i32 %2, %4
  br i1 %cmp.not, label %land.rhs.for.cond_crit_edge, label %lor.rhs.critedge

land.rhs.for.cond_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

lor.rhs.critedge:                                 ; preds = %land.rhs
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %4)
  %cmp20.not = icmp eq i32 %2, %4
  br i1 %cmp20.not, label %if.end24, label %lor.rhs.critedge.cleanup_crit_edge, !prof !40

lor.rhs.critedge.cleanup_crit_edge:               ; preds = %lor.rhs.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end24:                                         ; preds = %lor.rhs.critedge
  call void @__sanitizer_cov_trace_pc() #12
  %aq_fsp25 = getelementptr inbounds %struct.aq_rx_filter, ptr %rule.0, i32 0, i32 2
  %5 = call ptr @memcpy(ptr %fs, ptr %aq_fsp25, i32 168)
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %lor.rhs.critedge.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end24 ], [ -22, %lor.rhs.critedge.cleanup_crit_edge ], [ -22, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aq_get_rxnfc_all_rules(ptr nocapture noundef readonly %aq_nic, ptr nocapture noundef %cmd, ptr nocapture noundef writeonly %rule_locs) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %aq_hw_rx_fltrs.i = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 25
  %active_filters.i = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 25, i32 1
  %0 = ptrtoint ptr %active_filters.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %active_filters.i, align 4
  %conv = zext i16 %1 to i64
  %data = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 2
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %conv, ptr %data, align 8
  %3 = ptrtoint ptr %aq_hw_rx_fltrs.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %aq_hw_rx_fltrs.i, align 4
  %tobool3.not34 = icmp eq ptr %4, null
  br i1 %tobool3.not34, label %entry.for.end_crit_edge, label %land.rhs.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

land.rhs.lr.ph:                                   ; preds = %entry
  %5 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 4
  br label %land.rhs

land.rhs:                                         ; preds = %if.end.land.rhs_crit_edge, %land.rhs.lr.ph
  %rule.036 = phi ptr [ %4, %land.rhs.lr.ph ], [ %9, %if.end.land.rhs_crit_edge ]
  %count.035 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %if.end.land.rhs_crit_edge ]
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %count.035, i32 %7)
  %cmp = icmp eq i32 %count.035, %7
  br i1 %cmp, label %land.rhs.cleanup_crit_edge, label %if.end, !prof !39

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %land.rhs
  %8 = ptrtoint ptr %rule.036 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rule.036, align 8
  %location = getelementptr inbounds %struct.aq_rx_filter, ptr %rule.036, i32 0, i32 2, i32 6
  %10 = ptrtoint ptr %location to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %location, align 8
  %inc = add i32 %count.035, 1
  %arrayidx = getelementptr i32, ptr %rule_locs, i32 %count.035
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %arrayidx, align 4
  %tobool3.not = icmp eq ptr %9, null
  br i1 %tobool3.not, label %if.end.for.end_crit_edge, label %if.end.land.rhs_crit_edge

if.end.land.rhs_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %count.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %inc, %if.end.for.end_crit_edge ]
  %13 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %count.0.lcssa, ptr %13, align 8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -90, %land.rhs.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aq_clear_rxnfc_all_rules(ptr noundef %aq_nic) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %aq_hw_rx_fltrs.i = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 25
  %0 = ptrtoint ptr %aq_hw_rx_fltrs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aq_hw_rx_fltrs.i, align 4
  %tobool2.not29 = icmp eq ptr %1, null
  br i1 %tobool2.not29, label %entry.err_exit_crit_edge, label %land.rhs.lr.ph

entry.err_exit_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_exit

land.rhs.lr.ph:                                   ; preds = %entry
  %active_filters = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 25, i32 1
  br label %land.rhs

land.rhs:                                         ; preds = %hlist_del.exit.land.rhs_crit_edge, %land.rhs.lr.ph
  %rule.030 = phi ptr [ %1, %land.rhs.lr.ph ], [ %3, %hlist_del.exit.land.rhs_crit_edge ]
  %2 = ptrtoint ptr %rule.030 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rule.030, align 8
  %call5 = tail call fastcc i32 @aq_add_del_rule(ptr noundef %aq_nic, ptr noundef nonnull %rule.030, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end, label %land.rhs.err_exit_crit_edge

land.rhs.err_exit_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_exit

if.end:                                           ; preds = %land.rhs
  %4 = ptrtoint ptr %rule.030 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rule.030, align 4
  %pprev2.i.i = getelementptr inbounds %struct.hlist_node, ptr %rule.030, i32 0, i32 1
  %6 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pprev2.i.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %5, ptr %7, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.end.hlist_del.exit_crit_edge, label %do.body13.i.i

if.end.hlist_del.exit_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %hlist_del.exit

do.body13.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %5, i32 0, i32 1
  %9 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %pprev14.i.i, align 4
  br label %hlist_del.exit

hlist_del.exit:                                   ; preds = %do.body13.i.i, %if.end.hlist_del.exit_crit_edge
  %10 = ptrtoint ptr %rule.030 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %rule.030, align 4
  %11 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %rule.030) #10
  %12 = ptrtoint ptr %active_filters to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %active_filters, align 4
  %dec = add i16 %13, -1
  store i16 %dec, ptr %active_filters, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %hlist_del.exit.err_exit_crit_edge, label %hlist_del.exit.land.rhs_crit_edge

hlist_del.exit.land.rhs_crit_edge:                ; preds = %hlist_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

hlist_del.exit.err_exit_crit_edge:                ; preds = %hlist_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_exit

err_exit:                                         ; preds = %hlist_del.exit.err_exit_crit_edge, %land.rhs.err_exit_crit_edge, %entry.err_exit_crit_edge
  %err.1 = phi i32 [ 0, %entry.err_exit_crit_edge ], [ 0, %hlist_del.exit.err_exit_crit_edge ], [ %call5, %land.rhs.err_exit_crit_edge ]
  ret i32 %err.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aq_reapply_rxnfc_all_rules(ptr noundef %aq_nic) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %aq_hw_rx_fltrs.i = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 25
  %0 = ptrtoint ptr %aq_hw_rx_fltrs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aq_hw_rx_fltrs.i, align 4
  br label %for.cond

for.cond:                                         ; preds = %land.rhs.for.cond_crit_edge, %entry
  %rule.0 = phi ptr [ %1, %entry ], [ %3, %land.rhs.for.cond_crit_edge ]
  %tobool2.not = icmp eq ptr %rule.0, null
  br i1 %tobool2.not, label %for.cond.err_exit_crit_edge, label %land.rhs

for.cond.err_exit_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_exit

land.rhs:                                         ; preds = %for.cond
  %2 = ptrtoint ptr %rule.0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rule.0, align 8
  %call5 = tail call fastcc i32 @aq_add_del_rule(ptr noundef %aq_nic, ptr noundef nonnull %rule.0, i1 noundef zeroext true)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.rhs.for.cond_crit_edge, label %land.rhs.err_exit_crit_edge

land.rhs.err_exit_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_exit

land.rhs.for.cond_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

err_exit:                                         ; preds = %land.rhs.err_exit_crit_edge, %for.cond.err_exit_crit_edge
  %err.1 = phi i32 [ %call5, %land.rhs.err_exit_crit_edge ], [ 0, %for.cond.err_exit_crit_edge ]
  ret i32 %err.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aq_filters_vlans_update(ptr noundef %aq_nic) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %aq_hw_ops1 = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 10
  %0 = ptrtoint ptr %aq_hw_ops1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aq_hw_ops1, align 8
  %aq_hw2 = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 4
  %2 = ptrtoint ptr %aq_hw2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %aq_hw2, align 8
  %hw_filter_vlan_set = getelementptr inbounds %struct.aq_hw_ops, ptr %1, i32 0, i32 25
  %4 = ptrtoint ptr %hw_filter_vlan_set to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw_filter_vlan_set, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !39

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %hw_filter_vlan_ctrl = getelementptr inbounds %struct.aq_hw_ops, ptr %1, i32 0, i32 26
  %6 = ptrtoint ptr %hw_filter_vlan_ctrl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw_filter_vlan_ctrl, align 4
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end16, !prof !39

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %active_vlans = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 18
  %fl2 = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 25, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end16
  %i.018.i = phi i32 [ 0, %if.end16 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %vlan.016.i = phi i32 [ -1, %if.end16 ], [ %vlan.2.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.aq_rx_filter_vlan, ptr %fl2, i32 %i.018.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %for.body.i.do.body.i.preheader_crit_edge, label %land.lhs.true.i

for.body.i.do.body.i.preheader_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.preheader

land.lhs.true.i:                                  ; preds = %for.body.i
  %queue.i = getelementptr %struct.aq_rx_filter_vlan, ptr %fl2, i32 %i.018.i, i32 3
  %10 = ptrtoint ptr %queue.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %queue.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %11)
  %cmp3.not.i = icmp eq i8 %11, -1
  br i1 %cmp3.not.i, label %land.lhs.true.i.do.body.i.preheader_crit_edge, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true.i.do.body.i.preheader_crit_edge:    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.preheader

do.body.i.preheader:                              ; preds = %land.lhs.true.i.do.body.i.preheader_crit_edge, %for.body.i.do.body.i.preheader_crit_edge
  br label %do.body.i

do.body.i:                                        ; preds = %aq_fvlan_is_busy.exit.i.do.body.i_crit_edge, %do.body.i.preheader
  %vlan.1.i = phi i32 [ %call.i, %aq_fvlan_is_busy.exit.i.do.body.i_crit_edge ], [ %vlan.016.i, %do.body.i.preheader ]
  %add.i = add i32 %vlan.1.i, 1
  %call.i = tail call i32 @_find_next_bit_be(ptr noundef %active_vlans, i32 noundef 4096, i32 noundef %add.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %call.i)
  %cmp5.i = icmp eq i32 %call.i, 4096
  br i1 %cmp5.i, label %do.cond.i, label %do.body.i.for.body.i.i_crit_edge

do.body.i.for.body.i.i_crit_edge:                 ; preds = %do.body.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %do.body.i.for.body.i.i_crit_edge
  %cmp18.i.i = phi i1 [ %cmp.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ true, %do.body.i.for.body.i.i_crit_edge ]
  %i.016.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %do.body.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.aq_rx_filter_vlan, ptr %fl2, i32 %i.016.i.i
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %land.lhs.true.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %queue.i.i = getelementptr %struct.aq_rx_filter_vlan, ptr %fl2, i32 %i.016.i.i, i32 3
  %14 = ptrtoint ptr %queue.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %queue.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %15)
  %cmp3.not.i.i = icmp eq i8 %15, -1
  br i1 %cmp3.not.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge, label %land.lhs.true5.i.i

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true.i.i
  %vlan_id.i.i = getelementptr %struct.aq_rx_filter_vlan, ptr %fl2, i32 %i.016.i.i, i32 2
  %16 = ptrtoint ptr %vlan_id.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %vlan_id.i.i, align 2
  %conv7.i.i = zext i16 %17 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %conv7.i.i)
  %cmp8.i.i = icmp eq i32 %call.i, %conv7.i.i
  br i1 %cmp8.i.i, label %land.lhs.true5.i.i.aq_fvlan_is_busy.exit.i_crit_edge, label %land.lhs.true5.i.i.for.inc.i.i_crit_edge

land.lhs.true5.i.i.for.inc.i.i_crit_edge:         ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

land.lhs.true5.i.i.aq_fvlan_is_busy.exit.i_crit_edge: ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %aq_fvlan_is_busy.exit.i

for.inc.i.i:                                      ; preds = %land.lhs.true5.i.i.for.inc.i.i_crit_edge, %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.016.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %i.016.i.i)
  %cmp.i.i = icmp ult i32 %i.016.i.i, 15
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 16
  br i1 %exitcond.not.i.i, label %for.inc.i.i.aq_fvlan_is_busy.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.inc.i.i.aq_fvlan_is_busy.exit.i_crit_edge:    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %aq_fvlan_is_busy.exit.i

aq_fvlan_is_busy.exit.i:                          ; preds = %for.inc.i.i.aq_fvlan_is_busy.exit.i_crit_edge, %land.lhs.true5.i.i.aq_fvlan_is_busy.exit.i_crit_edge
  %cmp.lcssa.i.i = phi i1 [ %cmp.i.i, %for.inc.i.i.aq_fvlan_is_busy.exit.i_crit_edge ], [ %cmp18.i.i, %land.lhs.true5.i.i.aq_fvlan_is_busy.exit.i_crit_edge ]
  br i1 %cmp.lcssa.i.i, label %aq_fvlan_is_busy.exit.i.do.body.i_crit_edge, label %do.cond.thread11.i

aq_fvlan_is_busy.exit.i.do.body.i_crit_edge:      ; preds = %aq_fvlan_is_busy.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

do.cond.thread11.i:                               ; preds = %aq_fvlan_is_busy.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %arrayidx.i, align 2
  %queue20.i = getelementptr %struct.aq_rx_filter_vlan, ptr %fl2, i32 %i.018.i, i32 3
  %19 = ptrtoint ptr %queue20.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -1, ptr %queue20.i, align 2
  %conv21.i = trunc i32 %call.i to i16
  br label %for.inc.sink.split.i

do.cond.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %arrayidx.i, align 2
  %queue11.i = getelementptr %struct.aq_rx_filter_vlan, ptr %fl2, i32 %i.018.i, i32 3
  %21 = ptrtoint ptr %queue11.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -1, ptr %queue11.i, align 2
  br label %for.inc.sink.split.i

for.inc.sink.split.i:                             ; preds = %do.cond.i, %do.cond.thread11.i
  %.sink.i = phi i16 [ 0, %do.cond.i ], [ %conv21.i, %do.cond.thread11.i ]
  %vlan_id.i = getelementptr %struct.aq_rx_filter_vlan, ptr %fl2, i32 %i.018.i, i32 2
  %22 = ptrtoint ptr %vlan_id.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %.sink.i, ptr %vlan_id.i, align 2
  br label %for.inc.i

for.inc.i:                                        ; preds = %for.inc.sink.split.i, %land.lhs.true.i.for.inc.i_crit_edge
  %vlan.2.i = phi i32 [ %vlan.016.i, %land.lhs.true.i.for.inc.i_crit_edge ], [ %call.i, %for.inc.sink.split.i ]
  %inc.i = add nuw nsw i32 %i.018.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %aq_fvlan_rebuild.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

aq_fvlan_rebuild.exit:                            ; preds = %for.inc.i
  %ndev = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 5
  %23 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ndev, align 4
  %features = getelementptr inbounds %struct.net_device, ptr %24, i32 0, i32 23
  %25 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %features, align 16
  %and = and i64 %26, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool18.not = icmp eq i64 %and, 0
  br i1 %tobool18.not, label %aq_fvlan_rebuild.exit.if.end27_crit_edge, label %if.then19

aq_fvlan_rebuild.exit.if.end27_crit_edge:         ; preds = %aq_fvlan_rebuild.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then19:                                        ; preds = %aq_fvlan_rebuild.exit
  %call4.i = tail call i32 @__bitmap_weight(ptr noundef %active_vlans, i32 noundef 4096) #10
  %27 = ptrtoint ptr %hw_filter_vlan_ctrl to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hw_filter_vlan_ctrl, align 4
  %call23 = tail call i32 %28(ptr noundef %3, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then19.if.end27_crit_edge, label %if.then19.cleanup_crit_edge

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then19.if.end27_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.end27:                                         ; preds = %if.then19.if.end27_crit_edge, %aq_fvlan_rebuild.exit.if.end27_crit_edge
  %hweight.0 = phi i32 [ %call4.i, %if.then19.if.end27_crit_edge ], [ 0, %aq_fvlan_rebuild.exit.if.end27_crit_edge ]
  %29 = ptrtoint ptr %hw_filter_vlan_set to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hw_filter_vlan_set, align 4
  %call33 = tail call i32 %30(ptr noundef %3, ptr noundef %fl2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end36:                                         ; preds = %if.end27
  %31 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ndev, align 4
  %features38 = getelementptr inbounds %struct.net_device, ptr %32, i32 0, i32 23
  %33 = ptrtoint ptr %features38 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %features38, align 16
  %and39 = and i64 %34, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and39)
  %tobool40.not = icmp eq i64 %and39, 0
  br i1 %tobool40.not, label %if.end36.cleanup_crit_edge, label %if.then41

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then41:                                        ; preds = %if.end36
  %35 = add i32 %hweight.0, -17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %35)
  %36 = icmp ult i32 %35, -16
  br i1 %36, label %if.then41.cleanup.sink.split_crit_edge, label %if.then43

if.then41.cleanup.sink.split_crit_edge:           ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.then43:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %hw_filter_vlan_ctrl to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hw_filter_vlan_ctrl, align 4
  %packet_filter = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 7
  %39 = ptrtoint ptr %packet_filter to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %packet_filter, align 4
  %and45 = and i32 %40, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  %call49 = tail call i32 %38(ptr noundef %3, i1 noundef zeroext %tobool46.not) #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then43, %if.then41.cleanup.sink.split_crit_edge
  %.sink = phi i8 [ 0, %if.then43 ], [ 1, %if.then41.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call49, %if.then43 ], [ 0, %if.then41.cleanup.sink.split_crit_edge ]
  %is_vlan_force_promisc51 = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 12, i32 18
  %41 = ptrtoint ptr %is_vlan_force_promisc51 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %.sink, ptr %is_vlan_force_promisc51, align 2
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end36.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %if.then19.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ %call23, %if.then19.cleanup_crit_edge ], [ %call33, %if.end27.cleanup_crit_edge ], [ 0, %if.end36.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aq_filters_vlan_offload_off(ptr noundef %aq_nic) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %aq_hw_ops1 = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 10
  %0 = ptrtoint ptr %aq_hw_ops1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aq_hw_ops1, align 8
  %aq_hw2 = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 4
  %2 = ptrtoint ptr %aq_hw2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %aq_hw2, align 8
  %active_vlans = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 18
  %4 = call ptr @memset(ptr %active_vlans, i32 0, i32 512)
  %fl2 = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 25, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %i.018.i = phi i32 [ 0, %entry ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %vlan.016.i = phi i32 [ -1, %entry ], [ %vlan.2.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.aq_rx_filter_vlan, ptr %fl2, i32 %i.018.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %for.body.i.do.body.i.preheader_crit_edge, label %land.lhs.true.i

for.body.i.do.body.i.preheader_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.preheader

land.lhs.true.i:                                  ; preds = %for.body.i
  %queue.i = getelementptr %struct.aq_rx_filter_vlan, ptr %fl2, i32 %i.018.i, i32 3
  %7 = ptrtoint ptr %queue.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %queue.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %8)
  %cmp3.not.i = icmp eq i8 %8, -1
  br i1 %cmp3.not.i, label %land.lhs.true.i.do.body.i.preheader_crit_edge, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true.i.do.body.i.preheader_crit_edge:    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.preheader

do.body.i.preheader:                              ; preds = %land.lhs.true.i.do.body.i.preheader_crit_edge, %for.body.i.do.body.i.preheader_crit_edge
  br label %do.body.i

do.body.i:                                        ; preds = %aq_fvlan_is_busy.exit.i.do.body.i_crit_edge, %do.body.i.preheader
  %vlan.1.i = phi i32 [ %call.i, %aq_fvlan_is_busy.exit.i.do.body.i_crit_edge ], [ %vlan.016.i, %do.body.i.preheader ]
  %add.i = add i32 %vlan.1.i, 1
  %call.i = tail call i32 @_find_next_bit_be(ptr noundef %active_vlans, i32 noundef 4096, i32 noundef %add.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %call.i)
  %cmp5.i = icmp eq i32 %call.i, 4096
  br i1 %cmp5.i, label %do.cond.i, label %do.body.i.for.body.i.i_crit_edge

do.body.i.for.body.i.i_crit_edge:                 ; preds = %do.body.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %do.body.i.for.body.i.i_crit_edge
  %cmp18.i.i = phi i1 [ %cmp.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ true, %do.body.i.for.body.i.i_crit_edge ]
  %i.016.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %do.body.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.aq_rx_filter_vlan, ptr %fl2, i32 %i.016.i.i
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %land.lhs.true.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %queue.i.i = getelementptr %struct.aq_rx_filter_vlan, ptr %fl2, i32 %i.016.i.i, i32 3
  %11 = ptrtoint ptr %queue.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %queue.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %12)
  %cmp3.not.i.i = icmp eq i8 %12, -1
  br i1 %cmp3.not.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge, label %land.lhs.true5.i.i

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true.i.i
  %vlan_id.i.i = getelementptr %struct.aq_rx_filter_vlan, ptr %fl2, i32 %i.016.i.i, i32 2
  %13 = ptrtoint ptr %vlan_id.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %vlan_id.i.i, align 2
  %conv7.i.i = zext i16 %14 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %conv7.i.i)
  %cmp8.i.i = icmp eq i32 %call.i, %conv7.i.i
  br i1 %cmp8.i.i, label %land.lhs.true5.i.i.aq_fvlan_is_busy.exit.i_crit_edge, label %land.lhs.true5.i.i.for.inc.i.i_crit_edge

land.lhs.true5.i.i.for.inc.i.i_crit_edge:         ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

land.lhs.true5.i.i.aq_fvlan_is_busy.exit.i_crit_edge: ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %aq_fvlan_is_busy.exit.i

for.inc.i.i:                                      ; preds = %land.lhs.true5.i.i.for.inc.i.i_crit_edge, %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.016.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %i.016.i.i)
  %cmp.i.i = icmp ult i32 %i.016.i.i, 15
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 16
  br i1 %exitcond.not.i.i, label %for.inc.i.i.aq_fvlan_is_busy.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.inc.i.i.aq_fvlan_is_busy.exit.i_crit_edge:    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %aq_fvlan_is_busy.exit.i

aq_fvlan_is_busy.exit.i:                          ; preds = %for.inc.i.i.aq_fvlan_is_busy.exit.i_crit_edge, %land.lhs.true5.i.i.aq_fvlan_is_busy.exit.i_crit_edge
  %cmp.lcssa.i.i = phi i1 [ %cmp.i.i, %for.inc.i.i.aq_fvlan_is_busy.exit.i_crit_edge ], [ %cmp18.i.i, %land.lhs.true5.i.i.aq_fvlan_is_busy.exit.i_crit_edge ]
  br i1 %cmp.lcssa.i.i, label %aq_fvlan_is_busy.exit.i.do.body.i_crit_edge, label %do.cond.thread11.i

aq_fvlan_is_busy.exit.i.do.body.i_crit_edge:      ; preds = %aq_fvlan_is_busy.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

do.cond.thread11.i:                               ; preds = %aq_fvlan_is_busy.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %arrayidx.i, align 2
  %queue20.i = getelementptr %struct.aq_rx_filter_vlan, ptr %fl2, i32 %i.018.i, i32 3
  %16 = ptrtoint ptr %queue20.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -1, ptr %queue20.i, align 2
  %conv21.i = trunc i32 %call.i to i16
  br label %for.inc.sink.split.i

do.cond.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %arrayidx.i, align 2
  %queue11.i = getelementptr %struct.aq_rx_filter_vlan, ptr %fl2, i32 %i.018.i, i32 3
  %18 = ptrtoint ptr %queue11.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -1, ptr %queue11.i, align 2
  br label %for.inc.sink.split.i

for.inc.sink.split.i:                             ; preds = %do.cond.i, %do.cond.thread11.i
  %.sink.i = phi i16 [ 0, %do.cond.i ], [ %conv21.i, %do.cond.thread11.i ]
  %vlan_id.i = getelementptr %struct.aq_rx_filter_vlan, ptr %fl2, i32 %i.018.i, i32 2
  %19 = ptrtoint ptr %vlan_id.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %.sink.i, ptr %vlan_id.i, align 2
  br label %for.inc.i

for.inc.i:                                        ; preds = %for.inc.sink.split.i, %land.lhs.true.i.for.inc.i_crit_edge
  %vlan.2.i = phi i32 [ %vlan.016.i, %land.lhs.true.i.for.inc.i_crit_edge ], [ %call.i, %for.inc.sink.split.i ]
  %inc.i = add nuw nsw i32 %i.018.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %aq_fvlan_rebuild.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

aq_fvlan_rebuild.exit:                            ; preds = %for.inc.i
  %hw_filter_vlan_set = getelementptr inbounds %struct.aq_hw_ops, ptr %1, i32 0, i32 25
  %20 = ptrtoint ptr %hw_filter_vlan_set to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw_filter_vlan_set, align 4
  %tobool.not = icmp eq ptr %21, null
  br i1 %tobool.not, label %aq_fvlan_rebuild.exit.cleanup_crit_edge, label %if.end, !prof !39

aq_fvlan_rebuild.exit.cleanup_crit_edge:          ; preds = %aq_fvlan_rebuild.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %aq_fvlan_rebuild.exit
  %hw_filter_vlan_ctrl = getelementptr inbounds %struct.aq_hw_ops, ptr %1, i32 0, i32 26
  %22 = ptrtoint ptr %hw_filter_vlan_ctrl to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw_filter_vlan_ctrl, align 4
  %tobool9.not = icmp eq ptr %23, null
  br i1 %tobool9.not, label %if.end.cleanup_crit_edge, label %if.end19, !prof !39

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end19:                                         ; preds = %if.end
  %is_vlan_force_promisc = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 12, i32 18
  %24 = ptrtoint ptr %is_vlan_force_promisc to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %is_vlan_force_promisc, align 2
  %25 = ptrtoint ptr %hw_filter_vlan_ctrl to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw_filter_vlan_ctrl, align 4
  %call = tail call i32 %26(ptr noundef %3, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool21.not = icmp eq i32 %call, 0
  br i1 %tobool21.not, label %if.end23, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %hw_filter_vlan_set to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hw_filter_vlan_set, align 4
  %call29 = tail call i32 %28(ptr noundef %3, ptr noundef %fl2) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.end19.cleanup_crit_edge, %if.end.cleanup_crit_edge, %aq_fvlan_rebuild.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call29, %if.end23 ], [ -95, %aq_fvlan_rebuild.exit.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ %call, %if.end19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin nounwind }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_filters.c", i32 274, i32 7}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_filters.c", i32 282, i32 8}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_filters.c", i32 198, i32 8}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_filters.c", i32 225, i32 8}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_filters.c", i32 161, i32 7}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_filters.c", i32 171, i32 7}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_filters.c", i32 177, i32 7}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_filters.c", i32 144, i32 7}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_filters.c", i32 105, i32 7}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_filters.c", i32 116, i32 7}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_filters.c", i32 241, i32 7}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_filters.c", i32 246, i32 7}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_filters.c", i32 252, i32 7}
!26 = distinct !{null, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_filters.c", i32 256, i32 7}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_filters.c", i32 80, i32 8}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!39 = !{!"branch_weights", i32 1, i32 2000}
!40 = !{!"branch_weights", i32 2000, i32 1}
!41 = !{!"branch_weights", i32 4001, i32 4000000}
