; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/aquantia/atlantic/aq_vec.c_pt.bc'
source_filename = "../drivers/net/ethernet/aquantia/atlantic/aq_vec.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.aq_vec_s = type { ptr, ptr, ptr, i32, i32, %struct.aq_ring_param_s, %struct.napi_struct, [8 x [2 x %struct.aq_ring_s]] }
%struct.aq_ring_param_s = type { i32, i32, %struct.cpumask }
%struct.cpumask = type { [1 x i32] }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.aq_ring_s = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %union.aq_ring_stats_s, i32, i32 }
%union.aq_ring_stats_s = type { %struct.aq_ring_stats_rx_s }
%struct.aq_ring_stats_rx_s = type { %struct.u64_stats_sync, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.aq_nic_cfg_s = type { ptr, i64, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, %struct.aq_fc_info, i32, i32, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, [8 x i8], [8 x i32], i32, [8 x i32], %struct.aq_rss_parameters, i32 }
%struct.aq_fc_info = type { i32, i32 }
%struct.aq_rss_parameters = type { i16, i16, i16, [10 x i32], [64 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.aq_hw_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_ = private constant [51 x i8] c"../drivers/net/ethernet/aquantia/atlantic/aq_vec.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3, i32 108, i32 2 }
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 271, i32 2 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @aq_vec_alloc(ptr noundef %aq_nic, i32 noundef %idx, ptr nocapture noundef readonly %aq_nic_cfg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 2944) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.err_exit_crit_edge, label %if.end

entry.err_exit_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_exit

if.end:                                           ; preds = %entry
  %aq_nic1 = getelementptr inbounds %struct.aq_vec_s, ptr %call7.i.i, i32 0, i32 2
  %1 = ptrtoint ptr %aq_nic1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %aq_nic, ptr %aq_nic1, align 8
  %aq_ring_param = getelementptr inbounds %struct.aq_vec_s, ptr %call7.i.i, i32 0, i32 5
  %2 = ptrtoint ptr %aq_ring_param to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %idx, ptr %aq_ring_param, align 4
  %aq_rss = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %aq_nic_cfg, i32 0, i32 36
  %3 = ptrtoint ptr %aq_rss to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %aq_rss, align 4
  %conv = zext i16 %4 to i32
  %add = add i32 %conv, %idx
  %cpu = getelementptr inbounds %struct.aq_vec_s, ptr %call7.i.i, i32 0, i32 5, i32 1
  %5 = ptrtoint ptr %cpu to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %add, ptr %cpu, align 8
  %affinity_mask = getelementptr inbounds %struct.aq_vec_s, ptr %call7.i.i, i32 0, i32 5, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %6 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %add)
  %cmp.not.i.i.i = icmp ugt i32 %6, %add
  br i1 %cmp.not.i.i.i, label %if.end.cpumask_set_cpu.exit_crit_edge, label %land.rhs.i.i.i

if.end.cpumask_set_cpu.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpumask_set_cpu.exit

land.rhs.i.i.i:                                   ; preds = %if.end
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %land.rhs.i.i.i.cpumask_set_cpu.exit_crit_edge, label %if.then.i.i.i, !prof !16

land.rhs.i.i.i.cpumask_set_cpu.exit_crit_edge:    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpumask_set_cpu.exit

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpumask_set_cpu.exit

cpumask_set_cpu.exit:                             ; preds = %if.then.i.i.i, %land.rhs.i.i.i.cpumask_set_cpu.exit_crit_edge, %if.end.cpumask_set_cpu.exit_crit_edge
  tail call void @_set_bit(i32 noundef %add, ptr noundef %affinity_mask) #8
  %tx_rings = getelementptr inbounds %struct.aq_vec_s, ptr %call7.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %tx_rings to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %tx_rings, align 4
  %rx_rings = getelementptr inbounds %struct.aq_vec_s, ptr %call7.i.i, i32 0, i32 4
  %8 = ptrtoint ptr %rx_rings to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %rx_rings, align 8
  %call6 = tail call ptr @aq_nic_get_ndev(ptr noundef %aq_nic) #8
  %napi = getelementptr inbounds %struct.aq_vec_s, ptr %call7.i.i, i32 0, i32 6
  tail call void @netif_napi_add(ptr noundef %call6, ptr noundef %napi, ptr noundef nonnull @aq_vec_poll, i32 noundef 64) #8
  br label %err_exit

err_exit:                                         ; preds = %cpumask_set_cpu.exit, %entry.err_exit_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @aq_nic_get_ndev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_vec_poll(ptr noundef %napi, i32 noundef %budget) #0 align 64 {
entry:
  %work_done = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %work_done) #8
  %0 = ptrtoint ptr %work_done to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %work_done, align 4
  %tobool.not = icmp eq ptr %add.ptr, null
  br i1 %tobool.not, label %entry.if.end70_crit_edge, label %if.else

entry.if.end70_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

if.else:                                          ; preds = %entry
  %ring1 = getelementptr i8, ptr %napi, i32 224
  %aq_hw = getelementptr i8, ptr %napi, i32 -28
  %tx_rings = getelementptr i8, ptr %napi, i32 -20
  %1 = ptrtoint ptr %tx_rings to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tx_rings, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp117.not = icmp eq i32 %2, 0
  br i1 %cmp117.not, label %if.else.if.end62_crit_edge, label %if.else.for.body_crit_edge

if.else.for.body_crit_edge:                       ; preds = %if.else
  br label %for.body

if.else.if.end62_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.else.for.body_crit_edge
  %i.0121 = phi i32 [ %inc56, %for.inc.for.body_crit_edge ], [ 0, %if.else.for.body_crit_edge ]
  %was_tx_cleaned.0.off0119 = phi i1 [ %was_tx_cleaned.1.off0, %for.inc.for.body_crit_edge ], [ true, %if.else.for.body_crit_edge ]
  %ring.0118 = phi ptr [ %arrayidx58, %for.inc.for.body_crit_edge ], [ %ring1, %if.else.for.body_crit_edge ]
  %arrayidx2 = getelementptr %struct.aq_ring_s, ptr %ring.0118, i32 1
  %stats = getelementptr %struct.aq_ring_s, ptr %ring.0118, i32 1, i32 10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %3 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i.i, label %for.body.u64_stats_update_begin.exit_crit_edge, label %land.lhs.true.i.i

for.body.u64_stats_update_begin.exit_crit_edge:   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %u64_stats_update_begin.exit

land.lhs.true.i.i:                                ; preds = %for.body
  %4 = call i32 @llvm.read_register.i32(metadata !6) #8
  %and.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !17
  %8 = call i32 @llvm.read_register.i32(metadata !6) #8
  %and.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %11
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %13, ptrtoint (ptr @lockdep_recursion to i32)
  %14 = inttoptr i32 %add.i.i to ptr
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %14, align 4
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !18
  %17 = call i32 @llvm.read_register.i32(metadata !6) #8
  %and.i.i.i7.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i7.i.i to ptr
  %preempt_count.i.i8.i.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i8.i.i, align 4
  %sub.i.i.i = add i32 %20, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i8.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool20.not.i.i = icmp eq i32 %16, 0
  br i1 %tobool20.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.u64_stats_update_begin.exit_crit_edge

land.lhs.true.i.i.u64_stats_update_begin.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %u64_stats_update_begin.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %21 = call i32 @llvm.read_register.i32(metadata !6) #8
  %and.i.i.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.i.i = icmp eq i32 %24, 0
  br i1 %cmp.i.i, label %land.rhs22.i.i, label %land.rhs.i.i.u64_stats_update_begin.exit_crit_edge

land.rhs.i.i.u64_stats_update_begin.exit_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %u64_stats_update_begin.exit

land.rhs22.i.i:                                   ; preds = %land.rhs.i.i
  %25 = call i32 @llvm.read_register.i32(metadata !6) #8
  %and.i.i.i9.i.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i9.i.i to ptr
  %preempt_count.i.i10.i.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %preempt_count.i.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %preempt_count.i.i10.i.i, align 4
  %add.i11.i.i = add i32 %28, 1
  store volatile i32 %add.i11.i.i, ptr %preempt_count.i.i10.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !19
  %29 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cpu.i.i, align 4
  %arrayidx46.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %30
  %31 = ptrtoint ptr %arrayidx46.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx46.i.i, align 4
  %add47.i.i = add i32 %32, ptrtoint (ptr @hardirqs_enabled to i32)
  %33 = inttoptr i32 %add47.i.i to ptr
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %33, align 4
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !20
  %36 = call i32 @llvm.read_register.i32(metadata !6) #8
  %and.i.i.i12.i.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i.i12.i.i to ptr
  %preempt_count.i.i13.i.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %preempt_count.i.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %preempt_count.i.i13.i.i, align 4
  %sub.i14.i.i = add i32 %39, -1
  store volatile i32 %sub.i14.i.i, ptr %preempt_count.i.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool54.not.i.i = icmp eq i32 %35, 0
  br i1 %tobool54.not.i.i, label %land.rhs22.i.i.u64_stats_update_begin.exit_crit_edge, label %land.rhs58.i.i

land.rhs22.i.i.u64_stats_update_begin.exit_crit_edge: ; preds = %land.rhs22.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %u64_stats_update_begin.exit

land.rhs58.i.i:                                   ; preds = %land.rhs22.i.i
  %.b1.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs58.i.i.u64_stats_update_begin.exit_crit_edge, label %if.then.i.i, !prof !16

land.rhs58.i.i.u64_stats_update_begin.exit_crit_edge: ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %u64_stats_update_begin.exit

if.then.i.i:                                      ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 271, i32 noundef 9, ptr noundef null) #8
  br label %u64_stats_update_begin.exit

