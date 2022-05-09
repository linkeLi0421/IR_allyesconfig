; ModuleID = '/llk/IR_all_yes/kernel/sched/swait.c_pt.bc'
source_filename = "../kernel/sched/swait.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+__init_swait_queue_head\22, \22a\22\09"
module asm "\09.weak\09__crc___init_swait_queue_head\09\09\09\09"
module asm "\09.long\09__crc___init_swait_queue_head\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___init_swait_queue_head:\09\09\09\09\09"
module asm "\09.asciz \09\22__init_swait_queue_head\22\09\09\09\09\09"
module asm "__kstrtabns___init_swait_queue_head:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+swake_up_locked\22, \22a\22\09"
module asm "\09.weak\09__crc_swake_up_locked\09\09\09\09"
module asm "\09.long\09__crc_swake_up_locked\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_swake_up_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22swake_up_locked\22\09\09\09\09\09"
module asm "__kstrtabns_swake_up_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+swake_up_one\22, \22a\22\09"
module asm "\09.weak\09__crc_swake_up_one\09\09\09\09"
module asm "\09.long\09__crc_swake_up_one\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_swake_up_one:\09\09\09\09\09"
module asm "\09.asciz \09\22swake_up_one\22\09\09\09\09\09"
module asm "__kstrtabns_swake_up_one:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+swake_up_all\22, \22a\22\09"
module asm "\09.weak\09__crc_swake_up_all\09\09\09\09"
module asm "\09.long\09__crc_swake_up_all\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_swake_up_all:\09\09\09\09\09"
module asm "\09.asciz \09\22swake_up_all\22\09\09\09\09\09"
module asm "__kstrtabns_swake_up_all:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+prepare_to_swait_exclusive\22, \22a\22\09"
module asm "\09.weak\09__crc_prepare_to_swait_exclusive\09\09\09\09"
module asm "\09.long\09__crc_prepare_to_swait_exclusive\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_prepare_to_swait_exclusive:\09\09\09\09\09"
module asm "\09.asciz \09\22prepare_to_swait_exclusive\22\09\09\09\09\09"
module asm "__kstrtabns_prepare_to_swait_exclusive:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+prepare_to_swait_event\22, \22a\22\09"
module asm "\09.weak\09__crc_prepare_to_swait_event\09\09\09\09"
module asm "\09.long\09__crc_prepare_to_swait_event\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_prepare_to_swait_event:\09\09\09\09\09"
module asm "\09.asciz \09\22prepare_to_swait_event\22\09\09\09\09\09"
module asm "__kstrtabns_prepare_to_swait_event:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+finish_swait\22, \22a\22\09"
module asm "\09.weak\09__crc_finish_swait\09\09\09\09"
module asm "\09.long\09__crc_finish_swait\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_finish_swait:\09\09\09\09\09"
module asm "\09.asciz \09\22finish_swait\22\09\09\09\09\09"
module asm "__kstrtabns_finish_swait:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.swait_queue = type { ptr, %struct.list_head }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.132, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.1 }
%struct.llist_node = type { ptr }
%union.anon.1 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.97 }
%union.anon.97 = type { %struct.anon.98 }
%struct.anon.98 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
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
%union.anon.132 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@__init_swait_queue_head.__key = internal global %struct.lock_class_key zeroinitializer, align 4
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&q->lock\00", [23 x i8] zeroinitializer }, align 32
@__kstrtab___init_swait_queue_head = external dso_local constant [0 x i8], align 1
@__kstrtabns___init_swait_queue_head = external dso_local constant [0 x i8], align 1
@__ksymtab___init_swait_queue_head = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__init_swait_queue_head to i32), ptr @__kstrtab___init_swait_queue_head, ptr @__kstrtabns___init_swait_queue_head }, section "___ksymtab+__init_swait_queue_head", align 4
@__kstrtab_swake_up_locked = external dso_local constant [0 x i8], align 1
@__kstrtabns_swake_up_locked = external dso_local constant [0 x i8], align 1
@__ksymtab_swake_up_locked = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @swake_up_locked to i32), ptr @__kstrtab_swake_up_locked, ptr @__kstrtabns_swake_up_locked }, section "___ksymtab+swake_up_locked", align 4
@__kstrtab_swake_up_one = external dso_local constant [0 x i8], align 1
@__kstrtabns_swake_up_one = external dso_local constant [0 x i8], align 1
@__ksymtab_swake_up_one = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @swake_up_one to i32), ptr @__kstrtab_swake_up_one, ptr @__kstrtabns_swake_up_one }, section "___ksymtab+swake_up_one", align 4
@__kstrtab_swake_up_all = external dso_local constant [0 x i8], align 1
@__kstrtabns_swake_up_all = external dso_local constant [0 x i8], align 1
@__ksymtab_swake_up_all = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @swake_up_all to i32), ptr @__kstrtab_swake_up_all, ptr @__kstrtabns_swake_up_all }, section "___ksymtab+swake_up_all", align 4
@prepare_to_swait_exclusive.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"kernel/sched/swait.c\00", [43 x i8] zeroinitializer }, align 32
@__kstrtab_prepare_to_swait_exclusive = external dso_local constant [0 x i8], align 1
@__kstrtabns_prepare_to_swait_exclusive = external dso_local constant [0 x i8], align 1
@__ksymtab_prepare_to_swait_exclusive = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @prepare_to_swait_exclusive to i32), ptr @__kstrtab_prepare_to_swait_exclusive, ptr @__kstrtabns_prepare_to_swait_exclusive }, section "___ksymtab+prepare_to_swait_exclusive", align 4
@prepare_to_swait_event.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_prepare_to_swait_event = external dso_local constant [0 x i8], align 1
@__kstrtabns_prepare_to_swait_event = external dso_local constant [0 x i8], align 1
@__ksymtab_prepare_to_swait_event = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @prepare_to_swait_event to i32), ptr @__kstrtab_prepare_to_swait_event, ptr @__kstrtabns_prepare_to_swait_event }, section "___ksymtab+prepare_to_swait_event", align 4
@__kstrtab_finish_swait = external dso_local constant [0 x i8], align 1
@__kstrtabns_finish_swait = external dso_local constant [0 x i8], align 1
@__ksymtab_finish_swait = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @finish_swait to i32), ptr @__kstrtab_finish_swait, ptr @__kstrtabns_finish_swait }, section "___ksymtab+finish_swait", align 4
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 10, i32 2 }
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private constant [24 x i8] c"../kernel/sched/swait.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 98, i32 2 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @__ksymtab___init_swait_queue_head, ptr @__ksymtab_finish_swait, ptr @__ksymtab_prepare_to_swait_event, ptr @__ksymtab_prepare_to_swait_exclusive, ptr @__ksymtab_swake_up_all, ptr @__ksymtab_swake_up_locked, ptr @__ksymtab_swake_up_one, ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__init_swait_queue_head(ptr noundef %q, ptr noundef %name, ptr noundef %key) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__raw_spin_lock_init(ptr noundef %q, ptr noundef nonnull @.str, ptr noundef nonnull @__init_swait_queue_head.__key, i16 noundef signext 2) #4
  %dep_map = getelementptr inbounds %struct.raw_spinlock, ptr %q, i32 0, i32 4
  %wait_type_inner = getelementptr inbounds %struct.raw_spinlock, ptr %q, i32 0, i32 4, i32 4
  %0 = ptrtoint ptr %wait_type_inner to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %wait_type_inner, align 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map, ptr noundef %name, ptr noundef %key, i32 noundef 0, i8 noundef zeroext %1, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  %task_list = getelementptr inbounds %struct.swait_queue_head, ptr %q, i32 0, i32 1
  %2 = ptrtoint ptr %task_list to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %task_list, ptr %task_list, align 4
  %prev.i = getelementptr inbounds %struct.swait_queue_head, ptr %q, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %task_list, ptr %prev.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @swake_up_locked(ptr noundef %q) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %task_list = getelementptr inbounds %struct.swait_queue_head, ptr %q, i32 0, i32 1
  %0 = ptrtoint ptr %task_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %task_list, align 4
  %cmp.i.not = icmp eq ptr %1, %task_list
  br i1 %cmp.i.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %1, i32 -4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %call2 = tail call i32 @wake_up_process(ptr noundef %3) #4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #4
  br i1 %call.i.i, label %if.end.i.i, label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %1, ptr %1, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %1, ptr %prev.i3.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %list_del_init.exit, %entry
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @swake_up_all_locked(ptr noundef %q) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %task_list = getelementptr inbounds %struct.swait_queue_head, ptr %q, i32 0, i32 1
  %0 = ptrtoint ptr %task_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %task_list, align 4
  %cmp.i.not2 = icmp eq ptr %1, %task_list
  br i1 %cmp.i.not2, label %while.end, label %while.body

