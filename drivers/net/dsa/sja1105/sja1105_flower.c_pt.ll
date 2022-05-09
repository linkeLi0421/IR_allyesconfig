; ModuleID = '/llk/IR_all_yes/drivers/net/dsa/sja1105/sja1105_flower.c_pt.bc'
source_filename = "../drivers/net/dsa/sja1105/sja1105_flower.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.sja1105_private = type { %struct.sja1105_static_config, [11 x i32], [11 x i32], [11 x i32], [11 x i8], i32, i32, i32, ptr, i32, ptr, ptr, [11 x i16], [11 x i16], %struct.sja1105_flow_block, %struct.mutex, %struct.spinlock, i8, %struct.mutex, ptr, ptr, ptr, ptr, ptr, [11 x ptr], %struct.sja1105_ptp_data, %struct.sja1105_tas_data }
%struct.sja1105_static_config = type { i64, [21 x %struct.sja1105_table] }
%struct.sja1105_table = type { ptr, i32, ptr }
%struct.sja1105_flow_block = type { %struct.list_head, [110 x i8], i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.sja1105_ptp_data = type { %struct.timer_list, %struct.sk_buff_head, %struct.sk_buff_head, %struct.ptp_clock_info, ptr, %struct.sja1105_ptp_cmd, %struct.mutex, i8, i64 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.sk_buff_head = type { %union.anon.85, i32, %struct.spinlock }
%union.anon.85 = type { %struct.anon.86 }
%struct.anon.86 = type { ptr, ptr }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sja1105_ptp_cmd = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.sja1105_tas_data = type { [11 x ptr], %struct.sja1105_gating_config, i32, i32, %struct.work_struct, i64, i64, i64, i8 }
%struct.sja1105_gating_config = type { i64, i64, i32, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.sja1105_rule = type { %struct.list_head, i32, i32, %struct.sja1105_key, i32, %union.anon.1 }
%struct.sja1105_key = type { i32, %union.anon }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { i64, i16, i16 }
%union.anon.1 = type { %struct.anon.4 }
%struct.anon.4 = type { i32, i32, i32, i32, i32, i64, i64, i32, ptr, %struct.flow_stats }
%struct.flow_stats = type { i64, i64, i64, i64, i32, i8 }
%struct.flow_match_basic = type { ptr, ptr }
%struct.flow_match_eth_addrs = type { ptr, ptr }
%struct.flow_match_vlan = type { ptr, ptr }
%struct.flow_cls_offload = type { %struct.flow_cls_common_offload, i32, i32, ptr, %struct.flow_stats, i32 }
%struct.flow_cls_common_offload = type { i32, i16, i32, ptr }
%struct.dsa_switch = type { ptr, ptr, i32, i16, %struct.notifier_block, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.flow_dissector_key_eth_addrs = type { [6 x i8], [6 x i8] }
%struct.flow_rule = type { %struct.flow_match, %struct.flow_action }
%struct.flow_match = type { ptr, ptr, ptr }
%struct.flow_action = type { i32, [0 x %struct.flow_action_entry] }
%struct.flow_action_entry = type { i32, i32, i32, ptr, ptr, %union.anon.159, ptr }
%union.anon.159 = type { %struct.anon.164 }
%struct.anon.164 = type { i32, i64, i64, i64, i32 }
%struct.sja1105_l2_policing_entry = type { i64, i64, i64, i64, i64 }
%struct.dsa_switch_tree = type { %struct.list_head, %struct.list_head, %struct.raw_notifier_head, i32, %struct.kref, ptr, ptr, i32, i8, ptr, %struct.list_head, i32, i32 }
%struct.raw_notifier_head = type { ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dsa_port = type { %union.anon.153, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, [6 x i8], i8, i8, ptr, i32, ptr, %struct.devlink_port, ptr, %struct.phylink_config, ptr, ptr, %struct.list_head, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.153 = type { ptr }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.142 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.142 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.phylink_config = type { ptr, i32, i8, i8, i8, i8, ptr, [1 x i32], i32 }
%struct.anon.170 = type { i32, i64, i64, i64, i32, ptr }

@sja1105_cls_flower_add.__msg = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"sja1105: QoS offload not support packets per second\00", [44 x i8] zeroinitializer }, align 32
@sja1105_cls_flower_add.__msg.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"sja1105: Destination not a switch port\00", [57 x i8] zeroinitializer }, align 32
@sja1105_cls_flower_add.__msg.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sja1105: Action not supported\00", [34 x i8] zeroinitializer }, align 32
@sja1105_cls_flower_add.__msg.3 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"sja1105: Can only offload gate action together with redirect or trap\00", [59 x i8] zeroinitializer }, align 32
@sja1105_flower_parse_key.__msg = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"sja1105: Unsupported keys used\00", [33 x i8] zeroinitializer }, align 32
@sja1105_flower_parse_key.__msg.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"sja1105: Matching on protocol not supported\00", [52 x i8] zeroinitializer }, align 32
@sja1105_flower_parse_key.__msg.5 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"sja1105: Matching on source MAC not supported\00", [50 x i8] zeroinitializer }, align 32
@sja1105_flower_parse_key.__msg.6 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"sja1105: Masked matching on MAC not supported\00", [50 x i8] zeroinitializer }, align 32
@sja1105_flower_parse_key.__msg.7 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"sja1105: Masked matching on VID is not supported\00", [47 x i8] zeroinitializer }, align 32
@sja1105_flower_parse_key.__msg.8 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"sja1105: Masked matching on PCP is not supported\00", [47 x i8] zeroinitializer }, align 32
@sja1105_flower_parse_key.__msg.9 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"sja1105: Not matching on any known key\00", [57 x i8] zeroinitializer }, align 32
@sja1105_flower_policer.__msg = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"sja1105: Unknown keys for policing\00", [61 x i8] zeroinitializer }, align 32
@sja1105_setup_bcast_policer.__msg = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"sja1105: No more L2 policers free\00", [62 x i8] zeroinitializer }, align 32
@sja1105_setup_bcast_policer.__msg.10 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"sja1105: Port already has a broadcast policer\00", [50 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@sja1105_setup_tc_policer.__msg = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"sja1105: No more L2 policers free\00", [62 x i8] zeroinitializer }, align 32
@sja1105_setup_tc_policer.__msg.11 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"sja1105: Port-TC pair already has an L2 policer\00", [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 3, i64 0, i64 7]
@__sancov_gen_cov_switch_values.12 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 4, i64 22, i64 28]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 325, i32 5 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 355, i32 5 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 393, i32 4 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 406, i32 5 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 212, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 222, i32 4 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 237, i32 4 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 243, i32 4 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 259, i32 4 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 266, i32 4 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 299, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 190, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 56, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 64, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 128, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.61 = private constant [44 x i8] c"../drivers/net/dsa/sja1105/sja1105_flower.c\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 136, i32 3 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @sja1105_cls_flower_add.__msg, ptr @sja1105_cls_flower_add.__msg.1, ptr @sja1105_cls_flower_add.__msg.2, ptr @sja1105_cls_flower_add.__msg.3, ptr @sja1105_flower_parse_key.__msg, ptr @sja1105_flower_parse_key.__msg.4, ptr @sja1105_flower_parse_key.__msg.5, ptr @sja1105_flower_parse_key.__msg.6, ptr @sja1105_flower_parse_key.__msg.7, ptr @sja1105_flower_parse_key.__msg.8, ptr @sja1105_flower_parse_key.__msg.9, ptr @sja1105_flower_policer.__msg, ptr @sja1105_setup_bcast_policer.__msg, ptr @sja1105_setup_bcast_policer.__msg.10, ptr @sja1105_setup_tc_policer.__msg, ptr @sja1105_setup_tc_policer.__msg.11], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_cls_flower_add.__msg to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_cls_flower_add.__msg.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_cls_flower_add.__msg.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_cls_flower_add.__msg.3 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_flower_parse_key.__msg to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_flower_parse_key.__msg.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_flower_parse_key.__msg.5 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_flower_parse_key.__msg.6 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_flower_parse_key.__msg.7 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_flower_parse_key.__msg.8 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_flower_parse_key.__msg.9 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_flower_policer.__msg to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_setup_bcast_policer.__msg to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_setup_bcast_policer.__msg.10 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_setup_tc_policer.__msg to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_setup_tc_policer.__msg.11 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sja1105_rule_find(ptr noundef readonly %priv, i32 noundef %cookie) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %flow_block = getelementptr inbounds %struct.sja1105_private, ptr %priv, i32 0, i32 14
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %rule.0.in = phi ptr [ %flow_block, %entry ], [ %rule.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %rule.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %rule.0 = load ptr, ptr %rule.0.in, align 8
  %cmp.not = icmp eq ptr %rule.0, %flow_block
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %cookie3 = getelementptr inbounds %struct.sja1105_rule, ptr %rule.0, i32 0, i32 1
  %1 = ptrtoint ptr %cookie3 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cookie3, align 8
  %cmp4 = icmp eq i32 %2, %cookie
  br i1 %cmp4, label %for.body.cleanup_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  %retval.0 = phi ptr [ %rule.0, %for.body.cleanup_crit_edge ], [ null, %for.cond.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sja1105_cls_flower_add(ptr noundef readonly %ds, i32 noundef %port, ptr nocapture noundef readonly %cls, i1 noundef zeroext %ingress) local_unnamed_addr #2 align 64 {
entry:
  %match7.i = alloca %struct.flow_match_basic, align 4
  %match23.i = alloca %struct.flow_match_eth_addrs, align 4
  %match70.i = alloca %struct.flow_match_vlan, align 4
  %key = alloca %struct.sja1105_key, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rule.i = getelementptr inbounds %struct.flow_cls_offload, ptr %cls, i32 0, i32 3
  %0 = ptrtoint ptr %rule.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rule.i, align 8
  %extack1 = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls, i32 0, i32 3
  %2 = ptrtoint ptr %extack1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %extack1, align 4
  %priv2 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %4 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv2, align 4
  %cookie3 = getelementptr inbounds %struct.flow_cls_offload, ptr %cls, i32 0, i32 2
  %6 = ptrtoint ptr %cookie3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cookie3, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %key) #6
  %8 = call ptr @memset(ptr %key, i32 255, i32 24)
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %and.i = and i32 %12, -1156
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end4.i, label %do.body.i

do.body.i:                                        ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @sja1105_flower_parse_key.__msg) #6
  %tobool2.not.i = icmp eq ptr %3, null
  br i1 %tobool2.not.i, label %do.body.i.cleanup88_crit_edge, label %if.then3.i

do.body.i.cleanup88_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup88

if.then3.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @sja1105_flower_parse_key.__msg, ptr %3, align 4
  br label %cleanup88

if.end4.i:                                        ; preds = %entry
  %and.i.i.i = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.i.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.i.not.i, label %if.end4.i.if.end20.i_crit_edge, label %if.then6.i

if.end4.i.if.end20.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20.i

if.then6.i:                                       ; preds = %if.end4.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match7.i) #6
  %14 = ptrtoint ptr %match7.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 -1 to ptr), ptr %match7.i, align 4, !annotation !41
  %15 = getelementptr inbounds %struct.flow_match_basic, ptr %match7.i, i32 0, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 -1 to ptr), ptr %15, align 4, !annotation !41
  call void @flow_rule_match_basic(ptr noundef %1, ptr noundef nonnull %match7.i) #6
  %17 = ptrtoint ptr %match7.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %match7.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %18, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool9.not.i = icmp eq i16 %20, 0
  br i1 %tobool9.not.i, label %if.end20.critedge.i, label %do.body11.i

do.body11.i:                                      ; preds = %if.then6.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @sja1105_flower_parse_key.__msg.4) #6
  %tobool13.not.i = icmp eq ptr %3, null
  br i1 %tobool13.not.i, label %cleanup188.critedge.i, label %if.then14.i

if.then14.i:                                      ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @sja1105_flower_parse_key.__msg.4, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match7.i) #6
  br label %cleanup88

if.end20.critedge.i:                              ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match7.i) #6
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.end20.critedge.i, %if.end4.i.if.end20.i_crit_edge
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %and.i.i8.i = and i32 %25, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i8.i)
  %tobool.i.i9.not.i = icmp eq i32 %and.i.i8.i, 0
  br i1 %tobool.i.i9.not.i, label %if.end20.i.if.end67.i_crit_edge, label %if.then22.i

if.end20.i.if.end67.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end67.i

if.then22.i:                                      ; preds = %if.end20.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match23.i) #6
  %26 = ptrtoint ptr %match23.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 -1 to ptr), ptr %match23.i, align 4, !annotation !41
  %27 = getelementptr inbounds %struct.flow_match_eth_addrs, ptr %match23.i, i32 0, i32 1
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 -1 to ptr), ptr %27, align 4, !annotation !41
  call void @flow_rule_match_eth_addrs(ptr noundef %1, ptr noundef nonnull %match23.i) #6
  %29 = ptrtoint ptr %match23.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %match23.i, align 4
  %src.i = getelementptr inbounds %struct.flow_dissector_key_eth_addrs, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %27, align 4
  %src26.i = getelementptr inbounds %struct.flow_dissector_key_eth_addrs, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %src.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %src.i, align 1
  %35 = ptrtoint ptr %src26.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %src26.i, align 1
  %and10.i.i = and i8 %36, %34
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and10.i.i)
  %tobool.not.i.i = icmp eq i8 %and10.i.i, 0
  br i1 %tobool.not.i.i, label %for.cond.i.i, label %if.then22.i.do.body30.i_crit_edge

if.then22.i.do.body30.i_crit_edge:                ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body30.i

