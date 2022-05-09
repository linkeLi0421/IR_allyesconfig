; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlxsw/spectrum_flow.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlxsw/spectrum_flow.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.list_head = type { ptr, ptr }
%struct.mlxsw_sp_flow_block = type { %struct.list_head, %struct.anon, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr }
%struct.anon = type { %struct.list_head, i32, i32 }
%struct.flow_block_offload = type { i32, i32, i8, i8, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.mlxsw_sp_port = type { ptr, ptr, ptr, i16, i8, i16, i16, %struct.anon.162, %struct.anon.163, %struct.mlxsw_sp_port_mapping, %struct.anon.164, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.anon.165, i32, i32, ptr, i64 }
%struct.anon.162 = type { i8 }
%struct.anon.163 = type { ptr, ptr, ptr, i32 }
%struct.mlxsw_sp_port_mapping = type { i8, i8, i8, i8 }
%struct.anon.164 = type { %struct.rtnl_link_stats64, %struct.mlxsw_sp_port_xstats, %struct.delayed_work }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.mlxsw_sp_port_xstats = type { i64, [16 x i64], [16 x i64], [16 x i64], [16 x i64], [8 x i64], [8 x i64] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.165 = type { %struct.delayed_work, %struct.hwtstamp_config, i16, i16, %struct.mlxsw_sp_ptp_port_stats }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.mlxsw_sp_ptp_port_stats = type { %struct.mlxsw_sp_ptp_port_dir_stats, %struct.mlxsw_sp_ptp_port_dir_stats }
%struct.mlxsw_sp_ptp_port_dir_stats = type { i64, i64 }
%struct.mlxsw_sp_flow_block_binding = type { %struct.list_head, ptr, i8 }
%struct.flow_block_cb = type { %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.flow_block_indr, i32 }
%struct.flow_block_indr = type { %struct.list_head, ptr, ptr, i32, ptr, ptr, ptr }
%struct.tc_cls_matchall_offload = type { %struct.flow_cls_common_offload, i32, ptr, %struct.flow_stats, i32 }
%struct.flow_cls_common_offload = type { i32, i16, i32, ptr }
%struct.flow_stats = type { i64, i64, i64, i64, i32, i8 }
%struct.flow_cls_offload = type { %struct.flow_cls_common_offload, i32, i32, ptr, %struct.flow_stats, i32 }

@.str = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/net/ethernet/mellanox/mlxsw/spectrum_flow.c\00", [44 x i8] zeroinitializer }, align 32
@mlxsw_sp_block_cb_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @mlxsw_sp_block_cb_list, ptr @mlxsw_sp_block_cb_list }, [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mlxsw_sp_flow_block_bind.__msg = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"mlxsw_spectrum: Block cannot be bound to ingress because it contains unsupported rules\00", [41 x i8] zeroinitializer }, align 32
@mlxsw_sp_flow_block_bind.__msg.1 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"mlxsw_spectrum: Block cannot be bound to egress because it contains unsupported rules\00", [42 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.4 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 29, i32 2 }
@___asan_gen_.8 = private unnamed_addr constant [23 x i8] c"mlxsw_sp_block_cb_list\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 199, i32 8 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 65, i32 3 }
@___asan_gen_.14 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.15 = private constant [55 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/spectrum_flow.c\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 70, i32 3 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @.str, ptr @mlxsw_sp_block_cb_list, ptr @mlxsw_sp_flow_block_bind.__msg, ptr @mlxsw_sp_flow_block_bind.__msg.1], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_block_cb_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_flow_block_bind.__msg to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_flow_block_bind.__msg.1 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlxsw_sp_flow_block_create(ptr noundef %mlxsw_sp, ptr noundef %net) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 60) #6
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %mall = getelementptr inbounds %struct.mlxsw_sp_flow_block, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %mall to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %mall, ptr %mall, align 8
  %prev.i8 = getelementptr inbounds %struct.mlxsw_sp_flow_block, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i8 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %mall, ptr %prev.i8, align 4
  %mlxsw_sp1 = getelementptr inbounds %struct.mlxsw_sp_flow_block, ptr %call7.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %mlxsw_sp1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %mlxsw_sp, ptr %mlxsw_sp1, align 4
  %net2 = getelementptr inbounds %struct.mlxsw_sp_flow_block, ptr %call7.i.i, i32 0, i32 10
  %6 = ptrtoint ptr %net2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %net, ptr %net2, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlxsw_sp_flow_block_destroy(ptr noundef %block) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %block, align 4
  %cmp.i.not = icmp eq ptr %1, %block
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %do.end, !prof !17

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 29, i32 noundef 9, ptr noundef null) #3
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @kfree(ptr noundef %block) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_setup_tc_block_clsact(ptr noundef %mlxsw_sp_port, ptr noundef %f, i1 noundef zeroext %ingress) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_block_list = getelementptr inbounds %struct.flow_block_offload, ptr %f, i32 0, i32 7
  %0 = ptrtoint ptr %driver_block_list to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @mlxsw_sp_block_cb_list, ptr %driver_block_list, align 4
  %1 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %f, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %2, label %entry.return_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb:                                            ; preds = %entry
  %mlxsw_sp1.i = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 2
  %4 = ptrtoint ptr %mlxsw_sp1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mlxsw_sp1.i, align 8
  %block.i = getelementptr inbounds %struct.flow_block_offload, ptr %f, i32 0, i32 5
  %6 = ptrtoint ptr %block.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %block.i, align 4
  %call.i = tail call ptr @flow_block_cb_lookup(ptr noundef %7, ptr noundef nonnull @mlxsw_sp_flow_block_cb, ptr noundef %5) #3
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %sw.bb
  %net.i = getelementptr inbounds %struct.flow_block_offload, ptr %f, i32 0, i32 4
  %8 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 60) #6
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then.i.return_crit_edge, label %if.end.i

