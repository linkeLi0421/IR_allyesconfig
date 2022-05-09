; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/marvell/mvpp2/mvpp2_cls.c_pt.bc'
source_filename = "../drivers/net/ethernet/marvell/mvpp2/mvpp2_cls.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mvpp2_cls_flow = type { i32, i16, i16, %struct.mvpp2_prs_result_info }
%struct.mvpp2_prs_result_info = type { i32, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.mvpp2_cls_flow_entry = type { i32, [3 x i32] }
%struct.mvpp2_cls_lookup_entry = type { i32, i32, i32 }
%struct.mvpp2_cls_c2_entry = type { i32, [5 x i32], i32, [5 x i32], i8 }
%struct.mvpp2_port = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, [9 x %struct.spinlock], [9 x %struct.spinlock], i32, i16, i16, ptr, ptr, i32, %struct.mutex, %struct.delayed_work, ptr, i32, ptr, %struct.phylink_config, %struct.phylink_pcs, %struct.phylink_pcs, ptr, ptr, ptr, i8, [9 x %struct.mvpp2_queue_vector], i32, i8, i32, [4 x ptr], i32, [8 x i32], i8, i8, i32, [2 x %struct.mvpp2_hwtstamp_queue], i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.phylink_config = type { ptr, i32, i8, i8, i8, i8, ptr, [1 x i32], i32 }
%struct.phylink_pcs = type { ptr, i8 }
%struct.mvpp2_queue_vector = type { i32, %struct.napi_struct, i32, i32, i16, i32, i32, i32, ptr, ptr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mvpp2_hwtstamp_queue = type { [32 x ptr], i8 }
%struct.ethtool_rxnfc = type { i32, i32, i64, %struct.ethtool_rx_flow_spec, %union.anon.147, [0 x i32] }
%struct.ethtool_rx_flow_spec = type { i32, %union.ethtool_flow_union, %struct.ethtool_flow_ext, %union.ethtool_flow_union, %struct.ethtool_flow_ext, i64, i32 }
%union.ethtool_flow_union = type { %struct.ethtool_tcpip6_spec, [12 x i8] }
%struct.ethtool_tcpip6_spec = type { [4 x i32], [4 x i32], i16, i16, i8 }
%struct.ethtool_flow_ext = type { [2 x i8], [6 x i8], i16, i16, [2 x i32] }
%union.anon.147 = type { i32 }
%struct.mvpp2_ethtool_fs = type { %struct.mvpp2_rfs_rule, %struct.ethtool_rxnfc }
%struct.mvpp2_rfs_rule = type { i32, i32, i32, i16, i8, i64, i64, ptr }
%struct.flow_match_vlan = type { ptr, ptr }
%struct.flow_match_ports = type { ptr, ptr }
%struct.ethtool_rx_flow_spec_input = type { ptr, i32 }
%struct.flow_rule = type { %struct.flow_match, %struct.flow_action }
%struct.flow_match = type { ptr, ptr, ptr }
%struct.flow_action = type { i32, [0 x %struct.flow_action_entry] }
%struct.flow_action_entry = type { i32, i32, i32, ptr, ptr, %union.anon.152, ptr }
%union.anon.152 = type { %struct.anon.157 }
%struct.anon.157 = type { i32, i64, i64, i64, i32 }
%struct.anon.172 = type { i16, i16 }
%struct.mvpp2 = type { ptr, ptr, ptr, [9 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, i32, [4 x ptr], i32, ptr, i32, i32, ptr, i32, ptr, ptr, ptr, i32, i32, i32, [30 x i8], ptr, ptr, ptr, [8 x ptr], [32 x ptr], i8, %struct.spinlock }

@cls_flows = internal constant { [52 x %struct.mvpp2_cls_flow], [192 x i8] } { [52 x %struct.mvpp2_cls_flow] [%struct.mvpp2_cls_flow { i32 11, i16 8, i16 816, %struct.mvpp2_prs_result_info { i32 4198400, i32 29519884 } }, %struct.mvpp2_cls_flow { i32 11, i16 8, i16 816, %struct.mvpp2_prs_result_info { i32 4202496, i32 29519884 } }, %struct.mvpp2_cls_flow { i32 11, i16 8, i16 816, %struct.mvpp2_prs_result_info { i32 4206592, i32 29519884 } }, %struct.mvpp2_cls_flow { i32 11, i16 10, i16 822, %struct.mvpp2_prs_result_info { i32 4198400, i32 29519872 } }, %struct.mvpp2_cls_flow { i32 11, i16 10, i16 822, %struct.mvpp2_prs_result_info { i32 4202496, i32 29519872 } }, %struct.mvpp2_cls_flow { i32 11, i16 10, i16 822, %struct.mvpp2_prs_result_info { i32 4206592, i32 29519872 } }, %struct.mvpp2_cls_flow { i32 11, i16 16, i16 48, %struct.mvpp2_prs_result_info { i32 4198400, i32 29519884 } }, %struct.mvpp2_cls_flow { i32 11, i16 16, i16 48, %struct.mvpp2_prs_result_info { i32 4202496, i32 29519884 } }, %struct.mvpp2_cls_flow { i32 11, i16 16, i16 48, %struct.mvpp2_prs_result_info { i32 4206592, i32 29519884 } }, %struct.mvpp2_cls_flow { i32 11, i16 18, i16 54, %struct.mvpp2_prs_result_info { i32 4198400, i32 29519872 } }, %struct.mvpp2_cls_flow { i32 11, i16 18, i16 54, %struct.mvpp2_prs_result_info { i32 4202496, i32 29519872 } }, %struct.mvpp2_cls_flow { i32 11, i16 18, i16 54, %struct.mvpp2_prs_result_info { i32 4206592, i32 29519872 } }, %struct.mvpp2_cls_flow { i32 19, i16 9, i16 816, %struct.mvpp2_prs_result_info { i32 8392704, i32 29519884 } }, %struct.mvpp2_cls_flow { i32 19, i16 9, i16 816, %struct.mvpp2_prs_result_info { i32 8396800, i32 29519884 } }, %struct.mvpp2_cls_flow { i32 19, i16 9, i16 816, %struct.mvpp2_prs_result_info { i32 8400896, i32 29519884 } }, %struct.mvpp2_cls_flow { i32 19, i16 11, i16 822, %struct.mvpp2_prs_result_info { i32 8392704, i32 29519872 } }, %struct.mvpp2_cls_flow { i32 19, i16 11, i16 822, %struct.mvpp2_prs_result_info { i32 8396800, i32 29519872 } }, %struct.mvpp2_cls_flow { i32 19, i16 11, i16 822, %struct.mvpp2_prs_result_info { i32 8400896, i32 29519872 } }, %struct.mvpp2_cls_flow { i32 19, i16 17, i16 48, %struct.mvpp2_prs_result_info { i32 8392704, i32 29519884 } }, %struct.mvpp2_cls_flow { i32 19, i16 17, i16 48, %struct.mvpp2_prs_result_info { i32 8396800, i32 29519884 } }, %struct.mvpp2_cls_flow { i32 19, i16 17, i16 48, %struct.mvpp2_prs_result_info { i32 8400896, i32 29519884 } }, %struct.mvpp2_cls_flow { i32 19, i16 19, i16 54, %struct.mvpp2_prs_result_info { i32 8392704, i32 29519872 } }, %struct.mvpp2_cls_flow { i32 19, i16 19, i16 54, %struct.mvpp2_prs_result_info { i32 8396800, i32 29519872 } }, %struct.mvpp2_cls_flow { i32 19, i16 19, i16 54, %struct.mvpp2_prs_result_info { i32 8400896, i32 29519872 } }, %struct.mvpp2_cls_flow { i32 13, i16 12, i16 960, %struct.mvpp2_prs_result_info { i32 4210688, i32 29519884 } }, %struct.mvpp2_cls_flow { i32 13, i16 12, i16 960, %struct.mvpp2_prs_result_info { i32 4214784, i32 29519884 } }, %struct.mvpp2_cls_flow { i32 13, i16 14, i16 966, %struct.mvpp2_prs_result_info { i32 4210688, i32 29519872 } }, %struct.mvpp2_cls_flow { i32 13, i16 14, i16 966, %struct.mvpp2_prs_result_info { i32 4214784, i32 29519872 } }, %struct.mvpp2_cls_flow { i32 13, i16 20, i16 192, %struct.mvpp2_prs_result_info { i32 4341760, i32 29519884 } }, %struct.mvpp2_cls_flow { i32 13, i16 20, i16 192, %struct.mvpp2_prs_result_info { i32 4345856, i32 29519884 } }, %struct.mvpp2_cls_flow { i32 13, i16 22, i16 198, %struct.mvpp2_prs_result_info { i32 4341760, i32 29519872 } }, %struct.mvpp2_cls_flow { i32 13, i16 22, i16 198, %struct.mvpp2_prs_result_info { i32 4345856, i32 29519872 } }, %struct.mvpp2_cls_flow { i32 21, i16 13, i16 960, %struct.mvpp2_prs_result_info { i32 8404992, i32 29519884 } }, %struct.mvpp2_cls_flow { i32 21, i16 13, i16 960, %struct.mvpp2_prs_result_info { i32 8409088, i32 29519884 } }, %struct.mvpp2_cls_flow { i32 21, i16 15, i16 966, %struct.mvpp2_prs_result_info { i32 8404992, i32 29519872 } }, %struct.mvpp2_cls_flow { i32 21, i16 15, i16 966, %struct.mvpp2_prs_result_info { i32 8409088, i32 29519872 } }, %struct.mvpp2_cls_flow { i32 21, i16 21, i16 192, %struct.mvpp2_prs_result_info { i32 8536064, i32 29519884 } }, %struct.mvpp2_cls_flow { i32 21, i16 21, i16 192, %struct.mvpp2_prs_result_info { i32 8540160, i32 29519884 } }, %struct.mvpp2_cls_flow { i32 21, i16 23, i16 198, %struct.mvpp2_prs_result_info { i32 8536064, i32 29519872 } }, %struct.mvpp2_cls_flow { i32 21, i16 23, i16 198, %struct.mvpp2_prs_result_info { i32 8540160, i32 29519872 } }, %struct.mvpp2_cls_flow { i32 3, i16 24, i16 48, %struct.mvpp2_prs_result_info { i32 4096, i32 28684 } }, %struct.mvpp2_cls_flow { i32 3, i16 24, i16 48, %struct.mvpp2_prs_result_info { i32 8192, i32 28684 } }, %struct.mvpp2_cls_flow { i32 3, i16 24, i16 48, %struct.mvpp2_prs_result_info { i32 12288, i32 28684 } }, %struct.mvpp2_cls_flow { i32 3, i16 25, i16 54, %struct.mvpp2_prs_result_info { i32 4096, i32 28672 } }, %struct.mvpp2_cls_flow { i32 3, i16 25, i16 54, %struct.mvpp2_prs_result_info { i32 8192, i32 28672 } }, %struct.mvpp2_cls_flow { i32 3, i16 25, i16 54, %struct.mvpp2_prs_result_info { i32 12288, i32 28672 } }, %struct.mvpp2_cls_flow { i32 5, i16 26, i16 192, %struct.mvpp2_prs_result_info { i32 16384, i32 28684 } }, %struct.mvpp2_cls_flow { i32 5, i16 26, i16 192, %struct.mvpp2_prs_result_info { i32 16384, i32 28684 } }, %struct.mvpp2_cls_flow { i32 5, i16 27, i16 198, %struct.mvpp2_prs_result_info { i32 16384, i32 28672 } }, %struct.mvpp2_cls_flow { i32 5, i16 27, i16 198, %struct.mvpp2_prs_result_info { i32 16384, i32 28672 } }, %struct.mvpp2_cls_flow { i32 1, i16 28, i16 0, %struct.mvpp2_prs_result_info { i32 0, i32 12 } }, %struct.mvpp2_cls_flow { i32 1, i16 29, i16 4, %struct.mvpp2_prs_result_info zeroinitializer }], [192 x i8] zeroinitializer }, align 32
@.str = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"couldn't remove classification rule %d associated to this context\00", [62 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__flow_action_hw_stats_check.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/net/flow_offload.h\00", [37 x i8] zeroinitializer }, align 32
@__flow_action_hw_stats_check.__msg = internal constant [56 x i8] c"mvpp2: Driver supports only default HW stats type \22any\22\00", align 1
@flow_action_mixed_hw_stats_check.__msg = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"mvpp2: Mixing HW stats types for actions is not supported\00", [38 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [12 x i64] [i64 10, i64 32, i64 3, i64 5, i64 6, i64 15, i64 16, i64 17, i64 23, i64 26, i64 29, i64 30]
@__sancov_gen_cov_switch_values.4 = internal global [12 x i64] [i64 10, i64 32, i64 3, i64 5, i64 6, i64 15, i64 16, i64 17, i64 23, i64 26, i64 29, i64 30]
@__sancov_gen_cov_switch_values.5 = internal global [12 x i64] [i64 10, i64 32, i64 3, i64 5, i64 6, i64 15, i64 16, i64 17, i64 23, i64 26, i64 29, i64 30]
@__sancov_gen_cov_switch_values.6 = internal global [12 x i64] [i64 10, i64 32, i64 3, i64 5, i64 6, i64 15, i64 16, i64 17, i64 23, i64 26, i64 29, i64 30]
@__sancov_gen_cov_switch_values.7 = internal global [12 x i64] [i64 10, i64 32, i64 3, i64 5, i64 6, i64 15, i64 16, i64 17, i64 23, i64 26, i64 29, i64 30]
@__sancov_gen_cov_switch_values.8 = internal global [12 x i64] [i64 10, i64 32, i64 3, i64 5, i64 6, i64 15, i64 16, i64 17, i64 23, i64 26, i64 29, i64 30]
@__sancov_gen_cov_switch_values.9 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 5, i64 6, i64 16, i64 17, i64 18]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 20]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.13 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 5, i64 6, i64 16, i64 17]
@__sancov_gen_cov_switch_values.14 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 5, i64 6, i64 16, i64 17, i64 18]
@__sancov_gen_cov_switch_values.15 = internal global [11 x i64] [i64 9, i64 32, i64 1, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128, i64 256, i64 512]
@__sancov_gen_cov_switch_values.16 = internal global [11 x i64] [i64 9, i64 32, i64 1, i64 2, i64 4, i64 16, i64 32, i64 64, i64 128, i64 256, i64 512]
@___asan_gen_.17 = private unnamed_addr constant [10 x i8] c"cls_flows\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 25, i32 36 }
@___asan_gen_.21 = private constant [50 x i8] c"../drivers/net/ethernet/marvell/mvpp2/mvpp2_cls.c\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 1578, i32 9 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 354, i32 2 }
@___asan_gen_.26 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.27 = private unnamed_addr constant [30 x i8] c"../include/net/flow_offload.h\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 323, i32 4 }
@___asan_gen_.29 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.30 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 108, i32 2 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @cls_flows, ptr @.str, ptr @.str.1, ptr @flow_action_mixed_hw_stats_check.__msg, ptr @.str.3], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cls_flows to i32), i32 832, i32 1024, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flow_action_mixed_hw_stats_check.__msg to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mvpp2_cls_flow_hits(ptr noundef %priv, i32 noundef %index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mvpp2_write(ptr noundef %priv, i32 noundef 28736, i32 noundef %index) #9
  %call = tail call i32 @mvpp2_read(ptr noundef %priv, i32 noundef 30468) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mvpp2_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mvpp2_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mvpp2_cls_flow_read(ptr noundef %priv, i32 noundef %index, ptr nocapture noundef writeonly %fe) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fe to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %index, ptr %fe, align 4
  tail call void @mvpp2_write(ptr noundef %priv, i32 noundef 6176, i32 noundef %index) #9
  %call = tail call i32 @mvpp2_read(ptr noundef %priv, i32 noundef 6180) #9
  %data = getelementptr inbounds %struct.mvpp2_cls_flow_entry, ptr %fe, i32 0, i32 1
  %1 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %call, ptr %data, align 4
  %call2 = tail call i32 @mvpp2_read(ptr noundef %priv, i32 noundef 6184) #9
  %arrayidx4 = getelementptr %struct.mvpp2_cls_flow_entry, ptr %fe, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call2, ptr %arrayidx4, align 4
  %call5 = tail call i32 @mvpp2_read(ptr noundef %priv, i32 noundef 6188) #9
  %arrayidx7 = getelementptr %struct.mvpp2_cls_flow_entry, ptr %fe, i32 0, i32 1, i32 2
  %3 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call5, ptr %arrayidx7, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mvpp2_cls_lookup_hits(ptr noundef %priv, i32 noundef %index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mvpp2_write(ptr noundef %priv, i32 noundef 28736, i32 noundef %index) #9
  %call = tail call i32 @mvpp2_read(ptr noundef %priv, i32 noundef 30464) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mvpp2_cls_lookup_read(ptr noundef %priv, i32 noundef %lkpid, i32 noundef %way, ptr nocapture noundef writeonly %le) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %way, 6
  %or = or i32 %shl, %lkpid
  tail call void @mvpp2_write(ptr noundef %priv, i32 noundef 6164, i32 noundef %or) #9
  %way1 = getelementptr inbounds %struct.mvpp2_cls_lookup_entry, ptr %le, i32 0, i32 1
  %0 = ptrtoint ptr %way1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %way, ptr %way1, align 4
  %1 = ptrtoint ptr %le to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %lkpid, ptr %le, align 4
  %call = tail call i32 @mvpp2_read(ptr noundef %priv, i32 noundef 6168) #9
  %data = getelementptr inbounds %struct.mvpp2_cls_lookup_entry, ptr %le, i32 0, i32 2
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call, ptr %data, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mvpp2_cls_flow_eng_get(ptr nocapture noundef readonly %fe) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.mvpp2_cls_flow_entry, ptr %fe, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  %shr = lshr i32 %1, 1
  %and = and i32 %shr, 7
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mvpp2_cls_c2_read(ptr noundef %priv, i32 noundef %index, ptr nocapture noundef writeonly %c2) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mvpp2_write(ptr noundef %priv, i32 noundef 6912, i32 noundef %index) #9
  %0 = ptrtoint ptr %c2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %index, ptr %c2, align 4
  %call = tail call i32 @mvpp2_read(ptr noundef %priv, i32 noundef 6928) #9
  %tcam = getelementptr inbounds %struct.mvpp2_cls_c2_entry, ptr %c2, i32 0, i32 1
  %1 = ptrtoint ptr %tcam to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %call, ptr %tcam, align 4
  %call2 = tail call i32 @mvpp2_read(ptr noundef %priv, i32 noundef 6932) #9
  %arrayidx4 = getelementptr %struct.mvpp2_cls_c2_entry, ptr %c2, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call2, ptr %arrayidx4, align 4
  %call5 = tail call i32 @mvpp2_read(ptr noundef %priv, i32 noundef 6936) #9
  %arrayidx7 = getelementptr %struct.mvpp2_cls_c2_entry, ptr %c2, i32 0, i32 1, i32 2
  %3 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call5, ptr %arrayidx7, align 4
  %call8 = tail call i32 @mvpp2_read(ptr noundef %priv, i32 noundef 6940) #9
  %arrayidx10 = getelementptr %struct.mvpp2_cls_c2_entry, ptr %c2, i32 0, i32 1, i32 3
  %4 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call8, ptr %arrayidx10, align 4
  %call11 = tail call i32 @mvpp2_read(ptr noundef %priv, i32 noundef 6944) #9
  %arrayidx13 = getelementptr %struct.mvpp2_cls_c2_entry, ptr %c2, i32 0, i32 1, i32 4
  %5 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call11, ptr %arrayidx13, align 4
  %call14 = tail call i32 @mvpp2_read(ptr noundef %priv, i32 noundef 7008) #9
  %act = getelementptr inbounds %struct.mvpp2_cls_c2_entry, ptr %c2, i32 0, i32 2
  %6 = ptrtoint ptr %act to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call14, ptr %act, align 4
  %call15 = tail call i32 @mvpp2_read(ptr noundef %priv, i32 noundef 7012) #9
  %attr = getelementptr inbounds %struct.mvpp2_cls_c2_entry, ptr %c2, i32 0, i32 3
  %7 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call15, ptr %attr, align 4
  %call17 = tail call i32 @mvpp2_read(ptr noundef %priv, i32 noundef 7016) #9
  %arrayidx19 = getelementptr %struct.mvpp2_cls_c2_entry, ptr %c2, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call17, ptr %arrayidx19, align 4
  %call20 = tail call i32 @mvpp2_read(ptr noundef %priv, i32 noundef 7020) #9
  %arrayidx22 = getelementptr %struct.mvpp2_cls_c2_entry, ptr %c2, i32 0, i32 3, i32 2
  %9 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call20, ptr %arrayidx22, align 4
  %call23 = tail call i32 @mvpp2_read(ptr noundef %priv, i32 noundef 7024) #9
  %arrayidx25 = getelementptr %struct.mvpp2_cls_c2_entry, ptr %c2, i32 0, i32 3, i32 3
  %10 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call23, ptr %arrayidx25, align 4
  %call26 = tail call i32 @mvpp2_read(ptr noundef %priv, i32 noundef 6948) #9
  %call26.lobit = lshr i32 %call26, 31
  %11 = trunc i32 %call26.lobit to i8
  %.not = xor i8 %11, 1
  %valid = getelementptr inbounds %struct.mvpp2_cls_c2_entry, ptr %c2, i32 0, i32 4
  %12 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %.not, ptr %valid, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @mvpp2_cls_flow_get(i32 noundef %flow) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 51, i32 %flow)
  %cmp = icmp sgt i32 %flow, 51
  %arrayidx = getelementptr [52 x %struct.mvpp2_cls_flow], ptr @cls_flows, i32 0, i32 %flow
  %retval.0 = select i1 %cmp, ptr null, ptr %arrayidx
  ret ptr %retval.0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @mvpp2_flow_get_hek_fields(ptr nocapture noundef readonly %fe) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.mvpp2_cls_flow_entry, ptr %fe, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %1, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp54.not = icmp eq i32 %and.i, 0
  br i1 %cmp54.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %arrayidx.i52 = getelementptr %struct.mvpp2_cls_flow_entry, ptr %fe, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %arrayidx.i52 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i52, align 4
  %and.i53 = and i32 %3, 63
  %4 = zext i32 %and.i53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i53, label %for.body.lr.ph.for.inc_crit_edge [
    i32 3, label %sw.bb
    i32 6, label %sw.bb3
    i32 5, label %sw.bb7
    i32 15, label %sw.bb11
    i32 16, label %sw.bb15
    i32 17, label %sw.bb19
    i32 23, label %sw.bb23
    i32 26, label %sw.bb27
    i32 29, label %sw.bb31
    i32 30, label %sw.bb35
  ]

for.body.lr.ph.for.inc_crit_edge:                 ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

sw.bb:                                            ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

sw.bb3:                                           ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

sw.bb7:                                           ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

sw.bb11:                                          ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

sw.bb15:                                          ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

sw.bb19:                                          ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

sw.bb23:                                          ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

sw.bb27:                                          ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

sw.bb31:                                          ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

sw.bb35:                                          ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.inc:                                          ; preds = %sw.bb35, %sw.bb31, %sw.bb27, %sw.bb23, %sw.bb19, %sw.bb15, %sw.bb11, %sw.bb7, %sw.bb3, %sw.bb, %for.body.lr.ph.for.inc_crit_edge
  %hash_opts.1 = phi i16 [ 0, %for.body.lr.ph.for.inc_crit_edge ], [ 512, %sw.bb35 ], [ 256, %sw.bb31 ], [ 128, %sw.bb27 ], [ 64, %sw.bb23 ], [ 32, %sw.bb19 ], [ 16, %sw.bb15 ], [ 8, %sw.bb11 ], [ 2, %sw.bb7 ], [ 4, %sw.bb3 ], [ 1, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %exitcond.not = icmp eq i32 %and.i, 1
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.body.1

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.1:                                       ; preds = %for.inc
  %shr.i.1 = lshr i32 %3, 6
  %and.i53.1 = and i32 %shr.i.1, 63
  %5 = zext i32 %and.i53.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %and.i53.1, label %for.body.1.for.inc.1_crit_edge [
    i32 3, label %sw.bb.1
    i32 6, label %sw.bb3.1
    i32 5, label %sw.bb7.1
    i32 15, label %sw.bb11.1
    i32 16, label %sw.bb15.1
    i32 17, label %sw.bb19.1
    i32 23, label %sw.bb23.1
    i32 26, label %sw.bb27.1
    i32 29, label %sw.bb31.1
    i32 30, label %sw.bb35.1
  ]

for.body.1.for.inc.1_crit_edge:                   ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

sw.bb35.1:                                        ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #11
  %6 = or i16 %hash_opts.1, 512
  br label %for.inc.1

sw.bb31.1:                                        ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #11
  %7 = or i16 %hash_opts.1, 256
  br label %for.inc.1

sw.bb27.1:                                        ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #11
  %8 = or i16 %hash_opts.1, 128
  br label %for.inc.1

sw.bb23.1:                                        ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #11
  %9 = or i16 %hash_opts.1, 64
  br label %for.inc.1

sw.bb19.1:                                        ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #11
  %10 = or i16 %hash_opts.1, 32
  br label %for.inc.1

sw.bb15.1:                                        ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #11
  %11 = or i16 %hash_opts.1, 16
  br label %for.inc.1

sw.bb11.1:                                        ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #11
  %12 = or i16 %hash_opts.1, 8
  br label %for.inc.1

sw.bb7.1:                                         ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #11
  %13 = or i16 %hash_opts.1, 2
  br label %for.inc.1

sw.bb3.1:                                         ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #11
  %14 = or i16 %hash_opts.1, 4
  br label %for.inc.1

sw.bb.1:                                          ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #11
  %15 = or i16 %hash_opts.1, 1
  br label %for.inc.1

for.inc.1:                                        ; preds = %sw.bb.1, %sw.bb3.1, %sw.bb7.1, %sw.bb11.1, %sw.bb15.1, %sw.bb19.1, %sw.bb23.1, %sw.bb27.1, %sw.bb31.1, %sw.bb35.1, %for.body.1.for.inc.1_crit_edge
  %hash_opts.1.1 = phi i16 [ %hash_opts.1, %for.body.1.for.inc.1_crit_edge ], [ %6, %sw.bb35.1 ], [ %7, %sw.bb31.1 ], [ %8, %sw.bb27.1 ], [ %9, %sw.bb23.1 ], [ %10, %sw.bb19.1 ], [ %11, %sw.bb15.1 ], [ %12, %sw.bb11.1 ], [ %13, %sw.bb7.1 ], [ %14, %sw.bb3.1 ], [ %15, %sw.bb.1 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i)
  %exitcond.not.1 = icmp eq i32 %and.i, 2
  br i1 %exitcond.not.1, label %for.inc.1.for.end_crit_edge, label %for.body.2

for.inc.1.for.end_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.2:                                       ; preds = %for.inc.1
  %shr.i.2 = lshr i32 %3, 12
  %and.i53.2 = and i32 %shr.i.2, 63
  %16 = zext i32 %and.i53.2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %and.i53.2, label %for.body.2.for.inc.2_crit_edge [
    i32 3, label %sw.bb.2
    i32 6, label %sw.bb3.2
    i32 5, label %sw.bb7.2
    i32 15, label %sw.bb11.2
    i32 16, label %sw.bb15.2
    i32 17, label %sw.bb19.2
    i32 23, label %sw.bb23.2
    i32 26, label %sw.bb27.2
    i32 29, label %sw.bb31.2
    i32 30, label %sw.bb35.2
  ]

for.body.2.for.inc.2_crit_edge:                   ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2

sw.bb35.2:                                        ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #11
  %17 = or i16 %hash_opts.1.1, 512
  br label %for.inc.2

sw.bb31.2:                                        ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #11
  %18 = or i16 %hash_opts.1.1, 256
  br label %for.inc.2

sw.bb27.2:                                        ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #11
  %19 = or i16 %hash_opts.1.1, 128
  br label %for.inc.2

sw.bb23.2:                                        ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #11
  %20 = or i16 %hash_opts.1.1, 64
  br label %for.inc.2

sw.bb19.2:                                        ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #11
  %21 = or i16 %hash_opts.1.1, 32
  br label %for.inc.2

sw.bb15.2:                                        ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #11
  %22 = or i16 %hash_opts.1.1, 16
  br label %for.inc.2

sw.bb11.2:                                        ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #11
  %23 = or i16 %hash_opts.1.1, 8
  br label %for.inc.2

sw.bb7.2:                                         ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #11
  %24 = or i16 %hash_opts.1.1, 2
  br label %for.inc.2

sw.bb3.2:                                         ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #11
  %25 = or i16 %hash_opts.1.1, 4
  br label %for.inc.2

sw.bb.2:                                          ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #11
  %26 = or i16 %hash_opts.1.1, 1
  br label %for.inc.2

for.inc.2:                                        ; preds = %sw.bb.2, %sw.bb3.2, %sw.bb7.2, %sw.bb11.2, %sw.bb15.2, %sw.bb19.2, %sw.bb23.2, %sw.bb27.2, %sw.bb31.2, %sw.bb35.2, %for.body.2.for.inc.2_crit_edge
  %hash_opts.1.2 = phi i16 [ %hash_opts.1.1, %for.body.2.for.inc.2_crit_edge ], [ %17, %sw.bb35.2 ], [ %18, %sw.bb31.2 ], [ %19, %sw.bb27.2 ], [ %20, %sw.bb23.2 ], [ %21, %sw.bb19.2 ], [ %22, %sw.bb15.2 ], [ %23, %sw.bb11.2 ], [ %24, %sw.bb7.2 ], [ %25, %sw.bb3.2 ], [ %26, %sw.bb.2 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i)
  %exitcond.not.2 = icmp eq i32 %and.i, 3
  br i1 %exitcond.not.2, label %for.inc.2.for.end_crit_edge, label %for.body.3

for.inc.2.for.end_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.3:                                       ; preds = %for.inc.2
  %shr.i.3 = lshr i32 %3, 18
  %and.i53.3 = and i32 %shr.i.3, 63
  %27 = zext i32 %and.i53.3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %and.i53.3, label %for.body.3.for.inc.3_crit_edge [
    i32 3, label %sw.bb.3
    i32 6, label %sw.bb3.3
    i32 5, label %sw.bb7.3
    i32 15, label %sw.bb11.3
    i32 16, label %sw.bb15.3
    i32 17, label %sw.bb19.3
    i32 23, label %sw.bb23.3
    i32 26, label %sw.bb27.3
    i32 29, label %sw.bb31.3
    i32 30, label %sw.bb35.3
  ]

for.body.3.for.inc.3_crit_edge:                   ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.3

sw.bb35.3:                                        ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #11
  %28 = or i16 %hash_opts.1.2, 512
  br label %for.inc.3

sw.bb31.3:                                        ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #11
  %29 = or i16 %hash_opts.1.2, 256
  br label %for.inc.3

sw.bb27.3:                                        ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #11
  %30 = or i16 %hash_opts.1.2, 128
  br label %for.inc.3

sw.bb23.3:                                        ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #11
  %31 = or i16 %hash_opts.1.2, 64
  br label %for.inc.3

sw.bb19.3:                                        ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #11
  %32 = or i16 %hash_opts.1.2, 32
  br label %for.inc.3

sw.bb15.3:                                        ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #11
  %33 = or i16 %hash_opts.1.2, 16
  br label %for.inc.3

sw.bb11.3:                                        ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #11
  %34 = or i16 %hash_opts.1.2, 8
  br label %for.inc.3

sw.bb7.3:                                         ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #11
  %35 = or i16 %hash_opts.1.2, 2
  br label %for.inc.3

sw.bb3.3:                                         ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #11
  %36 = or i16 %hash_opts.1.2, 4
  br label %for.inc.3

sw.bb.3:                                          ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #11
  %37 = or i16 %hash_opts.1.2, 1
  br label %for.inc.3

for.inc.3:                                        ; preds = %sw.bb.3, %sw.bb3.3, %sw.bb7.3, %sw.bb11.3, %sw.bb15.3, %sw.bb19.3, %sw.bb23.3, %sw.bb27.3, %sw.bb31.3, %sw.bb35.3, %for.body.3.for.inc.3_crit_edge
  %hash_opts.1.3 = phi i16 [ %hash_opts.1.2, %for.body.3.for.inc.3_crit_edge ], [ %28, %sw.bb35.3 ], [ %29, %sw.bb31.3 ], [ %30, %sw.bb27.3 ], [ %31, %sw.bb23.3 ], [ %32, %sw.bb19.3 ], [ %33, %sw.bb15.3 ], [ %34, %sw.bb11.3 ], [ %35, %sw.bb7.3 ], [ %36, %sw.bb3.3 ], [ %37, %sw.bb.3 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and.i)
  %exitcond.not.3 = icmp eq i32 %and.i, 4
  br i1 %exitcond.not.3, label %for.inc.3.for.end_crit_edge, label %for.body.4

for.inc.3.for.end_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.4:                                       ; preds = %for.inc.3
  %shr.i.4 = lshr i32 %3, 24
  %and.i53.4 = and i32 %shr.i.4, 63
  %38 = zext i32 %and.i53.4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %and.i53.4, label %for.body.4.for.inc.4_crit_edge [
    i32 3, label %sw.bb.4
    i32 6, label %sw.bb3.4
    i32 5, label %sw.bb7.4
    i32 15, label %sw.bb11.4
    i32 16, label %sw.bb15.4
    i32 17, label %sw.bb19.4
    i32 23, label %sw.bb23.4
    i32 26, label %sw.bb27.4
    i32 29, label %sw.bb31.4
    i32 30, label %sw.bb35.4
  ]

for.body.4.for.inc.4_crit_edge:                   ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.4

sw.bb35.4:                                        ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #11
  %39 = or i16 %hash_opts.1.3, 512
  br label %for.inc.4

sw.bb31.4:                                        ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #11
  %40 = or i16 %hash_opts.1.3, 256
  br label %for.inc.4

sw.bb27.4:                                        ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #11
  %41 = or i16 %hash_opts.1.3, 128
  br label %for.inc.4

sw.bb23.4:                                        ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #11
  %42 = or i16 %hash_opts.1.3, 64
  br label %for.inc.4

sw.bb19.4:                                        ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #11
  %43 = or i16 %hash_opts.1.3, 32
  br label %for.inc.4

sw.bb15.4:                                        ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #11
  %44 = or i16 %hash_opts.1.3, 16
  br label %for.inc.4

sw.bb11.4:                                        ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #11
  %45 = or i16 %hash_opts.1.3, 8
  br label %for.inc.4

sw.bb7.4:                                         ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #11
  %46 = or i16 %hash_opts.1.3, 2
  br label %for.inc.4

sw.bb3.4:                                         ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #11
  %47 = or i16 %hash_opts.1.3, 4
  br label %for.inc.4

sw.bb.4:                                          ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #11
  %48 = or i16 %hash_opts.1.3, 1
  br label %for.inc.4

for.inc.4:                                        ; preds = %sw.bb.4, %sw.bb3.4, %sw.bb7.4, %sw.bb11.4, %sw.bb15.4, %sw.bb19.4, %sw.bb23.4, %sw.bb27.4, %sw.bb31.4, %sw.bb35.4, %for.body.4.for.inc.4_crit_edge
  %hash_opts.1.4 = phi i16 [ %hash_opts.1.3, %for.body.4.for.inc.4_crit_edge ], [ %39, %sw.bb35.4 ], [ %40, %sw.bb31.4 ], [ %41, %sw.bb27.4 ], [ %42, %sw.bb23.4 ], [ %43, %sw.bb19.4 ], [ %44, %sw.bb15.4 ], [ %45, %sw.bb11.4 ], [ %46, %sw.bb7.4 ], [ %47, %sw.bb3.4 ], [ %48, %sw.bb.4 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and.i)
  %exitcond.not.4 = icmp eq i32 %and.i, 5
  br i1 %exitcond.not.4, label %for.inc.4.for.end_crit_edge, label %for.body.5

for.inc.4.for.end_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.5:                                       ; preds = %for.inc.4
  %shr.i.5 = lshr i32 %3, 30
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shr.i.5)
  %cond = icmp eq i32 %shr.i.5, 3
  %49 = or i16 %hash_opts.1.4, 1
  %spec.select = select i1 %cond, i16 %49, i16 %hash_opts.1.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and.i)
  %exitcond.not.5 = icmp eq i32 %and.i, 6
  br i1 %exitcond.not.5, label %for.body.5.for.end_crit_edge, label %for.body.6

