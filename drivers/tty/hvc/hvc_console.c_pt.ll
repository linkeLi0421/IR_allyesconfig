; ModuleID = '/llk/IR_all_yes/drivers/tty/hvc/hvc_console.c_pt.bc'
source_filename = "../drivers/tty/hvc/hvc_console.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+hvc_instantiate\22, \22a\22\09"
module asm "\09.weak\09__crc_hvc_instantiate\09\09\09\09"
module asm "\09.long\09__crc_hvc_instantiate\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hvc_instantiate:\09\09\09\09\09"
module asm "\09.asciz \09\22hvc_instantiate\22\09\09\09\09\09"
module asm "__kstrtabns_hvc_instantiate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+hvc_kick\22, \22a\22\09"
module asm "\09.weak\09__crc_hvc_kick\09\09\09\09"
module asm "\09.long\09__crc_hvc_kick\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hvc_kick:\09\09\09\09\09"
module asm "\09.asciz \09\22hvc_kick\22\09\09\09\09\09"
module asm "__kstrtabns_hvc_kick:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+hvc_poll\22, \22a\22\09"
module asm "\09.weak\09__crc_hvc_poll\09\09\09\09"
module asm "\09.long\09__crc_hvc_poll\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hvc_poll:\09\09\09\09\09"
module asm "\09.asciz \09\22hvc_poll\22\09\09\09\09\09"
module asm "__kstrtabns_hvc_poll:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__hvc_resize\22, \22a\22\09"
module asm "\09.weak\09__crc___hvc_resize\09\09\09\09"
module asm "\09.long\09__crc___hvc_resize\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___hvc_resize:\09\09\09\09\09"
module asm "\09.asciz \09\22__hvc_resize\22\09\09\09\09\09"
module asm "__kstrtabns___hvc_resize:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+hvc_alloc\22, \22a\22\09"
module asm "\09.weak\09__crc_hvc_alloc\09\09\09\09"
module asm "\09.long\09__crc_hvc_alloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hvc_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22hvc_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_hvc_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+hvc_remove\22, \22a\22\09"
module asm "\09.weak\09__crc_hvc_remove\09\09\09\09"
module asm "\09.long\09__crc_hvc_remove\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hvc_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22hvc_remove\22\09\09\09\09\09"
module asm "__kstrtabns_hvc_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.tty_port_operations = type { ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.console = type { [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, ptr, ptr }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.tty_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hvc_struct = type { %struct.tty_port, %struct.spinlock, i32, i32, ptr, i32, i32, i32, ptr, i32, i32, %struct.winsize, %struct.work_struct, %struct.list_head, i32 }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon = type { ptr }
%struct.llist_head = type { ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hv_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.65, %struct.anon.66, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.anon.65 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.66 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.tty_driver = type { i32, %struct.kref, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, %struct.ktermios, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.52, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.28 }
%struct.llist_node = type { ptr }
%union.anon.28 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.30 }
%union.anon.30 = type { %struct.anon.31 }
%struct.anon.31 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.52 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@__initcall__kmod_hvc_console__227_246_hvc_console_initcon = internal global ptr @hvc_console_init, section ".con_initcall.init", align 4
@vtermnos = internal global { [16 x i32], [32 x i8] } { [16 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@cons_ops = internal global { [16 x ptr], [32 x i8] } zeroinitializer, align 32
@__kstrtab_hvc_instantiate = external dso_local constant [0 x i8], align 1
@__kstrtabns_hvc_instantiate = external dso_local constant [0 x i8], align 1
@__ksymtab_hvc_instantiate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hvc_instantiate to i32), ptr @__kstrtab_hvc_instantiate, ptr @__kstrtabns_hvc_instantiate }, section "___ksymtab_gpl+hvc_instantiate", align 4
@hvc_kicked = internal global { i1, [31 x i8] } zeroinitializer, align 32
@hvc_task = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_hvc_kick = external dso_local constant [0 x i8], align 1
@__kstrtabns_hvc_kick = external dso_local constant [0 x i8], align 1
@__ksymtab_hvc_kick = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hvc_kick to i32), ptr @__kstrtab_hvc_kick, ptr @__kstrtabns_hvc_kick }, section "___ksymtab_gpl+hvc_kick", align 4
@__kstrtab_hvc_poll = external dso_local constant [0 x i8], align 1
@__kstrtabns_hvc_poll = external dso_local constant [0 x i8], align 1
@__ksymtab_hvc_poll = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hvc_poll to i32), ptr @__kstrtab_hvc_poll, ptr @__kstrtabns_hvc_poll }, section "___ksymtab_gpl+hvc_poll", align 4
@__kstrtab___hvc_resize = external dso_local constant [0 x i8], align 1
@__kstrtabns___hvc_resize = external dso_local constant [0 x i8], align 1
@__ksymtab___hvc_resize = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__hvc_resize to i32), ptr @__kstrtab___hvc_resize, ptr @__kstrtabns___hvc_resize }, section "___ksymtab_gpl+__hvc_resize", align 4
@hvc_needs_init = internal global %struct.atomic_t { i32 -1 }, section ".data..read_mostly", align 4
@hvc_port_ops = internal constant { %struct.tty_port_operations, [44 x i8] } { %struct.tty_port_operations { ptr null, ptr null, ptr null, ptr null, ptr @hvc_port_destruct }, [44 x i8] zeroinitializer }, align 32
@hvc_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(work_completion)(&hp->tty_resize)\00", [61 x i8] zeroinitializer }, align 32
@hvc_alloc.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&hp->lock\00", [22 x i8] zeroinitializer }, align 32
@hvc_structs_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @hvc_structs_mutex, i64 52), ptr getelementptr (i8, ptr @hvc_structs_mutex, i64 52) }, ptr @hvc_structs_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@last_hvc = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@hvc_structs = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @hvc_structs, ptr @hvc_structs }, [24 x i8] zeroinitializer }, align 32
@__kstrtab_hvc_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_hvc_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_hvc_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hvc_alloc to i32), ptr @__kstrtab_hvc_alloc, ptr @__kstrtabns_hvc_alloc }, section "___ksymtab_gpl+hvc_alloc", align 4
@__kstrtab_hvc_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_hvc_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_hvc_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hvc_remove to i32), ptr @__kstrtab_hvc_remove, ptr @__kstrtabns_hvc_remove }, section "___ksymtab_gpl+hvc_remove", align 4
@hvc_console = internal global { %struct.console, [60 x i8] } { %struct.console { [16 x i8] c"hvc\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hvc_console_print, ptr null, ptr @hvc_console_device, ptr null, ptr @hvc_console_setup, ptr null, ptr null, i16 1, i16 -1, i32 0, i32 0, i32 0, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/tty/hvc/hvc_console.c\00", [34 x i8] zeroinitializer }, align 32
@hvc_driver = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@timeout = internal global { i32, [28 x i8] } { i32 10, [28 x i8] zeroinitializer }, align 32
@sysrq_pressed = internal global { i32, [28 x i8] } zeroinitializer, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"hvc_structs_mutex.wait_lock\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hvc_structs_mutex\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"hvc\00", [28 x i8] zeroinitializer }, align 32
@tty_std_termios = external dso_local local_unnamed_addr global %struct.ktermios, align 4
@hvc_ops = internal constant { %struct.tty_operations, [48 x i8] } { %struct.tty_operations { ptr null, ptr @hvc_install, ptr null, ptr @hvc_open, ptr @hvc_close, ptr null, ptr @hvc_cleanup, ptr @hvc_write, ptr null, ptr null, ptr @hvc_write_room, ptr @hvc_chars_in_buffer, ptr null, ptr null, ptr null, ptr null, ptr @hvc_unthrottle, ptr null, ptr null, ptr @hvc_hangup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hvc_tiocmget, ptr @hvc_tiocmset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hvc_poll_init, ptr @hvc_poll_get_char, ptr @hvc_poll_put_char, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"khvcd\00", [26 x i8] zeroinitializer }, align 32
@hvc_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 1043, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013Couldn't create kthread for console.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hvc_init\00", [23 x i8] zeroinitializer }, align 32
@hvc_init._entry_ptr = internal global ptr @hvc_init._entry, section ".printk_index", align 4
@hvc_init._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.3, i32 1050, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013Couldn't register hvc console driver\0A\00", [56 x i8] zeroinitializer }, align 32
@hvc_init._entry_ptr.12 = internal global ptr @hvc_init._entry.10, section ".printk_index", align 4
@hvc_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 374, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013hvc_open: request_irq failed with rc %d.\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hvc_open\00", [23 x i8] zeroinitializer }, align 32
@hvc_open._entry_ptr = internal global ptr @hvc_open._entry, section ".printk_index", align 4
@hvc_close._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 427, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013hvc_close %X: oops, count is %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hvc_close\00", [22 x i8] zeroinitializer }, align 32
@hvc_close._entry_ptr = internal global ptr @hvc_close._entry, section ".printk_index", align 4
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/freezer.h\00", [40 x i8] zeroinitializer }, align 32
@system_freezing_cnt = external dso_local global %struct.atomic_t, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 32, i64 4294967264, i64 4294967285]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@___asan_gen_.21 = private unnamed_addr constant [9 x i8] c"vtermnos\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 143, i32 17 }
@___asan_gen_.24 = private unnamed_addr constant [9 x i8] c"cons_ops\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 142, i32 29 }
@___asan_gen_.27 = private unnamed_addr constant [11 x i8] c"hvc_kicked\00", align 1
@___asan_gen_.28 = private unnamed_addr constant [9 x i8] c"hvc_task\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 55, i32 28 }
@___asan_gen_.31 = private unnamed_addr constant [13 x i8] c"hvc_port_ops\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 907, i32 41 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 939, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 940, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant [18 x i8] c"hvc_structs_mutex\00", align 1
@___asan_gen_.49 = private unnamed_addr constant [9 x i8] c"last_hvc\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 83, i32 12 }
@___asan_gen_.52 = private unnamed_addr constant [12 x i8] c"hvc_structs\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 70, i32 8 }
@___asan_gen_.55 = private unnamed_addr constant [12 x i8] c"hvc_console\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 217, i32 23 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 116, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant [11 x i8] c"hvc_driver\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 54, i32 27 }
@___asan_gen_.64 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 618, i32 12 }
@___asan_gen_.67 = private unnamed_addr constant [14 x i8] c"sysrq_pressed\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 66, i32 12 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 76, i32 8 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 1031, i32 21 }
@___asan_gen_.79 = private unnamed_addr constant [8 x i8] c"hvc_ops\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 888, i32 36 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 1041, i32 13 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 1043, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 1050, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 374, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.116 = private constant [33 x i8] c"../drivers/tty/hvc/hvc_console.c\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 426, i32 4 }
@___asan_gen_.118 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.119 = private unnamed_addr constant [27 x i8] c"../include/linux/freezer.h\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 57, i32 2 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @__initcall__kmod_hvc_console__227_246_hvc_console_initcon, ptr @__ksymtab___hvc_resize, ptr @__ksymtab_hvc_alloc, ptr @__ksymtab_hvc_instantiate, ptr @__ksymtab_hvc_kick, ptr @__ksymtab_hvc_poll, ptr @__ksymtab_hvc_remove, ptr @hvc_close._entry, ptr @hvc_close._entry_ptr, ptr @hvc_init._entry, ptr @hvc_init._entry.10, ptr @hvc_init._entry_ptr, ptr @hvc_init._entry_ptr.12, ptr @hvc_open._entry, ptr @hvc_open._entry_ptr, ptr @vtermnos, ptr @cons_ops, ptr @hvc_kicked, ptr @hvc_task, ptr @hvc_port_ops, ptr @hvc_alloc.__key, ptr @.str, ptr @hvc_alloc.__key.1, ptr @.str.2, ptr @hvc_structs_mutex, ptr @last_hvc, ptr @hvc_structs, ptr @hvc_console, ptr @.str.3, ptr @hvc_driver, ptr @timeout, ptr @sysrq_pressed, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @hvc_ops, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vtermnos to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cons_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hvc_kicked to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hvc_task to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hvc_port_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hvc_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hvc_alloc.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hvc_structs_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @last_hvc to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hvc_structs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hvc_console to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hvc_driver to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timeout to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysrq_pressed to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hvc_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hvc_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hvc_init._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hvc_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hvc_close._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hvc_console_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @register_console(ptr noundef nonnull @hvc_console) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hvc_instantiate(i32 noundef %vtermno, i32 noundef %index, ptr noundef %ops) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %index)
  %0 = icmp ugt i32 %index, 15
  br i1 %0, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [16 x i32], ptr @vtermnos, i32 0, i32 %index
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %cmp2.not = icmp eq i32 %2, -1
  br i1 %cmp2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call = tail call fastcc ptr @hvc_get_by_index(i32 noundef %index)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @tty_port_put(ptr noundef nonnull %call) #12
  br label %cleanup