if.then.i.return_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end.i:                                         ; preds = %if.then.i
  %11 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %call7.i.i.i.i, ptr %call7.i.i.i.i, align 8
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i.i.i.i, ptr %prev.i.i.i, align 4
  %mall.i.i = getelementptr inbounds %struct.mlxsw_sp_flow_block, ptr %call7.i.i.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %mall.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %mall.i.i, ptr %mall.i.i, align 8
  %prev.i8.i.i = getelementptr inbounds %struct.mlxsw_sp_flow_block, ptr %call7.i.i.i.i, i32 0, i32 1, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i8.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %mall.i.i, ptr %prev.i8.i.i, align 4
  %mlxsw_sp1.i.i = getelementptr inbounds %struct.mlxsw_sp_flow_block, ptr %call7.i.i.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %mlxsw_sp1.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %5, ptr %mlxsw_sp1.i.i, align 4
  %net2.i.i = getelementptr inbounds %struct.mlxsw_sp_flow_block, ptr %call7.i.i.i.i, i32 0, i32 10
  %16 = ptrtoint ptr %net2.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %9, ptr %net2.i.i, align 8
  %call5.i = tail call ptr @flow_block_cb_alloc(ptr noundef nonnull @mlxsw_sp_flow_block_cb, ptr noundef %5, ptr noundef nonnull %call7.i.i.i.i, ptr noundef nonnull @mlxsw_sp_tc_block_release) #3
  %cmp.i.i = icmp ugt ptr %call5.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then7.i, label %if.end.i.if.end11.i_crit_edge

if.end.i.if.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end11.i

if.then7.i:                                       ; preds = %if.end.i
  %17 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %call7.i.i.i.i, align 8
  %cmp.i.not.i.i = icmp eq ptr %18, %call7.i.i.i.i
  br i1 %cmp.i.not.i.i, label %if.then7.i.mlxsw_sp_flow_block_destroy.exit.i_crit_edge, label %do.end.i.i, !prof !17

if.then7.i.mlxsw_sp_flow_block_destroy.exit.i_crit_edge: ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %mlxsw_sp_flow_block_destroy.exit.i

do.end.i.i:                                       ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 29, i32 noundef 9, ptr noundef null) #3
  br label %mlxsw_sp_flow_block_destroy.exit.i

mlxsw_sp_flow_block_destroy.exit.i:               ; preds = %do.end.i.i, %if.then7.i.mlxsw_sp_flow_block_destroy.exit.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #3
  %19 = ptrtoint ptr %call5.i to i32
  br label %return

if.else.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  %call10.i = tail call ptr @flow_block_cb_priv(ptr noundef nonnull %call.i) #3
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.else.i, %if.end.i.if.end11.i_crit_edge
  %flow_block.0.i = phi ptr [ %call10.i, %if.else.i ], [ %call7.i.i.i.i, %if.end.i.if.end11.i_crit_edge ]
  %block_cb.0.i = phi ptr [ %call.i, %if.else.i ], [ %call5.i, %if.end.i.if.end11.i_crit_edge ]
  tail call void @flow_block_cb_incref(ptr noundef %block_cb.0.i) #3
  %extack.i = getelementptr inbounds %struct.flow_block_offload, ptr %f, i32 0, i32 8
  %20 = ptrtoint ptr %extack.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %extack.i, align 4
  %frombool.i.i = zext i1 %ingress to i8
  %22 = ptrtoint ptr %flow_block.0.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %binding.019.i.i.i = load ptr, ptr %flow_block.0.i, align 4
  %cmp.not20.i.i.i = icmp eq ptr %binding.019.i.i.i, %flow_block.0.i
  br i1 %cmp.not20.i.i.i, label %if.end11.i.if.end23.i.i_crit_edge, label %if.end11.i.for.body.i.i.i_crit_edge

if.end11.i.for.body.i.i.i_crit_edge:              ; preds = %if.end11.i
  br label %for.body.i.i.i

if.end11.i.if.end23.i.i_crit_edge:                ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end23.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %if.end11.i.for.body.i.i.i_crit_edge
  %binding.021.i.i.i = phi ptr [ %binding.0.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %binding.019.i.i.i, %if.end11.i.for.body.i.i.i_crit_edge ]
  %mlxsw_sp_port2.i.i.i = getelementptr inbounds %struct.mlxsw_sp_flow_block_binding, ptr %binding.021.i.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %mlxsw_sp_port2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mlxsw_sp_port2.i.i.i, align 4
  %cmp3.i.i.i = icmp eq ptr %24, %mlxsw_sp_port
  br i1 %cmp3.i.i.i, label %land.lhs.true.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i.i.i

land.lhs.true.i.i.i:                              ; preds = %for.body.i.i.i
  %ingress4.i.i.i = getelementptr inbounds %struct.mlxsw_sp_flow_block_binding, ptr %binding.021.i.i.i, i32 0, i32 2
  %25 = ptrtoint ptr %ingress4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %ingress4.i.i.i, align 4, !range !18
  call void @__sanitizer_cov_trace_cmp1(i8 %26, i8 %frombool.i.i)
  %cmp7.i.i.i = icmp eq i8 %26, %frombool.i.i
  br i1 %cmp7.i.i.i, label %mlxsw_sp_flow_block_lookup.exit.i.i, label %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge

land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %27 = ptrtoint ptr %binding.021.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %binding.0.i.i.i = load ptr, ptr %binding.021.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %binding.0.i.i.i, %flow_block.0.i
  br i1 %cmp.not.i.i.i, label %for.inc.i.i.i.if.end23.i.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i.i.i

for.inc.i.i.i.if.end23.i.i_crit_edge:             ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end23.i.i