for.body.5.for.end_crit_edge:                     ; preds = %for.body.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.6:                                       ; preds = %for.body.5
  call void @__sanitizer_cov_trace_switch(i64 poison, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 poison, label %for.body.6.for.end_crit_edge [
    i32 3, label %sw.bb.6
    i32 6, label %sw.bb3.6
    i32 5, label %sw.bb7.6
    i32 15, label %sw.bb11.6
    i32 16, label %sw.bb15.6
    i32 17, label %sw.bb19.6
    i32 23, label %sw.bb23.6
    i32 26, label %sw.bb27.6
    i32 29, label %sw.bb31.6
    i32 30, label %sw.bb35.6
  ]

for.body.6.for.end_crit_edge:                     ; preds = %for.body.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

sw.bb35.6:                                        ; preds = %for.body.6
  call void @__sanitizer_cov_trace_pc() #11
  %50 = or i16 %spec.select, 512
  br label %for.end

sw.bb31.6:                                        ; preds = %for.body.6
  call void @__sanitizer_cov_trace_pc() #11
  %51 = or i16 %spec.select, 256
  br label %for.end

sw.bb27.6:                                        ; preds = %for.body.6
  call void @__sanitizer_cov_trace_pc() #11
  %52 = or i16 %spec.select, 128
  br label %for.end

sw.bb23.6:                                        ; preds = %for.body.6
  call void @__sanitizer_cov_trace_pc() #11
  %53 = or i16 %spec.select, 64
  br label %for.end

sw.bb19.6:                                        ; preds = %for.body.6
  call void @__sanitizer_cov_trace_pc() #11
  %54 = or i16 %spec.select, 32
  br label %for.end

sw.bb15.6:                                        ; preds = %for.body.6
  call void @__sanitizer_cov_trace_pc() #11
  %55 = or i16 %spec.select, 16
  br label %for.end

sw.bb11.6:                                        ; preds = %for.body.6
  call void @__sanitizer_cov_trace_pc() #11
  %56 = or i16 %spec.select, 8
  br label %for.end

sw.bb7.6:                                         ; preds = %for.body.6
  call void @__sanitizer_cov_trace_pc() #11
  %57 = or i16 %spec.select, 2
  br label %for.end

sw.bb3.6:                                         ; preds = %for.body.6
  call void @__sanitizer_cov_trace_pc() #11
  %58 = or i16 %spec.select, 4
  br label %for.end

sw.bb.6:                                          ; preds = %for.body.6
  call void @__sanitizer_cov_trace_pc() #11
  %59 = or i16 %spec.select, 1
  br label %for.end

for.end:                                          ; preds = %sw.bb.6, %sw.bb3.6, %sw.bb7.6, %sw.bb11.6, %sw.bb15.6, %sw.bb19.6, %sw.bb23.6, %sw.bb27.6, %sw.bb31.6, %sw.bb35.6, %for.body.6.for.end_crit_edge, %for.body.5.for.end_crit_edge, %for.inc.4.for.end_crit_edge, %for.inc.3.for.end_crit_edge, %for.inc.2.for.end_crit_edge, %for.inc.1.for.end_crit_edge, %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %hash_opts.0.lcssa = phi i16 [ 0, %entry.for.end_crit_edge ], [ %hash_opts.1, %for.inc.for.end_crit_edge ], [ %hash_opts.1.1, %for.inc.1.for.end_crit_edge ], [ %hash_opts.1.2, %for.inc.2.for.end_crit_edge ], [ %hash_opts.1.3, %for.inc.3.for.end_crit_edge ], [ %hash_opts.1.4, %for.inc.4.for.end_crit_edge ], [ %spec.select, %for.body.5.for.end_crit_edge ], [ %spec.select, %for.body.6.for.end_crit_edge ], [ %50, %sw.bb35.6 ], [ %51, %sw.bb31.6 ], [ %52, %sw.bb27.6 ], [ %53, %sw.bb23.6 ], [ %54, %sw.bb19.6 ], [ %55, %sw.bb15.6 ], [ %56, %sw.bb11.6 ], [ %57, %sw.bb7.6 ], [ %58, %sw.bb3.6 ], [ %59, %sw.bb.6 ]
  ret i16 %hash_opts.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mvpp2_cls_init(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  %c2 = alloca %struct.mvpp2_cls_c2_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %c2) #9
  tail call void @mvpp2_write(ptr noundef %priv, i32 noundef 6144, i32 noundef 1) #9
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %index.039 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  tail call void @mvpp2_write(ptr noundef %priv, i32 noundef 6176, i32 noundef %index.039) #9
  tail call void @mvpp2_write(ptr noundef %priv, i32 noundef 6180, i32 noundef 0) #9
  tail call void @mvpp2_write(ptr noundef %priv, i32 noundef 6184, i32 noundef 0) #9
  tail call void @mvpp2_write(ptr noundef %priv, i32 noundef 6188, i32 noundef 0) #9
  %inc = add nuw nsw i32 %index.039, 1
  %exitcond.not = icmp eq i32 %inc, 512
  br i1 %exitcond.not, label %for.body.for.body5_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.body5_crit_edge:                     ; preds = %for.body
  br label %for.body5

for.body5:                                        ; preds = %for.body5.for.body5_crit_edge, %for.body.for.body5_crit_edge
  %index.140 = phi i32 [ %inc8, %for.body5.for.body5_crit_edge ], [ 0, %for.body.for.body5_crit_edge ]
  tail call void @mvpp2_write(ptr noundef %priv, i32 noundef 6164, i32 noundef %index.140) #9
  tail call void @mvpp2_write(ptr noundef %priv, i32 noundef 6168, i32 noundef 0) #9
  %or.i34 = or i32 %index.140, 64
  tail call void @mvpp2_write(ptr noundef %priv, i32 noundef 6164, i32 noundef %or.i34) #9
  tail call void @mvpp2_write(ptr noundef %priv, i32 noundef 6168, i32 noundef 0) #9
  %inc8 = add nuw nsw i32 %index.140, 1
  %exitcond42.not = icmp eq i32 %inc8, 64
  br i1 %exitcond42.not, label %for.end9, label %for.body5.for.body5_crit_edge

for.body5.for.body5_crit_edge:                    ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body5

for.end9:                                         ; preds = %for.body5
  %0 = getelementptr inbounds i8, ptr %c2, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 48)
  br label %for.body12

for.body12:                                       ; preds = %for.body12.for.body12_crit_edge, %for.end9
  %index.241 = phi i32 [ 0, %for.end9 ], [ %inc15, %for.body12.for.body12_crit_edge ]
  %2 = ptrtoint ptr %c2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %index.241, ptr %c2, align 4
  call fastcc void @mvpp2_cls_c2_write(ptr noundef %priv, ptr noundef nonnull %c2)
  %inc15 = add nuw nsw i32 %index.241, 1
  %exitcond43.not = icmp eq i32 %inc15, 256
  br i1 %exitcond43.not, label %for.end16, label %for.body12.for.body12_crit_edge

for.body12.for.body12_crit_edge:                  ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body12

for.end16:                                        ; preds = %for.body12
  tail call void @mvpp2_write(ptr noundef %priv, i32 noundef 7056, i32 noundef 1) #9
  br label %if.end.i

