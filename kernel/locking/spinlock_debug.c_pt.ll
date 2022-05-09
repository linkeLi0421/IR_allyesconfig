; ModuleID = '/llk/IR_all_yes/kernel/locking/spinlock_debug.c_pt.bc'
source_filename = "../kernel/locking/spinlock_debug.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+__raw_spin_lock_init\22, \22a\22\09"
module asm "\09.weak\09__crc___raw_spin_lock_init\09\09\09\09"
module asm "\09.long\09__crc___raw_spin_lock_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___raw_spin_lock_init:\09\09\09\09\09"
module asm "\09.asciz \09\22__raw_spin_lock_init\22\09\09\09\09\09"
module asm "__kstrtabns___raw_spin_lock_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__rwlock_init\22, \22a\22\09"
module asm "\09.weak\09__crc___rwlock_init\09\09\09\09"
module asm "\09.long\09__crc___rwlock_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___rwlock_init:\09\09\09\09\09"
module asm "\09.asciz \09\22__rwlock_init\22\09\09\09\09\09"
module asm "__kstrtabns___rwlock_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.26, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%struct.restart_block = type { i32, ptr, %union.anon.7 }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
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
%union.anon.26 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.__raw_tickets = type { i16, i16 }

@__kstrtab___raw_spin_lock_init = external dso_local constant [0 x i8], align 1
@__kstrtabns___raw_spin_lock_init = external dso_local constant [0 x i8], align 1
@__ksymtab___raw_spin_lock_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__raw_spin_lock_init to i32), ptr @__kstrtab___raw_spin_lock_init, ptr @__kstrtabns___raw_spin_lock_init }, section "___ksymtab+__raw_spin_lock_init", align 4
@__kstrtab___rwlock_init = external dso_local constant [0 x i8], align 1
@__kstrtabns___rwlock_init = external dso_local constant [0 x i8], align 1
@__ksymtab___rwlock_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__rwlock_init to i32), ptr @__kstrtab___rwlock_init, ptr @__kstrtabns___rwlock_init }, section "___ksymtab+__rwlock_init", align 4
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bad magic\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"recursion\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cpu recursion\00", [18 x i8] zeroinitializer }, align 32
@spin_dump._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 62, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\010BUG: spinlock %s on CPU#%d, %s/%d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"spin_dump\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"kernel/locking/spinlock_debug.c\00", [32 x i8] zeroinitializer }, align 32
@spin_dump._entry_ptr = internal global ptr @spin_dump._entry, section ".printk_index", align 4
@spin_dump._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.4, ptr @.str.5, i32 68, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\010 lock: %pS, .magic: %08x, .owner: %s/%d, .owner_cpu: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@spin_dump._entry_ptr.8 = internal global ptr @spin_dump._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"<none>\00", [25 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"already unlocked\00", [47 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wrong owner\00", [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"wrong CPU\00", [22 x i8] zeroinitializer }, align 32
@rwlock_bug._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.5, i32 152, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\010BUG: rwlock %s on CPU#%d, %s/%d, %p\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rwlock_bug\00", [21 x i8] zeroinitializer }, align 32
@rwlock_bug._entry_ptr = internal global ptr @rwlock_bug._entry, section ".printk_index", align 4
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 160, i32 2 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 86, i32 2 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 87, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 60, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 63, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 100, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 101, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 102, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.60 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.61 = private constant [35 x i8] c"../kernel/locking/spinlock_debug.c\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 150, i32 2 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @__ksymtab___raw_spin_lock_init, ptr @__ksymtab___rwlock_init, ptr @rwlock_bug._entry, ptr @rwlock_bug._entry_ptr, ptr @spin_dump._entry, ptr @spin_dump._entry.6, ptr @spin_dump._entry_ptr, ptr @spin_dump._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spin_dump._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spin_dump._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rwlock_bug._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef %name, ptr noundef %key, i16 noundef signext %inner) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @debug_check_no_locks_freed(ptr noundef %lock, i32 noundef 44) #6
  %dep_map = getelementptr inbounds %struct.raw_spinlock, ptr %lock, i32 0, i32 4
  %conv = trunc i16 %inner to i8
  tail call void @lockdep_init_map_type(ptr noundef %dep_map, ptr noundef %name, ptr noundef %key, i32 noundef 0, i8 noundef zeroext %conv, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %0 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %lock, align 4
  %magic = getelementptr inbounds %struct.raw_spinlock, ptr %lock, i32 0, i32 1
  %1 = ptrtoint ptr %magic to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -559067475, ptr %magic, align 4
  %owner = getelementptr inbounds %struct.raw_spinlock, ptr %lock, i32 0, i32 3
  %2 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %owner, align 4
  %owner_cpu = getelementptr inbounds %struct.raw_spinlock, ptr %lock, i32 0, i32 2
  %3 = ptrtoint ptr %owner_cpu to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %owner_cpu, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_check_no_locks_freed(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__rwlock_init(ptr noundef %lock, ptr noundef %name, ptr noundef %key) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @debug_check_no_locks_freed(ptr noundef %lock, i32 noundef 44) #6
  %dep_map = getelementptr inbounds %struct.rwlock_t, ptr %lock, i32 0, i32 4
  tail call void @lockdep_init_map_type(ptr noundef %dep_map, ptr noundef %name, ptr noundef %key, i32 noundef 0, i8 noundef zeroext 3, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %0 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %lock, align 4
  %magic = getelementptr inbounds %struct.rwlock_t, ptr %lock, i32 0, i32 1
  %1 = ptrtoint ptr %magic to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -558948627, ptr %magic, align 4
  %owner = getelementptr inbounds %struct.rwlock_t, ptr %lock, i32 0, i32 3
  %2 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %owner, align 4
  %owner_cpu = getelementptr inbounds %struct.rwlock_t, ptr %lock, i32 0, i32 2
  %3 = ptrtoint ptr %owner_cpu to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %owner_cpu, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @do_raw_spin_lock(ptr noundef %lock) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %magic.i = getelementptr inbounds %struct.raw_spinlock, ptr %lock, i32 0, i32 1
  %0 = ptrtoint ptr %magic.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %magic.i, align 4
  %cmp.not.i = icmp eq i32 %1, -559067475
  br i1 %cmp.not.i, label %do.end3.i, label %if.then.i, !prof !42

if.then.i:                                        ; preds = %entry
  %call.i30 = tail call i32 @debug_locks_off() #6
  %tobool.not.i31 = icmp eq i32 %call.i30, 0
  br i1 %tobool.not.i31, label %do.end3.i, label %if.end.i41

if.end.i41:                                       ; preds = %if.then.i
  %owner1.i.i32 = getelementptr inbounds %struct.raw_spinlock, ptr %lock, i32 0, i32 3
  %2 = ptrtoint ptr %owner1.i.i32 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %owner1.i.i32, align 4
  %4 = tail call i32 @llvm.read_register.i32(metadata !32) #6
  %and.i.i.i33 = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i33 to ptr
  %cpu.i.i34 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu.i.i34 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu.i.i34, align 4
  %task.i.i35 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %task.i.i35 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task.i.i35, align 8
  %comm.i.i36 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 101
  %pid.i.i.i37 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 68
  %10 = ptrtoint ptr %pid.i.i.i37 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pid.i.i.i37, align 8
  %call10.i.i38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str, i32 noundef %7, ptr noundef %comm.i.i36, i32 noundef %11) #8
  %12 = ptrtoint ptr %magic.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %magic.i, align 4
  %magicptr.i.i40 = ptrtoint ptr %3 to i32
  switch i32 %magicptr.i.i40, label %cond.true22.i.i44 [
    i32 -1, label %spin_dump.exit.i49
    i32 0, label %spin_dump.exit.i49
  ]

cond.true22.i.i44:                                ; preds = %if.end.i41
  %comm19.i.i42 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 101
  %pid.i39.i.i43 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 68
  %14 = ptrtoint ptr %pid.i39.i.i43 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pid.i39.i.i43, align 8
  br label %spin_dump.exit.i49

spin_dump.exit.i49:                               ; preds = %cond.true22.i.i44, %if.end.i41, %if.end.i41
  %spec.select.i.i45 = phi ptr [ %comm19.i.i42, %cond.true22.i.i44 ], [ @.str.9, %if.end.i41 ], [ @.str.9, %if.end.i41 ]
  %cond26.i.i46 = phi i32 [ %15, %cond.true22.i.i44 ], [ -1, %if.end.i41 ], [ -1, %if.end.i41 ]
  %owner_cpu.i.i47 = getelementptr inbounds %struct.raw_spinlock, ptr %lock, i32 0, i32 2
  %16 = ptrtoint ptr %owner_cpu.i.i47 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %owner_cpu.i.i47, align 4
  %call31.i.i48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %lock, i32 noundef %13, ptr noundef %spec.select.i.i45, i32 noundef %cond26.i.i46, i32 noundef %17) #8
  tail call void @dump_stack() #8
  br label %do.end3.i

do.end3.i:                                        ; preds = %spin_dump.exit.i49, %if.then.i, %entry
  %owner.i = getelementptr inbounds %struct.raw_spinlock, ptr %lock, i32 0, i32 3
  %18 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %owner.i, align 4
  %20 = tail call i32 @llvm.read_register.i32(metadata !32) #6
  %and.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task.i, align 8
  %cmp5.i = icmp eq ptr %19, %23
  br i1 %cmp5.i, label %if.then12.i, label %do.end15.i, !prof !43

if.then12.i:                                      ; preds = %do.end3.i
  %call.i9 = tail call i32 @debug_locks_off() #6
  %tobool.not.i10 = icmp eq i32 %call.i9, 0
  br i1 %tobool.not.i10, label %do.end15.i, label %if.end.i20

if.end.i20:                                       ; preds = %if.then12.i
  %24 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %owner.i, align 4
  %26 = tail call i32 @llvm.read_register.i32(metadata !32) #6
  %and.i.i.i12 = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i12 to ptr
  %cpu.i.i13 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %cpu.i.i13 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cpu.i.i13, align 4
  %task.i.i14 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 2
  %30 = ptrtoint ptr %task.i.i14 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %task.i.i14, align 8
  %comm.i.i15 = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 101
  %pid.i.i.i16 = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 68
  %32 = ptrtoint ptr %pid.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pid.i.i.i16, align 8
  %call10.i.i17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef %29, ptr noundef %comm.i.i15, i32 noundef %33) #8
  %34 = ptrtoint ptr %magic.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %magic.i, align 4
  %magicptr.i.i19 = ptrtoint ptr %25 to i32
  switch i32 %magicptr.i.i19, label %cond.true22.i.i23 [
    i32 -1, label %spin_dump.exit.i28
    i32 0, label %spin_dump.exit.i28
  ]

cond.true22.i.i23:                                ; preds = %if.end.i20
  %comm19.i.i21 = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 101
  %pid.i39.i.i22 = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 68
  %36 = ptrtoint ptr %pid.i39.i.i22 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pid.i39.i.i22, align 8
  br label %spin_dump.exit.i28

spin_dump.exit.i28:                               ; preds = %cond.true22.i.i23, %if.end.i20, %if.end.i20
  %spec.select.i.i24 = phi ptr [ %comm19.i.i21, %cond.true22.i.i23 ], [ @.str.9, %if.end.i20 ], [ @.str.9, %if.end.i20 ]
  %cond26.i.i25 = phi i32 [ %37, %cond.true22.i.i23 ], [ -1, %if.end.i20 ], [ -1, %if.end.i20 ]
  %owner_cpu.i.i26 = getelementptr inbounds %struct.raw_spinlock, ptr %lock, i32 0, i32 2
  %38 = ptrtoint ptr %owner_cpu.i.i26 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %owner_cpu.i.i26, align 4
  %call31.i.i27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %lock, i32 noundef %35, ptr noundef %spec.select.i.i24, i32 noundef %cond26.i.i25, i32 noundef %39) #8
  tail call void @dump_stack() #8
  br label %do.end15.i

do.end15.i:                                       ; preds = %spin_dump.exit.i28, %if.then12.i, %do.end3.i
  %owner_cpu.i = getelementptr inbounds %struct.raw_spinlock, ptr %lock, i32 0, i32 2
  %40 = ptrtoint ptr %owner_cpu.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %owner_cpu.i, align 4
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 3
  %42 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %cpu.i, align 4
  %cmp18.i = icmp eq i32 %41, %43
  br i1 %cmp18.i, label %if.then25.i, label %debug_spin_lock_before.exit, !prof !43

if.then25.i:                                      ; preds = %do.end15.i
  %call.i = tail call i32 @debug_locks_off() #6
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %debug_spin_lock_before.exit, label %if.end.i

if.end.i:                                         ; preds = %if.then25.i
  %44 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %owner.i, align 4
  %46 = tail call i32 @llvm.read_register.i32(metadata !32) #6
  %and.i.i.i = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %cpu.i.i, align 4
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 2
  %50 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %task.i.i, align 8
  %comm.i.i = getelementptr inbounds %struct.task_struct, ptr %51, i32 0, i32 101
  %pid.i.i.i = getelementptr inbounds %struct.task_struct, ptr %51, i32 0, i32 68
  %52 = ptrtoint ptr %pid.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %pid.i.i.i, align 8
  %call10.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef %49, ptr noundef %comm.i.i, i32 noundef %53) #8
  %54 = ptrtoint ptr %magic.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %magic.i, align 4
  %magicptr.i.i = ptrtoint ptr %45 to i32
  switch i32 %magicptr.i.i, label %cond.true22.i.i [
    i32 -1, label %spin_dump.exit.i
    i32 0, label %spin_dump.exit.i
  ]