mlxsw_sp_flow_block_lookup.exit.i.i:              ; preds = %land.lhs.true.i.i.i
  %tobool1.not.i.i = icmp eq ptr %binding.021.i.i.i, null
  br i1 %tobool1.not.i.i, label %mlxsw_sp_flow_block_lookup.exit.i.i.if.end23.i.i_crit_edge, label %do.end.i57.i, !prof !17

mlxsw_sp_flow_block_lookup.exit.i.i.if.end23.i.i_crit_edge: ; preds = %mlxsw_sp_flow_block_lookup.exit.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end23.i.i

do.end.i57.i:                                     ; preds = %mlxsw_sp_flow_block_lookup.exit.i.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 61, i32 noundef 9, ptr noundef null) #3
  br label %err_block_bind.i

if.end23.i.i:                                     ; preds = %mlxsw_sp_flow_block_lookup.exit.i.i.if.end23.i.i_crit_edge, %for.inc.i.i.i.if.end23.i.i_crit_edge, %if.end11.i.if.end23.i.i_crit_edge
  br i1 %ingress, label %land.lhs.true.i.i, label %land.lhs.true35.critedge.i.i

land.lhs.true.i.i:                                ; preds = %if.end23.i.i
  %ingress_blocker_rule_count.i.i = getelementptr inbounds %struct.mlxsw_sp_flow_block, ptr %flow_block.0.i, i32 0, i32 6
  %28 = ptrtoint ptr %ingress_blocker_rule_count.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ingress_blocker_rule_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool25.not.i.i = icmp eq i32 %29, 0
  br i1 %tobool25.not.i.i, label %land.lhs.true.i.i.if.end46.i.i_crit_edge, label %do.body27.i.i

land.lhs.true.i.i.if.end46.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end46.i.i

do.body27.i.i:                                    ; preds = %land.lhs.true.i.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_flow_block_bind.__msg) #3
  %tobool28.not.i.i = icmp eq ptr %21, null
  br i1 %tobool28.not.i.i, label %do.body27.i.i.err_block_bind.i_crit_edge, label %if.then29.i.i

do.body27.i.i.err_block_bind.i_crit_edge:         ; preds = %do.body27.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %err_block_bind.i

if.then29.i.i:                                    ; preds = %do.body27.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %30 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @mlxsw_sp_flow_block_bind.__msg, ptr %21, align 4
  br label %err_block_bind.i

land.lhs.true35.critedge.i.i:                     ; preds = %if.end23.i.i
  %egress_blocker_rule_count.i.i = getelementptr inbounds %struct.mlxsw_sp_flow_block, ptr %flow_block.0.i, i32 0, i32 7
  %31 = ptrtoint ptr %egress_blocker_rule_count.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %egress_blocker_rule_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool36.not.i.i = icmp eq i32 %32, 0
  br i1 %tobool36.not.i.i, label %land.lhs.true35.critedge.i.i.if.end46.i.i_crit_edge, label %do.body38.i.i

land.lhs.true35.critedge.i.i.if.end46.i.i_crit_edge: ; preds = %land.lhs.true35.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end46.i.i

do.body38.i.i:                                    ; preds = %land.lhs.true35.critedge.i.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_flow_block_bind.__msg.1) #3
  %tobool40.not.i.i = icmp eq ptr %21, null
  br i1 %tobool40.not.i.i, label %do.body38.i.i.err_block_bind.i_crit_edge, label %if.then41.i.i

do.body38.i.i.err_block_bind.i_crit_edge:         ; preds = %do.body38.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %err_block_bind.i

if.then41.i.i:                                    ; preds = %do.body38.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %33 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @mlxsw_sp_flow_block_bind.__msg.1, ptr %21, align 4
  br label %err_block_bind.i

if.end46.i.i:                                     ; preds = %land.lhs.true35.critedge.i.i.if.end46.i.i_crit_edge, %land.lhs.true.i.i.if.end46.i.i_crit_edge
  %call47.i.i = tail call i32 @mlxsw_sp_mall_port_bind(ptr noundef %flow_block.0.i, ptr noundef %mlxsw_sp_port, ptr noundef %21) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i.i)
  %tobool48.not.i.i = icmp eq i32 %call47.i.i, 0
  br i1 %tobool48.not.i.i, label %if.end50.i.i, label %if.end46.i.i.err_block_bind.i_crit_edge

if.end46.i.i.err_block_bind.i_crit_edge:          ; preds = %if.end46.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %err_block_bind.i

if.end50.i.i:                                     ; preds = %if.end46.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %34 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i58.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %34, i32 noundef 3520, i32 noundef 16) #6
  %tobool52.not.i.i = icmp eq ptr %call7.i.i.i58.i, null
  br i1 %tobool52.not.i.i, label %if.end50.i.i.err_binding_alloc.i.i_crit_edge, label %if.end54.i.i

if.end50.i.i.err_binding_alloc.i.i_crit_edge:     ; preds = %if.end50.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %err_binding_alloc.i.i

if.end54.i.i:                                     ; preds = %if.end50.i.i
  %mlxsw_sp_port55.i.i = getelementptr inbounds %struct.mlxsw_sp_flow_block_binding, ptr %call7.i.i.i58.i, i32 0, i32 1
  %35 = ptrtoint ptr %mlxsw_sp_port55.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %mlxsw_sp_port, ptr %mlxsw_sp_port55.i.i, align 8
  %ingress57.i.i = getelementptr inbounds %struct.mlxsw_sp_flow_block_binding, ptr %call7.i.i.i58.i, i32 0, i32 2
  %36 = ptrtoint ptr %ingress57.i.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %frombool.i.i, ptr %ingress57.i.i, align 4
  %ruleset_zero.i.i.i = getelementptr inbounds %struct.mlxsw_sp_flow_block, ptr %flow_block.0.i, i32 0, i32 2
  %37 = ptrtoint ptr %ruleset_zero.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ruleset_zero.i.i.i, align 4
  %tobool.i.not.i.i = icmp eq ptr %38, null
  br i1 %tobool.i.not.i.i, label %if.end54.i.i.if.end65.i.i_crit_edge, label %if.then60.i.i