if.end.i:                                         ; preds = %for.end.i.i.if.end.i_crit_edge, %for.end16
  %i.013.i = phi i32 [ 0, %for.end16 ], [ %inc.i, %for.end.i.i.if.end.i_crit_edge ]
  %flow_id.i.i = getelementptr [52 x %struct.mvpp2_cls_flow], ptr @cls_flows, i32 0, i32 %i.013.i, i32 1
  %3 = ptrtoint ptr %flow_id.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %flow_id.i.i, align 4
  %conv.i.i = zext i16 %4 to i32
  %prs_ri.i.i = getelementptr [52 x %struct.mvpp2_cls_flow], ptr @cls_flows, i32 0, i32 %i.013.i, i32 3
  %5 = ptrtoint ptr %prs_ri.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %prs_ri.i.i, align 4
  %ri_mask.i.i = getelementptr [52 x %struct.mvpp2_cls_flow], ptr @cls_flows, i32 0, i32 %i.013.i, i32 3, i32 1
  %7 = ptrtoint ptr %ri_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ri_mask.i.i, align 4
  %call.i.i = tail call i32 @mvpp2_prs_add_flow(ptr noundef %priv, i32 noundef %conv.i.i, i32 noundef %6, i32 noundef %8) #9
  %mul.i.i = mul i32 %conv.i.i, 1376256
  %shl.i.i = add i32 %mul.i.i, -11010048
  %or5.i.i = or i32 %shl.i.i, 33554432
  tail call void @mvpp2_write(ptr noundef %priv, i32 noundef 6164, i32 noundef %conv.i.i) #9
  tail call void @mvpp2_write(ptr noundef %priv, i32 noundef 6168, i32 noundef %or5.i.i) #9
  %9 = mul nuw nsw i32 %conv.i.i, 21
  %sub5131.i.i = add nsw i32 %9, -148
  %mul.i12.i = add nsw i32 %9, -168
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end.i
  %pri.0134.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i ]
  %i.0133.i.i = phi i32 [ %inc15.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %mul.i12.i, %if.end.i ]
  %inc.i.i = add nuw nsw i32 %pri.0134.i.i, 1
  %shl.i.i.i = shl i32 %pri.0134.i.i, 9
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0133.i.i, i32 %sub5131.i.i)
  %cmp13.i.i = icmp eq i32 %i.0133.i.i, %sub5131.i.i
  %spec.select.i.i = zext i1 %cmp13.i.i to i32
  tail call void @mvpp2_write(ptr noundef %priv, i32 noundef 6176, i32 noundef %i.0133.i.i) #9
  tail call void @mvpp2_write(ptr noundef %priv, i32 noundef 6180, i32 noundef %spec.select.i.i) #9
  tail call void @mvpp2_write(ptr noundef %priv, i32 noundef 6184, i32 noundef %shl.i.i.i) #9
  tail call void @mvpp2_write(ptr noundef %priv, i32 noundef 6188, i32 noundef 0) #9
  %inc15.i.i = add nsw i32 %i.0133.i.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i.i, 21
  br i1 %exitcond.not.i, label %for.end.i.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.body.i.i
  %phi.bo.i.i = add nsw i32 %9, -152
  tail call void @mvpp2_write(ptr noundef %priv, i32 noundef 6176, i32 noundef %phi.bo.i.i) #9
  %call.i.i.i = tail call i32 @mvpp2_read(ptr noundef %priv, i32 noundef 6180) #9
  %call2.i.i.i = tail call i32 @mvpp2_read(ptr noundef %priv, i32 noundef 6184) #9
  %call5.i.i.i = tail call i32 @mvpp2_read(ptr noundef %priv, i32 noundef 6188) #9
  %and.i68.i.i = and i32 %call.i.i.i, -8388863
  %or.i77.3.i.i = or i32 %and.i68.i.i, 8388850
  %or.i74.i.i = or i32 %call2.i.i.i, 504
  tail call void @mvpp2_write(ptr noundef %priv, i32 noundef 6176, i32 noundef %phi.bo.i.i) #9
  tail call void @mvpp2_write(ptr noundef %priv, i32 noundef 6180, i32 noundef %or.i77.3.i.i) #9
  tail call void @mvpp2_write(ptr noundef %priv, i32 noundef 6184, i32 noundef %or.i74.i.i) #9
  tail call void @mvpp2_write(ptr noundef %priv, i32 noundef 6188, i32 noundef %call5.i.i.i) #9
  %add39.i.i = add nsw i32 %9, -151
  tail call void @mvpp2_write(ptr noundef %priv, i32 noundef 6176, i32 noundef %add39.i.i) #9
  %call.i81.i.i = tail call i32 @mvpp2_read(ptr noundef %priv, i32 noundef 6180) #9
  %call2.i83.i.i = tail call i32 @mvpp2_read(ptr noundef %priv, i32 noundef 6184) #9
  %call5.i85.i.i = tail call i32 @mvpp2_read(ptr noundef %priv, i32 noundef 6188) #9
  %and.i88.i.i = and i32 %call.i81.i.i, -8388639
  %or.i94.i.i = or i32 %and.i88.i.i, 8388636
  tail call void @mvpp2_write(ptr noundef %priv, i32 noundef 6176, i32 noundef %add39.i.i) #9
  tail call void @mvpp2_write(ptr noundef %priv, i32 noundef 6180, i32 noundef %or.i94.i.i) #9
  tail call void @mvpp2_write(ptr noundef %priv, i32 noundef 6184, i32 noundef %call2.i83.i.i) #9
  tail call void @mvpp2_write(ptr noundef %priv, i32 noundef 6188, i32 noundef %call5.i85.i.i) #9
  %add40.i.1.i = add nsw i32 %9, -150
  tail call void @mvpp2_write(ptr noundef %priv, i32 noundef 6176, i32 noundef %add40.i.1.i) #9
  %call.i81.i.1.i = tail call i32 @mvpp2_read(ptr noundef %priv, i32 noundef 6180) #9
  %call2.i83.i.1.i = tail call i32 @mvpp2_read(ptr noundef %priv, i32 noundef 6184) #9
  %call5.i85.i.1.i = tail call i32 @mvpp2_read(ptr noundef %priv, i32 noundef 6188) #9
  %and.i88.i.1.i = and i32 %call.i81.i.1.i, -8388655
  %or.i94.i.1.i = or i32 %and.i88.i.1.i, 8388652
  tail call void @mvpp2_write(ptr noundef %priv, i32 noundef 6176, i32 noundef %add40.i.1.i) #9
  tail call void @mvpp2_write(ptr noundef %priv, i32 noundef 6180, i32 noundef %or.i94.i.1.i) #9
  tail call void @mvpp2_write(ptr noundef %priv, i32 noundef 6184, i32 noundef %call2.i83.i.1.i) #9
  tail call void @mvpp2_write(ptr noundef %priv, i32 noundef 6188, i32 noundef %call5.i85.i.1.i) #9
  %add40.i.2.i = add nsw i32 %9, -149
  tail call void @mvpp2_write(ptr noundef %priv, i32 noundef 6176, i32 noundef %add40.i.2.i) #9
  %call.i81.i.2.i = tail call i32 @mvpp2_read(ptr noundef %priv, i32 noundef 6180) #9
  %call2.i83.i.2.i = tail call i32 @mvpp2_read(ptr noundef %priv, i32 noundef 6184) #9
  %call5.i85.i.2.i = tail call i32 @mvpp2_read(ptr noundef %priv, i32 noundef 6188) #9
  %and.i88.i.2.i = and i32 %call.i81.i.2.i, -8388687
  %or.i94.i.2.i = or i32 %and.i88.i.2.i, 8388684
  tail call void @mvpp2_write(ptr noundef %priv, i32 noundef 6176, i32 noundef %add40.i.2.i) #9
  tail call void @mvpp2_write(ptr noundef %priv, i32 noundef 6180, i32 noundef %or.i94.i.2.i) #9
  tail call void @mvpp2_write(ptr noundef %priv, i32 noundef 6184, i32 noundef %call2.i83.i.2.i) #9
  tail call void @mvpp2_write(ptr noundef %priv, i32 noundef 6188, i32 noundef %call5.i85.i.2.i) #9
  tail call void @mvpp2_write(ptr noundef %priv, i32 noundef 6176, i32 noundef %sub5131.i.i) #9
  %call.i81.i.3.i = tail call i32 @mvpp2_read(ptr noundef %priv, i32 noundef 6180) #9
  %call2.i83.i.3.i = tail call i32 @mvpp2_read(ptr noundef %priv, i32 noundef 6184) #9
  %call5.i85.i.3.i = tail call i32 @mvpp2_read(ptr noundef %priv, i32 noundef 6188) #9
  %and.i88.i.3.i = and i32 %call.i81.i.3.i, -8388751
  %or.i94.i.3.i = or i32 %and.i88.i.3.i, 8388748
  tail call void @mvpp2_write(ptr noundef %priv, i32 noundef 6176, i32 noundef %sub5131.i.i) #9
  tail call void @mvpp2_write(ptr noundef %priv, i32 noundef 6180, i32 noundef %or.i94.i.3.i) #9
  tail call void @mvpp2_write(ptr noundef %priv, i32 noundef 6184, i32 noundef %call2.i83.i.3.i) #9
  tail call void @mvpp2_write(ptr noundef %priv, i32 noundef 6188, i32 noundef %call5.i85.i.3.i) #9
  %inc.i = add nuw nsw i32 %i.013.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %i.013.i)
  %cmp.i = icmp ugt i32 %i.013.i, 50
  %arrayidx.i.i = getelementptr [52 x %struct.mvpp2_cls_flow], ptr @cls_flows, i32 0, i32 %inc.i
  %tobool.not.i = icmp eq ptr %arrayidx.i.i, null
  %or.cond.i = or i1 %cmp.i, %tobool.not.i
  br i1 %or.cond.i, label %mvpp2_cls_port_init_flows.exit, label %for.end.i.i.if.end.i_crit_edge

for.end.i.i.if.end.i_crit_edge:                   ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

mvpp2_cls_port_init_flows.exit:                   ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %c2) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mvpp2_cls_c2_write(ptr noundef %priv, ptr nocapture noundef readonly %c2) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %c2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %c2, align 4
  tail call void @mvpp2_write(ptr noundef %priv, i32 noundef 6912, i32 noundef %1) #9
  %call = tail call i32 @mvpp2_read(ptr noundef %priv, i32 noundef 6948) #9
  %valid = getelementptr inbounds %struct.mvpp2_cls_c2_entry, ptr %c2, i32 0, i32 4
  %2 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %valid, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %and = and i32 %call, 2147483647
  %masksel = select i1 %tobool.not, i32 -2147483648, i32 0
  %val.0 = or i32 %masksel, %and
  tail call void @mvpp2_write(ptr noundef %priv, i32 noundef 6948, i32 noundef %val.0) #9
  %act = getelementptr inbounds %struct.mvpp2_cls_c2_entry, ptr %c2, i32 0, i32 2
  %4 = ptrtoint ptr %act to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %act, align 4
  tail call void @mvpp2_write(ptr noundef %priv, i32 noundef 7008, i32 noundef %5) #9
  %attr = getelementptr inbounds %struct.mvpp2_cls_c2_entry, ptr %c2, i32 0, i32 3
  %6 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %attr, align 4
  tail call void @mvpp2_write(ptr noundef %priv, i32 noundef 7012, i32 noundef %7) #9
  %arrayidx2 = getelementptr %struct.mvpp2_cls_c2_entry, ptr %c2, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx2, align 4
  tail call void @mvpp2_write(ptr noundef %priv, i32 noundef 7016, i32 noundef %9) #9
  %arrayidx4 = getelementptr %struct.mvpp2_cls_c2_entry, ptr %c2, i32 0, i32 3, i32 2
  %10 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx4, align 4
  tail call void @mvpp2_write(ptr noundef %priv, i32 noundef 7020, i32 noundef %11) #9
  %arrayidx6 = getelementptr %struct.mvpp2_cls_c2_entry, ptr %c2, i32 0, i32 3, i32 3
  %12 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx6, align 4
  tail call void @mvpp2_write(ptr noundef %priv, i32 noundef 7024, i32 noundef %13) #9
  %tcam = getelementptr inbounds %struct.mvpp2_cls_c2_entry, ptr %c2, i32 0, i32 1
  %14 = ptrtoint ptr %tcam to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tcam, align 4
  tail call void @mvpp2_write(ptr noundef %priv, i32 noundef 6928, i32 noundef %15) #9
  %arrayidx9 = getelementptr %struct.mvpp2_cls_c2_entry, ptr %c2, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx9, align 4
  tail call void @mvpp2_write(ptr noundef %priv, i32 noundef 6932, i32 noundef %17) #9
  %arrayidx11 = getelementptr %struct.mvpp2_cls_c2_entry, ptr %c2, i32 0, i32 1, i32 2
  %18 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx11, align 4
  tail call void @mvpp2_write(ptr noundef %priv, i32 noundef 6936, i32 noundef %19) #9
  %arrayidx13 = getelementptr %struct.mvpp2_cls_c2_entry, ptr %c2, i32 0, i32 1, i32 3
  %20 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx13, align 4
  tail call void @mvpp2_write(ptr noundef %priv, i32 noundef 6940, i32 noundef %21) #9
  %arrayidx15 = getelementptr %struct.mvpp2_cls_c2_entry, ptr %c2, i32 0, i32 1, i32 4
  %22 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx15, align 4
  tail call void @mvpp2_write(ptr noundef %priv, i32 noundef 6944, i32 noundef %23) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mvpp2_cls_port_config(ptr nocapture noundef readonly %port) local_unnamed_addr #0 align 64 {
entry:
  %c2.i = alloca %struct.mvpp2_cls_c2_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mvpp2_port, ptr %port, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %call = tail call i32 @mvpp2_read(ptr noundef %1, i32 noundef 6160) #9
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %port, align 8
  %conv = zext i8 %3 to i32
  %shl = shl nuw i32 1, %conv
  %neg = xor i32 %shl, -1
  %and = and i32 %call, %neg
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 4
  tail call void @mvpp2_write(ptr noundef %5, i32 noundef 6160, i32 noundef %and) #9
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %port, align 8
  %conv3 = zext i8 %7 to i32
  %first_rxq = getelementptr inbounds %struct.mvpp2_port, ptr %port, i32 0, i32 34
  %8 = ptrtoint ptr %first_rxq to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %first_rxq, align 8
  %conv6 = zext i8 %9 to i32
  %10 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv, align 4
  tail call void @mvpp2_write(ptr noundef %11, i32 noundef 6164, i32 noundef %conv3) #9
  tail call void @mvpp2_write(ptr noundef %11, i32 noundef 6168, i32 noundef %conv6) #9
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %c2.i) #9
  %12 = getelementptr inbounds i8, ptr %c2.i, i32 4
  %13 = call ptr @memset(ptr %12, i32 0, i32 48)
  %14 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %port, align 8
  %conv.i = zext i8 %15 to i32
  %16 = mul nuw nsw i32 %conv.i, 5
  %sub.i = add nuw nsw i32 %16, 4
  %17 = ptrtoint ptr %c2.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %sub.i, ptr %c2.i, align 4
  %conv4.i = shl i32 256, %conv.i
  %shl5.i = and i32 %conv4.i, 65280
  %arrayidx.i = getelementptr inbounds %struct.mvpp2_cls_c2_entry, ptr %c2.i, i32 0, i32 1, i32 4
  %shl8.i = shl i32 %conv4.i, 16
  %or.i18 = or i32 %shl5.i, %shl8.i
  %or16.i = or i32 %or.i18, 4128831
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or16.i, ptr %arrayidx.i, align 4
  %act.i = getelementptr inbounds %struct.mvpp2_cls_c2_entry, ptr %c2.i, i32 0, i32 2
  %19 = ptrtoint ptr %act.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1602560, ptr %act.i, align 4
  %20 = ptrtoint ptr %first_rxq to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %first_rxq, align 8
  %22 = lshr i8 %21, 3
  %conv27.i = zext i8 %22 to i32
  %shl29.i = shl nuw nsw i32 %conv27.i, 24
  %23 = and i8 %21, 7
  %and31.i = zext i8 %23 to i32
  %shl32.i = shl nuw nsw i32 %and31.i, 21
  %or33.i = or i32 %shl29.i, %shl32.i
  %attr.i = getelementptr inbounds %struct.mvpp2_cls_c2_entry, ptr %c2.i, i32 0, i32 3
  %24 = ptrtoint ptr %attr.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or33.i, ptr %attr.i, align 4
  %valid.i = getelementptr inbounds %struct.mvpp2_cls_c2_entry, ptr %c2.i, i32 0, i32 4
  %25 = ptrtoint ptr %valid.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %valid.i, align 4
  %26 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %priv, align 4
  call fastcc void @mvpp2_cls_c2_write(ptr noundef %27, ptr noundef nonnull %c2.i) #9
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %c2.i) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mvpp2_cls_c2_hit_count(ptr noundef %priv, i32 noundef %c2_index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mvpp2_write(ptr noundef %priv, i32 noundef 6912, i32 noundef %c2_index) #9
  %call = tail call i32 @mvpp2_read(ptr noundef %priv, i32 noundef 6992) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mvpp22_port_rss_enable(ptr nocapture noundef readonly %port) local_unnamed_addr #0 align 64 {
entry:
  %c2.i = alloca %struct.mvpp2_cls_c2_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.mvpp2_port, ptr %port, i32 0, i32 41, i32 0
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %c2.i) #9
  %2 = call ptr @memset(ptr %c2.i, i32 255, i32 52)
  %priv.i = getelementptr inbounds %struct.mvpp2_port, ptr %port, i32 0, i32 3
  %3 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv.i, align 4
  %5 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %port, align 8
  %conv.i = zext i8 %6 to i32
  %7 = mul nuw nsw i32 %conv.i, 5
  %sub.i = add nuw nsw i32 %7, 4
  call void @mvpp2_cls_c2_read(ptr noundef %4, i32 noundef %sub.i, ptr noundef nonnull %c2.i) #9
  %8 = shl i32 %1, 21
  %or.i = and i32 %8, 534773760
  %attr.i = getelementptr inbounds %struct.mvpp2_cls_c2_entry, ptr %c2.i, i32 0, i32 3
  %9 = ptrtoint ptr %attr.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or.i, ptr %attr.i, align 4
  %arrayidx10.i = getelementptr inbounds %struct.mvpp2_cls_c2_entry, ptr %c2.i, i32 0, i32 3, i32 2
  %10 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx10.i, align 4
  %or11.i = or i32 %11, 1073741824
  store i32 %or11.i, ptr %arrayidx10.i, align 4
  %12 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv.i, align 4
  call fastcc void @mvpp2_cls_c2_write(ptr noundef %13, ptr noundef nonnull %c2.i) #9
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %c2.i) #9
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mvpp22_port_rss_disable(ptr nocapture noundef readonly %port) local_unnamed_addr #0 align 64 {
entry:
  %c2.i = alloca %struct.mvpp2_cls_c2_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.mvpp2_port, ptr %port, i32 0, i32 41, i32 0
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %c2.i) #9
  %2 = call ptr @memset(ptr %c2.i, i32 255, i32 52)
  %priv.i = getelementptr inbounds %struct.mvpp2_port, ptr %port, i32 0, i32 3
  %3 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv.i, align 4
  %5 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %port, align 8
  %conv.i = zext i8 %6 to i32
  %7 = mul nuw nsw i32 %conv.i, 5
  %sub.i = add nuw nsw i32 %7, 4
  call void @mvpp2_cls_c2_read(ptr noundef %4, i32 noundef %sub.i, ptr noundef nonnull %c2.i) #9
  %first_rxq.i = getelementptr inbounds %struct.mvpp2_port, ptr %port, i32 0, i32 34
  %8 = ptrtoint ptr %first_rxq.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %first_rxq.i, align 8
  %10 = lshr i8 %9, 3
  %conv7.i = zext i8 %10 to i32
  %shl.i = shl nuw nsw i32 %conv7.i, 24
  %11 = and i8 %9, 7
  %and10.i = zext i8 %11 to i32
  %shl11.i = shl nuw nsw i32 %and10.i, 21
  %or.i = or i32 %shl.i, %shl11.i
  %attr.i = getelementptr inbounds %struct.mvpp2_cls_c2_entry, ptr %c2.i, i32 0, i32 3
  %12 = ptrtoint ptr %attr.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or.i, ptr %attr.i, align 4
  %arrayidx13.i = getelementptr inbounds %struct.mvpp2_cls_c2_entry, ptr %c2.i, i32 0, i32 3, i32 2
  %13 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx13.i, align 4
  %and14.i = and i32 %14, -1073741825
  store i32 %and14.i, ptr %arrayidx13.i, align 4
  %15 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %priv.i, align 4
  call fastcc void @mvpp2_cls_c2_write(ptr noundef %16, ptr noundef nonnull %c2.i) #9
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %c2.i) #9
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mvpp2_cls_oversize_rxq_set(ptr nocapture noundef readonly %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mvpp2_port, ptr %port, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %port, align 8
  %conv = zext i8 %3 to i32
  %mul = shl nuw nsw i32 %conv, 2
  %add = add nuw nsw i32 %mul, 6528
  %first_rxq = getelementptr inbounds %struct.mvpp2_port, ptr %port, i32 0, i32 34
  %4 = ptrtoint ptr %first_rxq to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %first_rxq, align 8
  %6 = and i8 %5, 7
  %and = zext i8 %6 to i32
  tail call void @mvpp2_write(ptr noundef %1, i32 noundef %add, i32 noundef %and) #9
  %7 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv, align 4
  %9 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %port, align 8
  %conv4 = zext i8 %10 to i32
  %mul5 = shl nuw nsw i32 %conv4, 2
  %add6 = add nuw nsw i32 %mul5, 6576
  %11 = ptrtoint ptr %first_rxq to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %first_rxq, align 8
  %13 = lshr i8 %12, 3
  %14 = zext i8 %13 to i32
  tail call void @mvpp2_write(ptr noundef %8, i32 noundef %add6, i32 noundef %14) #9
  %15 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %priv, align 4
  %call = tail call i32 @mvpp2_read(ptr noundef %16, i32 noundef 6608) #9
  %17 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %port, align 8
  %conv11 = zext i8 %18 to i32
  %shl = shl nuw i32 1, %conv11
  %neg = xor i32 %shl, -1
  %and12 = and i32 %call, %neg
  %19 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %priv, align 4
  tail call void @mvpp2_write(ptr noundef %20, i32 noundef 6608, i32 noundef %and12) #9
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mvpp2_ethtool_cls_rule_get(ptr nocapture noundef readonly %port, ptr nocapture noundef %rxnfc) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %location = getelementptr inbounds %struct.ethtool_rxnfc, ptr %rxnfc, i32 0, i32 3, i32 6
  %0 = ptrtoint ptr %location to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %location, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp ugt i32 %1, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.mvpp2_port, ptr %port, i32 0, i32 39, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %rxnfc5 = getelementptr inbounds %struct.mvpp2_ethtool_fs, ptr %3, i32 0, i32 1
  %4 = call ptr @memcpy(ptr %rxnfc, ptr %rxnfc5, i32 192)
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -22, %entry.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mvpp2_ethtool_cls_rule_ins(ptr nocapture noundef %port, ptr noundef %info) local_unnamed_addr #0 align 64 {
entry:
  %c2.i.i.i = alloca %struct.mvpp2_cls_c2_entry, align 4
  %fe.i = alloca %struct.mvpp2_cls_flow_entry, align 4
  %match.i.i = alloca %struct.flow_match_vlan, align 4
  %match52.i.i = alloca %struct.flow_match_ports, align 4
  %input = alloca %struct.ethtool_rx_flow_spec_input, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %input) #9
  %0 = ptrtoint ptr %input to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %input, align 8
  %fs = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3
  %location = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 6
  %1 = ptrtoint ptr %location to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %location, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %2)
  %cmp = icmp ugt i32 %2, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 232) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %4 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %fs, ptr %input, align 8
  %5 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fs, align 8
  %and = and i32 %6, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.end2.if.end8_crit_edge, label %if.then7

if.end2.if.end8_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then7:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  %7 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 8
  %rss_ctx = getelementptr inbounds %struct.ethtool_rx_flow_spec_input, ptr %input, i32 0, i32 1
  %10 = ptrtoint ptr %rss_ctx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %rss_ctx, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end2.if.end8_crit_edge
  %call9 = call ptr @ethtool_rx_flow_rule_create(ptr noundef nonnull %input) #9
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %call9 to i32
  br label %clean_rule

if.end13:                                         ; preds = %if.end8
  %12 = ptrtoint ptr %call9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call9, align 4
  %flow = getelementptr inbounds %struct.mvpp2_rfs_rule, ptr %call7.i.i, i32 0, i32 7
  %14 = ptrtoint ptr %flow to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %flow, align 8
  %15 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fs, align 8
  %and.i = and i32 %16, 536870911
  %17 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %and.i, label %mvpp2_cls_ethtool_flow_to_type.exit [
    i32 18, label %if.end13.if.end26_crit_edge
    i32 1, label %sw.bb1.i
    i32 5, label %sw.bb2.i
    i32 2, label %sw.bb3.i
    i32 6, label %sw.bb4.i
    i32 16, label %sw.bb5.i
    i32 17, label %sw.bb6.i
  ]

if.end13.if.end26_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

sw.bb1.i:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

sw.bb2.i:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

sw.bb3.i:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

sw.bb4.i:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

sw.bb5.i:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

sw.bb6.i:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

mvpp2_cls_ethtool_flow_to_type.exit:              ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %flow_type19 = getelementptr inbounds %struct.mvpp2_rfs_rule, ptr %call7.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %flow_type19 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -95, ptr %flow_type19, align 4
  br label %clean_rule

if.end26:                                         ; preds = %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %if.end13.if.end26_crit_edge
  %retval.0.i.ph = phi i32 [ 1, %if.end13.if.end26_crit_edge ], [ 11, %sw.bb1.i ], [ 13, %sw.bb2.i ], [ 19, %sw.bb3.i ], [ 21, %sw.bb4.i ], [ 3, %sw.bb5.i ], [ 5, %sw.bb6.i ]
  %flow_type19109 = getelementptr inbounds %struct.mvpp2_rfs_rule, ptr %call7.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %flow_type19109 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %retval.0.i.ph, ptr %flow_type19109, align 4
  %action.i = getelementptr inbounds %struct.flow_rule, ptr %13, i32 0, i32 1
  %20 = ptrtoint ptr %action.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %action.i, align 8
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %21, label %for.body.preheader.i.i.i.i [
    i32 0, label %if.end26.if.end.i_crit_edge
    i32 1, label %if.end26.flow_action_first_entry_get.exit.i.i.i_crit_edge
  ]