if.end6:                                          ; preds = %if.end4
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %vtermno, ptr %arrayidx, align 4
  %arrayidx8 = getelementptr [16 x ptr], ptr @cons_ops, i32 0, i32 %index
  %4 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %ops, ptr %arrayidx8, align 4
  %5 = load i16, ptr getelementptr inbounds (%struct.console, ptr @hvc_console, i32 0, i32 8), align 4
  %6 = and i16 %5, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not.i = icmp eq i16 %6, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %if.end6
  %7 = load i16, ptr getelementptr inbounds (%struct.console, ptr @hvc_console, i32 0, i32 9), align 2
  %conv1.i = sext i16 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv1.i, i32 %index)
  %cmp.i = icmp eq i32 %conv1.i, %index
  br i1 %cmp.i, label %if.then3.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @register_console(ptr noundef nonnull @hvc_console) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then3.i, %if.end.i.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.then5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %if.then5 ], [ -1, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %if.then3.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @hvc_get_by_index(i32 noundef %index) unnamed_addr #1 align 64 {
entry:
  %old.i.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @hvc_structs_mutex, i32 noundef 0) #12
  %.pn30 = load ptr, ptr @hvc_structs, align 4
  %cmp.not31 = icmp eq ptr %.pn30, @hvc_structs
  br i1 %cmp.not31, label %entry.for.end_crit_edge, label %entry.do.body1_crit_edge

entry.do.body1_crit_edge:                         ; preds = %entry
  br label %do.body1

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

do.body1:                                         ; preds = %if.end.do.body1_crit_edge, %entry.do.body1_crit_edge
  %.pn32 = phi ptr [ %.pn, %if.end.do.body1_crit_edge ], [ %.pn30, %entry.do.body1_crit_edge ]
  %lock = getelementptr i8, ptr %.pn32, i32 -132
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %index7 = getelementptr i8, ptr %.pn32, i32 -88
  %0 = ptrtoint ptr %index7 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %index)
  %cmp8 = icmp eq i32 %1, %index
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %do.body1
  %hp.0.le = getelementptr i8, ptr %.pn32, i32 -708
  %tobool.not.i = icmp eq ptr %hp.0.le, null
  br i1 %tobool.not.i, label %if.then.tty_port_get.exit_crit_edge, label %land.lhs.true.i

if.then.tty_port_get.exit_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %tty_port_get.exit

land.lhs.true.i:                                  ; preds = %if.then
  %kref.i = getelementptr i8, ptr %.pn32, i32 -140
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #12
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %kref.i, i32 noundef 4) #12
  %2 = ptrtoint ptr %kref.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %kref.i, align 4
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %land.lhs.true.i
  %4 = phi i32 [ %3, %land.lhs.true.i ], [ %asmresult3.i.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge ]
  %5 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %old.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i.i.i.i.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i.i.i.i.i, label %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %do.cond.i.i.i.i.i

do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i.i.i.i

do.cond.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i
  %add.i.i.i.i.i = add i32 %4, 1
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #12
  %call.i3.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i.i, i32 noundef 4) #12
  %6 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %old.i.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #12
  br label %do.body.i.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.i:                          ; preds = %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i.i
  %8 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 %7, i32 %add.i.i.i.i.i, ptr elementtype(i32) %kref.i) #12, !srcloc !91
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %8, 0
  %tobool.not.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i:   ; preds = %do.body.i.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %8, 1
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i.i, %7
  br i1 %cmp.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, !prof !92

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i.i.i.i

if.end4.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge
  %9 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %old.i.i.i.i.i, align 4
  %add5.i.i.i.i.i = add i32 %10, 1
  %11 = or i32 %add5.i.i.i.i.i, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %.not.i.i.i.i.i = icmp sgt i32 %11, -1
  br i1 %.not.i.i.i.i.i, label %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !92

if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge: ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kref_get_unless_zero.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 0) #12
  br label %kref_get_unless_zero.exit.i

kref_get_unless_zero.exit.i:                      ; preds = %if.then10.i.i.i.i.i, %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #12
  br label %tty_port_get.exit

tty_port_get.exit:                                ; preds = %kref_get_unless_zero.exit.i, %if.then.tty_port_get.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #12
  call void @mutex_unlock(ptr noundef nonnull @hvc_structs_mutex) #12
  br label %cleanup

if.end:                                           ; preds = %do.body1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #12
  %12 = ptrtoint ptr %.pn32 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn = load ptr, ptr %.pn32, align 4
  %cmp.not = icmp eq ptr %.pn, @hvc_structs
  br i1 %cmp.not, label %if.end.for.end_crit_edge, label %if.end.do.body1_crit_edge

if.end.do.body1_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body1

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @hvc_structs_mutex) #12
  br label %cleanup

cleanup:                                          ; preds = %for.end, %tty_port_get.exit
  %retval.0 = phi ptr [ %hp.0.le, %tty_port_get.exit ], [ null, %for.end ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hvc_kick() #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  store i1 true, ptr @hvc_kicked, align 4
  %0 = load ptr, ptr @hvc_task, align 4
  %call = tail call i32 @wake_up_process(ptr noundef %0) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hvc_poll(ptr noundef %hp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__hvc_poll(ptr noundef %hp, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__hvc_poll(ptr noundef %hp, i1 noundef zeroext %may_sleep) unnamed_addr #1 align 64 {
entry:
  %buf = alloca [16 x i8], align 128
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf) #12
  %lock = getelementptr inbounds %struct.hvc_struct, ptr %hp, i32 0, i32 1
  %0 = call ptr @memset(ptr %buf, i32 255, i32 16)
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %n_outbuf = getelementptr inbounds %struct.hvc_struct, ptr %hp, i32 0, i32 6
  %1 = ptrtoint ptr %n_outbuf to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %n_outbuf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp5 = icmp sgt i32 %2, 0
  br i1 %cmp5, label %if.then, label %entry.if.end12_crit_edge

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then:                                          ; preds = %entry
  %ops.i = getelementptr inbounds %struct.hvc_struct, ptr %hp, i32 0, i32 8
  %3 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops.i, align 4
  %put_chars.i = getelementptr inbounds %struct.hv_ops, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %put_chars.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %put_chars.i, align 4
  %vtermno.i = getelementptr inbounds %struct.hvc_struct, ptr %hp, i32 0, i32 7
  %7 = ptrtoint ptr %vtermno.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vtermno.i, align 4
  %outbuf.i = getelementptr inbounds %struct.hvc_struct, ptr %hp, i32 0, i32 4
  %9 = ptrtoint ptr %outbuf.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %outbuf.i, align 4
  %call.i = tail call i32 %6(i32 noundef %8, ptr noundef %10, i32 noundef %2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 1
  br i1 %cmp.i, label %if.then.i, label %if.end6.i

if.then.i:                                        ; preds = %if.then
  %11 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i, label %if.end6.thread.i [
    i32 0, label %if.then.i.if.then3.i_crit_edge
    i32 -11, label %if.then.i.if.then3.i_crit_edge224
  ]

if.then.i.if.then3.i_crit_edge224:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then3.i

if.then.i.if.then3.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then3.i

if.end6.thread.i:                                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %n_outbuf to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %n_outbuf, align 4
  br label %if.else13.i

if.then3.i:                                       ; preds = %if.then.i.if.then3.i_crit_edge, %if.then.i.if.then3.i_crit_edge224
  %do_wakeup.i = getelementptr inbounds %struct.hvc_struct, ptr %hp, i32 0, i32 3
  %13 = ptrtoint ptr %do_wakeup.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %do_wakeup.i, align 4
  br label %if.end

if.end6.i:                                        ; preds = %if.then
  %14 = ptrtoint ptr %n_outbuf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %n_outbuf, align 4
  %sub.i = sub i32 %15, %call.i
  store i32 %sub.i, ptr %n_outbuf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp8.i = icmp sgt i32 %sub.i, 0
  br i1 %cmp8.i, label %if.then9.i, label %if.end6.i.if.else13.i_crit_edge

if.end6.i.if.else13.i_crit_edge:                  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else13.i

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %outbuf.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %outbuf.i, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 %call.i
  %18 = call ptr @memmove(ptr %17, ptr %add.ptr.i, i32 %sub.i)
  br label %if.end

if.else13.i:                                      ; preds = %if.end6.i.if.else13.i_crit_edge, %if.end6.thread.i
  %do_wakeup14.i = getelementptr inbounds %struct.hvc_struct, ptr %hp, i32 0, i32 3
  %19 = ptrtoint ptr %do_wakeup14.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %do_wakeup14.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.else13.i, %if.then9.i, %if.then3.i
  %written_total.0.ph = phi i32 [ 1, %if.then9.i ], [ %call.i, %if.else13.i ], [ 0, %if.then3.i ]
  %20 = ptrtoint ptr %n_outbuf to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pr = load i32, ptr %n_outbuf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp9 = icmp sgt i32 %.pr, 0
  br i1 %cmp9, label %if.then11, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %written_total.0.ph)
  %tobool.not = icmp eq i32 %written_total.0.ph, 0
  %cond = select i1 %tobool.not, i32 10, i32 0
  store i32 %cond, ptr @timeout, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end.if.end12_crit_edge, %entry.if.end12_crit_edge
  %poll_mask.0 = phi i32 [ 2, %if.then11 ], [ 0, %if.end.if.end12_crit_edge ], [ 0, %entry.if.end12_crit_edge ]
  br i1 %may_sleep, label %if.then14, label %if.end12.if.end32_crit_edge

if.end12.if.end32_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #12
  tail call void @__might_resched(ptr noundef nonnull @.str.3, i32 noundef 656, i32 noundef 0) #12
  %call.i185 = tail call i32 @__cond_resched() #12
  %call27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  br label %if.end32

if.end32:                                         ; preds = %if.then14, %if.end12.if.end32_crit_edge
  %flags.0 = phi i32 [ %call27, %if.then14 ], [ %call2, %if.end12.if.end32_crit_edge ]
  %call33 = tail call ptr @tty_port_tty_get(ptr noundef %hp) #12
  %cmp34 = icmp eq ptr %call33, null
  br i1 %cmp34, label %bail.thread, label %if.end37

bail.thread:                                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.0) #12
  br label %if.end140

if.end37:                                         ; preds = %if.end32
  %flags.i = getelementptr inbounds %struct.tty_struct, ptr %call33, i32 0, i32 16
  %21 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end40, label %if.end37.out_crit_edge

if.end37.out_crit_edge:                           ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end40:                                         ; preds = %if.end37
  %irq_requested = getelementptr inbounds %struct.hvc_struct, ptr %hp, i32 0, i32 9
  %23 = ptrtoint ptr %irq_requested to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %irq_requested, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool41.not = icmp eq i32 %24, 0
  %or43 = or i32 %poll_mask.0, 1
  %spec.select = select i1 %tobool41.not, i32 %or43, i32 %poll_mask.0
  %ops = getelementptr inbounds %struct.hvc_struct, ptr %hp, i32 0, i32 8
  %vtermno = getelementptr inbounds %struct.hvc_struct, ptr %hp, i32 0, i32 7
  %index = getelementptr inbounds %struct.hvc_struct, ptr %hp, i32 0, i32 2
  %tail.i = getelementptr inbounds %struct.tty_bufhead, ptr %hp, i32 0, i32 8
  br label %read_again.outer

read_again.outer:                                 ; preds = %if.then107, %if.end40
  %read_total.0.ph = phi i32 [ %add, %if.then107 ], [ 0, %if.end40 ]
  %flags.1.ph = phi i32 [ %call120, %if.then107 ], [ %flags.0, %if.end40 ]
  br label %read_again

read_again:                                       ; preds = %if.else125.read_again_crit_edge, %read_again.outer
  %read_total.0 = phi i32 [ %add, %if.else125.read_again_crit_edge ], [ %read_total.0.ph, %read_again.outer ]
  %call46 = call i32 @tty_buffer_request_room(ptr noundef %hp, i32 noundef 16) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp47 = icmp eq i32 %call46, 0
  br i1 %cmp47, label %read_again.out_crit_edge, label %if.end51

read_again.out_crit_edge:                         ; preds = %read_again
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end51:                                         ; preds = %read_again
  %25 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %29 = ptrtoint ptr %vtermno to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %vtermno, align 4
  %call52 = call i32 %28(i32 noundef %30, ptr noundef nonnull %buf, i32 noundef %call46) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call52)
  %cmp53 = icmp slt i32 %call52, 1
  br i1 %cmp53, label %if.then55, label %if.end51.for.body_crit_edge

if.end51.for.body_crit_edge:                      ; preds = %if.end51
  br label %for.body

if.then55:                                        ; preds = %if.end51
  %31 = zext i32 %call52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %call52, label %if.then55.out_crit_edge [
    i32 -32, label %if.then58
    i32 -11, label %if.then76
  ]

if.then55.out_crit_edge:                          ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then58:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #14
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.1.ph) #12
  call void @tty_hangup(ptr noundef nonnull %call33) #12
  %call69 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  br label %out

