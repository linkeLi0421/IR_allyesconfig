; ModuleID = '/llk/IR_all_yes/kernel/locking/percpu-rwsem.c_pt.bc'
source_filename = "../kernel/locking/percpu-rwsem.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+__percpu_init_rwsem\22, \22a\22\09"
module asm "\09.weak\09__crc___percpu_init_rwsem\09\09\09\09"
module asm "\09.long\09__crc___percpu_init_rwsem\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___percpu_init_rwsem:\09\09\09\09\09"
module asm "\09.asciz \09\22__percpu_init_rwsem\22\09\09\09\09\09"
module asm "__kstrtabns___percpu_init_rwsem:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+percpu_free_rwsem\22, \22a\22\09"
module asm "\09.weak\09__crc_percpu_free_rwsem\09\09\09\09"
module asm "\09.long\09__crc_percpu_free_rwsem\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_percpu_free_rwsem:\09\09\09\09\09"
module asm "\09.asciz \09\22percpu_free_rwsem\22\09\09\09\09\09"
module asm "__kstrtabns_percpu_free_rwsem:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__percpu_down_read\22, \22a\22\09"
module asm "\09.weak\09__crc___percpu_down_read\09\09\09\09"
module asm "\09.long\09__crc___percpu_down_read\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___percpu_down_read:\09\09\09\09\09"
module asm "\09.asciz \09\22__percpu_down_read\22\09\09\09\09\09"
module asm "__kstrtabns___percpu_down_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+percpu_down_write\22, \22a\22\09"
module asm "\09.weak\09__crc_percpu_down_write\09\09\09\09"
module asm "\09.long\09__crc_percpu_down_write\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_percpu_down_write:\09\09\09\09\09"
module asm "\09.asciz \09\22percpu_down_write\22\09\09\09\09\09"
module asm "__kstrtabns_percpu_down_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+percpu_up_write\22, \22a\22\09"
module asm "\09.weak\09__crc_percpu_up_write\09\09\09\09"
module asm "\09.long\09__crc_percpu_up_write\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_percpu_up_write:\09\09\09\09\09"
module asm "\09.asciz \09\22percpu_up_write\22\09\09\09\09\09"
module asm "__kstrtabns_percpu_up_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.rcuwait = type { ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.35, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.2 }
%struct.llist_node = type { ptr }
%union.anon.2 = type { i32 }
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
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.7 }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.35 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@__percpu_init_rwsem.__key = internal global %struct.lock_class_key zeroinitializer, align 4
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&sem->waiters\00", [18 x i8] zeroinitializer }, align 32
@__kstrtab___percpu_init_rwsem = external dso_local constant [0 x i8], align 1
@__kstrtabns___percpu_init_rwsem = external dso_local constant [0 x i8], align 1
@__ksymtab___percpu_init_rwsem = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__percpu_init_rwsem to i32), ptr @__kstrtab___percpu_init_rwsem, ptr @__kstrtabns___percpu_init_rwsem }, section "___ksymtab_gpl+__percpu_init_rwsem", align 4
@__kstrtab_percpu_free_rwsem = external dso_local constant [0 x i8], align 1
@__kstrtabns_percpu_free_rwsem = external dso_local constant [0 x i8], align 1
@__ksymtab_percpu_free_rwsem = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @percpu_free_rwsem to i32), ptr @__kstrtab_percpu_free_rwsem, ptr @__kstrtabns_percpu_free_rwsem }, section "___ksymtab_gpl+percpu_free_rwsem", align 4
@__kstrtab___percpu_down_read = external dso_local constant [0 x i8], align 1
@__kstrtabns___percpu_down_read = external dso_local constant [0 x i8], align 1
@__ksymtab___percpu_down_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__percpu_down_read to i32), ptr @__kstrtab___percpu_down_read, ptr @__kstrtabns___percpu_down_read }, section "___ksymtab_gpl+__percpu_down_read", align 4
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"kernel/locking/percpu-rwsem.c\00", [34 x i8] zeroinitializer }, align 32
@__kstrtab_percpu_down_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_percpu_down_write = external dso_local constant [0 x i8], align 1
@__ksymtab_percpu_down_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @percpu_down_write to i32), ptr @__kstrtab_percpu_down_write, ptr @__kstrtabns_percpu_down_write }, section "___ksymtab_gpl+percpu_down_write", align 4
@__kstrtab_percpu_up_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_percpu_up_write = external dso_local constant [0 x i8], align 1
@__ksymtab_percpu_up_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @percpu_up_write to i32), ptr @__kstrtab_percpu_up_write, ptr @__kstrtabns_percpu_up_write }, section "___ksymtab_gpl+percpu_up_write", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 21, i32 2 }
@___asan_gen_.7 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.8 = private constant [33 x i8] c"../kernel/locking/percpu-rwsem.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 216, i32 2 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @__ksymtab___percpu_down_read, ptr @__ksymtab___percpu_init_rwsem, ptr @__ksymtab_percpu_down_write, ptr @__ksymtab_percpu_free_rwsem, ptr @__ksymtab_percpu_up_write, ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__percpu_init_rwsem(ptr noundef %sem, ptr noundef %name, ptr noundef %key) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call noalias ptr @__alloc_percpu(i32 noundef 4, i32 noundef 4) #11
  %read_count = getelementptr inbounds %struct.percpu_rw_semaphore, ptr %sem, i32 0, i32 1
  %0 = ptrtoint ptr %read_count to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %read_count, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %return, label %if.end, !prof !34