if.end54.i.i.if.end65.i.i_crit_edge:              ; preds = %if.end54.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end65.i.i

if.then60.i.i:                                    ; preds = %if.end54.i.i
  %call61.i.i = tail call i32 @mlxsw_sp_acl_ruleset_bind(ptr noundef %5, ptr noundef %flow_block.0.i, ptr noundef nonnull %call7.i.i.i58.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61.i.i)
  %tobool62.not.i.i = icmp eq i32 %call61.i.i, 0
  br i1 %tobool62.not.i.i, label %if.then60.i.i.if.end65.i.i_crit_edge, label %err_ruleset_bind.i.i

if.then60.i.i.if.end65.i.i_crit_edge:             ; preds = %if.then60.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end65.i.i

if.end65.i.i:                                     ; preds = %if.then60.i.i.if.end65.i.i_crit_edge, %if.end54.i.i.if.end65.i.i_crit_edge
  %egress_binding_count.i.i = getelementptr inbounds %struct.mlxsw_sp_flow_block, ptr %flow_block.0.i, i32 0, i32 9
  %ingress_binding_count.i.i = getelementptr inbounds %struct.mlxsw_sp_flow_block, ptr %flow_block.0.i, i32 0, i32 8
  %egress_binding_count.sink105.i.i = select i1 %ingress, ptr %ingress_binding_count.i.i, ptr %egress_binding_count.i.i
  %39 = ptrtoint ptr %egress_binding_count.sink105.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %egress_binding_count.sink105.i.i, align 4
  %inc68.i.i = add i32 %40, 1
  store i32 %inc68.i.i, ptr %egress_binding_count.sink105.i.i, align 4
  %41 = ptrtoint ptr %flow_block.0.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %flow_block.0.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i58.i, ptr noundef %flow_block.0.i, ptr noundef %42) #3
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end65.i.i.if.end16.i_crit_edge

if.end65.i.i.if.end16.i_crit_edge:                ; preds = %if.end65.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end16.i

if.end.i.i.i.i:                                   ; preds = %if.end65.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call7.i.i.i58.i, ptr %prev1.i.i.i.i, align 4
  %44 = ptrtoint ptr %call7.i.i.i58.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %42, ptr %call7.i.i.i58.i, align 8
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i58.i, i32 0, i32 1
  %45 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %flow_block.0.i, ptr %prev3.i.i.i.i, align 4
  %46 = ptrtoint ptr %flow_block.0.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %call7.i.i.i58.i, ptr %flow_block.0.i, align 4
  br label %if.end16.i

err_ruleset_bind.i.i:                             ; preds = %if.then60.i.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i58.i) #3
  br label %err_binding_alloc.i.i

err_binding_alloc.i.i:                            ; preds = %err_ruleset_bind.i.i, %if.end50.i.i.err_binding_alloc.i.i_crit_edge
  %err.0.i.i = phi i32 [ %call61.i.i, %err_ruleset_bind.i.i ], [ -12, %if.end50.i.i.err_binding_alloc.i.i_crit_edge ]
  tail call void @mlxsw_sp_mall_port_unbind(ptr noundef %flow_block.0.i, ptr noundef %mlxsw_sp_port) #3
  br label %err_block_bind.i

if.end16.i:                                       ; preds = %if.end.i.i.i.i, %if.end65.i.i.if.end16.i_crit_edge
  br i1 %ingress, label %if.then18.i, label %if.else19.i

if.then18.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #5
  %ing_flow_block.i = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 15
  %47 = ptrtoint ptr %ing_flow_block.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %flow_block.0.i, ptr %ing_flow_block.i, align 4
  br label %if.end20.i

if.else19.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #5
  %eg_flow_block.i = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 16
  %48 = ptrtoint ptr %eg_flow_block.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %flow_block.0.i, ptr %eg_flow_block.i, align 8
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.else19.i, %if.then18.i
  br i1 %tobool.not.i, label %if.then22.i, label %if.end20.i.return_crit_edge

if.end20.i.return_crit_edge:                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.then22.i:                                      ; preds = %if.end20.i
  %list.i.i = getelementptr inbounds %struct.flow_block_cb, ptr %block_cb.0.i, i32 0, i32 1
  %cb_list.i.i = getelementptr inbounds %struct.flow_block_offload, ptr %f, i32 0, i32 6
  %prev.i.i59.i = getelementptr inbounds %struct.flow_block_offload, ptr %f, i32 0, i32 6, i32 1
  %49 = ptrtoint ptr %prev.i.i59.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %prev.i.i59.i, align 4
  %call.i.i.i60.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i.i, ptr noundef %50, ptr noundef %cb_list.i.i) #3
  br i1 %call.i.i.i60.i, label %if.end.i.i.i62.i, label %if.then22.i.flow_block_cb_add.exit.i_crit_edge

if.then22.i.flow_block_cb_add.exit.i_crit_edge:   ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %flow_block_cb_add.exit.i

if.end.i.i.i62.i:                                 ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #5
  %51 = ptrtoint ptr %prev.i.i59.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %list.i.i, ptr %prev.i.i59.i, align 4
  %52 = ptrtoint ptr %list.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %cb_list.i.i, ptr %list.i.i, align 4
  %prev3.i.i.i61.i = getelementptr inbounds %struct.flow_block_cb, ptr %block_cb.0.i, i32 0, i32 1, i32 1
  %53 = ptrtoint ptr %prev3.i.i.i61.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %50, ptr %prev3.i.i.i61.i, align 4
  %54 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %list.i.i, ptr %50, align 4
  br label %flow_block_cb_add.exit.i