if.then76:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end51.for.body_crit_edge
  %i.0201 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end51.for.body_crit_edge ]
  %32 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %index, align 4
  %34 = load i16, ptr getelementptr inbounds (%struct.console, ptr @hvc_console, i32 0, i32 9), align 2
  %conv83 = sext i16 %34 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %conv83)
  %cmp84 = icmp eq i32 %33, %conv83
  br i1 %cmp84, label %if.then86, label %for.body.if.end102_crit_edge

for.body.if.end102_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end102

if.then86:                                        ; preds = %for.body
  %arrayidx = getelementptr [16 x i8], ptr %buf, i32 0, i32 %i.0201
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx, align 1
  %conv87 = zext i8 %36 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %36)
  %cmp88 = icmp eq i8 %36, 15
  %37 = load i32, ptr @sysrq_pressed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool91.not = icmp eq i32 %37, 0
  br i1 %cmp88, label %if.then90, label %if.else95

if.then90:                                        ; preds = %if.then86
  %lnot.ext = zext i1 %tobool91.not to i32
  store i32 %lnot.ext, ptr @sysrq_pressed, align 4
  br i1 %tobool91.not, label %if.then90.for.inc_crit_edge, label %if.then90.if.end102_crit_edge

if.then90.if.end102_crit_edge:                    ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end102

if.then90.for.inc_crit_edge:                      ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.else95:                                        ; preds = %if.then86
  br i1 %tobool91.not, label %if.else95.if.end102_crit_edge, label %if.then97

if.else95.if.end102_crit_edge:                    ; preds = %if.else95
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end102

if.then97:                                        ; preds = %if.else95
  call void @__sanitizer_cov_trace_pc() #14
  call void @handle_sysrq(i32 noundef %conv87) #12
  store i32 0, ptr @sysrq_pressed, align 4
  br label %for.inc

if.end102:                                        ; preds = %if.else95.if.end102_crit_edge, %if.then90.if.end102_crit_edge, %for.body.if.end102_crit_edge
  %arrayidx104 = getelementptr [16 x i8], ptr %buf, i32 0, i32 %i.0201
  %38 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx104, align 1
  %40 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tail.i, align 4
  %used.i = getelementptr inbounds %struct.tty_buffer, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %used.i, align 4
  %size.i = getelementptr inbounds %struct.tty_buffer, ptr %41, i32 0, i32 2
  %44 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %45)
  %cmp3.i = icmp slt i32 %43, %45
  br i1 %cmp3.i, label %if.then.i187, label %if.end12.i

if.then.i187:                                     ; preds = %if.end102
  %flags.i186 = getelementptr inbounds %struct.tty_buffer, ptr %41, i32 0, i32 5
  %46 = ptrtoint ptr %flags.i186 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %flags.i186, align 4
  %and.i = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool7.not.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool7.not.not.i, label %if.then8.i, label %if.then.i187.if.end.i_crit_edge

if.then.i187.if.end.i_crit_edge:                  ; preds = %if.then.i187
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then8.i:                                       ; preds = %if.then.i187
  call void @__sanitizer_cov_trace_pc() #14
  %data.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %41, i32 0, i32 6
  %add.ptr.i.i.i = getelementptr i8, ptr %data.i.i.i, i32 %43
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %45
  %48 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %add.ptr.i.i, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then8.i, %if.then.i187.if.end.i_crit_edge
  %49 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %used.i, align 4
  %inc.i = add i32 %50, 1
  store i32 %inc.i, ptr %used.i, align 4
  %data.i.i = getelementptr inbounds %struct.tty_buffer, ptr %41, i32 0, i32 6
  %add.ptr.i1.i = getelementptr i8, ptr %data.i.i, i32 %50
  %51 = ptrtoint ptr %add.ptr.i1.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %39, ptr %add.ptr.i1.i, align 1
  br label %for.inc

if.end12.i:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #14
  %call13.i = call i32 @__tty_insert_flip_char(ptr noundef %hp, i8 noundef zeroext %39, i8 noundef zeroext 0) #12
  br label %for.inc

for.inc:                                          ; preds = %if.end12.i, %if.end.i, %if.then97, %if.then90.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0201, 1
  %exitcond.not = icmp eq i32 %inc, %call52
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc
  %add = add i32 %call52, %read_total.0
  br i1 %may_sleep, label %if.then107, label %if.else125

if.then107:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.1.ph) #12
  call void @__might_resched(ptr noundef nonnull @.str.3, i32 noundef 728, i32 noundef 0) #12
  %call.i188 = call i32 @__cond_resched() #12
  %call120 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  br label %read_again.outer

if.else125:                                       ; preds = %for.end
  %cmp126 = icmp slt i32 %add, 128
  br i1 %cmp126, label %if.else125.read_again_crit_edge, label %if.else125.out_crit_edge

if.else125.out_crit_edge:                         ; preds = %if.else125
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.else125.read_again_crit_edge:                  ; preds = %if.else125
  call void @__sanitizer_cov_trace_pc() #14
  br label %read_again

out:                                              ; preds = %if.else125.out_crit_edge, %if.then76, %if.then58, %if.then55.out_crit_edge, %read_again.out_crit_edge, %if.end37.out_crit_edge
  %read_total.1 = phi i32 [ 0, %if.end37.out_crit_edge ], [ %read_total.0, %if.then58 ], [ %read_total.0, %if.then76 ], [ %read_total.0, %if.then55.out_crit_edge ], [ %add, %if.else125.out_crit_edge ], [ %read_total.0, %read_again.out_crit_edge ]
  %flags.2 = phi i32 [ %flags.0, %if.end37.out_crit_edge ], [ %call69, %if.then58 ], [ %flags.1.ph, %if.then76 ], [ %flags.1.ph, %if.then55.out_crit_edge ], [ %flags.1.ph, %read_again.out_crit_edge ], [ %flags.1.ph, %if.else125.out_crit_edge ]
  %poll_mask.2 = phi i32 [ %poll_mask.0, %if.end37.out_crit_edge ], [ %spec.select, %if.then58 ], [ %or43, %if.then76 ], [ %spec.select, %if.then55.out_crit_edge ], [ %or43, %read_again.out_crit_edge ], [ %or43, %if.else125.out_crit_edge ]
  %do_wakeup = getelementptr inbounds %struct.hvc_struct, ptr %hp, i32 0, i32 3
  %52 = ptrtoint ptr %do_wakeup to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %do_wakeup, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool132.not = icmp eq i32 %53, 0
  br i1 %tobool132.not, label %out.bail_crit_edge, label %if.then133

out.bail_crit_edge:                               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %bail

if.then133:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  %54 = ptrtoint ptr %do_wakeup to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %do_wakeup, align 4
  call void @tty_wakeup(ptr noundef nonnull %call33) #12
  br label %bail

bail:                                             ; preds = %if.then133, %out.bail_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %read_total.1)
  %tobool137.not = icmp eq i32 %read_total.1, 0
  br i1 %tobool137.not, label %bail.if.end140_crit_edge, label %if.then138

bail.if.end140_crit_edge:                         ; preds = %bail
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end140

if.then138:                                       ; preds = %bail
  call void @__sanitizer_cov_trace_pc() #14
  store i32 10, ptr @timeout, align 4
  call void @tty_flip_buffer_push(ptr noundef %hp) #12
  br label %if.end140

if.end140:                                        ; preds = %if.then138, %bail.if.end140_crit_edge, %bail.thread
  %poll_mask.3195 = phi i32 [ %poll_mask.0, %bail.thread ], [ %poll_mask.2, %if.then138 ], [ %poll_mask.2, %bail.if.end140_crit_edge ]
  call void @tty_kref_put(ptr noundef %call33) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf) #12
  ret i32 %poll_mask.3195
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__hvc_resize(ptr noundef %hp, [2 x i32] %ws.coerce) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ws.coerce.fca.0.extract = extractvalue [2 x i32] %ws.coerce, 0
  %ws.coerce.fca.1.extract = extractvalue [2 x i32] %ws.coerce, 1
  %ws1 = getelementptr inbounds %struct.hvc_struct, ptr %hp, i32 0, i32 11
  %0 = ptrtoint ptr %ws1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %ws.coerce.fca.0.extract, ptr %ws1, align 4
  %ws.sroa.2.0.ws1.sroa_idx = getelementptr inbounds %struct.hvc_struct, ptr %hp, i32 0, i32 11, i32 2
  %1 = ptrtoint ptr %ws.sroa.2.0.ws1.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %ws.coerce.fca.1.extract, ptr %ws.sroa.2.0.ws1.sroa_idx, align 4
  %tty_resize = getelementptr inbounds %struct.hvc_struct, ptr %hp, i32 0, i32 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %2 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %tty_resize) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @hvc_alloc(i32 noundef %vtermno, i32 noundef %data, ptr noundef %ops, i32 noundef %outbuf_size) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @hvc_needs_init, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !93
  tail call void @llvm.prefetch.p0(ptr nonnull @hvc_needs_init, i32 1, i32 3, i32 1) #12
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) @hvc_needs_init, ptr nonnull @hvc_needs_init, i32 0, i32 1, ptr nonnull elementtype(i32) @hvc_needs_init) #12, !srcloc !94
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %entry.if.end8.i.i_crit_edge, label %if.then

entry.if.end8.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i.i

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !95
  %call.i = tail call ptr @__tty_alloc_driver(i32 noundef 8, ptr noundef null, i32 noundef 6) #12
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %1 = ptrtoint ptr %call.i to i32
  br label %hvc_init.exit

if.end.i:                                         ; preds = %if.then
  %driver_name.i = getelementptr inbounds %struct.tty_driver, ptr %call.i, i32 0, i32 4
  %2 = ptrtoint ptr %driver_name.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str.6, ptr %driver_name.i, align 4
  %name.i = getelementptr inbounds %struct.tty_driver, ptr %call.i, i32 0, i32 5
  %3 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.6, ptr %name.i, align 4
  %major.i = getelementptr inbounds %struct.tty_driver, ptr %call.i, i32 0, i32 7
  %4 = ptrtoint ptr %major.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 229, ptr %major.i, align 4
  %minor_start.i = getelementptr inbounds %struct.tty_driver, ptr %call.i, i32 0, i32 8
  %5 = ptrtoint ptr %minor_start.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %minor_start.i, align 4
  %type.i = getelementptr inbounds %struct.tty_driver, ptr %call.i, i32 0, i32 10
  %6 = ptrtoint ptr %type.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 1, ptr %type.i, align 4
  %init_termios.i = getelementptr inbounds %struct.tty_driver, ptr %call.i, i32 0, i32 12
  %7 = call ptr @memcpy(ptr %init_termios.i, ptr @tty_std_termios, i32 44)
  %ops.i.i = getelementptr inbounds %struct.tty_driver, ptr %call.i, i32 0, i32 20
  %8 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @hvc_ops, ptr %ops.i.i, align 4
  %call3.i = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @khvcd, ptr noundef null, i32 noundef -1, ptr noundef nonnull @.str.7) #12
  %cmp.i44.i = icmp ugt ptr %call3.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i44.i, label %do.end.i, label %if.end13.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  store ptr %call3.i, ptr @hvc_task, align 4
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #15
  %9 = load ptr, ptr @hvc_task, align 4
  %10 = ptrtoint ptr %9 to i32
  br label %put_tty.i

