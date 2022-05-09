; ModuleID = '/llk/IR_all_yes/drivers/tty/vt/vt_ioctl.c_pt.bc'
source_filename = "../drivers/tty/vt/vt_ioctl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+pm_set_vt_switch\22, \22a\22\09"
module asm "\09.weak\09__crc_pm_set_vt_switch\09\09\09\09"
module asm "\09.long\09__crc_pm_set_vt_switch\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pm_set_vt_switch:\09\09\09\09\09"
module asm "\09.asciz \09\22pm_set_vt_switch\22\09\09\09\09\09"
module asm "__kstrtabns_pm_set_vt_switch:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.vc = type { ptr, %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.vt_spawn_console = type { %struct.spinlock, ptr, i32 }
%struct.vt_event_wait = type { %struct.list_head, %struct.vt_event, i32 }
%struct.vt_event = type { i32, i32, i32, [4 x i32] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.unimapdesc = type { i16, ptr }
%struct.kbd_repeat = type { i32, i32 }
%struct.console_font_op = type { i32, i32, i32, i32, i32, ptr }
%struct.vt_mode = type { i8, i8, i16, i16, i16 }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.79, %struct.anon.80, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.79 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.80 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.22 }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.57 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], %struct.pacct_struct, ptr, i32, ptr, i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.hlist_head = type { ptr }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.rlimit = type { i32, i32 }
%struct.pacct_struct = type { i32, i32, i32, i64, i64, i32, i32 }
%struct.vc_data = type { %struct.tty_port, %struct.vc_state, %struct.vc_state, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i32, i16, i16, i32, i16, %struct.console_font, i16, i32, i32, [16 x i32], %struct.vt_mode, ptr, i32, %struct.wait_queue_head, i16, i8, i32, [8 x i32], [48 x i8], ptr, i32, i32, i32, i16, ptr, ptr, ptr, ptr }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.78, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.78 = type { ptr }
%struct.vc_state = type { i32, i32, i8, [2 x i8], i8, i32, i8, i8, i8, i8 }
%struct.console_font = type { i32, i32, i32, ptr }
%struct.vt_stat = type { i16, i16, i16 }
%struct.vt_sizes = type { i16, i16, i16 }
%struct.vt_setactivate = type { i32, %struct.vt_mode }
%struct.vt_consize = type { i16, i16, i16, i16, i16, i16 }

@vt_event_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@vt_events = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @vt_events, ptr @vt_events }, [24 x i8] zeroinitializer }, align 32
@vt_event_waitqueue = internal global { %struct.wait_queue_head, [44 x i8] } { %struct.wait_queue_head { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, %struct.list_head { ptr getelementptr (i8, ptr @vt_event_waitqueue, i64 44), ptr getelementptr (i8, ptr @vt_event_waitqueue, i64 44) } }, [44 x i8] zeroinitializer }, align 32
@fg_console = external dso_local local_unnamed_addr global i32, align 4
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/tty/vt/vt_ioctl.c\00", [38 x i8] zeroinitializer }, align 32
@vc_cons = external dso_local local_unnamed_addr global [63 x %struct.vc], align 4
@vt_dont_switch = dso_local global { i8, [31 x i8] } zeroinitializer, align 32
@disable_vt_switch = internal global { i32, [28 x i8] } zeroinitializer, align 32
@vt_move_to_console.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str, ptr @.str.3, i8 1, i8 69, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vt_ioctl\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vt_move_to_console\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Suspend: Can't switch VCs.\00", [37 x i8] zeroinitializer }, align 32
@__kstrtab_pm_set_vt_switch = external dso_local constant [0 x i8], align 1
@__kstrtabns_pm_set_vt_switch = external dso_local constant [0 x i8], align 1
@__ksymtab_pm_set_vt_switch = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pm_set_vt_switch to i32), ptr @__kstrtab_pm_set_vt_switch, ptr @__kstrtabns_pm_set_vt_switch }, section "___ksymtab+pm_set_vt_switch", align 4
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vt_event_lock\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"vt_event_waitqueue.lock\00", [40 x i8] zeroinitializer }, align 32
@vt_spawn_con = external dso_local global %struct.vt_spawn_console, align 4
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@ignore_console_lock_warning = external dso_local global %struct.atomic_t, align 4
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@last_console = external dso_local local_unnamed_addr global i32, align 4
@switch.table.vt_kdsetmode = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 1, i32 0, i32 0], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [55 x i64] [i64 53, i64 32, i64 19247, i64 19248, i64 19249, i64 19250, i64 19251, i64 19258, i64 19259, i64 19260, i64 19261, i64 19264, i64 19265, i64 19268, i64 19269, i64 19270, i64 19271, i64 19272, i64 19273, i64 19274, i64 19275, i64 19276, i64 19277, i64 19278, i64 19282, i64 19298, i64 19299, i64 19300, i64 19301, i64 19302, i64 19303, i64 19304, i64 19305, i64 19306, i64 19312, i64 19313, i64 19314, i64 19450, i64 19451, i64 21532, i64 22016, i64 22017, i64 22018, i64 22019, i64 22021, i64 22022, i64 22023, i64 22024, i64 22025, i64 22026, i64 22027, i64 22028, i64 22029, i64 22030, i64 22031]
@__sancov_gen_cov_switch_values.9 = internal global [11 x i64] [i64 9, i64 32, i64 19264, i64 19265, i64 19302, i64 19303, i64 19304, i64 19305, i64 19306, i64 19312, i64 19313]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 32, i64 19302, i64 19303]
@___asan_gen_.11 = private unnamed_addr constant [14 x i8] c"vt_event_lock\00", align 1
@___asan_gen_.14 = private unnamed_addr constant [10 x i8] c"vt_events\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 98, i32 8 }
@___asan_gen_.17 = private unnamed_addr constant [19 x i8] c"vt_event_waitqueue\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 811, i32 7 }
@___asan_gen_.23 = private unnamed_addr constant [15 x i8] c"vt_dont_switch\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 42, i32 6 }
@___asan_gen_.26 = private unnamed_addr constant [18 x i8] c"disable_vt_switch\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 1270, i32 12 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 1302, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 99, i32 8 }
@___asan_gen_.42 = private constant [29 x i8] c"../drivers/tty/vt/vt_ioctl.c\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 100, i32 8 }
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.45 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 156, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant [26 x i8] c"switch.table.vt_kdsetmode\00", align 1
@llvm.compiler.used = appending global [14 x ptr] [ptr @__ksymtab_pm_set_vt_switch, ptr @vt_event_lock, ptr @vt_events, ptr @vt_event_waitqueue, ptr @.str, ptr @vt_dont_switch, ptr @disable_vt_switch, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.8, ptr @switch.table.vt_kdsetmode], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt_event_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt_events to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt_event_waitqueue to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt_dont_switch to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disable_vt_switch to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vt_kdsetmode to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vt_event_post(i32 noundef %event, i32 noundef %old, i32 noundef %new) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @vt_event_lock) #6
  %pos.027 = load ptr, ptr @vt_events, align 4
  %cmp.i.not28 = icmp eq ptr %pos.027, @vt_events
  br i1 %cmp.i.not28, label %for.end.thread, label %for.body.lr.ph

for.end.thread:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @vt_event_lock, i32 noundef %call2) #6
  br label %if.end18

for.body.lr.ph:                                   ; preds = %entry
  %add = add i32 %old, 1
  %add13 = add i32 %new, 1
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %pos.030 = phi ptr [ %pos.027, %for.body.lr.ph ], [ %pos.0, %cleanup.for.body_crit_edge ]
  %wake.029 = phi i32 [ 0, %for.body.lr.ph ], [ %wake.1, %cleanup.for.body_crit_edge ]
  %event7 = getelementptr inbounds %struct.vt_event_wait, ptr %pos.030, i32 0, i32 1
  %0 = ptrtoint ptr %event7 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %event7, align 4
  %and = and i32 %1, %event
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %event7 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %event, ptr %event7, align 4
  %oldev = getelementptr inbounds %struct.vt_event_wait, ptr %pos.030, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %oldev to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %add, ptr %oldev, align 4
  %newev = getelementptr inbounds %struct.vt_event_wait, ptr %pos.030, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %newev to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add13, ptr %newev, align 4
  %done = getelementptr inbounds %struct.vt_event_wait, ptr %pos.030, i32 0, i32 2
  %5 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %done, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.body.cleanup_crit_edge
  %wake.1 = phi i32 [ 1, %if.end ], [ %wake.029, %for.body.cleanup_crit_edge ]
  %6 = ptrtoint ptr %pos.030 to i32
  call void @__asan_load4_noabort(i32 %6)
  %pos.0 = load ptr, ptr %pos.030, align 4
  %cmp.i.not = icmp eq ptr %pos.0, @vt_events
  br i1 %cmp.i.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %cleanup
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @vt_event_lock, i32 noundef %call2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wake.1)
  %tobool16.not = icmp eq i32 %wake.1, 0
  br i1 %tobool16.not, label %for.end.if.end18_crit_edge, label %if.then17

for.end.if.end18_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then17:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__wake_up(ptr noundef nonnull @vt_event_waitqueue, i32 noundef 1, i32 noundef 1, ptr noundef null) #6
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %for.end.if.end18_crit_edge, %for.end.thread
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vt_waitactive(i32 noundef %n) local_unnamed_addr #0 align 64 {
entry:
  %vw = alloca %struct.vt_event_wait, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %vw) #6
  %0 = getelementptr inbounds i8, ptr %vw, i32 12
  %1 = call ptr @memset(ptr %0, i32 255, i32 24)
  %event = getelementptr inbounds %struct.vt_event_wait, ptr %vw, i32 0, i32 1
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %vw, i32 0, i32 1
  %done.i = getelementptr inbounds %struct.vt_event_wait, ptr %vw, i32 0, i32 2
  %newev = getelementptr inbounds %struct.vt_event_wait, ptr %vw, i32 0, i32 1, i32 2
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry
  %2 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %event, align 4
  %3 = ptrtoint ptr %vw to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %vw, ptr %vw, align 4
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %vw, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %done.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %done.i, align 4
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @vt_event_lock) #6
  %6 = load ptr, ptr @vt_events, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %vw, ptr noundef nonnull @vt_events, ptr noundef %6) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.body.__vt_event_queue.exit_crit_edge

do.body.__vt_event_queue.exit_crit_edge:          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %__vt_event_queue.exit

if.end.i.i.i:                                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %vw, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %vw to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %6, ptr %vw, align 4
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @vt_events, ptr %prev.i.i, align 4
  store volatile ptr %vw, ptr @vt_events, align 4
  br label %__vt_event_queue.exit

__vt_event_queue.exit:                            ; preds = %if.end.i.i.i, %do.body.__vt_event_queue.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @vt_event_lock, i32 noundef %call2.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fg_console to i32))
  %10 = load i32, ptr @fg_console, align 4
  %add = add i32 %10, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %n)
  %cmp = icmp eq i32 %add, %n
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %__vt_event_queue.exit
  %call2.i8 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @vt_event_lock) #6
  %call.i.i.i9 = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %vw) #6
  br i1 %call.i.i.i9, label %if.end.i.i.i10, label %if.then.__vt_event_dequeue.exit_crit_edge

if.then.__vt_event_dequeue.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %__vt_event_dequeue.exit

if.end.i.i.i10:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %vw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vw, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %__vt_event_dequeue.exit

__vt_event_dequeue.exit:                          ; preds = %if.end.i.i.i10, %if.then.__vt_event_dequeue.exit_crit_edge
  %17 = ptrtoint ptr %vw to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 256 to ptr), ptr %vw, align 4
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @vt_event_lock, i32 noundef %call2.i8) #6
  br label %cleanup

if.end:                                           ; preds = %__vt_event_queue.exit
  call fastcc void @__vt_event_wait(ptr noundef nonnull %vw)
  %call2.i12 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @vt_event_lock) #6
  %call.i.i.i13 = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %vw) #6
  br i1 %call.i.i.i13, label %if.end.i.i.i16, label %if.end.__vt_event_dequeue.exit18_crit_edge

if.end.__vt_event_dequeue.exit18_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %__vt_event_dequeue.exit18

if.end.i.i.i16:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i, align 4
  %21 = ptrtoint ptr %vw to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %vw, align 4
  %prev1.i.i.i.i15 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i.i15 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev1.i.i.i.i15, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %20, align 4
  br label %__vt_event_dequeue.exit18

__vt_event_dequeue.exit18:                        ; preds = %if.end.i.i.i16, %if.end.__vt_event_dequeue.exit18_crit_edge
  %25 = ptrtoint ptr %vw to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 256 to ptr), ptr %vw, align 4
  %26 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @vt_event_lock, i32 noundef %call2.i12) #6
  %27 = ptrtoint ptr %done.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %done.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp2 = icmp eq i32 %28, 0
  br i1 %cmp2, label %__vt_event_dequeue.exit18.cleanup_crit_edge, label %do.cond

__vt_event_dequeue.exit18.cleanup_crit_edge:      ; preds = %__vt_event_dequeue.exit18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.cond:                                          ; preds = %__vt_event_dequeue.exit18
  %29 = ptrtoint ptr %newev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %newev, align 4
  %cmp6.not = icmp eq i32 %30, %n
  br i1 %cmp6.not, label %do.cond.cleanup_crit_edge, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.cond.cleanup_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %do.cond.cleanup_crit_edge, %__vt_event_dequeue.exit18.cleanup_crit_edge, %__vt_event_dequeue.exit
  %retval.0 = phi i32 [ 0, %__vt_event_dequeue.exit ], [ 0, %do.cond.cleanup_crit_edge ], [ -4, %__vt_event_dequeue.exit18.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %vw) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__vt_event_wait(ptr nocapture noundef readonly %vw) unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 153) #6
  %done = getelementptr inbounds %struct.vt_event_wait, ptr %vw, i32 0, i32 2
  %0 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %done, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end11_crit_edge

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #6
  %2 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #6
  %call20 = call i32 @prepare_to_wait_event(ptr noundef nonnull @vt_event_waitqueue, ptr noundef nonnull %__wq_entry, i32 noundef 1) #6
  %3 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %done, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool6.not21 = icmp eq i32 %4, 0
  br i1 %tobool6.not21, label %if.then.if.end_crit_edge, label %if.then.for.end_crit_edge

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.then.if.end_crit_edge:                         ; preds = %if.then
  br label %if.end