for.cond.i.i:                                     ; preds = %if.then22.i
  %arrayidx.1.i.i = getelementptr %struct.flow_dissector_key_eth_addrs, ptr %30, i32 0, i32 1, i32 1
  %37 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.1.i.i, align 1
  %arrayidx3.1.i.i = getelementptr %struct.flow_dissector_key_eth_addrs, ptr %32, i32 0, i32 1, i32 1
  %39 = ptrtoint ptr %arrayidx3.1.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx3.1.i.i, align 1
  %and10.1.i.i = and i8 %40, %38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and10.1.i.i)
  %tobool.not.1.i.i = icmp eq i8 %and10.1.i.i, 0
  br i1 %tobool.not.1.i.i, label %for.cond.1.i.i, label %for.cond.i.i.do.body30.i_crit_edge

for.cond.i.i.do.body30.i_crit_edge:               ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body30.i

for.cond.1.i.i:                                   ; preds = %for.cond.i.i
  %arrayidx.2.i.i = getelementptr %struct.flow_dissector_key_eth_addrs, ptr %30, i32 0, i32 1, i32 2
  %41 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx.2.i.i, align 1
  %arrayidx3.2.i.i = getelementptr %struct.flow_dissector_key_eth_addrs, ptr %32, i32 0, i32 1, i32 2
  %43 = ptrtoint ptr %arrayidx3.2.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx3.2.i.i, align 1
  %and10.2.i.i = and i8 %44, %42
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and10.2.i.i)
  %tobool.not.2.i.i = icmp eq i8 %and10.2.i.i, 0
  br i1 %tobool.not.2.i.i, label %for.cond.2.i.i, label %for.cond.1.i.i.do.body30.i_crit_edge

for.cond.1.i.i.do.body30.i_crit_edge:             ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body30.i

for.cond.2.i.i:                                   ; preds = %for.cond.1.i.i
  %arrayidx.3.i.i = getelementptr %struct.flow_dissector_key_eth_addrs, ptr %30, i32 0, i32 1, i32 3
  %45 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx.3.i.i, align 1
  %arrayidx3.3.i.i = getelementptr %struct.flow_dissector_key_eth_addrs, ptr %32, i32 0, i32 1, i32 3
  %47 = ptrtoint ptr %arrayidx3.3.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx3.3.i.i, align 1
  %and10.3.i.i = and i8 %48, %46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and10.3.i.i)
  %tobool.not.3.i.i = icmp eq i8 %and10.3.i.i, 0
  br i1 %tobool.not.3.i.i, label %for.cond.3.i.i, label %for.cond.2.i.i.do.body30.i_crit_edge

for.cond.2.i.i.do.body30.i_crit_edge:             ; preds = %for.cond.2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body30.i

for.cond.3.i.i:                                   ; preds = %for.cond.2.i.i
  %arrayidx.4.i.i = getelementptr %struct.flow_dissector_key_eth_addrs, ptr %30, i32 0, i32 1, i32 4
  %49 = ptrtoint ptr %arrayidx.4.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx.4.i.i, align 1
  %arrayidx3.4.i.i = getelementptr %struct.flow_dissector_key_eth_addrs, ptr %32, i32 0, i32 1, i32 4
  %51 = ptrtoint ptr %arrayidx3.4.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx3.4.i.i, align 1
  %and10.4.i.i = and i8 %52, %50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and10.4.i.i)
  %tobool.not.4.i.i = icmp eq i8 %and10.4.i.i, 0
  br i1 %tobool.not.4.i.i, label %ether_addr_equal_masked.exit.i, label %for.cond.3.i.i.do.body30.i_crit_edge

for.cond.3.i.i.do.body30.i_crit_edge:             ; preds = %for.cond.3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body30.i

ether_addr_equal_masked.exit.i:                   ; preds = %for.cond.3.i.i
  %arrayidx.5.i.i = getelementptr %struct.flow_dissector_key_eth_addrs, ptr %30, i32 0, i32 1, i32 5
  %53 = ptrtoint ptr %arrayidx.5.i.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx.5.i.i, align 1
  %arrayidx3.5.i.i = getelementptr %struct.flow_dissector_key_eth_addrs, ptr %32, i32 0, i32 1, i32 5
  %55 = ptrtoint ptr %arrayidx3.5.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx3.5.i.i, align 1
  %and10.5.i.i = and i8 %56, %54
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and10.5.i.i)
  %tobool.not.5.i.i = icmp eq i8 %and10.5.i.i, 0
  br i1 %tobool.not.5.i.i, label %if.end38.i, label %ether_addr_equal_masked.exit.i.do.body30.i_crit_edge

ether_addr_equal_masked.exit.i.do.body30.i_crit_edge: ; preds = %ether_addr_equal_masked.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body30.i

do.body30.i:                                      ; preds = %ether_addr_equal_masked.exit.i.do.body30.i_crit_edge, %for.cond.3.i.i.do.body30.i_crit_edge, %for.cond.2.i.i.do.body30.i_crit_edge, %for.cond.1.i.i.do.body30.i_crit_edge, %for.cond.i.i.do.body30.i_crit_edge, %if.then22.i.do.body30.i_crit_edge
  call void @do_trace_netlink_extack(ptr noundef nonnull @sja1105_flower_parse_key.__msg.5) #6
  %tobool32.not.i = icmp eq ptr %3, null
  br i1 %tobool32.not.i, label %do.body30.i.cleanup62.thread.i_crit_edge, label %do.body30.i.cleanup62.thread.sink.split.i_crit_edge

do.body30.i.cleanup62.thread.sink.split.i_crit_edge: ; preds = %do.body30.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup62.thread.sink.split.i

do.body30.i.cleanup62.thread.i_crit_edge:         ; preds = %do.body30.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup62.thread.i

if.end38.i:                                       ; preds = %ether_addr_equal_masked.exit.i
  %57 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %32, align 4
  %xor.i.i = xor i32 %58, -1
  %add.ptr.i.i = getelementptr i8, ptr %32, i32 4
  %59 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %add.ptr.i.i, align 2
  %xor37.i.i = xor i16 %60, -1
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor3.i.i, %xor.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %cleanup62.i, label %do.body44.i

do.body44.i:                                      ; preds = %if.end38.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @sja1105_flower_parse_key.__msg.6) #6
  %tobool46.not.i = icmp eq ptr %3, null
  br i1 %tobool46.not.i, label %do.body44.i.cleanup62.thread.i_crit_edge, label %do.body44.i.cleanup62.thread.sink.split.i_crit_edge

do.body44.i.cleanup62.thread.sink.split.i_crit_edge: ; preds = %do.body44.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup62.thread.sink.split.i

do.body44.i.cleanup62.thread.i_crit_edge:         ; preds = %do.body44.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup62.thread.i

cleanup62.thread.sink.split.i:                    ; preds = %do.body44.i.cleanup62.thread.sink.split.i_crit_edge, %do.body30.i.cleanup62.thread.sink.split.i_crit_edge
  %sja1105_flower_parse_key.__msg.5.sink.i = phi ptr [ @sja1105_flower_parse_key.__msg.5, %do.body30.i.cleanup62.thread.sink.split.i_crit_edge ], [ @sja1105_flower_parse_key.__msg.6, %do.body44.i.cleanup62.thread.sink.split.i_crit_edge ]
  %61 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %sja1105_flower_parse_key.__msg.5.sink.i, ptr %3, align 4
  br label %cleanup62.thread.i

cleanup62.thread.i:                               ; preds = %cleanup62.thread.sink.split.i, %do.body44.i.cleanup62.thread.i_crit_edge, %do.body30.i.cleanup62.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match23.i) #6
  br label %cleanup88

cleanup62.i:                                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #8
  %62 = ptrtoint ptr %30 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %30, align 1
  %conv.i.i = zext i8 %63 to i64
  %arrayidx.1.i10.i = getelementptr i8, ptr %30, i32 1
  %64 = ptrtoint ptr %arrayidx.1.i10.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx.1.i10.i, align 1
  %conv.1.i.i = zext i8 %65 to i64
  %66 = shl nuw nsw i64 %conv.i.i, 16
  %67 = shl nuw nsw i64 %conv.1.i.i, 8
  %shl.2.i.i = or i64 %67, %66
  %arrayidx.2.i11.i = getelementptr i8, ptr %30, i32 2
  %68 = ptrtoint ptr %arrayidx.2.i11.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx.2.i11.i, align 1
  %conv.2.i.i = zext i8 %69 to i64
  %or.2.i.i = or i64 %shl.2.i.i, %conv.2.i.i
  %arrayidx.3.i12.i = getelementptr i8, ptr %30, i32 3
  %70 = ptrtoint ptr %arrayidx.3.i12.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx.3.i12.i, align 1
  %conv.3.i.i = zext i8 %71 to i64
  %arrayidx.4.i13.i = getelementptr i8, ptr %30, i32 4
  %72 = ptrtoint ptr %arrayidx.4.i13.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx.4.i13.i, align 1
  %conv.4.i.i = zext i8 %73 to i64
  %74 = shl nuw nsw i64 %or.2.i.i, 24
  %75 = shl nuw nsw i64 %conv.3.i.i, 16
  %76 = shl nuw nsw i64 %conv.4.i.i, 8
  %77 = or i64 %76, %75
  %shl.5.i.i = or i64 %77, %74
  %arrayidx.5.i14.i = getelementptr i8, ptr %30, i32 5
  %78 = ptrtoint ptr %arrayidx.5.i14.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx.5.i14.i, align 1
  %conv.5.i.i = zext i8 %79 to i64
  %or.5.i.i = or i64 %shl.5.i.i, %conv.5.i.i
  %80 = load i32, ptr %30, align 4
  %xor.i15.i = xor i32 %80, -1
  %81 = load i16, ptr %arrayidx.4.i13.i, align 2
  %xor37.i18.i = xor i16 %81, -1
  %xor3.i19.i = zext i16 %xor37.i18.i to i32
  %or.i20.i = or i32 %xor3.i19.i, %xor.i15.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i20.i)
  %cmp.i21.i = icmp eq i32 %or.i20.i, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match23.i) #6
  br label %if.end67.i

if.end67.i:                                       ; preds = %cleanup62.i, %if.end20.i.if.end67.i_crit_edge
  %is_bcast_dmac.1.off0.i = phi i1 [ %cmp.i21.i, %cleanup62.i ], [ false, %if.end20.i.if.end67.i_crit_edge ]
  %dmac.1.i = phi i64 [ %or.5.i.i, %cleanup62.i ], [ -1, %if.end20.i.if.end67.i_crit_edge ]
  %82 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %1, align 8
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %83, align 4
  %and.i.i22.i = and i32 %85, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i22.i)
  %tobool.i.i23.not.i = icmp eq i32 %and.i.i22.i, 0
  br i1 %tobool.i.i23.not.i, label %if.end67.i.if.end130.i_crit_edge, label %if.then69.i

if.end67.i.if.end130.i_crit_edge:                 ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end130.i

if.then69.i:                                      ; preds = %if.end67.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match70.i) #6
  %86 = ptrtoint ptr %match70.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr inttoptr (i32 -1 to ptr), ptr %match70.i, align 4, !annotation !41
  %87 = getelementptr inbounds %struct.flow_match_vlan, ptr %match70.i, i32 0, i32 1
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr inttoptr (i32 -1 to ptr), ptr %87, align 4, !annotation !41
  call void @flow_rule_match_vlan(ptr noundef %1, ptr noundef nonnull %match70.i) #6
  %89 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %87, align 4
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load2_noabort(i32 %91)
  %bf.load.i = load i16, ptr %90, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %bf.load.i)
  %tobool72.not.i = icmp ult i16 %bf.load.i, 16
  %92 = add i16 %bf.load.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %92)
  %93 = icmp ult i16 %92, 32
  br i1 %93, label %if.end87.i, label %do.body79.i

do.body79.i:                                      ; preds = %if.then69.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @sja1105_flower_parse_key.__msg.7) #6
  %tobool81.not.i = icmp eq ptr %3, null
  br i1 %tobool81.not.i, label %do.body79.i.cleanup127.thread.i_crit_edge, label %do.body79.i.cleanup127.thread.sink.split.i_crit_edge

do.body79.i.cleanup127.thread.sink.split.i_crit_edge: ; preds = %do.body79.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup127.thread.sink.split.i

do.body79.i.cleanup127.thread.i_crit_edge:        ; preds = %do.body79.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup127.thread.i

if.end87.i:                                       ; preds = %if.then69.i
  %bf.clear.i = and i16 %bf.load.i, 7
  %trunc.i = trunc i16 %bf.load.i to i3
  %94 = zext i3 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %94, ptr @__sancov_gen_cov_switch_values)
  switch i3 %trunc.i, label %do.body100.i [
    i3 0, label %if.end87.i.if.end108.i_crit_edge
    i3 -1, label %if.end87.i.if.end108.i_crit_edge268
  ]

if.end87.i.if.end108.i_crit_edge268:              ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end108.i

if.end87.i.if.end108.i_crit_edge:                 ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end108.i

do.body100.i:                                     ; preds = %if.end87.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @sja1105_flower_parse_key.__msg.8) #6
  %tobool102.not.i = icmp eq ptr %3, null
  br i1 %tobool102.not.i, label %do.body100.i.cleanup127.thread.i_crit_edge, label %do.body100.i.cleanup127.thread.sink.split.i_crit_edge

do.body100.i.cleanup127.thread.sink.split.i_crit_edge: ; preds = %do.body100.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup127.thread.sink.split.i

do.body100.i.cleanup127.thread.i_crit_edge:       ; preds = %do.body100.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup127.thread.i

if.end108.i:                                      ; preds = %if.end87.i.if.end108.i_crit_edge, %if.end87.i.if.end108.i_crit_edge268
  br i1 %tobool72.not.i, label %if.end108.i.if.end117.i_crit_edge, label %if.then113.i

if.end108.i.if.end117.i_crit_edge:                ; preds = %if.end108.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end117.i