if.end:                                           ; preds = %entry
  tail call void @rcu_sync_init(ptr noundef %sem) #9
  %writer = getelementptr inbounds %struct.percpu_rw_semaphore, ptr %sem, i32 0, i32 2
  %1 = ptrtoint ptr %writer to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %writer, align 4
  %waiters = getelementptr inbounds %struct.percpu_rw_semaphore, ptr %sem, i32 0, i32 3
  tail call void @__init_waitqueue_head(ptr noundef %waiters, ptr noundef nonnull @.str, ptr noundef nonnull @__percpu_init_rwsem.__key) #9
  %block = getelementptr inbounds %struct.percpu_rw_semaphore, ptr %sem, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %block, i32 noundef 4) #9
  %2 = ptrtoint ptr %block to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 0, ptr %block, align 4
  tail call void @debug_check_no_locks_freed(ptr noundef %sem, i32 noundef 160) #9
  %dep_map = getelementptr inbounds %struct.percpu_rw_semaphore, ptr %sem, i32 0, i32 5
  tail call void @lockdep_init_map_type(ptr noundef %dep_map, ptr noundef %name, ptr noundef %key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  br label %return

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_sync_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_check_no_locks_freed(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @percpu_free_rwsem(ptr noundef %sem) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %read_count = getelementptr inbounds %struct.percpu_rw_semaphore, ptr %sem, i32 0, i32 1
  %0 = ptrtoint ptr %read_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %read_count, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call void @rcu_sync_dtor(ptr noundef %sem) #9
  %2 = ptrtoint ptr %read_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_count, align 4
  tail call void @free_percpu(ptr noundef %3) #9
  %4 = ptrtoint ptr %read_count to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %read_count, align 4
  br label %return

return:                                           ; preds = %if.end, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_sync_dtor(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @__percpu_down_read(ptr noundef %sem, i1 noundef zeroext %try) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc zeroext i1 @__percpu_down_read_trylock(ptr noundef %sem)
  %brmerge = or i1 %call, %try
  br i1 %brmerge, label %return, label %do.body

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !35
  %0 = tail call i32 @llvm.read_register.i32(metadata !24) #9
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %sub.i = add i32 %3, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i, align 4
  tail call fastcc void @percpu_rwsem_wait(ptr noundef %sem, i1 noundef zeroext true)
  %4 = tail call i32 @llvm.read_register.i32(metadata !24) #9
  %and.i.i.i6 = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i6 to ptr
  %preempt_count.i.i7 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i7, align 4
  %add.i = add i32 %7, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i7, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !36
  br label %return

return:                                           ; preds = %do.body, %entry
  %retval.0 = phi i1 [ true, %do.body ], [ %call, %entry ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @__percpu_down_read_trylock(ptr noundef %sem) unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !37
  %read_count = getelementptr inbounds %struct.percpu_rw_semaphore, ptr %sem, i32 0, i32 1
  %1 = ptrtoint ptr %read_count to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %read_count, align 4
  %3 = ptrtoint ptr %2 to i32
  %4 = tail call i32 @llvm.read_register.i32(metadata !24) #9
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %add = add i32 %9, %3
  %10 = inttoptr i32 %add to ptr
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %add13 = add i32 %12, 1
  store i32 %add13, ptr %10, align 4
  %13 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !38
  %and.i.i = and i32 %13, 128
  %tobool.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not, label %if.then, label %do.end28, !prof !34

if.then:                                          ; preds = %entry
  tail call void @warn_bogus_irq_restore() #9
  br label %do.end28

do.end28:                                         ; preds = %if.then, %entry
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #9, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !40
  %block = getelementptr inbounds %struct.percpu_rw_semaphore, ptr %sem, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %block, i32 noundef 4) #9
  %14 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %block, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !41
  %tobool42.not = icmp eq i32 %15, 0
  br i1 %tobool42.not, label %return, label %do.body54, !prof !42

do.body54:                                        ; preds = %do.end28
  %16 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !37
  %17 = ptrtoint ptr %read_count to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read_count, align 4
  %19 = ptrtoint ptr %18 to i32
  %20 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cpu, align 4
  %arrayidx80 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %21
  %22 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx80, align 4
  %add81 = add i32 %23, %19
  %24 = inttoptr i32 %add81 to ptr
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  %add82 = add i32 %26, -1
  store i32 %add82, ptr %24, align 4
  %27 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !38
  %and.i.i116 = and i32 %27, 128
  %tobool93.not = icmp eq i32 %and.i.i116, 0
  br i1 %tobool93.not, label %if.then102, label %do.end105, !prof !34

if.then102:                                       ; preds = %do.body54
  tail call void @warn_bogus_irq_restore() #9
  br label %do.end105

do.end105:                                        ; preds = %if.then102, %do.body54
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %16) #9, !srcloc !39
  %writer = getelementptr inbounds %struct.percpu_rw_semaphore, ptr %sem, i32 0, i32 2
  %call112 = tail call i32 @rcuwait_wake_up(ptr noundef %writer) #9
  br label %return

return:                                           ; preds = %do.end105, %do.end28
  ret i1 %tobool42.not
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @percpu_rwsem_wait(ptr noundef %sem, i1 noundef zeroext %reader) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wq_entry) #9
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wq_entry, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wq_entry, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wq_entry, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wq_entry, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %wq_entry to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wq_entry, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !24) #9
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %0, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @percpu_rwsem_wake_function, ptr %1, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %2, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %2, ptr %3, align 4
  %waiters = getelementptr inbounds %struct.percpu_rw_semaphore, ptr %sem, i32 0, i32 3
  call void @_raw_spin_lock_irq(ptr noundef %waiters) #9
  br i1 %reader, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  %13 = call i32 @llvm.read_register.i32(metadata !24) #9
  %and.i.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %16, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !43
  %call.i = call fastcc zeroext i1 @__percpu_down_read_trylock(ptr noundef %sem) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !44
  %17 = call i32 @llvm.read_register.i32(metadata !24) #9
  %and.i.i.i8.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i8.i to ptr
  %preempt_count.i.i9.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i9.i, align 4
  %sub.i.i = add i32 %20, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i9.i, align 4
  br i1 %call.i, label %__here143.critedge, label %if.then

