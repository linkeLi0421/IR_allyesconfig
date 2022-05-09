; ModuleID = '/llk/IR_all_yes/kernel/bpf/map_iter.c_pt.bc'
source_filename = "../kernel/bpf/map_iter.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bpf_iter_reg = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [2 x %struct.bpf_ctx_arg_aux], ptr }
%struct.bpf_ctx_arg_aux = type { i32, i32, i32 }
%struct.bpf_iter_seq_info = type { ptr, ptr, ptr, i32 }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.bpf_map = type { ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, [16 x i8], i8, i8, [30 x i8], %struct.atomic64_t, %struct.atomic64_t, %struct.work_struct, %struct.mutex, %struct.atomic64_t, [96 x i8] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic64_t = type { i64 }
%struct.bpf_link_info = type { i32, i32, i32, %union.anon.162 }
%union.anon.162 = type { %struct.anon.163 }
%struct.anon.163 = type { i64, i32 }
%struct.anon.166 = type { i64, i32, %union.anon.167 }
%union.anon.167 = type { %struct.anon.168 }
%struct.anon.168 = type { i32 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.bpf_iter__bpf_map = type { %union.anon.176, %union.anon.177 }
%union.anon.176 = type { i64 }
%union.anon.177 = type { i64 }
%struct.bpf_iter_meta = type { %union.anon, i64, i64 }
%union.anon = type { i64 }
%struct.bpf_prog = type { i16, i16, i32, i32, i32, i32, [8 x i8], ptr, ptr, ptr, ptr, ptr, %union.anon.95 }
%union.anon.95 = type { %struct.anon.96 }
%struct.anon.96 = type { %struct.anon.97, [0 x %struct.sock_filter] }
%struct.anon.97 = type {}
%struct.sock_filter = type { i16, i8, i8, i32 }
%struct.bpf_prog_aux = type { %struct.atomic64_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.mutex, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, %struct.hlist_node, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.bpf_ksym, ptr, ptr, %struct.mutex, ptr, ptr, ptr, i64, i32, [2 x ptr], [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, %union.anon.94 }
%struct.hlist_node = type { ptr, ptr }
%struct.bpf_ksym = type { i32, i32, [128 x i8], %struct.list_head, %struct.latch_tree_node, i8 }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.94 = type { %struct.work_struct }

@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"map_id:\09%u\0A\00", [20 x i8] zeroinitializer }, align 32
@__initcall__kmod_map_iter__391_195_bpf_map_iter_init7 = internal global ptr @bpf_map_iter_init, section ".initcall7.init", align 4
@bpf_map_reg_info = internal global { %struct.bpf_iter_reg, [36 x i8] } { %struct.bpf_iter_reg { ptr @.str.1, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1, i32 0, [2 x %struct.bpf_ctx_arg_aux] [%struct.bpf_ctx_arg_aux { i32 8, i32 272, i32 0 }, %struct.bpf_ctx_arg_aux zeroinitializer], ptr @bpf_map_seq_info }, [36 x i8] zeroinitializer }, align 32
@bpf_map_elem_reg_info = internal constant { %struct.bpf_iter_reg, [36 x i8] } { %struct.bpf_iter_reg { ptr @.str.2, ptr @bpf_iter_attach_map, ptr @bpf_iter_detach_map, ptr @bpf_iter_map_show_fdinfo, ptr @bpf_iter_map_fill_link_info, ptr null, i32 2, i32 0, [2 x %struct.bpf_ctx_arg_aux] [%struct.bpf_ctx_arg_aux { i32 16, i32 786, i32 0 }, %struct.bpf_ctx_arg_aux { i32 24, i32 274, i32 0 }], ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bpf_map\00", [24 x i8] zeroinitializer }, align 32
@bpf_map_seq_info = internal constant { %struct.bpf_iter_seq_info, [16 x i8] } { %struct.bpf_iter_seq_info { ptr @bpf_map_seq_ops, ptr null, ptr null, i32 4 }, [16 x i8] zeroinitializer }, align 32
@bpf_map_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @bpf_map_seq_start, ptr @bpf_map_seq_stop, ptr @bpf_map_seq_next, ptr @bpf_map_seq_show }, [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bpf_map_elem\00", [19 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 5, i64 6, i64 9, i64 10]
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 155, i32 18 }
@___asan_gen_.6 = private unnamed_addr constant [17 x i8] c"bpf_map_reg_info\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 91, i32 28 }
@___asan_gen_.9 = private unnamed_addr constant [22 x i8] c"bpf_map_elem_reg_info\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 168, i32 34 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 92, i32 14 }
@___asan_gen_.15 = private unnamed_addr constant [17 x i8] c"bpf_map_seq_info\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 84, i32 39 }
@___asan_gen_.18 = private unnamed_addr constant [16 x i8] c"bpf_map_seq_ops\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 74, i32 36 }
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.22 = private constant [25 x i8] c"../kernel/bpf/map_iter.c\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 169, i32 14 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @__initcall__kmod_map_iter__391_195_bpf_map_iter_init7, ptr @.str, ptr @bpf_map_reg_info, ptr @bpf_map_elem_reg_info, ptr @.str.1, ptr @bpf_map_seq_info, ptr @bpf_map_seq_ops, ptr @.str.2], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_map_reg_info to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_map_elem_reg_info to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_map_seq_info to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_map_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @bpf_iter_bpf_map(ptr nocapture noundef readnone %meta, ptr nocapture noundef readnone %map) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bpf_iter_map_show_fdinfo(ptr nocapture noundef readonly %aux, ptr noundef %seq) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aux, align 4
  %id = getelementptr inbounds %struct.bpf_map, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str, i32 noundef %3) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @bpf_iter_map_fill_link_info(ptr nocapture noundef readonly %aux, ptr nocapture noundef writeonly %info) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aux, align 4
  %id = getelementptr inbounds %struct.bpf_map, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %4 = getelementptr inbounds %struct.bpf_link_info, ptr %info, i32 0, i32 3
  %5 = getelementptr inbounds %struct.anon.166, ptr %4, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %3, ptr %5, align 4
  ret i32 0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @bpf_iter_bpf_map_elem(ptr nocapture noundef readnone %meta, ptr nocapture noundef readnone %map, ptr nocapture noundef readnone %key, ptr nocapture noundef readnone %value) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bpf_map_iter_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  store i32 0, ptr getelementptr inbounds (%struct.bpf_iter_reg, ptr @bpf_map_reg_info, i32 0, i32 8, i32 0, i32 2), align 4
  %call = tail call i32 @bpf_iter_reg_target(ptr noundef nonnull @bpf_map_reg_info) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 @bpf_iter_reg_target(ptr noundef nonnull @bpf_map_elem_reg_info) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_iter_reg_target(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @bpf_map_seq_start(ptr nocapture noundef readonly %seq, ptr nocapture noundef %pos) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %call = tail call ptr @bpf_map_get_curr_or_next(ptr noundef %1) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %cmp = icmp eq i64 %3, 0
  br i1 %cmp, label %if.then1, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 1, ptr %pos, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then1, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bpf_map_seq_stop(ptr noundef %seq, ptr noundef %v) #1 align 64 {
entry:
  %ctx.i = alloca %struct.bpf_iter__bpf_map, align 8
  %meta.i = alloca %struct.bpf_iter_meta, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %v, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ctx.i) #6
  %0 = getelementptr inbounds %struct.bpf_iter__bpf_map, ptr %ctx.i, i32 0, i32 1
  %1 = call ptr @memset(ptr %ctx.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %meta.i) #6
  %2 = call ptr @memset(ptr %meta.i, i32 255, i32 24)
  %3 = ptrtoint ptr %ctx.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %meta.i, ptr %ctx.i, align 8
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %0, align 8
  %5 = ptrtoint ptr %meta.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %seq, ptr %meta.i, align 8
  %call.i = call ptr @bpf_iter_get_info(ptr noundef nonnull %meta.i, i1 noundef zeroext true) #6
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %if.then.__bpf_map_seq_show.exit_crit_edge, label %if.then.i

if.then.__bpf_map_seq_show.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %__bpf_map_seq_show.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call2.i = call i32 @bpf_iter_run_prog(ptr noundef nonnull %call.i, ptr noundef nonnull %ctx.i) #6
  br label %__bpf_map_seq_show.exit

__bpf_map_seq_show.exit:                          ; preds = %if.then.i, %if.then.__bpf_map_seq_show.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %meta.i) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ctx.i) #6
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @bpf_map_put(ptr noundef nonnull %v) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %__bpf_map_seq_show.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @bpf_map_seq_next(ptr nocapture noundef readonly %seq, ptr noundef %v, ptr nocapture noundef %pos) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %pos, align 8
  %inc = add i64 %3, 1
  store i64 %inc, ptr %pos, align 8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %inc1 = add i32 %5, 1
  store i32 %inc1, ptr %1, align 4
  tail call void @bpf_map_put(ptr noundef %v) #6
  %call = tail call ptr @bpf_map_get_curr_or_next(ptr noundef %1) #6
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bpf_map_seq_show(ptr noundef %seq, ptr noundef %v) #1 align 64 {
entry:
  %ctx.i = alloca %struct.bpf_iter__bpf_map, align 8
  %meta.i = alloca %struct.bpf_iter_meta, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ctx.i) #6
  %0 = getelementptr inbounds %struct.bpf_iter__bpf_map, ptr %ctx.i, i32 0, i32 1
  %1 = call ptr @memset(ptr %ctx.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %meta.i) #6
  %2 = call ptr @memset(ptr %meta.i, i32 255, i32 24)
  %3 = ptrtoint ptr %ctx.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %meta.i, ptr %ctx.i, align 8
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %v, ptr %0, align 8
  %5 = ptrtoint ptr %meta.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %seq, ptr %meta.i, align 8
  %call.i = call ptr @bpf_iter_get_info(ptr noundef nonnull %meta.i, i1 noundef zeroext false) #6
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %entry.__bpf_map_seq_show.exit_crit_edge, label %if.then.i