while.body:                                       ; preds = %swake_up_locked.exit, %entry
  %2 = ptrtoint ptr %task_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %task_list, align 4
  %cmp.i.not.i = icmp eq ptr %3, %task_list
  br i1 %cmp.i.not.i, label %swake_up_locked.exit, label %if.end.i

if.end.i:                                         ; preds = %while.body
  %add.ptr.i = getelementptr i8, ptr %3, i32 -4
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 4
  %call2.i = tail call i32 @wake_up_process(ptr noundef %5) #4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %3) #4
  br i1 %call.i.i.i, label %if.end.i.i.i, label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i.i, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.end.i
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %3, ptr %3, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %3, ptr %prev.i3.i.i, align 4
  br label %swake_up_locked.exit

swake_up_locked.exit:                             ; preds = %list_del_init.exit.i, %while.body
  %14 = ptrtoint ptr %task_list to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %task_list, align 4
  %cmp.i.not = icmp eq ptr %15, %task_list
  br i1 %cmp.i.not, label %while.end, label %while.body

while.end:                                        ; preds = %swake_up_locked.exit, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @swake_up_one(ptr noundef %q) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %q) #4
  %task_list.i = getelementptr inbounds %struct.swait_queue_head, ptr %q, i32 0, i32 1
  %0 = ptrtoint ptr %task_list.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %task_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %1, %task_list.i
  br i1 %cmp.i.not.i, label %swake_up_locked.exit, label %if.end.i