if.end.i:                                         ; preds = %entry
  %block.i.i = getelementptr inbounds %struct.percpu_rw_semaphore, ptr %sem, i32 0, i32 4
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %block.i.i, i32 noundef 4) #9
  %21 = ptrtoint ptr %block.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %block.i.i, align 4
  %tobool.not.i.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i.i, label %__percpu_rwsem_trylock.exit, label %if.then

__percpu_rwsem_trylock.exit:                      ; preds = %if.end.i
  %call.i.i4.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %block.i.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !45
  call void @llvm.prefetch.p0(ptr %block.i.i, i32 1, i32 3, i32 1) #9
  %23 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 1, ptr %block.i.i) #9, !srcloc !46
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %23, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !47
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i.i, label %__here143.critedge, label %if.then

if.then:                                          ; preds = %__percpu_rwsem_trylock.exit, %if.end.i, %if.then.i
  %or = phi i32 [ 1, %if.end.i ], [ 9, %if.then.i ], [ 1, %__percpu_rwsem_trylock.exit ]
  %24 = ptrtoint ptr %wq_entry to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %wq_entry, align 4
  %or9 = or i32 %25, %or
  store i32 %or9, ptr %wq_entry, align 4
  %head.i = getelementptr inbounds %struct.percpu_rw_semaphore, ptr %sem, i32 0, i32 3, i32 1
  %prev.i.i = getelementptr inbounds %struct.percpu_rw_semaphore, ptr %sem, i32 0, i32 3, i32 1, i32 1
  %26 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %2, ptr noundef %27, ptr noundef %head.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__add_wait_queue_entry_tail.exit

