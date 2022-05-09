; ModuleID = '/llk/IR_all_yes/mm/kasan/common.c_pt.bc'
source_filename = "../mm/kasan/common.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+kasan_enable_current\22, \22a\22\09"
module asm "\09.weak\09__crc_kasan_enable_current\09\09\09\09"
module asm "\09.long\09__crc_kasan_enable_current\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kasan_enable_current:\09\09\09\09\09"
module asm "\09.asciz \09\22kasan_enable_current\22\09\09\09\09\09"
module asm "__kstrtabns_kasan_enable_current:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+kasan_disable_current\22, \22a\22\09"
module asm "\09.weak\09__crc_kasan_disable_current\09\09\09\09"
module asm "\09.long\09__crc_kasan_disable_current\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kasan_disable_current:\09\09\09\09\09"
module asm "\09.asciz \09\22kasan_disable_current\22\09\09\09\09\09"
module asm "__kstrtabns_kasan_disable_current:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__kasan_kmalloc\22, \22a\22\09"
module asm "\09.weak\09__crc___kasan_kmalloc\09\09\09\09"
module asm "\09.long\09__crc___kasan_kmalloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___kasan_kmalloc:\09\09\09\09\09"
module asm "\09.asciz \09\22__kasan_kmalloc\22\09\09\09\09\09"
module asm "__kstrtabns___kasan_kmalloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.76, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon }
%struct.llist_node = type { ptr }
%union.anon = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.50 }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, i32, i32, i32, i64, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.spinlock = type { %union.anon.9 }
%union.anon.9 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.76 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.kasan_track = type { i32, i32 }
%struct.kmem_cache = type { ptr, i32, i32, i32, i32, %struct.reciprocal_value, i32, i32, i32, %struct.kmem_cache_order_objects, %struct.kmem_cache_order_objects, %struct.kmem_cache_order_objects, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, %struct.kobject, i32, ptr, %struct.kasan_cache, i32, i32, [1 x ptr] }
%struct.reciprocal_value = type { i32, i8, i8 }
%struct.kmem_cache_order_objects = type { i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.kasan_cache = type { i32, i32, i8 }
%struct.page = type { i32, %union.anon.7, %union.anon.49, %struct.atomic_t, i32 }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.49 = type { %struct.atomic_t }
%struct.anon.43 = type { i32, i8, i8, %struct.atomic_t, i32 }
%struct.slab = type { i32, %union.anon.57, ptr, ptr, %union.anon.59, i32, %struct.atomic_t, i32 }
%union.anon.57 = type { %struct.list_head }
%union.anon.59 = type { i32 }

@__kstrtab_kasan_enable_current = external dso_local constant [0 x i8], align 1
@__kstrtabns_kasan_enable_current = external dso_local constant [0 x i8], align 1
@__ksymtab_kasan_enable_current = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kasan_enable_current to i32), ptr @__kstrtab_kasan_enable_current, ptr @__kstrtabns_kasan_enable_current }, section "___ksymtab+kasan_enable_current", align 4
@__kstrtab_kasan_disable_current = external dso_local constant [0 x i8], align 1
@__kstrtabns_kasan_disable_current = external dso_local constant [0 x i8], align 1
@__ksymtab_kasan_disable_current = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kasan_disable_current to i32), ptr @__kstrtab_kasan_disable_current, ptr @__kstrtabns_kasan_disable_current }, section "___ksymtab+kasan_disable_current", align 4
@__kstrtab___kasan_kmalloc = external dso_local constant [0 x i8], align 1
@__kstrtabns___kasan_kmalloc = external dso_local constant [0 x i8], align 1
@__ksymtab___kasan_kmalloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__kasan_kmalloc to i32), ptr @__kstrtab___kasan_kmalloc, ptr @__kstrtabns___kasan_kmalloc }, section "___ksymtab+__kasan_kmalloc", align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", align 1
@__kfence_pool = external dso_local local_unnamed_addr global ptr, align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab___kasan_kmalloc, ptr @__ksymtab_kasan_disable_current, ptr @__ksymtab_kasan_enable_current], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define dso_local i32 @kasan_save_stack(i32 noundef %flags, i1 noundef zeroext %can_alloc) local_unnamed_addr #0 align 64 {
entry:
  %entries = alloca [64 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %entries) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(256) %entries, i8 -1, i32 256, i1 false), !annotation !9
  %call = call i32 @stack_trace_save(ptr noundef nonnull %entries, i32 noundef 64, i32 noundef 0) #13
  %call2 = call i32 @__stack_depot_save(ptr noundef nonnull %entries, i32 noundef %call, i32 noundef %flags, i1 noundef zeroext %can_alloc) #13
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %entries) #12
  ret i32 %call2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stack_trace_save(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__stack_depot_save(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define dso_local void @kasan_set_track(ptr nocapture noundef writeonly %track, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %entries.i = alloca [64 x i32], align 4
  %0 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 68
  %3 = load i32, ptr %pid, align 8
  store i32 %3, ptr %track, align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %entries.i) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(256) %entries.i, i8 -1, i32 256, i1 false) #12, !annotation !9
  %call.i = call i32 @stack_trace_save(ptr noundef nonnull %entries.i, i32 noundef 64, i32 noundef 0) #13
  %call2.i = call i32 @__stack_depot_save(ptr noundef nonnull %entries.i, i32 noundef %call.i, i32 noundef %flags, i1 noundef zeroext true) #13
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %entries.i) #12
  %stack = getelementptr inbounds %struct.kasan_track, ptr %track, i32 0, i32 1
  store i32 %call2.i, ptr %stack, align 4
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid willreturn uwtable(sync)
define dso_local void @kasan_enable_current() #4 align 64 {
entry:
  %0 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = load ptr, ptr %task, align 8
  %kasan_depth = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 191
  %3 = load i32, ptr %kasan_depth, align 8
  %inc = add i32 %3, 1
  store i32 %inc, ptr %kasan_depth, align 8
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid willreturn uwtable(sync)
define dso_local void @kasan_disable_current() #4 align 64 {
entry:
  %0 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = load ptr, ptr %task, align 8
  %kasan_depth = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 191
  %3 = load i32, ptr %kasan_depth, align 8
  %dec = add i32 %3, -1
  store i32 %dec, ptr %kasan_depth, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define dso_local void @__kasan_unpoison_range(ptr noundef %address, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  tail call void @kasan_unpoison(ptr noundef %address, i32 noundef %size, i1 noundef zeroext false) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kasan_unpoison(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone willreturn uwtable(sync)
define dso_local i32 @__kasan_never_merge() local_unnamed_addr #5 align 64 {
entry:
  ret i32 134217728
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define dso_local void @__kasan_unpoison_pages(ptr noundef %page, i32 noundef %order, i1 noundef zeroext %init) local_unnamed_addr #0 align 64 {
entry:
  %0 = load i32, ptr %page, align 4
  %shr.i = lshr i32 %0, 30
  %cmp.i = icmp eq i32 %shr.i, 2
  br i1 %cmp.i, label %cleanup, label %is_highmem_idx.exit

is_highmem_idx.exit:                              ; preds = %entry
  %cmp1.i = icmp ne i32 %shr.i, 3
  %1 = load i32, ptr @movable_zone, align 4
  %cmp2.i = icmp ne i32 %1, 2
  %2 = select i1 %cmp1.i, i1 true, i1 %cmp2.i
  br i1 %2, label %for.cond, label %cleanup, !prof !10

for.cond:                                         ; preds = %for.cond, %is_highmem_idx.exit
  %i.0 = phi i32 [ %inc, %for.cond ], [ 0, %is_highmem_idx.exit ]
  %i.0.highbits = lshr i32 %i.0, %order
  %cmp = icmp eq i32 %i.0.highbits, 0
  %inc = add i32 %i.0, 1
  br i1 %cmp, label %for.cond, label %for.end

for.end:                                          ; preds = %for.cond
  %call5 = tail call ptr @page_address(ptr noundef %page) #13
  %shl6 = shl i32 4096, %order
  tail call void @kasan_unpoison(ptr noundef %call5, i32 noundef %shl6, i1 noundef zeroext %init) #13
  br label %cleanup

cleanup:                                          ; preds = %for.end, %is_highmem_idx.exit, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define dso_local void @__kasan_poison_pages(ptr noundef %page, i32 noundef %order, i1 noundef zeroext %init) local_unnamed_addr #0 align 64 {
entry:
  %0 = load i32, ptr %page, align 4
  %shr.i = lshr i32 %0, 30
  %cmp.i = icmp eq i32 %shr.i, 2
  br i1 %cmp.i, label %if.end, label %is_highmem_idx.exit

is_highmem_idx.exit:                              ; preds = %entry
  %cmp1.i = icmp ne i32 %shr.i, 3
  %1 = load i32, ptr @movable_zone, align 4
  %cmp2.i = icmp ne i32 %1, 2
  %2 = select i1 %cmp1.i, i1 true, i1 %cmp2.i
  br i1 %2, label %if.then, label %if.end, !prof !10

if.then:                                          ; preds = %is_highmem_idx.exit
  %call5 = tail call ptr @page_address(ptr noundef %page) #13
  %shl = shl i32 4096, %order
  tail call void @kasan_poison(ptr noundef %call5, i32 noundef %shl, i8 noundef zeroext -1, i1 noundef zeroext %init) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %is_highmem_idx.exit, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kasan_poison(ptr noundef, i32 noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid willreturn uwtable(sync)
define dso_local void @__kasan_cache_create(ptr nocapture noundef %cache, ptr nocapture noundef %size, ptr nocapture noundef %flags) local_unnamed_addr #6 align 64 {
entry:
  %0 = load i32, ptr %flags, align 4
  %or = or i32 %0, 134217728
  store i32 %or, ptr %flags, align 4
  %1 = load i32, ptr %size, align 4
  %kasan_info = getelementptr inbounds %struct.kmem_cache, ptr %cache, i32 0, i32 23
  store i32 %1, ptr %kasan_info, align 4
  %2 = load i32, ptr %size, align 4
  %add = add i32 %2, 16
  store i32 %add, ptr %size, align 4
  %cmp = icmp ugt i32 %add, 8388608
  br i1 %cmp, label %if.then1, label %if.end4

if.then1:                                         ; preds = %entry
  store i32 0, ptr %kasan_info, align 4
  store i32 %1, ptr %size, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then1, %entry
  %3 = phi i32 [ %1, %if.then1 ], [ %add, %entry ]
  %flags5 = getelementptr inbounds %struct.kmem_cache, ptr %cache, i32 0, i32 1
  %4 = load i32, ptr %flags5, align 4
  %and = and i32 %4, 524288
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.then9

lor.lhs.false:                                    ; preds = %if.end4
  %ctor = getelementptr inbounds %struct.kmem_cache, ptr %cache, i32 0, i32 14
  %5 = load ptr, ptr %ctor, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %lor.lhs.false7, label %if.then9

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %object_size = getelementptr inbounds %struct.kmem_cache, ptr %cache, i32 0, i32 4
  %6 = load i32, ptr %object_size, align 4
  %cmp8 = icmp ult i32 %6, 12
  br i1 %cmp8, label %if.then9, label %if.end17

if.then9:                                         ; preds = %lor.lhs.false7, %lor.lhs.false, %if.end4
  %free_meta_offset = getelementptr inbounds %struct.kmem_cache, ptr %cache, i32 0, i32 23, i32 1
  store i32 %3, ptr %free_meta_offset, align 4
  %7 = load i32, ptr %size, align 4
  %add11 = add i32 %7, 12
  store i32 %add11, ptr %size, align 4
  %cmp12 = icmp ugt i32 %add11, 8388608
  br i1 %cmp12, label %if.then13, label %if.end17

if.then13:                                        ; preds = %if.then9
  store i32 2147483647, ptr %free_meta_offset, align 4
  store i32 %3, ptr %size, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then13, %if.then9, %lor.lhs.false7
  %8 = phi i32 [ %add11, %if.then9 ], [ %3, %if.then13 ], [ %3, %lor.lhs.false7 ]
  %object_size18 = getelementptr inbounds %struct.kmem_cache, ptr %cache, i32 0, i32 4
  %9 = load i32, ptr %object_size18, align 4
  %cmp.i = icmp ult i32 %9, 49
  br i1 %cmp.i, label %optimal_redzone.exit, label %cond.false.i

cond.false.i:                                     ; preds = %if.end17
  %cmp1.i = icmp ult i32 %9, 97
  br i1 %cmp1.i, label %optimal_redzone.exit, label %cond.false3.i

cond.false3.i:                                    ; preds = %cond.false.i
  %cmp4.i = icmp ult i32 %9, 449
  br i1 %cmp4.i, label %optimal_redzone.exit, label %cond.false6.i

cond.false6.i:                                    ; preds = %cond.false3.i
  %cmp7.i = icmp ult i32 %9, 3969
  br i1 %cmp7.i, label %optimal_redzone.exit, label %cond.false9.i

cond.false9.i:                                    ; preds = %cond.false6.i
  %cmp10.i = icmp ult i32 %9, 16129
  br i1 %cmp10.i, label %optimal_redzone.exit, label %cond.false12.i

cond.false12.i:                                   ; preds = %cond.false9.i
  %cmp13.i = icmp ult i32 %9, 32257
  br i1 %cmp13.i, label %optimal_redzone.exit, label %cond.false15.i

cond.false15.i:                                   ; preds = %cond.false12.i
  %cmp16.i = icmp ult i32 %9, 64513
  %cond.i = select i1 %cmp16.i, i32 1024, i32 2048
  br label %optimal_redzone.exit

optimal_redzone.exit:                             ; preds = %cond.false15.i, %cond.false12.i, %cond.false9.i, %cond.false6.i, %cond.false3.i, %cond.false.i, %if.end17
  %cond27.i = phi i32 [ 16, %if.end17 ], [ 32, %cond.false.i ], [ 64, %cond.false3.i ], [ 128, %cond.false6.i ], [ 256, %cond.false9.i ], [ %cond.i, %cond.false15.i ], [ 512, %cond.false12.i ]
  %add21 = add i32 %cond27.i, %9
  %10 = tail call i32 @llvm.umin.i32(i32 %add21, i32 8388608)
  %cmp25 = icmp ult i32 %8, %10
  br i1 %cmp25, label %if.then26, label %cleanup

if.then26:                                        ; preds = %optimal_redzone.exit
  store i32 %10, ptr %size, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %optimal_redzone.exit
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid willreturn writeonly uwtable(sync)
define dso_local void @__kasan_cache_create_kmalloc(ptr nocapture noundef writeonly %cache) local_unnamed_addr #7 align 64 {
entry:
  %is_kmalloc = getelementptr inbounds %struct.kmem_cache, ptr %cache, i32 0, i32 23, i32 2
  store i8 1, ptr %is_kmalloc, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly willreturn uwtable(sync)
define dso_local i32 @__kasan_metadata_size(ptr nocapture noundef readonly %cache) local_unnamed_addr #8 align 64 {
entry:
  %kasan_info = getelementptr inbounds %struct.kmem_cache, ptr %cache, i32 0, i32 23
  %0 = load i32, ptr %kasan_info, align 4
  %tobool.not = icmp eq i32 %0, 0
  %cond = select i1 %tobool.not, i32 0, i32 16
  %free_meta_offset = getelementptr inbounds %struct.kmem_cache, ptr %cache, i32 0, i32 23, i32 1
  %1 = load i32, ptr %free_meta_offset, align 4
  %tobool2.not = icmp eq i32 %1, 0
  %cond3 = select i1 %tobool2.not, i32 0, i32 12
  %add = or i32 %cond3, %cond
  ret i32 %add
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly willreturn uwtable(sync)
define dso_local ptr @kasan_get_alloc_meta(ptr nocapture noundef readonly %cache, ptr noundef readnone %object) local_unnamed_addr #8 align 64 {
entry:
  %kasan_info = getelementptr inbounds %struct.kmem_cache, ptr %cache, i32 0, i32 23
  %0 = load i32, ptr %kasan_info, align 4
  %tobool.not = icmp eq i32 %0, 0
  %add.ptr = getelementptr i8, ptr %object, i32 %0
  %spec.select = select i1 %tobool.not, ptr null, ptr %add.ptr
  ret ptr %spec.select
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly willreturn uwtable(sync)
define dso_local ptr @kasan_get_free_meta(ptr nocapture noundef readonly %cache, ptr noundef readnone %object) local_unnamed_addr #8 align 64 {
entry:
  %free_meta_offset = getelementptr inbounds %struct.kmem_cache, ptr %cache, i32 0, i32 23, i32 1
  %0 = load i32, ptr %free_meta_offset, align 4
  %cmp = icmp eq i32 %0, 2147483647
  %add.ptr = getelementptr i8, ptr %object, i32 %0
  %spec.select = select i1 %cmp, ptr null, ptr %add.ptr
  ret ptr %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define dso_local void @__kasan_poison_slab(ptr noundef %slab) local_unnamed_addr #0 align 64 {
entry:
  %0 = load volatile i32, ptr %slab, align 4
  %cmp.i.not.i.i9 = icmp eq i32 %0, -1
  br i1 %cmp.i.not.i.i9, label %if.then.i.i, label %PageHead.exit.i.lr.ph, !prof !11

PageHead.exit.i.lr.ph:                            ; preds = %entry
  %compound_nr.i = getelementptr %struct.page, ptr %slab, i32 1, i32 1, i32 0, i32 2
  br label %PageHead.exit.i

for.cond:                                         ; preds = %compound_nr.exit
  %inc = add nuw i32 %i.010, 1
  %1 = load volatile i32, ptr %slab, align 4
  %cmp.i.not.i.i = icmp eq i32 %1, -1
  br i1 %cmp.i.not.i.i, label %if.then.i.i, label %PageHead.exit.i, !prof !11

if.then.i.i:                                      ; preds = %for.cond, %entry
  tail call void @dump_page(ptr noundef %slab, ptr noundef nonnull @.str) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #12, !srcloc !12
  unreachable

PageHead.exit.i:                                  ; preds = %for.cond, %PageHead.exit.i.lr.ph
  %i.010 = phi i32 [ 0, %PageHead.exit.i.lr.ph ], [ %inc, %for.cond ]
  %2 = load volatile i32, ptr %slab, align 4
  %3 = and i32 %2, 65536
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %compound_nr.exit, label %if.end.i

if.end.i:                                         ; preds = %PageHead.exit.i
  %4 = load i32, ptr %compound_nr.i, align 4
  br label %compound_nr.exit

compound_nr.exit:                                 ; preds = %if.end.i, %PageHead.exit.i
  %retval.0.i = phi i32 [ %4, %if.end.i ], [ 1, %PageHead.exit.i ]
  %cmp = icmp ult i32 %i.010, %retval.0.i
  br i1 %cmp, label %for.cond, label %for.end

for.end:                                          ; preds = %compound_nr.exit
  %call2 = tail call ptr @page_address(ptr noundef %slab) #13
  %5 = load volatile i32, ptr %slab, align 4
  %cmp.i.not.i.i.i = icmp eq i32 %5, -1
  br i1 %cmp.i.not.i.i.i, label %if.then.i.i.i, label %PageHead.exit.i.i, !prof !11

if.then.i.i.i:                                    ; preds = %for.end
  tail call void @dump_page(ptr noundef %slab, ptr noundef nonnull @.str) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #12, !srcloc !12
  unreachable

PageHead.exit.i.i:                                ; preds = %for.end
  %6 = load volatile i32, ptr %slab, align 4
  %7 = and i32 %6, 65536
  %tobool.not.i.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i.i, label %page_size.exit, label %if.end.i.i

if.end.i.i:                                       ; preds = %PageHead.exit.i.i
  %8 = getelementptr %struct.page, ptr %slab, i32 1, i32 1
  %compound_order.i.i = getelementptr inbounds %struct.anon.43, ptr %8, i32 0, i32 2
  %9 = load i8, ptr %compound_order.i.i, align 1
  %conv.i.i = zext i8 %9 to i32
  br label %page_size.exit

page_size.exit:                                   ; preds = %if.end.i.i, %PageHead.exit.i.i
  %retval.0.i.i = phi i32 [ %conv.i.i, %if.end.i.i ], [ 0, %PageHead.exit.i.i ]
  %shl.i = shl i32 4096, %retval.0.i.i
  tail call void @kasan_poison(ptr noundef %call2, i32 noundef %shl.i, i8 noundef zeroext -4, i1 noundef zeroext false) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define dso_local void @__kasan_unpoison_object_data(ptr nocapture noundef readonly %cache, ptr noundef %object) local_unnamed_addr #0 align 64 {
entry:
  %object_size = getelementptr inbounds %struct.kmem_cache, ptr %cache, i32 0, i32 4
  %0 = load i32, ptr %object_size, align 4
  tail call void @kasan_unpoison(ptr noundef %object, i32 noundef %0, i1 noundef zeroext false) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define dso_local void @__kasan_poison_object_data(ptr nocapture noundef readonly %cache, ptr noundef %object) local_unnamed_addr #0 align 64 {
entry:
  %object_size = getelementptr inbounds %struct.kmem_cache, ptr %cache, i32 0, i32 4
  %0 = load i32, ptr %object_size, align 4
  %sub = add i32 %0, -1
  %or = or i32 %sub, 7
  %add = add i32 %or, 1
  tail call void @kasan_poison(ptr noundef %object, i32 noundef %add, i8 noundef zeroext -4, i1 noundef zeroext false) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define dso_local ptr @__kasan_init_slab_obj(ptr nocapture noundef readonly %cache, ptr noundef returned %object) local_unnamed_addr #0 align 64 {
entry:
  %kasan_info.i = getelementptr inbounds %struct.kmem_cache, ptr %cache, i32 0, i32 23
  %0 = load i32, ptr %kasan_info.i, align 4
  %tobool.not.i = icmp eq i32 %0, 0
  %add.ptr.i = getelementptr i8, ptr %object, i32 %0
  %tobool.not12 = icmp eq ptr %add.ptr.i, null
  %tobool.not = or i1 %tobool.not.i, %tobool.not12
  br i1 %tobool.not, label %if.end4, label %if.then2

if.then2:                                         ; preds = %entry
  %call3 = tail call ptr @__memset(ptr noundef nonnull %add.ptr.i, i32 noundef 0, i32 noundef 16) #13
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %entry
  ret ptr %object
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__memset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define dso_local zeroext i1 @__kasan_slab_free(ptr noundef %cache, ptr noundef %object, i32 noundef %ip, i1 noundef zeroext %init) local_unnamed_addr #0 align 64 {
entry:
  %call = tail call fastcc zeroext i1 @____kasan_slab_free(ptr noundef %cache, ptr noundef %object, i32 noundef %ip, i1 noundef zeroext true, i1 noundef zeroext %init) #14
  ret i1 %call
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid uwtable(sync)
define internal fastcc zeroext i1 @____kasan_slab_free(ptr noundef %cache, ptr noundef %object, i32 noundef %ip, i1 noundef zeroext %quarantine, i1 noundef zeroext %init) unnamed_addr #9 align 64 {
entry:
  %0 = load ptr, ptr @__kfence_pool, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %object to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %0 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %cmp.i = icmp ult i32 %sub.ptr.sub.i, 2097152
  %tobool.i = icmp ne ptr %0, null
  %1 = select i1 %cmp.i, i1 %tobool.i, i1 false
  br i1 %1, label %cleanup, label %if.end5

if.end5:                                          ; preds = %entry
  %2 = load ptr, ptr @mem_map, align 4
  %sub.i.i = add i32 %sub.ptr.lhs.cast.i, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %3 = getelementptr %struct.page, ptr %2, i32 %shr.i.i, i32 1
  %4 = load volatile i32, ptr %3, align 4
  %and.i.i.i = and i32 %4, 1
  %tobool.not.i.i3.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i3.i, label %if.end.i.i.i, label %if.then.i.i4.i, !prof !10

if.then.i.i4.i:                                   ; preds = %if.end5
  %sub.i.i.i = add i32 %4, -1
  br label %virt_to_folio.exit.i

if.end.i.i.i:                                     ; preds = %if.end5
  %add.ptr.i.i = getelementptr %struct.page, ptr %2, i32 %shr.i.i
  %5 = ptrtoint ptr %add.ptr.i.i to i32
  br label %virt_to_folio.exit.i

virt_to_folio.exit.i:                             ; preds = %if.end.i.i.i, %if.then.i.i4.i
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i4.i ], [ %5, %if.end.i.i.i ]
  %6 = inttoptr i32 %retval.0.i.i.i to ptr
  %7 = getelementptr inbounds %struct.page, ptr %6, i32 0, i32 1
  %8 = load volatile i32, ptr %7, align 4
  %and.i.i.i.i = and i32 %8, 1
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %virt_to_slab.exit, label %if.then.i.i.i, !prof !10

if.then.i.i.i:                                    ; preds = %virt_to_folio.exit.i
  tail call void @dump_page(ptr noundef %6, ptr noundef nonnull @.str.1) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !13
  unreachable

virt_to_slab.exit:                                ; preds = %virt_to_folio.exit.i
  %9 = load volatile i32, ptr %6, align 4
  %10 = and i32 %9, 512
  %tobool.i.not.i = icmp eq i32 %10, 0
  %call..i = select i1 %tobool.i.not.i, ptr null, ptr %6
  %call.i.i.i = tail call ptr @page_address(ptr noundef %call..i) #13
  %sub.ptr.rhs.cast.i48 = ptrtoint ptr %call.i.i.i to i32
  %sub.ptr.sub.i49 = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i48
  %size.i = getelementptr inbounds %struct.kmem_cache, ptr %cache, i32 0, i32 3
  %11 = load i32, ptr %size.i, align 4
  %rem.i = urem i32 %sub.ptr.sub.i49, %11
  %idx.neg.i = sub i32 0, %rem.i
  %add.ptr.i = getelementptr i8, ptr %object, i32 %idx.neg.i
  %call.i.i14.i = tail call ptr @page_address(ptr noundef %call..i) #13
  %12 = getelementptr inbounds %struct.slab, ptr %call..i, i32 0, i32 4
  %bf.load.i = load i32, ptr %12, align 4
  %bf.lshr.i = lshr i32 %bf.load.i, 1
  %bf.clear.i = and i32 %bf.lshr.i, 32767
  %sub.i = add nsw i32 %bf.clear.i, -1
  %13 = load i32, ptr %size.i, align 4
  %mul.i = mul i32 %sub.i, %13
  %add.ptr3.i = getelementptr i8, ptr %call.i.i14.i, i32 %mul.i
  %cmp.i50 = icmp ugt ptr %add.ptr.i, %add.ptr3.i
  %add.ptr3.add.ptr.i = select i1 %cmp.i50, ptr %add.ptr3.i, ptr %add.ptr.i, !prof !11
  %call5.i = tail call ptr @fixup_red_left(ptr noundef %cache, ptr noundef %add.ptr3.add.ptr.i) #13
  %cmp.not = icmp eq ptr %call5.i, %object
  br i1 %cmp.not, label %if.end10, label %if.then9, !prof !10

if.then9:                                         ; preds = %virt_to_slab.exit
  tail call void @kasan_report_invalid_free(ptr noundef %object, i32 noundef %ip) #13
  br label %cleanup

if.end10:                                         ; preds = %virt_to_slab.exit
  %flags = getelementptr inbounds %struct.kmem_cache, ptr %cache, i32 0, i32 1
  %14 = load i32, ptr %flags, align 4
  %and = and i32 %14, 524288
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %if.end19, label %cleanup, !prof !10

if.end19:                                         ; preds = %if.end10
  %call20 = tail call zeroext i1 @kasan_byte_accessible(ptr noundef %object) #13
  br i1 %call20, label %if.end22, label %if.then21

if.then21:                                        ; preds = %if.end19
  tail call void @kasan_report_invalid_free(ptr noundef %object, i32 noundef %ip) #13
  br label %cleanup

if.end22:                                         ; preds = %if.end19
  %object_size = getelementptr inbounds %struct.kmem_cache, ptr %cache, i32 0, i32 4
  %15 = load i32, ptr %object_size, align 4
  %sub = add i32 %15, -1
  %or = or i32 %sub, 7
  %add = add i32 %or, 1
  tail call void @kasan_poison(ptr noundef %object, i32 noundef %add, i8 noundef zeroext -5, i1 noundef zeroext %init) #13
  br i1 %quarantine, label %if.end26, label %cleanup

if.end26:                                         ; preds = %if.end22
  tail call void @kasan_set_free_info(ptr noundef %cache, ptr noundef %object, i8 noundef zeroext 0) #13
  %call30 = tail call zeroext i1 @kasan_quarantine_put(ptr noundef %cache, ptr noundef %object) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.end22, %if.then21, %if.end10, %if.then9, %entry
  %retval.0 = phi i1 [ true, %if.then9 ], [ %call30, %if.end26 ], [ true, %if.then21 ], [ false, %entry ], [ false, %if.end10 ], [ false, %if.end22 ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define dso_local void @__kasan_kfree_large(ptr noundef %ptr, i32 noundef %ip) local_unnamed_addr #0 align 64 {
entry:
  %0 = load ptr, ptr @mem_map, align 4
  %1 = ptrtoint ptr %ptr to i32
  %sub.i.i = add i32 %1, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %2 = getelementptr %struct.page, ptr %0, i32 %shr.i.i, i32 1
  %3 = load volatile i32, ptr %2, align 4
  %and.i.i.i = and i32 %3, 1
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i, !prof !10

if.then.i.i.i:                                    ; preds = %entry
  %sub.i.i.i = add i32 %3, -1
  br label %virt_to_head_page.exit.i

if.end.i.i.i:                                     ; preds = %entry
  %add.ptr.i.i = getelementptr %struct.page, ptr %0, i32 %shr.i.i
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  br label %virt_to_head_page.exit.i

virt_to_head_page.exit.i:                         ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i ], [ %4, %if.end.i.i.i ]
  %5 = inttoptr i32 %retval.0.i.i.i to ptr
  %call1.i = tail call ptr @page_address(ptr noundef %5) #13
  %cmp.not.i = icmp eq ptr %call1.i, %ptr
  br i1 %cmp.not.i, label %if.end.i, label %return.sink.split.i

if.end.i:                                         ; preds = %virt_to_head_page.exit.i
  %call2.i = tail call zeroext i1 @kasan_byte_accessible(ptr noundef %ptr) #13
  br i1 %call2.i, label %____kasan_kfree_large.exit, label %return.sink.split.i

return.sink.split.i:                              ; preds = %if.end.i, %virt_to_head_page.exit.i
  tail call void @kasan_report_invalid_free(ptr noundef %ptr, i32 noundef %ip) #13
  br label %____kasan_kfree_large.exit

____kasan_kfree_large.exit:                       ; preds = %return.sink.split.i, %if.end.i
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid uwtable(sync)
define internal fastcc zeroext i1 @____kasan_kfree_large(ptr noundef %ptr, i32 noundef %ip) unnamed_addr #9 align 64 {
entry:
  %0 = load ptr, ptr @mem_map, align 4
  %1 = ptrtoint ptr %ptr to i32
  %sub.i = add i32 %1, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %2 = getelementptr %struct.page, ptr %0, i32 %shr.i, i32 1
  %3 = load volatile i32, ptr %2, align 4
  %and.i.i = and i32 %3, 1
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !10

if.then.i.i:                                      ; preds = %entry
  %sub.i.i = add i32 %3, -1
  br label %virt_to_head_page.exit

if.end.i.i:                                       ; preds = %entry
  %add.ptr.i = getelementptr %struct.page, ptr %0, i32 %shr.i
  %4 = ptrtoint ptr %add.ptr.i to i32
  br label %virt_to_head_page.exit

virt_to_head_page.exit:                           ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %4, %if.end.i.i ]
  %5 = inttoptr i32 %retval.0.i.i to ptr
  %call1 = tail call ptr @page_address(ptr noundef %5) #13
  %cmp.not = icmp eq ptr %call1, %ptr
  br i1 %cmp.not, label %if.end, label %return.sink.split

if.end:                                           ; preds = %virt_to_head_page.exit
  %call2 = tail call zeroext i1 @kasan_byte_accessible(ptr noundef %ptr) #13
  br i1 %call2, label %return, label %return.sink.split

return.sink.split:                                ; preds = %if.end, %virt_to_head_page.exit
  tail call void @kasan_report_invalid_free(ptr noundef %ptr, i32 noundef %ip) #13
  br label %return

return:                                           ; preds = %return.sink.split, %if.end
  %retval.0 = phi i1 [ false, %if.end ], [ true, %return.sink.split ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define dso_local void @__kasan_slab_free_mempool(ptr noundef %ptr, i32 noundef %ip) local_unnamed_addr #0 align 64 {
entry:
  %0 = load ptr, ptr @mem_map, align 4
  %1 = ptrtoint ptr %ptr to i32
  %sub.i = add i32 %1, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %2 = getelementptr %struct.page, ptr %0, i32 %shr.i, i32 1
  %3 = load volatile i32, ptr %2, align 4
  %and.i.i = and i32 %3, 1
  %tobool.not.i.i15 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i15, label %if.end.i.i, label %if.then.i.i16, !prof !10

if.then.i.i16:                                    ; preds = %entry
  %sub.i.i = add i32 %3, -1
  br label %virt_to_folio.exit

if.end.i.i:                                       ; preds = %entry
  %add.ptr.i = getelementptr %struct.page, ptr %0, i32 %shr.i
  %4 = ptrtoint ptr %add.ptr.i to i32
  br label %virt_to_folio.exit

virt_to_folio.exit:                               ; preds = %if.end.i.i, %if.then.i.i16
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i16 ], [ %4, %if.end.i.i ]
  %5 = inttoptr i32 %retval.0.i.i to ptr
  %6 = getelementptr inbounds %struct.page, ptr %5, i32 0, i32 1
  %7 = load volatile i32, ptr %6, align 4
  %and.i.i.i = and i32 %7, 1
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %folio_test_slab.exit, label %if.then.i.i, !prof !10

if.then.i.i:                                      ; preds = %virt_to_folio.exit
  tail call void @dump_page(ptr noundef %5, ptr noundef nonnull @.str.1) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !13
  unreachable

folio_test_slab.exit:                             ; preds = %virt_to_folio.exit
  %8 = load volatile i32, ptr %5, align 4
  %9 = and i32 %8, 512
  %tobool.i.not = icmp eq i32 %9, 0
  br i1 %tobool.i.not, label %if.then, label %if.else, !prof !11

if.then:                                          ; preds = %folio_test_slab.exit
  %call4 = tail call fastcc zeroext i1 @____kasan_kfree_large(ptr noundef %ptr, i32 noundef %ip) #14
  br i1 %call4, label %cleanup, label %if.end

if.end:                                           ; preds = %if.then
  %call6 = tail call fastcc i32 @folio_size(ptr noundef %5) #14
  tail call void @kasan_poison(ptr noundef %ptr, i32 noundef %call6, i8 noundef zeroext -1, i1 noundef zeroext false) #13
  br label %cleanup

if.else:                                          ; preds = %folio_test_slab.exit
  %slab_cache = getelementptr inbounds %struct.slab, ptr %5, i32 0, i32 2
  %10 = load ptr, ptr %slab_cache, align 4
  %call7 = tail call fastcc zeroext i1 @____kasan_slab_free(ptr noundef %10, ptr noundef %ptr, i32 noundef %ip, i1 noundef zeroext false, i1 noundef zeroext false) #14
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end, %if.then
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid uwtable(sync)
define internal fastcc i32 @folio_size(ptr noundef %folio) unnamed_addr #9 align 64 {
entry:
  %0 = load volatile i32, ptr %folio, align 4
  %cmp.i.not.i.i.i = icmp eq i32 %0, -1
  br i1 %cmp.i.not.i.i.i, label %if.then.i.i.i, label %PageHead.exit.i.i, !prof !11

if.then.i.i.i:                                    ; preds = %entry
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #12, !srcloc !12
  unreachable

PageHead.exit.i.i:                                ; preds = %entry
  %1 = load volatile i32, ptr %folio, align 4
  %2 = and i32 %1, 65536
  %tobool.not.i.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i.i, label %folio_order.exit, label %if.end.i.i

if.end.i.i:                                       ; preds = %PageHead.exit.i.i
  %3 = getelementptr %struct.page, ptr %folio, i32 1, i32 1
  %compound_order.i.i = getelementptr inbounds %struct.anon.43, ptr %3, i32 0, i32 2
  %4 = load i8, ptr %compound_order.i.i, align 1
  %conv.i.i = zext i8 %4 to i32
  br label %folio_order.exit

folio_order.exit:                                 ; preds = %if.end.i.i, %PageHead.exit.i.i
  %retval.0.i.i = phi i32 [ %conv.i.i, %if.end.i.i ], [ 0, %PageHead.exit.i.i ]
  %shl = shl i32 4096, %retval.0.i.i
  ret i32 %shl
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define dso_local ptr @__kasan_slab_alloc(ptr nocapture noundef readonly %cache, ptr noundef %object, i32 noundef %flags, i1 noundef zeroext %init) local_unnamed_addr #0 align 64 {
entry:
  %entries.i.i.i = alloca [64 x i32], align 4
  %and.i = and i32 %flags, 1024
  %tobool.i23.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i23.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @kasan_quarantine_reduce() #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %cmp = icmp eq ptr %object, null
  br i1 %cmp, label %cleanup, label %if.end3, !prof !11

if.end3:                                          ; preds = %if.end
  %0 = load ptr, ptr @__kfence_pool, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %object to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %0 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %cmp.i = icmp ult i32 %sub.ptr.sub.i, 2097152
  %tobool.i = icmp ne ptr %0, null
  %1 = select i1 %cmp.i, i1 %tobool.i, i1 false
  br i1 %1, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end3
  %object_size = getelementptr inbounds %struct.kmem_cache, ptr %cache, i32 0, i32 4
  %2 = load i32, ptr %object_size, align 4
  tail call void @kasan_unpoison(ptr noundef nonnull %object, i32 noundef %2, i1 noundef zeroext %init) #13
  %is_kmalloc1.i = getelementptr inbounds %struct.kmem_cache, ptr %cache, i32 0, i32 23, i32 2
  %3 = load i8, ptr %is_kmalloc1.i, align 4, !range !14
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %if.end.i, label %cleanup

if.end.i:                                         ; preds = %if.end6
  %kasan_info.i.i = getelementptr inbounds %struct.kmem_cache, ptr %cache, i32 0, i32 23
  %4 = load i32, ptr %kasan_info.i.i, align 4
  %tobool.not.i.i = icmp eq i32 %4, 0
  %add.ptr.i.i = getelementptr i8, ptr %object, i32 %4
  %tobool3.not8.i = icmp eq ptr %add.ptr.i.i, null
  %tobool3.not.i = or i1 %tobool.not.i.i, %tobool3.not8.i
  br i1 %tobool3.not.i, label %cleanup, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i
  %5 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %and.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = load ptr, ptr %task.i.i, align 8
  %pid.i.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 68
  %8 = load i32, ptr %pid.i.i, align 8
  store i32 %8, ptr %add.ptr.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %entries.i.i.i) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(256) %entries.i.i.i, i8 -1, i32 256, i1 false) #12, !annotation !9
  %call.i.i.i = call i32 @stack_trace_save(ptr noundef nonnull %entries.i.i.i, i32 noundef 64, i32 noundef 0) #13
  %call2.i.i.i = call i32 @__stack_depot_save(ptr noundef nonnull %entries.i.i.i, i32 noundef %call.i.i.i, i32 noundef %flags, i1 noundef zeroext true) #13
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %entries.i.i.i) #12
  %stack.i.i = getelementptr inbounds %struct.kasan_track, ptr %add.ptr.i.i, i32 0, i32 1
  store i32 %call2.i.i.i, ptr %stack.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then4.i, %if.end.i, %if.end6, %if.end3, %if.end
  ret ptr %object
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kasan_quarantine_reduce() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define dso_local ptr @__kasan_kmalloc(ptr nocapture noundef readonly %cache, ptr noundef %object, i32 noundef %size, i32 noundef %flags) #0 align 64 {
entry:
  %call = tail call fastcc ptr @____kasan_kmalloc(ptr noundef %cache, ptr noundef %object, i32 noundef %size, i32 noundef %flags) #14
  ret ptr %call
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid uwtable(sync)
define internal fastcc ptr @____kasan_kmalloc(ptr nocapture noundef readonly %cache, ptr noundef %object, i32 noundef %size, i32 noundef %flags) unnamed_addr #9 align 64 {
entry:
  %entries.i.i.i = alloca [64 x i32], align 4
  %and.i = and i32 %flags, 1024
  %tobool.i28.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i28.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @kasan_quarantine_reduce() #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %cmp = icmp eq ptr %object, null
  br i1 %cmp, label %cleanup, label %if.end3, !prof !11