if.end.i:                                         ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %1, i32 -4
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  %call2.i = tail call i32 @wake_up_process(ptr noundef %3) #4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #4
  br i1 %call.i.i.i, label %if.end.i.i.i, label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i.i, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.end.i
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %1, ptr %1, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %1, ptr %prev.i3.i.i, align 4
  br label %swake_up_locked.exit

swake_up_locked.exit:                             ; preds = %list_del_init.exit.i, %entry
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %q, i32 noundef %call) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @swake_up_all(ptr noundef %q) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %tmp = alloca %struct.list_head, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp) #4
  %0 = getelementptr inbounds %struct.list_head, ptr %tmp, i32 0, i32 1
  %1 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %tmp, ptr %tmp, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %tmp, ptr %0, align 4
  call void @_raw_spin_lock_irq(ptr noundef %q) #4
  %task_list = getelementptr inbounds %struct.swait_queue_head, ptr %q, i32 0, i32 1
  %3 = ptrtoint ptr %task_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %task_list, align 4
  %cmp.i.not.i = icmp eq ptr %4, %task_list
  br i1 %cmp.i.not.i, label %list_splice_init.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  %5 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tmp, align 4
  %prev2.i.i = getelementptr inbounds %struct.swait_queue_head, ptr %q, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %9 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %tmp, ptr %prev3.i.i, align 4
  store ptr %4, ptr %tmp, align 4
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %6, ptr %8, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev6.i.i, align 4
  %12 = ptrtoint ptr %task_list to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %task_list, ptr %task_list, align 4
  store ptr %task_list, ptr %prev2.i.i, align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i, %entry
  %13 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %tmp, align 4
  %cmp.i.not17 = icmp eq ptr %14, %tmp
  br i1 %cmp.i.not17, label %while.end, label %while.body

while.body:                                       ; preds = %if.end, %list_splice_init.exit
  %15 = phi ptr [ %29, %if.end ], [ %14, %list_splice_init.exit ]
  %add.ptr = getelementptr i8, ptr %15, i32 -4
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr, align 4
  %call3 = call i32 @wake_up_state(ptr noundef %17, i32 noundef 3) #4
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %15) #4
  br i1 %call.i.i, label %if.end.i.i, label %list_del_init.exit

if.end.i.i:                                       ; preds = %while.body
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i, align 4
  %20 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %15, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev1.i.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %19, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %while.body
  %24 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %15, ptr %15, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %15, ptr %prev.i3.i, align 4
  %26 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %tmp, align 4
  %cmp.i15.not = icmp eq ptr %27, %tmp
  br i1 %cmp.i15.not, label %while.end, label %if.end

if.end:                                           ; preds = %list_del_init.exit
  call void @_raw_spin_unlock_irq(ptr noundef %q) #4
  call void @_raw_spin_lock_irq(ptr noundef %q) #4
  %28 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %tmp, align 4
  %cmp.i.not = icmp eq ptr %29, %tmp
  br i1 %cmp.i.not, label %while.end, label %while.body