if.end.i.i.i:                                     ; preds = %if.then
  %28 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %2, ptr %prev.i.i, align 4
  %29 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %head.i, ptr %2, align 4
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %3, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %2, ptr %27, align 4
  br label %__add_wait_queue_entry_tail.exit

__add_wait_queue_entry_tail.exit:                 ; preds = %if.end.i.i.i, %if.then
  call void @_raw_spin_unlock_irq(ptr noundef %waiters) #9
  %32 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %task, align 8
  %task_state_change174 = getelementptr inbounds %struct.task_struct, ptr %33, i32 0, i32 212
  %34 = ptrtoint ptr %task_state_change174 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 ptrtoint (ptr blockaddress(@percpu_rwsem_wait, %__here) to i32), ptr %task_state_change174, align 4
  %35 = load ptr, ptr %task, align 8
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile i32 2, ptr %35, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !48
  %37 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile ptr, ptr %0, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !49
  %tobool89.not175 = icmp eq ptr %38, null
  br i1 %tobool89.not175, label %__here143, label %if.end91

__here:                                           ; preds = %if.end91
  %39 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %40, i32 0, i32 212
  %41 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 ptrtoint (ptr blockaddress(@percpu_rwsem_wait, %__here) to i32), ptr %task_state_change, align 4
  %42 = load ptr, ptr %task, align 8
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile i32 2, ptr %42, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !48
  %44 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %0, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !49
  %tobool89.not = icmp eq ptr %45, null
  br i1 %tobool89.not, label %__here143, label %if.end91

if.end91:                                         ; preds = %__here, %__add_wait_queue_entry_tail.exit
  call void @schedule() #9
  br label %__here

__here143.critedge:                               ; preds = %__percpu_rwsem_trylock.exit, %if.then.i
  call void @_raw_spin_unlock_irq(ptr noundef %waiters) #9
  br label %__here143

__here143:                                        ; preds = %__here143.critedge, %__here, %__add_wait_queue_entry_tail.exit
  %46 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %task, align 8
  %task_state_change147 = getelementptr inbounds %struct.task_struct, ptr %47, i32 0, i32 212
  %48 = ptrtoint ptr %task_state_change147 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 ptrtoint (ptr blockaddress(@percpu_rwsem_wait, %__here143) to i32), ptr %task_state_change147, align 4
  %49 = load ptr, ptr %task, align 8
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile i32 0, ptr %49, align 128
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wq_entry) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @percpu_down_write(ptr noundef %sem) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 216) #9
  %dep_map = getelementptr inbounds %struct.percpu_rw_semaphore, ptr %sem, i32 0, i32 5
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %1 = ptrtoint ptr %0 to i32
  tail call void @lock_acquire(ptr noundef %dep_map, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %1) #9
  tail call void @rcu_sync_enter(ptr noundef %sem) #9
  %block.i = getelementptr inbounds %struct.percpu_rw_semaphore, ptr %sem, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %block.i, i32 noundef 4) #9
  %2 = ptrtoint ptr %block.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %block.i, align 4
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %__percpu_down_write_trylock.exit, label %if.then

