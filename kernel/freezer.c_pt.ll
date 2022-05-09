; ModuleID = '/llk/IR_all_yes/kernel/freezer.c_pt.bc'
source_filename = "../kernel/freezer.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+system_freezing_cnt\22, \22a\22\09"
module asm "\09.weak\09__crc_system_freezing_cnt\09\09\09\09"
module asm "\09.long\09__crc_system_freezing_cnt\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_system_freezing_cnt:\09\09\09\09\09"
module asm "\09.asciz \09\22system_freezing_cnt\22\09\09\09\09\09"
module asm "__kstrtabns_system_freezing_cnt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+freezing_slow_path\22, \22a\22\09"
module asm "\09.weak\09__crc_freezing_slow_path\09\09\09\09"
module asm "\09.long\09__crc_freezing_slow_path\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_freezing_slow_path:\09\09\09\09\09"
module asm "\09.asciz \09\22freezing_slow_path\22\09\09\09\09\09"
module asm "__kstrtabns_freezing_slow_path:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__refrigerator\22, \22a\22\09"
module asm "\09.weak\09__crc___refrigerator\09\09\09\09"
module asm "\09.long\09__crc___refrigerator\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___refrigerator:\09\09\09\09\09"
module asm "\09.asciz \09\22__refrigerator\22\09\09\09\09\09"
module asm "__kstrtabns___refrigerator:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+set_freezable\22, \22a\22\09"
module asm "\09.weak\09__crc_set_freezable\09\09\09\09"
module asm "\09.long\09__crc_set_freezable\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_set_freezable:\09\09\09\09\09"
module asm "\09.asciz \09\22set_freezable\22\09\09\09\09\09"
module asm "__kstrtabns_set_freezable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.spinlock = type { %union.anon.9 }
%union.anon.9 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.96, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.restart_block = type { i32, ptr, %union.anon.74 }
%union.anon.74 = type { %struct.anon.75 }
%struct.anon.75 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.96 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@system_freezing_cnt = dso_local global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@__kstrtab_system_freezing_cnt = external dso_local constant [0 x i8], align 1
@__kstrtabns_system_freezing_cnt = external dso_local constant [0 x i8], align 1
@__ksymtab_system_freezing_cnt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @system_freezing_cnt to i32), ptr @__kstrtab_system_freezing_cnt, ptr @__kstrtabns_system_freezing_cnt }, section "___ksymtab+system_freezing_cnt", align 4
@pm_nosig_freezing = dso_local global { i8, [31 x i8] } zeroinitializer, align 32
@pm_freezing = dso_local global { i8, [31 x i8] } zeroinitializer, align 32
@__kstrtab_freezing_slow_path = external dso_local constant [0 x i8], align 1
@__kstrtabns_freezing_slow_path = external dso_local constant [0 x i8], align 1
@__ksymtab_freezing_slow_path = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @freezing_slow_path to i32), ptr @__kstrtab_freezing_slow_path, ptr @__kstrtabns_freezing_slow_path }, section "___ksymtab+freezing_slow_path", align 4
@__refrigerator.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 15, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"freezer\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"__refrigerator\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"kernel/freezer.c\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s entered refrigerator\0A\00", [39 x i8] zeroinitializer }, align 32
@freezer_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.9 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@__refrigerator.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 20, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s left refrigerator\0A\00", [42 x i8] zeroinitializer }, align 32
@__refrigerator.__already_done.5 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab___refrigerator = external dso_local constant [0 x i8], align 1
@__kstrtabns___refrigerator = external dso_local constant [0 x i8], align 1
@__ksymtab___refrigerator = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__refrigerator to i32), ptr @__kstrtab___refrigerator, ptr @__kstrtabns___refrigerator }, section "___ksymtab+__refrigerator", align 4
@__kstrtab_set_freezable = external dso_local constant [0 x i8], align 1
@__kstrtabns_set_freezable = external dso_local constant [0 x i8], align 1
@__ksymtab_set_freezable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @set_freezable to i32), ptr @__kstrtab_set_freezable, ptr @__kstrtabns_set_freezable }, section "___ksymtab+set_freezable", align 4
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"freezer_lock\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/freezer.h\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.8 = private unnamed_addr constant [20 x i8] c"system_freezing_cnt\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 16, i32 10 }
@___asan_gen_.11 = private unnamed_addr constant [18 x i8] c"pm_nosig_freezing\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 23, i32 6 }
@___asan_gen_.14 = private unnamed_addr constant [12 x i8] c"pm_freezing\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 22, i32 6 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 63, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant [13 x i8] c"freezer_lock\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 81, i32 2 }
@___asan_gen_.36 = private constant [20 x i8] c"../kernel/freezer.c\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 26, i32 8 }
@___asan_gen_.38 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.39 = private unnamed_addr constant [27 x i8] c"../include/linux/freezer.h\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 57, i32 2 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @__ksymtab___refrigerator, ptr @__ksymtab_freezing_slow_path, ptr @__ksymtab_set_freezable, ptr @__ksymtab_system_freezing_cnt, ptr @system_freezing_cnt, ptr @pm_nosig_freezing, ptr @pm_freezing, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @freezer_lock, ptr @.str.4, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @system_freezing_cnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm_nosig_freezing to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm_freezing to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @freezer_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @freezing_slow_path(ptr noundef %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 3
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, -2147450880
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %entry
  %stack.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 1
  %2 = ptrtoint ptr %stack.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stack.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %3, align 4
  %6 = and i32 %5, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool1.not = icmp eq i32 %6, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end3:                                          ; preds = %if.end
  %7 = load i8, ptr @pm_nosig_freezing, align 1, !range !42
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool4.not = icmp eq i8 %7, 0
  br i1 %tobool4.not, label %lor.lhs.false, label %if.end3.return_crit_edge