if.end13.i:                                       ; preds = %if.end.i
  %call6.i = tail call i32 @wake_up_process(ptr noundef %call3.i) #12
  store ptr %call3.i, ptr @hvc_task, align 4
  %call14.i = tail call i32 @tty_register_driver(ptr noundef %call.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool.not.i, label %hvc_init.exit.thread, label %do.end18.i

do.end18.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #15
  %11 = load ptr, ptr @hvc_task, align 4
  %call28.i = tail call i32 @kthread_stop(ptr noundef %11) #12
  store ptr null, ptr @hvc_task, align 4
  br label %put_tty.i

hvc_init.exit.thread:                             ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !96
  store ptr %call.i, ptr @hvc_driver, align 4
  br label %if.end8.i.i

put_tty.i:                                        ; preds = %do.end18.i, %do.end.i
  %err.0.i = phi i32 [ %10, %do.end.i ], [ %call14.i, %do.end18.i ]
  tail call void @tty_driver_kref_put(ptr noundef %call.i) #12
  br label %hvc_init.exit

hvc_init.exit:                                    ; preds = %put_tty.i, %if.then.i
  %retval.0.i = phi i32 [ %1, %if.then.i ], [ %err.0.i, %put_tty.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool.not, label %hvc_init.exit.if.end8.i.i_crit_edge, label %cleanup

hvc_init.exit.if.end8.i.i_crit_edge:              ; preds = %hvc_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i.i

cleanup:                                          ; preds = %hvc_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  %12 = inttoptr i32 %retval.0.i to ptr
  br label %cleanup55

if.end8.i.i:                                      ; preds = %hvc_init.exit.if.end8.i.i_crit_edge, %hvc_init.exit.thread, %entry.if.end8.i.i_crit_edge
  %add = add i32 %outbuf_size, 720
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #16
  %tobool6.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool6.not, label %if.end8.i.i.cleanup55_crit_edge, label %if.end9

if.end8.i.i.cleanup55_crit_edge:                  ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup55

if.end9:                                          ; preds = %if.end8.i.i
  %vtermno10 = getelementptr inbounds %struct.hvc_struct, ptr %call9.i.i, i32 0, i32 7
  %13 = ptrtoint ptr %vtermno10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %vtermno, ptr %vtermno10, align 128
  %data11 = getelementptr inbounds %struct.hvc_struct, ptr %call9.i.i, i32 0, i32 10
  %14 = ptrtoint ptr %data11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %data, ptr %data11, align 4
  %ops12 = getelementptr inbounds %struct.hvc_struct, ptr %call9.i.i, i32 0, i32 8
  %15 = ptrtoint ptr %ops12 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %ops, ptr %ops12, align 4
  %outbuf_size13 = getelementptr inbounds %struct.hvc_struct, ptr %call9.i.i, i32 0, i32 5
  %16 = ptrtoint ptr %outbuf_size13 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %outbuf_size, ptr %outbuf_size13, align 8
  %arrayidx = getelementptr i8, ptr %call9.i.i, i32 720
  %outbuf = getelementptr inbounds %struct.hvc_struct, ptr %call9.i.i, i32 0, i32 4
  %17 = ptrtoint ptr %outbuf to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %arrayidx, ptr %outbuf, align 4
  tail call void @tty_port_init(ptr noundef nonnull %call9.i.i) #12
  %ops15 = getelementptr inbounds %struct.tty_port, ptr %call9.i.i, i32 0, i32 3
  %18 = ptrtoint ptr %ops15 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @hvc_port_ops, ptr %ops15, align 64
  %tty_resize = getelementptr inbounds %struct.hvc_struct, ptr %call9.i.i, i32 0, i32 12
  tail call void @__init_work(ptr noundef %tty_resize, i32 noundef 0) #12
  %19 = ptrtoint ptr %tty_resize to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -64, ptr %tty_resize, align 8
  %lockdep_map = getelementptr inbounds %struct.hvc_struct, ptr %call9.i.i, i32 0, i32 12, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str, ptr noundef nonnull @hvc_alloc.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry20 = getelementptr inbounds %struct.hvc_struct, ptr %call9.i.i, i32 0, i32 12, i32 1
  %20 = ptrtoint ptr %entry20 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %entry20, ptr %entry20, align 4
  %prev.i = getelementptr inbounds %struct.hvc_struct, ptr %call9.i.i, i32 0, i32 12, i32 1, i32 1
  %21 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %entry20, ptr %prev.i, align 32
  %func = getelementptr inbounds %struct.hvc_struct, ptr %call9.i.i, i32 0, i32 12, i32 2
  %22 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @hvc_set_winsz, ptr %func, align 4
  %lock = getelementptr inbounds %struct.hvc_struct, ptr %call9.i.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @hvc_alloc.__key.1, i16 noundef signext 3) #12
  tail call void @mutex_lock_nested(ptr noundef nonnull @hvc_structs_mutex, i32 noundef 0) #12
  %23 = ptrtoint ptr %vtermno10 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %vtermno10, align 128
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end9
  %i.0122 = phi i32 [ 0, %if.end9 ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx26 = getelementptr [16 x i32], ptr @vtermnos, i32 0, i32 %i.0122
  %25 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx26, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %24)
  %cmp28 = icmp eq i32 %26, %24
  br i1 %cmp28, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %arrayidx29 = getelementptr [16 x ptr], ptr @cons_ops, i32 0, i32 %i.0122
  %27 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx29, align 4
  %29 = ptrtoint ptr %ops12 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ops12, align 4
  %cmp31 = icmp eq ptr %28, %30
  br i1 %cmp31, label %land.lhs.true.if.end49.thread_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true.if.end49.thread_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49.thread

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0122, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %land.rhs.preheader, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

land.rhs.preheader:                               ; preds = %for.inc
  %31 = load i32, ptr @vtermnos, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %31)
  %cmp39.not = icmp eq i32 %31, -1
  br i1 %cmp39.not, label %land.rhs.preheader.if.end49.thread_crit_edge, label %for.inc41

land.rhs.preheader.if.end49.thread_crit_edge:     ; preds = %land.rhs.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49.thread

for.inc41:                                        ; preds = %land.rhs.preheader
  %32 = load i32, ptr getelementptr inbounds ([16 x i32], ptr @vtermnos, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %32)
  %cmp39.not.1 = icmp eq i32 %32, -1
  br i1 %cmp39.not.1, label %for.inc41.if.end49.thread_crit_edge, label %for.inc41.1

for.inc41.if.end49.thread_crit_edge:              ; preds = %for.inc41
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49.thread

for.inc41.1:                                      ; preds = %for.inc41
  %33 = load i32, ptr getelementptr inbounds ([16 x i32], ptr @vtermnos, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %33)
  %cmp39.not.2 = icmp eq i32 %33, -1
  br i1 %cmp39.not.2, label %for.inc41.1.if.end49.thread_crit_edge, label %for.inc41.2

for.inc41.1.if.end49.thread_crit_edge:            ; preds = %for.inc41.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49.thread

for.inc41.2:                                      ; preds = %for.inc41.1
  %34 = load i32, ptr getelementptr inbounds ([16 x i32], ptr @vtermnos, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %34)
  %cmp39.not.3 = icmp eq i32 %34, -1
  br i1 %cmp39.not.3, label %for.inc41.2.if.end49.thread_crit_edge, label %for.inc41.3

for.inc41.2.if.end49.thread_crit_edge:            ; preds = %for.inc41.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49.thread

for.inc41.3:                                      ; preds = %for.inc41.2
  %35 = load i32, ptr getelementptr inbounds ([16 x i32], ptr @vtermnos, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %35)
  %cmp39.not.4 = icmp eq i32 %35, -1
  br i1 %cmp39.not.4, label %for.inc41.3.if.end49.thread_crit_edge, label %for.inc41.4

for.inc41.3.if.end49.thread_crit_edge:            ; preds = %for.inc41.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49.thread

for.inc41.4:                                      ; preds = %for.inc41.3
  %36 = load i32, ptr getelementptr inbounds ([16 x i32], ptr @vtermnos, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %36)
  %cmp39.not.5 = icmp eq i32 %36, -1
  br i1 %cmp39.not.5, label %for.inc41.4.if.end49.thread_crit_edge, label %for.inc41.5

for.inc41.4.if.end49.thread_crit_edge:            ; preds = %for.inc41.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49.thread

for.inc41.5:                                      ; preds = %for.inc41.4
  %37 = load i32, ptr getelementptr inbounds ([16 x i32], ptr @vtermnos, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %37)
  %cmp39.not.6 = icmp eq i32 %37, -1
  br i1 %cmp39.not.6, label %for.inc41.5.if.end49.thread_crit_edge, label %for.inc41.6

for.inc41.5.if.end49.thread_crit_edge:            ; preds = %for.inc41.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49.thread

for.inc41.6:                                      ; preds = %for.inc41.5
  %38 = load i32, ptr getelementptr inbounds ([16 x i32], ptr @vtermnos, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %38)
  %cmp39.not.7 = icmp eq i32 %38, -1
  br i1 %cmp39.not.7, label %for.inc41.6.if.end49.thread_crit_edge, label %for.inc41.7

for.inc41.6.if.end49.thread_crit_edge:            ; preds = %for.inc41.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49.thread

for.inc41.7:                                      ; preds = %for.inc41.6
  %39 = load i32, ptr getelementptr inbounds ([16 x i32], ptr @vtermnos, i32 0, i32 8), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %39)
  %cmp39.not.8 = icmp eq i32 %39, -1
  br i1 %cmp39.not.8, label %for.inc41.7.if.end49.thread_crit_edge, label %for.inc41.8

for.inc41.7.if.end49.thread_crit_edge:            ; preds = %for.inc41.7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49.thread

for.inc41.8:                                      ; preds = %for.inc41.7
  %40 = load i32, ptr getelementptr inbounds ([16 x i32], ptr @vtermnos, i32 0, i32 9), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %40)
  %cmp39.not.9 = icmp eq i32 %40, -1
  br i1 %cmp39.not.9, label %for.inc41.8.if.end49.thread_crit_edge, label %for.inc41.9

for.inc41.8.if.end49.thread_crit_edge:            ; preds = %for.inc41.8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49.thread

for.inc41.9:                                      ; preds = %for.inc41.8
  %41 = load i32, ptr getelementptr inbounds ([16 x i32], ptr @vtermnos, i32 0, i32 10), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %41)
  %cmp39.not.10 = icmp eq i32 %41, -1
  br i1 %cmp39.not.10, label %for.inc41.9.if.end49.thread_crit_edge, label %for.inc41.10

for.inc41.9.if.end49.thread_crit_edge:            ; preds = %for.inc41.9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49.thread

for.inc41.10:                                     ; preds = %for.inc41.9
  %42 = load i32, ptr getelementptr inbounds ([16 x i32], ptr @vtermnos, i32 0, i32 11), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %42)
  %cmp39.not.11 = icmp eq i32 %42, -1
  br i1 %cmp39.not.11, label %for.inc41.10.if.end49.thread_crit_edge, label %for.inc41.11

for.inc41.10.if.end49.thread_crit_edge:           ; preds = %for.inc41.10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49.thread

for.inc41.11:                                     ; preds = %for.inc41.10
  %43 = load i32, ptr getelementptr inbounds ([16 x i32], ptr @vtermnos, i32 0, i32 12), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %43)
  %cmp39.not.12 = icmp eq i32 %43, -1
  br i1 %cmp39.not.12, label %for.inc41.11.if.end49.thread_crit_edge, label %for.inc41.12

for.inc41.11.if.end49.thread_crit_edge:           ; preds = %for.inc41.11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49.thread

for.inc41.12:                                     ; preds = %for.inc41.11
  %44 = load i32, ptr getelementptr inbounds ([16 x i32], ptr @vtermnos, i32 0, i32 13), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %44)
  %cmp39.not.13 = icmp eq i32 %44, -1
  br i1 %cmp39.not.13, label %for.inc41.12.if.end49.thread_crit_edge, label %for.inc41.13

for.inc41.12.if.end49.thread_crit_edge:           ; preds = %for.inc41.12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49.thread

for.inc41.13:                                     ; preds = %for.inc41.12
  %45 = load i32, ptr getelementptr inbounds ([16 x i32], ptr @vtermnos, i32 0, i32 14), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %45)
  %cmp39.not.14 = icmp eq i32 %45, -1
  br i1 %cmp39.not.14, label %for.inc41.13.if.end49.thread_crit_edge, label %for.inc41.14

for.inc41.13.if.end49.thread_crit_edge:           ; preds = %for.inc41.13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49.thread

for.inc41.14:                                     ; preds = %for.inc41.13
  %46 = load i32, ptr getelementptr inbounds ([16 x i32], ptr @vtermnos, i32 0, i32 15), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %46)
  %cmp39.not.15 = icmp eq i32 %46, -1
  br i1 %cmp39.not.15, label %for.inc41.14.if.end49.thread_crit_edge, label %if.end49

for.inc41.14.if.end49.thread_crit_edge:           ; preds = %for.inc41.14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49.thread

if.end49.thread:                                  ; preds = %for.inc41.14.if.end49.thread_crit_edge, %for.inc41.13.if.end49.thread_crit_edge, %for.inc41.12.if.end49.thread_crit_edge, %for.inc41.11.if.end49.thread_crit_edge, %for.inc41.10.if.end49.thread_crit_edge, %for.inc41.9.if.end49.thread_crit_edge, %for.inc41.8.if.end49.thread_crit_edge, %for.inc41.7.if.end49.thread_crit_edge, %for.inc41.6.if.end49.thread_crit_edge, %for.inc41.5.if.end49.thread_crit_edge, %for.inc41.4.if.end49.thread_crit_edge, %for.inc41.3.if.end49.thread_crit_edge, %for.inc41.2.if.end49.thread_crit_edge, %for.inc41.1.if.end49.thread_crit_edge, %for.inc41.if.end49.thread_crit_edge, %land.rhs.preheader.if.end49.thread_crit_edge, %land.lhs.true.if.end49.thread_crit_edge
  %i.2.ph = phi i32 [ 0, %land.rhs.preheader.if.end49.thread_crit_edge ], [ 1, %for.inc41.if.end49.thread_crit_edge ], [ 2, %for.inc41.1.if.end49.thread_crit_edge ], [ 3, %for.inc41.2.if.end49.thread_crit_edge ], [ 4, %for.inc41.3.if.end49.thread_crit_edge ], [ 5, %for.inc41.4.if.end49.thread_crit_edge ], [ 6, %for.inc41.5.if.end49.thread_crit_edge ], [ 7, %for.inc41.6.if.end49.thread_crit_edge ], [ 8, %for.inc41.7.if.end49.thread_crit_edge ], [ 9, %for.inc41.8.if.end49.thread_crit_edge ], [ 10, %for.inc41.9.if.end49.thread_crit_edge ], [ 11, %for.inc41.10.if.end49.thread_crit_edge ], [ 12, %for.inc41.11.if.end49.thread_crit_edge ], [ 13, %for.inc41.12.if.end49.thread_crit_edge ], [ 14, %for.inc41.13.if.end49.thread_crit_edge ], [ 15, %for.inc41.14.if.end49.thread_crit_edge ], [ %i.0122, %land.lhs.true.if.end49.thread_crit_edge ]
  %index111 = getelementptr inbounds %struct.hvc_struct, ptr %call9.i.i, i32 0, i32 2
  %47 = ptrtoint ptr %index111 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %i.2.ph, ptr %index111, align 4
  br label %if.then51