if.end:                                           ; preds = %cleanup.if.end_crit_edge, %if.then.if.end_crit_edge
  %call22 = phi i32 [ %call, %cleanup.if.end_crit_edge ], [ %call20, %if.then.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool8.not = icmp eq i32 %call22, 0
  br i1 %tobool8.not, label %cleanup, label %if.end.__out_crit_edge

if.end.__out_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %__out

cleanup:                                          ; preds = %if.end
  call void @schedule() #6
  %call = call i32 @prepare_to_wait_event(ptr noundef nonnull @vt_event_waitqueue, ptr noundef nonnull %__wq_entry, i32 noundef 1) #6
  %5 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %done, align 4
  %tobool6.not = icmp eq i32 %6, 0
  br i1 %tobool6.not, label %cleanup.if.end_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

cleanup.if.end_crit_edge:                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then.for.end_crit_edge
  call void @finish_wait(ptr noundef nonnull @vt_event_waitqueue, ptr noundef nonnull %__wq_entry) #6
  br label %__out

__out:                                            ; preds = %for.end, %if.end.__out_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #6
  br label %if.end11

if.end11:                                         ; preds = %__out, %entry.if.end11_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vt_ioctl(ptr noundef %tty, i32 noundef %cmd, i32 noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i.i = alloca %struct.unimapdesc, align 8
  %kbrep.i = alloca %struct.kbd_repeat, align 4
  %op.i = alloca %struct.console_font_op, align 4
  %tmp = alloca %struct.vt_mode, align 8
  %tmp36 = alloca %struct.vt_mode, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %2 = inttoptr i32 %arg to ptr
  %3 = tail call i32 @llvm.read_register.i32(metadata !28) #6
  %and.i366 = and i32 %3, -16384
  %4 = inttoptr i32 %and.i366 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %signal = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 111
  %7 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %signal, align 16
  %tty1 = getelementptr inbounds %struct.signal_struct, ptr %8, i32 0, i32 25
  %9 = ptrtoint ptr %tty1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tty1, align 8
  %cmp = icmp eq ptr %10, %tty
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call zeroext i1 @capable(i32 noundef 26) #6
  br i1 %call2, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %tobool = phi i1 [ true, %if.then ], [ false, %lor.lhs.false.if.end_crit_edge ]
  %11 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %driver_data, align 4
  %vc_num.i = getelementptr inbounds %struct.vc_data, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %vc_num.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %vc_num.i, align 4
  %conv.i = zext i16 %14 to i32
  %15 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %if.end.cleanup254.fold.split_crit_edge [
    i32 19247, label %sw.bb.i
    i32 19248, label %sw.bb4.i
    i32 19251, label %sw.bb14.i
    i32 19282, label %sw.bb17.i
    i32 19258, label %sw.bb33.i
    i32 19259, label %sw.bb38.i
    i32 19260, label %if.end.cleanup254_crit_edge
    i32 19261, label %if.end.cleanup254_crit_edge433
    i32 19269, label %sw.bb56.i
    i32 19268, label %sw.bb64.i
    i32 19299, label %sw.bb81.i
    i32 19298, label %sw.bb83.i
    i32 19276, label %if.end.sw.bb100.i_crit_edge
    i32 19277, label %if.end.sw.bb100.i_crit_edge434
    i32 19270, label %if.end.sw.bb107.i_crit_edge
    i32 19271, label %if.end.sw.bb107.i_crit_edge435
    i32 19272, label %if.end.sw.bb111.i_crit_edge
    i32 19273, label %if.end.sw.bb111.i_crit_edge436
    i32 19274, label %if.end.sw.bb115.i_crit_edge
    i32 19450, label %if.end.sw.bb115.i_crit_edge437
    i32 19275, label %if.end.sw.bb115.i_crit_edge438
    i32 19451, label %if.end.sw.bb115.i_crit_edge439
    i32 19300, label %if.end.sw.bb119.i_crit_edge
    i32 19301, label %if.end.sw.bb119.i_crit_edge440
    i32 19249, label %if.end.sw.bb119.i_crit_edge441
    i32 19250, label %if.end.sw.bb119.i_crit_edge442
    i32 19278, label %sw.bb123.i
    i32 19314, label %sw.bb140.i
    i32 19313, label %if.end.sw.bb.i370_crit_edge
    i32 19312, label %if.end.sw.bb1.i_crit_edge
    i32 19265, label %if.end.sw.bb3.i_crit_edge
    i32 19264, label %if.end.sw.bb8.i_crit_edge
    i32 19306, label %if.end.sw.bb10.i_crit_edge
    i32 19305, label %if.end.sw.bb15.i_crit_edge
    i32 19304, label %if.end.sw.bb17.i373_crit_edge
    i32 19303, label %if.end.sw.bb22.i_crit_edge
    i32 19302, label %if.end.sw.bb22.i_crit_edge443
    i32 21532, label %sw.bb
    i32 22018, label %sw.bb13
    i32 22017, label %sw.bb35
    i32 22019, label %sw.bb45
    i32 22016, label %sw.bb83
    i32 22022, label %sw.bb112
    i32 22031, label %sw.bb136
    i32 22023, label %sw.bb141
    i32 22021, label %sw.bb153
    i32 22024, label %sw.bb158
    i32 22025, label %sw.bb169
    i32 22026, label %sw.bb223
    i32 22027, label %sw.bb228
    i32 22028, label %sw.bb232
    i32 22029, label %sw.bb236
    i32 22030, label %sw.bb252
  ]

if.end.sw.bb22.i_crit_edge443:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb22.i

if.end.sw.bb22.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb22.i

if.end.sw.bb17.i373_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb17.i373

if.end.sw.bb15.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb15.i

if.end.sw.bb10.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb10.i

if.end.sw.bb8.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb8.i

if.end.sw.bb3.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3.i

if.end.sw.bb1.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i

if.end.sw.bb.i370_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i370

if.end.sw.bb119.i_crit_edge442:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb119.i

if.end.sw.bb119.i_crit_edge441:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb119.i

if.end.sw.bb119.i_crit_edge440:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb119.i

if.end.sw.bb119.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb119.i

if.end.sw.bb115.i_crit_edge439:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb115.i

if.end.sw.bb115.i_crit_edge438:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb115.i

if.end.sw.bb115.i_crit_edge437:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb115.i

if.end.sw.bb115.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb115.i

if.end.sw.bb111.i_crit_edge436:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb111.i

if.end.sw.bb111.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb111.i

if.end.sw.bb107.i_crit_edge435:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb107.i

if.end.sw.bb107.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb107.i

if.end.sw.bb100.i_crit_edge434:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb100.i

if.end.sw.bb100.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb100.i

if.end.cleanup254_crit_edge433:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup254

if.end.cleanup254_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup254

if.end.cleanup254.fold.split_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup254.fold.split

sw.bb.i:                                          ; preds = %if.end
  br i1 %tobool, label %if.end.i, label %sw.bb.i.cleanup254_crit_edge

sw.bb.i.cleanup254_crit_edge:                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup254

if.end.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %arg)
  %tobool1.not.i = icmp eq i32 %arg, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end3.i_crit_edge, label %if.then2.i

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %div.i = udiv i32 1193182, %arg
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then2.i, %if.end.i.if.end3.i_crit_edge
  %arg.addr.0.i = phi i32 [ %div.i, %if.then2.i ], [ 0, %if.end.i.if.end3.i_crit_edge ]
  tail call void @kd_mksound(i32 noundef %arg.addr.0.i, i32 noundef 0) #6
  br label %sw.epilog.i

sw.bb4.i:                                         ; preds = %if.end
  br i1 %tobool, label %if.else.i.i, label %sw.bb4.i.cleanup254_crit_edge

sw.bb4.i.cleanup254_crit_edge:                    ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup254

if.else.i.i:                                      ; preds = %sw.bb4.i
  %shr.i = lshr i32 %arg, 16
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %shr.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool8.not.i = icmp eq i32 %call2.i.i, 0
  %and9.i = and i32 %arg, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not316.i = icmp eq i32 %and9.i, 0
  %tobool10.not.i = or i1 %tobool10.not316.i, %tobool8.not.i
  br i1 %tobool10.not.i, label %if.else.i.i.if.end13.i_crit_edge, label %if.then11.i

if.else.i.i.if.end13.i_crit_edge:                 ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13.i

if.then11.i:                                      ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %div12.i = udiv i32 1193182, %and9.i
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then11.i, %if.else.i.i.if.end13.i_crit_edge
  %count.0.i = phi i32 [ %div12.i, %if.then11.i ], [ 0, %if.else.i.i.if.end13.i_crit_edge ]
  tail call void @kd_mksound(i32 noundef %count.0.i, i32 noundef %call2.i.i) #6
  br label %sw.epilog.i

sw.bb14.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 328) #6
  %16 = tail call i32 @llvm.read_register.i32(metadata !28) #6
  %and.i.i.i.i368 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i368 to ptr
  %cpu_domain.i.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 4
  %18 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i) #4, !srcloc !38
  %and.i.i = and i32 %18, -13
  %or.i.i = or i32 %and.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i) #6, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  %19 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %2, i8 2, i32 -1226833921) #6, !srcloc !41
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %18) #6, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  br label %vt_k_ioctl.exit

sw.bb17.i:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %kbrep.i) #6
  %20 = ptrtoint ptr %kbrep.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %kbrep.i, align 4, !annotation !42
  %21 = getelementptr inbounds %struct.kbd_repeat, ptr %kbrep.i, i32 0, i32 1
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %21, align 4, !annotation !42
  %call18.i = tail call zeroext i1 @capable(i32 noundef 26) #6
  br i1 %call18.i, label %if.end59.i.i.i, label %sw.bb17.i.cleanup.thread.i_crit_edge

sw.bb17.i.cleanup.thread.i_crit_edge:             ; preds = %sw.bb17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread.i

if.end59.i.i.i:                                   ; preds = %sw.bb17.i
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 156) #6
  %call.i.i.i369 = tail call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i.i369, label %if.end59.i.i.i.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end59.i.i.i.if.then11.i.i.i_crit_edge:         ; preds = %if.end59.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end59.i.i.i
  %23 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 8, i32 -1226833920) #9
  %asmresult.i.i.i = extractvalue { i32, i32 } %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !43

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %kbrep.i, i32 noundef 8) #6
  %24 = call i32 @llvm.read_register.i32(metadata !28) #6
  %and.i.i.i.i.i.i.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 4
  %26 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #4, !srcloc !38
  %and.i.i.i.i.i = and i32 %26, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #6, !srcloc !39
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %kbrep.i, ptr noundef %2, i32 noundef 8) #6
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %26) #6, !srcloc !39
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end24.i, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !43

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %if.end59.i.i.i.if.then11.i.i.i_crit_edge
  %res.0.i.i296.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 8, %if.end59.i.i.i.if.then11.i.i.i_crit_edge ], [ 8, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i230.i = sub i32 8, %res.0.i.i296.i
  %add.ptr.i.i.i = getelementptr i8, ptr %kbrep.i, i32 %sub.i.i230.i
  %27 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i296.i)
  br label %cleanup.thread.i

if.end24.i:                                       ; preds = %if.end.i.i.i
  %call25.i = call i32 @kbd_rate(ptr noundef nonnull %kbrep.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %if.end59.i.i235.i, label %if.end24.i.cleanup.thread.i_crit_edge

if.end24.i.cleanup.thread.i_crit_edge:            ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread.i

if.end59.i.i235.i:                                ; preds = %if.end24.i
  call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 174) #6
  %call.i.i236.i = call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i236.i, label %cleanup.thread302.i, label %cleanup.i

cleanup.thread.i:                                 ; preds = %if.end24.i.cleanup.thread.i_crit_edge, %if.then11.i.i.i, %sw.bb17.i.cleanup.thread.i_crit_edge
  %retval.0.ph.i = phi i32 [ %call25.i, %if.end24.i.cleanup.thread.i_crit_edge ], [ -1, %sw.bb17.i.cleanup.thread.i_crit_edge ], [ -14, %if.then11.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %kbrep.i) #6
  br label %vt_k_ioctl.exit

cleanup.thread302.i:                              ; preds = %if.end59.i.i235.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %kbrep.i) #6
  br label %cleanup254

cleanup.i:                                        ; preds = %if.end59.i.i235.i
  %call.i.i.i240.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %kbrep.i, i32 noundef 8) #6
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %kbrep.i, i32 noundef 8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i)
  %tobool30.not.i = icmp eq i32 %call.i12.i.i.i, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %kbrep.i) #6
  br i1 %tobool30.not.i, label %cleanup.i.sw.epilog.i_crit_edge, label %cleanup.i.cleanup254_crit_edge

cleanup.i.cleanup254_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup254

cleanup.i.sw.epilog.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb33.i:                                        ; preds = %if.end
  br i1 %tobool, label %if.end36.i, label %sw.bb33.i.cleanup254_crit_edge

sw.bb33.i.cleanup254_crit_edge:                   ; preds = %sw.bb33.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup254

if.end36.i:                                       ; preds = %sw.bb33.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @console_lock() #6
  %call37.i = tail call fastcc i32 @vt_kdsetmode(ptr noundef %12, i32 noundef %arg) #6
  tail call void @console_unlock() #6
  br label %vt_k_ioctl.exit

sw.bb38.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %vc_mode.i = getelementptr inbounds %struct.vc_data, ptr %12, i32 0, i32 17
  %28 = ptrtoint ptr %vc_mode.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %vc_mode.i, align 4
  %conv43.i = zext i8 %29 to i32
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 386) #6
  %30 = tail call i32 @llvm.read_register.i32(metadata !28) #6
  %and.i.i.i243.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i243.i to ptr
  %cpu_domain.i.i244.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 4
  %32 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i244.i) #4, !srcloc !38
  %and.i245.i = and i32 %32, -13
  %or.i246.i = or i32 %and.i245.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i246.i) #6, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  %33 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %2, i32 %conv43.i, i32 -1226833921) #6, !srcloc !44
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %32) #6, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  br label %vt_k_ioctl.exit

sw.bb56.i:                                        ; preds = %if.end
  br i1 %tobool, label %if.end59.i, label %sw.bb56.i.cleanup254_crit_edge

sw.bb56.i.cleanup254_crit_edge:                   ; preds = %sw.bb56.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup254

if.end59.i:                                       ; preds = %sw.bb56.i
  %call60.i = tail call i32 @vt_do_kdskbmode(i32 noundef %conv.i, i32 noundef %arg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60.i)
  %tobool61.not.i = icmp eq i32 %call60.i, 0
  br i1 %tobool61.not.i, label %if.end63.i, label %if.end59.i.vt_k_ioctl.exit_crit_edge

if.end59.i.vt_k_ioctl.exit_crit_edge:             ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %vt_k_ioctl.exit

if.end63.i:                                       ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @tty_ldisc_flush(ptr noundef %tty) #6
  br label %sw.epilog.i

sw.bb64.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call69.i = tail call i32 @vt_do_kdgkbmode(i32 noundef %conv.i) #6
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 406) #6
  %34 = tail call i32 @llvm.read_register.i32(metadata !28) #6
  %and.i.i.i247.i = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i247.i to ptr
  %cpu_domain.i.i248.i = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 4
  %36 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i248.i) #4, !srcloc !38
  %and.i249.i = and i32 %36, -13
  %or.i250.i = or i32 %and.i249.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i250.i) #6, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  %37 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %2, i32 %call69.i, i32 -1226833921) #6, !srcloc !45
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %36) #6, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  br label %vt_k_ioctl.exit

sw.bb81.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call82.i = tail call i32 @vt_do_kdskbmeta(i32 noundef %conv.i, i32 noundef %arg) #6
  br label %vt_k_ioctl.exit

sw.bb83.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call88.i = tail call i32 @vt_do_kdgkbmeta(i32 noundef %conv.i) #6
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 415) #6
  %38 = tail call i32 @llvm.read_register.i32(metadata !28) #6
  %and.i.i.i251.i = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i251.i to ptr
  %cpu_domain.i.i252.i = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 4
  %40 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i252.i) #4, !srcloc !38
  %and.i253.i = and i32 %40, -13
  %or.i254.i = or i32 %and.i253.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i254.i) #6, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  %41 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %2, i32 %call88.i, i32 -1226833921) #6, !srcloc !46
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %40) #6, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  br label %vt_k_ioctl.exit

sw.bb100.i:                                       ; preds = %if.end.sw.bb100.i_crit_edge, %if.end.sw.bb100.i_crit_edge434
  %call101.i = tail call zeroext i1 @capable(i32 noundef 26) #6
  %spec.select226.i = and i1 %tobool, %call101.i
  %conv105.i = zext i1 %spec.select226.i to i32
  %call106.i = tail call i32 @vt_do_kbkeycode_ioctl(i32 noundef %cmd, ptr noundef %2, i32 noundef %conv105.i) #6
  br label %vt_k_ioctl.exit

sw.bb107.i:                                       ; preds = %if.end.sw.bb107.i_crit_edge, %if.end.sw.bb107.i_crit_edge435
  %conv109.i = zext i1 %tobool to i32
  %call110.i = tail call i32 @vt_do_kdsk_ioctl(i32 noundef %cmd, ptr noundef %2, i32 noundef %conv109.i, i32 noundef %conv.i) #6
  br label %vt_k_ioctl.exit

sw.bb111.i:                                       ; preds = %if.end.sw.bb111.i_crit_edge, %if.end.sw.bb111.i_crit_edge436
  %conv113.i = zext i1 %tobool to i32
  %call114.i = tail call i32 @vt_do_kdgkb_ioctl(i32 noundef %cmd, ptr noundef %2, i32 noundef %conv113.i) #6
  br label %vt_k_ioctl.exit

sw.bb115.i:                                       ; preds = %if.end.sw.bb115.i_crit_edge, %if.end.sw.bb115.i_crit_edge437, %if.end.sw.bb115.i_crit_edge438, %if.end.sw.bb115.i_crit_edge439
  %conv117.i = zext i1 %tobool to i32
  %call118.i = tail call i32 @vt_do_diacrit(i32 noundef %cmd, ptr noundef %2, i32 noundef %conv117.i) #6
  br label %vt_k_ioctl.exit

sw.bb119.i:                                       ; preds = %if.end.sw.bb119.i_crit_edge, %if.end.sw.bb119.i_crit_edge440, %if.end.sw.bb119.i_crit_edge441, %if.end.sw.bb119.i_crit_edge442
  %conv121.i = zext i1 %tobool to i32
  %call122.i = tail call i32 @vt_do_kdskled(i32 noundef %conv.i, i32 noundef %cmd, i32 noundef %arg, i32 noundef %conv121.i) #6
  br label %vt_k_ioctl.exit

sw.bb123.i:                                       ; preds = %if.end
  br i1 %tobool, label %lor.lhs.false.i, label %sw.bb123.i.cleanup254_crit_edge

sw.bb123.i.cleanup254_crit_edge:                  ; preds = %sw.bb123.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup254

lor.lhs.false.i:                                  ; preds = %sw.bb123.i
  %call125.i = tail call zeroext i1 @capable(i32 noundef 5) #6
  br i1 %call125.i, label %if.end127.i, label %lor.lhs.false.i.cleanup254_crit_edge

lor.lhs.false.i.cleanup254_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup254

