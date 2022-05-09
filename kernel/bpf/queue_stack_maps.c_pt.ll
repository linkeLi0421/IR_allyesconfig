; ModuleID = '/llk/IR_all_yes/kernel/bpf/queue_stack_maps.c_pt.bc'
source_filename = "../kernel/bpf/queue_stack_maps.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bpf_map_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.25 }
%union.anon.25 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.anon = type { i32, i32, i32, i32, i32, i32, i32, [16 x i8], i32, i32, i32, i32, i32, i64 }
%struct.bpf_queue_stack = type { %struct.bpf_map, %struct.raw_spinlock, i32, i32, i32, [0 x i8], [72 x i8] }
%struct.bpf_map = type { ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, [16 x i8], i8, i8, [30 x i8], %struct.atomic64_t, %struct.atomic64_t, %struct.work_struct, %struct.mutex, %struct.atomic64_t, [96 x i8] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.27 }
%union.anon.27 = type { i32 }

@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bpf_queue_stack\00", [16 x i8] zeroinitializer }, align 32
@queue_map_btf_id = internal global { i32, [28 x i8] } zeroinitializer, align 32
@queue_map_ops = dso_local constant { %struct.bpf_map_ops, [60 x i8] } { %struct.bpf_map_ops { ptr @queue_stack_map_alloc_check, ptr @queue_stack_map_alloc, ptr null, ptr @queue_stack_map_free, ptr @queue_stack_map_get_next_key, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @queue_stack_map_lookup_elem, ptr @queue_stack_map_update_elem, ptr @queue_stack_map_delete_elem, ptr @queue_stack_map_push_elem, ptr @queue_map_pop_elem, ptr @queue_map_peek_elem, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bpf_map_meta_equal, ptr null, ptr null, ptr @.str, ptr @queue_map_btf_id, ptr null }, [60 x i8] zeroinitializer }, align 32
@stack_map_btf_id = internal global { i32, [28 x i8] } zeroinitializer, align 32
@stack_map_ops = dso_local constant { %struct.bpf_map_ops, [60 x i8] } { %struct.bpf_map_ops { ptr @queue_stack_map_alloc_check, ptr @queue_stack_map_alloc, ptr null, ptr @queue_stack_map_free, ptr @queue_stack_map_get_next_key, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @queue_stack_map_lookup_elem, ptr @queue_stack_map_update_elem, ptr @queue_stack_map_delete_elem, ptr @queue_stack_map_push_elem, ptr @stack_map_pop_elem, ptr @stack_map_peek_elem, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bpf_map_meta_equal, ptr null, ptr null, ptr @.str, ptr @stack_map_btf_id, ptr null }, [60 x i8] zeroinitializer }, align 32
@queue_stack_map_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&qs->lock\00", [22 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 263, i32 18 }
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"queue_map_btf_id\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 250, i32 12 }
@___asan_gen_.8 = private unnamed_addr constant [14 x i8] c"queue_map_ops\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 251, i32 26 }
@___asan_gen_.11 = private unnamed_addr constant [17 x i8] c"stack_map_btf_id\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 267, i32 12 }
@___asan_gen_.14 = private unnamed_addr constant [14 x i8] c"stack_map_ops\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 268, i32 26 }
@___asan_gen_.17 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.21 = private constant [33 x i8] c"../kernel/bpf/queue_stack_maps.c\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 86, i32 2 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @.str, ptr @queue_map_btf_id, ptr @queue_map_ops, ptr @stack_map_btf_id, ptr @stack_map_ops, ptr @queue_stack_map_alloc.__key, ptr @.str.1], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @queue_map_btf_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @queue_map_ops to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stack_map_btf_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stack_map_ops to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @queue_stack_map_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @queue_stack_map_alloc_check(ptr nocapture noundef readonly %attr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call zeroext i1 @capable(i32 noundef 39) #3
  br i1 %call.i, label %entry.if.end_crit_edge, label %bpf_capable.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

bpf_capable.exit:                                 ; preds = %entry
  %call1.i = tail call zeroext i1 @capable(i32 noundef 21) #3
  br i1 %call1.i, label %bpf_capable.exit.if.end_crit_edge, label %bpf_capable.exit.return_crit_edge

bpf_capable.exit.return_crit_edge:                ; preds = %bpf_capable.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

bpf_capable.exit.if.end_crit_edge:                ; preds = %bpf_capable.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.end:                                           ; preds = %bpf_capable.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %max_entries = getelementptr inbounds %struct.anon, ptr %attr, i32 0, i32 3
  %0 = ptrtoint ptr %max_entries to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_entries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.end.return_crit_edge, label %lor.lhs.false

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