__percpu_down_write_trylock.exit:                 ; preds = %entry
  %call.i.i4.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %block.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !45
  tail call void @llvm.prefetch.p0(ptr %block.i, i32 1, i32 3, i32 1) #9
  %4 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 1, ptr %block.i) #9, !srcloc !46
  %asmresult.i.i.i = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !47
  %cmp.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i, label %if.end, label %if.then

if.then:                                          ; preds = %__percpu_down_write_trylock.exit, %entry
  tail call fastcc void @percpu_rwsem_wait(ptr noundef %sem, i1 noundef zeroext false)
  br label %if.end

if.end:                                           ; preds = %if.then, %__percpu_down_write_trylock.exit
  %writer = getelementptr inbounds %struct.percpu_rw_semaphore, ptr %sem, i32 0, i32 2
  %5 = tail call i32 @llvm.read_register.i32(metadata !24) #9
  %and.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !50
  %9 = ptrtoint ptr %writer to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %8, ptr %writer, align 4
  %read_count.i = getelementptr inbounds %struct.percpu_rw_semaphore, ptr %sem, i32 0, i32 1
  br label %__here

__here:                                           ; preds = %if.end69, %if.end
  %10 = tail call i32 @llvm.read_register.i32(metadata !24) #9
  %and.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 212
  %14 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 ptrtoint (ptr blockaddress(@percpu_down_write, %__here) to i32), ptr %task_state_change, align 4
  %15 = load ptr, ptr %task, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile i32 2, ptr %15, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !51
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %17 = load i32, ptr @nr_cpu_ids, align 4
  %call17.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #12
  %cmp18.i = icmp ult i32 %call17.i, %17
  br i1 %cmp18.i, label %do.body1.lr.ph.i, label %for.end

do.body1.lr.ph.i:                                 ; preds = %__here
  %18 = ptrtoint ptr %read_count.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read_count.i, align 4
  %20 = ptrtoint ptr %19 to i32
  br label %do.body1.i

do.body1.i:                                       ; preds = %do.body1.i, %do.body1.lr.ph.i
  %call20.i = phi i32 [ %call17.i, %do.body1.lr.ph.i ], [ %call.i, %do.body1.i ]
  %__sum.019.i = phi i32 [ 0, %do.body1.lr.ph.i ], [ %add5.i, %do.body1.i ]
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call20.i
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %22, %20
  %23 = inttoptr i32 %add.i to ptr
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %add5.i = add i32 %25, %__sum.019.i
  %call.i = tail call i32 @cpumask_next(i32 noundef %call20.i, ptr noundef nonnull @__cpu_possible_mask) #12
  %cmp.i86 = icmp ult i32 %call.i, %17
  br i1 %cmp.i86, label %do.body1.i, label %for.end.i

for.end.i:                                        ; preds = %do.body1.i
  %phi.cmp.i = icmp eq i32 %add5.i, 0
  br i1 %phi.cmp.i, label %for.end, label %if.end69

if.end69:                                         ; preds = %for.end.i
  tail call void @schedule() #9
  br label %__here