if.then113.i:                                     ; preds = %if.end108.i
  call void @__sanitizer_cov_trace_pc() #8
  %95 = ptrtoint ptr %match70.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %match70.i, align 4
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load2_noabort(i32 %97)
  %bf.load115.i = load i16, ptr %96, align 2
  %bf.lshr116.i = lshr i16 %bf.load115.i, 4
  br label %if.end117.i

if.end117.i:                                      ; preds = %if.then113.i, %if.end108.i.if.end117.i_crit_edge
  %vid.0.i = phi i16 [ %bf.lshr116.i, %if.then113.i ], [ -1, %if.end108.i.if.end117.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.clear.i)
  %tobool121.not.i = icmp eq i16 %bf.clear.i, 0
  br i1 %tobool121.not.i, label %if.end117.i.cleanup127.i_crit_edge, label %if.then122.i

if.end117.i.cleanup127.i_crit_edge:               ; preds = %if.end117.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup127.i

if.then122.i:                                     ; preds = %if.end117.i
  call void @__sanitizer_cov_trace_pc() #8
  %98 = ptrtoint ptr %match70.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %match70.i, align 4
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load2_noabort(i32 %100)
  %bf.load124.i = load i16, ptr %99, align 2
  %bf.clear125.i = and i16 %bf.load124.i, 7
  br label %cleanup127.i

cleanup127.thread.sink.split.i:                   ; preds = %do.body100.i.cleanup127.thread.sink.split.i_crit_edge, %do.body79.i.cleanup127.thread.sink.split.i_crit_edge
  %sja1105_flower_parse_key.__msg.7.sink.i = phi ptr [ @sja1105_flower_parse_key.__msg.7, %do.body79.i.cleanup127.thread.sink.split.i_crit_edge ], [ @sja1105_flower_parse_key.__msg.8, %do.body100.i.cleanup127.thread.sink.split.i_crit_edge ]
  %101 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %sja1105_flower_parse_key.__msg.7.sink.i, ptr %3, align 4
  br label %cleanup127.thread.i

cleanup127.thread.i:                              ; preds = %cleanup127.thread.sink.split.i, %do.body100.i.cleanup127.thread.i_crit_edge, %do.body79.i.cleanup127.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match70.i) #6
  br label %cleanup88

cleanup127.i:                                     ; preds = %if.then122.i, %if.end117.i.cleanup127.i_crit_edge
  %pcp.1.i = phi i16 [ %bf.clear125.i, %if.then122.i ], [ -1, %if.end117.i.cleanup127.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match70.i) #6
  br label %if.end130.i

if.end130.i:                                      ; preds = %cleanup127.i, %if.end67.i.if.end130.i_crit_edge
  %vid.2.i = phi i16 [ %vid.0.i, %cleanup127.i ], [ -1, %if.end67.i.if.end130.i_crit_edge ]
  %pcp.2.i = phi i16 [ %pcp.1.i, %cleanup127.i ], [ -1, %if.end67.i.if.end130.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %vid.2.i)
  %cmp135.i = icmp eq i16 %vid.2.i, -1
  %or.cond2.i = select i1 %is_bcast_dmac.1.off0.i, i1 %cmp135.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %pcp.2.i)
  %cmp139.i = icmp eq i16 %pcp.2.i, -1
  %or.cond3.i = select i1 %or.cond2.i, i1 %cmp139.i, i1 false
  br i1 %or.cond3.i, label %if.then141.i, label %if.end142.i

if.then141.i:                                     ; preds = %if.end130.i
  call void @__sanitizer_cov_trace_pc() #8
  %102 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 0, ptr %key, align 8
  br label %if.end

if.end142.i:                                      ; preds = %if.end130.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %dmac.1.i)
  %cmp143.i = icmp eq i64 %dmac.1.i, -1
  %or.cond4.i = select i1 %cmp143.i, i1 %cmp135.i, i1 false
  %or.cond4.not.i = xor i1 %or.cond4.i, true
  %or.cond5.i = select i1 %or.cond4.not.i, i1 true, i1 %cmp139.i
  br i1 %or.cond5.i, label %if.end157.i, label %if.then153.i

if.then153.i:                                     ; preds = %if.end142.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv150.i = zext i16 %pcp.2.i to i32
  %103 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 1, ptr %key, align 8
  %104 = getelementptr inbounds %struct.sja1105_key, ptr %key, i32 0, i32 1
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %conv150.i, ptr %104, align 8
  br label %if.end

if.end157.i:                                      ; preds = %if.end142.i
  %or.cond6.i = select i1 %cmp143.i, i1 true, i1 %cmp135.i
  %or.cond7.i = select i1 %or.cond6.i, i1 true, i1 %cmp139.i
  br i1 %or.cond7.i, label %if.end173.i, label %if.then168.i

if.then168.i:                                     ; preds = %if.end157.i
  call void @__sanitizer_cov_trace_pc() #8
  %106 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 3, ptr %key, align 8
  %107 = getelementptr inbounds %struct.sja1105_key, ptr %key, i32 0, i32 1
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_store8_noabort(i32 %108)
  store i64 %dmac.1.i, ptr %107, align 8
  %vid171.i = getelementptr inbounds %struct.sja1105_key, ptr %key, i32 0, i32 1, i32 0, i32 1
  %109 = ptrtoint ptr %vid171.i to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 %vid.2.i, ptr %vid171.i, align 8
  %pcp172.i = getelementptr inbounds %struct.sja1105_key, ptr %key, i32 0, i32 1, i32 0, i32 2
  %110 = ptrtoint ptr %pcp172.i to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 %pcp.2.i, ptr %pcp172.i, align 2
  br label %if.end

if.end173.i:                                      ; preds = %if.end157.i
  br i1 %cmp143.i, label %do.body180.i, label %if.then176.i

if.then176.i:                                     ; preds = %if.end173.i
  call void @__sanitizer_cov_trace_pc() #8
  %111 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 2, ptr %key, align 8
  %112 = getelementptr inbounds %struct.sja1105_key, ptr %key, i32 0, i32 1
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_store8_noabort(i32 %113)
  store i64 %dmac.1.i, ptr %112, align 8
  br label %if.end

do.body180.i:                                     ; preds = %if.end173.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @sja1105_flower_parse_key.__msg.9) #6
  %tobool182.not.i = icmp eq ptr %3, null
  br i1 %tobool182.not.i, label %do.body180.i.cleanup88_crit_edge, label %if.then183.i

do.body180.i.cleanup88_crit_edge:                 ; preds = %do.body180.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup88

if.then183.i:                                     ; preds = %do.body180.i
  call void @__sanitizer_cov_trace_pc() #8
  %114 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr @sja1105_flower_parse_key.__msg.9, ptr %3, align 4
  br label %cleanup88

cleanup188.critedge.i:                            ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match7.i) #6
  br label %cleanup88

if.end:                                           ; preds = %if.then176.i, %if.then168.i, %if.then153.i, %if.then141.i
  %action = getelementptr inbounds %struct.flow_rule, ptr %1, i32 0, i32 1
  %entries = getelementptr inbounds %struct.flow_rule, ptr %1, i32 1
  %115 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %action, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %cmp221.not = icmp eq i32 %116, 0
  br i1 %cmp221.not, label %if.end.cleanup88_crit_edge, label %for.body.lr.ph

if.end.cleanup88_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup88

for.body.lr.ph:                                   ; preds = %if.end
  %dst1.i.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 1
  %index.i10.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 2
  %num_ports.i.i.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 18
  %117 = getelementptr inbounds %struct.sja1105_key, ptr %key, i32 0, i32 1
  %flow_block.i.i12.i = getelementptr inbounds %struct.sja1105_private, ptr %5, i32 0, i32 14
  %entries.i39.i = getelementptr %struct.sja1105_static_config, ptr %5, i32 0, i32 1, i32 6, i32 2
  %mul.i40.i = shl i32 %port, 3
  %conv.i43.i = sext i32 %port to i64
  %tobool22.not.i46.i = icmp eq ptr %3, null
  %shl.i48.i = shl nuw i32 1, %port
  %ds1.i.i = getelementptr inbounds %struct.sja1105_private, ptr %5, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0241 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %vl_rule.0.off0235 = phi i1 [ false, %for.body.lr.ph ], [ %vl_rule.2.off0, %for.inc.for.body_crit_edge ]
  %gate_rule.0.off0229 = phi i1 [ false, %for.body.lr.ph ], [ %gate_rule.1.off0, %for.inc.for.body_crit_edge ]
  %routing_rule.0.off0223 = phi i1 [ false, %for.body.lr.ph ], [ %routing_rule.2.off0, %for.inc.for.body_crit_edge ]
  %act.0222 = phi ptr [ %entries, %for.body.lr.ph ], [ %arrayidx64, %for.inc.for.body_crit_edge ]
  %118 = ptrtoint ptr %act.0222 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %act.0222, align 8
  %120 = zext i32 %119 to i64
  call void @__sanitizer_cov_trace_switch(i64 %120, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %119, label %do.body54 [
    i32 22, label %sw.bb
    i32 2, label %sw.bb16
    i32 4, label %sw.bb22
    i32 1, label %sw.bb42
    i32 28, label %sw.bb47
  ]

sw.bb:                                            ; preds = %for.body
  %rate_pkt_ps = getelementptr inbounds %struct.flow_action_entry, ptr %act.0222, i32 0, i32 5, i32 0, i32 3
  %121 = ptrtoint ptr %rate_pkt_ps to i32
  call void @__asan_load8_noabort(i32 %121)
  %122 = load i64, ptr %rate_pkt_ps, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %122)
  %tobool6.not = icmp eq i64 %122, 0
  br i1 %tobool6.not, label %if.end11, label %do.body

do.body:                                          ; preds = %sw.bb
  call void @do_trace_netlink_extack(ptr noundef nonnull @sja1105_cls_flower_add.__msg) #6
  br i1 %tobool22.not.i46.i, label %do.body.cleanup88_crit_edge, label %if.then9

do.body.cleanup88_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup88

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %123 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr @sja1105_cls_flower_add.__msg, ptr %3, align 4
  br label %cleanup88