cond.true22.i.i:                                  ; preds = %if.end.i
  %comm19.i.i = getelementptr inbounds %struct.task_struct, ptr %45, i32 0, i32 101
  %pid.i39.i.i = getelementptr inbounds %struct.task_struct, ptr %45, i32 0, i32 68
  %56 = ptrtoint ptr %pid.i39.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %pid.i39.i.i, align 8
  br label %spin_dump.exit.i

spin_dump.exit.i:                                 ; preds = %cond.true22.i.i, %if.end.i, %if.end.i
  %spec.select.i.i = phi ptr [ %comm19.i.i, %cond.true22.i.i ], [ @.str.9, %if.end.i ], [ @.str.9, %if.end.i ]
  %cond26.i.i = phi i32 [ %57, %cond.true22.i.i ], [ -1, %if.end.i ], [ -1, %if.end.i ]
  %58 = ptrtoint ptr %owner_cpu.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %owner_cpu.i, align 4
  %call31.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %lock, i32 noundef %55, ptr noundef %spec.select.i.i, i32 noundef %cond26.i.i, i32 noundef %59) #8
  tail call void @dump_stack() #8
  br label %debug_spin_lock_before.exit

debug_spin_lock_before.exit:                      ; preds = %spin_dump.exit.i, %if.then25.i, %do.end15.i
  tail call void @llvm.prefetch.p0(ptr %lock, i32 1, i32 3, i32 1) #6
  %60 = tail call { i32, i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$3]\0A\09add\09$1, $0, $4\0A\09strex\09$2, $1, [$3]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,r,I,~{cc}"(ptr %lock, i32 65536) #6, !srcloc !44
  %asmresult.i = extractvalue { i32, i32, i32 } %60, 0
  %lockval.sroa.0.0.extract.shift.i = lshr i32 %asmresult.i, 16
  %conv316.i = and i32 %asmresult.i, 65535
  %cmp.not17.i = icmp eq i32 %lockval.sroa.0.0.extract.shift.i, %conv316.i
  br i1 %cmp.not17.i, label %arch_spin_lock.exit, label %while.body.lr.ph.i