for.end:                                          ; preds = %for.end.i, %__here
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !52
  tail call fastcc void @finish_rcuwait(ptr noundef %writer)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_sync_enter(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: inlinehint nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @finish_rcuwait(ptr noundef %w) #5 align 64 {
entry:
  %0 = ptrtoint ptr %w to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr null, ptr %w, align 4
  br label %__here

__here:                                           ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !24) #9
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task72 = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task72 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task72, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 212
  %5 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 ptrtoint (ptr blockaddress(@finish_rcuwait, %__here) to i32), ptr %task_state_change, align 4
  %6 = load ptr, ptr %task72, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 0, ptr %6, align 128
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @percpu_up_write(ptr noundef %sem) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %dep_map = getelementptr inbounds %struct.percpu_rw_semaphore, ptr %sem, i32 0, i32 5
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %1 = ptrtoint ptr %0 to i32
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef %1) #9
  %block = getelementptr inbounds %struct.percpu_rw_semaphore, ptr %sem, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %block, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !53
  %2 = ptrtoint ptr %block to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 0, ptr %block, align 4
  %waiters = getelementptr inbounds %struct.percpu_rw_semaphore, ptr %sem, i32 0, i32 3
  tail call void @__wake_up(ptr noundef %waiters, i32 noundef 3, i32 noundef 1, ptr noundef %sem) #9
  tail call void @rcu_sync_exit(ptr noundef %sem) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_sync_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcuwait_wake_up(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @percpu_rwsem_wake_function(ptr noundef %wq_entry, i32 noundef %mode, i32 noundef %wake_flags, ptr noundef %key) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wq_entry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %wq_entry, align 4
  %and = and i32 %1, 8
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %2 = tail call i32 @llvm.read_register.i32(metadata !24) #9
  %and.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %5, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !43
  %call.i = tail call fastcc zeroext i1 @__percpu_down_read_trylock(ptr noundef %key) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !44
  %6 = tail call i32 @llvm.read_register.i32(metadata !24) #9
  %and.i.i.i8.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i8.i to ptr
  %preempt_count.i.i9.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i9.i, align 4
  %sub.i.i = add i32 %9, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i9.i, align 4
  br i1 %call.i, label %if.end, label %cleanup

if.end.i:                                         ; preds = %entry
  %block.i.i = getelementptr inbounds %struct.percpu_rw_semaphore, ptr %key, i32 0, i32 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %block.i.i, i32 noundef 4) #9
  %10 = ptrtoint ptr %block.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %block.i.i, align 4
  %tobool.not.i.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i.i, label %__percpu_rwsem_trylock.exit, label %cleanup

__percpu_rwsem_trylock.exit:                      ; preds = %if.end.i
  %call.i.i4.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %block.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !45
  tail call void @llvm.prefetch.p0(ptr %block.i.i, i32 1, i32 3, i32 1) #9
  %12 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 1, ptr %block.i.i) #9, !srcloc !46
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %12, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !47
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.end, label %cleanup

if.end:                                           ; preds = %__percpu_rwsem_trylock.exit, %if.then.i
  %private = getelementptr inbounds %struct.wait_queue_entry, ptr %wq_entry, i32 0, i32 1
  %13 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %private, align 4
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #9
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #9, !srcloc !54
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end15.sink.split.i.i.i.i, label %if.else.i.i.i.i, !prof !34

if.else.i.i.i.i:                                  ; preds = %if.end
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %16 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  %.not.i.i.i.i = icmp sgt i32 %16, -1
  br i1 %.not.i.i.i.i, label %get_task_struct.exit, label %if.end15.sink.split.i.i.i.i, !prof !42

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i, %if.end
  %.sink.i.i.i.i = phi i32 [ 2, %if.end ], [ 1, %if.else.i.i.i.i ]
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef %.sink.i.i.i.i) #9
  br label %get_task_struct.exit

get_task_struct.exit:                             ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i
  %entry3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wq_entry, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %entry3) #9
  br i1 %call.i.i, label %if.end.i.i32, label %list_del_init.exit

if.end.i.i32:                                     ; preds = %get_task_struct.exit
  %prev.i.i = getelementptr inbounds %struct.wait_queue_entry, ptr %wq_entry, i32 0, i32 3, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i, align 4
  %19 = ptrtoint ptr %entry3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %entry3, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i32, %get_task_struct.exit
  %23 = ptrtoint ptr %entry3 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %entry3, ptr %entry3, align 4
  %prev.i3.i = getelementptr inbounds %struct.wait_queue_entry, ptr %wq_entry, i32 0, i32 3, i32 1
  %24 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %entry3, ptr %prev.i3.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !55
  %25 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr null, ptr %private, align 4
  %call23 = tail call i32 @wake_up_process(ptr noundef %14) #9
  %call.i.i.i.i.i.i34 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !56
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #9
  %26 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #9, !srcloc !57
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %26, 0
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i36, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %list_del_init.exit
  %.not.i.i.i.i35 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i35, label %put_task_struct.exit, label %if.then10.i.i.i.i, !prof !42

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #9
  br label %put_task_struct.exit

if.then.i36:                                      ; preds = %list_del_init.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !58
  tail call void @__put_task_struct(ptr noundef %14) #9
  br label %put_task_struct.exit