if.end127.i:                                      ; preds = %lor.lhs.false.i
  %42 = add i32 %arg, -65
  call void @__sanitizer_cov_trace_const_cmp4(i32 -64, i32 %42)
  %43 = icmp ult i32 %42, -64
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %arg)
  %cmp133.i = icmp eq i32 %arg, 9
  %or.cond227.i = or i1 %cmp133.i, %43
  br i1 %or.cond227.i, label %if.end127.i.cleanup254_crit_edge, label %if.end136.i

if.end127.i.cleanup254_crit_edge:                 ; preds = %if.end127.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup254

if.end136.i:                                      ; preds = %if.end127.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @vt_spawn_con) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.vt_spawn_console, ptr @vt_spawn_con, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.vt_spawn_console, ptr @vt_spawn_con, i32 0, i32 1), align 4
  tail call void @put_pid(ptr noundef %44) #6
  %45 = tail call i32 @llvm.read_register.i32(metadata !28) #6
  %and.i293.i = and i32 %45, -16384
  %46 = inttoptr i32 %and.i293.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %task.i, align 8
  %thread_pid.i.i = getelementptr inbounds %struct.task_struct, ptr %48, i32 0, i32 78
  %49 = ptrtoint ptr %thread_pid.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %thread_pid.i.i, align 16
  %call139.i = tail call fastcc ptr @get_pid(ptr noundef %50) #6
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.vt_spawn_console, ptr @vt_spawn_con, i32 0, i32 1) to i32))
  store ptr %50, ptr getelementptr inbounds (%struct.vt_spawn_console, ptr @vt_spawn_con, i32 0, i32 1), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.vt_spawn_console, ptr @vt_spawn_con, i32 0, i32 2) to i32))
  store i32 %arg, ptr getelementptr inbounds (%struct.vt_spawn_console, ptr @vt_spawn_con, i32 0, i32 2), align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @vt_spawn_con) #6
  br label %sw.epilog.i

sw.bb140.i:                                       ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %op.i) #6
  %51 = call ptr @memset(ptr %op.i, i32 255, i32 24)
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 156) #6
  %call.i.i259.i = tail call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i259.i, label %sw.bb140.i.if.then11.i.i275.i_crit_edge, label %land.lhs.true.i.i262.i

sw.bb140.i.if.then11.i.i275.i_crit_edge:          ; preds = %sw.bb140.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i275.i

land.lhs.true.i.i262.i:                           ; preds = %sw.bb140.i
  %52 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 24, i32 -1226833920) #9
  %asmresult.i.i260.i = extractvalue { i32, i32 } %52, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i260.i)
  %cmp.i6.i261.i = icmp eq i32 %asmresult.i.i260.i, 0
  br i1 %cmp.i6.i261.i, label %if.end.i.i272.i, label %land.lhs.true.i.i262.i.if.then11.i.i275.i_crit_edge, !prof !43

land.lhs.true.i.i262.i.if.then11.i.i275.i_crit_edge: ; preds = %land.lhs.true.i.i262.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i275.i

if.end.i.i272.i:                                  ; preds = %land.lhs.true.i.i262.i
  %call.i.i.i263.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %op.i, i32 noundef 24) #6
  %53 = call i32 @llvm.read_register.i32(metadata !28) #6
  %and.i.i.i.i.i.i264.i = and i32 %53, -16384
  %54 = inttoptr i32 %and.i.i.i.i.i.i264.i to ptr
  %cpu_domain.i.i.i.i.i265.i = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 4
  %55 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i265.i) #4, !srcloc !38
  %and.i.i.i.i266.i = and i32 %55, -13
  %or.i.i.i.i267.i = or i32 %and.i.i.i.i266.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i267.i) #6, !srcloc !39
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  %call1.i.i.i268.i = call i32 @arm_copy_from_user(ptr noundef nonnull %op.i, ptr noundef %2, i32 noundef 24) #6
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %55) #6, !srcloc !39
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i268.i)
  %tobool4.not.i.i271.i = icmp eq i32 %call1.i.i.i268.i, 0
  br i1 %tobool4.not.i.i271.i, label %if.end144.i, label %if.end.i.i272.i.if.then11.i.i275.i_crit_edge, !prof !43

if.end.i.i272.i.if.then11.i.i275.i_crit_edge:     ; preds = %if.end.i.i272.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i275.i

if.then11.i.i275.i:                               ; preds = %if.end.i.i272.i.if.then11.i.i275.i_crit_edge, %land.lhs.true.i.i262.i.if.then11.i.i275.i_crit_edge, %sw.bb140.i.if.then11.i.i275.i_crit_edge
  %res.0.i.i270307.i = phi i32 [ %call1.i.i.i268.i, %if.end.i.i272.i.if.then11.i.i275.i_crit_edge ], [ 24, %sw.bb140.i.if.then11.i.i275.i_crit_edge ], [ 24, %land.lhs.true.i.i262.i.if.then11.i.i275.i_crit_edge ]
  %sub.i.i273.i = sub i32 24, %res.0.i.i270307.i
  %add.ptr.i.i274.i = getelementptr i8, ptr %op.i, i32 %sub.i.i273.i
  %56 = call ptr @memset(ptr %add.ptr.i.i274.i, i32 0, i32 %res.0.i.i270307.i)
  br label %cleanup159.thread.i

if.end144.i:                                      ; preds = %if.end.i.i272.i
  br i1 %tobool, label %if.end144.i.if.end150.i_crit_edge, label %land.lhs.true.i

if.end144.i.if.end150.i_crit_edge:                ; preds = %if.end144.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end150.i

land.lhs.true.i:                                  ; preds = %if.end144.i
  %57 = ptrtoint ptr %op.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %op.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %58)
  %cmp147.not.i = icmp eq i32 %58, 1
  br i1 %cmp147.not.i, label %land.lhs.true.i.if.end150.i_crit_edge, label %land.lhs.true.i.cleanup159.thread.i_crit_edge

land.lhs.true.i.cleanup159.thread.i_crit_edge:    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup159.thread.i

land.lhs.true.i.if.end150.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end150.i

if.end150.i:                                      ; preds = %land.lhs.true.i.if.end150.i_crit_edge, %if.end144.i.if.end150.i_crit_edge
  %call151.i = call i32 @con_font_op(ptr noundef %12, ptr noundef nonnull %op.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call151.i)
  %tobool152.not.i = icmp eq i32 %call151.i, 0
  br i1 %tobool152.not.i, label %if.end59.i.i282.i, label %if.end150.i.cleanup159.thread.i_crit_edge

if.end150.i.cleanup159.thread.i_crit_edge:        ; preds = %if.end150.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup159.thread.i

if.end59.i.i282.i:                                ; preds = %if.end150.i
  call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 174) #6
  %call.i.i283.i = call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i283.i, label %cleanup159.thread313.i, label %cleanup159.i

cleanup159.thread.i:                              ; preds = %if.end150.i.cleanup159.thread.i_crit_edge, %land.lhs.true.i.cleanup159.thread.i_crit_edge, %if.then11.i.i275.i
  %retval.1.ph.i = phi i32 [ %call151.i, %if.end150.i.cleanup159.thread.i_crit_edge ], [ -1, %land.lhs.true.i.cleanup159.thread.i_crit_edge ], [ -14, %if.then11.i.i275.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %op.i) #6
  br label %vt_k_ioctl.exit

cleanup159.thread313.i:                           ; preds = %if.end59.i.i282.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %op.i) #6
  br label %cleanup254

cleanup159.i:                                     ; preds = %if.end59.i.i282.i
  %call.i.i.i287.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %op.i, i32 noundef 24) #6
  %call.i12.i.i288.i = call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %op.i, i32 noundef 24) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i288.i)
  %tobool156.not.i = icmp eq i32 %call.i12.i.i288.i, 0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %op.i) #6
  br i1 %tobool156.not.i, label %cleanup159.i.sw.epilog.i_crit_edge, label %cleanup159.i.cleanup254_crit_edge

cleanup159.i.cleanup254_crit_edge:                ; preds = %cleanup159.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup254

cleanup159.i.sw.epilog.i_crit_edge:               ; preds = %cleanup159.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %cleanup159.i.sw.epilog.i_crit_edge, %if.end136.i, %if.end63.i, %cleanup.i.sw.epilog.i_crit_edge, %if.end13.i, %if.end3.i
  br label %cleanup254

vt_k_ioctl.exit:                                  ; preds = %cleanup159.thread.i, %sw.bb119.i, %sw.bb115.i, %sw.bb111.i, %sw.bb107.i, %sw.bb100.i, %sw.bb83.i, %sw.bb81.i, %sw.bb64.i, %if.end59.i.vt_k_ioctl.exit_crit_edge, %sw.bb38.i, %if.end36.i, %cleanup.thread.i, %sw.bb14.i
  %retval.2.i = phi i32 [ %call122.i, %sw.bb119.i ], [ %call118.i, %sw.bb115.i ], [ %call114.i, %sw.bb111.i ], [ %call110.i, %sw.bb107.i ], [ %call106.i, %sw.bb100.i ], [ %41, %sw.bb83.i ], [ %call82.i, %sw.bb81.i ], [ %37, %sw.bb64.i ], [ %33, %sw.bb38.i ], [ %call37.i, %if.end36.i ], [ %19, %sw.bb14.i ], [ %call60.i, %if.end59.i.vt_k_ioctl.exit_crit_edge ], [ %retval.0.ph.i, %cleanup.thread.i ], [ %retval.1.ph.i, %cleanup159.thread.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -515, i32 %retval.2.i)
  %cmp4.not = icmp eq i32 %retval.2.i, -515
  br i1 %cmp4.not, label %if.end6, label %vt_k_ioctl.exit.cleanup254_crit_edge

vt_k_ioctl.exit.cleanup254_crit_edge:             ; preds = %vt_k_ioctl.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup254

if.end6:                                          ; preds = %vt_k_ioctl.exit
  %59 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %cmd, label %if.end6.cleanup254_crit_edge [
    i32 19313, label %if.end6.sw.bb.i370_crit_edge
    i32 19312, label %if.end6.sw.bb1.i_crit_edge
    i32 19265, label %if.end6.sw.bb3.i_crit_edge
    i32 19264, label %if.end6.sw.bb8.i_crit_edge
    i32 19306, label %if.end6.sw.bb10.i_crit_edge
    i32 19305, label %if.end6.sw.bb15.i_crit_edge
    i32 19304, label %if.end6.sw.bb17.i373_crit_edge
    i32 19303, label %if.end6.sw.bb22.i_crit_edge
    i32 19302, label %if.end6.sw.bb22.i_crit_edge444
  ]

if.end6.sw.bb22.i_crit_edge444:                   ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb22.i

if.end6.sw.bb22.i_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb22.i

if.end6.sw.bb17.i373_crit_edge:                   ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb17.i373

if.end6.sw.bb15.i_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb15.i

if.end6.sw.bb10.i_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb10.i

if.end6.sw.bb8.i_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb8.i

if.end6.sw.bb3.i_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3.i

if.end6.sw.bb1.i_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i

if.end6.sw.bb.i370_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i370

if.end6.cleanup254_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup254

sw.bb.i370:                                       ; preds = %if.end6.sw.bb.i370_crit_edge, %if.end.sw.bb.i370_crit_edge
  br i1 %tobool, label %if.end.i371, label %sw.bb.i370.cleanup254_crit_edge

sw.bb.i370.cleanup254_crit_edge:                  ; preds = %sw.bb.i370
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup254

if.end.i371:                                      ; preds = %sw.bb.i370
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = call i32 @con_set_cmap(ptr noundef %2) #6
  br label %vt_io_ioctl.exit

sw.bb1.i:                                         ; preds = %if.end6.sw.bb1.i_crit_edge, %if.end.sw.bb1.i_crit_edge
  %call2.i = call i32 @con_get_cmap(ptr noundef %2) #6
  br label %vt_io_ioctl.exit

sw.bb3.i:                                         ; preds = %if.end6.sw.bb3.i_crit_edge, %if.end.sw.bb3.i_crit_edge
  br i1 %tobool, label %if.end6.i, label %sw.bb3.i.cleanup254_crit_edge

sw.bb3.i.cleanup254_crit_edge:                    ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup254

if.end6.i:                                        ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i = call i32 @con_set_trans_old(ptr noundef %2) #6
  br label %vt_io_ioctl.exit

sw.bb8.i:                                         ; preds = %if.end6.sw.bb8.i_crit_edge, %if.end.sw.bb8.i_crit_edge
  %call9.i = call i32 @con_get_trans_old(ptr noundef %2) #6
  br label %vt_io_ioctl.exit

sw.bb10.i:                                        ; preds = %if.end6.sw.bb10.i_crit_edge, %if.end.sw.bb10.i_crit_edge
  br i1 %tobool, label %if.end13.i372, label %sw.bb10.i.cleanup254_crit_edge

sw.bb10.i.cleanup254_crit_edge:                   ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup254

if.end13.i372:                                    ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i = call i32 @con_set_trans_new(ptr noundef %2) #6
  br label %vt_io_ioctl.exit

sw.bb15.i:                                        ; preds = %if.end6.sw.bb15.i_crit_edge, %if.end.sw.bb15.i_crit_edge
  %call16.i = call i32 @con_get_trans_new(ptr noundef %2) #6
  br label %vt_io_ioctl.exit

sw.bb17.i373:                                     ; preds = %if.end6.sw.bb17.i373_crit_edge, %if.end.sw.bb17.i373_crit_edge
  br i1 %tobool, label %if.end20.i, label %sw.bb17.i373.cleanup254_crit_edge

sw.bb17.i373.cleanup254_crit_edge:                ; preds = %sw.bb17.i373
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup254

if.end20.i:                                       ; preds = %sw.bb17.i373
  call void @__sanitizer_cov_trace_pc() #8
  %call21.i = call i32 @con_clear_unimap(ptr noundef %1) #6
  br label %cleanup254

sw.bb22.i:                                        ; preds = %if.end6.sw.bb22.i_crit_edge, %if.end6.sw.bb22.i_crit_edge444, %if.end.sw.bb22.i_crit_edge, %if.end.sw.bb22.i_crit_edge443
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i.i) #6
  %60 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 -1, ptr %tmp.i.i, align 8, !annotation !42
  call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 156) #6
  %call.i.i.i.i374 = call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i.i.i374, label %sw.bb22.i.if.then11.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

sw.bb22.i.if.then11.i.i.i.i_crit_edge:            ; preds = %sw.bb22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %sw.bb22.i
  %61 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 8, i32 -1226833920) #9, !srcloc !47
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %61, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i6.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i6.i.i.i, label %if.end.i.i.i.i, label %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !43

land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %land.lhs.true.i.i.i.i
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %tmp.i.i, i32 noundef 8) #6
  %62 = call i32 @llvm.read_register.i32(metadata !28) #6
  %and.i.i.i.i.i.i.i.i = and i32 %62, -16384
  %63 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %63, i32 0, i32 4
  %64 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i) #4, !srcloc !38
  %and.i.i.i.i.i.i375 = and i32 %64, -13
  %or.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i375, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i) #6, !srcloc !39
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  %call1.i.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %tmp.i.i, ptr noundef %2, i32 noundef 8) #6
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %64) #6, !srcloc !39
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i)
  %tobool4.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i, label %if.end.i.i376, label %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !43

if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge:       ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i.i.i

if.then11.i.i.i.i:                                ; preds = %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, %sw.bb22.i.if.then11.i.i.i.i_crit_edge
  %res.0.i.i20.i.i = phi i32 [ %call1.i.i.i.i.i, %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge ], [ 8, %sw.bb22.i.if.then11.i.i.i.i_crit_edge ], [ 8, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge ]
  %sub.i.i.i.i = sub i32 8, %res.0.i.i20.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %tmp.i.i, i32 %sub.i.i.i.i
  %65 = call ptr @memset(ptr %add.ptr.i.i.i.i, i32 0, i32 %res.0.i.i20.i.i)
  br label %do_unimap_ioctl.exit.i

if.end.i.i376:                                    ; preds = %if.end.i.i.i.i
  %66 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %cmd, label %if.end.i.i376.do_unimap_ioctl.exit.i_crit_edge [
    i32 19303, label %sw.bb.i.i
    i32 19302, label %sw.bb5.i.i
  ]

if.end.i.i376.do_unimap_ioctl.exit.i_crit_edge:   ; preds = %if.end.i.i376
  call void @__sanitizer_cov_trace_pc() #8
  br label %do_unimap_ioctl.exit.i

sw.bb.i.i:                                        ; preds = %if.end.i.i376
  br i1 %tobool, label %if.end3.i.i, label %sw.bb.i.i.do_unimap_ioctl.exit.i_crit_edge

sw.bb.i.i.do_unimap_ioctl.exit.i_crit_edge:       ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do_unimap_ioctl.exit.i

if.end3.i.i:                                      ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %67 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %tmp.i.i, align 8
  %entries.i.i = getelementptr inbounds %struct.unimapdesc, ptr %tmp.i.i, i32 0, i32 1
  %69 = ptrtoint ptr %entries.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %entries.i.i, align 4
  %call4.i.i = call i32 @con_set_unimap(ptr noundef %1, i16 noundef zeroext %68, ptr noundef %70) #6
  br label %do_unimap_ioctl.exit.i