if.end11:                                         ; preds = %sw.bb
  %124 = getelementptr inbounds %struct.flow_action_entry, ptr %act.0222, i32 0, i32 5
  %rate_bytes_ps = getelementptr inbounds %struct.flow_action_entry, ptr %act.0222, i32 0, i32 5, i32 0, i32 1
  %125 = ptrtoint ptr %rate_bytes_ps to i32
  call void @__asan_load8_noabort(i32 %125)
  %126 = load i64, ptr %rate_bytes_ps, align 8
  %127 = ptrtoint ptr %124 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %124, align 8
  %129 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %key, align 8
  %131 = zext i32 %130 to i64
  call void @__sanitizer_cov_trace_switch(i64 %131, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %130, label %do.body.i175 [
    i32 0, label %if.end11.for.cond.i.i.i_crit_edge
    i32 1, label %sw.bb1.i
  ]

if.end11.for.cond.i.i.i_crit_edge:                ; preds = %if.end11
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i.for.cond.i.i.i_crit_edge, %if.end11.for.cond.i.i.i_crit_edge
  %rule.0.in.i.i.i = phi ptr [ %rule.0.i.i.i, %for.body.i.i.i.for.cond.i.i.i_crit_edge ], [ %flow_block.i.i12.i, %if.end11.for.cond.i.i.i_crit_edge ]
  %132 = ptrtoint ptr %rule.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %rule.0.i.i.i = load ptr, ptr %rule.0.in.i.i.i, align 8
  %cmp.not.i.i.i = icmp eq ptr %rule.0.i.i.i, %flow_block.i.i12.i
  br i1 %cmp.not.i.i.i, label %sja1105_rule_find.exit.thread.i.i, label %for.body.i.i.i

sja1105_rule_find.exit.thread.i.i:                ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %133 = ptrtoint ptr %ds1.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %ds1.i.i, align 8
  br label %if.then.i.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i
  %cookie3.i.i.i = getelementptr inbounds %struct.sja1105_rule, ptr %rule.0.i.i.i, i32 0, i32 1
  %135 = ptrtoint ptr %cookie3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %cookie3.i.i.i, align 8
  %cmp4.i.i.i = icmp eq i32 %136, %7
  br i1 %cmp4.i.i.i, label %sja1105_rule_find.exit.i.i, label %for.body.i.i.i.for.cond.i.i.i_crit_edge

for.body.i.i.i.for.cond.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i.i.i

sja1105_rule_find.exit.i.i:                       ; preds = %for.body.i.i.i
  %137 = ptrtoint ptr %ds1.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %ds1.i.i, align 8
  %tobool.not.i.i170 = icmp eq ptr %rule.0.i.i.i, null
  br i1 %tobool.not.i.i170, label %sja1105_rule_find.exit.i.i.if.then.i.i_crit_edge, label %sja1105_rule_find.exit.i.i.if.end8.i.i_crit_edge

sja1105_rule_find.exit.i.i.if.end8.i.i_crit_edge: ; preds = %sja1105_rule_find.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i.i

sja1105_rule_find.exit.i.i.if.then.i.i_crit_edge: ; preds = %sja1105_rule_find.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %sja1105_rule_find.exit.i.i.if.then.i.i_crit_edge, %sja1105_rule_find.exit.thread.i.i
  %139 = phi ptr [ %134, %sja1105_rule_find.exit.thread.i.i ], [ %138, %sja1105_rule_find.exit.i.i.if.then.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %140 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %140, i32 noundef 3520, i32 noundef 136) #9
  %tobool3.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool3.not.i.i, label %if.then.i.i.cleanup88_crit_edge, label %if.end.i.i

if.then.i.i.cleanup88_crit_edge:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup88

if.end.i.i:                                       ; preds = %if.then.i.i
  %cookie5.i.i = getelementptr inbounds %struct.sja1105_rule, ptr %call7.i.i.i.i, i32 0, i32 1
  %141 = ptrtoint ptr %cookie5.i.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %7, ptr %cookie5.i.i, align 8
  %type.i.i = getelementptr inbounds %struct.sja1105_rule, ptr %call7.i.i.i.i, i32 0, i32 4
  %142 = ptrtoint ptr %type.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 0, ptr %type.i.i, align 8
  br label %for.body.i107.i.i

for.body.i107.i.i:                                ; preds = %for.inc.i.i.i.for.body.i107.i.i_crit_edge, %if.end.i.i
  %i.04.i.i.i = phi i32 [ 0, %if.end.i.i ], [ %inc.i.i.i, %for.inc.i.i.i.for.body.i107.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr %struct.sja1105_private, ptr %5, i32 0, i32 14, i32 1, i32 %i.04.i.i.i
  %143 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %arrayidx.i.i.i, align 1, !range !42
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %144)
  %tobool.not.i.i.i = icmp eq i8 %144, 0
  br i1 %tobool.not.i.i.i, label %for.body.i107.i.i.sja1105_find_free_l2_policer.exit.i.i_crit_edge, label %for.inc.i.i.i

for.body.i107.i.i.sja1105_find_free_l2_policer.exit.i.i_crit_edge: ; preds = %for.body.i107.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sja1105_find_free_l2_policer.exit.i.i

for.inc.i.i.i:                                    ; preds = %for.body.i107.i.i
  %inc.i.i.i = add nuw nsw i32 %i.04.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 110
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.sja1105_find_free_l2_policer.exit.i.i_crit_edge, label %for.inc.i.i.i.for.body.i107.i.i_crit_edge

for.inc.i.i.i.for.body.i107.i.i_crit_edge:        ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i107.i.i

for.inc.i.i.i.sja1105_find_free_l2_policer.exit.i.i_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sja1105_find_free_l2_policer.exit.i.i

sja1105_find_free_l2_policer.exit.i.i:            ; preds = %for.inc.i.i.i.sja1105_find_free_l2_policer.exit.i.i_crit_edge, %for.body.i107.i.i.sja1105_find_free_l2_policer.exit.i.i_crit_edge
  %retval.0.i108.i.i = phi i32 [ %i.04.i.i.i, %for.body.i107.i.i.sja1105_find_free_l2_policer.exit.i.i_crit_edge ], [ -1, %for.inc.i.i.i.sja1105_find_free_l2_policer.exit.i.i_crit_edge ]
  %145 = getelementptr inbounds %struct.sja1105_rule, ptr %call7.i.i.i.i, i32 0, i32 5
  %146 = ptrtoint ptr %145 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %retval.0.i108.i.i, ptr %145, align 8
  %key.i.i = getelementptr inbounds %struct.sja1105_rule, ptr %call7.i.i.i.i, i32 0, i32 3
  %147 = ptrtoint ptr %key.i.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 0, ptr %key.i.i, align 8
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %sja1105_find_free_l2_policer.exit.i.i, %sja1105_rule_find.exit.i.i.if.end8.i.i_crit_edge
  %tobool.not112.i.i = phi i1 [ false, %sja1105_rule_find.exit.i.i.if.end8.i.i_crit_edge ], [ true, %sja1105_find_free_l2_policer.exit.i.i ]
  %148 = phi ptr [ %138, %sja1105_rule_find.exit.i.i.if.end8.i.i_crit_edge ], [ %139, %sja1105_find_free_l2_policer.exit.i.i ]
  %rule.0.i.i = phi ptr [ %rule.0.i.i.i, %sja1105_rule_find.exit.i.i.if.end8.i.i_crit_edge ], [ %call7.i.i.i.i, %sja1105_find_free_l2_policer.exit.i.i ]
  %149 = getelementptr inbounds %struct.sja1105_rule, ptr %rule.0.i.i, i32 0, i32 5
  %150 = ptrtoint ptr %149 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %149, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %151)
  %cmp.i.i171 = icmp eq i32 %151, -1
  br i1 %cmp.i.i171, label %do.body.i.i, label %if.end14.i.i

do.body.i.i:                                      ; preds = %if.end8.i.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @sja1105_setup_bcast_policer.__msg) #6
  br i1 %tobool22.not.i46.i, label %do.body.i.i.if.else.i.i_crit_edge, label %do.body.i.i.if.else.sink.split.i.i_crit_edge

do.body.i.i.if.else.sink.split.i.i_crit_edge:     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.sink.split.i.i

do.body.i.i.if.else.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i.i

if.end14.i.i:                                     ; preds = %if.end8.i.i
  %152 = ptrtoint ptr %entries.i39.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %entries.i39.i, align 8
  %num_ports.i.i = getelementptr inbounds %struct.dsa_switch, ptr %148, i32 0, i32 18
  %154 = ptrtoint ptr %num_ports.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %num_ports.i.i, align 4
  %mul.i.i = shl i32 %155, 3
  %add.i.i = add i32 %mul.i.i, %port
  %arrayidx15.i.i = getelementptr %struct.sja1105_l2_policing_entry, ptr %153, i32 %add.i.i
  %156 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load8_noabort(i32 %156)
  %157 = load i64, ptr %arrayidx15.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %157, i64 %conv.i43.i)
  %cmp17.not.i.i = icmp eq i64 %157, %conv.i43.i
  br i1 %cmp17.not.i.i, label %if.end28.i.i, label %do.body20.i.i

do.body20.i.i:                                    ; preds = %if.end14.i.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @sja1105_setup_bcast_policer.__msg.10) #6
  br i1 %tobool22.not.i46.i, label %do.body20.i.i.if.else.i.i_crit_edge, label %do.body20.i.i.if.else.sink.split.i.i_crit_edge

do.body20.i.i.if.else.sink.split.i.i_crit_edge:   ; preds = %do.body20.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.sink.split.i.i

do.body20.i.i.if.else.i.i_crit_edge:              ; preds = %do.body20.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i.i

if.end28.i.i:                                     ; preds = %if.end14.i.i
  %port_mask.i.i = getelementptr inbounds %struct.sja1105_rule, ptr %rule.0.i.i, i32 0, i32 2
  %158 = ptrtoint ptr %port_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %port_mask.i.i, align 4
  %or.i.i173 = or i32 %159, %shl.i48.i
  store i32 %or.i.i173, ptr %port_mask.i.i, align 4
  %call30.i.i = call i32 @_find_next_bit_be(ptr noundef %port_mask.i.i, i32 noundef 11, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %call30.i.i)
  %cmp31121.i.i = icmp ult i32 %call30.i.i, 11
  br i1 %cmp31121.i.i, label %if.end28.i.i.for.body.i.i_crit_edge, label %if.end28.i.i.out.i.i_crit_edge

if.end28.i.i.out.i.i_crit_edge:                   ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.i.i

if.end28.i.i.for.body.i.i_crit_edge:              ; preds = %if.end28.i.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end28.i.i.for.body.i.i_crit_edge
  %p.0122.i.i = phi i32 [ %call42.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %call30.i.i, %if.end28.i.i.for.body.i.i_crit_edge ]
  %160 = ptrtoint ptr %num_ports.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %num_ports.i.i, align 4
  %mul34.i.i = shl i32 %161, 3
  %add35.i.i = add i32 %mul34.i.i, %p.0122.i.i
  %162 = ptrtoint ptr %149 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %149, align 8
  %conv37.i.i = sext i32 %163 to i64
  %arrayidx38.i.i = getelementptr %struct.sja1105_l2_policing_entry, ptr %153, i32 %add35.i.i
  %164 = ptrtoint ptr %arrayidx38.i.i to i32
  call void @__asan_store8_noabort(i32 %164)
  store i64 %conv37.i.i, ptr %arrayidx38.i.i, align 8
  %add41.i.i = add nuw nsw i32 %p.0122.i.i, 1
  %call42.i.i = call i32 @_find_next_bit_be(ptr noundef %port_mask.i.i, i32 noundef 11, i32 noundef %add41.i.i) #6
  %cmp31.i.i = icmp ult i32 %call42.i.i, 11
  br i1 %cmp31.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.out.i.i_crit_edge

for.body.i.i.out.i.i_crit_edge:                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.i.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

out.i.i:                                          ; preds = %for.body.i.i.out.i.i_crit_edge, %if.end28.i.i.out.i.i_crit_edge
  %mul43.i.i = shl i64 %126, 9
  %165 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %mul43.i.i) #10, !srcloc !43
  %166 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %mul43.i.i, i64 %165, i32 0) #10, !srcloc !44
  %asmresult10.i.i.i.i.i = extractvalue { i64, i32 } %166, 0
  %div1581.i.i.i.i = lshr i64 %asmresult10.i.i.i.i.i, 18
  %167 = ptrtoint ptr %149 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %149, align 8
  %rate.i.i = getelementptr %struct.sja1105_l2_policing_entry, ptr %153, i32 %168, i32 2
  %169 = ptrtoint ptr %rate.i.i to i32
  call void @__asan_store8_noabort(i32 %169)
  store i64 %div1581.i.i.i.i, ptr %rate.i.i, align 8
  %conv47.i.i = zext i32 %128 to i64
  %170 = load i32, ptr %149, align 8
  %smax.i.i = getelementptr %struct.sja1105_l2_policing_entry, ptr %153, i32 %170, i32 1
  %171 = ptrtoint ptr %smax.i.i to i32
  call void @__asan_store8_noabort(i32 %171)
  store i64 %conv47.i.i, ptr %smax.i.i, align 8
  %172 = load i32, ptr %149, align 8
  %maxlen.i.i = getelementptr %struct.sja1105_l2_policing_entry, ptr %153, i32 %172, i32 3
  %173 = ptrtoint ptr %maxlen.i.i to i32
  call void @__asan_store8_noabort(i32 %173)
  store i64 1522, ptr %maxlen.i.i, align 8
  %call52.i.i = call i32 @sja1105_static_config_reload(ptr noundef %5, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.i.i)
  %cmp53.i.i = icmp eq i32 %call52.i.i, 0
  %174 = and i1 %tobool.not112.i.i, %cmp53.i.i
  br i1 %174, label %if.then57.i.i, label %out.i.i.if.else.i.i_crit_edge

out.i.i.if.else.i.i_crit_edge:                    ; preds = %out.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i.i

if.then57.i.i:                                    ; preds = %out.i.i
  %175 = ptrtoint ptr %149 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %149, align 8
  %arrayidx59.i.i = getelementptr %struct.sja1105_private, ptr %5, i32 0, i32 14, i32 1, i32 %176
  %177 = ptrtoint ptr %arrayidx59.i.i to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 1, ptr %arrayidx59.i.i, align 1
  %178 = ptrtoint ptr %flow_block.i.i12.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %flow_block.i.i12.i, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %rule.0.i.i, ptr noundef %flow_block.i.i12.i, ptr noundef %179) #6
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then57.i.i.for.inc_crit_edge

if.then57.i.i.for.inc_crit_edge:                  ; preds = %if.then57.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end.i.i.i.i:                                   ; preds = %if.then57.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %179, i32 0, i32 1
  %180 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr %rule.0.i.i, ptr %prev1.i.i.i.i, align 4
  %181 = ptrtoint ptr %rule.0.i.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr %179, ptr %rule.0.i.i, align 4
  br label %for.inc.sink.split

if.else.sink.split.i.i:                           ; preds = %do.body20.i.i.if.else.sink.split.i.i_crit_edge, %do.body.i.i.if.else.sink.split.i.i_crit_edge
  %sja1105_setup_bcast_policer.__msg.10.sink.i.i = phi ptr [ @sja1105_setup_bcast_policer.__msg, %do.body.i.i.if.else.sink.split.i.i_crit_edge ], [ @sja1105_setup_bcast_policer.__msg.10, %do.body20.i.i.if.else.sink.split.i.i_crit_edge ]
  %rc.0119.ph.i.i = phi i32 [ -28, %do.body.i.i.if.else.sink.split.i.i_crit_edge ], [ -17, %do.body20.i.i.if.else.sink.split.i.i_crit_edge ]
  %182 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr %sja1105_setup_bcast_policer.__msg.10.sink.i.i, ptr %3, align 4
  br label %if.else.i.i

if.else.i.i:                                      ; preds = %if.else.sink.split.i.i, %out.i.i.if.else.i.i_crit_edge, %do.body20.i.i.if.else.i.i_crit_edge, %do.body.i.i.if.else.i.i_crit_edge
  %rc.0119.i.i = phi i32 [ %call52.i.i, %out.i.i.if.else.i.i_crit_edge ], [ -17, %do.body20.i.i.if.else.i.i_crit_edge ], [ -28, %do.body.i.i.if.else.i.i_crit_edge ], [ %rc.0119.ph.i.i, %if.else.sink.split.i.i ]
  br i1 %tobool.not112.i.i, label %if.else.i.i.sja1105_flower_policer.exit.sink.split_crit_edge, label %if.else.i.i.sja1105_flower_policer.exit_crit_edge

if.else.i.i.sja1105_flower_policer.exit_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sja1105_flower_policer.exit

if.else.i.i.sja1105_flower_policer.exit.sink.split_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sja1105_flower_policer.exit.sink.split

sw.bb1.i:                                         ; preds = %if.end11
  %183 = ptrtoint ptr %117 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %117, align 8
  br label %for.cond.i.i16.i

for.cond.i.i16.i:                                 ; preds = %for.body.i.i19.i.for.cond.i.i16.i_crit_edge, %sw.bb1.i
  %rule.0.in.i.i13.i = phi ptr [ %flow_block.i.i12.i, %sw.bb1.i ], [ %rule.0.i.i14.i, %for.body.i.i19.i.for.cond.i.i16.i_crit_edge ]
  %185 = ptrtoint ptr %rule.0.in.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %rule.0.i.i14.i = load ptr, ptr %rule.0.in.i.i13.i, align 8
  %cmp.not.i.i15.i = icmp eq ptr %rule.0.i.i14.i, %flow_block.i.i12.i
  br i1 %cmp.not.i.i15.i, label %for.cond.i.i16.i.if.then.i23.i_crit_edge, label %for.body.i.i19.i