while.body.lr.ph.i:                               ; preds = %debug_spin_lock_before.exit
  %owner6.i = getelementptr inbounds %struct.__raw_tickets, ptr %lock, i32 0, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i, %while.body.lr.ph.i
  tail call void asm sideeffect "wfe", "~{memory}"() #6, !srcloc !45
  %61 = ptrtoint ptr %owner6.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load volatile i16, ptr %owner6.i, align 2
  %conv3.i = zext i16 %62 to i32
  %cmp.not.i3 = icmp eq i32 %lockval.sroa.0.0.extract.shift.i, %conv3.i
  br i1 %cmp.not.i3, label %arch_spin_lock.exit, label %while.body.i

arch_spin_lock.exit:                              ; preds = %while.body.i, %debug_spin_lock_before.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !46
  %63 = tail call i32 @llvm.read_register.i32(metadata !32) #6
  %and.i.i4 = and i32 %63, -16384
  %64 = inttoptr i32 %and.i.i4 to ptr
  %cpu.i5 = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 3
  %65 = ptrtoint ptr %cpu.i5 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %cpu.i5, align 4
  %67 = ptrtoint ptr %owner_cpu.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile i32 %66, ptr %owner_cpu.i, align 4
  %task.i7 = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 2
  %68 = ptrtoint ptr %task.i7 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %task.i7, align 8
  %70 = ptrtoint ptr %owner.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %69, ptr %owner.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @do_raw_spin_trylock(ptr noundef %lock) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @llvm.prefetch.p0(ptr %lock, i32 1, i32 3, i32 1) #6
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i, %entry
  %0 = tail call { i32, i32, i32 } asm sideeffect "\09ldrex\09$0, [$3]\0A\09mov\09$2, #0\0A\09subs\09$1, $0, $0, ror #16\0A\09addeq\09$0, $0, $4\0A\09strexeq\09$2, $0, [$3]", "=&r,=&r,=&r,r,I,~{cc}"(ptr %lock, i32 65536) #6, !srcloc !47
  %asmresult2.i = extractvalue { i32, i32, i32 } %0, 2
  %tobool.not.i = icmp eq i32 %asmresult2.i, 0
  br i1 %tobool.not.i, label %do.end.i, label %do.body.i

do.end.i:                                         ; preds = %do.body.i
  %asmresult1.i = extractvalue { i32, i32, i32 } %0, 1
  %tobool3.not.i = icmp eq i32 %asmresult1.i, 0
  br i1 %tobool3.not.i, label %do.end, label %if.end

do.end:                                           ; preds = %do.end.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !48
  %1 = tail call i32 @llvm.read_register.i32(metadata !32) #6
  %and.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cpu.i, align 4
  %owner_cpu.i = getelementptr inbounds %struct.raw_spinlock, ptr %lock, i32 0, i32 2
  %5 = ptrtoint ptr %owner_cpu.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 %4, ptr %owner_cpu.i, align 4
  %task.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %6 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task.i, align 8
  %owner.i = getelementptr inbounds %struct.raw_spinlock, ptr %lock, i32 0, i32 3
  %8 = ptrtoint ptr %owner.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %7, ptr %owner.i, align 4
  br label %if.end