if.end49:                                         ; preds = %for.inc41.14
  %48 = load i32, ptr @last_hvc, align 4
  %inc46 = add i32 %48, 1
  store i32 %inc46, ptr @last_hvc, align 4
  %add47 = add i32 %48, 17
  %index = getelementptr inbounds %struct.hvc_struct, ptr %call9.i.i, i32 0, i32 2
  %49 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %add47, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %add47)
  %cmp50 = icmp slt i32 %add47, 16
  br i1 %cmp50, label %if.end49.if.then51_crit_edge, label %if.end49.if.end54_crit_edge

if.end49.if.end54_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end54

if.end49.if.then51_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then51

if.then51:                                        ; preds = %if.end49.if.then51_crit_edge, %if.end49.thread
  %i.2113 = phi i32 [ %i.2.ph, %if.end49.thread ], [ %add47, %if.end49.if.then51_crit_edge ]
  %arrayidx52 = getelementptr [16 x ptr], ptr @cons_ops, i32 0, i32 %i.2113
  %50 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %ops, ptr %arrayidx52, align 4
  %arrayidx53 = getelementptr [16 x i32], ptr @vtermnos, i32 0, i32 %i.2113
  %51 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %vtermno, ptr %arrayidx53, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.then51, %if.end49.if.end54_crit_edge
  %i.2114 = phi i32 [ %i.2113, %if.then51 ], [ %add47, %if.end49.if.end54_crit_edge ]
  %next = getelementptr inbounds %struct.hvc_struct, ptr %call9.i.i, i32 0, i32 13
  %52 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @hvc_structs, i32 0, i32 1), align 4
  %call.i.i95 = tail call zeroext i1 @__list_add_valid(ptr noundef %next, ptr noundef %52, ptr noundef nonnull @hvc_structs) #12
  br i1 %call.i.i95, label %if.end.i.i96, label %if.end54.list_add_tail.exit_crit_edge

if.end54.list_add_tail.exit_crit_edge:            ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i96:                                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #14
  store ptr %next, ptr getelementptr inbounds (%struct.list_head, ptr @hvc_structs, i32 0, i32 1), align 4
  %53 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @hvc_structs, ptr %next, align 4
  %prev3.i.i = getelementptr inbounds %struct.hvc_struct, ptr %call9.i.i, i32 0, i32 13, i32 1
  %54 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %52, ptr %prev3.i.i, align 8
  %55 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %next, ptr %52, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i96, %if.end54.list_add_tail.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @hvc_structs_mutex) #12
  %56 = load i16, ptr getelementptr inbounds (%struct.console, ptr @hvc_console, i32 0, i32 8), align 4
  %57 = and i16 %56, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %57)
  %tobool.not.i97 = icmp eq i16 %57, 0
  br i1 %tobool.not.i97, label %if.end.i98, label %list_add_tail.exit.cleanup55_crit_edge

list_add_tail.exit.cleanup55_crit_edge:           ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup55

if.end.i98:                                       ; preds = %list_add_tail.exit
  %58 = load i16, ptr getelementptr inbounds (%struct.console, ptr @hvc_console, i32 0, i32 9), align 2
  %conv1.i = sext i16 %58 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.2114, i32 %conv1.i)
  %cmp.i = icmp eq i32 %i.2114, %conv1.i
  br i1 %cmp.i, label %if.then3.i, label %if.end.i98.cleanup55_crit_edge

if.end.i98.cleanup55_crit_edge:                   ; preds = %if.end.i98
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup55

if.then3.i:                                       ; preds = %if.end.i98
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @register_console(ptr noundef nonnull @hvc_console) #12
  br label %cleanup55

cleanup55:                                        ; preds = %if.then3.i, %if.end.i98.cleanup55_crit_edge, %list_add_tail.exit.cleanup55_crit_edge, %if.end8.i.i.cleanup55_crit_edge, %cleanup
  %retval.1 = phi ptr [ %12, %cleanup ], [ inttoptr (i32 -12 to ptr), %if.end8.i.i.cleanup55_crit_edge ], [ %call9.i.i, %list_add_tail.exit.cleanup55_crit_edge ], [ %call9.i.i, %if.end.i98.cleanup55_crit_edge ], [ %call9.i.i, %if.then3.i ]
  ret ptr %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hvc_set_winsz(ptr noundef %work) #1 align 64 {
entry:
  %ws = alloca %struct.winsize, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ws) #12
  %add.ptr = getelementptr i8, ptr %work, i32 -664
  %call = tail call ptr @tty_port_tty_get(ptr noundef %add.ptr) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %lock = getelementptr i8, ptr %work, i32 -88
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %ws7 = getelementptr i8, ptr %work, i32 -8
  %0 = ptrtoint ptr %ws7 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %ws7, align 4
  %2 = ptrtoint ptr %ws to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %1, ptr %ws, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #12
  %call9 = call i32 @tty_do_resize(ptr noundef nonnull %call, ptr noundef nonnull %ws) #12
  call void @tty_kref_put(ptr noundef nonnull %call) #12
  br label %cleanup

cleanup:                                          ; preds = %do.body1, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ws) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hvc_remove(ptr noundef %hp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @tty_port_tty_get(ptr noundef %hp) #12
  tail call void @console_lock() #12
  %lock = getelementptr inbounds %struct.hvc_struct, ptr %hp, i32 0, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %index = getelementptr inbounds %struct.hvc_struct, ptr %hp, i32 0, i32 2
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %1)
  %cmp6 = icmp slt i32 %1, 16
  br i1 %cmp6, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx = getelementptr [16 x i32], ptr @vtermnos, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %arrayidx, align 4
  %arrayidx10 = getelementptr [16 x ptr], ptr @cons_ops, i32 0, i32 %1
  %3 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %arrayidx10, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #12
  tail call void @console_unlock() #12
  tail call void @tty_port_put(ptr noundef %hp) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end.if.end14_crit_edge, label %if.then13

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @tty_vhangup(ptr noundef nonnull %call) #12
  tail call void @tty_kref_put(ptr noundef nonnull %call) #12
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end.if.end14_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tty_port_tty_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_lock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_unlock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_vhangup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_kref_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_console(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hvc_console_print(ptr nocapture noundef readonly %co, ptr nocapture noundef readonly %b, i32 noundef %count) #1 align 64 {
entry:
  %c = alloca [16 x i8], align 128
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %c) #12
  %index1 = getelementptr inbounds %struct.console, ptr %co, i32 0, i32 9
  %0 = call ptr @memset(ptr %c, i32 255, i32 16)
  %1 = ptrtoint ptr %index1 to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %index1, align 2
  %conv = sext i16 %2 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 15, i16 %2)
  %cmp = icmp sgt i16 %2, 15
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [16 x i32], ptr @vtermnos, i32 0, i32 %conv
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %cmp3 = icmp eq i32 %4, -1
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %while.cond.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.cond.preheader:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp7.not92 = icmp eq i32 %count, 0
  br i1 %cmp7.not92, label %while.cond.preheader.while.end_crit_edge, label %while.body.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %arrayidx29 = getelementptr [16 x ptr], ptr @cons_ops, i32 0, i32 %conv
  br label %while.body

while.body:                                       ; preds = %if.end54.while.body_crit_edge, %while.body.lr.ph
  %cmp7.not97 = phi i1 [ false, %while.body.lr.ph ], [ %cmp7.not, %if.end54.while.body_crit_edge ]
  %donecr.096 = phi i32 [ 0, %while.body.lr.ph ], [ %donecr.1, %if.end54.while.body_crit_edge ]
  %n.095 = phi i32 [ 0, %while.body.lr.ph ], [ %n.1, %if.end54.while.body_crit_edge ]
  %i.094 = phi i32 [ 0, %while.body.lr.ph ], [ %i.1, %if.end54.while.body_crit_edge ]
  %count.addr.093 = phi i32 [ %count, %while.body.lr.ph ], [ %count.addr.1, %if.end54.while.body_crit_edge ]
  %cmp7.not.not = xor i1 %cmp7.not97, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %i.094)
  %cmp13 = icmp ult i32 %i.094, 16
  %or.cond85 = select i1 %cmp7.not.not, i1 %cmp13, i1 false
  br i1 %or.cond85, label %if.then15, label %if.else28

if.then15:                                        ; preds = %while.body
  %arrayidx16 = getelementptr i8, ptr %b, i32 %n.095
  %5 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx16, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %6)
  %cmp18 = icmp eq i8 %6, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %donecr.096)
  %tobool.not = icmp eq i32 %donecr.096, 0
  %or.cond86 = select i1 %cmp18, i1 %tobool.not, i1 false
  br i1 %or.cond86, label %if.then21, label %if.else

if.then21:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  %inc = add nuw nsw i32 %i.094, 1
  %arrayidx22 = getelementptr [16 x i8], ptr %c, i32 0, i32 %i.094
  %7 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 13, ptr %arrayidx22, align 1
  br label %if.end54

if.else:                                          ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  %inc23 = add i32 %n.095, 1
  %inc25 = add nuw nsw i32 %i.094, 1
  %arrayidx26 = getelementptr [16 x i8], ptr %c, i32 0, i32 %i.094
  %8 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %6, ptr %arrayidx26, align 1
  %dec = add i32 %count.addr.093, -1
  br label %if.end54

if.else28:                                        ; preds = %while.body
  %9 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx29, align 4
  %put_chars = getelementptr inbounds %struct.hv_ops, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %put_chars to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %put_chars, align 4
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  %call = call i32 %12(i32 noundef %14, ptr noundef nonnull %c, i32 noundef %i.094) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp31 = icmp slt i32 %call, 1
  br i1 %cmp31, label %if.then33, label %if.then45

if.then33:                                        ; preds = %if.else28
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call)
  %cmp34.not = icmp eq i32 %call, -11
  br i1 %cmp34.not, label %if.else37, label %if.then33.if.end54_crit_edge

if.then33.if.end54_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end54

if.else37:                                        ; preds = %if.then33
  %15 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx29, align 4
  %flush.i.i = getelementptr inbounds %struct.hv_ops, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %flush.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %flush.i.i, align 4
  %tobool3.not.i.i = icmp eq ptr %18, null
  br i1 %tobool3.not.i.i, label %if.else37.if.end54_crit_edge, label %if.then4.i.i

if.else37.if.end54_crit_edge:                     ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end54

if.then4.i.i:                                     ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx, align 4
  %call.i.i = call i32 %18(i32 noundef %20, i1 noundef zeroext false) #12
  br label %if.end54

if.then45:                                        ; preds = %if.else28
  %sub = sub i32 %i.094, %call
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp46.not = icmp eq i32 %sub, 0
  br i1 %cmp46.not, label %if.then45.if.end54_crit_edge, label %if.then48

if.then45.if.end54_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end54

if.then48:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr = getelementptr i8, ptr %c, i32 %call
  %21 = call ptr @memmove(ptr %c, ptr %add.ptr, i32 %sub)
  br label %if.end54