for.cond.i.i16.i.if.then.i23.i_crit_edge:         ; preds = %for.cond.i.i16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i23.i

for.body.i.i19.i:                                 ; preds = %for.cond.i.i16.i
  %cookie3.i.i17.i = getelementptr inbounds %struct.sja1105_rule, ptr %rule.0.i.i14.i, i32 0, i32 1
  %186 = ptrtoint ptr %cookie3.i.i17.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %cookie3.i.i17.i, align 8
  %cmp4.i.i18.i = icmp eq i32 %187, %7
  br i1 %cmp4.i.i18.i, label %sja1105_rule_find.exit.i21.i, label %for.body.i.i19.i.for.cond.i.i16.i_crit_edge

for.body.i.i19.i.for.cond.i.i16.i_crit_edge:      ; preds = %for.body.i.i19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i.i16.i

sja1105_rule_find.exit.i21.i:                     ; preds = %for.body.i.i19.i
  %tobool.not.i20.i = icmp eq ptr %rule.0.i.i14.i, null
  br i1 %tobool.not.i20.i, label %sja1105_rule_find.exit.i21.i.if.then.i23.i_crit_edge, label %sja1105_rule_find.exit.i21.i.if.end8.i36.i_crit_edge

sja1105_rule_find.exit.i21.i.if.end8.i36.i_crit_edge: ; preds = %sja1105_rule_find.exit.i21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i36.i

sja1105_rule_find.exit.i21.i.if.then.i23.i_crit_edge: ; preds = %sja1105_rule_find.exit.i21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i23.i

if.then.i23.i:                                    ; preds = %sja1105_rule_find.exit.i21.i.if.then.i23.i_crit_edge, %for.cond.i.i16.i.if.then.i23.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %188 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i22.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %188, i32 noundef 3520, i32 noundef 136) #9
  %tobool2.not.i.i = icmp eq ptr %call7.i.i.i22.i, null
  br i1 %tobool2.not.i.i, label %if.then.i23.i.cleanup88_crit_edge, label %if.end.i25.i

if.then.i23.i.cleanup88_crit_edge:                ; preds = %if.then.i23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup88

if.end.i25.i:                                     ; preds = %if.then.i23.i
  %cookie4.i.i = getelementptr inbounds %struct.sja1105_rule, ptr %call7.i.i.i22.i, i32 0, i32 1
  %189 = ptrtoint ptr %cookie4.i.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %7, ptr %cookie4.i.i, align 8
  %type.i24.i = getelementptr inbounds %struct.sja1105_rule, ptr %call7.i.i.i22.i, i32 0, i32 4
  %190 = ptrtoint ptr %type.i24.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 1, ptr %type.i24.i, align 8
  br label %for.body.i106.i.i

for.body.i106.i.i:                                ; preds = %for.inc.i.i31.i.for.body.i106.i.i_crit_edge, %if.end.i25.i
  %i.04.i.i26.i = phi i32 [ 0, %if.end.i25.i ], [ %inc.i.i29.i, %for.inc.i.i31.i.for.body.i106.i.i_crit_edge ]
  %arrayidx.i.i27.i = getelementptr %struct.sja1105_private, ptr %5, i32 0, i32 14, i32 1, i32 %i.04.i.i26.i
  %191 = ptrtoint ptr %arrayidx.i.i27.i to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %arrayidx.i.i27.i, align 1, !range !42
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %192)
  %tobool.not.i.i28.i = icmp eq i8 %192, 0
  br i1 %tobool.not.i.i28.i, label %for.body.i106.i.i.sja1105_find_free_l2_policer.exit.i33.i_crit_edge, label %for.inc.i.i31.i

for.body.i106.i.i.sja1105_find_free_l2_policer.exit.i33.i_crit_edge: ; preds = %for.body.i106.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sja1105_find_free_l2_policer.exit.i33.i

for.inc.i.i31.i:                                  ; preds = %for.body.i106.i.i
  %inc.i.i29.i = add nuw nsw i32 %i.04.i.i26.i, 1
  %exitcond.not.i.i30.i = icmp eq i32 %inc.i.i29.i, 110
  br i1 %exitcond.not.i.i30.i, label %for.inc.i.i31.i.sja1105_find_free_l2_policer.exit.i33.i_crit_edge, label %for.inc.i.i31.i.for.body.i106.i.i_crit_edge

for.inc.i.i31.i.for.body.i106.i.i_crit_edge:      ; preds = %for.inc.i.i31.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i106.i.i

for.inc.i.i31.i.sja1105_find_free_l2_policer.exit.i33.i_crit_edge: ; preds = %for.inc.i.i31.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sja1105_find_free_l2_policer.exit.i33.i

sja1105_find_free_l2_policer.exit.i33.i:          ; preds = %for.inc.i.i31.i.sja1105_find_free_l2_policer.exit.i33.i_crit_edge, %for.body.i106.i.i.sja1105_find_free_l2_policer.exit.i33.i_crit_edge
  %retval.0.i107.i.i = phi i32 [ %i.04.i.i26.i, %for.body.i106.i.i.sja1105_find_free_l2_policer.exit.i33.i_crit_edge ], [ -1, %for.inc.i.i31.i.sja1105_find_free_l2_policer.exit.i33.i_crit_edge ]
  %193 = getelementptr inbounds %struct.sja1105_rule, ptr %call7.i.i.i22.i, i32 0, i32 5
  %194 = ptrtoint ptr %193 to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 %retval.0.i107.i.i, ptr %193, align 8
  %key.i32.i = getelementptr inbounds %struct.sja1105_rule, ptr %call7.i.i.i22.i, i32 0, i32 3
  %195 = ptrtoint ptr %key.i32.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 1, ptr %key.i32.i, align 8
  %196 = getelementptr inbounds %struct.sja1105_rule, ptr %call7.i.i.i22.i, i32 0, i32 3, i32 1
  %197 = ptrtoint ptr %196 to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %184, ptr %196, align 8
  br label %if.end8.i36.i

if.end8.i36.i:                                    ; preds = %sja1105_find_free_l2_policer.exit.i33.i, %sja1105_rule_find.exit.i21.i.if.end8.i36.i_crit_edge
  %tobool.not110.i.i = phi i1 [ false, %sja1105_rule_find.exit.i21.i.if.end8.i36.i_crit_edge ], [ true, %sja1105_find_free_l2_policer.exit.i33.i ]
  %rule.0.i34.i = phi ptr [ %rule.0.i.i14.i, %sja1105_rule_find.exit.i21.i.if.end8.i36.i_crit_edge ], [ %call7.i.i.i22.i, %sja1105_find_free_l2_policer.exit.i33.i ]
  %198 = getelementptr inbounds %struct.sja1105_rule, ptr %rule.0.i34.i, i32 0, i32 5
  %199 = ptrtoint ptr %198 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %198, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %200)
  %cmp.i35.i = icmp eq i32 %200, -1
  br i1 %cmp.i35.i, label %do.body.i38.i, label %if.end14.i45.i

do.body.i38.i:                                    ; preds = %if.end8.i36.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @sja1105_setup_tc_policer.__msg) #6
  br i1 %tobool22.not.i46.i, label %do.body.i38.i.if.else.i66.i_crit_edge, label %do.body.i38.i.if.else.sink.split.i65.i_crit_edge

do.body.i38.i.if.else.sink.split.i65.i_crit_edge: ; preds = %do.body.i38.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.sink.split.i65.i

do.body.i38.i.if.else.i66.i_crit_edge:            ; preds = %do.body.i38.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i66.i

if.end14.i45.i:                                   ; preds = %if.end8.i36.i
  %201 = ptrtoint ptr %entries.i39.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %entries.i39.i, align 8
  %add.i41.i = add i32 %184, %mul.i40.i
  %arrayidx15.i42.i = getelementptr %struct.sja1105_l2_policing_entry, ptr %202, i32 %add.i41.i
  %203 = ptrtoint ptr %arrayidx15.i42.i to i32
  call void @__asan_load8_noabort(i32 %203)
  %204 = load i64, ptr %arrayidx15.i42.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %204, i64 %conv.i43.i)
  %cmp17.not.i44.i = icmp eq i64 %204, %conv.i43.i
  br i1 %cmp17.not.i44.i, label %if.end28.i52.i, label %do.body20.i47.i

do.body20.i47.i:                                  ; preds = %if.end14.i45.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @sja1105_setup_tc_policer.__msg.11) #6
  br i1 %tobool22.not.i46.i, label %do.body20.i47.i.if.else.i66.i_crit_edge, label %do.body20.i47.i.if.else.sink.split.i65.i_crit_edge

do.body20.i47.i.if.else.sink.split.i65.i_crit_edge: ; preds = %do.body20.i47.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.sink.split.i65.i

do.body20.i47.i.if.else.i66.i_crit_edge:          ; preds = %do.body20.i47.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i66.i

if.end28.i52.i:                                   ; preds = %if.end14.i45.i
  %port_mask.i49.i = getelementptr inbounds %struct.sja1105_rule, ptr %rule.0.i34.i, i32 0, i32 2
  %205 = ptrtoint ptr %port_mask.i49.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %port_mask.i49.i, align 4
  %or.i50.i = or i32 %206, %shl.i48.i
  store i32 %or.i50.i, ptr %port_mask.i49.i, align 4
  %call30.i51.i = call i32 @_find_next_bit_be(ptr noundef %port_mask.i49.i, i32 noundef 11, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %call30.i51.i)
  %cmp31119.i.i = icmp ult i32 %call30.i51.i, 11
  br i1 %cmp31119.i.i, label %if.end28.i52.i.for.body.i54.i_crit_edge, label %if.end28.i52.i.out.i60.i_crit_edge

if.end28.i52.i.out.i60.i_crit_edge:               ; preds = %if.end28.i52.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.i60.i

if.end28.i52.i.for.body.i54.i_crit_edge:          ; preds = %if.end28.i52.i
  br label %for.body.i54.i

for.body.i54.i:                                   ; preds = %for.body.i54.i.for.body.i54.i_crit_edge, %if.end28.i52.i.for.body.i54.i_crit_edge
  %p.0120.i.i = phi i32 [ %call41.i.i, %for.body.i54.i.for.body.i54.i_crit_edge ], [ %call30.i51.i, %if.end28.i52.i.for.body.i54.i_crit_edge ]
  %mul33.i.i = shl nuw nsw i32 %p.0120.i.i, 3
  %add34.i.i = add i32 %mul33.i.i, %184
  %207 = ptrtoint ptr %198 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %198, align 8
  %conv36.i.i = sext i32 %208 to i64
  %arrayidx37.i.i = getelementptr %struct.sja1105_l2_policing_entry, ptr %202, i32 %add34.i.i
  %209 = ptrtoint ptr %arrayidx37.i.i to i32
  call void @__asan_store8_noabort(i32 %209)
  store i64 %conv36.i.i, ptr %arrayidx37.i.i, align 8
  %add40.i.i = add nuw nsw i32 %p.0120.i.i, 1
  %call41.i.i = call i32 @_find_next_bit_be(ptr noundef %port_mask.i49.i, i32 noundef 11, i32 noundef %add40.i.i) #6
  %cmp31.i53.i = icmp ult i32 %call41.i.i, 11
  br i1 %cmp31.i53.i, label %for.body.i54.i.for.body.i54.i_crit_edge, label %for.body.i54.i.out.i60.i_crit_edge

for.body.i54.i.out.i60.i_crit_edge:               ; preds = %for.body.i54.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.i60.i

for.body.i54.i.for.body.i54.i_crit_edge:          ; preds = %for.body.i54.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i54.i

out.i60.i:                                        ; preds = %for.body.i54.i.out.i60.i_crit_edge, %if.end28.i52.i.out.i60.i_crit_edge
  %mul42.i.i = shl i64 %126, 9
  %210 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %mul42.i.i) #10, !srcloc !43
  %211 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %mul42.i.i, i64 %210, i32 0) #10, !srcloc !44
  %asmresult10.i.i.i.i55.i = extractvalue { i64, i32 } %211, 0
  %div1581.i.i.i56.i = lshr i64 %asmresult10.i.i.i.i55.i, 18
  %212 = ptrtoint ptr %198 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %198, align 8
  %rate.i57.i = getelementptr %struct.sja1105_l2_policing_entry, ptr %202, i32 %213, i32 2
  %214 = ptrtoint ptr %rate.i57.i to i32
  call void @__asan_store8_noabort(i32 %214)
  store i64 %div1581.i.i.i56.i, ptr %rate.i57.i, align 8
  %conv46.i.i = zext i32 %128 to i64
  %215 = load i32, ptr %198, align 8
  %smax.i58.i = getelementptr %struct.sja1105_l2_policing_entry, ptr %202, i32 %215, i32 1
  %216 = ptrtoint ptr %smax.i58.i to i32
  call void @__asan_store8_noabort(i32 %216)
  store i64 %conv46.i.i, ptr %smax.i58.i, align 8
  %217 = load i32, ptr %198, align 8
  %maxlen.i59.i = getelementptr %struct.sja1105_l2_policing_entry, ptr %202, i32 %217, i32 3
  %218 = ptrtoint ptr %maxlen.i59.i to i32
  call void @__asan_store8_noabort(i32 %218)
  store i64 1522, ptr %maxlen.i59.i, align 8
  %call51.i.i = call i32 @sja1105_static_config_reload(ptr noundef %5, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i.i)
  %cmp52.i.i = icmp eq i32 %call51.i.i, 0
  %219 = and i1 %tobool.not110.i.i, %cmp52.i.i
  br i1 %219, label %if.then56.i.i, label %out.i60.i.if.else.i66.i_crit_edge