if.end:                                           ; preds = %do.end, %do.end.i
  %retval.0.i5 = phi i32 [ 1, %do.end ], [ 0, %do.end.i ]
  ret i32 %retval.0.i5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @do_raw_spin_unlock(ptr noundef %lock) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  %magic.i = getelementptr inbounds %struct.raw_spinlock, ptr %lock, i32 0, i32 1
  %0 = ptrtoint ptr %magic.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %magic.i, align 4
  %cmp.not.i = icmp eq i32 %1, -559067475
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i, !prof !42

if.then.i:                                        ; preds = %entry
  %call.i46 = tail call i32 @debug_locks_off() #6
  %tobool.not.i47 = icmp eq i32 %call.i46, 0
  br i1 %tobool.not.i47, label %if.end.i, label %if.end.i57

if.end.i57:                                       ; preds = %if.then.i
  %owner1.i.i48 = getelementptr inbounds %struct.raw_spinlock, ptr %lock, i32 0, i32 3
  %2 = ptrtoint ptr %owner1.i.i48 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %owner1.i.i48, align 4
  %4 = tail call i32 @llvm.read_register.i32(metadata !32) #6
  %and.i.i.i49 = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i49 to ptr
  %cpu.i.i50 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu.i.i50 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu.i.i50, align 4
  %task.i.i51 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %task.i.i51 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task.i.i51, align 8
  %comm.i.i52 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 101
  %pid.i.i.i53 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 68
  %10 = ptrtoint ptr %pid.i.i.i53 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pid.i.i.i53, align 8
  %call10.i.i54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str, i32 noundef %7, ptr noundef %comm.i.i52, i32 noundef %11) #8
  %12 = ptrtoint ptr %magic.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %magic.i, align 4
  %magicptr.i.i56 = ptrtoint ptr %3 to i32
  switch i32 %magicptr.i.i56, label %cond.true22.i.i60 [
    i32 -1, label %spin_dump.exit.i65
    i32 0, label %spin_dump.exit.i65
  ]

cond.true22.i.i60:                                ; preds = %if.end.i57
  %comm19.i.i58 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 101
  %pid.i39.i.i59 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 68
  %14 = ptrtoint ptr %pid.i39.i.i59 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pid.i39.i.i59, align 8
  br label %spin_dump.exit.i65

spin_dump.exit.i65:                               ; preds = %cond.true22.i.i60, %if.end.i57, %if.end.i57
  %spec.select.i.i61 = phi ptr [ %comm19.i.i58, %cond.true22.i.i60 ], [ @.str.9, %if.end.i57 ], [ @.str.9, %if.end.i57 ]
  %cond26.i.i62 = phi i32 [ %15, %cond.true22.i.i60 ], [ -1, %if.end.i57 ], [ -1, %if.end.i57 ]
  %owner_cpu.i.i63 = getelementptr inbounds %struct.raw_spinlock, ptr %lock, i32 0, i32 2
  %16 = ptrtoint ptr %owner_cpu.i.i63 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %owner_cpu.i.i63, align 4
  %call31.i.i64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %lock, i32 noundef %13, ptr noundef %spec.select.i.i61, i32 noundef %cond26.i.i62, i32 noundef %17) #8
  tail call void @dump_stack() #8
  br label %if.end.i

if.end.i:                                         ; preds = %spin_dump.exit.i65, %if.then.i, %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %18 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %18)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr %lock, align 4
  %19 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %if.then11.i, label %if.end12.i, !prof !43

if.then11.i:                                      ; preds = %if.end.i
  %call.i25 = tail call i32 @debug_locks_off() #6
  %tobool.not.i26 = icmp eq i32 %call.i25, 0
  br i1 %tobool.not.i26, label %if.end12.i, label %if.end.i36

if.end.i36:                                       ; preds = %if.then11.i
  %owner1.i.i27 = getelementptr inbounds %struct.raw_spinlock, ptr %lock, i32 0, i32 3
  %20 = ptrtoint ptr %owner1.i.i27 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %owner1.i.i27, align 4
  %22 = tail call i32 @llvm.read_register.i32(metadata !32) #6
  %and.i.i.i28 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i28 to ptr
  %cpu.i.i29 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %cpu.i.i29 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cpu.i.i29, align 4
  %task.i.i30 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 2
  %26 = ptrtoint ptr %task.i.i30 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %task.i.i30, align 8
  %comm.i.i31 = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 101
  %pid.i.i.i32 = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 68
  %28 = ptrtoint ptr %pid.i.i.i32 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pid.i.i.i32, align 8
  %call10.i.i33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.10, i32 noundef %25, ptr noundef %comm.i.i31, i32 noundef %29) #8
  %30 = ptrtoint ptr %magic.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %magic.i, align 4
  %magicptr.i.i35 = ptrtoint ptr %21 to i32
  switch i32 %magicptr.i.i35, label %cond.true22.i.i39 [
    i32 -1, label %spin_dump.exit.i44
    i32 0, label %spin_dump.exit.i44
  ]

cond.true22.i.i39:                                ; preds = %if.end.i36
  %comm19.i.i37 = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 101
  %pid.i39.i.i38 = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 68
  %32 = ptrtoint ptr %pid.i39.i.i38 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pid.i39.i.i38, align 8
  br label %spin_dump.exit.i44

spin_dump.exit.i44:                               ; preds = %cond.true22.i.i39, %if.end.i36, %if.end.i36
  %spec.select.i.i40 = phi ptr [ %comm19.i.i37, %cond.true22.i.i39 ], [ @.str.9, %if.end.i36 ], [ @.str.9, %if.end.i36 ]
  %cond26.i.i41 = phi i32 [ %33, %cond.true22.i.i39 ], [ -1, %if.end.i36 ], [ -1, %if.end.i36 ]
  %owner_cpu.i.i42 = getelementptr inbounds %struct.raw_spinlock, ptr %lock, i32 0, i32 2
  %34 = ptrtoint ptr %owner_cpu.i.i42 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %owner_cpu.i.i42, align 4
  %call31.i.i43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %lock, i32 noundef %31, ptr noundef %spec.select.i.i40, i32 noundef %cond26.i.i41, i32 noundef %35) #8
  tail call void @dump_stack() #8
  br label %if.end12.i

if.end12.i:                                       ; preds = %spin_dump.exit.i44, %if.then11.i, %if.end.i
  %owner.i = getelementptr inbounds %struct.raw_spinlock, ptr %lock, i32 0, i32 3
  %36 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %owner.i, align 4
  %38 = tail call i32 @llvm.read_register.i32(metadata !32) #6
  %and.i.i = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %task.i, align 8
  %cmp14.not.i = icmp eq ptr %37, %41
  br i1 %cmp14.not.i, label %if.end22.i, label %if.then21.i, !prof !42