while.end:                                        ; preds = %if.end, %list_del_init.exit, %list_splice_init.exit
  call void @_raw_spin_unlock_irq(ptr noundef %q) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_state(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__prepare_to_swait(ptr noundef %q, ptr noundef %wait) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !26) #4
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %wait, align 4
  %task_list = getelementptr inbounds %struct.swait_queue, ptr %wait, i32 0, i32 1
  %5 = ptrtoint ptr %task_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %task_list, align 4
  %cmp.i.not = icmp eq ptr %6, %task_list
  br i1 %cmp.i.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %task_list4 = getelementptr inbounds %struct.swait_queue_head, ptr %q, i32 0, i32 1
  %prev.i = getelementptr inbounds %struct.swait_queue_head, ptr %q, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %task_list, ptr noundef %8, ptr noundef %task_list4) #4
  br i1 %call.i.i, label %if.end.i.i, label %if.end

if.end.i.i:                                       ; preds = %if.then
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %task_list, ptr %prev.i, align 4
  %10 = ptrtoint ptr %task_list to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %task_list4, ptr %task_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.swait_queue, ptr %wait, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev3.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %task_list, ptr %8, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.i.i, %if.then, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @prepare_to_swait_exclusive(ptr noundef %q, ptr noundef %wait, i32 noundef %state) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %q) #4
  %0 = tail call i32 @llvm.read_register.i32(metadata !26) #4
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i, align 8
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %wait, align 4
  %task_list.i = getelementptr inbounds %struct.swait_queue, ptr %wait, i32 0, i32 1
  %5 = ptrtoint ptr %task_list.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %task_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %6, %task_list.i
  br i1 %cmp.i.not.i, label %if.then.i, label %__prepare_to_swait.exit

if.then.i:                                        ; preds = %entry
  %task_list4.i = getelementptr inbounds %struct.swait_queue_head, ptr %q, i32 0, i32 1
  %prev.i.i = getelementptr inbounds %struct.swait_queue_head, ptr %q, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %task_list.i, ptr noundef %8, ptr noundef %task_list4.i) #4
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__prepare_to_swait.exit

if.end.i.i.i:                                     ; preds = %if.then.i
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %task_list.i, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %task_list.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %task_list4.i, ptr %task_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.swait_queue, ptr %wait, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev3.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %task_list.i, ptr %8, align 4
  br label %__prepare_to_swait.exit

__prepare_to_swait.exit:                          ; preds = %if.end.i.i.i, %if.then.i, %entry
  %and = and i32 %state, 204
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %__here, label %land.rhs

land.rhs:                                         ; preds = %__prepare_to_swait.exit
  %.b83 = load i1, ptr @prepare_to_swait_exclusive.__already_done, align 1
  br i1 %.b83, label %__here, label %if.then, !prof !36

if.then:                                          ; preds = %land.rhs
  store i1 true, ptr @prepare_to_swait_exclusive.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 98, i32 noundef 9, ptr noundef null) #4
  br label %__here

__here:                                           ; preds = %if.then, %land.rhs, %__prepare_to_swait.exit
  %13 = tail call i32 @llvm.read_register.i32(metadata !26) #4
  %and.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 212
  %17 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 ptrtoint (ptr blockaddress(@prepare_to_swait_exclusive, %__here) to i32), ptr %task_state_change, align 4
  %18 = load ptr, ptr %task, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 %state, ptr %18, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !37
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %q, i32 noundef %call) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prepare_to_swait_event(ptr noundef %q, ptr noundef %wait, i32 noundef %state) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %q) #4
  %0 = tail call i32 @llvm.read_register.i32(metadata !26) #4
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %and.i92 = and i32 %state, 257
  %tobool.not.i = icmp eq i32 %and.i92, 0
  br i1 %tobool.not.i, label %if.else, label %if.end.i

if.end.i:                                         ; preds = %entry
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stack.i.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  %8 = and i32 %7, 256
  %tobool.not.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i.i, label %signal_pending.exit.i, label %if.end3.i, !prof !36

signal_pending.exit.i:                            ; preds = %if.end.i
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %5, align 4
  %and1.i.i.i.i.i.i = and i32 %10, 1
  %tobool1.not.i = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i, label %if.else, label %if.end3.i

if.end3.i:                                        ; preds = %signal_pending.exit.i, %if.end.i
  %and4.i = and i32 %state, 1
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %signal_pending_state.exit, label %if.then