u64_stats_update_begin.exit:                      ; preds = %if.then.i.i, %land.rhs58.i.i.u64_stats_update_begin.exit_crit_edge, %land.rhs22.i.i.u64_stats_update_begin.exit_crit_edge, %land.rhs.i.i.u64_stats_update_begin.exit_crit_edge, %land.lhs.true.i.i.u64_stats_update_begin.exit_crit_edge, %for.body.u64_stats_update_begin.exit_crit_edge
  %40 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %stats, align 4
  %inc.i.i.i.i = add i32 %41, 1
  store i32 %inc.i.i.i.i, ptr %stats, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !21
  %dep_map.i.i.i = getelementptr %struct.aq_ring_s, ptr %ring.0118, i32 1, i32 10, i32 0, i32 0, i32 0, i32 1
  %42 = call ptr @llvm.returnaddress(i32 0) #8
  %43 = ptrtoint ptr %42 to i32
  call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %43) #8
  %polls = getelementptr %struct.aq_ring_s, ptr %ring.0118, i32 1, i32 10, i32 0, i32 8
  %44 = ptrtoint ptr %polls to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %polls, align 8
  %inc = add i64 %45, 1
  store i64 %inc, ptr %polls, align 8
  call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %43) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !22
  %46 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %stats, align 4
  %inc.i.i.i = add i32 %47, 1
  store i32 %inc.i.i.i, ptr %stats, align 4
  %48 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %add.ptr, align 8
  %hw_ring_tx_head_update = getelementptr inbounds %struct.aq_hw_ops, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %hw_ring_tx_head_update to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hw_ring_tx_head_update, align 4
  %tobool8.not = icmp eq ptr %51, null
  br i1 %tobool8.not, label %u64_stats_update_begin.exit.if.end15_crit_edge, label %if.then9