lor.lhs.false:                                    ; preds = %if.end
  %key_size = getelementptr inbounds %struct.anon, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %key_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %key_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1.not = icmp eq i32 %3, 0
  br i1 %cmp1.not, label %lor.lhs.false2, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %value_size = getelementptr inbounds %struct.anon, ptr %attr, i32 0, i32 2
  %4 = ptrtoint ptr %value_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp3 = icmp eq i32 %5, 0
  br i1 %cmp3, label %lor.lhs.false2.return_crit_edge, label %lor.lhs.false4

lor.lhs.false2.return_crit_edge:                  ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %map_flags = getelementptr inbounds %struct.anon, ptr %attr, i32 0, i32 4
  %6 = ptrtoint ptr %map_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %map_flags, align 8
  %and = and i32 %7, -413
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and.i = and i32 %7, 384
  call void @__sanitizer_cov_trace_const_cmp4(i32 384, i32 %and.i)
  %cmp.i = icmp ne i32 %and.i, 384
  %or.cond = and i1 %tobool.not, %cmp.i
  br i1 %or.cond, label %if.end9, label %lor.lhs.false4.return_crit_edge

lor.lhs.false4.return_crit_edge:                  ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end9:                                          ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 8388608, i32 %5)
  %cmp11 = icmp ugt i32 %5, 8388608
  %. = select i1 %cmp11, i32 -7, i32 0
  br label %return

return:                                           ; preds = %if.end9, %lor.lhs.false4.return_crit_edge, %lor.lhs.false2.return_crit_edge, %lor.lhs.false.return_crit_edge, %if.end.return_crit_edge, %bpf_capable.exit.return_crit_edge
  %retval.0 = phi i32 [ -1, %bpf_capable.exit.return_crit_edge ], [ -22, %lor.lhs.false4.return_crit_edge ], [ -22, %lor.lhs.false2.return_crit_edge ], [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %if.end.return_crit_edge ], [ %., %if.end9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @queue_stack_map_alloc(ptr noundef %attr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %map_flags.i = getelementptr inbounds %struct.anon, ptr %attr, i32 0, i32 4
  %0 = ptrtoint ptr %map_flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %map_flags.i, align 8
  %and.i = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.bpf_map_attr_numa_node.exit_crit_edge, label %cond.true.i

entry.bpf_map_attr_numa_node.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %bpf_map_attr_numa_node.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %numa_node.i = getelementptr inbounds %struct.anon, ptr %attr, i32 0, i32 6
  %2 = ptrtoint ptr %numa_node.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %numa_node.i, align 8
  br label %bpf_map_attr_numa_node.exit

bpf_map_attr_numa_node.exit:                      ; preds = %cond.true.i, %entry.bpf_map_attr_numa_node.exit_crit_edge
  %cond.i = phi i32 [ %3, %cond.true.i ], [ -1, %entry.bpf_map_attr_numa_node.exit_crit_edge ]
  %max_entries = getelementptr inbounds %struct.anon, ptr %attr, i32 0, i32 3
  %4 = ptrtoint ptr %max_entries to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_entries, align 4
  %conv = zext i32 %5 to i64
  %add = add nuw nsw i64 %conv, 1
  %value_size = getelementptr inbounds %struct.anon, ptr %attr, i32 0, i32 2
  %6 = ptrtoint ptr %value_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value_size, align 8
  %conv1 = zext i32 %7 to i64
  %mul = mul nuw i64 %add, %conv1
  %add2 = add nuw i64 %mul, 512
  %call3 = tail call ptr @bpf_map_area_alloc(i64 noundef %add2, i32 noundef %cond.i) #3
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %bpf_map_attr_numa_node.exit.cleanup_crit_edge, label %if.end

bpf_map_attr_numa_node.exit.cleanup_crit_edge:    ; preds = %bpf_map_attr_numa_node.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %bpf_map_attr_numa_node.exit
  call void @__sanitizer_cov_trace_pc() #5
  %8 = call ptr @memset(ptr %call3, i32 0, i32 512)
  tail call void @bpf_map_init_from_attr(ptr noundef nonnull %call3, ptr noundef %attr) #3
  %conv5 = trunc i64 %add to i32
  %size6 = getelementptr inbounds %struct.bpf_queue_stack, ptr %call3, i32 0, i32 4
  %9 = ptrtoint ptr %size6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv5, ptr %size6, align 4
  %lock = getelementptr inbounds %struct.bpf_queue_stack, ptr %call3, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @queue_stack_map_alloc.__key, i16 noundef signext 2) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %bpf_map_attr_numa_node.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ %call3, %if.end ], [ inttoptr (i32 -12 to ptr), %bpf_map_attr_numa_node.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @queue_stack_map_free(ptr noundef %map) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @bpf_map_area_free(ptr noundef %map) #3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @queue_stack_map_get_next_key(ptr nocapture noundef readnone %map, ptr nocapture noundef readnone %key, ptr nocapture noundef readnone %next_key) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal noalias ptr @queue_stack_map_lookup_elem(ptr nocapture noundef readnone %map, ptr nocapture noundef readnone %key) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @queue_stack_map_update_elem(ptr nocapture noundef readnone %map, ptr nocapture noundef readnone %key, ptr nocapture noundef readnone %value, i64 noundef %flags) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @queue_stack_map_delete_elem(ptr nocapture noundef readnone %map, ptr nocapture noundef readnone %key) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -22
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @queue_stack_map_push_elem(ptr noundef %map, ptr nocapture noundef readonly %value, i64 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i64 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  %and1 = and i64 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1)
  %tobool2.not = icmp ne i64 %and1, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %flags)
  %cmp = icmp ugt i64 %flags, 2
  %or.cond = or i1 %cmp, %tobool2.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.body:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.bpf_queue_stack, ptr %map, i32 0, i32 1
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #3
  %head1.i = getelementptr inbounds %struct.bpf_queue_stack, ptr %map, i32 0, i32 2
  %0 = ptrtoint ptr %head1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %head1.i, align 4
  %add.i = add i32 %1, 1
  %size.i = getelementptr inbounds %struct.bpf_queue_stack, ptr %map, i32 0, i32 4
  %2 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %3)
  %cmp.not.i = icmp ult i32 %add.i, %3
  br i1 %cmp.not.i, label %do.body.queue_stack_map_is_full.exit_crit_edge, label %if.then.i, !prof !22