flow_block_cb_add.exit.i:                         ; preds = %if.end.i.i.i62.i, %if.then22.i.flow_block_cb_add.exit.i_crit_edge
  %55 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @mlxsw_sp_block_cb_list, i32 0, i32 1), align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %block_cb.0.i, ptr noundef %55, ptr noundef nonnull @mlxsw_sp_block_cb_list) #3
  br i1 %call.i.i.i, label %if.end.i.i.i, label %flow_block_cb_add.exit.i.return_crit_edge

flow_block_cb_add.exit.i.return_crit_edge:        ; preds = %flow_block_cb_add.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end.i.i.i:                                     ; preds = %flow_block_cb_add.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  store ptr %block_cb.0.i, ptr getelementptr inbounds (%struct.list_head, ptr @mlxsw_sp_block_cb_list, i32 0, i32 1), align 4
  %56 = ptrtoint ptr %block_cb.0.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @mlxsw_sp_block_cb_list, ptr %block_cb.0.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %block_cb.0.i, i32 0, i32 1
  %57 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %55, ptr %prev3.i.i.i, align 4
  %58 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %block_cb.0.i, ptr %55, align 4
  br label %return

err_block_bind.i:                                 ; preds = %err_binding_alloc.i.i, %if.end46.i.i.err_block_bind.i_crit_edge, %if.then41.i.i, %do.body38.i.i.err_block_bind.i_crit_edge, %if.then29.i.i, %do.body27.i.i.err_block_bind.i_crit_edge, %do.end.i57.i
  %retval.0.i.ph.i = phi i32 [ %call47.i.i, %if.end46.i.i.err_block_bind.i_crit_edge ], [ -95, %do.body38.i.i.err_block_bind.i_crit_edge ], [ -95, %if.then41.i.i ], [ -95, %do.body27.i.i.err_block_bind.i_crit_edge ], [ -95, %if.then29.i.i ], [ %err.0.i.i, %err_binding_alloc.i.i ], [ -17, %do.end.i57.i ]
  %call24.i = tail call i32 @flow_block_cb_decref(ptr noundef %block_cb.0.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool25.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.not.i, label %if.then26.i, label %err_block_bind.i.return_crit_edge

err_block_bind.i.return_crit_edge:                ; preds = %err_block_bind.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.then26.i:                                      ; preds = %err_block_bind.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @flow_block_cb_free(ptr noundef %block_cb.0.i) #3
  br label %return

sw.bb1:                                           ; preds = %entry
  %mlxsw_sp1.i8 = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 2
  %59 = ptrtoint ptr %mlxsw_sp1.i8 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %mlxsw_sp1.i8, align 8
  %block.i9 = getelementptr inbounds %struct.flow_block_offload, ptr %f, i32 0, i32 5
  %61 = ptrtoint ptr %block.i9 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %block.i9, align 4
  %call.i10 = tail call ptr @flow_block_cb_lookup(ptr noundef %62, ptr noundef nonnull @mlxsw_sp_flow_block_cb, ptr noundef %60) #3
  %tobool.not.i11 = icmp eq ptr %call.i10, null
  br i1 %tobool.not.i11, label %sw.bb1.return_crit_edge, label %if.end.i12

sw.bb1.return_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end.i12:                                       ; preds = %sw.bb1
  br i1 %ingress, label %if.then3.i, label %if.else.i15

if.then3.i:                                       ; preds = %if.end.i12
  call void @__sanitizer_cov_trace_pc() #5
  %ing_flow_block.i13 = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 15
  %63 = ptrtoint ptr %ing_flow_block.i13 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %ing_flow_block.i13, align 4
  br label %if.end4.i

if.else.i15:                                      ; preds = %if.end.i12
  call void @__sanitizer_cov_trace_pc() #5
  %eg_flow_block.i14 = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 16
  %64 = ptrtoint ptr %eg_flow_block.i14 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %eg_flow_block.i14, align 8
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.else.i15, %if.then3.i
  %call5.i16 = tail call ptr @flow_block_cb_priv(ptr noundef nonnull %call.i10) #3
  %65 = ptrtoint ptr %call5.i16 to i32
  call void @__asan_load4_noabort(i32 %65)
  %binding.019.i.i.i17 = load ptr, ptr %call5.i16, align 4
  %cmp.not20.i.i.i18 = icmp eq ptr %binding.019.i.i.i17, %call5.i16
  br i1 %cmp.not20.i.i.i18, label %if.end4.i.return_crit_edge, label %for.body.lr.ph.i.i.i

if.end4.i.return_crit_edge:                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

for.body.lr.ph.i.i.i:                             ; preds = %if.end4.i
  %66 = zext i1 %ingress to i8
  br label %for.body.i.i.i22

for.body.i.i.i22:                                 ; preds = %for.inc.i.i.i28.for.body.i.i.i22_crit_edge, %for.body.lr.ph.i.i.i
  %binding.021.i.i.i19 = phi ptr [ %binding.019.i.i.i17, %for.body.lr.ph.i.i.i ], [ %binding.0.i.i.i26, %for.inc.i.i.i28.for.body.i.i.i22_crit_edge ]
  %mlxsw_sp_port2.i.i.i20 = getelementptr inbounds %struct.mlxsw_sp_flow_block_binding, ptr %binding.021.i.i.i19, i32 0, i32 1
  %67 = ptrtoint ptr %mlxsw_sp_port2.i.i.i20 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %mlxsw_sp_port2.i.i.i20, align 4
  %cmp3.i.i.i21 = icmp eq ptr %68, %mlxsw_sp_port
  br i1 %cmp3.i.i.i21, label %land.lhs.true.i.i.i25, label %for.body.i.i.i22.for.inc.i.i.i28_crit_edge

for.body.i.i.i22.for.inc.i.i.i28_crit_edge:       ; preds = %for.body.i.i.i22
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i.i.i28

land.lhs.true.i.i.i25:                            ; preds = %for.body.i.i.i22
  %ingress4.i.i.i23 = getelementptr inbounds %struct.mlxsw_sp_flow_block_binding, ptr %binding.021.i.i.i19, i32 0, i32 2
  %69 = ptrtoint ptr %ingress4.i.i.i23 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %ingress4.i.i.i23, align 4, !range !18
  call void @__sanitizer_cov_trace_cmp1(i8 %70, i8 %66)
  %cmp7.i.i.i24 = icmp eq i8 %70, %66
  br i1 %cmp7.i.i.i24, label %mlxsw_sp_flow_block_lookup.exit.i.i30, label %land.lhs.true.i.i.i25.for.inc.i.i.i28_crit_edge

land.lhs.true.i.i.i25.for.inc.i.i.i28_crit_edge:  ; preds = %land.lhs.true.i.i.i25
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i.i.i28

for.inc.i.i.i28:                                  ; preds = %land.lhs.true.i.i.i25.for.inc.i.i.i28_crit_edge, %for.body.i.i.i22.for.inc.i.i.i28_crit_edge
  %71 = ptrtoint ptr %binding.021.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %71)
  %binding.0.i.i.i26 = load ptr, ptr %binding.021.i.i.i19, align 4
  %cmp.not.i.i.i27 = icmp eq ptr %binding.0.i.i.i26, %call5.i16
  br i1 %cmp.not.i.i.i27, label %for.inc.i.i.i28.return_crit_edge, label %for.inc.i.i.i28.for.body.i.i.i22_crit_edge