entry.__bpf_map_seq_show.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %__bpf_map_seq_show.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2.i = call i32 @bpf_iter_run_prog(ptr noundef nonnull %call.i, ptr noundef nonnull %ctx.i) #6
  br label %__bpf_map_seq_show.exit

__bpf_map_seq_show.exit:                          ; preds = %if.then.i, %entry.__bpf_map_seq_show.exit_crit_edge
  %ret.0.i = phi i32 [ %call2.i, %if.then.i ], [ 0, %entry.__bpf_map_seq_show.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %meta.i) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ctx.i) #6
  ret i32 %ret.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bpf_map_get_curr_or_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_map_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bpf_iter_get_info(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_iter_run_prog(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bpf_iter_attach_map(ptr nocapture noundef readonly %prog, ptr nocapture noundef readonly %linfo, ptr nocapture noundef writeonly %aux) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %linfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %linfo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @bpf_map_get_with_uref(i32 noundef %1) #6
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %call to i32
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %map_type = getelementptr inbounds %struct.bpf_map, ptr %call, i32 0, i32 3
  %3 = ptrtoint ptr %map_type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %map_type, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %4, label %if.end5.put_map_crit_edge [
    i32 5, label %if.end5.if.else28_crit_edge
    i32 10, label %if.end5.if.else28_crit_edge66
    i32 6, label %if.end5.if.else28_crit_edge67
    i32 1, label %if.end5.if.then26_crit_edge
    i32 9, label %if.end5.if.then26_crit_edge68
    i32 2, label %if.end5.if.then26_crit_edge69
  ]

if.end5.if.then26_crit_edge69:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then26

if.end5.if.then26_crit_edge68:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then26

if.end5.if.then26_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then26

if.end5.if.else28_crit_edge67:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else28

if.end5.if.else28_crit_edge66:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else28

if.end5.if.else28_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else28

if.end5.put_map_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %put_map

if.then26:                                        ; preds = %if.end5.if.then26_crit_edge, %if.end5.if.then26_crit_edge68, %if.end5.if.then26_crit_edge69
  %aux2262 = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 10
  %6 = ptrtoint ptr %aux2262 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %aux2262, align 4
  %max_rdonly_access63 = getelementptr inbounds %struct.bpf_prog_aux, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %max_rdonly_access63 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_rdonly_access63, align 4
  %max_rdwr_access64 = getelementptr inbounds %struct.bpf_prog_aux, ptr %7, i32 0, i32 13
  %10 = ptrtoint ptr %max_rdwr_access64 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_rdwr_access64, align 8
  %key_size2465 = getelementptr inbounds %struct.bpf_map, ptr %call, i32 0, i32 4
  %12 = ptrtoint ptr %key_size2465 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %key_size2465, align 16
  %value_size27 = getelementptr inbounds %struct.bpf_map, ptr %call, i32 0, i32 5
  %14 = ptrtoint ptr %value_size27 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %value_size27, align 4
  br label %if.end31

if.else28:                                        ; preds = %if.end5.if.else28_crit_edge, %if.end5.if.else28_crit_edge66, %if.end5.if.else28_crit_edge67
  %aux22 = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 10
  %16 = ptrtoint ptr %aux22 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %aux22, align 4
  %max_rdonly_access = getelementptr inbounds %struct.bpf_prog_aux, ptr %17, i32 0, i32 12
  %18 = ptrtoint ptr %max_rdonly_access to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max_rdonly_access, align 4
  %max_rdwr_access = getelementptr inbounds %struct.bpf_prog_aux, ptr %17, i32 0, i32 13
  %20 = ptrtoint ptr %max_rdwr_access to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %max_rdwr_access, align 8
  %key_size24 = getelementptr inbounds %struct.bpf_map, ptr %call, i32 0, i32 4
  %22 = ptrtoint ptr %key_size24 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %key_size24, align 16
  %value_size29 = getelementptr inbounds %struct.bpf_map, ptr %call, i32 0, i32 5
  %24 = ptrtoint ptr %value_size29 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %value_size29, align 4
  %sub = add i32 %25, -1
  %or = or i32 %sub, 7
  %add = add i32 %or, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %26 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i = tail call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_possible_mask, i32 noundef %26) #6
  %mul = mul i32 %call4.i.i, %add
  br label %if.end31

if.end31:                                         ; preds = %if.else28, %if.then26
  %27 = phi i32 [ %23, %if.else28 ], [ %13, %if.then26 ]
  %28 = phi i32 [ %21, %if.else28 ], [ %11, %if.then26 ]
  %29 = phi i32 [ %19, %if.else28 ], [ %9, %if.then26 ]
  %value_size.0 = phi i32 [ %mul, %if.else28 ], [ %15, %if.then26 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %27)
  %cmp32 = icmp ugt i32 %29, %27
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %value_size.0)
  %cmp34 = icmp ugt i32 %28, %value_size.0
  %or.cond = select i1 %cmp32, i1 true, i1 %cmp34
  br i1 %or.cond, label %if.end31.put_map_crit_edge, label %if.end36