if.end54:                                         ; preds = %if.then48, %if.then45.if.end54_crit_edge, %if.then4.i.i, %if.else37.if.end54_crit_edge, %if.then33.if.end54_crit_edge, %if.else, %if.then21
  %count.addr.1 = phi i32 [ %dec, %if.else ], [ %count.addr.093, %if.then21 ], [ %count.addr.093, %if.then48 ], [ %count.addr.093, %if.then45.if.end54_crit_edge ], [ %count.addr.093, %if.then33.if.end54_crit_edge ], [ %count.addr.093, %if.else37.if.end54_crit_edge ], [ %count.addr.093, %if.then4.i.i ]
  %i.1 = phi i32 [ %inc25, %if.else ], [ %inc, %if.then21 ], [ %sub, %if.then48 ], [ 0, %if.then45.if.end54_crit_edge ], [ 0, %if.then33.if.end54_crit_edge ], [ %i.094, %if.else37.if.end54_crit_edge ], [ %i.094, %if.then4.i.i ]
  %n.1 = phi i32 [ %inc23, %if.else ], [ %n.095, %if.then21 ], [ %n.095, %if.then48 ], [ %n.095, %if.then45.if.end54_crit_edge ], [ %n.095, %if.then33.if.end54_crit_edge ], [ %n.095, %if.else37.if.end54_crit_edge ], [ %n.095, %if.then4.i.i ]
  %donecr.1 = phi i32 [ 0, %if.else ], [ 1, %if.then21 ], [ %donecr.096, %if.then48 ], [ %donecr.096, %if.then45.if.end54_crit_edge ], [ %donecr.096, %if.then33.if.end54_crit_edge ], [ %donecr.096, %if.else37.if.end54_crit_edge ], [ %donecr.096, %if.then4.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.addr.1)
  %cmp7.not = icmp eq i32 %count.addr.1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1)
  %cmp9.not = icmp eq i32 %i.1, 0
  %or.cond = select i1 %cmp7.not, i1 %cmp9.not, i1 false
  br i1 %or.cond, label %if.end54.while.end_crit_edge, label %if.end54.while.body_crit_edge

if.end54.while.body_crit_edge:                    ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

if.end54.while.end_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %if.end54.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %arrayidx55 = getelementptr [16 x ptr], ptr @cons_ops, i32 0, i32 %conv
  %22 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx55, align 4
  %flush.i.i87 = getelementptr inbounds %struct.hv_ops, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %flush.i.i87 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %flush.i.i87, align 4
  %tobool3.not.i.i88 = icmp eq ptr %25, null
  br i1 %tobool3.not.i.i88, label %while.end.cleanup_crit_edge, label %if.then4.i.i90

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then4.i.i90:                                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx, align 4
  %call.i.i89 = call i32 %25(i32 noundef %27, i1 noundef zeroext false) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then4.i.i90, %while.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %c) #12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @hvc_console_device(ptr nocapture noundef readonly %c, ptr nocapture noundef writeonly %index) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %index1 = getelementptr inbounds %struct.console, ptr %c, i32 0, i32 9
  %0 = ptrtoint ptr %index1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %index1, align 2
  %idxprom = sext i16 %1 to i32
  %arrayidx = getelementptr [16 x i32], ptr @vtermnos, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp = icmp eq i32 %3, -1
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %idxprom, ptr %index, align 4
  %5 = load ptr, ptr @hvc_driver, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi ptr [ %5, %if.end ], [ null, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hvc_console_setup(ptr nocapture noundef readonly %co, ptr nocapture noundef readnone %options) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.console, ptr %co, i32 0, i32 9
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %index, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 15, i16 %1)
  %2 = icmp ugt i16 %1, 15
  br i1 %2, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %conv13 = zext i16 %1 to i32
  %arrayidx = getelementptr [16 x i32], ptr @vtermnos, i32 0, i32 %conv13
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %cmp7 = icmp eq i32 %4, -1
  %. = select i1 %cmp7, i32 -19, i32 0
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ -19, %entry.return_crit_edge ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_buffer_request_room(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_hangup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_sysrq(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_wakeup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__tty_insert_flip_char(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hvc_port_destruct(ptr noundef %port) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @hvc_structs_mutex, i32 noundef 0) #12
  %lock = getelementptr inbounds %struct.hvc_struct, ptr %port, i32 0, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %next = getelementptr inbounds %struct.hvc_struct, ptr %port, i32 0, i32 13
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %next) #12
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.hvc_struct, ptr %port, i32 0, i32 13, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %next, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %6 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %next, align 4
  %prev.i = getelementptr inbounds %struct.hvc_struct, ptr %port, i32 0, i32 13, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #12
  tail call void @mutex_unlock(ptr noundef nonnull @hvc_structs_mutex) #12
  tail call void @kfree(ptr noundef %port) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_do_resize(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__tty_alloc_driver(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @khvcd(ptr nocapture noundef readnone %unused) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @set_freezable() #12
  br label %do.body

do.body:                                          ; preds = %do.cond169.do.body_crit_edge, %entry
  store i1 false, ptr @hvc_kicked, align 4
  %0 = tail call i32 @llvm.read_register.i32(metadata !81) #12
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i, align 8
  %flags.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %5, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i183, label %do.body.if.end.i184_crit_edge

do.body.if.end.i184_crit_edge:                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i184

if.then.i183:                                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @debug_check_no_locks_held() #12
  br label %if.end.i184

if.end.i184:                                      ; preds = %if.then.i183, %do.body.if.end.i184_crit_edge
  tail call void @__might_sleep(ptr noundef nonnull @.str.18, i32 noundef 57) #12
  %6 = tail call i32 @llvm.read_register.i32(metadata !81) #12
  %and.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task.i.i, align 8
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @system_freezing_cnt, i32 noundef 4) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezing_cnt to i32))
  %10 = load volatile i32, ptr @system_freezing_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i.i.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i.i.i, label %if.end.i184.try_to_freeze.exit_crit_edge, label %freezing.exit.i.i, !prof !92

if.end.i184.try_to_freeze.exit_crit_edge:         ; preds = %if.end.i184
  call void @__sanitizer_cov_trace_pc() #14
  br label %try_to_freeze.exit

freezing.exit.i.i:                                ; preds = %if.end.i184
  %call4.i.i.i = tail call zeroext i1 @freezing_slow_path(ptr noundef %9) #12
  br i1 %call4.i.i.i, label %if.end.i.i, label %freezing.exit.i.i.try_to_freeze.exit_crit_edge, !prof !97

freezing.exit.i.i.try_to_freeze.exit_crit_edge:   ; preds = %freezing.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %try_to_freeze.exit

if.end.i.i:                                       ; preds = %freezing.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call6.i.i = tail call zeroext i1 @__refrigerator(i1 noundef zeroext false) #12
  br label %try_to_freeze.exit

try_to_freeze.exit:                               ; preds = %if.end.i.i, %freezing.exit.i.i.try_to_freeze.exit_crit_edge, %if.end.i184.try_to_freeze.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !98
  tail call void @arm_heavy_mb() #12
  tail call void @mutex_lock_nested(ptr noundef nonnull @hvc_structs_mutex, i32 noundef 0) #12
  %.pn186 = load ptr, ptr @hvc_structs, align 4
  %cmp.not187 = icmp eq ptr %.pn186, @hvc_structs
  br i1 %cmp.not187, label %try_to_freeze.exit.for.end_crit_edge, label %try_to_freeze.exit.for.body_crit_edge

try_to_freeze.exit.for.body_crit_edge:            ; preds = %try_to_freeze.exit
  br label %for.body

try_to_freeze.exit.for.end_crit_edge:             ; preds = %try_to_freeze.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %try_to_freeze.exit.for.body_crit_edge
  %.pn189 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn186, %try_to_freeze.exit.for.body_crit_edge ]
  %poll_mask.0188 = phi i32 [ %or, %for.body.for.body_crit_edge ], [ 0, %try_to_freeze.exit.for.body_crit_edge ]
  %hp.0 = getelementptr i8, ptr %.pn189, i32 -708
  %call4 = tail call fastcc i32 @__hvc_poll(ptr noundef %hp.0, i1 noundef zeroext true)
  %or = or i32 %call4, %poll_mask.0188
  tail call void @__might_resched(ptr noundef nonnull @.str.3, i32 noundef 805, i32 noundef 0) #12
  %call.i = tail call i32 @__cond_resched() #12
  %11 = ptrtoint ptr %.pn189 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn = load ptr, ptr %.pn189, align 4
  %cmp.not = icmp eq ptr %.pn, @hvc_structs
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %try_to_freeze.exit.for.end_crit_edge
  %poll_mask.0.lcssa = phi i32 [ 0, %try_to_freeze.exit.for.end_crit_edge ], [ %or, %for.body.for.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @hvc_structs_mutex) #12
  %.b182 = load i1, ptr @hvc_kicked, align 4
  br i1 %.b182, label %for.end.do.cond169_crit_edge, label %__here

for.end.do.cond169_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.cond169

__here:                                           ; preds = %for.end
  %12 = tail call i32 @llvm.read_register.i32(metadata !81) #12
  %and.i185 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i185 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 212
  %16 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 ptrtoint (ptr blockaddress(@khvcd, %__here) to i32), ptr %task_state_change, align 4
  %17 = load ptr, ptr %task, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile i32 1, ptr %17, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !99
  %.b = load i1, ptr @hvc_kicked, align 4
  br i1 %.b, label %__here.__here148_crit_edge, label %if.then85

__here.__here148_crit_edge:                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here148

if.then85:                                        ; preds = %__here
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %poll_mask.0.lcssa)
  %cmp86 = icmp eq i32 %poll_mask.0.lcssa, 0
  br i1 %cmp86, label %if.then87, label %if.else88

if.then87:                                        ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @schedule() #12
  br label %__here148

if.else88:                                        ; preds = %if.then85
  %19 = load i32, ptr @timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000, i32 %19)
  %cmp89 = icmp ult i32 %19, 2000
  br i1 %cmp89, label %if.then90, label %if.else88.if.else.i_crit_edge

if.else88.if.else.i_crit_edge:                    ; preds = %if.else88
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

if.then90:                                        ; preds = %if.else88
  call void @__sanitizer_cov_trace_pc() #14
  %shr = lshr i32 %19, 6
  %add = add nuw nsw i32 %19, 1
  %add91 = add nuw nsw i32 %add, %shr
  store i32 %add91, ptr @timeout, align 4
  br label %if.else.i

if.else.i:                                        ; preds = %if.then90, %if.else88.if.else.i_crit_edge
  %20 = phi i32 [ %add91, %if.then90 ], [ %19, %if.else88.if.else.i_crit_edge ]
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %20) #12
  %add94 = add i32 %call2.i, 1
  %call95 = tail call i32 @schedule_timeout_interruptible(i32 noundef %add94) #12
  br label %__here148

__here148:                                        ; preds = %if.else.i, %if.then87, %__here.__here148_crit_edge
  %21 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task, align 8
  %task_state_change152 = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 212
  %23 = ptrtoint ptr %task_state_change152 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 ptrtoint (ptr blockaddress(@khvcd, %__here148) to i32), ptr %task_state_change152, align 4
  %24 = load ptr, ptr %task, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile i32 0, ptr %24, align 128
  br label %do.cond169

do.cond169:                                       ; preds = %__here148, %for.end.do.cond169_crit_edge
  %call170 = tail call zeroext i1 @kthread_should_stop() #12
  br i1 %call170, label %do.end173, label %do.cond169.do.body_crit_edge