put_task_struct.exit:                             ; preds = %if.then.i36, %if.then10.i.i.i.i, %if.end5.i.i.i.i
  %and.lobit = lshr exact i32 %and, 3
  %27 = xor i32 %and.lobit, 1
  br label %cleanup

cleanup:                                          ; preds = %put_task_struct.exit, %__percpu_rwsem_trylock.exit, %if.end.i, %if.then.i
  %retval.0 = phi i32 [ %27, %put_task_struct.exit ], [ 1, %__percpu_rwsem_trylock.exit ], [ 1, %if.then.i ], [ 1, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_task_struct(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { inlinehint nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23}
!llvm.named.register.sp = !{!24}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{ptr @__percpu_init_rwsem.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../kernel/locking/percpu-rwsem.c", i32 21, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__ksymtab___percpu_init_rwsem, !4, !"__ksymtab___percpu_init_rwsem", i1 false, i1 false}
!4 = !{!"../kernel/locking/percpu-rwsem.c", i32 29, i32 1}
!5 = !{ptr @__ksymtab_percpu_free_rwsem, !6, !"__ksymtab_percpu_free_rwsem", i1 false, i1 false}
!6 = !{!"../kernel/locking/percpu-rwsem.c", i32 44, i32 1}
!7 = !{ptr @__ksymtab___percpu_down_read, !8, !"__ksymtab___percpu_down_read", i1 false, i1 false}
!8 = !{!"../kernel/locking/percpu-rwsem.c", i32 179, i32 1}
!9 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../kernel/locking/percpu-rwsem.c", i32 216, i32 2}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../kernel/locking/percpu-rwsem.c", i32 238, i32 2}
!13 = !{ptr @__ksymtab_percpu_down_write, !14, !"__ksymtab_percpu_down_write", i1 false, i1 false}
!14 = !{!"../kernel/locking/percpu-rwsem.c", i32 240, i32 1}
!15 = !{ptr @__ksymtab_percpu_up_write, !16, !"__ksymtab_percpu_up_write", i1 false, i1 false}
!16 = !{!"../kernel/locking/percpu-rwsem.c", i32 270, i32 1}
!17 = distinct !{null, !18, !"__already_done", i1 false, i1 false}
!18 = !{!"../kernel/locking/percpu-rwsem.c", i32 157, i32 3}
!19 = distinct !{null, !20, !"__already_done", i1 false, i1 false}
!20 = !{!"../kernel/locking/percpu-rwsem.c", i32 162, i32 2}
!21 = distinct !{null, !22, !"__already_done", i1 false, i1 false}
!22 = !{!"../include/linux/rcuwait.h", i32 53, i32 2}
!23 = distinct !{null, !22, !"<string literal>", i1 false, i1 false}
!24 = !{!"sp"}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 1, !"min_enum_size", i32 4}
!27 = !{i32 8, !"branch-target-enforcement", i32 0}
!28 = !{i32 8, !"sign-return-address", i32 0}
!29 = !{i32 8, !"sign-return-address-all", i32 0}
!30 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!34 = !{!"branch_weights", i32 1, i32 2000}
!35 = !{i64 2152032653}
!36 = !{i64 2152032846}
!37 = !{i64 577042, i64 577103}
!38 = !{i64 579774}
!39 = !{i64 580059}
!40 = !{i64 2152002723}
!41 = !{i64 2148203410}
!42 = !{!"branch_weights", i32 2000, i32 1}
!43 = !{i64 2152012478}
!44 = !{i64 2152012575}
!45 = !{i64 2148386379}
!46 = !{i64 630483, i64 630500, i64 630524, i64 630550, i64 630568}
!47 = !{i64 2148386749}
!48 = !{i64 2152022130}
!49 = !{i64 2152028101}
!50 = !{i64 2151932851}
!51 = !{i64 2152043037}
!52 = !{i64 2152037378}
!53 = !{i64 2148205682}
!54 = !{i64 2148125245, i64 2148125277, i64 2148125306, i64 2148125340, i64 2148125371, i64 2148125394}
!55 = !{i64 2152014787}
!56 = !{i64 2148213246}
!57 = !{i64 2148127710, i64 2148127742, i64 2148127771, i64 2148127805, i64 2148127836, i64 2148127859}
!58 = !{i64 2149642514}