out.i60.i.if.else.i66.i_crit_edge:                ; preds = %out.i60.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i66.i

if.then56.i.i:                                    ; preds = %out.i60.i
  %220 = ptrtoint ptr %198 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %198, align 8
  %arrayidx58.i.i = getelementptr %struct.sja1105_private, ptr %5, i32 0, i32 14, i32 1, i32 %221
  %222 = ptrtoint ptr %arrayidx58.i.i to i32
  call void @__asan_store1_noabort(i32 %222)
  store i8 1, ptr %arrayidx58.i.i, align 1
  %223 = ptrtoint ptr %flow_block.i.i12.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %flow_block.i.i12.i, align 4
  %call.i.i.i61.i = call zeroext i1 @__list_add_valid(ptr noundef %rule.0.i34.i, ptr noundef %flow_block.i.i12.i, ptr noundef %224) #6
  br i1 %call.i.i.i61.i, label %if.end.i.i.i64.i, label %if.then56.i.i.for.inc_crit_edge

if.then56.i.i.for.inc_crit_edge:                  ; preds = %if.then56.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end.i.i.i64.i:                                 ; preds = %if.then56.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev1.i.i.i62.i = getelementptr inbounds %struct.list_head, ptr %224, i32 0, i32 1
  %225 = ptrtoint ptr %prev1.i.i.i62.i to i32
  call void @__asan_store4_noabort(i32 %225)
  store ptr %rule.0.i34.i, ptr %prev1.i.i.i62.i, align 4
  %226 = ptrtoint ptr %rule.0.i34.i to i32
  call void @__asan_store4_noabort(i32 %226)
  store ptr %224, ptr %rule.0.i34.i, align 4
  br label %for.inc.sink.split

if.else.sink.split.i65.i:                         ; preds = %do.body20.i47.i.if.else.sink.split.i65.i_crit_edge, %do.body.i38.i.if.else.sink.split.i65.i_crit_edge
  %sja1105_setup_tc_policer.__msg.11.sink.i.i = phi ptr [ @sja1105_setup_tc_policer.__msg, %do.body.i38.i.if.else.sink.split.i65.i_crit_edge ], [ @sja1105_setup_tc_policer.__msg.11, %do.body20.i47.i.if.else.sink.split.i65.i_crit_edge ]
  %rc.0117.ph.i.i = phi i32 [ -28, %do.body.i38.i.if.else.sink.split.i65.i_crit_edge ], [ -17, %do.body20.i47.i.if.else.sink.split.i65.i_crit_edge ]
  %227 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %227)
  store ptr %sja1105_setup_tc_policer.__msg.11.sink.i.i, ptr %3, align 4
  br label %if.else.i66.i

if.else.i66.i:                                    ; preds = %if.else.sink.split.i65.i, %out.i60.i.if.else.i66.i_crit_edge, %do.body20.i47.i.if.else.i66.i_crit_edge, %do.body.i38.i.if.else.i66.i_crit_edge
  %rc.0117.i.i = phi i32 [ %call51.i.i, %out.i60.i.if.else.i66.i_crit_edge ], [ -17, %do.body20.i47.i.if.else.i66.i_crit_edge ], [ -28, %do.body.i38.i.if.else.i66.i_crit_edge ], [ %rc.0117.ph.i.i, %if.else.sink.split.i65.i ]
  br i1 %tobool.not110.i.i, label %if.else.i66.i.sja1105_flower_policer.exit.sink.split_crit_edge, label %if.else.i66.i.sja1105_flower_policer.exit_crit_edge

if.else.i66.i.sja1105_flower_policer.exit_crit_edge: ; preds = %if.else.i66.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sja1105_flower_policer.exit

if.else.i66.i.sja1105_flower_policer.exit.sink.split_crit_edge: ; preds = %if.else.i66.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sja1105_flower_policer.exit.sink.split

do.body.i175:                                     ; preds = %if.end11
  call void @do_trace_netlink_extack(ptr noundef nonnull @sja1105_flower_policer.__msg) #6
  br i1 %tobool22.not.i46.i, label %do.body.i175.cleanup88_crit_edge, label %if.then.i

do.body.i175.cleanup88_crit_edge:                 ; preds = %do.body.i175
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup88

if.then.i:                                        ; preds = %do.body.i175
  call void @__sanitizer_cov_trace_pc() #8
  %228 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %228)
  store ptr @sja1105_flower_policer.__msg, ptr %3, align 4
  br label %cleanup88

sja1105_flower_policer.exit.sink.split:           ; preds = %if.else.i66.i.sja1105_flower_policer.exit.sink.split_crit_edge, %if.else.i.i.sja1105_flower_policer.exit.sink.split_crit_edge
  %rule.0.i.i.sink = phi ptr [ %rule.0.i.i, %if.else.i.i.sja1105_flower_policer.exit.sink.split_crit_edge ], [ %rule.0.i34.i, %if.else.i66.i.sja1105_flower_policer.exit.sink.split_crit_edge ]
  %retval.0.i.ph = phi i32 [ %rc.0119.i.i, %if.else.i.i.sja1105_flower_policer.exit.sink.split_crit_edge ], [ %rc.0117.i.i, %if.else.i66.i.sja1105_flower_policer.exit.sink.split_crit_edge ]
  call void @kfree(ptr noundef %rule.0.i.i.sink) #6
  br label %sja1105_flower_policer.exit

sja1105_flower_policer.exit:                      ; preds = %sja1105_flower_policer.exit.sink.split, %if.else.i66.i.sja1105_flower_policer.exit_crit_edge, %if.else.i.i.sja1105_flower_policer.exit_crit_edge
  %retval.0.i = phi i32 [ %rc.0119.i.i, %if.else.i.i.sja1105_flower_policer.exit_crit_edge ], [ %rc.0117.i.i, %if.else.i66.i.sja1105_flower_policer.exit_crit_edge ], [ %retval.0.i.ph, %sja1105_flower_policer.exit.sink.split ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool13.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool13.not, label %sja1105_flower_policer.exit.for.inc_crit_edge, label %sja1105_flower_policer.exit.cleanup88_crit_edge

sja1105_flower_policer.exit.cleanup88_crit_edge:  ; preds = %sja1105_flower_policer.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup88

sja1105_flower_policer.exit.for.inc_crit_edge:    ; preds = %sja1105_flower_policer.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

sw.bb16:                                          ; preds = %for.body
  %229 = ptrtoint ptr %dst1.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %dst1.i.i, align 4
  %ports.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %230, i32 0, i32 1
  %231 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %.pn20.i.i = load ptr, ptr %ports.i.i, align 4
  %cmp.not21.i.i = icmp eq ptr %.pn20.i.i, %ports.i.i
  br i1 %cmp.not21.i.i, label %sw.bb16.dsa_to_port.exit.i_crit_edge, label %sw.bb16.for.body.i.i176_crit_edge

sw.bb16.for.body.i.i176_crit_edge:                ; preds = %sw.bb16
  br label %for.body.i.i176

sw.bb16.dsa_to_port.exit.i_crit_edge:             ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #8
  br label %dsa_to_port.exit.i

for.body.i.i176:                                  ; preds = %for.inc.i.i.for.body.i.i176_crit_edge, %sw.bb16.for.body.i.i176_crit_edge
  %.pn22.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i.i176_crit_edge ], [ %.pn20.i.i, %sw.bb16.for.body.i.i176_crit_edge ]
  %ds3.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -432
  %232 = ptrtoint ptr %ds3.i.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %ds3.i.i, align 4
  %cmp4.i.i = icmp eq ptr %233, %ds
  br i1 %cmp4.i.i, label %land.lhs.true.i.i, label %for.body.i.i176.for.inc.i.i_crit_edge

for.body.i.i176.for.inc.i.i_crit_edge:            ; preds = %for.body.i.i176
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i176
  %index.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -428
  %234 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %index.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %235, i32 %port)
  %cmp5.i.i = icmp eq i32 %235, %port
  br i1 %cmp5.i.i, label %cleanup.split.loop.exit18.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i176.for.inc.i.i_crit_edge
  %236 = ptrtoint ptr %.pn22.i.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %.pn.i.i = load ptr, ptr %.pn22.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %ports.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.dsa_to_port.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i176_crit_edge

for.inc.i.i.for.body.i.i176_crit_edge:            ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i176

for.inc.i.i.dsa_to_port.exit.i_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dsa_to_port.exit.i

cleanup.split.loop.exit18.i.i:                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %dp.0.le.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -448
  br label %dsa_to_port.exit.i

dsa_to_port.exit.i:                               ; preds = %cleanup.split.loop.exit18.i.i, %for.inc.i.i.dsa_to_port.exit.i_crit_edge, %sw.bb16.dsa_to_port.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %dp.0.le.i.i, %cleanup.split.loop.exit18.i.i ], [ null, %sw.bb16.dsa_to_port.exit.i_crit_edge ], [ null, %for.inc.i.i.dsa_to_port.exit.i_crit_edge ]
  %cpu_dp1.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i, i32 0, i32 8
  %237 = ptrtoint ptr %cpu_dp1.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %cpu_dp1.i, align 4
  %tobool.not.i177 = icmp eq ptr %238, null
  br i1 %tobool.not.i177, label %dsa_to_port.exit.i.dsa_upstream_port.exit_crit_edge, label %if.end.i

dsa_to_port.exit.i.dsa_upstream_port.exit_crit_edge: ; preds = %dsa_to_port.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dsa_upstream_port.exit

if.end.i:                                         ; preds = %dsa_to_port.exit.i
  %ds2.i = getelementptr inbounds %struct.dsa_port, ptr %238, i32 0, i32 4
  %239 = ptrtoint ptr %ds2.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %ds2.i, align 4
  %index.i = getelementptr inbounds %struct.dsa_switch, ptr %240, i32 0, i32 2
  %241 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %index.i, align 4
  %index3.i = getelementptr inbounds %struct.dsa_port, ptr %238, i32 0, i32 5
  %243 = ptrtoint ptr %index3.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %index3.i, align 4
  %245 = ptrtoint ptr %index.i10.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %index.i10.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %246, i32 %242)
  %cmp.i.i178 = icmp eq i32 %246, %242
  br i1 %cmp.i.i178, label %if.end.i.dsa_upstream_port.exit_crit_edge, label %if.else.i.i179

if.end.i.dsa_upstream_port.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dsa_upstream_port.exit

if.else.i.i179:                                   ; preds = %if.end.i
  %rtable.i.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %230, i32 0, i32 10
  %247 = ptrtoint ptr %rtable.i.i.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %.pn22.i.i.i = load ptr, ptr %rtable.i.i.i, align 4
  %cmp.not23.i.i.i = icmp eq ptr %.pn22.i.i.i, %rtable.i.i.i
  br i1 %cmp.not23.i.i.i, label %if.else.i.i179.dsa_routing_port.exit.i.i_crit_edge, label %if.else.i.i179.for.body.i.i.i181_crit_edge

if.else.i.i179.for.body.i.i.i181_crit_edge:       ; preds = %if.else.i.i179
  br label %for.body.i.i.i181

if.else.i.i179.dsa_routing_port.exit.i.i_crit_edge: ; preds = %if.else.i.i179
  call void @__sanitizer_cov_trace_pc() #8
  br label %dsa_routing_port.exit.i.i

for.body.i.i.i181:                                ; preds = %for.inc.i.i.i183.for.body.i.i.i181_crit_edge, %if.else.i.i179.for.body.i.i.i181_crit_edge
  %.pn24.i.i.i = phi ptr [ %.pn.i.i.i, %for.inc.i.i.i183.for.body.i.i.i181_crit_edge ], [ %.pn22.i.i.i, %if.else.i.i179.for.body.i.i.i181_crit_edge ]
  %dl.0.i.i.i = getelementptr i8, ptr %.pn24.i.i.i, i32 -8
  %248 = ptrtoint ptr %dl.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %dl.0.i.i.i, align 4
  %ds3.i.i.i = getelementptr inbounds %struct.dsa_port, ptr %249, i32 0, i32 4
  %250 = ptrtoint ptr %ds3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %ds3.i.i.i, align 4
  %cmp4.i.i.i180 = icmp eq ptr %251, %ds
  br i1 %cmp4.i.i.i180, label %land.lhs.true.i.i.i, label %for.body.i.i.i181.for.inc.i.i.i183_crit_edge

for.body.i.i.i181.for.inc.i.i.i183_crit_edge:     ; preds = %for.body.i.i.i181
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i.i183

land.lhs.true.i.i.i:                              ; preds = %for.body.i.i.i181
  %link_dp.i.i.i = getelementptr i8, ptr %.pn24.i.i.i, i32 -4
  %252 = ptrtoint ptr %link_dp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %link_dp.i.i.i, align 4
  %ds5.i.i.i = getelementptr inbounds %struct.dsa_port, ptr %253, i32 0, i32 4
  %254 = ptrtoint ptr %ds5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %ds5.i.i.i, align 4
  %index.i.i.i = getelementptr inbounds %struct.dsa_switch, ptr %255, i32 0, i32 2
  %256 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %index.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %257, i32 %242)
  %cmp6.i.i.i = icmp eq i32 %257, %242
  br i1 %cmp6.i.i.i, label %if.then.i.i.i, label %land.lhs.true.i.i.i.for.inc.i.i.i183_crit_edge

land.lhs.true.i.i.i.for.inc.i.i.i183_crit_edge:   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i.i183

if.then.i.i.i:                                    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %index8.i.i.i = getelementptr inbounds %struct.dsa_port, ptr %249, i32 0, i32 5
  br label %dsa_routing_port.exit.i.i