sw.bb5.i.i:                                       ; preds = %if.end.i.i376
  br i1 %tobool, label %sw.bb5.i.i.if.end9.i.i_crit_edge, label %land.lhs.true.i.i377

sw.bb5.i.i.if.end9.i.i_crit_edge:                 ; preds = %sw.bb5.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.i.i

land.lhs.true.i.i377:                             ; preds = %sw.bb5.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fg_console to i32))
  %71 = load i32, ptr @fg_console, align 4
  %vc_num.i.i = getelementptr inbounds %struct.vc_data, ptr %1, i32 0, i32 3
  %72 = ptrtoint ptr %vc_num.i.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %vc_num.i.i, align 4
  %conv.i.i = zext i16 %73 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %conv.i.i)
  %cmp.not.i.i = icmp eq i32 %71, %conv.i.i
  br i1 %cmp.not.i.i, label %land.lhs.true.i.i377.if.end9.i.i_crit_edge, label %land.lhs.true.i.i377.do_unimap_ioctl.exit.i_crit_edge

land.lhs.true.i.i377.do_unimap_ioctl.exit.i_crit_edge: ; preds = %land.lhs.true.i.i377
  call void @__sanitizer_cov_trace_pc() #8
  br label %do_unimap_ioctl.exit.i

land.lhs.true.i.i377.if.end9.i.i_crit_edge:       ; preds = %land.lhs.true.i.i377
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %land.lhs.true.i.i377.if.end9.i.i_crit_edge, %sw.bb5.i.i.if.end9.i.i_crit_edge
  %74 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %tmp.i.i, align 8
  %entries12.i.i = getelementptr inbounds %struct.unimapdesc, ptr %tmp.i.i, i32 0, i32 1
  %76 = ptrtoint ptr %entries12.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %entries12.i.i, align 4
  %call13.i.i = call i32 @con_get_unimap(ptr noundef %1, i16 noundef zeroext %75, ptr noundef %2, ptr noundef %77) #6
  br label %do_unimap_ioctl.exit.i

do_unimap_ioctl.exit.i:                           ; preds = %if.end9.i.i, %land.lhs.true.i.i377.do_unimap_ioctl.exit.i_crit_edge, %if.end3.i.i, %sw.bb.i.i.do_unimap_ioctl.exit.i_crit_edge, %if.end.i.i376.do_unimap_ioctl.exit.i_crit_edge, %if.then11.i.i.i.i
  %retval.0.i.i378 = phi i32 [ %call13.i.i, %if.end9.i.i ], [ %call4.i.i, %if.end3.i.i ], [ -1, %sw.bb.i.i.do_unimap_ioctl.exit.i_crit_edge ], [ -1, %land.lhs.true.i.i377.do_unimap_ioctl.exit.i_crit_edge ], [ 0, %if.end.i.i376.do_unimap_ioctl.exit.i_crit_edge ], [ -14, %if.then11.i.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i.i) #6
  br label %vt_io_ioctl.exit

vt_io_ioctl.exit:                                 ; preds = %do_unimap_ioctl.exit.i, %sw.bb15.i, %if.end13.i372, %sw.bb8.i, %if.end6.i, %sw.bb1.i, %if.end.i371
  %retval.0.i = phi i32 [ %retval.0.i.i378, %do_unimap_ioctl.exit.i ], [ %call16.i, %sw.bb15.i ], [ %call14.i, %if.end13.i372 ], [ %call9.i, %sw.bb8.i ], [ %call7.i, %if.end6.i ], [ %call2.i, %sw.bb1.i ], [ %call.i, %if.end.i371 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -515, i32 %retval.0.i)
  %cmp9.not = icmp eq i32 %retval.0.i, -515
  br i1 %cmp9.not, label %vt_io_ioctl.exit.cleanup254.fold.split_crit_edge, label %vt_io_ioctl.exit.cleanup254_crit_edge

vt_io_ioctl.exit.cleanup254_crit_edge:            ; preds = %vt_io_ioctl.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup254

vt_io_ioctl.exit.cleanup254.fold.split_crit_edge: ; preds = %vt_io_ioctl.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup254.fold.split

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call12 = call i32 @tioclinux(ptr noundef %tty, i32 noundef %arg) #6
  br label %cleanup254

sw.bb13:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp) #6
  %78 = ptrtoint ptr %tmp to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 -1, ptr %tmp, align 8
  br i1 %tobool, label %if.end59.i.i, label %sw.bb13.cleanup.thread_crit_edge

sw.bb13.cleanup.thread_crit_edge:                 ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

if.end59.i.i:                                     ; preds = %sw.bb13
  call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 156) #6
  %call.i.i = call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i, label %if.end59.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end59.i.i.if.then11.i.i_crit_edge:             ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end59.i.i
  %79 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 8, i32 -1226833920) #9, !srcloc !47
  %asmresult.i.i = extractvalue { i32, i32 } %79, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !43

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %tmp, i32 noundef 8) #6
  %80 = call i32 @llvm.read_register.i32(metadata !28) #6
  %and.i.i.i.i.i.i = and i32 %80, -16384
  %81 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %81, i32 0, i32 4
  %82 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #4, !srcloc !38
  %and.i.i.i.i = and i32 %82, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #6, !srcloc !39
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %tmp, ptr noundef %2, i32 noundef 8) #6
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %82) #6, !srcloc !39
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end20, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !43

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end59.i.i.if.then11.i.i_crit_edge
  %res.0.i.i411 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 8, %if.end59.i.i.if.then11.i.i_crit_edge ], [ 8, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 8, %res.0.i.i411
  %add.ptr.i.i = getelementptr i8, ptr %tmp, i32 %sub.i.i
  %83 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i411)
  br label %cleanup.thread

if.end20:                                         ; preds = %if.end.i.i
  %84 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %tmp, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %85)
  %switch = icmp ult i8 %85, 2
  br i1 %switch, label %cleanup, label %if.end20.cleanup.thread_crit_edge

if.end20.cleanup.thread_crit_edge:                ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end20.cleanup.thread_crit_edge, %if.then11.i.i, %sw.bb13.cleanup.thread_crit_edge
  %retval.0.ph = phi i32 [ -22, %if.end20.cleanup.thread_crit_edge ], [ -1, %sw.bb13.cleanup.thread_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp) #6
  br label %cleanup254

cleanup:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  call void @console_lock() #6
  %vt_mode = getelementptr inbounds %struct.vc_data, ptr %1, i32 0, i32 33
  %86 = ptrtoint ptr %tmp to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %tmp, align 8
  %88 = ptrtoint ptr %vt_mode to i32
  call void @__asan_storeN_noabort(i32 %88, i32 8)
  store i64 %87, ptr %vt_mode, align 4
  %frsig = getelementptr inbounds %struct.vc_data, ptr %1, i32 0, i32 33, i32 4
  %89 = ptrtoint ptr %frsig to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 0, ptr %frsig, align 2
  %vt_pid = getelementptr inbounds %struct.vc_data, ptr %1, i32 0, i32 34
  %90 = ptrtoint ptr %vt_pid to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %vt_pid, align 4
  call void @put_pid(ptr noundef %91) #6
  %92 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %task, align 8
  %thread_pid.i = getelementptr inbounds %struct.task_struct, ptr %93, i32 0, i32 78
  %94 = ptrtoint ptr %thread_pid.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %thread_pid.i, align 16
  %call33 = call fastcc ptr @get_pid(ptr noundef %95)
  %96 = ptrtoint ptr %vt_pid to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %95, ptr %vt_pid, align 4
  %vt_newvt = getelementptr inbounds %struct.vc_data, ptr %1, i32 0, i32 35
  %97 = ptrtoint ptr %vt_newvt to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 -1, ptr %vt_newvt, align 4
  call void @console_unlock() #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp) #6
  br label %sw.epilog

sw.bb35:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp36) #6
  call void @console_lock() #6
  %vt_mode37 = getelementptr inbounds %struct.vc_data, ptr %1, i32 0, i32 33
  %98 = ptrtoint ptr %vt_mode37 to i32
  call void @__asan_loadN_noabort(i32 %98, i32 8)
  %99 = load i64, ptr %vt_mode37, align 4
  %100 = ptrtoint ptr %tmp36 to i32
  call void @__asan_store8_noabort(i32 %100)
  store i64 %99, ptr %tmp36, align 8
  call void @console_unlock() #6
  call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 174) #6
  %call.i.i340 = call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i340, label %sw.bb35.copy_to_user.exit.thread_crit_edge, label %if.end.i.i343

sw.bb35.copy_to_user.exit.thread_crit_edge:       ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #8
  br label %copy_to_user.exit.thread

if.end.i.i343:                                    ; preds = %sw.bb35
  %101 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 8, i32 -1226833920) #9, !srcloc !48
  %asmresult.i.i341 = extractvalue { i32, i32 } %101, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i341)
  %cmp.i6.i342 = icmp eq i32 %asmresult.i.i341, 0
  br i1 %cmp.i6.i342, label %copy_to_user.exit, label %if.end.i.i343.copy_to_user.exit.thread_crit_edge

if.end.i.i343.copy_to_user.exit.thread_crit_edge: ; preds = %if.end.i.i343
  call void @__sanitizer_cov_trace_pc() #8
  br label %copy_to_user.exit.thread

copy_to_user.exit.thread:                         ; preds = %if.end.i.i343.copy_to_user.exit.thread_crit_edge, %sw.bb35.copy_to_user.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp36) #6
  br label %cleanup254

copy_to_user.exit:                                ; preds = %if.end.i.i343
  %call.i.i.i344 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %tmp36, i32 noundef 8) #6
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %tmp36, i32 noundef 8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool39.not = icmp eq i32 %call.i12.i.i, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp36) #6
  br i1 %tobool39.not, label %copy_to_user.exit.sw.epilog_crit_edge, label %copy_to_user.exit.cleanup254_crit_edge

copy_to_user.exit.cleanup254_crit_edge:           ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup254

copy_to_user.exit.sw.epilog_crit_edge:            ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb45:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fg_console to i32))
  %102 = load i32, ptr @fg_console, align 4
  %103 = trunc i32 %102 to i16
  %conv46 = add i16 %103, 1
  call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 811) #6
  %104 = call i32 @llvm.read_register.i32(metadata !28) #6
  %and.i.i.i = and i32 %104, -16384
  %105 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %105, i32 0, i32 4
  %106 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #4, !srcloc !38
  %and.i = and i32 %106, -13
  %or.i = or i32 %and.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #6, !srcloc !39
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  %107 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_2", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %2, i16 %conv46, i32 -1226833921) #6, !srcloc !49
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %106) #6, !srcloc !39
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %tobool50.not = icmp eq i32 %107, 0
  br i1 %tobool50.not, label %if.end52, label %sw.bb45.cleanup254_crit_edge

sw.bb45.cleanup254_crit_edge:                     ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup254

if.end52:                                         ; preds = %sw.bb45
  call void @console_lock() #6
  br label %for.body

for.body:                                         ; preds = %vt_in_use.exit.thread.for.body_crit_edge, %if.end52
  %mask.0425432 = phi i32 [ 2, %if.end52 ], [ %shl, %vt_in_use.exit.thread.for.body_crit_edge ]
  %state.0426431 = phi i16 [ 1, %if.end52 ], [ %115, %vt_in_use.exit.thread.for.body_crit_edge ]
  %i.0427430 = phi i32 [ 0, %if.end52 ], [ %inc, %vt_in_use.exit.thread.for.body_crit_edge ]
  %arrayidx.i = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %i.0427430
  %108 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %arrayidx.i, align 4
  %call.i.i.i379 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @ignore_console_lock_warning, i32 noundef 4) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ignore_console_lock_warning to i32))
  %110 = load volatile i32, ptr @ignore_console_lock_warning, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %tobool.not.i = icmp eq i32 %110, 0
  br i1 %tobool.not.i, label %land.lhs.true.i380, label %for.body.if.end.i381_crit_edge

for.body.if.end.i381_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i381

land.lhs.true.i380:                               ; preds = %for.body
  %call1.i = call i32 @is_console_locked() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.rhs.i, label %land.lhs.true.i380.if.end.i381_crit_edge

land.lhs.true.i380.if.end.i381_crit_edge:         ; preds = %land.lhs.true.i380
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i381

land.rhs.i:                                       ; preds = %land.lhs.true.i380
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %111 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool3.not.i = icmp eq i32 %111, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.if.end.i381_crit_edge, !prof !50

land.rhs.i.if.end.i381_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i381

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 52, i32 noundef 9, ptr noundef null) #6
  br label %if.end.i381

if.end.i381:                                      ; preds = %do.end.i, %land.rhs.i.if.end.i381_crit_edge, %land.lhs.true.i380.if.end.i381_crit_edge, %for.body.if.end.i381_crit_edge
  %tobool24.not.i = icmp eq ptr %109, null
  br i1 %tobool24.not.i, label %if.end.i381.vt_in_use.exit.thread_crit_edge, label %vt_in_use.exit

if.end.i381.vt_in_use.exit.thread_crit_edge:      ; preds = %if.end.i381
  call void @__sanitizer_cov_trace_pc() #8
  br label %vt_in_use.exit.thread

vt_in_use.exit:                                   ; preds = %if.end.i381
  call void @__sanitizer_cov_trace_pc() #8
  %kref.i = getelementptr inbounds %struct.tty_port, ptr %109, i32 0, i32 19
  %call.i.i.i.i.i382 = call zeroext i1 @__kasan_check_read(ptr noundef %kref.i, i32 noundef 4) #6
  %112 = ptrtoint ptr %kref.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load volatile i32, ptr %kref.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %113)
  %cmp.i = icmp ugt i32 %113, 1
  %114 = trunc i32 %mask.0425432 to i16
  %conv61 = select i1 %cmp.i, i16 %114, i16 0
  %spec.select421 = or i16 %conv61, %state.0426431
  br label %vt_in_use.exit.thread

vt_in_use.exit.thread:                            ; preds = %vt_in_use.exit, %if.end.i381.vt_in_use.exit.thread_crit_edge
  %115 = phi i16 [ %state.0426431, %if.end.i381.vt_in_use.exit.thread_crit_edge ], [ %spec.select421, %vt_in_use.exit ]
  %inc = add nuw nsw i32 %i.0427430, 1
  %conv55 = shl nuw nsw i32 %mask.0425432, 1
  %shl = and i32 %conv55, 131068
  %exitcond429 = icmp eq i32 %inc, 15
  br i1 %exitcond429, label %for.end, label %vt_in_use.exit.thread.for.body_crit_edge

vt_in_use.exit.thread.for.body_crit_edge:         ; preds = %vt_in_use.exit.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %vt_in_use.exit.thread
  call void @__sanitizer_cov_trace_pc() #8
  call void @console_unlock() #6
  %v_state = getelementptr inbounds %struct.vt_stat, ptr %2, i32 0, i32 2
  call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 821) #6
  %116 = call i32 @llvm.read_register.i32(metadata !28) #6
  %and.i.i.i346 = and i32 %116, -16384
  %117 = inttoptr i32 %and.i.i.i346 to ptr
  %cpu_domain.i.i347 = getelementptr inbounds %struct.thread_info, ptr %117, i32 0, i32 4
  %118 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i347) #4, !srcloc !38
  %and.i348 = and i32 %118, -13
  %or.i349 = or i32 %and.i348, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i349) #6, !srcloc !39
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  %119 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_2", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %v_state, i16 %115, i32 -1226833921) #6, !srcloc !51
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %118) #6, !srcloc !39
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  br label %cleanup254

sw.bb83:                                          ; preds = %if.end
  call void @console_lock() #6
  br label %for.body87

for.body87:                                       ; preds = %for.inc91.for.body87_crit_edge, %sw.bb83
  %cmp85424 = phi i1 [ true, %sw.bb83 ], [ %cmp85, %for.inc91.for.body87_crit_edge ]
  %i.1423 = phi i32 [ 0, %sw.bb83 ], [ %inc92, %for.inc91.for.body87_crit_edge ]
  %arrayidx.i383 = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %i.1423
  %120 = ptrtoint ptr %arrayidx.i383 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %arrayidx.i383, align 4
  %call.i.i.i384 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @ignore_console_lock_warning, i32 noundef 4) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ignore_console_lock_warning to i32))
  %122 = load volatile i32, ptr @ignore_console_lock_warning, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %tobool.not.i385 = icmp eq i32 %122, 0
  br i1 %tobool.not.i385, label %land.lhs.true.i388, label %for.body87.if.end.i393_crit_edge

for.body87.if.end.i393_crit_edge:                 ; preds = %for.body87
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i393

land.lhs.true.i388:                               ; preds = %for.body87
  %call1.i386 = call i32 @is_console_locked() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i386)
  %tobool2.not.i387 = icmp eq i32 %call1.i386, 0
  br i1 %tobool2.not.i387, label %land.rhs.i390, label %land.lhs.true.i388.if.end.i393_crit_edge