signal_pending_state.exit:                        ; preds = %if.end3.i
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 116, i32 1
  %11 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %signal.i.i, align 4
  %13 = and i32 %12, 256
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %signal_pending_state.exit, %if.end3.i
  %task_list = getelementptr inbounds %struct.swait_queue, ptr %wait, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %task_list) #4
  br i1 %call.i.i, label %if.end.i.i, label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then
  %prev.i.i = getelementptr inbounds %struct.swait_queue, ptr %wait, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i, align 4
  %16 = ptrtoint ptr %task_list to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then
  %20 = ptrtoint ptr %task_list to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %task_list, ptr %task_list, align 4
  %prev.i3.i = getelementptr inbounds %struct.swait_queue, ptr %wait, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %task_list, ptr %prev.i3.i, align 4
  br label %do.body75

if.else:                                          ; preds = %signal_pending_state.exit, %signal_pending.exit.i, %entry
  %22 = tail call i32 @llvm.read_register.i32(metadata !26) #4
  %and.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %task.i, align 8
  %26 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %wait, align 4
  %task_list.i = getelementptr inbounds %struct.swait_queue, ptr %wait, i32 0, i32 1
  %27 = ptrtoint ptr %task_list.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %task_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %28, %task_list.i
  br i1 %cmp.i.not.i, label %if.then.i, label %__prepare_to_swait.exit

if.then.i:                                        ; preds = %if.else
  %task_list4.i = getelementptr inbounds %struct.swait_queue_head, ptr %q, i32 0, i32 1
  %prev.i.i93 = getelementptr inbounds %struct.swait_queue_head, ptr %q, i32 0, i32 1, i32 1
  %29 = ptrtoint ptr %prev.i.i93 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i.i93, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %task_list.i, ptr noundef %30, ptr noundef %task_list4.i) #4
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__prepare_to_swait.exit

if.end.i.i.i:                                     ; preds = %if.then.i
  %31 = ptrtoint ptr %prev.i.i93 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %task_list.i, ptr %prev.i.i93, align 4
  %32 = ptrtoint ptr %task_list.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %task_list4.i, ptr %task_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.swait_queue, ptr %wait, i32 0, i32 1, i32 1
  %33 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev3.i.i.i, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %task_list.i, ptr %30, align 4
  br label %__prepare_to_swait.exit

__prepare_to_swait.exit:                          ; preds = %if.end.i.i.i, %if.then.i, %if.else
  %and = and i32 %state, 204
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %__here, label %land.rhs

land.rhs:                                         ; preds = %__prepare_to_swait.exit
  %.b91 = load i1, ptr @prepare_to_swait_event.__already_done, align 1
  br i1 %.b91, label %__here, label %if.then14, !prof !36

if.then14:                                        ; preds = %land.rhs
  store i1 true, ptr @prepare_to_swait_event.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 118, i32 noundef 9, ptr noundef null) #4
  br label %__here

__here:                                           ; preds = %if.then14, %land.rhs, %__prepare_to_swait.exit
  %35 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 212
  %37 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 ptrtoint (ptr blockaddress(@prepare_to_swait_event, %__here) to i32), ptr %task_state_change, align 4
  %38 = load ptr, ptr %task, align 8
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile i32 %state, ptr %38, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !38
  br label %do.body75

do.body75:                                        ; preds = %__here, %list_del_init.exit
  %ret.0 = phi i32 [ -512, %list_del_init.exit ], [ 0, %__here ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %q, i32 noundef %call) #4
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__finish_swait(ptr nocapture readnone %q, ptr noundef %wait) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  br label %__here

__here:                                           ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !26) #4
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 212
  %4 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 ptrtoint (ptr blockaddress(@__finish_swait, %__here) to i32), ptr %task_state_change, align 4
  %5 = load ptr, ptr %task, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 0, ptr %5, align 128
  %task_list = getelementptr inbounds %struct.swait_queue, ptr %wait, i32 0, i32 1
  %7 = ptrtoint ptr %task_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %task_list, align 4
  %cmp.i.not = icmp eq ptr %8, %task_list
  br i1 %cmp.i.not, label %if.end55, label %if.then53

if.then53:                                        ; preds = %__here
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %task_list) #4
  br i1 %call.i.i, label %if.end.i.i, label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then53
  %prev.i.i = getelementptr inbounds %struct.swait_queue, ptr %wait, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %task_list to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then53
  %15 = ptrtoint ptr %task_list to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %task_list, ptr %task_list, align 4
  %prev.i3.i = getelementptr inbounds %struct.swait_queue, ptr %wait, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %task_list, ptr %prev.i3.i, align 4
  br label %if.end55