if.end3.return_crit_edge:                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

lor.lhs.false:                                    ; preds = %if.end3
  %call5 = tail call zeroext i1 @cgroup_freezing(ptr noundef %p) #4
  br i1 %call5, label %lor.lhs.false.return_crit_edge, label %if.end7

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end7:                                          ; preds = %lor.lhs.false
  %8 = load i8, ptr @pm_freezing, align 1, !range !42
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool8.not = icmp eq i8 %8, 0
  br i1 %tobool8.not, label %if.end7.if.end13_crit_edge, label %land.lhs.true

if.end7.if.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

land.lhs.true:                                    ; preds = %if.end7
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags, align 4
  %and10 = and i32 %10, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %land.lhs.true.return_crit_edge, label %land.lhs.true.if.end13_crit_edge

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end13:                                         ; preds = %land.lhs.true.if.end13_crit_edge, %if.end7.if.end13_crit_edge
  br label %return

return:                                           ; preds = %if.end13, %land.lhs.true.return_crit_edge, %lor.lhs.false.return_crit_edge, %if.end3.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %if.end13 ], [ false, %entry.return_crit_edge ], [ false, %if.end.return_crit_edge ], [ true, %lor.lhs.false.return_crit_edge ], [ true, %if.end3.return_crit_edge ], [ true, %land.lhs.true.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cgroup_freezing(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @__refrigerator(i1 noundef zeroext %check_kthr_stop) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !32) #4
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %3, align 128
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__refrigerator.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__refrigerator, %if.then)) #4
          to label %__here [label %if.then], !srcloc !43

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 101
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__refrigerator.__UNIQUE_ID_ddebug300, ptr noundef nonnull @.str.3, ptr noundef %comm) #4
  br label %__here

__here:                                           ; preds = %if.end103, %if.then, %entry
  %was_frozen.0.off0 = phi i1 [ true, %if.end103 ], [ false, %entry ], [ false, %if.then ]
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 212
  %10 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 ptrtoint (ptr blockaddress(@__refrigerator, %__here) to i32), ptr %task_state_change, align 4
  %11 = load ptr, ptr %task, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile i32 2, ptr %11, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !44
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @freezer_lock) #4
  %13 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task, align 8
  %flags = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags, align 4
  %or = or i32 %16, 65536
  store i32 %or, ptr %flags, align 4
  %17 = load ptr, ptr %task, align 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @system_freezing_cnt, i32 noundef 4) #4
  %18 = load volatile i32, ptr @system_freezing_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i, label %__here.if.then92_crit_edge, label %freezing.exit, !prof !45

__here.if.then92_crit_edge:                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then92

freezing.exit:                                    ; preds = %__here
  %call4.i = tail call zeroext i1 @freezing_slow_path(ptr noundef %17) #4
  br i1 %call4.i, label %lor.lhs.false, label %freezing.exit.if.then92_crit_edge

freezing.exit.if.then92_crit_edge:                ; preds = %freezing.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then92

lor.lhs.false:                                    ; preds = %freezing.exit
  br i1 %check_kthr_stop, label %land.lhs.true, label %lor.lhs.false.if.end96_crit_edge

lor.lhs.false.if.end96_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end96

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call91 = tail call zeroext i1 @kthread_should_stop() #4
  br i1 %call91, label %land.lhs.true.if.then92_crit_edge, label %land.lhs.true.if.end96_crit_edge