land.lhs.true.i388.if.end.i393_crit_edge:         ; preds = %land.lhs.true.i388
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i393

land.rhs.i390:                                    ; preds = %land.lhs.true.i388
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %123 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %tobool3.not.i389 = icmp eq i32 %123, 0
  br i1 %tobool3.not.i389, label %do.end.i391, label %land.rhs.i390.if.end.i393_crit_edge, !prof !50

land.rhs.i390.if.end.i393_crit_edge:              ; preds = %land.rhs.i390
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i393

do.end.i391:                                      ; preds = %land.rhs.i390
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 52, i32 noundef 9, ptr noundef null) #6
  br label %if.end.i393

if.end.i393:                                      ; preds = %do.end.i391, %land.rhs.i390.if.end.i393_crit_edge, %land.lhs.true.i388.if.end.i393_crit_edge, %for.body87.if.end.i393_crit_edge
  %tobool24.not.i392 = icmp eq ptr %121, null
  br i1 %tobool24.not.i392, label %if.end.i393.for.end93_crit_edge, label %vt_in_use.exit398

if.end.i393.for.end93_crit_edge:                  ; preds = %if.end.i393
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end93

vt_in_use.exit398:                                ; preds = %if.end.i393
  %kref.i394 = getelementptr inbounds %struct.tty_port, ptr %121, i32 0, i32 19
  %call.i.i.i.i.i395 = call zeroext i1 @__kasan_check_read(ptr noundef %kref.i394, i32 noundef 4) #6
  %124 = ptrtoint ptr %kref.i394 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load volatile i32, ptr %kref.i394, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %125)
  %cmp.i396 = icmp ugt i32 %125, 1
  br i1 %cmp.i396, label %for.inc91, label %vt_in_use.exit398.for.end93_crit_edge

vt_in_use.exit398.for.end93_crit_edge:            ; preds = %vt_in_use.exit398
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end93

for.inc91:                                        ; preds = %vt_in_use.exit398
  %inc92 = add nuw nsw i32 %i.1423, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 62, i32 %i.1423)
  %cmp85 = icmp ult i32 %i.1423, 62
  %exitcond428.not = icmp eq i32 %inc92, 63
  br i1 %exitcond428.not, label %for.inc91.for.end93_crit_edge, label %for.inc91.for.body87_crit_edge

for.inc91.for.body87_crit_edge:                   ; preds = %for.inc91
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body87

for.inc91.for.end93_crit_edge:                    ; preds = %for.inc91
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end93

for.end93:                                        ; preds = %for.inc91.for.end93_crit_edge, %vt_in_use.exit398.for.end93_crit_edge, %if.end.i393.for.end93_crit_edge
  %i.1.lcssa = phi i32 [ %i.1423, %if.end.i393.for.end93_crit_edge ], [ %i.1423, %vt_in_use.exit398.for.end93_crit_edge ], [ 63, %for.inc91.for.end93_crit_edge ]
  %cmp85.lcssa = phi i1 [ %cmp85424, %if.end.i393.for.end93_crit_edge ], [ %cmp85424, %vt_in_use.exit398.for.end93_crit_edge ], [ %cmp85, %for.inc91.for.end93_crit_edge ]
  call void @console_unlock() #6
  %add96 = add nuw i32 %i.1.lcssa, 1
  %spec.select = select i1 %cmp85.lcssa, i32 %add96, i32 -1
  call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 834) #6
  %126 = call i32 @llvm.read_register.i32(metadata !28) #6
  %and.i.i.i350 = and i32 %126, -16384
  %127 = inttoptr i32 %and.i.i.i350 to ptr
  %cpu_domain.i.i351 = getelementptr inbounds %struct.thread_info, ptr %127, i32 0, i32 4
  %128 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i351) #4, !srcloc !38
  %and.i352 = and i32 %128, -13
  %or.i353 = or i32 %and.i352, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i353) #6, !srcloc !39
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  %129 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %2, i32 %spec.select, i32 -1226833921) #6, !srcloc !52
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %128) #6, !srcloc !39
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  br label %cleanup254

sw.bb112:                                         ; preds = %if.end
  br i1 %tobool, label %if.end115, label %sw.bb112.cleanup254_crit_edge

sw.bb112.cleanup254_crit_edge:                    ; preds = %sw.bb112
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup254

if.end115:                                        ; preds = %sw.bb112
  %130 = add i32 %arg, -64
  call void @__sanitizer_cov_trace_const_cmp4(i32 -63, i32 %130)
  %131 = icmp ult i32 %130, -63
  br i1 %131, label %if.end115.cleanup254_crit_edge, label %if.end122

if.end115.cleanup254_crit_edge:                   ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup254

if.end122:                                        ; preds = %if.end115
  %dec = add nsw i32 %arg, -1
  %132 = call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %dec, i32 63) #6, !srcloc !53
  %and = and i32 %132, %dec
  call void @console_lock() #6
  %call131 = call i32 @vc_allocate(i32 noundef %and) #6
  call void @console_unlock() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call131)
  %tobool132.not = icmp eq i32 %call131, 0
  br i1 %tobool132.not, label %if.end134, label %if.end122.cleanup254_crit_edge

if.end122.cleanup254_crit_edge:                   ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup254

if.end134:                                        ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #8
  %call135 = call i32 @set_console(i32 noundef %and) #6
  br label %sw.epilog

sw.bb136:                                         ; preds = %if.end
  br i1 %tobool, label %if.end139, label %sw.bb136.cleanup254_crit_edge

sw.bb136.cleanup254_crit_edge:                    ; preds = %sw.bb136
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup254

if.end139:                                        ; preds = %sw.bb136
  call void @__sanitizer_cov_trace_pc() #8
  %call140 = call fastcc i32 @vt_setactivate(ptr noundef %2)
  br label %cleanup254

sw.bb141:                                         ; preds = %if.end
  br i1 %tobool, label %if.end144, label %sw.bb141.cleanup254_crit_edge

sw.bb141.cleanup254_crit_edge:                    ; preds = %sw.bb141
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup254

if.end144:                                        ; preds = %sw.bb141
  %133 = add i32 %arg, -64
  call void @__sanitizer_cov_trace_const_cmp4(i32 -63, i32 %133)
  %134 = icmp ult i32 %133, -63
  br i1 %134, label %if.end144.cleanup254_crit_edge, label %if.end151

if.end144.cleanup254_crit_edge:                   ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup254

if.end151:                                        ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #8
  %call152 = call i32 @vt_waitactive(i32 noundef %arg)
  br label %cleanup254

sw.bb153:                                         ; preds = %if.end
  br i1 %tobool, label %if.end156, label %sw.bb153.cleanup254_crit_edge

sw.bb153.cleanup254_crit_edge:                    ; preds = %sw.bb153
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup254

if.end156:                                        ; preds = %sw.bb153
  call void @__sanitizer_cov_trace_pc() #8
  call void @console_lock() #6
  %call157 = call fastcc i32 @vt_reldisp(ptr noundef %1, i32 noundef %arg)
  call void @console_unlock() #6
  br label %cleanup254

sw.bb158:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %arg)
  %cmp159 = icmp ugt i32 %arg, 63
  br i1 %cmp159, label %sw.bb158.cleanup254_crit_edge, label %if.end162

sw.bb158.cleanup254_crit_edge:                    ; preds = %sw.bb158
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup254

if.end162:                                        ; preds = %sw.bb158
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %arg)
  %cmp163 = icmp eq i32 %arg, 0
  br i1 %cmp163, label %if.then165, label %if.else

if.then165:                                       ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @vt_disallocate_all()
  br label %sw.epilog

if.else:                                          ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #8
  %dec166 = add nsw i32 %arg, -1
  %call167 = call fastcc i32 @vt_disallocate(i32 noundef %dec166)
  br label %cleanup254

sw.bb169:                                         ; preds = %if.end
  br i1 %tobool, label %if.end173, label %sw.bb169.cleanup254_crit_edge

sw.bb169.cleanup254_crit_edge:                    ; preds = %sw.bb169
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup254

if.end173:                                        ; preds = %sw.bb169
  call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 915) #6
  %135 = call i32 @llvm.read_register.i32(metadata !28) #6
  %and.i.i.i354 = and i32 %135, -16384
  %136 = inttoptr i32 %and.i.i.i354 to ptr
  %cpu_domain.i.i355 = getelementptr inbounds %struct.thread_info, ptr %136, i32 0, i32 4
  %137 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i355) #4, !srcloc !38
  %and.i356 = and i32 %137, -13
  %or.i357 = or i32 %and.i356, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i357) #6, !srcloc !39
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  %138 = call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_2", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %2, i32 -1226833921) #6, !srcloc !54
  %asmresult = extractvalue { i32, i32 } %138, 0
  %asmresult182 = extractvalue { i32, i32 } %138, 1
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %137) #6, !srcloc !39
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool185.not = icmp eq i32 %asmresult, 0
  br i1 %tobool185.not, label %lor.lhs.false186, label %if.end173.cleanup254_crit_edge

if.end173.cleanup254_crit_edge:                   ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup254

lor.lhs.false186:                                 ; preds = %if.end173
  call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 916) #6
  %v_cols = getelementptr inbounds %struct.vt_sizes, ptr %2, i32 0, i32 1
  %139 = call i32 @llvm.read_register.i32(metadata !28) #6
  %and.i.i.i358 = and i32 %139, -16384
  %140 = inttoptr i32 %and.i.i.i358 to ptr
  %cpu_domain.i.i359 = getelementptr inbounds %struct.thread_info, ptr %140, i32 0, i32 4
  %141 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i359) #4, !srcloc !38
  %and.i360 = and i32 %141, -13
  %or.i361 = or i32 %and.i360, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i361) #6, !srcloc !39
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  %142 = call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_2", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %v_cols, i32 -1226833921) #6, !srcloc !55
  %asmresult196 = extractvalue { i32, i32 } %142, 0
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %141) #6, !srcloc !39
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult196)
  %tobool200.not = icmp eq i32 %asmresult196, 0
  br i1 %tobool200.not, label %if.end202, label %lor.lhs.false186.cleanup254_crit_edge

lor.lhs.false186.cleanup254_crit_edge:            ; preds = %lor.lhs.false186
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup254

if.end202:                                        ; preds = %lor.lhs.false186
  %asmresult197 = extractvalue { i32, i32 } %142, 1
  call void @console_lock() #6
  %conv211 = and i32 %asmresult197, 65535
  %conv212 = and i32 %asmresult182, 65535
  br label %for.body206

for.body206:                                      ; preds = %for.inc215.for.body206_crit_edge, %if.end202
  %i.2422 = phi i32 [ 0, %if.end202 ], [ %inc216, %for.inc215.for.body206_crit_edge ]
  %arrayidx = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %i.2422
  %143 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %arrayidx, align 4
  %tobool207.not = icmp eq ptr %144, null
  br i1 %tobool207.not, label %for.body206.for.inc215_crit_edge, label %if.then208

for.body206.for.inc215_crit_edge:                 ; preds = %for.body206
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc215

if.then208:                                       ; preds = %for.body206
  call void @__sanitizer_cov_trace_pc() #8
  %vc_resize_user = getelementptr inbounds %struct.vc_data, ptr %144, i32 0, i32 43
  %145 = ptrtoint ptr %vc_resize_user to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 1, ptr %vc_resize_user, align 4
  %146 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %arrayidx, align 4
  %call213 = call i32 @vc_resize(ptr noundef %147, i32 noundef %conv211, i32 noundef %conv212) #6
  br label %for.inc215

for.inc215:                                       ; preds = %if.then208, %for.body206.for.inc215_crit_edge
  %inc216 = add nuw nsw i32 %i.2422, 1
  %exitcond.not = icmp eq i32 %inc216, 63
  br i1 %exitcond.not, label %cleanup218, label %for.inc215.for.body206_crit_edge

for.inc215.for.body206_crit_edge:                 ; preds = %for.inc215
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body206

cleanup218:                                       ; preds = %for.inc215
  call void @__sanitizer_cov_trace_pc() #8
  call void @console_unlock() #6
  br label %sw.epilog

sw.bb223:                                         ; preds = %if.end
  br i1 %tobool, label %if.end226, label %sw.bb223.cleanup254_crit_edge

sw.bb223.cleanup254_crit_edge:                    ; preds = %sw.bb223
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup254

if.end226:                                        ; preds = %sw.bb223
  call void @__sanitizer_cov_trace_pc() #8
  %call227 = call fastcc i32 @vt_resizex(ptr noundef %1, ptr noundef %2)
  br label %cleanup254

sw.bb228:                                         ; preds = %if.end
  %call229 = call zeroext i1 @capable(i32 noundef 26) #6
  br i1 %call229, label %if.end231, label %sw.bb228.cleanup254_crit_edge

sw.bb228.cleanup254_crit_edge:                    ; preds = %sw.bb228
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup254

if.end231:                                        ; preds = %sw.bb228
  call void @__sanitizer_cov_trace_pc() #8
  store i8 1, ptr @vt_dont_switch, align 1
  br label %sw.epilog

sw.bb232:                                         ; preds = %if.end
  %call233 = call zeroext i1 @capable(i32 noundef 26) #6
  br i1 %call233, label %if.end235, label %sw.bb232.cleanup254_crit_edge

sw.bb232.cleanup254_crit_edge:                    ; preds = %sw.bb232
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup254

if.end235:                                        ; preds = %sw.bb232
  call void @__sanitizer_cov_trace_pc() #8
  store i8 0, ptr @vt_dont_switch, align 1
  br label %sw.epilog

sw.bb236:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %vc_hi_font_mask = getelementptr inbounds %struct.vc_data, ptr %1, i32 0, i32 27
  %148 = ptrtoint ptr %vc_hi_font_mask to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %vc_hi_font_mask, align 4
  call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 951) #6
  %150 = call i32 @llvm.read_register.i32(metadata !28) #6
  %and.i.i.i362 = and i32 %150, -16384
  %151 = inttoptr i32 %and.i.i.i362 to ptr
  %cpu_domain.i.i363 = getelementptr inbounds %struct.thread_info, ptr %151, i32 0, i32 4
  %152 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i363) #4, !srcloc !38
  %and.i364 = and i32 %152, -13
  %or.i365 = or i32 %and.i364, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i365) #6, !srcloc !39
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  %153 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_2", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %2, i16 %149, i32 -1226833921) #6, !srcloc !56
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %152) #6, !srcloc !39
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  br label %cleanup254

sw.bb252:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call253 = call fastcc i32 @vt_event_wait_ioctl(ptr noundef %2)
  br label %cleanup254

sw.epilog:                                        ; preds = %if.end235, %if.end231, %cleanup218, %if.then165, %if.end134, %copy_to_user.exit.sw.epilog_crit_edge, %cleanup
  br label %cleanup254

cleanup254.fold.split:                            ; preds = %vt_io_ioctl.exit.cleanup254.fold.split_crit_edge, %if.end.cleanup254.fold.split_crit_edge
  br label %cleanup254