do.cond169.do.body_crit_edge:                     ; preds = %do.cond169
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.end173:                                        ; preds = %do.cond169
  call void @__sanitizer_cov_trace_pc() #14
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_register_driver(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_driver_kref_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hvc_install(ptr noundef %driver, ptr noundef %tty) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 5
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @hvc_get_by_index(i32 noundef %1)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %2 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %driver_data, align 4
  %call1 = tail call i32 @tty_port_install(ptr noundef nonnull %call, ptr noundef %driver, ptr noundef %tty) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @tty_port_put(ptr noundef nonnull %call) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hvc_open(ptr noundef %tty, ptr nocapture noundef readnone %filp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %lock = getelementptr inbounds %struct.tty_port, ptr %1, i32 0, i32 5
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %count = getelementptr inbounds %struct.tty_port, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp6 = icmp sgt i32 %3, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #12
  br i1 %cmp6, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @tty_port_tty_set(ptr noundef %1, ptr noundef %tty) #12
  %ops = getelementptr inbounds %struct.hvc_struct, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %notifier_add = getelementptr inbounds %struct.hv_ops, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %notifier_add to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %notifier_add, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end.if.else_crit_edge, label %if.end17

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.end17:                                         ; preds = %if.end
  %data = getelementptr inbounds %struct.hvc_struct, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data, align 4
  %call16 = tail call i32 %7(ptr noundef %1, i32 noundef %9) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool18.not = icmp eq i32 %call16, 0
  br i1 %tobool18.not, label %if.end17.if.else_crit_edge, label %do.end22

if.end17.if.else_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

do.end22:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call16) #15
  br label %cleanup

if.else:                                          ; preds = %if.end17.if.else_crit_edge, %if.end.if.else_crit_edge
  %c_cflag = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 2
  %10 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %c_cflag, align 4
  %and = and i32 %11, 4111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool25.not = icmp eq i32 %and, 0
  br i1 %tobool25.not, label %if.else.if.end33_crit_edge, label %if.then26

if.else.if.end33_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

if.then26:                                        ; preds = %if.else
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops, align 4
  %dtr_rts = getelementptr inbounds %struct.hv_ops, ptr %13, i32 0, i32 8
  %14 = ptrtoint ptr %dtr_rts to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dtr_rts, align 4
  %tobool28.not = icmp eq ptr %15, null
  br i1 %tobool28.not, label %if.then26.if.end33_crit_edge, label %if.then29

if.then26.if.end33_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

if.then29:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %15(ptr noundef %1, i32 noundef 1) #12
  br label %if.end33

if.end33:                                         ; preds = %if.then29, %if.then26.if.end33_crit_edge, %if.else.if.end33_crit_edge
  %iflags.i = getelementptr inbounds %struct.tty_port, ptr %1, i32 0, i32 11
  tail call void @_set_bit(i32 noundef 0, ptr noundef %iflags.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %do.end22, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end33 ], [ %call16, %do.end22 ]
  store i1 true, ptr @hvc_kicked, align 4
  %16 = load ptr, ptr @hvc_task, align 4
  %call.i56 = tail call i32 @wake_up_process(ptr noundef %16) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hvc_close(ptr noundef %tty, ptr noundef %filp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %call = tail call i32 @tty_hung_up_p(ptr noundef %filp) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body1, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body1:                                         ; preds = %entry
  %lock = getelementptr inbounds %struct.tty_port, ptr %1, i32 0, i32 5
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %count = getelementptr inbounds %struct.tty_port, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp7 = icmp eq i32 %dec, 0
  br i1 %cmp7, label %if.then9, label %if.else

if.then9:                                         ; preds = %do.body1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #12
  tail call void @tty_port_tty_set(ptr noundef %1, ptr noundef null) #12
  %iflags.i = getelementptr inbounds %struct.tty_port, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %iflags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %iflags.i, align 4
  %and1.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.then9.cleanup_crit_edge, label %if.end16

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end16:                                         ; preds = %if.then9
  %c_cflag = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 2
  %6 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %c_cflag, align 4
  %and = and i32 %7, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17.not = icmp eq i32 %and, 0
  br i1 %tobool17.not, label %if.end16.if.end24_crit_edge, label %if.then18

if.end16.if.end24_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

if.then18:                                        ; preds = %if.end16
  %ops = getelementptr inbounds %struct.hvc_struct, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %dtr_rts = getelementptr inbounds %struct.hv_ops, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %dtr_rts to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dtr_rts, align 4
  %tobool19.not = icmp eq ptr %11, null
  br i1 %tobool19.not, label %if.then18.if.end24_crit_edge, label %if.then20

if.then18.if.end24_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

if.then20:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %11(ptr noundef %1, i32 noundef 0) #12
  br label %if.end24

if.end24:                                         ; preds = %if.then20, %if.then18.if.end24_crit_edge, %if.end16.if.end24_crit_edge
  %ops25 = getelementptr inbounds %struct.hvc_struct, ptr %1, i32 0, i32 8
  %12 = ptrtoint ptr %ops25 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops25, align 4
  %notifier_del = getelementptr inbounds %struct.hv_ops, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %notifier_del to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %notifier_del, align 4
  %tobool26.not = icmp eq ptr %15, null
  br i1 %tobool26.not, label %if.end24.if.end30_crit_edge, label %if.then27

if.end24.if.end30_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  %data = getelementptr inbounds %struct.hvc_struct, ptr %1, i32 0, i32 10
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %data, align 4
  tail call void %15(ptr noundef %1, i32 noundef %17) #12
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.end24.if.end30_crit_edge
  %tty_resize = getelementptr inbounds %struct.hvc_struct, ptr %1, i32 0, i32 12
  %call31 = tail call zeroext i1 @cancel_work_sync(ptr noundef %tty_resize) #12
  tail call void @tty_wait_until_sent(ptr noundef %tty, i32 noundef 1) #12
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %iflags.i) #12
  br label %cleanup

if.else:                                          ; preds = %do.body1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp35 = icmp slt i32 %dec, 0
  br i1 %cmp35, label %do.end40, label %if.else.if.end45_crit_edge

if.else.if.end45_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

do.end40:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %vtermno = getelementptr inbounds %struct.hvc_struct, ptr %1, i32 0, i32 7
  %18 = ptrtoint ptr %vtermno to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %vtermno, align 4
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %19, i32 noundef %dec) #15
  br label %if.end45

if.end45:                                         ; preds = %do.end40, %if.else.if.end45_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %if.end30, %if.then9.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hvc_cleanup(ptr nocapture noundef readonly %tty) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  tail call void @tty_port_put(ptr noundef %1) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hvc_write(ptr nocapture noundef readonly %tty, ptr nocapture noundef readonly %buf, i32 noundef %count) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup47_crit_edge, label %if.end

entry.cleanup47_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup47

if.end:                                           ; preds = %entry
  %count1 = getelementptr inbounds %struct.tty_port, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %count1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp slt i32 %3, 1
  br i1 %cmp, label %if.end.cleanup47_crit_edge, label %while.cond.preheader

if.end.cleanup47_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup47

while.cond.preheader:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp498 = icmp sgt i32 %count, 0
  br i1 %cmp498, label %while.body.lr.ph, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %lock = getelementptr inbounds %struct.hvc_struct, ptr %1, i32 0, i32 1
  %outbuf_size = getelementptr inbounds %struct.hvc_struct, ptr %1, i32 0, i32 5
  %n_outbuf = getelementptr inbounds %struct.hvc_struct, ptr %1, i32 0, i32 6
  %outbuf = getelementptr inbounds %struct.hvc_struct, ptr %1, i32 0, i32 4
  %ops.i = getelementptr inbounds %struct.hvc_struct, ptr %1, i32 0, i32 8
  %vtermno.i = getelementptr inbounds %struct.hvc_struct, ptr %1, i32 0, i32 7
  %do_wakeup14.i86 = getelementptr inbounds %struct.hvc_struct, ptr %1, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %buf.addr.0101 = phi ptr [ %buf, %while.body.lr.ph ], [ %buf.addr.1, %cleanup.while.body_crit_edge ]
  %written.0100 = phi i32 [ 0, %while.body.lr.ph ], [ %written.1, %cleanup.while.body_crit_edge ]
  %count.addr.099 = phi i32 [ %count, %while.body.lr.ph ], [ %count.addr.1, %cleanup.while.body_crit_edge ]
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %4 = ptrtoint ptr %outbuf_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %outbuf_size, align 4
  %6 = ptrtoint ptr %n_outbuf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n_outbuf, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %tobool10.not = icmp eq i32 %5, %7
  br i1 %tobool10.not, label %while.body.if.end21_crit_edge, label %if.then11

while.body.if.end21_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.then11:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %sub = sub i32 %5, %7
  %8 = tail call i32 @llvm.smin.i32(i32 %sub, i32 %count.addr.099)
  %9 = ptrtoint ptr %outbuf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %outbuf, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 %7
  %11 = call ptr @memcpy(ptr %add.ptr, ptr %buf.addr.0101, i32 %8)
  %sub17 = sub i32 %count.addr.099, %8
  %add.ptr18 = getelementptr i8, ptr %buf.addr.0101, i32 %8
  %12 = ptrtoint ptr %n_outbuf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %n_outbuf, align 4
  %add = add i32 %13, %8
  store i32 %add, ptr %n_outbuf, align 4
  %add20 = add i32 %8, %written.0100
  br label %if.end21

if.end21:                                         ; preds = %if.then11, %while.body.if.end21_crit_edge
  %14 = phi i32 [ %add, %if.then11 ], [ %5, %while.body.if.end21_crit_edge ]
  %count.addr.1 = phi i32 [ %sub17, %if.then11 ], [ %count.addr.099, %while.body.if.end21_crit_edge ]
  %written.1 = phi i32 [ %add20, %if.then11 ], [ %written.0100, %while.body.if.end21_crit_edge ]
  %buf.addr.1 = phi ptr [ %add.ptr18, %if.then11 ], [ %buf.addr.0101, %while.body.if.end21_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp23 = icmp sgt i32 %14, 0
  br i1 %cmp23, label %if.then25, label %if.end21.if.end27.thread_crit_edge

if.end21.if.end27.thread_crit_edge:               ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27.thread

if.then25:                                        ; preds = %if.end21
  %15 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops.i, align 4
  %put_chars.i = getelementptr inbounds %struct.hv_ops, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %put_chars.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %put_chars.i, align 4
  %19 = ptrtoint ptr %vtermno.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %vtermno.i, align 4
  %21 = ptrtoint ptr %outbuf to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %outbuf, align 4
  %call.i = tail call i32 %18(i32 noundef %20, ptr noundef %22, i32 noundef %14) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 1
  br i1 %cmp.i, label %if.then.i, label %if.end6.i

if.then.i:                                        ; preds = %if.then25
  %23 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %call.i, label %if.end27 [
    i32 0, label %if.then.i.if.then3.i_crit_edge
    i32 -11, label %if.then.i.if.then3.i_crit_edge133
  ]

if.then.i.if.then3.i_crit_edge133:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then3.i

if.then.i.if.then3.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then3.i

if.then3.i:                                       ; preds = %if.then.i.if.then3.i_crit_edge, %if.then.i.if.then3.i_crit_edge133
  %24 = ptrtoint ptr %do_wakeup14.i86 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %do_wakeup14.i86, align 4
  br label %if.end27.thread

if.end6.i:                                        ; preds = %if.then25
  %25 = ptrtoint ptr %n_outbuf to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %n_outbuf, align 4
  %sub.i = sub i32 %26, %call.i
  store i32 %sub.i, ptr %n_outbuf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp8.i = icmp sgt i32 %sub.i, 0
  br i1 %cmp8.i, label %if.end27.thread82, label %if.end27.thread85

if.end27.thread85:                                ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %do_wakeup14.i86 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %do_wakeup14.i86, align 4
  br label %if.end31

if.end27.thread82:                                ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %outbuf to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %outbuf, align 4
  %add.ptr.i = getelementptr i8, ptr %29, i32 %call.i
  %30 = call ptr @memmove(ptr %29, ptr %add.ptr.i, i32 %sub.i)
  br label %if.end31

if.end27.thread:                                  ; preds = %if.then3.i, %if.end21.if.end27.thread_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7) #12
  br label %while.end

if.end27:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %n_outbuf to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %n_outbuf, align 4
  %32 = ptrtoint ptr %do_wakeup14.i86 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %do_wakeup14.i86, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.end27, %if.end27.thread82, %if.end27.thread85
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.addr.1)
  %tobool32.not = icmp eq i32 %count.addr.1, 0
  br i1 %tobool32.not, label %if.end31.while.end_crit_edge, label %if.then33

if.end31.while.end_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

if.then33:                                        ; preds = %if.end31
  %33 = ptrtoint ptr %n_outbuf to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %n_outbuf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp35 = icmp sgt i32 %34, 0
  br i1 %cmp35, label %if.then37, label %if.then33.cleanup_crit_edge

if.then33.cleanup_crit_edge:                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then37:                                        ; preds = %if.then33
  %35 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ops.i, align 4
  %37 = ptrtoint ptr %vtermno.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %vtermno.i, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 116) #12
  %flush.i.i = getelementptr inbounds %struct.hv_ops, ptr %36, i32 0, i32 2
  %39 = ptrtoint ptr %flush.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %flush.i.i, align 4
  %tobool3.not.i.i = icmp eq ptr %40, null
  br i1 %tobool3.not.i.i, label %if.then37.cleanup_crit_edge, label %if.then4.i.i

if.then37.cleanup_crit_edge:                      ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then4.i.i:                                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i = tail call i32 %40(i32 noundef %38, i1 noundef zeroext true) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then4.i.i, %if.then37.cleanup_crit_edge, %if.then33.cleanup_crit_edge
  tail call void @__might_resched(ptr noundef nonnull @.str.3, i32 noundef 541, i32 noundef 0) #12
  %call.i78 = tail call i32 @__cond_resched() #12
  %cmp4 = icmp sgt i32 %count.addr.1, 0
  br i1 %cmp4, label %cleanup.while.body_crit_edge, label %cleanup.while.end_crit_edge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %if.end31.while.end_crit_edge, %if.end27.thread, %while.cond.preheader.while.end_crit_edge
  %written.2 = phi i32 [ %written.1, %if.end27.thread ], [ 0, %while.cond.preheader.while.end_crit_edge ], [ %written.1, %cleanup.while.end_crit_edge ], [ %written.1, %if.end31.while.end_crit_edge ]
  %n_outbuf43 = getelementptr inbounds %struct.hvc_struct, ptr %1, i32 0, i32 6
  %41 = ptrtoint ptr %n_outbuf43 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %n_outbuf43, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool44.not = icmp eq i32 %42, 0
  br i1 %tobool44.not, label %while.end.cleanup47_crit_edge, label %if.then45

while.end.cleanup47_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup47

if.then45:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @hvc_kicked, align 4
  %43 = load ptr, ptr @hvc_task, align 4
  %call.i79 = tail call i32 @wake_up_process(ptr noundef %43) #12
  br label %cleanup47