land.lhs.true.if.end96_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end96

land.lhs.true.if.then92_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then92

if.then92:                                        ; preds = %land.lhs.true.if.then92_crit_edge, %freezing.exit.if.then92_crit_edge, %__here.if.then92_crit_edge
  %19 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task, align 8
  %flags95 = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %flags95 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags95, align 4
  %and = and i32 %22, -65537
  store i32 %and, ptr %flags95, align 4
  br label %if.end96

if.end96:                                         ; preds = %if.then92, %land.lhs.true.if.end96_crit_edge, %lor.lhs.false.if.end96_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @freezer_lock) #4
  %23 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %task, align 8
  %flags99 = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %flags99 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags99, align 4
  %and100 = and i32 %26, 65536
  %tobool101.not = icmp eq i32 %and100, 0
  br i1 %tobool101.not, label %do.body104, label %if.end103

if.end103:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @schedule() #4
  br label %__here

do.body104:                                       ; preds = %if.end96
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__refrigerator.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__refrigerator, %if.then116)) #4
          to label %do.body125 [label %if.then116], !srcloc !43

if.then116:                                       ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #6
  %27 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %task, align 8
  %comm119 = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 101
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__refrigerator.__UNIQUE_ID_ddebug302, ptr noundef nonnull @.str.4, ptr noundef %comm119) #4
  br label %do.body125

do.body125:                                       ; preds = %if.then116, %do.body104
  %and127 = and i32 %5, 204
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and127)
  %tobool128.not = icmp eq i32 %and127, 0
  br i1 %tobool128.not, label %do.body125.__here181_crit_edge, label %land.rhs135

do.body125.__here181_crit_edge:                   ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #6
  br label %__here181

land.rhs135:                                      ; preds = %do.body125
  %.b217 = load i1, ptr @__refrigerator.__already_done.5, align 1
  br i1 %.b217, label %land.rhs135.__here181_crit_edge, label %if.then146, !prof !45

land.rhs135.__here181_crit_edge:                  ; preds = %land.rhs135
  call void @__sanitizer_cov_trace_pc() #6
  br label %__here181

if.then146:                                       ; preds = %land.rhs135
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @__refrigerator.__already_done.5, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 88, i32 noundef 9, ptr noundef null) #4
  br label %__here181

__here181:                                        ; preds = %if.then146, %land.rhs135.__here181_crit_edge, %do.body125.__here181_crit_edge
  %29 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %task, align 8
  %task_state_change185 = getelementptr inbounds %struct.task_struct, ptr %30, i32 0, i32 212
  %31 = ptrtoint ptr %task_state_change185 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 ptrtoint (ptr blockaddress(@__refrigerator, %__here181) to i32), ptr %task_state_change185, align 4
  %32 = load ptr, ptr %task, align 8
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile i32 %5, ptr %32, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !46
  ret i1 %was_frozen.0.off0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @freeze_task(ptr noundef %p) local_unnamed_addr #0 align 64 {
entry:
  %flags.i24 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !47
  %flags.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 3
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %1, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %do.body1, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body1:                                         ; preds = %entry
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @freezer_lock) #4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @system_freezing_cnt, i32 noundef 4) #4
  %2 = load volatile i32, ptr @system_freezing_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %do.body1.if.then9_crit_edge, label %freezing.exit, !prof !45

do.body1.if.then9_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then9

freezing.exit:                                    ; preds = %do.body1
  %call4.i = tail call zeroext i1 @freezing_slow_path(ptr noundef %p) #4
  br i1 %call4.i, label %lor.lhs.false, label %freezing.exit.if.then9_crit_edge

freezing.exit.if.then9_crit_edge:                 ; preds = %freezing.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then9

lor.lhs.false:                                    ; preds = %freezing.exit
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags.i, align 4
  %and.i22 = and i32 %4, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i22)
  %tobool.i23.not = icmp eq i32 %and.i22, 0
  br i1 %tobool.i23.not, label %if.end10, label %lor.lhs.false.if.then9_crit_edge

lor.lhs.false.if.then9_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then9

if.then9:                                         ; preds = %lor.lhs.false.if.then9_crit_edge, %freezing.exit.if.then9_crit_edge, %do.body1.if.then9_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @freezer_lock, i32 noundef %call3) #4
  br label %cleanup

if.end10:                                         ; preds = %lor.lhs.false
  %and = and i32 %4, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags.i24) #4
  %5 = ptrtoint ptr %flags.i24 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %flags.i24, align 4, !annotation !48
  %call.i.i = call ptr @__lock_task_sighand(ptr noundef %p, ptr noundef nonnull %flags.i24) #4
  %tobool.not.i25 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i25, label %if.then12.fake_signal_wake_up.exit_crit_edge, label %if.then.i