do.body.queue_stack_map_is_full.exit_crit_edge:   ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %queue_stack_map_is_full.exit

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %queue_stack_map_is_full.exit

queue_stack_map_is_full.exit:                     ; preds = %if.then.i, %do.body.queue_stack_map_is_full.exit_crit_edge
  %head.0.i = phi i32 [ 0, %if.then.i ], [ %add.i, %do.body.queue_stack_map_is_full.exit_crit_edge ]
  %tail.i = getelementptr inbounds %struct.bpf_queue_stack, ptr %map, i32 0, i32 3
  %4 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tail.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %head.0.i, i32 %5)
  %cmp3.i = icmp eq i32 %head.0.i, %5
  br i1 %cmp3.i, label %if.then6, label %queue_stack_map_is_full.exit.if.end17_crit_edge

queue_stack_map_is_full.exit.if.end17_crit_edge:  ; preds = %queue_stack_map_is_full.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end17

if.then6:                                         ; preds = %queue_stack_map_is_full.exit
  br i1 %tobool.not, label %if.then6.do.body35_crit_edge, label %if.end9

if.then6.do.body35_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body35

if.end9:                                          ; preds = %if.then6
  %inc = add nuw i32 %head.0.i, 1
  %6 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %inc, ptr %tail.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %3)
  %cmp10.not = icmp ult i32 %inc, %3
  br i1 %cmp10.not, label %if.end9.if.end17_crit_edge, label %if.then14, !prof !22

if.end9.if.end17_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end17

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #5
  %7 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %tail.i, align 16
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end9.if.end17_crit_edge, %queue_stack_map_is_full.exit.if.end17_crit_edge
  %value_size = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 5
  %8 = ptrtoint ptr %value_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value_size, align 4
  %mul = mul i32 %9, %1
  %arrayidx = getelementptr %struct.bpf_queue_stack, ptr %map, i32 0, i32 5, i32 %mul
  %10 = call ptr @memcpy(ptr %arrayidx, ptr %value, i32 %9)
  %11 = ptrtoint ptr %head1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %head1.i, align 4
  %inc22 = add i32 %12, 1
  store i32 %inc22, ptr %head1.i, align 4
  %13 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc22, i32 %14)
  %cmp24.not = icmp ult i32 %inc22, %14
  br i1 %cmp24.not, label %if.end17.do.body35_crit_edge, label %if.then32, !prof !22

if.end17.do.body35_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body35

if.then32:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #5
  %15 = ptrtoint ptr %head1.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %head1.i, align 4
  br label %do.body35