if.end26.flow_action_first_entry_get.exit.i.i.i_crit_edge: ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %flow_action_first_entry_get.exit.i.i.i

if.end26.if.end.i_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

for.body.preheader.i.i.i.i:                       ; preds = %if.end26
  %entries.i.i.i.i = getelementptr inbounds %struct.flow_rule, ptr %13, i32 1
  br label %for.body.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %if.end7.i.i.i.i.for.body.i.i.i.i_crit_edge, %for.body.preheader.i.i.i.i
  %i.04.i.i.i.i = phi i32 [ %inc.i.i.i.i, %if.end7.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ 0, %for.body.preheader.i.i.i.i ]
  %last_hw_stats.03.i.i.i.i = phi i32 [ %26, %if.end7.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ 255, %for.body.preheader.i.i.i.i ]
  %action_entry.02.i.i.i.i = phi ptr [ %arrayidx11.i.i.i.i, %if.end7.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ %entries.i.i.i.i, %for.body.preheader.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.04.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %i.04.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %for.body.i.i.i.i.if.end7.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

for.body.i.i.i.i.if.end7.i.i.i.i_crit_edge:       ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %for.body.i.i.i.i
  %hw_stats.i.i.i.i = getelementptr inbounds %struct.flow_action_entry, ptr %action_entry.02.i.i.i.i, i32 0, i32 2
  %23 = ptrtoint ptr %hw_stats.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %hw_stats.i.i.i.i, align 8
  %conv.i.i.i.i = and i32 %last_hw_stats.03.i.i.i.i, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %conv.i.i.i.i)
  %cmp1.not.i.i.i.i = icmp eq i32 %24, %conv.i.i.i.i
  br i1 %cmp1.not.i.i.i.i, label %land.lhs.true.i.i.i.i.if.end7.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i.flow_action_basic_hw_stats_check.exit.i_crit_edge

land.lhs.true.i.i.i.i.flow_action_basic_hw_stats_check.exit.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %flow_action_basic_hw_stats_check.exit.i

land.lhs.true.i.i.i.i.if.end7.i.i.i.i_crit_edge:  ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i.i.i.i

if.end7.i.i.i.i:                                  ; preds = %land.lhs.true.i.i.i.i.if.end7.i.i.i.i_crit_edge, %for.body.i.i.i.i.if.end7.i.i.i.i_crit_edge
  %hw_stats8.i.i.i.i = getelementptr inbounds %struct.flow_action_entry, ptr %action_entry.02.i.i.i.i, i32 0, i32 2
  %25 = ptrtoint ptr %hw_stats8.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %hw_stats8.i.i.i.i, align 8
  %inc.i.i.i.i = add nuw i32 %i.04.i.i.i.i, 1
  %arrayidx11.i.i.i.i = getelementptr %struct.flow_rule, ptr %13, i32 0, i32 1, i32 1, i32 %inc.i.i.i.i
  %exitcond.not.i.i.i.i = icmp eq i32 %inc.i.i.i.i, %21
  br i1 %exitcond.not.i.i.i.i, label %if.end3.i.i.i, label %if.end7.i.i.i.i.for.body.i.i.i.i_crit_edge

if.end7.i.i.i.i.for.body.i.i.i.i_crit_edge:       ; preds = %if.end7.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i.i.i

if.end3.i.i.i:                                    ; preds = %if.end7.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.i.not.i.i.i.i = icmp eq i32 %21, 0
  br i1 %tobool.i.not.i.i.i.i, label %do.end.i.i.i.i, label %if.end3.i.i.i.flow_action_first_entry_get.exit.i.i.i_crit_edge, !prof !25

if.end3.i.i.i.flow_action_first_entry_get.exit.i.i.i_crit_edge: ; preds = %if.end3.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %flow_action_first_entry_get.exit.i.i.i

do.end.i.i.i.i:                                   ; preds = %if.end3.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 334, i32 noundef 9, ptr noundef null) #9
  br label %flow_action_first_entry_get.exit.i.i.i

flow_action_first_entry_get.exit.i.i.i:           ; preds = %do.end.i.i.i.i, %if.end3.i.i.i.flow_action_first_entry_get.exit.i.i.i_crit_edge, %if.end26.flow_action_first_entry_get.exit.i.i.i_crit_edge
  %hw_stats.i.i.i = getelementptr inbounds %struct.flow_rule, ptr %13, i32 1, i32 0, i32 2
  %27 = ptrtoint ptr %hw_stats.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %hw_stats.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i.i.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i.i.i, label %land.rhs.i.i.i, label %flow_action_first_entry_get.exit.i.i.i.land.lhs.true.i.i.i_crit_edge

flow_action_first_entry_get.exit.i.i.i.land.lhs.true.i.i.i_crit_edge: ; preds = %flow_action_first_entry_get.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i.i.i

land.rhs.i.i.i:                                   ; preds = %flow_action_first_entry_get.exit.i.i.i
  %.b1.i.i.i = load i1, ptr @__flow_action_hw_stats_check.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs.i.i.i.land.lhs.true.i.i.i_crit_edge, label %if.then14.i.i.i, !prof !26

land.rhs.i.i.i.land.lhs.true.i.i.i_crit_edge:     ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i.i.i

if.then14.i.i.i:                                  ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__flow_action_hw_stats_check.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 354, i32 noundef 9, ptr noundef null) #9
  br label %land.lhs.true.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then14.i.i.i, %land.rhs.i.i.i.land.lhs.true.i.i.i_crit_edge, %flow_action_first_entry_get.exit.i.i.i.land.lhs.true.i.i.i_crit_edge
  %29 = ptrtoint ptr %hw_stats.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %hw_stats.i.i.i, align 8
  %neg.i.i.i = and i32 %30, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %neg.i.i.i)
  %tobool46.not.i.i.i = icmp eq i32 %neg.i.i.i, 3
  br i1 %tobool46.not.i.i.i, label %land.lhs.true.i.i.i.if.end.i_crit_edge, label %land.lhs.true.i.i.i.flow_action_basic_hw_stats_check.exit.i_crit_edge

land.lhs.true.i.i.i.flow_action_basic_hw_stats_check.exit.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %flow_action_basic_hw_stats_check.exit.i

land.lhs.true.i.i.i.if.end.i_crit_edge:           ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

flow_action_basic_hw_stats_check.exit.i:          ; preds = %land.lhs.true.i.i.i.flow_action_basic_hw_stats_check.exit.i_crit_edge, %land.lhs.true.i.i.i.i.flow_action_basic_hw_stats_check.exit.i_crit_edge
  %flow_action_mixed_hw_stats_check.__msg.sink.i.i.i = phi ptr [ @__flow_action_hw_stats_check.__msg, %land.lhs.true.i.i.i.flow_action_basic_hw_stats_check.exit.i_crit_edge ], [ @flow_action_mixed_hw_stats_check.__msg, %land.lhs.true.i.i.i.i.flow_action_basic_hw_stats_check.exit.i_crit_edge ]
  call void @do_trace_netlink_extack(ptr noundef nonnull %flow_action_mixed_hw_stats_check.__msg.sink.i.i.i) #9
  br label %clean_eth_rule

if.end.i:                                         ; preds = %land.lhs.true.i.i.i.if.end.i_crit_edge, %if.end26.if.end.i_crit_edge
  %entries.i = getelementptr inbounds %struct.flow_rule, ptr %13, i32 1
  %31 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %entries.i, align 8
  %33 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %32, label %if.end.i.clean_eth_rule_crit_edge [
    i32 20, label %if.end.i.if.end7.i_crit_edge
    i32 1, label %if.end.i.if.end7.i_crit_edge116
  ]

if.end.i.if.end7.i_crit_edge116:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i

if.end.i.clean_eth_rule_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %clean_eth_rule

if.end7.i:                                        ; preds = %if.end.i.if.end7.i_crit_edge, %if.end.i.if.end7.i_crit_edge116
  %34 = getelementptr inbounds %struct.flow_rule, ptr %13, i32 2
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i = icmp eq i32 %36, 0
  br i1 %tobool.not.i, label %if.end7.i.if.end11.i_crit_edge, label %land.lhs.true8.i

if.end7.i.if.end11.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.i

land.lhs.true8.i:                                 ; preds = %if.end7.i
  %index.i = getelementptr inbounds %struct.flow_rule, ptr %13, i32 2, i32 0, i32 1
  %37 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool9.not.i = icmp eq i32 %38, 0
  br i1 %tobool9.not.i, label %land.lhs.true8.i.if.end11.i_crit_edge, label %land.lhs.true8.i.clean_eth_rule_crit_edge

land.lhs.true8.i.clean_eth_rule_crit_edge:        ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %clean_eth_rule

land.lhs.true8.i.if.end11.i_crit_edge:            ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.i

if.end11.i:                                       ; preds = %land.lhs.true8.i.if.end11.i_crit_edge, %if.end7.i.if.end11.i_crit_edge
  %engine.i = getelementptr inbounds %struct.mvpp2_rfs_rule, ptr %call7.i.i, i32 0, i32 4
  %39 = ptrtoint ptr %engine.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %engine.i, align 2
  %40 = ptrtoint ptr %flow to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %flow, align 8
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 8
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 4
  %and.i.i.i.i = and i32 %45, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.i.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.i.not.i.i, label %if.end11.i.if.end49.i.i_crit_edge, label %if.then.i.i

if.end11.i.if.end49.i.i_crit_edge:                ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49.i.i

if.then.i.i:                                      ; preds = %if.end11.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match.i.i) #9
  %46 = ptrtoint ptr %match.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr inttoptr (i32 -1 to ptr), ptr %match.i.i, align 4, !annotation !27
  %47 = getelementptr inbounds %struct.flow_match_vlan, ptr %match.i.i, i32 0, i32 1
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr inttoptr (i32 -1 to ptr), ptr %47, align 4, !annotation !27
  call void @flow_rule_match_vlan(ptr noundef %41, ptr noundef nonnull %match.i.i) #9
  %49 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %47, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load2_noabort(i32 %51)
  %bf.load.i.i = load i16, ptr %50, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %bf.load.i.i)
  %tobool.not.i.i = icmp ult i16 %bf.load.i.i, 16
  br i1 %tobool.not.i.i, label %if.then.i.i.if.end.i.i_crit_edge, label %if.then2.i.i

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then2.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %hek_fields.i.i = getelementptr inbounds %struct.mvpp2_rfs_rule, ptr %call7.i.i, i32 0, i32 3
  %52 = ptrtoint ptr %hek_fields.i.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %hek_fields.i.i, align 4
  %54 = or i16 %53, 4
  store i16 %54, ptr %hek_fields.i.i, align 4
  %55 = ptrtoint ptr %match.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %match.i.i, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load2_noabort(i32 %57)
  %bf.load4.i.i = load i16, ptr %56, align 2
  %bf.lshr5.i.i = lshr i16 %bf.load4.i.i, 4
  %conv6.i.i = zext i16 %bf.lshr5.i.i to i64
  %c2_tcam.i.i = getelementptr inbounds %struct.mvpp2_rfs_rule, ptr %call7.i.i, i32 0, i32 5
  %58 = ptrtoint ptr %c2_tcam.i.i to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %c2_tcam.i.i, align 8
  %or7.i.i = or i64 %59, %conv6.i.i
  store i64 %or7.i.i, ptr %c2_tcam.i.i, align 8
  %60 = ptrtoint ptr %50 to i32
  call void @__asan_load2_noabort(i32 %60)
  %bf.load9.i.i = load i16, ptr %50, align 2
  %bf.lshr10.i.i = lshr i16 %bf.load9.i.i, 4
  %conv11.i.i = zext i16 %bf.lshr10.i.i to i64
  %c2_tcam_mask.i.i = getelementptr inbounds %struct.mvpp2_rfs_rule, ptr %call7.i.i, i32 0, i32 6
  %61 = ptrtoint ptr %c2_tcam_mask.i.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %c2_tcam_mask.i.i, align 8
  %or14.i.i = or i64 %62, %conv11.i.i
  store i64 %or14.i.i, ptr %c2_tcam_mask.i.i, align 8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then2.i.i, %if.then.i.i.if.end.i.i_crit_edge
  %63 = ptrtoint ptr %50 to i32
  call void @__asan_load2_noabort(i32 %63)
  %bf.load16.i.i = load i16, ptr %50, align 2
  %bf.clear.i.i = and i16 %bf.load16.i.i, 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.clear.i.i)
  %tobool17.not.i.i = icmp eq i16 %bf.clear.i.i, 0
  br i1 %tobool17.not.i.i, label %if.end.i.i.if.end40.i.i_crit_edge, label %if.then18.i.i

if.end.i.i.if.end40.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40.i.i

if.then18.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %hek_fields19.i.i = getelementptr inbounds %struct.mvpp2_rfs_rule, ptr %call7.i.i, i32 0, i32 3
  %64 = ptrtoint ptr %hek_fields19.i.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %hek_fields19.i.i, align 4
  %66 = or i16 %65, 2
  store i16 %66, ptr %hek_fields19.i.i, align 4
  %67 = ptrtoint ptr %match.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %match.i.i, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load2_noabort(i32 %69)
  %bf.load24.i.i = load i16, ptr %68, align 2
  %70 = shl i16 %bf.load24.i.i, 13
  %shl28.i.i = zext i16 %70 to i64
  %c2_tcam29.i.i = getelementptr inbounds %struct.mvpp2_rfs_rule, ptr %call7.i.i, i32 0, i32 5
  %71 = ptrtoint ptr %c2_tcam29.i.i to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %c2_tcam29.i.i, align 8
  %or30.i.i = or i64 %72, %shl28.i.i
  store i64 %or30.i.i, ptr %c2_tcam29.i.i, align 8
  %73 = ptrtoint ptr %50 to i32
  call void @__asan_load2_noabort(i32 %73)
  %bf.load32.i.i = load i16, ptr %50, align 2
  %74 = shl i16 %bf.load32.i.i, 13
  %shl37.i.i = zext i16 %74 to i64
  %c2_tcam_mask38.i.i = getelementptr inbounds %struct.mvpp2_rfs_rule, ptr %call7.i.i, i32 0, i32 6
  %75 = ptrtoint ptr %c2_tcam_mask38.i.i to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %c2_tcam_mask38.i.i, align 8
  %or39.i.i = or i64 %76, %shl37.i.i
  store i64 %or39.i.i, ptr %c2_tcam_mask38.i.i, align 8
  br label %if.end40.i.i

if.end40.i.i:                                     ; preds = %if.then18.i.i, %if.end.i.i.if.end40.i.i_crit_edge
  %77 = ptrtoint ptr %50 to i32
  call void @__asan_load2_noabort(i32 %77)
  %bf.load42.i.i = load i16, ptr %50, align 2
  %78 = and i16 %bf.load42.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %78)
  %tobool45.not.i.i = icmp eq i16 %78, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match.i.i) #9
  br i1 %tobool45.not.i.i, label %if.end40.i.i.if.end49.i.i_crit_edge, label %if.end40.i.i.clean_eth_rule_crit_edge

if.end40.i.i.clean_eth_rule_crit_edge:            ; preds = %if.end40.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %clean_eth_rule

if.end40.i.i.if.end49.i.i_crit_edge:              ; preds = %if.end40.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49.i.i

if.end49.i.i:                                     ; preds = %if.end40.i.i.if.end49.i.i_crit_edge, %if.end11.i.if.end49.i.i_crit_edge
  %offs.1.i.i = phi i32 [ 16, %if.end40.i.i.if.end49.i.i_crit_edge ], [ 0, %if.end11.i.if.end49.i.i_crit_edge ]
  %79 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %41, align 8
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %80, align 4
  %and.i.i322.i.i = and i32 %82, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i322.i.i)
  %tobool.i.i323.not.i.i = icmp eq i32 %and.i.i322.i.i, 0
  br i1 %tobool.i.i323.not.i.i, label %if.end49.i.i.if.end101.i.i_crit_edge, label %if.then51.i.i

if.end49.i.i.if.end101.i.i_crit_edge:             ; preds = %if.end49.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end101.i.i

if.then51.i.i:                                    ; preds = %if.end49.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match52.i.i) #9
  %83 = ptrtoint ptr %match52.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr inttoptr (i32 -1 to ptr), ptr %match52.i.i, align 4, !annotation !27
  %84 = getelementptr inbounds %struct.flow_match_ports, ptr %match52.i.i, i32 0, i32 1
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr inttoptr (i32 -1 to ptr), ptr %84, align 4, !annotation !27
  call void @flow_rule_match_ports(ptr noundef %41, ptr noundef nonnull %match52.i.i) #9
  %86 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %84, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %87, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %89)
  %tobool54.not.i.i = icmp eq i16 %89, 0
  br i1 %tobool54.not.i.i, label %if.then51.i.i.if.end76.i.i_crit_edge, label %if.then55.i.i

if.then51.i.i.if.end76.i.i_crit_edge:             ; preds = %if.then51.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end76.i.i

if.then55.i.i:                                    ; preds = %if.then51.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %hek_fields56.i.i = getelementptr inbounds %struct.mvpp2_rfs_rule, ptr %call7.i.i, i32 0, i32 3
  %90 = ptrtoint ptr %hek_fields56.i.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %hek_fields56.i.i, align 4
  %92 = or i16 %91, 256
  store i16 %92, ptr %hek_fields56.i.i, align 4
  %93 = ptrtoint ptr %match52.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %match52.i.i, align 4
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %94, align 4
  %conv62.i.i = zext i16 %96 to i64
  %sh_prom63.i.i = zext i32 %offs.1.i.i to i64
  %shl64.i.i = shl nuw nsw i64 %conv62.i.i, %sh_prom63.i.i
  %c2_tcam65.i.i = getelementptr inbounds %struct.mvpp2_rfs_rule, ptr %call7.i.i, i32 0, i32 5
  %97 = ptrtoint ptr %c2_tcam65.i.i to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %c2_tcam65.i.i, align 8
  %or66.i.i = or i64 %shl64.i.i, %98
  store i64 %or66.i.i, ptr %c2_tcam65.i.i, align 8
  %99 = ptrtoint ptr %87 to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %87, align 4
  %conv69.i.i = zext i16 %100 to i64
  %shl71.i.i = shl nuw nsw i64 %conv69.i.i, %sh_prom63.i.i
  %c2_tcam_mask72.i.i = getelementptr inbounds %struct.mvpp2_rfs_rule, ptr %call7.i.i, i32 0, i32 6
  %101 = ptrtoint ptr %c2_tcam_mask72.i.i to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %c2_tcam_mask72.i.i, align 8
  %or73.i.i = or i64 %shl71.i.i, %102
  store i64 %or73.i.i, ptr %c2_tcam_mask72.i.i, align 8
  %add75.i.i = add nuw nsw i32 %offs.1.i.i, 16
  br label %if.end76.i.i

if.end76.i.i:                                     ; preds = %if.then55.i.i, %if.then51.i.i.if.end76.i.i_crit_edge
  %offs.2.i.i = phi i32 [ %add75.i.i, %if.then55.i.i ], [ %offs.1.i.i, %if.then51.i.i.if.end76.i.i_crit_edge ]
  %dst.i.i = getelementptr inbounds %struct.anon.172, ptr %87, i32 0, i32 1
  %103 = ptrtoint ptr %dst.i.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %dst.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %104)
  %tobool78.not.i.i = icmp eq i16 %104, 0
  br i1 %tobool78.not.i.i, label %if.end76.i.i.if.end100.i.i_crit_edge, label %if.then79.i.i

if.end76.i.i.if.end100.i.i_crit_edge:             ; preds = %if.end76.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end100.i.i

if.then79.i.i:                                    ; preds = %if.end76.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %hek_fields80.i.i = getelementptr inbounds %struct.mvpp2_rfs_rule, ptr %call7.i.i, i32 0, i32 3
  %105 = ptrtoint ptr %hek_fields80.i.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %hek_fields80.i.i, align 4
  %107 = or i16 %106, 512
  store i16 %107, ptr %hek_fields80.i.i, align 4
  %108 = ptrtoint ptr %match52.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %match52.i.i, align 4
  %dst85.i.i = getelementptr inbounds %struct.anon.172, ptr %109, i32 0, i32 1
  %110 = ptrtoint ptr %dst85.i.i to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %dst85.i.i, align 2
  %conv86.i.i = zext i16 %111 to i64
  %sh_prom87.i.i = zext i32 %offs.2.i.i to i64
  %shl88.i.i = shl nuw nsw i64 %conv86.i.i, %sh_prom87.i.i
  %c2_tcam89.i.i = getelementptr inbounds %struct.mvpp2_rfs_rule, ptr %call7.i.i, i32 0, i32 5
  %112 = ptrtoint ptr %c2_tcam89.i.i to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %c2_tcam89.i.i, align 8
  %or90.i.i = or i64 %shl88.i.i, %113
  store i64 %or90.i.i, ptr %c2_tcam89.i.i, align 8
  %114 = ptrtoint ptr %dst.i.i to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %dst.i.i, align 2
  %conv93.i.i = zext i16 %115 to i64
  %shl95.i.i = shl nuw nsw i64 %conv93.i.i, %sh_prom87.i.i
  %c2_tcam_mask96.i.i = getelementptr inbounds %struct.mvpp2_rfs_rule, ptr %call7.i.i, i32 0, i32 6
  %116 = ptrtoint ptr %c2_tcam_mask96.i.i to i32
  call void @__asan_load8_noabort(i32 %116)
  %117 = load i64, ptr %c2_tcam_mask96.i.i, align 8
  %or97.i.i = or i64 %shl95.i.i, %117
  store i64 %or97.i.i, ptr %c2_tcam_mask96.i.i, align 8
  br label %if.end100.i.i

if.end100.i.i:                                    ; preds = %if.then79.i.i, %if.end76.i.i.if.end100.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match52.i.i) #9
  br label %if.end101.i.i

if.end101.i.i:                                    ; preds = %if.end100.i.i, %if.end49.i.i.if.end101.i.i_crit_edge
  %hek_fields102.i.i = getelementptr inbounds %struct.mvpp2_rfs_rule, ptr %call7.i.i, i32 0, i32 3
  %118 = ptrtoint ptr %hek_fields102.i.i to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %hek_fields102.i.i, align 4
  %conv258.i.i = zext i16 %119 to i32
  %call.i.i.i = call i32 @__sw_hweight16(i32 noundef %conv258.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i.i)
  %cmp.i.i = icmp ugt i32 %call.i.i.i, 4
  br i1 %cmp.i.i, label %if.end101.i.i.clean_eth_rule_crit_edge, label %if.end31

if.end101.i.i.clean_eth_rule_crit_edge:           ; preds = %if.end101.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %clean_eth_rule

if.end31:                                         ; preds = %if.end101.i.i
  %120 = ptrtoint ptr %location to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %location, align 8
  %122 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %121, ptr %call7.i.i, align 8
  %arrayidx = getelementptr %struct.mvpp2_port, ptr %port, i32 0, i32 39, i32 %121
  %123 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %arrayidx, align 4
  %tobool37.not = icmp eq ptr %124, null
  br i1 %tobool37.not, label %if.end31.if.end48_crit_edge, label %if.then38