for.inc.i.i.i28.for.body.i.i.i22_crit_edge:       ; preds = %for.inc.i.i.i28
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i.i.i22

for.inc.i.i.i28.return_crit_edge:                 ; preds = %for.inc.i.i.i28
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

mlxsw_sp_flow_block_lookup.exit.i.i30:            ; preds = %land.lhs.true.i.i.i25
  %tobool1.not.i.i29 = icmp eq ptr %binding.021.i.i.i19, null
  br i1 %tobool1.not.i.i29, label %mlxsw_sp_flow_block_lookup.exit.i.i30.return_crit_edge, label %if.end.i.i

mlxsw_sp_flow_block_lookup.exit.i.i30.return_crit_edge: ; preds = %mlxsw_sp_flow_block_lookup.exit.i.i30
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end.i.i:                                       ; preds = %mlxsw_sp_flow_block_lookup.exit.i.i30
  %call.i.i.i.i31 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %binding.021.i.i.i19) #3
  br i1 %call.i.i.i.i31, label %if.end.i.i.i.i32, label %if.end.i.i.list_del.exit.i.i_crit_edge

if.end.i.i.list_del.exit.i.i_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_del.exit.i.i

if.end.i.i.i.i32:                                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %binding.021.i.i.i19, i32 0, i32 1
  %72 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %prev.i.i.i.i, align 4
  %74 = ptrtoint ptr %binding.021.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %binding.021.i.i.i19, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %73, ptr %prev1.i.i.i.i.i, align 4
  %77 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile ptr %75, ptr %73, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i32, %if.end.i.i.list_del.exit.i.i_crit_edge
  %78 = ptrtoint ptr %binding.021.i.i.i19 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr inttoptr (i32 256 to ptr), ptr %binding.021.i.i.i19, align 4
  %prev.i.i.i33 = getelementptr inbounds %struct.list_head, ptr %binding.021.i.i.i19, i32 0, i32 1
  %79 = ptrtoint ptr %prev.i.i.i33 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i33, align 4
  %egress_binding_count.i.i34 = getelementptr inbounds %struct.mlxsw_sp_flow_block, ptr %call5.i16, i32 0, i32 9
  %ingress_binding_count.i.i35 = getelementptr inbounds %struct.mlxsw_sp_flow_block, ptr %call5.i16, i32 0, i32 8
  %egress_binding_count.sink25.i.i = select i1 %ingress, ptr %ingress_binding_count.i.i35, ptr %egress_binding_count.i.i34
  %80 = ptrtoint ptr %egress_binding_count.sink25.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %egress_binding_count.sink25.i.i, align 4
  %dec4.i.i = add i32 %81, -1
  store i32 %dec4.i.i, ptr %egress_binding_count.sink25.i.i, align 4
  %ruleset_zero.i.i.i36 = getelementptr inbounds %struct.mlxsw_sp_flow_block, ptr %call5.i16, i32 0, i32 2
  %82 = ptrtoint ptr %ruleset_zero.i.i.i36 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ruleset_zero.i.i.i36, align 4
  %tobool.i.not.i.i37 = icmp eq ptr %83, null
  br i1 %tobool.i.not.i.i37, label %list_del.exit.i.i.land.lhs.true.i_crit_edge, label %if.then7.i.i

list_del.exit.i.i.land.lhs.true.i_crit_edge:      ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.lhs.true.i

if.then7.i.i:                                     ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @mlxsw_sp_acl_ruleset_unbind(ptr noundef %60, ptr noundef %call5.i16, ptr noundef nonnull %binding.021.i.i.i19) #3
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then7.i.i, %list_del.exit.i.i.land.lhs.true.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %binding.021.i.i.i19) #3
  tail call void @mlxsw_sp_mall_port_unbind(ptr noundef %call5.i16, ptr noundef %mlxsw_sp_port) #3
  %call9.i = tail call i32 @flow_block_cb_decref(ptr noundef nonnull %call.i10) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.then11.i, label %land.lhs.true.i.return_crit_edge