if.then21.i:                                      ; preds = %if.end12.i
  %call.i4 = tail call i32 @debug_locks_off() #6
  %tobool.not.i5 = icmp eq i32 %call.i4, 0
  br i1 %tobool.not.i5, label %if.end22.i, label %if.end.i15

if.end.i15:                                       ; preds = %if.then21.i
  %42 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile ptr, ptr %owner.i, align 4
  %44 = tail call i32 @llvm.read_register.i32(metadata !32) #6
  %and.i.i.i7 = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i7 to ptr
  %cpu.i.i8 = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %cpu.i.i8 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cpu.i.i8, align 4
  %task.i.i9 = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 2
  %48 = ptrtoint ptr %task.i.i9 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %task.i.i9, align 8
  %comm.i.i10 = getelementptr inbounds %struct.task_struct, ptr %49, i32 0, i32 101
  %pid.i.i.i11 = getelementptr inbounds %struct.task_struct, ptr %49, i32 0, i32 68
  %50 = ptrtoint ptr %pid.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %pid.i.i.i11, align 8
  %call10.i.i12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.11, i32 noundef %47, ptr noundef %comm.i.i10, i32 noundef %51) #8
  %52 = ptrtoint ptr %magic.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %magic.i, align 4
  %magicptr.i.i14 = ptrtoint ptr %43 to i32
  switch i32 %magicptr.i.i14, label %cond.true22.i.i18 [
    i32 -1, label %spin_dump.exit.i23
    i32 0, label %spin_dump.exit.i23
  ]

cond.true22.i.i18:                                ; preds = %if.end.i15
  %comm19.i.i16 = getelementptr inbounds %struct.task_struct, ptr %43, i32 0, i32 101
  %pid.i39.i.i17 = getelementptr inbounds %struct.task_struct, ptr %43, i32 0, i32 68
  %54 = ptrtoint ptr %pid.i39.i.i17 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %pid.i39.i.i17, align 8
  br label %spin_dump.exit.i23

spin_dump.exit.i23:                               ; preds = %cond.true22.i.i18, %if.end.i15, %if.end.i15
  %spec.select.i.i19 = phi ptr [ %comm19.i.i16, %cond.true22.i.i18 ], [ @.str.9, %if.end.i15 ], [ @.str.9, %if.end.i15 ]
  %cond26.i.i20 = phi i32 [ %55, %cond.true22.i.i18 ], [ -1, %if.end.i15 ], [ -1, %if.end.i15 ]
  %owner_cpu.i.i21 = getelementptr inbounds %struct.raw_spinlock, ptr %lock, i32 0, i32 2
  %56 = ptrtoint ptr %owner_cpu.i.i21 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %owner_cpu.i.i21, align 4
  %call31.i.i22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %lock, i32 noundef %53, ptr noundef %spec.select.i.i19, i32 noundef %cond26.i.i20, i32 noundef %57) #8
  tail call void @dump_stack() #8
  br label %if.end22.i

if.end22.i:                                       ; preds = %spin_dump.exit.i23, %if.then21.i, %if.end12.i
  %owner_cpu.i = getelementptr inbounds %struct.raw_spinlock, ptr %lock, i32 0, i32 2
  %58 = ptrtoint ptr %owner_cpu.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %owner_cpu.i, align 4
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 3
  %60 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %cpu.i, align 4
  %cmp24.not.i = icmp eq i32 %59, %61
  br i1 %cmp24.not.i, label %debug_spin_unlock.exit, label %if.then31.i, !prof !42

if.then31.i:                                      ; preds = %if.end22.i
  %call.i = tail call i32 @debug_locks_off() #6
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %debug_spin_unlock.exit, label %if.end.i3

if.end.i3:                                        ; preds = %if.then31.i
  %62 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile ptr, ptr %owner.i, align 4
  %64 = tail call i32 @llvm.read_register.i32(metadata !32) #6
  %and.i.i.i = and i32 %64, -16384
  %65 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 3
  %66 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %cpu.i.i, align 4
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 2
  %68 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %task.i.i, align 8
  %comm.i.i = getelementptr inbounds %struct.task_struct, ptr %69, i32 0, i32 101
  %pid.i.i.i = getelementptr inbounds %struct.task_struct, ptr %69, i32 0, i32 68
  %70 = ptrtoint ptr %pid.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %pid.i.i.i, align 8
  %call10.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.12, i32 noundef %67, ptr noundef %comm.i.i, i32 noundef %71) #8
  %72 = ptrtoint ptr %magic.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %magic.i, align 4
  %magicptr.i.i = ptrtoint ptr %63 to i32
  switch i32 %magicptr.i.i, label %cond.true22.i.i [
    i32 -1, label %spin_dump.exit.i
    i32 0, label %spin_dump.exit.i
  ]

cond.true22.i.i:                                  ; preds = %if.end.i3
  %comm19.i.i = getelementptr inbounds %struct.task_struct, ptr %63, i32 0, i32 101
  %pid.i39.i.i = getelementptr inbounds %struct.task_struct, ptr %63, i32 0, i32 68
  %74 = ptrtoint ptr %pid.i39.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %pid.i39.i.i, align 8
  br label %spin_dump.exit.i

spin_dump.exit.i:                                 ; preds = %cond.true22.i.i, %if.end.i3, %if.end.i3
  %spec.select.i.i = phi ptr [ %comm19.i.i, %cond.true22.i.i ], [ @.str.9, %if.end.i3 ], [ @.str.9, %if.end.i3 ]
  %cond26.i.i = phi i32 [ %75, %cond.true22.i.i ], [ -1, %if.end.i3 ], [ -1, %if.end.i3 ]
  %76 = ptrtoint ptr %owner_cpu.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %owner_cpu.i, align 4
  %call31.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %lock, i32 noundef %73, ptr noundef %spec.select.i.i, i32 noundef %cond26.i.i, i32 noundef %77) #8
  tail call void @dump_stack() #8
  br label %debug_spin_unlock.exit