if.end31.if.end48_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.then38:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @mvpp2_port_cls_rfs_rule_remove(ptr noundef %port, ptr noundef nonnull %124)
  call void @kfree(ptr noundef nonnull %124) #9
  %n_rfs_rules = getelementptr inbounds %struct.mvpp2_port, ptr %port, i32 0, i32 40
  %125 = ptrtoint ptr %n_rfs_rules to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %n_rfs_rules, align 4
  %dec = add i32 %126, -1
  store i32 %dec, ptr %n_rfs_rules, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then38, %if.end31.if.end48_crit_edge
  %priv1.i = getelementptr inbounds %struct.mvpp2_port, ptr %port, i32 0, i32 3
  %127 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %priv1.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %fe.i) #9
  %129 = getelementptr inbounds %struct.mvpp2_cls_flow_entry, ptr %fe.i, i32 0, i32 1
  %130 = getelementptr inbounds %struct.mvpp2_cls_flow_entry, ptr %fe.i, i32 0, i32 1, i32 1
  %131 = getelementptr inbounds %struct.mvpp2_cls_flow_entry, ptr %fe.i, i32 0, i32 1, i32 2
  %132 = call ptr @memset(ptr %fe.i, i32 255, i32 16)
  %133 = ptrtoint ptr %engine.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %engine.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %134)
  %cmp.not.i = icmp eq i8 %134, 1
  br i1 %cmp.not.i, label %if.end.i102, label %if.end48.mvpp2_port_flt_rfs_rule_insert.exit_crit_edge

if.end48.mvpp2_port_flt_rfs_rule_insert.exit_crit_edge: ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %mvpp2_port_flt_rfs_rule_insert.exit

if.end.i102:                                      ; preds = %if.end48
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %c2.i.i.i) #9
  %135 = ptrtoint ptr %flow to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %flow, align 8
  %action.i.i.i = getelementptr inbounds %struct.flow_rule, ptr %136, i32 0, i32 1
  %137 = ptrtoint ptr %action.i.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %action.i.i.i, align 8
  %139 = zext i32 %138 to i64
  call void @__sanitizer_cov_trace_switch(i64 %139, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %138, label %for.body.preheader.i.i.i.i.i.i [
    i32 0, label %if.end.i102.if.end.i.i.i_crit_edge
    i32 1, label %if.end.i102.flow_action_first_entry_get.exit.i.i.i.i.i_crit_edge
  ]

if.end.i102.flow_action_first_entry_get.exit.i.i.i.i.i_crit_edge: ; preds = %if.end.i102
  call void @__sanitizer_cov_trace_pc() #11
  br label %flow_action_first_entry_get.exit.i.i.i.i.i

if.end.i102.if.end.i.i.i_crit_edge:               ; preds = %if.end.i102
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i.i

for.body.preheader.i.i.i.i.i.i:                   ; preds = %if.end.i102
  %entries.i.i.i.i.i.i = getelementptr inbounds %struct.flow_rule, ptr %136, i32 1
  br label %for.body.i.i.i.i.i.i

for.body.i.i.i.i.i.i:                             ; preds = %if.end7.i.i.i.i.i.i.for.body.i.i.i.i.i.i_crit_edge, %for.body.preheader.i.i.i.i.i.i
  %i.04.i.i.i.i.i.i = phi i32 [ %inc.i.i.i.i.i.i, %if.end7.i.i.i.i.i.i.for.body.i.i.i.i.i.i_crit_edge ], [ 0, %for.body.preheader.i.i.i.i.i.i ]
  %last_hw_stats.03.i.i.i.i.i.i = phi i32 [ %143, %if.end7.i.i.i.i.i.i.for.body.i.i.i.i.i.i_crit_edge ], [ 255, %for.body.preheader.i.i.i.i.i.i ]
  %action_entry.02.i.i.i.i.i.i = phi ptr [ %arrayidx11.i.i.i.i.i.i, %if.end7.i.i.i.i.i.i.for.body.i.i.i.i.i.i_crit_edge ], [ %entries.i.i.i.i.i.i, %for.body.preheader.i.i.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.04.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %i.04.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %for.body.i.i.i.i.i.i.if.end7.i.i.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i.i.i

for.body.i.i.i.i.i.i.if.end7.i.i.i.i.i.i_crit_edge: ; preds = %for.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i.i.i.i.i.i

land.lhs.true.i.i.i.i.i.i:                        ; preds = %for.body.i.i.i.i.i.i
  %hw_stats.i.i.i.i.i.i = getelementptr inbounds %struct.flow_action_entry, ptr %action_entry.02.i.i.i.i.i.i, i32 0, i32 2
  %140 = ptrtoint ptr %hw_stats.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %hw_stats.i.i.i.i.i.i, align 8
  %conv.i.i.i.i.i.i = and i32 %last_hw_stats.03.i.i.i.i.i.i, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %141, i32 %conv.i.i.i.i.i.i)
  %cmp1.not.i.i.i.i.i.i = icmp eq i32 %141, %conv.i.i.i.i.i.i
  br i1 %cmp1.not.i.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.i.if.end7.i.i.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i.i.i.flow_action_basic_hw_stats_check.exit.i.i.i_crit_edge

land.lhs.true.i.i.i.i.i.i.flow_action_basic_hw_stats_check.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %flow_action_basic_hw_stats_check.exit.i.i.i

land.lhs.true.i.i.i.i.i.i.if.end7.i.i.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i.i.i.i.i.i

if.end7.i.i.i.i.i.i:                              ; preds = %land.lhs.true.i.i.i.i.i.i.if.end7.i.i.i.i.i.i_crit_edge, %for.body.i.i.i.i.i.i.if.end7.i.i.i.i.i.i_crit_edge
  %hw_stats8.i.i.i.i.i.i = getelementptr inbounds %struct.flow_action_entry, ptr %action_entry.02.i.i.i.i.i.i, i32 0, i32 2
  %142 = ptrtoint ptr %hw_stats8.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %hw_stats8.i.i.i.i.i.i, align 8
  %inc.i.i.i.i.i.i = add nuw i32 %i.04.i.i.i.i.i.i, 1
  %arrayidx11.i.i.i.i.i.i = getelementptr %struct.flow_rule, ptr %136, i32 0, i32 1, i32 1, i32 %inc.i.i.i.i.i.i
  %exitcond.not.i.i.i.i.i.i = icmp eq i32 %inc.i.i.i.i.i.i, %138
  br i1 %exitcond.not.i.i.i.i.i.i, label %if.end3.i.i.i.i.i, label %if.end7.i.i.i.i.i.i.for.body.i.i.i.i.i.i_crit_edge

if.end7.i.i.i.i.i.i.for.body.i.i.i.i.i.i_crit_edge: ; preds = %if.end7.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i.i.i.i.i

if.end3.i.i.i.i.i:                                ; preds = %if.end7.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %tobool.i.not.i.i.i.i.i.i = icmp eq i32 %138, 0
  br i1 %tobool.i.not.i.i.i.i.i.i, label %do.end.i.i.i.i.i.i, label %if.end3.i.i.i.i.i.flow_action_first_entry_get.exit.i.i.i.i.i_crit_edge, !prof !25

if.end3.i.i.i.i.i.flow_action_first_entry_get.exit.i.i.i.i.i_crit_edge: ; preds = %if.end3.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %flow_action_first_entry_get.exit.i.i.i.i.i

do.end.i.i.i.i.i.i:                               ; preds = %if.end3.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 334, i32 noundef 9, ptr noundef null) #9
  br label %flow_action_first_entry_get.exit.i.i.i.i.i

flow_action_first_entry_get.exit.i.i.i.i.i:       ; preds = %do.end.i.i.i.i.i.i, %if.end3.i.i.i.i.i.flow_action_first_entry_get.exit.i.i.i.i.i_crit_edge, %if.end.i102.flow_action_first_entry_get.exit.i.i.i.i.i_crit_edge
  %hw_stats.i.i.i.i.i = getelementptr inbounds %struct.flow_rule, ptr %136, i32 1, i32 0, i32 2
  %144 = ptrtoint ptr %hw_stats.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %hw_stats.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %tobool.not.i.i.i.i.i = icmp eq i32 %145, 0
  br i1 %tobool.not.i.i.i.i.i, label %land.rhs.i.i.i.i.i, label %flow_action_first_entry_get.exit.i.i.i.i.i.land.lhs.true.i.i.i.i.i_crit_edge

flow_action_first_entry_get.exit.i.i.i.i.i.land.lhs.true.i.i.i.i.i_crit_edge: ; preds = %flow_action_first_entry_get.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i.i.i.i.i

land.rhs.i.i.i.i.i:                               ; preds = %flow_action_first_entry_get.exit.i.i.i.i.i
  %.b1.i.i.i.i.i = load i1, ptr @__flow_action_hw_stats_check.__already_done, align 1
  br i1 %.b1.i.i.i.i.i, label %land.rhs.i.i.i.i.i.land.lhs.true.i.i.i.i.i_crit_edge, label %if.then14.i.i.i.i.i, !prof !26

land.rhs.i.i.i.i.i.land.lhs.true.i.i.i.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i.i.i.i.i

if.then14.i.i.i.i.i:                              ; preds = %land.rhs.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__flow_action_hw_stats_check.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 354, i32 noundef 9, ptr noundef null) #9
  br label %land.lhs.true.i.i.i.i.i

land.lhs.true.i.i.i.i.i:                          ; preds = %if.then14.i.i.i.i.i, %land.rhs.i.i.i.i.i.land.lhs.true.i.i.i.i.i_crit_edge, %flow_action_first_entry_get.exit.i.i.i.i.i.land.lhs.true.i.i.i.i.i_crit_edge
  %146 = ptrtoint ptr %hw_stats.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %hw_stats.i.i.i.i.i, align 8
  %neg.i.i.i.i.i = and i32 %147, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %neg.i.i.i.i.i)
  %tobool46.not.i.i.i.i.i = icmp eq i32 %neg.i.i.i.i.i, 3
  br i1 %tobool46.not.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.if.end.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i.i.flow_action_basic_hw_stats_check.exit.i.i.i_crit_edge

land.lhs.true.i.i.i.i.i.flow_action_basic_hw_stats_check.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %flow_action_basic_hw_stats_check.exit.i.i.i

land.lhs.true.i.i.i.i.i.if.end.i.i.i_crit_edge:   ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i.i

flow_action_basic_hw_stats_check.exit.i.i.i:      ; preds = %land.lhs.true.i.i.i.i.i.flow_action_basic_hw_stats_check.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.i.i.flow_action_basic_hw_stats_check.exit.i.i.i_crit_edge
  %flow_action_mixed_hw_stats_check.__msg.sink.i.i.i.i.i = phi ptr [ @__flow_action_hw_stats_check.__msg, %land.lhs.true.i.i.i.i.i.flow_action_basic_hw_stats_check.exit.i.i.i_crit_edge ], [ @flow_action_mixed_hw_stats_check.__msg, %land.lhs.true.i.i.i.i.i.i.flow_action_basic_hw_stats_check.exit.i.i.i_crit_edge ]
  call void @do_trace_netlink_extack(ptr noundef nonnull %flow_action_mixed_hw_stats_check.__msg.sink.i.i.i.i.i) #9
  br label %mvpp2_port_c2_rfs_rule_insert.exit.thread.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i.i.i.if.end.i.i.i_crit_edge, %if.end.i102.if.end.i.i.i_crit_edge
  %148 = getelementptr inbounds i8, ptr %c2.i.i.i, i32 24
  %149 = call ptr @memset(ptr %148, i32 0, i32 28)
  %150 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %call7.i.i, align 8
  %152 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %port, align 8
  %conv.i.i.i.i103 = zext i8 %153 to i32
  %mul.i.i.i.i = mul nuw nsw i32 %conv.i.i.i.i103, 5
  %add.i.i.i.i = add i32 %mul.i.i.i.i, %151
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i.i.i.i)
  %cmp.i.i.i = icmp slt i32 %add.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end.i.i.i.mvpp2_port_c2_rfs_rule_insert.exit.thread.i_crit_edge, label %if.end3.i.i.i104

if.end.i.i.i.mvpp2_port_c2_rfs_rule_insert.exit.thread.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mvpp2_port_c2_rfs_rule_insert.exit.thread.i

if.end3.i.i.i104:                                 ; preds = %if.end.i.i.i
  %154 = ptrtoint ptr %c2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %add.i.i.i.i, ptr %c2.i.i.i, align 4
  %155 = ptrtoint ptr %flow to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %flow, align 8
  %entries.i.i.i = getelementptr inbounds %struct.flow_rule, ptr %156, i32 1
  %c2_index.i.i.i = getelementptr inbounds %struct.mvpp2_rfs_rule, ptr %call7.i.i, i32 0, i32 2
  %157 = ptrtoint ptr %c2_index.i.i.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %add.i.i.i.i, ptr %c2_index.i.i.i, align 8
  %c2_tcam.i.i.i = getelementptr inbounds %struct.mvpp2_rfs_rule, ptr %call7.i.i, i32 0, i32 5
  %158 = ptrtoint ptr %c2_tcam.i.i.i to i32
  call void @__asan_load8_noabort(i32 %158)
  %159 = load i64, ptr %c2_tcam.i.i.i, align 8
  %and.i.i.i = and i64 %159, 65535
  %c2_tcam_mask.i.i.i = getelementptr inbounds %struct.mvpp2_rfs_rule, ptr %call7.i.i, i32 0, i32 6
  %160 = ptrtoint ptr %c2_tcam_mask.i.i.i to i32
  call void @__asan_load8_noabort(i32 %160)
  %161 = load i64, ptr %c2_tcam_mask.i.i.i, align 8
  %and8.i.i.i = shl i64 %161, 16
  %or.i.i.i = or i64 %and8.i.i.i, %and.i.i.i
  %conv.i.i.i = trunc i64 %or.i.i.i to i32
  %tcam.i.i.i = getelementptr inbounds %struct.mvpp2_cls_c2_entry, ptr %c2.i.i.i, i32 0, i32 1
  %arrayidx9.i.i.i = getelementptr inbounds %struct.mvpp2_cls_c2_entry, ptr %c2.i.i.i, i32 0, i32 1, i32 3
  %162 = ptrtoint ptr %arrayidx9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %conv.i.i.i, ptr %arrayidx9.i.i.i, align 4
  %shr.i.i.i = lshr i64 %159, 16
  %and11.i.i.i = and i64 %shr.i.i.i, 65535
  %and14.i.i.i = and i64 %161, 4294901760
  %or16.i.i.i = or i64 %and11.i.i.i, %and14.i.i.i
  %conv17.i.i.i = trunc i64 %or16.i.i.i to i32
  %arrayidx19.i.i.i = getelementptr inbounds %struct.mvpp2_cls_c2_entry, ptr %c2.i.i.i, i32 0, i32 1, i32 2
  %163 = ptrtoint ptr %arrayidx19.i.i.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %conv17.i.i.i, ptr %arrayidx19.i.i.i, align 4
  %shr21.i.i.i = lshr i64 %159, 32
  %and22.i.i.i = and i64 %shr21.i.i.i, 65535
  %164 = lshr i64 %161, 16
  %shl26.i.i.i = and i64 %164, 4294901760
  %or27.i.i.i = or i64 %shl26.i.i.i, %and22.i.i.i
  %conv28.i.i.i = trunc i64 %or27.i.i.i to i32
  %arrayidx30.i.i.i = getelementptr inbounds %struct.mvpp2_cls_c2_entry, ptr %c2.i.i.i, i32 0, i32 1, i32 1
  %165 = ptrtoint ptr %arrayidx30.i.i.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %conv28.i.i.i, ptr %arrayidx30.i.i.i, align 4
  %shr32.i.i.i = lshr i64 %159, 48
  %166 = lshr i64 %161, 32
  %shl37.i.i.i = and i64 %166, 4294901760
  %or38.i.i.i = or i64 %shl37.i.i.i, %shr32.i.i.i
  %conv39.i.i.i = trunc i64 %or38.i.i.i to i32
  %167 = ptrtoint ptr %tcam.i.i.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %conv39.i.i.i, ptr %tcam.i.i.i, align 4
  %conv45.i.i.i = shl i32 256, %conv.i.i.i.i103
  %shl46.i.i.i = and i32 %conv45.i.i.i, 65280
  %arrayidx48.i.i.i = getelementptr inbounds %struct.mvpp2_cls_c2_entry, ptr %c2.i.i.i, i32 0, i32 1, i32 4
  %shl51.i.i.i = shl i32 %conv45.i.i.i, 16
  %or54.i.i.i = or i32 %shl46.i.i.i, %shl51.i.i.i
  %and59.i.i.i = and i32 %151, 63
  %or57.i.i.i = or i32 %or54.i.i.i, %and59.i.i.i
  %or62.i.i.i = or i32 %or57.i.i.i, 4128768
  %168 = ptrtoint ptr %arrayidx48.i.i.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %or62.i.i.i, ptr %arrayidx48.i.i.i, align 4
  %169 = ptrtoint ptr %entries.i.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %entries.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %170)
  %cmp64.i.i.i = icmp eq i32 %170, 1
  br i1 %cmp64.i.i.i, label %if.then66.i.i.i, label %if.else.i.i.i

if.then66.i.i.i:                                  ; preds = %if.end3.i.i.i104
  call void @__sanitizer_cov_trace_pc() #11
  %171 = ptrtoint ptr %148 to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 7, ptr %148, align 4
  br label %mvpp2_port_c2_rfs_rule_insert.exit.i

if.else.i.i.i:                                    ; preds = %if.end3.i.i.i104
  %172 = getelementptr inbounds %struct.flow_rule, ptr %156, i32 2
  %173 = ptrtoint ptr %172 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %172, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %174)
  %tobool.not.i.i.i105 = icmp eq i32 %174, 0
  br i1 %tobool.not.i.i.i105, label %if.else93.i.i.i, label %if.then81.i.i.i

if.then81.i.i.i:                                  ; preds = %if.else.i.i.i
  %arrayidx71.i.i.i = getelementptr inbounds %struct.mvpp2_cls_c2_entry, ptr %c2.i.i.i, i32 0, i32 3, i32 2
  %175 = ptrtoint ptr %arrayidx71.i.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %arrayidx71.i.i.i, align 4
  %or72.i.i.i = or i32 %176, 1073741824
  store i32 %or72.i.i.i, ptr %arrayidx71.i.i.i, align 4
  %177 = ptrtoint ptr %148 to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 1605120, ptr %148, align 4
  %arrayidx.i.i.i.i = getelementptr %struct.mvpp2_port, ptr %port, i32 0, i32 41, i32 %174
  %178 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %arrayidx.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %179)
  %cmp84.i.i.i = icmp slt i32 %179, 0
  br i1 %cmp84.i.i.i, label %if.then81.i.i.i.mvpp2_port_c2_rfs_rule_insert.exit.thread.i_crit_edge, label %if.then81.i.i.i.if.end105.i.i.i_crit_edge

if.then81.i.i.i.if.end105.i.i.i_crit_edge:        ; preds = %if.then81.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end105.i.i.i

if.then81.i.i.i.mvpp2_port_c2_rfs_rule_insert.exit.thread.i_crit_edge: ; preds = %if.then81.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mvpp2_port_c2_rfs_rule_insert.exit.thread.i

if.else93.i.i.i:                                  ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %180 = ptrtoint ptr %148 to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 1605120, ptr %148, align 4
  %index94.i.i.i = getelementptr inbounds %struct.flow_rule, ptr %156, i32 2, i32 0, i32 1
  %181 = ptrtoint ptr %index94.i.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %index94.i.i.i, align 4
  %first_rxq.i.i.i = getelementptr inbounds %struct.mvpp2_port, ptr %port, i32 0, i32 34
  %183 = ptrtoint ptr %first_rxq.i.i.i to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %first_rxq.i.i.i, align 8
  %conv95.i.i.i = zext i8 %184 to i32
  %add.i.i.i = add i32 %182, %conv95.i.i.i
  br label %if.end105.i.i.i

if.end105.i.i.i:                                  ; preds = %if.else93.i.i.i, %if.then81.i.i.i.if.end105.i.i.i_crit_edge
  %ql.0.in.i.i.i = phi i32 [ %add.i.i.i, %if.else93.i.i.i ], [ %179, %if.then81.i.i.i.if.end105.i.i.i_crit_edge ]
  %185 = shl i32 %ql.0.in.i.i.i, 21
  %or112.i.i.i = and i32 %185, 534773760
  %attr113.i.i.i = getelementptr inbounds %struct.mvpp2_cls_c2_entry, ptr %c2.i.i.i, i32 0, i32 3
  %186 = ptrtoint ptr %attr113.i.i.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 %or112.i.i.i, ptr %attr113.i.i.i, align 4
  br label %mvpp2_port_c2_rfs_rule_insert.exit.i

mvpp2_port_c2_rfs_rule_insert.exit.thread.i:      ; preds = %if.then81.i.i.i.mvpp2_port_c2_rfs_rule_insert.exit.thread.i_crit_edge, %if.end.i.i.i.mvpp2_port_c2_rfs_rule_insert.exit.thread.i_crit_edge, %flow_action_basic_hw_stats_check.exit.i.i.i
  %retval.0.i.i.ph.i = phi i32 [ -22, %if.then81.i.i.i.mvpp2_port_c2_rfs_rule_insert.exit.thread.i_crit_edge ], [ -22, %if.end.i.i.i.mvpp2_port_c2_rfs_rule_insert.exit.thread.i_crit_edge ], [ -95, %flow_action_basic_hw_stats_check.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %c2.i.i.i) #9
  br label %mvpp2_port_flt_rfs_rule_insert.exit

mvpp2_port_c2_rfs_rule_insert.exit.i:             ; preds = %if.end105.i.i.i, %if.then66.i.i.i
  %valid.i.i.i = getelementptr inbounds %struct.mvpp2_cls_c2_entry, ptr %c2.i.i.i, i32 0, i32 4
  %187 = ptrtoint ptr %valid.i.i.i to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 1, ptr %valid.i.i.i, align 4
  %188 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %priv1.i, align 4
  call fastcc void @mvpp2_cls_c2_write(ptr noundef %189, ptr noundef nonnull %c2.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %c2.i.i.i) #9
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %mvpp2_port_c2_rfs_rule_insert.exit.i
  %i.091.i = phi i32 [ 0, %mvpp2_port_c2_rfs_rule_insert.exit.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.091.i)
  %cmp7.not.i = icmp eq i32 %i.091.i, 0
  br i1 %cmp7.not.i, label %for.body.i.if.else.i_crit_edge, label %land.lhs.true.i

for.body.i.if.else.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %flow_id.i = getelementptr [52 x %struct.mvpp2_cls_flow], ptr @cls_flows, i32 0, i32 %i.091.i, i32 1
  %190 = ptrtoint ptr %flow_id.i to i32
  call void @__asan_load2_noabort(i32 %190)
  %191 = load i16, ptr %flow_id.i, align 4
  %sub.i = add nsw i32 %i.091.i, -1
  %flow_id11.i = getelementptr [52 x %struct.mvpp2_cls_flow], ptr @cls_flows, i32 0, i32 %sub.i, i32 1
  %192 = ptrtoint ptr %flow_id11.i to i32
  call void @__asan_load2_noabort(i32 %192)
  %193 = load i16, ptr %flow_id11.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %191, i16 %193)
  %cmp13.i = icmp eq i16 %191, %193
  br i1 %cmp13.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %for.body.i.if.else.i_crit_edge
  %arrayidx16.i = getelementptr [52 x %struct.mvpp2_cls_flow], ptr @cls_flows, i32 0, i32 %i.091.i
  %194 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %arrayidx16.i, align 4
  %196 = ptrtoint ptr %flow_type19109 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %flow_type19109, align 4
  %and.i106 = and i32 %197, %195
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i106, i32 %197)
  %cmp19.not.i = icmp eq i32 %and.i106, %197
  br i1 %cmp19.not.i, label %if.else22.i, label %if.else.i.for.inc.i_crit_edge