for.inc.i.i.i183:                                 ; preds = %land.lhs.true.i.i.i.for.inc.i.i.i183_crit_edge, %for.body.i.i.i181.for.inc.i.i.i183_crit_edge
  %258 = ptrtoint ptr %.pn24.i.i.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %.pn.i.i.i = load ptr, ptr %.pn24.i.i.i, align 4
  %cmp.not.i.i.i182 = icmp eq ptr %.pn.i.i.i, %rtable.i.i.i
  br i1 %cmp.not.i.i.i182, label %for.inc.i.i.i183.dsa_routing_port.exit.i.i_crit_edge, label %for.inc.i.i.i183.for.body.i.i.i181_crit_edge

for.inc.i.i.i183.for.body.i.i.i181_crit_edge:     ; preds = %for.inc.i.i.i183
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i.i181

for.inc.i.i.i183.dsa_routing_port.exit.i.i_crit_edge: ; preds = %for.inc.i.i.i183
  call void @__sanitizer_cov_trace_pc() #8
  br label %dsa_routing_port.exit.i.i

dsa_routing_port.exit.i.i:                        ; preds = %for.inc.i.i.i183.dsa_routing_port.exit.i.i_crit_edge, %if.then.i.i.i, %if.else.i.i179.dsa_routing_port.exit.i.i_crit_edge
  %retval.0.in.i.i.i = phi ptr [ %index8.i.i.i, %if.then.i.i.i ], [ %num_ports.i.i.i, %if.else.i.i179.dsa_routing_port.exit.i.i_crit_edge ], [ %num_ports.i.i.i, %for.inc.i.i.i183.dsa_routing_port.exit.i.i_crit_edge ]
  %259 = ptrtoint ptr %retval.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %retval.0.i.i.i = load i32, ptr %retval.0.in.i.i.i, align 4
  br label %dsa_upstream_port.exit

dsa_upstream_port.exit:                           ; preds = %dsa_routing_port.exit.i.i, %if.end.i.dsa_upstream_port.exit_crit_edge, %dsa_to_port.exit.i.dsa_upstream_port.exit_crit_edge
  %retval.0.i184 = phi i32 [ %port, %dsa_to_port.exit.i.dsa_upstream_port.exit_crit_edge ], [ %retval.0.i.i.i, %dsa_routing_port.exit.i.i ], [ %244, %if.end.i.dsa_upstream_port.exit_crit_edge ]
  %shl = shl nuw i32 1, %retval.0.i184
  %call18 = call i32 @sja1105_vl_redirect(ptr noundef %5, i32 noundef %port, ptr noundef %3, i32 noundef %7, ptr noundef nonnull %key, i32 noundef %shl, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %dsa_upstream_port.exit.for.inc_crit_edge, label %dsa_upstream_port.exit.cleanup88_crit_edge

dsa_upstream_port.exit.cleanup88_crit_edge:       ; preds = %dsa_upstream_port.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup88

dsa_upstream_port.exit.for.inc_crit_edge:         ; preds = %dsa_upstream_port.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

sw.bb22:                                          ; preds = %for.body
  %260 = getelementptr inbounds %struct.flow_action_entry, ptr %act.0222, i32 0, i32 5
  %261 = ptrtoint ptr %260 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %260, align 8
  %call23 = call ptr @dsa_port_from_netdev(ptr noundef %262) #6
  %cmp.i = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.body26, label %if.end34

do.body26:                                        ; preds = %sw.bb22
  call void @do_trace_netlink_extack(ptr noundef nonnull @sja1105_cls_flower_add.__msg.1) #6
  br i1 %tobool22.not.i46.i, label %do.body26.cleanup88_crit_edge, label %if.then29

do.body26.cleanup88_crit_edge:                    ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup88

if.then29:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #8
  %263 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %263)
  store ptr @sja1105_cls_flower_add.__msg.1, ptr %3, align 4
  br label %cleanup88

if.end34:                                         ; preds = %sw.bb22
  %index = getelementptr inbounds %struct.dsa_port, ptr %call23, i32 0, i32 5
  %264 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %index, align 4
  %shl35 = shl nuw i32 1, %265
  %call36 = call i32 @sja1105_vl_redirect(ptr noundef %5, i32 noundef %port, ptr noundef %3, i32 noundef %7, ptr noundef nonnull %key, i32 noundef %shl35, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end34.for.inc_crit_edge, label %if.end34.cleanup88_crit_edge

if.end34.cleanup88_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup88

if.end34.for.inc_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

sw.bb42:                                          ; preds = %for.body
  %call43 = call i32 @sja1105_vl_redirect(ptr noundef %5, i32 noundef %port, ptr noundef %3, i32 noundef %7, ptr noundef nonnull %key, i32 noundef 0, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %sw.bb42.for.inc_crit_edge, label %sw.bb42.cleanup88_crit_edge

sw.bb42.cleanup88_crit_edge:                      ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup88

sw.bb42.for.inc_crit_edge:                        ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

sw.bb47:                                          ; preds = %for.body
  %hw_index = getelementptr inbounds %struct.flow_action_entry, ptr %act.0222, i32 0, i32 1
  %266 = ptrtoint ptr %hw_index to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %hw_index, align 4
  %268 = getelementptr inbounds %struct.flow_action_entry, ptr %act.0222, i32 0, i32 5
  %269 = ptrtoint ptr %268 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %268, align 8
  %basetime = getelementptr inbounds %struct.flow_action_entry, ptr %act.0222, i32 0, i32 5, i32 0, i32 1
  %271 = ptrtoint ptr %basetime to i32
  call void @__asan_load8_noabort(i32 %271)
  %272 = load i64, ptr %basetime, align 8
  %cycletime = getelementptr inbounds %struct.flow_action_entry, ptr %act.0222, i32 0, i32 5, i32 0, i32 2
  %273 = ptrtoint ptr %cycletime to i32
  call void @__asan_load8_noabort(i32 %273)
  %274 = load i64, ptr %cycletime, align 8
  %cycletimeext = getelementptr inbounds %struct.flow_action_entry, ptr %act.0222, i32 0, i32 5, i32 0, i32 3
  %275 = ptrtoint ptr %cycletimeext to i32
  call void @__asan_load8_noabort(i32 %275)
  %276 = load i64, ptr %cycletimeext, align 8
  %num_entries48 = getelementptr inbounds %struct.flow_action_entry, ptr %act.0222, i32 0, i32 5, i32 0, i32 4
  %277 = ptrtoint ptr %num_entries48 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %num_entries48, align 8
  %entries49 = getelementptr inbounds %struct.anon.170, ptr %268, i32 0, i32 5
  %279 = ptrtoint ptr %entries49 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %entries49, align 4
  %call50 = call i32 @sja1105_vl_gate(ptr noundef %5, i32 noundef %port, ptr noundef %3, i32 noundef %7, ptr noundef nonnull %key, i32 noundef %267, i32 noundef %270, i64 noundef %272, i64 noundef %274, i64 noundef %276, i32 noundef %278, ptr noundef %280) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %sw.bb47.for.inc_crit_edge, label %sw.bb47.cleanup88_crit_edge

sw.bb47.cleanup88_crit_edge:                      ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup88

sw.bb47.for.inc_crit_edge:                        ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

do.body54:                                        ; preds = %for.body
  call void @do_trace_netlink_extack(ptr noundef nonnull @sja1105_cls_flower_add.__msg.2) #6
  br i1 %tobool22.not.i46.i, label %do.body54.cleanup88_crit_edge, label %if.then57

do.body54.cleanup88_crit_edge:                    ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup88

if.then57:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #8
  %281 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %281)
  store ptr @sja1105_cls_flower_add.__msg.2, ptr %3, align 4
  br label %cleanup88

for.inc.sink.split:                               ; preds = %if.end.i.i.i64.i, %if.end.i.i.i.i
  %rule.0.i34.i.sink255 = phi ptr [ %rule.0.i34.i, %if.end.i.i.i64.i ], [ %rule.0.i.i, %if.end.i.i.i.i ]
  %prev3.i.i.i63.i = getelementptr inbounds %struct.list_head, ptr %rule.0.i34.i.sink255, i32 0, i32 1
  %282 = ptrtoint ptr %prev3.i.i.i63.i to i32
  call void @__asan_store4_noabort(i32 %282)
  store ptr %flow_block.i.i12.i, ptr %prev3.i.i.i63.i, align 4
  %283 = ptrtoint ptr %flow_block.i.i12.i to i32
  call void @__asan_store4_noabort(i32 %283)
  store volatile ptr %rule.0.i34.i.sink255, ptr %flow_block.i.i12.i, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %sw.bb47.for.inc_crit_edge, %sw.bb42.for.inc_crit_edge, %if.end34.for.inc_crit_edge, %dsa_upstream_port.exit.for.inc_crit_edge, %sja1105_flower_policer.exit.for.inc_crit_edge, %if.then56.i.i.for.inc_crit_edge, %if.then57.i.i.for.inc_crit_edge
  %routing_rule.2.off0 = phi i1 [ %routing_rule.0.off0223, %sw.bb47.for.inc_crit_edge ], [ %routing_rule.0.off0223, %sw.bb42.for.inc_crit_edge ], [ true, %dsa_upstream_port.exit.for.inc_crit_edge ], [ %routing_rule.0.off0223, %sja1105_flower_policer.exit.for.inc_crit_edge ], [ %routing_rule.0.off0223, %if.then57.i.i.for.inc_crit_edge ], [ %routing_rule.0.off0223, %if.then56.i.i.for.inc_crit_edge ], [ true, %if.end34.for.inc_crit_edge ], [ %routing_rule.0.off0223, %for.inc.sink.split ]
  %gate_rule.1.off0 = phi i1 [ true, %sw.bb47.for.inc_crit_edge ], [ %gate_rule.0.off0229, %sw.bb42.for.inc_crit_edge ], [ %gate_rule.0.off0229, %dsa_upstream_port.exit.for.inc_crit_edge ], [ %gate_rule.0.off0229, %sja1105_flower_policer.exit.for.inc_crit_edge ], [ %gate_rule.0.off0229, %if.then57.i.i.for.inc_crit_edge ], [ %gate_rule.0.off0229, %if.then56.i.i.for.inc_crit_edge ], [ %gate_rule.0.off0229, %if.end34.for.inc_crit_edge ], [ %gate_rule.0.off0229, %for.inc.sink.split ]
  %vl_rule.2.off0 = phi i1 [ true, %sw.bb47.for.inc_crit_edge ], [ true, %sw.bb42.for.inc_crit_edge ], [ true, %dsa_upstream_port.exit.for.inc_crit_edge ], [ %vl_rule.0.off0235, %sja1105_flower_policer.exit.for.inc_crit_edge ], [ %vl_rule.0.off0235, %if.then57.i.i.for.inc_crit_edge ], [ %vl_rule.0.off0235, %if.then56.i.i.for.inc_crit_edge ], [ true, %if.end34.for.inc_crit_edge ], [ %vl_rule.0.off0235, %for.inc.sink.split ]
  %inc = add nuw i32 %i.0241, 1
  %arrayidx64 = getelementptr [0 x %struct.flow_action_entry], ptr %entries, i32 0, i32 %inc
  %284 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %action, align 8
  %cmp = icmp ult i32 %inc, %285
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc
  br i1 %vl_rule.2.off0, label %if.then67, label %for.end.cleanup88_crit_edge

for.end.cleanup88_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup88

if.then67:                                        ; preds = %for.end
  br i1 %gate_rule.1.off0, label %if.then69, label %if.then67.if.end85_crit_edge

if.then67.if.end85_crit_edge:                     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end85

if.then69:                                        ; preds = %if.then67
  br i1 %routing_rule.2.off0, label %if.end80, label %do.body72

do.body72:                                        ; preds = %if.then69
  call void @do_trace_netlink_extack(ptr noundef nonnull @sja1105_cls_flower_add.__msg.3) #6
  %tobool74.not = icmp eq ptr %3, null
  br i1 %tobool74.not, label %do.body72.cleanup88_crit_edge, label %if.then75

do.body72.cleanup88_crit_edge:                    ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup88

if.then75:                                        ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #8
  %286 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %286)
  store ptr @sja1105_cls_flower_add.__msg.3, ptr %3, align 4
  br label %cleanup88