debug_spin_unlock.exit:                           ; preds = %spin_dump.exit.i, %if.then31.i, %if.end22.i
  %78 = ptrtoint ptr %owner.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr inttoptr (i32 -1 to ptr), ptr %owner.i, align 4
  %79 = ptrtoint ptr %owner_cpu.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile i32 -1, ptr %owner_cpu.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !49
  %owner.i2 = getelementptr inbounds %struct.__raw_tickets, ptr %lock, i32 0, i32 1
  %80 = ptrtoint ptr %owner.i2 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %owner.i2, align 2
  %inc.i = add i16 %81, 1
  store i16 %inc.i, ptr %owner.i2, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !50
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !51
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @do_raw_read_lock(ptr noundef %lock) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %magic = getelementptr inbounds %struct.rwlock_t, ptr %lock, i32 0, i32 1
  %0 = ptrtoint ptr %magic to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %magic, align 4
  %cmp.not = icmp eq i32 %1, -558948627
  br i1 %cmp.not, label %if.end, label %if.then, !prof !42

if.then:                                          ; preds = %entry
  tail call fastcc void @rwlock_bug(ptr noundef %lock, ptr noundef nonnull @.str)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  tail call void @llvm.prefetch.p0(ptr %lock, i32 1, i32 3, i32 1) #6
  %2 = tail call { i32, i32 } asm sideeffect "\09.syntax unified\0A1:\09ldrex\09$0, [$2]\0A\09adds\09$0, $0, #1\0A\09strexpl\09$1, $0, [$2]\0A9998:\09wfemi\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A\09rsbspl\09$0, $1, #0\0A\09bmi\091b", "=&r,=&r,r,~{cc}"(ptr %lock) #6, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !53
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rwlock_bug(ptr noundef %lock, ptr noundef %msg) unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @debug_locks_off() #6
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %do.end

do.end:                                           ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !32) #6
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 101
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 68
  %6 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pid.i, align 8
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %msg, i32 noundef %3, ptr noundef %comm, i32 noundef %7, ptr noundef %lock) #8
  tail call void @dump_stack() #8
  br label %return

return:                                           ; preds = %do.end, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @do_raw_read_trylock(ptr noundef %lock) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @llvm.prefetch.p0(ptr %lock, i32 1, i32 3, i32 1) #6
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i, %entry
  %0 = tail call { i32, i32 } asm sideeffect "\09ldrex\09$0, [$2]\0A\09mov\09$1, #0\0A\09adds\09$0, $0, #1\0A\09strexpl\09$1, $0, [$2]", "=&r,=&r,r,~{cc}"(ptr %lock) #6, !srcloc !54
  %asmresult2.i = extractvalue { i32, i32 } %0, 1
  %tobool.not.i = icmp eq i32 %asmresult2.i, 0
  br i1 %tobool.not.i, label %do.end.i, label %do.body.i

do.end.i:                                         ; preds = %do.body.i
  %asmresult.i = extractvalue { i32, i32 } %0, 0
  %cmp.i = icmp sgt i32 %asmresult.i, -1
  br i1 %cmp.i, label %do.end6.i, label %arch_read_trylock.exit

do.end6.i:                                        ; preds = %do.end.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !55
  br label %arch_read_trylock.exit

arch_read_trylock.exit:                           ; preds = %do.end6.i, %do.end.i
  %retval.0.i = phi i32 [ 1, %do.end6.i ], [ 0, %do.end.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @do_raw_read_unlock(ptr noundef %lock) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %magic = getelementptr inbounds %struct.rwlock_t, ptr %lock, i32 0, i32 1
  %0 = ptrtoint ptr %magic to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %magic, align 4
  %cmp.not = icmp eq i32 %1, -558948627
  br i1 %cmp.not, label %if.end, label %if.then, !prof !42

if.then:                                          ; preds = %entry
  tail call fastcc void @rwlock_bug(ptr noundef %lock, ptr noundef nonnull @.str)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !56
  tail call void @llvm.prefetch.p0(ptr %lock, i32 1, i32 3, i32 1) #6
  %2 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr %lock) #6, !srcloc !57
  %asmresult.i = extractvalue { i32, i32 } %2, 0
  %cmp.i = icmp eq i32 %asmresult.i, 0
  br i1 %cmp.i, label %if.then.i, label %arch_read_unlock.exit

if.then.i:                                        ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !50
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !51
  br label %arch_read_unlock.exit

arch_read_unlock.exit:                            ; preds = %if.then.i, %if.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @do_raw_write_lock(ptr noundef %lock) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %magic.i = getelementptr inbounds %struct.rwlock_t, ptr %lock, i32 0, i32 1
  %0 = ptrtoint ptr %magic.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %magic.i, align 4
  %cmp.not.i = icmp eq i32 %1, -558948627
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i, !prof !42

if.then.i:                                        ; preds = %entry
  %call.i21 = tail call i32 @debug_locks_off() #6
  %tobool.not.i22 = icmp eq i32 %call.i21, 0
  br i1 %tobool.not.i22, label %if.end.i, label %do.end.i29

do.end.i29:                                       ; preds = %if.then.i
  %2 = tail call i32 @llvm.read_register.i32(metadata !32) #6
  %and.i.i23 = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i23 to ptr
  %cpu.i24 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %cpu.i24 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cpu.i24, align 4
  %task.i25 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %task.i25 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task.i25, align 8
  %comm.i26 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 101
  %pid.i.i27 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 68
  %8 = ptrtoint ptr %pid.i.i27 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pid.i.i27, align 8
  %call6.i28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str, i32 noundef %5, ptr noundef %comm.i26, i32 noundef %9, ptr noundef %lock) #8
  tail call void @dump_stack() #8
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i29, %if.then.i, %entry
  %owner.i = getelementptr inbounds %struct.rwlock_t, ptr %lock, i32 0, i32 3
  %10 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %owner.i, align 4
  %12 = tail call i32 @llvm.read_register.i32(metadata !32) #6
  %and.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task.i, align 8
  %cmp2.i = icmp eq ptr %11, %15
  br i1 %cmp2.i, label %if.then9.i, label %if.end10.i, !prof !43

if.then9.i:                                       ; preds = %if.end.i
  %call.i11 = tail call i32 @debug_locks_off() #6
  %tobool.not.i12 = icmp eq i32 %call.i11, 0
  br i1 %tobool.not.i12, label %if.end10.i, label %do.end.i19