land.lhs.true.i.return_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.then11.i:                                      ; preds = %land.lhs.true.i
  %list.i.i38 = getelementptr inbounds %struct.flow_block_cb, ptr %call.i10, i32 0, i32 1
  %cb_list.i.i39 = getelementptr inbounds %struct.flow_block_offload, ptr %f, i32 0, i32 6
  %call.i.i.i26.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i.i38) #3
  br i1 %call.i.i.i26.i, label %if.end.i.i.i29.i, label %if.then11.i.__list_del_entry.exit.i.i.i_crit_edge

if.then11.i.__list_del_entry.exit.i.i.i_crit_edge: ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %__list_del_entry.exit.i.i.i

if.end.i.i.i29.i:                                 ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #5
  %prev.i.i.i27.i = getelementptr inbounds %struct.flow_block_cb, ptr %call.i10, i32 0, i32 1, i32 1
  %84 = ptrtoint ptr %prev.i.i.i27.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %prev.i.i.i27.i, align 4
  %86 = ptrtoint ptr %list.i.i38 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %list.i.i38, align 4
  %prev1.i.i.i.i28.i = getelementptr inbounds %struct.list_head, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %prev1.i.i.i.i28.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %85, ptr %prev1.i.i.i.i28.i, align 4
  %89 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile ptr %87, ptr %85, align 4
  br label %__list_del_entry.exit.i.i.i

__list_del_entry.exit.i.i.i:                      ; preds = %if.end.i.i.i29.i, %if.then11.i.__list_del_entry.exit.i.i.i_crit_edge
  %90 = ptrtoint ptr %cb_list.i.i39 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %cb_list.i.i39, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i.i38, ptr noundef %cb_list.i.i39, ptr noundef %91) #3
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %__list_del_entry.exit.i.i.i.flow_block_cb_remove.exit.i_crit_edge

__list_del_entry.exit.i.i.i.flow_block_cb_remove.exit.i_crit_edge: ; preds = %__list_del_entry.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %flow_block_cb_remove.exit.i

if.end.i.i.i.i.i:                                 ; preds = %__list_del_entry.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %prev1.i.i2.i.i.i = getelementptr inbounds %struct.list_head, ptr %91, i32 0, i32 1
  %92 = ptrtoint ptr %prev1.i.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %list.i.i38, ptr %prev1.i.i2.i.i.i, align 4
  %93 = ptrtoint ptr %list.i.i38 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %91, ptr %list.i.i38, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.flow_block_cb, ptr %call.i10, i32 0, i32 1, i32 1
  %94 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %cb_list.i.i39, ptr %prev3.i.i.i.i.i, align 4
  %95 = ptrtoint ptr %cb_list.i.i39 to i32
  call void @__asan_store4_noabort(i32 %95)
  store volatile ptr %list.i.i38, ptr %cb_list.i.i39, align 4
  br label %flow_block_cb_remove.exit.i

flow_block_cb_remove.exit.i:                      ; preds = %if.end.i.i.i.i.i, %__list_del_entry.exit.i.i.i.flow_block_cb_remove.exit.i_crit_edge
  %call.i.i.i40 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %call.i10) #3
  br i1 %call.i.i.i40, label %if.end.i.i.i42, label %flow_block_cb_remove.exit.i.list_del.exit.i_crit_edge

flow_block_cb_remove.exit.i.list_del.exit.i_crit_edge: ; preds = %flow_block_cb_remove.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_del.exit.i

if.end.i.i.i42:                                   ; preds = %flow_block_cb_remove.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  %prev.i.i30.i = getelementptr inbounds %struct.list_head, ptr %call.i10, i32 0, i32 1
  %96 = ptrtoint ptr %prev.i.i30.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %prev.i.i30.i, align 4
  %98 = ptrtoint ptr %call.i10 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %call.i10, align 4
  %prev1.i.i.i.i41 = getelementptr inbounds %struct.list_head, ptr %99, i32 0, i32 1
  %100 = ptrtoint ptr %prev1.i.i.i.i41 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %97, ptr %prev1.i.i.i.i41, align 4
  %101 = ptrtoint ptr %97 to i32
  call void @__asan_store4_noabort(i32 %101)
  store volatile ptr %99, ptr %97, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i42, %flow_block_cb_remove.exit.i.list_del.exit.i_crit_edge
  %102 = ptrtoint ptr %call.i10 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr inttoptr (i32 256 to ptr), ptr %call.i10, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call.i10, i32 0, i32 1
  %103 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  br label %return