cleanup254:                                       ; preds = %cleanup254.fold.split, %sw.epilog, %sw.bb252, %sw.bb236, %sw.bb232.cleanup254_crit_edge, %sw.bb228.cleanup254_crit_edge, %if.end226, %sw.bb223.cleanup254_crit_edge, %lor.lhs.false186.cleanup254_crit_edge, %if.end173.cleanup254_crit_edge, %sw.bb169.cleanup254_crit_edge, %if.else, %sw.bb158.cleanup254_crit_edge, %if.end156, %sw.bb153.cleanup254_crit_edge, %if.end151, %if.end144.cleanup254_crit_edge, %sw.bb141.cleanup254_crit_edge, %if.end139, %sw.bb136.cleanup254_crit_edge, %if.end122.cleanup254_crit_edge, %if.end115.cleanup254_crit_edge, %sw.bb112.cleanup254_crit_edge, %for.end93, %for.end, %sw.bb45.cleanup254_crit_edge, %copy_to_user.exit.cleanup254_crit_edge, %copy_to_user.exit.thread, %cleanup.thread, %sw.bb, %vt_io_ioctl.exit.cleanup254_crit_edge, %if.end20.i, %sw.bb17.i373.cleanup254_crit_edge, %sw.bb10.i.cleanup254_crit_edge, %sw.bb3.i.cleanup254_crit_edge, %sw.bb.i370.cleanup254_crit_edge, %if.end6.cleanup254_crit_edge, %vt_k_ioctl.exit.cleanup254_crit_edge, %sw.epilog.i, %cleanup159.i.cleanup254_crit_edge, %cleanup159.thread313.i, %if.end127.i.cleanup254_crit_edge, %lor.lhs.false.i.cleanup254_crit_edge, %sw.bb123.i.cleanup254_crit_edge, %sw.bb56.i.cleanup254_crit_edge, %sw.bb33.i.cleanup254_crit_edge, %cleanup.i.cleanup254_crit_edge, %cleanup.thread302.i, %sw.bb4.i.cleanup254_crit_edge, %sw.bb.i.cleanup254_crit_edge, %if.end.cleanup254_crit_edge, %if.end.cleanup254_crit_edge433
  %retval.4 = phi i32 [ %call253, %sw.bb252 ], [ %153, %sw.bb236 ], [ 0, %sw.epilog ], [ %call227, %if.end226 ], [ %call167, %if.else ], [ %call157, %if.end156 ], [ %call152, %if.end151 ], [ %call140, %if.end139 ], [ %129, %for.end93 ], [ -14, %copy_to_user.exit.cleanup254_crit_edge ], [ %call12, %sw.bb ], [ %retval.2.i, %vt_k_ioctl.exit.cleanup254_crit_edge ], [ %retval.0.i, %vt_io_ioctl.exit.cleanup254_crit_edge ], [ %119, %for.end ], [ -14, %sw.bb45.cleanup254_crit_edge ], [ -1, %sw.bb112.cleanup254_crit_edge ], [ -6, %if.end115.cleanup254_crit_edge ], [ %call131, %if.end122.cleanup254_crit_edge ], [ -1, %sw.bb136.cleanup254_crit_edge ], [ -1, %sw.bb141.cleanup254_crit_edge ], [ -6, %if.end144.cleanup254_crit_edge ], [ -1, %sw.bb153.cleanup254_crit_edge ], [ -6, %sw.bb158.cleanup254_crit_edge ], [ -1, %sw.bb223.cleanup254_crit_edge ], [ -1, %sw.bb228.cleanup254_crit_edge ], [ -1, %sw.bb232.cleanup254_crit_edge ], [ %retval.0.ph, %cleanup.thread ], [ -14, %copy_to_user.exit.thread ], [ -14, %cleanup159.thread313.i ], [ -14, %cleanup.thread302.i ], [ -22, %if.end127.i.cleanup254_crit_edge ], [ -1, %sw.bb123.i.cleanup254_crit_edge ], [ -1, %lor.lhs.false.i.cleanup254_crit_edge ], [ -1, %sw.bb56.i.cleanup254_crit_edge ], [ -22, %if.end.cleanup254_crit_edge ], [ -22, %if.end.cleanup254_crit_edge433 ], [ -1, %sw.bb33.i.cleanup254_crit_edge ], [ -1, %sw.bb4.i.cleanup254_crit_edge ], [ -1, %sw.bb.i.cleanup254_crit_edge ], [ -14, %cleanup.i.cleanup254_crit_edge ], [ -14, %cleanup159.i.cleanup254_crit_edge ], [ 0, %sw.epilog.i ], [ -1, %sw.bb17.i373.cleanup254_crit_edge ], [ -1, %sw.bb10.i.cleanup254_crit_edge ], [ -1, %sw.bb3.i.cleanup254_crit_edge ], [ -1, %sw.bb.i370.cleanup254_crit_edge ], [ 0, %if.end20.i ], [ -14, %if.end173.cleanup254_crit_edge ], [ -14, %lor.lhs.false186.cleanup254_crit_edge ], [ -1, %sw.bb169.cleanup254_crit_edge ], [ -515, %if.end6.cleanup254_crit_edge ], [ -515, %cleanup254.fold.split ]
  ret i32 %retval.4
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tioclinux(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pid(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @get_pid(ptr noundef returned %pid) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %tobool.not = icmp eq ptr %pid, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %pid, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr nonnull %pid, i32 1, i32 3, i32 1) #6
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %pid, ptr nonnull %pid, i32 1, ptr nonnull elementtype(i32) %pid) #6, !srcloc !57
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.then.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !50

if.then.if.end15.sink.split.i.i.i_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.then
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.if.end_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !43

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.if.end_crit_edge:                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %pid, i32 noundef %.sink.i.i.i) #6
  br label %if.end

if.end:                                           ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret ptr %pid
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_unlock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vc_allocate(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_console(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vt_setactivate(ptr noundef %sa) unnamed_addr #0 align 64 {
entry:
  %vsa = alloca %struct.vt_setactivate, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %vsa) #6
  %0 = getelementptr inbounds %struct.vt_setactivate, ptr %vsa, i32 0, i32 1
  %1 = call ptr @memset(ptr %vsa, i32 255, i32 12)
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 156) #6
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %2 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %sa, i32 12, i32 -1226833920) #9, !srcloc !47
  %asmresult.i.i = extractvalue { i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !43

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %vsa, i32 noundef 12) #6
  %3 = call i32 @llvm.read_register.i32(metadata !28) #6
  %and.i.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 4
  %5 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #4, !srcloc !38
  %and.i.i.i.i = and i32 %5, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #6, !srcloc !39
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %vsa, ptr noundef %sa, i32 noundef 12) #6
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %5) #6, !srcloc !39
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !43

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.0.i.i34 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 12, %entry.if.then11.i.i_crit_edge ], [ 12, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 12, %res.0.i.i34
  %add.ptr.i.i = getelementptr i8, ptr %vsa, i32 %sub.i.i
  %6 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i34)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %7 = ptrtoint ptr %vsa to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vsa, align 4
  %9 = add i32 %8, -64
  call void @__sanitizer_cov_trace_const_cmp4(i32 -63, i32 %9)
  %10 = icmp ult i32 %9, -63
  br i1 %10, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %dec = add nsw i32 %8, -1
  %11 = ptrtoint ptr %vsa to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %dec, ptr %vsa, align 4
  %12 = call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %dec, i32 63) #6, !srcloc !53
  %and = and i32 %12, %dec
  %13 = ptrtoint ptr %vsa to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %and, ptr %vsa, align 4
  call void @console_lock() #6
  %14 = ptrtoint ptr %vsa to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vsa, align 4
  %call13 = call i32 @vc_allocate(i32 noundef %15) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  call void @console_unlock() #6
  br label %cleanup

if.end16:                                         ; preds = %if.end4
  %16 = ptrtoint ptr %vsa to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vsa, align 4
  %arrayidx = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  %vt_mode = getelementptr inbounds %struct.vc_data, ptr %19, i32 0, i32 33
  %20 = ptrtoint ptr %0 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 8)
  %21 = load i64, ptr %0, align 4
  %22 = ptrtoint ptr %vt_mode to i32
  call void @__asan_storeN_noabort(i32 %22, i32 8)
  store i64 %21, ptr %vt_mode, align 4
  %frsig = getelementptr inbounds %struct.vc_data, ptr %19, i32 0, i32 33, i32 4
  %23 = ptrtoint ptr %frsig to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 0, ptr %frsig, align 2
  %vt_pid = getelementptr inbounds %struct.vc_data, ptr %19, i32 0, i32 34
  %24 = ptrtoint ptr %vt_pid to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %vt_pid, align 4
  call void @put_pid(ptr noundef %25) #6
  %26 = call i32 @llvm.read_register.i32(metadata !28) #6
  %and.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %task, align 8
  %thread_pid.i = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 78
  %30 = ptrtoint ptr %thread_pid.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %thread_pid.i, align 16
  %tobool.not.i = icmp eq ptr %31, null
  br i1 %tobool.not.i, label %if.end16.get_pid.exit_crit_edge, label %if.then.i

if.end16.get_pid.exit_crit_edge:                  ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_pid.exit

if.then.i:                                        ; preds = %if.end16
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %31, i32 noundef 4) #6
  call void @llvm.prefetch.p0(ptr nonnull %31, i32 1, i32 3, i32 1) #6
  %32 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %31, ptr nonnull %31, i32 1, ptr nonnull elementtype(i32) %31) #6, !srcloc !57
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %32, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !50

if.then.i.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %33 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %33)
  %.not.i.i.i.i = icmp sgt i32 %33, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.get_pid.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !43

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.get_pid.exit_crit_edge:           ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_pid.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef nonnull %31, i32 noundef %.sink.i.i.i.i) #6
  br label %get_pid.exit

get_pid.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.get_pid.exit_crit_edge, %if.end16.get_pid.exit_crit_edge
  %34 = ptrtoint ptr %vt_pid to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %vt_pid, align 4
  call void @console_unlock() #6
  %35 = ptrtoint ptr %vsa to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %vsa, align 4
  %call24 = call i32 @set_console(i32 noundef %36) #6
  br label %cleanup

cleanup:                                          ; preds = %get_pid.exit, %if.then15, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ %call13, %if.then15 ], [ 0, %get_pid.exit ], [ -6, %if.end.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %vsa) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vt_reldisp(ptr nocapture noundef %vc, i32 noundef %swtch) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %vt_mode = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 33
  %0 = ptrtoint ptr %vt_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %vt_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp.not = icmp eq i8 %1, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %vt_newvt = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 35
  %2 = ptrtoint ptr %vt_newvt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vt_newvt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp2 = icmp slt i32 %3, 0
  br i1 %cmp2, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %swtch)
  %cmp5 = icmp eq i32 %swtch, 2
  %cond = select i1 %cmp5, i32 0, i32 -22
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %swtch)
  %cmp8 = icmp eq i32 %swtch, 0
  %4 = ptrtoint ptr %vt_newvt to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %vt_newvt, align 4
  br i1 %cmp8, label %if.end7.cleanup_crit_edge, label %if.end12

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %call = tail call i32 @vc_allocate(i32 noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end16, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %3
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  tail call fastcc void @complete_change_console(ptr noundef %6)
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end12.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %if.then4 ], [ 0, %if.end16 ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end12.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vt_disallocate_all() unnamed_addr #0 align 64 {
entry:
  %vc = alloca [63 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 252, ptr nonnull %vc) #6
  %0 = call ptr @memset(ptr %vc, i32 255, i32 252)
  tail call void @console_lock() #6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.025 = phi i32 [ 1, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx.i.i = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %i.025
  %1 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @ignore_console_lock_warning, i32 noundef 4) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ignore_console_lock_warning to i32))
  %3 = load volatile i32, ptr @ignore_console_lock_warning, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %for.body.if.end.i.i_crit_edge

for.body.if.end.i.i_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %for.body
  %call1.i.i = tail call i32 @is_console_locked() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %4 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool3.not.i.i = icmp eq i32 %4, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.if.end.i.i_crit_edge, !prof !50

land.rhs.i.i.if.end.i.i_crit_edge:                ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 52, i32 noundef 9, ptr noundef null) #6
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %land.rhs.i.i.if.end.i.i_crit_edge, %land.lhs.true.i.i.if.end.i.i_crit_edge, %for.body.if.end.i.i_crit_edge
  %tobool24.not.i.i = icmp eq ptr %2, null
  br i1 %tobool24.not.i.i, label %if.end.i.i.if.end.i_crit_edge, label %vt_in_use.exit.i

if.end.i.i.if.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

vt_in_use.exit.i:                                 ; preds = %if.end.i.i
  %kref.i.i = getelementptr inbounds %struct.tty_port, ptr %2, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %kref.i.i, i32 noundef 4) #6
  %5 = ptrtoint ptr %kref.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %kref.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp.i.i = icmp ugt i32 %6, 1
  br i1 %cmp.i.i, label %vt_in_use.exit.i.for.inc_crit_edge, label %vt_in_use.exit.i.if.end.i_crit_edge

vt_in_use.exit.i.if.end.i_crit_edge:              ; preds = %vt_in_use.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

vt_in_use.exit.i.for.inc_crit_edge:               ; preds = %vt_in_use.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end.i:                                         ; preds = %vt_in_use.exit.i.if.end.i_crit_edge, %if.end.i.i.if.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fg_console to i32))
  %7 = load i32, ptr @fg_console, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %i.025)
  %cmp.i = icmp eq i32 %7, %i.025
  br i1 %cmp.i, label %if.end.i.for.inc_crit_edge, label %vt_busy.exit

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

vt_busy.exit:                                     ; preds = %if.end.i
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i.i, align 4
  %call3.i = tail call zeroext i1 @vc_is_sel(ptr noundef %9) #6
  br i1 %call3.i, label %vt_busy.exit.for.inc_crit_edge, label %if.then

vt_busy.exit.for.inc_crit_edge:                   ; preds = %vt_busy.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then:                                          ; preds = %vt_busy.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call ptr @vc_deallocate(i32 noundef %i.025) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then, %vt_busy.exit.for.inc_crit_edge, %if.end.i.for.inc_crit_edge, %vt_in_use.exit.i.for.inc_crit_edge
  %call1.sink = phi ptr [ %call1, %if.then ], [ null, %if.end.i.for.inc_crit_edge ], [ null, %vt_in_use.exit.i.for.inc_crit_edge ], [ null, %vt_busy.exit.for.inc_crit_edge ]
  %arrayidx = getelementptr [63 x ptr], ptr %vc, i32 0, i32 %i.025
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call1.sink, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.025, 1
  %exitcond.not = icmp eq i32 %inc, 63
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc
  tail call void @console_unlock() #6
  br label %for.body5

for.body5:                                        ; preds = %for.inc11.for.body5_crit_edge, %for.end
  %i.128 = phi i32 [ 1, %for.end ], [ %inc12, %for.inc11.for.body5_crit_edge ]
  %arrayidx6 = getelementptr [63 x ptr], ptr %vc, i32 0, i32 %i.128
  %11 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx6, align 4
  %tobool.not.not = icmp eq ptr %12, null
  br i1 %tobool.not.not, label %for.body5.for.inc11_crit_edge, label %if.then8

for.body5.for.inc11_crit_edge:                    ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc11

if.then8:                                         ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @tty_port_put(ptr noundef nonnull %12) #6
  br label %for.inc11

for.inc11:                                        ; preds = %if.then8, %for.body5.for.inc11_crit_edge
  %inc12 = add nuw nsw i32 %i.128, 1
  %exitcond29.not = icmp eq i32 %inc12, 63
  br i1 %exitcond29.not, label %for.end13, label %for.inc11.for.body5_crit_edge

for.inc11.for.body5_crit_edge:                    ; preds = %for.inc11
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body5

for.end13:                                        ; preds = %for.inc11
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 252, ptr nonnull %vc) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vt_disallocate(i32 noundef %vc_num) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @console_lock() #6
  %arrayidx.i.i = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %vc_num
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @ignore_console_lock_warning, i32 noundef 4) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ignore_console_lock_warning to i32))
  %2 = load volatile i32, ptr @ignore_console_lock_warning, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %entry.if.end.i.i_crit_edge

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @is_console_locked() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %3 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool3.not.i.i = icmp eq i32 %3, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.if.end.i.i_crit_edge, !prof !50

land.rhs.i.i.if.end.i.i_crit_edge:                ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 52, i32 noundef 9, ptr noundef null) #6
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %land.rhs.i.i.if.end.i.i_crit_edge, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %tobool24.not.i.i = icmp eq ptr %1, null
  br i1 %tobool24.not.i.i, label %if.end.i.i.if.end.i_crit_edge, label %vt_in_use.exit.i

if.end.i.i.if.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

vt_in_use.exit.i:                                 ; preds = %if.end.i.i
  %kref.i.i = getelementptr inbounds %struct.tty_port, ptr %1, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %kref.i.i, i32 noundef 4) #6
  %4 = ptrtoint ptr %kref.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %kref.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.i.i = icmp ugt i32 %5, 1
  br i1 %cmp.i.i, label %vt_in_use.exit.i.if.end3_crit_edge, label %vt_in_use.exit.i.if.end.i_crit_edge

vt_in_use.exit.i.if.end.i_crit_edge:              ; preds = %vt_in_use.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

vt_in_use.exit.i.if.end3_crit_edge:               ; preds = %vt_in_use.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.end.i:                                         ; preds = %vt_in_use.exit.i.if.end.i_crit_edge, %if.end.i.i.if.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fg_console to i32))
  %6 = load i32, ptr @fg_console, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %vc_num)
  %cmp.i = icmp eq i32 %6, %vc_num
  br i1 %cmp.i, label %if.end.i.if.end3_crit_edge, label %vt_busy.exit

if.end.i.if.end3_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

vt_busy.exit:                                     ; preds = %if.end.i
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i.i, align 4
  %call3.i = tail call zeroext i1 @vc_is_sel(ptr noundef %8) #6
  br i1 %call3.i, label %vt_busy.exit.if.end3_crit_edge, label %if.else

vt_busy.exit.if.end3_crit_edge:                   ; preds = %vt_busy.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.else:                                          ; preds = %vt_busy.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vc_num)
  %tobool.not = icmp eq i32 %vc_num, 0
  br i1 %tobool.not, label %if.else.if.end3_crit_edge, label %if.then1

if.else.if.end3_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.then1:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call ptr @vc_deallocate(i32 noundef %vc_num) #6
  br label %if.end3