do.body35:                                        ; preds = %if.then32, %if.end17.do.body35_crit_edge, %if.then6.do.body35_crit_edge
  %err.0 = phi i32 [ 0, %if.then32 ], [ 0, %if.end17.do.body35_crit_edge ], [ -7, %if.then6.do.body35_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #3
  br label %cleanup

cleanup:                                          ; preds = %do.body35, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %do.body35 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @queue_map_pop_elem(ptr noundef %map, ptr nocapture noundef writeonly %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %lock.i = getelementptr inbounds %struct.bpf_queue_stack, ptr %map, i32 0, i32 1
  %call1.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #3
  %head.i.i = getelementptr inbounds %struct.bpf_queue_stack, ptr %map, i32 0, i32 2
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %head.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.bpf_queue_stack, ptr %map, i32 0, i32 3
  %2 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tail.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.i.i = icmp eq i32 %1, %3
  %value_size.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 5
  %4 = ptrtoint ptr %value_size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value_size.i, align 4
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %6 = call ptr @memset(ptr %value, i32 0, i32 %5)
  br label %__queue_map_get.exit

if.end.i:                                         ; preds = %entry
  %mul.i = mul i32 %5, %3
  %arrayidx.i = getelementptr %struct.bpf_queue_stack, ptr %map, i32 0, i32 5, i32 %mul.i
  %7 = call ptr @memcpy(ptr %value, ptr %arrayidx.i, i32 %5)
  %8 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tail.i.i, align 16
  %inc.i = add i32 %9, 1
  store i32 %inc.i, ptr %tail.i.i, align 16
  %size.i = getelementptr inbounds %struct.bpf_queue_stack, ptr %map, i32 0, i32 4
  %10 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %11)
  %cmp10.not.i = icmp ult i32 %inc.i, %11
  br i1 %cmp10.not.i, label %if.end.i.__queue_map_get.exit_crit_edge, label %if.then14.i, !prof !22

if.end.i.__queue_map_get.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %__queue_map_get.exit

if.then14.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %12 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %tail.i.i, align 16
  br label %__queue_map_get.exit

__queue_map_get.exit:                             ; preds = %if.then14.i, %if.end.i.__queue_map_get.exit_crit_edge, %if.then.i
  %err.0.i = phi i32 [ -2, %if.then.i ], [ 0, %if.then14.i ], [ 0, %if.end.i.__queue_map_get.exit_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call1.i) #3
  ret i32 %err.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @queue_map_peek_elem(ptr noundef %map, ptr nocapture noundef writeonly %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %lock.i = getelementptr inbounds %struct.bpf_queue_stack, ptr %map, i32 0, i32 1
  %call1.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #3
  %head.i.i = getelementptr inbounds %struct.bpf_queue_stack, ptr %map, i32 0, i32 2
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %head.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.bpf_queue_stack, ptr %map, i32 0, i32 3
  %2 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tail.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.i.i = icmp eq i32 %1, %3
  %value_size.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 5
  %4 = ptrtoint ptr %value_size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value_size.i, align 4
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %6 = call ptr @memset(ptr %value, i32 0, i32 %5)
  br label %__queue_map_get.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %mul.i = mul i32 %5, %3
  %arrayidx.i = getelementptr %struct.bpf_queue_stack, ptr %map, i32 0, i32 5, i32 %mul.i
  %7 = call ptr @memcpy(ptr %value, ptr %arrayidx.i, i32 %5)
  br label %__queue_map_get.exit

__queue_map_get.exit:                             ; preds = %if.end.i, %if.then.i
  %err.0.i = phi i32 [ -2, %if.then.i ], [ 0, %if.end.i ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call1.i) #3
  ret i32 %err.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @bpf_map_meta_equal(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stack_map_pop_elem(ptr noundef %map, ptr nocapture noundef writeonly %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %lock.i = getelementptr inbounds %struct.bpf_queue_stack, ptr %map, i32 0, i32 1
  %call1.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #3
  %head.i.i = getelementptr inbounds %struct.bpf_queue_stack, ptr %map, i32 0, i32 2
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %head.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.bpf_queue_stack, ptr %map, i32 0, i32 3
  %2 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tail.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.i.i = icmp eq i32 %1, %3
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %value_size.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 5
  %4 = ptrtoint ptr %value_size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value_size.i, align 4
  %6 = call ptr @memset(ptr %value, i32 0, i32 %5)
  br label %__stack_map_get.exit

if.end.i:                                         ; preds = %entry
  %sub.i = add i32 %1, -1
  %size.i = getelementptr inbounds %struct.bpf_queue_stack, ptr %map, i32 0, i32 4
  %7 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %8)
  %cmp4.not.i = icmp ult i32 %sub.i, %8
  br i1 %cmp4.not.i, label %if.end.i.if.end10.i_crit_edge, label %if.then7.i, !prof !22

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end10.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %sub9.i = add i32 %8, -1
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then7.i, %if.end.i.if.end10.i_crit_edge
  %index.0.i = phi i32 [ %sub9.i, %if.then7.i ], [ %sub.i, %if.end.i.if.end10.i_crit_edge ]
  %value_size12.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 5
  %9 = ptrtoint ptr %value_size12.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value_size12.i, align 4
  %mul.i = mul i32 %10, %index.0.i
  %arrayidx.i = getelementptr %struct.bpf_queue_stack, ptr %map, i32 0, i32 5, i32 %mul.i
  %11 = call ptr @memcpy(ptr %value, ptr %arrayidx.i, i32 %10)
  %12 = ptrtoint ptr %head.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %index.0.i, ptr %head.i.i, align 4
  br label %__stack_map_get.exit

__stack_map_get.exit:                             ; preds = %if.end10.i, %if.then.i
  %err.0.i = phi i32 [ -2, %if.then.i ], [ 0, %if.end10.i ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call1.i) #3
  ret i32 %err.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stack_map_peek_elem(ptr noundef %map, ptr nocapture noundef writeonly %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %lock.i = getelementptr inbounds %struct.bpf_queue_stack, ptr %map, i32 0, i32 1
  %call1.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #3
  %head.i.i = getelementptr inbounds %struct.bpf_queue_stack, ptr %map, i32 0, i32 2
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %head.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.bpf_queue_stack, ptr %map, i32 0, i32 3
  %2 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tail.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.i.i = icmp eq i32 %1, %3
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %value_size.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 5
  %4 = ptrtoint ptr %value_size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value_size.i, align 4
  %6 = call ptr @memset(ptr %value, i32 0, i32 %5)
  br label %__stack_map_get.exit

if.end.i:                                         ; preds = %entry
  %sub.i = add i32 %1, -1
  %size.i = getelementptr inbounds %struct.bpf_queue_stack, ptr %map, i32 0, i32 4
  %7 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %8)
  %cmp4.not.i = icmp ult i32 %sub.i, %8
  br i1 %cmp4.not.i, label %if.end.i.if.end10.i_crit_edge, label %if.then7.i, !prof !22

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end10.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %sub9.i = add i32 %8, -1
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then7.i, %if.end.i.if.end10.i_crit_edge
  %index.0.i = phi i32 [ %sub9.i, %if.then7.i ], [ %sub.i, %if.end.i.if.end10.i_crit_edge ]
  %value_size12.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 5
  %9 = ptrtoint ptr %value_size12.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value_size12.i, align 4
  %mul.i = mul i32 %10, %index.0.i
  %arrayidx.i = getelementptr %struct.bpf_queue_stack, ptr %map, i32 0, i32 5, i32 %mul.i
  %11 = call ptr @memcpy(ptr %value, ptr %arrayidx.i, i32 %10)
  br label %__stack_map_get.exit

__stack_map_get.exit:                             ; preds = %if.end10.i, %if.then.i
  %err.0.i = phi i32 [ -2, %if.then.i ], [ 0, %if.end10.i ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call1.i) #3
  ret i32 %err.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bpf_map_area_alloc(i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_map_init_from_attr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_map_area_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../kernel/bpf/queue_stack_maps.c", i32 263, i32 18}
!2 = !{ptr @queue_map_ops, !3, !"queue_map_ops", i1 false, i1 false}
!3 = !{!"../kernel/bpf/queue_stack_maps.c", i32 251, i32 26}
!4 = !{ptr @stack_map_ops, !5, !"stack_map_ops", i1 false, i1 false}
!5 = !{!"../kernel/bpf/queue_stack_maps.c", i32 268, i32 26}
!6 = !{ptr @queue_map_btf_id, !7, !"queue_map_btf_id", i1 false, i1 false}
!7 = !{!"../kernel/bpf/queue_stack_maps.c", i32 250, i32 12}
!8 = !{ptr @stack_map_btf_id, !9, !"stack_map_btf_id", i1 false, i1 false}
!9 = !{!"../kernel/bpf/queue_stack_maps.c", i32 267, i32 12}
!10 = !{ptr @queue_stack_map_alloc.__key, !11, !"__key", i1 false, i1 false}
!11 = !{!"../kernel/bpf/queue_stack_maps.c", i32 86, i32 2}
!12 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!22 = !{!"branch_weights", i32 2000, i32 1}