if.end3:                                          ; preds = %if.end
  %0 = load ptr, ptr @__kfence_pool, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %object to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %0 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %cmp.i = icmp ult i32 %sub.ptr.sub.i, 2097152
  %tobool.i = icmp ne ptr %0, null
  %1 = select i1 %cmp.i, i1 %tobool.i, i1 false
  br i1 %1, label %cleanup, label %if.end7

if.end7:                                          ; preds = %if.end3
  tail call void @kasan_poison_last_granule(ptr noundef nonnull %object, i32 noundef %size) #13
  %add.ptr = getelementptr i8, ptr %object, i32 %size
  %2 = ptrtoint ptr %add.ptr to i32
  %sub = add i32 %2, -1
  %or = or i32 %sub, 7
  %add = add i32 %or, 1
  %object_size = getelementptr inbounds %struct.kmem_cache, ptr %cache, i32 0, i32 4
  %3 = load i32, ptr %object_size, align 4
  %add.ptr8 = getelementptr i8, ptr %object, i32 %3
  %4 = ptrtoint ptr %add.ptr8 to i32
  %sub9 = add i32 %4, -1
  %or10 = or i32 %sub9, 7
  %5 = inttoptr i32 %add to ptr
  %notlhs = sub i32 0, %2
  %add.neg = and i32 %notlhs, -8
  %add11 = or i32 %add.neg, 1
  %sub12 = add i32 %add11, %or10
  tail call void @kasan_poison(ptr noundef %5, i32 noundef %sub12, i8 noundef zeroext -4, i1 noundef zeroext false) #13
  %kasan_info.i.i = getelementptr inbounds %struct.kmem_cache, ptr %cache, i32 0, i32 23
  %6 = load i32, ptr %kasan_info.i.i, align 4
  %tobool.not.i.i = icmp eq i32 %6, 0
  %add.ptr.i.i = getelementptr i8, ptr %object, i32 %6
  %tobool3.not8.i = icmp eq ptr %add.ptr.i.i, null
  %tobool3.not.i = or i1 %tobool.not.i.i, %tobool3.not8.i
  br i1 %tobool3.not.i, label %cleanup, label %if.then4.i