if.else.i.for.inc.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.else22.i:                                      ; preds = %if.else.i
  %tobool24.not.i = icmp eq ptr %arrayidx16.i, null
  br i1 %tobool24.not.i, label %if.else22.i.if.end53_crit_edge, label %if.end26.i

if.else22.i.if.end53_crit_edge:                   ; preds = %if.else22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

if.end26.i:                                       ; preds = %if.else22.i
  %198 = ptrtoint ptr %hek_fields102.i.i to i32
  call void @__asan_load2_noabort(i32 %198)
  %199 = load i16, ptr %hek_fields102.i.i, align 4
  %supported_hash_opts.i = getelementptr [52 x %struct.mvpp2_cls_flow], ptr @cls_flows, i32 0, i32 %i.091.i, i32 2
  %200 = ptrtoint ptr %supported_hash_opts.i to i32
  call void @__asan_load2_noabort(i32 %200)
  %201 = load i16, ptr %supported_hash_opts.i, align 2
  %and2977.i = and i16 %201, %199
  call void @__sanitizer_cov_trace_cmp2(i16 %and2977.i, i16 %199)
  %cmp32.not.i = icmp eq i16 %and2977.i, %199
  br i1 %cmp32.not.i, label %if.end35.i, label %if.end26.i.for.inc.i_crit_edge

if.end26.i.for.inc.i_crit_edge:                   ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end35.i:                                       ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #11
  %flow_id36.i = getelementptr [52 x %struct.mvpp2_cls_flow], ptr @cls_flows, i32 0, i32 %i.091.i, i32 1
  %202 = ptrtoint ptr %flow_id36.i to i32
  call void @__asan_load2_noabort(i32 %202)
  %203 = load i16, ptr %flow_id36.i, align 4
  %conv37.i = zext i16 %203 to i32
  %204 = mul nuw nsw i32 %conv37.i, 21
  %mul.i = add nsw i32 %204, -168
  %205 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %port, align 8
  %conv39.i = zext i8 %206 to i32
  %mul40.i = shl nuw nsw i32 %conv39.i, 2
  %207 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %call7.i.i, align 8
  %add.i = add i32 %mul.i, %208
  %add41.i = add i32 %add.i, %mul40.i
  %209 = ptrtoint ptr %fe.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 %add41.i, ptr %fe.i, align 4
  call void @mvpp2_write(ptr noundef %128, i32 noundef 6176, i32 noundef %add41.i) #9
  %call.i.i = call i32 @mvpp2_read(ptr noundef %128, i32 noundef 6180) #9
  %call2.i.i = call i32 @mvpp2_read(ptr noundef %128, i32 noundef 6184) #9
  %210 = ptrtoint ptr %130 to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 %call2.i.i, ptr %130, align 4
  %call5.i.i = call i32 @mvpp2_read(ptr noundef %128, i32 noundef 6188) #9
  %211 = ptrtoint ptr %131 to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 %call5.i.i, ptr %131, align 4
  %212 = ptrtoint ptr %engine.i to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %engine.i, align 2
  %conv43.i = zext i8 %213 to i32
  %and.i.i = and i32 %call.i.i, -8388623
  %shl.i.i = shl nuw nsw i32 %conv43.i, 1
  %or.i.i = or i32 %and.i.i, %shl.i.i
  %or.i80.i = or i32 %or.i.i, 8388608
  %214 = ptrtoint ptr %129 to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 %or.i80.i, ptr %129, align 4
  %215 = ptrtoint ptr %hek_fields102.i.i to i32
  call void @__asan_load2_noabort(i32 %215)
  %216 = load i16, ptr %hek_fields102.i.i, align 4
  %conv45.i = zext i16 %216 to i32
  %call46.i = call fastcc i32 @mvpp2_flow_set_hek_fields(ptr noundef nonnull %fe.i, i32 noundef %conv45.i) #9
  %217 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %call7.i.i, align 8
  %219 = ptrtoint ptr %130 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %130, align 4
  %and.i82.i = and i32 %220, -505
  %221 = shl i32 %218, 3
  %shl.i83.i = and i32 %221, 504
  %or.i84.i = or i32 %and.i82.i, %shl.i83.i
  store i32 %or.i84.i, ptr %130, align 4
  %222 = ptrtoint ptr %129 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %129, align 4
  %or.i86.i = or i32 %223, 240
  store i32 %or.i86.i, ptr %129, align 4
  %224 = ptrtoint ptr %fe.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %fe.i, align 4
  call void @mvpp2_write(ptr noundef %128, i32 noundef 6176, i32 noundef %225) #9
  call void @mvpp2_write(ptr noundef %128, i32 noundef 6180, i32 noundef %or.i86.i) #9
  call void @mvpp2_write(ptr noundef %128, i32 noundef 6184, i32 noundef %or.i84.i) #9
  %226 = ptrtoint ptr %131 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %131, align 4
  call void @mvpp2_write(ptr noundef %128, i32 noundef 6188, i32 noundef %227) #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end35.i, %if.end26.i.for.inc.i_crit_edge, %if.else.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.091.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 52
  br i1 %exitcond.not.i, label %for.inc.i.if.end53_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.if.end53_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

mvpp2_port_flt_rfs_rule_insert.exit:              ; preds = %mvpp2_port_c2_rfs_rule_insert.exit.thread.i, %if.end48.mvpp2_port_flt_rfs_rule_insert.exit_crit_edge
  %retval.0.i107 = phi i32 [ -95, %if.end48.mvpp2_port_flt_rfs_rule_insert.exit_crit_edge ], [ %retval.0.i.i.ph.i, %mvpp2_port_c2_rfs_rule_insert.exit.thread.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %fe.i) #9
  br label %clean_eth_rule

if.end53:                                         ; preds = %for.inc.i.if.end53_crit_edge, %if.else22.i.if.end53_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %fe.i) #9
  call void @ethtool_rx_flow_rule_destroy(ptr noundef %call9) #9
  %228 = ptrtoint ptr %flow to i32
  call void @__asan_store4_noabort(i32 %228)
  store ptr null, ptr %flow, align 8
  %rxnfc = getelementptr inbounds %struct.mvpp2_ethtool_fs, ptr %call7.i.i, i32 0, i32 1
  %229 = call ptr @memcpy(ptr %rxnfc, ptr %info, i32 192)
  %230 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %call7.i.i, align 8
  %arrayidx59 = getelementptr %struct.mvpp2_port, ptr %port, i32 0, i32 39, i32 %231
  %232 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_store4_noabort(i32 %232)
  store ptr %call7.i.i, ptr %arrayidx59, align 4
  %n_rfs_rules60 = getelementptr inbounds %struct.mvpp2_port, ptr %port, i32 0, i32 40
  %233 = ptrtoint ptr %n_rfs_rules60 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %n_rfs_rules60, align 4
  %inc = add i32 %234, 1
  store i32 %inc, ptr %n_rfs_rules60, align 4
  br label %cleanup

clean_eth_rule:                                   ; preds = %mvpp2_port_flt_rfs_rule_insert.exit, %if.end101.i.i.clean_eth_rule_crit_edge, %if.end40.i.i.clean_eth_rule_crit_edge, %land.lhs.true8.i.clean_eth_rule_crit_edge, %if.end.i.clean_eth_rule_crit_edge, %flow_action_basic_hw_stats_check.exit.i
  %ret.0 = phi i32 [ %retval.0.i107, %mvpp2_port_flt_rfs_rule_insert.exit ], [ -95, %land.lhs.true8.i.clean_eth_rule_crit_edge ], [ -95, %if.end.i.clean_eth_rule_crit_edge ], [ -95, %flow_action_basic_hw_stats_check.exit.i ], [ -22, %if.end101.i.i.clean_eth_rule_crit_edge ], [ -22, %if.end40.i.i.clean_eth_rule_crit_edge ]
  call void @ethtool_rx_flow_rule_destroy(ptr noundef %call9) #9
  br label %clean_rule

clean_rule:                                       ; preds = %clean_eth_rule, %mvpp2_cls_ethtool_flow_to_type.exit, %if.then11
  %ret.1 = phi i32 [ %11, %if.then11 ], [ %ret.0, %clean_eth_rule ], [ -95, %mvpp2_cls_ethtool_flow_to_type.exit ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %clean_rule, %if.end53, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %clean_rule ], [ 0, %if.end53 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %input) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ethtool_rx_flow_rule_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mvpp2_port_cls_rfs_rule_remove(ptr nocapture noundef readonly %port, ptr nocapture noundef readonly %rule) unnamed_addr #0 align 64 {
entry:
  %c2.i = alloca %struct.mvpp2_cls_c2_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %flow_type8 = getelementptr inbounds %struct.mvpp2_rfs_rule, ptr %rule, i32 0, i32 1
  %priv = getelementptr inbounds %struct.mvpp2_port, ptr %port, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.08 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.08)
  %cmp1.not = icmp eq i32 %i.08, 0
  br i1 %cmp1.not, label %for.body.if.else_crit_edge, label %land.lhs.true

for.body.if.else_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %for.body
  %flow_id = getelementptr [52 x %struct.mvpp2_cls_flow], ptr @cls_flows, i32 0, i32 %i.08, i32 1
  %0 = ptrtoint ptr %flow_id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %flow_id, align 4
  %sub = add nsw i32 %i.08, -1
  %flow_id3 = getelementptr [52 x %struct.mvpp2_cls_flow], ptr @cls_flows, i32 0, i32 %sub, i32 1
  %2 = ptrtoint ptr %flow_id3 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flow_id3, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %3)
  %cmp5 = icmp eq i16 %1, %3
  br i1 %cmp5, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %for.body.if.else_crit_edge
  %arrayidx7 = getelementptr [52 x %struct.mvpp2_cls_flow], ptr @cls_flows, i32 0, i32 %i.08
  %4 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx7, align 4
  %6 = ptrtoint ptr %flow_type8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flow_type8, align 4
  %and = and i32 %7, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %7)
  %cmp10.not = icmp eq i32 %and, %7
  br i1 %cmp10.not, label %if.else13, label %if.else.for.inc_crit_edge

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.else13:                                        ; preds = %if.else
  %tobool.not = icmp eq ptr %arrayidx7, null
  br i1 %tobool.not, label %if.else13.cleanup_crit_edge, label %if.end

if.else13.cleanup_crit_edge:                      ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #11
  %flow_id15 = getelementptr [52 x %struct.mvpp2_cls_flow], ptr @cls_flows, i32 0, i32 %i.08, i32 1
  %8 = ptrtoint ptr %flow_id15 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %flow_id15, align 4
  %conv16 = zext i16 %9 to i32
  %10 = mul nuw nsw i32 %conv16, 21
  %mul = add nsw i32 %10, -168
  %11 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %port, align 8
  %conv18 = zext i8 %12 to i32
  %mul19 = shl nuw nsw i32 %conv18, 2
  %13 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rule, align 8
  %add = add i32 %mul, %14
  %add20 = add i32 %add, %mul19
  %15 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %priv, align 4
  tail call void @mvpp2_write(ptr noundef %16, i32 noundef 6176, i32 noundef %add20) #9
  %call.i = tail call i32 @mvpp2_read(ptr noundef %16, i32 noundef 6180) #9
  %call2.i = tail call i32 @mvpp2_read(ptr noundef %16, i32 noundef 6184) #9
  %call5.i = tail call i32 @mvpp2_read(ptr noundef %16, i32 noundef 6188) #9
  %17 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %port, align 8
  %conv22 = zext i8 %18 to i32
  %shl.i = shl i32 16, %conv22
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %call.i, %neg.i
  %19 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %priv, align 4
  tail call void @mvpp2_write(ptr noundef %20, i32 noundef 6176, i32 noundef %add20) #9
  tail call void @mvpp2_write(ptr noundef %20, i32 noundef 6180, i32 noundef %and.i) #9
  tail call void @mvpp2_write(ptr noundef %20, i32 noundef 6184, i32 noundef %call2.i) #9
  tail call void @mvpp2_write(ptr noundef %20, i32 noundef 6188, i32 noundef %call5.i) #9
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.else.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.08, 1
  %exitcond.not = icmp eq i32 %inc, 52
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  %c2_index = getelementptr inbounds %struct.mvpp2_rfs_rule, ptr %rule, i32 0, i32 2
  %21 = ptrtoint ptr %c2_index to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %c2_index, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %cmp26 = icmp sgt i32 %22, -1
  br i1 %cmp26, label %if.then28, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then28:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %c2.i) #9
  %23 = call ptr @memset(ptr %c2.i, i32 255, i32 52)
  %24 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %priv, align 4
  call void @mvpp2_cls_c2_read(ptr noundef %25, i32 noundef %22, ptr noundef nonnull %c2.i) #9
  %26 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %port, align 8
  %conv.i = zext i8 %27 to i32
  %shl2.i = shl i32 256, %conv.i
  %neg.i4 = xor i32 %shl2.i, -1
  %arrayidx.i5 = getelementptr inbounds %struct.mvpp2_cls_c2_entry, ptr %c2.i, i32 0, i32 1, i32 4
  %28 = ptrtoint ptr %arrayidx.i5 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i5, align 4
  %and.i6 = and i32 %29, %neg.i4
  store i32 %and.i6, ptr %arrayidx.i5, align 4
  %30 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %priv, align 4
  call fastcc void @mvpp2_cls_c2_write(ptr noundef %31, ptr noundef nonnull %c2.i) #9
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %c2.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then28, %for.end.cleanup_crit_edge, %if.else13.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethtool_rx_flow_rule_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mvpp2_ethtool_cls_rule_del(ptr nocapture noundef %port, ptr nocapture noundef readonly %info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %location = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 6
  %0 = ptrtoint ptr %location to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %location, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp ugt i32 %1, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.mvpp2_port, ptr %port, i32 0, i32 39, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @mvpp2_port_cls_rfs_rule_remove(ptr noundef %port, ptr noundef nonnull %3)
  %n_rfs_rules = getelementptr inbounds %struct.mvpp2_port, ptr %port, i32 0, i32 40
  %4 = ptrtoint ptr %n_rfs_rules to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n_rfs_rules, align 4
  %dec = add i32 %5, -1
  store i32 %dec, ptr %n_rfs_rules, align 4
  %6 = ptrtoint ptr %location to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %location, align 8
  %arrayidx11 = getelementptr %struct.mvpp2_port, ptr %port, i32 0, i32 39, i32 %7
  %8 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %arrayidx11, align 4
  tail call void @kfree(ptr noundef nonnull %3) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mvpp22_port_rss_ctx_create(ptr nocapture noundef %port, ptr nocapture noundef writeonly %port_ctx) local_unnamed_addr #0 align 64 {
entry:
  %rss_ctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rss_ctx) #9
  %0 = ptrtoint ptr %rss_ctx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %rss_ctx, align 4, !annotation !27
  %call = call fastcc i32 @mvpp22_rss_context_create(ptr noundef %port, ptr noundef nonnull %rss_ctx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.body.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %arrayidx = getelementptr %struct.mvpp2_port, ptr %port, i32 0, i32 41, i32 1
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp2 = icmp slt i32 %2, 0
  br i1 %cmp2, label %for.body.preheader.if.end7_crit_edge, label %for.inc

for.body.preheader.if.end7_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

for.inc:                                          ; preds = %for.body.preheader
  %arrayidx.1 = getelementptr %struct.mvpp2_port, ptr %port, i32 0, i32 41, i32 2
  %3 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp2.1 = icmp slt i32 %4, 0
  br i1 %cmp2.1, label %for.inc.if.end7_crit_edge, label %for.inc.1

for.inc.if.end7_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

for.inc.1:                                        ; preds = %for.inc
  %arrayidx.2 = getelementptr %struct.mvpp2_port, ptr %port, i32 0, i32 41, i32 3
  %5 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp2.2 = icmp slt i32 %6, 0
  br i1 %cmp2.2, label %for.inc.1.if.end7_crit_edge, label %for.inc.2

for.inc.1.if.end7_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx.3 = getelementptr %struct.mvpp2_port, ptr %port, i32 0, i32 41, i32 4
  %7 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp2.3 = icmp slt i32 %8, 0
  br i1 %cmp2.3, label %for.inc.2.if.end7_crit_edge, label %for.inc.3

for.inc.2.if.end7_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

for.inc.3:                                        ; preds = %for.inc.2
  %arrayidx.4 = getelementptr %struct.mvpp2_port, ptr %port, i32 0, i32 41, i32 5
  %9 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp2.4 = icmp slt i32 %10, 0
  br i1 %cmp2.4, label %for.inc.3.if.end7_crit_edge, label %for.inc.4

for.inc.3.if.end7_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

for.inc.4:                                        ; preds = %for.inc.3
  %arrayidx.5 = getelementptr %struct.mvpp2_port, ptr %port, i32 0, i32 41, i32 6
  %11 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp2.5 = icmp slt i32 %12, 0
  br i1 %cmp2.5, label %for.inc.4.if.end7_crit_edge, label %for.inc.5

for.inc.4.if.end7_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

for.inc.5:                                        ; preds = %for.inc.4
  %arrayidx.6 = getelementptr %struct.mvpp2_port, ptr %port, i32 0, i32 41, i32 7
  %13 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp2.6 = icmp slt i32 %14, 0
  br i1 %cmp2.6, label %for.inc.5.if.end7_crit_edge, label %for.inc.5.cleanup_crit_edge

for.inc.5.cleanup_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.5.if.end7_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.end7:                                          ; preds = %for.inc.5.if.end7_crit_edge, %for.inc.4.if.end7_crit_edge, %for.inc.3.if.end7_crit_edge, %for.inc.2.if.end7_crit_edge, %for.inc.1.if.end7_crit_edge, %for.inc.if.end7_crit_edge, %for.body.preheader.if.end7_crit_edge
  %i.023.lcssa = phi i32 [ 1, %for.body.preheader.if.end7_crit_edge ], [ 2, %for.inc.if.end7_crit_edge ], [ 3, %for.inc.1.if.end7_crit_edge ], [ 4, %for.inc.2.if.end7_crit_edge ], [ 5, %for.inc.3.if.end7_crit_edge ], [ 6, %for.inc.4.if.end7_crit_edge ], [ 7, %for.inc.5.if.end7_crit_edge ]
  %15 = ptrtoint ptr %rss_ctx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rss_ctx, align 4
  %arrayidx9 = getelementptr %struct.mvpp2_port, ptr %port, i32 0, i32 41, i32 %i.023.lcssa
  %17 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %arrayidx9, align 4
  %18 = ptrtoint ptr %port_ctx to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %i.023.lcssa, ptr %port_ctx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %for.inc.5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ %call, %entry.cleanup_crit_edge ], [ -22, %for.inc.5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rss_ctx) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mvpp22_rss_context_create(ptr nocapture noundef readonly %port, ptr nocapture noundef writeonly %rss_ctx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.mvpp2_port, ptr %port, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %arrayidx = getelementptr %struct.mvpp2, ptr %1, i32 0, i32 28, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %for.inc

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

for.inc:                                          ; preds = %entry
  %arrayidx.1 = getelementptr %struct.mvpp2, ptr %1, i32 0, i32 28, i32 1
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %5, null
  br i1 %tobool.not.1, label %for.inc.if.end4_crit_edge, label %for.inc.1

for.inc.if.end4_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

for.inc.1:                                        ; preds = %for.inc
  %arrayidx.2 = getelementptr %struct.mvpp2, ptr %1, i32 0, i32 28, i32 2
  %6 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %7, null
  br i1 %tobool.not.2, label %for.inc.1.if.end4_crit_edge, label %for.inc.2

for.inc.1.if.end4_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx.3 = getelementptr %struct.mvpp2, ptr %1, i32 0, i32 28, i32 3
  %8 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.3, align 4
  %tobool.not.3 = icmp eq ptr %9, null
  br i1 %tobool.not.3, label %for.inc.2.if.end4_crit_edge, label %for.inc.3

for.inc.2.if.end4_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

for.inc.3:                                        ; preds = %for.inc.2
  %arrayidx.4 = getelementptr %struct.mvpp2, ptr %1, i32 0, i32 28, i32 4
  %10 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.4, align 4
  %tobool.not.4 = icmp eq ptr %11, null
  br i1 %tobool.not.4, label %for.inc.3.if.end4_crit_edge, label %for.inc.4

for.inc.3.if.end4_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

for.inc.4:                                        ; preds = %for.inc.3
  %arrayidx.5 = getelementptr %struct.mvpp2, ptr %1, i32 0, i32 28, i32 5
  %12 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.5, align 4
  %tobool.not.5 = icmp eq ptr %13, null
  br i1 %tobool.not.5, label %for.inc.4.if.end4_crit_edge, label %for.inc.5

for.inc.4.if.end4_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

for.inc.5:                                        ; preds = %for.inc.4
  %arrayidx.6 = getelementptr %struct.mvpp2, ptr %1, i32 0, i32 28, i32 6
  %14 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.6, align 4
  %tobool.not.6 = icmp eq ptr %15, null
  br i1 %tobool.not.6, label %for.inc.5.if.end4_crit_edge, label %for.inc.6

for.inc.5.if.end4_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

for.inc.6:                                        ; preds = %for.inc.5
  %arrayidx.7 = getelementptr %struct.mvpp2, ptr %1, i32 0, i32 28, i32 7
  %16 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.7, align 4
  %tobool.not.7 = icmp eq ptr %17, null
  br i1 %tobool.not.7, label %for.inc.6.if.end4_crit_edge, label %for.inc.6.cleanup_crit_edge

for.inc.6.cleanup_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.6.if.end4_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.end4:                                          ; preds = %for.inc.6.if.end4_crit_edge, %for.inc.5.if.end4_crit_edge, %for.inc.4.if.end4_crit_edge, %for.inc.3.if.end4_crit_edge, %for.inc.2.if.end4_crit_edge, %for.inc.1.if.end4_crit_edge, %for.inc.if.end4_crit_edge, %entry.if.end4_crit_edge
  %ctx.032.lcssa = phi i32 [ 0, %entry.if.end4_crit_edge ], [ 1, %for.inc.if.end4_crit_edge ], [ 2, %for.inc.1.if.end4_crit_edge ], [ 3, %for.inc.2.if.end4_crit_edge ], [ 4, %for.inc.3.if.end4_crit_edge ], [ 5, %for.inc.4.if.end4_crit_edge ], [ 6, %for.inc.5.if.end4_crit_edge ], [ 7, %for.inc.6.if.end4_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3520, i32 noundef 128) #12
  %arrayidx6 = getelementptr %struct.mvpp2, ptr %1, i32 0, i32 28, i32 %ctx.032.lcssa
  %19 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call7.i.i, ptr %arrayidx6, align 4
  %tobool9.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool9.not, label %if.end4.cleanup_crit_edge, label %if.end11

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %rss_ctx to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %ctx.032.lcssa, ptr %rss_ctx, align 4
  %shl = shl nuw nsw i32 %ctx.032.lcssa, 8
  tail call void @mvpp2_write(ptr noundef %1, i32 noundef 5376, i32 noundef %shl) #9
  tail call void @mvpp2_write(ptr noundef %1, i32 noundef 5388, i32 noundef 8) #9
  %shl12 = shl nuw nsw i32 %ctx.032.lcssa, 16
  tail call void @mvpp2_write(ptr noundef %1, i32 noundef 5376, i32 noundef %shl12) #9
  tail call void @mvpp2_write(ptr noundef %1, i32 noundef 5380, i32 noundef %ctx.032.lcssa) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end4.cleanup_crit_edge, %for.inc.6.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end11 ], [ -12, %if.end4.cleanup_crit_edge ], [ -22, %for.inc.6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mvpp22_port_rss_ctx_delete(ptr nocapture noundef %port, i32 noundef %port_ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.mvpp2_port, ptr %port, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %arrayidx.i = getelementptr %struct.mvpp2_port, ptr %port, i32 0, i32 41, i32 %port_ctx
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %3)
  %4 = icmp ugt i32 %3, 7
  br i1 %4, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %n_rfs_rules.i = getelementptr inbounds %struct.mvpp2_port, ptr %port, i32 0, i32 40
  %dev = getelementptr inbounds %struct.mvpp2_port, ptr %port, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.049 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mvpp2_port, ptr %port, i32 0, i32 39, i32 %i.049
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end5

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end5:                                          ; preds = %for.body
  %fs = getelementptr inbounds %struct.mvpp2_ethtool_fs, ptr %6, i32 0, i32 1, i32 3
  %7 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fs, align 8
  %and = and i32 %8, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.end5.for.inc_crit_edge, label %lor.lhs.false10

if.end5.for.inc_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

lor.lhs.false10:                                  ; preds = %if.end5
  %9 = getelementptr inbounds %struct.mvpp2_ethtool_fs, ptr %6, i32 0, i32 1, i32 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %port_ctx)
  %cmp11.not = icmp eq i32 %11, %port_ctx
  br i1 %cmp11.not, label %if.end13, label %lor.lhs.false10.for.inc_crit_edge