cleanup47:                                        ; preds = %if.then45, %while.end.cleanup47_crit_edge, %if.end.cleanup47_crit_edge, %entry.cleanup47_crit_edge
  %retval.0 = phi i32 [ -32, %entry.cleanup47_crit_edge ], [ -5, %if.end.cleanup47_crit_edge ], [ %written.2, %if.then45 ], [ %written.2, %while.end.cleanup47_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hvc_write_room(ptr nocapture noundef readonly %tty) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %outbuf_size = getelementptr inbounds %struct.hvc_struct, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %outbuf_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %outbuf_size, align 4
  %n_outbuf = getelementptr inbounds %struct.hvc_struct, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %n_outbuf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n_outbuf, align 4
  %sub = sub i32 %3, %5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %sub, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hvc_chars_in_buffer(ptr nocapture noundef readonly %tty) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %n_outbuf = getelementptr inbounds %struct.hvc_struct, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %n_outbuf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_outbuf, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hvc_unthrottle(ptr nocapture noundef readnone %tty) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  store i1 true, ptr @hvc_kicked, align 4
  %0 = load ptr, ptr @hvc_task, align 4
  %call.i = tail call i32 @wake_up_process(ptr noundef %0) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hvc_hangup(ptr nocapture noundef readonly %tty) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %tty_resize = getelementptr inbounds %struct.hvc_struct, ptr %1, i32 0, i32 12
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef %tty_resize) #12
  %lock = getelementptr inbounds %struct.tty_port, ptr %1, i32 0, i32 5
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %count = getelementptr inbounds %struct.tty_port, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp7 = icmp slt i32 %3, 1
  br i1 %cmp7, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #12
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %4 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %count, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #12
  tail call void @tty_port_tty_set(ptr noundef nonnull %1, ptr noundef null) #12
  %n_outbuf = getelementptr inbounds %struct.hvc_struct, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %n_outbuf to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %n_outbuf, align 4
  %ops = getelementptr inbounds %struct.hvc_struct, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %notifier_hangup = getelementptr inbounds %struct.hv_ops, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %notifier_hangup to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %notifier_hangup, align 4
  %tobool18.not = icmp eq ptr %9, null
  br i1 %tobool18.not, label %if.end12.cleanup_crit_edge, label %if.then19

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then19:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  %data = getelementptr inbounds %struct.hvc_struct, ptr %1, i32 0, i32 10
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data, align 4
  tail call void %9(ptr noundef nonnull %1, i32 noundef %11) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %if.end12.cleanup_crit_edge, %if.then9, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hvc_tiocmget(ptr nocapture noundef readonly %tty) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %ops = getelementptr inbounds %struct.hvc_struct, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %tiocmget = getelementptr inbounds %struct.hv_ops, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %tiocmget to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tiocmget, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 %5(ptr noundef nonnull %1) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hvc_tiocmset(ptr nocapture noundef readonly %tty, i32 noundef %set, i32 noundef %clear) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %ops = getelementptr inbounds %struct.hvc_struct, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %tiocmset = getelementptr inbounds %struct.hv_ops, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %tiocmset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tiocmset, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 %5(ptr noundef nonnull %1, i32 noundef %set, i32 noundef %clear) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hvc_poll_init(ptr nocapture noundef readnone %driver, i32 noundef %line, ptr nocapture noundef readnone %options) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hvc_poll_get_char(ptr nocapture noundef readonly %driver, i32 noundef %line) #1 align 64 {
entry:
  %ch = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ttys = getelementptr inbounds %struct.tty_driver, ptr %driver, i32 0, i32 16
  %0 = ptrtoint ptr %ttys to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ttys, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %3, i32 0, i32 30
  %4 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ch) #12
  %6 = ptrtoint ptr %ch to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %ch, align 1, !annotation !100
  %ops = getelementptr inbounds %struct.hvc_struct, ptr %5, i32 0, i32 8
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %vtermno = getelementptr inbounds %struct.hvc_struct, ptr %5, i32 0, i32 7
  %11 = ptrtoint ptr %vtermno to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vtermno, align 4
  %call = call i32 %10(i32 noundef %12, ptr noundef nonnull %ch, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %ch to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ch, align 1
  %conv = zext i8 %14 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv, %if.end ], [ 16711680, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ch) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hvc_poll_put_char(ptr nocapture noundef readonly %driver, i32 noundef %line, i8 noundef zeroext %ch) #1 align 64 {
entry:
  %ch.addr = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ch.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %ch, ptr %ch.addr, align 1
  %ttys = getelementptr inbounds %struct.tty_driver, ptr %driver, i32 0, i32 16
  %1 = ptrtoint ptr %ttys to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ttys, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %4, i32 0, i32 30
  %5 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data, align 4
  %ops = getelementptr inbounds %struct.hvc_struct, ptr %6, i32 0, i32 8
  %vtermno = getelementptr inbounds %struct.hvc_struct, ptr %6, i32 0, i32 7
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops, align 4
  %put_chars = getelementptr inbounds %struct.hv_ops, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %put_chars to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %put_chars, align 4
  %11 = ptrtoint ptr %vtermno to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vtermno, align 4
  %call = call i32 %10(i32 noundef %12, ptr noundef nonnull %ch.addr, i32 noundef 1) #12
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %do.body.do.body_crit_edge, label %do.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_port_install(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_tty_set(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_hung_up_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_wait_until_sent(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_freezable() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_interruptible(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_check_no_locks_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__refrigerator(i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @freezing_slow_path(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind readonly }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !45, !46, !48, !50, !52, !54, !56, !57, !58, !59, !61, !62, !63, !65, !67, !68, !69, !70, !72, !73, !74, !75, !77, !79}
!llvm.named.register.sp = !{!81}
!llvm.module.flags = !{!82, !83, !84, !85, !86, !87, !88, !89}
!llvm.ident = !{!90}

!0 = !{ptr @__initcall__kmod_hvc_console__227_246_hvc_console_initcon, !1, !"__initcall__kmod_hvc_console__227_246_hvc_console_initcon", i1 false, i1 false}
!1 = !{!"../drivers/tty/hvc/hvc_console.c", i32 246, i32 1}
!2 = !{ptr @__ksymtab_hvc_instantiate, !3, !"__ksymtab_hvc_instantiate", i1 false, i1 false}
!3 = !{!"../drivers/tty/hvc/hvc_console.c", i32 310, i32 1}
!4 = !{ptr @__ksymtab_hvc_kick, !5, !"__ksymtab_hvc_kick", i1 false, i1 false}
!5 = !{!"../drivers/tty/hvc/hvc_console.c", i32 318, i32 1}
!6 = !{ptr @__ksymtab_hvc_poll, !7, !"__ksymtab_hvc_poll", i1 false, i1 false}
!7 = !{!"../drivers/tty/hvc/hvc_console.c", i32 766, i32 1}
!8 = !{ptr @__ksymtab___hvc_resize, !9, !"__ksymtab___hvc_resize", i1 false, i1 false}
!9 = !{!"../drivers/tty/hvc/hvc_console.c", i32 783, i32 1}
!10 = !{ptr @hvc_alloc.__key, !11, !"__key", i1 false, i1 false}
!11 = !{!"../drivers/tty/hvc/hvc_console.c", i32 939, i32 2}
!12 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @hvc_alloc.__key.1, !14, !"__key", i1 false, i1 false}
!14 = !{!"../drivers/tty/hvc/hvc_console.c", i32 940, i32 2}
!15 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @__ksymtab_hvc_alloc, !17, !"__ksymtab_hvc_alloc", i1 false, i1 false}
!17 = !{!"../drivers/tty/hvc/hvc_console.c", i32 977, i32 1}
!18 = !{ptr @__ksymtab_hvc_remove, !19, !"__ksymtab_hvc_remove", i1 false, i1 false}
!19 = !{!"../drivers/tty/hvc/hvc_console.c", i32 1015, i32 1}
!20 = !{ptr @hvc_task, !21, !"hvc_task", i1 false, i1 false}
!21 = !{!"../drivers/tty/hvc/hvc_console.c", i32 55, i32 28}
!22 = distinct !{null, !23, !"hvc_kicked", i1 false, i1 false}
!23 = !{!"../drivers/tty/hvc/hvc_console.c", i32 58, i32 12}
!24 = !{ptr @cons_ops, !25, !"cons_ops", i1 false, i1 false}
!25 = !{!"../drivers/tty/hvc/hvc_console.c", i32 142, i32 29}
!26 = !{ptr @hvc_console, !27, !"hvc_console", i1 false, i1 false}
!27 = !{!"../drivers/tty/hvc/hvc_console.c", i32 217, i32 23}
!28 = !{ptr @.str.3, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/tty/hvc/hvc_console.c", i32 116, i32 3}
!30 = !{ptr @hvc_driver, !31, !"hvc_driver", i1 false, i1 false}
!31 = !{!"../drivers/tty/hvc/hvc_console.c", i32 54, i32 27}
!32 = !{ptr @vtermnos, !33, !"vtermnos", i1 false, i1 false}
!33 = !{!"../drivers/tty/hvc/hvc_console.c", i32 143, i32 17}
!34 = !{ptr @timeout, !35, !"timeout", i1 false, i1 false}
!35 = !{!"../drivers/tty/hvc/hvc_console.c", i32 618, i32 12}
!36 = !{ptr @sysrq_pressed, !37, !"sysrq_pressed", i1 false, i1 false}
!37 = !{!"../drivers/tty/hvc/hvc_console.c", i32 66, i32 12}
!38 = !{ptr @hvc_needs_init, !39, !"hvc_needs_init", i1 false, i1 false}
!39 = !{!"../drivers/tty/hvc/hvc_console.c", i32 61, i32 17}
!40 = !{ptr @hvc_port_ops, !41, !"hvc_port_ops", i1 false, i1 false}
!41 = !{!"../drivers/tty/hvc/hvc_console.c", i32 907, i32 41}
!42 = !{ptr @.str.4, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/tty/hvc/hvc_console.c", i32 76, i32 8}
!44 = !{ptr @.str.5, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @hvc_structs_mutex, !43, !"hvc_structs_mutex", i1 false, i1 false}
!46 = !{ptr @last_hvc, !47, !"last_hvc", i1 false, i1 false}
!47 = !{!"../drivers/tty/hvc/hvc_console.c", i32 83, i32 12}
!48 = !{ptr @hvc_structs, !49, !"hvc_structs", i1 false, i1 false}
!49 = !{!"../drivers/tty/hvc/hvc_console.c", i32 70, i32 8}
!50 = !{ptr @.str.6, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/tty/hvc/hvc_console.c", i32 1031, i32 21}
!52 = !{ptr @.str.7, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/tty/hvc/hvc_console.c", i32 1041, i32 13}
!54 = !{ptr @.str.8, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/tty/hvc/hvc_console.c", i32 1043, i32 3}
!56 = !{ptr @.str.9, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @hvc_init._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @hvc_init._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.11, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/tty/hvc/hvc_console.c", i32 1050, i32 3}
!61 = !{ptr @hvc_init._entry.10, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @hvc_init._entry_ptr.12, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @hvc_ops, !64, !"hvc_ops", i1 false, i1 false}
!64 = !{!"../drivers/tty/hvc/hvc_console.c", i32 888, i32 36}
!65 = !{ptr @.str.13, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/tty/hvc/hvc_console.c", i32 374, i32 3}
!67 = !{ptr @.str.14, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @hvc_open._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @hvc_open._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.15, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/tty/hvc/hvc_console.c", i32 426, i32 4}
!72 = !{ptr @.str.16, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @hvc_close._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @hvc_close._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = distinct !{null, !76, !"__already_done", i1 false, i1 false}
!76 = !{!"../drivers/tty/hvc/hvc_console.c", i32 812, i32 3}
!77 = distinct !{null, !78, !"__already_done", i1 false, i1 false}
!78 = !{!"../drivers/tty/hvc/hvc_console.c", i32 830, i32 3}
!79 = !{ptr @.str.18, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../include/linux/freezer.h", i32 57, i32 2}
!81 = !{!"sp"}
!82 = !{i32 1, !"wchar_size", i32 2}
!83 = !{i32 1, !"min_enum_size", i32 4}
!84 = !{i32 8, !"branch-target-enforcement", i32 0}
!85 = !{i32 8, !"sign-return-address", i32 0}
!86 = !{i32 8, !"sign-return-address-all", i32 0}
!87 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!88 = !{i32 7, !"uwtable", i32 1}
!89 = !{i32 7, !"frame-pointer", i32 2}
!90 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!91 = !{i64 524078, i64 524102, i64 524123, i64 524140, i64 524157}
!92 = !{!"branch_weights", i32 2000, i32 1}
!93 = !{i64 2148148663}
!94 = !{i64 524584, i64 524609, i64 524631, i64 524647, i64 524659, i64 524679, i64 524703, i64 524719, i64 524731}
!95 = !{i64 2148148851}
!96 = !{i64 2154078752}
!97 = !{!"branch_weights", i32 1, i32 2000}
!98 = !{i64 2154057996}
!99 = !{i64 2154066046}
!100 = !{!"auto-init"}