if.then4.i:                                       ; preds = %if.end7
  %7 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %and.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = load ptr, ptr %task.i.i, align 8
  %pid.i.i = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 68
  %10 = load i32, ptr %pid.i.i, align 8
  store i32 %10, ptr %add.ptr.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %entries.i.i.i) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(256) %entries.i.i.i, i8 -1, i32 256, i1 false) #12, !annotation !9
  %call.i.i.i = call i32 @stack_trace_save(ptr noundef nonnull %entries.i.i.i, i32 noundef 64, i32 noundef 0) #13
  %call2.i.i.i = call i32 @__stack_depot_save(ptr noundef nonnull %entries.i.i.i, i32 noundef %call.i.i.i, i32 noundef %flags, i1 noundef zeroext true) #13
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %entries.i.i.i) #12
  %stack.i.i = getelementptr inbounds %struct.kasan_track, ptr %add.ptr.i.i, i32 0, i32 1
  store i32 %call2.i.i.i, ptr %stack.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then4.i, %if.end7, %if.end3, %if.end
  ret ptr %object
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define dso_local ptr @__kasan_kmalloc_large(ptr noundef %ptr, i32 noundef %size, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %and.i = and i32 %flags, 1024
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @kasan_quarantine_reduce() #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %cmp = icmp eq ptr %ptr, null
  br i1 %cmp, label %cleanup, label %if.end3, !prof !11

if.end3:                                          ; preds = %if.end
  tail call void @kasan_poison_last_granule(ptr noundef nonnull %ptr, i32 noundef %size) #13
  %add.ptr = getelementptr i8, ptr %ptr, i32 %size
  %0 = ptrtoint ptr %add.ptr to i32
  %sub = add i32 %0, -1
  %or = or i32 %sub, 7
  %add = add i32 %or, 1
  %1 = ptrtoint ptr %ptr to i32
  %2 = load ptr, ptr @mem_map, align 4
  %sub4 = add i32 %1, 1073741824
  %shr = lshr i32 %sub4, 12
  %add.ptr7 = getelementptr %struct.page, ptr %2, i32 %shr
  %3 = load volatile i32, ptr %add.ptr7, align 4
  %cmp.i.not.i.i.i = icmp eq i32 %3, -1
  br i1 %cmp.i.not.i.i.i, label %if.then.i.i.i, label %PageHead.exit.i.i, !prof !11

if.then.i.i.i:                                    ; preds = %if.end3
  tail call void @dump_page(ptr noundef %add.ptr7, ptr noundef nonnull @.str) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #12, !srcloc !12
  unreachable

PageHead.exit.i.i:                                ; preds = %if.end3
  %4 = load volatile i32, ptr %add.ptr7, align 4
  %5 = and i32 %4, 65536
  %tobool.not.i.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i.i, label %page_size.exit, label %if.end.i.i

if.end.i.i:                                       ; preds = %PageHead.exit.i.i
  %6 = getelementptr %struct.page, ptr %add.ptr7, i32 1, i32 1
  %compound_order.i.i = getelementptr inbounds %struct.anon.43, ptr %6, i32 0, i32 2
  %7 = load i8, ptr %compound_order.i.i, align 1
  %conv.i.i = zext i8 %7 to i32
  br label %page_size.exit

page_size.exit:                                   ; preds = %if.end.i.i, %PageHead.exit.i.i
  %retval.0.i.i = phi i32 [ %conv.i.i, %if.end.i.i ], [ 0, %PageHead.exit.i.i ]
  %shl.i = shl i32 4096, %retval.0.i.i
  %8 = inttoptr i32 %add to ptr
  %notlhs = sub i32 0, %0
  %add.neg = and i32 %notlhs, -8
  %add9 = add i32 %add.neg, %1
  %sub10 = add i32 %add9, %shl.i
  tail call void @kasan_poison(ptr noundef %8, i32 noundef %sub10, i8 noundef zeroext -2, i1 noundef zeroext false) #13
  br label %cleanup

cleanup:                                          ; preds = %page_size.exit, %if.end
  ret ptr %ptr
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kasan_poison_last_granule(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define dso_local ptr @__kasan_krealloc(ptr noundef %object, i32 noundef %size, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %cmp = icmp eq ptr %object, inttoptr (i32 16 to ptr)
  br i1 %cmp, label %cleanup, label %if.end, !prof !11

if.end:                                           ; preds = %entry
  tail call void @kasan_unpoison(ptr noundef %object, i32 noundef %size, i1 noundef zeroext false) #13
  %0 = load ptr, ptr @mem_map, align 4
  %1 = ptrtoint ptr %object to i32
  %sub.i.i = add i32 %1, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %2 = getelementptr %struct.page, ptr %0, i32 %shr.i.i, i32 1
  %3 = load volatile i32, ptr %2, align 4
  %and.i.i.i = and i32 %3, 1
  %tobool.not.i.i3.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i3.i, label %if.end.i.i.i, label %if.then.i.i4.i, !prof !10

if.then.i.i4.i:                                   ; preds = %if.end
  %sub.i.i.i = add i32 %3, -1
  br label %virt_to_folio.exit.i

if.end.i.i.i:                                     ; preds = %if.end
  %add.ptr.i.i = getelementptr %struct.page, ptr %0, i32 %shr.i.i
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  br label %virt_to_folio.exit.i

virt_to_folio.exit.i:                             ; preds = %if.end.i.i.i, %if.then.i.i4.i
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i4.i ], [ %4, %if.end.i.i.i ]
  %5 = inttoptr i32 %retval.0.i.i.i to ptr
  %6 = getelementptr inbounds %struct.page, ptr %5, i32 0, i32 1
  %7 = load volatile i32, ptr %6, align 4
  %and.i.i.i.i = and i32 %7, 1
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %virt_to_slab.exit, label %if.then.i.i.i, !prof !10

if.then.i.i.i:                                    ; preds = %virt_to_folio.exit.i
  tail call void @dump_page(ptr noundef %5, ptr noundef nonnull @.str.1) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !13
  unreachable

virt_to_slab.exit:                                ; preds = %virt_to_folio.exit.i
  %8 = load volatile i32, ptr %5, align 4
  %9 = and i32 %8, 512
  %tobool.i.not.i = icmp eq i32 %9, 0
  %tobool2.not23 = icmp eq i32 %retval.0.i.i.i, 0
  %tobool2.not = select i1 %tobool.i.not.i, i1 true, i1 %tobool2.not23
  br i1 %tobool2.not, label %if.then11, label %if.else, !prof !11

if.then11:                                        ; preds = %virt_to_slab.exit
  %call12 = tail call ptr @__kasan_kmalloc_large(ptr noundef %object, i32 noundef %size, i32 noundef %flags) #14
  br label %cleanup

if.else:                                          ; preds = %virt_to_slab.exit
  %slab_cache = getelementptr inbounds %struct.slab, ptr %5, i32 0, i32 2
  %10 = load ptr, ptr %slab_cache, align 4
  %call13 = tail call fastcc ptr @____kasan_kmalloc(ptr noundef %10, ptr noundef %object, i32 noundef %size, i32 noundef %flags) #14
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then11, %entry
  %retval.0 = phi ptr [ %call12, %if.then11 ], [ %call13, %if.else ], [ inttoptr (i32 16 to ptr), %entry ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define dso_local zeroext i1 @__kasan_check_byte(ptr noundef %address, i32 noundef %ip) local_unnamed_addr #0 align 64 {
entry:
  %call = tail call zeroext i1 @kasan_byte_accessible(ptr noundef %address) #13
  br i1 %call, label %return, label %if.then

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %address to i32
  %call1 = tail call zeroext i1 @kasan_report(i32 noundef %0, i32 noundef 1, i1 noundef zeroext false, i32 noundef %ip) #13
  br label %return

return:                                           ; preds = %if.then, %entry
  ret i1 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kasan_byte_accessible(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kasan_report(i32 noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kasan_report_invalid_free(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kasan_set_free_info(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kasan_quarantine_put(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fixup_red_left(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

attributes #0 = { nounwind null_pointer_is_valid uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inlinehint nounwind null_pointer_is_valid uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind readonly }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nobuiltin nounwind "no-builtins" }
attributes #14 = { nobuiltin "no-builtins" }

!llvm.named.register.sp = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{!"sp"}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{i32 8, !"branch-target-enforcement", i32 0}
!4 = !{i32 8, !"sign-return-address", i32 0}
!5 = !{i32 8, !"sign-return-address-all", i32 0}
!6 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!9 = !{!"auto-init"}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 2151852829, i64 2151853320, i64 2151852866, i64 2151852922, i64 2151852956, i64 2151852980, i64 2151853021, i64 2151853042, i64 2151853070, i64 2151853104}
!13 = !{i64 2151090104, i64 2151090595, i64 2151090141, i64 2151090197, i64 2151090231, i64 2151090255, i64 2151090296, i64 2151090317, i64 2151090345, i64 2151090379}
!14 = !{i8 0, i8 2}