lor.lhs.false10.for.inc_crit_edge:                ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end13:                                         ; preds = %lor.lhs.false10
  %location.i = getelementptr inbounds %struct.mvpp2_ethtool_fs, ptr %6, i32 0, i32 1, i32 3, i32 6
  %12 = ptrtoint ptr %location.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %location.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %13)
  %cmp.i = icmp ugt i32 %13, 3
  br i1 %cmp.i, label %if.end13.if.then16_crit_edge, label %if.end.i

if.end13.if.then16_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16

if.end.i:                                         ; preds = %if.end13
  %arrayidx.i46 = getelementptr %struct.mvpp2_port, ptr %port, i32 0, i32 39, i32 %13
  %14 = ptrtoint ptr %arrayidx.i46 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i46, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.end.i.if.then16_crit_edge, label %mvpp2_ethtool_cls_rule_del.exit

if.end.i.if.then16_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16

mvpp2_ethtool_cls_rule_del.exit:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @mvpp2_port_cls_rfs_rule_remove(ptr noundef %port, ptr noundef nonnull %15) #9
  %16 = ptrtoint ptr %n_rfs_rules.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %n_rfs_rules.i, align 4
  %dec.i = add i32 %17, -1
  store i32 %dec.i, ptr %n_rfs_rules.i, align 4
  %18 = ptrtoint ptr %location.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %location.i, align 8
  %arrayidx11.i = getelementptr %struct.mvpp2_port, ptr %port, i32 0, i32 39, i32 %19
  %20 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %arrayidx11.i, align 4
  tail call void @kfree(ptr noundef nonnull %15) #9
  br label %for.inc

if.then16:                                        ; preds = %if.end.i.if.then16_crit_edge, %if.end13.if.then16_crit_edge
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  %23 = ptrtoint ptr %location.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %location.i, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %22, ptr noundef nonnull @.str, i32 noundef %24) #13
  br label %for.inc

for.inc:                                          ; preds = %if.then16, %mvpp2_ethtool_cls_rule_del.exit, %lor.lhs.false10.for.inc_crit_edge, %if.end5.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.049, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx19 = getelementptr %struct.mvpp2, ptr %1, i32 0, i32 28, i32 %3
  %25 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx19, align 4
  tail call void @kfree(ptr noundef %26) #9
  %27 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %arrayidx19, align 4
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %arrayidx.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mvpp22_port_rss_ctx_indir_set(ptr nocapture noundef readonly %port, i32 noundef %port_ctx, ptr nocapture noundef readonly %indir) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.mvpp2_port, ptr %port, i32 0, i32 41, i32 %port_ctx
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %1)
  %2 = icmp ugt i32 %1, 7
  br i1 %2, label %entry.cleanup_crit_edge, label %mvpp22_rss_table_get.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

mvpp22_rss_table_get.exit:                        ; preds = %entry
  %priv = getelementptr inbounds %struct.mvpp2_port, ptr %port, i32 0, i32 3
  %3 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv, align 4
  %arrayidx.i9 = getelementptr %struct.mvpp2, ptr %4, i32 0, i32 28, i32 %1
  %5 = ptrtoint ptr %arrayidx.i9 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i9, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %mvpp22_rss_table_get.exit.cleanup_crit_edge, label %if.end

mvpp22_rss_table_get.exit.cleanup_crit_edge:      ; preds = %mvpp22_rss_table_get.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %mvpp22_rss_table_get.exit
  call void @__sanitizer_cov_trace_pc() #11
  %7 = call ptr @memcpy(ptr %6, ptr %indir, i32 128)
  tail call fastcc void @mvpp22_rss_fill_table(ptr noundef %port, ptr noundef nonnull %6, i32 noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %mvpp22_rss_table_get.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %mvpp22_rss_table_get.exit.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mvpp22_rss_fill_table(ptr nocapture noundef readonly %port, ptr nocapture noundef readonly %table, i32 noundef %rss_ctx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.mvpp2_port, ptr %port, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %shl = shl i32 %rss_ctx, 8
  %nrxqs1.i = getelementptr inbounds %struct.mvpp2_port, ptr %port, i32 0, i32 8
  %first_rxq.i = getelementptr inbounds %struct.mvpp2_port, ptr %port, i32 0, i32 34
  br label %for.body

for.body:                                         ; preds = %mvpp22_rxfh_indir.exit.for.body_crit_edge, %entry
  %i.07 = phi i32 [ 0, %entry ], [ %inc, %mvpp22_rxfh_indir.exit.for.body_crit_edge ]
  %or = or i32 %i.07, %shl
  tail call void @mvpp2_write(ptr noundef %1, i32 noundef 5376, i32 noundef %or) #9
  %arrayidx = getelementptr [32 x i32], ptr %table, i32 0, i32 %i.07
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i.i = tail call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_possible_mask, i32 noundef %4) #9
  %5 = ptrtoint ptr %nrxqs1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nrxqs1.i, align 8
  %div.i = udiv i32 %6, %call4.i.i.i
  %div2.i = udiv i32 %3, %div.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %7 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %div2.i)
  %cmp.not.i.i.i.i.i = icmp ugt i32 %7, %div2.i
  br i1 %cmp.not.i.i.i.i.i, label %for.body.cpu_online.exit.i_crit_edge, label %land.rhs.i.i.i.i.i

for.body.cpu_online.exit.i_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit.i

land.rhs.i.i.i.i.i:                               ; preds = %for.body
  %.b37.i.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i.i, label %land.rhs.i.i.i.i.i.cpu_online.exit.i_crit_edge, label %if.then.i.i.i.i.i, !prof !26

land.rhs.i.i.i.i.i.cpu_online.exit.i_crit_edge:   ; preds = %land.rhs.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit.i

if.then.i.i.i.i.i:                                ; preds = %land.rhs.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit.i

cpu_online.exit.i:                                ; preds = %if.then.i.i.i.i.i, %land.rhs.i.i.i.i.i.cpu_online.exit.i_crit_edge, %for.body.cpu_online.exit.i_crit_edge
  %div1.i.i.i.i = lshr i32 %div2.i, 5
  %arrayidx.i.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i.i
  %8 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %arrayidx.i.i.i.i, align 4
  %and.i.i.i18.i = and i32 %div2.i, 31
  %10 = shl nuw i32 1, %and.i.i.i18.i
  %11 = and i32 %9, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.i.not.i = icmp eq i32 %11, 0
  %12 = ptrtoint ptr %first_rxq.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %first_rxq.i, align 8
  %conv.i = zext i8 %13 to i32
  br i1 %tobool.i.not.i, label %cpu_online.exit.i.mvpp22_rxfh_indir.exit_crit_edge, label %if.end.i

cpu_online.exit.i.mvpp22_rxfh_indir.exit_crit_edge: ; preds = %cpu_online.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mvpp22_rxfh_indir.exit

if.end.i:                                         ; preds = %cpu_online.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %mul.i = mul i32 %div.i, %3
  %div6.i = udiv i32 %3, %call4.i.i.i
  %add.i = add i32 %div6.i, %mul.i
  %14 = ptrtoint ptr %nrxqs1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nrxqs1.i, align 8
  %rem.i = urem i32 %add.i, %15
  %add8.i = add i32 %rem.i, %conv.i
  br label %mvpp22_rxfh_indir.exit

mvpp22_rxfh_indir.exit:                           ; preds = %if.end.i, %cpu_online.exit.i.mvpp22_rxfh_indir.exit_crit_edge
  %retval.0.i = phi i32 [ %add8.i, %if.end.i ], [ %conv.i, %cpu_online.exit.i.mvpp22_rxfh_indir.exit_crit_edge ]
  tail call void @mvpp2_write(ptr noundef %1, i32 noundef 5384, i32 noundef %retval.0.i) #9
  %inc = add nuw nsw i32 %i.07, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %mvpp22_rxfh_indir.exit.for.body_crit_edge

mvpp22_rxfh_indir.exit.for.body_crit_edge:        ; preds = %mvpp22_rxfh_indir.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %mvpp22_rxfh_indir.exit
  call void @__sanitizer_cov_trace_pc() #11
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mvpp22_port_rss_ctx_indir_get(ptr nocapture noundef readonly %port, i32 noundef %port_ctx, ptr nocapture noundef writeonly %indir) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.mvpp2_port, ptr %port, i32 0, i32 41, i32 %port_ctx
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %1)
  %2 = icmp ugt i32 %1, 7
  br i1 %2, label %entry.cleanup_crit_edge, label %mvpp22_rss_table_get.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

mvpp22_rss_table_get.exit:                        ; preds = %entry
  %priv = getelementptr inbounds %struct.mvpp2_port, ptr %port, i32 0, i32 3
  %3 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv, align 4
  %arrayidx.i6 = getelementptr %struct.mvpp2, ptr %4, i32 0, i32 28, i32 %1
  %5 = ptrtoint ptr %arrayidx.i6 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i6, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %mvpp22_rss_table_get.exit.cleanup_crit_edge, label %if.end

mvpp22_rss_table_get.exit.cleanup_crit_edge:      ; preds = %mvpp22_rss_table_get.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %mvpp22_rss_table_get.exit
  call void @__sanitizer_cov_trace_pc() #11
  %7 = call ptr @memcpy(ptr %indir, ptr %6, i32 128)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %mvpp22_rss_table_get.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %mvpp22_rss_table_get.exit.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mvpp2_ethtool_rxfh_set(ptr nocapture noundef readonly %port, ptr nocapture noundef readonly %info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %flow_type1 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 1
  %0 = ptrtoint ptr %flow_type1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flow_type1, align 4
  %and.i = and i32 %1, 536870911
  %2 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %and.i, label %entry.cleanup_crit_edge [
    i32 17, label %sw.bb6.i
    i32 1, label %entry.sw.bb_crit_edge
    i32 5, label %sw.bb2.i
    i32 2, label %sw.bb3.i
    i32 6, label %sw.bb4.i
    i32 16, label %entry.sw.bb11_crit_edge
  ]

entry.sw.bb11_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb11

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

sw.bb4.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

sw.bb6.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb11

sw.bb:                                            ; preds = %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %entry.sw.bb_crit_edge
  %retval.0.i.ph = phi i32 [ 13, %sw.bb2.i ], [ 19, %sw.bb3.i ], [ 21, %sw.bb4.i ], [ 11, %entry.sw.bb_crit_edge ]
  %data = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 2
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %data, align 8
  %5 = trunc i64 %4 to i16
  %6 = shl i16 %5, 2
  %7 = and i16 %6, 768
  br label %sw.bb11

sw.bb11:                                          ; preds = %sw.bb, %sw.bb6.i, %entry.sw.bb11_crit_edge
  %retval.0.i72 = phi i32 [ %retval.0.i.ph, %sw.bb ], [ 5, %sw.bb6.i ], [ 3, %entry.sw.bb11_crit_edge ]
  %hash_opts.1 = phi i16 [ %7, %sw.bb ], [ 0, %sw.bb6.i ], [ 0, %entry.sw.bb11_crit_edge ]
  %data12 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 2
  %8 = ptrtoint ptr %data12 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %data12, align 8
  %10 = trunc i64 %9 to i16
  %11 = lshr i16 %10, 1
  %12 = and i16 %11, 1
  %13 = and i16 %10, 4
  %14 = and i16 %10, 8
  %15 = or i16 %13, %hash_opts.1
  %16 = or i16 %15, %14
  %17 = or i16 %16, %12
  %and37 = and i64 %9, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and37)
  %tobool38.not = icmp eq i64 %and37, 0
  %18 = or i16 %17, 80
  %hash_opts.5 = select i1 %tobool38.not, i16 %17, i16 %18
  %and45 = and i64 %9, 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and45)
  %tobool46.not = icmp eq i64 %and45, 0
  %19 = or i16 %hash_opts.5, 160
  %hash_opts.6 = select i1 %tobool46.not, i16 %hash_opts.5, i16 %19
  %call52 = tail call fastcc i32 @mvpp2_port_rss_hash_opts_set(ptr noundef %port, i32 noundef %retval.0.i72, i16 noundef zeroext %hash_opts.6)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call52, %sw.bb11 ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mvpp2_port_rss_hash_opts_set(ptr nocapture noundef readonly %port, i32 noundef %flow_type, i16 noundef zeroext %requested_opts) unnamed_addr #0 align 64 {
entry:
  %fe = alloca %struct.mvpp2_cls_flow_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %fe) #9
  %0 = getelementptr inbounds %struct.mvpp2_cls_flow_entry, ptr %fe, i32 0, i32 1
  %1 = getelementptr inbounds %struct.mvpp2_cls_flow_entry, ptr %fe, i32 0, i32 1, i32 1
  %2 = getelementptr inbounds %struct.mvpp2_cls_flow_entry, ptr %fe, i32 0, i32 1, i32 2
  %priv = getelementptr inbounds %struct.mvpp2_port, ptr %port, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.058 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.058)
  %cmp1.not = icmp eq i32 %i.058, 0
  br i1 %cmp1.not, label %for.body.if.else_crit_edge, label %land.lhs.true

for.body.if.else_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %for.body
  %flow_id = getelementptr [52 x %struct.mvpp2_cls_flow], ptr @cls_flows, i32 0, i32 %i.058, i32 1
  %3 = ptrtoint ptr %flow_id to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %flow_id, align 4
  %sub = add nsw i32 %i.058, -1
  %flow_id3 = getelementptr [52 x %struct.mvpp2_cls_flow], ptr @cls_flows, i32 0, i32 %sub, i32 1
  %5 = ptrtoint ptr %flow_id3 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %flow_id3, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %4, i16 %6)
  %cmp5 = icmp eq i16 %4, %6
  br i1 %cmp5, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %for.body.if.else_crit_edge
  %arrayidx7 = getelementptr [52 x %struct.mvpp2_cls_flow], ptr @cls_flows, i32 0, i32 %i.058
  %7 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %flow_type)
  %cmp9.not = icmp eq i32 %8, %flow_type
  br i1 %cmp9.not, label %if.else12, label %if.else.for.inc_crit_edge

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.else12:                                        ; preds = %if.else
  %tobool.not = icmp eq ptr %arrayidx7, null
  br i1 %tobool.not, label %if.else12.cleanup_crit_edge, label %if.end

if.else12.cleanup_crit_edge:                      ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.else12
  %flow_id14 = getelementptr [52 x %struct.mvpp2_cls_flow], ptr @cls_flows, i32 0, i32 %i.058, i32 1
  %9 = ptrtoint ptr %flow_id14 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %flow_id14, align 4
  %conv15 = zext i16 %10 to i32
  %11 = mul nuw nsw i32 %conv15, 21
  %add18 = add nsw i32 %11, -151
  %12 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %port, align 8
  %conv19 = zext i8 %13 to i32
  %add20 = add nsw i32 %add18, %conv19
  %14 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv, align 4
  %16 = ptrtoint ptr %fe to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add20, ptr %fe, align 4
  tail call void @mvpp2_write(ptr noundef %15, i32 noundef 6176, i32 noundef %add20) #9
  %call.i = tail call i32 @mvpp2_read(ptr noundef %15, i32 noundef 6180) #9
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call.i, ptr %0, align 4
  %call2.i = tail call i32 @mvpp2_read(ptr noundef %15, i32 noundef 6184) #9
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call2.i, ptr %1, align 4
  %call5.i = tail call i32 @mvpp2_read(ptr noundef %15, i32 noundef 6188) #9
  %19 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call5.i, ptr %2, align 4
  %supported_hash_opts = getelementptr [52 x %struct.mvpp2_cls_flow], ptr @cls_flows, i32 0, i32 %i.058, i32 2
  %20 = ptrtoint ptr %supported_hash_opts to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %supported_hash_opts, align 2
  %and54 = and i16 %21, %requested_opts
  %conv24 = zext i16 %and54 to i32
  %call31 = call fastcc i32 @mvpp2_flow_set_hek_fields(ptr noundef nonnull %fe, i32 noundef %conv24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end34:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %and25 = and i32 %conv24, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  %. = select i1 %tobool26.not, i32 12, i32 14
  %22 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %0, align 4
  %and.i = and i32 %23, -15
  %or.i = or i32 %and.i, %.
  store i32 %or.i, ptr %0, align 4
  %24 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %priv, align 4
  %26 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %fe, align 4
  tail call void @mvpp2_write(ptr noundef %25, i32 noundef 6176, i32 noundef %27) #9
  tail call void @mvpp2_write(ptr noundef %25, i32 noundef 6180, i32 noundef %or.i) #9
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %1, align 4
  tail call void @mvpp2_write(ptr noundef %25, i32 noundef 6184, i32 noundef %29) #9
  %30 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %2, align 4
  tail call void @mvpp2_write(ptr noundef %25, i32 noundef 6188, i32 noundef %31) #9
  br label %for.inc

for.inc:                                          ; preds = %if.end34, %if.else.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.058, 1
  %exitcond.not = icmp eq i32 %inc, 52
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.else12.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.else12.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %fe) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mvpp2_ethtool_rxfh_get(ptr nocapture noundef readonly %port, ptr nocapture noundef %info) local_unnamed_addr #0 align 64 {
entry:
  %fe.i = alloca %struct.mvpp2_cls_flow_entry, align 4
  %hash_opts = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hash_opts) #9
  %flow_type1 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 1
  %0 = ptrtoint ptr %flow_type1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flow_type1, align 4
  %and.i = and i32 %1, 536870911
  %2 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %and.i, label %sw.default.i [
    i32 18, label %entry.mvpp2_cls_ethtool_flow_to_type.exit_crit_edge
    i32 1, label %sw.bb1.i
    i32 5, label %sw.bb2.i
    i32 2, label %sw.bb3.i
    i32 6, label %sw.bb4.i
    i32 16, label %sw.bb5.i
    i32 17, label %sw.bb6.i
  ]

entry.mvpp2_cls_ethtool_flow_to_type.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %mvpp2_cls_ethtool_flow_to_type.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %mvpp2_cls_ethtool_flow_to_type.exit

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %mvpp2_cls_ethtool_flow_to_type.exit

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %mvpp2_cls_ethtool_flow_to_type.exit

sw.bb4.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %mvpp2_cls_ethtool_flow_to_type.exit

sw.bb5.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %mvpp2_cls_ethtool_flow_to_type.exit

sw.bb6.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %mvpp2_cls_ethtool_flow_to_type.exit

sw.default.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %mvpp2_cls_ethtool_flow_to_type.exit

mvpp2_cls_ethtool_flow_to_type.exit:              ; preds = %sw.default.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %entry.mvpp2_cls_ethtool_flow_to_type.exit_crit_edge
  %retval.0.i = phi i32 [ -95, %sw.default.i ], [ 5, %sw.bb6.i ], [ 3, %sw.bb5.i ], [ 21, %sw.bb4.i ], [ 19, %sw.bb3.i ], [ 13, %sw.bb2.i ], [ 11, %sw.bb1.i ], [ 1, %entry.mvpp2_cls_ethtool_flow_to_type.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %fe.i) #9
  %3 = getelementptr inbounds %struct.mvpp2_cls_flow_entry, ptr %fe.i, i32 0, i32 1
  %4 = getelementptr inbounds %struct.mvpp2_cls_flow_entry, ptr %fe.i, i32 0, i32 1, i32 1
  %5 = getelementptr inbounds %struct.mvpp2_cls_flow_entry, ptr %fe.i, i32 0, i32 1, i32 2
  %priv.i = getelementptr inbounds %struct.mvpp2_port, ptr %port, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %mvpp2_cls_ethtool_flow_to_type.exit
  %hash_opts.043.i = phi i16 [ 0, %mvpp2_cls_ethtool_flow_to_type.exit ], [ %hash_opts.1.i, %for.inc.i.for.body.i_crit_edge ]
  %i.041.i = phi i32 [ 0, %mvpp2_cls_ethtool_flow_to_type.exit ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.041.i)
  %cmp1.not.i = icmp eq i32 %i.041.i, 0
  br i1 %cmp1.not.i, label %for.body.i.if.else.i_crit_edge, label %land.lhs.true.i

for.body.i.if.else.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %flow_id.i = getelementptr [52 x %struct.mvpp2_cls_flow], ptr @cls_flows, i32 0, i32 %i.041.i, i32 1
  %6 = ptrtoint ptr %flow_id.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %flow_id.i, align 4
  %sub.i = add nsw i32 %i.041.i, -1
  %flow_id3.i = getelementptr [52 x %struct.mvpp2_cls_flow], ptr @cls_flows, i32 0, i32 %sub.i, i32 1
  %8 = ptrtoint ptr %flow_id3.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %flow_id3.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %9)
  %cmp5.i = icmp eq i16 %7, %9
  br i1 %cmp5.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %for.body.i.if.else.i_crit_edge
  %arrayidx7.i = getelementptr [52 x %struct.mvpp2_cls_flow], ptr @cls_flows, i32 0, i32 %i.041.i
  %10 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx7.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %retval.0.i)
  %cmp9.not.i = icmp eq i32 %11, %retval.0.i
  br i1 %cmp9.not.i, label %if.else12.i, label %if.else.i.for.inc.i_crit_edge

if.else.i.for.inc.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.else12.i:                                      ; preds = %if.else.i
  %tobool.not.i = icmp eq ptr %arrayidx7.i, null
  br i1 %tobool.not.i, label %if.else12.i.mvpp2_port_rss_hash_opts_get.exit_crit_edge, label %if.end.i