if.then12.fake_signal_wake_up.exit_crit_edge:     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #6
  br label %fake_signal_wake_up.exit

if.then.i:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #6
  call void @signal_wake_up_state(ptr noundef %p, i32 noundef 0) #4
  %sighand.i.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 112
  %6 = ptrtoint ptr %sighand.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sighand.i.i, align 4
  %8 = ptrtoint ptr %flags.i24 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags.i24, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %9) #4
  br label %fake_signal_wake_up.exit

fake_signal_wake_up.exit:                         ; preds = %if.then.i, %if.then12.fake_signal_wake_up.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags.i24) #4
  br label %if.end14

if.else:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  %call13 = tail call i32 @wake_up_state(ptr noundef %p, i32 noundef 1) #4
  br label %if.end14

if.end14:                                         ; preds = %if.else, %fake_signal_wake_up.exit
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @freezer_lock, i32 noundef %call3) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then9, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.then9 ], [ true, %if.end14 ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_state(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__thaw_task(ptr noundef %p) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @freezer_lock) #4
  %flags.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 3
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %1, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call6 = tail call i32 @wake_up_process(ptr noundef %p) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @freezer_lock, i32 noundef %call2) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @set_freezable() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 163) #4
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @freezer_lock) #4
  %0 = tail call i32 @llvm.read_register.i32(metadata !32) #4
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %flags = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, -32769
  store i32 %and, ptr %flags, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @freezer_lock) #4
  %6 = tail call i32 @llvm.read_register.i32(metadata !32) #4
  %and.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task.i, align 8
  %flags.i = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags.i, align 4
  %and.i4 = and i32 %11, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i4)
  %tobool.not.i = icmp eq i32 %and.i4, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @debug_check_no_locks_held() #4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  tail call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 57) #4
  %12 = tail call i32 @llvm.read_register.i32(metadata !32) #4
  %and.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task.i.i, align 8
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @system_freezing_cnt, i32 noundef 4) #4
  %16 = load volatile i32, ptr @system_freezing_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i.i.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.try_to_freeze.exit_crit_edge, label %freezing.exit.i.i, !prof !45

if.end.i.try_to_freeze.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %try_to_freeze.exit

freezing.exit.i.i:                                ; preds = %if.end.i
  %flags.i.i = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 3
  %17 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags.i.i, align 4
  %and.i2.i = and i32 %18, -2147450880
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i)
  %tobool.not.i.i = icmp eq i32 %and.i2.i, 0
  br i1 %tobool.not.i.i, label %if.end.i3.i, label %freezing.exit.i.i.try_to_freeze.exit_crit_edge

freezing.exit.i.i.try_to_freeze.exit_crit_edge:   ; preds = %freezing.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %try_to_freeze.exit

if.end.i3.i:                                      ; preds = %freezing.exit.i.i
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 1
  %19 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %stack.i.i.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %20, align 4
  %23 = and i32 %22, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool1.not.i.i = icmp eq i32 %23, 0
  br i1 %tobool1.not.i.i, label %if.end3.i.i, label %if.end.i3.i.try_to_freeze.exit_crit_edge

if.end.i3.i.try_to_freeze.exit_crit_edge:         ; preds = %if.end.i3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %try_to_freeze.exit

if.end3.i.i:                                      ; preds = %if.end.i3.i
  %24 = load i8, ptr @pm_nosig_freezing, align 1, !range !42
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool4.not.i.i = icmp eq i8 %24, 0
  br i1 %tobool4.not.i.i, label %lor.lhs.false.i.i, label %if.end3.i.i.if.end.i.i_crit_edge

if.end3.i.i.if.end.i.i_crit_edge:                 ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i.i

lor.lhs.false.i.i:                                ; preds = %if.end3.i.i
  %call5.i.i = tail call zeroext i1 @cgroup_freezing(ptr noundef %15) #4
  br i1 %call5.i.i, label %lor.lhs.false.i.i.if.end.i.i_crit_edge, label %if.end7.i.i

lor.lhs.false.i.i.if.end.i.i_crit_edge:           ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i.i

if.end7.i.i:                                      ; preds = %lor.lhs.false.i.i
  %25 = load i8, ptr @pm_freezing, align 1, !range !42
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool8.not.i.i = icmp eq i8 %25, 0
  br i1 %tobool8.not.i.i, label %if.end7.i.i.try_to_freeze.exit_crit_edge, label %land.lhs.true.i.i