if.end80:                                         ; preds = %if.then69
  %call81 = call i32 @sja1105_init_scheduling(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.end80.if.end85_crit_edge, label %if.end80.cleanup88_crit_edge

if.end80.cleanup88_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup88

if.end80.if.end85_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end85

if.end85:                                         ; preds = %if.end80.if.end85_crit_edge, %if.then67.if.end85_crit_edge
  %call86 = call i32 @sja1105_static_config_reload(ptr noundef %5, i32 noundef 5) #6
  br label %cleanup88

cleanup88:                                        ; preds = %if.end85, %if.end80.cleanup88_crit_edge, %if.then75, %do.body72.cleanup88_crit_edge, %for.end.cleanup88_crit_edge, %if.then57, %do.body54.cleanup88_crit_edge, %sw.bb47.cleanup88_crit_edge, %sw.bb42.cleanup88_crit_edge, %if.end34.cleanup88_crit_edge, %if.then29, %do.body26.cleanup88_crit_edge, %dsa_upstream_port.exit.cleanup88_crit_edge, %sja1105_flower_policer.exit.cleanup88_crit_edge, %if.then.i, %do.body.i175.cleanup88_crit_edge, %if.then.i23.i.cleanup88_crit_edge, %if.then.i.i.cleanup88_crit_edge, %if.then9, %do.body.cleanup88_crit_edge, %if.end.cleanup88_crit_edge, %cleanup188.critedge.i, %if.then183.i, %do.body180.i.cleanup88_crit_edge, %cleanup127.thread.i, %cleanup62.thread.i, %if.then14.i, %if.then3.i, %do.body.i.cleanup88_crit_edge
  %retval.3 = phi i32 [ -95, %if.then75 ], [ -95, %do.body72.cleanup88_crit_edge ], [ %call81, %if.end80.cleanup88_crit_edge ], [ %call86, %if.end85 ], [ 0, %for.end.cleanup88_crit_edge ], [ -95, %if.then9 ], [ -95, %do.body.cleanup88_crit_edge ], [ -95, %if.then57 ], [ -95, %do.body54.cleanup88_crit_edge ], [ -95, %if.then3.i ], [ -95, %do.body.i.cleanup88_crit_edge ], [ -95, %cleanup188.critedge.i ], [ -95, %if.then14.i ], [ -95, %if.then183.i ], [ -95, %do.body180.i.cleanup88_crit_edge ], [ -95, %cleanup62.thread.i ], [ -95, %cleanup127.thread.i ], [ -95, %do.body.i175.cleanup88_crit_edge ], [ -95, %if.then.i ], [ -95, %if.then29 ], [ -95, %do.body26.cleanup88_crit_edge ], [ 0, %if.end.cleanup88_crit_edge ], [ -12, %if.then.i.i.cleanup88_crit_edge ], [ -12, %if.then.i23.i.cleanup88_crit_edge ], [ %call36, %if.end34.cleanup88_crit_edge ], [ %retval.0.i, %sja1105_flower_policer.exit.cleanup88_crit_edge ], [ %call18, %dsa_upstream_port.exit.cleanup88_crit_edge ], [ %call43, %sw.bb42.cleanup88_crit_edge ], [ %call50, %sw.bb47.cleanup88_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %key) #6
  ret i32 %retval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sja1105_vl_redirect(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dsa_port_from_netdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sja1105_vl_gate(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sja1105_init_scheduling(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sja1105_static_config_reload(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sja1105_cls_flower_del(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr nocapture noundef readonly %cls, i1 noundef zeroext %ingress) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %cookie = getelementptr inbounds %struct.flow_cls_offload, ptr %cls, i32 0, i32 2
  %2 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cookie, align 4
  %flow_block.i = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 14
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %rule.0.in.i = phi ptr [ %flow_block.i, %entry ], [ %rule.0.i, %for.body.i.for.cond.i_crit_edge ]
  %4 = ptrtoint ptr %rule.0.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %rule.0.i = load ptr, ptr %rule.0.in.i, align 8
  %cmp.not.i = icmp eq ptr %rule.0.i, %flow_block.i
  br i1 %cmp.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %cookie3.i = getelementptr inbounds %struct.sja1105_rule, ptr %rule.0.i, i32 0, i32 1
  %5 = ptrtoint ptr %cookie3.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cookie3.i, align 8
  %cmp4.i = icmp eq i32 %6, %3
  br i1 %cmp4.i, label %sja1105_rule_find.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

sja1105_rule_find.exit:                           ; preds = %for.body.i
  %tobool.not = icmp eq ptr %rule.0.i, null
  br i1 %tobool.not, label %sja1105_rule_find.exit.cleanup_crit_edge, label %if.end

sja1105_rule_find.exit.cleanup_crit_edge:         ; preds = %sja1105_rule_find.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %sja1105_rule_find.exit
  %type = getelementptr inbounds %struct.sja1105_rule, ptr %rule.0.i, i32 0, i32 4
  %7 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp = icmp eq i32 %8, 2
  br i1 %cmp, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %extack = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls, i32 0, i32 3
  %9 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %extack, align 4
  %call3 = tail call i32 @sja1105_vl_delete(ptr noundef %1, i32 noundef %port, ptr noundef nonnull %rule.0.i, ptr noundef %10) #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %entries = getelementptr %struct.sja1105_static_config, ptr %1, i32 0, i32 1, i32 6, i32 2
  %11 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %entries, align 8
  %13 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %8, label %if.end4.cleanup_crit_edge [
    i32 0, label %if.then7
    i32 1, label %if.then15
  ]

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %num_ports = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 18
  %14 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_ports, align 4
  %mul = shl i32 %15, 3
  %add = add i32 %mul, %port
  br label %if.end26

if.then15:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %mul16 = shl i32 %port, 3
  %16 = getelementptr inbounds %struct.sja1105_rule, ptr %rule.0.i, i32 0, i32 3, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 8
  %add17 = add i32 %18, %mul16
  br label %if.end26

if.end26:                                         ; preds = %if.then15, %if.then7
  %add17.sink = phi i32 [ %add17, %if.then15 ], [ %add, %if.then7 ]
  %arrayidx18 = getelementptr %struct.sja1105_l2_policing_entry, ptr %12, i32 %add17.sink
  %19 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %arrayidx18, align 8
  %conv21 = sext i32 %port to i64
  store i64 %conv21, ptr %arrayidx18, align 8
  %shl = shl nuw i32 1, %port
  %neg = xor i32 %shl, -1
  %port_mask = getelementptr inbounds %struct.sja1105_rule, ptr %rule.0.i, i32 0, i32 2
  %21 = ptrtoint ptr %port_mask to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %port_mask, align 4
  %and = and i32 %22, %neg
  store i32 %and, ptr %port_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool28.not = icmp eq i32 %and, 0
  br i1 %tobool28.not, label %if.then29, label %if.end26.if.end31_crit_edge

if.end26.if.end31_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.then29:                                        ; preds = %if.end26
  %conv20 = trunc i64 %20 to i32
  %arrayidx30 = getelementptr %struct.sja1105_private, ptr %1, i32 0, i32 14, i32 1, i32 %conv20
  %23 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %arrayidx30, align 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %rule.0.i) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.then29.list_del.exit_crit_edge

if.then29.list_del.exit_crit_edge:                ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %rule.0.i, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i, align 4
  %26 = ptrtoint ptr %rule.0.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rule.0.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev1.i.i.i, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %27, ptr %25, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then29.list_del.exit_crit_edge
  %30 = ptrtoint ptr %rule.0.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 256 to ptr), ptr %rule.0.i, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %rule.0.i, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef nonnull %rule.0.i) #6
  br label %if.end31

if.end31:                                         ; preds = %list_del.exit, %if.end26.if.end31_crit_edge
  %call32 = tail call i32 @sja1105_static_config_reload(ptr noundef %1, i32 noundef 4) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.end4.cleanup_crit_edge, %if.then2, %sja1105_rule_find.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.then2 ], [ %call32, %if.end31 ], [ 0, %sja1105_rule_find.exit.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ], [ 0, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sja1105_vl_delete(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sja1105_cls_flower_stats(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr noundef %cls, i1 noundef zeroext %ingress) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %cookie = getelementptr inbounds %struct.flow_cls_offload, ptr %cls, i32 0, i32 2
  %2 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cookie, align 4
  %flow_block.i = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 14
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %rule.0.in.i = phi ptr [ %flow_block.i, %entry ], [ %rule.0.i, %for.body.i.for.cond.i_crit_edge ]
  %4 = ptrtoint ptr %rule.0.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %rule.0.i = load ptr, ptr %rule.0.in.i, align 8
  %cmp.not.i = icmp eq ptr %rule.0.i, %flow_block.i
  br i1 %cmp.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %cookie3.i = getelementptr inbounds %struct.sja1105_rule, ptr %rule.0.i, i32 0, i32 1
  %5 = ptrtoint ptr %cookie3.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cookie3.i, align 8
  %cmp4.i = icmp eq i32 %6, %3
  br i1 %cmp4.i, label %sja1105_rule_find.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

sja1105_rule_find.exit:                           ; preds = %for.body.i
  %tobool.not = icmp eq ptr %rule.0.i, null
  br i1 %tobool.not, label %sja1105_rule_find.exit.cleanup_crit_edge, label %if.end

sja1105_rule_find.exit.cleanup_crit_edge:         ; preds = %sja1105_rule_find.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %sja1105_rule_find.exit
  %type = getelementptr inbounds %struct.sja1105_rule, ptr %rule.0.i, i32 0, i32 4
  %7 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp.not = icmp eq i32 %8, 2
  br i1 %cmp.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %stats = getelementptr inbounds %struct.flow_cls_offload, ptr %cls, i32 0, i32 4
  %extack = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls, i32 0, i32 3
  %9 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %extack, align 4
  %call4 = tail call i32 @sja1105_vl_stats(ptr noundef %1, i32 noundef %port, ptr noundef nonnull %rule.0.i, ptr noundef %stats, ptr noundef %10) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %sja1105_rule_find.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sja1105_rule_find.exit.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call4, %if.end3 ], [ 0, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sja1105_vl_stats(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sja1105_flower_setup(ptr nocapture noundef readonly %ds) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %flow_block = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %flow_block to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %flow_block, ptr %flow_block, align 4
  %prev.i = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 14, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %flow_block, ptr %prev.i, align 4
  %num_ports = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 18
  %4 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp7.not = icmp eq i32 %5, 0
  br i1 %cmp7.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %port.08 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.sja1105_private, ptr %1, i32 0, i32 14, i32 1, i32 %port.08
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %arrayidx, align 1
  %inc = add nuw i32 %port.08, 1
  %7 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_ports, align 4
  %cmp = icmp ult i32 %inc, %8
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sja1105_flower_teardown(ptr nocapture noundef readonly %ds) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %flow_block = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %flow_block to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %flow_block, align 8
  %cmp.i.not12 = icmp eq ptr %3, %flow_block
  br i1 %cmp.i.not12, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %pos.013 = phi ptr [ %n.015, %list_del.exit.for.body_crit_edge ], [ %3, %entry.for.body_crit_edge ]
  %4 = ptrtoint ptr %pos.013 to i32
  call void @__asan_load4_noabort(i32 %4)
  %n.015 = load ptr, ptr %pos.013, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pos.013) #6
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %pos.013, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %pos.013 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pos.013, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %11 = ptrtoint ptr %pos.013 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %pos.013, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %pos.013, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %pos.013) #6
  %cmp.i.not = icmp eq ptr %n.015, %flow_block
  br i1 %cmp.i.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_basic(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_eth_addrs(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_vlan(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @sja1105_cls_flower_add.__msg, !1, !"__msg", i1 false, i1 false}
!1 = !{!"../drivers/net/dsa/sja1105/sja1105_flower.c", i32 325, i32 5}
!2 = !{ptr @sja1105_cls_flower_add.__msg.1, !3, !"__msg", i1 false, i1 false}
!3 = !{!"../drivers/net/dsa/sja1105/sja1105_flower.c", i32 355, i32 5}
!4 = !{ptr @sja1105_cls_flower_add.__msg.2, !5, !"__msg", i1 false, i1 false}
!5 = !{!"../drivers/net/dsa/sja1105/sja1105_flower.c", i32 393, i32 4}
!6 = !{ptr @sja1105_cls_flower_add.__msg.3, !7, !"__msg", i1 false, i1 false}
!7 = !{!"../drivers/net/dsa/sja1105/sja1105_flower.c", i32 406, i32 5}
!8 = !{ptr @sja1105_flower_parse_key.__msg, !9, !"__msg", i1 false, i1 false}
!9 = !{!"../drivers/net/dsa/sja1105/sja1105_flower.c", i32 212, i32 3}
!10 = !{ptr @sja1105_flower_parse_key.__msg.4, !11, !"__msg", i1 false, i1 false}
!11 = !{!"../drivers/net/dsa/sja1105/sja1105_flower.c", i32 222, i32 4}
!12 = !{ptr @sja1105_flower_parse_key.__msg.5, !13, !"__msg", i1 false, i1 false}
!13 = !{!"../drivers/net/dsa/sja1105/sja1105_flower.c", i32 237, i32 4}
!14 = !{ptr @sja1105_flower_parse_key.__msg.6, !15, !"__msg", i1 false, i1 false}
!15 = !{!"../drivers/net/dsa/sja1105/sja1105_flower.c", i32 243, i32 4}
!16 = !{ptr @sja1105_flower_parse_key.__msg.7, !17, !"__msg", i1 false, i1 false}
!17 = !{!"../drivers/net/dsa/sja1105/sja1105_flower.c", i32 259, i32 4}
!18 = !{ptr @sja1105_flower_parse_key.__msg.8, !19, !"__msg", i1 false, i1 false}
!19 = !{!"../drivers/net/dsa/sja1105/sja1105_flower.c", i32 266, i32 4}
!20 = !{ptr @sja1105_flower_parse_key.__msg.9, !21, !"__msg", i1 false, i1 false}
!21 = !{!"../drivers/net/dsa/sja1105/sja1105_flower.c", i32 299, i32 2}
!22 = !{ptr @sja1105_flower_policer.__msg, !23, !"__msg", i1 false, i1 false}
!23 = !{!"../drivers/net/dsa/sja1105/sja1105_flower.c", i32 190, i32 3}
!24 = !{ptr @sja1105_setup_bcast_policer.__msg, !25, !"__msg", i1 false, i1 false}
!25 = !{!"../drivers/net/dsa/sja1105/sja1105_flower.c", i32 56, i32 3}
!26 = !{ptr @sja1105_setup_bcast_policer.__msg.10, !27, !"__msg", i1 false, i1 false}
!27 = !{!"../drivers/net/dsa/sja1105/sja1105_flower.c", i32 64, i32 3}
!28 = !{ptr @sja1105_setup_tc_policer.__msg, !29, !"__msg", i1 false, i1 false}
!29 = !{!"../drivers/net/dsa/sja1105/sja1105_flower.c", i32 128, i32 3}
!30 = !{ptr @sja1105_setup_tc_policer.__msg.11, !31, !"__msg", i1 false, i1 false}
!31 = !{!"../drivers/net/dsa/sja1105/sja1105_flower.c", i32 136, i32 3}
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
!43 = !{i64 852621, i64 852648}
!44 = !{i64 853316, i64 853343, i64 853376, i64 853397, i64 853424, i64 853450}