if.else12.i.mvpp2_port_rss_hash_opts_get.exit_crit_edge: ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mvpp2_port_rss_hash_opts_get.exit

if.end.i:                                         ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #11
  %flow_id14.i = getelementptr [52 x %struct.mvpp2_cls_flow], ptr @cls_flows, i32 0, i32 %i.041.i, i32 1
  %12 = ptrtoint ptr %flow_id14.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %flow_id14.i, align 4
  %conv15.i = zext i16 %13 to i32
  %14 = mul nuw nsw i32 %conv15.i, 21
  %add18.i = add nsw i32 %14, -151
  %15 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %port, align 8
  %conv19.i = zext i8 %16 to i32
  %add20.i = add nsw i32 %add18.i, %conv19.i
  %17 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %priv.i, align 4
  %19 = ptrtoint ptr %fe.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %add20.i, ptr %fe.i, align 4
  tail call void @mvpp2_write(ptr noundef %18, i32 noundef 6176, i32 noundef %add20.i) #9
  %call.i.i = tail call i32 @mvpp2_read(ptr noundef %18, i32 noundef 6180) #9
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call.i.i, ptr %3, align 4
  %call2.i.i = tail call i32 @mvpp2_read(ptr noundef %18, i32 noundef 6184) #9
  %21 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call2.i.i, ptr %4, align 4
  %call5.i.i = tail call i32 @mvpp2_read(ptr noundef %18, i32 noundef 6188) #9
  %22 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call5.i.i, ptr %5, align 4
  %call21.i = call zeroext i16 @mvpp2_flow_get_hek_fields(ptr noundef nonnull %fe.i) #9
  %or40.i = or i16 %call21.i, %hash_opts.043.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %if.else.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge
  %hash_opts.1.i = phi i16 [ %hash_opts.043.i, %land.lhs.true.i.for.inc.i_crit_edge ], [ %hash_opts.043.i, %if.else.i.for.inc.i_crit_edge ], [ %or40.i, %if.end.i ]
  %inc.i = add nuw nsw i32 %i.041.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 52
  br i1 %exitcond.not.i, label %for.inc.i.mvpp2_port_rss_hash_opts_get.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.mvpp2_port_rss_hash_opts_get.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mvpp2_port_rss_hash_opts_get.exit

mvpp2_port_rss_hash_opts_get.exit:                ; preds = %for.inc.i.mvpp2_port_rss_hash_opts_get.exit_crit_edge, %if.else12.i.mvpp2_port_rss_hash_opts_get.exit_crit_edge
  %retval.0.i37 = phi i16 [ 0, %if.else12.i.mvpp2_port_rss_hash_opts_get.exit_crit_edge ], [ %hash_opts.1.i, %for.inc.i.mvpp2_port_rss_hash_opts_get.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %fe.i) #9
  %conv = zext i16 %retval.0.i37 to i32
  %23 = ptrtoint ptr %hash_opts to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv, ptr %hash_opts, align 4
  %data = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 2
  %24 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 0, ptr %data, align 8
  %call3 = call i32 @_find_next_bit_be(ptr noundef nonnull %hash_opts, i32 noundef 10, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %call3)
  %cmp38 = icmp slt i32 %call3, 10
  br i1 %cmp38, label %mvpp2_port_rss_hash_opts_get.exit.for.body_crit_edge, label %mvpp2_port_rss_hash_opts_get.exit.cleanup_crit_edge

mvpp2_port_rss_hash_opts_get.exit.cleanup_crit_edge: ; preds = %mvpp2_port_rss_hash_opts_get.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

mvpp2_port_rss_hash_opts_get.exit.for.body_crit_edge: ; preds = %mvpp2_port_rss_hash_opts_get.exit
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %mvpp2_port_rss_hash_opts_get.exit.for.body_crit_edge
  %i.039 = phi i32 [ %call24, %for.inc.for.body_crit_edge ], [ %call3, %mvpp2_port_rss_hash_opts_get.exit.for.body_crit_edge ]
  %shl = shl nuw nsw i32 1, %i.039
  %25 = zext i32 %shl to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %shl, label %for.body.cleanup_crit_edge [
    i32 1, label %for.body.for.inc_crit_edge
    i32 4, label %sw.bb6
    i32 8, label %sw.bb9
    i32 16, label %for.body.sw.bb12_crit_edge
    i32 64, label %for.body.sw.bb12_crit_edge42
    i32 32, label %for.body.sw.bb15_crit_edge
    i32 128, label %for.body.sw.bb15_crit_edge43
    i32 256, label %sw.bb18
    i32 512, label %sw.bb21
  ]

for.body.sw.bb15_crit_edge43:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb15

for.body.sw.bb15_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb15

for.body.sw.bb12_crit_edge42:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb12

for.body.sw.bb12_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb12

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb6:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

sw.bb9:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

sw.bb12:                                          ; preds = %for.body.sw.bb12_crit_edge, %for.body.sw.bb12_crit_edge42
  br label %for.inc

sw.bb15:                                          ; preds = %for.body.sw.bb15_crit_edge, %for.body.sw.bb15_crit_edge43
  br label %for.inc

sw.bb18:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

sw.bb21:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.inc:                                          ; preds = %sw.bb21, %sw.bb18, %sw.bb15, %sw.bb12, %sw.bb9, %sw.bb6, %for.body.for.inc_crit_edge
  %.sink41 = phi i64 [ 4, %sw.bb6 ], [ 8, %sw.bb9 ], [ 16, %sw.bb12 ], [ 32, %sw.bb15 ], [ 64, %sw.bb18 ], [ 128, %sw.bb21 ], [ 2, %for.body.for.inc_crit_edge ]
  %26 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %data, align 8
  %or = or i64 %27, %.sink41
  store i64 %or, ptr %data, align 8
  %add = add nsw i32 %i.039, 1
  %call24 = call i32 @_find_next_bit_be(ptr noundef nonnull %hash_opts, i32 noundef 10, i32 noundef %add) #9
  %cmp = icmp slt i32 %call24, 10
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.body.cleanup_crit_edge, %mvpp2_port_rss_hash_opts_get.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %mvpp2_port_rss_hash_opts_get.exit.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ], [ -22, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hash_opts) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mvpp22_port_rss_init(ptr nocapture noundef %port) local_unnamed_addr #0 align 64 {
entry:
  %context = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %context) #9
  %0 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %context, align 4
  %uglygep = getelementptr i8, ptr %port, i32 3544
  %1 = call ptr @memset(ptr %uglygep, i32 255, i32 32)
  %call = call fastcc i32 @mvpp22_rss_context_create(ptr noundef %port, ptr noundef nonnull %context)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %context, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %3)
  %4 = icmp ugt i32 %3, 7
  br i1 %4, label %if.end.cleanup_crit_edge, label %mvpp22_rss_table_get.exit

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

mvpp22_rss_table_get.exit:                        ; preds = %if.end
  %priv = getelementptr inbounds %struct.mvpp2_port, ptr %port, i32 0, i32 3
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv, align 4
  %arrayidx.i = getelementptr %struct.mvpp2, ptr %6, i32 0, i32 28, i32 %3
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %tobool2.not = icmp eq ptr %8, null
  br i1 %tobool2.not, label %mvpp22_rss_table_get.exit.cleanup_crit_edge, label %if.end4

mvpp22_rss_table_get.exit.cleanup_crit_edge:      ; preds = %mvpp22_rss_table_get.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %mvpp22_rss_table_get.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %uglygep to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %3, ptr %uglygep, align 8
  %nrxqs = getelementptr inbounds %struct.mvpp2_port, ptr %port, i32 0, i32 8
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %8, align 4
  %11 = ptrtoint ptr %nrxqs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nrxqs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %13 = icmp ne i32 %12, 1
  %rem.i.1 = zext i1 %13 to i32
  %arrayidx11.1 = getelementptr [32 x i32], ptr %8, i32 0, i32 1
  %14 = ptrtoint ptr %arrayidx11.1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %rem.i.1, ptr %arrayidx11.1, align 4
  %15 = ptrtoint ptr %nrxqs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nrxqs, align 8
  %rem.i.2 = urem i32 2, %16
  %arrayidx11.2 = getelementptr [32 x i32], ptr %8, i32 0, i32 2
  %17 = ptrtoint ptr %arrayidx11.2 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %rem.i.2, ptr %arrayidx11.2, align 4
  %18 = load i32, ptr %nrxqs, align 8
  %rem.i.3 = urem i32 3, %18
  %arrayidx11.3 = getelementptr [32 x i32], ptr %8, i32 0, i32 3
  %19 = ptrtoint ptr %arrayidx11.3 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %rem.i.3, ptr %arrayidx11.3, align 4
  %20 = load i32, ptr %nrxqs, align 8
  %rem.i.4 = urem i32 4, %20
  %arrayidx11.4 = getelementptr [32 x i32], ptr %8, i32 0, i32 4
  %21 = ptrtoint ptr %arrayidx11.4 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %rem.i.4, ptr %arrayidx11.4, align 4
  %22 = load i32, ptr %nrxqs, align 8
  %rem.i.5 = urem i32 5, %22
  %arrayidx11.5 = getelementptr [32 x i32], ptr %8, i32 0, i32 5
  %23 = ptrtoint ptr %arrayidx11.5 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %rem.i.5, ptr %arrayidx11.5, align 4
  %24 = load i32, ptr %nrxqs, align 8
  %rem.i.6 = urem i32 6, %24
  %arrayidx11.6 = getelementptr [32 x i32], ptr %8, i32 0, i32 6
  %25 = ptrtoint ptr %arrayidx11.6 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %rem.i.6, ptr %arrayidx11.6, align 4
  %26 = load i32, ptr %nrxqs, align 8
  %rem.i.7 = urem i32 7, %26
  %arrayidx11.7 = getelementptr [32 x i32], ptr %8, i32 0, i32 7
  %27 = ptrtoint ptr %arrayidx11.7 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %rem.i.7, ptr %arrayidx11.7, align 4
  %28 = load i32, ptr %nrxqs, align 8
  %rem.i.8 = urem i32 8, %28
  %arrayidx11.8 = getelementptr [32 x i32], ptr %8, i32 0, i32 8
  %29 = ptrtoint ptr %arrayidx11.8 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %rem.i.8, ptr %arrayidx11.8, align 4
  %30 = load i32, ptr %nrxqs, align 8
  %rem.i.9 = urem i32 9, %30
  %arrayidx11.9 = getelementptr [32 x i32], ptr %8, i32 0, i32 9
  %31 = ptrtoint ptr %arrayidx11.9 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %rem.i.9, ptr %arrayidx11.9, align 4
  %32 = load i32, ptr %nrxqs, align 8
  %rem.i.10 = urem i32 10, %32
  %arrayidx11.10 = getelementptr [32 x i32], ptr %8, i32 0, i32 10
  %33 = ptrtoint ptr %arrayidx11.10 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %rem.i.10, ptr %arrayidx11.10, align 4
  %34 = load i32, ptr %nrxqs, align 8
  %rem.i.11 = urem i32 11, %34
  %arrayidx11.11 = getelementptr [32 x i32], ptr %8, i32 0, i32 11
  %35 = ptrtoint ptr %arrayidx11.11 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %rem.i.11, ptr %arrayidx11.11, align 4
  %36 = load i32, ptr %nrxqs, align 8
  %rem.i.12 = urem i32 12, %36
  %arrayidx11.12 = getelementptr [32 x i32], ptr %8, i32 0, i32 12
  %37 = ptrtoint ptr %arrayidx11.12 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %rem.i.12, ptr %arrayidx11.12, align 4
  %38 = load i32, ptr %nrxqs, align 8
  %rem.i.13 = urem i32 13, %38
  %arrayidx11.13 = getelementptr [32 x i32], ptr %8, i32 0, i32 13
  %39 = ptrtoint ptr %arrayidx11.13 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %rem.i.13, ptr %arrayidx11.13, align 4
  %40 = load i32, ptr %nrxqs, align 8
  %rem.i.14 = urem i32 14, %40
  %arrayidx11.14 = getelementptr [32 x i32], ptr %8, i32 0, i32 14
  %41 = ptrtoint ptr %arrayidx11.14 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %rem.i.14, ptr %arrayidx11.14, align 4
  %42 = load i32, ptr %nrxqs, align 8
  %rem.i.15 = urem i32 15, %42
  %arrayidx11.15 = getelementptr [32 x i32], ptr %8, i32 0, i32 15
  %43 = ptrtoint ptr %arrayidx11.15 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %rem.i.15, ptr %arrayidx11.15, align 4
  %44 = load i32, ptr %nrxqs, align 8
  %rem.i.16 = urem i32 16, %44
  %arrayidx11.16 = getelementptr [32 x i32], ptr %8, i32 0, i32 16
  %45 = ptrtoint ptr %arrayidx11.16 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %rem.i.16, ptr %arrayidx11.16, align 4
  %46 = load i32, ptr %nrxqs, align 8
  %rem.i.17 = urem i32 17, %46
  %arrayidx11.17 = getelementptr [32 x i32], ptr %8, i32 0, i32 17
  %47 = ptrtoint ptr %arrayidx11.17 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %rem.i.17, ptr %arrayidx11.17, align 4
  %48 = load i32, ptr %nrxqs, align 8
  %rem.i.18 = urem i32 18, %48
  %arrayidx11.18 = getelementptr [32 x i32], ptr %8, i32 0, i32 18
  %49 = ptrtoint ptr %arrayidx11.18 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %rem.i.18, ptr %arrayidx11.18, align 4
  %50 = load i32, ptr %nrxqs, align 8
  %rem.i.19 = urem i32 19, %50
  %arrayidx11.19 = getelementptr [32 x i32], ptr %8, i32 0, i32 19
  %51 = ptrtoint ptr %arrayidx11.19 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %rem.i.19, ptr %arrayidx11.19, align 4
  %52 = load i32, ptr %nrxqs, align 8
  %rem.i.20 = urem i32 20, %52
  %arrayidx11.20 = getelementptr [32 x i32], ptr %8, i32 0, i32 20
  %53 = ptrtoint ptr %arrayidx11.20 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %rem.i.20, ptr %arrayidx11.20, align 4
  %54 = load i32, ptr %nrxqs, align 8
  %rem.i.21 = urem i32 21, %54
  %arrayidx11.21 = getelementptr [32 x i32], ptr %8, i32 0, i32 21
  %55 = ptrtoint ptr %arrayidx11.21 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %rem.i.21, ptr %arrayidx11.21, align 4
  %56 = load i32, ptr %nrxqs, align 8
  %rem.i.22 = urem i32 22, %56
  %arrayidx11.22 = getelementptr [32 x i32], ptr %8, i32 0, i32 22
  %57 = ptrtoint ptr %arrayidx11.22 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %rem.i.22, ptr %arrayidx11.22, align 4
  %58 = load i32, ptr %nrxqs, align 8
  %rem.i.23 = urem i32 23, %58
  %arrayidx11.23 = getelementptr [32 x i32], ptr %8, i32 0, i32 23
  %59 = ptrtoint ptr %arrayidx11.23 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %rem.i.23, ptr %arrayidx11.23, align 4
  %60 = load i32, ptr %nrxqs, align 8
  %rem.i.24 = urem i32 24, %60
  %arrayidx11.24 = getelementptr [32 x i32], ptr %8, i32 0, i32 24
  %61 = ptrtoint ptr %arrayidx11.24 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %rem.i.24, ptr %arrayidx11.24, align 4
  %62 = load i32, ptr %nrxqs, align 8
  %rem.i.25 = urem i32 25, %62
  %arrayidx11.25 = getelementptr [32 x i32], ptr %8, i32 0, i32 25
  %63 = ptrtoint ptr %arrayidx11.25 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %rem.i.25, ptr %arrayidx11.25, align 4
  %64 = load i32, ptr %nrxqs, align 8
  %rem.i.26 = urem i32 26, %64
  %arrayidx11.26 = getelementptr [32 x i32], ptr %8, i32 0, i32 26
  %65 = ptrtoint ptr %arrayidx11.26 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %rem.i.26, ptr %arrayidx11.26, align 4
  %66 = load i32, ptr %nrxqs, align 8
  %rem.i.27 = urem i32 27, %66
  %arrayidx11.27 = getelementptr [32 x i32], ptr %8, i32 0, i32 27
  %67 = ptrtoint ptr %arrayidx11.27 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %rem.i.27, ptr %arrayidx11.27, align 4
  %68 = load i32, ptr %nrxqs, align 8
  %rem.i.28 = urem i32 28, %68
  %arrayidx11.28 = getelementptr [32 x i32], ptr %8, i32 0, i32 28
  %69 = ptrtoint ptr %arrayidx11.28 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %rem.i.28, ptr %arrayidx11.28, align 4
  %70 = load i32, ptr %nrxqs, align 8
  %rem.i.29 = urem i32 29, %70
  %arrayidx11.29 = getelementptr [32 x i32], ptr %8, i32 0, i32 29
  %71 = ptrtoint ptr %arrayidx11.29 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %rem.i.29, ptr %arrayidx11.29, align 4
  %72 = load i32, ptr %nrxqs, align 8
  %rem.i.30 = urem i32 30, %72
  %arrayidx11.30 = getelementptr [32 x i32], ptr %8, i32 0, i32 30
  %73 = ptrtoint ptr %arrayidx11.30 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %rem.i.30, ptr %arrayidx11.30, align 4
  %74 = load i32, ptr %nrxqs, align 8
  %rem.i.31 = urem i32 31, %74
  %arrayidx11.31 = getelementptr [32 x i32], ptr %8, i32 0, i32 31
  %75 = ptrtoint ptr %arrayidx11.31 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %rem.i.31, ptr %arrayidx11.31, align 4
  %76 = ptrtoint ptr %uglygep to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %uglygep, align 4
  tail call fastcc void @mvpp22_rss_fill_table(ptr noundef %port, ptr noundef nonnull %8, i32 noundef %77)
  %call16 = tail call fastcc i32 @mvpp2_port_rss_hash_opts_set(ptr noundef %port, i32 noundef 3, i16 noundef zeroext 48)
  %call17 = tail call fastcc i32 @mvpp2_port_rss_hash_opts_set(ptr noundef %port, i32 noundef 5, i16 noundef zeroext 192)
  %call18 = tail call fastcc i32 @mvpp2_port_rss_hash_opts_set(ptr noundef %port, i32 noundef 11, i16 noundef zeroext 816)
  %call19 = tail call fastcc i32 @mvpp2_port_rss_hash_opts_set(ptr noundef %port, i32 noundef 13, i16 noundef zeroext 960)
  %call20 = tail call fastcc i32 @mvpp2_port_rss_hash_opts_set(ptr noundef %port, i32 noundef 19, i16 noundef zeroext 816)
  %call21 = tail call fastcc i32 @mvpp2_port_rss_hash_opts_set(ptr noundef %port, i32 noundef 21, i16 noundef zeroext 960)
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %mvpp22_rss_table_get.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ %call, %entry.cleanup_crit_edge ], [ -22, %mvpp22_rss_table_get.exit.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %context) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mvpp2_prs_add_flow(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_vlan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_ports(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight16(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mvpp2_flow_set_hek_fields(ptr nocapture noundef %fe, i32 noundef %hash_opts) unnamed_addr #0 align 64 {
entry:
  %hash_opts.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hash_opts.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %hash_opts, ptr %hash_opts.addr, align 4
  %arrayidx.i = getelementptr %struct.mvpp2_cls_flow_entry, ptr %fe, i32 0, i32 1, i32 1
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %2, -8
  store i32 %and.i, ptr %arrayidx.i, align 4
  %arrayidx = getelementptr %struct.mvpp2_cls_flow_entry, ptr %fe, i32 0, i32 1, i32 2
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %arrayidx, align 4
  %call = call i32 @_find_next_bit_be(ptr noundef nonnull %hash_opts.addr, i32 noundef 10, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %call)
  %cmp18 = icmp slt i32 %call, 10
  br i1 %cmp18, label %entry.for.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.019 = phi i32 [ %call10, %for.inc.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %shl = shl nuw nsw i32 1, %i.019
  %4 = zext i32 %shl to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %shl, label %for.body.cleanup_crit_edge [
    i32 1, label %for.body.sw.epilog_crit_edge
    i32 4, label %sw.bb1
    i32 2, label %sw.bb2
    i32 16, label %sw.bb3
    i32 32, label %sw.bb4
    i32 64, label %sw.bb5
    i32 128, label %sw.bb6
    i32 256, label %sw.bb7
    i32 512, label %sw.bb8
  ]

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb1:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb2:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb3:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb4:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb5:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb6:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb7:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb8:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %for.body.sw.epilog_crit_edge
  %field_id.0 = phi i32 [ 30, %sw.bb8 ], [ 29, %sw.bb7 ], [ 26, %sw.bb6 ], [ 23, %sw.bb5 ], [ 17, %sw.bb4 ], [ 16, %sw.bb3 ], [ 5, %sw.bb2 ], [ 6, %sw.bb1 ], [ 3, %for.body.sw.epilog_crit_edge ]
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i, align 4
  %and.i.i = and i32 %6, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and.i.i)
  %cmp.i = icmp eq i32 %and.i.i, 4
  br i1 %cmp.i, label %sw.epilog.cleanup_crit_edge, label %for.inc

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc:                                          ; preds = %sw.epilog
  %mul.i.i = mul nuw nsw i32 %and.i.i, 6
  %shl.i.i = shl i32 63, %mul.i.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %and.i6.i = and i32 %8, %neg.i.i
  %shl2.i.i = shl i32 %field_id.0, %mul.i.i
  %or.i.i = or i32 %and.i6.i, %shl2.i.i
  store i32 %or.i.i, ptr %arrayidx, align 4
  %add.i = add nuw nsw i32 %and.i.i, 1
  %and.i8.i = and i32 %6, -8
  %or.i9.i = or i32 %add.i, %and.i8.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or.i9.i, ptr %arrayidx.i, align 4
  %add = add nsw i32 %i.019, 1
  %call10 = call i32 @_find_next_bit_be(ptr noundef nonnull %hash_opts.addr, i32 noundef 10, i32 noundef %add) #9
  %cmp = icmp slt i32 %call10, 10
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ], [ -22, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #1

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

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/marvell/mvpp2/mvpp2_cls.c", i32 1578, i32 9}
!2 = !{ptr @cls_flows, !3, !"cls_flows", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/marvell/mvpp2/mvpp2_cls.c", i32 25, i32 36}
!4 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!5 = !{!"../include/net/flow_offload.h", i32 354, i32 2}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @__flow_action_hw_stats_check.__msg, !8, !"__msg", i1 false, i1 false}
!8 = !{!"../include/net/flow_offload.h", i32 358, i32 3}
!9 = distinct !{null, !10, !"__msg", i1 false, i1 false}
!10 = !{!"../include/net/flow_offload.h", i32 362, i32 3}
!11 = !{ptr @flow_action_mixed_hw_stats_check.__msg, !12, !"__msg", i1 false, i1 false}
!12 = !{!"../include/net/flow_offload.h", i32 323, i32 4}
!13 = distinct !{null, !14, !"__already_done", i1 false, i1 false}
!14 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!15 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!25 = !{!"branch_weights", i32 1, i32 2000}
!26 = !{!"branch_weights", i32 2000, i32 1}
!27 = !{!"auto-init"}