if.end7.i.i.try_to_freeze.exit_crit_edge:         ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %try_to_freeze.exit

land.lhs.true.i.i:                                ; preds = %if.end7.i.i
  %26 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags.i.i, align 4
  %and10.i.i = and i32 %27, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i.i)
  %tobool11.not.i.i = icmp eq i32 %and10.i.i, 0
  br i1 %tobool11.not.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i.try_to_freeze.exit_crit_edge

land.lhs.true.i.i.try_to_freeze.exit_crit_edge:   ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %try_to_freeze.exit

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i.if.end.i.i_crit_edge, %lor.lhs.false.i.i.if.end.i.i_crit_edge, %if.end3.i.i.if.end.i.i_crit_edge
  %call6.i.i = tail call zeroext i1 @__refrigerator(i1 noundef zeroext false) #4
  br label %try_to_freeze.exit

try_to_freeze.exit:                               ; preds = %if.end.i.i, %land.lhs.true.i.i.try_to_freeze.exit_crit_edge, %if.end7.i.i.try_to_freeze.exit_crit_edge, %if.end.i3.i.try_to_freeze.exit_crit_edge, %freezing.exit.i.i.try_to_freeze.exit_crit_edge, %if.end.i.try_to_freeze.exit_crit_edge
  %retval.0.i.i = phi i1 [ %call6.i.i, %if.end.i.i ], [ false, %if.end.i.try_to_freeze.exit_crit_edge ], [ false, %freezing.exit.i.i.try_to_freeze.exit_crit_edge ], [ false, %if.end.i3.i.try_to_freeze.exit_crit_edge ], [ false, %land.lhs.true.i.i.try_to_freeze.exit_crit_edge ], [ false, %if.end7.i.i.try_to_freeze.exit_crit_edge ]
  ret i1 %retval.0.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__lock_task_sighand(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @signal_wake_up_state(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_check_no_locks_held() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind readonly }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !16, !17, !19, !21, !23, !25, !27, !29, !30}
!llvm.named.register.sp = !{!32}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !{ptr @system_freezing_cnt, !1, !"system_freezing_cnt", i1 false, i1 false}
!1 = !{!"../kernel/freezer.c", i32 16, i32 10}
!2 = !{ptr @__ksymtab_system_freezing_cnt, !3, !"__ksymtab_system_freezing_cnt", i1 false, i1 false}
!3 = !{!"../kernel/freezer.c", i32 17, i32 1}
!4 = !{ptr @__ksymtab_freezing_slow_path, !5, !"__ksymtab_freezing_slow_path", i1 false, i1 false}
!5 = !{!"../kernel/freezer.c", i32 53, i32 1}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../kernel/freezer.c", i32 63, i32 2}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @__refrigerator.__UNIQUE_ID_ddebug300, !7, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!12 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!13 = !{!"../kernel/freezer.c", i32 66, i32 3}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../kernel/freezer.c", i32 81, i32 2}
!16 = !{ptr @__refrigerator.__UNIQUE_ID_ddebug302, !15, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!17 = distinct !{null, !18, !"__already_done", i1 false, i1 false}
!18 = !{!"../kernel/freezer.c", i32 88, i32 2}
!19 = !{ptr @__ksymtab___refrigerator, !20, !"__ksymtab___refrigerator", i1 false, i1 false}
!20 = !{!"../kernel/freezer.c", i32 92, i32 1}
!21 = !{ptr @__ksymtab_set_freezable, !22, !"__ksymtab_set_freezable", i1 false, i1 false}
!22 = !{!"../kernel/freezer.c", i32 176, i32 1}
!23 = !{ptr @pm_freezing, !24, !"pm_freezing", i1 false, i1 false}
!24 = !{!"../kernel/freezer.c", i32 22, i32 6}
!25 = !{ptr @pm_nosig_freezing, !26, !"pm_nosig_freezing", i1 false, i1 false}
!26 = !{!"../kernel/freezer.c", i32 23, i32 6}
!27 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../kernel/freezer.c", i32 26, i32 8}
!29 = !{ptr @freezer_lock, !28, !"freezer_lock", i1 false, i1 false}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../include/linux/freezer.h", i32 57, i32 2}
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
!42 = !{i8 0, i8 2}
!43 = !{i64 2148719733, i64 2148719738, i64 2148719751, i64 2148719795, i64 2148719829, i64 2148719850}
!44 = !{i64 2155452099}
!45 = !{!"branch_weights", i32 2000, i32 1}
!46 = !{i64 2155459292}
!47 = !{i64 2154819284}
!48 = !{!"auto-init"}
