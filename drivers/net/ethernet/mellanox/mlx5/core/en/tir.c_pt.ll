; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/en/tir.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/en/tir.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mlx5e_tir_builder = type { [68 x i32], i8 }
%struct.mlx5e_packet_merge_param = type { i32, i32, %struct.anon }
%struct.anon = type { i8, i8 }
%struct.mlx5e_rss_params_hash = type { i8, [40 x i8] }
%struct.mlx5e_rss_params_traffic_type = type { i8, i8, i32 }
%struct.mlx5e_tir = type { ptr, i32, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.mlx5_core_dev = type { ptr, i32, ptr, %struct.mutex, i32, i8, [64 x i8], %struct.mlx5_cmd, %struct.anon.139, ptr, i64, i32, ptr, i32, i32, %struct.mutex, i32, %struct.mlx5_priv, %struct.mlx5_profile, i32, %struct.mlx5e_resources, ptr, ptr, ptr, %struct.anon.162, ptr, ptr, %struct.mlx5_clock, ptr, ptr, ptr, i32, ptr }
%struct.mlx5_cmd = type { %struct.mlx5_nb, i32, ptr, i32, i32, ptr, i32, i16, i8, i8, i32, i32, ptr, %struct.spinlock, %struct.spinlock, i8, i32, [32 x i8], ptr, %struct.semaphore, %struct.semaphore, i32, i16, [32 x ptr], ptr, %struct.mlx5_cmd_debug, [5 x %struct.cmd_msg_cache], i32, ptr }
%struct.mlx5_nb = type { %struct.notifier_block, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.mlx5_cmd_debug = type { ptr, ptr, ptr, i8, i16, i16 }
%struct.cmd_msg_cache = type { %struct.spinlock, %struct.list_head, i32, i32 }
%struct.anon.139 = type { [38 x ptr], [20 x i32], [3 x [18 x i32]], [64 x i32], [18 x i32], i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mlx5_priv = type { ptr, ptr, %struct.mlx5_nb, ptr, %struct.xarray, i32, %struct.atomic_t, %struct.list_head, i32, i32, %struct.mlx5_core_health, %struct.list_head, ptr, ptr, ptr, ptr, %struct.mutex, i32, %struct.mutex, %struct.list_head, ptr, %struct.list_head, %struct.spinlock, ptr, i32, ptr, ptr, ptr, ptr, %struct.mlx5_core_sriov, ptr, i32, ptr, ptr, %struct.mlx5_core_roce, %struct.mlx5_fc_stats, %struct.mlx5_rl_table, ptr, %struct.mlx5_bfreg_data, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mlx5_core_health = type { ptr, ptr, %struct.timer_list, i32, i32, i8, i32, i32, %struct.spinlock, ptr, i32, %struct.work_struct, %struct.work_struct, ptr, ptr, %struct.delayed_work }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mlx5_core_sriov = type { ptr, i32, i16 }
%struct.mlx5_core_roce = type { ptr, ptr, ptr }
%struct.mlx5_fc_stats = type { %struct.spinlock, %struct.idr, %struct.list_head, %struct.llist_head, %struct.llist_head, ptr, %struct.delayed_work, i32, i32, ptr, i32, i32, i8, i32, %struct.mlx5_fc_pool }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.llist_head = type { ptr }
%struct.mlx5_fc_pool = type { ptr, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32 }
%struct.mlx5_rl_table = type { %struct.mutex, i16, i32, i32, ptr, i64 }
%struct.mlx5_bfreg_data = type { %struct.mlx5_bfreg_head, %struct.mlx5_bfreg_head }
%struct.mlx5_bfreg_head = type { %struct.mutex, %struct.list_head }
%struct.mlx5_profile = type { i64, i8, [23 x %struct.anon.140] }
%struct.anon.140 = type { i32, i32 }
%struct.mlx5e_resources = type { %struct.mlx5e_hw_objs, %struct.devlink_port, ptr }
%struct.mlx5e_hw_objs = type { i32, %struct.mlx5_td, i32, %struct.mlx5_sq_bfreg }
%struct.mlx5_td = type { %struct.mutex, %struct.list_head, i32 }
%struct.mlx5_sq_bfreg = type { ptr, ptr, i8, i32, i32 }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.141 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.141 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.anon.162 = type { %struct.mlx5_rsvd_gids, i32 }
%struct.mlx5_rsvd_gids = type { i32, i32, %struct.ida }
%struct.ida = type { %struct.xarray }
%struct.mlx5_clock = type { %struct.mlx5_nb, %struct.seqlock_t, %struct.hwtstamp_config, ptr, %struct.ptp_clock_info, %struct.mlx5_pps, %struct.mlx5_timer }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlx5_pps = type { [8 x i8], %struct.work_struct, [8 x i64], i8 }
%struct.mlx5_timer = type { %struct.cyclecounter, %struct.timecounter, i32, i32, %struct.delayed_work }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }

@.str = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/en/tir.c\00", [47 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [52 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/en/tir.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 52, i32 2 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local noalias ptr @mlx5e_tir_builder_alloc(i1 noundef zeroext %modify) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %modify to i8
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 276, i32 noundef 3520, i32 noundef -1) #9
  %modify1 = getelementptr inbounds %struct.mlx5e_tir_builder, ptr %call.i.i, i32 0, i32 1
  %0 = ptrtoint ptr %modify1 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %frombool, ptr %modify1, align 4
  ret ptr %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_tir_builder_free(ptr noundef %builder) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kvfree(ptr noundef %builder) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @mlx5e_tir_builder_clear(ptr nocapture noundef writeonly %builder) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %builder, i32 0, i32 272)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_tir_builder_build_inline(ptr nocapture noundef %builder, i32 noundef %tdn, i32 noundef %rqn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %modify = getelementptr inbounds %struct.mlx5e_tir_builder, ptr %builder, i32 0, i32 1
  %0 = ptrtoint ptr %modify to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %modify, align 4, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !12

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 52, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %add.ptr = getelementptr i8, ptr %builder, i32 68
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr, align 4
  %and = and i32 %3, 251658240
  %and24 = and i32 %tdn, 16777215
  %or = or i32 %and, %and24
  %add.ptr33 = getelementptr i8, ptr %builder, i32 36
  %4 = ptrtoint ptr %add.ptr33 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr33, align 4
  %and34 = and i32 %5, 268435455
  store i32 %and34, ptr %add.ptr33, align 4
  store i32 %or, ptr %add.ptr, align 4
  %add.ptr59 = getelementptr i8, ptr %builder, i32 60
  %6 = ptrtoint ptr %add.ptr59 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr59, align 4
  %and60 = and i32 %7, -16777216
  %and61 = and i32 %rqn, 16777215
  %or63 = or i32 %and60, %and61
  store i32 %or63, ptr %add.ptr59, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_tir_builder_build_rqt(ptr nocapture noundef %builder, i32 noundef %tdn, i32 noundef %rqtn, i1 noundef zeroext %inner_ft_support) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %modify = getelementptr inbounds %struct.mlx5e_tir_builder, ptr %builder, i32 0, i32 1
  %0 = ptrtoint ptr %modify to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %modify, align 4, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !12

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 65, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %add.ptr = getelementptr i8, ptr %builder, i32 68
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr, align 4
  %and = and i32 %3, -16777216
  %and24 = and i32 %tdn, 16777215
  %or = or i32 %and, %and24
  store i32 %or, ptr %add.ptr, align 4
  %add.ptr33 = getelementptr i8, ptr %builder, i32 36
  %4 = ptrtoint ptr %add.ptr33 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr33, align 4
  %and34 = and i32 %5, 268435455
  %or37 = or i32 %and34, 268435456
  store i32 %or37, ptr %add.ptr33, align 4
  %add.ptr46 = getelementptr i8, ptr %builder, i32 64
  %6 = ptrtoint ptr %add.ptr46 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr46, align 4
  %and47 = and i32 %7, -553648128
  %and48 = and i32 %rqtn, 16777215
  %shl63 = select i1 %inner_ft_support, i32 536870912, i32 0
  %or50 = or i32 %shl63, %and48
  %or64 = or i32 %or50, %and47
  store i32 %or64, ptr %add.ptr46, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @mlx5e_tir_builder_build_packet_merge(ptr nocapture noundef %builder, ptr nocapture noundef readonly %pkt_merge_param) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %modify = getelementptr inbounds %struct.mlx5e_tir_builder, ptr %builder, i32 0, i32 1
  %0 = ptrtoint ptr %modify to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %modify, align 4, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr = getelementptr i32, ptr %builder, i32 5
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr, align 4
  %or = or i32 %3, 1
  store i32 %or, ptr %add.ptr, align 4
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %pkt_merge_param to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pkt_merge_param, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cond = icmp eq i32 %5, 1
  br i1 %cond, label %do.body8, label %if.end.sw.epilog_crit_edge

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.body8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr13 = getelementptr i8, ptr %builder, i32 48
  %6 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr13, align 4
  %and14 = and i32 %7, -4096
  %or30 = or i32 %and14, 1023
  store i32 %or30, ptr %add.ptr13, align 4
  %timeout = getelementptr inbounds %struct.mlx5e_packet_merge_param, ptr %pkt_merge_param, i32 0, i32 1
  %8 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %timeout, align 4
  %and40 = and i32 %or30, -268434433
  %and41 = shl i32 %9, 12
  %shl42 = and i32 %and41, 268431360
  %or43 = or i32 %shl42, %and40
  store i32 %or43, ptr %add.ptr13, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body8, %if.end.sw.epilog_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @mlx5e_tir_builder_build_rss(ptr nocapture noundef %builder, ptr nocapture noundef readonly %rss_hash, ptr nocapture noundef readonly %rss_tt, i1 noundef zeroext %inner) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %modify = getelementptr inbounds %struct.mlx5e_tir_builder, ptr %builder, i32 0, i32 1
  %0 = ptrtoint ptr %modify to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %modify, align 4, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.do.body8_crit_edge, label %do.body

entry.do.body8_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body8

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr = getelementptr i32, ptr %builder, i32 5
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr, align 4
  %or = or i32 %3, 4
  store i32 %or, ptr %add.ptr, align 4
  br label %do.body8

do.body8:                                         ; preds = %do.body, %entry.do.body8_crit_edge
  %4 = ptrtoint ptr %rss_hash to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %rss_hash, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %switch.selectcmp.i = icmp eq i8 %5, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %switch.selectcmp2.i = icmp eq i8 %5, 1
  %add.ptr14 = getelementptr i8, ptr %builder, i32 68
  %6 = ptrtoint ptr %add.ptr14 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr14, align 4
  %and15 = and i32 %7, 268435455
  %switch.select.i.op = select i1 %switch.selectcmp.i, i32 268435456, i32 0
  %shl17 = select i1 %switch.selectcmp2.i, i32 536870912, i32 %switch.select.i.op
  %or18 = or i32 %shl17, %and15
  store i32 %or18, ptr %add.ptr14, align 4
  %8 = ptrtoint ptr %rss_hash to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %rss_hash, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cmp = icmp eq i8 %9, 1
  br i1 %cmp, label %if.then24, label %do.body8.if.end40_crit_edge

do.body8.if.end40_crit_edge:                      ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

if.then24:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr25 = getelementptr i8, ptr %builder, i32 72
  %add.ptr31 = getelementptr i8, ptr %builder, i32 64
  %10 = ptrtoint ptr %add.ptr31 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr31, align 4
  %or35 = or i32 %11, -2147483648
  store i32 %or35, ptr %add.ptr31, align 4
  %toeplitz_hash_key = getelementptr inbounds %struct.mlx5e_rss_params_hash, ptr %rss_hash, i32 0, i32 1
  %12 = call ptr @memcpy(ptr %add.ptr25, ptr %toeplitz_hash_key, i32 40)
  br label %if.end40

if.end40:                                         ; preds = %if.then24, %do.body8.if.end40_crit_edge
  %hfso.0.v = select i1 %inner, i32 116, i32 112
  %hfso.0 = getelementptr i8, ptr %builder, i32 %hfso.0.v
  %13 = ptrtoint ptr %rss_tt to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %rss_tt, align 4
  %15 = ptrtoint ptr %hfso.0 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %hfso.0, align 4
  %and53 = and i32 %16, 2147483647
  %and54 = zext i8 %14 to i32
  %shl55 = shl i32 %and54, 31
  %or56 = or i32 %and53, %shl55
  store i32 %or56, ptr %hfso.0, align 4
  %l4_prot_type = getelementptr inbounds %struct.mlx5e_rss_params_traffic_type, ptr %rss_tt, i32 0, i32 1
  %17 = ptrtoint ptr %l4_prot_type to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %l4_prot_type, align 1
  %and67 = and i32 %or56, -1073741825
  %19 = and i8 %18, 1
  %and68 = zext i8 %19 to i32
  %shl69 = shl nuw nsw i32 %and68, 30
  %or70 = or i32 %shl69, %and67
  store i32 %or70, ptr %hfso.0, align 4
  %rx_hash_fields = getelementptr inbounds %struct.mlx5e_rss_params_traffic_type, ptr %rss_tt, i32 0, i32 2
  %20 = ptrtoint ptr %rx_hash_fields to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rx_hash_fields, align 4
  %and80 = or i32 %shl69, %shl55
  %and81 = and i32 %21, 1073741823
  %or83 = or i32 %and80, %and81
  store i32 %or83, ptr %hfso.0, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_tir_builder_build_direct(ptr nocapture noundef %builder) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %modify = getelementptr inbounds %struct.mlx5e_tir_builder, ptr %builder, i32 0, i32 1
  %0 = ptrtoint ptr %modify to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %modify, align 4, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !12

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 141, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %add.ptr = getelementptr i8, ptr %builder, i32 68
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr, align 4
  %and = and i32 %3, 268435455
  %or = or i32 %and, 268435456
  store i32 %or, ptr %add.ptr, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_tir_builder_build_tls(ptr nocapture noundef %builder) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %modify = getelementptr inbounds %struct.mlx5e_tir_builder, ptr %builder, i32 0, i32 1
  %0 = ptrtoint ptr %modify to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %modify, align 4, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !12

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 150, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %add.ptr = getelementptr i8, ptr %builder, i32 36
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr, align 4
  %or = or i32 %3, 134217728
  store i32 %or, ptr %add.ptr, align 4
  %add.ptr33 = getelementptr i8, ptr %builder, i32 68
  %4 = ptrtoint ptr %add.ptr33 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr33, align 4
  %or37 = or i32 %5, 50331648
  store i32 %or37, ptr %add.ptr33, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_tir_init(ptr noundef %tir, ptr noundef %builder, ptr noundef %mdev, i1 noundef zeroext %reg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tir to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %mdev, ptr %tir, align 4
  %tirn = getelementptr inbounds %struct.mlx5e_tir, ptr %tir, i32 0, i32 1
  %call = tail call i32 @mlx5_core_create_tir(ptr noundef %mdev, ptr noundef %builder, ptr noundef %tirn) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %reg, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %1 = ptrtoint ptr %tir to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tir, align 4
  %td = getelementptr inbounds %struct.mlx5_core_dev, ptr %2, i32 0, i32 20, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %td, i32 noundef 0) #6
  %list = getelementptr inbounds %struct.mlx5e_tir, ptr %tir, i32 0, i32 2
  %tirs_list = getelementptr inbounds %struct.mlx5_core_dev, ptr %2, i32 0, i32 20, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %tirs_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tirs_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %tirs_list, ptr noundef %4) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.then4.list_add.exit_crit_edge

if.then4.list_add.exit_crit_edge:                 ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %list, ptr %prev1.i.i, align 4
  %6 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %4, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.mlx5e_tir, ptr %tir, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %tirs_list, ptr %prev3.i.i, align 4
  %8 = ptrtoint ptr %tirs_list to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %list, ptr %tirs_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.then4.list_add.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %td) #6
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %list9 = getelementptr inbounds %struct.mlx5e_tir, ptr %tir, i32 0, i32 2
  %9 = ptrtoint ptr %list9 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %list9, ptr %list9, align 4
  %prev.i = getelementptr inbounds %struct.mlx5e_tir, ptr %tir, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %list9, ptr %prev.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %list_add.exit, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_core_create_tir(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_tir_destroy(ptr noundef %tir) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tir, align 4
  %list = getelementptr inbounds %struct.mlx5e_tir, ptr %tir, i32 0, i32 2
  %2 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %list, align 4
  %cmp.i.not = icmp eq ptr %3, %list
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %td = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 20, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %td, i32 noundef 0) #6
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.mlx5e_tir, ptr %tir, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %10 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.mlx5e_tir, ptr %tir, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef %td) #6
  br label %if.end

if.end:                                           ; preds = %list_del.exit, %entry.if.end_crit_edge
  %12 = ptrtoint ptr %tir to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tir, align 4
  %tirn = getelementptr inbounds %struct.mlx5e_tir, ptr %tir, i32 0, i32 1
  %14 = ptrtoint ptr %tirn to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tirn, align 4
  tail call void @mlx5_core_destroy_tir(ptr noundef %13, i32 noundef %15) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_core_destroy_tir(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_tir_modify(ptr nocapture noundef readonly %tir, ptr noundef %builder) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tir, align 4
  %tirn = getelementptr inbounds %struct.mlx5e_tir, ptr %tir, i32 0, i32 1
  %2 = ptrtoint ptr %tirn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tirn, align 4
  %call = tail call i32 @mlx5_core_modify_tir(ptr noundef %1, i32 noundef %3, ptr noundef %builder) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_core_modify_tir(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tir.c", i32 52, i32 2}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{i8 0, i8 2}
!12 = !{!"branch_weights", i32 2000, i32 1}