if.end3:                                          ; preds = %if.then1, %if.else.if.end3_crit_edge, %vt_busy.exit.if.end3_crit_edge, %if.end.i.if.end3_crit_edge, %vt_in_use.exit.i.if.end3_crit_edge
  %vc.0 = phi ptr [ %call2, %if.then1 ], [ null, %if.else.if.end3_crit_edge ], [ null, %vt_busy.exit.if.end3_crit_edge ], [ null, %vt_in_use.exit.i.if.end3_crit_edge ], [ null, %if.end.i.if.end3_crit_edge ]
  %ret.0 = phi i32 [ 0, %if.then1 ], [ 0, %if.else.if.end3_crit_edge ], [ -16, %vt_busy.exit.if.end3_crit_edge ], [ -16, %vt_in_use.exit.i.if.end3_crit_edge ], [ -16, %if.end.i.if.end3_crit_edge ]
  tail call void @console_unlock() #6
  %tobool4.not = icmp eq ptr %vc.0, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vc_num)
  %cmp.not = icmp eq i32 %vc_num, 0
  %or.cond = or i1 %cmp.not, %tobool4.not
  br i1 %or.cond, label %if.end3.if.end6_crit_edge, label %if.then5

if.end3.if.end6_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @tty_port_put(ptr noundef nonnull %vc.0) #6
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end3.if.end6_crit_edge
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vc_resize(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vt_resizex(ptr nocapture noundef readonly %vc, ptr noundef %cs) unnamed_addr #0 align 64 {
entry:
  %v = alloca %struct.vt_consize, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %v) #6
  %0 = getelementptr inbounds %struct.vt_consize, ptr %v, i32 0, i32 1
  %1 = getelementptr inbounds %struct.vt_consize, ptr %v, i32 0, i32 2
  %2 = getelementptr inbounds %struct.vt_consize, ptr %v, i32 0, i32 3
  %3 = getelementptr inbounds %struct.vt_consize, ptr %v, i32 0, i32 4
  %4 = getelementptr inbounds %struct.vt_consize, ptr %v, i32 0, i32 5
  %5 = call ptr @memset(ptr %v, i32 255, i32 12)
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 156) #6
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %6 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %cs, i32 12, i32 -1226833920) #9, !srcloc !47
  %asmresult.i.i = extractvalue { i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !43

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 12) #6
  %7 = call i32 @llvm.read_register.i32(metadata !28) #6
  %and.i.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 4
  %9 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #4, !srcloc !38
  %and.i.i.i.i = and i32 %9, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #6, !srcloc !39
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %v, ptr noundef %cs, i32 noundef 12) #6
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #6, !srcloc !39
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !43

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.0.i.i123 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 12, %entry.if.then11.i.i_crit_edge ], [ 12, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 12, %res.0.i.i123
  %add.ptr.i.i = getelementptr i8, ptr %v, i32 %sub.i.i
  %10 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i123)
  br label %cleanup96

if.end:                                           ; preds = %if.end.i.i
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool1.not = icmp eq i16 %12, 0
  br i1 %tobool1.not, label %if.then2, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %vc_scan_lines = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 7
  %13 = ptrtoint ptr %vc_scan_lines to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %vc_scan_lines, align 4
  %conv = trunc i32 %14 to i16
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv, ptr %1, align 2
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %2, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool5.not = icmp eq i16 %17, 0
  br i1 %tobool5.not, label %if.end4.if.end21_crit_edge, label %if.then6

if.end4.if.end21_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then6:                                         ; preds = %if.end4
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %1, align 2
  %20 = udiv i16 %19, %17
  %21 = ptrtoint ptr %v to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %v, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %22, i16 %20)
  %cmp.not = icmp eq i16 %22, %20
  br i1 %cmp.not, label %if.then6.if.end21_crit_edge, label %if.then13

if.then6.if.end21_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then13:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool15.not = icmp eq i16 %22, 0
  br i1 %tobool15.not, label %if.end17, label %if.then13.cleanup96_crit_edge

if.then13.cleanup96_crit_edge:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup96

if.end17:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %v to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %20, ptr %v, align 2
  br label %if.end21

if.end21:                                         ; preds = %if.end17, %if.then6.if.end21_crit_edge, %if.end4.if.end21_crit_edge
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %3, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool23.not = icmp eq i16 %25, 0
  br i1 %tobool23.not, label %if.end21.if.end46_crit_edge, label %land.lhs.true

if.end21.if.end46_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

land.lhs.true:                                    ; preds = %if.end21
  %26 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %4, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool25.not = icmp eq i16 %27, 0
  br i1 %tobool25.not, label %land.lhs.true.if.end46_crit_edge, label %if.then26

land.lhs.true.if.end46_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

if.then26:                                        ; preds = %land.lhs.true
  %28 = udiv i16 %25, %27
  %29 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %0, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %30, i16 %28)
  %cmp33.not = icmp eq i16 %30, %28
  br i1 %cmp33.not, label %if.then26.if.end46_crit_edge, label %if.then35

if.then26.if.end46_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

if.then35:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool37.not = icmp eq i16 %30, 0
  br i1 %tobool37.not, label %if.end39, label %if.then35.cleanup96_crit_edge

if.then35.cleanup96_crit_edge:                    ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup96

if.end39:                                         ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %28, ptr %0, align 2
  br label %if.end46

if.end46:                                         ; preds = %if.end39, %if.then26.if.end46_crit_edge, %land.lhs.true.if.end46_crit_edge, %if.end21.if.end46_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %17)
  %cmp49 = icmp ugt i16 %17, 32
  br i1 %cmp49, label %if.end46.cleanup96_crit_edge, label %if.end46.for.body_crit_edge

if.end46.for.body_crit_edge:                      ; preds = %if.end46
  br label %for.body

if.end46.cleanup96_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup96

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end46.for.body_crit_edge
  %i.0131 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end46.for.body_crit_edge ]
  %arrayidx = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %i.0131
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx, align 4
  %tobool55.not = icmp eq ptr %33, null
  br i1 %tobool55.not, label %for.body.for.inc_crit_edge, label %if.end57

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end57:                                         ; preds = %for.body
  call void @console_lock() #6
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx, align 4
  %tobool60.not = icmp eq ptr %35, null
  br i1 %tobool60.not, label %if.end57.if.end92_crit_edge, label %if.then61

if.end57.if.end92_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end92

if.then61:                                        ; preds = %if.end57
  %vc_scan_lines62 = getelementptr inbounds %struct.vc_data, ptr %35, i32 0, i32 7
  %36 = ptrtoint ptr %vc_scan_lines62 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %vc_scan_lines62, align 4
  %vc_cell_height = getelementptr inbounds %struct.vc_data, ptr %35, i32 0, i32 8
  %38 = ptrtoint ptr %vc_cell_height to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %vc_cell_height, align 4
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %tobool64.not = icmp eq i16 %41, 0
  br i1 %tobool64.not, label %if.then61.if.end69_crit_edge, label %if.then65

if.then61.if.end69_crit_edge:                     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

if.then65:                                        ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #8
  %conv67 = zext i16 %41 to i32
  %42 = ptrtoint ptr %vc_scan_lines62 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %conv67, ptr %vc_scan_lines62, align 4
  br label %if.end69

if.end69:                                         ; preds = %if.then65, %if.then61.if.end69_crit_edge
  %43 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %2, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %tobool71.not = icmp eq i16 %44, 0
  br i1 %tobool71.not, label %if.end69.if.end76_crit_edge, label %if.then72

if.end69.if.end76_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end76

if.then72:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  %conv74 = zext i16 %44 to i32
  %45 = ptrtoint ptr %vc_cell_height to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %conv74, ptr %vc_cell_height, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.then72, %if.end69.if.end76_crit_edge
  %vc_resize_user = getelementptr inbounds %struct.vc_data, ptr %35, i32 0, i32 43
  %46 = ptrtoint ptr %vc_resize_user to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1, ptr %vc_resize_user, align 4
  %47 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %0, align 2
  %conv78 = zext i16 %48 to i32
  %49 = ptrtoint ptr %v to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %v, align 2
  %conv80 = zext i16 %50 to i32
  %call81 = call i32 @vc_resize(ptr noundef nonnull %35, i32 noundef %conv78, i32 noundef %conv80) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.end76.if.end92_crit_edge, label %cleanup93

if.end76.if.end92_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end92

if.end92:                                         ; preds = %if.end76.if.end92_crit_edge, %if.end57.if.end92_crit_edge
  call void @console_unlock() #6
  br label %for.inc

cleanup93:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %vc_scan_lines62 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %37, ptr %vc_scan_lines62, align 4
  %52 = ptrtoint ptr %vc_cell_height to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %39, ptr %vc_cell_height, align 4
  call void @console_unlock() #6
  br label %cleanup96

for.inc:                                          ; preds = %if.end92, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0131, 1
  %exitcond.not = icmp eq i32 %inc, 63
  br i1 %exitcond.not, label %for.inc.cleanup96_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup96_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup96

cleanup96:                                        ; preds = %for.inc.cleanup96_crit_edge, %cleanup93, %if.end46.cleanup96_crit_edge, %if.then35.cleanup96_crit_edge, %if.then13.cleanup96_crit_edge, %if.then11.i.i
  %retval.8 = phi i32 [ %call81, %cleanup93 ], [ -22, %if.end46.cleanup96_crit_edge ], [ -22, %if.then13.cleanup96_crit_edge ], [ -22, %if.then35.cleanup96_crit_edge ], [ -14, %if.then11.i.i ], [ 0, %for.inc.cleanup96_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %v) #6
  ret i32 %retval.8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vt_event_wait_ioctl(ptr noundef %event) unnamed_addr #0 align 64 {
entry:
  %vw = alloca %struct.vt_event_wait, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %vw) #6
  %0 = call ptr @memset(ptr %vw, i32 255, i32 40)
  %event1 = getelementptr inbounds %struct.vt_event_wait, ptr %vw, i32 0, i32 1
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 156) #6
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %1 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %event, i32 28, i32 -1226833920) #9
  %asmresult.i.i = extractvalue { i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !43

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %event1, i32 noundef 28) #6
  %2 = call i32 @llvm.read_register.i32(metadata !28) #6
  %and.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #4, !srcloc !38
  %and.i.i.i.i = and i32 %4, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #6, !srcloc !39
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef %event1, ptr noundef %event, i32 noundef 28) #6
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #6, !srcloc !39
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !43

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.0.i.i28 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 28, %entry.if.then11.i.i_crit_edge ], [ 28, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 28, %res.0.i.i28
  %add.ptr.i.i = getelementptr i8, ptr %event1, i32 %sub.i.i
  %5 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i28)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %6 = ptrtoint ptr %event1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %event1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %7)
  %tobool4.not = icmp ult i32 %7, 16
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %8 = ptrtoint ptr %vw to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %vw, ptr %vw, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %vw, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %vw, ptr %prev.i.i.i, align 4
  %done.i.i = getelementptr inbounds %struct.vt_event_wait, ptr %vw, i32 0, i32 2
  %10 = ptrtoint ptr %done.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %done.i.i, align 4
  %call2.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @vt_event_lock) #6
  %11 = load ptr, ptr @vt_events, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %vw, ptr noundef nonnull @vt_events, ptr noundef %11) #6
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end6.__vt_event_queue.exit.i_crit_edge

if.end6.__vt_event_queue.exit.i_crit_edge:        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %__vt_event_queue.exit.i

if.end.i.i.i.i:                                   ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %vw, ptr %prev1.i.i.i.i, align 4
  %13 = ptrtoint ptr %vw to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %11, ptr %vw, align 4
  %14 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @vt_events, ptr %prev.i.i.i, align 4
  store volatile ptr %vw, ptr @vt_events, align 4
  br label %__vt_event_queue.exit.i

__vt_event_queue.exit.i:                          ; preds = %if.end.i.i.i.i, %if.end6.__vt_event_queue.exit.i_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @vt_event_lock, i32 noundef %call2.i.i) #6
  call fastcc void @__vt_event_wait(ptr noundef nonnull %vw) #6
  %call2.i3.i = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @vt_event_lock) #6
  %call.i.i.i4.i = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %vw) #6
  br i1 %call.i.i.i4.i, label %if.end.i.i.i5.i, label %__vt_event_queue.exit.i.vt_event_wait.exit_crit_edge

__vt_event_queue.exit.i.vt_event_wait.exit_crit_edge: ; preds = %__vt_event_queue.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %vt_event_wait.exit

if.end.i.i.i5.i:                                  ; preds = %__vt_event_queue.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i.i, align 4
  %17 = ptrtoint ptr %vw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vw, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %vt_event_wait.exit

vt_event_wait.exit:                               ; preds = %if.end.i.i.i5.i, %__vt_event_queue.exit.i.vt_event_wait.exit_crit_edge
  %21 = ptrtoint ptr %vw to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 256 to ptr), ptr %vw, align 4
  %22 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @vt_event_lock, i32 noundef %call2.i3.i) #6
  %23 = ptrtoint ptr %done.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %done.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool7.not = icmp eq i32 %24, 0
  br i1 %tobool7.not, label %vt_event_wait.exit.cleanup_crit_edge, label %if.end59.i.i19

vt_event_wait.exit.cleanup_crit_edge:             ; preds = %vt_event_wait.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end59.i.i19:                                   ; preds = %vt_event_wait.exit
  call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 174) #6
  %call.i.i20 = call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i20, label %if.end59.i.i19.cleanup_crit_edge, label %copy_to_user.exit