do.end.i19:                                       ; preds = %if.then9.i
  %16 = tail call i32 @llvm.read_register.i32(metadata !32) #6
  %and.i.i13 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i13 to ptr
  %cpu.i14 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %cpu.i14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cpu.i14, align 4
  %task.i15 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %20 = ptrtoint ptr %task.i15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task.i15, align 8
  %comm.i16 = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 101
  %pid.i.i17 = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 68
  %22 = ptrtoint ptr %pid.i.i17 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pid.i.i17, align 8
  %call6.i18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef %19, ptr noundef %comm.i16, i32 noundef %23, ptr noundef %lock) #8
  tail call void @dump_stack() #8
  br label %if.end10.i

if.end10.i:                                       ; preds = %do.end.i19, %if.then9.i, %if.end.i
  %owner_cpu.i = getelementptr inbounds %struct.rwlock_t, ptr %lock, i32 0, i32 2
  %24 = ptrtoint ptr %owner_cpu.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %owner_cpu.i, align 4
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 3
  %26 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu.i, align 4
  %cmp12.i = icmp eq i32 %25, %27
  br i1 %cmp12.i, label %if.then19.i, label %debug_write_lock_before.exit, !prof !43

if.then19.i:                                      ; preds = %if.end10.i
  %call.i = tail call i32 @debug_locks_off() #6
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %debug_write_lock_before.exit, label %do.end.i

do.end.i:                                         ; preds = %if.then19.i
  %28 = tail call i32 @llvm.read_register.i32(metadata !32) #6
  %and.i.i8 = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i8 to ptr
  %cpu.i9 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %cpu.i9 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cpu.i9, align 4
  %task.i10 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 2
  %32 = ptrtoint ptr %task.i10 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %task.i10, align 8
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %33, i32 0, i32 101
  %pid.i.i = getelementptr inbounds %struct.task_struct, ptr %33, i32 0, i32 68
  %34 = ptrtoint ptr %pid.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pid.i.i, align 8
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.2, i32 noundef %31, ptr noundef %comm.i, i32 noundef %35, ptr noundef %lock) #8
  tail call void @dump_stack() #8
  br label %debug_write_lock_before.exit

debug_write_lock_before.exit:                     ; preds = %do.end.i, %if.then19.i, %if.end10.i
  tail call void @llvm.prefetch.p0(ptr %lock, i32 1, i32 3, i32 1) #6
  %36 = tail call i32 asm sideeffect "1:\09ldrex\09$0, [$1]\0A\09teq\09$0, #0\0A9998:\09wfene\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A\09strexeq\09$0, $2, [$1]\0A\09teq\09$0, #0\0A\09bne\091b", "=&r,r,r,~{cc}"(ptr %lock, i32 -2147483648) #6, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !59
  %37 = tail call i32 @llvm.read_register.i32(metadata !32) #6
  %and.i.i3 = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i3 to ptr
  %cpu.i4 = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %cpu.i4 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cpu.i4, align 4
  %41 = ptrtoint ptr %owner_cpu.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile i32 %40, ptr %owner_cpu.i, align 4
  %task.i6 = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 2
  %42 = ptrtoint ptr %task.i6 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %task.i6, align 8
  %44 = ptrtoint ptr %owner.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %43, ptr %owner.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @do_raw_write_trylock(ptr noundef %lock) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @llvm.prefetch.p0(ptr %lock, i32 1, i32 3, i32 1) #6
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i, %entry
  %0 = tail call { i32, i32 } asm sideeffect "\09ldrex\09$0, [$2]\0A\09mov\09$1, #0\0A\09teq\09$0, #0\0A\09strexeq\09$1, $3, [$2]", "=&r,=&r,r,r,~{cc}"(ptr %lock, i32 -2147483648) #6, !srcloc !60
  %asmresult2.i = extractvalue { i32, i32 } %0, 1
  %tobool.not.i = icmp eq i32 %asmresult2.i, 0
  br i1 %tobool.not.i, label %do.end.i, label %do.body.i

do.end.i:                                         ; preds = %do.body.i
  %asmresult.i = extractvalue { i32, i32 } %0, 0
  %tobool3.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool3.not.i, label %if.then, label %if.end

if.then:                                          ; preds = %do.end.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !61
  %1 = tail call i32 @llvm.read_register.i32(metadata !32) #6
  %and.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cpu.i, align 4
  %owner_cpu.i = getelementptr inbounds %struct.rwlock_t, ptr %lock, i32 0, i32 2
  %5 = ptrtoint ptr %owner_cpu.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 %4, ptr %owner_cpu.i, align 4
  %task.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %6 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task.i, align 8
  %owner.i = getelementptr inbounds %struct.rwlock_t, ptr %lock, i32 0, i32 3
  %8 = ptrtoint ptr %owner.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %7, ptr %owner.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end.i
  %retval.0.i5 = phi i32 [ 1, %if.then ], [ 0, %do.end.i ]
  ret i32 %retval.0.i5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @do_raw_write_unlock(ptr noundef %lock) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %magic.i = getelementptr inbounds %struct.rwlock_t, ptr %lock, i32 0, i32 1
  %0 = ptrtoint ptr %magic.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %magic.i, align 4
  %cmp.not.i = icmp eq i32 %1, -558948627
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i, !prof !42

if.then.i:                                        ; preds = %entry
  %call.i15 = tail call i32 @debug_locks_off() #6
  %tobool.not.i16 = icmp eq i32 %call.i15, 0
  br i1 %tobool.not.i16, label %if.end.i, label %do.end.i23

do.end.i23:                                       ; preds = %if.then.i
  %2 = tail call i32 @llvm.read_register.i32(metadata !32) #6
  %and.i.i17 = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i17 to ptr
  %cpu.i18 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %cpu.i18 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cpu.i18, align 4
  %task.i19 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %task.i19 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task.i19, align 8
  %comm.i20 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 101
  %pid.i.i21 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 68
  %8 = ptrtoint ptr %pid.i.i21 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pid.i.i21, align 8
  %call6.i22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str, i32 noundef %5, ptr noundef %comm.i20, i32 noundef %9, ptr noundef %lock) #8
  tail call void @dump_stack() #8
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i23, %if.then.i, %entry
  %owner.i = getelementptr inbounds %struct.rwlock_t, ptr %lock, i32 0, i32 3
  %10 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %owner.i, align 4
  %12 = tail call i32 @llvm.read_register.i32(metadata !32) #6
  %and.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task.i, align 8
  %cmp2.not.i = icmp eq ptr %11, %15
  br i1 %cmp2.not.i, label %if.end10.i, label %if.then9.i, !prof !42