return:                                           ; preds = %list_del.exit.i, %land.lhs.true.i.return_crit_edge, %mlxsw_sp_flow_block_lookup.exit.i.i30.return_crit_edge, %for.inc.i.i.i28.return_crit_edge, %if.end4.i.return_crit_edge, %sw.bb1.return_crit_edge, %if.then26.i, %err_block_bind.i.return_crit_edge, %if.end.i.i.i, %flow_block_cb_add.exit.i.return_crit_edge, %if.end20.i.return_crit_edge, %mlxsw_sp_flow_block_destroy.exit.i, %if.then.i.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -95, %entry.return_crit_edge ], [ %19, %mlxsw_sp_flow_block_destroy.exit.i ], [ 0, %if.end20.i.return_crit_edge ], [ %retval.0.i.ph.i, %if.then26.i ], [ %retval.0.i.ph.i, %err_block_bind.i.return_crit_edge ], [ 0, %flow_block_cb_add.exit.i.return_crit_edge ], [ 0, %if.end.i.i.i ], [ -12, %if.then.i.return_crit_edge ], [ 0, %sw.bb1.return_crit_edge ], [ 0, %if.end4.i.return_crit_edge ], [ 0, %mlxsw_sp_flow_block_lookup.exit.i.i30.return_crit_edge ], [ 0, %land.lhs.true.i.return_crit_edge ], [ 0, %list_del.exit.i ], [ 0, %for.inc.i.i.i28.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @flow_block_cb_lookup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_flow_block_cb(i32 noundef %type, ptr noundef %type_data, ptr noundef %cb_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %disable_count.i = getelementptr inbounds %struct.mlxsw_sp_flow_block, ptr %cb_priv, i32 0, i32 5
  %0 = ptrtoint ptr %disable_count.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %disable_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.i.not = icmp eq i32 %1, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %type, label %if.end.cleanup_crit_edge [
    i32 3, label %sw.bb
    i32 2, label %sw.bb2
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %command.i = getelementptr inbounds %struct.tc_cls_matchall_offload, ptr %type_data, i32 0, i32 1
  %3 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %command.i, align 8
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %4, label %sw.bb.cleanup_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb2.i
  ]

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.bb.i:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  %mlxsw_sp.i.i = getelementptr inbounds %struct.mlxsw_sp_flow_block, ptr %cb_priv, i32 0, i32 3
  %6 = ptrtoint ptr %mlxsw_sp.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mlxsw_sp.i.i, align 4
  %call1.i = tail call i32 @mlxsw_sp_mall_replace(ptr noundef %7, ptr noundef %cb_priv, ptr noundef %type_data) #3
  br label %cleanup

sw.bb2.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @mlxsw_sp_mall_destroy(ptr noundef %cb_priv, ptr noundef %type_data) #3
  br label %cleanup

sw.bb2:                                           ; preds = %if.end
  %mlxsw_sp.i.i7 = getelementptr inbounds %struct.mlxsw_sp_flow_block, ptr %cb_priv, i32 0, i32 3
  %8 = ptrtoint ptr %mlxsw_sp.i.i7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mlxsw_sp.i.i7, align 4
  %command.i8 = getelementptr inbounds %struct.flow_cls_offload, ptr %type_data, i32 0, i32 1
  %10 = ptrtoint ptr %command.i8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %command.i8, align 8
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %11, label %sw.bb2.cleanup_crit_edge [
    i32 0, label %sw.bb.i10
    i32 1, label %sw.bb2.i11
    i32 2, label %sw.bb3.i
    i32 3, label %sw.bb5.i
    i32 4, label %sw.bb7.i
  ]

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.bb.i10:                                        ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #5
  %call1.i9 = tail call i32 @mlxsw_sp_flower_replace(ptr noundef %9, ptr noundef %cb_priv, ptr noundef %type_data) #3
  br label %cleanup

sw.bb2.i11:                                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @mlxsw_sp_flower_destroy(ptr noundef %9, ptr noundef %cb_priv, ptr noundef %type_data) #3
  br label %cleanup

sw.bb3.i:                                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #5
  %call4.i = tail call i32 @mlxsw_sp_flower_stats(ptr noundef %9, ptr noundef %cb_priv, ptr noundef %type_data) #3
  br label %cleanup

sw.bb5.i:                                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #5
  %call6.i = tail call i32 @mlxsw_sp_flower_tmplt_create(ptr noundef %9, ptr noundef %cb_priv, ptr noundef %type_data) #3
  br label %cleanup

sw.bb7.i:                                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @mlxsw_sp_flower_tmplt_destroy(ptr noundef %9, ptr noundef %cb_priv, ptr noundef %type_data) #3
  br label %cleanup

cleanup:                                          ; preds = %sw.bb7.i, %sw.bb5.i, %sw.bb3.i, %sw.bb2.i11, %sw.bb.i10, %sw.bb2.cleanup_crit_edge, %sw.bb2.i, %sw.bb.i, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ 0, %sw.bb2.i ], [ %call1.i, %sw.bb.i ], [ -95, %sw.bb.cleanup_crit_edge ], [ 0, %sw.bb7.i ], [ %call6.i, %sw.bb5.i ], [ %call4.i, %sw.bb3.i ], [ 0, %sw.bb2.i11 ], [ %call1.i9, %sw.bb.i10 ], [ -95, %sw.bb2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @flow_block_cb_alloc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp_tc_block_release(ptr noundef %cb_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cb_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %cb_priv, align 4
  %cmp.i.not.i = icmp eq ptr %1, %cb_priv
  br i1 %cmp.i.not.i, label %entry.mlxsw_sp_flow_block_destroy.exit_crit_edge, label %do.end.i, !prof !17

entry.mlxsw_sp_flow_block_destroy.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %mlxsw_sp_flow_block_destroy.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 29, i32 noundef 9, ptr noundef null) #3
  br label %mlxsw_sp_flow_block_destroy.exit

mlxsw_sp_flow_block_destroy.exit:                 ; preds = %do.end.i, %entry.mlxsw_sp_flow_block_destroy.exit_crit_edge
  tail call void @kfree(ptr noundef %cb_priv) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @flow_block_cb_priv(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_block_cb_incref(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @flow_block_cb_decref(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_block_cb_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_mall_replace(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_sp_mall_destroy(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_flower_replace(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_sp_flower_destroy(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_flower_stats(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_flower_tmplt_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_sp_flower_tmplt_destroy(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_mall_port_bind(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_acl_ruleset_bind(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_sp_mall_port_unbind(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_sp_acl_ruleset_unbind(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_flow.c", i32 29, i32 2}
!2 = !{ptr @mlxsw_sp_block_cb_list, !3, !"mlxsw_sp_block_cb_list", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_flow.c", i32 199, i32 8}
!4 = !{ptr @mlxsw_sp_flow_block_bind.__msg, !5, !"__msg", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_flow.c", i32 65, i32 3}
!6 = !{ptr @mlxsw_sp_flow_block_bind.__msg.1, !7, !"__msg", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_flow.c", i32 70, i32 3}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{!"branch_weights", i32 2000, i32 1}
!18 = !{i8 0, i8 2}