if.end59.i.i19.cleanup_crit_edge:                 ; preds = %if.end59.i.i19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end59.i.i19
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i.i24 = call zeroext i1 @__kasan_check_read(ptr noundef %event1, i32 noundef 28) #6
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %event, ptr noundef %event1, i32 noundef 28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool11.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool11.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.end59.i.i19.cleanup_crit_edge, %vt_event_wait.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ -22, %if.end.cleanup_crit_edge ], [ -4, %vt_event_wait.exit.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.end59.i.i19.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %vw) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @reset_vc(ptr noundef %vc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %vc_mode = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 17
  %0 = ptrtoint ptr %vc_mode to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %vc_mode, align 4
  %vc_num = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 3
  %1 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %vc_num, align 4
  %conv = zext i16 %2 to i32
  tail call void @vt_reset_unicode(i32 noundef %conv) #6
  %vt_mode = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 33
  %vt_pid = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 34
  %3 = ptrtoint ptr %vt_mode to i32
  call void @__asan_storeN_noabort(i32 %3, i32 8)
  store i64 0, ptr %vt_mode, align 4
  %4 = ptrtoint ptr %vt_pid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vt_pid, align 4
  tail call void @put_pid(ptr noundef %5) #6
  %6 = ptrtoint ptr %vt_pid to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %vt_pid, align 4
  %vt_newvt = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 35
  %7 = ptrtoint ptr %vt_newvt to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %vt_newvt, align 4
  tail call void @reset_palette(ptr noundef %vc) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vt_reset_unicode(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @reset_palette(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vc_SAK(ptr nocapture noundef readonly %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -4
  tail call void @console_lock() #6
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then:                                          ; preds = %entry
  %tty1 = getelementptr inbounds %struct.tty_port, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %tty1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tty1, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.then.if.end_crit_edge, label %if.then3

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__do_SAK(ptr noundef nonnull %3) #6
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %vc_mode.i = getelementptr inbounds %struct.vc_data, ptr %1, i32 0, i32 17
  %4 = ptrtoint ptr %vc_mode.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %vc_mode.i, align 4
  %vc_num.i = getelementptr inbounds %struct.vc_data, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %vc_num.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %vc_num.i, align 4
  %conv.i = zext i16 %6 to i32
  tail call void @vt_reset_unicode(i32 noundef %conv.i) #6
  %vt_mode.i = getelementptr inbounds %struct.vc_data, ptr %1, i32 0, i32 33
  %vt_pid.i = getelementptr inbounds %struct.vc_data, ptr %1, i32 0, i32 34
  %7 = ptrtoint ptr %vt_mode.i to i32
  call void @__asan_storeN_noabort(i32 %7, i32 8)
  store i64 0, ptr %vt_mode.i, align 4
  %8 = ptrtoint ptr %vt_pid.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vt_pid.i, align 4
  tail call void @put_pid(ptr noundef %9) #6
  %10 = ptrtoint ptr %vt_pid.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %vt_pid.i, align 4
  %vt_newvt.i = getelementptr inbounds %struct.vc_data, ptr %1, i32 0, i32 35
  %11 = ptrtoint ptr %vt_newvt.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %vt_newvt.i, align 4
  tail call void @reset_palette(ptr noundef nonnull %1) #6
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry.if.end4_crit_edge
  tail call void @console_unlock() #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__do_SAK(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @change_console(ptr noundef %new_vc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %new_vc, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %vc_num = getelementptr inbounds %struct.vc_data, ptr %new_vc, i32 0, i32 3
  %0 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vc_num, align 4
  %conv = zext i16 %1 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fg_console to i32))
  %2 = load i32, ptr @fg_console, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %conv)
  %cmp = icmp eq i32 %2, %conv
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false2

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load i8, ptr @vt_dont_switch, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool3.not = icmp eq i8 %3, 0
  br i1 %tobool3.not, label %if.end, label %lor.lhs.false2.cleanup_crit_edge

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  %arrayidx = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %2
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %vt_mode = getelementptr inbounds %struct.vc_data, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %vt_mode to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %vt_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp6 = icmp eq i8 %7, 1
  br i1 %cmp6, label %if.then8, label %if.end.if.end17_crit_edge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then8:                                         ; preds = %if.end
  %vt_newvt = getelementptr inbounds %struct.vc_data, ptr %5, i32 0, i32 35
  %8 = ptrtoint ptr %vt_newvt to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv, ptr %vt_newvt, align 4
  %vt_pid = getelementptr inbounds %struct.vc_data, ptr %5, i32 0, i32 34
  %9 = ptrtoint ptr %vt_pid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vt_pid, align 4
  %relsig = getelementptr inbounds %struct.vc_data, ptr %5, i32 0, i32 33, i32 2
  %11 = ptrtoint ptr %relsig to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %relsig, align 2
  %conv12 = sext i16 %12 to i32
  %call = tail call i32 @kill_pid(ptr noundef %10, i32 noundef %conv12, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp13 = icmp eq i32 %call, 0
  br i1 %cmp13, label %if.then8.cleanup_crit_edge, label %if.end16

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end16:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  %vc_mode.i = getelementptr inbounds %struct.vc_data, ptr %5, i32 0, i32 17
  %13 = ptrtoint ptr %vc_mode.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %vc_mode.i, align 4
  %vc_num.i = getelementptr inbounds %struct.vc_data, ptr %5, i32 0, i32 3
  %14 = ptrtoint ptr %vc_num.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %vc_num.i, align 4
  %conv.i = zext i16 %15 to i32
  tail call void @vt_reset_unicode(i32 noundef %conv.i) #6
  %16 = ptrtoint ptr %vt_mode to i32
  call void @__asan_storeN_noabort(i32 %16, i32 8)
  store i64 0, ptr %vt_mode, align 4
  %17 = ptrtoint ptr %vt_pid to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vt_pid, align 4
  tail call void @put_pid(ptr noundef %18) #6
  %19 = ptrtoint ptr %vt_pid to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %vt_pid, align 4
  %20 = ptrtoint ptr %vt_newvt to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %vt_newvt, align 4
  tail call void @reset_palette(ptr noundef %5) #6
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.end.if.end17_crit_edge
  %vc_mode = getelementptr inbounds %struct.vc_data, ptr %5, i32 0, i32 17
  %21 = ptrtoint ptr %vc_mode to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %vc_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %22)
  %cmp19 = icmp eq i8 %22, 1
  br i1 %cmp19, label %if.end17.cleanup_crit_edge, label %if.end22

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end22:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @complete_change_console(ptr noundef nonnull %new_vc)
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.end17.cleanup_crit_edge, %if.then8.cleanup_crit_edge, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kill_pid(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @complete_change_console(ptr noundef %vc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fg_console to i32))
  %0 = load i32, ptr @fg_console, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @last_console to i32))
  store i32 %0, ptr @last_console, align 4
  %arrayidx = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %0
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %vc_mode = getelementptr inbounds %struct.vc_data, ptr %2, i32 0, i32 17
  %3 = ptrtoint ptr %vc_mode to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %vc_mode, align 4
  tail call void @redraw_screen(ptr noundef %vc, i32 noundef 1) #6
  %vc_mode1 = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 17
  %5 = ptrtoint ptr %vc_mode1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %vc_mode1, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %4, i8 %6)
  %cmp.not = icmp eq i8 %4, %6
  br i1 %cmp.not, label %entry.if.end9_crit_edge, label %if.then

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp6 = icmp eq i8 %6, 0
  br i1 %cmp6, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @do_unblank_screen(i32 noundef 1) #6
  br label %if.end9

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @do_blank_screen(i32 noundef 1) #6
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then8, %entry.if.end9_crit_edge
  %vt_mode = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 33
  %7 = ptrtoint ptr %vt_mode to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %vt_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %cmp11 = icmp eq i8 %8, 1
  br i1 %cmp11, label %if.then13, label %if.end9.if.end34_crit_edge

if.end9.if.end34_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.then13:                                        ; preds = %if.end9
  %vt_pid = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 34
  %9 = ptrtoint ptr %vt_pid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vt_pid, align 4
  %acqsig = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 33, i32 3
  %11 = ptrtoint ptr %acqsig to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %acqsig, align 4
  %conv15 = sext i16 %12 to i32
  %call = tail call i32 @kill_pid(ptr noundef %10, i32 noundef %conv15, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp16.not = icmp eq i32 %call, 0
  br i1 %cmp16.not, label %if.then13.if.end34_crit_edge, label %if.then18

if.then13.if.end34_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.then18:                                        ; preds = %if.then13
  %13 = ptrtoint ptr %vc_mode1 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %vc_mode1, align 4
  %vc_num.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 3
  %14 = ptrtoint ptr %vc_num.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %vc_num.i, align 4
  %conv.i = zext i16 %15 to i32
  tail call void @vt_reset_unicode(i32 noundef %conv.i) #6
  %16 = ptrtoint ptr %vt_mode to i32
  call void @__asan_storeN_noabort(i32 %16, i32 8)
  store i64 0, ptr %vt_mode, align 4
  %17 = ptrtoint ptr %vt_pid to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vt_pid, align 4
  tail call void @put_pid(ptr noundef %18) #6
  %19 = ptrtoint ptr %vt_pid to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %vt_pid, align 4
  %vt_newvt.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 35
  %20 = ptrtoint ptr %vt_newvt.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %vt_newvt.i, align 4
  tail call void @reset_palette(ptr noundef %vc) #6
  %21 = ptrtoint ptr %vc_mode1 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %vc_mode1, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %4, i8 %22)
  %cmp22.not = icmp eq i8 %4, %22
  br i1 %cmp22.not, label %if.then18.if.end34_crit_edge, label %if.then24

if.then18.if.end34_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.then24:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp27 = icmp eq i8 %22, 0
  br i1 %cmp27, label %if.then29, label %if.else30

if.then29:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @do_unblank_screen(i32 noundef 1) #6
  br label %if.end34

if.else30:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @do_blank_screen(i32 noundef 1) #6
  br label %if.end34

if.end34:                                         ; preds = %if.else30, %if.then29, %if.then18.if.end34_crit_edge, %if.then13.if.end34_crit_edge, %if.end9.if.end34_crit_edge
  %vc_num = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 3
  %23 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %vc_num, align 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @vt_event_lock) #6
  %pos.027.i = load ptr, ptr @vt_events, align 4
  %cmp.i.not28.i = icmp eq ptr %pos.027.i, @vt_events
  br i1 %cmp.i.not28.i, label %for.end.thread.i, label %for.body.lr.ph.i

for.end.thread.i:                                 ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @vt_event_lock, i32 noundef %call2.i) #6
  br label %vt_event_post.exit

for.body.lr.ph.i:                                 ; preds = %if.end34
  %conv35 = zext i16 %24 to i32
  %add.i = add i32 %0, 1
  %add13.i = add nuw nsw i32 %conv35, 1
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %pos.030.i = phi ptr [ %pos.027.i, %for.body.lr.ph.i ], [ %pos.0.i, %cleanup.i.for.body.i_crit_edge ]
  %wake.029.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %wake.1.i, %cleanup.i.for.body.i_crit_edge ]
  %event7.i = getelementptr inbounds %struct.vt_event_wait, ptr %pos.030.i, i32 0, i32 1
  %25 = ptrtoint ptr %event7.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %event7.i, align 4
  %and.i = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool9.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool9.not.i, label %for.body.i.cleanup.i_crit_edge, label %if.end.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %event7.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %event7.i, align 4
  %oldev.i = getelementptr inbounds %struct.vt_event_wait, ptr %pos.030.i, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %oldev.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %add.i, ptr %oldev.i, align 4
  %newev.i = getelementptr inbounds %struct.vt_event_wait, ptr %pos.030.i, i32 0, i32 1, i32 2
  %29 = ptrtoint ptr %newev.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %add13.i, ptr %newev.i, align 4
  %done.i = getelementptr inbounds %struct.vt_event_wait, ptr %pos.030.i, i32 0, i32 2
  %30 = ptrtoint ptr %done.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %done.i, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i, %for.body.i.cleanup.i_crit_edge
  %wake.1.i = phi i32 [ 1, %if.end.i ], [ %wake.029.i, %for.body.i.cleanup.i_crit_edge ]
  %31 = ptrtoint ptr %pos.030.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %pos.0.i = load ptr, ptr %pos.030.i, align 4
  %cmp.i.not.i = icmp eq ptr %pos.0.i, @vt_events
  br i1 %cmp.i.not.i, label %for.end.i, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %cleanup.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @vt_event_lock, i32 noundef %call2.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wake.1.i)
  %tobool16.not.i = icmp eq i32 %wake.1.i, 0
  br i1 %tobool16.not.i, label %for.end.i.vt_event_post.exit_crit_edge, label %if.then17.i

for.end.i.vt_event_post.exit_crit_edge:           ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %vt_event_post.exit

if.then17.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__wake_up(ptr noundef nonnull @vt_event_waitqueue, i32 noundef 1, i32 noundef 1, ptr noundef null) #6
  br label %vt_event_post.exit

vt_event_post.exit:                               ; preds = %if.then17.i, %for.end.i.vt_event_post.exit_crit_edge, %for.end.thread.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vt_move_to_console(i32 noundef %vt, i32 noundef %alloc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @console_lock() #6
  %0 = load i32, ptr @disable_vt_switch, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @console_unlock() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fg_console to i32))
  %1 = load i32, ptr @fg_console, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %alloc)
  %tobool1.not = icmp eq i32 %alloc, 0
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %land.lhs.true

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

land.lhs.true:                                    ; preds = %if.end
  %call = tail call i32 @vc_allocate(i32 noundef %vt) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end4_crit_edge, label %if.then3

land.lhs.true.if.end4_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @console_unlock() #6
  br label %cleanup

if.end4:                                          ; preds = %land.lhs.true.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %call5 = tail call i32 @set_console(i32 noundef %vt) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  tail call void @console_unlock() #6
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %add = add i32 %vt, 1
  %call9 = tail call i32 @vt_waitactive(i32 noundef %add)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %do.body

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vt_move_to_console.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vt_move_to_console, %if.then16)) #6
          to label %cleanup [label %if.then16], !srcloc !59

if.then16:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vt_move_to_console.__UNIQUE_ID_ddebug292, ptr noundef nonnull @.str.3) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %do.body, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.then3, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -28, %if.then3 ], [ -4, %if.then16 ], [ %1, %if.end8.cleanup_crit_edge ], [ -4, %do.body ], [ -5, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pm_set_vt_switch(i32 noundef %do_switch) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @console_lock() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %do_switch)
  %tobool.not = icmp eq i32 %do_switch, 0
  %lnot.ext = zext i1 %tobool.not to i32
  store i32 %lnot.ext, ptr @disable_vt_switch, align 4
  tail call void @console_unlock() #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kd_mksound(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kbd_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vt_kdsetmode(ptr nocapture noundef %vc, i32 noundef %mode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %mode)
  %0 = icmp ult i32 %mode, 4
  br i1 %0, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

switch.lookup:                                    ; preds = %entry
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.vt_kdsetmode, i32 0, i32 %mode
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load i32, ptr %switch.gep, align 4
  %vc_mode = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 17
  %2 = ptrtoint ptr %vc_mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %vc_mode, align 4
  %conv = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %switch.load, i32 %conv)
  %cmp = icmp eq i32 %switch.load, %conv
  br i1 %cmp, label %switch.lookup.return_crit_edge, label %if.end

switch.lookup.return_crit_edge:                   ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %switch.lookup
  %conv2 = trunc i32 %switch.load to i8
  %4 = ptrtoint ptr %vc_mode to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv2, ptr %vc_mode, align 4
  %vc_num = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 3
  %5 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %vc_num, align 4
  %conv4 = zext i16 %6 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fg_console to i32))
  %7 = load i32, ptr @fg_console, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv4)
  %cmp5.not = icmp eq i32 %7, %conv4
  br i1 %cmp5.not, label %if.end8, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode)
  %cmp9.not = icmp eq i32 %mode, 1
  br i1 %cmp9.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @do_unblank_screen(i32 noundef 1) #6
  br label %return

if.else:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @do_blank_screen(i32 noundef 1) #6
  br label %return

return:                                           ; preds = %if.else, %if.then11, %if.end.return_crit_edge, %switch.lookup.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ 0, %switch.lookup.return_crit_edge ], [ 0, %if.end.return_crit_edge ], [ 0, %if.else ], [ 0, %if.then11 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vt_do_kdskbmode(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_ldisc_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vt_do_kdgkbmode(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vt_do_kdskbmeta(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vt_do_kdgkbmeta(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vt_do_kbkeycode_ioctl(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vt_do_kdsk_ioctl(i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vt_do_kdgkb_ioctl(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vt_do_diacrit(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vt_do_kdskled(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @con_font_op(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_unblank_screen(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_blank_screen(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @con_set_cmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @con_get_cmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @con_set_trans_old(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @con_get_trans_old(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @con_set_trans_new(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @con_get_trans_new(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @con_clear_unimap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @con_set_unimap(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @con_get_unimap(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @is_console_locked() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vc_deallocate(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @vc_is_sel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @redraw_screen(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !9, !11, !13, !15, !16, !18, !20, !21, !23, !24, !26}
!llvm.named.register.sp = !{!28}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/tty/vt/vt_ioctl.c", i32 811, i32 7}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/tty/vt/vt_ioctl.c", i32 1302, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @vt_move_to_console.__UNIQUE_ID_ddebug292, !3, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!7 = !{ptr @__ksymtab_pm_set_vt_switch, !8, !"__ksymtab_pm_set_vt_switch", i1 false, i1 false}
!8 = !{!"../drivers/tty/vt/vt_ioctl.c", i32 1321, i32 1}
!9 = !{ptr @vt_dont_switch, !10, !"vt_dont_switch", i1 false, i1 false}
!10 = !{!"../drivers/tty/vt/vt_ioctl.c", i32 42, i32 6}
!11 = !{ptr @disable_vt_switch, !12, !"disable_vt_switch", i1 false, i1 false}
!12 = !{!"../drivers/tty/vt/vt_ioctl.c", i32 1270, i32 12}
!13 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/tty/vt/vt_ioctl.c", i32 99, i32 8}
!15 = !{ptr @vt_event_lock, !14, !"vt_event_lock", i1 false, i1 false}
!16 = !{ptr @vt_events, !17, !"vt_events", i1 false, i1 false}
!17 = !{!"../drivers/tty/vt/vt_ioctl.c", i32 98, i32 8}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/tty/vt/vt_ioctl.c", i32 100, i32 8}
!20 = !{ptr @vt_event_waitqueue, !19, !"vt_event_waitqueue", i1 false, i1 false}
!21 = distinct !{null, !22, !"__already_done", i1 false, i1 false}
!22 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!23 = distinct !{null, !22, !"<string literal>", i1 false, i1 false}
!24 = distinct !{null, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!28 = !{!"sp"}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{i64 3076095}
!39 = !{i64 3076292}
!40 = !{i64 2150561525}
!41 = !{i64 2155208217, i64 2155208497, i64 2155208831, i64 2155209165}
!42 = !{!"auto-init"}
!43 = !{!"branch_weights", i32 2000, i32 1}
!44 = !{i64 2155221034, i64 2155221314, i64 2155221648, i64 2155221982}
!45 = !{i64 2155229952, i64 2155230232, i64 2155230566, i64 2155230900}
!46 = !{i64 2155238851, i64 2155239131, i64 2155239465, i64 2155239799}
!47 = !{i64 2150580540, i64 2150580565}
!48 = !{i64 2150581221, i64 2150581246}
!49 = !{i64 2155249238, i64 2155249518, i64 2155249852, i64 2155250186}
!50 = !{!"branch_weights", i32 1, i32 2000}
!51 = !{i64 2155258086, i64 2155258366, i64 2155258700, i64 2155259034}
!52 = !{i64 2155268900, i64 2155269180, i64 2155269514, i64 2155269848}
!53 = !{i64 656348, i64 656365}
!54 = !{i64 2155280682, i64 2155280962, i64 2155281296, i64 2155281630}
!55 = !{i64 2155292882, i64 2155293162, i64 2155293496, i64 2155293830}
!56 = !{i64 2155303131, i64 2155303411, i64 2155303745, i64 2155304079}
!57 = !{i64 2148348106, i64 2148348138, i64 2148348167, i64 2148348201, i64 2148348232, i64 2148348255}
!58 = !{i8 0, i8 2}
!59 = !{i64 2148812055, i64 2148812060, i64 2148812073, i64 2148812117, i64 2148812151, i64 2148812172}