if.then9.i:                                       ; preds = %if.end.i
  %call.i5 = tail call i32 @debug_locks_off() #6
  %tobool.not.i6 = icmp eq i32 %call.i5, 0
  br i1 %tobool.not.i6, label %if.end10.i, label %do.end.i13

do.end.i13:                                       ; preds = %if.then9.i
  %16 = tail call i32 @llvm.read_register.i32(metadata !32) #6
  %and.i.i7 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i7 to ptr
  %cpu.i8 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %cpu.i8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cpu.i8, align 4
  %task.i9 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %20 = ptrtoint ptr %task.i9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task.i9, align 8
  %comm.i10 = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 101
  %pid.i.i11 = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 68
  %22 = ptrtoint ptr %pid.i.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pid.i.i11, align 8
  %call6.i12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.11, i32 noundef %19, ptr noundef %comm.i10, i32 noundef %23, ptr noundef %lock) #8
  tail call void @dump_stack() #8
  br label %if.end10.i

if.end10.i:                                       ; preds = %do.end.i13, %if.then9.i, %if.end.i
  %owner_cpu.i = getelementptr inbounds %struct.rwlock_t, ptr %lock, i32 0, i32 2
  %24 = ptrtoint ptr %owner_cpu.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %owner_cpu.i, align 4
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 3
  %26 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu.i, align 4
  %cmp12.not.i = icmp eq i32 %25, %27
  br i1 %cmp12.not.i, label %debug_write_unlock.exit, label %if.then19.i, !prof !42

if.then19.i:                                      ; preds = %if.end10.i
  %call.i = tail call i32 @debug_locks_off() #6
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %debug_write_unlock.exit, label %do.end.i

do.end.i:                                         ; preds = %if.then19.i
  %28 = tail call i32 @llvm.read_register.i32(metadata !32) #6
  %and.i.i2 = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i2 to ptr
  %cpu.i3 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %cpu.i3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cpu.i3, align 4
  %task.i4 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 2
  %32 = ptrtoint ptr %task.i4 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %task.i4, align 8
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %33, i32 0, i32 101
  %pid.i.i = getelementptr inbounds %struct.task_struct, ptr %33, i32 0, i32 68
  %34 = ptrtoint ptr %pid.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pid.i.i, align 8
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.12, i32 noundef %31, ptr noundef %comm.i, i32 noundef %35, ptr noundef %lock) #8
  tail call void @dump_stack() #8
  br label %debug_write_unlock.exit

debug_write_unlock.exit:                          ; preds = %do.end.i, %if.then19.i, %if.end10.i
  %36 = ptrtoint ptr %owner.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr inttoptr (i32 -1 to ptr), ptr %owner.i, align 4
  %37 = ptrtoint ptr %owner_cpu.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile i32 -1, ptr %owner_cpu.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !62
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr %lock, i32 0) #6, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !50
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !51
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_locks_off() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

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

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !18, !19, !20, !21, !23, !25, !27, !29, !30, !31}
!llvm.named.register.sp = !{!32}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !{ptr @__ksymtab___raw_spin_lock_init, !1, !"__ksymtab___raw_spin_lock_init", i1 false, i1 false}
!1 = !{!"../kernel/locking/spinlock_debug.c", i32 32, i32 1}
!2 = !{ptr @__ksymtab___rwlock_init, !3, !"__ksymtab___rwlock_init", i1 false, i1 false}
!3 = !{!"../kernel/locking/spinlock_debug.c", i32 51, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../kernel/locking/spinlock_debug.c", i32 160, i32 2}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../kernel/locking/spinlock_debug.c", i32 86, i32 2}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../kernel/locking/spinlock_debug.c", i32 87, i32 2}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../kernel/locking/spinlock_debug.c", i32 60, i32 2}
!12 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @spin_dump._entry, !11, !"_entry", i1 false, i1 false}
!15 = !{ptr @spin_dump._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../kernel/locking/spinlock_debug.c", i32 63, i32 2}
!18 = !{ptr @spin_dump._entry.6, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @spin_dump._entry_ptr.8, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../kernel/locking/spinlock_debug.c", i32 100, i32 2}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../kernel/locking/spinlock_debug.c", i32 101, i32 2}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../kernel/locking/spinlock_debug.c", i32 102, i32 2}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../kernel/locking/spinlock_debug.c", i32 150, i32 2}
!29 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @rwlock_bug._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @rwlock_bug._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{!"sp"}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 1, !"min_enum_size", i32 4}
!35 = !{i32 8, !"branch-target-enforcement", i32 0}
!36 = !{i32 8, !"sign-return-address", i32 0}
!37 = !{i32 8, !"sign-return-address-all", i32 0}
!38 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!39 = !{i32 7, !"uwtable", i32 1}
!40 = !{i32 7, !"frame-pointer", i32 2}
!41 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!42 = !{!"branch_weights", i32 2000, i32 1}
!43 = !{!"branch_weights", i32 1, i32 2000}
!44 = !{i64 1638374, i64 1638397, i64 1638417, i64 1638441, i64 1638457}
!45 = !{i64 2149126773}
!46 = !{i64 2149129889}
!47 = !{i64 1638877, i64 1638900, i64 1638918, i64 1638950, i64 1638974}
!48 = !{i64 2149130250}
!49 = !{i64 2149130571}
!50 = !{i64 2149126245}
!51 = !{i64 2149126344, i64 2149126371, i64 2149126418, i64 2149126440, i64 2149126468, i64 2149126488}
!52 = !{i64 1641378, i64 1641400, i64 1641422, i64 1641443, i64 2149138099, i64 2149138125, i64 2149138172, i64 2149138194, i64 2149138222, i64 2149138242, i64 1641480, i64 1641503}
!53 = !{i64 2149138364}
!54 = !{i64 1642053, i64 1642076, i64 1642094, i64 1642117}
!55 = !{i64 2149139074}
!56 = !{i64 2149138685}
!57 = !{i64 1641727, i64 1641750, i64 1641770, i64 1641794, i64 1641810}
!58 = !{i64 1640041, i64 1640064, i64 2149136853, i64 2149136879, i64 2149136926, i64 2149136948, i64 2149136976, i64 2149136996, i64 1640091, i64 1640117, i64 1640133}
!59 = !{i64 2149137118}
!60 = !{i64 1640364, i64 1640387, i64 1640405, i64 1640423}
!61 = !{i64 2149137473}
!62 = !{i64 2149137794}
!63 = !{i64 1640712}