u64_stats_update_begin.exit.if.end15_crit_edge:   ; preds = %u64_stats_update_begin.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then9:                                         ; preds = %u64_stats_update_begin.exit
  %52 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %aq_hw, align 4
  %call = call i32 %51(ptr noundef %53, ptr noundef %ring.0118) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp13 = icmp slt i32 %call, 0
  br i1 %cmp13, label %if.then9.err_exit_crit_edge, label %if.then9.if.end15_crit_edge

if.then9.if.end15_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then9.err_exit_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_exit

if.end15:                                         ; preds = %if.then9.if.end15_crit_edge, %u64_stats_update_begin.exit.if.end15_crit_edge
  %sw_head = getelementptr inbounds %struct.aq_ring_s, ptr %ring.0118, i32 0, i32 5
  %54 = ptrtoint ptr %sw_head to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %sw_head, align 4
  %hw_head = getelementptr inbounds %struct.aq_ring_s, ptr %ring.0118, i32 0, i32 4
  %56 = ptrtoint ptr %hw_head to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %hw_head, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %57)
  %cmp18.not = icmp eq i32 %55, %57
  br i1 %cmp18.not, label %if.end15.if.end23_crit_edge, label %if.then19

if.end15.if.end23_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %call21 = call zeroext i1 @aq_ring_tx_clean(ptr noundef %ring.0118) #8
  call void @aq_ring_update_queue_state(ptr noundef %ring.0118) #8
  br label %if.end23

if.end23:                                         ; preds = %if.then19, %if.end15.if.end23_crit_edge
  %was_tx_cleaned.1.off0 = phi i1 [ %call21, %if.then19 ], [ %was_tx_cleaned.0.off0119, %if.end15.if.end23_crit_edge ]
  %58 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %add.ptr, align 8
  %hw_ring_rx_receive = getelementptr inbounds %struct.aq_hw_ops, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %hw_ring_rx_receive to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %hw_ring_rx_receive, align 4
  %62 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %aq_hw, align 4
  %call27 = call i32 %61(ptr noundef %63, ptr noundef %arrayidx2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.end23.err_exit_crit_edge, label %if.end30

if.end23.err_exit_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_exit

if.end30:                                         ; preds = %if.end23
  %sw_head32 = getelementptr %struct.aq_ring_s, ptr %ring.0118, i32 1, i32 5
  %64 = ptrtoint ptr %sw_head32 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %sw_head32, align 4
  %hw_head34 = getelementptr %struct.aq_ring_s, ptr %ring.0118, i32 1, i32 4
  %66 = ptrtoint ptr %hw_head34 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %hw_head34, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %67)
  %cmp35.not = icmp eq i32 %65, %67
  br i1 %cmp35.not, label %if.end30.for.inc_crit_edge, label %if.then36

if.end30.for.inc_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then36:                                        ; preds = %if.end30
  %68 = ptrtoint ptr %work_done to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %work_done, align 4
  %sub = sub i32 %budget, %69
  %call38 = call i32 @aq_ring_rx_clean(ptr noundef %arrayidx2, ptr noundef %napi, ptr noundef nonnull %work_done, i32 noundef %sub) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %if.then36.err_exit_crit_edge, label %if.end41

if.then36.err_exit_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_exit

if.end41:                                         ; preds = %if.then36
  %sw_tail = getelementptr %struct.aq_ring_s, ptr %ring.0118, i32 1, i32 6
  %70 = ptrtoint ptr %sw_tail to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %sw_tail, align 8
  %call44 = call i32 @aq_ring_rx_fill(ptr noundef %arrayidx2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp45 = icmp slt i32 %call44, 0
  br i1 %cmp45, label %if.end41.err_exit_crit_edge, label %if.end47

if.end41.err_exit_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_exit

if.end47:                                         ; preds = %if.end41
  %72 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %add.ptr, align 8
  %hw_ring_rx_fill = getelementptr inbounds %struct.aq_hw_ops, ptr %73, i32 0, i32 2
  %74 = ptrtoint ptr %hw_ring_rx_fill to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %hw_ring_rx_fill, align 4
  %76 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %aq_hw, align 4
  %call51 = call i32 %75(ptr noundef %77, ptr noundef %arrayidx2, i32 noundef %71) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %cmp52 = icmp slt i32 %call51, 0
  br i1 %cmp52, label %if.end47.err_exit_crit_edge, label %if.end47.for.inc_crit_edge

if.end47.for.inc_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end47.err_exit_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_exit

for.inc:                                          ; preds = %if.end47.for.inc_crit_edge, %if.end30.for.inc_crit_edge
  %inc56 = add nuw i32 %i.0121, 1
  %arrayidx58 = getelementptr [8 x [2 x %struct.aq_ring_s]], ptr %ring1, i32 0, i32 %inc56
  %78 = ptrtoint ptr %tx_rings to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %tx_rings, align 4
  %cmp = icmp ugt i32 %79, %inc56
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.err_exit_crit_edge

for.inc.err_exit_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_exit

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

err_exit:                                         ; preds = %for.inc.err_exit_crit_edge, %if.end47.err_exit_crit_edge, %if.end41.err_exit_crit_edge, %if.then36.err_exit_crit_edge, %if.end23.err_exit_crit_edge, %if.then9.err_exit_crit_edge
  %was_tx_cleaned.2.off0 = phi i1 [ %was_tx_cleaned.1.off0, %for.inc.err_exit_crit_edge ], [ %was_tx_cleaned.1.off0, %if.end47.err_exit_crit_edge ], [ %was_tx_cleaned.1.off0, %if.end41.err_exit_crit_edge ], [ %was_tx_cleaned.1.off0, %if.then36.err_exit_crit_edge ], [ %was_tx_cleaned.1.off0, %if.end23.err_exit_crit_edge ], [ %was_tx_cleaned.0.off0119, %if.then9.err_exit_crit_edge ]
  br i1 %was_tx_cleaned.2.off0, label %err_exit.if.end62_crit_edge, label %if.then61

err_exit.if.end62_crit_edge:                      ; preds = %err_exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62

if.then61:                                        ; preds = %err_exit
  call void @__sanitizer_cov_trace_pc() #10
  %80 = ptrtoint ptr %work_done to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %budget, ptr %work_done, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.then61, %err_exit.if.end62_crit_edge, %if.else.if.end62_crit_edge
  %81 = ptrtoint ptr %work_done to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %work_done, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %82, i32 %budget)
  %cmp63 = icmp slt i32 %82, %budget
  br i1 %cmp63, label %if.then64, label %if.end62.if.end70_crit_edge