if.end55:                                         ; preds = %list_del_init.exit, %__here
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @finish_swait(ptr noundef %q, ptr noundef %wait) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  br label %__here

__here:                                           ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !26) #4
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 212
  %4 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 ptrtoint (ptr blockaddress(@finish_swait, %__here) to i32), ptr %task_state_change, align 4
  %5 = load ptr, ptr %task, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 0, ptr %5, align 128
  %task_list = getelementptr inbounds %struct.swait_queue, ptr %wait, i32 0, i32 1
  %7 = ptrtoint ptr %task_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %task_list, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !39
  %cmp.i.not.i = icmp eq ptr %8, %task_list
  br i1 %cmp.i.not.i, label %list_empty_careful.exit, label %do.body54

list_empty_careful.exit:                          ; preds = %__here
  %prev.i = getelementptr inbounds %struct.swait_queue, ptr %wait, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i, align 4
  %cmp.i.not = icmp eq ptr %10, %task_list
  br i1 %cmp.i.not, label %if.end69, label %do.body54

do.body54:                                        ; preds = %list_empty_careful.exit, %__here
  %call56 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %q) #4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %task_list) #4
  br i1 %call.i.i, label %if.end.i.i, label %list_del_init.exit

if.end.i.i:                                       ; preds = %do.body54
  %prev.i.i = getelementptr inbounds %struct.swait_queue, ptr %wait, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %task_list to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %do.body54
  %17 = ptrtoint ptr %task_list to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %task_list, ptr %task_list, align 4
  %prev.i3.i = getelementptr inbounds %struct.swait_queue, ptr %wait, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %task_list, ptr %prev.i3.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %q, i32 noundef %call56) #4
  br label %if.end69

if.end69:                                         ; preds = %list_del_init.exit, %list_empty_careful.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind readonly }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !14, !16, !18, !20, !22, !24}
!llvm.named.register.sp = !{!26}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @__init_swait_queue_head.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../kernel/sched/swait.c", i32 10, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__ksymtab___init_swait_queue_head, !4, !"__ksymtab___init_swait_queue_head", i1 false, i1 false}
!4 = !{!"../kernel/sched/swait.c", i32 14, i32 1}
!5 = !{ptr @__ksymtab_swake_up_locked, !6, !"__ksymtab_swake_up_locked", i1 false, i1 false}
!6 = !{!"../kernel/sched/swait.c", i32 33, i32 1}
!7 = !{ptr @__ksymtab_swake_up_one, !8, !"__ksymtab_swake_up_one", i1 false, i1 false}
!8 = !{!"../kernel/sched/swait.c", i32 56, i32 1}
!9 = !{ptr @__ksymtab_swake_up_all, !10, !"__ksymtab_swake_up_all", i1 false, i1 false}
!10 = !{!"../kernel/sched/swait.c", i32 83, i32 1}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../kernel/sched/swait.c", i32 98, i32 2}
!13 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @__ksymtab_prepare_to_swait_exclusive, !15, !"__ksymtab_prepare_to_swait_exclusive", i1 false, i1 false}
!15 = !{!"../kernel/sched/swait.c", i32 101, i32 1}
!16 = distinct !{null, !17, !"__already_done", i1 false, i1 false}
!17 = !{!"../kernel/sched/swait.c", i32 118, i32 3}
!18 = !{ptr @__ksymtab_prepare_to_swait_event, !19, !"__ksymtab_prepare_to_swait_event", i1 false, i1 false}
!19 = !{!"../kernel/sched/swait.c", i32 124, i32 1}
!20 = distinct !{null, !21, !"__already_done", i1 false, i1 false}
!21 = !{!"../kernel/sched/swait.c", i32 128, i32 2}
!22 = distinct !{null, !23, !"__already_done", i1 false, i1 false}
!23 = !{!"../kernel/sched/swait.c", i32 137, i32 2}
!24 = !{ptr @__ksymtab_finish_swait, !25, !"__ksymtab_finish_swait", i1 false, i1 false}
!25 = !{!"../kernel/sched/swait.c", i32 145, i32 1}
!26 = !{!"sp"}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!36 = !{!"branch_weights", i32 2000, i32 1}
!37 = !{i64 2158451569}
!38 = !{i64 2158462548}
!39 = !{i64 2149031176}