if.end31.put_map_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %put_map

if.end36:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %aux to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call, ptr %aux, align 4
  br label %cleanup

put_map:                                          ; preds = %if.end31.put_map_crit_edge, %if.end5.put_map_crit_edge
  %err.0 = phi i32 [ -22, %if.end5.put_map_crit_edge ], [ -13, %if.end31.put_map_crit_edge ]
  tail call void @bpf_map_put_with_uref(ptr noundef %call) #6
  br label %cleanup

cleanup:                                          ; preds = %put_map, %if.end36, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then3 ], [ %err.0, %put_map ], [ 0, %if.end36 ], [ -9, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bpf_iter_detach_map(ptr nocapture noundef readonly %aux) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aux, align 4
  tail call void @bpf_map_put_with_uref(ptr noundef %1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bpf_map_get_with_uref(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_map_put_with_uref(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../kernel/bpf/map_iter.c", i32 155, i32 18}
!2 = !{ptr @__initcall__kmod_map_iter__391_195_bpf_map_iter_init7, !3, !"__initcall__kmod_map_iter__391_195_bpf_map_iter_init7", i1 false, i1 false}
!3 = !{!"../kernel/bpf/map_iter.c", i32 195, i32 1}
!4 = distinct !{null, !5, !"btf_bpf_map_id", i1 false, i1 false}
!5 = !{!"../kernel/bpf/map_iter.c", i32 81, i32 1}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../kernel/bpf/map_iter.c", i32 92, i32 14}
!8 = !{ptr @bpf_map_reg_info, !9, !"bpf_map_reg_info", i1 false, i1 false}
!9 = !{!"../kernel/bpf/map_iter.c", i32 91, i32 28}
!10 = !{ptr @bpf_map_seq_info, !11, !"bpf_map_seq_info", i1 false, i1 false}
!11 = !{!"../kernel/bpf/map_iter.c", i32 84, i32 39}
!12 = !{ptr @bpf_map_seq_ops, !13, !"bpf_map_seq_ops", i1 false, i1 false}
!13 = !{!"../kernel/bpf/map_iter.c", i32 74, i32 36}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../kernel/bpf/map_iter.c", i32 169, i32 14}
!16 = !{ptr @bpf_map_elem_reg_info, !17, !"bpf_map_elem_reg_info", i1 false, i1 false}
!17 = !{!"../kernel/bpf/map_iter.c", i32 168, i32 34}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