if.end62.if.end70_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

if.then64:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  %call65 = call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %82) #8
  %83 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %add.ptr, align 8
  %hw_irq_enable = getelementptr inbounds %struct.aq_hw_ops, ptr %84, i32 0, i32 17
  %85 = ptrtoint ptr %hw_irq_enable to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %hw_irq_enable, align 4
  %87 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %aq_hw, align 4
  %aq_ring_param = getelementptr i8, ptr %napi, i32 -12
  %89 = ptrtoint ptr %aq_ring_param to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %aq_ring_param, align 4
  %shl = shl nuw i32 1, %90
  %conv = zext i32 %shl to i64
  %call68 = call i32 %86(ptr noundef %88, i64 noundef %conv) #8
  br label %if.end70

if.end70:                                         ; preds = %if.then64, %if.end62.if.end70_crit_edge, %entry.if.end70_crit_edge
  %91 = ptrtoint ptr %work_done to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %work_done, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %work_done) #8
  ret i32 %92
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aq_vec_ring_alloc(ptr noundef %self, ptr noundef %aq_nic, i32 noundef %idx, ptr noundef %aq_nic_cfg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tcs = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %aq_nic_cfg, i32 0, i32 31
  %0 = ptrtoint ptr %tcs to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %tcs, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp47.not = icmp eq i8 %1, 0
  br i1 %cmp47.not, label %entry.cleanup19_crit_edge, label %for.body.lr.ph

entry.cleanup19_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup19

for.body.lr.ph:                                   ; preds = %entry
  %tc_mode = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %aq_nic_cfg, i32 0, i32 29
  %tx_rings = getelementptr inbounds %struct.aq_vec_s, ptr %self, i32 0, i32 3
  %rx_rings = getelementptr inbounds %struct.aq_vec_s, ptr %self, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.048 = phi i32 [ 0, %for.body.lr.ph ], [ %inc14, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %tc_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tc_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp2 = icmp eq i32 %3, 1
  %cond = select i1 %cmp2, i32 8, i32 4
  %mul = mul i32 %cond, %i.048
  %add = add i32 %mul, %idx
  %arrayidx = getelementptr %struct.aq_vec_s, ptr %self, i32 0, i32 7, i32 %i.048
  %call = tail call ptr @aq_ring_tx_alloc(ptr noundef %arrayidx, ptr noundef %aq_nic, i32 noundef %add, ptr noundef %aq_nic_cfg) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %for.body.if.then17_crit_edge, label %if.end

for.body.if.then17_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17

if.end:                                           ; preds = %for.body
  %4 = ptrtoint ptr %tx_rings to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_rings, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %tx_rings, align 4
  tail call void @aq_nic_set_tx_ring(ptr noundef %aq_nic, i32 noundef %add, ptr noundef nonnull %call) #8
  %arrayidx8 = getelementptr %struct.aq_vec_s, ptr %self, i32 0, i32 7, i32 %i.048, i32 1
  %call9 = tail call ptr @aq_ring_rx_alloc(ptr noundef %arrayidx8, ptr noundef %aq_nic, i32 noundef %add, ptr noundef %aq_nic_cfg) #8
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.end.if.then17_crit_edge, label %for.inc

if.end.if.then17_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17

for.inc:                                          ; preds = %if.end
  %6 = ptrtoint ptr %rx_rings to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_rings, align 8
  %inc13 = add i32 %7, 1
  store i32 %inc13, ptr %rx_rings, align 8
  %inc14 = add nuw nsw i32 %i.048, 1
  %8 = ptrtoint ptr %tcs to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %tcs, align 4
  %conv = zext i8 %9 to i32
  %cmp = icmp ult i32 %inc14, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup19_crit_edge

for.inc.cleanup19_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup19

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.then17:                                        ; preds = %if.end.if.then17_crit_edge, %for.body.if.then17_crit_edge
  %tobool.not.i = icmp eq ptr %self, null
  br i1 %tobool.not.i, label %if.then17.cleanup19_crit_edge, label %if.end.i

if.then17.cleanup19_crit_edge:                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup19

if.end.i:                                         ; preds = %if.then17
  %10 = ptrtoint ptr %tx_rings to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_rings, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp22.not.i = icmp eq i32 %11, 0
  br i1 %cmp22.not.i, label %if.end.i.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %ring1.i = getelementptr inbounds %struct.aq_vec_s, ptr %self, i32 0, i32 7
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.024.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %ring.023.i = phi ptr [ %ring1.i, %for.body.lr.ph.i ], [ %arrayidx8.i, %for.inc.i.for.body.i_crit_edge ]
  tail call void @aq_ring_free(ptr noundef %ring.023.i) #8
  %12 = ptrtoint ptr %rx_rings to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx_rings, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %i.024.i, i32 %13)
  %cmp3.i = icmp ult i32 %i.024.i, %13
  br i1 %cmp3.i, label %if.then4.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then4.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx5.i = getelementptr %struct.aq_ring_s, ptr %ring.023.i, i32 1
  tail call void @aq_ring_free(ptr noundef %arrayidx5.i) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then4.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.024.i, 1
  %arrayidx8.i = getelementptr %struct.aq_vec_s, ptr %self, i32 0, i32 7, i32 %inc.i
  %14 = ptrtoint ptr %tx_rings to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tx_rings, align 4
  %cmp.i = icmp ugt i32 %15, %inc.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  %16 = ptrtoint ptr %tx_rings to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %tx_rings, align 4
  %17 = ptrtoint ptr %rx_rings to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %rx_rings, align 8
  br label %cleanup19

cleanup19:                                        ; preds = %for.end.i, %if.then17.cleanup19_crit_edge, %for.inc.cleanup19_crit_edge, %entry.cleanup19_crit_edge
  %err.244 = phi i32 [ -12, %if.then17.cleanup19_crit_edge ], [ -12, %for.end.i ], [ 0, %entry.cleanup19_crit_edge ], [ 0, %for.inc.cleanup19_crit_edge ]
  ret i32 %err.244
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @aq_ring_tx_alloc(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @aq_nic_set_tx_ring(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @aq_ring_rx_alloc(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aq_vec_ring_free(ptr noundef %self) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %self, null
  br i1 %tobool.not, label %entry.err_exit_crit_edge, label %if.end

entry.err_exit_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_exit

if.end:                                           ; preds = %entry
  %tx_rings = getelementptr inbounds %struct.aq_vec_s, ptr %self, i32 0, i32 3
  %0 = ptrtoint ptr %tx_rings to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_rings, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp22.not = icmp eq i32 %1, 0
  br i1 %cmp22.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %ring1 = getelementptr inbounds %struct.aq_vec_s, ptr %self, i32 0, i32 7
  %rx_rings = getelementptr inbounds %struct.aq_vec_s, ptr %self, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.024 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %ring.023 = phi ptr [ %ring1, %for.body.lr.ph ], [ %arrayidx8, %for.inc.for.body_crit_edge ]
  tail call void @aq_ring_free(ptr noundef %ring.023) #8
  %2 = ptrtoint ptr %rx_rings to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_rings, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %i.024, i32 %3)
  %cmp3 = icmp ult i32 %i.024, %3
  br i1 %cmp3, label %if.then4, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then4:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx5 = getelementptr %struct.aq_ring_s, ptr %ring.023, i32 1
  tail call void @aq_ring_free(ptr noundef %arrayidx5) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then4, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.024, 1
  %arrayidx8 = getelementptr %struct.aq_vec_s, ptr %self, i32 0, i32 7, i32 %inc
  %4 = ptrtoint ptr %tx_rings to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_rings, align 4
  %cmp = icmp ugt i32 %5, %inc
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %6 = ptrtoint ptr %tx_rings to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %tx_rings, align 4
  %rx_rings11 = getelementptr inbounds %struct.aq_vec_s, ptr %self, i32 0, i32 4
  %7 = ptrtoint ptr %rx_rings11 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %rx_rings11, align 8
  br label %err_exit

err_exit:                                         ; preds = %for.end, %entry.err_exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aq_vec_init(ptr noundef %self, ptr noundef %aq_hw_ops, ptr noundef %aq_hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %self to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %aq_hw_ops, ptr %self, align 8
  %aq_hw2 = getelementptr inbounds %struct.aq_vec_s, ptr %self, i32 0, i32 1
  %1 = ptrtoint ptr %aq_hw2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %aq_hw, ptr %aq_hw2, align 4
  %tx_rings = getelementptr inbounds %struct.aq_vec_s, ptr %self, i32 0, i32 3
  %2 = ptrtoint ptr %tx_rings to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_rings, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp66.not = icmp eq i32 %3, 0
  br i1 %cmp66.not, label %entry.err_exit_crit_edge, label %for.body.lr.ph

entry.err_exit_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_exit

for.body.lr.ph:                                   ; preds = %entry
  %ring3 = getelementptr inbounds %struct.aq_vec_s, ptr %self, i32 0, i32 7
  %aq_ring_param = getelementptr inbounds %struct.aq_vec_s, ptr %self, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.068 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %ring.067 = phi ptr [ %ring3, %for.body.lr.ph ], [ %arrayidx39, %for.inc.for.body_crit_edge ]
  %call = tail call i32 @aq_ring_init(ptr noundef %ring.067, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5 = icmp slt i32 %call, 0
  br i1 %cmp5, label %for.body.err_exit_crit_edge, label %if.end

for.body.err_exit_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_exit

if.end:                                           ; preds = %for.body
  %4 = ptrtoint ptr %self to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %self, align 8
  %hw_ring_tx_init = getelementptr inbounds %struct.aq_hw_ops, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %hw_ring_tx_init to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw_ring_tx_init, align 4
  %8 = ptrtoint ptr %aq_hw2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %aq_hw2, align 4
  %call9 = tail call i32 %7(ptr noundef %9, ptr noundef %ring.067, ptr noundef %aq_ring_param) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.end.err_exit_crit_edge, label %if.end12

if.end.err_exit_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_exit

if.end12:                                         ; preds = %if.end
  %arrayidx13 = getelementptr %struct.aq_ring_s, ptr %ring.067, i32 1
  %call14 = tail call i32 @aq_ring_init(ptr noundef %arrayidx13, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.end12.err_exit_crit_edge, label %if.end17

if.end12.err_exit_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_exit

if.end17:                                         ; preds = %if.end12
  %10 = ptrtoint ptr %self to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %self, align 8
  %hw_ring_rx_init = getelementptr inbounds %struct.aq_hw_ops, ptr %11, i32 0, i32 14
  %12 = ptrtoint ptr %hw_ring_rx_init to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw_ring_rx_init, align 4
  %14 = ptrtoint ptr %aq_hw2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %aq_hw2, align 4
  %call22 = tail call i32 %13(ptr noundef %15, ptr noundef %arrayidx13, ptr noundef %aq_ring_param) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.end17.err_exit_crit_edge, label %if.end25

if.end17.err_exit_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_exit

if.end25:                                         ; preds = %if.end17
  %call27 = tail call i32 @aq_ring_rx_fill(ptr noundef %arrayidx13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.end25.err_exit_crit_edge, label %if.end30

if.end25.err_exit_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_exit

if.end30:                                         ; preds = %if.end25
  %16 = ptrtoint ptr %self to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %self, align 8
  %hw_ring_rx_fill = getelementptr inbounds %struct.aq_hw_ops, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %hw_ring_rx_fill to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw_ring_rx_fill, align 4
  %20 = ptrtoint ptr %aq_hw2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %aq_hw2, align 4
  %call34 = tail call i32 %19(ptr noundef %21, ptr noundef %arrayidx13, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %if.end30.err_exit_crit_edge, label %for.inc

if.end30.err_exit_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_exit

for.inc:                                          ; preds = %if.end30
  %inc = add nuw i32 %i.068, 1
  %arrayidx39 = getelementptr %struct.aq_vec_s, ptr %self, i32 0, i32 7, i32 %inc
  %22 = ptrtoint ptr %tx_rings to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tx_rings, align 4
  %cmp = icmp ugt i32 %23, %inc
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.err_exit_crit_edge

for.inc.err_exit_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_exit

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

err_exit:                                         ; preds = %for.inc.err_exit_crit_edge, %if.end30.err_exit_crit_edge, %if.end25.err_exit_crit_edge, %if.end17.err_exit_crit_edge, %if.end12.err_exit_crit_edge, %if.end.err_exit_crit_edge, %for.body.err_exit_crit_edge, %entry.err_exit_crit_edge
  %err.1 = phi i32 [ 0, %entry.err_exit_crit_edge ], [ %call34, %for.inc.err_exit_crit_edge ], [ %call34, %if.end30.err_exit_crit_edge ], [ %call27, %if.end25.err_exit_crit_edge ], [ %call22, %if.end17.err_exit_crit_edge ], [ %call14, %if.end12.err_exit_crit_edge ], [ %call9, %if.end.err_exit_crit_edge ], [ %call, %for.body.err_exit_crit_edge ]
  ret i32 %err.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_ring_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_ring_rx_fill(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aq_vec_start(ptr noundef %self) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_rings = getelementptr inbounds %struct.aq_vec_s, ptr %self, i32 0, i32 3
  %0 = ptrtoint ptr %tx_rings to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_rings, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp27.not = icmp eq i32 %1, 0
  br i1 %cmp27.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %ring1 = getelementptr inbounds %struct.aq_vec_s, ptr %self, i32 0, i32 7
  %aq_hw = getelementptr inbounds %struct.aq_vec_s, ptr %self, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.029 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %ring.028 = phi ptr [ %ring1, %for.body.lr.ph ], [ %arrayidx12, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %self to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %self, align 8
  %hw_ring_tx_start = getelementptr inbounds %struct.aq_hw_ops, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %hw_ring_tx_start to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw_ring_tx_start, align 4
  %6 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %aq_hw, align 4
  %call = tail call i32 %5(ptr noundef %7, ptr noundef %ring.028) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp3 = icmp slt i32 %call, 0
  br i1 %cmp3, label %for.body.err_exit_crit_edge, label %if.end

for.body.err_exit_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_exit

if.end:                                           ; preds = %for.body
  %8 = ptrtoint ptr %self to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %self, align 8
  %hw_ring_rx_start = getelementptr inbounds %struct.aq_hw_ops, ptr %9, i32 0, i32 15
  %10 = ptrtoint ptr %hw_ring_rx_start to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw_ring_rx_start, align 4
  %12 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %aq_hw, align 4
  %arrayidx6 = getelementptr %struct.aq_ring_s, ptr %ring.028, i32 1
  %call7 = tail call i32 %11(ptr noundef %13, ptr noundef %arrayidx6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.end.err_exit_crit_edge, label %for.inc

if.end.err_exit_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_exit

for.inc:                                          ; preds = %if.end
  %inc = add nuw i32 %i.029, 1
  %arrayidx12 = getelementptr %struct.aq_vec_s, ptr %self, i32 0, i32 7, i32 %inc
  %14 = ptrtoint ptr %tx_rings to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tx_rings, align 4
  %cmp = icmp ugt i32 %15, %inc
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %err.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %call7, %for.inc.for.end_crit_edge ]
  %napi = getelementptr inbounds %struct.aq_vec_s, ptr %self, i32 0, i32 6
  tail call void @napi_enable(ptr noundef %napi) #8
  br label %err_exit

err_exit:                                         ; preds = %for.end, %if.end.err_exit_crit_edge, %for.body.err_exit_crit_edge
  %err.1 = phi i32 [ %err.0.lcssa, %for.end ], [ %call7, %if.end.err_exit_crit_edge ], [ %call, %for.body.err_exit_crit_edge ]
  ret i32 %err.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aq_vec_stop(ptr noundef %self) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_rings = getelementptr inbounds %struct.aq_vec_s, ptr %self, i32 0, i32 3
  %0 = ptrtoint ptr %tx_rings to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_rings, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp20.not = icmp eq i32 %1, 0
  br i1 %cmp20.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %ring1 = getelementptr inbounds %struct.aq_vec_s, ptr %self, i32 0, i32 7
  %aq_hw = getelementptr inbounds %struct.aq_vec_s, ptr %self, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.022 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %ring.021 = phi ptr [ %ring1, %for.body.lr.ph ], [ %arrayidx8, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %self to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %self, align 8
  %hw_ring_tx_stop = getelementptr inbounds %struct.aq_hw_ops, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %hw_ring_tx_stop to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw_ring_tx_stop, align 4
  %6 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %aq_hw, align 4
  %call = tail call i32 %5(ptr noundef %7, ptr noundef %ring.021) #8
  %8 = ptrtoint ptr %self to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %self, align 8
  %hw_ring_rx_stop = getelementptr inbounds %struct.aq_hw_ops, ptr %9, i32 0, i32 16
  %10 = ptrtoint ptr %hw_ring_rx_stop to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw_ring_rx_stop, align 4
  %12 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %aq_hw, align 4
  %arrayidx5 = getelementptr %struct.aq_ring_s, ptr %ring.021, i32 1
  %call6 = tail call i32 %11(ptr noundef %13, ptr noundef %arrayidx5) #8
  %inc = add nuw i32 %i.022, 1
  %arrayidx8 = getelementptr %struct.aq_vec_s, ptr %self, i32 0, i32 7, i32 %inc
  %14 = ptrtoint ptr %tx_rings to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tx_rings, align 4
  %cmp = icmp ugt i32 %15, %inc
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %napi = getelementptr inbounds %struct.aq_vec_s, ptr %self, i32 0, i32 6
  tail call void @napi_disable(ptr noundef %napi) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aq_vec_deinit(ptr noundef %self) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %self, null
  br i1 %tobool.not, label %entry.err_exit_crit_edge, label %if.end

entry.err_exit_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_exit

if.end:                                           ; preds = %entry
  %tx_rings = getelementptr inbounds %struct.aq_vec_s, ptr %self, i32 0, i32 3
  %0 = ptrtoint ptr %tx_rings to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_rings, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp13.not = icmp eq i32 %1, 0
  br i1 %cmp13.not, label %if.end.err_exit_crit_edge, label %for.body.preheader

if.end.err_exit_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_exit

for.body.preheader:                               ; preds = %if.end
  %ring1 = getelementptr inbounds %struct.aq_vec_s, ptr %self, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.015 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %ring.014 = phi ptr [ %arrayidx5, %for.body.for.body_crit_edge ], [ %ring1, %for.body.preheader ]
  %call = tail call zeroext i1 @aq_ring_tx_clean(ptr noundef %ring.014) #8
  %arrayidx3 = getelementptr %struct.aq_ring_s, ptr %ring.014, i32 1
  tail call void @aq_ring_rx_deinit(ptr noundef %arrayidx3) #8
  %inc = add nuw i32 %i.015, 1
  %arrayidx5 = getelementptr %struct.aq_vec_s, ptr %self, i32 0, i32 7, i32 %inc
  %2 = ptrtoint ptr %tx_rings to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_rings, align 4
  %cmp = icmp ugt i32 %3, %inc
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.err_exit_crit_edge

for.body.err_exit_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_exit

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

err_exit:                                         ; preds = %for.body.err_exit_crit_edge, %if.end.err_exit_crit_edge, %entry.err_exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @aq_ring_tx_clean(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @aq_ring_rx_deinit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aq_vec_free(ptr noundef %self) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %self, null
  br i1 %tobool.not, label %entry.err_exit_crit_edge, label %if.end

entry.err_exit_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_exit

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %napi = getelementptr inbounds %struct.aq_vec_s, ptr %self, i32 0, i32 6
  tail call void @__netif_napi_del(ptr noundef %napi) #8
  tail call void @synchronize_net() #8
  tail call void @kfree(ptr noundef nonnull %self) #8
  br label %err_exit

err_exit:                                         ; preds = %if.end, %entry.err_exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @aq_ring_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aq_vec_isr(i32 noundef %irq, ptr noundef %private) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %private, null
  br i1 %tobool.not, label %entry.err_exit_crit_edge, label %if.end

entry.err_exit_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_exit

if.end:                                           ; preds = %entry
  %napi = getelementptr inbounds %struct.aq_vec_s, ptr %private, i32 0, i32 6
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #8
  br i1 %call.i, label %if.then.i, label %if.end.err_exit_crit_edge

if.end.err_exit_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__napi_schedule(ptr noundef %napi) #8
  br label %err_exit

err_exit:                                         ; preds = %if.then.i, %if.end.err_exit_crit_edge, %entry.err_exit_crit_edge
  %0 = xor i1 %tobool.not, true
  %cond = zext i1 %0 to i32
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aq_vec_isr_legacy(i32 noundef %irq, ptr noundef %private) local_unnamed_addr #0 align 64 {
entry:
  %irq_mask = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %irq_mask) #8
  %0 = ptrtoint ptr %irq_mask to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %irq_mask, align 8
  %tobool.not = icmp eq ptr %private, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %private, align 8
  %hw_irq_read = getelementptr inbounds %struct.aq_hw_ops, ptr %2, i32 0, i32 19
  %3 = ptrtoint ptr %hw_irq_read to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw_irq_read, align 4
  %aq_hw = getelementptr inbounds %struct.aq_vec_s, ptr %private, i32 0, i32 1
  %5 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %aq_hw, align 4
  %call = call i32 %4(ptr noundef %6, ptr noundef nonnull %irq_mask) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %7 = ptrtoint ptr %irq_mask to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %irq_mask, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %8)
  %tobool3.not = icmp eq i64 %8, 0
  %9 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %private, align 8
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end2
  %hw_irq_disable = getelementptr inbounds %struct.aq_hw_ops, ptr %10, i32 0, i32 18
  %11 = ptrtoint ptr %hw_irq_disable to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw_irq_disable, align 4
  %13 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %aq_hw, align 4
  %aq_ring_param = getelementptr inbounds %struct.aq_vec_s, ptr %private, i32 0, i32 5
  %15 = ptrtoint ptr %aq_ring_param to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %aq_ring_param, align 4
  %shl = shl nuw i32 1, %16
  %conv = zext i32 %shl to i64
  %call7 = call i32 %12(ptr noundef %14, i64 noundef %conv) #8
  %napi = getelementptr inbounds %struct.aq_vec_s, ptr %private, i32 0, i32 6
  %call.i = call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #8
  br i1 %call.i, label %if.then.i, label %if.then4.cleanup_crit_edge

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  call void @__napi_schedule(ptr noundef %napi) #8
  br label %cleanup

if.else:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  %hw_irq_enable = getelementptr inbounds %struct.aq_hw_ops, ptr %10, i32 0, i32 17
  %17 = ptrtoint ptr %hw_irq_enable to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw_irq_enable, align 4
  %19 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %aq_hw, align 4
  %call10 = call i32 %18(ptr noundef %20, i64 noundef 1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then.i, %if.then4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.else ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 1, %if.then4.cleanup_crit_edge ], [ 1, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %irq_mask) #8
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @aq_vec_get_affinity_mask(ptr noundef readnone %self) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %affinity_mask = getelementptr inbounds %struct.aq_vec_s, ptr %self, i32 0, i32 5, i32 2
  ret ptr %affinity_mask
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @aq_vec_is_valid_tc(ptr nocapture noundef readonly %self, i32 noundef %tc) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_rings = getelementptr inbounds %struct.aq_vec_s, ptr %self, i32 0, i32 4
  %0 = ptrtoint ptr %rx_rings to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_rings, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %tc)
  %cmp = icmp ugt i32 %1, %tc
  br i1 %cmp, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %tx_rings = getelementptr inbounds %struct.aq_vec_s, ptr %self, i32 0, i32 3
  %2 = ptrtoint ptr %tx_rings to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_rings, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %tc)
  %cmp1 = icmp ugt i32 %3, %tc
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %4 = phi i1 [ false, %entry.land.end_crit_edge ], [ %cmp1, %land.rhs ]
  ret i1 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aq_vec_get_sw_stats(ptr noundef %self, i32 noundef %tc, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_rings.i = getelementptr inbounds %struct.aq_vec_s, ptr %self, i32 0, i32 4
  %0 = ptrtoint ptr %rx_rings.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_rings.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %tc)
  %cmp.i = icmp ugt i32 %1, %tc
  br i1 %cmp.i, label %aq_vec_is_valid_tc.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

aq_vec_is_valid_tc.exit:                          ; preds = %entry
  %tx_rings.i = getelementptr inbounds %struct.aq_vec_s, ptr %self, i32 0, i32 3
  %2 = ptrtoint ptr %tx_rings.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_rings.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %tc)
  %cmp1.i = icmp ugt i32 %3, %tc
  br i1 %cmp1.i, label %if.end, label %aq_vec_is_valid_tc.exit.cleanup_crit_edge

aq_vec_is_valid_tc.exit.cleanup_crit_edge:        ; preds = %aq_vec_is_valid_tc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %aq_vec_is_valid_tc.exit
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.aq_vec_s, ptr %self, i32 0, i32 7, i32 %tc
  %arrayidx1 = getelementptr %struct.aq_vec_s, ptr %self, i32 0, i32 7, i32 %tc, i32 1
  %call2 = tail call i32 @aq_ring_fill_stats_data(ptr noundef %arrayidx1, ptr noundef %data) #8
  %add.ptr = getelementptr i64, ptr %data, i32 %call2
  %call6 = tail call i32 @aq_ring_fill_stats_data(ptr noundef %arrayidx, ptr noundef %add.ptr) #8
  %add = add i32 %call6, %call2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %aq_vec_is_valid_tc.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add, %if.end ], [ 0, %aq_vec_is_valid_tc.exit.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_ring_fill_stats_data(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @aq_ring_update_queue_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_ring_rx_clean(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__netif_napi_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5}
!llvm.named.register.sp = !{!6}
!llvm.module.flags = !{!7, !8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = distinct !{null, !4, !"__already_done", i1 false, i1 false}
!4 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!5 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!6 = !{!"sp"}
!7 = !{i32 1, !"wchar_size", i32 2}
!8 = !{i32 1, !"min_enum_size", i32 4}
!9 = !{i32 8, !"branch-target-enforcement", i32 0}
!10 = !{i32 8, !"sign-return-address", i32 0}
!11 = !{i32 8, !"sign-return-address-all", i32 0}
!12 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!13 = !{i32 7, !"uwtable", i32 1}
!14 = !{i32 7, !"frame-pointer", i32 2}
!15 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!16 = !{!"branch_weights", i32 2000, i32 1}
!17 = !{i64 2150182727}
!18 = !{i64 2150187661}
!19 = !{i64 2150209379}
!20 = !{i64 2150214273}
!21 = !{i64 2150290800}
!22 = !{i64 2150291125}
